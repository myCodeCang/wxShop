<?php
if (!(defined('IN_IA'))) {
    exit('Access Denied');
}
header("Access-Control-Allow-Origin: *");
load()->model('qyapi');

//对比秘钥
global $_GPC;
$pwd = $_GPC['authpwd'];

if (!isQyOpen()) {
    //header("Access-Control-Allow-Origin: *");
    show_json(0, array(errMsg => '通信失败，商城端未开启通信'));
}

if (!checkAuthPwd($pwd)) {
    //header("Access-Control-Allow-Origin: *");
    show_json(0, array(errMsg => '通信失败，通信秘钥不匹配'));
}

class Client_EweiShopV2Page extends MobilePage
{
    //通信配置检测
    public function check()
    {
        //header("Access-Control-Allow-Origin: *");
        global $_W;

        if ($_W['uniaccount'] && $_W['uniaccount']['name']) {
            show_json(1, array(data => $_W['uniaccount']['name']));
        } else {
            show_json(0, array());
        }
    }

    //添加用户
    public function registerUser()
    {
        global $_W;
        global $_GPC;

        $mobile = trim($_GPC['mobile']);
        $pwd = trim($_GPC['pwd']);
        $nickName = trim($_GPC['nickName']);
        $shopIds = trim($_GPC['shopIds']);
        if (empty($shopIds)) {
            $shopIds = array($_W['uniacid']);
        } else {
            $shopIds = explode(",", $shopIds);
        }

        if (empty($mobile)) {
            show_json(0, '请输入正确的手机号');
        }
        if (empty($pwd)) {
            show_json(0, '请输入密码');
        }

        $member = pdo_fetch('select id,openid,mobile,pwd,salt from ' . tablename('ewei_shop_member') . ' where mobile=:mobile and mobileverify=1 and uniacid=:uniacid limit 1', array(':mobile' => $mobile, ':uniacid' => $_W['uniacid']));

        if (!(empty($member))) {
            show_json(0, '此手机号已注册, 请直接登录');
        }
        $salt = ((empty($member) ? '' : $member['salt']));
        if (empty($salt)) {
            $salt = m('account')->getSalt();
        }

        $nickname = $nickName;
        /*$openid = ((empty($member) ? '' : $member['openid']));
        $nickname = $nickName;
        if (empty($openid)) {
            $openid = 'wap_user_' . $_W['uniacid'] . '_' . $mobile;
        }*/

        //$data = array('uniacid' => $_W['uniacid'], 'mobile' => $mobile, 'nickname' => $nickname, 'openid' => $openid, 'pwd' => md5($pwd . $salt), 'salt' => $salt, 'createtime' => time(), 'mobileverify' => 1, 'comefrom' => 'mobile');

        if (empty($member)) {

            $user = pdo_get('mc_members', array('uniacid' => $_W['uniacid'], 'mobile' => $mobile));
            if (!empty($user)) {
                show_json(0, '手机号被占用');
            }

            foreach ($shopIds as $shopId) {
                $dataWx = array(
                    'uniacid' => $shopId,
                    'realname' => $nickname,
                    'mobile' => $mobile,
                    'email' => '',
                    'salt' => $salt,
                    'password' => md5($pwd . $salt . $_W['config']['setting']['authkey']),
                    'credit1' => 0,
                    'credit2' => 0,
                    'groupid' => 3,
                    'createtime' => TIMESTAMP,
                );
                pdo_insert('mc_members', $dataWx);

                $openid = 'wap_user_' . $shopId . '_' . $mobile;
                $record = array();
                $record['updatetime'] = TIMESTAMP;
                $record['nickname'] = stripslashes($nickname);
                $record['openid'] = $openid;
                $record['acid'] = $_W['acid'];
                $record['uniacid'] = $shopId;
                $record['uid'] = pdo_insertid();

                pdo_insert('mc_mapping_fans', $record);

                //插入商城用户
                $data = array('uniacid' => $shopId, 'mobile' => $mobile, 'nickname' => $nickname, 'openid' => $openid, 'pwd' => md5($pwd . $salt), 'salt' => $salt, 'createtime' => time(), 'mobileverify' => 1, 'comefrom' => 'mobile');
                $data['uid'] = $record['uid'];
                $data['avatar'] = $_W['siteroot'] . 'addons/ewei_shopv2/static/images/avatar.png';
                pdo_insert('ewei_shop_member', $data);
            }
        } else {
            show_json(0, '此手机号已注册, 请直接登录');
        }
        if (p('commission')) {
            p('commission')->checkAgent($openid);
        }
        show_json(1, '注册成功');

    }

