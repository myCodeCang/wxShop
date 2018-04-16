<?php

error_reporting(0);
define('IN_MOBILE', true);
require dirname(__FILE__) . '/../../../../framework/bootstrap.inc.php';
require IA_ROOT . '/addons/ewei_shopv2/defines.php';
require IA_ROOT . '/addons/ewei_shopv2/core/inc/functions.php';
require IA_ROOT . '/addons/ewei_shopv2/core/inc/plugin_model.php';
require IA_ROOT . '/addons/ewei_shopv2/core/inc/com_model.php';

new aliApy();
class aliApy 
{
	public $post;
	public $subject;
	public $body;
	public $strs;
	public $type;
	public $total_fee;
	public $setting;
	public $sec;
	public $isapp = false;
	public $sign_type;

    public $https_verify_url = 'https://mapi.alipay.com/gateway.do?service=notify_verify&';
    public $http_verify_url = 'http://notify.alipay.com/trade/notify_query.do?';
	public function __construct() 
	{
		global $_W;
		$this->post = $_POST;
        load()->model('qyapi');
		if (!(empty($this->post['subject'])))
		{
			$this->subject = iconv('gbk', 'utf-8', $this->post['subject']);
		}
		if (!(empty($this->post['body']))) 
		{    
			$this->body = iconv('gbk', 'utf-8', $this->post['body']);
		}
		if (!(empty($this->post['sign_type']))) 
		{    
			$this->sign_type = iconv('gbk', 'utf-8', $this->post['sign_type']);
		}
		if (empty($this->post)) 
		{
			exit('fail');
		}
		if (!(empty($this->post['notify_type']))) 
		{
			if ($this->post['notify_type'] == 'batch_trans_notify') 
			{
				$this->batch_trans_notify();
			}
			else if ($this->post['notify_type'] == 'batch_refund_notify') 
			{
				$this->batch_refund_notify();
			}
		}

		if ($this->post['trade_status'] != 'TRADE_SUCCESS') 
		{
			exit('fail');
		}
		$this->strs = explode(':', $this->body);
		$this->type = intval($this->strs[1]);
		$this->total_fee = round($this->post['total_fee'], 2);
		$_W['uniacid'] = $_W['weid'] = intval($this->strs[0]);

		$this->init();
	}
	public function init() 
	{
		if ($this->type == '0') 
		{
			$this->order();
		}
		else if ($this->type == '1') 
		{
			$this->recharge();
		}
		else if ($this->type == '2') 
		{
			$this->cashier();
		}
		exit('success');
	}

