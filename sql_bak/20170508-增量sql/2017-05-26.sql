

INSERT INTO `qywxshop`.`ims_ewei_shop_plugin` (`id`, `displayorder`, `identity`, `name`, `version`, `author`, `status`, `category`, `thumb`, `desc`, `iscom`, `deprecated`, `isv2`) VALUES ('37', '40', 'qytuiguang', '区域推广', '1.0', '官方', '1', 'biz', '../addons/ewei_shopv2/static/images/tuiguang.jpg', '', '0', '0', '1');

ALTER TABLE `qywxshop`.`ims_ewei_shop_member_log` ADD COLUMN `merchid` int(11) default 0  COMMENT '记录分红奖金来源商家ID' AFTER `senddata`;

ALTER TABLE `qywxshop`.`ims_ewei_shop_order` ADD COLUMN `is_tj` int(1) default 0  COMMENT '区分订单是否已经分红' AFTER `lotterydiscountprice`;

ALTER TABLE `qywxshop`.`ims_ewei_shop_merch_reg` ADD COLUMN `tid` int(1) default 0 COMMENT '记录推广商ID' AFTER `reason`;

ALTER TABLE `qywxshop`.`ims_ewei_shop_merch_user` ADD COLUMN `tid` int(1) default 0 COMMENT '记录推广商ID' AFTER `lng`;

ALTER TABLE `qywxshop`.`ims_ewei_shop_member` ADD COLUMN `istuiguang` int(1) default 0 COMMENT '区分用户是否为推广商' AFTER `datavalue`;