    //删除加用户
    public function deleteUser()
    {
        global $_W;
        global $_GPC;

        $mobile = $_GPC['mobile'];
        if (empty($mobile)) {
             show_json(0, '用户手机号不能为空!');
        }

        $shopIds = trim($_GPC['shopIds']);
        if (empty($shopIds)) {
            $shopIds = array($_W['uniacid']);
        } else {
            $shopIds = explode(",", $shopIds);
        }

        $querySql = 'SELECT * FROM ' . tablename('ewei_shop_member') . ' WHERE mobile in(\'' . $mobile . '\' ) AND uniacid in(';
        foreach ($shopIds as $shopId) {
            $querySql .= '\''. $shopId . '\',';
        }
        $querySql = substr($querySql,0,strlen($querySql) - 1);
        $querySql .= ')';

        $members = pdo_fetchall($querySql);
        
        if (empty($members)) {
            show_json(0, '未查询到该用户!');
        }

        foreach ($members as $member) {
            pdo_delete('ewei_shop_member', array('id' => $member['id']));
            pdo_delete('mc_members', array('uid' => $member['uid']));
            pdo_delete('mc_mapping_fans', array('uid' => $member['uid']));
            plog('member.list.delete', 'qy会员系统通信,删除会员  ID: ' . $member['id'] . ' <br/>会员信息: ' . $member['openid'] . '/' . $member['nickname'] . '/' . $member['realname'] . '/' . $member['mobile']);
        }
        show_json(1, "删除用户成功");
    }

    //修改用户信息
    public function updateUserInfo()
    {
        global $_W;
        global $_GPC;
        $mobile = trim($_GPC['newMobile']);
        $oldMobile = trim($_GPC['oldMobile']);
        $pwd = trim($_GPC['pwd']);
        $trueName = trim($_GPC['trueName']);
        $shopIds = trim($_GPC['shopIds']);
        if (empty($shopIds)) {
            $shopIds = array($_W['uniacid']);
        } else {
            $shopIds = explode(",", $shopIds);
        }

        if (empty($mobile)) {
            show_json(0, '请输入正确的手机号');
        }
        /*if (empty($pwd)) {
            show_json(0, '请输入密码');
        }*/

        $querySql = 'SELECT * FROM ' . tablename('ewei_shop_member') . ' WHERE mobile in(\'' . $oldMobile . '\' ) AND mobileverify = 1 AND uniacid in(';
        foreach ($shopIds as $shopId) {
            $querySql .= '\''. $shopId . '\',';
        }
        $querySql = substr($querySql,0,strlen($querySql) - 1);
        $querySql .= ')';

        $members = pdo_fetchall($querySql);
        //$member = pdo_fetch('select id,openid,mobile,pwd,salt from ' . tablename('ewei_shop_member') . ' where mobile=:mobile and mobileverify=1 and uniacid=:uniacid limit 1', array(':mobile' => $mobile, ':uniacid' => $_W['uniacid']));

        if ((empty($members))) {
            show_json(0, '用户未注册,不可修改!');
        }

        foreach ($members as $member) {
            $salt = ((empty($member) ? '' : $member['salt']));
            if (empty($salt)) {
                $salt = m('account')->getSalt();
            }
            $openid = ((empty($member) ? '' : $member['openid']));
            if (empty($openid)) {
                $openid = 'wap_user_' . $member['uniacid'] . '_' . $mobile;
            }

            $data1 = array('openid' => $openid, 'mobile'=>$mobile, 'salt' => $salt, 'createtime' => time(), 'mobileverify' => 1, 'comefrom' => 'mobile', 'nickname' => empty($trueName) ? '' : $trueName);
            $data2 = array('mobile'=>$mobile, 'salt' => $salt, 'createtime' => time(), 'realname' => empty($trueName) ? '' : $trueName);
            if (!empty($pwd)) {
                $data1['pwd'] =  md5($pwd . $salt);
                $data2['password'] = md5($pwd . $salt);
            }
            if (empty($member)) {
                show_json(0, '用户未注册,不可修改!');
            } else {
                //file_put_contents("a.txt", $member['uid'] . '-----' . "\r\n", FILE_APPEND);
                pdo_update('ewei_shop_member', $data1, array('id' => $member['id']));
                pdo_update('mc_members', $data2, array('uid' => $member['uid']));
            }
            if (p('commission')) {
                p('commission')->checkAgent($openid);
            }
        }
        show_json(1, '用户资料修改成功');
    }


