<?php
//加密方式：Ioncube 7.X/8.X/9.X加密，代码还原率98+%以上。
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (VIP会员功能）在线逆向还原，QQ：7530782 
?>
<?php
if (!defined('IN_IA')) 
{
	exit('Access Denied');
}
class Report_EweiShopV2Page extends PluginMobileLoginPage 
{
	public function main() 
	{
		global $_W;
		global $_GPC;
		$aid = intval($_GPC['aid']);
		include $this->template();
	}
	public function post() 
	{
		global $_W;
		global $_GPC;
		$aid = intval($_GPC['aid']);
		$cate = trim($_GPC['cate']);
		$content = trim($_GPC['content']);
		$mid = m('member')->getMid();
		$openid = $_W['openid'];
		if (!empty($aid) && !empty($cate) && !empty($content) && !empty($aid) && !empty($openid)) 
		{
			$insert = array('mid' => $mid, 'openid' => $openid, 'aid' => $aid, 'cate' => $cate, 'cons' => $content, 'uniacid' => $_W['uniacid']);
			pdo_insert('ewei_shop_article_report', $insert);
			show_json(1);
		}
		show_json(0);
	}
}
?>