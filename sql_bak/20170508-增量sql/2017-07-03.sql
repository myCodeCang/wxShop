/* 凌凯短信*/
ALTER TABLE `ims_ewei_shop_sms_set`
ADD COLUMN `link`  tinyint(3) NOT NULL AFTER `uniacid`,
ADD COLUMN `link_url`  varchar(255) NOT NULL AFTER `link`,
ADD COLUMN `link_sn`  varchar(255) NOT NULL AFTER `link_url`,
ADD COLUMN `link_pw`  varchar(255) NOT NULL AFTER `link_sn`;