    //修改用户金钱
    public function updateUserMoney()
    {
        global $_W;
        global $_GPC;

        $type = trim($_GPC['type']);
        $mobile = trim($_GPC['mobile']);
        $shopIds = trim($_GPC['shopIds']);
        if (empty($shopIds)) {
            $shopIds = array($_W['uniacid']);
        } else {
            $shopIds = explode(",", $shopIds);
        }

        $querySql = 'SELECT * FROM ' . tablename('ewei_shop_member') . ' WHERE mobile in(\'' . $mobile . '\' ) AND mobileverify = 1 AND uniacid in(';
        foreach ($shopIds as $shopId) {
            $querySql .= '\''. $shopId . '\',';
        }
        $querySql = substr($querySql,0,strlen($querySql) - 1);
        $querySql .= ')';

        $members = pdo_fetchall($querySql);
        //$member = pdo_fetch('select id,openid,mobile,pwd,salt from ' . tablename('ewei_shop_member') . ' where mobile=:mobile and mobileverify=1 and uniacid=:uniacid limit 1', array(':mobile' => $mobile, ':uniacid' => $_W['uniacid']));

        if ((empty($members))) {
            show_json(0, '未查询到该用户!');
        }

        $num = floatval($_GPC['num']);
        $remark = trim($_GPC['remark']);
        if ($num <= 0) {
            show_json(0, array('message' => '请填写大于0的数字!'));
        }

        foreach ($members as $member) {
            $id = intval($member['id']);
            //file_put_contents("a.txt", $id . '-----' . "\r\n", FILE_APPEND);
            //$profile = m('member')->getMember($id, true);
            $typestr = (($type == 'credit1' ? '积分' : '余额'));

            $changetype = intval($_GPC['changetype']);
            if ($changetype == 2) {
                $num -= $member[$type];
            } else if ($changetype == 1) {
                $num = -$num;
            }
            m('member')->setCredit($member['openid'], $type, $num, array($_W['uid'], 'qy会员系统调整' . $typestr . ' ' . $remark), 0, 0, $member);

            $changetype = 0;
            $changenum = 0;
            if (0 <= $num) {
                $changetype = 0;
                $changenum = $num;
            } else {
                $changetype = 1;
                $changenum = -$num;
            }
            if ($type == 'credit1') {
                m('notice')->sendMemberPointChange($member['openid'], $changenum, $changetype);
            }
            if ($type == 'credit2') {
                // $set = m('common')->getSysset('shop');
                // $logno = m('common')->createNO('member_log', 'logno', 'RC');
                // $data = array('openid' => $profile['openid'], 'logno' => $logno, 'uniacid' => $_W['uniacid'], 'type' => '0', 'createtime' => TIMESTAMP, 'status' => '1', 'title' => $set['name'] . 'qy会员系统调整', 'money' => $num, 'remark' => $remark, 'rechargetype' => 'system');
                // pdo_insert('ewei_shop_member_log', $data);
                // $logid = pdo_insertid();
                // m('notice')->sendMemberLogMessage($logid, 0, true);
            }
        }

        plog('finance.recharge.' . $type, 'qy会员系统调整' . $typestr . ': ' . $_GPC['num'] . ' <br/>会员信息: ID: ' . $member['id'] . ' /  ' . $member['openid'] . '/' . $member['nickname'] . '/' . $member['realname'] . '/' . $member['mobile']);
        show_json(1, array('url' => referer()));
    }
}

?>