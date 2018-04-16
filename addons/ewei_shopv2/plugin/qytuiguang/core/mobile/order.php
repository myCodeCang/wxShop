<?php

/*
 * 人人商城V2
 * 
 * @author ewei 狸小狐 QQ:22185157 
 */
if (!defined('IN_IA')) {
	exit('Access Denied');
}

require EWEI_SHOPV2_PLUGIN . 'qytuiguang/core/page_login_mobile.php';

class Order_EweiShopV2Page extends QytuiguangMobileLoginPage {

	function main() {
		
		global $_W, $_GPC;
		$member = $this->model->getInfo($_W['openid'], array('total', 'ordercount0'));
		$list = pdo_fetchall("SELECT so.ordersn,so.createtime,so.price,so.is_tj,og.total,g.title,g.thumb from " . tablename('ewei_shop_order') . " so"
            . " left join " . tablename('ewei_shop_order_goods') . " og on so.id=og.orderid "
			. " left join " . tablename('ewei_shop_goods') . " g on g.id=og.goodsid "
			. " where so.merchid=:merchid and so.uniacid = :uniacid and og.price > 0 order by so.createtime desc ", array(':uniacid' => $_W['uniacid'], ':merchid' =>$_GPC['merchid']));

		$proportion = pdo_fetch('SELECT sm.proportion FROM ' . tablename('ewei_shop_merch_user')  . " smu left join " . tablename('ewei_shop_member') . " sm on smu.tid=sm.id  WHERE smu.uniacid=:uniacid AND smu.id=:merchid limit 1", array(':uniacid' => $_W['uniacid'],':merchid'=>intval($_GPC['merchid'])));

		
		foreach ($list as $key => $value) {
			$bonus_proportion =$proportion['proportion']/100;
			$order_bouns_info = pdo_fetch('select * from ' . tablename('ewei_shop_member_log') . ' where title=:title and uniacid=:uniacid limit 1', array(':title' =>"推广订单分红".$value['id'], ':uniacid' => $_W['uniacid']));
			if($order_bouns_info){
                 $list[$key]['bouns']=$order_bouns_info['money'];
			}else{
				$list[$key]['bouns']=round($value['price']*$bonus_proportion,2);
			}
			
			
			
		}
		$single_merch_bonus=pdo_fetchcolumn('select sum(money) from' .tablename('ewei_shop_member_log').' where type=8 and merchid=:merchid and uniacid=:uniacid ',array(':merchid'=>$_GPC['merchid'],':uniacid' => $_W['uniacid']));
		include $this->template();
	}

