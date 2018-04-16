<?php
if (!(defined('IN_IA'))) 
{
	exit('Access Denied');
}
class Bonus_EweiShopV2Page extends PluginWebPage 
{
	// public function status0() 
	// {
	// 	$this->get_list(0);
	// }
	public function status1() 
	{
		global $_W;
		global $_GPC;
		$pindex = max(1, intval($_GPC['page']));
		$psize = 20;
		$audit=1;
		$condition = ' and so.uniacid=:uniacid and so.is_tj=:status';
		$params = array(':uniacid' => $_W['uniacid'], ':status' =>'0');
		$keyword = trim($_GPC['keyword']);
		$orderstatus = intval($_GPC['orderstatus']);
		if (!empty($orderstatus) && $orderstatus >= 0) 
		{
			$condition .= " and so.status='$orderstatus' ";
		}
		

		$searchtime = trim($_GPC['searchtime']);

		if ( is_array($_GPC['time']) ) 
		{
			$starttime = strtotime($_GPC['time']['start']);
			$endtime = strtotime($_GPC['time']['end']);
			$condition .= ' and so.createtime >= :starttime and so.createtime <= :endtime ';
			$params[':starttime'] = $starttime;
			$params[':endtime'] = $endtime;
		}

		if (!(empty($keyword))) 
		{
			$condition .= ' and so.ordersn like :keyword or smu.merchname like :keyword or sm.mobile like :keyword';
			$params[':keyword'] = '%' . $keyword . '%';
		}
		$sql = 'select so.id,so.ordersn,so.is_tj,so.price,so.status,so.createtime,smu.merchname,sm.mobile,sm.proportion  from ' . tablename('ewei_shop_order') .' so left join '. tablename('ewei_shop_merch_user') .'smu  on so.merchid=smu.id left join '. tablename('ewei_shop_member') .' sm  on smu.tid=sm.id  where smu.tid > 0 and sm.istuiguang=1 and so.merchid > 0 '.$condition. ' ORDER BY so.id desc';
		if (empty($_GPC['export'])) 
		{
			$sql .= '  limit ' . (($pindex - 1) * $psize) . ',' . $psize;
		}
		$list = pdo_fetchall($sql, $params);

		$total = pdo_fetchcolumn('select count(*)  from ' . tablename('ewei_shop_order') .' so left join '. tablename('ewei_shop_merch_user') .'smu  on so.merchid=smu.id left join '. tablename('ewei_shop_member') .' sm  on smu.tid=sm.id  where smu.tid > 0 and sm.istuiguang=1 and so.merchid > 0 '.$condition, $params);
		$pager = pagination($total, $pindex, $psize);
		$bonus_proportion = $_W['shopset']['qytuiguang']['bonus1']/100;//分红比例
		include $this->template();
	}
	public function status2() 
	{
		global $_W;
		global $_GPC;
		$pindex = max(1, intval($_GPC['page']));
		$psize = 20;
		$condition = ' and so.uniacid=:uniacid and so.is_tj=:status';
		$params = array(':uniacid' => $_W['uniacid'], ':status' =>'1');
		$keyword = trim($_GPC['keyword']);
		$orderstatus = intval($_GPC['orderstatus']);
		if (!empty($orderstatus) && $orderstatus >= 0) 
		{
			$condition .= " and so.status='$orderstatus' ";
		}
		

		$searchtime = trim($_GPC['searchtime']);

		if ( is_array($_GPC['time']) ) 
		{
			$starttime = strtotime($_GPC['time']['start']);
			$endtime = strtotime($_GPC['time']['end']);
			$condition .= ' and so.createtime >= :starttime and so.createtime <= :endtime ';
			$params[':starttime'] = $starttime;
			$params[':endtime'] = $endtime;
		}
		// var_dump($_GPC['time']);exit;
		if (!(empty($keyword))) 
		{
			$condition .= ' and so.ordersn like :keyword or smu.merchname like :keyword or sm.mobile like :keyword';
			$params[':keyword'] = '%' . $keyword . '%';
		}
		$sql = 'select so.id,so.ordersn,so.is_tj,so.price,so.status,so.createtime,smu.merchname,sm.mobile,sm.proportion  from ' . tablename('ewei_shop_order') .' so left join '. tablename('ewei_shop_merch_user') .'smu  on so.merchid=smu.id left join '. tablename('ewei_shop_member') .' sm  on smu.tid=sm.id  where smu.tid > 0 and sm.istuiguang=1 and so.merchid > 0 '.$condition. ' ORDER BY so.id desc';
		if (empty($_GPC['export'])) 
		{
			$sql .= '  limit ' . (($pindex - 1) * $psize) . ',' . $psize;
		}
		$list = pdo_fetchall($sql, $params);

		$total = pdo_fetchcolumn('select count(*)  from ' . tablename('ewei_shop_order') .' so left join '. tablename('ewei_shop_merch_user') .'smu  on so.merchid=smu.id left join '. tablename('ewei_shop_member') .' sm  on smu.tid=sm.id  where smu.tid > 0 and sm.istuiguang=1 and so.merchid > 0 '.$condition, $params);
		$pager = pagination($total, $pindex, $psize);
		$bonus_proportion = $_W['shopset']['qytuiguang']['bonus1']/100;//分红比例
		include $this->template();
	}
	protected function get_list($status = 0) 
	{
		global $_W;
		global $_GPC;
		$pindex = max(1, intval($_GPC['page']));
		$psize = 20;
		if($_GPC['status']){
			$status=$_GPC['status'];
		}else{
			$status=$status;
		}
		if($status==0){
			$audit=1;
		}

		$condition = ' and so.uniacid=:uniacid and so.is_tj=:status';
		$params = array(':uniacid' => $_W['uniacid'], ':status' => $status);
		$keyword = trim($_GPC['keyword']);
		$orderstatus = intval($_GPC['orderstatus']);
		if (!empty($orderstatus) && $orderstatus >= 0) 
		{
			$condition .= " and so.status='$orderstatus' ";
		}
		

		$searchtime = trim($_GPC['searchtime']);

		if ( is_array($_GPC['time']) ) 
		{
			$starttime = strtotime($_GPC['time']['start']);
			$endtime = strtotime($_GPC['time']['end']);
			$condition .= ' and so.createtime >= :starttime and so.createtime <= :endtime ';
			$params[':starttime'] = $starttime;
			$params[':endtime'] = $endtime;
		}
		// var_dump($_GPC['time']);exit;
		if (!(empty($keyword))) 
		{
			$condition .= ' and so.ordersn like :keyword or smu.merchname like :keyword or sm.mobile like :keyword';
			$params[':keyword'] = '%' . $keyword . '%';
		}
		$sql = 'select so.id,so.ordersn,so.is_tj,so.price,so.status,so.createtime,smu.merchname,sm.mobile  from ' . tablename('ewei_shop_order') .' so left join '. tablename('ewei_shop_merch_user') .'smu  on so.merchid=smu.id left join '. tablename('ewei_shop_member') .' sm  on smu.tid=sm.id  where smu.tid > 0 and sm.istuiguang=1 and so.merchid > 0 '.$condition;
		if (empty($_GPC['export'])) 
		{
			$sql .= '  limit ' . (($pindex - 1) * $psize) . ',' . $psize;
		}
		$list = pdo_fetchall($sql, $params);
		
		$totalmoneys = pdo_fetch('select count(*) from '. tablename('ewei_shop_order') .' so left join '. tablename('ewei_shop_merch_user') .'smu  on so.merchid=smu.id left join '. tablename('ewei_shop_member') .' sm  on smu.tid=sm.id  where smu.tid > 0 and sm.istuiguang=1 and so.merchid > 0'.$condition, $params);
		$pager = pagination($total, $pindex, $psize);
		$bonus_proportion = $_W['shopset']['qytuiguang']['bonus1']/100;//分红比例
		include $this->template('qytuiguang/bonus/index');
	}
	public function detail() 
	{
		global $_W;
		global $_GPC;
		$id = intval($_GPC['id']);
		$data = pdo_fetch('select * from ' . tablename('ewei_shop_abonus_bill') . ' where id=:id and uniacid=:uniacid limit 1 ', array(':id' => $id, ':uniacid' => $_W['uniacid']));
		if (empty($data)) 
		{
			$this->message('结算单未找到!');
		}
		$data['aagentcount11'] = pdo_fetchcolumn('select count(*) from ' . tablename('ewei_shop_abonus_billp') . ' b left join ' . tablename('ewei_shop_member') . ' m on b.openid=m.openid and b.uniacid=m.uniacid  where m.aagenttype=1 and  b.billid=:billid and b.status=1 and b.uniacid=:uniacid', array(':uniacid' => $_W['uniacid'], ':billid' => $id));
		$data['aagentcount22'] = pdo_fetchcolumn('select count(*) from ' . tablename('ewei_shop_abonus_billp') . ' b left join ' . tablename('ewei_shop_member') . ' m on b.openid=m.openid and b.uniacid=m.uniacid  where m.aagenttype=2 and  b.billid=:billid and b.status=1 and b.uniacid=:uniacid', array(':uniacid' => $_W['uniacid'], ':billid' => $id));
		$data['aagentcount33'] = pdo_fetchcolumn('select count(*) from ' . tablename('ewei_shop_abonus_billp') . ' b left join ' . tablename('ewei_shop_member') . ' m on b.openid=m.openid and b.uniacid=m.uniacid  where m.aagenttype=3 and  b.billid=:billid and b.status=1 and b.uniacid=:uniacid', array(':uniacid' => $_W['uniacid'], ':billid' => $id));
		$data['aagentcount44'] = $data['aagentcount11'] + $data['aagentcount22'] + $data['aagentcount33'];
		$condition = ' and b.billid=:billid and b.uniacid =:uniacid';
		$params = array(':billid' => $id, ':uniacid' => $_W['uniacid']);
		$keyword = trim($_GPC['keyword']);
		if (!(empty($keyword))) 
		{
			$condition .= ' and (m.realname like :keyword or m.nickname like :keyword or m.mobile like :keyword)';
			$params[':keyword'] = '%' . $keyword . '%';
		}
		if ($_GPC['status'] != '') 
		{
			if ($_GPC['status'] == 1) 
			{
				$condition .= ' and b.status=1';
			}
			else 
			{
				$condition .= ' and b.status=0 or b.status=-1';
			}
		}
		if ($_GPC['aagenttype'] != '') 
		{
			$condition .= ' and m.aagenttype=' . intval($_GPC['aagenttype']);
		}
		if ($_GPC['level'] != '') 
		{
			$condition .= ' and m.aagentlevel=' . intval($_GPC['level']);
		}
		$sql = 'select b.*, m.nickname,m.avatar,m.realname,m.weixin,m.mobile,l.levelname,b.bonus1,b.bonus2,b.bonus3,m.aagentlevel,m.aagenttype,m.id as mid from ' . tablename('ewei_shop_abonus_billp') . ' b ' . ' left join ' . tablename('ewei_shop_member') . ' m on m.openid = b.openid and m.uniacid = b.uniacid' . ' left join ' . tablename('ewei_shop_abonus_level') . ' l on l.id = m.aagentlevel' . ' where 1 ' . $condition . ' ORDER BY status asc ';
		$list = pdo_fetchall($sql, $params);
		if ($_GPC['export'] == 1) 
		{
			ca('qytuiguang.bonus.detail.export');
			plog('qytuiguang.bonus.detail.export', '导出结算单代理商数据 ID: ' . $data['id'] . ' 单号: ' . $data['billno']);
			foreach ($list as &$row ) 
			{
				$row['createtime'] = ((empty($row['createtime']) ? '' : date('Y-m-d H:i', $row['createtime'])));
				$row['levelname'] = ((!(empty($row['levelname'])) ? $row['levelname'] : ((empty($set['levelname']) ? '默认等级' : $set['levelname']))));
				if ($row['aagenttype'] == 1) 
				{
					$row['aagenttypestr'] = '省级';
				}
				else if ($row['aagenttype'] == 2) 
				{
					$row['aagenttypestr'] = '市级';
					$row['bonus1'] = '--';
					$row['paymoney1'] = '--';
				}
				else if ($row['aagenttype'] == 3) 
				{
					$row['aagenttypestr'] = '区级';
					$row['bonus1'] = '--';
					$row['paymoney1'] = '--';
					$row['bonus2'] = '--';
					$row['paymoney2'] = '--';
				}
				$row['paytime1'] = ((empty($row['paytime1']) ? '--' : date('Y-m-d H:i', $row['paytime1'])));
				$row['paytime2'] = ((empty($row['paytime2']) ? '--' : date('Y-m-d H:i', $row['paytime2'])));
				$row['paytime3'] = ((empty($row['paytime3']) ? '--' : date('Y-m-d H:i', $row['paytime3'])));
			}
			unset($row);
			m('excel')->export($list, array( 'title' => '结算单数据-' . $data['billno'], 'columns' => array( array('title' => 'ID', 'field' => 'id', 'width' => 12), array('title' => '单号', 'field' => 'payno', 'width' => 12), array('title' => '昵称', 'field' => 'nickname', 'width' => 12), array('title' => '姓名', 'field' => 'realname', 'width' => 12), array('title' => '手机号', 'field' => 'mobile', 'width' => 12), array('title' => '微信号', 'field' => 'weixin', 'width' => 12), array('title' => 'openid', 'field' => 'openid', 'width' => 36), array('title' => '类型', 'field' => 'aagenttypestr', 'width' => 12), array('title' => '等级', 'field' => 'levelname', 'width' => 12), array('title' => '省级比例(%)', 'field' => 'bonus1', 'width' => 12), array('title' => '市级比例(%)', 'field' => 'bonus2', 'width' => 12), array('title' => '区级比例(%)', 'field' => 'bonus3', 'width' => 12), array('title' => '省级分红', 'field' => 'paymoney1', 'width' => 12), array('title' => '市级分红', 'field' => 'paymoney2', 'width' => 12), array('title' => '区级分红', 'field' => 'paymoney3', 'width' => 12), array('title' => '省级分红打款时间', 'field' => 'paytime1', 'width' => 12), array('title' => '市级分红打款时间', 'field' => 'paytime2', 'width' => 12), array('title' => '区级分红打款时间', 'field' => 'paytime3', 'width' => 12) ) ));
		}
		$set = $this->getSet();
		$levels = $this->model->getLevels();
		include $this->template();
	}
	public function delete() 
	{
		global $_W;
		global $_GPC;
		$id = intval($_GPC['id']);
		$data = pdo_fetch('select * from ' . tablename('ewei_shop_abonus_bill') . ' where id=:id and uniacid=:uniacid limit 1 ', array(':id' => $id, ':uniacid' => $_W['uniacid']));
		if (empty($data)) 
		{
			show_json(0, '结算单未找到!');
		}
		if (!(empty($data['status']))) 
		{
			show_json(0, '结算单已经结算，不能删除!');
		}
		pdo_query('delete from ' . tablename('ewei_shop_abonus_bill') . ' where id=:id and uniacid=:uniacid limit 1 ', array(':id' => $id, ':uniacid' => $_W['uniacid']));
		pdo_query('delete from ' . tablename('ewei_shop_abonus_billo') . ' where billid=:id and uniacid=:uniacid limit 1 ', array(':id' => $id, ':uniacid' => $_W['uniacid']));
		pdo_query('delete from ' . tablename('ewei_shop_abonus_billp') . ' where billid=:id and uniacid=:uniacid limit 1 ', array(':id' => $id, ':uniacid' => $_W['uniacid']));
		plog('qytuiguang.bonus.delete', '删除结算单 ID:' . $data . ' 单号: ' . $data['billno'] . ' <br/>分红:  省级-' . $data['bonusmoney_pay1'] . ' 市级-' . $data['bonusmoney_pay2'] . ' 区级-' . $data['bonusmoney_pay3'] . ' <br/>代理人数:  省级-' . $data['aagentcount1'] . ' 市级-' . $data['aagentcount2'] . ' 区级-' . $data['aagentcount3']);
		show_json(1);
	}
	public function totals() 
	{
		global $_W;
        $condition = ' and so.uniacid=:uniacid and so.is_tj=:status';
        $dparam = array(':uniacid' => $_W['uniacid'], ':status' => 0);
		$yparam = array(':uniacid' => $_W['uniacid'], ':status' => 1);

		$d_total = pdo_fetchall('select so.id,so.ordersn,so.is_tj,so.price,so.createtime,smu.merchname,sm.mobile  from ' . tablename('ewei_shop_order') .' so left join '. tablename('ewei_shop_merch_user') .'smu  on so.merchid=smu.id left join '. tablename('ewei_shop_member') .' sm  on smu.tid=sm.id  where smu.tid > 0 and sm.istuiguang=1 and so.merchid > 0 '.$condition,$dparam);

		$y_total = pdo_fetchall('select so.id,so.ordersn,so.is_tj,so.price,so.createtime,smu.merchname,sm.mobile  from ' . tablename('ewei_shop_order') .' so left join '. tablename('ewei_shop_merch_user') .'smu  on so.merchid=smu.id left join '. tablename('ewei_shop_member') .' sm  on smu.tid=sm.id  where smu.tid > 0 and sm.istuiguang=1 and so.merchid > 0 '.$condition,$yparam);

		 $totals=array('djs'=>count($d_total),'yjs'=>count($y_total));

		show_json(1, $totals);
	}
	public function build() 
	{
		global $_W;
		global $_GPC;
		$set = $this->getSet();
		if ($_W['ispost']) 
		{
			$year = intval($_GPC['year']);
			$month = intval($_GPC['month']);
			$week = intval($_GPC['week']);
			$bonusmoney1 = floatval($_GPC['bonusmoney1']);
			$bonusmoney2 = floatval($_GPC['bonusmoney2']);
			$bonusmoney3 = floatval($_GPC['bonusmoney3']);
			$data = $this->model->getBonusData($year, $month, $week);
			if ($data['old']) 
			{
				show_json(1, array('old' => true));
			}
			$set = $this->getSet();
			$bill = array('uniacid' => $_W['uniacid'], 'billno' => m('common')->createNO('abonus_bill', 'billno', 'AB'), 'paytype' => $set['paytype'], 'year' => $year, 'month' => $month, 'week' => $week, 'ordercount' => $data['ordercount'], 'ordermoney' => $data['ordermoney'], 'bonusmoney1' => $data['bonusmoney1'], 'bonusmoney_send1' => $bonusmoney1, 'bonusmoney_pay1' => $bonusmoney1, 'bonusmoney2' => $data['bonusmoney2'], 'bonusmoney_send2' => $bonusmoney2, 'bonusmoney_pay2' => $bonusmoney2, 'bonusmoney3' => $data['bonusmoney3'], 'bonusmoney_send3' => $bonusmoney3, 'bonusmoney_pay3' => $bonusmoney3, 'aagentcount1' => $data['aagentcount1'], 'aagentcount2' => $data['agentcount2'], 'aagentcount3' => $data['aagentcount3'], 'starttime' => $data['starttime'], 'endtime' => $data['endtime'], 'createtime' => time());
			pdo_insert('ewei_shop_abonus_bill', $bill);
			$billid = pdo_insertid();
			foreach ($data['orders'] as $order ) 
			{
				$bo = array('uniacid' => $_W['uniacid'], 'billid' => $billid, 'orderid' => $order['id'], 'ordermoney' => $order['price']);
				pdo_insert('ewei_shop_abonus_billo', $bo);
			}
			$rate1 = $bonusmoney1 / (($data['bonusmoney1'] <= 0 ? 1 : $data['bonusmoney1']));
			$rate2 = $bonusmoney2 / (($data['bonusmoney2'] <= 0 ? 1 : $data['bonusmoney2']));
			$rate3 = $bonusmoney3 / (($data['bonusmoney3'] <= 0 ? 1 : $data['bonusmoney3']));
			foreach ($data['aagents'] as $a ) 
			{
				$bp = array('uniacid' => $_W['uniacid'], 'billid' => $billid, 'payno' => m('common')->createNO('abonus_billp', 'payno', 'AP'), 'openid' => $a['openid'], 'money1' => $a['bonusmoney1'], 'realmoney1' => $a['bonusmoney_send1'] * $rate1, 'paymoney1' => $a['bonusmoney_send1'] * $rate1, 'realmoney2' => $a['bonusmoney_send2'] * $rate2, 'paymoney2' => $a['bonusmoney_send2'] * $rate2, 'realmoney3' => $a['bonusmoney_send3'] * $rate3, 'paymoney3' => $a['bonusmoney_send3'] * $rate3, 'bonus1' => $a['bonus1'], 'bonus2' => $a['bonus2'], 'bonus3' => $a['bonus3'], 'charge' => $a['charge'], 'chargemoney1' => $a['chargemoney1'], 'chargemoney2' => $a['chargemoney2'], 'chargemoney3' => $a['chargemoney3'], 'status' => 0);
				if ((0 < ($a['bonusmoney_send1'] * $rate1)) || (0 < ($a['bonusmoney_send2'] * $rate2)) || (0 < ($a['bonusmoney_send3'] * $rate3))) 
				{
					pdo_insert('ewei_shop_abonus_billp', $bp);
				}
			}
			plog('qytuiguang.bonus.build', '创建结算单 ID:' . $billid . ' 单号: ' . $bill['billno'] . ' 分红金额: ' . $bill['bonusmoney_pay'] . ' 区域推广人数:  ' . $bill['partnercount']);
			show_json(1, array('old' => false));
		}
		$years = array();
		$current_year = date('Y');
		$i = $current_year - 10;
		while ($i <= $current_year) 
		{
			$years[] = $i;
			++$i;
		}
		$months = array();
		$i = 1;
		while ($i <= 12) 
		{
			$months[] = ((strlen($i) == 1 ? '0' . $i : $i));
			++$i;
		}
		$days = get_last_day(date('Y'), date('m'));
		$week = intval($days / date('d')) - 1;
		if (empty($week)) 
		{
			$week = 1;
		}
		$bill = pdo_fetch('select * from ' . tablename('ewei_shop_abonus_bill') . ' where uniacid=:uniacid order by id desc limit 1 ', array(':uniacid' => $_W['uniacid']));
		include $this->template();
	}
	public function loaddetail() 
	{
		global $_W;
		global $_GPC;
		$year = intval($_GPC['year']);
		$month = intval($_GPC['month']);
		$week = intval($_GPC['week']);
		$data = $this->model->getBonusData($year, $month, $week);
		include $this->template('qytuiguang/bonus/loaddetail');
		exit();
	}
	public function confirm() 
	{
		global $_W;
		global $_GPC;
		$id = intval($_GPC['id']);
		$data = pdo_fetch('select * from ' . tablename('ewei_shop_abonus_bill') . ' where id=:id and uniacid=:uniacid limit 1 ', array(':id' => $id, ':uniacid' => $_W['uniacid']));
		if (empty($data)) 
		{
			show_json(0, '结算单未找到!');
		}
		if (!(empty($data['status']))) 
		{
			show_json(0, '结算单已经确认或已经结算!');
		}
		$time = time();
		pdo_query('update ' . tablename('ewei_shop_abonus_bill') . ' set status=1,confirmtime=' . $time . ' where id=:id and uniacid=:uniacid', array(':id' => $id, ':uniacid' => $_W['uniacid']));
		plog('qytuiguang.bonus.confirm', '确认结算单 ID:' . $data['id'] . ' 单号: ' . $data['billno']);
		show_json(1);
	}
	public function pay($a = array(), $b = array()) 
	{
		global $_W;
		global $_GPC;
		$id = intval($_GPC['id']);
		$data = pdo_fetch('select * from ' . tablename('ewei_shop_abonus_bill') . ' where id=:id and uniacid=:uniacid limit 1 ', array(':id' => $id, ':uniacid' => $_W['uniacid']));
		if (empty($data)) 
		{
			show_json(0, '结算单未找到!');
		}
		if ($data['status'] == 2) 
		{
			show_json(0, '结算单已经全部结算!');
		}
		if (empty($data['status'])) 
		{
			$orders = pdo_fetchall('select orderid from ' . tablename('ewei_shop_abonus_billo') . ' where billid=:billid and uniacid=:uniacid', array(':uniacid' => $_W['uniacid'], ':billid' => $id), 'orderid');
			if (empty($orders)) 
			{
				show_json(0, '未找到任何结算订单!');
			}
			pdo_query('update ' . tablename('ewei_shop_order') . ' set isabonus=1 where id in ( ' . implode(',', array_keys($orders)) . ' ) and uniacid=' . $_W['uniacid']);
		}
		$time = time();
		pdo_query('update ' . tablename('ewei_shop_abonus_bill') . ' set paytime=' . $time . ' where id=:id and uniacid=:uniacid', array(':id' => $id, ':uniacid' => $_W['uniacid']));
		plog('qytuiguang.bonus.pay', '进行结算单结算 ID:' . $data['id'] . ' 单号: ' . $data['billno']);
		show_json(1);
	}
	public function payp() 
	{
		global $_W;
		global $_GPC;
		$id = intval($_GPC['id']);
		$baid = intval($_GPC['baid']);
		$set = $this->getSet();
		$data = pdo_fetch('select * from ' . tablename('ewei_shop_abonus_bill') . ' where id=:id and uniacid=:uniacid limit 1 ', array(':id' => $id, ':uniacid' => $_W['uniacid']));
		if (empty($data)) 
		{
			show_json(0, '结算单未找到!');
		}
		if ($data['status'] == 2) 
		{
			show_json(0, '结算单已经全部结算!');
		}
		if (empty($baid)) 
		{
			show_json(0, '参数错误!');
		}
		$aagent = pdo_fetch('select *  from ' . tablename('ewei_shop_abonus_billp') . ' where billid=:billid and id=:id and uniacid=:uniacid limit 1', array(':uniacid' => $_W['uniacid'], ':billid' => $id, ':id' => $baid));
		if (empty($aagent)) 
		{
			show_json(0, '未找到区域推广!');
		}
		if ($aagent['status'] == '1') 
		{
			show_json(0, '此区域推广已经全部结算!');
		}
		if (empty($aagent['openid'])) 
		{
			show_json(0, '结算数据错误!');
		}
		if (($aagent['paymoney1'] <= 0) && ($aagent['paymoney2'] <= 0) && ($aagent['paymoney3'] <= 0)) 
		{
			show_json(0, '结算数据错误!');
		}
		$member = m('member')->getMember($aagent['openid']);
		$pay = $aagent['paymoney1'] + $aagent['paymoney2'] + $aagent['paymoney3'];
		$moneytype = intval($set['moneytype']);
		($moneytype <= 0) && ($moneytype = 0);
		if ($pay < 1) 
		{
			$moneytype = 0;
		}
		if (1 < $moneytype) 
		{
			show_json(0, '结算方式错误!');
		}
		if ($moneytype == 1) 
		{
			$pay *= 100;
		}
		if (!(empty($member))) 
		{
			$result = m('finance')->pay($aagent['openid'], $moneytype, $pay, $aagent['payno'], '区域推广分红', false);
			if (is_error($result)) 
			{
				pdo_update('ewei_shop_abonus_billp', array('reason' => $result['message'], 'status' => -1), array('billid' => $id, 'id' => $baid));
			}
			else 
			{
				pdo_update('ewei_shop_abonus_billp', array('reason' => '', 'status' => 1, 'paytime' => time()), array('billid' => $id, 'id' => $baid));
				$this->model->upgradeLevelByBonus($aagent['openid']);
				$this->model->sendMessage($aagent['openid'], array('paymoney1' => $aagent['paymoney1'], 'paymoney2' => $aagent['paymoney2'], 'paymoney3' => $aagent['paymoney3'], 'aagenttype' => $member['aagenttype'], 'nickname' => $member['nickname'], 'type' => ($moneytype ? '微信钱包' : '余额')), TM_ABONUS_PAY);
			}
		}
		else 
		{
			pdo_update('ewei_shop_abonus_billp', array('reason' => '未找到会员', 'status' => -1), array('billid' => $id, 'id' => $baid));
		}
		$aagentcount11 = pdo_fetchcolumn('select count(*) from ' . tablename('ewei_shop_abonus_billp') . ' b left join ' . tablename('ewei_shop_member') . ' m on b.openid=m.openid and b.uniacid=m.uniacid  where m.aagenttype=1 and  b.billid=:billid and b.status=1 and b.uniacid=:uniacid', array(':uniacid' => $_W['uniacid'], ':billid' => $id));
		$aagentcount22 = pdo_fetchcolumn('select count(*) from ' . tablename('ewei_shop_abonus_billp') . ' b left join ' . tablename('ewei_shop_member') . ' m on b.openid=m.openid and b.uniacid=m.uniacid  where m.aagenttype=2 and  b.billid=:billid and b.status=1 and b.uniacid=:uniacid', array(':uniacid' => $_W['uniacid'], ':billid' => $id));
		$aagentcount33 = pdo_fetchcolumn('select count(*) from ' . tablename('ewei_shop_abonus_billp') . ' b left join ' . tablename('ewei_shop_member') . ' m on b.openid=m.openid and b.uniacid=m.uniacid  where m.aagenttype=3 and  b.billid=:billid and b.status=1 and b.uniacid=:uniacid', array(':uniacid' => $_W['uniacid'], ':billid' => $id));
		$aagentcount44 = $aagentcount11 + $aagentcount22 + $aagentcount33;
		$allaagentcount = pdo_fetchcolumn('select count(*) from ' . tablename('ewei_shop_abonus_billp') . ' where billid=:billid and uniacid=:uniacid', array(':uniacid' => $_W['uniacid'], ':billid' => $id));
		$full = ($aagentcount11 + $aagentcount22 + $aagentcount33) == $allaagentcount;
		if ($full) 
		{
			pdo_query('update ' . tablename('ewei_shop_abonus_bill') . ' set status=2 where id=:id and uniacid=:uniacid', array(':id' => $id, ':uniacid' => $_W['uniacid']));
		}
		if (is_error($result)) 
		{
			show_json(0, array('message' => $result['message'], 'aagentcount11' => $aagentcount11, 'aagentcount22' => $aagentcount22, 'aagentcount33' => $aagentcount33, 'aagentcount44' => $aagentcount44, 'full' => $full));
		}
		else 
		{
			show_json(1, array('aagentcount11' => $aagentcount11, 'aagentcount22' => $aagentcount22, 'aagentcount33' => $aagentcount33, 'aagentcount44' => $aagentcount44, 'full' => $full));
		}
	}
	public function paymoney_level() 
	{
		global $_W;
		global $_GPC;
		$level = intval($_GPC['level']);
		$paymoney1 = trim($_GPC['paymoney1']);
		$paymoney2 = trim($_GPC['paymoney2']);
		$paymoney3 = trim($_GPC['paymoney3']);
		if (($paymoney1 < 0) && ($paymoney2 < 0) && ($paymoney3 < 0)) 
		{
			show_json(0, '参数错误!');
		}
		$id = intval($_GPC['id']);
		$data = pdo_fetch('select * from ' . tablename('ewei_shop_abonus_bill') . ' where id=:id and uniacid=:uniacid limit 1 ', array(':id' => $id, ':uniacid' => $_W['uniacid']));
		if (empty($data)) 
		{
			show_json(0, '结算单未找到!');
		}
		if (!(empty($data['status']))) 
		{
			show_json(0, '结算单已经确认或结算!');
		}
		$conditions = array();
		if ($paymoney1 != '') 
		{
			$conditions[] = 'b.paymoney1 = ' . $paymoney1;
		}
		if ($paymoney2 != '') 
		{
			$conditions[] = 'b.paymoney2 = ' . $paymoney2;
		}
		if ($paymoney3 != '') 
		{
			$conditions[] = 'b.paymoney3 = ' . $paymoney3;
		}
		if (!(empty($conditions))) 
		{
			$sql = 'update ' . tablename('ewei_shop_abonus_billp') . ' b ,' . tablename('ewei_shop_member') . ' m set ' . implode(',', $conditions) . ' where b.openid = m.openid and b.uniacid = m.uniacid and m.aagentlevel=' . $level . ' and m.aagenttype=1 and b.billid=' . $id . ' and b.uniacid=' . $_W['uniacid'];
			pdo_query($sql);
		}
		$conditions = array();
		if ($paymoney2 != '') 
		{
			$conditions[] = 'b.paymoney2 = ' . $paymoney2;
		}
		if ($paymoney3 != '') 
		{
			$conditions[] = 'b.paymoney3 = ' . $paymoney3;
		}
		if (!(empty($conditions))) 
		{
			$sql = 'update ' . tablename('ewei_shop_abonus_billp') . ' b ,' . tablename('ewei_shop_member') . ' m set  ' . implode(',', $conditions) . '  where b.openid = m.openid and b.uniacid = m.uniacid and m.aagentlevel=' . $level . ' and m.aagenttype=2 and b.billid=' . $id . ' and b.uniacid=' . $_W['uniacid'];
			pdo_query($sql);
		}
		$conditions = array();
		if ($paymoney3 != '') 
		{
			$conditions[] = 'b.paymoney3 = ' . $paymoney3;
		}
		if (!(empty($conditions))) 
		{
			$sql = 'update ' . tablename('ewei_shop_abonus_billp') . ' b ,' . tablename('ewei_shop_member') . ' m set  ' . implode(',', $conditions) . '  where b.openid = m.openid and b.uniacid = m.uniacid and m.aagentlevel=' . $level . ' and b.billid=' . $id . ' and m.aagenttype=3 and b.uniacid=' . $_W['uniacid'];
			pdo_query($sql);
		}
		$totalmoney = pdo_fetch('select sum(paymoney1) as paymoney1, sum(paymoney2) as paymoney2,sum(paymoney3) as paymoney3 from ' . tablename('ewei_shop_abonus_billp') . ' where billid=:billid and uniacid=:uniacid limit 1', array(':uniacid' => $_W['uniacid'], ':billid' => $id));
		$ret = array('bonusmoney_pay1' => $totalmoney['paymoney1'], 'bonusmoney_pay2' => $totalmoney['paymoney2'], 'bonusmoney_pay3' => $totalmoney['paymoney3']);
		pdo_update('ewei_shop_abonus_bill', $ret, array('id' => $id, 'uniacid' => $_W['uniacid']));
		show_json(1, $ret);
	}
	public function paymoney_aagent() 
	{
		global $_W;
		global $_GPC;
		$value = floatval($_GPC['value']);
		if ($value < 0) 
		{
			show_json(0, '参数错误!');
		}
		$paymoneytype = intval($_GPC['paymoneytype']);
		if (($paymoneytype <= 0) || (3 < $paymoneytype)) 
		{
			show_json(0, '参数错误!');
		}
		$id = intval($_GPC['id']);
		$data = pdo_fetch('select * from ' . tablename('ewei_shop_abonus_bill') . ' where id=:id and uniacid=:uniacid limit 1 ', array(':id' => $id, ':uniacid' => $_W['uniacid']));
		if (empty($data)) 
		{
			show_json(0, '结算单未找到!');
		}
		if (!(empty($data['status']))) 
		{
			show_json(0, '结算单已经确认或结算!');
		}
		$baid = intval($_GPC['baid']);
		$partner = pdo_fetch('select *  from ' . tablename('ewei_shop_abonus_billp') . ' where billid=:billid and id=:id and uniacid=:uniacid limit 1', array(':uniacid' => $_W['uniacid'], ':billid' => $id, ':id' => $baid));
		if (empty($partner)) 
		{
			show_json(0, '未找到代理商!');
		}
		pdo_update('ewei_shop_abonus_billp', array('paymoney' . $paymoneytype => $value), array('id' => $baid, 'billid' => $id, 'uniacid' => $_W['uniacid']));
		$totalmoney = pdo_fetch('select sum(paymoney1) as paymoney1, sum(paymoney2) as paymoney2,sum(paymoney3) as paymoney3 from ' . tablename('ewei_shop_abonus_billp') . ' where billid=:billid and uniacid=:uniacid limit 1', array(':uniacid' => $_W['uniacid'], ':billid' => $id));
		$ret = array('bonusmoney_pay1' => $totalmoney['paymoney1'], 'bonusmoney_pay2' => $totalmoney['paymoney2'], 'bonusmoney_pay3' => $totalmoney['paymoney3']);
		pdo_update('ewei_shop_abonus_bill', $ret, array('id' => $id, 'uniacid' => $_W['uniacid']));
		show_json(1, $ret);
	}
	public function jiesuan() 
	{
		global $_W;
		global $_GPC;
		
		if(is_array($_GPC['ids'])){
           $id = ((is_array($_GPC['ids']) ? $_GPC['ids'] : 0));
		}else{
           $id = array('0'=>intval($_GPC['id']));
		}
		$num=count($id);
		foreach ($id as $k => $v) {
			$data = pdo_fetch('select * from ' . tablename('ewei_shop_order') . ' where id=:id and uniacid=:uniacid limit 1 ', array(':id' => $v, ':uniacid' => $_W['uniacid']));
			if (empty($data)) 
			{   
				if($num==1){
					show_json(0, '订单单未找到!');
				}
				
				continue;
			}
			  if ($data['status'] != 3) 
			{
				if($num==1){
					show_json(0, '该订单尚未完成,不可分红!');
				}
				
				continue;
			}
			if ($data['is_tj'] == 1) 
			{
				if($num==1){
					show_json(0, '该订单已经结算!');
				}
				
				continue;
			}
		     // 查出推广商信息
	        $merch_info = pdo_fetch('select * from ' . tablename('ewei_shop_merch_user').'where id=:merchid and uniacid=:uniacid limit 1' , array(':merchid' => $data['merchid'], ':uniacid' => $_W['uniacid']));

		   if (empty($merch_info)) 
			{
				if($num==1){
					show_json(0, '商户不存在!');
				}
				
				continue;
			}
			 if ($merch_info['status'] != 1) 
			{
				if($num==1){
					show_json(0, '商户已关闭!');
				}
				
				continue;
			}
			 if ($merch_info['tid'] == 0) 
			{   
				if($num==1){
					show_json(0, '此订单不可分红!');
				}
				
				continue;
			}
	        // 查出推广商信息
	        $tj_info = pdo_fetch('select * from '. tablename('ewei_shop_member').'   where id=:id and uniacid=:uniacid limit 1' , array(':id' => $merch_info['tid'], ':uniacid' => $_W['uniacid']));

	        if ($tj_info['istuiguang'] != 1) 
			{
				if($num==1){
					show_json(0, '推广商已经被取消推广资格!');
				}
				
				continue;
			}
	        // 推广返利比例
	        $bonus_proportion =$tj_info['proportion']/100;
			// 修改推广商余额
			if($tj_info['uid']==0){

				$bonus_money=round($data['price']*$bonus_proportion,2);

	            $after_money=$bonus_money+$tj_info['credit2'];

	    		pdo_query('update ' . tablename('ewei_shop_member') . ' set credit2 =:credit2  where id=:id and uniacid=:uniacid', array(':id' => $tj_info['id'], ':uniacid' => $_W['uniacid'],':credit2'=>$after_money));

			}else{

	            $gly_tj_info = pdo_fetch('select * from '. tablename('mc_members').'   where uid=:id and uniacid=:uniacid limit 1' , array(':id' => $tj_info['uid'], ':uniacid' => $_W['uniacid']));

	            $bonus_money=round($data['price']*$bonus_proportion,2);

	            $after_money=$bonus_money+$gly_tj_info['credit2'];

	            pdo_query('update ' . tablename('mc_members') . ' set credit2 =:credit2  where uid=:uid and uniacid=:uniacid', array(':uid' => $tj_info['uid'], ':uniacid' => $_W['uniacid'],':credit2'=>$after_money));

			}
			 // 插入帐变
			$log_info = array('openid' => $tj_info['openid'], 'uniacid' => $_W['uniacid'], 'type' => '8', 'createtime' => TIMESTAMP, 'status' => '1', 'title' => '推广订单分红'.$data['id'], 'money' => $bonus_money,'merchid'=>$data['merchid']);
			$log_infos = array('uid' => $tj_info['uid'], 'uniacid' => $_W['uniacid'], 'credittype' => 'credit2', 'createtime' => TIMESTAMP, 'operator' => '1', 'remark' => '推广订单分红', 'module' => 'ewei_shopv2','num' => $bonus_money);
			pdo_insert('mc_credits_record',$log_infos);
		    pdo_insert('ewei_shop_member_log',$log_info);

	       //修改订单状态
	        pdo_query('update ' . tablename('ewei_shop_order') . ' set is_tj = 1  where id=:id and uniacid=:uniacid', array(':id' => $v, ':uniacid' => $_W['uniacid']));

			plog('qytuiguang.bonus.confirm', '确认订单 ID:' . $data['id'] . ' 单号: ' . $data['ordersn']);
		}
	

		show_json(1,'操作成功!');
	}
}
?>