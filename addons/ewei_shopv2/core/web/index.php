<?php
if (!(defined('IN_IA'))) 
{
	exit('Access Denied');
}
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Headers:HTTP_USER_AGENT');
class Index_EweiShopV2Page extends WebPage 
{
	public function main() 
	{
		header('location:' . webUrl('shop'));
		exit();
	}
}
?>