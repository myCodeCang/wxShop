<?php
//加密方式：Ioncube 7.X/8.X/9.X加密，代码还原率98+%以上。
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (VIP会员功能）在线逆向还原，QQ：7530782 
?>
<?php
if (!defined('IN_IA')) 
{
	exit('Access Denied');
}
class Printset_EweiShopV2Page extends PluginWebPage 
{
	public function main() 
	{
		global $_W;
		global $_GPC;
		$sys = pdo_fetch('select * from ' . tablename('ewei_shop_exhelper_sys') . ' where uniacid=:uniacid and merchid=0 limit 1 ', array(':uniacid' => $_W['uniacid']));
		if ($_W['ispost']) 
		{
			ca('exhelper.printset');
			$port = intval($_GPC['port']);
			$ip = 'localhost';
			if (!empty($port)) 
			{
				if (empty($sys)) 
				{
					pdo_insert('ewei_shop_exhelper_sys', array('port' => $port, 'ip' => $ip, 'uniacid' => $_W['uniacid'], 'merchid' => 0));
				}
				else 
				{
					pdo_update('ewei_shop_exhelper_sys', array('port' => $port, 'ip' => $ip), array('uniacid' => $_W['uniacid'], 'merchid' => 0));
				}
				plog('exhelper.printset.edit', '修改打印机端口 原端口: ' . $sys['port'] . ' 新端口: ' . $port);
				show_json(1);
			}
		}
		include $this->template();
	}
}
?>