	public function order() 
	{
		
		if($this->sign_type=="RSA"){
               if (!($this->verify()))
				{
					exit('order');
				}
		}else{
                if (!($this->publicMethod()))
				{					
					exit('order');
				}
		}
		$tid = $this->post['out_trade_no'];
		if (strexists($tid, 'GJ')) 
		{
			$tids = explode('GJ', $tid);
			$tid = $tids[0];
		}
		$sql = 'SELECT * FROM ' . tablename('core_paylog') . ' WHERE `tid`=:tid and `module`=:module limit 1';
		$params = array();
		$params[':tid'] = $tid;
		$params[':module'] = 'ewei_shopv2';
		$log = pdo_fetch($sql, $params);
		if ($this->post['total_fee'] != $log['fee']) 
		{
			exit('fail');
		}

		if (!(empty($log)) && ($log['status'] == '0')) 
		{
			$site = WeUtility::createModuleSite($log['module']);
			if (!(is_error($site))) 
			{
                load()->model('qyapi');
                //    //同步通知会员系统
                $orderid = pdo_fetchcolumn('select id from ' . tablename('ewei_shop_order') . ' where ordersn=:ordersn and uniacid=:uniacid', array(':ordersn' => $log['tid'], ':uniacid' => $log['uniacid']));
                $openid = pdo_fetchcolumn('select openid from ' . tablename('ewei_shop_order') . ' where ordersn=:ordersn and uniacid=:uniacid', array(':ordersn' => $log['tid'], ':uniacid' => $log['uniacid']));
                $member = pdo_fetch('select * from ' . tablename('ewei_shop_member') . ' where openid=:openid and uniacid=:uniacid limit 1', array(':uniacid' => $log['uniacid'], ':openid' => $openid));
                $paramData = array(
                    'mobile' => $member['mobile'],
                    'orderid' => $orderid,
                    'orderSn' => $log['tid'],
                    'orderMoney' => $log['fee'],
                    'uniacid' => $log['uniacid']
                );

                if (!buyOrder($paramData)) {
                    exit('fail');
                }

				$method = 'payResult';
				if (method_exists($site, $method)) 
				{
					$ret = array();
					$ret['weid'] = $log['weid'];
					$ret['uniacid'] = $log['uniacid'];
					$ret['result'] = 'success';
					$ret['type'] = 'alipay';
					$ret['from'] = 'return';
					$ret['tid'] = $log['tid'];
					$ret['user'] = $log['openid'];
					$ret['fee'] = $log['fee'];
					$ret['is_usecard'] = $log['is_usecard'];
					$ret['card_type'] = $log['card_type'];
					$ret['card_fee'] = $log['card_fee'];
					$ret['card_id'] = $log['card_id'];
					$result = $site->$method($ret);

					if ($result) 
					{
						$log['tag'] = iunserializer($log['tag']);
						$log['tag']['transid'] = $this->post['trade_no'];
						$record = array();
						$record['status'] = '1';
						$record['type'] = 'alipay';
						$record['tag'] = iserializer($log['tag']);
						$contact_order_info = pdo_fetch('select * from ' . tablename('ewei_shop_order') . ' where ordersn=:ordersn and uniacid=:uniacid limit 1', array(':ordersn' =>$log['tid'], ':uniacid' => $log['uniacid']));
						
						$ordertwo = pdo_fetch('select * from ' . tablename('ewei_shop_order') . ' where parentid=:parentid and uniacid=:uniacid limit 1', array(':parentid' =>$contact_order_info['id'], ':uniacid' => $log['uniacid']));
						if($ordertwo){
							pdo_update('ewei_shop_order_goods', array('orderid' =>  $contact_order_info['id']), array('orderid' =>$ordertwo['id'], 'uniacid' => $log['uniacid']));
						}
						pdo_update('core_paylog', $record, array('plid' => $log['plid']));
						if($contact_order_info['isparent']){
							pdo_update('ewei_shop_order', array('paytype' => 22,'merchid'=>$ordertwo['merchid'],'isparent'=>0,'merchshow' => 0,'parentid'=>$ordertwo['id'], 'apppay' => ($this->isapp ? 1 : 0), 'transid' => $this->post['trade_no'], 'status'=> 1), array('ordersn' => $log['tid'], 'uniacid' => $log['uniacid']));

							pdo_update('ewei_shop_order', array('paytype' => 22,'merchshow' => 1,'isparent'=>1 ,'parentid'=>'','apppay' => ($this->isapp ? 1 : 0), 'transid' => $this->post['trade_no'], 'status'=> 1), array('id' => $ordertwo['id'], 'uniacid' => $log['uniacid']));
							
							// pdo_update('ewei_shop_order', array('paytype' => 21,'merchshow' => 1, 'apppay' => ($this->isapp ? 1 : 0), 'transid' => $this->post['trade_no'], 'status'=> 1), array('ordersn' => $log['tid'], 'uniacid' => $log['uniacid']));
							// pdo_update('ewei_shop_order', array('paytype' => 21,'merchshow' => 0, 'apppay' => ($this->isapp ? 1 : 0), 'transid' => $this->post['trade_no'], 'status'=> 1), array('parentid' => $contact_order_info['id'], 'uniacid' => $log['uniacid']));
						}else{
							pdo_update('ewei_shop_order', array('paytype' => 22, 'apppay' => ($this->isapp ? 1 : 0), 'transid' => $this->post['trade_no'], 'status'=> 1), array('ordersn' => $log['tid'], 'uniacid' => $log['uniacid']));
						}
						

						exit('success');
					}
				}
			}
		}
	}
	public function recharge() 
	{
		global $_W;
		//if (!($this->publicMethod()))
        if (!($this->verify()))
        {
			exit('recharge');
		}

		$logno = trim($this->post['out_trade_no']);
		if (empty($logno)) 
		{
			exit();
		}

		$log = pdo_fetch('SELECT * FROM ' . tablename('ewei_shop_member_log') . ' WHERE `uniacid`=:uniacid and `logno`=:logno limit 1', array(':uniacid' => $_W['uniacid'], ':logno' => $logno));
		if ($_POST['total_fee'] != $log['money'])
		{
			exit('fail');
		}

		if (!(empty($log)) && empty($log['status'])) 
		{
			pdo_update('ewei_shop_member_log', array('status' => 1, 'rechargetype' => 'alipay', 'apppay' => ($this->isapp ? 1 : 0), 'transid' => $this->post['trade_no']), array('id' => $log['id']));
			$shopset = m('common')->getSysset('shop');
			m('member')->setCredit($log['openid'], 'credit2', $log['money'], array(0, $shopset['name'] . '会员支付宝充值:' . $log['money']), 21);
			// m('member')->setCredit($log['openid'], 'credit2', $log['money'], array(0, $shopset['name'] . '会员充值:credit2:' . $log['money']), 21);
			m('member')->setRechargeCredit($log['openid'], $log['money']);
			com_run('sale::setRechargeActivity', $log);
			com_run('coupon::useRechargeCoupon', $log);
			m('notice')->sendMemberLogMessage($log['id']);
			exit("success");
		}
	}
	public function cashier() 
	{
		global $_W;
		$ordersn = trim($this->post['out_trade_no']);
		if (empty($ordersn)) 
		{
			exit();
		}
		if (p('cashier')) 
		{
		}
	}
	public function batch_trans_notify() 
	{
		$post = explode('MONEY', substr($this->post['batch_no'], 11));
		$id = $post[0];
		$money = $post[1];
		if (strexists($this->post['batch_no'], 'CP')) 
		{
			$this->batch_trans_notify_cp($id, $money);
		}
		else if (strexists($this->post['batch_no'], 'RW')) 
		{
			$this->batch_trans_notify_rw($id, $money);
		}
		exit('success');
	}
	public function batch_trans_notify_cp($id, $money) 
	{
		global $_W;
		$apply = pdo_fetch('select * from ' . tablename('ewei_shop_commission_apply') . ' where id=:id limit 1', array(':id' => $id));
		if (empty($apply) || ($apply['status'] == '3')) 
		{
			exit();
		}
		if ($money != $apply['realmoney'] * 100) 
		{
			exit();
		}
		$_W['uniacid'] = $_W['acid'] = $apply['uniacid'];
		$agentid = $apply['mid'];
		$member = p('commission')->getInfo($agentid, array('total', 'ok', 'apply', 'lock', 'check'));
		$hasagent = 0 < $member['agentcount'];
		$agentLevel = p('commission')->getLevel($apply['mid']);
		$set = p('commission')->getSet();
		if (empty($agentLevel['id'])) 
		{
			$agentLevel = array('levelname' => (empty($set['levelname']) ? '普通等级' : $this->set['levelname']), 'commission1' => $set['commission1'], 'commission2' => $set['commission2'], 'commission3' => $set['commission3']);
		}
		$orderids = iunserializer($apply['orderids']);
		if (!(is_array($orderids)) || (count($orderids) <= 0)) 
		{
			exit();
		}
		$ids = array();
		foreach ($orderids as $o ) 
		{
			$ids[] = $o['orderid'];
		}
		$list = pdo_fetchall('select id,agentid, ordersn,price,goodsprice, dispatchprice,createtime, paytype from ' . tablename('ewei_shop_order') . ' where  id in ( ' . implode(',', $ids) . ' );');
		$totalcommission = 0;
		$totalpay = 0;
		$totalmoney = 0;
		foreach ($list as &$row ) 
		{
			foreach ($orderids as $o ) 
			{
				if ($o['orderid'] == $row['id']) 
				{
					$row['level'] = $o['level'];
					break;
				}
			}
			$goods = pdo_fetchall('SELECT og.id,g.thumb,og.price,og.realprice, og.total,g.title,o.paytype,og.optionname,og.commission1,og.commission2,og.commission3,og.commissions,og.status1,og.status2,og.status3,og.content1,og.content2,og.content3 from ' . tablename('ewei_shop_order_goods') . ' og' . ' left join ' . tablename('ewei_shop_goods') . ' g on g.id=og.goodsid  ' . ' left join ' . tablename('ewei_shop_order') . ' o on o.id=og.orderid  ' . ' where og.uniacid = :uniacid and og.orderid=:orderid and og.nocommission=0 order by og.createtime  desc ', array(':uniacid' => $_W['uniacid'], ':orderid' => $row['id']));
			foreach ($goods as &$g ) 
			{
				$commissions = iunserializer($g['commissions']);
				if (1 <= $set['level']) 
				{
					$commission = iunserializer($g['commission1']);
					if (empty($commissions)) 
					{
						$g['commission1'] = ((isset($commission['level' . $agentLevel['id']]) ? $commission['level' . $agentLevel['id']] : $commission['default']));
					}
					else 
					{
						$g['commission1'] = ((isset($commissions['level1']) ? floatval($commissions['level1']) : 0));
					}
					if ($row['level'] == 1) 
					{
						$totalcommission += $g['commission1'];
						if (2 <= $g['status1']) 
						{
							$totalpay += $g['commission1'];
						}
					}
				}
				if (2 <= $set['level']) 
				{
					$commission = iunserializer($g['commission2']);
					if (empty($commissions)) 
					{
						$g['commission2'] = ((isset($commission['level' . $agentLevel['id']]) ? $commission['level' . $agentLevel['id']] : $commission['default']));
					}
					else 
					{
						$g['commission2'] = ((isset($commissions['level2']) ? floatval($commissions['level2']) : 0));
					}
					if ($row['level'] == 2) 
					{
						$totalcommission += $g['commission2'];
						if (2 <= $g['status2']) 
						{
							$totalpay += $g['commission2'];
						}
					}
				}
				if (3 <= $set['level']) 
				{
					$commission = iunserializer($g['commission3']);
					if (empty($commissions)) 
					{
						$g['commission3'] = ((isset($commission['level' . $agentLevel['id']]) ? $commission['level' . $agentLevel['id']] : $commission['default']));
					}
					else 
					{
						$g['commission3'] = ((isset($commissions['level3']) ? floatval($commissions['level3']) : 0));
					}
					if ($row['level'] == 3) 
					{
						$totalcommission += $g['commission3'];
						if (2 <= $g['status3']) 
						{
							$totalpay += $g['commission3'];
						}
					}
				}
				$g['level'] = $row['level'];
			}
			unset($g);
			$row['goods'] = $goods;
			$totalmoney += $row['price'];
		}
		unset($row);
		$set_array = array();
		$set_array['charge'] = $apply['charge'];
		$set_array['begin'] = $apply['beginmoney'];
		$set_array['end'] = $apply['endmoney'];
		$realmoney = $totalpay;
		$deductionmoney = 0;
		if (!(empty($set_array['charge']))) 
		{
			$money_array = m('member')->getCalculateMoney($totalpay, $set_array);
			if ($money_array['flag']) 
			{
				$realmoney = $money_array['realmoney'];
				$deductionmoney = $money_array['deductionmoney'];
			}
		}
		$apply_type = array('余额', '微信钱包', '支付宝', '银行卡');
		$time = time();
		foreach ($list as $row ) 
		{
			$update = array();
			foreach ($row['goods'] as $g ) 
			{
				$update = array();
				if (($row['level'] == 1) && ($g['status1'] == 2)) 
				{
					$update = array('paytime1' => $time, 'status1' => 3);
				}
				else if (($row['level'] == 2) && ($g['status2'] == 2)) 
				{
					$update = array('paytime2' => $time, 'status2' => 3);
				}
				else if (($row['level'] == 3) && ($g['status3'] == 2)) 
				{
					$update = array('paytime3' => $time, 'status3' => 3);
				}
				if (!(empty($update))) 
				{
					pdo_update('ewei_shop_order_goods', $update, array('id' => $g['id']));
				}
			}
		}
		pdo_update('ewei_shop_commission_apply', array('status' => 3, 'paytime' => $time, 'commission_pay' => $totalpay, 'realmoney' => $realmoney, 'deductionmoney' => $deductionmoney), array('id' => $id, 'uniacid' => $_W['uniacid']));
		$log = array('uniacid' => $_W['uniacid'], 'applyid' => $apply['id'], 'mid' => $member['id'], 'commission' => $totalcommission, 'commission_pay' => $totalpay, 'realmoney' => $realmoney, 'deductionmoney' => $deductionmoney, 'charge' => $set_array['charge'], 'createtime' => $time, 'type' => $apply['type']);
		pdo_insert('ewei_shop_commission_log', $log);
		$mcommission = $totalpay;
		if (!(empty($deductionmoney))) 
		{
			$mcommission .= ',实际到账金额:' . $realmoney . ',个人所得税金额:' . $deductionmoney;
		}
		p('commission')->sendMessage($member['openid'], array('commission' => $mcommission, 'type' => $apply_type[$apply['type']]), TM_COMMISSION_PAY);
		p('commission')->upgradeLevelByCommissionOK($member['openid']);
		if (p('globous')) 
		{
			p('globous')->upgradeLevelByCommissionOK($member['openid']);
		}
		plog('commission.apply.pay', '佣金打款 ID: ' . $id . ' 申请编号: ' . $apply['applyno'] . ' 打款方式: ' . $apply_type[$apply['type']] . ' 总佣金: ' . $totalcommission . ' 审核通过佣金: ' . $totalpay . ' 实际到账金额: ' . $realmoney . ' 个人所得税金额: ' . $deductionmoney . ' 个人所得税税率: ' . $set_array['charge'] . '%');
	}
	public function batch_trans_notify_rw($id, $money) 
	{
		$log = pdo_fetch('select * from ' . tablename('ewei_shop_member_log') . ' where id=:id limit 1', array(':id' => $id));
		if (empty($log) || ($log['status'] == '1')) 
		{
			exit();
		}
		if ($money != $log['realmoney'] * 100) 
		{
			exit();
		}
		$_W['uniacid'] = $_W['acid'] = $log['uniacid'];
		pdo_update('ewei_shop_member_log', array('status' => 1), array('id' => $id, 'uniacid' => $_W['uniacid']));
		m('notice')->sendMemberLogMessage($log['id']);
		$member = m('member')->getMember($log['openid']);
		plog('finance.log.wechat', '余额提现 ID: ' . $log['id'] . ' 方式: 微信 提现金额: ' . $log['money'] . ' ,到账金额: ' . $money . ' ,手续费金额 : ' . $log['deductionmoney'] . '<br/>会员信息:  ID: ' . $member['id'] . ' / ' . $member['openid'] . '/' . $member['nickname'] . '/' . $member['realname'] . '/' . $member['mobile']);
	}
	public function batch_refund_notify() 
	{
		$post = explode('MONEY', substr($this->post['batch_no'], 10));
		$id = $post[0];
		$money = $post[1];
		if (strexists($this->post['batch_no'], 'RF')) 
		{
			$this->batch_refund_notify_rf($id, $money);
		}
		else if (strexists($this->post['batch_no'], 'RC')) 
		{
			$this->batch_refund_notify_rc($id, $money);
		}
		exit('success');
	}
	public function batch_refund_notify_rf($id, $money) 
	{
		$item = pdo_fetch('SELECT * FROM ' . tablename('ewei_shop_order') . ' WHERE id = :id limit 1', array(':id' => $id));
		if (empty($item)) 
		{
			exit();
		}
		$_W['uniacid'] = $_W['acid'] = $item['uniacid'];
		$time = time();
		$goods = pdo_fetchall('SELECT g.id,g.credit, o.total,o.realprice FROM ' . tablename('ewei_shop_order_goods') . ' o left join ' . tablename('ewei_shop_goods') . ' g on o.goodsid=g.id ' . ' WHERE o.orderid=:orderid and o.uniacid=:uniacid', array(':orderid' => $item['id'], ':uniacid' => $item['uniacid']));
		$credits = m('order')->getGoodsCredit($goods);
		if (0 < $credits) 
		{
			m('member')->setCredit($item['openid'], 'credit1', -$credits, array(0, '退款扣除购物赠送积分: ' . $credits . ' 订单号: ' . $item['ordersn']), 21);
		}
		if (0 < $item['deductcredit']) 
		{
			m('member')->setCredit($item['openid'], 'credit1', $item['deductcredit'], array('0', '购物返还抵扣积分 积分: ' . $item['deductcredit'] . ' 抵扣金额: ' . $item['deductprice'] . ' 订单号: ' . $item['ordersn']), 22);
		}
		if (!(empty($refundtype))) 
		{
			if ($money < 0) 
			{
				$item['deductcredit2'] = $money;
			}
			m('order')->setDeductCredit2($item);
		}
		$change_refund['reply'] = '';
		$change_refund['status'] = 1;
		$change_refund['refundtype'] = $refundtype;
		$change_refund['price'] = $money;
		$change_refund['refundtime'] = $time;
		if (empty($refund['operatetime'])) 
		{
			$change_refund['operatetime'] = $time;
		}
		pdo_update('ewei_shop_order_refund', $change_refund, array('id' => $item['refundid']));
		m('order')->setGiveBalance($item['id'], 2);
		m('order')->setStocksAndCredits($item['id'], 2);
		if ($refund['orderprice'] == $refund['applyprice']) 
		{
			if (com('coupon') && !(empty($item['couponid']))) 
			{
				com('coupon')->returnConsumeCoupon($item['id']);
			}
		}
		pdo_update('ewei_shop_order', array('refundstate' => 0, 'status' => -1, 'refundtime' => $time), array('id' => $item['id'], 'uniacid' => $item['uniacid']));
		foreach ($goods as $g ) 
		{
			$salesreal = pdo_fetchcolumn('select ifnull(sum(total),0) from ' . tablename('ewei_shop_order_goods') . ' og ' . ' left join ' . tablename('ewei_shop_order') . ' o on o.id = og.orderid ' . ' where og.goodsid=:goodsid and o.status>=1 and o.uniacid=:uniacid limit 1', array(':goodsid' => $g['id'], ':uniacid' => $item['uniacid']));
			pdo_update('ewei_shop_goods', array('salesreal' => $salesreal), array('id' => $g['id']));
		}
		$log = '订单退款 ID: ' . $item['id'] . ' 订单号: ' . $item['ordersn'];
		if (0 < $item['parentid']) 
		{
			$log .= ' 父订单号:' . $item['ordersn'];
		}
		plog('order.op.refund', $log);
		m('notice')->sendOrderMessage($item['id'], true);
	}
	public function batch_refund_notify_rc($id, $money) 
	{
		$log = pdo_fetch('select * from ' . tablename('ewei_shop_member_log') . ' where id=:id limit 1', array(':id' => $id));
		if (empty($log)) 
		{
			exit();
		}
		$_W['uniacid'] = $_W['acid'] = $log['uniacid'];
		pdo_update('ewei_shop_member_log', array('status' => 3), array('id' => $id, 'uniacid' => $_W['uniacid']));
		$refundmoney = $log['money'] + $log['gives'];
		m('member')->setCredit($log['openid'], 'credit2', -$refundmoney, array(0, '充值退款'));
		m('notice')->sendMemberLogMessage($log['id']);
		$member = m('member')->getMember($log['openid']);
		plog('finance.log.refund', '充值退款 ID: ' . $log['id'] . ' 金额: ' . $log['money'] . ' <br/>会员信息:  ID: ' . $member['id'] . ' / ' . $member['openid'] . '/' . $member['nickname'] . '/' . $member['realname'] . '/' . $member['mobile']);
	}
	public function publicMethod() 
	{
		global $_W;
		$this->setting = uni_setting($_W['uniacid'], array('payment'));
		if (isset($this->strs[2]) && ($this->strs[2] == 'APP')) 
		{
			$wapset = m('common')->getSysset('wap');
			$this->setting['payment']['alipay'] = array('switch' => 1, 'public_key' => $wapset['alipublic']);
		}
		if (!(empty($this->setting['payment']['alipay']))) 
		{
			$sec_yuan = m('common')->getSec();
			$this->sec = iunserializer($sec_yuan['sec']);
			if ($this->post['sign_type'] == 'RSA') 
			{
				if (isset($this->strs[2]) && ($this->strs[2] == 'APP')) 
				{
					$public_key = $this->sec['app_alipay']['public_key'];
					if (empty($public_key)) 
					{
						exit();
					}
					$this->isapp = true;
					return m('finance')->RSAVerify($this->post, $public_key, true);
				}
			}
			else 
			{
				$prepares = array();
				foreach ($this->post as $key => $value ) 
				{
					if (($key != 'sign') && ($key != 'sign_type')) 
					{
						$prepares[] = $key . '=' . $value;
					}
				}
				sort($prepares);
				$string = implode($prepares, '&');
				$string .= $this->setting['payment']['alipay']['secret'];
				$sign = md5($string);
				if ($sign == $this->post['sign']) 
				{
					return true;
				}
			}
		}
		return false;
	}

