<?php
if (!(defined('IN_IA'))) 
{
	exit('Access Denied');
}
class Package_EweiShopV2Page extends MobilePage 
{
	public function main() 
	{
		global $_W;
		global $_GPC;
		$openid = $_W['openid'];
		$uniacid = $_W['uniacid'];
		$goodsid = intval($_GPC['goodsid']);
		$packages_goods = array();
		$packages = array();
		$goodsid_array = array();
		if ($goodsid) 
		{
			$packages_goods = pdo_fetchall('SELECT id,pid FROM ' . tablename('ewei_shop_package_goods') . "\n" . '                    WHERE uniacid = ' . $uniacid . ' and goodsid = ' . $goodsid . ' group by pid  ORDER BY id DESC');
			foreach ($packages_goods as $key => $value ) 
			{
				$packages[$key] = pdo_fetch('SELECT id,title,thumb,price,goodsid FROM ' . tablename('ewei_shop_package') . "\n" . '                    WHERE uniacid = ' . $uniacid . ' and id = ' . $value['pid'] . ' and starttime <= ' . time() . ' and endtime >= ' . time() . ' and deleted = 0 and status = 1  ORDER BY id DESC');
			}
			$packages = array_values(array_filter($packages));
		}
		else 
		{
			$packages = pdo_fetchall('SELECT id,title,thumb,price,goodsid FROM ' . tablename('ewei_shop_package') . "\n" . '                    WHERE uniacid = ' . $uniacid . ' and starttime <= ' . time() . ' and endtime >= ' . time() . ' and deleted = 0 and status = 1 ORDER BY id DESC');
		}
		if (empty($packages)) 
		{
			$this->message('套餐不存在或已删除!', mobileUrl(), 'error');
		}
		foreach ($packages as $key => $value ) 
		{
			$goods = explode(',', $value['goodsid']);
			foreach ($goods as $k => $val ) 
			{
				$g = pdo_fetch('SELECT id,marketprice FROM ' . tablename('ewei_shop_goods') . "\n" . '                    WHERE uniacid = ' . $uniacid . ' and id = ' . $val . '  ORDER BY id DESC');
				$goods['goodsprice'] += $g['marketprice'];
			}
			$packages[$key]['goodsprice'] = $goods['goodsprice'];
		}
		$packages = set_medias($packages, array('thumb'));
		include $this->template();
	}
	public function detail() 
	{
		global $_W;
		global $_GPC;
		$uniacid = $_W['uniacid'];
		$pid = intval($_GPC['pid']);
		$package = pdo_fetch('SELECT id,title,price,freight,share_title,share_icon,share_desc FROM ' . tablename('ewei_shop_package') . "\n" . '                    WHERE uniacid = ' . $uniacid . ' and id = ' . $pid . ' ');
		$packgoods = array();
		$packgoods = pdo_fetchall('SELECT id,title,thumb,marketprice,packageprice,`option`,goodsid FROM ' . tablename('ewei_shop_package_goods') . "\n" . '                    WHERE uniacid = ' . $uniacid . ' and pid = ' . $pid . '  ORDER BY id DESC');
		$packgoods = set_medias($packgoods, array('thumb'));
		$option = array();
		foreach ($packgoods as $key => $value ) 
		{
			$option_array = array();
			$option_array = explode(',', $value['option']);
			if (0 < $option_array[0]) 
			{
				$pgo = pdo_fetch('SELECT id,title,packageprice FROM ' . tablename('ewei_shop_package_goods_option') . "\n" . '                    WHERE uniacid = ' . $uniacid . ' and pid = ' . $pid . ' and goodsid = ' . $value['goodsid'] . ' and optionid = ' . $option_array[0] . ' ');
				$packgoods[$key]['packageprice'] = $pgo['packageprice'];
			}
		}
		$_W['shopshare'] = array('title' => (!(empty($package['share_title'])) ? $package['share_title'] : $package['title']), 'imgUrl' => (!(empty($package['share_icon'])) ? tomedia($package['share_icon']) : tomedia($package['thumb'])), 'desc' => (!(empty($package['share_desc'])) ? $package['share_desc'] : $_W['shopset']['shop']['name']), 'link' => mobileUrl('goods/package/detail', array('pid' => $package['id']), true));
		include $this->template('goods/packdetail');
	}
	public function option() 
	{
		global $_W;
		global $_GPC;
		$openid = $_W['openid'];
		$uniacid = intval($_W['uniacid']);
		$pid = intval($_GPC['pid']);
		$goodsid = intval($_GPC['goodsid']);

		$optionid = array();
		$option = array();
		$option = pdo_fetchall('select optionid,title,goodsid,packageprice from ' . tablename('ewei_shop_package_goods_option') . ' where pid = ' . $pid . ' and goodsid = ' . $goodsid . ' and uniacid = ' . $uniacid . ' ');
		foreach ($option as $k=>$v){
		  $v=join(',',$v); //降维,也可以用implode,将一维数组转换为用逗号连接的字符串
		  $temp[$k]=$v;
		 }
		 $temp=array_unique($temp); //去掉重复的字符串,也就是重复的一维数组 
		 foreach ($temp as $k => $v){
		  $array=explode(',',$v); //再将拆开的数组重新组装
		  //下面的索引根据自己的情况进行修改即可
		  $temp2[$k]['optionid'] =$array[0];
		  $temp2[$k]['title'] =$array[1];
		  $temp2[$k]['goodsid'] =$array[2];
		  $temp2[$k]['packageprice'] =$array[3];
		 }
		show_json(1, $temp2);
	}
	
    }
?>