	function get_list() {
		global $_W, $_GPC;
		$openid = $_W['openid'];
		$member = $this->model->getInfo($openid, array('ordercount0'));
		$agentLevel = $this->model->getLevel($openid);
		$level = intval($this->set['level']);
		$status = trim($_GPC['status']);
		$condition = ' and o.status>=0';
		if ($status != '') {
			$condition = ' and o.status=' . intval($status);
		}
		$orders = array();
		$level1 = $member['level1'];
		$level2 = $member['level2'];
		$level3 = $member['level3'];
		$ordercount = $member['ordercount0']; //分销订单数

		if ($level >= 1) {
			//一级下线
			$level1_memberids = pdo_fetchall('select id from ' . tablename('ewei_shop_member') . ' where uniacid=:uniacid and agentid=:agentid', array(':uniacid' => $_W['uniacid'], ':agentid' => $member['id']), 'id');
			$level1_orders = pdo_fetchall('select commission1,o.id,o.createtime,o.price,og.commissions from ' . tablename('ewei_shop_order_goods') . ' og '
					. ' left join  ' . tablename('ewei_shop_order') . ' o on og.orderid=o.id '
					. " where o.uniacid=:uniacid and o.agentid=:agentid {$condition} and og.status1>=0 and og.nocommission=0", array(':uniacid' => $_W['uniacid'], ':agentid' => $member['id']));

			foreach ($level1_orders as $o) {
				if (empty($o['id'])) {
					continue;
				}
				$commissions = iunserializer($o['commissions']);
				$commission = iunserializer($o['commission1']);
				if (empty($commissions)) {
					$commission_ok = isset($commission['level' . $agentLevel['id']]) ? $commission['level' . $agentLevel['id']] : $commission['default'];
				} else {
					$commission_ok = isset($commissions['level1']) ? floatval($commissions['level1']) : 0;
				}
				$hasorder = false;
				foreach ($orders as &$or) {
					if ($or['id'] == $o['id'] && $or['level'] == 1) {
						$or['commission']+=$commission_ok;
						$hasorder = true;
						break;
					}
				}
				unset($or);
				if (!$hasorder) {
					$orders[] = array('id' => $o['id'], 'commission' => $commission_ok, 'createtime' => $o['createtime'], 'level' => 1);
				}
			}
		}
		
	
		if ($orders)
			usort($orders, function($a, $b) {
				if ($a['createtime'] == $b['createtime']) {
					return 0;
				} else {
					return ($a['createtime'] < $b['createtime']) ? 1 : -1;
				}
			});

		$pindex = max(1, intval($_GPC['page']));
		$psize = 20;
		$orders1 = array_slice($orders, ($pindex - 1) * $psize, $psize);
		$orderids = array();
		foreach ($orders1 as $o) {
			$orderids[$o['id']] = $o;
		}
		$list = array();
		if (!empty($orderids)) {

			$list = pdo_fetchall("select id,ordersn,openid,createtime,status from " . tablename('ewei_shop_order') . "  where uniacid ={$_W['uniacid']} and id in ( " . implode(',', array_keys($orderids)) . ") order by id desc");
			foreach ($list as &$row) {

				$row['commission'] = number_format((float)$orderids[$row['id']]['commission'], 2);
				$row['createtime'] = date('Y-m-d H:i', $row['createtime']);
				if ($row['status'] == 0) {
					$row['status'] = '待付款';
				} else if ($row['status'] == 1) {
					$row['status'] = '已付款';
				} else if ($row['status'] == 2) {
					$row['status'] = '待收货';
				} else if ($row['status'] == 3) {
					$row['status'] = '已完成';
				}
				if ($orderids[$row['id']]['level'] == 1) {
					$row['level'] = '一';
				} else if ($orderids[$row['id']]['level'] == 2) {
					$row['level'] = '二';
				} else if ($orderids[$row['id']]['level'] == 3) {
					$row['level'] = '三';
				}
				if (!empty($this->set['openorderdetail'])) {
					$goods = pdo_fetchall("SELECT og.id,og.goodsid,g.thumb,og.price,og.total,g.title,og.optionname,"
							. "og.commission1,og.commission2,og.commission3,og.commissions,"
							. "og.status1,og.status2,og.status3,"
							. "og.content1,og.content2,og.content3 from " . tablename('ewei_shop_order_goods') . " og"
							. " left join " . tablename('ewei_shop_goods') . " g on g.id=og.goodsid  "
							. " where og.orderid=:orderid and og.nocommission=0 and og.uniacid = :uniacid order by og.createtime  desc ", array(':uniacid' => $_W['uniacid'], ':orderid' => $row['id']));
					$goods = set_medias($goods, 'thumb');
					foreach ($goods as &$g) {
						$commissions = iunserializer($g['commissions']);
						if ($orderids[$row['id']]['level'] == 1) {
							$commission = iunserializer($g['commission1']);
							if (empty($commissions)) {
								$g['commission'] = isset($commission['level' . $agentLevel['id']]) ? $commission['level' . $agentLevel['id']] : $commission['default'];
							} else {
								$g['commission'] = isset($commissions['level1']) ? floatval($commissions['level1']) : 0;
							}
						} else if ($orderids[$row['id']]['level'] == 2) {
							$commission = iunserializer($g['commission2']);
							if (empty($commissions)) {
								$g['commission'] = isset($commission['level' . $agentLevel['id']]) ? $commission['level' . $agentLevel['id']] : $commission['default'];
							} else {
								$g['commission'] = isset($commissions['level2']) ? floatval($commissions['level2']) : 0;
							}
						} else if ($orderids[$row['id']]['level'] == 3) {
							$commission = iunserializer($g['commission3']);
							if (empty($commissions)) {
								$g['commission'] = isset($commission['level' . $agentLevel['id']]) ? $commission['level' . $agentLevel['id']] : $commission['default'];
							} else {
								$g['commission'] = isset($commissions['level3']) ? floatval($commissions['level3']) : 0;
							}
						}
						$g['commission'] = number_format($g['commission'], 2);
					}
					unset($g);
					$row['order_goods'] = set_medias($goods, 'thumb');
				} if (!empty($this->set['openorderbuyer'])) {
					$row['buyer'] = m('member')->getMember($row['openid']);
				}
			}

			unset($row);
		}
		show_json(1, array(
			'list' => $list,
			'pagesize' => $psize,
			'total' => $ordercount
		));
	}

}