	public function verify() {
        $alipay_config = array();

        //合作身份者ID，签约账号，以2088开头由16位纯数字组成的字符串，查看地址：https://openhome.alipay.com/platform/keyManage.htm?keyType=partner
        $alipay_config['partner']       = '2088721193154340';

        //收款支付宝账号，以2088开头由16位纯数字组成的字符串，一般情况下收款账号就是签约账号
        $alipay_config['seller_id'] = $alipay_config['partner'];

        //商户的私钥,此处填写原始私钥去头去尾，RSA公私钥生成：https://doc.open.alipay.com/doc2/detail.htm?spm=a219a.7629140.0.0.nBDxfy&treeId=58&articleId=103242&docType=1
        $alipay_config['private_key']   ='MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBAOcqhcOEL3+gUuFhk951UY5AaaZCNkoJhTemijPUf7wW0/i6rmuB8b3SjwygtF9E49uSeqHf4gr2PmFjROSB6d9SIeCtQPh7nkqxq+GyhJJzRTfeCVbZznLwoPiOcYmIbRcghawRG2AOVcYPlGHrjSrUMH+RAfrrlbDlAZFRUNwvAgMBAAECgYEA2bEkuOPBq0m64z519xe6TuD/3S8bWwuuJaMzIO4rwGArDGAZI2sC0YT5a6XnVpRUlBFUZR6mCzartiC63wosx3SshEg726nVgn+R9BLV1Mn5CNP/2kiC4ThNSuGYGSZl4ryvReZkOmULalqBUOGYoDYJ4XnKWDXx5HkfA+kBJnECQQD0cN3WhRRLV+Aca5yLqRp4wLVc+U29T3gAkh94tWzToOxe0fw8V2Y+kd9JxYXo5oGsIUEx5wveTKuiUyLa7n2JAkEA8hj0hFRzJ1TSIvskQEF0zVOF7APeUcN1yYrBWLhr58rfTpM34bLHfMHGqvJ7BNKMCxXrc21FWm/dUMUd2L2V9wJBAJVpo/+rKqN/HEri8DZh7/9dc75X2M/dknFu3/PNma6mD7VJz08m8SVPztdt+BNLSnnnfc09+AAyhzrabFS8MFkCQCDgirQ907WPq0nc2TtwqDAKG7HFhLeN170a/s7RnLXJszG0hG4+HSEwH46vh01MWoBW5bazLCvv7Ro+6qK4fFkCQQD0XUj8Zo43/jDj1fZrqDqoBNtJnRONVv9P++y42OWG2/aqnvKbJw1e0pDf/5UXGrkK1CsdI4E7IUvMSmDkC4Fl';

        //支付宝的公钥，查看地址：https://b.alipay.com/order/pidAndKey.htm
        $alipay_config['alipay_public_key']= 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB';

        //签名方式
        $alipay_config['sign_type']    = strtoupper('RSA');

        //字符编码格式 目前支持 gbk 或 utf-8
        $alipay_config['input_charset']= strtolower('utf-8');

        //访问模式,根据自己的服务器是否支持ssl访问，若支持请选择https；若不支持请选择http
        $alipay_config['transport']    = 'http';

        // 支付类型 ，无需修改
        $alipay_config['payment_type'] = "1";

        // 产品类型，无需修改
        $alipay_config['service'] = "create_direct_pay_by_user";

        // 防钓鱼时间戳  若要使用请调用类文件submit中的query_timestamp函数
        $alipay_config['anti_phishing_key'] = "";

        // 客户端的IP地址 非局域网的外网IP地址，如：221.0.0.1
        $alipay_config['exter_invoke_ip'] = "";

        if(empty($_POST)) {//判断POST来的数组是否为空
            return false;
        }

        //生成签名结果
        $isSign = $this->getSignVeryfy($_POST, $_POST["sign"], $alipay_config);

        //获取支付宝远程服务器ATN结果（验证是否是支付宝发来的消息）
       /* $responseTxt = 'false';
        if (! empty($_POST["notify_id"])) {$responseTxt = $this->getResponse($_POST["notify_id"], $alipay_config);}
        */
        if (/*preg_match("/true$/i",$responseTxt) &&*/ $isSign) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 获取返回时的签名验证结果
     * @param $para_temp 通知返回来的参数数组
     * @param $sign 返回的签名结果
     * @return 签名验证结果
     */
    public function getSignVeryfy($para_temp, $sign, $alipay_config) {
        //除去待签名参数数组中的空值和签名参数
        $para_filter = $this->paraFilter($para_temp);

        //对待签名参数数组排序
        $para_sort = $this->argSort($para_filter);

        //把数组所有元素，按照“参数=参数值”的模式用“&”字符拼接成字符串
        $prestr = $this->createLinkstring($para_sort);

        $isSgin = false;
        switch (strtoupper(trim($alipay_config['sign_type']))) {
            case "RSA" :
                $isSgin = $this->rsaVerify($prestr, trim($alipay_config['alipay_public_key']), $sign);
                break;
            default :
                $isSgin = false;
        }

        return $isSgin;
    }

    public function paraFilter($para) {
        $para_filter = array();
        while (list ($key, $val) = each ($para)) {
            if($key == "sign" || $key == "sign_type" || $val == "")continue;
            else	$para_filter[$key] = $para[$key];
        }
        return $para_filter;
    }

    /**
     * 对数组排序
     * @param $para 排序前的数组
     * return 排序后的数组
     */
    public function argSort($para) {
        ksort($para);
        reset($para);
        return $para;
    }

    /**
     * 把数组所有元素，按照“参数=参数值”的模式用“&”字符拼接成字符串
     * @param $para 需要拼接的数组
     * return 拼接完成以后的字符串
     */
    public function createLinkstring($para) {
        $arg  = "";
        while (list ($key, $val) = each ($para)) {
            $arg.=$key."=".$val."&";
        }
        //去掉最后一个&字符
        $arg = substr($arg,0,count($arg)-2);

        //如果存在转义字符，那么去掉转义
        if(get_magic_quotes_gpc()){$arg = stripslashes($arg);}

        return $arg;
    }

    /**
     * RSA验签
     * @param $data 待签名数据
     * @param $alipay_public_key 支付宝的公钥字符串
     * @param $sign 要校对的的签名结果
     * return 验证结果
     */
    public function rsaVerify($data, $alipay_public_key, $sign)  {
        //以下为了初始化私钥，保证在您填写私钥时不管是带格式还是不带格式都可以通过验证。
        $alipay_public_key=str_replace("-----BEGIN PUBLIC KEY-----","",$alipay_public_key);
        $alipay_public_key=str_replace("-----END PUBLIC KEY-----","",$alipay_public_key);
        $alipay_public_key=str_replace("\n","",$alipay_public_key);

        $alipay_public_key='-----BEGIN PUBLIC KEY-----'.PHP_EOL.wordwrap($alipay_public_key, 64, "\n", true) .PHP_EOL.'-----END PUBLIC KEY-----';
        $res=openssl_get_publickey($alipay_public_key);
        if($res)
        {
            $result = (bool)openssl_verify($data, base64_decode($sign), $res);
          
        }
        else {
            echo "您的支付宝公钥格式不正确!"."<br/>"."The format of your alipay_public_key is incorrect!";
            exit();
        }
        openssl_free_key($res);
        return $result;
    }

    /**
     * 获取远程服务器ATN结果,验证返回URL
     * @param $notify_id 通知校验ID
     * @return 服务器ATN结果
     * 验证结果集：
     * invalid命令参数不对 出现这个错误，请检测返回处理中partner和key是否为空
     * true 返回正确信息
     * false 请检查防火墙或者是服务器阻止端口问题以及验证时间是否超过一分钟
     */
    function getResponse($notify_id, $alipay_config) {
        $transport = strtolower(trim($alipay_config['transport']));
        $partner = trim($alipay_config['partner']);
        $veryfy_url = '';
        if($transport == 'https') {
            $veryfy_url = $this->https_verify_url;
        }
        else {
            $veryfy_url = $this->http_verify_url;
        }
        $veryfy_url = $veryfy_url."partner=" . $partner . "&notify_id=" . $notify_id;
        $responseTxt = $this->getHttpResponseGET($veryfy_url, $alipay_config['cacert']);

        return $responseTxt;
    }

    function getHttpResponseGET($url,$cacert_url) {
        $curl = curl_init($url);
        curl_setopt($curl, CURLOPT_HEADER, 0 ); // 过滤HTTP头
        curl_setopt($curl,CURLOPT_RETURNTRANSFER, 1);// 显示输出结果
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, true);//SSL证书认证
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 2);//严格认证
        curl_setopt($curl, CURLOPT_CAINFO,$cacert_url);//证书地址
        $responseText = curl_exec($curl);
        //var_dump( curl_error($curl) );//如果执行curl过程中出现异常，可打开此开关，以便查看异常内容
        curl_close($curl);

        return $responseText;
    }
}
?>