<?php
if (!defined('IN_IA')) 
{
	exit('Access Denied');
}
class Index_EweiShopV2Page extends PluginWebPage 
{
	public function main() 
	{
		global $_W;
		if (cv('qytuiguang.agent')) 
		{
			header('location: ' . webUrl('qytuiguang/agent'));
			exit();
			return;
		}
		if (cv('qytuiguang.level')) 
		{
			header('location: ' . webUrl('qytuiguang/level'));
			exit();
			return;
		}
		if (cv('qytuiguang.bonus')) 
		{
			header('location: ' . webUrl('qytuiguang/bonus'));
			exit();
			return;
		}
		if (cv('qytuiguang.bonus.send')) 
		{
			header('location: ' . webUrl('qytuiguang/bonus/send'));
			exit();
			return;
		}
		if (cv('qytuiguang.notice')) 
		{
			header('location: ' . webUrl('qytuiguang/notice'));
			exit();
			return;
		}
		if (cv('qytuiguang.set')) 
		{
			header('location: ' . webUrl('qytuiguang/set'));
			exit();
		}
	}
	public function notice() 
	{
		global $_W;
		global $_GPC;
		if ($_W['ispost']) 
		{
			$data = ((is_array($_GPC['data']) ? $_GPC['data'] : array()));
			m('common')->updatePluginset(array( 'qytuiguang' => array('tm' => $data) ));
			plog('qytuiguang.notice.edit', '修改通知设置');
			show_json(1);
		}
		$data = m('common')->getPluginset('qytuiguang');
		$template_list = pdo_fetchall('SELECT id,title FROM ' . tablename('ewei_shop_member_message_template') . ' WHERE uniacid=:uniacid ', array(':uniacid' => $_W['uniacid']));
		include $this->template();
	}
	public function set() 
	{
		global $_W;
		global $_GPC;
		if ($_W['ispost']) 
		{
			$data = ((is_array($_GPC['data']) ? $_GPC['data'] : array()));
			if (!empty($data['withdrawcharge'])) 
			{
				$data['withdrawcharge'] = trim($data['withdrawcharge']);
				$data['withdrawcharge'] = floatval(trim($data['withdrawcharge'], '%'));
			}
			$data['withdrawbegin'] = floatval(trim($data['withdrawbegin']));
			$data['withdrawend'] = floatval(trim($data['withdrawend']));
			$data['register_bottom_content'] = m('common')->html_images($data['register_bottom_content']);
			$data['applycontent'] = m('common')->html_images($data['applycontent']);
			$data['regbg'] = save_media($data['regbg']);
			$data['become_goodsid'] = intval($_GPC['become_goodsid']);
			$data['texts'] = ((is_array($_GPC['texts']) ? $_GPC['texts'] : array()));
			m('common')->updatePluginset(array('qytuiguang' => $data));
			m('cache')->set('template_' . $this->pluginname, $data['style']);
			$selfbuy = (($data['selfbuy'] ? '开启' : '关闭'));
			switch ($data['become']) 
			{
				case '0': case '1': $become = '申请';
				break;
				case '2': $become = '消费次数';
				break;
				case '3': $become = '消费金额';
				break;
				case '4': $become = '购买商品';
				break;
			}
			plog('qytuiguang.set.edit', '修改基本设置<br>' . '内购分红 -- ' . $selfbuy . ' <br>成为分销商条件 -- ' . $become);
			show_json(1, array('url' => webUrl('qytuiguang/set', array('tab' => str_replace('#tab_', '', $_GPC['tab'])))));
		}
		$styles = array();
		$dir = IA_ROOT . '/addons/ewei_shopv2/plugin/' . $this->pluginname . '/template/mobile/';
		if ($handle = opendir($dir)) 
		{
			while (($file = readdir($handle)) !== false) 
			{
				if (($file != '..') && ($file != '.')) 
				{
					if (is_dir($dir . '/' . $file)) 
					{
						$styles[] = $file;
					}
				}
			}
			closedir($handle);
		}
		$data = m('common')->getPluginset('qytuiguang');
		include $this->template();
	}
}
?>