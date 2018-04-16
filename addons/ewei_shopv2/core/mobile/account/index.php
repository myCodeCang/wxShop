<?php
if (!(defined('IN_IA'))) 
{
	exit('Access Denied');
}
load()->model('qyapi');
if (isQyOpen()) {
    $syncUrl = getAuthUrl();
    header("Access-Control-Allow-Credentials: true");
    if ($syncUrl && strlen($syncUrl) > 2) {
        header("Access-Control-Allow-Origin: " . substr($syncUrl, 0, count($syncUrl) - 2));
    }
	//header("Access-Control-Allow-Origin: http://192.168.1.8:8081");
}

class Index_EweiShopV2Page extends MobilePage 
{
	protected function getWapSet() 
	{
		global $_W;
		global $_GPC;
		$set = m('common')->getSysset(array('shop', 'wap'));
		$set['wap']['color'] = ((empty($set['wap']['color']) ? '#fff' : $set['wap']['color']));
		$params = array();
		if (!(empty($_GPC['mid']))) 
		{
			$params['mid'] = $_GPC['mid'];
		}
		if (!(empty($_GPC['backurl']))) 
		{
			$params['backurl'] = $_GPC['backurl'];
		}
		$set['wap']['loginurl'] = mobileUrl('account/login', $params);
		$set['wap']['regurl'] = mobileUrl('account/register', $params);
		$set['wap']['forgeturl'] = mobileUrl('account/forget', $params);
		return $set;
	}
	public function login() 
	{
		global $_W;
		global $_GPC;

		/*if (is_weixin() || !(empty($_GPC['__ewei_shopv2_member_session_' . $_W['uniacid']])))
		{
			if(is_h5app()){
				show_json(1, '登录成功');
			}
			else{
				header('location: ' . mobileUrl());
			}
			
		}*/
		if ($_W['ispost']) 
		{
			$mobile = trim($_GPC['mobile']);
			$pwd = trim($_GPC['pwd']);
			$member = pdo_fetch('select id,openid,mobile,pwd,salt from ' . tablename('ewei_shop_member') . ' where mobile=:mobile and mobileverify=1 and uniacid=:uniacid limit 1', array(':mobile' => $mobile, ':uniacid' => $_W['uniacid']));
			if (empty($member)) 
			{
				show_json(0, '用户不存在');
			}
			if (md5($pwd . $member['salt']) !== $member['pwd']) 
			{
				show_json(0, '用户或密码错误');
			}
			m('account')->setLogin($member);
			show_json(1, '登录成功');
		}
		$set = $this->getWapSet();
		$backurl = '';
		if (!(empty($_GPC['backurl']))) 
		{
			$backurl = $_W['siteroot'] . 'app/index.php?' . base64_decode(urldecode($_GPC['backurl']));
		}
		$wapset = $_W['shopset']['wap'];
		$sns = $wapset['sns'];
		include $this->template('login', NULL, true);
	}
	public function register() 
	{
		$this->rf(0);
	}
	public function forget() 
	{
		$this->rf(1);
	}
	protected function rf($type) 
	{
		global $_W;
		global $_GPC;
		if (is_weixin() || !(empty($_GPC['__ewei_shopv2_member_session_' . $_W['uniacid']]))) 
		{
			$wap = m('common')->getSysset('wap');
			if($wap['wxlogin']!=1){
				header('location: ' . mobileUrl());
			}
		}
		if ($_W['ispost']) 
		{
			$mobile = trim($_GPC['mobile']);
			$verifycode = trim($_GPC['verifycode']);
			$pwd = trim($_GPC['pwd']);
            $pwdConfirm = trim($_GPC['pwd1']);
			if (empty($mobile)) 
			{
				show_json(0, '请输入正确的手机号');
			}
			if (empty($verifycode)) 
			{
				show_json(0, '请输入验证码');
			}
			if (empty($pwd)) 
			{
				show_json(0, '请输入密码');
			}

            /*if (empty($pwdConfirm))
            {
                show_json(0, '请确认密码');
            }*/

            /*if ($pwd != $pwdConfirm) {
                show_json(0, '两次输入密码不一样');
            }*/
			$key = '__ewei_shopv2_member_verifycodesession_' . $_W['uniacid'] . '_' . $mobile;
			if (!(isset($_SESSION[$key])) || ($_SESSION[$key] !== $verifycode) || !(isset($_SESSION['verifycodesendtime'])) || (($_SESSION['verifycodesendtime'] + 60) < time())) 
			{
				show_json(0, '验证码错误或已过期!');
			}
			$member = pdo_fetch('select id,openid,mobile,pwd,salt from ' . tablename('ewei_shop_member') . ' where mobile=:mobile and mobileverify=1 and uniacid=:uniacid limit 1', array(':mobile' => $mobile, ':uniacid' => $_W['uniacid']));
			if (empty($type)) 
			{
				if (!(empty($member))) 
				{
					show_json(0, '此手机号已注册, 请直接登录');
				}

				//Java平台同步注册
                $param[] = array(
                    'mobile' => $mobile,
                    'pwd' => $pwd
                );
                // 判断是否开启用户中心
		        /*$data = m('common')->getSysset('wap');
		        if($data['qy_open'] > 0 ){
		        	 if (!registerUser($param)) {
		                    show_json(0, '注册失败');
		                }
		        }*/

				$salt = ((empty($member) ? '' : $member['salt']));
				if (empty($salt)) 
				{
					$salt = m('account')->getSalt();
				}
				$openid = ((empty($member) ? '' : $member['openid']));
				$nickname = ((empty($member) ? '' : $member['nickname']));
				if (empty($openid)) 
				{
					$openid = 'wap_user_' . $_W['uniacid'] . '_' . $mobile;
					$nickname = substr($mobile, 0, 3) . 'xxxx' . substr($mobile, 7, 4);
				}
				$data = array('uniacid' => $_W['uniacid'], 'mobile' => $mobile, 'nickname' => $nickname, 'openid' => $openid, 'pwd' => md5($pwd . $salt), 'salt' => $salt, 'createtime' => time(), 'mobileverify' => 1, 'comefrom' => 'mobile');
			}
			else 
			{
				if (empty($member)) 
				{
					show_json(0, '此手机号未注册');
				}
				$salt = m('account')->getSalt();

                //同步会员系统
                $param[] = array(
                    'mobile' => $mobile,
                    'pwd' => $pwd,
                    'shopId' => $_W['uniacid']
                );

                if (!updateUserInfo($param)) {
                    show_json(0, '通信错误，修改用户信息失败');
                }
				$data = array('salt' => $salt, 'pwd' => md5($pwd . $salt));
			}
			if (empty($member)) 
			{   
				 $dataWx = array(
                    'uniacid' => $_W['uniacid'],
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

                $openid = 'wap_user_' . $_W['uniacid'] . '_' . $mobile;
                $record = array();
                $record['updatetime'] = TIMESTAMP;
                $record['nickname'] = stripslashes($nickname);
                $record['openid'] = $openid;
                $record['acid'] = $_W['acid'];
                $record['uniacid'] = $_W['uniacid'];
                $record['uid'] = pdo_insertid();

                pdo_insert('mc_mapping_fans', $record);
                $data['avatar'] = $_W['siteroot'] . 'addons/ewei_shopv2/static/images/avatar.png';
				pdo_insert('ewei_shop_member', $data);
			    }
			else 
			{
				pdo_update('ewei_shop_member', $data, array('id' => $member['id']));
			}
			if (p('commission')) 
			{
				p('commission')->checkAgent($openid);
			}
			unset($_SESSION[$key]);
			show_json(1, (empty($type) ? '注册成功' : '密码重置成功'));
		}
		$sendtime = $_SESSION['verifycodesendtime'];
		if (empty($sendtime) || (($sendtime + 60) < time())) 
		{
			$endtime = 0;
		}
		else 
		{
			$endtime = 60 - time() - $sendtime;
		}
		$set = $this->getWapSet();
		include $this->template('rf', NULL, true);
	}
	public function logout() 
	{
		global $_W;
		global $_GPC;
		$key = '__ewei_shopv2_member_session_' . $_W['uniacid'];
		isetcookie($key, false, -100);
		header('location: ' . mobileUrl());
		exit();
	}
	public function sns() 
	{
		global $_W;
		global $_GPC;
		if (is_weixin() || !(empty($_GPC['__ewei_shopv2_member_session_' . $_W['uniacid']]))) 
		{
			$wap = m('common')->getSysset('wap');
			if($wap['wxlogin']!=1){
				header('location: ' . mobileUrl());
			}
		}
		$sns = trim($_GPC['sns']);
		if ($_W['ispost'] && !(empty($sns)) && !(empty($_GPC['openid']))) 
		{
			m('member')->checkMemberSNS($sns);
		}
		if ($_GET['openid']) 
		{
			if ($sns == 'qq') 
			{
				$_GET['openid'] = 'sns_qq_' . $_GET['openid'];
			}
			if ($sns == 'wx') 
			{
				$_GET['openid'] = 'sns_wx_' . $_GET['openid'];
			}
			m('account')->setLogin($_GET['openid']);
		}
		$backurl = '';
		if (!(empty($_GPC['backurl']))) 
		{
			$backurl = $_W['siteroot'] . 'app/index.php?' . base64_decode(urldecode($_GPC['backurl']));
		}
		$backurl = ((empty($backurl) ? mobileUrl(NULL, NULL, true) : trim($backurl)));
		header('location: ' . $backurl);
	}
	public function verifycode() 
	{
		global $_W;
		global $_GPC;
		@session_start();
		$set = $this->getWapSet();
		$mobile = trim($_GPC['mobile']);
		$temp = trim($_GPC['temp']);
		$imgcode = trim($_GPC['imgcode']);
		if (empty($mobile)) 
		{
			show_json(0, '请输入手机号');
		}
		if (empty($temp)) 
		{	
			show_json(0, '参数错误');
		}
		if (!(empty($_SESSION['verifycodesendtime'])) && (time() < ($_SESSION['verifycodesendtime'] + 60))) 
		{
			show_json(0, '请求频繁请稍后重试');
		}
		if (!(empty($set['wap']['smsimgcode'])) && (($temp == 'sms_reg') || ($temp == 'sms_forget'))) 
		{
			if (empty($imgcode)) 
			{
				show_json(0, '请输入图形验证码');
			}
			$imgcodehash = md5(strtolower($imgcode) . $_W['config']['setting']['authkey']);
			if ($imgcodehash != trim($_GPC['__code'])) 
			{
				show_json(-1, '请输入正确的图形验证码');
			}
		}
		$member = pdo_fetch('select id,openid,mobile,pwd,salt from ' . tablename('ewei_shop_member') . ' where mobile=:mobile and mobileverify=1 and uniacid=:uniacid limit 1', array(':mobile' => $mobile, ':uniacid' => $_W['uniacid']));
		if (($temp == 'sms_forget') && empty($member)) 
		{
			show_json(0, '此手机号未注册');
		}
		if (($temp == 'sms_reg') && !(empty($member))) 
		{
			show_json(0, '此手机号已注册，请直接登录');
		}
		$sms_id = $set['wap'][$temp];
		if (empty($sms_id)) 
		{
			show_json(0, '短信发送失败(NOSMSID)');
		}
		$key = '__ewei_shopv2_member_verifycodesession_' . $_W['uniacid'] . '_' . $mobile;
		@session_start();
		$code = random(5, true);
		$shopname = $_W['shopset']['shop']['name'];
		$ret = com('sms')->send($mobile, $sms_id, array('验证码' => $code, '商城名称' => (!(empty($shopname)) ? $shopname : '商城名称')));
		if ($ret['status']) 
		{
			$_SESSION[$key] = $code;
			$_SESSION['verifycodesendtime'] = time();
			show_json(1, '短信发送成功');
		}
		show_json(0, $ret['message']);
	}
}
?>