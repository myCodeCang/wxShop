<?php

if (!defined('IN_IA')) {
	exit('Access Denied');
}

class BackupNew_EweiShopV2Page extends SystemPage
{
	protected $oldAndNewCategory=array();

	protected function table2sql($table,$sourceUniacid,$targetUniacid,$http_host)
	{
	   global $db;
	   $tabledump ='delete from  ' . $table . ' where uniacid=' . $targetUniacid.' ;  ';
	   $condition1='';
       if($table=="ims_ewei_shop_goods"){
            $condition1.=" and merchid = 0";
		}
		if(strstr($table,'diypage')){
            $condition1.=" and merch = 0";
		}
		$rows = pdo_fetchall('SELECT * FROM ' . $table.' where uniacid=:uniacid'.$condition1,array(':uniacid'=>$sourceUniacid));
       
		if($table=="ims_ewei_shop_category"){
            $maxId = pdo_fetchcolumn('SELECT max(id) FROM ' . $table.' limit 1');
			$rows=$this->edit_category_parent($rows,$maxId);
		}
		foreach ($rows as $row ) {
			$comma = '';
			if($table!="ims_ewei_shop_category"){
				$row['id']='';
			}
			if($table=="ims_ewei_shop_goods"){
				foreach ($this->oldAndNewCategory as $ck => $cv) {
					if($row['cates']){
						if(strstr($row['cates'],$cv['oldid'])){
							$row['cates']=str_replace($cv['oldid'],$cv['id'],$row['cates']);
						}
					}
					if($row['ccates']){
						if(strstr($row['ccates'],$cv['oldid'])){
							$row['ccates']=str_replace($cv['oldid'],$cv['id'],$row['ccates']);
						}
					}
					if($row['pcate']){
						if($row['pcate']==$cv['oldid']){
                           $row['pcate']=$cv['id'];
						}
					}
					if($row['pcate']){
						if($row['ccate']==$cv['oldid']){
							  $row['ccate']=$cv['id'];
						}
				    }
				}
			}
			$tabledump .= 'INSERT INTO ' . $table . ' VALUES(';
            $row['uniacid']=$targetUniacid;
			foreach ($row as $k => $v ) {
				$tabledump .= $comma . '\'' . addslashes($v) . '\'';
				$comma = ',';
			}
			$tabledump .= ');' . "\r\n";
		}
           if($http_host!=$_SERVER['HTTP_HOST']){

				while(strpos($tabledump,$_SERVER['HTTP_HOST'])){

				    $tabledump=str_replace($_SERVER['HTTP_HOST'],$http_host,$tabledump);

				    }

				}

			return $tabledump;

	}

	public function main()
	{
		global $_W;
		global $_GPC;
		$wechats = m('common')->getWechats();
		if ($_W['ispost']) {
			$sourceUniacid=trim($_GPC['uniacid']);
			$targetUniacid=trim($_GPC['targetUniacid']);
			$http_host=trim($_GPC['http_host']);
			if(empty($sourceUniacid)){
                show_json(0, '请选择源公众号!');
			}
			if(empty($targetUniacid)){
				
				show_json(0, '请输入目标公众号ID!');
			}
			$tables=array('0' => array('Tables_in_qywxshop (%ewei_shop_%)'=>'ims_ewei_shop_category'),//商城的商品分类
			              '1' => array('Tables_in_qywxshop (%ewei_shop_%)'=>'ims_ewei_shop_sysset'),//商城的基础设置
				          '2' => array('Tables_in_qywxshop (%ewei_shop_%)'=>'ims_ewei_shop_goods'),//商城的商品
				          '3' => array('Tables_in_qywxshop (%ewei_shop_%)'=>'ims_ewei_shop_goods_comment'),
				          '4' => array('Tables_in_qywxshop (%ewei_shop_%)'=>'ims_ewei_shop_goods_group'),
				          '5' => array('Tables_in_qywxshop (%ewei_shop_%)'=>'ims_ewei_shop_goods_label'),
				          '6' => array('Tables_in_qywxshop (%ewei_shop_%)'=>'ims_ewei_shop_goods_labelstyle'),
				          '7' => array('Tables_in_qywxshop (%ewei_shop_%)'=>'ims_ewei_shop_goods_option'),
				          '8' => array('Tables_in_qywxshop (%ewei_shop_%)'=>'ims_ewei_shop_goods_param'),
				          '9' => array('Tables_in_qywxshop (%ewei_shop_%)'=>'ims_ewei_shop_goods_spec'),
				          '10' => array('Tables_in_qywxshop (%ewei_shop_%)'=>'ims_ewei_shop_goods_spec_item'),
				          '11' => array('Tables_in_qywxshop (%ewei_shop_%)'=>'ims_ewei_shop_diypage'),//商城的装修模板
				          '12' => array('Tables_in_qywxshop (%ewei_shop_%)'=>'ims_ewei_shop_diypage_menu'),
				          '13' => array('Tables_in_qywxshop (%ewei_shop_%)'=>'ims_ewei_shop_diypage_template'),
				          '14' => array('Tables_in_qywxshop (%ewei_shop_%)'=>'ims_ewei_shop_diypage_template_category')
				          );
			foreach ($tables as $k => $t ) {
				$table = array_values($t);
				$tablename = $table[0];
				$sqls .= $this->table2sql($tablename,$sourceUniacid,$targetUniacid,$http_host) . "\r\n\r\n";
			}
			$filename = 'ewei_shop_data_' . date('Y_m_d_H_i_s') . '.sql';
			header('Pragma: public');
			header('Last-Modified: ' . gmdate('D, d M Y H:i:s') . ' GMT');
			header('Cache-Control: no-store, no-cache, must-revalidate');
			header('Cache-Control: pre-check=0, post-check=0, max-age=0');
			header('Content-Encoding: UTF8');
			header('Content-type: application/force-download');
			header('Content-Disposition: attachment; filename="' . $filename . '"');
			m('cache')->set('systembackuptime', date('Y-m-d H:i:s'), 'global');
			exit($sqls);
		}
		include $this->template('system/data/backupNew');
	}



	function edit_category_parent($rows='',$maxId=''){
	  $oldAndNewCategory=array();
      $num=count($rows);
      for ($i=0; $i < $num; $i++) { 
      	$oldAndNewCategory[$i]['id']=$maxId+100+$i;
      }
      foreach ($rows as $key => $value) {
        $oldAndNewCategory[$key]['oldid']=$value['id'];
        $oldAndNewCategory[$key]['oldparentid']=$value['parentid'];  
        $rows[$key]['id']=$oldAndNewCategory[$key]['id'];
      }

      foreach ($rows as $key => $value) {
	      	for ($i=0; $i <$num ; $i++) { 
	      		if($value['parentid']== $oldAndNewCategory[$i]['oldid'] && $value['parentid']!='0'){
                   $rows[$key]['parentid']=$oldAndNewCategory[$i]['id'];
	        	}
	      	}
        } 
      $this->oldAndNewCategory=$oldAndNewCategory;
      return  $rows;
	}

}


?>