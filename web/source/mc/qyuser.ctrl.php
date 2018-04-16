<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.qynetwork.io/ for more details.
 */
defined('IN_IA') or exit('Access Denied');
uni_user_permission_check('mc_qyuser');
$_W['page']['title'] = 'qy会员站点整合 - 会员中心选项 - 会员中心';
$uc = pdo_fetch("SELECT `qyuser` FROM ".tablename('uni_settings') . " WHERE uniacid = :weid", array(':weid' => $_W['weid']));


$qyuser = @iunserializer($uc['qyuser']);
if(!is_array($qyuser)) {
	$qyuser = array();
}


if(checksubmit('submit')) {
	$rec = array();
	$uc['status'] = intval($_GPC['status']);
	
	if($uc['status'] == '1') {
		
		$uc['qyusersoftpwd'] = empty($_GPC['qyusersoftpwd']) ? message('请填写正确的应用密钥！', referer(), 'error') : ($_GPC['qyusersoftpwd']);
		$uc['qyusersoftip'] = empty($_GPC['qyusersoftip']) ? message('请填写正确的通信地址！', referer(), 'error') : ($_GPC['qyusersoftip']);
		
	}
	$rec['qyuser'] = iserializer($uc);
	$row = pdo_fetch("SELECT uniacid FROM ".tablename('uni_settings') . " WHERE uniacid = :wid LIMIT 1", array(':wid' => intval($_W['weid'])));
	if(!empty($row)) {
		pdo_update('uni_settings', $rec, array('uniacid' => intval($_W['uniacid'])));
	}else {
		$rec['uniacid'] = $_W['uniacid'];
		pdo_insert('uni_settings', $rec);
	}
	cache_delete("unisetting:{$_W['uniacid']}");
	message('设置qyuser参数成功！', referer(), 'success');
}

template('mc/qyuser');
