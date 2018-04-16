<?php

/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.qynetwork.io/ for more details.
 */

load()->func('communication');

/*var $authurl = "http://localhost:8081/";
var $authpwd = "123123123";*/

function isQyOpen($uniacid = 0) {
    $wapSet = m('common')->getSysset('wap', $uniacid);
    return $wapSet['qy_open'];
}


function getAuthPwd($uniacid = 0) {
    $wapSet = m('common')->getSysset('wap', $uniacid);
    return $wapSet['qymy'];
}

function getAuthUrl($uniacid = 0) {
    $wapSet = m('common')->getSysset('wap', $uniacid);
    return $wapSet['qyxy'];
}

/**
 * 对比秘钥
 * @param $pwd
 */
function checkAuthPwd($pwd) {
    $localPwd = getAuthPwd();
    if (strcmp($localPwd, $pwd) == 0) {
        return true;
    }

    return false;
}

function qyCheck(){
    if (!isQyOpen()) {
        return true;
    }
    //header("Access-Control-Allow-Origin: *");
	$url = getAuthUrl() . 'api/shopucapi/check?t='.TIMESTAMP;

	$param = array('authpwd' => getAuthPwd());

	$resp = ihttp_post($url, $param);
	echo $resp;
	if ($resp['code'] == 200 && $resp['content']) {
		 $json =  json_decode($resp['content'], true);
		 if($json['status'] == 1){
		 	 return true;
		 }
	}
	return false;
}

//添加用户
function registerUser($paramData){

	if (!isQyOpen()) {
  	 	return true;
	}

	$url = getAuthUrl() . 'api/shopucapi/registerUser?t='.TIMESTAMP;
	$param = array('authpwd' => getAuthPwd() );
	$param['mobile'] = $paramData['mobile'];
	$param['pwd'] = $paramData['pwd'];

	$resp = ihttp_post($url, $param);
	if ($resp['code'] == 200 && $resp['content']) {
		 $json =  json_decode($resp['content'],true);
		 if($json['status'] == 1){
		 	 return true;
		 }
	}
	return false;
	
}
//删除加用户
function deleteUser($paramData){

	if (!isQyOpen()) {
  	 	return true;
	}
	
	$url = getAuthUrl() . 'api/shopucapi/deleteUser?t='.TIMESTAMP;

	$param = array('authpwd' => getAuthPwd());
	$param['mobile'] = $paramData['mobile'];
	
	$resp = ihttp_post($url,$param);
	if ($resp['code'] == 200 && $resp['content']) {
		 $json =  json_decode($resp['content'],true);
		 if($json['status'] == 1){
		 	 return true;
		 }
	}
	return false;
	
}

//修改用户信息
function updateUserInfo($paramData){

	if (!isQyOpen()) {
  	 	return true;
	}

	$url = getAuthUrl() . 'api/shopucapi/updateUserInfo?t='.TIMESTAMP;

	$param = array('authpwd' => getAuthPwd());
	$param['mobile'] = $paramData['mobile'];
	$param['pwd'] = $paramData['pwd'];
	
	$resp = ihttp_post($url,$param);
	if ($resp['code'] == 200 && $resp['content']) {
		 $json =  json_decode($resp['content'],true);
		 if($json['status'] == 1){
		 	 return true;
		 }
	}
	return false;
}

//修改用户金钱
function updateUserMoney($mobile, $credittype = 'credit1', $credits = 0, $moneyType = 0, $log = array()){
	if (!isQyOpen()) {
  	 	return true;
	}

	global $_W;
    $shopId = $_W['uniacid'];

	$url = "";
	$message = '';
	if( $credittype == "credit1"){
		$url = getAuthUrl() . 'api/shopucapi/updateUserScore?t='.TIMESTAMP;
		//$message = '商城端修改用户积分[' . $credits . ']';
	}
	else if( $credittype == "credit2"){
		$url = getAuthUrl() . 'api/shopucapi/updateUserMoney?t='.TIMESTAMP;
        //$message = '商城端修改用户余额[ ' . $credits . ']';
	}

	if (empty($log) || count($log) < 2) {
        $message = '商城购物消费[' . $credits . ']' . $credittype == "credit1" ? '积分' : '余额';
    } else {
        $message = $log[1];
    }

	$param = array('authpwd' => getAuthPwd());
	$param['mobile'] = $mobile;
	$param['money'] = $credits;
	$param['message'] = $message;
	$param['shopId'] = $shopId;
	$param['moneyType'] = $moneyType;
	
	$resp = ihttp_post($url, $param);
	if ($resp['code'] == 200 && $resp['content']) {
		 $json =  json_decode($resp['content'],true);
		 if($json['status'] == 1){
		 	 return true;
		 }
	}
	return false;
}

//修改用户成功下单
function buyOrder($paramData){
    $uniacid = $paramData['uniacid'];
	if (!isQyOpen($uniacid)) {
  	 	return true;
	}
	$url = getAuthUrl($uniacid) . 'api/shopucapi/buyOrder';
	$param = array('authpwd' => getAuthPwd($uniacid));
	$param['mobile'] = $paramData['mobile'];
	$param['orderid'] = $paramData['orderid'];
	$param['orderSn'] = $paramData['orderSn'];
	$param['orderMoney'] = $paramData['orderMoney'];
	$param['shopId'] = $paramData['uniacid'];
    $param['credit'] = $paramData['credit'];
	$resp = ihttp_post($url,$param);
	if ($resp['code'] == 200 && $resp['content']) {
		 $json =  json_decode($resp['content'],true);
		 if($json['status'] == 1){
		 	 return true;
		 }
	}

	return false;
}

//修改用户确认收货
function receiveOrder($paramData){
	if (!isQyOpen()) {
  	 	return true;
	}

	$url = getAuthUrl() . 'api/shopucapi/receiveOrder?t='.TIMESTAMP;

	$param = array('authpwd' => getAuthPwd() );
	$param['mobile'] = $paramData['mobile'];
	$param['orderid'] = $paramData['orderid'];
	$param['orderSn'] = $paramData['orderSn'];
	$param['orderMoney'] = $paramData['orderMoney'];
	$param['shopId'] = $paramData['shopId'];
    $param['credit'] = $paramData['credit'];

	$resp = ihttp_post($url,$param);
	if ($resp['code'] == 200 && $resp['content']) {
		 $json =  json_decode($resp['content'],true);
		 if($json['status'] == 1){
		 	 return true;
		 }
	}
	return false;
}