/*
Navicat MySQL Data Transfer

Source Server         : 本地mysql
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : qywxshop

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-05-08 15:25:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ims_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_account`;
CREATE TABLE `ims_account` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account
-- ----------------------------
INSERT INTO `ims_account` VALUES ('1', '1', 'uRr8qvQV', '1', '0', '1');
INSERT INTO `ims_account` VALUES ('2', '2', 'p4lXvi45', '1', '0', '1');
INSERT INTO `ims_account` VALUES ('3', '3', 's8bgbgIl', '1', '1', '0');
INSERT INTO `ims_account` VALUES ('4', '4', 'P5A45LAA', '1', '0', '1');
INSERT INTO `ims_account` VALUES ('5', '5', 'u8b8azCa', '1', '1', '1');

-- ----------------------------
-- Table structure for ims_account_wechats
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_wechats`;
CREATE TABLE `ims_account_wechats` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `access_token` varchar(1000) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `subscribeurl` varchar(120) NOT NULL,
  `auth_refresh_token` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_wechats
-- ----------------------------
INSERT INTO `ims_account_wechats` VALUES ('1', '1', 'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP', '', '2oJKK0Bw9Veg4CGznYBYNjUqkefINMdQYOn5iuuH1wW', '4', '微擎团队', '', '', '', '', '', '', 'wyx001', '4297f44b13955235245b2497399d7a93', '0', 'wx7abe4d41f0e9a927', '8e434b648720588d40fd1b2db3b26eb7', '1', '', '');
INSERT INTO `ims_account_wechats` VALUES ('2', '2', 'Y5GKu85gGu5l8Uc0zWwgUggbgg8GZKcA', '', 'Bw3aPwWkcCkPC0ukUuk353AgkkZG8APuDUn5pL5XBXk', '1', 'wxiang_号内测试', '123123', '123123', '', '', '', '', '', '', '0', '123', '123123', '0', '', '');
INSERT INTO `ims_account_wechats` VALUES ('3', '3', 'IKurQZzBgt8GwHQd2b3GBrlDkBiZdq82', '', 'qtmu6U2r3RNzt2WKhUMLbhbUB83mz82M8Ibtm8gGt2i', '4', 'wyxiang测试号', '123', '123', '', '', '', '', '', '', '0', 'wx7abe4d41f0e9a927', '8e434b648720588d40fd1b2db3b26eb7', '0', '', '');
INSERT INTO `ims_account_wechats` VALUES ('4', '4', 'O5p9DpW9idq2iD435AAd0p9QpwJDZ4D5', '', 'mBC5Z0Bqj8u84PbBCnd034DQ9ci2cKkn43BW2455iD9', '4', 'wyxiang2测试号', '123', '123', '', '', '', '', '', '', '0', 'wx6c1014c70a1a339a', 'ac6db2d3beeef77da95aa8ee73267e21', '0', '', '');
INSERT INTO `ims_account_wechats` VALUES ('5', '5', 'xqQqRgf6CaWWa2dCZ62KJlG9LjdCggWW', '', 'p9F8DqJDCjCrfl8FZcv99FBAcf9JdBaac6G6CbFD86J', '4', 'wyxinag2', '', '123', '', '', '', '', '', '', '0', 'wx6c1014c70a1a339a', 'ac6db2d3beeef77da95aa8ee73267e21', '0', '', '');

-- ----------------------------
-- Table structure for ims_activity_clerks
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_clerks`;
CREATE TABLE `ims_activity_clerks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `password` (`password`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_clerks
-- ----------------------------

-- ----------------------------
-- Table structure for ims_activity_clerk_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_clerk_menu`;
CREATE TABLE `ims_activity_clerk_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `displayorder` int(4) NOT NULL,
  `pid` int(6) NOT NULL,
  `group_name` varchar(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `url` varchar(60) NOT NULL,
  `type` varchar(20) NOT NULL,
  `permission` varchar(50) NOT NULL,
  `system` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_clerk_menu
-- ----------------------------
INSERT INTO `ims_activity_clerk_menu` VALUES ('1', '0', '0', '0', 'mc', '快捷交易', '', '', '', 'mc_manage', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('2', '0', '0', '1', '', '积分充值', 'fa fa-money', 'credit1', 'modal', 'mc_credit1', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('3', '0', '0', '1', '', '余额充值', 'fa fa-cny', 'credit2', 'modal', 'mc_credit2', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('4', '0', '0', '1', '', '消费', 'fa fa-usd', 'consume', 'modal', 'mc_consume', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('5', '0', '0', '1', '', '发放会员卡', 'fa fa-credit-card', 'card', 'modal', 'mc_card', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('6', '0', '0', '0', 'stat', '数据统计', '', '', '', 'stat_manage', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('7', '0', '0', '6', '', '积分统计', 'fa fa-bar-chart', './index.php?c=stat&a=credit1', 'url', 'stat_credit1', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('8', '0', '0', '6', '', '余额统计', 'fa fa-bar-chart', './index.php?c=stat&a=credit2', 'url', 'stat_credit2', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('9', '0', '0', '6', '', '现金消费统计', 'fa fa-bar-chart', './index.php?c=stat&a=cash', 'url', 'stat_cash', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('10', '0', '0', '6', '', '会员卡统计', 'fa fa-bar-chart', './index.php?c=stat&a=card', 'url', 'stat_card', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('11', '0', '0', '0', 'activity', '系统优惠券核销', '', '', '', 'activity_card_manage', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('12', '0', '0', '11', '', '折扣券核销', 'fa fa-money', './index.php?c=activity&a=consume&do=display&type=1', 'url', 'activity_consume_coupon', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('13', '0', '0', '11', '', '代金券核销', 'fa fa-money', './index.php?c=activity&a=consume&do=display&type=2', 'url', 'activity_consume_token', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('14', '0', '0', '0', 'wechat', '微信卡券核销', '', '', '', 'wechat_card_manage', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('15', '0', '0', '14', '', '卡券核销', 'fa fa-money', './index.php?c=wechat&a=consume', 'url', 'wechat_consume', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('16', '0', '0', '6', '', '收银台收款统计', 'fa fa-bar-chart', './index.php?c=stat&a=paycenter', 'url', 'stat_paycenter', '1');

-- ----------------------------
-- Table structure for ims_activity_coupon_allocation
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_coupon_allocation`;
CREATE TABLE `ims_activity_coupon_allocation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`couponid`,`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_coupon_allocation
-- ----------------------------

-- ----------------------------
-- Table structure for ims_activity_coupon_modules
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_coupon_modules`;
CREATE TABLE `ims_activity_coupon_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `couponid` (`couponid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_coupon_modules
-- ----------------------------

-- ----------------------------
-- Table structure for ims_activity_exchange
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_exchange`;
CREATE TABLE `ims_activity_exchange` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `extra` varchar(3000) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `pretotal` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `extra` (`extra`(333))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_exchange
-- ----------------------------

-- ----------------------------
-- Table structure for ims_activity_exchange_trades
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_exchange_trades`;
CREATE TABLE `ims_activity_exchange_trades` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `uniacid` (`uniacid`,`uid`,`exid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_exchange_trades
-- ----------------------------

-- ----------------------------
-- Table structure for ims_activity_exchange_trades_shipping
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_exchange_trades_shipping`;
CREATE TABLE `ims_activity_exchange_trades_shipping` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `province` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_exchange_trades_shipping
-- ----------------------------

-- ----------------------------
-- Table structure for ims_activity_modules
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_modules`;
CREATE TABLE `ims_activity_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `available` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `uniacid` (`uniacid`),
  KEY `module` (`module`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_modules
-- ----------------------------

-- ----------------------------
-- Table structure for ims_activity_modules_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_modules_record`;
CREATE TABLE `ims_activity_modules_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `num` tinyint(3) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_modules_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_activity_stores
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_stores`;
CREATE TABLE `ims_activity_stores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `source` tinyint(3) unsigned NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `location_id` (`location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_stores
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_category`;
CREATE TABLE `ims_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_news`;
CREATE TABLE `ims_article_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_news
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_notice`;
CREATE TABLE `ims_article_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_notice
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_unread_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_unread_notice`;
CREATE TABLE `ims_article_unread_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `notice_id` (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_unread_notice
-- ----------------------------

-- ----------------------------
-- Table structure for ims_basic_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_basic_reply`;
CREATE TABLE `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_basic_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_business
-- ----------------------------
DROP TABLE IF EXISTS `ims_business`;
CREATE TABLE `ims_business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lng` varchar(10) NOT NULL,
  `lat` varchar(10) NOT NULL,
  `industry1` varchar(10) NOT NULL,
  `industry2` varchar(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lat_lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_business
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_attachment
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_attachment`;
CREATE TABLE `ims_core_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_attachment
-- ----------------------------
INSERT INTO `ims_core_attachment` VALUES ('1', '3', '2', '5907fe62Nbcedda9c.jpg', 'images/3/2017/05/au0f3O72102v015S0qSFoQ7ZfZ37QU.jpg', '1', '1493784808');
INSERT INTO `ims_core_attachment` VALUES ('2', '3', '2', '588875c4Nfa0205dc.jpg', 'images/3/2017/05/fzffc7IC7ZVp0PJjECFVH0PzCqFVHC.jpg', '1', '1493791501');
INSERT INTO `ims_core_attachment` VALUES ('3', '3', '2', '58d10528N92740df3.jpg', 'images/3/2017/05/uwa55HcZN17VcecC7hh7WHV9fw1nyo.jpg', '1', '1493791537');
INSERT INTO `ims_core_attachment` VALUES ('4', '3', '2', '58d10528N92740df3.jpg', 'images/3/2017/05/fNmH3xjam3zN0GVOag9H5UHH3J0uhg.jpg', '1', '1493791744');
INSERT INTO `ims_core_attachment` VALUES ('5', '3', '2', '58e48f08Nce8f5e47.jpg', 'images/3/2017/05/l6lxWI860fvVlC4i4f3FxIqV80FGZW.jpg', '1', '1493791814');
INSERT INTO `ims_core_attachment` VALUES ('6', '3', '2', '58aa87bfNe208277b.jpg', 'images/3/2017/05/w3et7ELwv7wzeeElVCtwLaclED07av.jpg', '1', '1493791878');
INSERT INTO `ims_core_attachment` VALUES ('7', '3', '2', '58aa878dN52f8ca26.jpg', 'images/3/2017/05/VFV04k0KewOF60ex4w6pemx0Kp60Kw.jpg', '1', '1493791955');
INSERT INTO `ims_core_attachment` VALUES ('8', '3', '2', '58f0c78bN330e0daf.jpg', 'images/3/2017/05/SEU2VgZ11jTUTf2GvE9uVsesJeAe9U.jpg', '1', '1493793813');
INSERT INTO `ims_core_attachment` VALUES ('9', '3', '2', '5902fb15N0a04fd7d.jpg', 'images/3/2017/05/R6fmSm69xSfBF1SFhBvHqJFF6DafxX.jpg', '1', '1493793830');
INSERT INTO `ims_core_attachment` VALUES ('10', '3', '2', '590874beN5d863e50.jpg!q70.jpg', 'images/3/2017/05/Ii1gwZg40TVC12S4cVkj0S0TIiiy2a.jpg', '1', '1493793842');
INSERT INTO `ims_core_attachment` VALUES ('11', '3', '2', '543c8f8aN9eab4fa0.jpg', 'images/3/2017/05/cs11J9G3D3sFZZBFG35Og57bSIu9To.jpg', '1', '1493793873');
INSERT INTO `ims_core_attachment` VALUES ('12', '3', '2', '57fdae81Ne7ddbab9.png', 'images/3/2017/05/kU0NdFaN2dfBSATZMQuUcSM0FZT0Sb.png', '1', '1493793989');
INSERT INTO `ims_core_attachment` VALUES ('13', '3', '2', '57d53f16Nf3431cbd.png', 'images/3/2017/05/F7C57f7vETSe4F7Q77s7sV19cmeY57.png', '1', '1493794003');
INSERT INTO `ims_core_attachment` VALUES ('14', '3', '2', '57d5407cN0d6adf20.png', 'images/3/2017/05/e8Fmm0K7Kfmk7bV09v8q8G8VQ8B78S.png', '1', '1493794021');
INSERT INTO `ims_core_attachment` VALUES ('15', '3', '2', '57d54122N700d9c1b.png', 'images/3/2017/05/Igq3YboGqQGUj3YGzZG3GQGgoZ7PBz.png', '1', '1493794037');
INSERT INTO `ims_core_attachment` VALUES ('16', '3', '2', '57aacab9N98edf989.png', 'images/3/2017/05/EUZr7trZuji4nA3hI74334D7ReH347.png', '1', '1493794054');
INSERT INTO `ims_core_attachment` VALUES ('17', '3', '2', '59087e52N6c72d3d1.jpg!q70.jpg', 'images/3/2017/05/dd9pTQfoATNDa97d93va9dF1azAHhj.jpg', '1', '1493794136');
INSERT INTO `ims_core_attachment` VALUES ('18', '3', '2', '590a9433N9b554ab8.jpg', 'images/3/2017/05/P5PGjw7kSKfzxg0552G3gfX22OpG33.jpg', '1', '1494135820');
INSERT INTO `ims_core_attachment` VALUES ('19', '3', '2', 'QQ截图20170507135546.png', 'images/3/2017/05/ha2azdPb6zyh6iJ1X66533hH727pZq.png', '1', '1494136566');

-- ----------------------------
-- Table structure for ims_core_cache
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cache`;
CREATE TABLE `ims_core_cache` (
  `key` varchar(50) NOT NULL,
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_cache
-- ----------------------------
INSERT INTO `ims_core_cache` VALUES ('setting', 'a:6:{s:9:\"copyright\";a:24:{s:6:\"status\";s:1:\"0\";s:10:\"verifycode\";s:1:\"1\";s:6:\"reason\";s:0:\"\";s:8:\"sitename\";s:9:\"玩淘宝\";s:3:\"url\";s:7:\"http://\";s:8:\"statcode\";s:0:\"\";s:10:\"footerleft\";s:0:\"\";s:11:\"footerright\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:5:\"flogo\";s:0:\"\";s:6:\"slides\";s:216:\"a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}\";s:6:\"notice\";s:0:\"\";s:5:\"blogo\";s:0:\"\";s:8:\"baidumap\";a:2:{s:3:\"lng\";s:0:\"\";s:3:\"lat\";s:0:\"\";}s:7:\"company\";s:0:\"\";s:14:\"companyprofile\";s:0:\"\";s:7:\"address\";s:0:\"\";s:6:\"person\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:2:\"qq\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"showhomepage\";i:0;}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:0;s:6:\"verify\";i:1;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}s:18:\"module_receive_ban\";a:1:{s:11:\"ewei_shopv2\";s:11:\"ewei_shopv2\";}s:8:\"platform\";a:5:{s:5:\"token\";s:32:\"JhvqlJ48luaxa9eA9aZZfeAemd8Quzhj\";s:14:\"encodingaeskey\";s:43:\"e4ZLlJ4dH88uu4EVlevXMhDmZJ44mJDlCf4ujd981D4\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}}');
INSERT INTO `ims_core_cache` VALUES ('system_frame', 'a:5:{s:8:\"platform\";a:3:{i:0;a:2:{s:5:\"title\";s:12:\"基本功能\";s:5:\"items\";a:9:{i:0;a:5:{s:2:\"id\";s:1:\"3\";s:5:\"title\";s:12:\"文字回复\";s:3:\"url\";s:38:\"./index.php?c=platform&a=reply&m=basic\";s:15:\"permission_name\";s:20:\"platform_reply_basic\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:46:\"./index.php?c=platform&a=reply&do=post&m=basic\";}}i:1;a:5:{s:2:\"id\";s:1:\"4\";s:5:\"title\";s:12:\"图文回复\";s:3:\"url\";s:37:\"./index.php?c=platform&a=reply&m=news\";s:15:\"permission_name\";s:19:\"platform_reply_news\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:45:\"./index.php?c=platform&a=reply&do=post&m=news\";}}i:2;a:5:{s:2:\"id\";s:1:\"5\";s:5:\"title\";s:12:\"音乐回复\";s:3:\"url\";s:38:\"./index.php?c=platform&a=reply&m=music\";s:15:\"permission_name\";s:20:\"platform_reply_music\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:46:\"./index.php?c=platform&a=reply&do=post&m=music\";}}i:3;a:5:{s:2:\"id\";s:1:\"6\";s:5:\"title\";s:12:\"图片回复\";s:3:\"url\";s:39:\"./index.php?c=platform&a=reply&m=images\";s:15:\"permission_name\";s:21:\"platform_reply_images\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:47:\"./index.php?c=platform&a=reply&do=post&m=images\";}}i:4;a:5:{s:2:\"id\";s:1:\"7\";s:5:\"title\";s:12:\"语音回复\";s:3:\"url\";s:38:\"./index.php?c=platform&a=reply&m=voice\";s:15:\"permission_name\";s:20:\"platform_reply_voice\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:46:\"./index.php?c=platform&a=reply&do=post&m=voice\";}}i:5;a:5:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:12:\"视频回复\";s:3:\"url\";s:38:\"./index.php?c=platform&a=reply&m=video\";s:15:\"permission_name\";s:20:\"platform_reply_video\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:46:\"./index.php?c=platform&a=reply&do=post&m=video\";}}i:6;a:5:{s:2:\"id\";s:1:\"9\";s:5:\"title\";s:18:\"微信卡券回复\";s:3:\"url\";s:39:\"./index.php?c=platform&a=reply&m=wxcard\";s:15:\"permission_name\";s:21:\"platform_reply_wxcard\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:47:\"./index.php?c=platform&a=reply&do=post&m=wxcard\";}}i:7;a:5:{s:2:\"id\";s:2:\"10\";s:5:\"title\";s:21:\"自定义接口回复\";s:3:\"url\";s:40:\"./index.php?c=platform&a=reply&m=userapi\";s:15:\"permission_name\";s:22:\"platform_reply_userapi\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:48:\"./index.php?c=platform&a=reply&do=post&m=userapi\";}}i:8;a:4:{s:2:\"id\";s:2:\"11\";s:5:\"title\";s:12:\"系统回复\";s:3:\"url\";s:44:\"./index.php?c=platform&a=special&do=display&\";s:15:\"permission_name\";s:21:\"platform_reply_system\";}}}i:1;a:2:{s:5:\"title\";s:12:\"高级功能\";s:5:\"items\";a:6:{i:0;a:4:{s:2:\"id\";s:2:\"13\";s:5:\"title\";s:18:\"常用服务接入\";s:3:\"url\";s:43:\"./index.php?c=platform&a=service&do=switch&\";s:15:\"permission_name\";s:16:\"platform_service\";}i:1;a:4:{s:2:\"id\";s:2:\"14\";s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:30:\"./index.php?c=platform&a=menu&\";s:15:\"permission_name\";s:13:\"platform_menu\";}i:2;a:4:{s:2:\"id\";s:2:\"15\";s:5:\"title\";s:18:\"特殊消息回复\";s:3:\"url\";s:44:\"./index.php?c=platform&a=special&do=message&\";s:15:\"permission_name\";s:16:\"platform_special\";}i:3;a:4:{s:2:\"id\";s:2:\"16\";s:5:\"title\";s:15:\"二维码管理\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";}i:4;a:4:{s:2:\"id\";s:2:\"17\";s:5:\"title\";s:15:\"多客服接入\";s:3:\"url\";s:39:\"./index.php?c=platform&a=reply&m=custom\";s:15:\"permission_name\";s:21:\"platform_reply_custom\";}i:5;a:4:{s:2:\"id\";s:2:\"18\";s:5:\"title\";s:18:\"长链接二维码\";s:3:\"url\";s:32:\"./index.php?c=platform&a=url2qr&\";s:15:\"permission_name\";s:15:\"platform_url2qr\";}}}i:2;a:2:{s:5:\"title\";s:12:\"数据统计\";s:5:\"items\";a:4:{i:0;a:4:{s:2:\"id\";s:2:\"20\";s:5:\"title\";s:12:\"聊天记录\";s:3:\"url\";s:41:\"./index.php?c=platform&a=stat&do=history&\";s:15:\"permission_name\";s:21:\"platform_stat_history\";}i:1;a:4:{s:2:\"id\";s:2:\"21\";s:5:\"title\";s:24:\"回复规则使用情况\";s:3:\"url\";s:38:\"./index.php?c=platform&a=stat&do=rule&\";s:15:\"permission_name\";s:18:\"platform_stat_rule\";}i:2;a:4:{s:2:\"id\";s:2:\"22\";s:5:\"title\";s:21:\"关键字命中情况\";s:3:\"url\";s:41:\"./index.php?c=platform&a=stat&do=keyword&\";s:15:\"permission_name\";s:21:\"platform_stat_keyword\";}i:3;a:4:{s:2:\"id\";s:2:\"23\";s:5:\"title\";s:6:\"参数\";s:3:\"url\";s:41:\"./index.php?c=platform&a=stat&do=setting&\";s:15:\"permission_name\";s:21:\"platform_stat_setting\";}}}}s:4:\"site\";a:3:{i:0;a:2:{s:5:\"title\";s:12:\"微站管理\";s:5:\"items\";a:3:{i:0;a:5:{s:2:\"id\";s:2:\"26\";s:5:\"title\";s:12:\"站点管理\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:18:\"site_multi_display\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:35:\"./index.php?c=site&a=multi&do=post&\";}}i:1;a:4:{s:2:\"id\";s:2:\"29\";s:5:\"title\";s:12:\"模板管理\";s:3:\"url\";s:39:\"./index.php?c=site&a=style&do=template&\";s:15:\"permission_name\";s:19:\"site_style_template\";}i:2;a:4:{s:2:\"id\";s:2:\"30\";s:5:\"title\";s:18:\"模块模板扩展\";s:3:\"url\";s:37:\"./index.php?c=site&a=style&do=module&\";s:15:\"permission_name\";s:17:\"site_style_module\";}}}i:1;a:2:{s:5:\"title\";s:18:\"特殊页面管理\";s:5:\"items\";a:2:{i:0;a:4:{s:2:\"id\";s:2:\"32\";s:5:\"title\";s:12:\"会员中心\";s:3:\"url\";s:34:\"./index.php?c=site&a=editor&do=uc&\";s:15:\"permission_name\";s:14:\"site_editor_uc\";}i:1;a:5:{s:2:\"id\";s:2:\"33\";s:5:\"title\";s:12:\"专题页面\";s:3:\"url\";s:36:\"./index.php?c=site&a=editor&do=page&\";s:15:\"permission_name\";s:16:\"site_editor_page\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:38:\"./index.php?c=site&a=editor&do=design&\";}}}}i:2;a:2:{s:5:\"title\";s:12:\"功能组件\";s:5:\"items\";a:2:{i:0;a:4:{s:2:\"id\";s:2:\"35\";s:5:\"title\";s:12:\"分类设置\";s:3:\"url\";s:30:\"./index.php?c=site&a=category&\";s:15:\"permission_name\";s:13:\"site_category\";}i:1;a:4:{s:2:\"id\";s:2:\"36\";s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=site&a=article&\";s:15:\"permission_name\";s:12:\"site_article\";}}}}s:2:\"mc\";a:8:{i:0;a:2:{s:5:\"title\";s:12:\"粉丝管理\";s:5:\"items\";a:2:{i:0;a:4:{s:2:\"id\";s:2:\"39\";s:5:\"title\";s:12:\"粉丝分组\";s:3:\"url\";s:28:\"./index.php?c=mc&a=fangroup&\";s:15:\"permission_name\";s:11:\"mc_fangroup\";}i:1;a:4:{s:2:\"id\";s:2:\"40\";s:5:\"title\";s:6:\"粉丝\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";}}}i:1;a:2:{s:5:\"title\";s:12:\"会员中心\";s:5:\"items\";a:3:{i:0;a:4:{s:2:\"id\";s:2:\"42\";s:5:\"title\";s:21:\"会员中心关键字\";s:3:\"url\";s:37:\"./index.php?c=platform&a=cover&do=mc&\";s:15:\"permission_name\";s:17:\"platform_cover_mc\";}i:1;a:5:{s:2:\"id\";s:2:\"43\";s:5:\"title\";s:6:\"会员\";s:3:\"url\";s:25:\"./index.php?c=mc&a=member\";s:15:\"permission_name\";s:9:\"mc_member\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:32:\"./index.php?c=mc&a=member&do=add\";}}i:2;a:4:{s:2:\"id\";s:2:\"44\";s:5:\"title\";s:9:\"会员组\";s:3:\"url\";s:25:\"./index.php?c=mc&a=group&\";s:15:\"permission_name\";s:8:\"mc_group\";}}}i:2;a:2:{s:5:\"title\";s:15:\"会员卡管理\";s:5:\"items\";a:4:{i:0;a:4:{s:2:\"id\";s:2:\"46\";s:5:\"title\";s:18:\"会员卡关键字\";s:3:\"url\";s:39:\"./index.php?c=platform&a=cover&do=card&\";s:15:\"permission_name\";s:19:\"platform_cover_card\";}i:1;a:4:{s:2:\"id\";s:2:\"47\";s:5:\"title\";s:15:\"会员卡管理\";s:3:\"url\";s:33:\"./index.php?c=mc&a=card&do=manage\";s:15:\"permission_name\";s:14:\"mc_card_manage\";}i:2;a:4:{s:2:\"id\";s:2:\"48\";s:5:\"title\";s:15:\"会员卡设置\";s:3:\"url\";s:33:\"./index.php?c=mc&a=card&do=editor\";s:15:\"permission_name\";s:14:\"mc_card_editor\";}i:3;a:4:{s:2:\"id\";s:2:\"49\";s:5:\"title\";s:21:\"会员卡其他功能\";s:3:\"url\";s:32:\"./index.php?c=mc&a=card&do=other\";s:15:\"permission_name\";s:13:\"mc_card_other\";}}}i:3;a:2:{s:5:\"title\";s:12:\"积分兑换\";s:5:\"items\";a:2:{i:0;a:4:{s:2:\"id\";s:2:\"51\";s:5:\"title\";s:12:\"卡券兑换\";s:3:\"url\";s:56:\"./index.php?c=activity&a=exchange&do=display&type=coupon\";s:15:\"permission_name\";s:24:\"activity_coupon_exchange\";}i:1;a:4:{s:2:\"id\";s:2:\"52\";s:5:\"title\";s:18:\"真实物品兑换\";s:3:\"url\";s:55:\"./index.php?c=activity&a=exchange&do=display&type=goods\";s:15:\"permission_name\";s:22:\"activity_goods_display\";}}}i:4;a:2:{s:5:\"title\";s:19:\"微信素材&群发\";s:5:\"items\";a:2:{i:0;a:4:{s:2:\"id\";s:2:\"54\";s:5:\"title\";s:13:\"素材&群发\";s:3:\"url\";s:32:\"./index.php?c=material&a=display\";s:15:\"permission_name\";s:16:\"material_display\";}i:1;a:4:{s:2:\"id\";s:2:\"55\";s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:29:\"./index.php?c=material&a=mass\";s:15:\"permission_name\";s:13:\"material_mass\";}}}i:5;a:2:{s:5:\"title\";s:12:\"卡券管理\";s:5:\"items\";a:3:{i:0;a:4:{s:2:\"id\";s:2:\"57\";s:5:\"title\";s:12:\"卡券列表\";s:3:\"url\";s:42:\"./index.php?c=activity&a=coupon&do=display\";s:15:\"permission_name\";s:23:\"activity_coupon_display\";}i:1;a:4:{s:2:\"id\";s:2:\"58\";s:5:\"title\";s:12:\"卡券营销\";s:3:\"url\";s:29:\"index.php?c=activity&a=market\";s:15:\"permission_name\";s:22:\"activity_coupon_market\";}i:2;a:4:{s:2:\"id\";s:2:\"59\";s:5:\"title\";s:12:\"卡券核销\";s:3:\"url\";s:52:\"./index.php?c=activity&a=consume&do=display&status=2\";s:15:\"permission_name\";s:23:\"activity_consume_coupon\";}}}i:6;a:2:{s:5:\"title\";s:9:\"工作台\";s:5:\"items\";a:4:{i:0;a:4:{s:2:\"id\";s:2:\"61\";s:5:\"title\";s:12:\"门店列表\";s:3:\"url\";s:30:\"./index.php?c=activity&a=store\";s:15:\"permission_name\";s:19:\"activity_store_list\";}i:1;a:4:{s:2:\"id\";s:2:\"62\";s:5:\"title\";s:12:\"店员列表\";s:3:\"url\";s:30:\"./index.php?c=activity&a=clerk\";s:15:\"permission_name\";s:19:\"activity_clerk_list\";}i:2;a:4:{s:2:\"id\";s:2:\"63\";s:5:\"title\";s:18:\"微信刷卡收款\";s:3:\"url\";s:40:\"./index.php?c=paycenter&a=wxmicro&do=pay\";s:15:\"permission_name\";s:21:\"paycenter_wxmicro_pay\";}i:3;a:4:{s:2:\"id\";s:2:\"64\";s:5:\"title\";s:21:\"店员操作关键字\";s:3:\"url\";s:39:\"./index.php?c=platform&a=cover&do=clerk\";s:15:\"permission_name\";s:15:\"paycenter_clerk\";}}}i:7;a:2:{s:5:\"title\";s:12:\"统计中心\";s:5:\"items\";a:5:{i:0;a:4:{s:2:\"id\";s:2:\"66\";s:5:\"title\";s:18:\"会员积分统计\";s:3:\"url\";s:28:\"./index.php?c=stat&a=credit1\";s:15:\"permission_name\";s:12:\"stat_credit1\";}i:1;a:4:{s:2:\"id\";s:2:\"67\";s:5:\"title\";s:18:\"会员余额统计\";s:3:\"url\";s:28:\"./index.php?c=stat&a=credit2\";s:15:\"permission_name\";s:12:\"stat_credit2\";}i:2;a:4:{s:2:\"id\";s:2:\"68\";s:5:\"title\";s:24:\"会员现金消费统计\";s:3:\"url\";s:25:\"./index.php?c=stat&a=cash\";s:15:\"permission_name\";s:9:\"stat_cash\";}i:3;a:4:{s:2:\"id\";s:2:\"69\";s:5:\"title\";s:15:\"会员卡统计\";s:3:\"url\";s:25:\"./index.php?c=stat&a=card\";s:15:\"permission_name\";s:9:\"stat_card\";}i:4;a:4:{s:2:\"id\";s:2:\"70\";s:5:\"title\";s:21:\"收银台收款统计\";s:3:\"url\";s:30:\"./index.php?c=stat&a=paycenter\";s:15:\"permission_name\";s:14:\"stat_paycenter\";}}}}s:7:\"setting\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"公众号选项\";s:5:\"items\";a:7:{i:0;a:4:{s:2:\"id\";s:2:\"73\";s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:15:\"profile_payment\";}i:1;a:4:{s:2:\"id\";s:2:\"74\";s:5:\"title\";s:19:\"借用 oAuth 权限\";s:3:\"url\";s:37:\"./index.php?c=mc&a=passport&do=oauth&\";s:15:\"permission_name\";s:17:\"mc_passport_oauth\";}i:2;a:4:{s:2:\"id\";s:2:\"75\";s:5:\"title\";s:22:\"借用 JS 分享权限\";s:3:\"url\";s:31:\"./index.php?c=profile&a=jsauth&\";s:15:\"permission_name\";s:14:\"profile_jsauth\";}i:3;a:4:{s:2:\"id\";s:2:\"76\";s:5:\"title\";s:18:\"会员字段管理\";s:3:\"url\";s:25:\"./index.php?c=mc&a=fields\";s:15:\"permission_name\";s:9:\"mc_fields\";}i:4;a:4:{s:2:\"id\";s:2:\"77\";s:5:\"title\";s:18:\"微信通知设置\";s:3:\"url\";s:28:\"./index.php?c=mc&a=tplnotice\";s:15:\"permission_name\";s:12:\"mc_tplnotice\";}i:5;a:4:{s:2:\"id\";s:2:\"78\";s:5:\"title\";s:21:\"工作台菜单设置\";s:3:\"url\";s:32:\"./index.php?c=profile&a=deskmenu\";s:15:\"permission_name\";s:16:\"profile_deskmenu\";}i:6;a:4:{s:2:\"id\";s:2:\"79\";s:5:\"title\";s:18:\"会员扩展功能\";s:3:\"url\";s:25:\"./index.php?c=mc&a=plugin\";s:15:\"permission_name\";s:9:\"mc_plugin\";}}}i:1;a:2:{s:5:\"title\";s:21:\"会员及粉丝选项\";s:5:\"items\";a:5:{i:0;a:4:{s:2:\"id\";s:2:\"81\";s:5:\"title\";s:12:\"积分设置\";s:3:\"url\";s:26:\"./index.php?c=mc&a=credit&\";s:15:\"permission_name\";s:9:\"mc_credit\";}i:1;a:4:{s:2:\"id\";s:2:\"82\";s:5:\"title\";s:12:\"注册设置\";s:3:\"url\";s:40:\"./index.php?c=mc&a=passport&do=passport&\";s:15:\"permission_name\";s:20:\"mc_passport_passport\";}i:2;a:4:{s:2:\"id\";s:2:\"83\";s:5:\"title\";s:18:\"粉丝同步设置\";s:3:\"url\";s:36:\"./index.php?c=mc&a=passport&do=sync&\";s:15:\"permission_name\";s:16:\"mc_passport_sync\";}i:3;a:4:{s:2:\"id\";s:2:\"84\";s:5:\"title\";s:14:\"UC站点整合\";s:3:\"url\";s:22:\"./index.php?c=mc&a=uc&\";s:15:\"permission_name\";s:5:\"mc_uc\";}i:4;a:4:{s:2:\"id\";s:2:\"85\";s:5:\"title\";s:18:\"邮件通知参数\";s:3:\"url\";s:30:\"./index.php?c=profile&a=notify\";s:15:\"permission_name\";s:14:\"profile_notify\";}}}i:2;a:1:{s:5:\"title\";s:18:\"其他功能选项\";}}s:3:\"ext\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"管理\";s:5:\"items\";a:1:{i:0;a:4:{s:2:\"id\";s:2:\"89\";s:5:\"title\";s:18:\"扩展功能管理\";s:3:\"url\";s:31:\"./index.php?c=profile&a=module&\";s:15:\"permission_name\";s:14:\"profile_module\";}}}}}');
INSERT INTO `ims_core_cache` VALUES ('userbasefields', 'a:44:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";}');
INSERT INTO `ims_core_cache` VALUES ('usersfields', 'a:45:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";}');
INSERT INTO `ims_core_cache` VALUES ('module_receive_enable', 'a:13:{s:5:\"image\";a:0:{}s:5:\"voice\";a:0:{}s:5:\"video\";a:0:{}s:10:\"shortvideo\";a:0:{}s:8:\"location\";a:0:{}s:4:\"link\";a:0:{}s:9:\"subscribe\";a:0:{}s:11:\"unsubscribe\";a:0:{}s:2:\"qr\";a:0:{}s:5:\"trace\";a:0:{}s:5:\"click\";a:0:{}s:4:\"view\";a:0:{}s:14:\"merchant_order\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('checkupgrade:system', 'a:1:{s:10:\"lastupdate\";i:1494226234;}');
INSERT INTO `ims_core_cache` VALUES ('unimodules:3:1', 'a:14:{s:5:\"basic\";a:19:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:24:\"http://www.qynetwork.io/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:4:\"news\";a:19:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:24:\"http://www.qynetwork.io/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"music\";a:19:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:24:\"http://www.qynetwork.io/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:7:\"userapi\";a:19:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:24:\"http://www.qynetwork.io/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:8:\"recharge\";a:19:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:24:\"http://www.qynetwork.io/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:6:\"custom\";a:19:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:24:\"http://www.qynetwork.io/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:6:\"images\";a:19:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:24:\"http://www.qynetwork.io/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"video\";a:19:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:24:\"http://www.qynetwork.io/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"voice\";a:19:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:24:\"http://www.qynetwork.io/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"chats\";a:19:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:24:\"http://www.qynetwork.io/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:6:\"wxcard\";a:19:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:24:\"http://www.qynetwork.io/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:9:\"paycenter\";a:19:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:9:\"paycenter\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:9:\"收银台\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:9:\"收银台\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:24:\"http://www.qynetwork.io/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:11:\"ewei_shopv2\";a:19:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:11:\"ewei_shopv2\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"玩淘宝\";s:7:\"version\";s:5:\"2.9.2\";s:7:\"ability\";s:90:\"玩淘宝商城(分销),多用户分权，淘宝商品一键转换，多种插件支持。\";s:6:\"author\";s:3:\"we7\";s:3:\"url\";s:24:\"http://www.qynetwork.io/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:14:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:11:\"unsubscribe\";i:9;s:2:\"qr\";i:10;s:5:\"trace\";i:11;s:5:\"click\";i:12;s:4:\"view\";i:13;s:14:\"merchant_order\";}s:7:\"handles\";a:12:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:2:\"qr\";i:9;s:5:\"trace\";i:10;s:5:\"click\";i:11;s:14:\"merchant_order\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:6:\"a:0:{}\";s:7:\"enabled\";s:1:\"1\";s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:4:\"core\";a:5:{s:5:\"title\";s:24:\"系统事件处理模块\";s:4:\"name\";s:4:\"core\";s:8:\"issystem\";i:1;s:7:\"enabled\";i:1;s:9:\"isdisplay\";i:0;}}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_03aa884722a57737d2e0096b250939b7', 'a:5:{s:2:\"id\";s:2:\"12\";s:7:\"uniacid\";s:1:\"5\";s:4:\"sets\";s:504:\"a:1:{s:3:\"wap\";a:18:{s:4:\"open\";i:1;s:7:\"inh5app\";s:1:\"0\";s:8:\"mustbind\";s:1:\"0\";s:5:\"style\";s:7:\"default\";s:5:\"color\";s:0:\"\";s:2:\"bg\";s:53:\"../addons/ewei_shopv2/template/account/default/bg.jpg\";s:10:\"smsimgcode\";s:1:\"0\";s:7:\"sms_reg\";s:1:\"7\";s:10:\"sms_forget\";s:1:\"7\";s:13:\"sms_changepwd\";s:1:\"7\";s:8:\"sms_bind\";s:1:\"7\";s:13:\"headerbgcolor\";s:0:\"\";s:11:\"headercolor\";s:0:\"\";s:15:\"headericoncolor\";s:0:\"\";s:9:\"statusbar\";s:1:\"0\";s:7:\"loginbg\";N;s:5:\"regbg\";N;s:3:\"sns\";a:2:{s:2:\"wx\";i:0;s:2:\"qq\";i:0;}}}\";s:7:\"plugins\";N;s:3:\"sec\";N;}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_1ac9153d538fc1af313cb91eed144caa', 'a:1:{s:3:\"wap\";a:18:{s:4:\"open\";i:1;s:7:\"inh5app\";s:1:\"0\";s:8:\"mustbind\";s:1:\"0\";s:5:\"style\";s:7:\"default\";s:5:\"color\";s:0:\"\";s:2:\"bg\";s:53:\"../addons/ewei_shopv2/template/account/default/bg.jpg\";s:10:\"smsimgcode\";s:1:\"0\";s:7:\"sms_reg\";s:1:\"7\";s:10:\"sms_forget\";s:1:\"7\";s:13:\"sms_changepwd\";s:1:\"7\";s:8:\"sms_bind\";s:1:\"7\";s:13:\"headerbgcolor\";s:0:\"\";s:11:\"headercolor\";s:0:\"\";s:15:\"headericoncolor\";s:0:\"\";s:9:\"statusbar\";s:1:\"0\";s:7:\"loginbg\";N;s:5:\"regbg\";N;s:3:\"sns\";a:2:{s:2:\"wx\";i:0;s:2:\"qq\";i:0;}}}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_c63f0b1d52faebdb70e565393f9a13d6', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_74d1cea9b4bb0b717d26c64287fa94e9', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_9a52bfbf32243c1f30edc58b89a2935a', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_a4676ec36c0e61443f52f5bf9c711135', 'a:11:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:12:\"displayorder\";s:1:\"1\";s:8:\"identity\";s:5:\"qiniu\";s:4:\"name\";s:12:\"七牛存储\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"tool\";s:5:\"thumb\";s:45:\"../addons/ewei_shopv2/static/images/qiniu.jpg\";s:4:\"desc\";N;s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:1;a:13:{s:2:\"id\";s:1:\"5\";s:12:\"displayorder\";s:1:\"5\";s:8:\"identity\";s:6:\"verify\";s:4:\"name\";s:9:\"O2O核销\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:3:\"biz\";s:5:\"thumb\";s:46:\"../addons/ewei_shopv2/static/images/verify.jpg\";s:4:\"desc\";N;s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:2;a:13:{s:2:\"id\";s:1:\"6\";s:12:\"displayorder\";s:1:\"6\";s:8:\"identity\";s:8:\"tmessage\";s:4:\"name\";s:12:\"会员群发\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"tool\";s:5:\"thumb\";s:48:\"../addons/ewei_shopv2/static/images/tmessage.jpg\";s:4:\"desc\";N;s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:3;a:13:{s:2:\"id\";s:1:\"7\";s:12:\"displayorder\";s:1:\"7\";s:8:\"identity\";s:4:\"perm\";s:4:\"name\";s:12:\"分权系统\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"help\";s:5:\"thumb\";s:44:\"../addons/ewei_shopv2/static/images/perm.jpg\";s:4:\"desc\";N;s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:4;a:13:{s:2:\"id\";s:1:\"8\";s:12:\"displayorder\";s:1:\"8\";s:8:\"identity\";s:4:\"sale\";s:4:\"name\";s:9:\"营销宝\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"sale\";s:5:\"thumb\";s:44:\"../addons/ewei_shopv2/static/images/sale.jpg\";s:4:\"desc\";N;s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:5;a:13:{s:2:\"id\";s:2:\"11\";s:12:\"displayorder\";s:2:\"11\";s:8:\"identity\";s:7:\"virtual\";s:4:\"name\";s:12:\"虚拟物品\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:3:\"biz\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/virtual.jpg\";s:4:\"desc\";N;s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:6;a:13:{s:2:\"id\";s:2:\"13\";s:12:\"displayorder\";s:2:\"13\";s:8:\"identity\";s:6:\"coupon\";s:4:\"name\";s:9:\"超级券\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"sale\";s:5:\"thumb\";s:46:\"../addons/ewei_shopv2/static/images/coupon.jpg\";s:4:\"desc\";N;s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:7;a:13:{s:2:\"id\";s:2:\"24\";s:12:\"displayorder\";s:2:\"27\";s:8:\"identity\";s:3:\"sms\";s:4:\"name\";s:12:\"短信提醒\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"tool\";s:5:\"thumb\";s:43:\"../addons/ewei_shopv2/static/images/sms.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:8;a:13:{s:2:\"id\";s:2:\"27\";s:12:\"displayorder\";s:2:\"33\";s:8:\"identity\";s:3:\"wap\";s:4:\"name\";s:9:\"全网通\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"tool\";s:5:\"thumb\";s:0:\"\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:9;a:13:{s:2:\"id\";s:2:\"30\";s:12:\"displayorder\";s:2:\"33\";s:8:\"identity\";s:7:\"printer\";s:4:\"name\";s:15:\"小票打印机\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"tool\";s:5:\"thumb\";s:0:\"\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:10;a:13:{s:2:\"id\";s:2:\"28\";s:12:\"displayorder\";s:2:\"34\";s:8:\"identity\";s:5:\"h5app\";s:4:\"name\";s:5:\"H5APP\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"tool\";s:5:\"thumb\";s:0:\"\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_09110ee6c3659ae7c87f306b6c6a8616', 'a:22:{i:0;a:13:{s:2:\"id\";s:1:\"2\";s:12:\"displayorder\";s:1:\"2\";s:8:\"identity\";s:6:\"taobao\";s:4:\"name\";s:12:\"商品助手\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"tool\";s:5:\"thumb\";s:46:\"../addons/ewei_shopv2/static/images/taobao.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:1;a:13:{s:2:\"id\";s:1:\"3\";s:12:\"displayorder\";s:1:\"3\";s:8:\"identity\";s:10:\"commission\";s:4:\"name\";s:12:\"人人分销\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:3:\"biz\";s:5:\"thumb\";s:50:\"../addons/ewei_shopv2/static/images/commission.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:2;a:13:{s:2:\"id\";s:1:\"4\";s:12:\"displayorder\";s:1:\"4\";s:8:\"identity\";s:6:\"poster\";s:4:\"name\";s:12:\"超级海报\";s:7:\"version\";s:3:\"1.2\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"sale\";s:5:\"thumb\";s:46:\"../addons/ewei_shopv2/static/images/poster.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:3;a:13:{s:2:\"id\";s:2:\"10\";s:12:\"displayorder\";s:2:\"10\";s:8:\"identity\";s:10:\"creditshop\";s:4:\"name\";s:12:\"积分商城\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:3:\"biz\";s:5:\"thumb\";s:50:\"../addons/ewei_shopv2/static/images/creditshop.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:4;a:13:{s:2:\"id\";s:2:\"12\";s:12:\"displayorder\";s:2:\"11\";s:8:\"identity\";s:7:\"article\";s:4:\"name\";s:12:\"文章营销\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"help\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/article.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:5;a:13:{s:2:\"id\";s:2:\"14\";s:12:\"displayorder\";s:2:\"14\";s:8:\"identity\";s:7:\"postera\";s:4:\"name\";s:12:\"活动海报\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"sale\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/postera.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:6;a:13:{s:2:\"id\";s:2:\"16\";s:12:\"displayorder\";s:2:\"15\";s:8:\"identity\";s:7:\"diyform\";s:4:\"name\";s:12:\"自定表单\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"help\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/diyform.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:7;a:13:{s:2:\"id\";s:2:\"17\";s:12:\"displayorder\";s:2:\"16\";s:8:\"identity\";s:8:\"exhelper\";s:4:\"name\";s:12:\"快递助手\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"help\";s:5:\"thumb\";s:48:\"../addons/ewei_shopv2/static/images/exhelper.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:8;a:13:{s:2:\"id\";s:2:\"18\";s:12:\"displayorder\";s:2:\"19\";s:8:\"identity\";s:6:\"groups\";s:4:\"name\";s:12:\"人人拼团\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:3:\"biz\";s:5:\"thumb\";s:46:\"../addons/ewei_shopv2/static/images/groups.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:9;a:13:{s:2:\"id\";s:2:\"19\";s:12:\"displayorder\";s:2:\"20\";s:8:\"identity\";s:7:\"diypage\";s:4:\"name\";s:12:\"店铺装修\";s:7:\"version\";s:3:\"2.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"help\";s:5:\"thumb\";s:48:\"../addons/ewei_shopv2/static/images/designer.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:10;a:13:{s:2:\"id\";s:2:\"20\";s:12:\"displayorder\";s:2:\"22\";s:8:\"identity\";s:8:\"globonus\";s:4:\"name\";s:12:\"全民股东\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:3:\"biz\";s:5:\"thumb\";s:48:\"../addons/ewei_shopv2/static/images/globonus.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:11;a:13:{s:2:\"id\";s:2:\"21\";s:12:\"displayorder\";s:2:\"23\";s:8:\"identity\";s:5:\"merch\";s:4:\"name\";s:9:\"多商户\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:3:\"biz\";s:5:\"thumb\";s:45:\"../addons/ewei_shopv2/static/images/merch.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:12;a:13:{s:2:\"id\";s:2:\"22\";s:12:\"displayorder\";s:2:\"26\";s:8:\"identity\";s:2:\"qa\";s:4:\"name\";s:12:\"帮助中心\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"help\";s:5:\"thumb\";s:42:\"../addons/ewei_shopv2/static/images/qa.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:13;a:13:{s:2:\"id\";s:2:\"29\";s:12:\"displayorder\";s:2:\"26\";s:8:\"identity\";s:6:\"abonus\";s:4:\"name\";s:12:\"区域代理\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:3:\"biz\";s:5:\"thumb\";s:46:\"../addons/ewei_shopv2/static/images/abonus.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:14;a:13:{s:2:\"id\";s:2:\"25\";s:12:\"displayorder\";s:2:\"29\";s:8:\"identity\";s:4:\"sign\";s:4:\"name\";s:12:\"积分签到\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"tool\";s:5:\"thumb\";s:44:\"../addons/ewei_shopv2/static/images/sign.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:15;a:13:{s:2:\"id\";s:2:\"26\";s:12:\"displayorder\";s:2:\"30\";s:8:\"identity\";s:3:\"sns\";s:4:\"name\";s:12:\"全民社区\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"sale\";s:5:\"thumb\";s:43:\"../addons/ewei_shopv2/static/images/sns.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:16;a:13:{s:2:\"id\";s:2:\"31\";s:12:\"displayorder\";s:2:\"34\";s:8:\"identity\";s:7:\"bargain\";s:4:\"name\";s:12:\"砍价活动\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"tool\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/bargain.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:17;a:13:{s:2:\"id\";s:2:\"32\";s:12:\"displayorder\";s:2:\"35\";s:8:\"identity\";s:4:\"task\";s:4:\"name\";s:12:\"任务中心\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"sale\";s:5:\"thumb\";s:44:\"../addons/ewei_shopv2/static/images/task.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:18;a:13:{s:2:\"id\";s:2:\"33\";s:12:\"displayorder\";s:2:\"36\";s:8:\"identity\";s:7:\"cashier\";s:4:\"name\";s:9:\"收银台\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:3:\"biz\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/cashier.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:19;a:13:{s:2:\"id\";s:2:\"34\";s:12:\"displayorder\";s:2:\"37\";s:8:\"identity\";s:8:\"messages\";s:4:\"name\";s:12:\"消息群发\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"tool\";s:5:\"thumb\";s:48:\"../addons/ewei_shopv2/static/images/messages.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:20;a:13:{s:2:\"id\";s:2:\"35\";s:12:\"displayorder\";s:2:\"38\";s:8:\"identity\";s:7:\"seckill\";s:4:\"name\";s:12:\"整点秒杀\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:4:\"sale\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/seckill.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:21;a:13:{s:2:\"id\";s:2:\"36\";s:12:\"displayorder\";s:2:\"39\";s:8:\"identity\";s:8:\"exchange\";s:4:\"name\";s:12:\"兑换中心\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:8:\"category\";s:3:\"biz\";s:5:\"thumb\";s:48:\"../addons/ewei_shopv2/static/images/exchange.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_02b72fcc49fb8916836f109352f05d59', 's:19:\"2017-05-08 15:24:53\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_52285de7717f2d78ca6623c56da33f82', 's:19:\"2017-05-08 15:24:53\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_2f815720a2f517136716dbb1096bea5d', 's:19:\"2017-05-08 15:24:53\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_d45488b13ce1f38aa2bba754b153037f', 's:19:\"2017-05-08 15:24:53\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_0911efc078ad5f1d1b9287ef20d15ac2', 's:19:\"2017-05-08 15:24:53\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_38220aea94c7235faf501f4f7b391b16', 's:19:\"2017-05-08 15:24:53\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_ea6faf4b5220ae84fad4509b6e8af8ed', 's:19:\"2017-05-08 15:24:53\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_deb291e917a761455626144168ea211c', 'a:2:{s:6:\"parent\";a:4:{i:0;a:13:{s:2:\"id\";s:4:\"1174\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:6:\"男装\";s:5:\"thumb\";s:0:\"\";s:8:\"parentid\";s:1:\"0\";s:11:\"isrecommand\";s:1:\"0\";s:11:\"description\";s:6:\"男装\";s:12:\"displayorder\";s:1:\"0\";s:7:\"enabled\";s:1:\"1\";s:6:\"ishome\";s:1:\"0\";s:5:\"level\";i:1;s:6:\"advimg\";s:51:\"images/3/2017/05/au0f3O72102v015S0qSFoQ7ZfZ37QU.jpg\";s:6:\"advurl\";s:0:\"\";}i:1;a:13:{s:2:\"id\";s:4:\"1175\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:6:\"女装\";s:5:\"thumb\";s:0:\"\";s:8:\"parentid\";s:1:\"0\";s:11:\"isrecommand\";s:1:\"0\";s:11:\"description\";s:6:\"女装\";s:12:\"displayorder\";s:1:\"0\";s:7:\"enabled\";s:1:\"1\";s:6:\"ishome\";s:1:\"0\";s:5:\"level\";i:1;s:6:\"advimg\";s:51:\"images/3/2017/05/au0f3O72102v015S0qSFoQ7ZfZ37QU.jpg\";s:6:\"advurl\";s:0:\"\";}i:2;a:13:{s:2:\"id\";s:4:\"1176\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:6:\"男鞋\";s:5:\"thumb\";s:0:\"\";s:8:\"parentid\";s:1:\"0\";s:11:\"isrecommand\";s:1:\"0\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:7:\"enabled\";s:1:\"1\";s:6:\"ishome\";s:1:\"0\";s:5:\"level\";i:1;s:6:\"advimg\";s:51:\"images/3/2017/05/l6lxWI860fvVlC4i4f3FxIqV80FGZW.jpg\";s:6:\"advurl\";s:0:\"\";}i:3;a:13:{s:2:\"id\";s:4:\"1177\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:6:\"女鞋\";s:5:\"thumb\";s:0:\"\";s:8:\"parentid\";s:1:\"0\";s:11:\"isrecommand\";s:1:\"0\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:7:\"enabled\";s:1:\"1\";s:6:\"ishome\";s:1:\"0\";s:5:\"level\";i:1;s:6:\"advimg\";s:0:\"\";s:6:\"advurl\";s:0:\"\";}}s:8:\"children\";a:3:{i:1174;a:2:{i:0;a:14:{s:2:\"id\";s:4:\"1179\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:4:\"T恤\";s:5:\"thumb\";s:51:\"images/3/2017/05/fzffc7IC7ZVp0PJjECFVH0PzCqFVHC.jpg\";s:8:\"parentid\";s:4:\"1174\";s:11:\"isrecommand\";s:1:\"0\";s:11:\"description\";s:10:\"T恤描述\";s:12:\"displayorder\";s:1:\"0\";s:7:\"enabled\";s:1:\"1\";s:6:\"ishome\";s:1:\"1\";s:5:\"level\";s:1:\"2\";s:6:\"advimg\";s:51:\"images/3/2017/05/au0f3O72102v015S0qSFoQ7ZfZ37QU.jpg\";s:6:\"advurl\";s:0:\"\";i:1174;a:1:{s:5:\"level\";i:2;}}i:1;a:14:{s:2:\"id\";s:4:\"1180\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:6:\"衬衫\";s:5:\"thumb\";s:51:\"images/3/2017/05/fNmH3xjam3zN0GVOag9H5UHH3J0uhg.jpg\";s:8:\"parentid\";s:4:\"1174\";s:11:\"isrecommand\";s:1:\"1\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:7:\"enabled\";s:1:\"1\";s:6:\"ishome\";s:1:\"1\";s:5:\"level\";s:1:\"2\";s:6:\"advimg\";s:0:\"\";s:6:\"advurl\";s:0:\"\";i:1174;a:1:{s:5:\"level\";i:2;}}}i:1175;a:2:{i:0;a:14:{s:2:\"id\";s:4:\"1181\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:6:\"单鞋\";s:5:\"thumb\";s:51:\"images/3/2017/05/w3et7ELwv7wzeeElVCtwLaclED07av.jpg\";s:8:\"parentid\";s:4:\"1175\";s:11:\"isrecommand\";s:1:\"1\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:7:\"enabled\";s:1:\"1\";s:6:\"ishome\";s:1:\"1\";s:5:\"level\";s:1:\"2\";s:6:\"advimg\";s:0:\"\";s:6:\"advurl\";s:0:\"\";i:1175;a:1:{s:5:\"level\";i:2;}}i:1;a:14:{s:2:\"id\";s:4:\"1182\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:9:\"休闲鞋\";s:5:\"thumb\";s:51:\"images/3/2017/05/VFV04k0KewOF60ex4w6pemx0Kp60Kw.jpg\";s:8:\"parentid\";s:4:\"1175\";s:11:\"isrecommand\";s:1:\"1\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:7:\"enabled\";s:1:\"1\";s:6:\"ishome\";s:1:\"1\";s:5:\"level\";s:1:\"2\";s:6:\"advimg\";s:0:\"\";s:6:\"advurl\";s:0:\"\";i:1175;a:1:{s:5:\"level\";i:2;}}}i:1176;a:1:{i:0;a:14:{s:2:\"id\";s:4:\"1183\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:12:\"精品皮鞋\";s:5:\"thumb\";s:51:\"images/3/2017/05/P5PGjw7kSKfzxg0552G3gfX22OpG33.jpg\";s:8:\"parentid\";s:4:\"1176\";s:11:\"isrecommand\";s:1:\"1\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:7:\"enabled\";s:1:\"1\";s:6:\"ishome\";s:1:\"1\";s:5:\"level\";s:1:\"2\";s:6:\"advimg\";s:0:\"\";s:6:\"advurl\";s:0:\"\";i:1176;a:1:{s:5:\"level\";i:2;}}}}}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_60d9bffa412c175177af433c4121e4b3', 'a:9:{i:1174;a:5:{s:2:\"id\";s:4:\"1174\";s:8:\"parentid\";s:1:\"0\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:6:\"男装\";s:5:\"thumb\";s:0:\"\";}i:1175;a:5:{s:2:\"id\";s:4:\"1175\";s:8:\"parentid\";s:1:\"0\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:6:\"女装\";s:5:\"thumb\";s:0:\"\";}i:1176;a:5:{s:2:\"id\";s:4:\"1176\";s:8:\"parentid\";s:1:\"0\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:6:\"男鞋\";s:5:\"thumb\";s:0:\"\";}i:1177;a:5:{s:2:\"id\";s:4:\"1177\";s:8:\"parentid\";s:1:\"0\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:6:\"女鞋\";s:5:\"thumb\";s:0:\"\";}i:1179;a:5:{s:2:\"id\";s:4:\"1179\";s:8:\"parentid\";s:4:\"1174\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:4:\"T恤\";s:5:\"thumb\";s:51:\"images/3/2017/05/fzffc7IC7ZVp0PJjECFVH0PzCqFVHC.jpg\";}i:1180;a:5:{s:2:\"id\";s:4:\"1180\";s:8:\"parentid\";s:4:\"1174\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:6:\"衬衫\";s:5:\"thumb\";s:51:\"images/3/2017/05/fNmH3xjam3zN0GVOag9H5UHH3J0uhg.jpg\";}i:1181;a:5:{s:2:\"id\";s:4:\"1181\";s:8:\"parentid\";s:4:\"1175\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:6:\"单鞋\";s:5:\"thumb\";s:51:\"images/3/2017/05/w3et7ELwv7wzeeElVCtwLaclED07av.jpg\";}i:1182;a:5:{s:2:\"id\";s:4:\"1182\";s:8:\"parentid\";s:4:\"1175\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:9:\"休闲鞋\";s:5:\"thumb\";s:51:\"images/3/2017/05/VFV04k0KewOF60ex4w6pemx0Kp60Kw.jpg\";}i:1183;a:5:{s:2:\"id\";s:4:\"1183\";s:8:\"parentid\";s:4:\"1176\";s:7:\"uniacid\";s:1:\"3\";s:4:\"name\";s:12:\"精品皮鞋\";s:5:\"thumb\";s:51:\"images/3/2017/05/P5PGjw7kSKfzxg0552G3gfX22OpG33.jpg\";}}');
INSERT INTO `ims_core_cache` VALUES ('uniaccount:3', 'a:28:{s:4:\"acid\";s:1:\"3\";s:7:\"uniacid\";s:1:\"3\";s:5:\"token\";s:32:\"IKurQZzBgt8GwHQd2b3GBrlDkBiZdq82\";s:12:\"access_token\";s:0:\"\";s:14:\"encodingaeskey\";s:43:\"qtmu6U2r3RNzt2WKhUMLbhbUB83mz82M8Ibtm8gGt2i\";s:5:\"level\";s:1:\"4\";s:4:\"name\";s:16:\"wyxiang测试号\";s:7:\"account\";s:3:\"123\";s:8:\"original\";s:3:\"123\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:18:\"wx7abe4d41f0e9a927\";s:6:\"secret\";s:32:\"8e434b648720588d40fd1b2db3b26eb7\";s:7:\"styleid\";s:1:\"0\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:12:\"default_acid\";s:1:\"3\";s:4:\"type\";s:1:\"1\";s:3:\"uid\";s:1:\"2\";s:9:\"starttime\";s:10:\"1493724710\";s:7:\"endtime\";s:1:\"0\";s:6:\"groups\";a:1:{i:3;a:5:{s:7:\"groupid\";s:1:\"3\";s:7:\"uniacid\";s:1:\"3\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:10:\"grouplevel\";s:1:\"0\";}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_a34d4e685f522867040479dbf387be44', 'b:0;');
INSERT INTO `ims_core_cache` VALUES ('uniaccount:0', 'a:6:{s:4:\"type\";b:0;s:3:\"uid\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:6:\"groups\";a:0:{}s:10:\"grouplevel\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('unisetting:0', 'b:0;');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_3f104db6a06ce4db46f83148e4320d82', 's:7:\"default\";');
INSERT INTO `ims_core_cache` VALUES ('uniaccount:4', 'a:28:{s:4:\"acid\";s:1:\"4\";s:7:\"uniacid\";s:1:\"4\";s:5:\"token\";s:32:\"O5p9DpW9idq2iD435AAd0p9QpwJDZ4D5\";s:12:\"access_token\";s:0:\"\";s:14:\"encodingaeskey\";s:43:\"mBC5Z0Bqj8u84PbBCnd034DQ9ci2cKkn43BW2455iD9\";s:5:\"level\";s:1:\"4\";s:4:\"name\";s:17:\"wyxiang2测试号\";s:7:\"account\";s:3:\"123\";s:8:\"original\";s:3:\"123\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:18:\"wx6c1014c70a1a339a\";s:6:\"secret\";s:32:\"ac6db2d3beeef77da95aa8ee73267e21\";s:7:\"styleid\";s:1:\"0\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:12:\"default_acid\";s:1:\"4\";s:4:\"type\";s:1:\"1\";s:3:\"uid\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:6:\"groups\";a:1:{i:4;a:5:{s:7:\"groupid\";s:1:\"4\";s:7:\"uniacid\";s:1:\"4\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:10:\"grouplevel\";s:1:\"0\";}');
INSERT INTO `ims_core_cache` VALUES ('accesstoken:5', 'a:2:{s:5:\"token\";s:138:\"O30jCmPpqUcAV1sCyz7KP9vqHMaoM3m9hItwEqyN3SejqxtCyWfOvyp3jkPNX0G22laaqnbklDup83JM_BwK51V1XZ5fIgz5xl74oX7tDriogc2TJCsQ9WJrqNTi5kllETRcABAQFD\";s:6:\"expire\";i:1494234922;}');
INSERT INTO `ims_core_cache` VALUES ('stat:todaylock:5', 'a:1:{s:6:\"expire\";i:1494235122;}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_b06276d2e35260c3485cf80049b85a51', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_4d7d7aa27c6670259d9f0867adee3308', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('unimodules::', 'a:14:{s:5:\"basic\";a:19:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:4:\"news\";a:19:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"music\";a:19:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:7:\"userapi\";a:19:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:8:\"recharge\";a:19:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:6:\"custom\";a:19:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:6:\"images\";a:19:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"video\";a:19:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"voice\";a:19:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"chats\";a:19:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:6:\"wxcard\";a:19:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:9:\"paycenter\";a:19:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:9:\"paycenter\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:9:\"收银台\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:9:\"收银台\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:11:\"ewei_shopv2\";a:19:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:11:\"ewei_shopv2\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"人人店\";s:7:\"version\";s:5:\"2.9.2\";s:7:\"ability\";s:87:\"人人商城(分销),多用户分权，淘宝商品一键转换，多种插件支持。\";s:6:\"author\";s:3:\"we7\";s:3:\"url\";s:17:\"http://www.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:14:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:11:\"unsubscribe\";i:9;s:2:\"qr\";i:10;s:5:\"trace\";i:11;s:5:\"click\";i:12;s:4:\"view\";i:13;s:14:\"merchant_order\";}s:7:\"handles\";a:12:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:2:\"qr\";i:9;s:5:\"trace\";i:10;s:5:\"click\";i:11;s:14:\"merchant_order\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:6:\"a:0:{}\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:4:\"core\";a:5:{s:5:\"title\";s:24:\"系统事件处理模块\";s:4:\"name\";s:4:\"core\";s:8:\"issystem\";i:1;s:7:\"enabled\";i:1;s:9:\"isdisplay\";i:0;}}');
INSERT INTO `ims_core_cache` VALUES ('unimodules::1', 'a:14:{s:5:\"basic\";a:19:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:4:\"news\";a:19:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"music\";a:19:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:7:\"userapi\";a:19:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:8:\"recharge\";a:19:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:6:\"custom\";a:19:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:6:\"images\";a:19:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"video\";a:19:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"voice\";a:19:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"chats\";a:19:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:6:\"wxcard\";a:19:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:9:\"paycenter\";a:19:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:9:\"paycenter\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:9:\"收银台\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:9:\"收银台\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:11:\"ewei_shopv2\";a:19:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:11:\"ewei_shopv2\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"人人店\";s:7:\"version\";s:5:\"2.9.2\";s:7:\"ability\";s:87:\"人人商城(分销),多用户分权，淘宝商品一键转换，多种插件支持。\";s:6:\"author\";s:3:\"we7\";s:3:\"url\";s:17:\"http://www.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:14:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:11:\"unsubscribe\";i:9;s:2:\"qr\";i:10;s:5:\"trace\";i:11;s:5:\"click\";i:12;s:4:\"view\";i:13;s:14:\"merchant_order\";}s:7:\"handles\";a:12:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:2:\"qr\";i:9;s:5:\"trace\";i:10;s:5:\"click\";i:11;s:14:\"merchant_order\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:6:\"a:0:{}\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:4:\"core\";a:5:{s:5:\"title\";s:24:\"系统事件处理模块\";s:4:\"name\";s:4:\"core\";s:8:\"issystem\";i:1;s:7:\"enabled\";i:1;s:9:\"isdisplay\";i:0;}}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_bf1951eda8ca28abc3054f913e35e382', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_1bdacf4a4db0600dad8a893dddfdfcad', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('unicount:', 's:1:\"0\";');
INSERT INTO `ims_core_cache` VALUES ('unisetting:3', 'a:23:{s:7:\"uniacid\";s:1:\"3\";s:8:\"passport\";s:0:\"\";s:5:\"oauth\";a:2:{s:7:\"account\";i:3;s:4:\"host\";s:0:\"\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";s:0:\"\";s:6:\"notify\";s:0:\"\";s:11:\"creditnames\";a:2:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:9:\"shortcuts\";s:0:\"\";s:7:\"payment\";s:0:\"\";s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"3\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('accesstoken:3', 'a:2:{s:5:\"token\";s:138:\"EnADCdPZH626VKVVDGYMS6NCu3ssEF0XzXlqGvTV_4BiTX-KhfnyQumksXz0nQ5kAP8Xq2K0uYBI5RZ3TElJsuZFl6-vj7tZchKb0IzSt60jh7lFnRAIIumaLZd5M90FICZgAJAAUR\";s:6:\"expire\";i:1494233743;}');
INSERT INTO `ims_core_cache` VALUES ('stat:todaylock:3', 'a:1:{s:6:\"expire\";i:1494233943;}');
INSERT INTO `ims_core_cache` VALUES ('uniaccount:5', 'a:28:{s:4:\"acid\";s:1:\"5\";s:7:\"uniacid\";s:1:\"5\";s:5:\"token\";s:32:\"xqQqRgf6CaWWa2dCZ62KJlG9LjdCggWW\";s:12:\"access_token\";s:0:\"\";s:14:\"encodingaeskey\";s:43:\"p9F8DqJDCjCrfl8FZcv99FBAcf9JdBaac6G6CbFD86J\";s:5:\"level\";s:1:\"4\";s:4:\"name\";s:8:\"wyxinag2\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:3:\"123\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:18:\"wx6c1014c70a1a339a\";s:6:\"secret\";s:32:\"ac6db2d3beeef77da95aa8ee73267e21\";s:7:\"styleid\";s:1:\"0\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:12:\"default_acid\";s:1:\"5\";s:4:\"type\";s:1:\"1\";s:3:\"uid\";s:1:\"3\";s:9:\"starttime\";s:10:\"1493964507\";s:7:\"endtime\";s:1:\"0\";s:6:\"groups\";a:1:{i:5;a:5:{s:7:\"groupid\";s:1:\"5\";s:7:\"uniacid\";s:1:\"5\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:10:\"grouplevel\";s:1:\"0\";}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_2a6efd69e3a14554f431a2de8bacacc0', 'a:5:{s:2:\"id\";s:2:\"11\";s:7:\"uniacid\";s:1:\"3\";s:4:\"sets\";s:1727:\"a:4:{s:3:\"wap\";a:18:{s:4:\"open\";i:1;s:7:\"inh5app\";s:1:\"0\";s:8:\"mustbind\";s:1:\"0\";s:5:\"style\";s:7:\"default\";s:5:\"color\";s:0:\"\";s:2:\"bg\";s:53:\"../addons/ewei_shopv2/template/account/default/bg.jpg\";s:10:\"smsimgcode\";s:1:\"0\";s:7:\"sms_reg\";s:1:\"6\";s:10:\"sms_forget\";s:1:\"6\";s:13:\"sms_changepwd\";s:1:\"6\";s:8:\"sms_bind\";s:1:\"6\";s:13:\"headerbgcolor\";s:0:\"\";s:11:\"headercolor\";s:0:\"\";s:15:\"headericoncolor\";s:0:\"\";s:9:\"statusbar\";s:1:\"0\";s:7:\"loginbg\";N;s:5:\"regbg\";N;s:3:\"sns\";a:2:{s:2:\"wx\";i:0;s:2:\"qq\";i:0;}}s:8:\"category\";a:5:{s:5:\"level\";s:1:\"2\";s:4:\"show\";s:1:\"0\";s:5:\"style\";s:1:\"0\";s:6:\"advimg\";s:0:\"\";s:6:\"advurl\";s:0:\"\";}s:4:\"shop\";a:9:{s:8:\"catlevel\";s:1:\"2\";s:7:\"catshow\";s:1:\"0\";s:9:\"catadvimg\";s:0:\"\";s:9:\"catadvurl\";s:0:\"\";s:9:\"indexsort\";a:8:{s:6:\"search\";a:2:{s:4:\"text\";s:9:\"搜索栏\";s:7:\"visible\";i:0;}s:3:\"adv\";a:2:{s:4:\"text\";s:9:\"幻灯片\";s:7:\"visible\";i:1;}s:3:\"nav\";a:2:{s:4:\"text\";s:9:\"导航栏\";s:7:\"visible\";i:1;}s:6:\"notice\";a:2:{s:4:\"text\";s:9:\"公告栏\";s:7:\"visible\";i:1;}s:7:\"seckill\";a:2:{s:4:\"text\";s:9:\"秒杀栏\";s:7:\"visible\";i:1;}s:4:\"cube\";a:2:{s:4:\"text\";s:9:\"魔方栏\";s:7:\"visible\";i:1;}s:6:\"banner\";a:2:{s:4:\"text\";s:9:\"广告栏\";s:7:\"visible\";i:1;}s:5:\"goods\";a:2:{s:4:\"text\";s:9:\"推荐栏\";s:7:\"visible\";i:1;}}s:15:\"indexrecommands\";a:16:{i:0;s:3:\"250\";i:1;s:3:\"248\";i:2;s:3:\"247\";i:3;s:3:\"241\";i:4;s:3:\"240\";i:5;s:3:\"239\";i:6;s:3:\"238\";i:7;s:3:\"237\";i:8;s:3:\"236\";i:9;s:3:\"234\";i:10;s:3:\"233\";i:11;s:3:\"232\";i:12;s:3:\"230\";i:13;s:3:\"229\";i:14;s:3:\"228\";i:15;s:3:\"227\";}s:5:\"style\";s:7:\"default\";s:10:\"goodsstyle\";i:0;s:5:\"cubes\";a:1:{i:0;a:2:{s:3:\"img\";s:51:\"images/3/2017/05/ha2azdPb6zyh6iJ1X66533hH727pZq.png\";s:3:\"url\";s:0:\"\";}}}s:8:\"template\";a:1:{s:5:\"style\";s:7:\"default\";}}\";s:7:\"plugins\";s:175:\"a:1:{s:7:\"diypage\";a:1:{s:4:\"page\";a:6:{s:4:\"home\";s:2:\"19\";s:6:\"member\";s:0:\"\";s:6:\"detail\";s:0:\"\";s:10:\"commission\";s:0:\"\";s:10:\"creditshop\";s:0:\"\";s:8:\"exchange\";s:0:\"\";}}}\";s:3:\"sec\";N;}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_939e8816b209f766b660df80af988946', 'a:5:{s:3:\"wap\";a:18:{s:4:\"open\";i:1;s:7:\"inh5app\";s:1:\"0\";s:8:\"mustbind\";s:1:\"0\";s:5:\"style\";s:7:\"default\";s:5:\"color\";s:0:\"\";s:2:\"bg\";s:53:\"../addons/ewei_shopv2/template/account/default/bg.jpg\";s:10:\"smsimgcode\";s:1:\"0\";s:7:\"sms_reg\";s:1:\"6\";s:10:\"sms_forget\";s:1:\"6\";s:13:\"sms_changepwd\";s:1:\"6\";s:8:\"sms_bind\";s:1:\"6\";s:13:\"headerbgcolor\";s:0:\"\";s:11:\"headercolor\";s:0:\"\";s:15:\"headericoncolor\";s:0:\"\";s:9:\"statusbar\";s:1:\"0\";s:7:\"loginbg\";N;s:5:\"regbg\";N;s:3:\"sns\";a:2:{s:2:\"wx\";i:0;s:2:\"qq\";i:0;}}s:8:\"category\";a:5:{s:5:\"level\";s:1:\"2\";s:4:\"show\";s:1:\"0\";s:5:\"style\";s:1:\"0\";s:6:\"advimg\";s:0:\"\";s:6:\"advurl\";s:0:\"\";}s:4:\"shop\";a:9:{s:8:\"catlevel\";s:1:\"2\";s:7:\"catshow\";s:1:\"0\";s:9:\"catadvimg\";s:0:\"\";s:9:\"catadvurl\";s:0:\"\";s:9:\"indexsort\";a:8:{s:6:\"search\";a:2:{s:4:\"text\";s:9:\"搜索栏\";s:7:\"visible\";i:0;}s:3:\"adv\";a:2:{s:4:\"text\";s:9:\"幻灯片\";s:7:\"visible\";i:1;}s:3:\"nav\";a:2:{s:4:\"text\";s:9:\"导航栏\";s:7:\"visible\";i:1;}s:6:\"notice\";a:2:{s:4:\"text\";s:9:\"公告栏\";s:7:\"visible\";i:1;}s:7:\"seckill\";a:2:{s:4:\"text\";s:9:\"秒杀栏\";s:7:\"visible\";i:1;}s:4:\"cube\";a:2:{s:4:\"text\";s:9:\"魔方栏\";s:7:\"visible\";i:1;}s:6:\"banner\";a:2:{s:4:\"text\";s:9:\"广告栏\";s:7:\"visible\";i:1;}s:5:\"goods\";a:2:{s:4:\"text\";s:9:\"推荐栏\";s:7:\"visible\";i:1;}}s:15:\"indexrecommands\";a:16:{i:0;s:3:\"250\";i:1;s:3:\"248\";i:2;s:3:\"247\";i:3;s:3:\"241\";i:4;s:3:\"240\";i:5;s:3:\"239\";i:6;s:3:\"238\";i:7;s:3:\"237\";i:8;s:3:\"236\";i:9;s:3:\"234\";i:10;s:3:\"233\";i:11;s:3:\"232\";i:12;s:3:\"230\";i:13;s:3:\"229\";i:14;s:3:\"228\";i:15;s:3:\"227\";}s:5:\"style\";s:7:\"default\";s:10:\"goodsstyle\";i:0;s:5:\"cubes\";a:1:{i:0;a:2:{s:3:\"img\";s:51:\"images/3/2017/05/ha2azdPb6zyh6iJ1X66533hH727pZq.png\";s:3:\"url\";s:0:\"\";}}}s:8:\"template\";a:1:{s:5:\"style\";s:7:\"default\";}s:7:\"diypage\";a:1:{s:4:\"page\";a:6:{s:4:\"home\";s:2:\"19\";s:6:\"member\";s:0:\"\";s:6:\"detail\";s:0:\"\";s:10:\"commission\";s:0:\"\";s:10:\"creditshop\";s:0:\"\";s:8:\"exchange\";s:0:\"\";}}}');
INSERT INTO `ims_core_cache` VALUES ('unicount:3', 's:1:\"1\";');
INSERT INTO `ims_core_cache` VALUES ('accesstoken:4', 'a:2:{s:5:\"token\";s:138:\"OaiR2RQqu2dRk7jAfr4MAOxcs97wOR45MmDxw-3IXLyi8vehxqDuozjVm34Q2BX2XGpbV2QtyP8WGG0DuXTo--Fq7BRd9jHpPuNS-XwsvGp-CD7EnHC4X-f4Qs71Cp2ZDHQeAAARVE\";s:6:\"expire\";i:1494235246;}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_6d73376bea992c47c8c6b93095553199', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_5e23c8619e6bce2663243dfda4ef7ff0', 'a:0:{}');

-- ----------------------------
-- Table structure for ims_core_cron
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cron`;
CREATE TABLE `ims_core_cron` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cloudid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `lastruntime` int(10) unsigned NOT NULL,
  `nextruntime` int(10) unsigned NOT NULL,
  `weekday` tinyint(3) NOT NULL,
  `day` tinyint(3) NOT NULL,
  `hour` tinyint(3) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `extra` varchar(5000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`),
  KEY `nextruntime` (`nextruntime`),
  KEY `uniacid` (`uniacid`),
  KEY `cloudid` (`cloudid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_cron
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_cron_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cron_record`;
CREATE TABLE `ims_core_cron_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `tid` (`tid`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_cron_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_menu`;
CREATE TABLE `ims_core_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(60) NOT NULL,
  `append_title` varchar(30) NOT NULL,
  `append_url` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_system` tinyint(3) unsigned NOT NULL,
  `permission_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_menu
-- ----------------------------
INSERT INTO `ims_core_menu` VALUES ('1', '0', '基础设置', 'platform', '', 'fa fa-cog', '', '0', 'url', '1', '1', '');
INSERT INTO `ims_core_menu` VALUES ('2', '1', '基本功能', 'platform', '', '', '', '0', 'url', '1', '1', 'platform_basic_function');
INSERT INTO `ims_core_menu` VALUES ('3', '2', '文字回复', 'platform', './index.php?c=platform&a=reply&m=basic', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=basic', '0', 'url', '1', '1', 'platform_reply_basic');
INSERT INTO `ims_core_menu` VALUES ('4', '2', '图文回复', 'platform', './index.php?c=platform&a=reply&m=news', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=news', '0', 'url', '1', '1', 'platform_reply_news');
INSERT INTO `ims_core_menu` VALUES ('5', '2', '音乐回复', 'platform', './index.php?c=platform&a=reply&m=music', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=music', '0', 'url', '1', '1', 'platform_reply_music');
INSERT INTO `ims_core_menu` VALUES ('6', '2', '图片回复', 'platform', './index.php?c=platform&a=reply&m=images', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=images', '0', 'url', '1', '1', 'platform_reply_images');
INSERT INTO `ims_core_menu` VALUES ('7', '2', '语音回复', 'platform', './index.php?c=platform&a=reply&m=voice', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=voice', '0', 'url', '1', '1', 'platform_reply_voice');
INSERT INTO `ims_core_menu` VALUES ('8', '2', '视频回复', 'platform', './index.php?c=platform&a=reply&m=video', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=video', '0', 'url', '1', '1', 'platform_reply_video');
INSERT INTO `ims_core_menu` VALUES ('9', '2', '微信卡券回复', 'platform', './index.php?c=platform&a=reply&m=wxcard', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=wxcard', '0', 'url', '1', '1', 'platform_reply_wxcard');
INSERT INTO `ims_core_menu` VALUES ('10', '2', '自定义接口回复', 'platform', './index.php?c=platform&a=reply&m=userapi', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=userapi', '0', 'url', '1', '1', 'platform_reply_userapi');
INSERT INTO `ims_core_menu` VALUES ('11', '2', '系统回复', 'platform', './index.php?c=platform&a=special&do=display&', '', '', '0', 'url', '1', '1', 'platform_reply_system');
INSERT INTO `ims_core_menu` VALUES ('12', '1', '高级功能', 'platform', '', '', '', '0', 'url', '1', '1', 'platform_high_function');
INSERT INTO `ims_core_menu` VALUES ('13', '12', '常用服务接入', 'platform', './index.php?c=platform&a=service&do=switch&', '', '', '0', 'url', '1', '1', 'platform_service');
INSERT INTO `ims_core_menu` VALUES ('14', '12', '自定义菜单', 'platform', './index.php?c=platform&a=menu&', '', '', '0', 'url', '1', '1', 'platform_menu');
INSERT INTO `ims_core_menu` VALUES ('15', '12', '特殊消息回复', 'platform', './index.php?c=platform&a=special&do=message&', '', '', '0', 'url', '1', '1', 'platform_special');
INSERT INTO `ims_core_menu` VALUES ('16', '12', '二维码管理', 'platform', './index.php?c=platform&a=qr&', '', '', '0', 'url', '1', '1', 'platform_qr');
INSERT INTO `ims_core_menu` VALUES ('17', '12', '多客服接入', 'platform', './index.php?c=platform&a=reply&m=custom', '', '', '0', 'url', '1', '1', 'platform_reply_custom');
INSERT INTO `ims_core_menu` VALUES ('18', '12', '长链接二维码', 'platform', './index.php?c=platform&a=url2qr&', '', '', '0', 'url', '1', '1', 'platform_url2qr');
INSERT INTO `ims_core_menu` VALUES ('19', '1', '数据统计', 'platform', '', '', '', '0', 'url', '1', '1', 'platform_stat');
INSERT INTO `ims_core_menu` VALUES ('20', '19', '聊天记录', 'platform', './index.php?c=platform&a=stat&do=history&', '', '', '0', 'url', '1', '1', 'platform_stat_history');
INSERT INTO `ims_core_menu` VALUES ('21', '19', '回复规则使用情况', 'platform', './index.php?c=platform&a=stat&do=rule&', '', '', '0', 'url', '1', '1', 'platform_stat_rule');
INSERT INTO `ims_core_menu` VALUES ('22', '19', '关键字命中情况', 'platform', './index.php?c=platform&a=stat&do=keyword&', '', '', '0', 'url', '1', '1', 'platform_stat_keyword');
INSERT INTO `ims_core_menu` VALUES ('23', '19', '参数', 'platform', './index.php?c=platform&a=stat&do=setting&', '', '', '0', 'url', '1', '1', 'platform_stat_setting');
INSERT INTO `ims_core_menu` VALUES ('24', '0', '微站功能', 'site', '', 'fa fa-life-bouy', '', '0', 'url', '1', '1', '');
INSERT INTO `ims_core_menu` VALUES ('25', '24', '微站管理', 'site', '', '', '', '0', 'url', '1', '1', 'site_manage');
INSERT INTO `ims_core_menu` VALUES ('26', '25', '站点管理', 'site', './index.php?c=site&a=multi&do=display&', 'fa fa-plus', './index.php?c=site&a=multi&do=post&', '0', 'url', '1', '1', 'site_multi_display');
INSERT INTO `ims_core_menu` VALUES ('27', '25', '站点添加/编辑', 'site', '', '', '', '0', 'permission', '0', '1', 'site_multi_post');
INSERT INTO `ims_core_menu` VALUES ('28', '25', '站点删除', 'site', '', '', '', '0', 'permission', '0', '1', 'site_multi_del');
INSERT INTO `ims_core_menu` VALUES ('29', '25', '模板管理', 'site', './index.php?c=site&a=style&do=template&', '', '', '0', 'url', '1', '1', 'site_style_template');
INSERT INTO `ims_core_menu` VALUES ('30', '25', '模块模板扩展', 'site', './index.php?c=site&a=style&do=module&', '', '', '0', 'url', '1', '1', 'site_style_module');
INSERT INTO `ims_core_menu` VALUES ('31', '24', '特殊页面管理', 'site', '', '', '', '0', 'url', '1', '1', 'site_special_page');
INSERT INTO `ims_core_menu` VALUES ('32', '31', '会员中心', 'site', './index.php?c=site&a=editor&do=uc&', '', '', '0', 'url', '1', '1', 'site_editor_uc');
INSERT INTO `ims_core_menu` VALUES ('33', '31', '专题页面', 'site', './index.php?c=site&a=editor&do=page&', 'fa fa-plus', './index.php?c=site&a=editor&do=design&', '0', 'url', '1', '1', 'site_editor_page');
INSERT INTO `ims_core_menu` VALUES ('34', '24', '功能组件', 'site', '', '', '', '0', 'url', '1', '1', 'site_article');
INSERT INTO `ims_core_menu` VALUES ('35', '34', '分类设置', 'site', './index.php?c=site&a=category&', '', '', '0', 'url', '1', '1', 'site_category');
INSERT INTO `ims_core_menu` VALUES ('36', '34', '文章管理', 'site', './index.php?c=site&a=article&', '', '', '0', 'url', '1', '1', 'site_article');
INSERT INTO `ims_core_menu` VALUES ('37', '0', '粉丝营销', 'mc', '', 'fa fa-gift', '', '0', 'url', '1', '1', '');
INSERT INTO `ims_core_menu` VALUES ('38', '37', '粉丝管理', 'mc', '', '', '', '0', 'url', '1', '1', 'mc_fans_manage');
INSERT INTO `ims_core_menu` VALUES ('39', '38', '粉丝分组', 'mc', './index.php?c=mc&a=fangroup&', '', '', '0', 'url', '1', '1', 'mc_fangroup');
INSERT INTO `ims_core_menu` VALUES ('40', '38', '粉丝', 'mc', './index.php?c=mc&a=fans&', '', '', '0', 'url', '1', '1', 'mc_fans');
INSERT INTO `ims_core_menu` VALUES ('41', '37', '会员中心', 'mc', '', '', '', '0', 'url', '1', '1', 'mc_members_manage');
INSERT INTO `ims_core_menu` VALUES ('42', '41', '会员中心关键字', 'mc', './index.php?c=platform&a=cover&do=mc&', '', '', '0', 'url', '1', '1', 'platform_cover_mc');
INSERT INTO `ims_core_menu` VALUES ('43', '41', '会员', 'mc', './index.php?c=mc&a=member', 'fa fa-plus', './index.php?c=mc&a=member&do=add', '0', 'url', '1', '1', 'mc_member');
INSERT INTO `ims_core_menu` VALUES ('44', '41', '会员组', 'mc', './index.php?c=mc&a=group&', '', '', '0', 'url', '1', '1', 'mc_group');
INSERT INTO `ims_core_menu` VALUES ('45', '37', '会员卡管理', 'mc', '', '', '', '0', 'url', '1', '1', 'mc_card_manage');
INSERT INTO `ims_core_menu` VALUES ('46', '45', '会员卡关键字', 'mc', './index.php?c=platform&a=cover&do=card&', '', '', '0', 'url', '1', '1', 'platform_cover_card');
INSERT INTO `ims_core_menu` VALUES ('47', '45', '会员卡管理', 'mc', './index.php?c=mc&a=card&do=manage', '', '', '0', 'url', '1', '1', 'mc_card_manage');
INSERT INTO `ims_core_menu` VALUES ('48', '45', '会员卡设置', 'mc', './index.php?c=mc&a=card&do=editor', '', '', '0', 'url', '1', '1', 'mc_card_editor');
INSERT INTO `ims_core_menu` VALUES ('49', '45', '会员卡其他功能', 'mc', './index.php?c=mc&a=card&do=other', '', '', '0', 'url', '1', '1', 'mc_card_other');
INSERT INTO `ims_core_menu` VALUES ('50', '37', '积分兑换', 'mc', '', '', '', '0', 'url', '1', '1', 'activity_discount_manage');
INSERT INTO `ims_core_menu` VALUES ('51', '50', '卡券兑换', 'mc', './index.php?c=activity&a=exchange&do=display&type=coupon', '', '', '0', 'url', '1', '1', 'activity_coupon_exchange');
INSERT INTO `ims_core_menu` VALUES ('52', '50', '真实物品兑换', 'mc', './index.php?c=activity&a=exchange&do=display&type=goods', '', '', '0', 'url', '1', '1', 'activity_goods_display');
INSERT INTO `ims_core_menu` VALUES ('53', '37', '微信素材&群发', 'mc', '', '', '', '0', 'url', '1', '1', 'material_manage');
INSERT INTO `ims_core_menu` VALUES ('54', '53', '素材&群发', 'mc', './index.php?c=material&a=display', '', '', '0', 'url', '1', '1', 'material_display');
INSERT INTO `ims_core_menu` VALUES ('55', '53', '定时群发', 'mc', './index.php?c=material&a=mass', '', '', '0', 'url', '1', '1', 'material_mass');
INSERT INTO `ims_core_menu` VALUES ('56', '37', '卡券管理', 'mc', '', '', '', '0', 'url', '1', '1', 'wechat_card_manage');
INSERT INTO `ims_core_menu` VALUES ('57', '56', '卡券列表', 'mc', './index.php?c=activity&a=coupon&do=display', '', '', '0', 'url', '1', '1', 'activity_coupon_display');
INSERT INTO `ims_core_menu` VALUES ('58', '56', '卡券营销', 'mc', 'index.php?c=activity&a=market', '', '', '0', 'url', '1', '1', 'activity_coupon_market');
INSERT INTO `ims_core_menu` VALUES ('59', '56', '卡券核销', 'mc', './index.php?c=activity&a=consume&do=display&status=2', '', '', '0', 'url', '1', '1', 'activity_consume_coupon');
INSERT INTO `ims_core_menu` VALUES ('60', '37', '工作台', 'mc', '', '', '', '0', 'url', '1', '1', 'paycenter_manage');
INSERT INTO `ims_core_menu` VALUES ('61', '60', '门店列表', 'mc', './index.php?c=activity&a=store', '', '', '0', 'url', '1', '1', 'activity_store_list');
INSERT INTO `ims_core_menu` VALUES ('62', '60', '店员列表', 'mc', './index.php?c=activity&a=clerk', '', '', '0', 'url', '1', '1', 'activity_clerk_list');
INSERT INTO `ims_core_menu` VALUES ('63', '60', '微信刷卡收款', 'mc', './index.php?c=paycenter&a=wxmicro&do=pay', '', '', '0', 'url', '1', '1', 'paycenter_wxmicro_pay');
INSERT INTO `ims_core_menu` VALUES ('64', '60', '店员操作关键字', 'mc', './index.php?c=platform&a=cover&do=clerk', '', '', '0', 'url', '1', '1', 'paycenter_clerk');
INSERT INTO `ims_core_menu` VALUES ('65', '37', '统计中心', 'mc', '', '', '', '0', 'url', '1', '1', 'stat_center');
INSERT INTO `ims_core_menu` VALUES ('66', '65', '会员积分统计', 'mc', './index.php?c=stat&a=credit1', '', '', '0', 'url', '1', '1', 'stat_credit1');
INSERT INTO `ims_core_menu` VALUES ('67', '65', '会员余额统计', 'mc', './index.php?c=stat&a=credit2', '', '', '0', 'url', '1', '1', 'stat_credit2');
INSERT INTO `ims_core_menu` VALUES ('68', '65', '会员现金消费统计', 'mc', './index.php?c=stat&a=cash', '', '', '0', 'url', '1', '1', 'stat_cash');
INSERT INTO `ims_core_menu` VALUES ('69', '65', '会员卡统计', 'mc', './index.php?c=stat&a=card', '', '', '0', 'url', '1', '1', 'stat_card');
INSERT INTO `ims_core_menu` VALUES ('70', '65', '收银台收款统计', 'mc', './index.php?c=stat&a=paycenter', '', '', '0', 'url', '1', '1', 'stat_paycenter');
INSERT INTO `ims_core_menu` VALUES ('71', '0', '功能选项', 'setting', '', 'fa fa-umbrella', '', '0', 'url', '1', '1', '');
INSERT INTO `ims_core_menu` VALUES ('72', '71', '公众号选项', 'setting', '', '', '', '0', 'url', '1', '1', 'account_setting');
INSERT INTO `ims_core_menu` VALUES ('73', '72', '支付参数', 'setting', './index.php?c=profile&a=payment&', '', '', '0', 'url', '1', '1', 'profile_payment');
INSERT INTO `ims_core_menu` VALUES ('74', '72', '借用 oAuth 权限', 'setting', './index.php?c=mc&a=passport&do=oauth&', '', '', '0', 'url', '1', '1', 'mc_passport_oauth');
INSERT INTO `ims_core_menu` VALUES ('75', '72', '借用 JS 分享权限', 'setting', './index.php?c=profile&a=jsauth&', '', '', '0', 'url', '1', '1', 'profile_jsauth');
INSERT INTO `ims_core_menu` VALUES ('76', '72', '会员字段管理', 'setting', './index.php?c=mc&a=fields', '', '', '0', 'url', '1', '1', 'mc_fields');
INSERT INTO `ims_core_menu` VALUES ('77', '72', '微信通知设置', 'setting', './index.php?c=mc&a=tplnotice', '', '', '0', 'url', '1', '1', 'mc_tplnotice');
INSERT INTO `ims_core_menu` VALUES ('78', '72', '工作台菜单设置', 'setting', './index.php?c=profile&a=deskmenu', '', '', '0', 'url', '1', '1', 'profile_deskmenu');
INSERT INTO `ims_core_menu` VALUES ('79', '72', '会员扩展功能', 'setting', './index.php?c=mc&a=plugin', '', '', '0', 'url', '1', '1', 'mc_plugin');
INSERT INTO `ims_core_menu` VALUES ('80', '71', '会员及粉丝选项', 'setting', '', '', '', '0', 'url', '1', '1', 'mc_setting');
INSERT INTO `ims_core_menu` VALUES ('81', '80', '积分设置', 'setting', './index.php?c=mc&a=credit&', '', '', '0', 'url', '1', '1', 'mc_credit');
INSERT INTO `ims_core_menu` VALUES ('82', '80', '注册设置', 'setting', './index.php?c=mc&a=passport&do=passport&', '', '', '0', 'url', '1', '1', 'mc_passport_passport');
INSERT INTO `ims_core_menu` VALUES ('83', '80', '粉丝同步设置', 'setting', './index.php?c=mc&a=passport&do=sync&', '', '', '0', 'url', '1', '1', 'mc_passport_sync');
INSERT INTO `ims_core_menu` VALUES ('84', '80', 'UC站点整合', 'setting', './index.php?c=mc&a=uc&', '', '', '0', 'url', '1', '1', 'mc_uc');
INSERT INTO `ims_core_menu` VALUES ('85', '80', '邮件通知参数', 'setting', './index.php?c=profile&a=notify', '', '', '0', 'url', '1', '1', 'profile_notify');
INSERT INTO `ims_core_menu` VALUES ('86', '71', '其他功能选项', 'setting', '', '', '', '0', 'url', '1', '1', 'others_setting');
INSERT INTO `ims_core_menu` VALUES ('87', '0', '扩展功能', 'ext', '', 'fa fa-cubes', '', '0', 'url', '1', '1', '');
INSERT INTO `ims_core_menu` VALUES ('88', '87', '管理', 'ext', '', '', '', '0', 'url', '1', '1', '');
INSERT INTO `ims_core_menu` VALUES ('89', '88', '扩展功能管理', 'ext', './index.php?c=profile&a=module&', '', '', '0', 'url', '1', '1', 'profile_module');

-- ----------------------------
-- Table structure for ims_core_paylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_paylog`;
CREATE TABLE `ims_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `tid` varchar(128) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tag` varchar(2000) NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_paylog
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_performance
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_performance`;
CREATE TABLE `ims_core_performance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_performance
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_queue
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_queue`;
CREATE TABLE `ims_core_queue` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL,
  `params` varchar(1000) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `module` (`module`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_queue
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_resource
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_resource`;
CREATE TABLE `ims_core_resource` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `acid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_resource
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_sendsms_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_sendsms_log`;
CREATE TABLE `ims_core_sendsms_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `createtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_sendsms_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_sessions`;
CREATE TABLE `ims_core_sessions` (
  `sid` char(32) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(5000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_sessions
-- ----------------------------
INSERT INTO `ims_core_sessions` VALUES ('42522b9468c0916d69d928f1ca73bd96', '3', '192.168.0.145', 'acid|s:1:\"3\";uniacid|i:3;token|a:2:{s:4:\"cWyA\";i:1494148273;s:4:\"Iqq5\";i:1494148275;}', '1494151875');
INSERT INTO `ims_core_sessions` VALUES ('9dbf02006f0200141a487a978742f8e7', '3', '192.168.0.145', 'acid|s:1:\"3\";uniacid|i:3;token|a:6:{s:4:\"k9o2\";i:1494148129;s:4:\"hN5r\";i:1494148130;s:4:\"eJTx\";i:1494148130;s:4:\"tEr6\";i:1494148130;s:4:\"zrwM\";i:1494148215;s:4:\"Vu89\";i:1494148216;}', '1494151816');
INSERT INTO `ims_core_sessions` VALUES ('1f9c9d3551dd3ff7babd734a9f445be5', '3', '192.168.0.145', 'acid|s:1:\"3\";uniacid|i:3;token|a:6:{s:4:\"J8rq\";i:1494148388;s:4:\"Q71i\";i:1494148389;s:4:\"h5uA\";i:1494148399;s:4:\"Lkg4\";i:1494148399;s:4:\"URkF\";i:1494148402;s:4:\"wWlw\";i:1494148402;}', '1494152002');
INSERT INTO `ims_core_sessions` VALUES ('f9b69e0d76d1e8d8caa1afdc11914f02', '3', '192.168.0.145', 'acid|s:1:\"3\";uniacid|i:3;token|a:6:{s:4:\"noi3\";i:1494148409;s:4:\"kYl7\";i:1494148410;s:4:\"RDcJ\";i:1494148410;s:4:\"N5w4\";i:1494148431;s:4:\"X27r\";i:1494148431;s:4:\"u5VQ\";i:1494148433;}', '1494152033');
INSERT INTO `ims_core_sessions` VALUES ('c680d6d7bcca9cf7fa11a86c788c23e7', '3', '192.168.0.145', 'acid|s:1:\"3\";uniacid|i:3;token|a:4:{s:4:\"UU6G\";i:1494147416;s:4:\"We5m\";i:1494147419;s:4:\"ji8M\";i:1494147420;s:4:\"mrRG\";i:1494147420;}', '1494151020');
INSERT INTO `ims_core_sessions` VALUES ('5307d754c959cafc6007c2aaee455246', '3', '192.168.0.145', 'acid|s:1:\"3\";uniacid|i:3;token|a:3:{s:4:\"oR6r\";i:1494147393;s:4:\"f9eQ\";i:1494147394;s:4:\"l78w\";i:1494147414;}', '1494151014');
INSERT INTO `ims_core_sessions` VALUES ('ff58d175dc72a699d45a53d1735b7af2', '0', '192.168.0.145', 'acid|N;uniacid|i:0;token|a:1:{s:4:\"Q67V\";i:1494217183;}', '1494220783');
INSERT INTO `ims_core_sessions` VALUES ('f18e3d81d48e78a093da57ace04a056c', '3', '127.0.0.1', 'acid|s:1:\"3\";uniacid|i:3;token|a:3:{s:4:\"p787\";i:1494217220;s:4:\"PDWV\";i:1494217235;s:4:\"qKA2\";i:1494217238;}', '1494220838');
INSERT INTO `ims_core_sessions` VALUES ('2a27403e0cd04377fc579a97d2084709', '0', '192.168.0.145', 'acid|N;uniacid|i:0;token|a:1:{s:4:\"ya7Y\";i:1494212469;}', '1494216069');
INSERT INTO `ims_core_sessions` VALUES ('4100a75d9a4894108d9ee405d09e3a7d', '3', '192.168.0.145', 'acid|s:1:\"3\";uniacid|i:3;token|a:6:{s:4:\"Bgfh\";i:1494219092;s:4:\"P668\";i:1494219092;s:4:\"cV7V\";i:1494219093;s:4:\"MDpj\";i:1494219093;s:4:\"z3ke\";i:1494219093;s:4:\"j0ry\";i:1494219093;}bargain_id|N;', '1494222693');
INSERT INTO `ims_core_sessions` VALUES ('13a62c43eef564363414e3cb4a809cb1', '3', '192.168.0.145', 'acid|s:1:\"3\";uniacid|i:3;token|a:6:{s:4:\"soAS\";i:1494147357;s:4:\"x0ZR\";i:1494147358;s:4:\"i5FT\";i:1494147366;s:4:\"QOXO\";i:1494147366;s:4:\"VqjK\";i:1494147371;s:4:\"g7bD\";i:1494147371;}', '1494150971');
INSERT INTO `ims_core_sessions` VALUES ('d16166bb6e333a7f589a04f1ef1b6d05', '3', '192.168.0.165', 'acid|s:1:\"3\";uniacid|i:3;token|a:6:{s:4:\"pD50\";i:1494228330;s:4:\"J46x\";i:1494228330;s:4:\"A2m4\";i:1494228331;s:4:\"qe1X\";i:1494228331;s:4:\"g7hN\";i:1494228333;s:4:\"ujJE\";i:1494228333;}', '1494231933');

-- ----------------------------
-- Table structure for ims_core_settings
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_settings`;
CREATE TABLE `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_settings
-- ----------------------------
INSERT INTO `ims_core_settings` VALUES ('copyright', 'a:24:{s:6:\"status\";s:1:\"0\";s:10:\"verifycode\";s:1:\"1\";s:6:\"reason\";s:0:\"\";s:8:\"sitename\";s:9:\"玩淘宝\";s:3:\"url\";s:7:\"http://\";s:8:\"statcode\";s:0:\"\";s:10:\"footerleft\";s:0:\"\";s:11:\"footerright\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:5:\"flogo\";s:0:\"\";s:6:\"slides\";s:216:\"a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}\";s:6:\"notice\";s:0:\"\";s:5:\"blogo\";s:0:\"\";s:8:\"baidumap\";a:2:{s:3:\"lng\";s:0:\"\";s:3:\"lat\";s:0:\"\";}s:7:\"company\";s:0:\"\";s:14:\"companyprofile\";s:0:\"\";s:7:\"address\";s:0:\"\";s:6:\"person\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:2:\"qq\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"showhomepage\";i:0;}');
INSERT INTO `ims_core_settings` VALUES ('authmode', 'i:1;');
INSERT INTO `ims_core_settings` VALUES ('close', 'a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}');
INSERT INTO `ims_core_settings` VALUES ('register', 'a:4:{s:4:\"open\";i:0;s:6:\"verify\";i:1;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}');
INSERT INTO `ims_core_settings` VALUES ('module_receive_ban', 'a:1:{s:11:\"ewei_shopv2\";s:11:\"ewei_shopv2\";}');
INSERT INTO `ims_core_settings` VALUES ('platform', 'a:5:{s:5:\"token\";s:32:\"JhvqlJ48luaxa9eA9aZZfeAemd8Quzhj\";s:14:\"encodingaeskey\";s:43:\"e4ZLlJ4dH88uu4EVlevXMhDmZJ44mJDlCf4ujd981D4\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}');

-- ----------------------------
-- Table structure for ims_coupon
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon`;
CREATE TABLE `ims_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `logo_url` varchar(150) NOT NULL,
  `code_type` tinyint(3) unsigned NOT NULL,
  `brand_name` varchar(15) NOT NULL,
  `title` varchar(15) NOT NULL,
  `sub_title` varchar(20) NOT NULL,
  `color` varchar(15) NOT NULL,
  `notice` varchar(15) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_info` varchar(200) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `use_custom_code` tinyint(3) NOT NULL,
  `bind_openid` tinyint(3) unsigned NOT NULL,
  `can_share` tinyint(3) unsigned NOT NULL,
  `can_give_friend` tinyint(3) unsigned NOT NULL,
  `get_limit` tinyint(3) unsigned NOT NULL,
  `service_phone` varchar(20) NOT NULL,
  `extra` varchar(1000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_selfconsume` tinyint(3) unsigned NOT NULL,
  `promotion_url_name` varchar(10) NOT NULL,
  `promotion_url` varchar(100) NOT NULL,
  `promotion_url_sub_title` varchar(10) NOT NULL,
  `source` tinyint(3) unsigned NOT NULL,
  `dosage` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for ims_coupon_activity
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_activity`;
CREATE TABLE `ims_coupon_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `msg_id` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` int(3) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `coupons` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `members` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_activity
-- ----------------------------

-- ----------------------------
-- Table structure for ims_coupon_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_groups`;
CREATE TABLE `ims_coupon_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `couponid` varchar(255) NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_groups
-- ----------------------------

-- ----------------------------
-- Table structure for ims_coupon_location
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_location`;
CREATE TABLE `ims_coupon_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `offset_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_location
-- ----------------------------

-- ----------------------------
-- Table structure for ims_coupon_modules
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_modules`;
CREATE TABLE `ims_coupon_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `couponid` (`couponid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_modules
-- ----------------------------

-- ----------------------------
-- Table structure for ims_coupon_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_record`;
CREATE TABLE `ims_coupon_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `friend_openid` varchar(50) NOT NULL,
  `givebyfriend` tinyint(3) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `usetime` int(10) unsigned NOT NULL,
  `status` tinyint(3) NOT NULL,
  `clerk_name` varchar(15) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `grantmodule` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `card_id` (`card_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_coupon_store
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_store`;
CREATE TABLE `ims_coupon_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `couponid` varchar(255) NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `couponid` (`couponid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_store
-- ----------------------------

-- ----------------------------
-- Table structure for ims_cover_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_cover_reply`;
CREATE TABLE `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `do` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_cover_reply
-- ----------------------------
INSERT INTO `ims_cover_reply` VALUES ('1', '1', '0', '7', 'mc', '', '进入个人中心', '', '', './index.php?c=mc&a=home&i=1');
INSERT INTO `ims_cover_reply` VALUES ('2', '1', '1', '8', 'site', '', '进入首页', '', '', './index.php?c=home&i=1&t=1');

-- ----------------------------
-- Table structure for ims_custom_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_custom_reply`;
CREATE TABLE `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_custom_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_message_mass_sign
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_message_mass_sign`;
CREATE TABLE `ims_ewei_message_mass_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `taskid` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `log` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_message_mass_sign
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_message_mass_task
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_message_mass_task`;
CREATE TABLE `ims_ewei_message_mass_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `status` tinyint(1) DEFAULT '0',
  `processnum` int(11) DEFAULT '1',
  `sendnum` int(11) DEFAULT '0',
  `messagetype` tinyint(1) DEFAULT '0',
  `templateid` int(11) DEFAULT '0',
  `resptitle` varchar(255) DEFAULT NULL,
  `respthumb` varchar(255) DEFAULT NULL,
  `respdesc` varchar(255) DEFAULT NULL,
  `respurl` varchar(255) DEFAULT NULL,
  `sendlimittype` tinyint(1) DEFAULT '0',
  `send_openid` text,
  `send_level` int(11) DEFAULT NULL,
  `send_group` int(11) DEFAULT NULL,
  `send_agentlevel` int(11) DEFAULT NULL,
  `customertype` tinyint(1) DEFAULT '0',
  `resdesc2` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_message_mass_task
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_message_mass_template
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_message_mass_template`;
CREATE TABLE `ims_ewei_message_mass_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `template_id` varchar(255) DEFAULT '',
  `first` text NOT NULL,
  `firstcolor` varchar(255) DEFAULT '',
  `data` text NOT NULL,
  `remark` text NOT NULL,
  `remarkcolor` varchar(255) DEFAULT '',
  `url` varchar(255) NOT NULL,
  `createtime` int(11) DEFAULT '0',
  `sendtimes` int(11) DEFAULT '0',
  `sendcount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_message_mass_template
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_abonus_bill
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_abonus_bill`;
CREATE TABLE `ims_ewei_shop_abonus_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `billno` varchar(100) DEFAULT '',
  `paytype` int(11) DEFAULT '0',
  `year` int(11) DEFAULT '0',
  `month` int(11) DEFAULT '0',
  `week` int(11) DEFAULT '0',
  `ordercount` int(11) DEFAULT '0',
  `ordermoney` decimal(10,2) DEFAULT '0.00',
  `paytime` int(11) DEFAULT '0',
  `aagentcount1` int(11) DEFAULT '0',
  `aagentcount2` int(11) DEFAULT '0',
  `aagentcount3` int(11) DEFAULT '0',
  `bonusmoney1` decimal(10,2) DEFAULT '0.00',
  `bonusmoney_send1` decimal(10,2) DEFAULT '0.00',
  `bonusmoney_pay1` decimal(10,2) DEFAULT '0.00',
  `bonusmoney2` decimal(10,2) DEFAULT '0.00',
  `bonusmoney_send2` decimal(10,2) DEFAULT '0.00',
  `bonusmoney_pay2` decimal(10,2) DEFAULT '0.00',
  `bonusmoney3` decimal(10,2) DEFAULT '0.00',
  `bonusmoney_send3` decimal(10,2) DEFAULT '0.00',
  `bonusmoney_pay3` decimal(10,2) DEFAULT '0.00',
  `createtime` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `starttime` int(11) DEFAULT '0',
  `endtime` int(11) DEFAULT '0',
  `confirmtime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`) USING BTREE,
  KEY `idx_paytype` (`paytype`) USING BTREE,
  KEY `idx_createtime` (`createtime`) USING BTREE,
  KEY `idx_paytime` (`paytime`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE,
  KEY `idx_month` (`month`) USING BTREE,
  KEY `idx_week` (`week`) USING BTREE,
  KEY `idx_year` (`year`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_abonus_bill
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_abonus_billo
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_abonus_billo`;
CREATE TABLE `ims_ewei_shop_abonus_billo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `billid` int(11) DEFAULT '0',
  `orderid` int(11) DEFAULT '0',
  `ordermoney` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `idx_billid` (`billid`) USING BTREE,
  KEY `idx_uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ims_ewei_shop_abonus_billo
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_abonus_billp
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_abonus_billp`;
CREATE TABLE `ims_ewei_shop_abonus_billp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `billid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `payno` varchar(255) DEFAULT '',
  `paytype` tinyint(3) DEFAULT '0',
  `bonus1` decimal(10,4) DEFAULT '0.0000',
  `bonus2` decimal(10,4) DEFAULT '0.0000',
  `bonus3` decimal(10,4) DEFAULT '0.0000',
  `money1` decimal(10,2) DEFAULT '0.00',
  `realmoney1` decimal(10,2) DEFAULT '0.00',
  `paymoney1` decimal(10,2) DEFAULT '0.00',
  `money2` decimal(10,2) DEFAULT '0.00',
  `realmoney2` decimal(10,2) DEFAULT '0.00',
  `paymoney2` decimal(10,2) DEFAULT '0.00',
  `money3` decimal(10,2) DEFAULT '0.00',
  `realmoney3` decimal(10,2) DEFAULT '0.00',
  `paymoney3` decimal(10,2) DEFAULT '0.00',
  `chargemoney1` decimal(10,2) DEFAULT '0.00',
  `chargemoney2` decimal(10,2) DEFAULT '0.00',
  `chargemoney3` decimal(10,2) DEFAULT '0.00',
  `charge` decimal(10,2) DEFAULT '0.00',
  `status` tinyint(3) DEFAULT '0',
  `reason` varchar(255) DEFAULT '',
  `paytime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_billid` (`billid`) USING BTREE,
  KEY `idx_uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_abonus_billp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_abonus_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_abonus_level`;
CREATE TABLE `ims_ewei_shop_abonus_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `levelname` varchar(50) DEFAULT '',
  `bonus1` decimal(10,4) DEFAULT '0.0000',
  `bonus2` decimal(10,4) DEFAULT '0.0000',
  `bonus3` decimal(10,4) DEFAULT '0.0000',
  `ordermoney` decimal(10,2) DEFAULT '0.00',
  `ordercount` int(11) DEFAULT '0',
  `bonusmoney` decimal(10,2) DEFAULT '0.00',
  `downcount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_abonus_level
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_adv`;
CREATE TABLE `ims_ewei_shop_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  `shopid` int(11) DEFAULT '0',
  `iswxapp` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_enabled` (`enabled`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_adv
-- ----------------------------
INSERT INTO `ims_ewei_shop_adv` VALUES ('9', '3', '1', '', 'images/3/2017/05/SEU2VgZ11jTUTf2GvE9uVsesJeAe9U.jpg', '0', '1', '0', '0');
INSERT INTO `ims_ewei_shop_adv` VALUES ('10', '3', '2', '', 'images/3/2017/05/R6fmSm69xSfBF1SFhBvHqJFF6DafxX.jpg', '0', '1', '0', '0');
INSERT INTO `ims_ewei_shop_adv` VALUES ('11', '3', '3', '', 'images/3/2017/05/Ii1gwZg40TVC12S4cVkj0S0TIiiy2a.jpg', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for ims_ewei_shop_area_config
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_area_config`;
CREATE TABLE `ims_ewei_shop_area_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `new_area` tinyint(3) NOT NULL DEFAULT '0',
  `address_street` tinyint(3) NOT NULL DEFAULT '0',
  `createtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ims_ewei_shop_area_config
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_article
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article`;
CREATE TABLE `ims_ewei_shop_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(255) NOT NULL DEFAULT '',
  `resp_desc` text NOT NULL,
  `resp_img` text NOT NULL,
  `article_content` longtext,
  `article_category` int(11) NOT NULL DEFAULT '0',
  `article_date_v` varchar(20) NOT NULL DEFAULT '',
  `article_date` varchar(20) NOT NULL DEFAULT '',
  `article_mp` varchar(50) NOT NULL DEFAULT '',
  `article_author` varchar(20) NOT NULL DEFAULT '',
  `article_readnum_v` int(11) NOT NULL DEFAULT '0',
  `article_readnum` int(11) NOT NULL DEFAULT '0',
  `article_likenum_v` int(11) NOT NULL DEFAULT '0',
  `article_likenum` int(11) NOT NULL DEFAULT '0',
  `article_linkurl` varchar(300) NOT NULL DEFAULT '',
  `article_rule_daynum` int(11) NOT NULL DEFAULT '0',
  `article_rule_allnum` int(11) NOT NULL DEFAULT '0',
  `article_rule_credit` int(11) NOT NULL DEFAULT '0',
  `article_rule_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `page_set_option_nocopy` int(1) NOT NULL DEFAULT '0',
  `page_set_option_noshare_tl` int(1) NOT NULL DEFAULT '0',
  `page_set_option_noshare_msg` int(1) NOT NULL DEFAULT '0',
  `article_keyword` varchar(255) NOT NULL DEFAULT '',
  `article_report` int(1) NOT NULL DEFAULT '0',
  `product_advs_type` int(1) NOT NULL DEFAULT '0',
  `product_advs_title` varchar(255) NOT NULL DEFAULT '',
  `product_advs_more` varchar(255) NOT NULL DEFAULT '',
  `product_advs_link` varchar(255) NOT NULL DEFAULT '',
  `product_advs` text NOT NULL,
  `article_state` int(1) NOT NULL DEFAULT '0',
  `network_attachment` varchar(255) DEFAULT '',
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `article_rule_credittotal` int(11) DEFAULT '0',
  `article_rule_moneytotal` decimal(10,2) DEFAULT '0.00',
  `article_rule_credit2` int(11) NOT NULL DEFAULT '0',
  `article_rule_money2` decimal(10,2) NOT NULL DEFAULT '0.00',
  `article_rule_creditm` int(11) NOT NULL DEFAULT '0',
  `article_rule_moneym` decimal(10,2) NOT NULL DEFAULT '0.00',
  `article_rule_creditm2` int(11) NOT NULL DEFAULT '0',
  `article_rule_moneym2` decimal(10,2) NOT NULL DEFAULT '0.00',
  `article_readtime` int(11) DEFAULT '0',
  `article_areas` varchar(255) DEFAULT '',
  `article_endtime` int(11) DEFAULT '0',
  `article_hasendtime` tinyint(3) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `article_keyword2` varchar(255) NOT NULL DEFAULT '',
  `article_advance` int(11) DEFAULT '0',
  `article_virtualadd` tinyint(3) DEFAULT '0',
  `article_visit` tinyint(3) DEFAULT '0',
  `article_visit_level` text,
  `article_visit_tip` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_article_title` (`article_title`),
  KEY `idx_article_content` (`article_content`(10)),
  KEY `idx_article_keyword` (`article_keyword`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='营销文章';

-- ----------------------------
-- Records of ims_ewei_shop_article
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_article_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_category`;
CREATE TABLE `ims_ewei_shop_article_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL DEFAULT '',
  `displayorder` int(11) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '0',
  `uniacid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_category_name` (`category_name`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='营销表单分类';

-- ----------------------------
-- Records of ims_ewei_shop_article_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_article_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_log`;
CREATE TABLE `ims_ewei_shop_article_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL DEFAULT '0',
  `read` int(11) NOT NULL DEFAULT '0',
  `like` int(11) NOT NULL DEFAULT '0',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `uniacid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aid` (`aid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=621 DEFAULT CHARSET=utf8 COMMENT='点赞/阅读记录';

-- ----------------------------
-- Records of ims_ewei_shop_article_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_article_report
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_report`;
CREATE TABLE `ims_ewei_shop_article_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL DEFAULT '0',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `aid` int(11) DEFAULT '0',
  `cate` varchar(255) NOT NULL DEFAULT '',
  `cons` varchar(255) NOT NULL DEFAULT '',
  `uniacid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户举报记录';

-- ----------------------------
-- Records of ims_ewei_shop_article_report
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_article_share
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_share`;
CREATE TABLE `ims_ewei_shop_article_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL DEFAULT '0',
  `share_user` int(11) NOT NULL DEFAULT '0',
  `click_user` int(11) NOT NULL DEFAULT '0',
  `click_date` varchar(20) NOT NULL DEFAULT '',
  `add_credit` int(11) NOT NULL DEFAULT '0',
  `add_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `uniacid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aid` (`aid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='用户分享数据';

-- ----------------------------
-- Records of ims_ewei_shop_article_share
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_article_sys
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_sys`;
CREATE TABLE `ims_ewei_shop_article_sys` (
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `article_message` varchar(255) NOT NULL DEFAULT '',
  `article_title` varchar(255) NOT NULL DEFAULT '',
  `article_image` varchar(300) NOT NULL DEFAULT '',
  `article_shownum` int(11) NOT NULL DEFAULT '0',
  `article_keyword` varchar(255) NOT NULL DEFAULT '',
  `article_source` varchar(255) NOT NULL DEFAULT '',
  `article_temp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uniacid`),
  KEY `idx_article_message` (`article_message`),
  KEY `idx_article_keyword` (`article_keyword`),
  KEY `idx_article_title` (`article_title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章设置';

-- ----------------------------
-- Records of ims_ewei_shop_article_sys
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_author_bill
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_bill`;
CREATE TABLE `ims_ewei_shop_author_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `billno` varchar(100) DEFAULT '',
  `paytype` int(11) DEFAULT '0',
  `year` int(11) DEFAULT '0',
  `month` int(11) DEFAULT '0',
  `week` int(11) DEFAULT '0',
  `ordercount` int(11) DEFAULT '0',
  `ordermoney` decimal(10,2) DEFAULT '0.00',
  `bonusordermoney` decimal(10,2) DEFAULT '0.00',
  `bonusrate` decimal(10,2) DEFAULT '0.00',
  `bonusmoney` decimal(10,2) DEFAULT '0.00',
  `bonusmoney_send` decimal(10,2) DEFAULT '0.00',
  `bonusmoney_pay` decimal(10,2) DEFAULT '0.00',
  `paytime` int(11) DEFAULT '0',
  `partnercount` int(11) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `starttime` int(11) DEFAULT '0',
  `endtime` int(11) DEFAULT '0',
  `confirmtime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`) USING BTREE,
  KEY `idx_paytype` (`paytype`) USING BTREE,
  KEY `idx_createtime` (`createtime`) USING BTREE,
  KEY `idx_paytime` (`paytime`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE,
  KEY `idx_month` (`month`) USING BTREE,
  KEY `idx_week` (`week`) USING BTREE,
  KEY `idx_year` (`year`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_author_bill
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_author_billo
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_billo`;
CREATE TABLE `ims_ewei_shop_author_billo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `billid` int(11) DEFAULT '0',
  `authorid` int(11) DEFAULT NULL,
  `orderid` text,
  `ordermoney` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `idx_billid` (`billid`) USING BTREE,
  KEY `idx_uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_author_billo
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_author_billp
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_billp`;
CREATE TABLE `ims_ewei_shop_author_billp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `billid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `payno` varchar(255) DEFAULT '',
  `paytype` tinyint(3) DEFAULT '0',
  `bonus` decimal(10,2) DEFAULT '0.00',
  `money` decimal(10,2) DEFAULT '0.00',
  `realmoney` decimal(10,2) DEFAULT '0.00',
  `paymoney` decimal(10,2) DEFAULT '0.00',
  `charge` decimal(10,2) DEFAULT '0.00',
  `chargemoney` decimal(10,2) DEFAULT '0.00',
  `status` tinyint(3) DEFAULT '0',
  `reason` varchar(255) DEFAULT '',
  `paytime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_billid` (`billid`) USING BTREE,
  KEY `idx_uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_author_billp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_author_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_level`;
CREATE TABLE `ims_ewei_shop_author_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `levelname` varchar(50) DEFAULT '',
  `bonus` decimal(10,4) DEFAULT '0.0000',
  `ordermoney` decimal(10,2) DEFAULT '0.00',
  `ordercount` int(11) DEFAULT '0',
  `commissionmoney` decimal(10,2) DEFAULT '0.00',
  `bonusmoney` decimal(10,2) DEFAULT '0.00',
  `downcount` int(11) DEFAULT '0',
  `bonus_fg` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_author_level
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_author_team
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_team`;
CREATE TABLE `ims_ewei_shop_author_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `teamno` varchar(50) DEFAULT '',
  `year` int(11) DEFAULT '0',
  `month` int(11) DEFAULT '0',
  `team_count` int(11) DEFAULT '0',
  `team_ids` longtext,
  `status` tinyint(1) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `paytime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `teamno` (`teamno`) USING BTREE,
  KEY `year` (`year`) USING BTREE,
  KEY `month` (`month`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `createtime` (`createtime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_author_team
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_author_team_pay
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_team_pay`;
CREATE TABLE `ims_ewei_shop_author_team_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `teamid` int(11) DEFAULT '0',
  `mid` int(11) DEFAULT '0',
  `payno` varchar(255) DEFAULT '',
  `money` decimal(10,2) DEFAULT '0.00',
  `paymoney` decimal(10,2) DEFAULT '0.00',
  `paytime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`) USING BTREE,
  KEY `idx_teamid` (`teamid`) USING BTREE,
  KEY `idx_mid` (`mid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_author_team_pay
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_banner
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_banner`;
CREATE TABLE `ims_ewei_shop_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `bannername` varchar(50) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  `shopid` int(11) DEFAULT '0',
  `iswxapp` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_enabled` (`enabled`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_banner
-- ----------------------------
INSERT INTO `ims_ewei_shop_banner` VALUES ('4', '3', '广告', '', 'images/3/2017/05/dd9pTQfoATNDa97d93va9dF1azAHhj.jpg', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for ims_ewei_shop_bargain_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_bargain_account`;
CREATE TABLE `ims_ewei_shop_bargain_account` (
  `id` int(11) NOT NULL,
  `mall_name` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `mall_title` varchar(255) DEFAULT NULL,
  `mall_content` varchar(255) DEFAULT NULL,
  `mall_logo` varchar(255) DEFAULT NULL,
  `message` int(11) DEFAULT '0',
  `partin` int(11) DEFAULT '0',
  `rule` text,
  `end_message` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_bargain_account
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_bargain_actor
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_bargain_actor`;
CREATE TABLE `ims_ewei_shop_bargain_actor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `now_price` decimal(9,2) NOT NULL,
  `created_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `bargain_times` int(10) NOT NULL,
  `openid` varchar(50) NOT NULL DEFAULT '',
  `nickname` varchar(20) NOT NULL,
  `head_image` varchar(200) NOT NULL,
  `bargain_price` decimal(9,2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `account_id` int(11) NOT NULL,
  `initiate` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_bargain_actor
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_bargain_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_bargain_goods`;
CREATE TABLE `ims_ewei_shop_bargain_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `goods_id` varchar(20) NOT NULL,
  `end_price` decimal(10,2) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` tinyint(2) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `user_set` text,
  `rule` text,
  `act_times` int(11) NOT NULL,
  `mode` tinyint(4) NOT NULL,
  `total_time` int(11) NOT NULL,
  `each_time` int(11) NOT NULL,
  `time_limit` int(11) NOT NULL,
  `probability` text NOT NULL,
  `custom` varchar(255) DEFAULT NULL,
  `maximum` int(11) DEFAULT NULL,
  `initiate` tinyint(4) NOT NULL DEFAULT '0',
  `myself` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_bargain_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_bargain_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_bargain_record`;
CREATE TABLE `ims_ewei_shop_bargain_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_id` int(11) NOT NULL,
  `bargain_price` decimal(9,2) NOT NULL,
  `openid` varchar(50) NOT NULL DEFAULT '',
  `nickname` varchar(20) NOT NULL,
  `head_image` varchar(200) NOT NULL,
  `bargain_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_bargain_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_carrier
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_carrier`;
CREATE TABLE `ims_ewei_shop_carrier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `realname` varchar(50) DEFAULT '',
  `mobile` varchar(50) DEFAULT '',
  `address` varchar(255) DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_deleted` (`deleted`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_carrier
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_category`;
CREATE TABLE `ims_ewei_shop_cashier_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `catename` varchar(255) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_cashier_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_clearing
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_clearing`;
CREATE TABLE `ims_ewei_shop_cashier_clearing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `cashierid` int(11) DEFAULT '0',
  `clearno` varchar(64) DEFAULT '',
  `status` tinyint(3) DEFAULT '0',
  `money` decimal(10,2) DEFAULT '0.00',
  `realmoney` decimal(10,2) DEFAULT '0.00',
  `remark` varchar(500) DEFAULT '',
  `orderids` text,
  `createtime` int(11) DEFAULT '0',
  `paytime` int(11) DEFAULT '0',
  `deleted` tinyint(3) DEFAULT '0',
  `paytype` tinyint(1) DEFAULT '0',
  `payinfo` varchar(1000) DEFAULT '',
  `charge` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `storeid` (`cashierid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `createtime` (`createtime`) USING BTREE,
  KEY `deleted` (`deleted`) USING BTREE,
  KEY `clearno` (`clearno`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_cashier_clearing
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_goods`;
CREATE TABLE `ims_ewei_shop_cashier_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `cashierid` int(11) DEFAULT '0',
  `createtime` int(10) unsigned DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `categoryid` tinyint(1) DEFAULT '0',
  `price` decimal(10,2) DEFAULT '0.00',
  `total` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `goodssn` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `cashierid` (`cashierid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_cashier_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_goods_category`;
CREATE TABLE `ims_ewei_shop_cashier_goods_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `cashierid` int(11) DEFAULT '0',
  `catename` varchar(255) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`) USING BTREE,
  KEY `idx_cashierid` (`cashierid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_cashier_goods_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_operator
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_operator`;
CREATE TABLE `ims_ewei_shop_cashier_operator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `cashierid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `manageopenid` varchar(50) DEFAULT '',
  `username` varchar(255) DEFAULT '',
  `password` varchar(50) DEFAULT '',
  `salt` varchar(8) DEFAULT '',
  `perm` text,
  `createtime` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `cashierid` (`cashierid`) USING BTREE,
  KEY `manageopenid` (`manageopenid`) USING BTREE,
  KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_cashier_operator
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_order`;
CREATE TABLE `ims_ewei_shop_cashier_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `ordersn` varchar(255) DEFAULT '',
  `price` decimal(10,2) DEFAULT '0.00',
  `openid` varchar(50) DEFAULT '',
  `payopenid` varchar(50) DEFAULT '',
  `createtime` int(10) unsigned DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  `paytime` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_cashier_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_pay_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_pay_log`;
CREATE TABLE `ims_ewei_shop_cashier_pay_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `cashierid` int(11) DEFAULT '0',
  `operatorid` int(11) DEFAULT '0',
  `openid` varchar(50) DEFAULT '',
  `paytype` tinyint(3) DEFAULT NULL,
  `logno` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `money` decimal(10,2) DEFAULT '0.00',
  `paytime` int(11) DEFAULT '0',
  `is_applypay` tinyint(1) DEFAULT '0',
  `randommoney` decimal(10,2) DEFAULT '0.00',
  `enough` decimal(10,2) DEFAULT '0.00',
  `mobile` varchar(20) DEFAULT '',
  `deduction` decimal(10,2) DEFAULT '0.00',
  `discountmoney` decimal(10,2) DEFAULT '0.00',
  `discount` decimal(5,2) DEFAULT '0.00',
  `isgoods` tinyint(1) DEFAULT '0',
  `orderid` int(11) DEFAULT '0',
  `orderprice` decimal(10,2) DEFAULT '0.00',
  `goodsprice` decimal(10,2) DEFAULT '0.00',
  `couponpay` decimal(10,2) DEFAULT '0.00',
  `payopenid` varchar(50) DEFAULT '',
  `nosalemoney` decimal(10,2) DEFAULT '0.00',
  `coupon` int(11) DEFAULT '0',
  `usecoupon` int(11) DEFAULT '0',
  `usecouponprice` decimal(10,2) DEFAULT '0.00',
  `present_credit1` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`) USING BTREE,
  KEY `idx_type` (`paytype`) USING BTREE,
  KEY `idx_createtime` (`createtime`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE,
  KEY `idx_storeid` (`cashierid`) USING BTREE,
  KEY `idx_logno` (`logno`) USING BTREE,
  KEY `is_applypay` (`is_applypay`) USING BTREE,
  KEY `orderid` (`orderid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_cashier_pay_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_pay_log_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_pay_log_goods`;
CREATE TABLE `ims_ewei_shop_cashier_pay_log_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cashierid` int(11) DEFAULT '0',
  `logid` int(11) DEFAULT '0',
  `goodsid` int(11) DEFAULT '0',
  `price` decimal(10,2) DEFAULT '0.00',
  `total` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `logid` (`logid`) USING BTREE,
  KEY `goodsid` (`goodsid`) USING BTREE,
  KEY `cashierid` (`cashierid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ims_ewei_shop_cashier_pay_log_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_qrcode`;
CREATE TABLE `ims_ewei_shop_cashier_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `cashierid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `goodstitle` varchar(255) DEFAULT '',
  `money` decimal(10,2) DEFAULT '0.00',
  `createtime` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `cashierid` (`cashierid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_cashier_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_user`;
CREATE TABLE `ims_ewei_shop_cashier_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `storeid` int(11) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  `setmeal` tinyint(3) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `manageopenid` varchar(50) DEFAULT '',
  `isopen_commission` tinyint(1) DEFAULT '0',
  `name` varchar(50) DEFAULT '',
  `mobile` varchar(50) DEFAULT '',
  `categoryid` int(11) DEFAULT '0',
  `wechat_status` tinyint(1) DEFAULT '0',
  `wechatpay` text,
  `alipay_status` tinyint(1) DEFAULT '0',
  `alipay` text,
  `withdraw` decimal(10,2) DEFAULT '0.00',
  `openid` varchar(50) DEFAULT '',
  `diyformfields` text,
  `diyformdata` text,
  `createtime` int(11) DEFAULT '0',
  `username` varchar(255) DEFAULT '',
  `password` varchar(32) DEFAULT '',
  `salt` char(8) DEFAULT '',
  `lifetimestart` int(10) unsigned DEFAULT '0',
  `lifetimeend` int(10) unsigned DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `set` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  `can_withdraw` tinyint(1) DEFAULT '0',
  `show_paytype` tinyint(1) DEFAULT '0',
  `couponid` varchar(255) DEFAULT '',
  `management` varchar(1000) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `openid` (`manageopenid`) USING BTREE,
  KEY `username` (`username`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_cashier_user
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_category`;
CREATE TABLE `ims_ewei_shop_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT '0',
  `isrecommand` int(10) DEFAULT '0',
  `description` varchar(500) DEFAULT NULL,
  `displayorder` tinyint(3) unsigned DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  `ishome` tinyint(3) DEFAULT '0',
  `level` tinyint(3) DEFAULT NULL,
  `advimg` varchar(255) DEFAULT '',
  `advurl` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_displayorder` (`displayorder`),
  KEY `idx_enabled` (`enabled`),
  KEY `idx_parentid` (`parentid`),
  KEY `idx_isrecommand` (`isrecommand`),
  KEY `idx_ishome` (`ishome`)
) ENGINE=MyISAM AUTO_INCREMENT=1184 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_category
-- ----------------------------
INSERT INTO `ims_ewei_shop_category` VALUES ('1174', '3', '男装', '', '0', '0', '男装', '0', '1', '0', '1', 'images/3/2017/05/au0f3O72102v015S0qSFoQ7ZfZ37QU.jpg', '');
INSERT INTO `ims_ewei_shop_category` VALUES ('1175', '3', '女装', '', '0', '0', '女装', '0', '1', '0', '1', 'images/3/2017/05/au0f3O72102v015S0qSFoQ7ZfZ37QU.jpg', '');
INSERT INTO `ims_ewei_shop_category` VALUES ('1176', '3', '男鞋', '', '0', '0', '', '0', '1', '0', '1', 'images/3/2017/05/l6lxWI860fvVlC4i4f3FxIqV80FGZW.jpg', '');
INSERT INTO `ims_ewei_shop_category` VALUES ('1177', '3', '女鞋', '', '0', '0', '', '0', '1', '0', '1', '', '');
INSERT INTO `ims_ewei_shop_category` VALUES ('1179', '3', 'T恤', 'images/3/2017/05/fzffc7IC7ZVp0PJjECFVH0PzCqFVHC.jpg', '1174', '0', 'T恤描述', '0', '1', '1', '2', 'images/3/2017/05/au0f3O72102v015S0qSFoQ7ZfZ37QU.jpg', '');
INSERT INTO `ims_ewei_shop_category` VALUES ('1180', '3', '衬衫', 'images/3/2017/05/fNmH3xjam3zN0GVOag9H5UHH3J0uhg.jpg', '1174', '1', '', '0', '1', '1', '2', '', '');
INSERT INTO `ims_ewei_shop_category` VALUES ('1181', '3', '单鞋', 'images/3/2017/05/w3et7ELwv7wzeeElVCtwLaclED07av.jpg', '1175', '1', '', '0', '1', '1', '2', '', '');
INSERT INTO `ims_ewei_shop_category` VALUES ('1182', '3', '休闲鞋', 'images/3/2017/05/VFV04k0KewOF60ex4w6pemx0Kp60Kw.jpg', '1175', '1', '', '0', '1', '1', '2', '', '');
INSERT INTO `ims_ewei_shop_category` VALUES ('1183', '3', '精品皮鞋', 'images/3/2017/05/P5PGjw7kSKfzxg0552G3gfX22OpG33.jpg', '1176', '1', '', '0', '1', '1', '2', '', '');

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_apply
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_apply`;
CREATE TABLE `ims_ewei_shop_commission_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `applyno` varchar(255) DEFAULT '',
  `mid` int(11) DEFAULT '0',
  `type` tinyint(3) DEFAULT '0',
  `orderids` longtext,
  `commission` decimal(10,2) DEFAULT '0.00',
  `commission_pay` decimal(10,2) DEFAULT '0.00',
  `content` text,
  `status` tinyint(3) DEFAULT '0',
  `applytime` int(11) DEFAULT '0',
  `checktime` int(11) DEFAULT '0',
  `paytime` int(11) DEFAULT '0',
  `invalidtime` int(11) DEFAULT '0',
  `refusetime` int(11) DEFAULT '0',
  `realmoney` decimal(10,2) DEFAULT '0.00',
  `charge` decimal(10,2) DEFAULT '0.00',
  `deductionmoney` decimal(10,2) DEFAULT '0.00',
  `beginmoney` decimal(10,2) DEFAULT '0.00',
  `endmoney` decimal(10,2) DEFAULT '0.00',
  `alipay` varchar(50) NOT NULL DEFAULT '',
  `bankname` varchar(50) NOT NULL DEFAULT '',
  `bankcard` varchar(50) NOT NULL DEFAULT '',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `repurchase` decimal(10,2) DEFAULT '0.00',
  `alipay1` varchar(50) NOT NULL DEFAULT '',
  `bankname1` varchar(50) NOT NULL DEFAULT '',
  `bankcard1` varchar(50) NOT NULL DEFAULT '',
  `sendmoney` decimal(10,2) DEFAULT '0.00',
  `senddata` text,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_mid` (`mid`),
  KEY `idx_checktime` (`checktime`),
  KEY `idx_paytime` (`paytime`),
  KEY `idx_applytime` (`applytime`),
  KEY `idx_status` (`status`),
  KEY `idx_invalidtime` (`invalidtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_commission_apply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_bank
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_bank`;
CREATE TABLE `ims_ewei_shop_commission_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `bankname` varchar(255) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `displayorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_commission_bank
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_clickcount
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_clickcount`;
CREATE TABLE `ims_ewei_shop_commission_clickcount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `from_openid` varchar(255) DEFAULT '',
  `clicktime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_from_openid` (`from_openid`)
) ENGINE=MyISAM AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_commission_clickcount
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_level`;
CREATE TABLE `ims_ewei_shop_commission_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `levelname` varchar(50) DEFAULT '',
  `commission1` decimal(10,2) DEFAULT '0.00',
  `commission2` decimal(10,2) DEFAULT '0.00',
  `commission3` decimal(10,2) DEFAULT '0.00',
  `ordermoney` decimal(10,2) DEFAULT '0.00',
  `ordercount` int(11) DEFAULT '0',
  `downcount` varchar(255) DEFAULT '',
  `commissionmoney` decimal(10,2) DEFAULT '0.00',
  `withdraw` decimal(10,2) DEFAULT '0.00',
  `repurchase` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_commission_level
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_log`;
CREATE TABLE `ims_ewei_shop_commission_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `applyid` int(11) DEFAULT '0',
  `mid` int(11) DEFAULT '0',
  `commission` decimal(10,2) DEFAULT '0.00',
  `createtime` int(11) DEFAULT '0',
  `commission_pay` decimal(10,2) DEFAULT '0.00',
  `realmoney` decimal(10,2) DEFAULT '0.00',
  `charge` decimal(10,2) DEFAULT '0.00',
  `deductionmoney` decimal(10,2) DEFAULT '0.00',
  `type` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_applyid` (`applyid`),
  KEY `idx_mid` (`mid`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_commission_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_rank
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_rank`;
CREATE TABLE `ims_ewei_shop_commission_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_commission_rank
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_repurchase
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_repurchase`;
CREATE TABLE `ims_ewei_shop_commission_repurchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(50) DEFAULT '',
  `year` int(4) DEFAULT '0',
  `month` tinyint(2) DEFAULT '0',
  `repurchase` decimal(10,2) DEFAULT '0.00',
  `applyid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `applyid` (`applyid`),
  KEY `openid` (`openid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_commission_repurchase
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_shop
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_shop`;
CREATE TABLE `ims_ewei_shop_commission_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `mid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `img` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT '',
  `selectgoods` tinyint(3) DEFAULT '0',
  `selectcategory` tinyint(3) DEFAULT '0',
  `goodsids` text,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_commission_shop
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon`;
CREATE TABLE `ims_ewei_shop_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `catid` int(11) DEFAULT '0',
  `couponname` varchar(255) DEFAULT '',
  `gettype` tinyint(3) DEFAULT '0',
  `getmax` int(11) DEFAULT '0',
  `usetype` tinyint(3) DEFAULT '0',
  `returntype` tinyint(3) DEFAULT '0',
  `bgcolor` varchar(255) DEFAULT '',
  `enough` decimal(10,2) DEFAULT '0.00',
  `timelimit` tinyint(3) DEFAULT '0',
  `coupontype` tinyint(3) DEFAULT '0',
  `timedays` int(11) DEFAULT '0',
  `timestart` int(11) DEFAULT '0',
  `timeend` int(11) DEFAULT '0',
  `discount` decimal(10,2) DEFAULT '0.00',
  `deduct` decimal(10,2) DEFAULT '0.00',
  `backtype` tinyint(3) DEFAULT '0',
  `backmoney` varchar(50) DEFAULT '',
  `backcredit` varchar(50) DEFAULT '',
  `backredpack` varchar(50) DEFAULT '',
  `backwhen` tinyint(3) DEFAULT '0',
  `thumb` varchar(255) DEFAULT '',
  `desc` text,
  `createtime` int(11) DEFAULT '0',
  `total` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `money` decimal(10,2) DEFAULT '0.00',
  `respdesc` text,
  `respthumb` varchar(255) DEFAULT '',
  `resptitle` varchar(255) DEFAULT '',
  `respurl` varchar(255) DEFAULT '',
  `credit` int(11) DEFAULT '0',
  `usecredit2` tinyint(3) DEFAULT '0',
  `remark` varchar(1000) DEFAULT '',
  `descnoset` tinyint(3) DEFAULT '0',
  `pwdkey` varchar(255) DEFAULT '',
  `pwdkey2` varchar(255) DEFAULT '',
  `pwdsuc` text,
  `pwdfail` text,
  `pwdurl` varchar(255) DEFAULT '',
  `pwdask` text,
  `pwdstatus` tinyint(3) DEFAULT '0',
  `pwdtimes` int(11) DEFAULT '0',
  `pwdfull` text,
  `pwdwords` text,
  `pwdopen` tinyint(3) DEFAULT '0',
  `pwdown` text,
  `pwdexit` varchar(255) DEFAULT '',
  `pwdexitstr` text,
  `displayorder` int(11) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  `limitgoodtype` tinyint(1) DEFAULT '0',
  `limitgoodcatetype` tinyint(1) DEFAULT '0',
  `limitgoodcateids` varchar(500) DEFAULT '',
  `limitgoodids` varchar(500) DEFAULT '',
  `islimitlevel` tinyint(1) DEFAULT '0',
  `limitmemberlevels` varchar(500) DEFAULT '',
  `limitagentlevels` varchar(500) DEFAULT '',
  `limitpartnerlevels` varchar(500) DEFAULT '',
  `limitaagentlevels` varchar(500) DEFAULT '',
  `tagtitle` varchar(20) DEFAULT '',
  `settitlecolor` tinyint(1) DEFAULT '0',
  `titlecolor` varchar(10) DEFAULT '',
  `limitdiscounttype` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_coupontype` (`coupontype`),
  KEY `idx_timestart` (`timestart`),
  KEY `idx_timeend` (`timeend`),
  KEY `idx_timelimit` (`timelimit`),
  KEY `idx_status` (`status`),
  KEY `idx_givetype` (`backtype`),
  KEY `idx_catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_category`;
CREATE TABLE `ims_ewei_shop_coupon_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_displayorder` (`displayorder`),
  KEY `idx_status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_coupon_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_data
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_data`;
CREATE TABLE `ims_ewei_shop_coupon_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `couponid` int(11) DEFAULT '0',
  `gettype` tinyint(3) DEFAULT '0',
  `used` int(11) DEFAULT '0',
  `usetime` int(11) DEFAULT '0',
  `gettime` int(11) DEFAULT '0',
  `senduid` int(11) DEFAULT '0',
  `ordersn` varchar(255) DEFAULT '',
  `back` tinyint(3) DEFAULT '0',
  `backtime` int(11) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  `isnew` tinyint(1) DEFAULT '1',
  `nocount` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_couponid` (`couponid`),
  KEY `idx_gettype` (`gettype`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_coupon_data
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_goodsendtask
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_goodsendtask`;
CREATE TABLE `ims_ewei_shop_coupon_goodsendtask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT '0',
  `couponid` int(11) DEFAULT '0',
  `starttime` int(11) DEFAULT '0',
  `endtime` int(11) DEFAULT '0',
  `sendnum` int(11) DEFAULT '1',
  `num` int(11) DEFAULT '0',
  `sendpoint` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ims_ewei_shop_coupon_goodsendtask
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_guess
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_guess`;
CREATE TABLE `ims_ewei_shop_coupon_guess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `couponid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `times` int(11) DEFAULT '0',
  `pwdkey` varchar(255) DEFAULT '',
  `ok` tinyint(3) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_couponid` (`couponid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_coupon_guess
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_log`;
CREATE TABLE `ims_ewei_shop_coupon_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `logno` varchar(255) DEFAULT '',
  `openid` varchar(255) DEFAULT '',
  `couponid` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `paystatus` tinyint(3) DEFAULT '0',
  `creditstatus` tinyint(3) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `paytype` tinyint(3) DEFAULT '0',
  `getfrom` tinyint(3) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_couponid` (`couponid`),
  KEY `idx_status` (`status`),
  KEY `idx_paystatus` (`paystatus`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_getfrom` (`getfrom`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_coupon_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_sendshow
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_sendshow`;
CREATE TABLE `ims_ewei_shop_coupon_sendshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `showkey` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `openid` varchar(255) NOT NULL,
  `coupondataid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_coupon_sendshow
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_sendtasks
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_sendtasks`;
CREATE TABLE `ims_ewei_shop_coupon_sendtasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `enough` decimal(10,2) DEFAULT '0.00',
  `couponid` int(11) DEFAULT '0',
  `starttime` int(11) DEFAULT '0',
  `endtime` int(11) DEFAULT '0',
  `sendnum` int(11) DEFAULT '1',
  `num` int(11) DEFAULT '0',
  `sendpoint` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ims_ewei_shop_coupon_sendtasks
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_taskdata
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_taskdata`;
CREATE TABLE `ims_ewei_shop_coupon_taskdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  `taskid` int(11) DEFAULT '0',
  `couponid` int(11) DEFAULT '0',
  `sendnum` int(11) DEFAULT '0',
  `tasktype` tinyint(1) DEFAULT '0',
  `orderid` int(11) DEFAULT '0',
  `parentorderid` int(11) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `sendpoint` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_coupon_taskdata
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_adv`;
CREATE TABLE `ims_ewei_shop_creditshop_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  `merchid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_enabled` (`enabled`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_creditshop_adv
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_category`;
CREATE TABLE `ims_ewei_shop_creditshop_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `displayorder` tinyint(3) unsigned DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  `advimg` varchar(255) DEFAULT '',
  `advurl` varchar(500) DEFAULT '',
  `isrecommand` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_displayorder` (`displayorder`),
  KEY `idx_enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_creditshop_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_comment`;
CREATE TABLE `ims_ewei_shop_creditshop_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `logid` int(11) NOT NULL DEFAULT '0',
  `logno` varchar(50) NOT NULL DEFAULT '',
  `goodsid` int(11) NOT NULL DEFAULT '0',
  `openid` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `headimg` varchar(255) DEFAULT NULL,
  `level` tinyint(3) NOT NULL DEFAULT '0',
  `content` varchar(255) DEFAULT NULL,
  `images` text,
  `time` int(11) NOT NULL DEFAULT '0',
  `reply_content` varchar(255) DEFAULT NULL,
  `reply_images` text,
  `reply_time` int(11) NOT NULL DEFAULT '0',
  `append_content` varchar(255) DEFAULT NULL,
  `append_images` text,
  `append_time` int(11) NOT NULL DEFAULT '0',
  `append_reply_content` varchar(255) DEFAULT NULL,
  `append_reply_images` text,
  `append_reply_time` int(11) NOT NULL DEFAULT '0',
  `istop` tinyint(3) NOT NULL DEFAULT '0',
  `checked` tinyint(3) NOT NULL DEFAULT '0',
  `append_checked` tinyint(3) NOT NULL DEFAULT '0',
  `virtual` tinyint(3) NOT NULL DEFAULT '0',
  `deleted` tinyint(3) NOT NULL DEFAULT '0',
  `merchid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_creditshop_comment
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_goods`;
CREATE TABLE `ims_ewei_shop_creditshop_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `cate` int(11) DEFAULT '0',
  `thumb` varchar(255) DEFAULT '',
  `price` decimal(10,2) DEFAULT '0.00',
  `type` tinyint(3) DEFAULT '0',
  `credit` int(11) DEFAULT '0',
  `money` decimal(10,2) DEFAULT '0.00',
  `total` int(11) DEFAULT '0',
  `totalday` int(11) DEFAULT '0',
  `chance` int(11) DEFAULT '0',
  `chanceday` int(11) DEFAULT '0',
  `detail` text,
  `rate1` int(11) DEFAULT '0',
  `rate2` int(11) DEFAULT '0',
  `endtime` int(11) DEFAULT '0',
  `joins` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `deleted` tinyint(3) DEFAULT '0',
  `showlevels` text,
  `buylevels` text,
  `showgroups` text,
  `buygroups` text,
  `vip` tinyint(3) DEFAULT '0',
  `istop` tinyint(3) DEFAULT '0',
  `isrecommand` tinyint(3) DEFAULT '0',
  `istime` tinyint(3) DEFAULT '0',
  `timestart` int(11) DEFAULT '0',
  `timeend` int(11) DEFAULT '0',
  `share_title` varchar(255) DEFAULT '',
  `share_icon` varchar(255) DEFAULT '',
  `share_desc` varchar(500) DEFAULT '',
  `followneed` tinyint(3) DEFAULT '0',
  `followtext` varchar(255) DEFAULT '',
  `subtitle` varchar(255) DEFAULT '',
  `subdetail` text,
  `noticedetail` text,
  `usedetail` varchar(255) DEFAULT '',
  `goodsdetail` text,
  `isendtime` tinyint(3) DEFAULT '0',
  `usecredit2` tinyint(3) DEFAULT '0',
  `area` varchar(255) DEFAULT '',
  `dispatch` decimal(10,2) DEFAULT '0.00',
  `storeids` text,
  `noticeopenid` varchar(255) DEFAULT '',
  `noticetype` tinyint(3) DEFAULT '0',
  `isverify` tinyint(3) DEFAULT '0',
  `goodstype` tinyint(3) DEFAULT '0',
  `couponid` int(11) DEFAULT '0',
  `goodsid` int(11) DEFAULT '0',
  `merchid` int(11) NOT NULL DEFAULT '0',
  `productprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `mincredit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `minmoney` decimal(10,2) NOT NULL DEFAULT '0.00',
  `maxcredit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `maxmoney` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dispatchtype` tinyint(3) NOT NULL DEFAULT '0',
  `dispatchid` int(11) NOT NULL DEFAULT '0',
  `verifytype` tinyint(3) NOT NULL DEFAULT '0',
  `verifynum` int(11) NOT NULL DEFAULT '0',
  `grant1` decimal(10,2) NOT NULL DEFAULT '0.00',
  `grant2` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goodssn` varchar(255) NOT NULL,
  `productsn` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL,
  `showtotal` tinyint(3) NOT NULL,
  `totalcnf` tinyint(3) NOT NULL DEFAULT '0',
  `usetime` int(11) NOT NULL DEFAULT '0',
  `hasoption` tinyint(3) NOT NULL DEFAULT '0',
  `noticedetailshow` tinyint(3) NOT NULL DEFAULT '0',
  `detailshow` tinyint(3) NOT NULL DEFAULT '0',
  `packetmoney` decimal(10,2) NOT NULL DEFAULT '0.00',
  `surplusmoney` decimal(10,2) NOT NULL DEFAULT '0.00',
  `packetlimit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `packettype` tinyint(3) NOT NULL DEFAULT '0',
  `minpacketmoney` decimal(10,2) NOT NULL DEFAULT '0.00',
  `packettotal` int(11) NOT NULL DEFAULT '0',
  `packetsurplus` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_type` (`type`),
  KEY `idx_endtime` (`endtime`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_status` (`status`),
  KEY `idx_displayorder` (`displayorder`),
  KEY `idx_deleted` (`deleted`),
  KEY `idx_istop` (`istop`),
  KEY `idx_isrecommand` (`isrecommand`),
  KEY `idx_istime` (`istime`),
  KEY `idx_timestart` (`timestart`),
  KEY `idx_timeend` (`timeend`),
  KEY `idx_goodstype` (`goodstype`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_creditshop_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_log`;
CREATE TABLE `ims_ewei_shop_creditshop_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `logno` varchar(255) DEFAULT '',
  `eno` varchar(255) DEFAULT '',
  `openid` varchar(255) DEFAULT '',
  `goodsid` int(11) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `paystatus` tinyint(3) DEFAULT '0',
  `paytype` tinyint(3) DEFAULT '-1',
  `dispatchstatus` tinyint(3) DEFAULT '0',
  `creditpay` tinyint(3) DEFAULT '0',
  `addressid` int(11) DEFAULT '0',
  `dispatchno` varchar(255) DEFAULT '',
  `usetime` int(11) DEFAULT '0',
  `express` varchar(255) DEFAULT '',
  `expresssn` varchar(255) DEFAULT '',
  `expresscom` varchar(255) DEFAULT '',
  `verifyopenid` varchar(255) DEFAULT '',
  `transid` varchar(255) DEFAULT '',
  `dispatchtransid` varchar(255) DEFAULT '',
  `storeid` int(11) DEFAULT '0',
  `realname` varchar(255) DEFAULT '',
  `mobile` varchar(255) DEFAULT '',
  `couponid` int(11) DEFAULT '0',
  `dupdate1` tinyint(3) DEFAULT '0',
  `address` text,
  `optionid` int(11) NOT NULL DEFAULT '0',
  `time_send` int(11) NOT NULL DEFAULT '0',
  `time_finish` int(11) NOT NULL DEFAULT '0',
  `iscomment` tinyint(3) NOT NULL DEFAULT '0',
  `dispatchtime` int(11) NOT NULL DEFAULT '0',
  `verifynum` int(11) NOT NULL DEFAULT '1',
  `verifytime` int(11) NOT NULL DEFAULT '0',
  `merchid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_creditshop_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_option
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_option`;
CREATE TABLE `ims_ewei_shop_creditshop_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `goodsid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `thumb` varchar(60) DEFAULT '',
  `credit` int(10) NOT NULL DEFAULT '0',
  `money` decimal(10,2) DEFAULT '0.00',
  `total` int(11) DEFAULT '0',
  `weight` decimal(10,2) DEFAULT '0.00',
  `displayorder` int(11) DEFAULT '0',
  `specs` text,
  `skuId` varchar(255) DEFAULT '',
  `goodssn` varchar(255) DEFAULT '',
  `productsn` varchar(255) DEFAULT '',
  `virtual` int(11) DEFAULT '0',
  `exchange_stock` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_creditshop_option
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_spec
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_spec`;
CREATE TABLE `ims_ewei_shop_creditshop_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `goodsid` int(11) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `description` varchar(1000) DEFAULT '',
  `displaytype` tinyint(3) DEFAULT '0',
  `content` text,
  `displayorder` int(11) DEFAULT '0',
  `propId` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_creditshop_spec
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_spec_item
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_spec_item`;
CREATE TABLE `ims_ewei_shop_creditshop_spec_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `specid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `show` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `valueId` varchar(255) DEFAULT '',
  `virtual` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_creditshop_spec_item
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_verify
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_verify`;
CREATE TABLE `ims_ewei_shop_creditshop_verify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(45) DEFAULT '0',
  `logid` int(11) DEFAULT '0',
  `verifycode` varchar(45) DEFAULT NULL,
  `storeid` int(11) DEFAULT '0',
  `verifier` varchar(45) DEFAULT '0',
  `isverify` tinyint(3) DEFAULT '0',
  `verifytime` int(11) DEFAULT '0',
  `merchid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_creditshop_verify
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_customer
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_customer`;
CREATE TABLE `ims_ewei_shop_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `kf_id` varchar(255) DEFAULT NULL,
  `kf_account` varchar(255) DEFAULT '',
  `kf_nick` varchar(255) DEFAULT '',
  `kf_pwd` varchar(255) DEFAULT '',
  `kf_headimgurl` varchar(255) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_customer
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_customer_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_customer_category`;
CREATE TABLE `ims_ewei_shop_customer_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_customer_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_customer_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_customer_guestbook`;
CREATE TABLE `ims_ewei_shop_customer_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `realname` varchar(11) DEFAULT '',
  `mobile` varchar(255) DEFAULT '',
  `weixin` varchar(255) DEFAULT '',
  `images` text,
  `content` text,
  `remark` text,
  `status` tinyint(3) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `deleted` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_customer_guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_customer_robot
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_customer_robot`;
CREATE TABLE `ims_ewei_shop_customer_robot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `cate` int(11) DEFAULT '0',
  `keywords` varchar(500) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `content` longtext,
  `url` varchar(255) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_cate` (`cate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_customer_robot
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_designer
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_designer`;
CREATE TABLE `ims_ewei_shop_designer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `pagename` varchar(255) NOT NULL DEFAULT '',
  `pagetype` tinyint(3) NOT NULL DEFAULT '0',
  `pageinfo` text NOT NULL,
  `createtime` varchar(255) NOT NULL DEFAULT '',
  `keyword` varchar(255) DEFAULT '',
  `savetime` varchar(255) NOT NULL DEFAULT '',
  `setdefault` tinyint(3) NOT NULL DEFAULT '0',
  `datas` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_pagetype` (`pagetype`),
  KEY `idx_keyword` (`keyword`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_designer
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_designer_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_designer_menu`;
CREATE TABLE `ims_ewei_shop_designer_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `menuname` varchar(255) DEFAULT '',
  `isdefault` tinyint(3) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `menus` text,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_isdefault` (`isdefault`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_designer_menu
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_dispatch
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_dispatch`;
CREATE TABLE `ims_ewei_shop_dispatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `dispatchname` varchar(50) DEFAULT '',
  `dispatchtype` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `firstprice` decimal(10,2) DEFAULT '0.00',
  `secondprice` decimal(10,2) DEFAULT '0.00',
  `firstweight` int(11) DEFAULT '0',
  `secondweight` int(11) DEFAULT '0',
  `express` varchar(250) DEFAULT '',
  `areas` text,
  `carriers` text,
  `enabled` int(11) DEFAULT '0',
  `calculatetype` tinyint(1) DEFAULT '0',
  `firstnum` int(11) DEFAULT '0',
  `secondnum` int(11) DEFAULT '0',
  `firstnumprice` decimal(10,2) DEFAULT '0.00',
  `secondnumprice` decimal(10,2) DEFAULT '0.00',
  `isdefault` tinyint(1) DEFAULT '0',
  `shopid` int(11) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  `nodispatchareas` text,
  `nodispatchareas_code` text NOT NULL,
  `isdispatcharea` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_dispatch
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_diyform_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diyform_category`;
CREATE TABLE `ims_ewei_shop_diyform_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_diyform_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_diyform_data
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diyform_data`;
CREATE TABLE `ims_ewei_shop_diyform_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `typeid` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) DEFAULT '0',
  `diyformfields` text,
  `fields` text NOT NULL,
  `openid` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_typeid` (`typeid`),
  KEY `idx_cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_diyform_data
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_diyform_temp
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diyform_temp`;
CREATE TABLE `ims_ewei_shop_diyform_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `typeid` int(11) DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  `diyformfields` text,
  `fields` text NOT NULL,
  `openid` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) DEFAULT '0',
  `diyformid` int(11) DEFAULT '0',
  `diyformdata` text,
  `carrier_realname` varchar(255) DEFAULT '',
  `carrier_mobile` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_diyform_temp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_diyform_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diyform_type`;
CREATE TABLE `ims_ewei_shop_diyform_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `cate` int(11) DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `fields` text NOT NULL,
  `usedata` int(11) NOT NULL DEFAULT '0',
  `alldata` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_cate` (`cate`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_diyform_type
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_diypage
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diypage`;
CREATE TABLE `ims_ewei_shop_diypage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT '0',
  `lastedittime` int(11) NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `diymenu` int(11) NOT NULL DEFAULT '0',
  `merch` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_type` (`type`),
  KEY `idx_keyword` (`keyword`),
  KEY `idx_lastedittime` (`lastedittime`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_diypage
-- ----------------------------
INSERT INTO `ims_ewei_shop_diypage` VALUES ('19', '3', '2', '千叶商城', 'eyJwYWdlIjp7InR5cGUiOiIyIiwidGl0bGUiOiJcdTUzNDNcdTUzZjZcdTU1NDZcdTU3Y2UiLCJuYW1lIjoiXHU1MzQzXHU1M2Y2XHU1NTQ2XHU1N2NlIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiMCIsImRpeWdvdG9wIjoiMSIsImRpeWxheWVyIjoiMCIsInZpc2l0bGV2ZWwiOnsibWVtYmVyIjpbXSwiY29tbWlzc2lvbiI6W119LCJub3Zpc2l0Ijp7InRpdGxlIjpbXSwibGluayI6W119fSwiaXRlbXMiOnsiTTE0NjU4MDI5ODQ4ODUiOnsic3R5bGUiOnsiZG90c3R5bGUiOiJyb3VuZCIsImRvdGFsaWduIjoiY2VudGVyIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJsZWZ0cmlnaHQiOiI1IiwiYm90dG9tIjoiMTAiLCJvcGFjaXR5IjoiMC44In0sImRhdGEiOnsiQzE0NjU4MDI5ODQ4ODUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL2Jhbm5lcl8xLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MDI5ODQ4ODYiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL2Jhbm5lcl8yLmpwZyIsImxpbmt1cmwiOiIifSwiTTE0NjU4MDMwMTQ4MzciOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL2Jhbm5lcl8zLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoiYmFubmVyIn0sIk0xNDY1ODAzNjkyOTMyIjp7InN0eWxlIjp7ImhlaWdodCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYifSwiaWQiOiJibGFuayJ9LCJNMTQ2NTgwMzMxOTg1MyI6eyJzdHlsZSI6eyJuYXZzdHlsZSI6IiIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwicm93bnVtIjoiNSJ9LCJkYXRhIjp7IkMxNDY1ODAzMzE5ODUzIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9tZW51XzEucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTY1YjBcdTU0YzEiLCJjb2xvciI6IiM2NjY2NjYifSwiQzE0NjU4MDMzMTk4NTQiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL21lbnVfMi5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NzBlZFx1NTM1NiIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ2NTgwMzMxOTg1NSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MVwvbWVudV8zLnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiXHU0ZmMzXHU5NTAwIiwiY29sb3IiOiIjNjY2NjY2In0sIkMxNDY1ODAzMzE5ODU2Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9tZW51XzQucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdThiYTJcdTUzNTUiLCJjb2xvciI6IiM2NjY2NjYifSwiTTE0NjU4MDMzNDcwNDUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL21lbnVfNS5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1N2I3ZVx1NTIzMCIsImNvbG9yIjoiIzY2NjY2NiJ9fSwiaWQiOiJtZW51In0sIk0xNDY1ODAzMzU5MTAwIjp7InN0eWxlIjp7Im5hdnN0eWxlIjoiIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJyb3dudW0iOiI1In0sImRhdGEiOnsiQzE0NjU4MDMzNTkxMDAiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL21lbnVfNi5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NGUwYVx1ODg2MyIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ2NTgwMzM1OTEwMSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MVwvbWVudV83LnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiXHU0ZTBiXHU4ODYzIiwiY29sb3IiOiIjNjY2NjY2In0sIkMxNDY1ODAzMzU5MTAyIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9tZW51XzgucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTk3OGJcdTViNTAiLCJjb2xvciI6IiM2NjY2NjYifSwiQzE0NjU4MDMzNTkxMDMiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL21lbnVfOS5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NTE4NVx1ODg2MyIsImNvbG9yIjoiIzY2NjY2NiJ9LCJNMTQ2NTgwMzQ1MDgyNyI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MVwvbWVudV8xMC5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NTE2OFx1OTBlOCIsImNvbG9yIjoiIzY2NjY2NiJ9fSwiaWQiOiJtZW51In0sIk0xNDY1ODAzNzAwMTMyIjp7InN0eWxlIjp7ImhlaWdodCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYifSwiaWQiOiJibGFuayJ9LCJNMTQ2NTgwMzYyMTk4MCI6eyJwYXJhbXMiOnsiaWNvbnVybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9zdGF0aWNcL2ltYWdlc1wvaG90ZG90LmpwZyIsIm5vdGljZWRhdGEiOiIxIiwic3BlZWQiOiI0Iiwibm90aWNlbnVtIjoiNSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImljb25jb2xvciI6IiNmZDU0NTQiLCJjb2xvciI6IiM2NjY2NjYifSwiZGF0YSI6eyJDMTQ2NTgwMzYyMTk4MCI6eyJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1N2IyY1x1NGUwMFx1Njc2MVx1ODFlYVx1NWI5YVx1NGU0OVx1NTE2Y1x1NTQ0YVx1NzY4NFx1NjgwN1x1OTg5OCIsImxpbmt1cmwiOiJodHRwOlwvXC93d3cuYmFpZHUuY29tIn0sIkMxNDY1ODAzNjIxOTgxIjp7InRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU3YjJjXHU0ZThjXHU2NzYxXHU4MWVhXHU1YjlhXHU0ZTQ5XHU1MTZjXHU1NDRhXHU3Njg0XHU2ODA3XHU5ODk4IiwibGlua3VybCI6Imh0dHA6XC9cL3d3dy5iYWlkdS5jb20ifX0sImlkIjoibm90aWNlIn0sIk0xNDY1ODAzOTMyNDYwIjp7InBhcmFtcyI6eyJyb3ciOiIyIn0sImRhdGEiOnsiQzE0NjU4MDM5MzI0NjAiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL3BpY3R1cmV3XzEuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgwMzkzMjQ2MyI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MVwvcGljdHVyZXdfMi5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmV3Iiwic3R5bGUiOnsicGFkZGluZ3RvcCI6IjE2IiwicGFkZGluZ2xlZnQiOiI0In19LCJNMTQ5NDEzNjg0MDY0MiI6eyJwYXJhbXMiOnsiY291cG9uc3R5bGUiOiIzIn0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwibWFyZ2ludG9wIjoiMTAiLCJtYXJnaW5sZWZ0IjoiNSJ9LCJkYXRhIjp7IkMxNDk0MTM2ODQwNjQyIjp7Im5hbWUiOiJcdTRmMThcdTYwZTBcdTUyMzhcdTU0MGRcdTc5ZjAiLCJkZXNjIjoiXHU2ZWUxMTAwXHU1MTQzXHU1M2VmXHU3NTI4IiwicHJpY2UiOiJcdWZmZTU4OS45MCIsImNvdXBvbmlkIjoiIiwiYmFja2dyb3VuZCI6IiNmZmVhZWMiLCJib3JkZXJjb2xvciI6IiNmZjkzYjIiLCJ0ZXh0Y29sb3IiOiIjZmE1MjYyIn0sIkMxNDk0MTM2ODQwNjQzIjp7Im5hbWUiOiJcdTRmMThcdTYwZTBcdTUyMzhcdTU0MGRcdTc5ZjAiLCJkZXNjIjoiXHU2ZWUxMTAwXHU1MTQzXHU1M2VmXHU3NTI4IiwicHJpY2UiOiJcdWZmZTU4OS45MCIsImNvdXBvbmlkIjoiIiwiYmFja2dyb3VuZCI6IiNmM2ZmZWYiLCJib3JkZXJjb2xvciI6IiM5OGUyN2YiLCJ0ZXh0Y29sb3IiOiIjN2FjZjhkIn0sIkMxNDk0MTM2ODQwNjQ0Ijp7Im5hbWUiOiJcdTRmMThcdTYwZTBcdTUyMzhcdTU0MGRcdTc5ZjAiLCJkZXNjIjoiXHU2ZWUxMTAwXHU1MTQzXHU1M2VmXHU3NTI4IiwicHJpY2UiOiJcdWZmZTU4OS45MCIsImNvdXBvbmlkIjoiIiwiYmFja2dyb3VuZCI6IiNmZmVhZTMiLCJib3JkZXJjb2xvciI6IiNmZmE0OTIiLCJ0ZXh0Y29sb3IiOiIjZmY5NjY0In19LCJpZCI6ImNvdXBvbiJ9LCJNMTQ2NTgwNDAyNTUwOCI6eyJwYXJhbXMiOnsidGl0bGUiOiJcdTY1YjBcdTU0YzFcdTRlMGFcdTVlMDIiLCJpY29uIjoiaWNvbi1uZXcifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJjb2xvciI6IiNmMDYyOTIiLCJ0ZXh0YWxpZ24iOiJjZW50ZXIiLCJmb250c2l6ZSI6IjE4IiwicGFkZGluZ3RvcCI6IjUiLCJwYWRkaW5nbGVmdCI6IjUifSwiaWQiOiJ0aXRsZSJ9LCJNMTQ5NDEzNzAyMzg1OCI6eyJzdHlsZSI6eyJkb3RzdHlsZSI6InJlY3RhbmdsZSIsImRvdGFsaWduIjoibGVmdCIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwibGVmdHJpZ2h0IjoiNSIsImJvdHRvbSI6IjUiLCJvcGFjaXR5IjoiMC44In0sImRhdGEiOnsiQzE0OTQxMzcwMjM4NTgiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2Jhbm5lci0xLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0OTQxMzcwMjM4NTkiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2Jhbm5lci0yLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoiYmFubmVyIn0sIk0xNDY1ODEzMzY4MDg1Ijp7InBhcmFtcyI6eyJzaG93dGl0bGUiOiIxIiwic2hvd3ByaWNlIjoiMSIsImdvb2RzZGF0YSI6IjAiLCJjYXRlaWQiOiIiLCJjYXRlbmFtZSI6IiIsImdyb3VwaWQiOiIiLCJncm91cG5hbWUiOiIiLCJnb29kc3NvcnQiOiIwIiwiZ29vZHNudW0iOiI2Iiwic2hvd2ljb24iOiIwIiwiaWNvbnBvc2l0aW9uIjoibGVmdCB0b3AifSwic3R5bGUiOnsibGlzdHN0eWxlIjoiYmxvY2siLCJidXlzdHlsZSI6ImJ1eWJ0bi0xIiwiZ29vZHNpY29uIjoicmVjb21tYW5kIiwicHJpY2Vjb2xvciI6IiNlZDI4MjIiLCJpY29ucGFkZGluZ3RvcCI6IjAiLCJpY29ucGFkZGluZ2xlZnQiOiIwIiwiYnV5YnRuY29sb3IiOiIjZmU1NDU1IiwiaWNvbnpvb20iOiIxMDAiLCJ0aXRsZWNvbG9yIjoiIzI2MjYyNiJ9LCJkYXRhIjp7IkMxMzI1NjA3MDUxIjp7InRodW1iIjoiaW1hZ2VzXC8zXC8yMDE3XC8wNVwvTDRaRGVLMWVNWmQ4MlY3NWU0U01lZVoyWGVtSzFzMWQuanBnIiwidGl0bGUiOiJIRU5SWU1BS0VSIFx1NjYyNVx1NTkwZlx1NWI2M1x1NzZhZVx1OTc4Ylx1NzUzN1x1NThlYlx1NzcxZlx1NzZhZVx1NTU0Nlx1NTJhMVx1NGYxMVx1OTVmMlx1OTc4Ylx1NjhjOVx1OTc4Ylx1NzUzN1x1OTc4Ylx1ODJmMVx1NGYyNlx1N2NmYlx1NWUyNlx1OTc4Ylx1NWI1MFx1NzUzN1x1NmI2M1x1ODhjNSBITTM2NjUgXHU5ZWQxXHU4MjcyIDQxIiwicHJpY2UiOiIxMzkuMDAiLCJnaWQiOiIyNTAiLCJ0b3RhbCI6IjEwIiwiYmFyZ2FpbiI6IjAiLCJwcm9kdWN0cHJpY2UiOiIwLjAwIiwiY3JlZGl0IjpudWxsLCJjdHlwZSI6bnVsbCwiZ3R5cGUiOm51bGwsInNhbGVzIjowfSwiQzExMDQ1MTg2MjQiOnsidGh1bWIiOiJpbWFnZXNcLzNcLzIwMTdcLzA1XC9hNXBDMjY3RzYzejFXbDVkNjFOUjcxdDdEQzgxbTExRy5qcGciLCJ0aXRsZSI6Ilplcm9cdTk2ZjZcdTVlYTZcdTc2YWVcdTk3OGIgXHU3NTM3XHU2NzdmXHU5NzhiXHU3NzFmXHU3NmFlXHU1NTQ2XHU1MmExXHU0ZjExXHU5NWYyXHU5NzhiXHU5MDBmXHU2YzE0XHU3NTM3XHU5NzhiXHU4MmYxXHU0ZjI2XHU1YzBmXHU3NjdkXHU5NzhiXHU5NTQyXHU3YTdhXHU1OTBmXHU1YjYzXHU1MzU1XHU5NzhiXHU3NTM3XHU5YTdlXHU4ZjY2XHU5NzhiIFI3MTA0MiBcdTllZDFcdTgyNzItXHU1OTU3XHU4MTFhIDQwKFx1NTA0Zlx1NTkyN1x1NGUwMFx1NzgwMSkiLCJwcmljZSI6IjY1OS4wMCIsImdpZCI6IjIzNyIsInRvdGFsIjoiMTAiLCJiYXJnYWluIjoiMCIsInByb2R1Y3RwcmljZSI6IjAuMDAiLCJjcmVkaXQiOm51bGwsImN0eXBlIjpudWxsLCJndHlwZSI6bnVsbCwic2FsZXMiOjB9LCJDMTI3MDIxOTE4OCI6eyJ0aHVtYiI6ImltYWdlc1wvM1wvMjAxN1wvMDVcL0ZUTDU5NzU1VEhJNUJTUjV0S2NVM0JvblFITDJ5SU41LmpwZyIsInRpdGxlIjoiXHU0ZTAzXHU1MzM5XHU3MmZjXHVmZjA4U0VQVFdPTFZFU1x1ZmYwOVx1NzUzN1x1NThlYlx1NTU0Nlx1NTJhMVx1NmI2M1x1ODhjNVx1OTc4Ylx1N2NmYlx1NWUyNlx1NzZhZVx1OTc4YiBcdTllZDFcdTgyNzIgNDAiLCJwcmljZSI6IjI1OC4wMCIsImdpZCI6IjIyOSIsInRvdGFsIjoiMTAiLCJiYXJnYWluIjoiMCIsInByb2R1Y3RwcmljZSI6IjAuMDAiLCJjcmVkaXQiOm51bGwsImN0eXBlIjpudWxsLCJndHlwZSI6bnVsbCwic2FsZXMiOjB9LCJDMTE3OTc3OTA0MiI6eyJ0aHVtYiI6ImltYWdlc1wvM1wvMjAxN1wvMDVcL0dWQjZHV1o2Yndkc3pGVlp2MzZsT1k2QkhEM0g3QmY3LmpwZyIsInRpdGxlIjoiXHU2MTBmXHU1MjI5XHU4MjM5XHU5NTdmIFx1NzUzN1x1NThlYlx1NzZhZVx1OTc4Ylx1NmI2M1x1ODhjNVx1NzUzN1x1NThlYlx1NGYxMVx1OTVmMlx1OTc4Ylx1NzUzN1x1OTc4Ylx1NTU0Nlx1NTJhMVx1NGYxMVx1OTVmMlx1NzZhZVx1OTc4YjE2NjMgUy0xNjYzXHU5ZWQxXHU4MjcyIDQxIiwicHJpY2UiOiIxMzkuMDAiLCJnaWQiOiIyMzAiLCJ0b3RhbCI6IjEwIiwiYmFyZ2FpbiI6IjAiLCJwcm9kdWN0cHJpY2UiOiIwLjAwIiwiY3JlZGl0IjpudWxsLCJjdHlwZSI6bnVsbCwiZ3R5cGUiOm51bGwsInNhbGVzIjowfX0sImlkIjoiZ29vZHMifSwiTTE0NjU4MDU4MjEwNjciOnsicGFyYW1zIjp7InRpdGxlIjoiXHU3MGVkXHU1MzU2XHU1NTQ2XHU1NGMxIiwiaWNvbiI6Imljb24taG90In0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwiY29sb3IiOiIjZmFjMDQyIiwidGV4dGFsaWduIjoiY2VudGVyIiwiZm9udHNpemUiOiIxOCIsInBhZGRpbmd0b3AiOiI1IiwicGFkZGluZ2xlZnQiOiI1In0sImlkIjoidGl0bGUifSwiTTE0OTQxMzY4NzA1ODciOnsic3R5bGUiOnsicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifSwiZGF0YSI6eyJDMTQ5NDEzNjg3MDU4NyI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvYmFubmVyLTEuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJlIn0sIk0xNDY1ODEzMzc2ODkyIjp7InBhcmFtcyI6eyJzaG93dGl0bGUiOiIxIiwic2hvd3ByaWNlIjoiMSIsImdvb2RzZGF0YSI6IjAiLCJjYXRlaWQiOiIiLCJjYXRlbmFtZSI6IiIsImdyb3VwaWQiOiIiLCJncm91cG5hbWUiOiIiLCJnb29kc3NvcnQiOiIwIiwiZ29vZHNudW0iOiI2Iiwic2hvd2ljb24iOiIxIiwiaWNvbnBvc2l0aW9uIjoibGVmdCB0b3AifSwic3R5bGUiOnsibGlzdHN0eWxlIjoiYmxvY2siLCJidXlzdHlsZSI6ImJ1eWJ0bi0xIiwiZ29vZHNpY29uIjoicmVjb21tYW5kIiwicHJpY2Vjb2xvciI6IiNlZDI4MjIiLCJpY29ucGFkZGluZ3RvcCI6IjAiLCJpY29ucGFkZGluZ2xlZnQiOiIwIiwiYnV5YnRuY29sb3IiOiIjZmU1NDU1IiwiaWNvbnpvb20iOiIxMDAiLCJ0aXRsZWNvbG9yIjoiIzI2MjYyNiJ9LCJkYXRhIjp7IkMxMTgyNTk0NzM3Ijp7InRodW1iIjoiaW1hZ2VzXC8zXC8yMDE3XC8wNVwvbXdLS01tWHlONlpwVTZ4WVhFa2VSMEt4UGRtMDRLeTYuanBnIiwidGl0bGUiOiJneGcgamVhbnNcdTc1MzdcdTg4YzUgXHU1OTBmXHU1YjYzXHU2NWIwXHU1NGMxXHU1YjU3XHU2YmNkXHU1MzcwXHU4MmIxXHU1NzA2XHU5ODg2XHU3N2VkXHU4ODk2VFx1NjA2NFx1NzUzNyMxNzI5NDQwMDIgXHU3NjdkXHU4MjcyIExcLzE3NVx1MzAxMFx1OTg4NFx1NTUyZTUuMTlcdTUzZDFcdThkMjdcdTMwMTEiLCJwcmljZSI6IjIyOS4wMCIsImdpZCI6IjIwNSIsInRvdGFsIjoiMTAiLCJiYXJnYWluIjoiMCIsInByb2R1Y3RwcmljZSI6IjAuMDAiLCJjcmVkaXQiOm51bGwsImN0eXBlIjpudWxsLCJndHlwZSI6bnVsbCwic2FsZXMiOjB9LCJDMTEyNDI5MTA2NSI6eyJ0aHVtYiI6ImltYWdlc1wvM1wvMjAxN1wvMDVcL0dDMmU1blNQTkVTd1d6QzFjZVFFWjJiZk1tcDFiNUM3LmpwZyIsInRpdGxlIjoiXHU0ZTBlXHU3MmZjXHU1MTcxXHU4MjFlXHU3N2VkXHU4ODk2VFx1NjA2NFx1NzUzN1x1NThlYjIwMTdcdTU5MGZcdTg4YzVcdTY1YjBcdTZiM2VcdTdlYWZcdTY4YzlcdTU5MWFcdTVmNjlcdTdmZmJcdTk4ODZcdTdlYWZcdTgyNzJ0XHU2MDY0XHU2MjUzXHU1ZTk1XHU4ODZiIFx1NzUzN1x1ODhjNTY2NTIgXHU4NWNmXHU5NzUyXHU4MjcyIDE3NVwvOTJBKFhMKSIsInByaWNlIjoiMTQ5LjAwIiwiZ2lkIjoiMjA0IiwidG90YWwiOiIxMCIsImJhcmdhaW4iOiIwIiwicHJvZHVjdHByaWNlIjoiMC4wMCIsImNyZWRpdCI6bnVsbCwiY3R5cGUiOm51bGwsImd0eXBlIjpudWxsLCJzYWxlcyI6MH0sIkMxMjk4MjAwOTQ2Ijp7InRodW1iIjoiaW1hZ2VzXC8zXC8yMDE3XC8wNVwvRTFhMjI1enFSMTJoMlpiejcyNzEycTExTTJMMDcxTDIuanBnIiwidGl0bGUiOiJcdTRlMDNcdTUzMzlcdTcyZmNcdTc3ZWRcdTg4OTZUXHU2MDY0XHU3NTM3XHU1OGViXHU1NzA2XHU5ODg2MjAxN1x1NjViMFx1NmIzZVx1ODNhYlx1NGVlM1x1NWMxNFx1OTc2Mlx1NjU5OVx1N2VhZlx1ODI3Mlx1NGYxMVx1OTVmMlx1NjI1M1x1NWU5NVRcdTYwNjRcdTg4NmJcdTc1MzdcdTg4YzUgMDAxXHU5ZWQxXHU4MjcyIDE3NVwvOTJBXC94bCIsInByaWNlIjoiMTM5LjAwIiwiZ2lkIjoiMjAzIiwidG90YWwiOiIxMCIsImJhcmdhaW4iOiIwIiwicHJvZHVjdHByaWNlIjoiMC4wMCIsImNyZWRpdCI6bnVsbCwiY3R5cGUiOm51bGwsImd0eXBlIjpudWxsLCJzYWxlcyI6MH0sIkMxMTc5OTI5MjEyIjp7InRodW1iIjoiaW1hZ2VzXC8zXC8yMDE3XC8wNVwvWTB0bDlCTk5wNlo2MGN6dFRzblp6bmc5MFB0TjA2dHMuanBnIiwidGl0bGUiOiJcdTgyYjFcdTgyYjFcdTUxNmNcdTViNTAgXHU3N2VkXHU4ODk2dFx1NjA2NFx1NzUzNyAyMDE3XHU1OTBmXHU4OGM1XHU2NWIwXHU2YjNlXHU1NTQ2XHU1MmExXHU0ZjExXHU5NWYyXHU2NWY2XHU1YzFhXHU3ZmZiXHU5ODg2XHU3ZWFmXHU4MjcyXHU3ZWFmXHU2OGM5VFx1NjA2NCBUMzYxXHU4NWNmXHU5NzUyXHU4MjcyIDE4MFwvWEwiLCJwcmljZSI6Ijk5LjAwIiwiZ2lkIjoiMjAyIiwidG90YWwiOiIxMCIsImJhcmdhaW4iOiIwIiwicHJvZHVjdHByaWNlIjoiMC4wMCIsImNyZWRpdCI6bnVsbCwiY3R5cGUiOm51bGwsImd0eXBlIjpudWxsLCJzYWxlcyI6MH19LCJpZCI6Imdvb2RzIn19fQ==', '1494136719', '1494137267', '', '0', '0');

-- ----------------------------
-- Table structure for ims_ewei_shop_diypage_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diypage_menu`;
CREATE TABLE `ims_ewei_shop_diypage_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT '0',
  `lastedittime` int(11) NOT NULL DEFAULT '0',
  `merch` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_lastedittime` (`lastedittime`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_diypage_menu
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_diypage_template
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diypage_template`;
CREATE TABLE `ims_ewei_shop_diypage_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  `preview` varchar(255) NOT NULL DEFAULT '',
  `tplid` int(11) DEFAULT '0',
  `cate` int(11) DEFAULT '0',
  `deleted` tinyint(3) DEFAULT '0',
  `merch` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_type` (`type`),
  KEY `idx_cate` (`cate`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_diypage_template
-- ----------------------------
INSERT INTO `ims_ewei_shop_diypage_template` VALUES ('1', '0', '2', '系统模板01', 'eyJwYWdlIjp7InR5cGUiOiIyIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMSIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMSIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODAyOTg0ODg1Ijp7InN0eWxlIjp7ImRvdHN0eWxlIjoicm91bmQiLCJkb3RhbGlnbiI6ImNlbnRlciIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwibGVmdHJpZ2h0IjoiNSIsImJvdHRvbSI6IjEwIiwib3BhY2l0eSI6IjAuOCJ9LCJkYXRhIjp7IkMxNDY1ODAyOTg0ODg1Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9iYW5uZXJfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODAyOTg0ODg2Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9iYW5uZXJfMi5qcGciLCJsaW5rdXJsIjoiIn0sIk0xNDY1ODAzMDE0ODM3Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9iYW5uZXJfMy5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6ImJhbm5lciJ9LCJNMTQ2NTgwMzY5MjkzMiI6eyJzdHlsZSI6eyJoZWlnaHQiOiIxMCIsImJhY2tncm91bmQiOiIjZmZmZmZmIn0sImlkIjoiYmxhbmsifSwiTTE0NjU4MDMzMTk4NTMiOnsic3R5bGUiOnsibmF2c3R5bGUiOiIiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInJvd251bSI6IjUifSwiZGF0YSI6eyJDMTQ2NTgwMzMxOTg1MyI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MVwvbWVudV8xLnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiXHU2NWIwXHU1NGMxIiwiY29sb3IiOiIjNjY2NjY2In0sIkMxNDY1ODAzMzE5ODU0Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9tZW51XzIucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTcwZWRcdTUzNTYiLCJjb2xvciI6IiM2NjY2NjYifSwiQzE0NjU4MDMzMTk4NTUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL21lbnVfMy5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NGZjM1x1OTUwMCIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ2NTgwMzMxOTg1NiI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MVwvbWVudV80LnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiXHU4YmEyXHU1MzU1IiwiY29sb3IiOiIjNjY2NjY2In0sIk0xNDY1ODAzMzQ3MDQ1Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9tZW51XzUucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTdiN2VcdTUyMzAiLCJjb2xvciI6IiM2NjY2NjYifX0sImlkIjoibWVudSJ9LCJNMTQ2NTgwMzM1OTEwMCI6eyJzdHlsZSI6eyJuYXZzdHlsZSI6IiIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwicm93bnVtIjoiNSJ9LCJkYXRhIjp7IkMxNDY1ODAzMzU5MTAwIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9tZW51XzYucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTRlMGFcdTg4NjMiLCJjb2xvciI6IiM2NjY2NjYifSwiQzE0NjU4MDMzNTkxMDEiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL21lbnVfNy5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NGUwYlx1ODg2MyIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ2NTgwMzM1OTEwMiI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MVwvbWVudV84LnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiXHU5NzhiXHU1YjUwIiwiY29sb3IiOiIjNjY2NjY2In0sIkMxNDY1ODAzMzU5MTAzIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9tZW51XzkucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTUxODVcdTg4NjMiLCJjb2xvciI6IiM2NjY2NjYifSwiTTE0NjU4MDM0NTA4MjciOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL21lbnVfMTAucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTUxNjhcdTkwZTgiLCJjb2xvciI6IiM2NjY2NjYifX0sImlkIjoibWVudSJ9LCJNMTQ2NTgwMzcwMDEzMiI6eyJzdHlsZSI6eyJoZWlnaHQiOiIxMCIsImJhY2tncm91bmQiOiIjZmZmZmZmIn0sImlkIjoiYmxhbmsifSwiTTE0NjU4MDM2MjE5ODAiOnsicGFyYW1zIjp7Imljb251cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2Mlwvc3RhdGljXC9pbWFnZXNcL2hvdGRvdC5qcGciLCJub3RpY2VkYXRhIjoiMSIsInNwZWVkIjoiNCIsIm5vdGljZW51bSI6IjUifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJpY29uY29sb3IiOiIjZmQ1NDU0IiwiY29sb3IiOiIjNjY2NjY2In0sImRhdGEiOnsiQzE0NjU4MDM2MjE5ODAiOnsidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTdiMmNcdTRlMDBcdTY3NjFcdTgxZWFcdTViOWFcdTRlNDlcdTUxNmNcdTU0NGFcdTc2ODRcdTY4MDdcdTk4OTgiLCJsaW5rdXJsIjoiaHR0cDpcL1wvd3d3LmJhaWR1LmNvbSJ9LCJDMTQ2NTgwMzYyMTk4MSI6eyJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1N2IyY1x1NGU4Y1x1Njc2MVx1ODFlYVx1NWI5YVx1NGU0OVx1NTE2Y1x1NTQ0YVx1NzY4NFx1NjgwN1x1OTg5OCIsImxpbmt1cmwiOiJodHRwOlwvXC93d3cuYmFpZHUuY29tIn19LCJpZCI6Im5vdGljZSJ9LCJNMTQ2NTgwMzkzMjQ2MCI6eyJwYXJhbXMiOnsicm93IjoiMiJ9LCJkYXRhIjp7IkMxNDY1ODAzOTMyNDYwIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9waWN0dXJld18xLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MDM5MzI0NjMiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL3BpY3R1cmV3XzIuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJldyIsInN0eWxlIjp7InBhZGRpbmd0b3AiOiIxNiIsInBhZGRpbmdsZWZ0IjoiNCJ9fSwiTTE0NjU4MDQwMjU1MDgiOnsicGFyYW1zIjp7InRpdGxlIjoiXHU2NWIwXHU1NGMxXHU0ZTBhXHU1ZTAyIiwiaWNvbiI6Imljb24tbmV3In0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwiY29sb3IiOiIjZjA2MjkyIiwidGV4dGFsaWduIjoiY2VudGVyIiwiZm9udHNpemUiOiIxOCIsInBhZGRpbmd0b3AiOiI1IiwicGFkZGluZ2xlZnQiOiI1In0sImlkIjoidGl0bGUifSwiTTE0NjU4MTMzNjgwODUiOnsicGFyYW1zIjp7InNob3d0aXRsZSI6IjEiLCJzaG93cHJpY2UiOiIxIiwiZ29vZHNkYXRhIjoiMCIsImNhdGVpZCI6IiIsImNhdGVuYW1lIjoiIiwiZ3JvdXBpZCI6IiIsImdyb3VwbmFtZSI6IiIsImdvb2Rzc29ydCI6IjAiLCJnb29kc251bSI6IjYiLCJzaG93aWNvbiI6IjAiLCJpY29ucG9zaXRpb24iOiJsZWZ0IHRvcCJ9LCJzdHlsZSI6eyJsaXN0c3R5bGUiOiJibG9jayIsImJ1eXN0eWxlIjoiYnV5YnRuLTEiLCJnb29kc2ljb24iOiJyZWNvbW1hbmQiLCJwcmljZWNvbG9yIjoiI2VkMjgyMiIsImljb25wYWRkaW5ndG9wIjoiMCIsImljb25wYWRkaW5nbGVmdCI6IjAiLCJidXlidG5jb2xvciI6IiNmZTU0NTUiLCJpY29uem9vbSI6IjEwMCIsInRpdGxlY29sb3IiOiIjMjYyNjI2In0sImRhdGEiOnsiQzE0NjU4MTMzNjgwODUiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMS5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNjgwODYiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMi5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNjgwODciOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMy5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNjgwODgiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtNC5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifX0sImlkIjoiZ29vZHMifSwiTTE0NjU4MDU4MjEwNjciOnsicGFyYW1zIjp7InRpdGxlIjoiXHU3MGVkXHU1MzU2XHU1NTQ2XHU1NGMxIiwiaWNvbiI6Imljb24taG90In0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwiY29sb3IiOiIjZmFjMDQyIiwidGV4dGFsaWduIjoiY2VudGVyIiwiZm9udHNpemUiOiIxOCIsInBhZGRpbmd0b3AiOiI1IiwicGFkZGluZ2xlZnQiOiI1In0sImlkIjoidGl0bGUifSwiTTE0NjU4MTMzNzY4OTIiOnsicGFyYW1zIjp7InNob3d0aXRsZSI6IjEiLCJzaG93cHJpY2UiOiIxIiwiZ29vZHNkYXRhIjoiMCIsImNhdGVpZCI6IiIsImNhdGVuYW1lIjoiIiwiZ3JvdXBpZCI6IiIsImdyb3VwbmFtZSI6IiIsImdvb2Rzc29ydCI6IjAiLCJnb29kc251bSI6IjYiLCJzaG93aWNvbiI6IjEiLCJpY29ucG9zaXRpb24iOiJsZWZ0IHRvcCJ9LCJzdHlsZSI6eyJsaXN0c3R5bGUiOiJibG9jayIsImJ1eXN0eWxlIjoiYnV5YnRuLTEiLCJnb29kc2ljb24iOiJyZWNvbW1hbmQiLCJwcmljZWNvbG9yIjoiI2VkMjgyMiIsImljb25wYWRkaW5ndG9wIjoiMCIsImljb25wYWRkaW5nbGVmdCI6IjAiLCJidXlidG5jb2xvciI6IiNmZTU0NTUiLCJpY29uem9vbSI6IjEwMCIsInRpdGxlY29sb3IiOiIjMjYyNjI2In0sImRhdGEiOnsiQzE0NjU4MTMzNzY4OTIiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMS5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNzY4OTMiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMi5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNzY4OTQiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMy5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNzY4OTUiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtNC5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifX0sImlkIjoiZ29vZHMifX19', '../addons/ewei_shopv2/plugin/diypage/static/template/default1/preview.jpg', '1', '0', '0', '0');
INSERT INTO `ims_ewei_shop_diypage_template` VALUES ('2', '0', '1', '系统模板02', 'eyJwYWdlIjp7InR5cGUiOiIxIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMiIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMiIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODA4NTU2MDAxIjp7InN0eWxlIjp7ImRvdHN0eWxlIjoicm91bmQiLCJkb3RhbGlnbiI6InJpZ2h0IiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJsZWZ0cmlnaHQiOiIxMCIsImJvdHRvbSI6IjEwIiwib3BhY2l0eSI6IjAuOCJ9LCJkYXRhIjp7IkMxNDY1ODA4NTU2MDAxIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQyXC9iYW5uZXJfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODA4NTU2MDAyIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQyXC9iYW5uZXJfMi5qcGciLCJsaW5rdXJsIjoiIn0sIk0xNDY1ODA4NTc1MTIyIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQyXC9iYW5uZXJfMy5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6ImJhbm5lciJ9LCJNMTQ2NTgwODcwNTA2NCI6eyJzdHlsZSI6eyJoZWlnaHQiOiIyMCIsImJhY2tncm91bmQiOiIjZmZmZmZmIn0sImlkIjoiYmxhbmsifSwiTTE0NjU4MDg2NzMwNDAiOnsicGFyYW1zIjp7InJvdyI6IjIifSwiZGF0YSI6eyJDMTQ2NTgwODY3MzA0MCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MlwvcGljdHVyZXdfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODA4NjczMDQxIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQyXC9waWN0dXJld18yLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoicGljdHVyZXciLCJzdHlsZSI6eyJwYWRkaW5ndG9wIjoiMCIsInBhZGRpbmdsZWZ0IjoiMCJ9fSwiTTE0NjU4MDg3MDkyODAiOnsic3R5bGUiOnsiaGVpZ2h0IjoiMjAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiJ9LCJpZCI6ImJsYW5rIn0sIk0xNDY1ODA4NzY2NTY3Ijp7InBhcmFtcyI6eyJyb3ciOiIyIn0sImRhdGEiOnsiQzE0NjU4MDg3NjY1NzAiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDJcL3BpY3R1cmV3XzMuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgwODc2NjU3MSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MlwvcGljdHVyZXdfNC5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmV3Iiwic3R5bGUiOnsicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODA4NzkxMDcyIjp7InN0eWxlIjp7ImhlaWdodCI6IjIwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYifSwiaWQiOiJibGFuayJ9LCJNMTQ2NTgwODg3MDY4MCI6eyJkYXRhIjp7IkMxNDY1ODA4ODcwNjgwIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQyXC9iYW5uZXJfMy5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmUiLCJzdHlsZSI6eyJwYWRkaW5ndG9wIjoiMCIsInBhZGRpbmdsZWZ0IjoiMCJ9fSwiTTE0NjU4MDkwMTA0MTUiOnsic3R5bGUiOnsiaGVpZ2h0IjoiMjAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiJ9LCJpZCI6ImJsYW5rIn0sIk0xNDY1ODA4OTgxNTk5Ijp7InBhcmFtcyI6eyJyb3ciOiIyIn0sImRhdGEiOnsiQzE0NjU4MDg5ODE1OTkiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDJcL3BpY3R1cmV3XzUuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgwODk4MTYwMCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MlwvcGljdHVyZXdfNi5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmV3Iiwic3R5bGUiOnsicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODg5MzczNTY3Ijp7InBhcmFtcyI6eyJzaG93dGl0bGUiOiIxIiwic2hvd3ByaWNlIjoiMSIsImdvb2RzZGF0YSI6IjAiLCJjYXRlaWQiOiIiLCJjYXRlbmFtZSI6IiIsImdyb3VwaWQiOiIiLCJncm91cG5hbWUiOiIiLCJnb29kc3NvcnQiOiIwIiwiZ29vZHNudW0iOiI2Iiwic2hvd2ljb24iOiIxIiwiaWNvbnBvc2l0aW9uIjoibGVmdCB0b3AifSwic3R5bGUiOnsibGlzdHN0eWxlIjoiYmxvY2siLCJidXlzdHlsZSI6ImJ1eWJ0bi0xIiwiZ29vZHNpY29uIjoicmVjb21tYW5kIiwicHJpY2Vjb2xvciI6IiNlZDI4MjIiLCJpY29ucGFkZGluZ3RvcCI6IjAiLCJpY29ucGFkZGluZ2xlZnQiOiIwIiwiYnV5YnRuY29sb3IiOiIjZmU1NDU1IiwiaWNvbnpvb20iOiIxMDAiLCJ0aXRsZWNvbG9yIjoiIzI2MjYyNiJ9LCJkYXRhIjp7IkMxNDY1ODg5MzczNTY3Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTEuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODg5MzczNTY4Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTIuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODg5MzczNTY5Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTMuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODg5MzczNTcwIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTQuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn19LCJpZCI6Imdvb2RzIn0sIk0xNDY1ODg5Mzc3NDIzIjp7InBhcmFtcyI6eyJjb250ZW50IjoiUEhBZ2MzUjViR1U5SW5SbGVIUXRZV3hwWjI0NklHTmxiblJsY2pzaVB1V2J2dWVKaCthZHBlYTZrT1M2anVlOWtlZTduTys4ak9lSmlPYWRnK1c5a3VXT24rUzluT2lBaGVhSmdPYWNpVHd2Y0Q0PSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInBhZGRpbmciOiIyMCJ9LCJpZCI6InJpY2h0ZXh0In19fQ==', '../addons/ewei_shopv2/plugin/diypage/static/template/default2/preview.jpg', '2', '0', '0', '0');
INSERT INTO `ims_ewei_shop_diypage_template` VALUES ('3', '0', '2', '系统模板03', 'eyJwYWdlIjp7InR5cGUiOiIyIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMyIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMyIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODA5MjQyOTc2Ijp7InN0eWxlIjp7ImRvdHN0eWxlIjoicm91bmQiLCJkb3RhbGlnbiI6ImxlZnQiLCJiYWNrZ3JvdW5kIjoiIzM0YmVkYyIsImxlZnRyaWdodCI6IjEwIiwiYm90dG9tIjoiMTAiLCJvcGFjaXR5IjoiMC43In0sImRhdGEiOnsiQzE0NjU4MDkyNDI5NzYiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDNcL2Jhbm5lcl8xLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MDkyNDI5NzciOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDNcL2Jhbm5lcl8yLmpwZyIsImxpbmt1cmwiOiIifSwiTTE0NjU4MDkyNjU5OTIiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDNcL2Jhbm5lcl8zLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoiYmFubmVyIn0sIk0xNDY1ODA5NTQxNTM1Ijp7InBhcmFtcyI6eyJyb3ciOiIxIn0sImRhdGEiOnsiQzE0NjU4MDk1NDE1MzUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDNcL3BpY3R1cmV3XzEuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgwOTU0MTUzNiI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0M1wvcGljdHVyZXdfMi5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODA5NTQxNTM3Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQzXC9waWN0dXJld18zLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoicGljdHVyZXciLCJzdHlsZSI6eyJwYWRkaW5ndG9wIjoiNSIsInBhZGRpbmdsZWZ0IjoiNSIsImJhY2tncm91bmQiOiIjZmFmYWZhIn19LCJNMTQ2NTgwOTc2MzQxNSI6eyJzdHlsZSI6eyJoZWlnaHQiOiI1IiwiYmFja2dyb3VuZCI6IiNmYWZhZmEifSwiaWQiOiJibGFuayJ9LCJNMTQ2NTgwOTcwOTA0MCI6eyJwYXJhbXMiOnsidGl0bGUiOiJcdTY1YjBcdTU0YzFcdTRlMGFcdTVlMDIiLCJpY29uIjoiaWNvbi1uZXcifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiMyOGMxOTIiLCJjb2xvciI6IiNmZmZmZmYiLCJ0ZXh0YWxpZ24iOiJsZWZ0IiwiZm9udHNpemUiOiIxOCIsInBhZGRpbmd0b3AiOiI1IiwicGFkZGluZ2xlZnQiOiI1In0sImlkIjoidGl0bGUifSwiTTE0NjU4MDk3OTEyMzEiOnsicGFyYW1zIjp7InNob3d0aXRsZSI6IjEiLCJzaG93cHJpY2UiOiIxIiwiZ29vZHNkYXRhIjoiMCIsImNhdGVpZCI6IiIsImNhdGVuYW1lIjoiIiwiZ3JvdXBpZCI6IiIsImdyb3VwbmFtZSI6IiIsImdvb2Rzc29ydCI6IjAiLCJnb29kc251bSI6IjYiLCJzaG93aWNvbiI6IjAiLCJpY29ucG9zaXRpb24iOiJsZWZ0IHRvcCJ9LCJzdHlsZSI6eyJsaXN0c3R5bGUiOiJibG9jayIsImJ1eXN0eWxlIjoiYnV5YnRuLTMiLCJnb29kc2ljb24iOiJyZWNvbW1hbmQiLCJwcmljZWNvbG9yIjoiIzI4YzE5MiIsImljb25wYWRkaW5ndG9wIjoiMCIsImljb25wYWRkaW5nbGVmdCI6IjAiLCJidXlidG5jb2xvciI6IiMyOGMxOGYiLCJpY29uem9vbSI6IjEwMCIsInRpdGxlY29sb3IiOiIjMjhjMTkyIn0sImRhdGEiOnsiQzE0NjU4MDk3OTEyMzEiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMS5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk3OTEyMzIiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMi5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk3OTEyMzMiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMy5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk3OTEyMzQiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtNC5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifX0sImlkIjoiZ29vZHMifSwiTTE0NjU4MDk5NTA4NDciOnsicGFyYW1zIjp7InRpdGxlIjoiXHU2MzhjXHU2N2RjXHU2M2E4XHU4MzUwIiwiaWNvbiI6Imljb24tYXBwcmVjaWF0ZSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmYmQzMyIsImNvbG9yIjoiI2ZmZmZmZiIsInRleHRhbGlnbiI6InJpZ2h0IiwiZm9udHNpemUiOiIxOCIsInBhZGRpbmd0b3AiOiI1IiwicGFkZGluZ2xlZnQiOiI1In0sImlkIjoidGl0bGUifSwiTTE0NjU4MDk5NDMyMzEiOnsicGFyYW1zIjp7InNob3d0aXRsZSI6IjEiLCJzaG93cHJpY2UiOiIxIiwiZ29vZHNkYXRhIjoiMCIsImNhdGVpZCI6IiIsImNhdGVuYW1lIjoiIiwiZ3JvdXBpZCI6IiIsImdyb3VwbmFtZSI6IiIsImdvb2Rzc29ydCI6IjAiLCJnb29kc251bSI6IjYiLCJzaG93aWNvbiI6IjEiLCJpY29ucG9zaXRpb24iOiJsZWZ0IHRvcCJ9LCJzdHlsZSI6eyJsaXN0c3R5bGUiOiJibG9jayIsImJ1eXN0eWxlIjoiYnV5YnRuLTEiLCJnb29kc2ljb24iOiJyZWNvbW1hbmQiLCJwcmljZWNvbG9yIjoiI2VkMjgyMiIsImljb25wYWRkaW5ndG9wIjoiMCIsImljb25wYWRkaW5nbGVmdCI6IjAiLCJidXlidG5jb2xvciI6IiNmZTU0NTUiLCJpY29uem9vbSI6IjEwMCIsInRpdGxlY29sb3IiOiIjMjYyNjI2In0sImRhdGEiOnsiQzE0NjU4MDk5NDMyMzEiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMS5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk5NDMyMzIiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMi5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk5NDMyMzMiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMy5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk5NDMyMzQiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtNC5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifX0sImlkIjoiZ29vZHMifSwiTTE0NjU4MTAwNTk2OTQiOnsicGFyYW1zIjp7ImNvbnRlbnQiOiJQSEFnYzNSNWJHVTlJblJsZUhRdFlXeHBaMjQ2SUdObGJuUmxjanNpUGp4aWNpOCtQQzl3UGp4d0lITjBlV3hsUFNKMFpYaDBMV0ZzYVdkdU9pQmpaVzUwWlhJN0lqN25pWWptbllQbWlZRG1uSWtvWXlsWVdPV1ZodVdmamp3dmNENDhjRDRtYm1KemNEczhZbkl2UGp3dmNEND0ifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYifSwiaWQiOiJyaWNodGV4dCJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/default3/preview.jpg', '3', '0', '0', '0');
INSERT INTO `ims_ewei_shop_diypage_template` VALUES ('4', '0', '1', '系统模板04', 'eyJwYWdlIjp7InR5cGUiOiIxIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNCIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNCIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODEwMzUyODk0Ijp7ImRhdGEiOnsiQzE0NjU4MTAzNTI4OTQiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDRcL3BpY3R1cmVfMS5wbmciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEwMzUyODk1Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ0XC9waWN0dXJlXzIucG5nIiwibGlua3VybCI6IiJ9LCJNMTQ2NTgxMDM3MDM5OSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NFwvcGljdHVyZV8zLnBuZyIsImxpbmt1cmwiOiIifSwiTTE0NjU4MTAzNzE3MDEiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDRcL3BpY3R1cmVfNC5wbmciLCJsaW5rdXJsIjoiIn0sIk0xNDY1ODEwMzcyNzkxIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ0XC9waWN0dXJlXzUucG5nIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJlIiwic3R5bGUiOnsicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODg5OTQ0NzY5Ijp7InBhcmFtcyI6eyJjb250ZW50IjoiUEhBZ2MzUjViR1U5SW5SbGVIUXRZV3hwWjI0NklHTmxiblJsY2pzaVB1V2J2dWVKaCthZHBlYTZrT1M2anVlOWtlZTduTys4ak9lSmlPYWRnK1c5a3VXT24rUzluT2lBaGVhSmdPYWNpVHd2Y0Q0PSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInBhZGRpbmciOiIyMCJ9LCJpZCI6InJpY2h0ZXh0In19fQ==', '../addons/ewei_shopv2/plugin/diypage/static/template/default4/preview.jpg', '4', '0', '0', '0');
INSERT INTO `ims_ewei_shop_diypage_template` VALUES ('5', '0', '2', '系统模板05', 'eyJwYWdlIjp7InR5cGUiOiIyIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNSIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNSIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6InQ1IiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEifSwiaXRlbXMiOnsiTTE0NjU4MTA3NTE4MDciOnsic3R5bGUiOnsiZG90c3R5bGUiOiJyb3VuZCIsImRvdGFsaWduIjoibGVmdCIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwibGVmdHJpZ2h0IjoiMTAiLCJib3R0b20iOiIxMCIsIm9wYWNpdHkiOiIwLjcifSwiZGF0YSI6eyJDMTQ2NTgxMDc1MTgwNyI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvYmFubmVyXzEuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgxMDc1MTgwOCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvYmFubmVyXzIuanBnIiwibGlua3VybCI6IiJ9LCJNMTQ2NTgxMDc2NjQ4NiI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvYmFubmVyXzMuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJiYW5uZXIifSwiTTE0NjU4MTA5NzA0OTQiOnsic3R5bGUiOnsibmF2c3R5bGUiOiIiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInJvd251bSI6IjQifSwiZGF0YSI6eyJDMTQ2NTgxMDk3MDQ5NCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvbWVudV8xLnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiSE9NRSIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ2NTgxMDk3MDQ5NSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvbWVudV8yLnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiTkVXIiwiY29sb3IiOiIjNjY2NjY2In0sIkMxNDY1ODEwOTcwNDk2Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ1XC9tZW51XzMucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJIT1QiLCJjb2xvciI6IiM2NjY2NjYifSwiQzE0NjU4MTA5NzA0OTciOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDVcL21lbnVfNC5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6IkxJU1QiLCJjb2xvciI6IiM2NjY2NjYifX0sImlkIjoibWVudSJ9LCJNMTQ2NTgxMTA5OTI0MCI6eyJwYXJhbXMiOnsicm93IjoiMyJ9LCJkYXRhIjp7IkMxNDY1ODExMDk5MjQwIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ1XC9waWN0dXJld18xLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MTEwOTkyNDEiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDVcL3BpY3R1cmV3XzQuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgxMTA5OTI0MyI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvcGljdHVyZXdfMS5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmV3Iiwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJwYWRkaW5ndG9wIjoiNSIsInBhZGRpbmdsZWZ0IjoiNSJ9fSwiTTE0NjU4MTIzOTAxNzQiOnsicGFyYW1zIjp7InJvdyI6IjIifSwiZGF0YSI6eyJDMTQ2NTgxMjM5MDE3NSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvcGljdHVyZXdfMy5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEyMzkwMTc2Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ1XC9waWN0dXJld18zLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoicGljdHVyZXciLCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInBhZGRpbmd0b3AiOiIwIiwicGFkZGluZ2xlZnQiOiI1In19LCJNMTQ2NTg3MjQ4NTQ4NiI6eyJzdHlsZSI6eyJoZWlnaHQiOiIxMCIsImJhY2tncm91bmQiOiIjZmFmYWZhIn0sImlkIjoiYmxhbmsifSwiTTE0NjU4MTExNzQ5NTgiOnsiZGF0YSI6eyJDMTQ2NTgxMTE3NDk1OSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvcGljdHVyZV8xLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoicGljdHVyZSIsInN0eWxlIjp7InBhZGRpbmd0b3AiOiIwIiwicGFkZGluZ2xlZnQiOiIwIn19LCJNMTQ2NTgxMjQxMTM4MSI6eyJwYXJhbXMiOnsic2hvd3RpdGxlIjoiMSIsInNob3dwcmljZSI6IjEiLCJnb29kc2RhdGEiOiIwIiwiY2F0ZWlkIjoiIiwiY2F0ZW5hbWUiOiIiLCJncm91cGlkIjoiIiwiZ3JvdXBuYW1lIjoiIiwiZ29vZHNzb3J0IjoiMCIsImdvb2RzbnVtIjoiNiIsInNob3dpY29uIjoiMSIsImljb25wb3NpdGlvbiI6ImxlZnQgdG9wIn0sInN0eWxlIjp7Imxpc3RzdHlsZSI6ImJsb2NrIiwiYnV5c3R5bGUiOiJidXlidG4tMSIsImdvb2RzaWNvbiI6InJlY29tbWFuZCIsInByaWNlY29sb3IiOiIjZWQyODIyIiwiaWNvbnBhZGRpbmd0b3AiOiIwIiwiaWNvbnBhZGRpbmdsZWZ0IjoiMCIsImJ1eWJ0bmNvbG9yIjoiI2ZlNTQ1NSIsImljb256b29tIjoiMTAwIiwidGl0bGVjb2xvciI6IiMyNjI2MjYifSwiZGF0YSI6eyJDMTQ2NTgxMjQxMTM4MSI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0xLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjQxMTM4MiI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0yLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjQxMTM4MyI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0zLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjQxMTM4NCI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy00LmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9fSwiaWQiOiJnb29kcyJ9LCJNMTQ2NTgxMjQ2Njg5MyI6eyJwYXJhbXMiOnsiY29udGVudCI6IlBIQWdjM1I1YkdVOUluUmxlSFF0WVd4cFoyNDZJR05sYm5SbGNqc2lQanhpY2k4K1BDOXdQanh3SUhOMGVXeGxQU0owWlhoMExXRnNhV2R1T2lCalpXNTBaWEk3SWo3a3U2WGt1SXJsbTc3bmlZZmxuWWZtbmFYbXVwRGt1bzdudlpIbnU1enZ2SXpuaVlqbW5ZUGx2WkxsanBcL2t2WnpvZ0lYbWlZRG1uSW5qZ0lJOEwzQStQSEErUEdKeUx6NDhMM0ErIn0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIn0sImlkIjoicmljaHRleHQifX19', '../addons/ewei_shopv2/plugin/diypage/static/template/default5/preview.jpg', '5', '0', '0', '0');
INSERT INTO `ims_ewei_shop_diypage_template` VALUES ('6', '0', '1', '系统模板06', 'eyJwYWdlIjp7InR5cGUiOiIxIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNiIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNiIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODEyNjAyOTMzIjp7ImRhdGEiOnsiQzE0NjU4MTI2MDI5MzMiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDZcL3BpY3R1cmVfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEyNjAyOTM0Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ2XC9waWN0dXJlXzIuanBnIiwibGlua3VybCI6IiJ9LCJNMTQ2NTgxMjYwNDQ5NCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NlwvcGljdHVyZV8zLmpwZyIsImxpbmt1cmwiOiIifSwiTTE0NjU4MTI2MDUyNDUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDZcL3BpY3R1cmVfNC5qcGciLCJsaW5rdXJsIjoiIn0sIk0xNDY1ODEyNjA1OTgwIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ2XC9waWN0dXJlXzUuanBnIiwibGlua3VybCI6IiJ9LCJNMTQ2NTgxMjYwNzA0NSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NlwvcGljdHVyZV82LmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoicGljdHVyZSIsInN0eWxlIjp7InBhZGRpbmd0b3AiOiIwIiwicGFkZGluZ2xlZnQiOiIwIn19LCJNMTQ2NTg5MDE4NDY1MCI6eyJwYXJhbXMiOnsiY29udGVudCI6IlBIQWdjM1I1YkdVOUluUmxlSFF0WVd4cFoyNDZJR05sYm5SbGNqc2lQdVdidnVlSmgrYWRwZWE2a09TNmp1ZTlrZWU3bk8rOGpPZUppT2FkZytXOWt1V09uK1M5bk9pQWhlYUpnT2FjaVR3dmNEND0ifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJwYWRkaW5nIjoiMjAifSwiaWQiOiJyaWNodGV4dCJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/default6/preview.jpg', '6', '0', '0', '0');
INSERT INTO `ims_ewei_shop_diypage_template` VALUES ('7', '0', '2', '系统模板07', 'eyJwYWdlIjp7InR5cGUiOiIyIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNyIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNyIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODEyNjkxMzg5Ijp7ImRhdGEiOnsiQzE0NjU4MTI2OTEzODkiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDdcL3BpY3R1cmVfMS5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmUiLCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInBhZGRpbmd0b3AiOiIwIiwicGFkZGluZ2xlZnQiOiIwIn19LCJNMTQ2NTgxMjcyODgyMSI6eyJwYXJhbXMiOnsicGxhY2Vob2xkZXIiOiJcdThiZjdcdThmOTNcdTUxNjVcdTUxNzNcdTk1MmVcdTViNTdcdThmZGJcdTg4NGNcdTY0MWNcdTdkMjIifSwic3R5bGUiOnsiaW5wdXRiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImJhY2tncm91bmQiOiIjZjFmMWYyIiwiaWNvbmNvbG9yIjoiI2I0YjRiNCIsImNvbG9yIjoiIzk5OTk5OSIsInBhZGRpbmd0b3AiOiIxMCIsInBhZGRpbmdsZWZ0IjoiMTAiLCJ0ZXh0YWxpZ24iOiJsZWZ0Iiwic2VhcmNoc3R5bGUiOiIifSwiaWQiOiJzZWFyY2gifSwiTTE0NjU4MTI3MzkxOTciOnsicGFyYW1zIjp7InJvdyI6IjMifSwiZGF0YSI6eyJDMTQ2NTgxMjczOTE5NyI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0N1wvcGljdHVyZXdfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEyNzM5MTk4Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ3XC9waWN0dXJld18yLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MTI3MzkxOTkiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDdcL3BpY3R1cmV3XzMuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJldyIsInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjUifX0sIk0xNDY1ODEyNzg0NTY1Ijp7ImRhdGEiOnsiQzE0NjU4MTI3ODQ1NjUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDdcL3BpY3R1cmVfMy5qcGciLCJsaW5rdXJsIjoiIn0sIk0xNDY1ODEyODE5OTQ4Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ3XC9waWN0dXJlXzIuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJlIiwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJwYWRkaW5ndG9wIjoiNCIsInBhZGRpbmdsZWZ0IjoiMCJ9fSwiTTE0NjU4MTI4NzU5ODgiOnsicGFyYW1zIjp7InJvdyI6IjIifSwiZGF0YSI6eyJDMTQ2NTgxMjg3NTk4OCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0N1wvcGljdHVyZXdfNC5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEyODc1OTg5Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ3XC9waWN0dXJld181LmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MTI4NzU5OTAiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDdcL3BpY3R1cmV3XzYuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgxMjg3NTk5MSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0N1wvcGljdHVyZXdfNy5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmV3Iiwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJwYWRkaW5ndG9wIjoiMCIsInBhZGRpbmdsZWZ0IjoiMCJ9fSwiTTE0NjU4NzI4OTQxMjAiOnsic3R5bGUiOnsiaGVpZ2h0IjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiJ9LCJpZCI6ImJsYW5rIn0sIk0xNDY1ODcyODMyODk1Ijp7InBhcmFtcyI6eyJ0aXRsZSI6Ilx1NzBlZFx1OTUwMFx1NTU0Nlx1NTRjMSIsImljb24iOiIifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmMjMyNGMiLCJjb2xvciI6IiNmZmZmZmYiLCJ0ZXh0YWxpZ24iOiJjZW50ZXIiLCJmb250c2l6ZSI6IjE4IiwicGFkZGluZ3RvcCI6IjUiLCJwYWRkaW5nbGVmdCI6IjUifSwiaWQiOiJ0aXRsZSJ9LCJNMTQ2NTgxMjkwNDA1MyI6eyJwYXJhbXMiOnsic2hvd3RpdGxlIjoiMSIsInNob3dwcmljZSI6IjEiLCJnb29kc2RhdGEiOiIwIiwiY2F0ZWlkIjoiIiwiY2F0ZW5hbWUiOiIiLCJncm91cGlkIjoiIiwiZ3JvdXBuYW1lIjoiIiwiZ29vZHNzb3J0IjoiMCIsImdvb2RzbnVtIjoiNiIsInNob3dpY29uIjoiMSIsImljb25wb3NpdGlvbiI6ImxlZnQgdG9wIn0sInN0eWxlIjp7Imxpc3RzdHlsZSI6ImJsb2NrIiwiYnV5c3R5bGUiOiJidXlidG4tMSIsImdvb2RzaWNvbiI6InJlY29tbWFuZCIsInByaWNlY29sb3IiOiIjZWQyODIyIiwiaWNvbnBhZGRpbmd0b3AiOiIwIiwiaWNvbnBhZGRpbmdsZWZ0IjoiMCIsImJ1eWJ0bmNvbG9yIjoiI2ZlNTQ1NSIsImljb256b29tIjoiMTAwIiwidGl0bGVjb2xvciI6IiMyNjI2MjYifSwiZGF0YSI6eyJDMTQ2NTgxMjkwNDA1MyI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0xLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjkwNDA1NCI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0yLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjkwNDA1NSI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0zLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjkwNDA1NiI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy00LmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9fSwiaWQiOiJnb29kcyJ9LCJNMTQ2NTg4ODU1MjYwNiI6eyJwYXJhbXMiOnsiY29udGVudCI6IlBIQWdjM1I1YkdVOUluUmxlSFF0WVd4cFoyNDZJR05sYm5SbGNqc2lQdVdidnVlSmgrYWRwZWE2a09TNmp1ZTlrZWU3bk8rOGpPZUppT2FkZytXOWt1V09uK1M5bk9pQWhlYUpnT2FjaVR3dmNEND0ifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJwYWRkaW5nIjoiMjAifSwiaWQiOiJyaWNodGV4dCJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/default7/preview.jpg', '7', '0', '0', '0');
INSERT INTO `ims_ewei_shop_diypage_template` VALUES ('8', '0', '2', '系统模板08', 'eyJwYWdlIjp7InR5cGUiOiIyIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwOCIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwOCIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODEyOTk3MDQ1Ijp7ImRhdGEiOnsiQzE0NjU4MTI5OTcwNDUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDhcL3BpY3R1cmVfMS5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmUiLCJzdHlsZSI6eyJwYWRkaW5ndG9wIjoiMCIsInBhZGRpbmdsZWZ0IjoiMCJ9fSwiTTE0NjU4MTMwMTc1NDkiOnsicGFyYW1zIjp7InJvdyI6IjMifSwiZGF0YSI6eyJDMTQ2NTgxMzAxNzU1MCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0OFwvcGljdHVyZXdfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEzMDE3NTUxIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ4XC9waWN0dXJld18yLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MTMwMTc1NTIiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDhcL3BpY3R1cmV3XzMuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJldyIsInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODEzMDQyODc2Ijp7ImRhdGEiOnsiQzE0NjU4MTMwNDI4NzYiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDhcL3BpY3R1cmVfMi5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEzMDQyODc3Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ4XC9waWN0dXJlXzMuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJlIiwic3R5bGUiOnsicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODEzMDg4ODA0Ijp7InBhcmFtcyI6eyJyb3ciOiI0In0sImRhdGEiOnsiQzE0NjU4MTMwODg4MDQiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDhcL3BpY3R1cmV3XzQuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgxMzA4ODgwNSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0OFwvcGljdHVyZXdfNS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEzMDg4ODA2Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ4XC9waWN0dXJld182LmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MTMwODg4MDciOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDhcL3BpY3R1cmV3XzcuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJldyIsInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODEzMTMxMzgwIjp7InBhcmFtcyI6eyJzaG93dGl0bGUiOiIxIiwic2hvd3ByaWNlIjoiMSIsImdvb2RzZGF0YSI6IjAiLCJjYXRlaWQiOiIiLCJjYXRlbmFtZSI6IiIsImdyb3VwaWQiOiIiLCJncm91cG5hbWUiOiIiLCJnb29kc3NvcnQiOiIwIiwiZ29vZHNudW0iOiI2Iiwic2hvd2ljb24iOiIxIiwiaWNvbnBvc2l0aW9uIjoibGVmdCB0b3AifSwic3R5bGUiOnsibGlzdHN0eWxlIjoiYmxvY2siLCJidXlzdHlsZSI6ImJ1eWJ0bi0xIiwiZ29vZHNpY29uIjoicmVjb21tYW5kIiwicHJpY2Vjb2xvciI6IiNlZDI4MjIiLCJpY29ucGFkZGluZ3RvcCI6IjAiLCJpY29ucGFkZGluZ2xlZnQiOiIwIiwiYnV5YnRuY29sb3IiOiIjZmU1NDU1IiwiaWNvbnpvb20iOiIxMDAiLCJ0aXRsZWNvbG9yIjoiIzI2MjYyNiJ9LCJkYXRhIjp7IkMxNDY1ODEzMTMxMzgwIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTEuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODEzMTMxMzgxIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTIuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODEzMTMxMzgyIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTMuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODEzMTMxMzgzIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTQuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn19LCJpZCI6Imdvb2RzIn0sIk0xNDY1ODg4ODMxMjc4Ijp7InBhcmFtcyI6eyJjb250ZW50IjoiUEhBZ2MzUjViR1U5SW5SbGVIUXRZV3hwWjI0NklHTmxiblJsY2pzaVB1V2J2dWVKaCthZHBlYTZrT1M2anVlOWtlZTduTys4ak9lSmlPYWRnK1c5a3VXT24rUzluT2lBaGVhSmdPYWNpVHd2Y0Q0PSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInBhZGRpbmciOiIyMCJ9LCJpZCI6InJpY2h0ZXh0In19fQ==', '../addons/ewei_shopv2/plugin/diypage/static/template/default8/preview.jpg', '8', '0', '0', '0');
INSERT INTO `ims_ewei_shop_diypage_template` VALUES ('9', '0', '3', '会员中心01', 'eyJwYWdlIjp7InR5cGUiOiIzIiwidGl0bGUiOiJcdTRmMWFcdTU0NThcdTRlMmRcdTVmYzMiLCJuYW1lIjoiXHU0ZjFhXHU1NDU4XHU0ZTJkXHU1ZmMzIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiMCIsImZvbGxvd2JhciI6IjAiLCJ2aXNpdCI6IjAiLCJ2aXNpdGxldmVsIjp7Im1lbWJlciI6IiIsImNvbW1pc3Npb24iOiIifSwibm92aXNpdCI6eyJ0aXRsZSI6IiIsImxpbmsiOiIifX0sIml0ZW1zIjp7Ik0xNDc0NTI2MTM0ODE0Ijp7InBhcmFtcyI6eyJzdHlsZSI6ImRlZmF1bHQxIiwibGV2ZWxsaW5rIjoiIiwic2V0aWNvbiI6Imljb24tc2V0dGluZ3MiLCJzZXRsaW5rIjoiIiwibGVmdG5hdiI6Ilx1NTE0NVx1NTAzYyIsImxlZnRuYXZsaW5rIjoiIiwicmlnaHRuYXYiOiJcdTUxNTFcdTYzNjIiLCJyaWdodG5hdmxpbmsiOiIifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZTU0NTUiLCJ0ZXh0Y29sb3IiOiIjZmZmZmZmIiwidGV4dGxpZ2h0IjoiI2ZlZjMxZiIsImhlYWRzdHlsZSI6IiJ9LCJpbmZvIjp7ImF2YXRhciI6IiIsIm5pY2tuYW1lIjoiIiwibGV2ZWxuYW1lIjoiIiwidGV4dG1vbmV5IjoiIiwidGV4dGNyZWRpdCI6IiIsIm1vbmV5IjoiIiwiY3JlZGl0IjoiIn0sImlkIjoibWVtYmVyIn0sIk0xNDc0NTI2MTM4OTEwIjp7InBhcmFtcyI6eyJsaW5rdXJsIjoiIiwidGl0bGUiOiJcdTdlZDFcdTViOWFcdTYyNGJcdTY3M2FcdTUzZjciLCJ0ZXh0IjoiXHU1OTgyXHU2NzljXHU2MGE4XHU3NTI4XHU2MjRiXHU2NzNhXHU1M2Y3XHU2Y2U4XHU1MThjXHU4ZmM3XHU0ZjFhXHU1NDU4XHU2MjE2XHU2MGE4XHU2MGYzXHU5MDFhXHU4ZmM3XHU1ZmFlXHU0ZmUxXHU1OTE2XHU4ZDJkXHU3MjY5XHU4YmY3XHU3ZWQxXHU1YjlhXHU2MGE4XHU3Njg0XHU2MjRiXHU2NzNhXHU1M2Y3XHU3ODAxIiwiaWNvbmNsYXNzIjoiaWNvbi1tb2JpbGUifSwic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInRpdGxlY29sb3IiOiIjZmYwMDExIiwidGV4dGNvbG9yIjoiIzk5OTk5OSIsImljb25jb2xvciI6IiM5OTk5OTkifSwiaWQiOiJiaW5kbW9iaWxlIn0sIk0xNDc0NTI2MTQzNDg3Ijp7InN0eWxlIjp7Im1hcmdpbnRvcCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJpY29uY29sb3IiOiIjOTk5OTk5IiwidGV4dGNvbG9yIjoiIzMzMzMzMyIsInJlbWFya2NvbG9yIjoiIzg4ODg4OCJ9LCJkYXRhIjp7IkMxNDc0NTI2MTQzNDg5Ijp7InRleHQiOiJcdTYyMTFcdTc2ODRcdThiYTJcdTUzNTUiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1saXN0IiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiXHU1MTY4XHU5MGU4IiwiZG90bnVtIjoiIn19LCJpZCI6Imxpc3RtZW51In0sIk0xNDc0NTI2MTgxNDMxIjp7InBhcmFtcyI6eyJyb3dudW0iOiI0IiwiYm9yZGVyIjoiMSIsImJvcmRlcnRvcCI6IjAiLCJib3JkZXJib3R0b20iOiIxIn0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwiYm9yZGVyY29sb3IiOiIjZWJlYmViIiwidGV4dGNvbG9yIjoiIzdhN2E3YSIsImljb25jb2xvciI6IiNhYWFhYWEiLCJkb3Rjb2xvciI6IiNmZjAwMTEifSwiZGF0YSI6eyJDMTQ3NDUyNjE4MTQzMSI6eyJpY29uY2xhc3MiOiJpY29uLWNhcmQiLCJ0ZXh0IjoiXHU1Zjg1XHU0ZWQ4XHU2YjNlIiwibGlua3VybCI6IiIsImRvdG51bSI6IjAifSwiQzE0NzQ1MjYxODE0MzIiOnsiaWNvbmNsYXNzIjoiaWNvbi1ib3giLCJ0ZXh0IjoiXHU1Zjg1XHU1M2QxXHU4ZDI3IiwibGlua3VybCI6IiIsImRvdG51bSI6IjAifSwiQzE0NzQ1MjYxODE0MzMiOnsiaWNvbmNsYXNzIjoiaWNvbi1kZWxpdmVyIiwidGV4dCI6Ilx1NWY4NVx1NjUzNlx1OGQyNyIsImxpbmt1cmwiOiIiLCJkb3RudW0iOiIwIn0sIkMxNDc0NTI2MTgxNDM0Ijp7Imljb25jbGFzcyI6Imljb24tZWxlY3RyaWNhbCIsInRleHQiOiJcdTkwMDBcdTYzNjJcdThkMjciLCJsaW5rdXJsIjoiIiwiZG90bnVtIjoiMCJ9fSwiaWQiOiJpY29uZ3JvdXAifSwiTTE0NzQ1MjYxOTkxMDIiOnsic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImljb25jb2xvciI6IiM5OTk5OTkiLCJ0ZXh0Y29sb3IiOiIjMzMzMzMzIiwicmVtYXJrY29sb3IiOiIjODg4ODg4In0sImRhdGEiOnsiQzE0NzQ1MjYxOTkxMDIiOnsidGV4dCI6Ilx1NTIwNlx1OTUwMFx1NGUyZFx1NWZjMyIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLWdyb3VwIiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiIiwiZG90bnVtIjoiIn0sIkMxNDc0NTI2MTk5MTAzIjp7InRleHQiOiJcdTc5ZWZcdTUyMDZcdTdiN2VcdTUyMzAiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1naWZ0cyIsInJlbWFyayI6Ilx1NjdlNVx1NzcwYiIsImRvdG51bSI6IiJ9LCJDMTQ3NDUyNjE5OTEwNCI6eyJ0ZXh0IjoiXHU3OWVmXHU1MjA2XHU1NTQ2XHU1N2NlIiwibGlua3VybCI6IiIsImljb25jbGFzcyI6Imljb24tY3JlZGl0bGV2ZWwiLCJyZW1hcmsiOiJcdTY3ZTVcdTc3MGIiLCJkb3RudW0iOiIifX0sImlkIjoibGlzdG1lbnUifSwiTTE0NzQ1MjYyMjIyMDYiOnsic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImljb25jb2xvciI6IiM5OTk5OTkiLCJ0ZXh0Y29sb3IiOiIjMzMzMzMzIiwicmVtYXJrY29sb3IiOiIjODg4ODg4In0sImRhdGEiOnsiQzE0NzQ1MjYyMjIyMDYiOnsidGV4dCI6Ilx1OTg4Nlx1NTNkNlx1NGYxOFx1NjBlMFx1NTIzOCIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLXNhbWUiLCJyZW1hcmsiOiJcdTY3ZTVcdTc3MGIiLCJkb3RudW0iOiIifSwiQzE0NzQ1MjYyMjIyMDciOnsidGV4dCI6Ilx1NjIxMVx1NzY4NFx1NGYxOFx1NjBlMFx1NTIzOCIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLWNhcmQiLCJyZW1hcmsiOiJcdTY3ZTVcdTc3MGIiLCJkb3RudW0iOiIifX0sImlkIjoibGlzdG1lbnUifSwiTTE0NzQ1MjYyNTM2MTQiOnsic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImljb25jb2xvciI6IiM5OTk5OTkiLCJ0ZXh0Y29sb3IiOiIjMzMzMzMzIiwicmVtYXJrY29sb3IiOiIjODg4ODg4In0sImRhdGEiOnsiQzE0NzQ1MjYyNTM2MTQiOnsidGV4dCI6Ilx1NzllZlx1NTIwNlx1NjM5Mlx1ODg0YyIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLXJhbmsiLCJyZW1hcmsiOiJcdTY3ZTVcdTc3MGIiLCJkb3RudW0iOiIifSwiQzE0NzQ1MjYyNTM2MTUiOnsidGV4dCI6Ilx1NmQ4OFx1OGQzOVx1NjM5Mlx1ODg0YyIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLW1vbmV5IiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiIiwiZG90bnVtIjoiIn19LCJpZCI6Imxpc3RtZW51In0sIk0xNDc0NTI2MjgxNzYwIjp7InN0eWxlIjp7Im1hcmdpbnRvcCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJpY29uY29sb3IiOiIjOTk5OTk5IiwidGV4dGNvbG9yIjoiIzMzMzMzMyIsInJlbWFya2NvbG9yIjoiIzg4ODg4OCJ9LCJkYXRhIjp7IkMxNDc0NTI2MjgxNzYwIjp7InRleHQiOiJcdTYyMTFcdTc2ODRcdThkMmRcdTcyNjlcdThmNjYiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1jYXJ0IiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiIiwiZG90bnVtIjoiIn0sIkMxNDc0NTI2MjgxNzYxIjp7InRleHQiOiJcdTYyMTFcdTc2ODRcdTUxNzNcdTZjZTgiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1saWtlIiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiIiwiZG90bnVtIjoiIn0sIkMxNDc0NTI2MjgxNzYyIjp7InRleHQiOiJcdTYyMTFcdTc2ODRcdThkYjNcdThmZjkiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1mb290cHJpbnQiLCJyZW1hcmsiOiJcdTY3ZTVcdTc3MGIiLCJkb3RudW0iOiIifSwiTTE0NzQ1MjYzMDA1NDMiOnsidGV4dCI6Ilx1NmQ4OFx1NjA2Zlx1NjNkMFx1OTE5Mlx1OGJiZVx1N2Y2ZSIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLW5vdGljZSIsInJlbWFyayI6Ilx1NjdlNVx1NzcwYiIsImRvdG51bSI6IiJ9fSwiaWQiOiJsaXN0bWVudSJ9LCJNMTQ3NDUyNjMwNzI3MCI6eyJzdHlsZSI6eyJtYXJnaW50b3AiOiIxMCIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwiaWNvbmNvbG9yIjoiIzk5OTk5OSIsInRleHRjb2xvciI6IiMzMzMzMzMiLCJyZW1hcmtjb2xvciI6IiM4ODg4ODgifSwiZGF0YSI6eyJDMTQ3NDUyNjMwNzI3MCI6eyJ0ZXh0IjoiXHU2NTM2XHU4ZDI3XHU1NzMwXHU1NzQwXHU3YmExXHU3NDA2IiwibGlua3VybCI6IiIsImljb25jbGFzcyI6Imljb24tYWRkcmVzcyIsInJlbWFyayI6Ilx1NjdlNVx1NzcwYiIsImRvdG51bSI6IiJ9LCJDMTQ3NDUyNjMwNzI3MSI6eyJ0ZXh0IjoiXHU1ZTJlXHU1MmE5XHU0ZTJkXHU1ZmMzIiwibGlua3VybCI6IiIsImljb25jbGFzcyI6Imljb24tcXVlc3Rpb25maWxsIiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiIiwiZG90bnVtIjoiIn19LCJpZCI6Imxpc3RtZW51In0sIk0xNDc0NTk3NzI2NTU2Ijp7InBhcmFtcyI6eyJiaW5kdXJsIjoiIiwibG9nb3V0dXJsIjoiIn0sInN0eWxlIjp7InRleHRjb2xvciI6IiNmZjAwMTEiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsIm1hcmdpbnRvcCI6IjEwIn0sImlkIjoibG9nb3V0In0sIk0xNDc0NTk3OTcxMjE4Ijp7InBhcmFtcyI6eyJjb250ZW50IjoiUEhBZ2MzUjViR1U5SW5SbGVIUXRZV3hwWjI0NklHTmxiblJsY2pzaVB1ZUppT2FkZythSmdPYWNpU0FvWXlrZ2VIaDQ1WldHNVorT1BDOXdQZz09In0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwicGFkZGluZyI6IjIwIn0sImlkIjoicmljaHRleHQifX19', '../addons/ewei_shopv2/plugin/diypage/static/template/member1/preview.jpg', '9', '0', '0', '0');
INSERT INTO `ims_ewei_shop_diypage_template` VALUES ('10', '0', '4', '分销中心01', 'eyJwYWdlIjp7InR5cGUiOiI0IiwidGl0bGUiOiJcdThiZjdcdThmOTNcdTUxNjVcdTk4NzVcdTk3NjJcdTY4MDdcdTk4OTgiLCJuYW1lIjoiXHU2NzJhXHU1NDdkXHU1NDBkXHU5ODc1XHU5NzYyIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEiLCJmb2xsb3diYXIiOiIwIiwidmlzaXQiOiIwIiwidmlzaXRsZXZlbCI6eyJtZW1iZXIiOiIiLCJjb21taXNzaW9uIjoiIn0sIm5vdmlzaXQiOnsidGl0bGUiOiIiLCJsaW5rIjoiIn19LCJpdGVtcyI6eyJNMTQ3NTk3NjIxMDU0NiI6eyJwYXJhbXMiOnsic3R5bGUiOiJkZWZhdWx0MSIsInNldGljb24iOiJpY29uLXNldHRpbmdzIiwic2V0bGluayI6IiIsImxlZnRuYXYiOiJcdTYzZDBcdTczYjAxIiwibGVmdG5hdmxpbmsiOiIiLCJyaWdodG5hdiI6Ilx1NjNkMFx1NzNiMDIiLCJyaWdodG5hdmxpbmsiOiIiLCJjZW50ZXJuYXYiOiJcdTYzZDBcdTczYjAiLCJjZW50ZXJuYXZsaW5rIjoiIn0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmU1NDU1IiwidGV4dGNvbG9yIjoiI2ZmZmZmZiIsInRleHRsaWdodCI6IiNmZWYzMWYifSwiaWQiOiJtZW1iZXJjIn0sIk0xNDc1OTc2MjEyMzA1Ijp7InBhcmFtcyI6eyJyb3dudW0iOiIzIn0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwidGlwY29sb3IiOiIjZmViMzEyIn0sImRhdGEiOnsiQzE0NzU5NzYyMTIzMDUiOnsiaWNvbmNsYXNzIjoiaWNvbi1tb25leSIsImljb25jb2xvciI6IiNmZWIzMTIiLCJ0ZXh0IjoiXHU1MjA2XHU5NTAwXHU0ZjYzXHU5MWQxIiwidGV4dGNvbG9yIjoiIzY2NjY2NiIsImxpbmt1cmwiOiIiLCJ0aXBudW0iOiIwLjAwIiwidGlwdGV4dCI6Ilx1NTE0MyJ9LCJDMTQ3NTk3NjIxMjMwNiI6eyJpY29uY2xhc3MiOiJpY29uLWxpc3QiLCJpY29uY29sb3IiOiIjNTBiNmZlIiwidGV4dCI6Ilx1NGY2M1x1OTFkMVx1NjYwZVx1N2VjNiIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiIiwidGlwbnVtIjoiNTAiLCJ0aXB0ZXh0IjoiXHU3YjE0In0sIkMxNDc1OTc2MjEyMzA4Ijp7Imljb25jbGFzcyI6Imljb24tbWFuYWdlb3JkZXIiLCJpY29uY29sb3IiOiIjZmY3NDFkIiwidGV4dCI6Ilx1NjNkMFx1NzNiMFx1NjYwZVx1N2VjNiIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiIiwidGlwbnVtIjoiMTAiLCJ0aXB0ZXh0IjoiXHU3YjE0In0sIkMxNDc1OTc2MjEyMzA5Ijp7Imljb25jbGFzcyI6Imljb24tZ3JvdXAiLCJpY29uY29sb3IiOiIjZmY3NDFkIiwidGV4dCI6Ilx1NjIxMVx1NzY4NFx1NGUwYlx1N2ViZiIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiIiwidGlwbnVtIjoiMiIsInRpcHRleHQiOiJcdTRlYmEifSwiQzE0NzU5NzYyMTIzMTAiOnsiaWNvbmNsYXNzIjoiaWNvbi1xcmNvZGUiLCJpY29uY29sb3IiOiIjZmViMzEyIiwidGV4dCI6Ilx1NjNhOFx1NWU3Zlx1NGU4Y1x1N2VmNFx1NzgwMSIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiIiwidGlwbnVtIjoiIiwidGlwdGV4dCI6IiJ9LCJDMTQ3NTk3NjIxMjMxMSI6eyJpY29uY2xhc3MiOiJpY29uLXNob3BmaWxsIiwiaWNvbmNvbG9yIjoiIzUwYjZmZSIsInRleHQiOiJcdTVjMGZcdTVlOTdcdThiYmVcdTdmNmUiLCJ0ZXh0Y29sb3IiOiIjNjY2NjY2IiwibGlua3VybCI6IiIsInRpcG51bSI6IiIsInRpcHRleHQiOiIifSwiQzE0NzU5NzYyMTIzMTIiOnsiaWNvbmNsYXNzIjoiaWNvbi1yYW5rIiwiaWNvbmNvbG9yIjoiI2ZmNzQxZCIsInRleHQiOiJcdTRmNjNcdTkxZDFcdTYzOTJcdTU0MGQiLCJ0ZXh0Y29sb3IiOiIjNjY2NjY2IiwibGlua3VybCI6IiIsInRpcG51bSI6IiIsInRpcHRleHQiOiIifX0sImlkIjoiYmxvY2tncm91cCJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/commission1/preview.jpg', '10', '0', '0', '0');
INSERT INTO `ims_ewei_shop_diypage_template` VALUES ('11', '0', '5', '商品详情', 'eyJwYWdlIjp7InR5cGUiOiI1IiwidGl0bGUiOiJcdTU1NDZcdTU0YzFcdThiZTZcdTYwYzUiLCJuYW1lIjoiXHU1NTQ2XHU1NGMxXHU4YmU2XHU2MGM1IiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEiLCJmb2xsb3diYXIiOiIwIiwidmlzaXQiOiIwIiwidmlzaXRsZXZlbCI6eyJtZW1iZXIiOiIiLCJjb21taXNzaW9uIjoiIn0sIm5vdmlzaXQiOnsidGl0bGUiOiIiLCJsaW5rIjoiIn0sImRpeWxheWVyIjoiMSJ9LCJpdGVtcyI6eyJNMTQ3ODc4Mjg4ODAyOCI6eyJ0eXBlIjoiNSIsIm1heCI6IjEiLCJwYXJhbXMiOnsiZ29vZHN0ZXh0IjoiXHU1NTQ2XHU1NGMxIiwiZGV0YWlsdGV4dCI6Ilx1OGJlNlx1NjBjNSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2Y3ZjdmNyIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJhY3RpdmVjb2xvciI6IiNlZjRmNGYifSwiaWQiOiJkZXRhaWxfdGFiIn0sIk0xNDc4NzgyODkwMTA3Ijp7InR5cGUiOiI1IiwibWF4IjoiMSIsInN0eWxlIjp7ImRvdHN0eWxlIjoicmVjdGFuZ2xlIiwiZG90YWxpZ24iOiJsZWZ0IiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJsZWZ0cmlnaHQiOiI1IiwiYm90dG9tIjoiNSIsIm9wYWNpdHkiOiIwLjgifSwiaWQiOiJkZXRhaWxfc3dpcGUifSwiTTE0Nzg3ODMxMzUzNjUiOnsidHlwZSI6IjUiLCJtYXgiOiIxIiwicGFyYW1zIjp7InNoYXJlIjoiXHU1MjA2XHU0ZWFiIiwic2hhcmVfbGluayI6IiJ9LCJzdHlsZSI6eyJtYXJnaW50b3AiOiIwIiwibWFyZ2luYm90dG9tIjoiMCIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwidGl0bGVjb2xvciI6IiMzMzMzMzMiLCJzdWJ0aXRsZWNvbG9yIjoiI2VmNGY0ZiIsInByaWNlY29sb3IiOiIjZWY0ZjRmIiwidGV4dGNvbG9yIjoiI2MwYzBjMCIsInRpbWVjb2xvciI6IiNlZjRmNGYiLCJ0aW1ldGV4dGNvbG9yIjoiI2VmNGY0ZiJ9LCJpZCI6ImRldGFpbF9pbmZvIn0sIk0xNDc4NzgyOTAzODE5Ijp7InR5cGUiOiI1IiwibWF4IjoiMSIsInN0eWxlIjp7Im1hcmdpbnRvcCI6IjAiLCJtYXJnaW5ib3R0b20iOiIwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJ0ZXh0Y29sb3IiOiIjNjY2NjY2IiwidGV4dGNvbG9yaGlnaCI6IiNlZjRmNGYifSwiZGF0YSI6eyJDMTQ3ODc4MjkwMzgxOSI6eyJuYW1lIjoiXHU0ZThjXHU2YjIxXHU4ZDJkXHU0ZTcwIiwidHlwZSI6ImVyY2kifSwiQzE0Nzg3ODI5MDM4MjAiOnsibmFtZSI6Ilx1NGYxYVx1NTQ1OFx1NGVmNyIsInR5cGUiOiJodWl5dWFuIn0sIkMxNDc4NzgyOTAzODIxIjp7Im5hbWUiOiJcdTRmMThcdTYwZTAiLCJ0eXBlIjoieW91aHVpIn0sIkMxNDc4NzgyOTAzODIyIjp7Im5hbWUiOiJcdTc5ZWZcdTUyMDYiLCJ0eXBlIjoiamlmZW4ifSwiQzE0Nzg3ODI5MDM4MjMiOnsibmFtZSI6Ilx1NGUwZFx1OTE0ZFx1OTAwMVx1NTMzYVx1NTdkZiIsInR5cGUiOiJidXBlaXNvbmcifSwiQzE0Nzg3ODI5MDM4MjQiOnsibmFtZSI6Ilx1NTU0Nlx1NTRjMVx1NjgwN1x1N2I3ZSIsInR5cGUiOiJiaWFvcWlhbiJ9fSwiaWQiOiJkZXRhaWxfc2FsZSJ9LCJNMTQ3ODc4MzE5MDI1NSI6eyJ0eXBlIjoiNSIsIm1heCI6IjEiLCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInRleHRjb2xvciI6IiMzMzMzMzMiLCJtYXJnaW50b3AiOiIxMCIsIm1hcmdpbmJvdHRvbSI6IjAifSwiaWQiOiJkZXRhaWxfc3BlYyJ9LCJNMTQ3ODc4MzE5NjIxOSI6eyJ0eXBlIjoiNSIsIm1heCI6IjEiLCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsIm1hcmdpbnRvcCI6IjEwIiwibWFyZ2luYm90dG9tIjoiMCIsInRleHRjb2xvciI6IiM3YzdjN2MifSwiaWQiOiJkZXRhaWxfcGFja2FnZSJ9LCJNMTQ3ODc4MjkyNDA3NiI6eyJ0eXBlIjoiNSIsIm1heCI6IjEiLCJwYXJhbXMiOnsic2hvcGxvZ28iOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2Mlwvc3RhdGljXC9pbWFnZXNcL2Rlc2lnbmVyLmpwZyIsInNob3BuYW1lIjoiIiwic2hvcGRlc2MiOiIiLCJoaWRlbnVtIjoiMCIsImxlZnRuYXZ0ZXh0IjoiXHU1MTY4XHU5MGU4XHU1NTQ2XHU1NGMxIiwibGVmdG5hdmxpbmsiOiIiLCJyaWdodG5hdnRleHQiOiJcdThmZGJcdTVlOTdcdTkwMWJcdTkwMWIiLCJyaWdodG5hdmxpbmsiOiIifSwic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJtYXJnaW5ib3R0b20iOiIwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJnb29kc251bWNvbG9yIjoiIzMzMzMzMyIsImdvb2RzdGV4dGNvbG9yIjoiIzdjN2M3YyIsInJpZ2h0bmF2Y29sb3IiOiIjN2M3YzdjIiwic2hvcG5hbWVjb2xvciI6IiMzMzMzMzMiLCJzaG9wZGVzY2NvbG9yIjoiIzQ0NDQ0NCJ9LCJpZCI6ImRldGFpbF9zaG9wIn0sIk0xNDc4NzgyOTI4ODg0Ijp7InR5cGUiOiI1IiwibWF4IjoiMSIsInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwibWFyZ2ludG9wIjoiMTAiLCJtYXJnaW5ib3R0b20iOiIwIiwidGl0bGVjb2xvciI6IiMzMzMzMzMiLCJzaG9wbmFtZWNvbG9yIjoiIzMzMzMzMyIsInNob3BpbmZvY29sb3IiOiIjNjY2NjY2IiwibmF2dGVsY29sb3IiOiIjMDA4MDAwIiwibmF2bG9jYXRpb25jb2xvciI6IiNmZjk5MDAifSwiaWQiOiJkZXRhaWxfc3RvcmUifSwiTTE0Nzg3ODMyMTAxNDciOnsidHlwZSI6IjUiLCJtYXgiOiIxIiwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJtYXJnaW50b3AiOiIxMCIsIm1hcmdpbmJvdHRvbSI6IjAifSwiaWQiOiJkZXRhaWxfYnV5c2hvdyJ9LCJNMTQ3ODc4MzIxNDg3OSI6eyJ0eXBlIjoiNSIsIm1heCI6IjEiLCJzdHlsZSI6eyJtYXJnaW50b3AiOiIxMCIsIm1hcmdpbmJvdHRvbSI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJtYWluY29sb3IiOiIjZmQ1NDU0Iiwic3ViY29sb3IiOiIjN2M3YzdjIiwidGV4dGNvbG9yIjoiIzMzMzMzMyJ9LCJpZCI6ImRldGFpbF9jb21tZW50In0sIk0xNDc4NzgzMjI1MTU4Ijp7InR5cGUiOiI1IiwibWF4IjoiMSIsInBhcmFtcyI6eyJoaWRlbGlrZSI6IjAiLCJoaWRlc2hvcCI6IjAiLCJoaWRlY2FydCI6IjAiLCJoaWRlY2FydGJ0biI6IjAiLCJ0ZXh0YnV5IjoiXHU3YWNiXHU1MjNiXHU4ZDJkXHU0ZTcwIiwiZ29vZHN0ZXh0IjoiXHU1NTQ2XHU1NGMxIiwibGlrZXRleHQiOiJcdTUxNzNcdTZjZTgiLCJsaWtlaWNvbmNsYXNzIjoiaWNvbi1saWtlIiwibGlrZWxpbmsiOiJpY29uLWxpa2UiLCJzaG9wdGV4dCI6Ilx1NWU5N1x1OTRmYSIsInNob3BpY29uY2xhc3MiOiJpY29uLXNob3AiLCJjYXJ0dGV4dCI6Ilx1OGQyZFx1NzI2OVx1OGY2NiIsImNhcnRpY29uY2xhc3MiOiJpY29uLWNhcnQifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJ0ZXh0Y29sb3IiOiIjOTk5OTk5IiwiaWNvbmNvbG9yIjoiIzk5OTk5OSIsImNhcnRjb2xvciI6IiNmZTk0MDIiLCJidXljb2xvciI6IiNmZDU1NTUiLCJkb3Rjb2xvciI6IiNmZjAwMTEifSwiaWQiOiJkZXRhaWxfbmF2YmFyIn19fQ==', '../addons/ewei_shopv2/plugin/diypage/static/template/detail1/preview.jpg', '11', '0', '0', '0');
INSERT INTO `ims_ewei_shop_diypage_template` VALUES ('12', '0', '7', '整点秒杀', 'eyJwYWdlIjp7InR5cGUiOiI3IiwidGl0bGUiOiJcdTY1NzRcdTcwYjlcdTc5ZDJcdTY3NDAiLCJuYW1lIjoiXHU2NTc0XHU3MGI5XHU3OWQyXHU2NzQwIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEiLCJmb2xsb3diYXIiOiIwIiwidmlzaXQiOiIwIiwidmlzaXRsZXZlbCI6eyJtZW1iZXIiOiIiLCJjb21taXNzaW9uIjoiIn0sIm5vdmlzaXQiOnsidGl0bGUiOiIiLCJsaW5rIjoiIn19LCJpdGVtcyI6eyJNMTQ4MDQ5ODExNTc4MCI6eyJ0eXBlIjoiNyIsIm1heCI6IjEiLCJzdHlsZSI6eyJtYXJnaW50b3AiOiIwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJjb2xvciI6IiMzMzMzMzMiLCJiZ2NvbG9yIjoiI2ZmZmZmZiIsInNlbGVjdGVkY29sb3IiOiIjZmYzMzAwIiwic2VsZWN0ZWRiZ2NvbG9yIjoiI2ZmZmZmZiJ9LCJpZCI6InNlY2tpbGxfdGltZXMifSwiTTE0ODA0OTgxMTgwMTkiOnsidHlwZSI6IjciLCJtYXgiOiIxIiwic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJtYXJnaW5ib3R0b20iOiIwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYifSwiaWQiOiJzZWNraWxsX2FkdnMifSwiTTE0ODA0OTgxMTcwNDMiOnsidHlwZSI6IjciLCJtYXgiOiIxIiwic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImNvbG9yIjoiIzMzMzMzMyIsImJnY29sb3IiOiIjZmZmZmZmIiwic2VsZWN0ZWRjb2xvciI6IiNlZjRmNGYiLCJzZWxlY3RlZGJnY29sb3IiOiIjZmZmZmZmIn0sImlkIjoic2Vja2lsbF9yb29tcyJ9LCJNMTQ4MDQ5ODExODQ1MyI6eyJ0eXBlIjoiNyIsIm1heCI6IjEiLCJwYXJhbXMiOnsidGl0bGV0ZXh0IjoiXHU1MTQ4XHU0ZTBiXHU1MzU1XHU1MTQ4XHU1Zjk3XHU1NGU2fiIsInRpdGxlb3ZlcnRleHQiOiJcdThmZDhcdTUzZWZcdTRlZTVcdTdlZTdcdTdlZWRcdTYyYTJcdThkMmRcdTU0ZTZ+IiwidGl0bGV3YWl0dGV4dCI6Ilx1NTM3M1x1NWMwNlx1NWYwMFx1NTljYiBcdTUxNDhcdTRlMGJcdTUzNTVcdTUxNDhcdTVmOTdcdTU0ZTYiLCJidG50ZXh0IjoiXHU2MmEyXHU4ZDJkXHU0ZTJkIiwiYnRub3ZlcnRleHQiOiJcdTVkZjJcdTYyYTJcdTViOGMiLCJidG53YWl0dGV4dCI6Ilx1N2I0OVx1NWY4NVx1NjJhMlx1OGQyZCJ9LCJzdHlsZSI6eyJtYXJnaW50b3AiOiIxMCIsIm1hcmdpbmJvdHRvbSI6IjAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInRvcGJnY29sb3IiOiIjZjBmMmY1IiwidG9wY29sb3IiOiIjMzMzMzMzIiwidGltZWJnY29sb3IiOiIjNDY0NTUzIiwidGltZWNvbG9yIjoiI2ZmZmZmZiIsInRpdGxlY29sb3IiOiIjMzMzMzMzIiwicHJpY2Vjb2xvciI6IiNlZjRmNGYiLCJtYXJrZXRwcmljZWNvbG9yIjoiIzk0OTU5OCIsImJ0bmJnY29sb3IiOiIjZWY0ZjRmIiwiYnRub3ZlcmJnY29sb3IiOiIjZjdmN2Y3IiwiYnRud2FpdGJnY29sb3IiOiIjMDRiZTAyIiwiYnRuY29sb3IiOiIjZmZmZmZmIiwiYnRub3ZlcmNvbG9yIjoiIzMzMzMzMyIsImJ0bndhaXRjb2xvciI6IiNmZmZmZmYiLCJwcm9jZXNzdGV4dGNvbG9yIjoiI2QwZDFkMiIsInByb2Nlc3NiZ2NvbG9yIjoiI2ZmOGY4ZiJ9LCJpZCI6InNlY2tpbGxfbGlzdCJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/seckill/preview.png', '12', '0', '0', '0');
INSERT INTO `ims_ewei_shop_diypage_template` VALUES ('13', '0', '6', '积分商城', 'eyJwYWdlIjp7InR5cGUiOiI2IiwidGl0bGUiOiJcdTc5ZWZcdTUyMDZcdTU1NDZcdTU3Y2UiLCJuYW1lIjoiXHU2ZDRiXHU4YmQ1XHU3OWVmXHU1MjA2XHU1NTQ2XHU1N2NlXHU5ODc1XHU5NzYyIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEiLCJmb2xsb3diYXIiOiIwIiwidmlzaXQiOiIwIiwidmlzaXRsZXZlbCI6eyJtZW1iZXIiOiIiLCJjb21taXNzaW9uIjoiIn0sIm5vdmlzaXQiOnsidGl0bGUiOiIiLCJsaW5rIjoiIn19LCJpdGVtcyI6eyJNMTQ3OTI2MTA2MTY0NSI6eyJzdHlsZSI6eyJkb3RzdHlsZSI6InJvdW5kIiwiZG90YWxpZ24iOiJjZW50ZXIiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImxlZnRyaWdodCI6IjUiLCJib3R0b20iOiI1Iiwib3BhY2l0eSI6IjAuOCJ9LCJkYXRhIjp7IkMxNDc5MjYxMDYxNjQ1Ijp7ImltZ3VybCI6Imh0dHA6XC9cL29mNm9kaGRxMS5ia3QuY2xvdWRkbi5jb21cLzA2M2E2ZWM4NGY0NWE3MGQ2Y2NhOGQ4ZjI2NWQxYjcyLmpwZyIsImxpbmt1cmwiOiIuXC9pbmRleC5waHA/aT0xMiZjPWVudHJ5Jm09ZXdlaV9zaG9wdjImZG89bW9iaWxlJnI9Y3JlZGl0c2hvcC5kZXRhaWwmaWQ9MTE3In0sIkMxNDc5MjYxMDYxNjQ2Ijp7ImltZ3VybCI6Imh0dHA6XC9cL29mNm9kaGRxMS5ia3QuY2xvdWRkbi5jb21cLzQwMTgzYzEyY2M0MWIxYWYwMjY3NDIwYzUwNjQyODliLmpwZyIsImxpbmt1cmwiOiIuXC9pbmRleC5waHA/aT0xMiZjPWVudHJ5Jm09ZXdlaV9zaG9wdjImZG89bW9iaWxlJnI9Y3JlZGl0c2hvcC5saXN0cyJ9fSwiaWQiOiJiYW5uZXIifSwiTTE0NzkyNjgxMTQxNjEiOnsic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiJ9LCJkYXRhIjp7IkMxNDc5MjY4MTE0MTYxIjp7InRleHQiOiJcdTYyMTFcdTc2ODRcdTc5ZWZcdTUyMDYiLCJpY29uY2xhc3MiOiJpY29uLWppZmVuIiwidGV4dGNvbG9yIjoiIzY2NjY2NiIsImljb25jb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiLlwvaW5kZXgucGhwP2k9MTImYz1lbnRyeSZtPWV3ZWlfc2hvcHYyJmRvPW1vYmlsZSZyPWNyZWRpdHNob3AuY3JlZGl0bG9nIn0sIkMxNDc5MjY4MTE0MTYyIjp7InRleHQiOiJcdTUxNTFcdTYzNjJcdThiYjBcdTVmNTUiLCJpY29uY2xhc3MiOiJpY29uLWxpc3QiLCJ0ZXh0Y29sb3IiOiIjNjY2NjY2IiwiaWNvbmNvbG9yIjoiIzY2NjY2NiIsImxpbmt1cmwiOiIuXC9pbmRleC5waHA/aT0xMiZjPWVudHJ5Jm09ZXdlaV9zaG9wdjImZG89bW9iaWxlJnI9Y3JlZGl0c2hvcC5sb2cifX0sImlkIjoibWVudTIifSwiTTE0NzkyOTA3OTU0MjciOnsicGFyYW1zIjp7InBsYWNlaG9sZGVyIjoiXHU4YmY3XHU4ZjkzXHU1MTY1XHU1MTczXHU5NTJlXHU1YjU3XHU4ZmRiXHU4ODRjXHU2NDFjXHU3ZDIyIiwiZ29vZHN0eXBlIjoiMSJ9LCJzdHlsZSI6eyJpbnB1dGJhY2tncm91bmQiOiIjZmZmZmZmIiwiYmFja2dyb3VuZCI6IiNmMWYxZjIiLCJpY29uY29sb3IiOiIjYjRiNGI0IiwiY29sb3IiOiIjOTk5OTk5IiwicGFkZGluZ3RvcCI6IjYiLCJwYWRkaW5nbGVmdCI6IjEwIiwidGV4dGFsaWduIjoibGVmdCIsInNlYXJjaHN0eWxlIjoiIn0sImlkIjoic2VhcmNoIn0sIk0xNDc5NTQ0NjE5NDQwIjp7InN0eWxlIjp7ImhlaWdodCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEifSwiaWQiOiJibGFuayJ9LCJNMTQ3OTI2MTA3NjMzMyI6eyJzdHlsZSI6eyJuYXZzdHlsZSI6IiIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwicm93bnVtIjoiNCIsInNob3d0eXBlIjoiMCIsInNob3dkb3QiOiIxIiwicGFnZW51bSI6IjgifSwiZGF0YSI6eyJDMTQ3OTI2MTA3NjMzMyI6eyJpbWd1cmwiOiJodHRwOlwvXC9vZjZvZGhkcTEuYmt0LmNsb3VkZG4uY29tXC9mNGM0ZWZlNjEwMzJiNGE5N2VjYTAzNWM3ZTcyNTA2OC5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NzNiMFx1OTFkMVx1N2VhMlx1NTMwNSIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ3OTI2MTA3NjMzNCI6eyJpbWd1cmwiOiJodHRwOlwvXC9vZjZvZGhkcTEuYmt0LmNsb3VkZG4uY29tXC83MTg2ZWI1NDE2OWExMzU1YTcwMjQxNjA1OGY1ODg2My5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1N2NiZVx1N2Y4ZVx1NWI5ZVx1NzI2OSIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ3OTI2MTA3NjMzNSI6eyJpbWd1cmwiOiJodHRwOlwvXC9vZjZvZGhkcTEuYmt0LmNsb3VkZG4uY29tXC85NzFhODQxYzI1NzdlZDlhYjQyNDJlOTkxZjU5YWE1My5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NGYxOFx1NjBlMFx1NTIzOCIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ3OTI2MTA3NjMzNiI6eyJpbWd1cmwiOiJodHRwOlwvXC9vZjZvZGhkcTEuYmt0LmNsb3VkZG4uY29tXC80NWE3NDYwOTRlOWM5NmY2ZTY5Njg0OWFlNmYxMDFhZS5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NGY1OVx1OTg5ZFx1NTk1Nlx1NTJiMSIsImNvbG9yIjoiIzY2NjY2NiJ9fSwiaWQiOiJtZW51In0sIk0xNDc5MjYxNDUwNzM0Ijp7InN0eWxlIjp7Im1hcmdpbnRvcCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJpY29uY29sb3IiOiIjOTk5OTk5IiwidGV4dGNvbG9yIjoiIzMzMzMzMyIsInJlbWFya2NvbG9yIjoiIzg4ODg4OCJ9LCJkYXRhIjp7IkMxNDc5MjYxNDUwNzM0Ijp7InRleHQiOiJcdTdjYmVcdTdmOGVcdTViOWVcdTcyNjlcdTYyYmRcdTU5NTYiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1naWZ0cyIsInJlbWFyayI6Ilx1NjZmNFx1NTkxYSIsImRvdG51bSI6IiJ9fSwiaWQiOiJsaXN0bWVudSJ9LCJNMTQ3OTU0Mzc4MTg2NyI6eyJwYXJhbXMiOnsiZ29vZHN0eXBlIjoiMSIsInNob3d0aXRsZSI6IjEiLCJzaG93cHJpY2UiOiIxIiwic2hvd3RhZyI6IjIiLCJnb29kc2RhdGEiOiI1IiwiY2F0ZWlkIjoiIiwiY2F0ZW5hbWUiOiIiLCJncm91cGlkIjoiIiwiZ3JvdXBuYW1lIjoiIiwiZ29vZHNzb3J0IjoiMCIsImdvb2RzbnVtIjoiNiIsInNob3dpY29uIjoiMSIsImljb25wb3NpdGlvbiI6ImxlZnQgdG9wIiwicHJvZHVjdHByaWNlIjoiMSIsImdvb2Rzc2Nyb2xsIjoiMSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImxpc3RzdHlsZSI6ImJsb2NrIiwiYnV5c3R5bGUiOiJidXlidG4tMSIsImdvb2RzaWNvbiI6InJlY29tbWFuZCIsInByaWNlY29sb3IiOiIjZWQyODIyIiwiaWNvbnBhZGRpbmd0b3AiOiIwIiwiaWNvbnBhZGRpbmdsZWZ0IjoiMCIsImJ1eWJ0bmNvbG9yIjoiI2ZlNTQ1NSIsImljb256b29tIjoiMTAwIiwidGl0bGVjb2xvciI6IiMyNjI2MjYiLCJ0YWdiYWNrZ3JvdW5kIjoiI2ZlNTQ1NSJ9LCJkYXRhIjp7IkMxNDc5NTQzNzgxODY3Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTEuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIiwiYmFyZ2FpbiI6IjAiLCJjcmVkaXQiOiIwIiwiY3R5cGUiOiIxIn0sIkMxNDc5NTQzNzgxODY4Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTIuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIiwiYmFyZ2FpbiI6IjAiLCJjcmVkaXQiOiIwIiwiY3R5cGUiOiIxIn0sIkMxNDc5NTQzNzgxODY5Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTMuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIiwiYmFyZ2FpbiI6IjAiLCJjcmVkaXQiOiIwIiwiY3R5cGUiOiIwIn0sIkMxNDc5NTQzNzgxODcwIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTQuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIiwiYmFyZ2FpbiI6IjAiLCJjcmVkaXQiOiIwIiwiY3R5cGUiOiIwIn19LCJpZCI6Imdvb2RzIn0sIk0xNDc5MjYxNTk0MDc3Ijp7InN0eWxlIjp7Im1hcmdpbnRvcCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJpY29uY29sb3IiOiIjOTk5OTk5IiwidGV4dGNvbG9yIjoiIzMzMzMzMyIsInJlbWFya2NvbG9yIjoiIzg4ODg4OCJ9LCJkYXRhIjp7IkMxNDc5MjYxNTk0MDc3Ijp7InRleHQiOiJcdTU1NDZcdTU3Y2VcdTRmMThcdTYwZTBcdTUyMzgiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1naWZ0cyIsInJlbWFyayI6Ilx1NjZmNFx1NTkxYSIsImRvdG51bSI6IiJ9fSwiaWQiOiJsaXN0bWVudSJ9LCJNMTQ3OTI2MTY1NTkxOSI6eyJwYXJhbXMiOnsic2hvd3RpdGxlIjoiMSIsInNob3dwcmljZSI6IjEiLCJnb29kc2RhdGEiOiIxIiwiY2F0ZWlkIjoiOTAiLCJjYXRlbmFtZSI6Ilx1NmQ0Ylx1OGJkNVx1NTIwNlx1N2M3YjAxMCIsImdyb3VwaWQiOiIiLCJncm91cG5hbWUiOiIiLCJnb29kc3NvcnQiOiIwIiwiZ29vZHNudW0iOiI2Iiwic2hvd2ljb24iOiIxIiwiaWNvbnBvc2l0aW9uIjoibGVmdCB0b3AiLCJnb29kc3R5cGUiOiIxIiwiZ29vZHNzY3JvbGwiOiIwIn0sInN0eWxlIjp7Imxpc3RzdHlsZSI6IiIsImJ1eXN0eWxlIjoiYnV5YnRuLTEiLCJnb29kc2ljb24iOiJyZWNvbW1hbmQiLCJwcmljZWNvbG9yIjoiI2VkMjgyMiIsImljb25wYWRkaW5ndG9wIjoiMCIsImljb25wYWRkaW5nbGVmdCI6IjAiLCJidXlidG5jb2xvciI6IiNmZTU0NTUiLCJpY29uem9vbSI6IjEwMCIsInRpdGxlY29sb3IiOiIjMjYyNjI2In0sImRhdGEiOnsiQzE0NzkyNjE2NTU5MTkiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMS5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIiLCJiYXJnYWluIjoiMCJ9LCJDMTQ3OTI2MTY1NTkyMCI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0yLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiIsImJhcmdhaW4iOiIwIn0sIkMxNDc5MjYxNjU1OTIxIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTMuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIiwiYmFyZ2FpbiI6IjAifSwiQzE0NzkyNjE2NTU5MjIiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtNC5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIiLCJiYXJnYWluIjoiMCJ9fSwiaWQiOiJnb29kcyJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/creditshop/preview.png', '13', '0', '0', '0');
INSERT INTO `ims_ewei_shop_diypage_template` VALUES ('14', '0', '8', '兑换中心', 'eyJwYWdlIjp7InR5cGUiOiI4IiwidGl0bGUiOiJcdTUxNTFcdTYzNjJcdTRlMmRcdTVmYzMiLCJuYW1lIjoiXHU1MTUxXHU2MzYyXHU0ZTJkXHU1ZmMzXHU2YTIxXHU2NzdmIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEiLCJkaXlsYXllciI6IjAiLCJkaXlnb3RvcCI6IjAiLCJmb2xsb3diYXIiOiIwIiwidmlzaXQiOiIwIiwidmlzaXRsZXZlbCI6eyJtZW1iZXIiOiIiLCJjb21taXNzaW9uIjoiIn0sIm5vdmlzaXQiOnsidGl0bGUiOiIiLCJsaW5rIjoiIn19LCJpdGVtcyI6eyJNMTQ4MjM3Mjk0MjA3NSI6eyJtYXgiOiIxIiwidHlwZSI6IjgiLCJwYXJhbXMiOnsiZGF0YXR5cGUiOiIwIn0sInN0eWxlIjp7ImRvdHN0eWxlIjoicm91bmQiLCJkb3RhbGlnbiI6ImNlbnRlciIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwibGVmdHJpZ2h0IjoiNSIsImJvdHRvbSI6IjUiLCJvcGFjaXR5IjoiMC44In0sImRhdGEiOnsiQzE0ODIzNzI5NDIwNzUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2Jhbm5lci0xLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0ODIzNzI5NDIwNzYiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2Jhbm5lci0yLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoiZXhjaGFuZ2VfYmFubmVyIn0sIk0xNDgyMzcyOTQyNTE1Ijp7Im1heCI6IjEiLCJ0eXBlIjoiOCIsInBhcmFtcyI6eyJwcmV2aWV3IjoiMCIsInRpdGxlIjoiXHU1MTUxXHU2MzYyXHU3ODAxXHU1MTUxXHU2MzYyIiwicGxhY2Vob2xkZXIiOiJcdThiZjdcdThmOTNcdTUxNjVcdTUxNTFcdTYzNjJcdTc4MDEiLCJidG50ZXh0IjoiXHU3YWNiXHU1MzczXHU1MTUxXHU2MzYyIiwiYmFja2J0biI6Ilx1OGZkNFx1NTZkZVx1OTFjZFx1NjViMFx1OGY5M1x1NTE2NVx1NTE1MVx1NjM2Mlx1NzgwMSIsImV4YnRudGV4dCI6Ilx1NTE1MVx1NjM2MiIsImV4YnRuMnRleHQiOiJcdTVkZjJcdTUxNTFcdTYzNjIiLCJjcmVkaXRpY29uIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2ljb25fY3JlZGl0LnBuZyIsIm1vbmV5aWNvbiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9pY29uX21vbmV5LnBuZyIsImNvdXBvbmljb24iOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvaWNvbl9jb3Vwb24ucG5nIiwicmVkYmFnaWNvbiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9pY29uX3JlZGJhZy5wbmciLCJnb29kc2ljb24iOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvaWNvbl9nb29kcy5wbmcifSwic3R5bGUiOnsidGl0bGVjb2xvciI6IiM0NDQ0NDQiLCJidG5jb2xvciI6IiNmZmZmZmYiLCJidG5iYWNrZ3JvdW5kIjoiI2VkNTU2NSIsImlucHV0Y29sb3IiOiIjNjY2NjY2IiwiaW5wdXRiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImlucHV0Ym9yZGVyIjoiI2VmZWZlZiIsImNvZGVjb2xvciI6IiM0NDQ0NDQiLCJudW1jb2xvciI6IiM5OTk5OTkiLCJleGJ0bmNvbG9yIjoiI2ZmZmZmZiIsImV4YnRuYmFja2dyb3VuZCI6IiNlZDU1NjUiLCJleGJ0bjJjb2xvciI6IiNmZmZmZmYiLCJleGJ0bjJiYWNrZ3JvdW5kIjoiI2NjY2NjYyIsImJhY2tidG5jb2xvciI6IiM0NDQ0NDQiLCJiYWNrYnRuYm9yZGVyIjoiI2U3ZWFlYyIsImJhY2tidG5iYWNrZ3JvdW5kIjoiI2Y3ZjdmNyIsImdvb2RzdGl0bGUiOiIjNDQ0NDQ0IiwiZ29vZHNwcmljZSI6IiNhYWFhYWEifSwiaWQiOiJleGNoYW5nZV9pbnB1dCJ9LCJNMTQ4MjM3Mjk0MzE3MyI6eyJtYXgiOiIxIiwidHlwZSI6IjgiLCJwYXJhbXMiOnsicnVsZXRpdGxlIjoiXHU1MTUxXHU2MzYyXHU4OWM0XHU1MjE5In0sInN0eWxlIjp7InJ1bGV0aXRsZWNvbG9yIjoiIzU1NTU1NSJ9LCJpZCI6ImV4Y2hhbmdlX3J1bGUifX19', '../addons/ewei_shopv2/plugin/diypage/static/template/exchange/preview.png', '14', '0', '0', '0');

-- ----------------------------
-- Table structure for ims_ewei_shop_diypage_template_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diypage_template_category`;
CREATE TABLE `ims_ewei_shop_diypage_template_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `merch` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_diypage_template_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_cart
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_cart`;
CREATE TABLE `ims_ewei_shop_exchange_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(100) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  `total` int(10) DEFAULT '1',
  `marketprice` decimal(10,2) DEFAULT NULL,
  `optionid` int(11) DEFAULT NULL,
  `selected` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `serial` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_exchange_cart
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_code
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_code`;
CREATE TABLE `ims_ewei_shop_exchange_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `endtime` datetime NOT NULL DEFAULT '2016-10-01 00:00:00',
  `status` int(2) NOT NULL DEFAULT '1',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `key` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  `scene` int(11) NOT NULL DEFAULT '0',
  `qrcode_url` varchar(255) NOT NULL DEFAULT '',
  `serial` varchar(255) NOT NULL DEFAULT '',
  `balancestatus` int(11) DEFAULT '1',
  `redstatus` int(11) DEFAULT '1',
  `scorestatus` int(11) DEFAULT '1',
  `couponstatus` int(11) DEFAULT '1',
  `goodsstatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_exchange_code
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_group`;
CREATE TABLE `ims_ewei_shop_exchange_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` int(2) NOT NULL DEFAULT '0',
  `endtime` datetime NOT NULL DEFAULT '2016-10-01 00:00:00',
  `mode` int(2) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0',
  `max` int(2) NOT NULL DEFAULT '0',
  `value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `starttime` datetime NOT NULL DEFAULT '2016-10-01 00:00:00',
  `goods` text,
  `score` int(11) NOT NULL DEFAULT '0',
  `coupon` text,
  `use` int(11) NOT NULL DEFAULT '0',
  `total` int(11) NOT NULL DEFAULT '0',
  `red` decimal(10,2) NOT NULL DEFAULT '0.00',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `balance_left` decimal(10,2) NOT NULL DEFAULT '0.00',
  `balance_right` decimal(10,2) NOT NULL DEFAULT '0.00',
  `red_left` decimal(10,2) NOT NULL DEFAULT '0.00',
  `red_right` decimal(10,2) NOT NULL DEFAULT '0.00',
  `score_left` int(11) NOT NULL DEFAULT '0',
  `score_right` int(11) NOT NULL DEFAULT '0',
  `balance_type` int(11) NOT NULL,
  `red_type` int(11) NOT NULL,
  `score_type` int(11) NOT NULL,
  `title_reply` varchar(255) NOT NULL DEFAULT '',
  `img` varchar(255) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `rule` text NOT NULL,
  `coupon_type` varchar(255) DEFAULT NULL,
  `basic_content` varchar(500) NOT NULL DEFAULT '',
  `reply_type` int(11) NOT NULL DEFAULT '0',
  `code_type` int(11) NOT NULL DEFAULT '0',
  `binding` int(11) NOT NULL DEFAULT '0',
  `showcount` int(11) DEFAULT '0',
  `postage` decimal(10,2) DEFAULT '0.00',
  `postage_type` int(11) DEFAULT '0',
  `banner` varchar(800) DEFAULT '',
  `keyword_reply` int(11) DEFAULT '0',
  `reply_status` int(11) DEFAULT '1',
  `reply_keyword` varchar(255) DEFAULT '',
  `input_banner` varchar(255) DEFAULT '',
  `diypage` int(11) NOT NULL DEFAULT '0',
  `sendname` varchar(255) DEFAULT '',
  `wishing` varchar(255) DEFAULT '',
  `actname` varchar(255) DEFAULT '',
  `remark` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_exchange_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_query
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_query`;
CREATE TABLE `ims_ewei_shop_exchange_query` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `querykey` varchar(255) NOT NULL DEFAULT '',
  `querytime` int(11) NOT NULL DEFAULT '0',
  `unfreeze` int(11) NOT NULL DEFAULT '0',
  `errorcount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_exchange_query
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_record`;
CREATE TABLE `ims_ewei_shop_exchange_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL DEFAULT '',
  `uniacid` int(11) DEFAULT NULL,
  `goods` text,
  `orderid` varchar(255) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL,
  `openid` varchar(255) NOT NULL DEFAULT '',
  `mode` int(11) NOT NULL DEFAULT '0',
  `balance` decimal(10,2) DEFAULT '0.00',
  `red` decimal(10,2) NOT NULL DEFAULT '0.00',
  `coupon` text,
  `score` int(11) NOT NULL DEFAULT '0',
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `groupid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `serial` varchar(255) NOT NULL DEFAULT '',
  `ordersn` varchar(255) NOT NULL DEFAULT '',
  `goods_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_exchange_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_setting
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_setting`;
CREATE TABLE `ims_ewei_shop_exchange_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `freeze` int(11) NOT NULL DEFAULT '0',
  `mistake` int(11) NOT NULL DEFAULT '0',
  `grouplimit` int(11) NOT NULL DEFAULT '0',
  `alllimit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ims_ewei_shop_exchange_setting
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_exhelper_express
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exhelper_express`;
CREATE TABLE `ims_ewei_shop_exhelper_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `type` int(1) NOT NULL DEFAULT '1',
  `expressname` varchar(255) DEFAULT '',
  `expresscom` varchar(255) NOT NULL DEFAULT '',
  `express` varchar(255) NOT NULL DEFAULT '',
  `width` decimal(10,2) DEFAULT '0.00',
  `datas` text,
  `height` decimal(10,2) DEFAULT '0.00',
  `bg` varchar(255) DEFAULT '',
  `isdefault` tinyint(3) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_isdefault` (`isdefault`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_exhelper_express
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_exhelper_senduser
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exhelper_senduser`;
CREATE TABLE `ims_ewei_shop_exhelper_senduser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `sendername` varchar(255) DEFAULT '',
  `sendertel` varchar(255) DEFAULT '',
  `sendersign` varchar(255) DEFAULT '',
  `sendercode` int(11) DEFAULT NULL,
  `senderaddress` varchar(255) DEFAULT '',
  `sendercity` varchar(255) DEFAULT NULL,
  `isdefault` tinyint(3) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_isdefault` (`isdefault`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_exhelper_senduser
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_exhelper_sys
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exhelper_sys`;
CREATE TABLE `ims_ewei_shop_exhelper_sys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT 'localhost',
  `ip_cloud` varchar(255) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '8000',
  `port_cloud` int(11) NOT NULL DEFAULT '8000',
  `is_cloud` int(1) NOT NULL DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_exhelper_sys
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_express
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_express`;
CREATE TABLE `ims_ewei_shop_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `express` varchar(50) DEFAULT '',
  `status` tinyint(1) DEFAULT '1',
  `displayorder` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_express
-- ----------------------------
INSERT INTO `ims_ewei_shop_express` VALUES ('1', '顺丰', 'shunfeng', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('2', '申通', 'shentong', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('3', '韵达快运', 'yunda', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('4', '天天快递', 'tiantian', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('5', '圆通速递', 'yuantong', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('6', '中通速递', 'zhongtong', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('7', 'ems快递', 'ems', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('8', '汇通快运', 'huitongkuaidi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('9', '全峰快递', 'quanfengkuaidi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('10', '宅急送', 'zhaijisong', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('11', 'aae全球专递', 'aae', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('12', '安捷快递', 'anjie', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('13', '安信达快递', 'anxindakuaixi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('14', '彪记快递', 'biaojikuaidi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('15', 'bht', 'bht', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('16', '百福东方国际物流', 'baifudongfang', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('17', '中国东方（COE）', 'coe', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('18', '长宇物流', 'changyuwuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('19', '大田物流', 'datianwuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('20', '德邦物流', 'debangwuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('21', 'dhl', 'dhl', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('22', 'dpex', 'dpex', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('23', 'd速快递', 'dsukuaidi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('24', '递四方', 'disifang', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('25', 'fedex（国外）', 'fedex', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('26', '飞康达物流', 'feikangda', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('27', '凤凰快递', 'fenghuangkuaidi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('28', '飞快达', 'feikuaida', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('29', '国通快递', 'guotongkuaidi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('30', '港中能达物流', 'ganzhongnengda', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('31', '广东邮政物流', 'guangdongyouzhengwuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('32', '共速达', 'gongsuda', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('33', '恒路物流', 'hengluwuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('34', '华夏龙物流', 'huaxialongwuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('35', '海红', 'haihongwangsong', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('36', '海外环球', 'haiwaihuanqiu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('37', '佳怡物流', 'jiayiwuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('38', '京广速递', 'jinguangsudikuaijian', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('39', '急先达', 'jixianda', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('40', '佳吉物流', 'jjwl', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('41', '加运美物流', 'jymwl', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('42', '金大物流', 'jindawuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('43', '嘉里大通', 'jialidatong', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('44', '晋越快递', 'jykd', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('45', '快捷速递', 'kuaijiesudi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('46', '联邦快递（国内）', 'lianb', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('47', '联昊通物流', 'lianhaowuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('48', '龙邦物流', 'longbanwuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('49', '立即送', 'lijisong', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('50', '乐捷递', 'lejiedi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('51', '民航快递', 'minghangkuaidi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('52', '美国快递', 'meiguokuaidi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('53', '门对门', 'menduimen', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('54', 'OCS', 'ocs', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('55', '配思货运', 'peisihuoyunkuaidi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('56', '全晨快递', 'quanchenkuaidi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('57', '全际通物流', 'quanjitong', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('58', '全日通快递', 'quanritongkuaidi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('59', '全一快递', 'quanyikuaidi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('60', '如风达', 'rufengda', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('61', '三态速递', 'santaisudi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('62', '盛辉物流', 'shenghuiwuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('63', '速尔物流', 'sue', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('64', '盛丰物流', 'shengfeng', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('65', '赛澳递', 'saiaodi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('66', '天地华宇', 'tiandihuayu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('67', 'tnt', 'tnt', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('68', 'ups', 'ups', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('69', '万家物流', 'wanjiawuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('70', '文捷航空速递', 'wenjiesudi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('71', '伍圆', 'wuyuan', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('72', '万象物流', 'wxwl', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('73', '新邦物流', 'xinbangwuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('74', '信丰物流', 'xinfengwuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('75', '亚风速递', 'yafengsudi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('76', '一邦速递', 'yibangwuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('77', '优速物流', 'youshuwuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('78', '邮政包裹挂号信', 'youzhengguonei', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('79', '邮政国际包裹挂号信', 'youzhengguoji', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('80', '远成物流', 'yuanchengwuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('81', '源伟丰快递', 'yuanweifeng', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('82', '元智捷诚快递', 'yuanzhijiecheng', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('83', '运通快递', 'yuntongkuaidi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('84', '越丰物流', 'yuefengwuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('85', '源安达', 'yad', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('86', '银捷速递', 'yinjiesudi', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('87', '中铁快运', 'zhongtiekuaiyun', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('88', '中邮物流', 'zhongyouwuliu', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('89', '忠信达', 'zhongxinda', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('90', '芝麻开门', 'zhimakaimen', '1', '0');
INSERT INTO `ims_ewei_shop_express` VALUES ('91', '安能物流', 'annengwuliu', '1', '0');

-- ----------------------------
-- Table structure for ims_ewei_shop_feedback
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_feedback`;
CREATE TABLE `ims_ewei_shop_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(50) DEFAULT '0',
  `type` tinyint(1) DEFAULT '1',
  `status` tinyint(1) DEFAULT '0',
  `feedbackid` varchar(100) DEFAULT '',
  `transid` varchar(100) DEFAULT '',
  `reason` varchar(1000) DEFAULT '',
  `solution` varchar(1000) DEFAULT '',
  `remark` varchar(1000) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_feedbackid` (`feedbackid`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_transid` (`transid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_form
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_form`;
CREATE TABLE `ims_ewei_shop_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `isrequire` tinyint(3) DEFAULT '0',
  `key` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT '',
  `values` text,
  `cate` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_form
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_form_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_form_category`;
CREATE TABLE `ims_ewei_shop_form_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_form_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_funbar
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_funbar`;
CREATE TABLE `ims_ewei_shop_funbar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `datas` text,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_funbar
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_gift
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_gift`;
CREATE TABLE `ims_ewei_shop_gift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `activity` tinyint(3) NOT NULL DEFAULT '1',
  `orderprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goodsid` varchar(255) NOT NULL,
  `giftgoodsid` varchar(255) NOT NULL,
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `displayorder` int(11) NOT NULL DEFAULT '0',
  `share_title` varchar(255) NOT NULL,
  `share_icon` varchar(255) NOT NULL,
  `share_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_gift
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_globonus_bill
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_globonus_bill`;
CREATE TABLE `ims_ewei_shop_globonus_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `billno` varchar(100) DEFAULT '',
  `paytype` int(11) DEFAULT '0',
  `year` int(11) DEFAULT '0',
  `month` int(11) DEFAULT '0',
  `week` int(11) DEFAULT '0',
  `ordercount` int(11) DEFAULT '0',
  `ordermoney` decimal(10,2) DEFAULT '0.00',
  `bonusmoney` decimal(10,2) DEFAULT '0.00',
  `bonusmoney_send` decimal(10,2) DEFAULT '0.00',
  `bonusmoney_pay` decimal(10,2) DEFAULT '0.00',
  `paytime` int(11) DEFAULT '0',
  `partnercount` int(11) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `starttime` int(11) DEFAULT '0',
  `endtime` int(11) DEFAULT '0',
  `confirmtime` int(11) DEFAULT '0',
  `bonusordermoney` decimal(10,2) DEFAULT '0.00',
  `bonusrate` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_paytype` (`paytype`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_paytime` (`paytime`),
  KEY `idx_status` (`status`),
  KEY `idx_month` (`month`),
  KEY `idx_week` (`week`),
  KEY `idx_year` (`year`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_globonus_bill
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_globonus_billo
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_globonus_billo`;
CREATE TABLE `ims_ewei_shop_globonus_billo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `billid` int(11) DEFAULT '0',
  `orderid` int(11) DEFAULT '0',
  `ordermoney` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `idx_billid` (`billid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_globonus_billo
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_globonus_billp
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_globonus_billp`;
CREATE TABLE `ims_ewei_shop_globonus_billp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `billid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `payno` varchar(255) DEFAULT '',
  `paytype` tinyint(3) DEFAULT '0',
  `bonus` decimal(10,2) DEFAULT '0.00',
  `money` decimal(10,2) DEFAULT '0.00',
  `realmoney` decimal(10,2) DEFAULT '0.00',
  `paymoney` decimal(10,2) DEFAULT '0.00',
  `charge` decimal(10,2) DEFAULT '0.00',
  `chargemoney` decimal(10,2) DEFAULT '0.00',
  `status` tinyint(3) DEFAULT '0',
  `reason` varchar(255) DEFAULT '',
  `paytime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_billid` (`billid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_globonus_billp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_globonus_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_globonus_level`;
CREATE TABLE `ims_ewei_shop_globonus_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `levelname` varchar(50) DEFAULT '',
  `bonus` decimal(10,4) DEFAULT '0.0000',
  `ordermoney` decimal(10,2) DEFAULT '0.00',
  `ordercount` int(11) DEFAULT '0',
  `commissionmoney` decimal(10,2) DEFAULT '0.00',
  `bonusmoney` decimal(10,2) DEFAULT '0.00',
  `downcount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_globonus_level
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods`;
CREATE TABLE `ims_ewei_shop_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `pcate` int(11) DEFAULT '0',
  `ccate` int(11) DEFAULT '0',
  `type` tinyint(1) DEFAULT '1',
  `status` tinyint(1) DEFAULT '1',
  `displayorder` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `unit` varchar(5) DEFAULT '',
  `description` varchar(1000) DEFAULT NULL,
  `content` text,
  `goodssn` varchar(50) DEFAULT '',
  `productsn` varchar(50) DEFAULT '',
  `productprice` decimal(10,2) DEFAULT '0.00',
  `marketprice` decimal(10,2) DEFAULT '0.00',
  `costprice` decimal(10,2) DEFAULT '0.00',
  `originalprice` decimal(10,2) DEFAULT '0.00',
  `total` int(10) DEFAULT '0',
  `totalcnf` int(11) DEFAULT '0',
  `sales` int(11) DEFAULT '0',
  `salesreal` int(11) DEFAULT '0',
  `spec` varchar(5000) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  `weight` decimal(10,2) DEFAULT '0.00',
  `credit` varchar(255) DEFAULT NULL,
  `maxbuy` int(11) DEFAULT '0',
  `usermaxbuy` int(11) DEFAULT '0',
  `hasoption` int(11) DEFAULT '0',
  `dispatch` int(11) DEFAULT '0',
  `thumb_url` text,
  `isnew` tinyint(1) DEFAULT '0',
  `ishot` tinyint(1) DEFAULT '0',
  `isdiscount` tinyint(1) DEFAULT '0',
  `isrecommand` tinyint(1) DEFAULT '0',
  `issendfree` tinyint(1) DEFAULT '0',
  `istime` tinyint(1) DEFAULT '0',
  `iscomment` tinyint(1) DEFAULT '0',
  `timestart` int(11) DEFAULT '0',
  `timeend` int(11) DEFAULT '0',
  `viewcount` int(11) DEFAULT '0',
  `deleted` tinyint(3) DEFAULT '0',
  `hascommission` tinyint(3) DEFAULT '0',
  `commission1_rate` decimal(10,2) DEFAULT '0.00',
  `commission1_pay` decimal(10,2) DEFAULT '0.00',
  `commission2_rate` decimal(10,2) DEFAULT '0.00',
  `commission2_pay` decimal(10,2) DEFAULT '0.00',
  `commission3_rate` decimal(10,2) DEFAULT '0.00',
  `commission3_pay` decimal(10,2) DEFAULT '0.00',
  `score` decimal(10,2) DEFAULT '0.00',
  `taobaoid` varchar(255) DEFAULT '',
  `taotaoid` varchar(255) DEFAULT '',
  `taobaourl` varchar(255) DEFAULT '',
  `updatetime` int(11) DEFAULT '0',
  `share_title` varchar(255) DEFAULT '',
  `share_icon` varchar(255) DEFAULT '',
  `cash` tinyint(3) DEFAULT '0',
  `commission_thumb` varchar(255) DEFAULT '',
  `isnodiscount` tinyint(3) DEFAULT '0',
  `showlevels` text,
  `buylevels` text,
  `showgroups` text,
  `buygroups` text,
  `isverify` tinyint(3) DEFAULT '0',
  `storeids` text,
  `noticeopenid` varchar(255) DEFAULT '',
  `tcate` int(11) DEFAULT '0',
  `noticetype` text,
  `needfollow` tinyint(3) DEFAULT '0',
  `followtip` varchar(255) DEFAULT '',
  `followurl` varchar(255) DEFAULT '',
  `deduct` decimal(10,2) DEFAULT '0.00',
  `virtual` int(11) DEFAULT '0',
  `ccates` text,
  `discounts` text,
  `nocommission` tinyint(3) DEFAULT '0',
  `hidecommission` tinyint(3) DEFAULT '0',
  `pcates` text,
  `tcates` text,
  `cates` text,
  `artid` int(11) DEFAULT '0',
  `detail_logo` varchar(255) DEFAULT '',
  `detail_shopname` varchar(255) DEFAULT '',
  `detail_btntext1` varchar(255) DEFAULT '',
  `detail_btnurl1` varchar(255) DEFAULT '',
  `detail_btntext2` varchar(255) DEFAULT '',
  `detail_btnurl2` varchar(255) DEFAULT '',
  `detail_totaltitle` varchar(255) DEFAULT '',
  `saleupdate42392` tinyint(3) DEFAULT '0',
  `saleupdate40170` tinyint(3) DEFAULT '0',
  `deduct2` decimal(10,2) DEFAULT '0.00',
  `ednum` int(11) DEFAULT '0',
  `edmoney` decimal(10,2) DEFAULT '0.00',
  `edareas` text,
  `diyformtype` tinyint(1) DEFAULT '0',
  `diyformid` int(11) DEFAULT '0',
  `diymode` tinyint(1) DEFAULT '0',
  `dispatchtype` tinyint(1) DEFAULT '0',
  `dispatchid` int(11) DEFAULT '0',
  `dispatchprice` decimal(10,2) DEFAULT '0.00',
  `manydeduct` tinyint(1) DEFAULT '0',
  `shorttitle` varchar(255) DEFAULT '',
  `isdiscount_title` varchar(255) DEFAULT '',
  `isdiscount_time` int(11) DEFAULT '0',
  `isdiscount_discounts` text,
  `commission` text,
  `saleupdate37975` tinyint(3) DEFAULT '0',
  `shopid` int(11) DEFAULT '0',
  `allcates` text,
  `minbuy` int(11) DEFAULT '0',
  `invoice` tinyint(3) DEFAULT '0',
  `repair` tinyint(3) DEFAULT '0',
  `seven` tinyint(3) DEFAULT '0',
  `money` varchar(255) DEFAULT '',
  `minprice` decimal(10,2) DEFAULT '0.00',
  `maxprice` decimal(10,2) DEFAULT '0.00',
  `province` varchar(255) DEFAULT '',
  `city` varchar(255) DEFAULT '',
  `buyshow` tinyint(1) DEFAULT '0',
  `buycontent` text,
  `saleupdate51117` tinyint(3) DEFAULT '0',
  `virtualsend` tinyint(1) DEFAULT '0',
  `virtualsendcontent` text,
  `verifytype` tinyint(1) DEFAULT '0',
  `diyfields` text,
  `diysaveid` int(11) DEFAULT '0',
  `diysave` tinyint(1) DEFAULT '0',
  `quality` tinyint(3) DEFAULT '0',
  `groupstype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `showtotal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) DEFAULT '',
  `sharebtn` tinyint(1) NOT NULL DEFAULT '0',
  `minpriceupdated` tinyint(1) DEFAULT '0',
  `catesinit3` text,
  `showtotaladd` tinyint(1) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  `checked` tinyint(3) DEFAULT '0',
  `thumb_first` tinyint(3) DEFAULT '0',
  `merchsale` tinyint(1) DEFAULT '0',
  `keywords` varchar(255) DEFAULT '',
  `catch_id` varchar(255) DEFAULT '',
  `catch_url` varchar(255) DEFAULT '',
  `catch_source` varchar(255) DEFAULT '',
  `saleupdate35843` tinyint(3) DEFAULT '0',
  `labelname` text,
  `autoreceive` int(11) DEFAULT '0',
  `cannotrefund` tinyint(3) DEFAULT '0',
  `saleupdate33219` tinyint(3) DEFAULT '0',
  `saleupdate32484` tinyint(3) DEFAULT '0',
  `bargain` int(11) DEFAULT '0',
  `buyagain` decimal(10,2) DEFAULT '0.00',
  `buyagain_islong` tinyint(1) DEFAULT '0',
  `buyagain_condition` tinyint(1) DEFAULT '0',
  `buyagain_sale` tinyint(1) DEFAULT '0',
  `buyagain_commission` text,
  `saleupdate36586` tinyint(3) DEFAULT '0',
  `saleupdate53481` tinyint(3) DEFAULT '0',
  `saleupdate30424` tinyint(3) DEFAULT '0',
  `diypage` int(11) DEFAULT NULL,
  `cashier` tinyint(1) DEFAULT '0',
  `isendtime` tinyint(3) NOT NULL DEFAULT '0',
  `usetime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `merchdisplayorder` int(11) NOT NULL DEFAULT '0',
  `exchange_stock` int(11) DEFAULT '0',
  `exchange_postage` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ispresell` tinyint(3) NOT NULL DEFAULT '0',
  `presellprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `presellover` tinyint(3) NOT NULL DEFAULT '0',
  `presellovertime` int(11) NOT NULL,
  `presellstart` tinyint(3) NOT NULL DEFAULT '0',
  `preselltimestart` int(11) NOT NULL DEFAULT '0',
  `presellend` tinyint(3) NOT NULL DEFAULT '0',
  `preselltimeend` int(11) NOT NULL DEFAULT '0',
  `presellsendtype` tinyint(3) NOT NULL DEFAULT '0',
  `presellsendstatrttime` int(11) NOT NULL DEFAULT '0',
  `presellsendtime` int(11) NOT NULL DEFAULT '0',
  `edareas_code` text NOT NULL,
  `unite_total` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_pcate` (`pcate`),
  KEY `idx_ccate` (`ccate`),
  KEY `idx_isnew` (`isnew`),
  KEY `idx_ishot` (`ishot`),
  KEY `idx_isdiscount` (`isdiscount`),
  KEY `idx_isrecommand` (`isrecommand`),
  KEY `idx_iscomment` (`iscomment`),
  KEY `idx_issendfree` (`issendfree`),
  KEY `idx_istime` (`istime`),
  KEY `idx_deleted` (`deleted`),
  KEY `idx_tcate` (`tcate`),
  KEY `idx_scate` (`tcate`),
  KEY `idx_merchid` (`merchid`),
  KEY `idx_checked` (`checked`),
  FULLTEXT KEY `idx_buylevels` (`buylevels`),
  FULLTEXT KEY `idx_showgroups` (`showgroups`),
  FULLTEXT KEY `idx_buygroups` (`buygroups`)
) ENGINE=MyISAM AUTO_INCREMENT=254 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_goods
-- ----------------------------
INSERT INTO `ims_ewei_shop_goods` VALUES ('198', '3', '1174', '1179', '1', '1', '0', 'HLA海澜之家微弹印花t恤2017夏季新品圆领舒适t恤短袖男HNTBJ2V159A 藏青花纹(F9) 175/92A', 'images/3/2017/05/NLDMu2M2QbE2232zUmT4btI99d0fH23q.jpg', '', null, '<img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4303/139/1750120153/98420/8d34a4f/58c60cc7N88f863bc.jpg\" alt=\"\" id=\"b47f91b288e2411fba31327a461c6b93\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4285/66/1687563296/98905/eaddd5a4/58c60cc7N3116a9c1.jpg\" alt=\"\" id=\"fad1840047dd4548b6313bafdf3ebe69\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3175/38/8588766037/99269/ff70423d/58c60cc7Ne63a6d8e.jpg\" alt=\"\" id=\"af755b7bc31c4262979306eac612d5cc\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3181/239/8588957577/98188/c119a15/58c60cc8Neb9e4cbc.jpg\" alt=\"\" id=\"9233e73cc69e4b20952d24a3d4bcbc99\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3142/305/8537258151/99148/fb136b36/58c60cc8N43593a4c.jpg\" alt=\"\" id=\"5d17470c0c1947448c5c23da17466b00\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4240/123/1716314542/100569/a5e92502/58c60cc9N7ea432b6.jpg\" alt=\"\" id=\"50e9a83e041e434baab4c2af3095505e\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3199/142/8629334321/97510/866b9be2/58c60cc9N4b3597f8.jpg\" alt=\"\" id=\"02f067a77cba4292937c940beccddd65\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4183/123/1694994710/100820/2770997f/58c60ccaN8879ea5c.jpg\" alt=\"\" id=\"1007b49fea934e55beb3f33a18479139\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4300/165/1721629521/99074/cf3f00e/58c60cc9N41a5c35e.jpg\" alt=\"\" id=\"0d74ad32904a4e4d8a255cd1b44cf369\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4063/203/1868688167/94281/51162ba8/58c60ccaN486fccf0.jpg\" alt=\"\" id=\"9fa6f3bca09d4eba9e27afd71134f2d7\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4282/227/1711196486/99872/7d87b403/58c60ccbN871def2b.jpg\" alt=\"\" id=\"fd2e697d200344a1a5f07d4846ebc688\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3049/99/8607346120/95382/e215014e/58c60cc9N634722ea.jpg\" alt=\"\" id=\"20ba21e8defd49f4b81045ffd3d5bab2\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3145/38/8511160118/73000/4bd03b28/58c60cccNb0af9c91.jpg\" alt=\"\" id=\"bd1d79fec4f04a92889cc0f6cdfe6fb4\r\n\" />', '', '', '0.00', '78.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792554', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/LZr2cjEAsjye2p5Aj828xPr2299J59eE.jpg\";i:1;s:53:\"images/3/2017/05/H1KgO9gl9g8zToAP9S2U9LaLLg28P2uG.jpg\";i:2;s:53:\"images/3/2017/05/BxMpFmQpZOOdMmiQPXN6mm1yP1UOMOmL.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792554', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1174,1179,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '78.00', '78.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11244404252', 'http://item.jd.com/11244404252.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('199', '3', '1174', '1179', '1', '1', '0', '罗蒙 短袖t恤男2017新款夏男装韩版修身圆领印花男生打底衫纯棉半袖男士学生大码体恤 粉蓝 175', 'images/3/2017/05/RNzkJbx58fuG1Z42EskT5Jnh712xZXS8.jpg', '', null, '<img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5071/350/1444067735/56956/7e316fcc/58f0ba9bNd34ff53f.jpg\" alt=\"\" id=\"5324864661be43888aff931534670eb2\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4495/153/2563353467/77254/90b64e75/58f0ba9bNf351b65b.jpg\" alt=\"\" id=\"f1530746498d4d2ca6f7c02fba5f3bed\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4750/318/1464019562/232968/8f06ab90/58f0ba9bN1f47c0c6.png\" alt=\"\" id=\"5bc45645acfc4fbd93cc66845bfe5a8c\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4762/14/1484361599/82107/28d9a019/58f0ba9cN9ec54165.png\" alt=\"\" id=\"48c181c461a648c69850679589d90a49\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4876/172/1461086212/55437/5c80b94c/58f0ba9cN3687e4d2.jpg\" alt=\"\" id=\"d977b4144cf1475da06ae5a6991a74c5\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5035/73/1450891200/59110/e421f0ea/58f0ba9cNbd2700a1.jpg\" alt=\"\" id=\"41d3fd31c8c24c3e8caf87beb4658706\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4492/360/2415069993/56610/ca4e1b2a/58f0ba97N1f424d45.jpg\" alt=\"\" id=\"223a094b5a394839821b495d6a660bf8\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4618/251/2619423857/56236/3060db62/58f0ba9dNdbb0123e.jpg\" alt=\"\" id=\"05e8c5466f5545ddb6d95d4720f75e3e\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4885/179/1496084748/61862/6396199e/58f0ba9bNc0f81388.jpg\" alt=\"\" id=\"0d0344d64dd24efbb05aed6a4058a2e2\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4606/188/2595278620/65726/ce6afd0e/58f0ba98N79bee820.jpg\" alt=\"\" id=\"e8f971c0ead24dd0a83aadb6d679b742\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4687/194/2643377375/53830/f9f4a35b/58f0ba9dN82ad0200.jpg\" alt=\"\" id=\"19394841b6f7411d93b69bb407ba4966\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4750/336/1491794717/61104/551db664/58f0ba99N44510818.jpg\" alt=\"\" id=\"4198c8e8c7ac4c398aec58cfd40c4af1\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4969/215/1445979566/55240/dc6d028b/58f0ba9fN160ee32f.jpg\" alt=\"\" id=\"24c2637de3c040c682ae7411940cef2e\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4717/268/1454072606/51892/26ad7dcd/58f0ba9fNc8cc6f83.jpg\" alt=\"\" id=\"e6371a7d5f894af7b2d40a456ff9e519\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4633/255/2636140172/46981/a1bd1f8a/58f0ba9fN406977c9.jpg\" alt=\"\" id=\"53cc47f1dd64453998b22184a1b4900f\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4924/163/1447923482/79727/d7d82970/58f0ba9fNb77c3735.jpg\" alt=\"\" id=\"896cae8ff2f94606ba7d3db99c3e8de1\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4924/154/1450312177/75928/4fe05366/58f0baa0N15ce7f16.jpg\" alt=\"\" id=\"51e9d4a656fd4e7a8c0bc33c919bf86f\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4618/229/2580712049/57178/fe45494a/58f0ba9aNd46222ac.jpg\" alt=\"\" id=\"4d1671631f504e7f91b9f25a85d9c2e5\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4558/266/2556435118/70928/3c68bdcd/58f0baa0N91fe5e09.jpg\" alt=\"\" id=\"e9f0e8027300409b99b51a04c0f2998b\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4675/205/2600399012/60656/b26032f2/58f0baa0N868b5a2a.jpg\" alt=\"\" id=\"1f8331aad70b43ae8e2cff6444e7f5da\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4969/199/1450694181/57361/3b135a8f/58f0baa1N30bbc822.jpg\" alt=\"\" id=\"88fc85f323724bd0930218f7c3bcb0a3\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4708/255/2360440907/140707/c280ca68/58f0baa1N77b7aec3.jpg\" alt=\"\" id=\"b718ac0142ed495588fa14678e79564b\r\n\" />', '', '', '0.00', '109.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792556', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/vduNuIDc5urTdDAI5gD5kWKUW0ccDH0U.jpg\";i:1;s:53:\"images/3/2017/05/pUZ662X9dkUj26zwh6sFUXKwSuaFSasH.jpg\";i:2;s:53:\"images/3/2017/05/l2Is2sFh8ys323Cj2b8jQtF2bHF2s2sZ.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792556', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1174,1179,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '109.00', '109.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10714642261', 'http://item.jd.com/10714642261.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('200', '3', '1174', '1179', '1', '1', '0', 'viishow短袖T恤男2017新款男士短袖T恤修身圆领纯色打底衫 黑色 L', 'images/3/2017/05/pjeJx5Dkw6ne9d9f9XJedlwbefXDjJ05.jpg', '', null, '<div class=\"zn1St97151\" style=\"color:#000001;border-color:#7b7f10;height:0px\"></div><div class=\"zn-material\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/zRy56O6oGZzg4MM7zy0rYDwPZ64GkDyF.jpg\" usemap=\"#znTplMap84423\" style=\"width:640px\" width=\"100%\" alt=\"\" /><map name=\"znTplMap84423\"><area shape=\"rect\" coords=\"16,8,320,369\" href=\"http://item.m.jd.com/product/11927780403.html\" /><area shape=\"rect\" coords=\"320,8,624,369\" href=\"http://item.m.jd.com/product/12182113325.html\" /><area shape=\"rect\" coords=\"16,369,320,729\" href=\"http://item.m.jd.com/product/12061493871.html\" /><area shape=\"rect\" coords=\"320,369,624,729\" href=\"http://item.m.jd.com/product/12103143057.html\" /><area shape=\"rect\" coords=\"16,729,320,1089\" href=\"http://item.m.jd.com/product/11618919253.html\" /><area shape=\"rect\" coords=\"320,729,624,1089\" href=\"http://item.m.jd.com/product/12003556665.html\" /></map></div><div class=\"zn1Ed97151\" style=\"color:#000001;border-color:#7b7f11;height:0px\"></div><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/cIAa8fVxweehwFDiIhCDiiXaZcdBMqfZ.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/V9ESyq4DMSDnEQm8YDRh4s9aK2qUMUzR.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/ic0tdR0b808piQrCGPoB0hq8q0rLXX7X.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/puPm3mU39edTeld98l14851M4di8d51g.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/N9aJ596hA76BH7hMa7WZ66w696aW7Tnw.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/g3e1r533cDJ1ivTUIE0TSCt97T0e0rt3.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Jg571a11DfrF1BR17dk0h5B9vftoKL91.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/g2Ty73kY1yj12OKUyK492A7AUysAu162.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/ca2aHW1hE6yA2M1e2H1MkYEyFmeLAMWA.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/O9s83wvWSDDlZs666CzzLW2l26w4pfQC.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/lno97H7AHtIw2pWNd900gdhwiNCH4Hzn.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/QVxm8D7datyZCz3mVUt8dd7ZM4xgZq77.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/pOK11aKiGX91zK1G97o1p4iH91okcIw1.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/l87XyC2AXcuB8yRJnj8cJx98jVQUAdEy.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/i8M3MII3OoH8Qn7V3WgV1IvNHwHH3WMM.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/mc9C5cfK9JKcDif9gJ5GiKGrgFGkJKgE.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/V2lzrlVv61vU2777fxd8LZdr25laXoVR.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/sUZJ446c4JXXwKwB0ujB96469RkJWjIb.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Ue9YM2kFm3K52mo3M0EQZmq2xkfOM6q6.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/pbPaBH021Fgr2Bbc90HGOcnT0fn2o4Ab.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/L2v44C44jKJKBV6J24Slb0Dah0s4MUAK.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/CcUf7Cf55EU5Mvf9v1E7afV11l9i5veR.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/NEjVCNevZcVECXv8VOv3VfFFUvuUVe9O.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Ri124lCq29z1L3lcG3Sib2sLch4z5391.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/GVau0ppJAhtpG0iGjcZVv1VjJgIbAaVa.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/inZj1rDLSGc2Ftt1tZ3R3RR03T7S7SsX.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/IVnce6EBRo6rReN6rSoYyeEnnCR0SSCN.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/NiM4lGRC4CLLW52Gwkmcs426ul4S9xsx.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/zddBsnkBQn7UEB1xI1QNvhuDvUOQHqJ8.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/FVcs7MvV1Cv1u75Htu5tVlxVpJxc2pIU.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/ym7Kn7AMAHBSF2hjcBZyqqynmb0yBAqA.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/whYZk48s8f474Snz8N7h438ZY8q7s7hy.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/K5HhI26I02ww0Vv2GfZG5jg2Dw55ITWd.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/L5tXLdXSCcm5iD2TdlO2Xti5seotTWXt.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/cMAk1keb7yH2ikHee1EiV8evKCKIIc2M.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/lkU5uUDz2EKS18Eauy3GAAtep5eT3usP.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/g6ucF32c3e3W3E36ET6907tf6c26u7wu.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/uTADwOokoaTK68io6m8Kt1osZYnTH0H1.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/ooO9uonb5009SS50KOsmK9O0Uo9Pb9s1.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/adjjuIU0vDPFKZpeuurVDiRKddIFp9E9.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Hru8Nv1KU86F6n0JNNJji06Uu8R0n6uJ.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/AIRXXM92trMNQZ99I22IC22rzITnvRQq.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/cDKUmUz45x8K5vu78u8tsxCu99kpvo9K.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/i2rKgDTk4iD2kCjtkHmdKKk2Rg5djiTr.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/GTK3E6QYkqFsZeQQ8KYZ3Gvaq7oOMV8Q.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/WHYgI9917sNahyisG6IIGT19gii6aZ9I.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/l27xf2rQH2X24hnP2KC4KtkK257zqHhr.jpg\" alt=\"\" /><div class=\"for_separator\"></div>', '', '', '0.00', '79.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792558', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/dtl7c4gNppZl74rUrzpPBtyTC0nyB4bt.jpg\";i:1;s:53:\"images/3/2017/05/OZm0aCR2ghCepC02Ep53ehC2pEEhpeKn.jpg\";i:2;s:53:\"images/3/2017/05/PpUR3H1i37rXhxt1Sl131sTn7M3n7uI3.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792558', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1174,1179,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '79.00', '79.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11618919253', 'http://item.jd.com/11618919253.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('201', '3', '1174', '1179', '1', '1', '0', '花花公子贵宾短袖T恤男 2017春款圆领时尚休闲修身纯色棉印花T恤男装 7025白色 XL', 'images/3/2017/05/D2leFUzX5zv2Zp2f949u559xm594U52l.jpg', '', null, '<img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/EaJdNjAdUNJA5HQ5taFDaaQTzrdaVFjR.jpg\" alt=\"\" id=\"216023eb93c041b0a965c17972512013\" />', '', '', '0.00', '99.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792569', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/w46sz6Pu6SqA4AZazqSPpCZa66D6SZda.jpg\";i:1;s:53:\"images/3/2017/05/bqXX98BBiBmqtZ18Q1anI99822LXBVaM.jpg\";i:2;s:53:\"images/3/2017/05/Hn2OwnvWcH227M22hEEpv2en07ECEn77.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792569', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1174,1179,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '99.00', '99.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10690942779', 'http://item.jd.com/10690942779.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('202', '3', '1174', '1179', '1', '1', '0', '花花公子 短袖t恤男 2017夏装新款商务休闲时尚翻领纯色纯棉T恤 T361藏青色 180/XL', 'images/3/2017/05/Y0tl9BNNp6Z60cztTsnZzng90PtN06ts.jpg', '', null, '<img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4471/197/2157600274/39121/e587abbc/58ec4eb0N87defe24.jpg\" alt=\"\" id=\"b5f31426f51a45bd9b0823c417b17b4f\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4480/52/2185042088/93608/9aa344b7/58ec4eadN63875320.jpg\" alt=\"\" id=\"0f15cde6fbb24e30835ab1f3deaea2d7\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4432/250/1984675895/73629/fe0b97b4/58ec4eaeN1c0ef479.jpg\" alt=\"\" id=\"42e017be4294482e8f9b98ee9b153fc1\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4864/26/1050418581/97631/9505660/58ec4eb1Ne5904250.jpg\" alt=\"\" id=\"f818cb1c17594946a6dde22b1b37cea4\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4429/108/2033529624/63677/4243ad8b/58ec4eafN68a48ef0.jpg\" alt=\"\" id=\"b9a0bd1fd1db4acbb7ec0b6bd20334d5\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4819/46/1034265232/98959/eec87f37/58ec4eafN74b04445.jpg\" alt=\"\" id=\"96f0e383de32483e9a4d28d6dd5ee401\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4951/114/1049614621/98088/6ef0c0a/58ec4eb2N8e4c6089.jpg\" alt=\"\" id=\"f7511103d4c24c32b280691b375df607\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4414/146/2170863841/98767/cb680e5d/58ec4eb1N2b639bbc.jpg\" alt=\"\" id=\"5735e799234f488488bbe5096505be9c\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4819/48/1053290934/98989/84fa690a/58ec4eb2N8cafc349.jpg\" alt=\"\" id=\"a97414c67095492d82eaf7315a346cd5\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4636/126/2173477691/96092/db287e24/58ec4eb3N7cc3ada7.jpg\" alt=\"\" id=\"2caadefda7be43ee84534d4e7119c629\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4666/117/2180086002/95852/fb94e5a1/58ec4eb3Ncef88ab6.jpg\" alt=\"\" id=\"39d1da20f5244efc952b494763879daa\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5062/324/1049822983/97906/e2293299/58ec4eb4N0e1f3519.jpg\" alt=\"\" id=\"5d58c5788e0e4c2cab1d6d433ea8d97b\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5014/225/1055227145/98152/b6a91e99/58ec4eb4N356fcfcf.jpg\" alt=\"\" id=\"8c13f833d1a94cb98d9c9641692d0162\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4675/111/2190518886/98689/735807f9/58ec4eb5N791e4012.jpg\" alt=\"\" id=\"fc984107f0344615b9e7adfb93cca4a1\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4552/248/1968418995/99203/dfa45631/58ec4eb5N1c3d8ef2.jpg\" alt=\"\" id=\"74917dc8549b4517afbf690cd1213e2e\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4684/113/2191209866/99148/45c00996/58ec4eb0Nc005115e.jpg\" alt=\"\" id=\"f1372b0d9ca2450e9a5c662d9282c4f6\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4966/62/1058107897/97894/7cfc5f6/58ec4eb6N364a2d65.jpg\" alt=\"\" id=\"0debf96082f84e1c8a7ea864e1287c9a\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4480/93/2198677773/98304/d74f77d3/58ec4eb6N6074364a.jpg\" alt=\"\" id=\"056e17737ef540b392699aeed92a996c\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4450/175/2159732631/98298/cc380a73/58ec4eb6N5b031f38.jpg\" alt=\"\" id=\"dff32baea6734ff0bc63a7f75730525d\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4801/75/1069167934/98032/4acce98e/58ec4eb7Nbc560911.jpg\" alt=\"\" id=\"8c8e4672bdc842cab71dd6ddb0e4525a\r\n\" />', '', '', '0.00', '99.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792572', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/K74hd4sZ49xtts8HnM7mqvm3q6n343tt.jpg\";i:1;s:53:\"images/3/2017/05/mgKGGqOodw6URauQqqQgW1zzZI686HHk.jpg\";i:2;s:53:\"images/3/2017/05/FaFbtfR9YFy79J1Y7TZ9IT8raaFQAJ11.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792572', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1174,1179,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '99.00', '99.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11123713377', 'http://item.jd.com/11123713377.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('203', '3', '1174', '1179', '1', '1', '0', '七匹狼短袖T恤男士圆领2017新款莫代尔面料纯色休闲打底T恤衫男装 001黑色 175/92A/xl', 'images/3/2017/05/E1a225zqR12h2Zbz72712q11M2L071L2.jpg', '', null, '<img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/jspn81SaMQA1OyLpwoYLz2NNvz3OVp8s.jpg\" alt=\"\" id=\"01401980d8fa408fa1718ea8b615b6a8\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/kOCeGXYgoenSE7gA111iXOxbLxBkEYyx.jpg\" alt=\"\" id=\"4d88268a6e1a484a8000bfc7f2dd2716\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/UOxjJJ8JQW6j8mWmxFSTJOwW3TO0sOj8.jpg\" alt=\"\" id=\"d24a4312e8424e1cbd55bb46a16a7f39\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/GaCOhALJjqAYvPpYplOFLCOv8v1zCJCN.jpg\" alt=\"\" id=\"9a52266ac50d43dabe7f4067f120c7ac\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/f55t1NWwRGqCW977RwTg71w99HN5537O.jpg\" alt=\"\" id=\"830a12980f084a6db5ea82b065143040\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/oqaap0em9aQcm9o03EECrMC0C0r8cb7T.jpg\" alt=\"\" id=\"bcb09ee516ed4708ac1c8633499e85f1\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/JN8gaS6mC77mM86s28Gm3mhuMKmk39P8.jpg\" alt=\"\" id=\"e240f46d7fa648f797bec93a6baf1ee2\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/T34xnFE8EnqA1a7Gy41pJnp7A84jb8b7.jpg\" alt=\"\" id=\"cedd592e21b84b429adea6acc7fdfce1\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/NegI9bEVgi1Ze0bkBPIkEDbZ440vf0E4.jpg\" alt=\"\" id=\"f621dc410ed140fcb7fb562f31a828c4\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/wo5m7BjMxoOMAXxOwaAxJ7m2L9XwJ5F1.jpg\" alt=\"\" id=\"fd17dd0d02c849c1a07869c83e39d8ee\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/h73BplQgzEhHUjeb5Jq7XlNHBnbbfj5h.jpg\" alt=\"\" id=\"b11302760a644e7bb746567d2e6cd9e4\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/hSmq7nmm1s55f20g6002717z52N22r7f.jpg\" alt=\"\" id=\"03dea51d300d44f390f5a4320c433c48\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/z1kLEr1OZBrQqXMm9joCOeqqOo1Z9k1B.jpg\" alt=\"\" id=\"6d353fadc17d4bd8bd83e38a385d0e8b\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/A4fB1UtBSFfF0L1FIA6sIbl0B04oli40.jpg\" alt=\"\" id=\"e83f1039572844be878c69f90babbd99\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/gqbE8QQO0HfzXt62Rb6RK0hxbk2Zkfzr.jpg\" alt=\"\" id=\"129d392174074bf294d32f0daaf92f5d\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/n5IV1oEm9O9To1o7f7I66M5fmZ7o7jI1.jpg\" alt=\"\" id=\"1938460aea33412ebed3a1739e95a1bc\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/j38c0s30IPQwec3wPzW23u3qw0wwwS3S.jpg\" alt=\"\" id=\"2a592721e97440b09d5ed1b4b6c35652\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/u3jzJr3L3T6jj6YlEJlhrJjhRazk4ela.jpg\" alt=\"\" id=\"84087b4d86764e67aed8dc1da6ce7bd9\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/A1g393G161g2nY39369z36YZBJVy6v26.jpg\" alt=\"\" id=\"3b3a05bde51c499ba0b988e0d92f84f7\" />', '', '', '0.00', '139.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792575', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/pLq2zobZ8s588K5NX6XHyWWBlxYyyOLK.jpg\";i:1;s:53:\"images/3/2017/05/TVuD7vqB4OHB3ZbdON4Qe761k6h66D64.jpg\";i:2;s:53:\"images/3/2017/05/zQi3PBm33CPWwLcq5Wb373bc8zmAzA8q.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792575', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1174,1179,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '139.00', '139.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11630976150', 'http://item.jd.com/11630976150.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('204', '3', '1174', '1179', '1', '1', '0', '与狼共舞短袖T恤男士2017夏装新款纯棉多彩翻领纯色t恤打底衫 男装6652 藏青色 175/92A(XL)', 'images/3/2017/05/GC2e5nSPNESwWzC1ceQEZ2bfMmp1b5C7.jpg', '', null, '<div align=\"center\"><div style=\"color: rgb(64, 64, 64); font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; line-height: 21px; white-space: normal; text-align: left; \" align=\"center\"><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2317/146/2760443308/151535/b85bcf4e/56ef5634N51de3550.jpg\" alt=\"\" id=\"e6e7b74f22c4427983e95e8f3cc29b49\r\n\" /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/gJ8LxomOYTikmmAytF3TVkITaTtvmxlt.jpg\" alt=\"\" id=\"cd45d579259b42869fd53414d3f2e078\" style=\"font-family: Arial, Verdana, sans-serif; font-size: 12px; white-space: pre-line;\" /></div><div style=\"color: rgb(64, 64, 64); font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; line-height: 21px; white-space: normal; text-align: left; \" align=\"center\"><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2737/208/2314347176/109544/e4968f7b/575e7770N4427a132.jpg\" alt=\"\" id=\"37efc01e16e84a6ebe52ddd15f7418bf\r\n\" /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/YgzWGFTgg6kDgE922tdgK44kpifiz44k.jpg\" alt=\"\" id=\"b14929680d804d728866b4cc8228c3ce\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 11.818181991577148px; line-height: normal; white-space: pre-line;\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2866/97/2762764808/179845/b78fab70/57723d2cN04dff6bb.jpg\" alt=\"\" id=\"f4282dcf905c4553a8ce529693b0495c\r\n\" /><span style=\"font-size: 14px; line-height: 21px;\"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/eG4VgNOpVrvrt0iitUHzW8gTqVcNUObq.jpg\" alt=\"\" id=\"3b3fb9a312484e2587c901c937d445f2\" style=\"font-size: 14px; line-height: 21px;\" /></div><div style=\"color: rgb(64, 64, 64); font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; line-height: 21px; white-space: normal; text-align: left; \" align=\"center\"><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2161/12/2587601341/208905/76b07b9b/56e0f1c9Nf554f9ba.jpg\" alt=\"\" id=\"65146f72124b498cb3d03a91d100a1c1\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t1972/364/2626392968/231471/7fe2202a/56e0f1c7Nc304c513.jpg\" alt=\"\" id=\"c81a8d3171804a379a38cdf8f204b417\r\n\" /><br /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2389/330/1861565518/240555/29b4cfac/56e0f23dNc5ca32a8.jpg\" alt=\"\" id=\"53a7baab912649c7899e1b88df102088\r\n\" /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2077/299/2498737149/242914/dc8a0524/56e0f1dcN904325ea.jpg\" alt=\"\" id=\"a9486d5eeaa049b383c0c52f89d35d0e\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2575/298/1428202525/191131/6e5af283/56e0f1b5N3889904f.jpg\" alt=\"\" id=\"52149e3c4204446f9d4769130480cc59\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2362/13/2637275160/195495/d889a781/56e0f1b7N6f3a3605.jpg\" alt=\"\" id=\"e32a200234ba4887841ee471ded47b2a\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2296/184/1867071075/251981/9d8b62a2/56e0f1bcN757c41b1.jpg\" alt=\"\" id=\"5ddf52520e37427381f02992f34d246e\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2488/334/1861314039/242207/58845d59/56e0f1bdNaaa189ce.jpg\" alt=\"\" id=\"c78190b059314da7ba757df5b0abbef4\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2011/323/1911334780/268945/f5f78c96/56e0f1c4Nccebb3f6.jpg\" alt=\"\" id=\"1da0ea8b70cd44e884af552123cc78b1\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2005/260/1814749723/273860/92c133a1/56e0f1c6Nf1baac99.jpg\" alt=\"\" id=\"0092b25854714bb3b47c103d9e22a027\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2185/203/2578887947/208222/ae8b7a1a/56e0f1caN66729ec9.jpg\" alt=\"\" id=\"4eaced1a2e004a709aba924f86087111\r\n\" /><br /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2296/198/1839144383/219565/dfb7f513/56e0f1ccN8c15f156.jpg\" alt=\"\" id=\"91838f8a855c40b9a0b32e6cea26c8d1\r\n\" /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2377/300/2506630674/235699/6d3d2d56/56e0f1c2Nf66cf288.jpg\" alt=\"\" id=\"71d0dea24aeb46c4b8ac29094baf8f41\r\n\" /></div><div style=\"color: rgb(64, 64, 64); font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; line-height: 21px; white-space: normal; text-align: left; \" align=\"center\"><br /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2065/245/2560617448/235622/b0ce4270/56e0f1b4N6d6e9074.jpg\" alt=\"\" id=\"59dd2d7532a949ecb9671f4fd7b19f29\r\n\" /><br /></div><div style=\"color: rgb(64, 64, 64); font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; line-height: 21px; white-space: normal; text-align: left; \" align=\"center\"><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2284/168/2483547466/241744/eed87802/56e0f1b8Nb3998197.jpg\" alt=\"\" id=\"85c36daebeaa45f0b49775d913b4defc\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2182/222/2526039939/254399/994b3ca8/56e0f1baN33857078.jpg\" alt=\"\" id=\"c24898fa1aa04aa0ae10deb335fef68f\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2086/102/2534416541/233725/10e9eccd/56e0f1bfNb0224aaa.jpg\" alt=\"\" id=\"5555e74020b94e6da44699ecb6b0e521\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2188/243/2521615953/206222/1171e3a2/56e0f1c0Ned2a56da.jpg\" alt=\"\" id=\"a95fcbe85c894e74a5c84ca58e29ff2a\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2200/338/1874193322/241248/a4fba50f/56e0f1cdNcba89d2b.jpg\" alt=\"\" id=\"523b790627864b71ab7adb768deda3e4\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2194/294/1846777461/239547/6b38dfe8/56e0f1cfN2aa42692.jpg\" alt=\"\" id=\"048c1e29ba944f02b304e23bcd62a513\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t1954/322/1858879201/232230/2db2cf50/56e0f1d1N5084d400.jpg\" alt=\"\" id=\"06b499e3722f4ec8bc6e91ba3e01f085\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2341/264/1910099232/232427/b3fbc530/56e0f1d2N4b9436f4.jpg\" alt=\"\" id=\"f9c68d8c256d4a6e933c67693b51fc64\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2269/321/2520505526/243630/863fd95d/56e0f1d4Nb2ca4f09.jpg\" alt=\"\" id=\"602e96030fe84341a57c48d7fc06ac43\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2452/104/2649934626/240018/192bd845/56e0f1d5N090709c2.jpg\" alt=\"\" id=\"8f63d2bee9f242f8839c2294a40d44ff\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2500/62/2629430247/213258/9109d6b1/56e0f1d7Nc3748d51.jpg\" alt=\"\" id=\"ee36d18ab3ff42be97d7a9fef8376548\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t1882/99/2607163064/212701/53f8a4f9/56e0f1d9N01cdace2.jpg\" alt=\"\" id=\"fc1dd9163bbf498fa4e53689f2471cc1\r\n\" /><br /></div></div><div align=\"center\"><div style=\"color: rgb(64, 64, 64); font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; line-height: 21px; white-space: normal; text-align: left; \" align=\"center\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/yOyk1OqwSllPOA8sYKGOyH11JAqJol1Q.jpg\" alt=\"\" id=\"7e4d16e967e345799a4e682c42bb2746\" /></div><div style=\"color: rgb(64, 64, 64); font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; line-height: 21px; white-space: normal; text-align: left; \" align=\"center\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/fb2psw9s22MjqSNEk3M83WG2PQBqqW9Q.jpg\" alt=\"\" id=\"1877be8ce6734795b66a42274b21a2aa\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line;\" /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/q2hxX552q885Q2PXJR5q8P777755UzUp.jpg\" alt=\"\" id=\"bc785a34d32041d7bb9b301463eed661\" style=\"font-family: Arial, Verdana, sans-serif; font-size: 12px; white-space: pre-line;\" /><br style=\"font-family: Arial, Verdana, sans-serif; font-size: 12px; white-space: pre-line;\" /></div><div style=\"color: rgb(64, 64, 64); font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; line-height: 21px; white-space: normal; text-align: left; \" align=\"center\"><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/iGgo7t7TB8LiIi08b707bi6m8mBElE8b.jpg\" alt=\"\" id=\"efc8c80b704f4784b72d29948175e935\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/qd7dp1Ddx16J7dy4f66ndx621ND7NdXF.jpg\" alt=\"\" id=\"d7d426cbfc6f4a75aa54609b0d281b16\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/YV8gJ10Gn1j389KG3HG3j403K4C3101V.jpg\" alt=\"\" id=\"c2e0ecaccae04dde84f26390f7460a43\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/gdmYD1gYk0Vgm3pJ66jVDdjdvje13RJE.jpg\" alt=\"\" id=\"2f7c17d2b3ad411499c903b75018dd2c\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/bTnQMW7dE18jMxTVzDd8T1AtJJjwMBNZ.jpg\" alt=\"\" id=\"eb72e8a8d92d4764be268324fe959514\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/d6gz22268fWeV40GL6T8v6WGl02weGg6.jpg\" alt=\"\" id=\"e76ef4b0b79946d7a0aa72cf1d393f8f\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" />  \r\n  <span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" />  \r\n  <span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/DyxBAsoU14oS3s6ruObuSaUY6aa3u7QP.jpg\" alt=\"\" id=\"83da1dd23f9741948f933b6e8da4f101\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/nkdCL77EEKZ3Cz1OhOo7EZhKOHl71C77.jpg\" alt=\"\" id=\"b27a265af7de4fc2b983995018f002da\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/EnE6ze6Ei5bcKoI5C11PZcpbWYYokeeP.jpg\" alt=\"\" id=\"33f9483e5e774d029dfb9d3fdfc24617\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/ErdvX2Skd0kh9V6h3oSfS0736h9vrS69.jpg\" alt=\"\" id=\"339b81f553e145038797025621786ad7\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/PfjkGUre48lBK91o2lBoGNJK4lGD89N9.jpg\" alt=\"\" id=\"733d147fefd74a2ab9ac8ef0851067a5\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/g2T339Z7T71JGta2qwjAWN20Jl7wZ77w.jpg\" alt=\"\" id=\"cb1ee69d8c7a404db783a502180ad22b\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Kqf8flCjQ49FeQzy89kyih8qFGjyE44G.jpg\" alt=\"\" id=\"d003b4e06b2e4df0b2539d44c7a88d72\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/ncrEu1rDZ6LelZjFUc5c3C8bJJJDCFCj.jpg\" alt=\"\" id=\"03e2ef8a1e07415c841584444b72c9a7\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/a6YKLE6gDJ6Z6ZxXJ6zIB8Jk33K6G633.jpg\" alt=\"\" id=\"9ad133912614477cb66d9e2bcf36d558\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/DBLNN08h08Bo6vS8qpU6OK8skOk8o8Nz.jpg\" alt=\"\" id=\"3069c6eb9b774d778c5830e78684c231\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/moWqsTYyPOY1KmYKoKDtzYo6y65oYdpP.jpg\" alt=\"\" id=\"1073dbdb7a344a00b940ab2fa7de98e1\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/XYmDD22tlezzpmH345HDHdd524d3MHt4.jpg\" alt=\"\" id=\"163334919a544ca1801d6e4c32f1a0d7\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/FHEM1qGrxeRqbHIrQIME7Y7Ram7Mm1IJ.jpg\" alt=\"\" id=\"744f583727a048bfb85aea466c2aa8aa\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/zCgZtGQtCgcBgOEQXvVDEqzCZZ5wZkgX.jpg\" alt=\"\" id=\"a54e4cb017aa49b381dd6d1a06f22be1\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/f5W4JD5cc3AP3LC65wRw4ca4ZW45A4sA.jpg\" alt=\"\" id=\"f6f729b0d0844ec7a152483c60d80464\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><br style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><span style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \"></span><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/C8EtmD0n2zz8WM8deEd8m0T8EHFnDMde.jpg\" alt=\"\" id=\"ebf7394c5e8b499f96bd99bfb5d788b3\" style=\"color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal; white-space: pre-line; \" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2731/74/2718498319/187258/3bb4c5e8/57723df8Nc741ee2a.jpg\" alt=\"\" id=\"1c476972294e45aca94250d02754dc8a\r\n\" /><br /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3157/110/6025652716/75796/9ddffa37/589aa48cN2c80f962.jpg\" alt=\"\" id=\"28ee5b5ddeb2488cb7d70e003eea8367\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3133/65/6018635250/218519/98127217/589aa477N7a79fea3.jpg\" alt=\"\" id=\"e39b202d73764df381926c79587ccddf\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4090/71/1808095256/213159/317a08fd/589aa477Nc3200593.jpg\" alt=\"\" id=\"b2479f168ae246f3b687505d45c81416\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3205/74/6030545589/241870/8089adc4/589aa478N0153915a.jpg\" alt=\"\" id=\"a7b41195b11841af80e1f61e963997f0\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3898/116/1835649183/238157/c0d4a26c/589aa479N0f295553.jpg\" alt=\"\" id=\"6577c5d219c04783bcea33fc315963ac\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3805/76/3558304749/246472/9c21b0bb/589aa479Na73a5e06.jpg\" alt=\"\" id=\"456203bc744540b28b0a97175660315b\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3205/76/6021030936/220237/10386bf9/589aa47aN1db55705.jpg\" alt=\"\" id=\"2470aed20c87465ea45c2532c6288d2a\r\n\" /><br /></div></div>\r\n                        ', '', '', '0.00', '149.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792587', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/LGnw0WX9PhHCPodhdWWs9pcWjNhz7WjJ.jpg\";i:1;s:53:\"images/3/2017/05/Y3i5a95382x369dz6d9Lb32aJbDFH9ha.jpg\";i:2;s:53:\"images/3/2017/05/IFz2cv99V71OfReEl9TCZ91CfZ9LgCG1.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792587', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1174,1179,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '149.00', '149.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '1468828743', 'http://item.jd.com/1468828743.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('205', '3', '1174', '1180', '1', '1', '0', 'gxg jeans男装 夏季新品字母印花圆领短袖T恤男#172944002 白色 L/175【预售5.19发货】', 'images/3/2017/05/mwKKMmXyN6ZpU6xYXEkeR0KxPdm04Ky6.jpg', '', null, '<div class=\"zn1St97766\" style=\"color:#000001;border-color:#7de610;height:0px\"></div><div class=\"zn-material\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/TyvPtnC1h3211P1xPnJjo8kw8ZPt8W1V.jpg\" usemap=\"#znHotMap0197766\" style=\"width:640px\" width=\"100%\" alt=\"\" /><map name=\"znHotMap0197766\"><area shape=\"rect\" coords=\"0,0,627,246\" href=\"//mall.jd.com/qr/v.html?Id=72447\" /><area shape=\"rect\" coords=\"6,270,172,516\" href=\"//item.m.jd.com/product/11480626801.html\" /><area shape=\"rect\" coords=\"173,270,320,524\" href=\"//item.m.jd.com/product/11480626686.html\" /><area shape=\"rect\" coords=\"326,270,467,516\" href=\"//item.m.jd.com/product/11480523577.html\" /><area shape=\"rect\" coords=\"474,270,628,516\" href=\"//item.m.jd.com/product/11585716669.html\" /><area shape=\"rect\" coords=\"6,531,166,769\" href=\"//item.m.jd.com/product/11564012172.html\" /><area shape=\"rect\" coords=\"173,531,320,777\" href=\"//item.m.jd.com/product/11585578883.html\" /><area shape=\"rect\" coords=\"320,531,467,777\" href=\"//item.m.jd.com/product/11121553828.html\" /><area shape=\"rect\" coords=\"474,531,628,777\" href=\"//item.m.jd.com/product/11732819873.html\" /></map></div><div class=\"zn1Ed97766\" style=\"color:#000001;border-color:#7de611;height:0px\"></div><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/rOqhDOo1JqHlJNLjCRp0oHPqJq4DoHn1.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/SalE8tUfXDrUcxj8Kdt3c7Je3E8CD5eA.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/iLc4w5B00p1cwpHPc0s09P04whXz0d0w.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/AnmC71kKC7b6y99UZCcWo3w66k64k4tC.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/X2ZoLUDF6dHfHzHf9vGYBuLNYd66uf6k.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/QQeNv6S9DD60qYp8iVq0TsspNDaVdJ0z.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/bxdD1M12Rt7xdM7d7RDmDJcDR7jSs70v.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/A9ELejeruwuw9xxwxhezJujUZdIhrjdw.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/b5q8vOJ3v5mzdio1l1Sm9oi3o8V46s4S.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/dl5055LP23MF3yjls0ZtiRJA3yaaitpM.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/ogUu2OjOGdBUGkB4kULUd99VilbbDu5O.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/nFsg7KPI6K0ICPzVaVb2I9akgSsPIGIG.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/wqm8r2Qo7DQ6OkDogGOOA7dO8o7L8Moz.jpg\" alt=\"\" /><div class=\"for_separator\"></div>', '', '', '0.00', '229.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792635', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/qR66RuJ6A71UdRcCOC639uAC7JCnAf77.jpg\";i:1;s:53:\"images/3/2017/05/r69B79v9Bon2RJyYWn6rxf2B6HJ7zhtB.jpg\";i:2;s:53:\"images/3/2017/05/R0TKjdkZVt8KKDVTnMPv5gbezbGKKXEm.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792635', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1174,1180,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '229.00', '229.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11585762811', 'http://item.jd.com/11585762811.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('206', '3', '1174', '1180', '1', '1', '0', '【跨店】班尼路Baleno男装T恤男纯棉 2017新款青年青春休闲字母印花体恤衫 W98漂白 M', 'images/3/2017/05/BTH6G65f9g5ZfgbQIa3N1iqQ59ADN6cZ.jpg', '', null, '<div class=\"zn1St79616\" style=\"color:#000001;border-color:#370010;height:0px\"></div><div class=\"zn-material\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/B7SEHHC72E698TCeae7TJE70H9i6tSjI.jpg\" usemap=\"#znTplMap56355\" style=\"width:620px\" width=\"100%\"><map name=\"znTplMap56355\"><area shape=\"rect\" coords=\"0,51,205,359\" href=\"http://item.m.jd.com/product/1574266825.html\"><area shape=\"rect\" coords=\"205,51,410,359\" href=\"http://item.m.jd.com/product/11286572177.html\"><area shape=\"rect\" coords=\"410,51,615,359\" href=\"http://item.m.jd.com/product/10124565628.html\"><area shape=\"rect\" coords=\"0,359,205,667\" href=\"http://item.m.jd.com/product/11275894028.html\"><area shape=\"rect\" coords=\"205,359,410,667\" href=\"http://item.m.jd.com/product/11255491613.html\"><area shape=\"rect\" coords=\"410,359,615,667\" href=\"http://item.m.jd.com/product/11941308805.html\"><area shape=\"rect\" coords=\"0,667,205,975\" href=\"http://item.m.jd.com/product/11255235197.html\"><area shape=\"rect\" coords=\"205,667,410,975\" href=\"http://item.m.jd.com/product/11803814841.html\"><area shape=\"rect\" coords=\"410,667,615,975\" href=\"http://item.m.jd.com/product/11355680277.html\"></map></div><div class=\"zn1Ed79616\" style=\"color:#000001;border-color:#370011;height:0px\"></div><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/aqNJQANYJHcUa505cyy1N01A1Ay5M0YQ.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/yHe4tc377exW3X3Ftk87mmBe7b8be4c4.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/OgH8k8b5TkCth8h4HMP22t828kgMom4M.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/YRkWMzhMRlc1ec1CjF6u37LR6PehLPlL.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/LR5Wc9T0RG5ZtgANTAh51hTvZ5tk5Axb.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/l6AikN2CeN28QI688JPJpFj8JKIj876I.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/x61EwIQ2lwz0i2060tFt0G0hNG6ttdlF.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/kaNCCJV2CXj7JvBJ7eQbUuJe72NeE7Je.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/RaCCY9QYQX9a4vI2ccCwBIpIbycLybQ4.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/K9l63h9UNzhxg6g1HkXGKzxxoXu37Uu8.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/ypc11Ce7uEXpFw1C1CC70C9kK1c01E1E.jpg\"><div class=\'for_separator\'></div>', '', '', '0.00', '65.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792641', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/qK7noszUEdVS72ZIDAF1JzDDIvi9zoJq.jpg\";i:1;s:53:\"images/3/2017/05/g9o89G82922vA2oF9o2898hh968OdaoM.jpg\";i:2;s:53:\"images/3/2017/05/dg9iiSo7bQJ1v1Q11du9msd1JSVVMsBg.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792641', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1174,1180,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '65.00', '65.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11255491612', 'http://item.jd.com/11255491612.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('207', '3', '1174', '1180', '1', '1', '0', 'PLT 短袖T恤男2017新款夏男装韩版修身V领印花男生打底衫纯色棉半袖男士学生大码体恤 红色-T177 M', 'images/3/2017/05/h873s3SFH0H00QsQF8Q0F8Nnn8fC83H8.jpg', '', null, '<img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4639/88/3484013273/635510/aa1547dc/58fd9cb8Nb4315e30.jpg\" alt=\"\" id=\"4f5c237f2dc144258460d6ade9c7ac54\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4531/74/3366250565/219060/99796478/58fd9cb9N1c859f93.jpg\" alt=\"\" id=\"a81467a69fc845df8459b4f9c0c69b67\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5269/291/346449306/100971/a9d25a47/58fd9cb9Nd544f102.jpg\" alt=\"\" id=\"f5288697716d499bacb61665ec52df20\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4459/216/3454517064/408735/be01c714/58fd9cb7Ncf6a87a7.jpg\" alt=\"\" id=\"2bbf5d6696984e80b09bad520d47f5a4\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4513/131/3454467284/574012/b19a8d56/58fd9cbcN889f3289.jpg\" alt=\"\" id=\"2f45f1bf687e43cea8452d519d035756\r\n\" /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5209/155/331059091/278924/8efd5ee1/58fd9ceeN83525bf9.jpg\" alt=\"\" id=\"7780c36515734c3eb561248cee5bac34\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4951/116/2362967289/422905/7002db53/58fd9cbaN20ad695d.jpg\" alt=\"\" id=\"1efc87ce575b420192a02bb1c827afb6\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4681/115/3475966178/405350/7ad3c67b/58fd9ccdN4bd0ddc4.jpg\" alt=\"\" id=\"1515bab2630a443aba733f0ed41b1569\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4615/121/3460056850/301958/2231e489/58fd9ccdNccb00907.jpg\" alt=\"\" id=\"c008fe2d16924d049354f89e322a3949\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4951/154/2354567010/213600/1825c606/58fd9cceN46eccfbb.jpg\" alt=\"\" id=\"0a98668626dd43ba97be664f7c1eeb3a\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4549/192/3253709085/192717/405db259/58fd9cceN8acb4d45.jpg\" alt=\"\" id=\"3df0268b30914ae5aae0db1669c644be\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5293/56/347835442/282338/4ba794c8/58fd9ccfN4fb35444.jpg\" alt=\"\" id=\"470f5c1f1c134447b5f5c715858eb9aa\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5497/10/322538658/269279/bfc0cfa8/58fd9ccfNa3104d9e.jpg\" alt=\"\" id=\"c31cf1d6594f4b3a8a89511b576556f1\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5344/350/342023599/497912/69aaafcc/58fd9cd0Ne89ae50d.jpg\" alt=\"\" id=\"5ba140a0944c488b8e8b46df46ae73e3\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5455/42/342423922/457110/99587151/58fd9ccfNc5f0ab87.jpg\" alt=\"\" id=\"b2f5dded94734766b7565762c67915e2\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4642/351/3415717304/226748/fe2b79b8/58fd9cd1Nbead4f1b.jpg\" alt=\"\" id=\"38e1cc6652a3439f9a8e8ce34c2e460b\r\n\" /><br /><br /><br /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4780/62/2342772279/317705/3c632fbb/58fd9cf0N069932ef.jpg\" alt=\"\" id=\"a39ec69b9fc7478c87171650a20fb58b\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5221/86/321716475/310256/a8b024e6/58fd9cf0N8d3e7316.jpg\" alt=\"\" id=\"f869d3ce14a54547a6dd5ac71c08fa15\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4834/161/2333266785/254303/12ecc875/58fd9cf1N785287da.jpg\" alt=\"\" id=\"207de7772d1640eab8dd4f3f5a8a881a\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4768/99/2326700716/331924/3215483e/58fd9cf2N6b8f4490.jpg\" alt=\"\" id=\"59459892f6a64e8481f873ba36db9c82\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4996/273/2362742181/573168/c9d14702/58fd9cf3N0634fcec.jpg\" alt=\"\" id=\"4ddb6689d8904e98a3314c17b457a342\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4939/113/2330464805/256924/e09e62c3/58fd9cf4N8bedadd8.jpg\" alt=\"\" id=\"9cd2a320b5bd441f9f3210352377feb0\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5413/149/330472224/347400/be2b3131/58fd9cfeN95261c05.jpg\" alt=\"\" id=\"ee70de2fa6634014b2ae6868262ce6cd\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4939/139/2334838161/269892/f53d0ed/58fd9cfeNfb35ea9c.jpg\" alt=\"\" id=\"5d9424e1d54b427ead27436df966aa0c\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4840/55/2317233035/368597/6b2db57c/58fd9cffN7ff904bb.jpg\" alt=\"\" id=\"30a1eade4f764d0d804c5750f7201b88\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5215/101/335958200/399982/e34f59a/58fd9cffN2ea9d4e5.jpg\" alt=\"\" id=\"517f5968da38422a925e0f4b333d6872\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4657/285/3489141205/301741/310b7a6e/58fd9d00Nb0f7e2fd.jpg\" alt=\"\" id=\"c0d66778403e46fc935bd087f5f70d3c\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4501/209/3444369397/253425/630d5ab9/58fd9d00N1f964e52.jpg\" alt=\"\" id=\"e2a55537ee5946a98081a33e1528c1a4\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5170/101/338166007/331459/a2c43d72/58fd9d01N39a13a56.jpg\" alt=\"\" id=\"683d9ad36915495e825921c17389dd45\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5368/70/325885044/306966/e1074c99/58fd9d01N3942368d.jpg\" alt=\"\" id=\"d8d6a510589142158eda512c924c9fcc\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4969/173/2343115348/260969/54f7f983/58fd9d02Nf53e0238.jpg\" alt=\"\" id=\"d5a654eb260e4187a953eaf443b41b3e\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4849/2/2317111734/333156/1bf7e02a/58fd9cffN31be34c7.jpg\" alt=\"\" id=\"8f66413e28da4f51bbf71670800ab563\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5221/138/359681855/442498/a6265702/58fd9d10Nb5e9214b.jpg\" alt=\"\" id=\"d9ddb95d437b42139f5b4f399590fb0f\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4606/240/3490691345/497961/51dfae14/58fd9d10N4e942c32.jpg\" alt=\"\" id=\"34e6c8592d424257888484607b77e8d3\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5155/142/341495115/522883/1453a674/58fd9d11Nab12d30c.jpg\" alt=\"\" id=\"6c37a22e172d4a4ba8b1cfbe3c6d3948\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4459/357/3490423647/510866/8c0d884/58fd9d12N7dcd428c.jpg\" alt=\"\" id=\"7f96e87f712c4407b03998e64566422e\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5248/120/335063475/938259/e48d9e88/58fd9d11N65561301.jpg\" alt=\"\" id=\"fd0d92b647014f12840fac1846d5069e\r\n\" /><br />                         \r\n                        ', '', '', '0.00', '128.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792646', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/MtZTjXJ5tVbbjnv1X11oJtbo0v8GoytB.jpg\";i:1;s:53:\"images/3/2017/05/pzpPiomOovlz7pOvi7T7OPi3GtyhP7Pc.jpg\";i:2;s:53:\"images/3/2017/05/Lkax1aqfAXSA4YT3nZqs2qa9T7Fa14Y9.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792646', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1174,1180,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '128.00', '128.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11302934209', 'http://item.jd.com/11302934209.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('208', '3', '1174', '1180', '1', '1', '0', '花花公子贵宾 短袖T恤男 2017夏装新款大码纯棉纯色翻领POLO衫男衣服男 T361藏青 XL', 'images/3/2017/05/gfLPP2fapFfaazEMPpMz2pSPupFRpLlQ.jpg', '', null, '<img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4210/231/2108345193/95757/238ae6c1/58cbfc0bN3ac2dc4f.jpg\" alt=\"\" id=\"39fdb665164d44d2844ece1250764420\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3154/280/8956889578/95926/642fac16/58cbfc0bNe496beb2.jpg\" alt=\"\" id=\"56e2c6e007bf4049a504f82b6c4bf135\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4576/167/243091467/95771/cc758379/58cbfc0cNa5340d9f.jpg\" alt=\"\" id=\"198c6b70f9f9484693db39351dcd615d\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4642/140/235072016/97175/76ab6b2/58cbfc0cN2d41d589.jpg\" alt=\"\" id=\"93a20282660841078233179bb77ebbc5\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3991/302/2189311424/97751/bd2da62/58cbfc0cNc57bd9b1.jpg\" alt=\"\" id=\"59efdcb545e2409eb85d05bb39995905\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4714/142/227123759/81998/81762107/58cbfc0cN6c7bac01.jpg\" alt=\"\" id=\"dd3357ac5b81421bb6b00ae83fbd00d5\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4186/27/2106988148/96259/889f4d7c/58cbfc0dN80da65f3.jpg\" alt=\"\" id=\"30dab7964e7b45e6b102ac1f928cc260\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4345/319/2122029733/98047/b5c636a/58cbfc0dNd9b9c03d.jpg\" alt=\"\" id=\"879b388ac3a9409490e4d886e3ec6e20\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3301/253/8997464305/74635/f51a0d3d/58cbfc0dN0dbaa506.jpg\" alt=\"\" id=\"ca37da1042954fbd889b0acfb72de2fc\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4711/140/228189106/85417/b718d236/58cbfc0eNe200ad50.jpg\" alt=\"\" id=\"f9d1a60af65149fb943782231f608606\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3265/184/9014848991/94980/5719c022/58cbfc0aNade007ad.jpg\" alt=\"\" id=\"8a3a7dce28a04b76917925d8a544beaa\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4660/141/231752135/97584/5c5e2806/58cbfc0eN132d5a1d.jpg\" alt=\"\" id=\"da0b3eddc5e946fda30f8087422de912\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4246/279/2115581339/92887/b1d9df41/58cbfc0dN02f08f9c.jpg\" alt=\"\" id=\"0ae3539e3afa48639f8eb6a5bff93e8d\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4510/160/241140824/97447/1ecad37c/58cbfc0fN72f5d930.jpg\" alt=\"\" id=\"42ea5e37018742c5bbfccb15e44d614d\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4645/155/241901081/98127/d8a75cef/58cbfc0bNe4b1bc02.jpg\" alt=\"\" id=\"a8de3d2e53994198bfabd2ec46955f8b\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4414/160/233484432/95228/75f1973e/58cbfc10N1839e2db.jpg\" alt=\"\" id=\"9693a89f4d134eff9a4263b91acce8f6\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4333/156/2080529239/93222/9b43962d/58cbfc10Nad165996.jpg\" alt=\"\" id=\"33d63480f1f4443295e2cd533e786546\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4390/163/247385447/95798/a937b4ff/58cbfc0fN95ef35cc.jpg\" alt=\"\" id=\"eb3642d55b2642db87ad52d027be224e\r\n\" />\r\n                        ', '', '', '0.00', '99.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792648', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/ous3h6bh2Urm72UMHU3hP3j7DsM7dqb7.jpg\";i:1;s:53:\"images/3/2017/05/ur1xS6Kdt3B661xgQfS1D16rtJkg3TrR.jpg\";i:2;s:53:\"images/3/2017/05/Ci7nLnL4I2trNtrRlaz93g3l4299ZLl3.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792648', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1174,1180,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '99.00', '99.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11233086394', 'http://item.jd.com/11233086394.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('209', '3', '1174', '1180', '1', '1', '0', 'ELLE HOMME男装 2017夏款虎头短袖T恤男士半袖刺绣印花圆领个性潮 黑色1 52/180 黑色预售5月5日发', 'images/3/2017/05/c8FikKL0x913Z11m6f31X96l0fLZ59uK.jpg', '', null, '<img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4642/57/1085143603/276275/38cd0217/58d8b25eNc7b5decc.jpg\" alt=\"\" id=\"ee9d2c6eb05a47c999756ce74a9f843e\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4612/196/1097380849/77778/b4d12365/58d8b260Nbe74b8ef.jpg\" alt=\"\" id=\"f0f781797b574df285dddc959d681b38\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4288/362/2969039302/296069/eb838053/58d8b262N14446c54.jpg\" alt=\"\" id=\"7d5b42f3d6bb4f1b81022fd7f9a17985\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4282/106/2979060527/368558/18978450/58d8b263N69edcf21.jpg\" alt=\"\" id=\"8fcfc4eed8014c5d9ce1e07baba12875\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4243/329/3004484000/214296/759804a1/58d8b264Nb3c1279d.jpg\" alt=\"\" id=\"71eec152193546a183697ddf37853adc\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4219/79/2999761619/318328/81157167/58d8b260Ncb36ad70.jpg\" alt=\"\" id=\"0f06cf8aa2d04cb091dbcf90b9a49f0a\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4147/341/2972344987/113641/1210bb80/58d8b265N674b4231.jpg\" alt=\"\" id=\"1d6efcd817994891928c1c1c420cdd8d\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4417/176/1100260121/222800/83d9fd88/58d8b265Nae1855f9.jpg\" alt=\"\" id=\"69f97c78bd034305802b9b23a3e73c01\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3217/13/9786233909/145913/88198981/58d8b265N89e6ec90.jpg\" alt=\"\" id=\"2b62b094aeb041b691018dab7219f49c\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4159/250/2996861523/174766/50110188/58d8b266Nc80f1ded.jpg\" alt=\"\" id=\"1be2e4722f514eae8b9af652fa2a0c9d\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4702/178/1079484785/108979/24422786/58d8b266Ndfdfcdcb.jpg\" alt=\"\" id=\"3a384a500670467ebdc663f2ad76af2e\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4351/38/3032297294/171012/9a50ec34/58d8b267Ndef08510.jpg\" alt=\"\" id=\"21a73b4dbab643a394c68c5b5ab8085d\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4459/202/1152243735/74828/2de59ad1/58d8b268Ncf2fc7c3.jpg\" alt=\"\" id=\"545ee862b5844834ae9686c04e1a30d9\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4126/278/2968000916/178479/3976341/58d8b267N6d125db0.jpg\" alt=\"\" id=\"8253f563b5414ad9a1088d8bef8936de\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4480/191/1099340811/123949/109b469a/58d8b268Nde9797bc.jpg\" alt=\"\" id=\"d26a040609324025af5a7691bfb2f7b6\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3184/15/9863021352/145913/88198981/58d8b268N2b395bc5.jpg\" alt=\"\" id=\"1bab9cd7b75c4f10bb5f74922c57efd8\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4708/237/1083712582/190983/cd95cd4a/58d8b269N74e7a65a.jpg\" alt=\"\" id=\"ccbb0b25f5d9426ea3c86a1e9f5c7c54\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4177/181/2970827387/172207/7f522088/58d8b269N1a79ea70.jpg\" alt=\"\" id=\"5ced20e138eb47249843d7aa788dac66\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4213/21/2935598942/363278/19c11341/58d8b26aN96bc1e1d.jpg\" alt=\"\" id=\"c1e679b01a314f219ba82fc7cef680a7\r\n\" />\r\n                        ', '', '', '0.00', '219.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792650', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/sbneeEq4anD2oAnoZVZ8S44yu2y8cS54.jpg\";i:1;s:53:\"images/3/2017/05/scx5mMbmYXX5ZBZeDjxRrcQx55Hx5bb1.jpg\";i:2;s:53:\"images/3/2017/05/rU2Kr7wUhK7e7Hu2DIURNaU52h1GUD7H.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792650', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1174,1180,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '219.00', '219.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10220883969', 'http://item.jd.com/10220883969.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('210', '3', '1174', '1180', '1', '1', '0', '杰克琼斯JackJones刺绣花纹纯棉修身男装春夏季新品圆领短袖T恤O|217101549 E44花灰 180/100A/L', 'images/3/2017/05/oWWbW975C75pWXPRXSIbcxx2WR92Lp7Z.jpg', '', null, '<div class=\"zn1St86308\" style=\"color:#000001;border-color:#512410;height:0px\"></div><div class=\"zn-material\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/KKVFB2LBu5Ub76k6u5VfkrGC5b67hvt7.jpg\" width=\"100%\" style=\"width:640px\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/EHaE997vf7Fjjv2P7jiw1Lll7eEnzhn2.jpg\" usemap=\"#znHotMap1186308\" style=\"width:640px\" width=\"100%\"><map name=\"znHotMap1186308\"><area shape=\"rect\" coords=\"0,3,634,266\" href=\"//sale.jd.com/act/Jk6I0MbHaV.html\"></map><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/vI6zQk9K4q9Rgt0IoottfT6isT09QJBt.jpg\" usemap=\"#znHotMap2186308\" style=\"width:640px\" width=\"100%\"><map name=\"znHotMap2186308\"><area shape=\"rect\" coords=\"0,0,326,510\" href=\"//item.m.jd.com/product/11268628751.html\"><area shape=\"rect\" coords=\"346,0,628,473\" href=\"//item.m.jd.com/product/11260402075.html\"><area shape=\"rect\" coords=\"0,564,205,910\" href=\"//item.m.jd.com/product/11403266476.html\"><area shape=\"rect\" coords=\"205,582,423,928\" href=\"//item.m.jd.com/product/11096127453.html\"><area shape=\"rect\" coords=\"429,582,627,928\" href=\"//item.m.jd.com/product/11403581013.html\"><area shape=\"rect\" coords=\"0,928,211,1274\" href=\"//item.m.jd.com/product/11451688703.html\"><area shape=\"rect\" coords=\"211,928,422,1274\" href=\"//item.m.jd.com/product/11267200258.html\"><area shape=\"rect\" coords=\"0,1310,205,1656\" href=\"//item.m.jd.com/product/11390824286.html\"><area shape=\"rect\" coords=\"429,946,627,1292\" href=\"//item.m.jd.com/product/10239820979.html\"><area shape=\"rect\" coords=\"211,1310,416,1656\" href=\"//item.m.jd.com/product/11269221596.html\"><area shape=\"rect\" coords=\"429,1310,621,1656\" href=\"//item.m.jd.com/product/11266567350.html\"><area shape=\"rect\" coords=\"186,1693,448,1802\" href=\"//sale.jd.com/act/Jk6I0MbHaV.html\"></map></div><div class=\"zn1Ed86308\" style=\"color:#000001;border-color:#512411;height:0px\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/qIB7D9NDpINtnGNn5G29dzDkn9K1I7zW.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/J8V86664kajVzObROFb4FBB64rbbKRz8.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/zkRX6R7tXZJsI67IRe7R6667I7Z7r6s7.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/mwG56ko6GExs3W3Tvf3Fht3TLTTTOLXX.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/MiF53555iRw37n5zGziWTZjQS7W57H73.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/EiiSz5ByzJv5myMmcjmv3m8CJIiCc8zK.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/w8mkerm58KM11CKmR45MmvVg5eCP1z8p.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/WGyZ9FvElY64GsrGG9e7oVyOf4wV34l9.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/HExWrCdkTw7DkSc22SRCk72W3c02lxCX.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/P3WHnqlyZ99vZt1Nyygv7MtVXlgGyyM1.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/nu292X2n1P4zb2k51u15X6poU24g26P1.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/uDc4R7kQP9h9UDn9UhgN8Rdhc848d47R.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/t739e9G7J3bL91L553Z9xr353BZ9r9Xw.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/kpwBabJ995WvwUBBbpaAjYGT5Iu4onVi.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/tuIUxyN46C6EGEu4xXqe64VumvyqEg3K.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/XoD1BBb2s1Dbvxjd42VD5ro5o541m1x2.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/RQtxCYCX8Nq3p6N3TPtF3C3tThNF83Yp.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/hI22UuzN65AbVsnNnsv22sN5z572n2UT.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/hWu3nMz9qLdMQxU3gEzqEGQxwgQnzEZ6.jpg\" alt=\"\" /><div class=\"for_separator\"></div>', '', '', '0.00', '99.50', '0.00', '0.00', '10', '0', '0', '0', '', '1493792654', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/r17JlK7DdzJzmdZdKnZ3GnlTkX131Jn3.jpg\";i:1;s:53:\"images/3/2017/05/DzVASY4V4nHv3c5cf4THcfyNNzc5vzHS.jpg\";i:2;s:53:\"images/3/2017/05/ybqOqA9nQEA8AyWYTda4YWn8NmaNajQA.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792654', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1174,1180,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '99.50', '99.50', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11096171544', 'http://item.jd.com/11096171544.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('211', '3', '1174', '1180', '1', '1', '0', '真维斯字母印花t恤 2017春装新款 青年男装 纯棉学生圆领打底衫韩版长袖T恤潮男 2681 宝蓝色 L', 'images/3/2017/05/Bg9693Q1b1qFZG79T2QKZftBT9FFf399.jpg', '', null, '<img class=\"desc_anchor\" id=\"desc-module-1\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/x2P1OS88IvP2Pup12sIauKv1pw1p86PU.gif\" alt=\"\" />  \r\n<p style=\"margin-top: 1.12em; margin-bottom: 1.12em; line-height: 1.4; color: rgb(64, 64, 64);\"><img class=\"img-ks-lazyload\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/UmvVmWvVv0Y0W5V6gGgmfMHGdYI5ygGM.jpg\" alt=\"\" align=\"absmiddle\" style=\"margin: 0px; padding: 0px; opacity: 1; float: none; font-size: 14.4444px; line-height: 15.2px;\" /></p><div style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px;\"><p style=\"color: rgb(64, 64, 64); margin-top: 1.12em; margin-bottom: 1.12em; line-height: 1.4; font-size: 14.4444px;\"><span style=\"margin: 0px; padding: 0px; font-size: 18px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">吊牌价</span>：<span style=\"margin: 0px; padding: 0px; line-height: 25.2px;\"> 80元</span></span></span></p><p style=\"color: rgb(64, 64, 64); margin-top: 1.12em; margin-bottom: 1.12em; line-height: 1.4; font-size: 14.4444px;\"><span style=\"font-family: 宋体; color: rgb(51, 51, 51); margin: 0px; padding: 0px; font-size: 18px; line-height: 1.4;\"></span><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; font-size: 18px;\"><span style=\"color: rgb(51, 51, 51); margin: 0px; padding: 0px;\">商品面料：</span></span></span><span style=\"margin: 0px; padding: 0px; font-size: 18px;\">100%棉</span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em;\"><span style=\"font-family: Simsun; color: rgb(64, 64, 64); line-height: 19.6px; margin: 0px; padding: 0px; font-size: 14.4444px;\"><span style=\"color: rgb(51, 51, 51); margin: 0px; padding: 0px; font-size: 18px; font-weight: bold; line-height: 25px;\">商品描述：</span></span><span style=\"font-size:medium;color:#404040;\"><span style=\"line-height: 25.2px;\">全棉平纹加经典圆领设计，简洁易穿，胸前印花设计，简约时尚，穿着舒适。</span></span></p></div></div></div><p></p><p><span style=\"font-size: 18px; line-height: 19px;\">此商品在不影响二次销售的情况下支持7天无理由退换货。</span></p><div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64);\"><div style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px;\"><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; line-height: 1.4; font-size: 14.4444px;\"></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; line-height: 1.4; font-size: 14.4444px;\"><span style=\"color: rgb(0, 0, 0); margin: 0px; padding: 0px; font-size: 18px; line-height: 19px;\"><strong><img class=\"img-ks-lazyload\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/m4w4kXC7BC84B6kGSo4JkCkGkjh64h44.jpg\" alt=\"\" align=\"absmiddle\" style=\"margin: 0px; padding: 0px; opacity: 1; float: none;\" /></strong></span></p></div></div></div>   \r\n<img class=\"desc_anchor\" id=\"desc-module-2\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/GglsRuaZApeuL11LcyXrZpY411uEW11W.gif\" alt=\"\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3127/221/4335652145/39140/1856f985/58411b18N52549c26.jpg\" alt=\"\" id=\"4b4d10ccb1404e2ca6752eee9fde913c\r\n\" /><p><br /></p><p><br /></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; line-height: 1.4; color: rgb(64, 64, 64);\"><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4213/191/3255284635/180340/833370bc/58de0828N7f5f71ba.jpg\" alt=\"\" id=\"3843d77bf234440988b9a35bc5f1b0ff\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4138/356/3286473837/146220/1fcb826c/58de0827N1fd5c815.jpg\" alt=\"\" id=\"7d200edd8b424ebaaf05cb2e8315159a\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4981/41/279711248/49679/8d84d616/58de0828N9119602a.jpg\" alt=\"\" id=\"2260ceb41a2945f5b10e26149725b129\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4237/165/3231747608/34262/86cdf7a5/58de0828Ncc0c2f94.jpg\" alt=\"\" id=\"1d79a4ee5c9e4941ad2f430b660b3d71\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4807/146/271471235/179796/f0eec204/58de0828Nc2c3eaf3.jpg\" alt=\"\" id=\"97d4ef7addeb450da5a8751f23a3a0f6\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4354/14/3298110174/120858/e992677f/58de0824Nfdd440ab.jpg\" alt=\"\" id=\"f8c939c436cf4c2ab21935dd3c3042cc\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4381/230/3264780141/158521/ddfa1b96/58de0824N37f6d8ee.jpg\" alt=\"\" id=\"1382f63f923d440f98862ee7ec03a3ff\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4375/248/3304752292/179606/9b1141d8/58de0829Nba560eae.jpg\" alt=\"\" id=\"bf737b5b54014d968835de776eea7fef\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4366/153/3322866866/66770/501f8c56/58de0825Nb0f364ab.jpg\" alt=\"\" id=\"7946932c0d594c5391ec4a589d790125\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4804/148/272883740/167460/8ab4f5dd/58de082aN4f0a63f4.jpg\" alt=\"\" id=\"4e13fb62d97e4a168d368fe09be3158d\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4852/129/260702291/169756/3e9fc5da/58de082bN54ccfdfc.jpg\" alt=\"\" id=\"ce6f1d1ffde844468e606dbade12ae0b\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5074/117/265649360/195514/99dbeb18/58de0827Nff587702.jpg\" alt=\"\" id=\"4421db5489b140e29678b2a88c9a5778\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4882/43/273262582/133057/6964da4c/58de082cN57e91d57.jpg\" alt=\"\" id=\"9ee87fc2134043899a0bacaab736f7c5\r\n\" /></p><div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64);\"><div style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px;\"><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; line-height: 1.4; font-size: 14.4444px;\"><span style=\"color: rgb(0, 0, 0); margin: 0px; padding: 0px; font-size: 18px; line-height: 19px;\"><strong><img class=\"img-ks-lazyload\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/hs5RN040nsnT0o0zR0XtN5xyNOYrZtrT.jpg\" alt=\"\" align=\"absmiddle\" style=\"margin: 0px; padding: 0px; opacity: 1; float: none;\" /></strong></span></p></div></div></div><div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64);\">\r\n      \r\n <img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3127/221/4335652145/39140/1856f985/58411b18N52549c26.jpg\" alt=\"\" id=\"4b4d10ccb1404e2ca6752eee9fde913c\r\n\" /></div><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; line-height: 1.4; color: rgb(64, 64, 64);\"><img class=\"desc_anchor img-ks-lazyload\" id=\"desc-module-2\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/m93A8FPUAD89dp3v3ZVPD993ep9aP398.gif\" alt=\"\" style=\"margin: 0px; padding: 0px; height: 1px; display: block; clear: both; opacity: 1; float: none; line-height: 1.5;\" /><img class=\"img-ks-lazyload\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/g97491y9FPpY1G99XSY74yxmOPPPTjYf.jpg\" alt=\"\" align=\"absmiddle\" style=\"margin: 0px; padding: 0px; opacity: 1; float: none;\" /></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; line-height: 1.4; color: rgb(64, 64, 64);\"><img class=\"img-ks-lazyload\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/F2kKMkaM9gXOFBUAOYKktcoy2AK5TaOs.jpg\" alt=\"\" align=\"absmiddle\" style=\"margin: 0px; padding: 0px; opacity: 1; float: none;\" /></p><p></p><div><br /></div>\r\n                        ', '', '', '0.00', '39.90', '0.00', '0.00', '10', '0', '0', '0', '', '1493792661', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/TDO0A80ffzE58880gd0ffFQ40Pt4E8fG.jpg\";i:1;s:53:\"images/3/2017/05/CKg9Ie27Ec967kboBm9PZ1bVi69j972B.jpg\";i:2;s:53:\"images/3/2017/05/wb993O37979fJMiF41FuFIJ711B3F3hO.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792661', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1174,1180,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '39.90', '39.90', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11061346614', 'http://item.jd.com/11061346614.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('212', '3', '1175', '1181', '1', '1', '0', 'Daphne/达芙妮2017舒适高跟鞋优雅尖头珠饰细跟单鞋1017101056 白色 37', 'images/3/2017/05/XL6dUuLwllW1D23NsNc9sTWuL13tNnu8.jpg', '', null, '<br /><div style=\"text-align: center;\"><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4036/83/1788327120/185301/c6b4e758/58980831Ne5e774aa.jpg\" alt=\"\" id=\"779985cc47c448c18ef4887218f8a269\r\n\" /></div><div style=\"text-align: center;\"><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4051/235/1936237024/196835/537f4b70/589d88f2Na5e41b05.jpg\" alt=\"\" id=\"4a7cc4fda2d6475d921c82e46cc4926f\r\n\" /><br /></div><div style=\"text-align: center;\"><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3262/296/6002278191/125896/3be0b622/58980830N2bd9009f.jpg\" alt=\"\" id=\"bd57acb41a164c06a7dc5397a0ca3ad6\r\n\" /></div><div style=\"text-align: center;\"><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4081/140/1756124629/99818/5779d1e7/58980831N7203fe1e.jpg\" alt=\"\" id=\"d79bfc71c8ae4296978ed9ae3f525aca\r\n\" /></div><div style=\"text-align: center;\"><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3880/347/1727931126/128464/5bafb3f4/58980831N61198647.jpg\" alt=\"\" id=\"b3fd444e47a745138df03d9a4ab97c85\r\n\" /></div><div style=\"text-align: center;\"><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3172/6/5882854410/107958/e3502caa/58980831Nbad31dee.jpg\" alt=\"\" id=\"9a53c7a3104c428284be6f812930fa17\r\n\" /></div><div style=\"text-align: center;\"><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3913/129/1770281031/166284/e379c65c/58980832N3dd44d10.jpg\" alt=\"\" id=\"3386dde3433b47d4b2ab3f321b696694\r\n\" /></div><div align=\"center\"><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4009/271/1878368167/76917/a1693e99/589c0007N6442a1d8.jpg\" alt=\"\" id=\"29afa3bce5534b6c95cf5ef55ab06121\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3292/116/5395119660/23078/93c368c/58733337Nd0cbeaed.jpg\" alt=\"\" id=\"f08d2db6a26a4b4abe148965599ed7c0\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4072/121/1360246549/42761/9c7a2847/58733338N6bc4b85b.jpg\" alt=\"\" id=\"97bdf293071e47368d1e16e60e5bab02\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3265/200/5573845681/76335/f36317cf/58733339N978fc7d6.jpg\" alt=\"\" id=\"523cb4b8b4f64122a59ca700863f944f\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3307/166/5474170193/58169/32a840e/58733338Ned9647fc.jpg\" alt=\"\" id=\"a85a87ef96624007a8a2e4aede4619c6\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3826/66/2999865716/53373/95eac1e3/58733339Nd407c365.jpg\" alt=\"\" id=\"af9a248f1c224cd99bb6b1733d18f20d\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3292/138/5400652479/85576/66adc436/58733339N1c683d2f.jpg\" alt=\"\" id=\"e2e9afe04cc1442982f376da32060b91\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3859/29/1315843465/63231/3fcd0f8a/5873333aN7f301198.jpg\" alt=\"\" id=\"b8b44484ed684b72bcf7f75cf6f9b5c0\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3832/260/3064323170/100933/4de9c6c3/5873333aNea08109a.jpg\" alt=\"\" id=\"fb13e7d067574e0284e14a859468a6d7\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3103/38/5581165719/47437/1197b15b/5873333bN3631b74c.jpg\" alt=\"\" id=\"a4f28930dcb944f993e2d9391011b4d1\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4117/138/1372573886/41473/a9e2c6df/5873333cN688bb0ee.jpg\" alt=\"\" id=\"f2fa0ac00a0846a489bbf8b8f1bb96f6\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3871/261/1332143186/49437/da2f65e1/5873333cNd26a28b5.jpg\" alt=\"\" id=\"792f933383034d21a5778069b524cdb1\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3997/135/1346487230/58343/1868b6e2/5873333cN3c8bfca0.jpg\" alt=\"\" id=\"9772853ebf2c46c28910f1c541328686\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3247/342/5512030326/44421/1613bdec/5873333dN6ad1cf97.jpg\" alt=\"\" id=\"20fcab87d0634930bfa28186d97abede\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3178/359/5563007167/57020/66e6a32d/5873333eN3ece1953.jpg\" alt=\"\" id=\"7383159407f746f3a388459b42c7b2f1\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3118/65/5541035256/45405/8f2dedaf/5873333eN53677a7b.jpg\" alt=\"\" id=\"e2a08f352fe74342802acf0a9b4f5a8a\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3046/18/5465861227/41423/357668f4/5873333eN2671b884.jpg\" alt=\"\" id=\"32b42f78ab27482f8fad51a5924d78e2\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3877/30/1316537829/60307/1a05401/5873333fNf3de7610.jpg\" alt=\"\" id=\"deceeacd516d425db88e4bd2ad11ba87\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3826/67/3023261593/38350/79a2093a/5873333fNcd02b347.jpg\" alt=\"\" id=\"71aa0a2ec29f41f4b3914fc40d90e342\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3307/187/5455195423/58370/816050f3/5873333fN0bd10e89.jpg\" alt=\"\" id=\"f28ab402832a4549a8363613a6134187\r\n\" /><br /></div><br /><div style=\"text-align: center;\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/EEGWgPs3KgiKk85KxX5e8zzg0OE80isN.jpg\" alt=\"\" id=\"935d0d5e50794cf983639004d8a02cb2\" /></div>\r\n                        ', '', '', '0.00', '169.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792742', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/yl88LzTe9Mku823CKZmo5T66Z6lOtjUu.jpg\";i:1;s:53:\"images/3/2017/05/h4Z4Tt9644va44TvxcttTT4Z4dj645jJ.jpg\";i:2;s:53:\"images/3/2017/05/OVW4D055vGg3CYvb4Yq500Y4WYa5Tc50.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792742', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1175,1181,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '169.00', '169.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11241122346', 'https://item.jd.com/11241122346.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('213', '3', '1175', '1181', '1', '1', '0', 'Daphne/达芙妮2017春新品休闲低跟单鞋 时尚金属扣饰单鞋 米白色 36', 'images/3/2017/05/bHhJF9Jyf3TdjtpHz3tITHtep7LFZ3Ih.jpg', '', null, '<div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/hIKTF16d17TooiD0fvxOZ6IiOIiITiKt.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/r4vi79I8i8GI3MA4mBjVq3IJk7vQDdqM.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/L4T3LIrRKb3LLt9244i2GkI4ITks4zIG.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/vmafM3gV95czjg3mxHK9FMGMfguCv899.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/k476KZ0KMojIJmUiN07dJIVKddU8ddId.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/B4gzDGFHpmD4qYsQjGM4zy9APf4BmYmq.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Q0s66p7S4XBIsXO60pO9CC9GG4gpCFk7.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Q4jJb303Bnpz03888M8ADA0MEJOBpAAZ.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Cx4DJtY8xdT8tr8yNxu8t5jRYjJ8T78t.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/GDvgeM70OIGHI0vGEdEw0W7KK7QIW9V1.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/HqTd9Cd848qCc88849N4cY9eXE4x4088.jpg\"><div class=\'for_separator\'></div>', '', '', '0.00', '338.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792745', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/IHz4CY9hJ4hcWDj995849Z9n1140Jj9D.jpg\";i:1;s:53:\"images/3/2017/05/zAh9bf9l6meE26w9Fm0nWAWbaLLMgAFW.jpg\";i:2;s:53:\"images/3/2017/05/XF71CXdZiAUxghaMFaHFZ4HgHFuHzgxD.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792745', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1175,1181,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '338.00', '338.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '12083008275', 'https://item.jd.com/12083008275.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('214', '3', '1175', '1181', '1', '1', '0', 'Belle/百丽春季专柜同款米色胎牛皮浅口女单鞋3B6L8AQ6浅口鞋纯色方跟中跟鞋城市休 黑色 37', 'images/3/2017/05/D5WPWMY0PytRYXS7awzAP5bB8WYYrqJw.jpg', '', null, '<div class=\"zn1St62250\" style=\"color:#000000;border-color:#f32a10;height:0px\"></div><div class=\"zn-material\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/cEUE55J5Z6Osuf4uEsRVFdz44PpuJezo.jpg\" usemap=\"#Mapguanliannv\"><map name=\"Mapguanliannv\"><area href=\"//item.m.jd.com/product/11249673151.html\" shape=\"rect\" coords=\"8,6,323,245\"><area href=\"//item.m.jd.com/product/11250354148.html\" shape=\"rect\" coords=\"322,6,629,245\"><area href=\"//item.m.jd.com/product/10172140234.html\" shape=\"rect\" coords=\"8,248,168,403\"><area href=\"//item.m.jd.com/product/11523932280.html\" shape=\"rect\" coords=\"171,250,322,404\"><area href=\"//item.m.jd.com/product/11276249732.html\" shape=\"rect\" coords=\"327,250,473,408\"><area href=\"//item.m.jd.com/product/10976010651.html\" shape=\"rect\" coords=\"484,249,635,402\"><area href=\"//item.m.jd.com/product/10276736845.html\" shape=\"rect\" coords=\"4,407,160,565\"><area href=\"//item.m.jd.com/product/11333170289.html\" shape=\"rect\" coords=\"166,408,319,566\"><area href=\"//item.m.jd.com/product/10337315981.html\" shape=\"rect\" coords=\"321,409,471,562\"><area href=\"//item.m.jd.com/product/10218401609.html\" shape=\"rect\" coords=\"482,408,633,566\"></map></div><div class=\"zn1Ed62250\" style=\"color:#000000;border-color:#f32a11;height:0px\"></div><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/kJgHz9GJpciTJXq4dudPysz9CQUcCUQJ.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/CO3lR3nBONB9l3u9jX89lcJzJ3NJuC5J.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/DYM65IXe66O6orP4teUE4rhHOOMXhXxD.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/F8LJ55A45LS8JZgo2ySkspW5dk88gw4Z.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/l66SqJ4T1Jf6LH5thfy1FizzQ55Oo5B1.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/fJrOouth2l8z7Miz72876jfr2Ii922Cj.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/u6XXb6qkbZVYiVKf24200Te6266hBqhQ.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/gtRsl2g6GKVyKKIBsvgkyCibbVKgcgg2.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/DGUFS09bQUxTpZtjY9mL0p9JI0MXiYiq.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/DcGPr4RRpZMgbq0lDDrMLrQD24GD234b.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/yB3zX0LtfZ4zxz0Xv04oP2f2yV34B02k.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/zxXYNbwnb7ByYH5d1OYHWH6wnN6hHw71.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/e9W9901J49P0u4oZqOlqw04uR4u9wPWP.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/pNPKi2234w36K6Px56NxkN5J144IiXkN.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/I171PqKZKJkuqkjkk111kkkr1hKkHZKQ.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/E3AlG8Khwfz9FmfiZO596F9F6pl99HKm.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/i68iL9PYoWqSSpqrzVPYspBvwWRmqIzR.jpg\"><div class=\'for_separator\'></div>', '', '', '0.00', '328.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792750', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/ExvXP1Jf1P3Ebbjj9fv9xxpJoyFe7oPb.jpg\";i:1;s:53:\"images/3/2017/05/A91xb11BBrx8L2vVy8r9lU284P4X429b.jpg\";i:2;s:53:\"images/3/2017/05/fmiqiTiSqkQik7iki08s6wkwd5INtkQI.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792750', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1175,1181,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '328.00', '328.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10185715920', 'https://item.jd.com/10185715920.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('215', '3', '1175', '1181', '1', '1', '0', '红蜻蜓 时尚浅口传统OL职业工作鞋粗跟女鞋中跟女单鞋 WTB49781/82/83 黑色 37', 'images/3/2017/05/j0RO7eZ96377mf6Sk7ghL7E06gVZaHE7.jpg', '', null, '<div class=\"zn1St97880\" style=\"color:#000001;border-color:#7e5810;height:0px\"></div><div class=\"zn-material\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/fg8AAIclc7JqGGqG7Q1glq71iQjAqaSL.jpg\" usemap=\"#znHotMap0197880\" style=\"width:620px\" width=\"100%\"><map name=\"znHotMap0197880\"><area shape=\"rect\" coords=\"6,0,620,219\" href=\"//mall.jd.com/qr/v.html?Id=68223\"></map><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/V6T6KkUJ5irI6K7jzjKtBPK605jBUu7J.jpg\" usemap=\"#znTplMap80731\" style=\"width:620px\" width=\"100%\"><map name=\"znTplMap80731\"><area shape=\"rect\" coords=\"15,54,198,285\" href=\"http://item.m.jd.com/product/11475782361.html\"><area shape=\"rect\" coords=\"213,54,396,285\" href=\"http://item.m.jd.com/product/11675163082.html\"><area shape=\"rect\" coords=\"411,54,594,285\" href=\"http://item.m.jd.com/product/1153432771.html\"><area shape=\"rect\" coords=\"15,300,198,532\" href=\"http://item.m.jd.com/product/10263983017.html\"><area shape=\"rect\" coords=\"213,300,396,532\" href=\"http://item.m.jd.com/product/10264225217.html\"><area shape=\"rect\" coords=\"411,300,594,532\" href=\"http://item.m.jd.com/product/11281334235.html\"><area shape=\"rect\" coords=\"15,547,198,778\" href=\"http://item.m.jd.com/product/11593534569.html\"><area shape=\"rect\" coords=\"213,547,396,778\" href=\"http://item.m.jd.com/product/11675845575.html\"><area shape=\"rect\" coords=\"411,547,594,778\" href=\"http://item.m.jd.com/product/11692122277.html\"><area shape=\"rect\" coords=\"15,793,198,1025\" href=\"http://item.m.jd.com/product/11675307745.html\"><area shape=\"rect\" coords=\"213,793,396,1025\" href=\"http://item.m.jd.com/product/11657068771.html\"><area shape=\"rect\" coords=\"411,793,594,1025\" href=\"http://item.m.jd.com/product/11475213228.html\"></map></div><div class=\"zn1Ed97880\" style=\"color:#000001;border-color:#7e5811;height:0px\"></div><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/tPpxpLO6xftaG7ld444DKx4p4Z6OF4A0.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/aXxPtdn5sPdedZeetTCPTotdCTCHbzd9.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/w20Hj7SZ0S27JBl2XQx0Q9dxxlXb7BK6.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Le2WRrDDR8UDA2WZL21OV8JUrI81OEpA.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/SeTTTEnTenPpJEdv4ETEnBper33n3Bjv.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/bBMQUZ9gPGhUaU66m9vH3H8qAtQh8LU8.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/BfwmnN33NnfEbm4ixEE2jqXW3S4NmPnI.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/H5N7808m6Zm6Gd8M789F5nG5H06g6mz7.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/cCKD6fj9LBrdkXf8j9F888ssdJ8JdHGG.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Ez1kz2U3IMQ4Q23mL34utMGTlgmummtK.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/oi4RGvea4re932rvfR4kr0kAf3rMdX3L.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/d8yOu7au8hl8CHZZh4484opVUL7wOVp2.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/q2XkrZBkaMm8sXKKlrJ2VKJDZjkmvMjX.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/e0vk3q963rQIAW6KnFF434P6NAIWF333.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/CaIqIdCavQ8OOEBycZeQYZqZOuu58quE.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/THfdA3dd086f9nLNh0SA8082n3836238.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/D8h1gCaMXlmLX3gG33Zm11MlG9k8cGxG.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/UOB7b8o3333O3G8Z38OYojeqHxh9o7qQ.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/mak8fbvcfBFkNALbVBAbabc6LbkIDnsn.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/vhhG811r24a8LSFV2o1lRR541vdds1Ah.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/HY7ji6P8thrj8ye3rtYJij6jyHeGrJZh.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/uyU0RpU1s7y10rPv0p3y2Y61V0PpUT0V.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/JeqU7n93133z878ESM7EEuscW4Y53M89.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/D6Z1H5LeLh5x6uf6m17f5Yy5hcU6UOFH.jpg\"><div class=\'for_separator\'></div><div class=\"zn5St97880\" style=\"color:#000001;border-color:#7e5850;height:0px\"></div><div class=\"zn-material\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/x9ehvxKf7WFAW0eooVPzziklwKRc0oza.jpg\" usemap=\"#znHotMap0597880\" style=\"width:620px\" width=\"100%\"><map name=\"znHotMap0597880\"><area shape=\"rect\" coords=\"12,4,620,220\" href=\"//mall.jd.com/qr/v.html?Id=68223\"></map></div><div class=\"zn5Ed97880\" style=\"color:#000001;border-color:#7e5851;height:0px\"></div>', '', '', '0.00', '169.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792755', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/s56PjN5wlWNfWW2l5j2W0TNF2Tz0tpf2.jpg\";i:1;s:53:\"images/3/2017/05/MdqPB33qDmI5P5d3cQxqma6C6S6Qg80J.jpg\";i:2;s:53:\"images/3/2017/05/ja7aYdC2XNfNco7DWZW7Fz7k3WWSwa27.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792755', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1175,1181,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '169.00', '169.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '1153432771', 'https://item.jd.com/1153432771.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('216', '3', '1175', '1181', '1', '1', '0', 'Cnoles女鞋单鞋女子新款17春夏新款深口单鞋韩版漆皮蝴蝶结流苏粗跟一脚蹬懒人鞋低跟女鞋 驼色 37', 'images/3/2017/05/X6v2ysHv33rvY3B6vsO23v82PO8uU3pS.jpg', '', null, '<img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/W69a644r22KampxbykYm6r9r3p9Uu39b.jpg\" alt=\"\" id=\"d036eb8fc31f4b78a3d2d8ad603fe5bf\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/WMtTjK1B4Pmizg27sCHHu2PW97u7W9Cm.jpg\" alt=\"\" id=\"ae622ebc58b546fbbb115fa5c0be1c01\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/nEc6kxbL45f55FWV6KOO65ZK5fzsLZbL.jpg\" alt=\"\" id=\"c8c72ae5add047e7b8c32f2f341606b2\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/kjXG4ggPKPnNJg9xDPN94pd483d88K8g.jpg\" alt=\"\" id=\"be8e57cb778c450c8b0d9edfb2c9a3cc\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/L3Z0u49uHNEAN4E22Wi834wbkL40zQq8.jpg\" alt=\"\" id=\"437a7b426ead4ac784443707b9389fdb\" />\r\n                        ', '', '', '0.00', '168.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792762', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/PvQ9Z3383VG9833b8WMAIgDqFdSsaJai.jpg\";i:1;s:53:\"images/3/2017/05/M4og455xxuqu3uA3a3x6q3o20eAku0kk.jpg\";i:2;s:53:\"images/3/2017/05/RjiPfQfjbG3Bpiqi6pQlXbF6TB3JbzT3.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792762', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1175,1181,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '168.00', '168.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '12047599599', 'https://item.jd.com/12047599599.html#comment', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('217', '3', '1175', '1181', '1', '1', '0', 'Daphne/达芙妮2017春气质尖头细跟高跟女鞋 时尚水钻一字扣带单鞋 灰米色 37', 'images/3/2017/05/y13NU6Pg6zOu1oo30YG1zy1nl66gm0py.jpg', '', null, '<div class=\"zn1St98015\" style=\"color:#000001;border-color:#7edf10;height:0px\"></div><div class=\"zn-material\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/p4XZqQ3m3sQsa4z2aLMSQ88q98AXM8MS.jpg\" usemap=\"#znTplMap80890\" style=\"width:640px\" width=\"100%\"><map name=\"znTplMap80890\"><area shape=\"rect\" coords=\"8,83,632,395\" href=\"http://item.m.jd.com/product/11829581805.html\"><area shape=\"rect\" coords=\"8,428,632,740\" href=\"http://item.m.jd.com/product/11839457627.html\"><area shape=\"rect\" coords=\"8,772,632,1084\" href=\"http://item.m.jd.com/product/11816746521.html\"><area shape=\"rect\" coords=\"8,1116,632,1428\" href=\"http://item.m.jd.com/product/11829694381.html\"><area shape=\"rect\" coords=\"8,1460,632,1772\" href=\"http://item.m.jd.com/product/11827094212.html\"><area shape=\"rect\" coords=\"8,1805,632,2117\" href=\"http://item.m.jd.com/product/11838958874.html\"></map></div><div class=\"zn1Ed98015\" style=\"color:#000001;border-color:#7edf11;height:0px\"></div><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/wYO5wk5OUyl5OSKPljsLWf5LuUgMsoZ6.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/pl08K3GrdlZLlGWA0Nhxlx3n9HOHxNDN.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/mrO57T4zu4Ow5Qq7ZrOq7J4ZW7882oBY.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/NdRUtQww89qYDQTQcqQWDdQmcqyzQzTw.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/ryv85qd77db72m58265prtQbaa608zZ8.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/pKl0KW9h00k0mwt99I80302930HZTpnI.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/KR08oFdFXYVKOFSbjSXCVdOJCkduKdK8.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/n6rfH7brhHUbaF0655UF06SxAfh6XV5m.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/ftiVmV59o7i5ii2Fo5VI54i4ATzTy2M5.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/nT5R85JtX5t5MNNSmn11s1mLttq9MS31.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/zUemmEbMjOmSMfXyGx2HyMEbhW0jjsSz.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/HJUCbUcK7jUZj17c2lL3Is2Ljwu71s33.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/f0n77WyYY7WY070Yn0sw0eS9u9Swy5bn.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/c55a5FA5goQAQvNJ95am5v76Wl9aqOLN.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/x8Fgp3XU97xkMFBPKxgAORaz799xa7B8.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/rtz7pl0EBJE0It5eX0V5EJi9poEIe8eE.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/mzrtEaiUiI6J7GjixeRuNzgJNTkWrrui.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/dqQ7dcC5P9naPdVVavNl5ZCCCHVQ9QdZ.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Yt662Z333ONbJ63MmzqH2aJoBX6aAbQm.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/iSrh0Zwpu94G7rft9RaFar4y7PrI747g.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/t9oU7acmtk0X00U00XUA77KtCCr0Xf00.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/J38q3NPs71PZF8s19EsS5iPsnFNc3DsQ.jpg\" alt=\"\" /><div class=\"for_separator\"></div><div class=\"zn5St98015\" style=\"color:#000001;border-color:#7edf50;height:0px\"></div><div class=\"zn-material\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/VBMCHQdFDzEumX9MfV9mUeB8MnF9DXQC.jpg\" usemap=\"#znTplMap80892\" style=\"width:640px\" width=\"100%\"><map name=\"znTplMap80892\"><area shape=\"rect\" coords=\"16,81,292,381\" href=\"http://item.m.jd.com/product/11839719330.html\"><area shape=\"rect\" coords=\"332,81,608,381\" href=\"http://item.m.jd.com/product/11838824470.html\"><area shape=\"rect\" coords=\"0,356,640,446\" href=\"http://item.m.jd.com/suit/11839719330.html\"></map><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/A36eD8DxpkDDjQVvdDDvuxdZ383e6jeq.jpg\" usemap=\"#znTplMap82623\" style=\"width:640px\" width=\"100%\"><map name=\"znTplMap82623\"><area shape=\"rect\" coords=\"16,8,320,369\" href=\"http://item.m.jd.com/product/11837856259.html\"><area shape=\"rect\" coords=\"320,8,624,369\" href=\"http://item.m.jd.com/product/11839756825.html\"><area shape=\"rect\" coords=\"16,369,320,729\" href=\"http://item.m.jd.com/product/11827229819.html\"><area shape=\"rect\" coords=\"320,369,624,729\" href=\"http://item.m.jd.com/product/11858599182.html\"></map></div><div class=\"zn5Ed98015\" style=\"color:#000001;border-color:#7edf51;height:0px\"></div>', '', '', '0.00', '159.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792767', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/CeIEzq3cgLu2gH4JLJgLg1Qgg4Jz5J2E.jpg\";i:1;s:53:\"images/3/2017/05/unmjzDl883zol746aDnL47DOg37L4o6N.jpg\";i:2;s:53:\"images/3/2017/05/kO725oXA31o32999Z9CCaX89K9990oo9.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792767', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1175,1181,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '159.00', '159.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11858599190', 'https://item.jd.com/11858599190.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('218', '3', '1175', '1181', '1', '1', '0', 'Belle/百丽2017春专柜同款经典正装漆皮牛皮女单鞋3B6Y4AQ7 酒红色 37', 'images/3/2017/05/tn4C474887bcbUf87WFQuKU5ue8m8Z88.jpg', '', null, '<div class=\"zn1St97846\" style=\"color:#000001;border-color:#7e3610;height:0px\"></div><div class=\"zn-material\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/FbJs1jtsmBKkHQiB11KeetshktM5NPKj.jpg\" usemap=\"#znHotMap0197846\" style=\"width:620px\" width=\"100%\"><map name=\"znHotMap0197846\"><area shape=\"rect\" coords=\"6,9,186,220\" href=\"//item.m.jd.com/product/10327018100.html\"><area shape=\"rect\" coords=\"217,9,409,224\" href=\"//item.m.jd.com/product/10279701289.html\"><area shape=\"rect\" coords=\"422,9,620,224\" href=\"//item.m.jd.com/product/11520307957.html\"><area shape=\"rect\" coords=\"6,239,192,450\" href=\"//item.m.jd.com/product/10340461364.html\"><area shape=\"rect\" coords=\"223,243,397,449\" href=\"//item.m.jd.com/product/10340234733.html\"><area shape=\"rect\" coords=\"422,239,596,454\" href=\"//item.m.jd.com/product/11607774807.html\"></map></div><div class=\"zn1Ed97846\" style=\"color:#000001;border-color:#7e3611;height:0px\"></div><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/ILMHF442fFM3MMh4h9khqM59mmMcK3k4.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/GaH0X6xX7nF8NXk6x7ZAX3M37nZ0s6kx.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/P22tOOxI00v69k0Lp726tuN6H9yK6290.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/YH2ZX41CMHh72WHac2ia2HH43WBIHBJ7.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/pm88jQ5em4LXJ5Z5D2DmWJK8daQZe7x7.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/HvC5TG25C3Vg3ghZZefNMzPZPl2TEhn5.jpg\"><div class=\'for_separator\'></div>', '', '', '0.00', '498.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792774', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/NBBI4W44Ix24ix42w8wIG24x1LK4LObG.jpg\";i:1;s:53:\"images/3/2017/05/jbFP8lAFAFjAqBsfgxabZBLlbbBqQSFH.jpg\";i:2;s:53:\"images/3/2017/05/OByGttDeFf2MogYeTyT2EXOyBDc6ByYT.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792774', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1175,1181,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '498.00', '498.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11266530090', 'https://item.jd.com/11266530090.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('219', '3', '1175', '1181', '1', '1', '0', 'Belle/百丽2017春专柜同款经典正装漆皮牛皮女单鞋3B6Y4AQ7 浅粉色 38', 'images/3/2017/05/Ze55wm5s5rUkZYR45MyEoM5ykr5ZGjkv.jpg', '', null, '<div class=\"zn1St97846\" style=\"color:#000001;border-color:#7e3610;height:0px\"></div><div class=\"zn-material\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/KibiQ3k1rRvrzrSW3OWVtIwOki93wWiO.jpg\" usemap=\"#znHotMap0197846\" style=\"width:620px\" width=\"100%\"><map name=\"znHotMap0197846\"><area shape=\"rect\" coords=\"6,9,186,220\" href=\"//item.m.jd.com/product/10327018100.html\"><area shape=\"rect\" coords=\"217,9,409,224\" href=\"//item.m.jd.com/product/10279701289.html\"><area shape=\"rect\" coords=\"422,9,620,224\" href=\"//item.m.jd.com/product/11520307957.html\"><area shape=\"rect\" coords=\"6,239,192,450\" href=\"//item.m.jd.com/product/10340461364.html\"><area shape=\"rect\" coords=\"223,243,397,449\" href=\"//item.m.jd.com/product/10340234733.html\"><area shape=\"rect\" coords=\"422,239,596,454\" href=\"//item.m.jd.com/product/11607774807.html\"></map></div><div class=\"zn1Ed97846\" style=\"color:#000001;border-color:#7e3611;height:0px\"></div><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/DlHn4Z0HHL4ZF4GAfnnG4aaC9N1Aa4on.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/j49v3OZZ97pUVnuqouyiPNHcrZWsPuWI.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/qYaxbAYiWGxaFcy1d11yE1CXe6fa3Iw2.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/qZ1h99m13b513Nxu19N1ug739NbBHz34.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/cOPZEscUvbE5o43TESpB55oPO33x5cz3.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/lMihvvmVvEjH51EuMVmL54iiTV1Ti4ME.jpg\"><div class=\'for_separator\'></div>', '', '', '0.00', '498.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493792778', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/RVD4gPcW4vV6Dbczi6Bx5XCSZZ4Cd0Ni.jpg\";i:1;s:53:\"images/3/2017/05/AIlxtfbkLFF3iq4f3i00jlbQfmRwmZxX.jpg\";i:2;s:53:\"images/3/2017/05/dq8IewinmtcyWnTKwnyvC8QtUcCCzmYV.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493792778', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1175,1181,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '498.00', '498.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11266536807', 'https://item.jd.com/11266536807.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('220', '3', '1175', '1182', '1', '1', '0', 'BASTO/百思图秋季专柜同款时尚尖头浅口女单鞋16C02CQ6 深红 37', 'images/3/2017/05/Xz7KiZ0qInQv0miIQQkmgz67RIiZ7IkG.jpg', '', null, '<p align=\"center\"></p><table style=\"margin:0 auto;width:790px;height:auto;border-collapse:collapse;border-spacing:0;background:#F3F3F3;font-size:14px;line-height: 29px;text-align: center;color: #999;\"><caption style=\"background:#DDD;text-align:center;font-size:14px;color:#333;display:table-caption;height:29px;line-height:29px\">\r\n  女鞋尺码表\r\n </caption><tbody><tr style=\"display: table-row;vertical-align: inherit;border-color: inherit;\"><td style=\"border: 1px white solid;\">法国码</td><td style=\"border: 1px white solid;\">34</td><td style=\"border: 1px white solid;\">35</td><td style=\"border: 1px white solid;\">36</td><td style=\"border: 1px white solid;\">37</td><td style=\"border: 1px white solid;\">38</td><td style=\"border: 1px white solid;\">39</td><td style=\"border: 1px white solid;\">40</td></tr><tr style=\"display: table-row;vertical-align: inherit;border-color: inherit;background: #EEE;\"><td style=\"border: 1px white solid;\">国际码</td><td style=\"border: 1px white solid;\">220</td><td style=\"border: 1px white solid;\">225</td><td style=\"border: 1px white solid;\">230</td><td style=\"border: 1px white solid;\">235</td><td style=\"border: 1px white solid;\">240</td><td style=\"border: 1px white solid;\">245</td><td style=\"border: 1px white solid;\">250</td></tr></tbody></table><p></p><p></p><p align=\"center\"><img class=\"lazyloadimg\" border=\"0\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/rB111BG58z31zmR3nAQ507CqmR0a8zq0.png\" alt=\"\" /><img class=\"lazyloadimg\" border=\"0\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/xsyY0pYPl1LSnk191r8PkyKNPzhYyPs1.jpg\" alt=\"\" /><img class=\"lazyloadimg\" border=\"0\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/FAOlAOw5C7HIlLOzOoAilsHiiHsSP19z.jpg\" alt=\"\" /><img class=\"lazyloadimg\" border=\"0\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/BWWMW80w0xpjx8x1x0317x30ZMK0u0TO.jpg\" alt=\"\" /><img class=\"lazyloadimg\" border=\"0\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Q2MF7QqK5zbfDzbQVFjJZ7V77klbVvLI.jpg\" alt=\"\" /><img class=\"lazyloadimg\" border=\"0\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/oDcC6KGHw7HJwlfh9gfw9wHHbfHKgiJK.jpg\" alt=\"\" /><img class=\"lazyloadimg\" border=\"0\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/rw7fi7KT7A6vF7ySf7YTvwy6IYfTDFTY.jpg\" alt=\"\" /><img class=\"lazyloadimg\" border=\"0\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/VO1hl2226K6cug6lFfogLHJlob2fl6ug.jpg\" alt=\"\" /><img class=\"lazyloadimg\" border=\"0\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/nnSPCNnc109Q9Cb9KH0cddBqHK99D1pM.jpg\" alt=\"\" /></p>\r\n                        ', '', '', '0.00', '188.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493793307', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/c5fh7c7h284H5zg5zvFTHiTcYA1Aa1fy.jpg\";i:1;s:53:\"images/3/2017/05/UI0hZ2SUsVIQ5h3SLSJUsm2hU2suCii2.jpg\";i:2;s:53:\"images/3/2017/05/bN38Z3f50tzDZjJf30Jp3TNpFHFs33l3.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493793307', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1175,1182,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '188.00', '188.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11628697549', 'https://item.jd.com/11628697549.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('221', '3', '1175', '1182', '1', '1', '0', '莱尔斯丹 春夏款欧美金属饰休闲平跟女鞋 时尚单鞋OUSE 7M11502 黑色 BKK 37', 'images/3/2017/05/v2naeB30eJpnPN9PFj7ZaK6jJJJP3x6k.jpg', '', null, '<img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/M6t9Zk8M33T0k090As7k891z8398yaE6.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Te27zSTOIT22NJzR3Br1rReR3AJ2ZIg2.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/O6yNwNMENzikNNn2cWdlIsYnsNkWy2IF.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/cpvZhhRacGZhhGa6R9M9h32gI1gji9iA.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/gIPCA66v6dVPgmpRW6PVCR6eAI7sDuCp.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/WBQGt4363zQJsQc31nH5Sf4zfFcHcj6f.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/a6lqbiAReB22Q862s7BfyMYe7maYAm37.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/hchcwi7BUSmN9i707CZ9H7ohQiZcWqz5.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Wd4nO9iJ9B9100NC9yc9z4nN0c990ny4.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/b6u2w634G72CU77yWu3xoW0Zq3T404w9.jpg\" alt=\"\" /><div class=\"for_separator\"></div>', '', '', '0.00', '399.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493793312', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/yVONM5rugI7Tb5hRvGBnhHHgII51riUO.jpg\";i:1;s:53:\"images/3/2017/05/BctB7BrIQR2tGi7gb7RrbTxggGxzRq7x.jpg\";i:2;s:53:\"images/3/2017/05/C65mRvb9O92ScA3MbKs2bBk46Yj2AChX.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493793312', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1175,1182,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '399.00', '399.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10065268825', 'https://item.jd.com/10065268825.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('222', '3', '1175', '1182', '1', '1', '0', '【海外名品 直降1300】德国品牌FRLOZS法洛姿新品定制休闲鞋单鞋 黑色 34', 'images/3/2017/05/fe4EVo2vVLzbvv7548m2qeqz7mBMLPmI.jpg', '', null, '<br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/yyqQcqa7Rw87Y1Ozo7QvyO27LQqKRYWY.jpg\" alt=\"\" id=\"975377bb978e4103a59cf3e36c483d3c\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/fJvJQe24P69z2e94UEZ04s09p40P1PZq.jpg\" alt=\"\" id=\"3f880eb1a0334569a792be01986f4304\" /><br /><br /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5002/227/2634204834/22520/53ba2f22/59043e80N7a0399e9.gif\" alt=\"\" id=\"4d64c7f56c9f41658d6df07535ed1f0e\r\n\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/sL77DG3Q06mw9gN7Vlw737N7nw6iVmwg.jpg\" alt=\"\" id=\"0bb8ce3cb2a84ebfa9ad791a27df6d93\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Pk2tbkkMup2EBp3M2YzmMT55uBgu5DYa.jpg\" alt=\"\" id=\"925201b738394912bb8d77d5b60f1a7b\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/xZHzHWRJrj3N22x3jRN0YH23CIEw2JhW.jpg\" alt=\"\" id=\"ef7838a952374cfa9549cbdee458c8fd\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Kx6h2CS2J3ajdJ34363dExz37ebJZqoj.jpg\" alt=\"\" id=\"ef8ce67291f54343890dd7cafcbd958c\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Lg8HZb2Dh4y42ygOAy8PyyRDwreSNfSZ.jpg\" alt=\"\" id=\"0a260e398e0645de88cfd3d41e890734\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/L0pR0bj1trQ3X3b309JI41rXXXc1q1B1.jpg\" alt=\"\" id=\"799115396e7945b89dcd6066a3aa1ede\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/v79h69X8Sc9hSv85RDsEH7XiACvWV6dE.jpg\" alt=\"\" id=\"acc4a2ff6e0642c3817f301d1fa8ead6\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/VsMrSV1tzrqTMWRLQmS7VWSGmeqsblM7.jpg\" alt=\"\" id=\"7bad0ae7725c454e8617efd63b7f69b5\" /><br /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/AgTvAnj9JJnLy2aYWyW2X8IJSJjJ8wvd.jpg\" alt=\"\" id=\"320bd20ae38b43a29ed2f1c4d6f9e659\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/IaQ1yzmEQaJyy9XdzjaAy21pX99FPdC1.jpg\" alt=\"\" id=\"5bfdcd383af244b58e41a28196d9a07d\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/NBtctlojTNB5bw3kHNjuwuWcOJbLtk9W.jpg\" alt=\"\" id=\"d7c02c619a6e498aa6ebcb7b742b100a\" /><br /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/eAUiiTuTDEarl2LU2PvggygtU2IegUPi.jpg\" alt=\"\" id=\"4094bb6e51094c259772819d55b860b6\" /><br /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/gMdK0JDMqM1dsz7zAkdD39g57M31MLdj.jpg\" alt=\"\" id=\"e2962be4dc0042f7849065f809be67b2\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/ao4wv74UnYB4VAzwE8W8NYE8W04VRBBb.jpg\" alt=\"\" id=\"b7e9e3fce427407aa47ea206c2523680\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/sRtoy8mlVRMPGcmLyLTggCfPmTTTf8t1.jpg\" alt=\"\" id=\"33fe95457b6e4ad88ed689bcd220c5af\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/e8QeHq7JpTNJhFq45Qaqq1tfZ4aP1ky9.jpg\" alt=\"\" id=\"3b960939bcf84e068ec4b13be9c89f0a\" /><br /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/vWLjLuiFFcFC9JUSCcSz6yPLYAi6cSIC.gif\" alt=\"\" id=\"93068ff88a6e45f2ab4847d455038fe7\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/HPg65Z7PPR6ux6MekzN0Oi1m5rL06dPI.jpg\" alt=\"\" id=\"d099c04f4c984c67949f9393755940ea\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/d317FuRRU339oU8zNnstnRrLBuTI93N9.jpg\" alt=\"\" id=\"4c62329f2d1d49c1a85ac508aa3e7877\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/PiSAxFoffnx5Xf0Z9eXAx06aFonGiS05.jpg\" alt=\"\" id=\"a9b4757964534210a063a3a0f47fe239\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/NmGramcMqZMGKr42Q2Cmamm0mIcAKk44.jpg\" alt=\"\" id=\"184439b53e824aabb0e7dcb3608e7b2f\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/W799A999fzB931ay2Q121lZ17anTY9I3.jpg\" alt=\"\" id=\"11e5a23289224c1697526e477bea2151\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/nljNsgzQ7lDMGdPGpGeJn3p0nv0W0SNm.jpg\" alt=\"\" id=\"289550495dbb4d66a1184780f47e4bbd\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/f51rsKIjVUAUoIphVoNU5BI5Rz12Ah66.jpg\" alt=\"\" id=\"c52b4369c1d84e768b6c712dbc0bc6b3\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/caKSMM7299mM9A59u7S945JyB769S84J.jpg\" alt=\"\" id=\"1247520d681e44b59337f9f032472e22\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/mABgId2Zl28ffCAnL1r8IAF2IZ2OMFAR.jpg\" alt=\"\" id=\"9ec858c6cddc48f893dd9824227b1a25\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/rddunf07lLDi0Du0n8zXDlDI8xFl7if0.jpg\" alt=\"\" id=\"f03961fa82ac4f67b71a4900e5d55663\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/U445ZzzQ8ovabA61rrgDOA8h8d4AHbhZ.jpg\" alt=\"\" id=\"40a85f0d3cfd41c699b0043fc8a336bb\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/hfw5ldLlj5JkLGwJGLiJj0jLhuGLwLmg.jpg\" alt=\"\" id=\"9db3710a82ac4a219c1c9c85dfbae888\" /><br /><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/xoSrbSa03Rm4NPboioZBMoH6pMAV5Ppb.jpg\" alt=\"\" id=\"a7d11aed8c4c4486bfc72d1d9d6cffe6\" />\r\n                        ', '', '', '0.00', '199.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493793317', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/KuiCy9PP2XJzCA0yZziD1x2PAY2uj1d7.jpg\";i:1;s:53:\"images/3/2017/05/CDfwqf4gJqPWDp24pJ3ZZ42DQYfQPwWs.jpg\";i:2;s:53:\"images/3/2017/05/BzABFLCr9Cf64L4bgT44PCp64fIP5TA4.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493793317', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1175,1182,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '199.00', '199.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11828911943', 'https://item.jd.com/11828911943.html#comment', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('223', '3', '1175', '1182', '1', '1', '0', '鞋柜shoebox/苹绮2017新款厚底松糕鞋学院风方头中跟单鞋女鞋1117101363 黑色 36', 'images/3/2017/05/I79uv9783v9T9oUO7ptEneB0hpE090ZN.jpg', '', null, '<div class=\"zn1St85164\" style=\"color:#000001;border-color:#4cac10;height:0px\"></div><div class=\"zn-material\"><a href=\"https://sale.jd.com/m/act/rzZHdTV7sOI.html\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/FJS3A4F4C5Hn5535ns8XPaC1c8pPFXZh.jpg\" width=\"100%\" style=\"width:640px\" alt=\"\" /></a><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/R4J6OX78QQx4VfZvBF71o67nVTO7OFo6.jpg\" usemap=\"#znTplMap68453\" style=\"width:640px\" width=\"100%\" alt=\"\" /><map name=\"znTplMap68453\"><area shape=\"rect\" coords=\"8,0,219,296\" href=\"http://item.m.jd.com/product/11262147769.html\" /><area shape=\"rect\" coords=\"219,0,429,296\" href=\"http://item.m.jd.com/product/11117202986.html\" /><area shape=\"rect\" coords=\"429,0,640,296\" href=\"http://item.m.jd.com/product/11159742099.html\" /><area shape=\"rect\" coords=\"8,296,219,591\" href=\"http://item.m.jd.com/product/11225005383.html\" /><area shape=\"rect\" coords=\"219,296,429,591\" href=\"http://item.m.jd.com/product/11216622820.html\" /><area shape=\"rect\" coords=\"429,296,640,591\" href=\"http://item.m.jd.com/product/11117155244.html\" /><area shape=\"rect\" coords=\"8,591,219,887\" href=\"http://item.m.jd.com/product/11267313557.html\" /><area shape=\"rect\" coords=\"219,591,429,887\" href=\"http://item.m.jd.com/product/11159887094.html\" /><area shape=\"rect\" coords=\"429,591,640,887\" href=\"http://item.m.jd.com/product/11266728294.html\" /></map></div><div class=\"zn1Ed85164\" style=\"color:#000001;border-color:#4cac11;height:0px\"></div><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/M5g0NFLyfl58uANhfLy9lK905mmyLpkY.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/DIF5yFI8Bij1m59D5Yu0F9Y755I5I9E9.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/CdgM55OZN0nnqZ75Mn90GDtt500nJww8.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/nLKlmKO09d46bd06YiWjar674dy7CIri.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Adl1zBBN5FT5E59XB1lyY095ne1teBbX.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/mc7s1J74bANloHPjsL1yzkLPjSsNJKhA.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/SBhafFqchqc8FqczxH6U5HPH3Q8d50Ff.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/hni33Mig9Mz2BxXUh9nGGxi2ZM3MM9uc.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/e2mPc300n3n8Vpv81mvZmCpp23ce2uc1.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Q6544u5Z6KUJ5c5oO0T21t5dU4zc611P.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/V86vOVV8faYuoUZPLSllJzuypugnS7Wn.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/SVvwfVwWivCCB0CCft44f0bJIV0LIV9f.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/RsCHu5u4z5MU3ElT3c5sRsuhEuHe53Zz.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Ij4prJ0IJXpBI2oj9pBpfO1pOIj4L1Z9.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/EiIRl5R2kuzR0jF5I0U2rSi7ihtL8vVB.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/pH4Dpjg44j6PHq7j269ZJKp2P47640H0.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/i59S18g0k29cZ9880w12o1ozg0GsK201.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/IluWAll7zZ26J7r5wl27U0A77705lswW.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/ORXXB5yqyPZxboPMbPod5ozPdtaPR25t.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/RQl3V44ZxcK38KKLiKgIH4v0KgCCpcIx.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/vXr7ZbkjUSLj8nBxVnNXBESebSeve8xb.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/J8wF8DoLDDDlKjL9yyWdHwgLWWZJdw4Y.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Qut7poq6M5GquawZMqXRn5NxZaQ6nn9T.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/QMHo275n7EH75yYn55C7Z5yWJ5E7jSME.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/yVIbNqDNf33AxAhOb23ZIqX6bf4f2ZAL.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/FDlXiWXUXvNLGjQIT11VugUQIdNTn13f.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/FImSHZFq6Lj9Llm5H95QT96x5oz9h977.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/Ih3d70tig5E1nJI87GjhNItHKipHgBPp.jpg\" alt=\"\" /><div class=\"for_separator\"></div>', '', '', '0.00', '129.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493793335', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/AHF4qj4qhsFkN5F3332Zn9JfSFN44Nk3.jpg\";i:1;s:53:\"images/3/2017/05/vhvJQhO33kEQ0kt95Jj0Qt4J558kj505.jpg\";i:2;s:53:\"images/3/2017/05/WDpy32J1h9DznOoddJ7K22V97uDkXJKY.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493793335', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1175,1182,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '129.00', '129.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11117255000', 'https://item.jd.com/11117255000.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('224', '3', '1175', '1182', '1', '1', '0', '哈森 春季高跟鞋细跟职业鞋羊皮尖头欧美潮浅口单鞋女HS59078 黑色 39', 'images/3/2017/05/l2eJ3FYUs3bb2D22bjZ2n0BeZySl2tq3.jpg', '', null, '<div class=\"zn1St36014\" style=\"color:#000000;border-color:#8cae10;height:0px\"></div><div class=\"zn-material\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/aL08TL7R25tGJtx88LgwAJVrpw8J5xxg.jpg\" usemap=\"#znTplMap60925\" style=\"width:640px\" width=\"100%\"><map name=\"znTplMap60925\"><area shape=\"rect\" coords=\"8,0,632,345\" href=\"http://item.m.jd.com/product/11250771385.html\"><area shape=\"rect\" coords=\"8,345,632,690\" href=\"http://item.m.jd.com/product/10570778649.html\"><area shape=\"rect\" coords=\"8,690,632,1035\" href=\"http://item.m.jd.com/product/11179607931.html\"><area shape=\"rect\" coords=\"8,1035,632,1380\" href=\"http://item.m.jd.com/product/11180462900.html\"><area shape=\"rect\" coords=\"8,1380,632,1725\" href=\"http://item.m.jd.com/product/10568292455.html\"></map></div><div class=\"zn1Ed36014\" style=\"color:#000000;border-color:#8cae11;height:0px\"></div><div class=\"for_separator\"></div><div class=\"zn1St36014\" style=\"color:#000000;border-color:#8cae10;height:0px\"></div><div class=\"zn-material\"><br /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4198/326/658644091/74882/d0ecb55e/58b7cd43Nf5488237.jpg\" alt=\"\" id=\"7ab1ed765db44501a7317f7519403d28\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3073/102/7555498444/51783/b0df8182/58b7cd43Nac41cfb2.jpg\" alt=\"\" id=\"5121a79ea6464d57821086c07f2f69f8\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3883/127/773422476/81468/10fb9bd8/58b7cd43N2997d05c.jpg\" alt=\"\" id=\"a22d92b99bd74f32929d767a631aaf45\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4240/42/675808893/49405/96db2a98/58b7cd43N23203bbe.jpg\" alt=\"\" id=\"ffe4d5f94e3a4ce9a09eafe686c61adc\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4243/64/651195391/40871/455b0b55/58b7cd44N43ef2d1a.jpg\" alt=\"\" id=\"3f41cba746224c10b3d1c849ae626243\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4294/192/669898022/36743/438359ef/58b7cd44N40ed1944.jpg\" alt=\"\" id=\"97de1744695447ff8e298962184a9ff6\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4183/12/674676986/46970/be660a02/58b7cd44N87a20bd9.jpg\" alt=\"\" id=\"2ca078dca71b404cb56f0800599c2ddb\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4327/72/656470913/38710/5a50fac3/58b7cd45N78a9193b.jpg\" alt=\"\" id=\"710c5092a7b2404baae8dd034795ea5b\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3166/149/7577103771/68131/8b1bc9d5/58b7cd45Na46e99f7.jpg\" alt=\"\" id=\"228726cbc7d04226b2db6b3036c3583e\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4351/36/671824858/42995/c9a02103/58b7cd45N8f8ac5c1.jpg\" alt=\"\" id=\"589fe0192b6947be8ef930eac795f8b8\r\n\" /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div><div class=\"zn5Ed36014\" style=\"color:#000000;border-color:#8cae51;height:0px\"></div><div class=\"for_separator\"></div><div class=\"zn5St36014\" style=\"color:#000000;border-color:#8cae50;height:0px\"></div><div class=\"zn-material\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/jTZZs0BKBIrIZvR6OKbi0zBrArimLOpb.jpg\" usemap=\"#znTplMap53844\" style=\"width:640px\" width=\"100%\"><map name=\"znTplMap53844\"><area shape=\"rect\" coords=\"8,53,320,441\" href=\"http://item.m.jd.com/product/11285907192.html\"><area shape=\"rect\" coords=\"320,53,632,441\" href=\"http://item.m.jd.com/product/11252287460.html\"><area shape=\"rect\" coords=\"8,441,320,830\" href=\"http://item.m.jd.com/product/11252324489.html\"><area shape=\"rect\" coords=\"320,441,632,830\" href=\"http://item.m.jd.com/product/11113287350.html\"><area shape=\"rect\" coords=\"8,830,320,1219\" href=\"http://item.m.jd.com/product/10566539028.html\"><area shape=\"rect\" coords=\"320,830,632,1219\" href=\"http://item.m.jd.com/product/10566745189.html\"><area shape=\"rect\" coords=\"8,1219,320,1608\" href=\"http://item.m.jd.com/product/10570562499.html\"><area shape=\"rect\" coords=\"320,1219,632,1608\" href=\"http://item.m.jd.com/product/10568375346.html\"></map></div><div class=\"zn5Ed36014\" style=\"color:#000000;border-color:#8cae51;height:0px\"></div>', '', '', '0.00', '289.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493793343', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/QfzVm14VjOjFSmjM4IHHvjJ07DH5ie1i.jpg\";i:1;s:53:\"images/3/2017/05/B3hIygKoEkT37zkdyP0tm3H0v0d69OVe.jpg\";i:2;s:53:\"images/3/2017/05/kTCyE4y4ZCIkDbIIx4lbKiBvtcntB4di.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493793343', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1175,1182,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '289.00', '289.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10569116585', 'https://item.jd.com/10569116585.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('225', '3', '1175', '1182', '1', '1', '0', '戈美其单鞋女粗跟浅口女鞋高跟套脚增高妈妈工作鞋子休闲舒适一字扣带2017春款 裸粉色 37', 'images/3/2017/05/wzrjPRPfx9jp03GXFf0oJrr3JRjRp3fp.jpg', '', null, '<div class=\"zn1St96729\" style=\"color:#000001;border-color:#79d910;height:0px\"></div><div class=\"zn-material\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/kGA1JZX0XauxGwaQ5j0Uyw1wtIJLwWWt.jpg\" usemap=\"#znHotMap0196729\" style=\"width:620px\" width=\"100%\" alt=\"\" /><map name=\"znHotMap0196729\"><area shape=\"rect\" coords=\"0,0,620,343\" href=\"//sale.jd.com/app/act/iApcn3uYObD.html\" /></map><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/xmnto3fRmTVQsqoV4zqqdOdZJqdF3ZJv.jpg\" usemap=\"#znTplMap79272\" style=\"width:620px\" width=\"100%\" alt=\"\" /><map name=\"znTplMap79272\"><area shape=\"rect\" coords=\"0,242,308,593\" href=\"http://item.m.jd.com/product/11137055553.html\" /><area shape=\"rect\" coords=\"308,242,616,593\" href=\"http://item.m.jd.com/product/11146289826.html\" /><area shape=\"rect\" coords=\"0,593,308,944\" href=\"http://item.m.jd.com/product/11394760729.html\" /><area shape=\"rect\" coords=\"308,593,616,944\" href=\"http://item.m.jd.com/product/11394998225.html\" /><area shape=\"rect\" coords=\"0,944,308,1295\" href=\"http://item.m.jd.com/product/10490177444.html\" /><area shape=\"rect\" coords=\"308,944,616,1295\" href=\"http://item.m.jd.com/product/11548444621.html\" /></map></div><div class=\"zn1Ed96729\" style=\"color:#000001;border-color:#79d911;height:0px\"></div><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/pfIhlnLy1eh5HeNwN5iceDF0dyHWP0UH.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/SF44TykOOT7ou2ouYGtmccMufQZokGTU.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/mqAqnYZiAqISmV9dmAISvnQRQPNazLhQ.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/uz8L9VV1H1zV4W9l9mv1tN8JmLmMV9t1.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/BeTcYCZYctGMSNH886B8YSvnBqdPiLZV.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/vwUQG0XYAa6LLqghDgaX6Y0A6HnxlAX9.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/t7udVvrD43g3gJvLzSMR4gGR33Sl7rlG.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/CEqidja2H2d8NIJ8Zqi4ahE4NViCXQqM.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/qJkFjoL5KO82N5J24KbZK28vHV88Bhj5.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/h39ZDK2GeOKiGI2m49ebNd23nUUonovD.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/BA5Vas3rMrM9x227U2PrSvpRz95vxr3R.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/P4heOS2osHe33mY4Uut3hG5zeAIT513E.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/bps8Z1VKj8j7837hV1YPnVg8l88V0pg8.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/UpJ4P6NxPXD429hxF49d5Z9JOoF9pdpK.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/ccwtU97RQOjt4L44J222TJ4t4OOJ2jZC.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/axO7Q7O24AioO7D4aoFofGdo7oQO7zQq.jpg\" alt=\"\" /><div class=\"for_separator\"></div><div class=\"zn5St75255\" style=\"color:#000001;border-color:#25f750;height:0px\"></div><div class=\"zn-material\"><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/C8bgY4BJGj48n27t72AfdtTGvLv2d04L.jpg\" usemap=\"#znHotMap0575255\" style=\"width:620px\" width=\"100%\" alt=\"\" /><map name=\"znHotMap0575255\"><area shape=\"rect\" coords=\"0,3,620,343\" href=\"//sale.jd.com/app/act/iApcn3uYObD.html\" /></map><img src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/bGwN8Dz2w2xDaG3e8DDdASEDs27D2Adn.jpg\" usemap=\"#znTplMap68327\" style=\"width:620px\" width=\"100%\" alt=\"\" /><map name=\"znTplMap68327\"><area shape=\"rect\" coords=\"6,54,304,431\" href=\"http://item.m.jd.com/product/10373509103.html\" /><area shape=\"rect\" coords=\"310,54,608,431\" href=\"http://item.m.jd.com/product/10373637681.html\" /><area shape=\"rect\" coords=\"6,447,304,824\" href=\"http://item.m.jd.com/product/11406448113.html\" /><area shape=\"rect\" coords=\"310,447,608,824\" href=\"http://item.m.jd.com/product/1560481697.html\" /><area shape=\"rect\" coords=\"6,840,304,1218\" href=\"http://item.m.jd.com/product/1590450375.html\" /><area shape=\"rect\" coords=\"310,840,608,1218\" href=\"http://item.m.jd.com/product/11869646572.html\" /><area shape=\"rect\" coords=\"6,1233,304,1611\" href=\"http://item.m.jd.com/product/11146378011.html\" /><area shape=\"rect\" coords=\"310,1233,608,1611\" href=\"http://item.m.jd.com/product/10539168490.html\" /><area shape=\"rect\" coords=\"6,1626,304,2004\" href=\"http://item.m.jd.com/product/10594628208.html\" /><area shape=\"rect\" coords=\"310,1626,608,2004\" href=\"http://item.m.jd.com/product/11146445573.html\" /><area shape=\"rect\" coords=\"6,2019,304,2397\" href=\"http://item.m.jd.com/product/11146521668.html\" /><area shape=\"rect\" coords=\"310,2019,608,2397\" href=\"http://item.m.jd.com/product/11260315680.html\" /></map></div><div class=\"zn5Ed75255\" style=\"color:#000001;border-color:#25f751;height:0px\"></div>', '', '', '0.00', '229.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493793346', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/SvfY70Wps2VjPTTVVRWRpwPU2F0jGg7P.jpg\";i:1;s:53:\"images/3/2017/05/nw31zOBDOB7Kki3Zyd4d3nBcdccLB3oA.jpg\";i:2;s:53:\"images/3/2017/05/DuMa5cOAmyyEMYm83Q8c9qDvEnv9TZqn.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493793346', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1175,1182,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '229.00', '229.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11146521668', 'https://item.jd.com/11146521668.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('226', '3', '1175', '1182', '1', '1', '0', '哈森/Harson春季豹纹拼接坡跟浅口单鞋鱼嘴单鞋女鞋HS59031 黑色 38', 'images/3/2017/05/pxfCCI0Vw8V3GDigV0lge3vTIwLnjvAC.jpg', '', null, '<img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/jJ6jmusE33ep0v6sf1vJ3fMaJf6jp7MA.jpg\" ks_mark=\"y\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/ro33IO3hBmqMqU22768MMbbZB7P7Y337.jpg\" ks_mark=\"y\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/BTDt82235uMX83TQ8sqT8TUd1o1POXSP.jpg\" ks_mark=\"y\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/cdchQh7nwuCHUWh31cChdH7G7U555m3u.jpg\" ks_mark=\"y\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/D3S89law6vuS85J5wA3pawWLW7jl5Ziw.jpg\" ks_mark=\"y\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/jIzJNQn3cx3ZniTCIPM3xy1finQhTijT.jpg\" ks_mark=\"y\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/MuuQnMMnWvm5aQaW8OkKuKz9NumqqcMA.jpg\" ks_mark=\"y\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/H7lsYV7CYVXES7z36evsvseiDv4xev7a.jpg\" ks_mark=\"y\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://inxout.ngrok.cc/attachment/images/3/2017/05/qrTcYrH5Rk8yr0PpvV56hwk6nzWYf8Cz.jpg\" ks_mark=\"y\" alt=\"\" /><div class=\"for_separator\"></div>', '', '', '0.00', '299.00', '0.00', '0.00', '10', '0', '0', '0', '', '1493793354', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/Dg0x085p80tSXx8eSBOcXB828tsTSBPS.jpg\";i:1;s:53:\"images/3/2017/05/NJL8m8cl29f8ziuMlllef8ImXc82fl8M.jpg\";i:2;s:53:\"images/3/2017/05/x1hyQN17n71bwHh1XYZ1Kazbo76BFn66.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '31', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1493793354', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1175,1182,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '299.00', '299.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '1468198469', 'https://item.jd.com/1468198469.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('227', '3', '1176', '1183', '1', '1', '0', '鳄鱼恤 皮鞋男士英伦商务头层牛皮休闲正装鞋套脚皮鞋 黑色 41码', 'images/3/2017/05/Eq68EDiiEtr9EO1tKdzi9oD1289EjYQ1.jpg', '', null, '<p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Bw2d5tZx56y75g3t3530WztTX3pg776l.jpg\" alt=\"\" id=\"99114d4e26a54b9d99b32282c4cc84e3\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/VkIyky0VTG0k24KwWVyt662vAIfMvqv2.jpg\" alt=\"\" id=\"4f448bc2d36e4b34b1b18320a36741d9\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/QCbbrX851jc9X5QLr5zKJzjK58qZjQL9.jpg\" alt=\"\" id=\"c9836d5398d84f2eaa3a29a38d11f665\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Y6YAtWLppAAlOk1etT9osuiKLPS41LI4.jpg\" alt=\"\" id=\"8a65f36f48714ca7a3b1460853bc7163\" /></p><p><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/fu8xLXUbGVcwLp9bx2LLlfcYzyyxfjVz.jpg\" alt=\"\" id=\"5f7ee7fed4814cb79954141cef03bbc1\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/ijI922gZ215GtH39L21xz2pP5jdH12LI.jpg\" alt=\"\" id=\"34b43a84f9f64f8d808af7add12f4595\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/qJ1qj4JR02hG9Y994gTQA1zg1C84CdaH.jpg\" alt=\"\" id=\"29027bb8bf804e2d864a20afb436240c\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/O03Z3SnssCsS6FWzosc6W36NU8WAS800.jpg\" alt=\"\" id=\"3958bdfced2b419d951fa2793c9d6d69\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/HfZNBqB80NUQYY8uJklJakaQLnQAA8Z8.jpg\" alt=\"\" id=\"603d1819597e4bf598e7d2868b11383d\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/s6C7VzC7CxxzvCAx333C3iiM66m6MxFI.jpg\" alt=\"\" id=\"fc7d94e9c99f42bd9b5a57bc9b02df60\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/zNu3VPqN6gd5DC5Z6bDZ33RlL64CCN6c.jpg\" alt=\"\" id=\"618b3b6bceab49a48fa335f5c3d20b86\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/K121m7211KGKGZ1KNzOM12WM5B27O2g5.jpg\" alt=\"\" id=\"c06210cb099e46c893c2c2cdffc10ae6\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/CS5F45tj0TZ40vV2I07KGSg5K5LJ417J.jpg\" alt=\"\" id=\"ac365ba3fd4646aca8e9dec7fdda0fc7\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/t2gEz9Ii5M5EP95vmjAyee9fVi5poEJG.jpg\" alt=\"\" id=\"c217d474889e4639bf7249134ee9d988\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/LR2DmSIi1rr2R11mrR92QG4ji9iJ9221.jpg\" alt=\"\" id=\"b86ffd321d4a4633891cb792dd968190\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/hI9N4t49p9ii73zaqpVL5qa3VtfiS4Y7.jpg\" alt=\"\" id=\"debcce07070b4452a48014377c286b1e\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/jz1G55TW22fh6FDDa2IrzuhL9FqLHU72.jpg\" alt=\"\" id=\"a00ea0335619461e9217ea2b9968ca32\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/eYN78KfAkyDbAtD7P4bt1zL1yau1b7bE.jpg\" alt=\"\" id=\"19840405528448d2a77a7dace2b51a8b\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/sjtyg4z3JhWr0K49jKGftpS9jPwY4ny4.jpg\" alt=\"\" id=\"d6a7244374ae4ca7a208aadc9fbff5b5\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/zU2wE2Jhjhzz4DVmCeiwe2RyieDHuhYj.jpg\" alt=\"\" id=\"5b4e947888014cb68a7dc75d627226fd\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/vkKd6j0gye0K1sef5K9EjgP71dzyGgyY.jpg\" alt=\"\" id=\"64661af20f4e4dedaf21128dd796a611\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/tM4D4atmeEaixiDCv34qK0IF8fs0VQ2t.jpg\" alt=\"\" id=\"0aea8b5238434feb90707fa6b3335609\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/OZa9PGgqhaHB4WZRQAVGgQbR1z69R1be.jpg\" alt=\"\" id=\"5cd518f18b51486686961a23455ee272\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/eMAMeSiTGab10gWmB2MBwMSGIdeiDyG3.jpg\" alt=\"\" id=\"669fdc38d7954b68973db29468b2e99e\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/gEd6H6i660h6V6de6626H66D262z4e78.jpg\" alt=\"\" id=\"c2b35a635ce4410da96bd2c84a13a4d0\" /></p><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Gcwp1F67q4GmF4GBgw494B74GBFW7w74.jpg\" alt=\"\" id=\"73221e0fa66241c48f9032ea46434cf8\" /></p><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Txt7ptJYmE6xTQvc4vP6Xjq85M9mh6Kq.jpg\" alt=\"\" id=\"284403f5a7d44e66bbcdda934cca808e\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/pBcMbCWxBWBwJ6MBPxcpj7xu7BVw1w1C.jpg\" alt=\"\" id=\"f5b83f2f177d4d3d93975b8e642bee2b\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/KcFcAefzoZTC5A9ohfhH7T9hAkaCO9Sk.jpg\" alt=\"\" id=\"30db745285ec43b89c9d6150d21dc11b\" /><br /></p><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/JcOoo04LtzANXP6zhQNzN5xhPpXZonph.jpg\" alt=\"\" /></p><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Blqo33OtDqko3vu33zDtepLbP0meyBLo.jpg\" alt=\"\" /></p><p><br /></p>', '', '', '0.00', '468.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136043', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/n3mcWL6s5MCKW6yE6Mw99ef4EU593z5E.jpg\";i:1;s:53:\"images/3/2017/05/ft6nOBg6bncuGT86J6zCdmeB6ftfm68j.jpg\";i:2;s:53:\"images/3/2017/05/XcaZcs6zV5G865685EEe8jMZMNeA6V55.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136043', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '468.00', '468.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10990219137', 'http://item.jd.com/10990219137.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('228', '3', '1176', '1183', '1', '1', '0', '公牛世家（G.N.Shi Jia）皮鞋男真皮商务休闲鞋系带透气冲孔英伦潮牛皮男鞋子皮鞋 888390-1黑色冲孔 41', 'images/3/2017/05/cuxajPUZ27jAU2fUHX4IKzajzzKFbHk2.jpg', '', null, '<img src=\"http://192.168.0.145/attachment/images/3/2017/05/JjcZpgcA6W93wJWsGPa131AHswpooQs3.jpg\" alt=\"\" id=\"40421b04870e4f72bb1ef8db9196775a\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/v5dVDiJ3rowR8g83VVW8NA3vRdWZP6jz.jpg\" alt=\"\" id=\"4165d9ea43194c09af85b8dd3f49f2d9\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/O2xV3YenXIiRX8z3iIrX1XRQZe3OM3Ao.jpg\" alt=\"\" id=\"cae4545130f245e8b74c034804c8cd73\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/WtcadiT5tTfPP5FctaYH9YqZuaVtfJ55.jpg\" alt=\"\" id=\"2104a13e283145daaddfd8bd005fad6e\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/DX8I78tvXKepEukuVOEi57vZMUY9KDmk.jpg\" alt=\"\" id=\"d6e9efb5e1784b5fb194837d1df06121\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/PLfJQ3h30yh0Zm3Y4j3gmfy366HrFDDY.jpg\" alt=\"\" id=\"e7a5d207ab544daabb0d8987dfe02110\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/DPuP6N8lK4Klx8csl6lSPUPg89Z968Ho.jpg\" alt=\"\" id=\"40a2787243a84038972d7f71f0e70e66\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Xr82smWZW8WhWMN2h82jWNH8z4wLEhLE.jpg\" alt=\"\" id=\"806b6410b04f4944856f12082187c1cf\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/EijjEd4Q7xz4eOdIjEjPODU6uWEiWItP.jpg\" alt=\"\" id=\"35b54c60d450461884db1dde99b584aa\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Cj01eRKKjcRkZLr7Vf76Qre79755g85v.jpg\" alt=\"\" id=\"1bc4831558c94335955dff1cb5f1beaa\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/JpP9d0F1yPd1Rpp3Z31KYjy30kI3fd2F.jpg\" alt=\"\" id=\"8988d1ee544c46ba8d6f7af48b122cb1\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/ak7k87L8GGSL7IgHjgXakl8GjiZ88Aj8.jpg\" alt=\"\" id=\"61d5047fc47c405e8ec0ca72fac8ec74\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/G1JnhaS7lA77arlPczC7C1h1AzZdt67D.jpg\" alt=\"\" id=\"4ad444a5118840b39158ed34394d5f45\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/BeQUAEyYCy623EAYU7uYuW0f7d0Eiufu.jpg\" alt=\"\" id=\"3ff624dda89d43a3bfd7a6b2ef617a6c\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Z774628xWg834z88pLOWp7X4g4q7T4AO.jpg\" alt=\"\" id=\"66ba932961c84c3ab5fc42567dcffaed\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/ZguAxrzmRX6Rx8geEgNCGGDwmmRr8dm8.jpg\" alt=\"\" id=\"a49239d2248d46c4855094fdec5691bc\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/cNpkpFefeFYaeN00reGpyTFQfW37Fyfa.jpg\" alt=\"\" id=\"913a089743824bbd9044015557dda07e\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Fr29p4rupv4TvuRTwtdVUzEX48PxXrCt.jpg\" alt=\"\" id=\"a21bf87d2c7147fc8eff80cd1618d1fa\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/tcFXIx90xq00Ppx0Zp2pcF2KQJ3F3G99.jpg\" alt=\"\" id=\"5bf5b2b8168a4c27bca5caaaa3619b76\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Oiu0T22rXbBt92gtz2gRDxLPXrRLgLGL.jpg\" alt=\"\" id=\"52d169e1763b4f829128d221339ab7fd\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/M2MG8zETZmNHogT82EG22NTZeb42EzTB.jpg\" alt=\"\" id=\"1dc6ccb0ab22478e98cc9470ef902846\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Ig9T9bW48GLt9tfuW75GWbEbGnm8LYGe.jpg\" alt=\"\" id=\"9cab468dac76498e97488ed383d752c9\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/k5nH4Bant9AZoIOpqBT8zBPqi2zhTZHt.jpg\" alt=\"\" id=\"d884a3ab148044949314ac8d800cf1bb\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/LwNi7i6EI7wxIiNcizJwcZJyNjYz65W0.jpg\" alt=\"\" id=\"28c37ab2521e4da3bf92c76f91d272d8\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Dn3NNv8B5a7I88NLi5qaLVv5p74Q353s.jpg\" alt=\"\" id=\"b555d194ed8a49fb953938d2ae94c4d4\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/ekpf39CNKPnWyYEK1xPPP119P1j9Wn41.jpg\" alt=\"\" id=\"415e5cf6cafb46e896f5e95c9369aff6\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/ttK6Hk7q2CekOY678GXE8tCCYbcIx88h.jpg\" alt=\"\" id=\"2c158c18ca6046729cd3e307b3dae775\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/kz99Nt81yy7FZF8CM97ZffwYMnc8fo1M.jpg\" alt=\"\" id=\"d315f1206b3d4a81a32f7f0dc3dcfe37\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/U6DTDt5jGFq0deGTIRqZ56QJG6Q6rfZ0.jpg\" alt=\"\" id=\"aa106c47fc594590a1a0514e73674e11\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/LJ8cf97zM787R0CujFjRRo980JRJ0Rj8.jpg\" alt=\"\" id=\"c67569b569de4d4d929dd190d9480966\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Ly98m99392ILXM293QXi29v99rFrq9y9.jpg\" alt=\"\" id=\"98d9a3baccd8426594d535b3a71b3375\" />', '', '', '0.00', '278.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136056', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/AJ9P9rB3RRSLBP2zr3DserzdED9eeLYe.jpg\";i:1;s:53:\"images/3/2017/05/XtIIpHnO8pKQH0jpLqJjolNoiNjpnk0I.jpg\";i:2;s:53:\"images/3/2017/05/egxBaB1AkLl11lL6Llo2UEOyU1LOo12Z.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136056', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '278.00', '278.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11154605507', 'http://item.jd.com/11154605507.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('229', '3', '1176', '1183', '1', '1', '0', '七匹狼（SEPTWOLVES）男士商务正装鞋系带皮鞋 黑色 40', 'images/3/2017/05/FTL59755THI5BSR5tKcU3BonQHL2yIN5.jpg', '', null, '<div class=\"zn1St60973\" style=\"color:#000000;border-color:#ee2d10;height:0px\"></div><div class=\"zn-material\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/P4S22a6od2v6ihHGvIo6iVwd6hf9SSoW.png\" usemap=\"#znHotMap0160973\" style=\"width:790px\" width=\"100%\"><map name=\"znHotMap0160973\"><area shape=\"rect\" coords=\"8,3,790,254\" href=\"//sale.jd.com/m/act/szF6kUMnmTHNd.html\"></map><img src=\"http://192.168.0.145/attachment/images/3/2017/05/FqYw1mub2Wu1Mubx1QTZ9qkm987YXktM.jpg\" usemap=\"#znHotMap1160973\" style=\"width:790px\" width=\"100%\"><map name=\"znHotMap1160973\"><area shape=\"rect\" coords=\"8,4,782,449\" href=\"//item.m.jd.com/product/11818918370.html\"></map><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Ljuxft0pujUjG018Dxf21XUKjO082T2p.jpg\" usemap=\"#znTplMap36742\" style=\"width:790px\" width=\"100%\"><map name=\"znTplMap36742\"><area shape=\"rect\" coords=\"0,65,263,460\" href=\"http://item.m.jd.com/product/10263892589.html\"><area shape=\"rect\" coords=\"263,65,526,460\" href=\"http://item.m.jd.com/product/10267444313.html\"><area shape=\"rect\" coords=\"526,65,789,460\" href=\"http://item.m.jd.com/product/10258233425.html\"><area shape=\"rect\" coords=\"0,460,263,855\" href=\"http://item.m.jd.com/product/10298172644.html\"><area shape=\"rect\" coords=\"263,460,526,855\" href=\"http://item.m.jd.com/product/11959886014.html\"><area shape=\"rect\" coords=\"526,460,789,855\" href=\"http://item.m.jd.com/product/10266965657.html\"><area shape=\"rect\" coords=\"0,855,263,1250\" href=\"http://item.m.jd.com/product/10529759292.html\"><area shape=\"rect\" coords=\"263,855,526,1250\" href=\"http://item.m.jd.com/product/10263729353.html\"><area shape=\"rect\" coords=\"526,855,789,1250\" href=\"http://item.m.jd.com/product/10524339206.html\"></map></div><div class=\"zn1Ed60973\" style=\"color:#000000;border-color:#ee2d11;height:0px\"></div><div class=\"for_separator\"></div><div class=\"zn1St93454\" style=\"color:#000001;border-color:#6d0e10;height:0px\"></div><div class=\"zn-material\"><br /></div><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Bf8um71K42cuUlGRc1ctZXKlmMu9uzff.jpg\" alt=\"\" id=\"39afc4383c3f41abb1ac7bf5bf80e746\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/I8P2eu2Yua2u5EaK5eXLlSruV2zSZX2U.jpg\" alt=\"\" id=\"918a147410cc4fef99b7e8adad74df45\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/LK83PS3OTTkk9ed91z37sEuZ4vX7v174.jpg\" alt=\"\" id=\"bf95dca36b8c4c3cbfecd4c818a3eeaa\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/PsjJb0JA8j99l0jSdDa9LL3dDs5AJd08.jpg\" alt=\"\" id=\"16efbf0beea941ffa4f8968304399f29\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/m3PH6q4H348Vz5uZ6FuCckkFvvlfl664.jpg\" alt=\"\" id=\"d194393e615c495cad17f3954c0f9ffc\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Dt8Jk8iVzt11b4zFd6FU6ffjf6FFTCoc.jpg\" alt=\"\" id=\"b89e935f87344938837c94457ec234c1\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/sH6Bzm6q32Zon2GIAA003zQC9693oA9M.jpg\" alt=\"\" id=\"1f12bf9e29a84d5595bc3ef873479af7\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Go19Oo71D6NKyPY3NOy39EDKk1OQJEPO.jpg\" alt=\"\" id=\"e4d7136bfd744218846ff7cd51038e41\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/H62F02UUxo60973WW3BW7GO002Q9767e.jpg\" alt=\"\" id=\"82a1aff58d034617a3491fd96b772af9\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/u1PECKof1rd21zPnJRR7CPZ997BedRzr.jpg\" alt=\"\" id=\"d077bf570f7340f0a212965ac581a7ec\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/TyY7dJI5g1yJ769wy8GKWe8wzWewyE9I.jpg\" alt=\"\" id=\"3527848a8a614bc282f11536b5e929e9\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/C40G5054g0JtaArYalGdt2ayNBtzdduG.jpg\" alt=\"\" id=\"00bcdb6780a045e9acf35afb38a235a7\" /><br /><br /><br />', '', '', '0.00', '258.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136070', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/Gx5Sj1havIXVsRVE950YHH0xHRXa3v55.jpg\";i:1;s:53:\"images/3/2017/05/zu2OYvAY6IJAoGI6o66OI862iMJmeViu.jpg\";i:2;s:53:\"images/3/2017/05/iE5kZ7MS8M822N2zN7nN8441fZsC1q54.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136070', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '258.00', '258.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10298172637', 'http://item.jd.com/10298172637.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('230', '3', '1176', '1183', '1', '1', '0', '意利船长 男士皮鞋正装男士休闲鞋男鞋商务休闲皮鞋1663 S-1663黑色 41', 'images/3/2017/05/GVB6GWZ6bwdszFVZv36lOY6BHD3H7Bf7.jpg', '', null, '<p><a href=\"http://item.m.jd.com/ware/view.action?wareId=10144320418&resourceType=panda_cube_m&resourceValue=panda_cube\"><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3796/121/1387085112/86977/ce824673/582428d1Na482eeb3.jpg\" alt=\"\" id=\"6ae8ad11c33e43598cd3eec1d58a568b\r\n\" /></a><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3154/352/2128930854/54747/3b36080/57dbc11dN52e60c61.jpg\" alt=\"\" id=\"dc016912e9bc450f989302acc90c64f8\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3139/5/2127562435/73781/1126c650/57dbc11dN20cdd6d8.jpg\" alt=\"\" id=\"27632316e590420e885b0129515579b5\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3181/311/2184356547/85496/bf34bf65/57dbc11dN3bd9ef04.jpg\" alt=\"\" id=\"354f5a4941c645bba7e3c4d0fae5239f\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3238/53/2068489020/106732/942586ed/57dbc11dNf1091d57.jpg\" alt=\"\" id=\"25896a7f4aae4b1a9e2da2151d68b56f\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3199/18/2123995503/71355/48278d37/57dbc11eN0eb3f671.jpg\" alt=\"\" id=\"424da9b9c8fc4712a7aaf9b433b03ac1\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3109/212/2086108366/62311/cb53ea9e/57dbc11eN1eb4b4b9.jpg\" alt=\"\" id=\"8baaf68170454592851ff194f88e8542\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3295/177/2125952805/107585/1dbcbfc4/57dbc11fN4fcbf590.jpg\" alt=\"\" id=\"6dde73cf47904ffc910608cbc81c418c\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3001/66/2561866300/62472/40f66ff2/57dbc11fN2878c158.jpg\" alt=\"\" id=\"ec91e76122a646db92f6517616365079\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3109/223/2143066173/34712/8a9ca16e/57dbc11fN8f015427.jpg\" alt=\"\" id=\"421110a8f1c846e199129e4474e351f9\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3247/113/2082189898/45084/6f467d01/57dbc11fN6c94d86a.jpg\" alt=\"\" id=\"033d2499b38840bebc43cea7d13f88ac\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3157/40/2110202141/35803/e639971f/57dbc120N04abbbb7.jpg\" alt=\"\" id=\"39bbfd4b4bb148b2a62fbd093527b93d\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3115/176/2133485591/38218/33dd7501/57dbc120N1c0736c3.jpg\" alt=\"\" id=\"9f42e39355ce4eda87084bb9e4c0e17b\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3196/252/2150138840/49919/defc0392/57dbc121N525abb10.jpg\" alt=\"\" id=\"64abc913ff4e4f8fb2fb5c5162d6f351\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3202/347/2141590168/54714/147aaa6a/57dbc121N8ab5506e.jpg\" alt=\"\" id=\"f69c41574fe046bf97dd567833a4c5c0\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3097/181/2121248816/81465/b363dfe7/57dbc121Nb5918d92.jpg\" alt=\"\" id=\"f05ff360b52c4f70a15a3bbaeba44979\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3268/180/2166827924/135105/d4993ff6/57dbc121Ncb21155d.jpg\" alt=\"\" id=\"d643eb1520034f30927e36ac60102c8b\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3091/83/2127207976/57363/8a6835af/57dbc122Nef0b80ae.jpg\" alt=\"\" id=\"7b746c4cfc884eacbaa3a9ea0e8d00ed\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3046/101/2099990256/80276/e22f9006/57dbc122N6d4e7c4e.jpg\" alt=\"\" id=\"9a5917ce1ec64edfba39160d5e663501\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3025/133/2115007770/42020/206c9ca9/57dbc123N12902aea.jpg\" alt=\"\" id=\"4dca75ece78b4b23b19c36a71a622402\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3085/39/2146305236/53316/80fdfee/57dbc123Naa150fd8.jpg\" alt=\"\" id=\"4763f38060424807b0240ff7b9f600d2\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3229/301/2112986944/31275/78b9a36/57dbc123N7147b4fd.jpg\" alt=\"\" id=\"04c5b27729cd44ab98e05f2cf29c3e5c\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3028/270/2517882625/33065/b5485c7b/57dbc124N5b21adec.jpg\" alt=\"\" id=\"2a5d3018e485443aaa877fcc142e58d3\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3136/292/2105508392/40749/18454fa1/57dbc124N2ea8814b.jpg\" alt=\"\" id=\"e8aa61d1b73c453c9469db774e479706\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3058/45/2096238586/32904/685bf886/57dbc125Neb2a3af9.jpg\" alt=\"\" id=\"c968187c55804a8eb579639322b177ca\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3280/335/2135725522/69973/bb8c0485/57dbc124N9c9654c0.jpg\" alt=\"\" id=\"672a059209c84677b63c0def7510b69e\r\n\" /><br /></p>', '', '', '0.00', '139.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136077', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/Az9xuHwwnQ4xnuFHahqhWZud8u9aGuZa.jpg\";i:1;s:53:\"images/3/2017/05/Iszw1aClOL2MsMcL8r8hL7w4ROL1rYXl.jpg\";i:2;s:53:\"images/3/2017/05/X4778R0G6660Zog626E02802Gm428rHz.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136077', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '139.00', '139.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '1276447665', 'http://item.jd.com/1276447665.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('231', '3', '1176', '1183', '1', '1', '0', '圣大保罗polo 皮鞋男商务休闲男鞋头层牛皮英伦风系带结婚鞋子男 黑色 40', 'images/3/2017/05/cR8522Vov2822236I8gq85Q863V5ZIB6.jpg', '', null, '<div class=\"zn1St56309\" style=\"color:#000000;border-color:#dbf510;height:0px\"></div><div class=\"zn-material\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/P18dGGG1G229gy5EAa3ADeA39sZEz1X1.jpg\" usemap=\"#Map17\"><map name=\"Map17\"><area href=\"//item.m.jd.com/product/11262644441.html\" shape=\"rect\" coords=\"20,37,167,224\"><area href=\"//item.m.jd.com/product/11536599785.html\" shape=\"rect\" coords=\"171,36,318,223\"><area href=\"//item.m.jd.com/product/11492484749.html\" shape=\"rect\" coords=\"472,38,619,225\"><area href=\"//item.m.jd.com/product/11490212076.html\" shape=\"rect\" coords=\"323,37,470,224\"><area href=\"//item.m.jd.com/product/11760502273.html\" shape=\"rect\" coords=\"473,227,620,414\"><area href=\"//item.m.jd.com/product/11588367025.html\" shape=\"rect\" coords=\"172,226,319,413\"><area href=\"//item.m.jd.com/product/10788125453.html\" shape=\"rect\" coords=\"21,226,168,413\"><area href=\"//item.m.jd.com/product/11611158853.html\" shape=\"rect\" coords=\"323,226,470,413\"><area href=\"//item.m.jd.com/product/10952108188.html\" shape=\"rect\" coords=\"473,417,620,604\"><area href=\"//item.m.jd.com/product/11512446514.html\" shape=\"rect\" coords=\"172,416,319,603\"><area href=\"//item.m.jd.com/product/11760333592.html\" shape=\"rect\" coords=\"21,416,168,603\"><area href=\"//item.m.jd.com/product/11578833390.html\" shape=\"rect\" coords=\"323,416,470,603\"><area href=\"//item.m.jd.com/product/11588532672.html\" shape=\"rect\" coords=\"473,607,620,794\"><area href=\"//item.m.jd.com/product/10495453724.html\" shape=\"rect\" coords=\"171,607,318,794\"><area href=\"//item.m.jd.com/product/11658059568.html\" shape=\"rect\" coords=\"20,607,167,794\"><area href=\"//item.m.jd.com/product/10646596594.html\" shape=\"rect\" coords=\"322,607,469,794\"><area shape=\"rect\" coords=\"473,607,620,794\" ></map></div><div class=\"zn1Ed56309\" style=\"color:#000000;border-color:#dbf511;height:0px\"></div><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/G4GIcl3w0KfBEg3IifMK0i64CMkk44cM.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/a1nenfb611khPPHNZpe2PGqHeHfQZbhV.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/K7q9W6gFjeJyQRjgYyrg49zUyWu7W6W6.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/Nj30jCegZ7hg77CM7PWzaGCwCtJjwz7g.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/tu2iE12ZmxbQX8F1Q11oMIifLo8aq2sQ.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/Q66f99l11tK6v0602BTue67kLL6E1k0q.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/pVz7aic60Ta6CVg7ZiTj0ca9JC9it701.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/Oyjtr0JJ7Y2m80FN5BM21swMJrtojc8a.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/v49ON8888mbUNm8OI8y88nIib8WuO8In.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/u8tSyitBs1IxMxPbJ6841OSS1pxYmu68.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/TZEe60g0P227x36gbVxpx3tl06fXp6zi.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/mapSv5VcAhMsa6a5v455Hmaqs4Q06Spt.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/gLTTNts4wTxNciky442cw4nTNISxLzNi.jpg\"><div class=\'for_separator\'></div><div class=\"zn5St56309\" style=\"color:#000000;border-color:#dbf550;height:0px\"></div><div class=\"zn-material\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/P18dGGG1G229gy5EAa3ADeA39sZEz1X1.jpg\" usemap=\"#Map17\"><map name=\"Map17\"><area href=\"//item.m.jd.com/product/11262644441.html\" shape=\"rect\" coords=\"20,37,167,224\"><area href=\"//item.m.jd.com/product/11536599785.html\" shape=\"rect\" coords=\"171,36,318,223\"><area href=\"//item.m.jd.com/product/11492484749.html\" shape=\"rect\" coords=\"472,38,619,225\"><area href=\"//item.m.jd.com/product/11490212076.html\" shape=\"rect\" coords=\"323,37,470,224\"><area href=\"//item.m.jd.com/product/11760502273.html\" shape=\"rect\" coords=\"473,227,620,414\"><area href=\"//item.m.jd.com/product/11588367025.html\" shape=\"rect\" coords=\"172,226,319,413\"><area href=\"//item.m.jd.com/product/10788125453.html\" shape=\"rect\" coords=\"21,226,168,413\"><area href=\"//item.m.jd.com/product/11611158853.html\" shape=\"rect\" coords=\"323,226,470,413\"><area href=\"//item.m.jd.com/product/10952108188.html\" shape=\"rect\" coords=\"473,417,620,604\"><area href=\"//item.m.jd.com/product/11512446514.html\" shape=\"rect\" coords=\"172,416,319,603\"><area href=\"//item.m.jd.com/product/11760333592.html\" shape=\"rect\" coords=\"21,416,168,603\"><area href=\"//item.m.jd.com/product/11578833390.html\" shape=\"rect\" coords=\"323,416,470,603\"><area href=\"//item.m.jd.com/product/11588532672.html\" shape=\"rect\" coords=\"473,607,620,794\"><area href=\"//item.m.jd.com/product/10495453724.html\" shape=\"rect\" coords=\"171,607,318,794\"><area href=\"//item.m.jd.com/product/11658059568.html\" shape=\"rect\" coords=\"20,607,167,794\"><area href=\"//item.m.jd.com/product/10646596594.html\" shape=\"rect\" coords=\"322,607,469,794\"><area shape=\"rect\" coords=\"473,607,620,794\" ></map></div><div class=\"zn5Ed56309\" style=\"color:#000000;border-color:#dbf551;height:0px\"></div>', '', '', '0.00', '299.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136079', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/pg76Xg9f69xgFxCr47v876X5VrRZvcjd.jpg\";i:1;s:53:\"images/3/2017/05/e8U2rKjap4P3lxDakm1y2Pw7w827XlRx.jpg\";i:2;s:53:\"images/3/2017/05/k9Dk39kLlxSP3pGUPx9g0sRoGOpxqUSX.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136079', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '299.00', '299.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10495453724', 'http://item.jd.com/10495453724.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('232', '3', '1176', '1183', '1', '1', '0', '奥康 男士皮鞋男鞋头层牛皮春季新款商务休闲鞋正装皮鞋工作鞋英伦风系带结婚鞋子男 黑色四季款 40', 'images/3/2017/05/p52tV09tKdfyV2B2VTtSVkktddxnjK9K.jpg', '', null, '<div style=\"text-align: center;\"><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/yEmMIp2MqqMhIq2D2x8IX7vf7Dx22fD0.jpg\" alt=\"\" id=\"9c676a2fab864bcaa6d4f7fa700af6b7\" /><br /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/ctllvBe4VcFoz4FVNeW409TkVe4WfeLb.jpg\" alt=\"\" id=\"35f654fc9bde4b799c289e2fbdbd3755\" /></div><br /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/B7wI751t7GKQVE85zkSQ71siBqqTSI1r.jpg\" alt=\"\" id=\"04432a0120a34cb1900fdffc19899241\" style=\"text-align: center;\" /><br /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/X5rRSSOIP0WZJfYijwRVfGfrfZwwj10V.jpg\" alt=\"\" id=\"951422b97b96468b804fdbe81bc44fdd\" /><br /><br /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/mEWFyiF0G6YgqxE1Y1XI0a661gy1Yepi.jpg\" alt=\"\" id=\"a5aa635635214395ab2d374e4b9207b9\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/gtYN87TKf7yaOOQoNt4KyraNYpkFffNr.jpg\" alt=\"\" id=\"acede8330fe4451fac61d7c75e8218fb\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/ZLBjnOPuKODqJZZouxdcNl3DoKEcxQej.jpg\" alt=\"\" id=\"4a28d720bafe4958af3990de55560ec4\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Rx58485BG14742x23U55818u500o91u8.jpg\" alt=\"\" id=\"22c3d20388a144fc9b1d5a24731bea1b\" /><br /><br /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/zqM5H6gSjZIZgD6ni45UqnAud65nkUkg.jpg\" alt=\"\" id=\"bdaf4d1bcea340278e293a1f3b88a947\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/HmD828t88GbNDN0ddw77nv8yn8mnnDRm.jpg\" alt=\"\" id=\"324065fececa4a3faa57e38f643d1ae7\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/GL191IqIH52Ljtli25k28k9vl85vj5VH.jpg\" alt=\"\" id=\"1e23a6823a9e4cf68b14f56f737fad1f\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/rSZ4Jszm4eJeeLe4GOlLzLlZ49CsyO5L.jpg\" alt=\"\" id=\"ddb097875ae2404f9fe8ea5b98842a59\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/EE32Ayh18HYI47TyNFHCeFh8BC4Ft482.jpg\" alt=\"\" id=\"3eb9c876c64c4676b6e2884c6af2cffc\" /><br /><p><br /></p><br /><br /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/zDF00DFeDpdmM6czd3V6cMIF6vmwE2C3.jpg\" alt=\"\" id=\"208e4b9c7e414a4f8a1714e7451235e8\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/PFta2HC20oTYF9ZiaQfeIFTQq0Yqycod.jpg\" alt=\"\" id=\"d690ea9338b2471b9316d2380f10ea7c\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/SO457710V0k14yFg141xZx0114x1k514.jpg\" alt=\"\" id=\"3f17d0bcb21a46d4a8c1fb81bb1ca1c7\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/wsrD7244BS576BD65o5djS54SSoobSod.jpg\" alt=\"\" id=\"b856361642a14ba6a0b593eba43ab83a\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/B5hpGHHg9LPLl5HO9f3OFSLGChHl33y2.jpg\" alt=\"\" id=\"ca026056f59044f49b4c1d93cd170fff\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/uAPx7Cp1optXExCpqPXQ5papPOXkCV5e.jpg\" alt=\"\" id=\"a05f84eeffce4258a197dcf2257c3787\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/O0LR6A4rRlK6kRBRZg60pLptPkkGg04k.jpg\" alt=\"\" id=\"93b9ef61cef34b0c8e0bc2a877c1b6d1\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/SySgMTwFmdkfsmaKdKlYSaRgGsXZaLKw.jpg\" alt=\"\" id=\"9baee0284d754ae4b0bf5a4707eff243\" /><br />', '', '', '0.00', '219.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136085', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/cb9uKRMzpBrPb1AKM61Pq9zRk5nP4K5j.jpg\";i:1;s:53:\"images/3/2017/05/tCv33DdPr3c9GHSkTrLdK7PBtVlzbdeb.jpg\";i:2;s:53:\"images/3/2017/05/RxE8epPem4eg4Oc2cmiB748DP4AC0Z8i.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136085', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '219.00', '219.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '1696470187', 'http://item.jd.com/1696470187.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('233', '3', '1176', '1183', '1', '1', '0', '鳄鱼恤 皮鞋男士商务正装皮鞋男真皮男鞋英伦青年结婚鞋 黑色WB4379174XH 40码 头层牛皮', 'images/3/2017/05/hCVZVXN6Xhc9MN6ZH3y1HdxCNZhvx9Hk.jpg', '', null, '<img src=\"http://192.168.0.145/attachment/images/3/2017/05/L55JS98pQSAA1Z4541228yZ8V582JZz8.jpg\" alt=\"\" id=\"934f3fc42c6f47b09d6df20982ad5dae\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/q2dl4FFYrHrH4F644ONm4yforfQ2r8n2.jpg\" alt=\"\" id=\"01ceee507960488e9afea869f19b6a3f\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/nt6f0p68Z6wTb2aapk0tz07oO9o0PYt2.jpg\" alt=\"\" id=\"bed9633a510140bfbc9edb468c8a04f2\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/D44HB0hpDhHXPgHsJzHpj4HdhxDgPhHz.jpg\" alt=\"\" id=\"78df8b8e7bb14a6c9dd2e06f728ac400\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/FEOE4QZxe5yQzlUEeq06uy2J5EzjE526.jpg\" alt=\"\" id=\"642b00dea39c4d7596eedd6796131e32\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/v5qj0H8pj0BSqT05HPKSJSfFpqhHSPBh.jpg\" alt=\"\" id=\"973b211875684b069d93a78350629eec\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/DYKD48BWOdPX34D9j9b38I99118YFXDo.jpg\" alt=\"\" id=\"ace5d73bae644d0daf9ded7c0cfefb82\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/d6qJ4e4t6KteTqh4E4eLJYKtvCzRVy4E.jpg\" alt=\"\" id=\"983675d8a91340438b6e68d332a98947\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/kzPfpBSx540gr0NP50sLGBpE09nxP0gl.jpg\" alt=\"\" id=\"09280b67912c4961be8a4b950886cbff\" /><br /><br /><br /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/wEPNTle859l8zsHMNm77s7zLmmMEl9hR.jpg\" alt=\"\" id=\"29dac268790741769383f6939dd99351\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/oVK819tn668z6Pk444N8IlGZI6K9Il1d.jpg\" alt=\"\" id=\"d1d0d63bbdcf468e8ccc63bfb9c83401\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/jT09XHJqNH6tgJsHbnmtZobtthNNHHTH.jpg\" alt=\"\" id=\"d75b8e140846452fbb3574ff25d59d4a\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Sdfet6h78XzFd663bye7uUZGUeoFuYr7.jpg\" alt=\"\" id=\"697e41c872de41e9b3b963ce02b96aae\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/MbsSw7ya2xxxyiZSS11vXaN5a1B1s55X.jpg\" alt=\"\" id=\"3d5411babe854a0aa966cdc8ebe8a432\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/M0j7xzhgyvX5x9MmkZKG0d11VvVj31V5.jpg\" alt=\"\" id=\"32101960a83045fb93bc1b8496612353\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/otQp5qg52A3ya5p2Yy7gdyQyqFUDFtWA.jpg\" alt=\"\" id=\"359b076500b14300bbdff32ce178713a\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/yUUg725y277Yd3o67O5H276o35V5Uue2.jpg\" alt=\"\" id=\"97d7ae77989545a3adb472a90af41626\" />', '', '', '0.00', '338.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136094', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/o1ztaWjtAOqa2K6t37q1agDOA6YaZBf7.jpg\";i:1;s:53:\"images/3/2017/05/X09vva6fhMRq8qu08y10AhgMN6uh0i81.jpg\";i:2;s:53:\"images/3/2017/05/OuZvVl77l7Lbfdvv5L4AdZNlvJjLvN25.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136094', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '338.00', '338.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10720206101', 'http://item.jd.com/10720206101.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('234', '3', '1176', '1183', '1', '1', '0', '公牛世家皮鞋男士商务休闲鞋男鞋夏季镂空冲孔英伦透气真皮休闲皮鞋 1951透气款 黑色 40', 'images/3/2017/05/kd81o8fuxOo8h9zNzZ28HKDghXFXwrRw.jpg', '', null, '<p><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4498/174/2641246144/45063/d06b1c5b/58f0feefNa5c92a73.jpg\" alt=\"\" id=\"dc5316de5754413985af40b0853267e3\r\n\" /><br /></p><p><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4420/327/1012927638/123485/e974e816/58d7de2dN9cdd2be9.jpg\" alt=\"\" id=\"d740be9a2a7946dfa0324c5733f295a3\r\n\" /><br /><br /></p><p><br /></p><p><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3112/241/9694598350/107909/c74186b2/58d7e015N428ae829.jpg\" alt=\"\" id=\"ef6bd813784b4ba7973aac33f122c264\r\n\" /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4570/271/1042017261/114510/637a17ea/58d7df19N2e8f2fe7.jpg\" alt=\"\" id=\"7d86d35aef2d495ba17cbb06b0f010d1\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4396/274/1059300787/128330/f0f86a5a/58d7df19Neb009800.jpg\" alt=\"\" id=\"ec9381d245074d9081c8379f5126670e\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4534/258/1034206496/106803/732ac3f1/58d7df1aN4acdadfc.jpg\" alt=\"\" id=\"08846485cea141669e0148ceaedce552\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4264/49/2899307818/63940/66a23413/58d7df1bN67a88fef.jpg\" alt=\"\" id=\"84e59787f372472994460e6c75f51ad9\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3205/254/9794785815/103876/db88828e/58d7df1bN565401d8.jpg\" alt=\"\" id=\"304e614299f84bfd94796f50849e27fe\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4669/276/1065008922/72410/a5846026/58d7df1cNc2bdb6d0.jpg\" alt=\"\" id=\"e9e55fe8b50b4df6888d07ca9043d1b9\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4489/257/1053224576/30955/697665da/58d7df1dNcd202503.jpg\" alt=\"\" id=\"4e5e019190c04a4698e5b701b7ea7755\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3145/34/9851227184/107381/86c7d29b/58d7df1dNa39699fb.jpg\" alt=\"\" id=\"a59cd7c9f85f47bd90d184ccfd8983d7\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4423/233/1055171049/63999/3e38bde9/58d7df1eNfe9966d2.jpg\" alt=\"\" id=\"53e82a1db8604168abb31cff606c1bca\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4444/271/1070199588/59946/95ddcf77/58d7df1dNd5b8c5d6.jpg\" alt=\"\" id=\"d3abac4b9aa941f2b9a5728e0d8838ec\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3301/121/9784961825/78535/5a565036/58d7df1fN24646c42.jpg\" alt=\"\" id=\"fa8b240b994843cc91e94db5d675e5b4\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4231/97/2981181477/46325/13484820/58d7df20N517babcc.jpg\" alt=\"\" id=\"622ed581fa1a49bf9cc330d4a67c7c7c\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3169/271/9733042110/57930/c8357d86/58d7df20N6dd1b8c7.jpg\" alt=\"\" id=\"b38b46116a6e4ee8a48897e5f6889d19\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3106/195/9794257624/52032/10351c86/58d7df21N4562d0c8.jpg\" alt=\"\" id=\"aaffbd379d00479185fbac61ffe56209\r\n\" /><br /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4282/159/2958394351/160069/99cf97b9/58d7df22Nc37f8a2d.jpg\" alt=\"\" id=\"af06942f57b84b3eb628cb0735c810b8\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4552/306/1012258618/154504/5e786d72/58d7df24N8a7ea825.jpg\" alt=\"\" id=\"fbccbb099f2e4ad28ced59651bf6c6a6\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4597/318/1052031328/159566/bc5e3c83/58d7df24N92ebf62b.jpg\" alt=\"\" id=\"90c9060c00554dcaa384be4d87ecb563\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4273/194/2899875940/149923/523c208c/58d7df25N92563996.jpg\" alt=\"\" id=\"84961208f3e84ec7b802fa3ee95788b2\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4594/305/1051993561/137527/b24db1e7/58d7df26Nf7a0e7d4.jpg\" alt=\"\" id=\"49466c88b9564814ba4ae72e449402f1\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4663/331/1018537132/116993/64b0cb49/58d7df26Nd26e9785.jpg\" alt=\"\" id=\"8c7b514e23774ec69b37dffda825a7d9\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4393/315/1048980226/84693/7fefb9b4/58d7df27Nb2a6790a.jpg\" alt=\"\" id=\"3442658658e84d80b51b9dc5c5ba1352\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3121/183/9692249090/77623/96a3aad2/58d7df28Na6468fd6.jpg\" alt=\"\" id=\"d97463174aaa43c995cc87b71864dd78\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4597/335/1056715712/125619/4daa26e8/58d7df28Nefa49c3d.jpg\" alt=\"\" id=\"23eccd9be591407eb91fa96c45417d5a\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4600/320/1059476892/68651/a037b307/58d7df29N740dd2e7.jpg\" alt=\"\" id=\"4c84026c0ad84c0582278fb42e17fbd1\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4201/348/2929065199/84541/f674f6f8/58d7df2aN73e1c8f9.jpg\" alt=\"\" id=\"b073df6306614dcbbf2635dda989ab65\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3262/354/9772702913/66757/26ce2a06/58d7df2aN65c3fb58.jpg\" alt=\"\" id=\"ecdc5948cfaa4b5c801c63555966b661\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4129/343/2875381483/72199/3adb80a5/58d7df2bN095c6dfc.jpg\" alt=\"\" id=\"a66b136a2a984ebcb3b4d3b3ad8a1088\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4675/340/1039562028/73976/3d4a8e85/58d7df2bN194f3920.jpg\" alt=\"\" id=\"5fb6795d4158472c93a9d9f04bae2c27\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4264/56/2902121258/118053/8c21d15f/58d7df2bNadc55009.jpg\" alt=\"\" id=\"807888997a2245c7bb7f17207bd7722a\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3232/155/9870487451/82957/434986f3/58d7df2dNc30ea4c6.jpg\" alt=\"\" id=\"1fb67958141245b7bb9c789a8ac3cc46\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4501/311/1036343177/64905/6fe0b99e/58d7df2dN09065234.jpg\" alt=\"\" id=\"2763939bdf0a43d7a773fe255d54ea09\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4426/277/1062399178/53916/ad2b56a1/58d7df2dN1cad2ac6.jpg\" alt=\"\" id=\"2377d3b002b94fd59e0ceb32be540642\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4675/344/1025811605/65705/5cea2527/58d7df2fN3b7c6892.jpg\" alt=\"\" id=\"7056734304a64710911dc5e5d04c88c3\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3133/235/9777056286/59342/e4609730/58d7df2fNc761db95.jpg\" alt=\"\" id=\"0cbcaac395be4855b940a5c1f0049acb\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3274/276/9702301363/65327/bd83d7d/58d7df30N925cce6b.jpg\" alt=\"\" id=\"0ecdf22f92ba42eabec65c0e5eab2574\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4288/178/2920807576/63167/46599048/58d7df30N0ede3cbc.jpg\" alt=\"\" id=\"40f69a8b504240659e51a87d2e42e7d9\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4579/344/1058062851/70131/fc51da75/58d7df31Nd0b5776c.jpg\" alt=\"\" id=\"005a0ae1620b449288a0d206addb7a3f\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4336/153/2929203365/73601/41b5a4ab/58d7df30Nb6a536c1.jpg\" alt=\"\" id=\"b54c9a3755d84924ac9ceeb5b12c7e44\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4339/160/2897240214/58439/7632b154/58d7df32Nb7a2b5b0.jpg\" alt=\"\" id=\"66094ca18a904ab4807175fbf5e38375\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4186/260/2945470866/60041/2037c280/58d7df33N093eabb1.jpg\" alt=\"\" id=\"9292146ce03f401ebdba39b8956e0ccf\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4255/118/2931772391/65423/3d5001ed/58d7df33N52fd3102.jpg\" alt=\"\" id=\"8070c2931bbb46a28805486dbdf5b635\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4441/327/1054522864/55585/b0da4bb0/58d7df34N8463d6b9.jpg\" alt=\"\" id=\"f1d4abc5450f4af3b9b09d96d7bfaf9d\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3118/129/9801389548/91524/47c07254/58d7df35N91c80bb6.jpg\" alt=\"\" id=\"960afd7470d3478db2f9c54593d9798a\r\n\" /><br /></p><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div>', '', '', '0.00', '288.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136103', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/s941TMcT0AtyxY0c26YI9t6TtiZsd9EE.jpg\";i:1;s:53:\"images/3/2017/05/lwT9QShc9urr19QR4Z9W4CFCHshWOw9s.jpg\";i:2;s:53:\"images/3/2017/05/V8gtNs83CZnGce6kUQnY9gG9ZA8ZNGGn.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136103', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '288.00', '288.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10511895854', 'http://item.jd.com/10511895854.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('235', '3', '1176', '1183', '1', '1', '0', '步萨尼 皮鞋男士皮鞋新款头层牛皮商务休闲皮鞋系带正装鞋男结婚鞋 黑色 42码', 'images/3/2017/05/lZEZpJ38n3NDZ8wI5hd80K3XhedxE5WP.jpg', '', null, '<div class=\"zn1St83248\" style=\"color:#000001;border-color:#453010;height:0px\"></div><div class=\"zn-material\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/IEe7ZKqvD7MBRbEFKeFTdFBEMe4L97D3.jpg\" usemap=\"#znHotMap0183248\" style=\"width:640px\" width=\"100%\"><map name=\"znHotMap0183248\"><area shape=\"rect\" coords=\"0,3,634,275\" href=\"//sale.jd.com/app/act/UnB6oJiEaReCW.html\"></map><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Ym8g4rYrdq2q28b9buxur14QWcXUB21u.jpg\" usemap=\"#znTplMap61432\" style=\"width:640px\" width=\"100%\"><map name=\"znTplMap61432\"><area shape=\"rect\" coords=\"8,0,216,241\" href=\"http://item.m.jd.com/product/10504779163.html\"><area shape=\"rect\" coords=\"216,0,424,241\" href=\"http://item.m.jd.com/product/10497281727.html\"><area shape=\"rect\" coords=\"424,0,633,241\" href=\"http://item.m.jd.com/product/11079364348.html\"><area shape=\"rect\" coords=\"8,241,216,481\" href=\"http://item.m.jd.com/product/10976258013.html\"><area shape=\"rect\" coords=\"216,241,424,481\" href=\"http://item.m.jd.com/product/11190975916.html\"><area shape=\"rect\" coords=\"424,241,633,481\" href=\"http://item.m.jd.com/product/10504730815.html\"><area shape=\"rect\" coords=\"8,481,216,722\" href=\"http://item.m.jd.com/product/10667276513.html\"><area shape=\"rect\" coords=\"216,481,424,722\" href=\"http://item.m.jd.com/product/10363543972.html\"><area shape=\"rect\" coords=\"424,481,633,722\" href=\"http://item.m.jd.com/product/10958545568.html\"><area shape=\"rect\" coords=\"8,722,216,962\" href=\"http://item.m.jd.com/product/10368957084.html\"><area shape=\"rect\" coords=\"216,722,424,962\" href=\"http://item.m.jd.com/product/10958453474.html\"><area shape=\"rect\" coords=\"424,722,633,962\" href=\"http://item.m.jd.com/product/10495241091.html\"></map></div><div class=\"zn1Ed83248\" style=\"color:#000001;border-color:#453011;height:0px\"></div><div class=\"for_separator\"></div><div class=\"zn1St56455\" style=\"color:#000000;border-color:#dc8710;height:0px\"></div><div class=\"zn-material\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/jA9Qny5Ze5Yooko5KoqeZcn5YK56KqC6.jpg\" usemap=\"#Map111\"><map name=\"Map111\"><area href=\"//item.m.jd.com/product/10504779163.html\" shape=\"rect\" coords=\"15,15,213,238\"><area href=\"//item.m.jd.com/product/10497281727.html\" shape=\"rect\" coords=\"218,15,417,237\"><area href=\"//item.m.jd.com/product/11079429454.html\" shape=\"rect\" coords=\"423,15,620,237\"></map><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/n7fpJZ9n5W9rJE95W7ZY1A1rfA1eW79E.jpg\" usemap=\"#Map222\"><map name=\"Map222\"><area href=\"//item.m.jd.com/product/10976258013.html\" shape=\"rect\" coords=\"17,6,215,227\"><area href=\"//item.m.jd.com/product/11190975916.html\" shape=\"rect\" coords=\"221,5,420,227\"><area href=\"//item.m.jd.com/product/10504730815.html\" shape=\"rect\" coords=\"425,5,622,226\"></map><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/T6xS3ytibeCbKiY6DiYZ96zIXSiIMSkk.jpg\" usemap=\"#Map333\"><map name=\"Map333\"><area href=\"//item.m.jd.com/product/10667276515.html\" shape=\"rect\" coords=\"19,6,216,229\"><area href=\"//item.m.jd.com/product/10363543972.html\" shape=\"rect\" coords=\"221,7,418,228\"><area href=\"//item.m.jd.com/product/10958545568.html\" shape=\"rect\" coords=\"424,8,623,228\"></map><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/mgea1GaZF1JHHt4JhtFA113ttFLHkaPg.jpg\" usemap=\"#Map444\"><map name=\"Map444\"><area href=\"//item.m.jd.com/product/10495241091.html\" shape=\"rect\" coords=\"18,8,216,277\"><area href=\"//item.m.jd.com/product/11249732502.html\" shape=\"rect\" coords=\"222,8,420,277\"><area href=\"//item.m.jd.com/product/10959109688.html\" shape=\"rect\" coords=\"425,7,623,277\"></map></div><div class=\"zn1Ed56455\" style=\"color:#000000;border-color:#dc8711;height:0px\"></div><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/xWALmLpuzHr8qQPqFF88uy8R8hsms98M.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/w94WWZ3AoEvu9v7r9ga4K1wYEdEgr272.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/oXFmhx5AczgfFX16gMHAqHAF6FHhx65h.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/hZpJ2ZWCXz6iI7nnWy1mlDXl7F2L8Uk2.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/dCwk7C7c7CcV2e4woesg2iZ9KK2e6G6Q.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/VmzalaVblWx8LX6vwk6V4XRbaUu76x03.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/LP4m22B47zZpSr7zGBXQRRs9IRbR1BZP.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/cLEWwZ014xZN26gLL1y205PppK42Spg0.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/vK1n2sp2YL6l6XxP2C2C6Ax6oaY9c0dc.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/F1252zcNnne25wN26jC6tEZ212N21OVH.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/D88Y993Xy49t11tX9Yn6k44LzXHKzknx.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/szbZ05K343iIv43W43DNv0VE5kRZEvV5.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/T735xGkUxYz94Gn629G6r3zu6Y658qGu.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/SysnyCleq9jHuhn9950nhscQS0CYUcTs.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/LMInu7nrmmnV77R20Nu4c0xu9dVrCvK4.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/vSX4gxZXZ1t9mDsZd55Cbv5M67ZCVDDd.jpg\"><div class=\'for_separator\'></div><div class=\"zn5St56455\" style=\"color:#000000;border-color:#dc8750;height:0px\"></div><div class=\"zn-material\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/jA9Qny5Ze5Yooko5KoqeZcn5YK56KqC6.jpg\" usemap=\"#Map111\"><map name=\"Map111\"><area href=\"//item.m.jd.com/product/10504779163.html\" shape=\"rect\" coords=\"15,15,213,238\"><area href=\"//item.m.jd.com/product/10497281727.html\" shape=\"rect\" coords=\"218,15,417,237\"><area href=\"//item.m.jd.com/product/11079429454.html\" shape=\"rect\" coords=\"423,15,620,237\"></map><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/n7fpJZ9n5W9rJE95W7ZY1A1rfA1eW79E.jpg\" usemap=\"#Map222\"><map name=\"Map222\"><area href=\"//item.m.jd.com/product/10976258013.html\" shape=\"rect\" coords=\"17,6,215,227\"><area href=\"//item.m.jd.com/product/11190975916.html\" shape=\"rect\" coords=\"221,5,420,227\"><area href=\"//item.m.jd.com/product/10504730815.html\" shape=\"rect\" coords=\"425,5,622,226\"></map><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/T6xS3ytibeCbKiY6DiYZ96zIXSiIMSkk.jpg\" usemap=\"#Map333\"><map name=\"Map333\"><area href=\"//item.m.jd.com/product/10667276515.html\" shape=\"rect\" coords=\"19,6,216,229\"><area href=\"//item.m.jd.com/product/10363543972.html\" shape=\"rect\" coords=\"221,7,418,228\"><area href=\"//item.m.jd.com/product/10958545568.html\" shape=\"rect\" coords=\"424,8,623,228\"></map><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/mgea1GaZF1JHHt4JhtFA113ttFLHkaPg.jpg\" usemap=\"#Map444\"><map name=\"Map444\"><area href=\"//item.m.jd.com/product/10495241091.html\" shape=\"rect\" coords=\"18,8,216,277\"><area href=\"//item.m.jd.com/product/11249732502.html\" shape=\"rect\" coords=\"222,8,420,277\"><area href=\"//item.m.jd.com/product/10959109688.html\" shape=\"rect\" coords=\"425,7,623,277\"></map></div><div class=\"zn5Ed56455\" style=\"color:#000000;border-color:#dc8751;height:0px\"></div><div class=\"for_separator\"></div><div class=\"zn5St83248\" style=\"color:#000001;border-color:#453050;height:0px\"></div><div class=\"zn-material\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/EE8DQ86CQ5aAhUqdhD61D6kkq3ChH118.jpg\" usemap=\"#znHotMap0583248\" style=\"width:640px\" width=\"100%\"><map name=\"znHotMap0583248\"><area shape=\"rect\" coords=\"6,3,640,275\" href=\"//sale.jd.com/app/act/UnB6oJiEaReCW.html\"></map><img src=\"http://192.168.0.145/attachment/images/3/2017/05/FwFw7KHFY8Dww5GWwY5mH0OH95vVo9Fd.jpg\" usemap=\"#znTplMap61433\" style=\"width:640px\" width=\"100%\"><map name=\"znTplMap61433\"><area shape=\"rect\" coords=\"8,0,216,241\" href=\"http://item.m.jd.com/product/10504779163.html\"><area shape=\"rect\" coords=\"216,0,424,241\" href=\"http://item.m.jd.com/product/10497281727.html\"><area shape=\"rect\" coords=\"424,0,633,241\" href=\"http://item.m.jd.com/product/11079364348.html\"><area shape=\"rect\" coords=\"8,241,216,481\" href=\"http://item.m.jd.com/product/10976258013.html\"><area shape=\"rect\" coords=\"216,241,424,481\" href=\"http://item.m.jd.com/product/11190975916.html\"><area shape=\"rect\" coords=\"424,241,633,481\" href=\"http://item.m.jd.com/product/10504730815.html\"><area shape=\"rect\" coords=\"8,481,216,722\" href=\"http://item.m.jd.com/product/10667276515.html\"><area shape=\"rect\" coords=\"216,481,424,722\" href=\"http://item.m.jd.com/product/10363543972.html\"><area shape=\"rect\" coords=\"424,481,633,722\" href=\"http://item.m.jd.com/product/10958545568.html\"><area shape=\"rect\" coords=\"8,722,216,962\" href=\"http://item.m.jd.com/product/10368957084.html\"><area shape=\"rect\" coords=\"216,722,424,962\" href=\"http://item.m.jd.com/product/10958453474.html\"><area shape=\"rect\" coords=\"424,722,633,962\" href=\"http://item.m.jd.com/product/10495241091.html\"></map></div><div class=\"zn5Ed83248\" style=\"color:#000001;border-color:#453051;height:0px\"></div>', '', '', '0.00', '299.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136105', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/yZpgIIvLL5ZzI5q27Kz7i8FIsM5ZlpQi.jpg\";i:1;s:53:\"images/3/2017/05/UTfot46z4y0PVT442qtZ966U40Tz79FX.jpg\";i:2;s:53:\"images/3/2017/05/cQ0qYHW9htPV9Ahy66hzAt17Y0Ha0hw7.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136105', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '299.00', '299.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10504716767', 'http://item.jd.com/10504716767.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('236', '3', '1176', '1183', '1', '1', '0', '舍道 男士皮鞋男鞋 商务休闲鞋 牛皮男士休闲鞋 系带皮鞋男S-1807 S-1807棕色 42', 'images/3/2017/05/UwZY7Y6YyWlUQgQgUq4L4ruzIqk7474g.jpg', '', null, '<img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/JzcFJUuYtZyQJAU6gYlbMFUytCUGC36j.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/vtMutUaIuL0snlTv55P5GNptT5Gtmwac.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/MIGHUzcG3DCzFhcFHbZQF55IDuuGdg5C.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/h9oit2QzjoFTYG9TMoZQj2zJtclLLICF.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/Mt1CCTPF1J6Kj6LhfSu88DHLsHc3H1DH.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/oQrmMtle2waMWSrMBPLEg5PCZq5koPbT.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/S53pPOOR3r694B8R36zI6Oa54oo4QqX6.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/u3eo5v55D8Rke9Zxd4Rcm4z445l95VmV.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/z77kwbIA3kNiR7qAb7idrvOIRDor4Rob.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/Oxe98FX3Tk2GIWctfX5K2T2g8OOfhi0w.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/q9RAEeU3hvraoME9xlMNXE9elT73V9XM.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/ywB7MPpS7EmYP8Mj78pWyJD687uwWJ7u.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/nZRJX8r06V881U188480h0U467ZZv4U7.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/o4S6ik6Kk3ZwZ3351Jp4J5mM5P361IH6.jpg\" alt=\"\" /><div class=\"for_separator\"></div>', '', '', '0.00', '119.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136115', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/Q75XqqXH12vD3dol3ls9O9txoHtl9OoQ.jpg\";i:1;s:53:\"images/3/2017/05/gn0Zl5p9MW4NU4LsnmSachLE55P4mHee.jpg\";i:2;s:53:\"images/3/2017/05/RE5H9g5k95ki5Y05h5i5Jj7545FeBQf0.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136115', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '119.00', '119.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '1057569392', 'http://item.jd.com/1057569392.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('237', '3', '1176', '1183', '1', '1', '0', 'Zero零度皮鞋 男板鞋真皮商务休闲鞋透气男鞋英伦小白鞋镂空夏季单鞋男驾车鞋 R71042 黑色-套脚 40(偏大一码)', 'images/3/2017/05/a5pC267G63z1Wl5d61NR71t7DC81m11G.jpg', '', null, '<img src=\"http://192.168.0.145/attachment/images/3/2017/05/Q4LI5tkItLt208ltLZhbB00L4N5pbEEp.jpg\" alt=\"\" id=\"68e986059dcb4da6acd7a25d15a6885f\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/fXq6bNs5xuzDzRQunduX46qT6cSbcUtu.jpg\" alt=\"\" id=\"3b185cab715941678633ed450c5b3d7c\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/XZ45xHGLhl5DRndR7Lx98KT835ZFn89H.jpg\" alt=\"\" id=\"f6620f937c9d4549aa093533a3e08bb2\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/rl9LNakilahIPmn93eLSoPhPAQ9pLElM.jpg\" alt=\"\" id=\"9c77bcaf70d242ce9428ee927a9a3d75\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/ELCI0k3krRiJ9tT2lr38kxg8GBGc2bGI.jpg\" alt=\"\" id=\"60a246660df7496bb86dbb64ccceea8e\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/U1H3bX3h35zJJ1z3BLwV1gmVMmLAjMVg.jpg\" alt=\"\" id=\"51ac25002243453aa00886e109f3f50e\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/gh0Cz4AzCgyYdWy4XhN0nSAayQc6Y60G.jpg\" alt=\"\" id=\"ded76a25f09947679adf6abafe703d09\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/GtyyI5i6vBDgd44yYYIsttJGGD4dtbjD.jpg\" alt=\"\" id=\"842a5088015248a5836d6b41857f249d\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/L6Vt4M46zY46YIYYWxgTq4Ot1NY11IWI.jpg\" alt=\"\" id=\"4171fe164ab0444d840b03471f4670e5\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Bbb5TD426X050211bt0aeMwwW15zs266.jpg\" alt=\"\" id=\"34ad5801d85e4fd48caf08dcdd062bc2\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/qxJ3TU4bk4o31dY4BZdkoK4ydFyBB4GY.jpg\" alt=\"\" id=\"7610399621654550b1b06bf6a27fcf84\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/w9vV0jkU0RRQqMiQmmMq9qOUCmQnF69a.jpg\" alt=\"\" id=\"ee42aed0c0e84b7982409f40f82ed6dc\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/EJZEr5Ojh4imjE4eECZBZw556OFccZw5.jpg\" alt=\"\" id=\"0819a8cdbeb44b32be05f7c545cd6baf\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/sTleY2u2al8VYE0119at1lv5tRlR9I8E.jpg\" alt=\"\" id=\"80d26b0c5bb843d0aa946d43be9915fc\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/xWcbguPgwW7pub9ZKG9b7TbPcqe27WUg.jpg\" alt=\"\" id=\"6828047deaf3436d83f341c950f1c6b8\" />', '', '', '0.00', '659.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136120', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/MIw5LlmVxfYyG8LIxXWWgYZf1vXFM8Vw.jpg\";i:1;s:53:\"images/3/2017/05/YKB8iJjCbc4icZLZn0nEbsiR4scGn7J7.jpg\";i:2;s:53:\"images/3/2017/05/J7cLQ5Ce3117zC7EU3LvE9c7C113mMED.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136120', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '659.00', '659.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11170606815', 'http://item.jd.com/11170606815.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('238', '3', '1176', '1183', '1', '1', '0', '红蜻蜓（RED DRAGONFLY）商务休闲圆头套脚皮鞋子单鞋 WTA50301-黑色-40码', 'images/3/2017/05/GP0QVx2Phg83Y303sH9Y2S00Yx8qQ0qQ.jpg', '', null, '<div style=\"text-align: center;\"><span style=\"font-size:medium;\">此款偏大，介意者慎拍，详询客服</span><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Dwzki5ZwD9C0dhZ9OHDdIw0oHOHhd7II.jpg\" alt=\"\" id=\"1c016f9868b44e5d9e8c42abe59cd4c4\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/a2J2h6HjV7H28Uu4fHh0R43hvCkJMJs3.jpg\" alt=\"\" id=\"3de4ad6c5b9948ddbaea85256045c0e5\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/FBsQQT8XbxoB2x72kTzpXoYb2KtZkp8k.jpg\" alt=\"\" id=\"46a486fcfb124464b497ae89ca3ed61a\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Wr001q4q1pWmUMHPhT110af0MlhZU10h.jpg\" alt=\"\" id=\"7ff98d8fbc6246abba8e27f8c48d04a8\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/iAABsPs7717jP7A51yxpjwB55SaXb5x7.jpg\" alt=\"\" id=\"f8c3fa0e4a834e1097bd4cee199e520e\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Q9PD93ghPuX0VWuUTXRD0vxRzUzCHWhH.jpg\" alt=\"\" id=\"f6d8dc27aba240c8b3451c18decaffa7\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/okRfUUfU1z5VXrpPZpcSF5Fpv5lRfrRc.jpg\" alt=\"\" id=\"4a1f940a244c4109acc281bba0d22d5e\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/D75KzU55fx5F4b7NphI3hn3FNq5pPqbf.jpg\" alt=\"\" id=\"64294ce05c7940f2816ea4523aa7f802\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/N34ulz3Z7hm454ZL4z4a5uiUywKl5Dy7.jpg\" alt=\"\" id=\"1219e2a099b94a8693fea63566010385\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/S4b4hn4nItynI2Qh2hhTX6X3F4BB7Ntf.jpg\" alt=\"\" id=\"5e90c802fed14ab8a5c9bcc62caf6b3c\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/h55rcpp48PpT59s1s554ce8p8T18k44c.jpg\" alt=\"\" id=\"a58dc23f5502496d9500b6a1f84027dc\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Fvf623VZ5CF73554LHtR2Tt64253L52h.jpg\" alt=\"\" id=\"95b18b7affb645d2b07b56b95d56fe25\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/MgLvhz0P4g7H8OurPZViH22hHC8yCIG4.jpg\" alt=\"\" id=\"3b17064860134d1a9befb9a34676f96b\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/ZGz8X65BPpCcBv7x95xV7p8PPXpdX87V.jpg\" alt=\"\" id=\"c5312fda0ce0447e9364f9826bcf167b\" /><br /><br /></div>', '', '', '0.00', '199.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136128', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/dmkPgj8hVHFMfphMZv6ngO6gT886hMJN.jpg\";i:1;s:53:\"images/3/2017/05/nZfjTSR8TDY56Jng7RLptn6YNzDfD8zr.jpg\";i:2;s:53:\"images/3/2017/05/s8ZeRr335v5A5oB25Y9InK5Zy393BV3e.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136128', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '199.00', '199.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '1588117', 'http://item.jd.com/1588117.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('239', '3', '1176', '1183', '1', '1', '0', '鳄鱼恤 男士皮鞋商务休闲鞋 男士套脚商务型牛皮男鞋皮鞋软面软底男鞋子WB01272001 黑色WB01272001 40', 'images/3/2017/05/fPjbtshLFzFxppLxSB11S51T9CLsX1L9.jpg', '', null, '<div class=\"zn1St91151\" style=\"color:#000001;border-color:#640f10;height:0px\"></div><div class=\"zn-material\"><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4747/263/2635170003/138660/d762fe3c/5903ece7Nac3101ff.jpg\" alt=\"\" id=\"89f37e89914a4b1bb8ad5c24868e2bbf\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4555/36/3744624785/79067/4990787e/5903ece8N321e3ea2.jpg\" alt=\"\" id=\"f55bcb987a85488688d0847a0b933c99\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4762/112/2626484696/116936/307270fa/5903ece8Nacf199dd.jpg\" alt=\"\" id=\"7e8bc3dd2f1645819f3f9f0e624a78d2\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5536/340/651407996/109856/5c718915/5903ece8N660746cc.jpg\" alt=\"\" id=\"1bfe9f8dd4314f5aba9b075f2d6dd3c2\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4612/51/3597592408/92833/c69261e9/5903f6f0N7ab848d8.jpg\" alt=\"\" id=\"3e330ccf28154b8bbd9b2cb4369cfdbd\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5101/254/626101184/101502/4eb1c31e/5903ece9N9362225e.jpg\" alt=\"\" id=\"8cc5bcf51bcf4924af36bd00fd055825\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5530/314/656040773/78083/742e69b5/5903eceaNe16a6d90.jpg\" alt=\"\" id=\"a09745ad236341359d2d8f09c03f26cc\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5515/299/640084542/97398/451dc718/5903eceaN1a914a5e.jpg\" alt=\"\" id=\"536a4db43b874abe82f299aa6336a3ac\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4657/363/3774861986/181448/7c46633a/5903eceaN745d88da.jpg\" alt=\"\" id=\"1245e1953cb640fa8f34a35d22bcb4f1\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4639/6/3746253374/185050/ae60898/5903ece9N64f63d78.jpg\" alt=\"\" id=\"39700d96175040deb0376868b8d95123\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4483/266/3817640597/139637/d5387d0b/5903ecedN2d164c57.jpg\" alt=\"\" id=\"38cbee28c8604399833b68b5d680d475\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5089/312/650368020/124649/5209e9ed/5903ecedN5e507ea8.jpg\" alt=\"\" id=\"f0b462bb84e048dbb3421090466642ce\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5281/229/669986315/126816/b9bc218e/5903ece6N35be483e.jpg\" alt=\"\" id=\"5653a9c0d95744a18a67b1d4465f0c84\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4978/20/2663662429/105662/2982ae45/5903ecedN3e443b88.jpg\" alt=\"\" id=\"5cf43b1a9f4a42298947c98beddef8ae\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5119/22/649824953/92985/6efbb92e/5903f756Nbd4d09b9.jpg\" alt=\"\" id=\"34b5aef22bc94fce8bc4aff3edb9f221\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4813/280/2620462342/74002/1380b1f5/5903ecefN3a4eb7a8.jpg\" alt=\"\" id=\"3cb43772c9424eae9a61312242f4831d\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5158/285/645621226/102220/dfc0ba41/5903ecf0N08fbf2ae.jpg\" alt=\"\" id=\"035006d7583844528251348708595fd5\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5356/255/621395687/89098/be5a3d33/5903ecf0N2f469079.jpg\" alt=\"\" id=\"b13c5b6388bd45718a7b6a853d7253d9\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4534/276/3733345583/55228/8571b519/5903ecf0N52e41241.jpg\" alt=\"\" id=\"bfa3d8b458f54aa8995760b3836a2cf8\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t5563/301/635761878/196380/a400af98/5903ecf1Ncfa9d726.jpg\" alt=\"\" id=\"4b34c8789f064f148d8264b1aa438ba2\r\n\" /><br /></div><div class=\"for_separator\"></div>', '', '', '0.00', '368.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136135', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/XvIj3IpfYdDjDQIVdQXijX3IJAxyFdZi.jpg\";i:1;s:53:\"images/3/2017/05/ZeCk4zB9428kk8wkkhcKCOP4c3k83833.jpg\";i:2;s:53:\"images/3/2017/05/gGwzO99cYZCCo32t2WG296OgG39VfVrG.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136135', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '368.00', '368.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11243749534', 'http://item.jd.com/11243749534.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('240', '3', '1176', '1183', '1', '1', '0', '卡帝乐鳄鱼皮鞋男士商务休闲鞋英伦时尚系带真皮休闲皮鞋男鞋子10097 黑色 42', 'images/3/2017/05/zGdnNa16mrZ9KWa9kzky8gIA1D6nYDY6.jpg', '', null, '<img src=\"http://192.168.0.145/attachment/images/3/2017/05/LpPlQmZhP9LRparP6l7T3A7pLBTr76mr.jpg\" alt=\"\" id=\"2449ba3f85614d9ea8a0ac986d33ee38\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/zxC7tf4z4KrHE4u4Tyek0zKpr3Rx0HY0.jpg\" alt=\"\" id=\"5c21a4d8df0842fb9826b7ad5d1b0db2\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/OmQqzHhQbH331Bm1qQhmBM4uMu1mGShY.jpg\" alt=\"\" id=\"d8bbe2f373ea4d26abbabfad9752ada2\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/qbrs7Gv57pE7555aDDSRRS7rRS55p565.jpg\" alt=\"\" id=\"f7f2e828558744a39ec1ff4b3912987a\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/GZCYEScg9DCYlZ05dHdEsY2kNnl2HZSx.jpg\" alt=\"\" id=\"45693d7025b34a97a55f038cd1a6afc4\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/yvpaYHdzAU9v0c03vP9U29wZpUp06636.jpg\" alt=\"\" id=\"f3eeacf1eb1f4e9ba36e651889f8ffd6\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/diPqbqGq9tgTyT7N9bLbnFNb9bZb7zB7.jpg\" alt=\"\" id=\"d164615fdcd24d549eeb904bd49ad15b\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/G5z4A1cAs9wCbQYCB4a4iAbr49cFQSCw.jpg\" alt=\"\" id=\"a4536fb0e44242619299d7ac7b843a4e\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/G58O4Os4WQ4BsZkk85dshDS8505qMwZ8.jpg\" alt=\"\" id=\"7e97ca26bdf24b9eb3f6efdd8a985e9b\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/l1eL1Zt1THw1QwqOOe1515zSQOsaNgtK.gif\" alt=\"\" id=\"99d8ba5104c9407fae14c40e9a5cbb08\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/f1rF2DRLRJ2PKGFJOk2rz2K2U1G2122d.gif\" alt=\"\" id=\"badfdc16f2d54527bddcc5c9cc4cdac6\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/V5WBFMbJ99515FDdZ8W58wF39d38D1md.jpg\" alt=\"\" id=\"4aa9abb074a54573a297ff5e99658619\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/d3NTy2cNAaTAAt3Gaca2c4s2AAAaCno4.jpg\" alt=\"\" id=\"71142b51fa83458a8fbe36acbadd54d6\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/HS9mR387iYvsXMY6i83SbS7vG2676MFR.jpg\" alt=\"\" id=\"87f18c9707ec4185b64892b79d5e21f8\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/PS01mmhlO1O5IHzl051l3o0H0DH3Zzh0.jpg\" alt=\"\" id=\"6135ea68e53741008ef6c51d590a40a1\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/do7Ml2sQfQ33Eyfmk0OoO3FLOKlEv3Le.jpg\" alt=\"\" id=\"c10123c4fca74533a25ea2db3183d2ec\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/RDAjMm26o1MO2qoa3ZU36ayJqddsQ6JO.jpg\" alt=\"\" id=\"1e92ea575c3440ca9d88c8adf5b5b45d\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/G4345vmsVT50v3S0zD0t3aSYsyYXvS5C.jpg\" alt=\"\" id=\"f88bd27121144b7e8cc187c64b38568a\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/ZW0UbZAbDHFDI0DTf1wdDD0UuTDD2BIQ.jpg\" alt=\"\" id=\"837fef2fc2a04634a315c672363155c8\" />', '', '', '0.00', '299.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136137', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/x6j12uUJ3u642ij2GDUU13Ud6ZFDhx8u.jpg\";i:1;s:53:\"images/3/2017/05/tK3AC4Kkd7C4qdllLKuKfAV7dCCCbA6u.jpg\";i:2;s:53:\"images/3/2017/05/f6OoYZtO9f0903Xns99h9zTYR0y0f979.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136137', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '299.00', '299.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '1441652828', 'http://item.jd.com/1441652828.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('241', '3', '1176', '1183', '1', '1', '0', '圣大保罗polo 皮鞋男真皮男士商务休闲鞋正装鞋头层牛皮系带男鞋鞋子男 黑色 40码 头层牛皮', 'images/3/2017/05/XwkW0RggRH00q8GvWA800Vqh0kwkE00F.jpg', '', null, '<div class=\"zn1St81955\" style=\"color:#000001;border-color:#402310;height:0px\"></div><div class=\"zn-material\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/WLZwj2ngOj1JKuK18GUzkqLu611Ogq1p.jpg\" usemap=\"#Map\"><map name=\"Map\"><area href=\"//mall.jd.com/qr/v.html?Id=587740\" shape=\"rect\" coords=\"11,9,629,276\"></map><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/R10llDd2eEhhkZGPTHTHpHeqezD1PGQ1.jpg\" usemap=\"#Map333\"><map name=\"Map333\"><area href=\"//item.m.jd.com/product/10634947704.html\" shape=\"rect\" coords=\"454,913,667,1202\"><area href=\"//item.m.jd.com/product/11288849160.html\" shape=\"rect\" coords=\"233,912,446,1201\"><area href=\"//item.m.jd.com/product/11288849159.html\" shape=\"rect\" coords=\"12,910,225,1199\"><area href=\"//item.m.jd.com/product/11376631257.html\" shape=\"rect\" coords=\"458,612,671,901\"><area href=\"//item.m.jd.com/product/11310650098.html\" shape=\"rect\" coords=\"235,311,448,600\"><area href=\"//item.m.jd.com/product/10944007542.html\" shape=\"rect\" coords=\"233,13,446,302\"><area href=\"//item.m.jd.com/product/11323963717.html\" shape=\"rect\" coords=\"457,12,670,301\"><area href=\"//item.m.jd.com/product/11324195586.html\" shape=\"rect\" coords=\"9,310,222,599\"><area href=\"//item.m.jd.com/product/11092337586.html\" shape=\"rect\" coords=\"457,311,670,600\"><area href=\"//item.m.jd.com/product/11324043916.html\" shape=\"rect\" coords=\"9,610,222,899\"><area href=\"//item.m.jd.com/product/11376703748.html\" shape=\"rect\" coords=\"233,611,446,900\"><area href=\"//item.m.jd.com/product/10479238023.html\" shape=\"rect\" coords=\"10,12,223,301\"></map></div><div class=\"zn1Ed81955\" style=\"color:#000001;border-color:#402311;height:0px\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/jpaBpQhBF4KFnqqZb18zZa11g4MqNBQ6.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/V5HR68g1NyNSi0chJy5IjoCqIwh5jJHJ.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/VBdyl958eOHQE7hzQd99fBjlJJ8J7oE1.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/RVQ4bwvl80lZQd4czlYzlbvmP10ocYqM.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/BKw1KgwWk88KWrv7K1k1w7du19w7kUg3.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/U7xNB0TEgL9PN1BREpxE015GO71L17N7.gif\" width=\"100%\" style=\"width:620px\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/LU6Ezn7L5UFPGqkbmfNtvUTzKuzElt67.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/h4w4xGp7dSC4zMd4WdsgXccgGWy8Ppxz.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/VYIRw6WOuh1HZ4FM1i1rVYp81pfnNRCc.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/U54qwj4KP5pTdxh99PHTlm526PB0bP2p.gif\" width=\"100%\" style=\"width:620px\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/ojZpQNNjnVQmMuRFbu0Fm0JBmkVbRU7W.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/itLxfhfkYELTfZfQYzdtMl4TDldkFQ33.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/MH8YZzFYY17F5Vpmh8HNV5Fn7pVY1Nv8.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/NyotALrmMDzRkR1WzoYRyGGYOCo6z6Ky.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/wPpApNkELDKu2oLmZzCNDlNMMENNc3Du.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/m2FRE6Ezlri6l6ef6cnfSllS2Him20kL.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/RQnH88HHXHzu45fm0JGX0FGHqmRh42xn.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/Uh6PJ63JPrJZPK0rpGAGaDla26JZk0Lr.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/eFTcAf8hfT78ATMK4em4opNNfEFnlftF.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/O5HgG7X7H0n7XWpEE0TgHpItnHPhxZzG.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/fzgfd871qcc1ihBJW6INri5cD5888GIJ.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/J6EiMj46lO99M36ME106imrDiL73eeR3.jpg\" alt=\"\" /><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/Djj2IhShyWT8ny7IyJhKzYNGPIs0NsHj.jpg\" alt=\"\" /><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"zn5St81955\" style=\"color:#000001;border-color:#402350;height:0px\"></div><div class=\"zn-material\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/WLZwj2ngOj1JKuK18GUzkqLu611Ogq1p.jpg\" usemap=\"#Map\"><map name=\"Map\"><area href=\"//mall.jd.com/qr/v.html?Id=587740\" shape=\"rect\" coords=\"11,9,629,276\"></map><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/R10llDd2eEhhkZGPTHTHpHeqezD1PGQ1.jpg\" usemap=\"#Map333\"><map name=\"Map333\"><area href=\"//item.m.jd.com/product/10634947704.html\" shape=\"rect\" coords=\"454,913,667,1202\"><area href=\"//item.m.jd.com/product/11288849160.html\" shape=\"rect\" coords=\"233,912,446,1201\"><area href=\"//item.m.jd.com/product/11288849159.html\" shape=\"rect\" coords=\"12,910,225,1199\"><area href=\"//item.m.jd.com/product/11376631257.html\" shape=\"rect\" coords=\"458,612,671,901\"><area href=\"//item.m.jd.com/product/11310650098.html\" shape=\"rect\" coords=\"235,311,448,600\"><area href=\"//item.m.jd.com/product/10944007542.html\" shape=\"rect\" coords=\"233,13,446,302\"><area href=\"//item.m.jd.com/product/11323963717.html\" shape=\"rect\" coords=\"457,12,670,301\"><area href=\"//item.m.jd.com/product/11324195586.html\" shape=\"rect\" coords=\"9,310,222,599\"><area href=\"//item.m.jd.com/product/11092337586.html\" shape=\"rect\" coords=\"457,311,670,600\"><area href=\"//item.m.jd.com/product/11324043916.html\" shape=\"rect\" coords=\"9,610,222,899\"><area href=\"//item.m.jd.com/product/11376703748.html\" shape=\"rect\" coords=\"233,611,446,900\"><area href=\"//item.m.jd.com/product/10479238023.html\" shape=\"rect\" coords=\"10,12,223,301\"></map></div><div class=\"zn5Ed81955\" style=\"color:#000001;border-color:#402351;height:0px\"></div>', '', '', '0.00', '328.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136148', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:0:\"\";i:1;s:53:\"images/3/2017/05/AR0VFz828FIEM22I7EMm5ekAAM7g57zG.jpg\";i:2;s:53:\"images/3/2017/05/dSfSgRlYcKqcYcqcwFzdhKTCqR5pF47l.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136148', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '328.00', '328.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10617869924', 'http://item.jd.com/10617869924.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('242', '3', '1176', '1183', '1', '1', '0', '公牛世家 皮鞋男士透气商务休闲鞋头层牛皮正装鞋英伦系带结婚鞋 黑色镂空 39', 'images/3/2017/05/yh3tQPk5hPGgAI2ChC311Hib3hHt2cIA.jpg', '', null, '<div class=\"w\"><div class=\"detail\"><div class=\"ETab\" id=\"detail\"><div class=\"tab-con\"><div data-tab=\"item\"><div class=\"detail-content clearfix\" data-name=\"z-have-detail-nav\"><div class=\"detail-content-wrap\"><div class=\"detail-content-item\"><div id=\"J-detail-content\"><p style=\"margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, \'Microsoft YaHei\', \'Hiragino Sans GB\', u5b8bu4f53, sans-serif; font-size: 13.3333px; line-height: 20px; white-space: normal;\"><img alt=\"\" id=\"08005c2b838646538ef4c3afa6cb1c7f\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/hE4BUBM9WsKM6s0j66m6mk60M9dJ6W00.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle;\" /></p><p style=\"margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, \'Microsoft YaHei\', \'Hiragino Sans GB\', u5b8bu4f53, sans-serif; font-size: 13.3333px; line-height: 20px; white-space: normal;\"><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"9d61af03207b4e138fc02a7b0ee97f42\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/g9u8CTLgbg63nRt6CCc3cScacg3ag8lD.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"ef8edae68bba4fa2be9f4244c7bfc8e0\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/R0f208LJEE8EH3M2F80ZFW88OeBzfDAi.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"5e1904dce2b9431bad826a0b03a702c5\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/IJjF2ffe59Imz0wCome50JVYv9Wdgz0C.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"96fd95e6cffd4382bde0f6fde02f7d2e\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/EvNv5NN4Pi575GL7lIp7754VV47g75pC.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"97e40c96e7e146af916065319462c4d3\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/weVrtV5Y5hVWvwv3Ya3b5a5rvIBzYaBT.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"2aae9b8f9acb4213a1c3318d1d4e01a7\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/vljzrLZluj0e9Jv0F5H00ZljOowL5zlj.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"92cd0b3ab4c24319a7d20ea90a3b2b75\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/ss6WLLUnPkKWfLJ86jNpAjyl8Sj8nARr.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"f374a12f24e44338ab20d5a9465b809d\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/I2uD2d2djZqKQqzqDuDqklQjdvw2Eeue.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"fce613f02d6b4980b1de3b41ab430ee5\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/f67KKC6b4k6Lk4K7KENcbB7N6ck4745M.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"2eeb32d066fd4965a193d95368588c8a\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/Rs7qUVTZisKt7kTuIxTPUvBbKS7Ux55c.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"380099b417994902ad28b68dcb173dbb\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/FFgj1GWwWi0W9xQ4FQtx1bxFBp30014g.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"7f24fdee7b9243c6b6c25b9101029577\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/M7m3HhMNMSgmmz0DCcUD3s0h7007KmKY.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"83d41398aa6448a3805b5f394ce8701f\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/alotA2y0dAsDo1zoZSLos4S12s2T2h11.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"f1ce50b971e741bea97b38de11408580\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/WXDGEpXiP0Y8YPezPceQjdY08wpqdZgu.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"ce318f3f70844871ac77aeb2230a4fe5\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/M5j798ww78628IJdR8ZXw598r95w96x8.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"dfa5bd54543e4224b3e6d1e42e519314\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/kX0a0TqorkaXISAx0KSx1x3MRK0K7Xz8.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><br style=\"line-height: 18px;\" /><img alt=\"\" id=\"613beb4c512e4816b3c778901c4b07a7\" class=\"\" src=\"http://192.168.0.145/attachment/images/3/2017/05/AaiIyyri93j13Q2DAR1d30vGy1J3Ak8o.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 18px;\" /><span style=\"margin: 0px; padding: 0px; line-height: 18px;\"></span></p></div></div></div></div></div></div></div></div></div>                        ', '', '', '0.00', '278.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136178', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/pumUdJsU1N9zl5J9PnEDVnFlfxnFvpL9.jpg\";i:1;s:53:\"images/3/2017/05/KRDH8PYle3QDOsWuGrPM5ewR8So3SWYW.jpg\";i:2;s:53:\"images/3/2017/05/H1i4aTW3Ac2I3JTw6J6rGTctJ43Yg11e.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136178', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '278.00', '278.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11463803938', 'http://item.jd.com/11463803938.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('243', '3', '1176', '1183', '1', '1', '0', '奥康男鞋新款男士皮鞋男英伦系带商务休闲鞋子春季透气 黑色 41', 'images/3/2017/05/G99Vm9MIMAvmbLVZgA9ivGa9W9IMRMmE.jpg', '', null, '<p></p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/MFvuAx7f7fF12h8FVUAxH2Q86vZ2WQ2f.jpg\" alt=\"\" id=\"6268e9fafc8f4cfaafe7f35044186458\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/qo45F4tF92D5Bd4BJZKdX5Bx5Do4k42L.jpg\" alt=\"\" id=\"424d132dd83a4749ae2328aec37555ec\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/qIHKuOztMZ1Yc0iyzymmCkk5ykB0jcTT.jpg\" alt=\"\" id=\"33d70b8f4bcb4e8fb31c69cab2a34160\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/R2D8RDdDN5ZziQ2ddYqncqO6nNrdznpi.jpg\" alt=\"\" id=\"195af69ad53a46ad8c7939604bd9191a\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/KZ1pZcpCwJnvbxeOZEjPMPCXX7XvxPmj.jpg\" alt=\"\" id=\"6a59855b41fe4d288947bcb603345fb7\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Yz4Kzw5EKs4czs3CXHrKexwWk7EKW4Xx.jpg\" alt=\"\" id=\"ed6b04a19d1c45c8bcf5db4b259abfa4\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/kY47N6h74Z7Xg2o8D4g60HdS6VGyna8Z.jpg\" alt=\"\" id=\"f00b44b7a66344759bf41669bbd72c88\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/u8j2I52q8iS2Q0t182xQnS5MqH9xzS91.jpg\" alt=\"\" id=\"cb6e26b25ce8495aa0141d24c5c86b38\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Sx4TxU79zj0rtgU7UVm09UmmRM7T9r4Y.jpg\" alt=\"\" id=\"2947617823b3411fbddf98bc24ba2768\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/CLMBaiiIoeNBekNKAAn74O4Miexw8OKA.jpg\" alt=\"\" id=\"c2f153639122434bb833b599dbd4ba93\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Y51DP56ZttCcjp4ZDpg4zs824T6p5cCC.jpg\" alt=\"\" id=\"bbcfc85b39e449f3a4a3c64d697cb9fb\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/dMm0L0r07R0JtbfJSkbsrMHslsscbclk.jpg\" alt=\"\" id=\"4fabd68128fb4de393a784438a3a59d4\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/E77PnM7bbP7ALP7p42TK2KpLLi7pKaNO.jpg\" alt=\"\" id=\"2025009dd3154d79a9eb28565433e68e\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/v39m66g6dJJfVxGQAJQzI69398qD9pfM.jpg\" alt=\"\" id=\"97ce3d4dce2740a3945db308ccadbb13\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/ZCC86tl86Mt5lvclIC7i1iG88iML56Mg.jpg\" alt=\"\" id=\"1d31f1eade7b4c3bb369072616a71d53\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/lqc003cwNQY7wQYwnN3cncPynQN9MyyL.jpg\" alt=\"\" id=\"3756ed184f8d46779ae56f7899b29317\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/nqFw79farU9x94wIwZuWzauVIrWWnUNv.jpg\" alt=\"\" id=\"2de92cbf9def49e1bed17455f027c6b2\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/XUU6QuYlKFF9UwvUWOfjOwGviz5Q5GAj.jpg\" alt=\"\" id=\"b61367c90d254f2da5734f7418cb36ca\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/ILfF1A77AdH171hrZM1zMf9om9AZ1L66.jpg\" alt=\"\" id=\"5a2645a67b02401383fbc96760e7140f\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/mP20LGKeU2SsofSoqe0TuXLkZLp3ZxZj.jpg\" alt=\"\" id=\"037927a49a394398adc0eed8c5195e62\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/nW6UZWIIQ6G80hzKuE6D11EhgHnWQ33h.jpg\" alt=\"\" id=\"0f80b3c945ca4a41be709c357e66b05e\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/BiKhNH6ZipC4ItpthZVzHHIPD69ipP9i.jpg\" alt=\"\" id=\"5bc99304cc0948fe835f000df2c3e4f2\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/R86ZYjL3s6nK667VNkV7v8kX8Yvvvrky.jpg\" alt=\"\" id=\"bb90248a4548467f9ea9c6c4168a8be0\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/yZ466Z1sR0kc4fCu6sMjr1h16ZS15S5U.jpg\" alt=\"\" id=\"2d462ce64a124f7ebdb87903a6733573\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/xgcEpy06ih4J3G4do4h7doOEpjo43zJ1.jpg\" alt=\"\" id=\"c1e42204fbeb454bb327c140b9a9e059\" />                ', '', '', '0.00', '199.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136189', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/KlJV6U68DJm1517u1PPLEjdzveuJ580o.jpg\";i:1;s:53:\"images/3/2017/05/XFd5KfNwSKtY6ZHnrNbq9LBZSBktEzY5.jpg\";i:2;s:53:\"images/3/2017/05/zh3i3chZCe7bE33iQU6juRU7BnunPCcj.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136189', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '199.00', '199.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '1672278668', 'http://item.jd.com/1672278668.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('244', '3', '1176', '1183', '1', '1', '0', '红蜻蜓（RED DRAGONFLY）英伦正装商务系带单鞋皮鞋婚鞋 WTA26911-黑色-40码', 'images/3/2017/05/apyYKDZdDyWgCp3PITXtFjJx6gluIg3p.jpg', '', null, '<div style=\"text-align: center;\"><div class=\"zn1St39663\" style=\"color:#000000;border-color:#9aef10;height:0px\"></div><div class=\"zn-material\"><strong><span style=\"font-family: \'Microsoft YaHei\';font-size:large;\">请注意：此款偏大一码，请买家根据自身情况购买哦！</span></strong><span style=\"text-align: center;\"></span></div><div class=\"zn1Ed39663\" style=\"color:#000000;border-color:#9aef11;height:0px\"></div><div class=\"for_separator\"></div><div class=\"for_separator\"></div><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/pHLHZeUgAkEhRzhtKAEuDzc9rlB5NKzc.jpg\" alt=\"\" /></p><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/M1IAWZxv98cgIhX5f89W0cGonC11ox0n.jpg\" alt=\"\" /></p><p><br /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/hcVtcBPBBPhMXCHssEBtasAAyaRkIHKA.jpg\" alt=\"\" id=\"3d4e69166ed04298aa4bb2fff656f5e0\" /></p><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/xX40ToXdozEB4ssbhkDbS7eHlhS7Tdd7.jpg\" alt=\"\" /></p><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/nNekT200uA40OK3rER531EA05U2aBTZX.jpg\" alt=\"\" /></p><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/knJz7bDkmT3z1d5y15tny0Ba5dBbdMnK.jpg\" alt=\"\" /></p><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/rzj2b65YxONbXH725u2yjudG56gw227b.jpg\" alt=\"\" /></p><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/AKbRKJaA9Fb7JJq5I9Pzbqj8PjK0r80r.jpg\" alt=\"\" /></p><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/nTUs5B8Q7s42UL1U2u3utwvm344H1uu2.jpg\" alt=\"\" /></p><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/JsZnX5p6g6nSx1j4ZIfyifj4jEYD66rX.jpg\" alt=\"\" /></p><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/mCDPQ9Dz5BC6BdCC77ppc75S7Pdm7SMA.jpg\" alt=\"\" /></p><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/ns3z5NtxLNkLl2wZz5GL9GfWMlsXKM3k.jpg\" alt=\"\" /></p><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/J5AaDaao8vkdzeD7B98915dZ1JzA50x9.jpg\" alt=\"\" /></p><p><img src=\"http://192.168.0.145/attachment/images/3/2017/05/cN49tW9T94BBID5t66N6U4Nb45puqDtb.jpg\" alt=\"\" /></p><div class=\"for_separator\"></div><div class=\"for_separator\"></div><div class=\"zn5St39663\" style=\"color:#000000;border-color:#9aef50;height:0px\"></div><div class=\"zn-material\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/NdSpxSZz9X7Xx8PLJ7sJ39kW8pId9Wjd.jpg\" usemap=\"#znHotMap1539663\" style=\"width:640px\" width=\"100%\" alt=\"\" /><map name=\"znHotMap1539663\"><area shape=\"rect\" coords=\"6,5,320,252\" href=\"//item.m.jd.com/product/1403865510.html\"></area><area shape=\"rect\" coords=\"333,10,627,252\" href=\"//item.m.jd.com/product/1456355554.html\"></area></map></div><div class=\"zn5Ed39663\" style=\"color:#000000;border-color:#9aef51;height:0px\"></div></div>', '', '', '0.00', '239.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136200', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/VWJFJBNy0Fxgul8FBG5kGfkuGjLfx2kY.jpg\";i:1;s:53:\"images/3/2017/05/qH57T5V1pIT3V7C7H1S57tr7tcvT1t7r.jpg\";i:2;s:53:\"images/3/2017/05/m7HiLI8Zzl9XJ7HJll7zs8PxW89llHi7.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136200', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '239.00', '239.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '1584959', 'http://item.jd.com/1584959.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('245', '3', '1176', '1183', '1', '1', '0', '特工狼商务休闲皮鞋 夏季新款男士商务休闲鞋经典正装鞋低帮系带男鞋透气真牛皮鞋子 男T326 经典黑 40', 'images/3/2017/05/Er7siScFMvTcseOTFRS7TcsS5FIzcCdd.jpg', '', null, '<img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4651/320/516697627/215532/beede852/58d0e52eN853d1475.jpg\" alt=\"\" id=\"009ecfe77cfe4217bfa989e8f041df12\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4339/131/2418431019/175206/f6171d16/58d0e52fN80a18a0d.jpg\" alt=\"\" id=\"5c29aaa817e349319e0783be66104052\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4063/164/2524086320/514522/2bf97d72/58d0e533Nc9e5ff81.jpg\" alt=\"\" id=\"f82bd3ef36ae4d6d955c21cfb138ccf9\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3160/275/9257623325/287388/dc60cab0/58d0e536N0a0675c5.jpg\" alt=\"\" id=\"fa6e22a96fdc45cd9986188bacb4b93d\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4318/170/2432002446/48126/2a11dae1/58d0e537Ndcac3ee4.jpg\" alt=\"\" id=\"ec8240c6d48148048b9f800821b8e2a5\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3145/68/9305015088/112979/a7474571/58d0e538N6cbfa404.jpg\" alt=\"\" id=\"85a369d4b4934d71a45a0e7faf4c381d\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4027/98/2518426447/78558/a0799ab0/58d0e535N50a9a927.jpg\" alt=\"\" id=\"5a31103ba1b2459385012cc4d5082502\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4252/150/2426478703/164039/1bb0c55d/58d0e535Nd20b9b2b.jpg\" alt=\"\" id=\"750527cc82334a4895fcc1f3a8183668\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3304/213/9044640256/187598/6293f018/58d0e53bN195b5715.jpg\" alt=\"\" id=\"b15a18fd0a5b49b3b862e21ef74bc251\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4216/33/2397635946/168716/5026c5b5/58d0e53bN2b889cc2.jpg\" alt=\"\" id=\"a7d97456b7cf483cb00a694168362b6a\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4123/141/2419764472/430512/9703938/58d0e541N8fe59e5a.jpg\" alt=\"\" id=\"12e5b07ce5d648328fc8db2ee26038b3\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4156/96/2401673449/176860/c6ddcbfd/58d0e542Nfcf727da.jpg\" alt=\"\" id=\"81eb495acc374a60bc08f35a37b422b5\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3112/189/9302811034/267804/9bac265f/58d0e545Nb0415bda.jpg\" alt=\"\" id=\"aaeab5a66aa545a2986c2ecfed4fa344\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4369/209/2372778187/359077/a0571cbf/58d0e545N14b88cd8.jpg\" alt=\"\" id=\"8dbc0470cb9442a6b5d0e7be5a7b2179\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3262/188/9377630998/321958/c1738bfc/58d0e54cN5c9529cb.jpg\" alt=\"\" id=\"d1ef1a3dbf3a44c5acd854b268c7cbb2\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4555/51/516733373/188481/951be99d/58d0e54eNecfe3950.jpg\" alt=\"\" id=\"219d088f261c4184bf19e0884fb1b061\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4174/107/2409331656/219215/7c12a02e/58d0e54dNb80c4f47.jpg\" alt=\"\" id=\"f6748feb04b44670987fe61b2ad7a556\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4243/178/2363935681/117620/27264e1a/58d0e551Nb0b36ed6.jpg\" alt=\"\" id=\"c157340dc64e48169c6502b827b2a42c\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3274/36/9146104025/289833/87ebb20b/58d0e552N1983310a.jpg\" alt=\"\" id=\"872a8cd713b845578cc470bb04b5ca13\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4186/316/2361725319/258421/4f30ea95/58d0e558Ncc3bf954.jpg\" alt=\"\" id=\"b1de6805e3594df993a6fe52ef8037b5\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4126/144/2393749557/272277/e6ae9260/58d0e55aNe4369e05.jpg\" alt=\"\" id=\"5e348e92e1be4697a613326cbdc93400\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4201/166/2403398399/225443/7b87e434/58d0e55eN189c0e44.jpg\" alt=\"\" id=\"debc48d4c46e48dcaba6c3c75376a5a2\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4429/84/501533230/246635/829db4bd/58d0e55eN13d26068.jpg\" alt=\"\" id=\"b8daedc504384240a37258f34cb21ead\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3178/137/9243984995/122989/b554984a/58d0e55bN20d6a243.jpg\" alt=\"\" id=\"6ea1f3684d994490915564c240d2feff\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4258/272/2384928090/171124/ceddd1dc/58d0e55fN5201ffad.jpg\" alt=\"\" id=\"770ba096c1fb4295a40fbf153327fdda\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3277/348/9277062312/304380/b6e4fc72/58d0e562N17aad8a8.jpg\" alt=\"\" id=\"03a4718e198844aaa78226fde330fdb4\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4675/90/530723540/251156/afa66fd1/58d0e564N26dfea9c.jpg\" alt=\"\" id=\"c7395da89b2c445f9c8a6e8b18b73d1d\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4555/108/511185104/305796/85dd210c/58d0e566Ncfa2835a.jpg\" alt=\"\" id=\"fc32ef3dcfa140029594b46633fb5220\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3211/197/9155839110/229787/97faf5e8/58d0e567N20957a04.jpg\" alt=\"\" id=\"4c42fb3cc9ef45dcb75495011bfccc49\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4177/51/2369320654/167897/da37157b/58d0e565Ncfb13fdc.jpg\" alt=\"\" id=\"cad79a9ae0674d1a8d05a0d2b3a5f38e\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4537/119/525646483/75723/56e84037/58d0e569N1dca5e7f.jpg\" alt=\"\" id=\"c387cbf8b88142048961dc743e869ce4\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3274/10/9088748277/194218/c92fd29/58d0e56aNbbd1dea4.jpg\" alt=\"\" id=\"a244d695304446ea8cc7a31559002178\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4594/149/524412991/84755/6f11814d/58d0e56bN917a10c6.jpg\" alt=\"\" id=\"b014e40336044f63b21862c6858185be\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4468/118/530407039/231050/71b9bc80/58d0e56cN3e99415c.jpg\" alt=\"\" id=\"c0eb0fb032244af2b9db7e7c92bc0718\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4315/305/2431697047/194833/fdc9a5bc/58d0e56dN740adf81.jpg\" alt=\"\" id=\"c400812fe1434a12a2daa7bcd514a9e2\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4282/23/2377036114/232277/f920d1/58d0e570N60acaae8.jpg\" alt=\"\" id=\"f1d65add33354d61bbb4da282c27ac43\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t4198/230/2444835932/210839/8ec56434/58d0e571N1274649f.jpg\" alt=\"\" id=\"ea1cbf5b6fa34fcf9d3b377e0d9fde97\r\n\" />\r\n                        ', '', '', '0.00', '168.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136205', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/Uw36xzxym1Py3Rq6YWGmvzWrZw46M2mM.jpg\";i:1;s:53:\"images/3/2017/05/i098gzacP4h0H69f84985aC4aXxX0Cx3.jpg\";i:2;s:53:\"images/3/2017/05/N02LLViqcxFlG29RbnALlbACFqQr4OPl.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136205', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '168.00', '168.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11666910819', 'http://item.jd.com/11666910819.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('246', '3', '1176', '1183', '1', '1', '0', '步萨尼 皮鞋男商务休闲皮鞋男2017新款头层牛皮时尚舒适男士尖头新郎结婚鞋皮鞋 棕色  P006 40 头层牛皮', 'images/3/2017/05/S1QRrzYAQRRv6C6cr9LHgKY61G9IIQTg.jpg', '', null, '<div class=\"zn1St92751\" style=\"color:#000001;border-color:#6a4f10;height:0px\"></div><div class=\"zn-material\"><div style=\"width:990px;margin:0 auto;font-family:微软雅黑 ,arial;font-size:13px;text-align:center;\"><div style=\"height:68px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4288/137/3058564069/3473/1c696f84/58da64ceN5c5bb416.png) left top no-repeat #0088d2;\"><div style=\"width:230px;float:left; line-height:60px; height:60px; overflow:hidden; font-size:36px; font-family:微软雅黑,arial; font-weight:bold; color:#0088d2; padding-left:20px;\">春风十里</div><div style=\"float:right;padding-top:30px;\"><a  target=\"_blank\" style=\"font-size:12px; color:#FFF; font-family:\'宋体\'; padding-right:32px; text-decoration:none;\">查看更多</a></div></div><div style=\"overflow:hidden;margin-top:0px;background:#fff;padding-bottom:6px;\"><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10948433409.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/XuuPMUUPMPjO6M6U311HMTcMhu83ZJpP.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">298.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10976923119.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/KiuFfeFNfw8ut4E4TYY84UQTTiTMFmT8.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">199.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10976923107.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/Kk0jnVfvJXk7iLeCIHkJvAnCxFjMjMxn.png\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">199.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10663658035.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/K9EPqZRZ955OIxMP2i6mRpJqz9zzcQ6M.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">298.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10727101902.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/MHVanvtNnDo883a7FbNr7DTdn80T8ZoF.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">388.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10685224966.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/b3L9Vv3apLAN2Ac25GVLvPFCS5faPa2v.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">298.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10976882492.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/sZKNOkZE40QmacAkW1ACKOKWQKmsNA6p.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">398.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10727044233.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/U80dJnJiQvPglnq9J6l6pHq6DI3rMidZ.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">358.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10886229217.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/FJ3CYQ7F39ccCN3C7kKn2Y831AYB3y8j.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">199.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10885994977.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/i48S0LodO388O3sC08qZ80MBfqSznVso.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">208.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10827667459.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/OZXzXBHjjjpKH3xJ93Mbg3b9xP3J4GZr.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">208.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10886199020.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/c8W8KaOZCA6laQI8aA11XA52CqCq8lXN.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">398.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div></div></div></div><div class=\"zn1Ed92751\" style=\"color:#000001;border-color:#6a4f11;height:0px\"></div><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/WVkO59yE25N5VayfovqpdOY8zKDzhNJV.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/y15f8lF333e8mYpFlL2AAoflgaG51FGp.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/rEuEE09dX33c1EEjeEXcd3991ZXUKe3v.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/Ey8w5w8C1ChmWmRWw1W5H8PZZa1OtoyZ.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/dZIixI40I4I2Dxkx4w4K1vB340nh1wwv.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/qIJIuNttP2UxzxeaAi121tiHtIze2bn2.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/VOKCGYrAWJzI5vkwWYfyA8vR8zBCf74g.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/rmwe0AxXLuGAP8Rtf0mXJD7xZ6w8Rt0u.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/vX5Hm6F811560dFj717SF778671x1jfK.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/EZ2W2k2ui7G9740IuH3WuBz04U7ub4d4.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/SSLVA86E6vv2vK4LjLPk2ma86p6aja2L.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/KQ221OZ7Fs49qpfh9Q9F7Fo17sIczFAF.jpg\"><div class=\'for_separator\'></div><div class=\"zn5St92751\" style=\"color:#000001;border-color:#6a4f50;height:0px\"></div><div class=\"zn-material\"><div style=\"width:990px;margin:0 auto;font-family:微软雅黑 ,arial;font-size:13px;text-align:center;\"><div style=\"height:68px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4288/137/3058564069/3473/1c696f84/58da64ceN5c5bb416.png) left top no-repeat #0088d2;\"><div style=\"width:230px;float:left; line-height:60px; height:60px; overflow:hidden; font-size:36px; font-family:微软雅黑,arial; font-weight:bold; color:#0088d2; padding-left:20px;\">春风十里</div><div style=\"float:right;padding-top:30px;\"><a  target=\"_blank\" style=\"font-size:12px; color:#FFF; font-family:\'宋体\'; padding-right:32px; text-decoration:none;\">查看更多</a></div></div><div style=\"overflow:hidden;margin-top:0px;background:#fff;padding-bottom:6px;\"><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10948433409.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/XuuPMUUPMPjO6M6U311HMTcMhu83ZJpP.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">298.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10976923119.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/KiuFfeFNfw8ut4E4TYY84UQTTiTMFmT8.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">199.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10976923107.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/Kk0jnVfvJXk7iLeCIHkJvAnCxFjMjMxn.png\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">199.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10663658035.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/K9EPqZRZ955OIxMP2i6mRpJqz9zzcQ6M.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">298.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10727101902.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/MHVanvtNnDo883a7FbNr7DTdn80T8ZoF.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">388.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10685224966.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/b3L9Vv3apLAN2Ac25GVLvPFCS5faPa2v.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">298.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10976882492.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/sZKNOkZE40QmacAkW1ACKOKWQKmsNA6p.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">398.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10727044233.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/U80dJnJiQvPglnq9J6l6pHq6DI3rMidZ.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">358.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10886229217.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/FJ3CYQ7F39ccCN3C7kKn2Y831AYB3y8j.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">199.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10885994977.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/i48S0LodO388O3sC08qZ80MBfqSznVso.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">208.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10827667459.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/OZXzXBHjjjpKH3xJ93Mbg3b9xP3J4GZr.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">208.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div><div style=\"background:#eee;width:240px;float:left;margin-left:6px;margin-top:6px;\"><div style=\"color:#fff;text-align:left;\"><div style=\"font-size:0;line-height:0;\"><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img11.360buyimg.com/imgzone/jfs/t4858/296/83077374/2828/e75df961/58da64ceN8140c9cb.png) right bottom no-repeat;\"></span><a href=\"//item.m.jd.com/product/10886199020.html\"><img src=\"http://192.168.0.145/attachment/http://192.168.0.145/attachment/images/3/2017/05/c8W8KaOZCA6laQI8aA11XA52CqCq8lXN.jpg\" ></a><span style=\"display:inline-block;width:6px;height:228px;background:url(http://img30.360buyimg.com/imgzone/jfs/t4600/288/1206760873/2853/ab87cb61/58da64ceN8e9e380d.png) left bottom no-repeat;\"></span></div><div style=\"text-align:center; background-color:#0088d2; \"><div style=\" display:inline-block;vertical-align:middle; text-align:left; height:30px; line-height:30px;width:140px;overflow:hidden;color:#ffffff;font-family:微软雅黑; \">¥<span style=\"display:inline-block;width:70px;; font-size:20px;font-family:Impact;white-space: nowrap;\">398.00</span></div><div style=\"display:inline-block;color:#fff;vertical-align:middle; font-family:微软雅黑;\"><span>已售<span style=\"font-family:\'lucida grande\',tahoma,arial,sans-serif;\">10</span>件</span></div></div></div></div></div></div></div><div class=\"zn5Ed92751\" style=\"color:#000001;border-color:#6a4f51;height:0px\"></div>', '', '', '0.00', '298.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136207', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/O5wA4TaXf4kva7Xk447N5vxX5W47K4Ak.jpg\";i:1;s:53:\"images/3/2017/05/WnnRRjd4K9kk749G4NDJyr9Rt27kPd95.jpg\";i:2;s:53:\"images/3/2017/05/Fv7je5e5I7ie0w08NnE75I05Ew264vz8.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136207', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '298.00', '298.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10685224966', 'http://item.jd.com/10685224966.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('247', '3', '1176', '1183', '1', '1', '0', 'Zero零度商务休闲鞋 新款男鞋鳄鱼纹头层牛皮潮流男鞋 套脚男士休闲皮鞋 黑色F 39', 'images/3/2017/05/nK7pVa487qlWt7lOSwnV20VmV72k22em.jpg', '', null, '<br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2677/242/1365400486/19173/711798b9/573d18f0Nebe0d7d2.jpg\" alt=\"\" id=\"cd08983fb7f240f2957e64c978bc7ce1\r\n\" /><br /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2824/49/1705389430/306496/7b2e360f/5746c0a5Ne704b4db.jpg\" alt=\"\" id=\"9109856ad1a047569ee38abad81c7db0\r\n\" />   \r\n<br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2617/278/1373775576/212609/4f0a1df1/573d18f1Nc18ed428.jpg\" alt=\"\" id=\"5142c53a9ccc43f08f30b585f8ad47d7\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2848/235/1385805888/217163/30bf774f/573d18f2Nff08ff6a.jpg\" alt=\"\" id=\"3b21815964b34e2e889210054ce13cee\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2872/182/1712442081/270629/83e3f67d/5746c0a6N7a46647c.jpg\" alt=\"\" id=\"381d2b82a8e045fea3cf6de2c9124060\r\n\" />   \r\n<br /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2860/335/1696485479/177544/e5adaf50/5746c0a6N4929b80a.jpg\" alt=\"\" id=\"e6e5c65846d248c0a39dc9e18d2222c4\r\n\" />   \r\n<br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2818/355/1361675052/110126/847b1a53/573d1943N633f88a3.jpg\" alt=\"\" id=\"5909979930d14730ad2122308da03882\r\n\" /><br /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2587/191/1677399710/322774/fb36662/5746c0a7Nc7974e40.jpg\" alt=\"\" id=\"20d657901df54714aba161e6b55f2ba9\r\n\" />   \r\n<br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2764/59/1375911470/298731/80638690/573d1945N06d26b41.jpg\" alt=\"\" id=\"dee2a29d56154e0f824e18f6e7bf9e57\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2836/2/1375294561/189202/dcb96b3c/573d1945Na8f63f43.jpg\" alt=\"\" id=\"526bd7d22ff04f589da1bf13edb6c4c8\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2773/335/1381408684/97020/d92408e5/573d1946Ndb7cbfc2.jpg\" alt=\"\" id=\"b2d18198bfb54893bc2cf85422a35890\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2584/53/1351014397/109715/e7dba5a4/573d1946Nf40cf266.jpg\" alt=\"\" id=\"c4210e7d86164f5ba2bff15d954cafbd\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2773/341/1404141798/130409/677ca66a/573d1947Nab11dfe6.jpg\" alt=\"\" id=\"25efdea6d1db45518737a30d67e41f9c\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2746/26/1389419388/116392/2c0cc755/573d1947N7fde4d49.jpg\" alt=\"\" id=\"58ca247e09f945208c62389add8fb918\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2692/23/1342254471/189815/af349e3b/573d1947N1798f111.jpg\" alt=\"\" id=\"ba8e02181c984769a31ca72cbaf8e417\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2710/40/1336385262/202276/2c948e5b/573d1948N936fee0b.jpg\" alt=\"\" id=\"efc5864b2e7445eb9523b37986c5e5c3\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2791/68/1342769266/136513/8e1877ae/573d1948N4f31ed0d.jpg\" alt=\"\" id=\"9dd42e0a52be4c549d86c75192c4d1fb\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2614/68/1383677348/150082/5630e709/573d1949N47ebafaf.jpg\" alt=\"\" id=\"490d9ee9c52644958054620dd6575e0f\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2800/50/1380018093/60744/e971a123/573d1949Ne7cdc3d3.jpg\" alt=\"\" id=\"868190a8d03243e48d7aa583ffa16a73\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2641/31/1382628063/220791/b54fc9d1/573d194aNb802003b.jpg\" alt=\"\" id=\"2a25a65206ff4c8d9fe68100fa967cef\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2791/67/1370889029/145162/bb132afb/573d194aN8d285101.jpg\" alt=\"\" id=\"7c56db7b6b134251bb42a3c0ebfe70cf\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2701/81/1361589226/277239/9de73198/573d194bN8d6103c4.jpg\" alt=\"\" id=\"bbffa01a6abe497f81181c9fbb2b0711\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2662/352/1393774462/168883/a2cd8411/573d194bN67ddad9b.jpg\" alt=\"\" id=\"cbeb979c39b74f788dda5f52b41f3e96\r\n\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t2752/31/1380270242/105608/20ace640/573d194cN12aaf0f8.jpg\" alt=\"\" id=\"a27e61c07b244a50881e54ec9f191f80\r\n\" />\r\n                        ', '', '', '0.00', '629.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136216', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/pbvGp7tPFr7QM4fZqDufCqTpVQMuSFuT.jpg\";i:1;s:53:\"images/3/2017/05/cqz00u3u4O0FmBqf3u79FuU77w54s30l.jpg\";i:2;s:53:\"images/3/2017/05/k72fG24v72uMlGig276go6LMug7oOu4u.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136216', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '629.00', '629.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10286140643', 'http://item.jd.com/10286140643.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('248', '3', '1176', '1183', '1', '1', '0', '奥康男鞋 男士正装皮鞋英伦尖头商务休闲鞋 113311136 黑色113311136 41', 'images/3/2017/05/Lka0P343U3440r0hCgD0MxhshgBhM0rc.jpg', '', null, '<div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/hs3z8SO0vV97GsS6eSSlGQv0sP79FLGZ.jpg\"></div><div style=\"text-align: center;\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/WdMKSmY6eM6DtZSDdS6EqDYtnK6glHk9.jpg\"></div><div style=\"text-align: center;\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/lsQK86BHEb6EkbsXsSyYKySlEYElHBsb.jpg\"></div><div style=\"text-align: center;\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/e9LagdzPMpVM9Z9P798eGeHVmh191hmD.jpg\"></div><div style=\"text-align: center;\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/tk4pju3zbO4JZk7b22kpNn3249GJ3EP7.jpg\"></div><div style=\"text-align: center;\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/fV3sjHt65GnaTad3v3VstVTa93oNkAhJ.jpg\"></div><div style=\"text-align: center;\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/u2hj0kj9zsg2h9E1hwAzS9sFk8Dj9Jz1.jpg\"></div><div style=\"text-align: center;\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/JD2zDDf1ZFu01rr3UKlzULHM0LfK1ruk.jpg\"></div><div style=\"text-align: center;\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Q42EdtOZmdDM565EDdD25Dm6TfTM6416.jpg\"></div><div style=\"text-align: center;\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/l7bj0x137wwaaw43dWxDXK7Cb323G7BB.jpg\"></div><div style=\"text-align: center;\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/W9sSyp4T8cWWfA90sfS448gA779242ct.jpg\"></div><div style=\"text-align: center;\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/u8yNM4FxzDtHz8XTmxq38DGGmqtnZxfz.jpg\"></div><div style=\"text-align: center;\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/qepncNicCrrHN2R4HuZ3I9Q4DpqV9HnR.jpg\"></div><div style=\"text-align: center;\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Gs7137cmvm1m371m7k991z3CnEqQ7M10.jpg\"></div><div style=\"text-align: center;\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/MUUU5bGHdqmLo85Olomx1bqbFHLB13UL.jpg\"></div><div style=\"text-align: center;\"><img src=\"http://192.168.0.145/attachment/images/3/2017/05/eAzmc0sRs2L22tsSsckNZUuQiLCaumc2.jpg\"></div>', '', '', '0.00', '239.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136218', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/Od4T8eDK8QP44dJM77o8S7kpOOp7Nd40.jpg\";i:1;s:53:\"images/3/2017/05/d5N5P9NNOY644O9on1qznP83N4Ze91V1.jpg\";i:2;s:53:\"images/3/2017/05/l8JWi9YFHwIDSxX8ZJsFdQq9wqedWZWN.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136218', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '239.00', '239.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '1002762279', 'http://item.jd.com/1002762279.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('249', '3', '1176', '1183', '1', '1', '0', '意尔康男鞋牛皮商务休闲舒适男单皮鞋S541AE73153W黑色41', 'images/3/2017/05/OZwM9PFvMcBd9DWrPwwlcmqFzcCQcWdl.jpg', '', null, '<div style=\"width:750px; margin:0 auto;\"><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/dgQvCv9F5Jqs9ekSSn4ck49NefGJjj4j.jpg\" alt=\"\" id=\"a226a448e9e94269a41c1607b1c18f17\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/pDciflI90IN2s7ccfI2MW2L7QVn2C9vc.jpg\" alt=\"\" id=\"1f60fcbe9e5f4703a2bf3ad2ac05ab9d\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/I6OotPOoeDjXEZOk9oKoKoTz9XPKe6ji.jpg\" alt=\"\" id=\"24b61ac5bea5412eb5e2b44afa38068b\" /><br /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/UQmUMYo3WqMZNNqmXMU2Um6W2oQWkW2o.jpg\" alt=\"\" id=\"7e13174815374819be64f12118124322\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Cj9KX305d2D5jjFk1k92lr35w9k9XR0o.jpg\" alt=\"\" id=\"ed891e5e073f4050b171a76ee8868d5f\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/qa9gf5TV1o99TZ5F7f36733x5GaNd9m3.jpg\" alt=\"\" id=\"d1013ae1d9d8411c959df48aa824af52\" /><br /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/a50yRl5BX1MXL1YrzNlUGYeG4k0U1L0m.jpg\" alt=\"\" id=\"016da8b777f34e6fb08735287455c3c6\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/N21sfG17f7E5GWg21gsE153LZGelSJgl.jpg\" alt=\"\" id=\"787f4bb8d5894674a523182b48456836\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/FyuGkg7UpHqq87pHjQPtgjjUPB6J8bb6.jpg\" alt=\"\" id=\"bd2a9c08f62546b188b045e11b1ccee7\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/HPzQF5EnS4qo5o5eP7MNP5ec4eQnMjQ4.jpg\" alt=\"\" id=\"3908d274763041b99ab52f9c9644edf4\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/F1CCXidi63eOICcIHi8gdpX6IgP6oU6v.jpg\" alt=\"\" id=\"dca474ef357f42d4961f150531787e28\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/gVbT5s6N8U5Uc8z5LLTlLT99nVBe6Ltc.jpg\" alt=\"\" id=\"65409c5359bf4242a31aa37d9dc7c060\" /><br /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/fU5f5zeHm6MJhYZ4t1Yh1xyTm2H0m26U.jpg\" alt=\"\" id=\"835bed6007f24f538f95a8fe03d07bf2\" /><br /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/GsZTsHWthh01Wws77T0pt1E0ZA7K7dJ0.jpg\" alt=\"\" id=\"fe922a35c7924fc898d92651e285fe11\" /><br /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/StaKca4Vjk6POcKoGVAzkPcQdvcwdcgV.jpg\" alt=\"\" id=\"1a34f4a7283449a99068664b47471cad\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/rB5XZ5K5B5ZSHk6O2e2Zek2ys9xk9kke.jpg\" alt=\"\" id=\"42d3c2ba5e14432285dc786854991f96\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Ws9j4PPp4MKM9SnH9smjHSN7pMn77mMM.jpg\" alt=\"\" id=\"f7b491f26abc4c899585833b4c5843af\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/iOi1kckP2R8R825R88j51CP2TiD2jOk1.jpg\" alt=\"\" id=\"8d78deb70b9748be8c2dc48070ec0e03\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/g77BzU7J73r7b0plVb57UL0bpj7QZgDV.jpg\" alt=\"\" id=\"849efeb2dc6d4e30b9cf0ab3016d2153\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/OEpo6b4o646qNgZkVoYjB46Ryoty6uOE.jpg\" alt=\"\" id=\"a51f81e63de74aa6bb94bebf345814e6\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/XQ1FY1VHF1hJ2lK6Hjl1MHffiHlMJKJh.jpg\" alt=\"\" id=\"5fa7655a8de54dfd9fba074ef0efb575\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/F1RT7tqbhR7VcB9Y1ty45bt1VbXVHQ99.jpg\" alt=\"\" id=\"5130a14d78e648de9cb031d2eab6e2e9\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/nzr30paWpxi5IiTAIIWP0Rk4TtetPxpA.jpg\" alt=\"\" id=\"4d71b9d08deb4dc591c96929e8848d2c\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/rHA76h77A9zKa239yAjHYG7D9kYGaj6P.jpg\" alt=\"\" id=\"7beada94d6c6421e821b168e8addc252\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/DUY1yIcArck85ICYki1ih1iKI18hYK4y.jpg\" alt=\"\" id=\"4fc9f5c898d045b5b25c1f33ab992761\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/s5fY357xOHpK2kx7LTt2P8p723gCTg7X.jpg\" alt=\"\" id=\"2598d7b192864daeb54a4d5da7c905b8\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/iBmB01sG8H8qFUF8Qi1G7GzBS812uy81.jpg\" alt=\"\" id=\"4e097dfdf2754a3fb9af7f0fe0534190\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/sPqGpTrqIyLJgtQ0q0rYt97Zjg0TYtg6.jpg\" alt=\"\" id=\"2c57fb99712a4dc1a528bf667a885cdc\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/FU9vCp9llLPBzvU821axUs78Pup37iP7.jpg\" alt=\"\" id=\"fb9692f29d5c4223842e0a4ca9ceea0c\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/NDgICnCjDmBzmbMNYAynBCCaDo1CCUbM.jpg\" alt=\"\" id=\"c5b6a984bda34cd2a47c092f97eaf640\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/kZfQZM12N81R8mQpRe8rQp2no1rpMnOo.jpg\" alt=\"\" id=\"8ae7e9142285442ba4b1d01b9dcde949\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/MV0dRRU5FeR2bOndcvV3r02oxdnzIR9Z.jpg\" alt=\"\" id=\"75c319baa1f04d75a12f5e31c3320222\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/zJTz2AWbBK7r5jW0L7gGmyGGGqfHQ7Jz.jpg\" alt=\"\" id=\"e0e73aedf56843a2a0be3786bcbfc221\" /></div>', '', '', '0.00', '269.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136226', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/J3ZIjVEtv8sJTTtSJ3n2rGT2tEPk38sK.jpg\";i:1;s:53:\"images/3/2017/05/KHqHP9pkMI3eQhPMK9ZPYE3YPQzq1H8q.jpg\";i:2;s:53:\"images/3/2017/05/GwW0ZTWLQe8pJjIlJQpM0WQSyzQj820l.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136226', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '269.00', '269.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '2552200', 'http://item.jd.com/2552200.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('250', '3', '1176', '1183', '1', '1', '0', 'HENRYMAKER 春夏季皮鞋男士真皮商务休闲鞋棉鞋男鞋英伦系带鞋子男正装 HM3665 黑色 41', 'images/3/2017/05/L4ZDeK1eMZd82V75e4SMeeZ2XemK1s1d.jpg', '', null, '<br /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3937/142/1204939745/58391/269f04af/586cafb8Nbe1120ac.jpg\" alt=\"\" id=\"40f85d8d12d1436281983479e0cc9626\r\n\" /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Epb10W06B1O721YjsM7J6o16w7p1S1Ok.jpg\" alt=\"\" id=\"595e5bbcc69f43a18b1bdeae41bccb45\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/kg7572ZWs3izwsh2OI5I6N363o2kH62C.jpg\" alt=\"\" id=\"f9c83a91dcbb410eaa78440bfaa17d4a\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/e2flhFeP2PB7CJeb62bm2nnYFJ62SB79.jpg\" alt=\"\" id=\"204af0b2b44b4264a8194c6aacd57ed9\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/L4nLv4NSNWdFsa4NDWNLSsvaGsnggAyd.jpg\" alt=\"\" id=\"556ca85da92347bdbd01d89a312dbd0c\" /><br /><img src=\"http://img30.360buyimg.com/popWaterMark/jfs/t3070/1/1269774932/193950/ceaebdf5/57c91c7dN5a6983c9.jpg\" alt=\"\" id=\"548e5149b9ce48abb2d082ed91a314a3\r\n\" />   \r\n<br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/n2I2QHzIHjN9H9ElqlHnHNPjztPZX1hp.jpg\" alt=\"\" id=\"d37beadc0b4a46f9b1714104d2deb414\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/vSfNF8fcU99t7oZGYTLOmfJJnMfOojor.jpg\" alt=\"\" id=\"bc6a99b6c76445f0b71d488140619bef\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/OZGhg4G2T4L6404H2yB243m3m30L2pCg.jpg\" alt=\"\" id=\"483958f1d7444cdb97f55cc8c16b645e\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/QrnkLy5j55yG65468GgJtssbJzN75gN8.jpg\" alt=\"\" id=\"a371861a0e664c7194be298258dd6aa2\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/enuNUCAx3eRbQV3rwAiQuEXnz3E6ipIR.jpg\" alt=\"\" id=\"f1edd4279cf343d1909257fb843d155f\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/M2t52z05qC7b307aQO3g27OO6eE4TBO3.jpg\" alt=\"\" id=\"d86a9e5f65e64601bfac89d87aa9e59c\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/rddGZGVVt99Qu9z21DQ41fQJ615dTJq4.jpg\" alt=\"\" id=\"8ff5e2713f464b39a88ce2ee0c614352\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/M824jiKniC2i6AacJNNTtUb2na0jku2D.jpg\" alt=\"\" id=\"5d86315b7aae4cf281290fb640cd0e7a\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/YgGQ1sG3E8C8kS9gqqG66qG1axm66HAA.jpg\" alt=\"\" id=\"84bef3ccfd9f4bbfb77c665b4568a423\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/E7opJOb2pZ2nn7e2hNbEhDeOndNpCGJO.jpg\" alt=\"\" id=\"eeb198bcd62f44c09e20887b6617c096\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/gBVzOmlpZOmMHQPNP1lMm6Zo1ooHFtzz.jpg\" alt=\"\" id=\"e1a2e89ad1c44714acd4a28a097895db\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/sc7h9l9gG5aLoaWp9pAL5HnZGlAG8wO8.jpg\" alt=\"\" id=\"5fb7e9ee0cc34a7780e9f500c9facbab\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/nnHAOdI482z2Gai2iXOcdccGxkDIKZ1A.jpg\" alt=\"\" id=\"47b099e61f7b45e4a555f93b50ccee2f\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/rtHX79QhyHHC0993Y6ZmHotF42600mCo.jpg\" alt=\"\" id=\"891f30f70df9459687e436f6f3482ed1\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/BEjaWzDi3wjN2jm2EWjfQwZx2MMF7km6.jpg\" alt=\"\" id=\"ecf33ad088d84bdc939f60dd1bb7e315\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Ck3CSuYyNNnN7NK8UI5YAnUAYWtW3Yw7.jpg\" alt=\"\" id=\"06ccf8da50fd4b4b81468d02030f47f7\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Rrhnd2rBO2TE6Wt623rs3z3ED2ht2Otz.jpg\" alt=\"\" id=\"0fd27efb5c144575b875b6822a5091f0\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/R2f94ifgooxRGK4U9RLm8g62H9o588Hh.jpg\" alt=\"\" id=\"627876487c8149c298abed816a664f92\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/UYlWzZiZ0222HYhBzOb2D0d2Yzoh266o.jpg\" alt=\"\" id=\"b55da9bc632b4a6b9fd01f6522d8a3ce\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/kS5cJjc0YcYJXY2k20IjJJ5ajc2jcYIJ.jpg\" alt=\"\" id=\"bc054ba4d9654323be4f42e699e95ed6\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/FuPSiSsvk23UVpuxvlxIuxFVyXRUV2VR.jpg\" alt=\"\" id=\"f25e6a51c9ff463ca159f5e7136e1a0c\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/yPfba59y2nYYKm9NxXkRp8Zby04yxWWs.jpg\" alt=\"\" id=\"f826991579e54ef1bab6dbd42df5f5e0\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/gx5L83lW813V5A16xarXXlD38P83XXaX.jpg\" alt=\"\" id=\"df0112ebc74c42adb06c05f86592c6cd\" /><br /><img src=\"\" alt=\"\" id=\"250450ea5b0248e881e96114e8531c94\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/uv2797wE7Fu42l287Ucsl2cbXCl7V8vc.jpg\" alt=\"\" id=\"3aebcde8343c4431933f58a8c851f840\" />\r\n                        ', '', '', '0.00', '139.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136239', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/NnsA6608ensu66MSun0z5x8MenaUnuZn.jpg\";i:1;s:53:\"images/3/2017/05/SUfknN0KsTll6k60s4O0Y0ls160CbLCo.jpg\";i:2;s:53:\"images/3/2017/05/dOQ5O6036oz06g3D628gd5qGZDG6v4FO.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '15', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136239', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '139.00', '139.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10533138086', 'http://item.jd.com/10533138086.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('251', '3', '1176', '1183', '1', '1', '0', '瓦尔希新款男士皮鞋男鞋商务休闲鞋英伦男士休闲鞋 时尚低帮鞋子男1212 H-1212黑色 42', 'images/3/2017/05/GT42i45745s4fy5VK5Fik2k5i9k4t8dF.jpg', '', null, '<img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/hjGmNGnNYggtwfgOtMGGFNWw0WO1yxfo.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/HeW996RRZWozX84b9Z8hw3wH9w68RYxH.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/e93Hhxuv5YUlVVPVH9lKHIh55phx4IvL.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/g8VLv22AT771AaQVAtARRv77amZxXVTY.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/xOO10kSlDOK1MgF36I1k8sI9c1M11169.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/kys51wz7z5eW51qF9FE3SZSj9ejP1qAY.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/o627ZPr2oinO65j156qddQ81Z6DNWdD8.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/pDG22zmJY932LXcVXdj3xzc0lC322d1C.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/tQqx2aZfOJP3hqVa19FVRoKI92Kjf829.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/efT59DlX252h0XZgGmh2J9P8p8lFzlg2.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/pJXj75KW85w10jHv8I5mh1Vmv1hnV1HS.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/aRQ8R8L48mzMtR5N1zkddMzH88mw687n.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/QCQ42eQeqC8115lUpE1mEXcrjj49eQeR.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/lT7tuHTKITGNHu5b3Hb92Qt1kKnb5uku.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/ayGSK2kyZx68gKP892ZSHF98YPa96AKG.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/HifkDbr90aFA310790b19f0A00BrKzgz.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/Iv8iEV3flZDz38z3QJQjQxMqevf8J3DE.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/Y87s1B7Sf7BZz888qr0x5S05608S80QB.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/pWWf2AVsa6FvF0mZw6AQ9AfGt0s6e4aw.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/ew0Def80X38h8z8lIH3B38Ue0ieHEjHb.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/Mgcs51c2O55SJ25d32325zf2d132oDvD.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/JBy4rR7824yRhz7rFr04778bHrbkRy00.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/CMJk59rGsJS7BnmGbHj9bb54Hs5g9BBb.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/j5xs74X35q84QZZO55o7KRsVS5h5575X.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/yyC5wBAL54AbCYD4LleW0LL3E0sEYZ25.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/nC2ambLmNbsciccaLAmnXNmXLiISLAbN.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/FYQ4RiCrQyoOYXYP9xZytTPrxT94kPyT.jpg\"><div class=\'for_separator\'></div><img class=\"init_pic\" src=\"http://192.168.0.145/attachment/images/3/2017/05/QLsstemxVmLLf7ljctF7Jx7M7Gl77GTZ.jpg\"><div class=\'for_separator\'></div><img src=\"http://192.168.0.145/attachment/images/3/2017/05/L9K7U69Rrrr098D919nd1dZ1wrW6dwwN.jpg\"><br><div class=\'for_separator\'></div>', '', '', '0.00', '139.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136274', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/EPnzYWFk1b3w2W1FdeYbEYLMLESlfpZ5.jpg\";i:1;s:53:\"images/3/2017/05/RJjmpeFLL02pM0UskE4i4Jy0E0E6T7L4.jpg\";i:2;s:53:\"images/3/2017/05/F3pXBx6nxlU3Xx3O6b2gBEloILOixxDn.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136274', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '139.00', '139.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '1398646579', 'http://item.jd.com/1398646579.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('252', '3', '1176', '1183', '1', '1', '0', '森林传说 男鞋休闲鞋英伦透气网面系带板鞋男士运动鞋子男 黑色 40码', 'images/3/2017/05/CqBcMI5IGcCcM5x5rc95Td5mQ5Q5MSdS.jpg', '', null, '<img src=\"http://192.168.0.145/attachment/images/3/2017/05/yV0goyWwM40ZYs0jkWYnkn19JSsyWwms.jpg\" alt=\"\" id=\"0a67ab547bb94decad197fe867ab4806 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/KmzzQ4sbjmbM3eRJB2V5MCkrBMKjBKo5.jpg\" alt=\"\" id=\"5631bd25a79a4563be172ea2a5551ae2 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/MPvp2w0GXzA5M18PA00ZeeW08ZDvEpP1.jpg\" alt=\"\" id=\"a88dd1aa3070436983072a9e34611997 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/m0w04D0r9vXttxw4W99OCtV00B9DX2OB.jpg\" alt=\"\" id=\"20dd60f4386f48dd83d6d25fdba1e6ef \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/SXqhU9lklRD1NEXfh1fBdkH1xkNl7KXl.jpg\" alt=\"\" id=\"545f645ea22942c29de26f1099eda2ce \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/ZGfGhhgoL4lwAba3g4OahpfLgb3p4gEb.jpg\" alt=\"\" id=\"501fa917f45f4020af90893caa69b093 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/nEgBDjyh9e924IjkDj4BA2Yg6Hi12ajy.jpg\" alt=\"\" id=\"db7c2ebcb55b49eba7fef85b953057bd \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/nHJ06yJJjjv04VjxxqX04Y000r6g2g26.jpg\" alt=\"\" id=\"1245026724964e9780906f63af0d9d41 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/FN66t9JOy876zT88T1u9JuzT1leus9O6.jpg\" alt=\"\" id=\"5ed767123c8b48ef9c9062fa0f4bc43d \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/fLzdQzM8dJKzqMD02XfTtyMKTCI88hY2.jpg\" alt=\"\" id=\"7ca952425d6043a48cbdfec3847def2c \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/QjFi9bJVBSTSc9f9VH7SKZJjSkO4LbnF.jpg\" alt=\"\" id=\"89d14f63b8d24d14abcc0ebab49542be \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/puTP9BLzFL9qtNyUNap1Lv1L9uuPBmtC.jpg\" alt=\"\" id=\"2bac1418268b442ba0353b3d40eeb210 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/DOeOuuvwmhu0xW2VuXU0R1uRWEHMXuhR.jpg\" alt=\"\" id=\"06d02f8bf9654c7a84f5783ec50bab86 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/VvAJC356X8R5vxclMc3678WnMjwbWL3R.jpg\" alt=\"\" id=\"c18d79d98ce0401e8e8c9da0657e90c9 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/p8F4Xr8g8g38GfhG3ygZbGJ5t2T3EFY5.jpg\" alt=\"\" id=\"d44b710d0fd44bccbf8f4b8fbc4628c4 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/L5vV4cvGnm5AVvDaCbn5v45M8ZIP44Bv.jpg\" alt=\"\" id=\"960b90e1c4344311a067fb1c12c3f513 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/h9T10gQ06qQRo166aa099A80r83q96Tq.jpg\" alt=\"\" id=\"eaf830d934534c7ea8f670458bf8ef32 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/pBHtj2H55O2v4wbl8V2LSQ5OCd52lBL4.jpg\" alt=\"\" id=\"85f7d76ca3ad4a888a5c7d3beeb98b63 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Dk3sw1i39Ud33HO6szo5skooDx1HGi1I.jpg\" alt=\"\" id=\"867b96485b9d44e9b0505d8d0f7e2b27 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/v39zio3G1lz73SKHu3OdcvJt49Oc1djm.jpg\" alt=\"\" id=\"43d6f9a1bd544060abcc1e5e650e5703 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/l414cf4m4FXfY1vLf47K4TTlMTV4F6m4.jpg\" alt=\"\" id=\"de111abed4384bd38a4709a71b7070e0 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/gMBtVv6mTtl16VF1VONn061PNxzPQNTK.jpg\" alt=\"\" id=\"f8513fdfe9124a879ce8f08b7c4bb71e \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/AGNNZ00WNDJngDm5Trz5jjN0n4A3RaEg.jpg\" alt=\"\" id=\"3b5d8a7ce81a4ff1a98a3004255ac391 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/mHrb279PP3HV3SP4Rps1HHVhi5R5r3BR.jpg\" alt=\"\" id=\"30efdb4db2ef489ba7e289a3aa7d47cf \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/g2b582D2VD2dInqvvI8BvgNvbVuvVzIz.jpg\" alt=\"\" id=\"0950849f3453404b90c203d5f9a16aab \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/pYbkwzw954CFfC06zSPZVUF4d0ZCTP6S.jpg\" alt=\"\" id=\"277d21cb0d3e446da72044df45685301 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Z73pL9YK10py73jDLIVtI0pKYly0LkjZ.jpg\" alt=\"\" id=\"7762fc1946e941548b7fbfd1a9c97e9a \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/dZ1CI4SewPO6Y7P44s4u67seIb6s66TP.jpg\" alt=\"\" id=\"5e32282290dc4cd0a4128be96b216595 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/oLOEjH4W7iIavKmlI7GJgkAEUoo8EMG3.jpg\" alt=\"\" id=\"e732353855a64e7aa452e6c775177476 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/H0T9d2916q9lM06AQmPMAg4EP44ADEZM.jpg\" alt=\"\" id=\"bc5e364a55b14e97843867356ded289d \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/u6zg6fr6uRjRlJ826wWLA6zfkyRau6DY.jpg\" alt=\"\" id=\"addfa0da5ebb4dbeb4ea95842adedc4b \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/pI0uobBg0yhqRV187YlbLiQz8N6077RQ.jpg\" alt=\"\" id=\"22ee1c7c32b54488a42cdb96416f36a7 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/BTiQBT7t6IT0T70Tf44q4bF97Q7Bq07Z.jpg\" alt=\"\" id=\"727fecb699674417b603ee83a0f6071c \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/dTy8f1m0ppyV0almsmS00tylfPMpyygC.jpg\" alt=\"\" id=\"12c8e6d682184a8e9aa006751183478b \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/EjNdCzH0zjm7Nn49Y4gydTJ7Q49D77Qu.jpg\" alt=\"\" id=\"684857d12fe84c82bc65bc48ab4970e7 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/oSrwBSRWbWX56ESe9S6EBsAlwEabXal5.jpg\" alt=\"\" id=\"f733185715a143638f4ce0880d38a339 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/nh4LHneSR24BydhdNwyzqw8QsFHQmsYJ.jpg\" alt=\"\" id=\"f1f5c3eb761447a3800b0748e08f849a \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/XQZetX8KTtXzExQDQA9NnlLdr05xeTae.jpg\" alt=\"\" id=\"634d7b7c229747d1b0cfeb19db58b477 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/x6282jJ5tqPfl8vOlq2JJTZ6zp2teL15.jpg\" alt=\"\" id=\"f70c018f063443cda4eb32617f7c8a57 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/u1baw7CCo1AmnmBGdcv55g759OOOXWVA.jpg\" alt=\"\" id=\"512b8e66d19847e8be36c111398e5ef8 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/SRlTJ5Zn5y35YNyEv0iBXtN3bmjEjytI.jpg\" alt=\"\" id=\"40ba7d2def8a434a8ed01f2a5621d266 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/i0Rt8XZt7ScJjCrP0448cEyTY88jiYRY.jpg\" alt=\"\" id=\"06607965112349019e6c521441107106 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/SuJV2jyiAjs8jA4sVn8Y8sqq8s28QVNh.jpg\" alt=\"\" id=\"6efe458ff1884800be294b3e2b108962 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/byqQZ72124d2C733f902Co8z7wNC9228.jpg\" alt=\"\" id=\"0ded50b55e4a4d02bb3e737fc57a2b58 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/iNJ374ZdHnPdC3144785P45d3V3vBCHs.jpg\" alt=\"\" id=\"37403537ab2a40e38e03aee68a416ce1 \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/DeF2f2s6FyL553xXFx1yTxYbxsfLFeSF.jpg\" alt=\"\" id=\"d22f0227a4f64d32a4f1436eb8a525db \" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/jBIaKI1r1kkI7ZYcAydAXRrRrYiyJ17I.jpg\" alt=\"\" id=\"7c06243dbb38438182693e710de1a8c0 \" />', '', '', '0.00', '168.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136283', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/t3n425UIIWWPIK0t06XUIkp6KwKPW5u1.jpg\";i:1;s:53:\"images/3/2017/05/tmT3g8SyN5S94878f86Y9zzSZmsgySYI.jpg\";i:2;s:53:\"images/3/2017/05/sO3t6t72W2Fkwxv7fFc6cn8zHwn32H7O.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136283', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '168.00', '168.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '10851355701', 'http://item.jd.com/10851355701.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `ims_ewei_shop_goods` VALUES ('253', '3', '1176', '1183', '1', '1', '0', '公牛世家（G.N.Shi Jia）凉鞋男沙滩鞋夏天户外透气套脚凉鞋潮888411 888411黑色 41 运动鞋码', 'images/3/2017/05/cD609TDfvhddFvA5FT0EVV0d6S9VvV2a.jpg', '', null, '<img src=\"http://192.168.0.145/attachment/images/3/2017/05/r9jpzcad63aIhhPjZ29P7ICAZN86CiqF.jpg\" alt=\"\" id=\"945278dd8e3940d7ae7f8a39b0686305\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/zH91gh1Gyz1cbhBQZb9Mci2qJB9h2irQ.jpg\" alt=\"\" id=\"77d129a75e4d413db3d82e88ac5f92a7\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/yORKuoGQk9Gu3rrKqou43gROrr3Z4Ku4.jpg\" alt=\"\" id=\"ca66abb37d6445619d1ffb482cd01a44\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/e48zak9aBZzLHl1in85u686BU9c80h9N.jpg\" alt=\"\" id=\"3d66d21ac2b44149ae939aca81300bfb\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/NzKesKkYqQREKCfKyKRYjcTCZFSSyTKB.jpg\" alt=\"\" id=\"4f94aea7c6dc4e91b9aca9dcaca9bd26\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/nntywY29HYGwWj7pH7buw29hHZTGT92t.jpg\" alt=\"\" id=\"ee81d8a70f174e13a92a585cfa4035c7\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/LWt00S8Yg0c8f9DgGsYfZFD8Yt88fy0F.jpg\" alt=\"\" id=\"ed52c396855d42aea4b6031a61b5d202\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/vcaVg6Dzc2zyEc61Wh11Z2oeAVwDFa2D.jpg\" alt=\"\" id=\"8c48e8ed97d1463b9eef51cb00ef58d0\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/JmEeaDBNDm0EZAzb37A3jbRa75ZAeSNm.jpg\" alt=\"\" id=\"1e77c6d0f2c64834a9cad6b2cb9e3bd1\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/MQae5z5cfI7PWIfBQi5O7NY7it7n7y47.jpg\" alt=\"\" id=\"9074deb11dfa43eb977b4aeef487ae1d\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/i1l9lgqzy7C2k77qhdqhlBbq9Lly3Alc.jpg\" alt=\"\" id=\"cdea9215dab54fdfba067bd2bf84270a\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/IXQqUx2xo66X6y2FRGrbFGorXirYTYof.jpg\" alt=\"\" id=\"59cb06913ee94c318a0b371d3759f1e1\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/zgXxXip2FX2y2YfMKXGDiRIARDPpZAma.jpg\" alt=\"\" id=\"e2abb83dca5e49ec9fa266168bd3ed17\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/rxMKyy0xQyUUrYRI2XrERtuusZxo9ysO.jpg\" alt=\"\" id=\"c653112afaa843bcbe32f93ec8d9ce6a\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/kfQiFENfx66qnmemwTmT6P8MingWknwF.jpg\" alt=\"\" id=\"2420d8c5257b4c43906f52d0dbd88af6\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/K0Hl5NzyLxL07s8fhHGJ0BGhM708jf7G.jpg\" alt=\"\" id=\"3c59b29da38b41028cc26e04e51328a6\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Dlg8AqmsmEUOyAsM8ulU99YOa8zESome.jpg\" alt=\"\" id=\"b1c893dcf1f1440cb4fdc6d372075f35\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/Vioz4IEiqbQ264o642Ltb42NlOtL4i27.jpg\" alt=\"\" id=\"e29bf159f9df4452aa525821ac0737f4\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/i1bSCio4SFsM0t0P4iSioLt00F0FwSFt.jpg\" alt=\"\" id=\"bda2666b955f409d8f3ba827e84d74f3\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/VwA8ezELRoOEvOR0kUB3EtwW2TWKT55e.jpg\" alt=\"\" id=\"4bfc330ea8434db4bb9be3a466a4414d\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/oJKYZH2yV10z2ryok2aRY20z4092y8YA.jpg\" alt=\"\" id=\"2f5f55bf303044849a053739bcab7fe6\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/SH8mn10eh08h1Lebbin58x0JJhX3100b.jpg\" alt=\"\" id=\"e1e98aee826841f0aa46d97af1ab28cd\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/yz0RRw9nn5V9VfF6045VyzviiRy8zsZf.jpg\" alt=\"\" id=\"41e7defd5a9643b09b26b99057e27905\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/itzjUMibJMmmEt58rEME5xAHZ8hmxJxj.jpg\" alt=\"\" id=\"e047db93f3dd45ef83a71d739b168a9c\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/auXUCU3m23y9P39Pr3k3YpzKSAyqIicK.jpg\" alt=\"\" id=\"33b15522ba2642d496b8316f7bb18fb9\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/ADMwHJW2WH5Dh79Sj3T3svkhp319zj0j.jpg\" alt=\"\" id=\"f88ac2b0c07b446d827955e3655d2578\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/y8AXnnD1mdAClSyc2x2XNYc8cS8O88oA.jpg\" alt=\"\" id=\"4312bd195b27486fb2b5c66110f5ac5f\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/rC7tF0NtZ596Hcge60F46mXc86f8ER06.jpg\" alt=\"\" id=\"b7d6602132a94c5fb5e9eebf7d79d821\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/gDU888Q20Zwdu8UwduU2UUwhlHT2Q0U2.jpg\" alt=\"\" id=\"1aec08b214984bb58975fe36d399f33e\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/OHrR5yyZFrCcMR5r37ppAWXhPyXHpa4i.jpg\" alt=\"\" id=\"ae1073fa56b94c1eb02512ec04f40500\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/bhcBK6b7bG6K3GDZ7G5bj5ck9k5H3h66.jpg\" alt=\"\" id=\"2be449178b154b6190b07d73f2ecf33f\" /><br /><img src=\"http://192.168.0.145/attachment/images/3/2017/05/PTleYG3Utn54oOe445FlT4YnYTYpTPLn.jpg\" alt=\"\" id=\"b74872e4568145a4b8ccafe84e4a31c5\" />', '', '', '0.00', '168.00', '0.00', '0.00', '10', '0', '0', '0', '', '1494136312', '0.00', null, '0', '0', '0', '0', 'a:3:{i:0;s:53:\"images/3/2017/05/e5HaMSH7s5dZ4yUzm7MVGhaSSG9YG40k.jpg\";i:1;s:53:\"images/3/2017/05/c50eIFH8e0F2iZn0qGq0QzQFei82J2HV.jpg\";i:2;s:53:\"images/3/2017/05/pnCiNNvcfImxISCFFQfixQfFYFeNFCzZ.jpg\";}', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '1494136312', '', '', '0', '', '0', '', '', '', '', '0', '', '', '0', null, '0', '', '', '0.00', '0', null, null, '0', '0', null, null, '1176,1183,0', '0', '', '', '', '', '', '', '', '0', '0', '0.00', '0', '0.00', null, '0', '0', '0', '0', '0', '0.00', '0', '', '', '0', null, null, '0', '0', null, '0', '0', '0', '0', '', '168.00', '168.00', '', '', '0', null, '0', '0', null, '0', null, '0', '0', '0', '0', '0', '', '0', '0', null, '0', '0', '0', '0', '0', '', '11594663113', 'http://item.jd.com/11594663113.html', 'jingdong', '0', null, '0', '0', '0', '0', '0', '0.00', '0', '0', '0', null, '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0.00', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_comment`;
CREATE TABLE `ims_ewei_shop_goods_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `goodsid` int(10) DEFAULT '0',
  `openid` varchar(50) DEFAULT '',
  `nickname` varchar(50) DEFAULT '',
  `headimgurl` varchar(255) DEFAULT '',
  `content` varchar(255) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_goodsid` (`goodsid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_goods_comment
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_group`;
CREATE TABLE `ims_ewei_shop_goods_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `goodsids` varchar(255) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_goods_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_label
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_label`;
CREATE TABLE `ims_ewei_shop_goods_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `labelname` text NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `displayorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_goods_label
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_labelstyle
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_labelstyle`;
CREATE TABLE `ims_ewei_shop_goods_labelstyle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `style` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ims_ewei_shop_goods_labelstyle
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_option
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_option`;
CREATE TABLE `ims_ewei_shop_goods_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `goodsid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `thumb` varchar(60) DEFAULT '',
  `productprice` decimal(10,2) DEFAULT '0.00',
  `marketprice` decimal(10,2) DEFAULT '0.00',
  `costprice` decimal(10,2) DEFAULT '0.00',
  `stock` int(11) DEFAULT '0',
  `weight` decimal(10,2) DEFAULT '0.00',
  `displayorder` int(11) DEFAULT '0',
  `specs` text,
  `skuId` varchar(255) DEFAULT '',
  `goodssn` varchar(255) DEFAULT '',
  `productsn` varchar(255) DEFAULT '',
  `virtual` int(11) DEFAULT '0',
  `exchange_stock` int(11) DEFAULT '0',
  `exchange_postage` decimal(10,2) NOT NULL DEFAULT '0.00',
  `presellprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_goodsid` (`goodsid`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=393 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_goods_option
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_param
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_param`;
CREATE TABLE `ims_ewei_shop_goods_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `goodsid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `value` text,
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_goodsid` (`goodsid`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=1085 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_goods_param
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_spec
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_spec`;
CREATE TABLE `ims_ewei_shop_goods_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `goodsid` int(11) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `description` varchar(1000) DEFAULT '',
  `displaytype` tinyint(3) DEFAULT '0',
  `content` text,
  `displayorder` int(11) DEFAULT '0',
  `propId` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_goodsid` (`goodsid`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_goods_spec
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_spec_item
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_spec_item`;
CREATE TABLE `ims_ewei_shop_goods_spec_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `specid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `show` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `valueId` varchar(255) DEFAULT '',
  `virtual` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_specid` (`specid`),
  KEY `idx_show` (`show`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=283 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_goods_spec_item
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_adv`;
CREATE TABLE `ims_ewei_shop_groups_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_enabled` (`enabled`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_groups_adv
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_category`;
CREATE TABLE `ims_ewei_shop_groups_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `displayorder` tinyint(3) unsigned DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  `advimg` varchar(255) DEFAULT '',
  `advurl` varchar(500) DEFAULT '',
  `isrecommand` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_displayorder` (`displayorder`),
  KEY `idx_enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_groups_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_goods`;
CREATE TABLE `ims_ewei_shop_groups_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayorder` int(11) unsigned DEFAULT '0',
  `uniacid` int(11) DEFAULT '0',
  `goodssn` varchar(50) DEFAULT NULL,
  `productsn` varchar(50) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showstock` tinyint(2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '0',
  `price` decimal(10,2) DEFAULT '0.00',
  `groupsprice` decimal(10,2) DEFAULT '0.00',
  `goodsnum` int(11) NOT NULL DEFAULT '1',
  `purchaselimit` int(11) NOT NULL DEFAULT '0',
  `single` tinyint(2) NOT NULL DEFAULT '0',
  `singleprice` decimal(10,2) DEFAULT '0.00',
  `units` varchar(255) NOT NULL DEFAULT '件',
  `dispatchtype` tinyint(2) NOT NULL,
  `dispatchid` int(11) NOT NULL,
  `freight` decimal(10,2) DEFAULT '0.00',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `groupnum` int(10) NOT NULL DEFAULT '0',
  `sales` int(10) NOT NULL DEFAULT '0',
  `thumb` varchar(255) DEFAULT '',
  `description` varchar(1000) DEFAULT NULL,
  `content` text,
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `isindex` tinyint(3) NOT NULL DEFAULT '0',
  `deleted` tinyint(3) NOT NULL DEFAULT '0',
  `goodsid` int(11) NOT NULL DEFAULT '0',
  `followneed` tinyint(2) NOT NULL DEFAULT '0',
  `followtext` varchar(255) DEFAULT NULL,
  `followurl` varchar(255) DEFAULT NULL,
  `share_title` varchar(255) DEFAULT NULL,
  `share_icon` varchar(255) DEFAULT NULL,
  `share_desc` varchar(500) DEFAULT NULL,
  `deduct` decimal(10,2) NOT NULL DEFAULT '0.00',
  `thumb_url` text,
  `rights` tinyint(2) NOT NULL DEFAULT '1',
  `gid` int(11) DEFAULT '0',
  `discount` tinyint(3) DEFAULT '0',
  `headstype` tinyint(3) DEFAULT NULL,
  `headsmoney` decimal(10,2) DEFAULT '0.00',
  `headsdiscount` int(11) DEFAULT '0',
  `isdiscount` tinyint(3) DEFAULT '0',
  `isverify` tinyint(3) DEFAULT '0',
  `verifytype` tinyint(3) DEFAULT '0',
  `verifynum` int(11) DEFAULT '0',
  `storeids` text,
  `merchid` int(11) DEFAULT '0',
  `shorttitle` varchar(255) DEFAULT '',
  `teamnum` int(11) DEFAULT '0',
  `ishot` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_type` (`category`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_status` (`status`),
  KEY `idx_istop` (`ishot`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_groups_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_goods_atlas
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_goods_atlas`;
CREATE TABLE `ims_ewei_shop_groups_goods_atlas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g_id` int(11) NOT NULL,
  `thumb` varchar(145) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_groups_goods_atlas
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_order`;
CREATE TABLE `ims_ewei_shop_groups_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `openid` varchar(45) NOT NULL,
  `orderno` varchar(45) NOT NULL,
  `groupnum` int(11) NOT NULL,
  `paytime` int(11) NOT NULL,
  `credit` int(11) DEFAULT '0',
  `creditmoney` decimal(11,2) DEFAULT '0.00',
  `price` decimal(11,2) DEFAULT '0.00',
  `freight` decimal(11,2) DEFAULT '0.00',
  `status` int(9) NOT NULL,
  `pay_type` varchar(45) DEFAULT NULL,
  `dispatchid` int(11) DEFAULT NULL,
  `addressid` int(11) NOT NULL DEFAULT '0',
  `address` varchar(255) DEFAULT NULL,
  `goodid` int(11) NOT NULL,
  `teamid` int(11) NOT NULL,
  `is_team` int(2) NOT NULL,
  `heads` int(11) DEFAULT '0',
  `discount` decimal(10,2) DEFAULT '0.00',
  `starttime` int(11) NOT NULL,
  `canceltime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(45) NOT NULL,
  `createtime` int(11) NOT NULL,
  `finishtime` int(11) NOT NULL DEFAULT '0',
  `refundid` int(11) NOT NULL DEFAULT '0',
  `refundstate` tinyint(2) NOT NULL DEFAULT '0',
  `refundtime` int(11) NOT NULL DEFAULT '0',
  `express` varchar(45) DEFAULT NULL,
  `expresscom` varchar(100) DEFAULT NULL,
  `expresssn` varchar(45) DEFAULT NULL,
  `sendtime` int(45) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `remarkclose` text,
  `remarksend` text,
  `message` varchar(255) DEFAULT NULL,
  `success` int(2) NOT NULL DEFAULT '0',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `realname` varchar(20) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `isverify` tinyint(3) DEFAULT '0',
  `verifytype` tinyint(3) DEFAULT '0',
  `verifycode` varchar(45) DEFAULT '0',
  `verifynum` int(11) DEFAULT '0',
  `printstate` int(11) NOT NULL DEFAULT '0',
  `printstate2` int(11) NOT NULL DEFAULT '0',
  `apppay` tinyint(3) NOT NULL DEFAULT '0',
  `delete` int(2) NOT NULL DEFAULT '0',
  `isborrow` tinyint(1) DEFAULT '0',
  `borrowopenid` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_groups_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_order_refund
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_order_refund`;
CREATE TABLE `ims_ewei_shop_groups_order_refund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `openid` varchar(45) NOT NULL DEFAULT '',
  `orderid` int(11) NOT NULL DEFAULT '0',
  `refundno` varchar(45) NOT NULL DEFAULT '0',
  `refundstatus` tinyint(3) NOT NULL DEFAULT '0',
  `refundaddressid` int(11) NOT NULL DEFAULT '0',
  `refundaddress` varchar(255) NOT NULL DEFAULT '0',
  `content` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `applytime` varchar(45) NOT NULL DEFAULT '0',
  `applycredit` int(11) NOT NULL DEFAULT '0',
  `applyprice` decimal(11,2) NOT NULL DEFAULT '0.00',
  `reply` text,
  `refundtype` varchar(45) DEFAULT NULL,
  `rtype` int(3) NOT NULL DEFAULT '0',
  `refundtime` varchar(45) NOT NULL,
  `endtime` varchar(45) NOT NULL DEFAULT '0',
  `message` varchar(255) DEFAULT NULL,
  `operatetime` varchar(45) NOT NULL DEFAULT '0',
  `realcredit` int(11) NOT NULL,
  `realmoney` decimal(11,2) NOT NULL,
  `express` varchar(45) DEFAULT NULL,
  `expresscom` varchar(100) DEFAULT NULL,
  `expresssn` varchar(45) DEFAULT NULL,
  `sendtime` varchar(45) NOT NULL DEFAULT '0',
  `returntime` int(11) NOT NULL DEFAULT '0',
  `rexpress` varchar(45) DEFAULT NULL,
  `rexpresscom` varchar(100) DEFAULT NULL,
  `rexpresssn` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_groups_order_refund
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_paylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_paylog`;
CREATE TABLE `ims_ewei_shop_groups_paylog` (
  `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `openid` varchar(40) NOT NULL,
  `tid` varchar(64) NOT NULL,
  `credit` int(10) NOT NULL DEFAULT '0',
  `creditmoney` decimal(10,2) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tag` varchar(2000) NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL,
  `uniontid` varchar(50) NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_groups_paylog
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_set`;
CREATE TABLE `ims_ewei_shop_groups_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` varchar(45) DEFAULT NULL,
  `groups` int(2) NOT NULL DEFAULT '0',
  `followurl` varchar(255) DEFAULT NULL,
  `followqrcode` varchar(255) DEFAULT NULL,
  `groupsurl` varchar(255) DEFAULT NULL,
  `share_title` varchar(255) DEFAULT NULL,
  `share_icon` varchar(255) DEFAULT NULL,
  `share_desc` varchar(255) DEFAULT NULL,
  `share_url` varchar(255) DEFAULT NULL,
  `groups_description` text,
  `description` int(2) NOT NULL DEFAULT '0',
  `creditdeduct` tinyint(2) NOT NULL DEFAULT '0',
  `groupsdeduct` tinyint(2) NOT NULL DEFAULT '0',
  `credit` int(11) NOT NULL DEFAULT '1',
  `groupsmoney` decimal(11,2) NOT NULL DEFAULT '0.00',
  `refund` int(11) NOT NULL DEFAULT '0',
  `refundday` int(11) NOT NULL DEFAULT '0',
  `goodsid` text NOT NULL,
  `rules` text,
  `receive` int(11) DEFAULT '0',
  `discount` tinyint(3) DEFAULT '0',
  `headstype` tinyint(3) DEFAULT '0',
  `headsmoney` decimal(10,2) DEFAULT '0.00',
  `headsdiscount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_groups_set
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_verify
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_verify`;
CREATE TABLE `ims_ewei_shop_groups_verify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(45) DEFAULT '0',
  `orderid` int(11) DEFAULT '0',
  `verifycode` varchar(45) DEFAULT '',
  `storeid` int(11) DEFAULT '0',
  `verifier` varchar(45) DEFAULT '0',
  `isverify` tinyint(3) DEFAULT '0',
  `verifytime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_groups_verify
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_mc_merchant
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_mc_merchant`;
CREATE TABLE `ims_ewei_shop_mc_merchant` (
  `id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `merchant_no` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `contact_name` varchar(255) NOT NULL DEFAULT '',
  `contact_mobile` varchar(16) NOT NULL DEFAULT '',
  `contact_address` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `createtime` int(11) NOT NULL,
  `validitytime` int(11) NOT NULL,
  `industry` varchar(255) NOT NULL DEFAULT '',
  `remark` varchar(1000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_mc_merchant
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_member
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member`;
CREATE TABLE `ims_ewei_shop_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  `groupid` int(11) DEFAULT '0',
  `level` int(11) DEFAULT '0',
  `agentid` int(11) DEFAULT '0',
  `openid` varchar(50) DEFAULT '',
  `realname` varchar(20) DEFAULT '',
  `mobile` varchar(11) DEFAULT '',
  `pwd` varchar(32) DEFAULT '',
  `weixin` varchar(100) DEFAULT '',
  `content` text,
  `createtime` int(10) DEFAULT '0',
  `agenttime` int(10) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `isagent` tinyint(1) DEFAULT '0',
  `clickcount` int(11) DEFAULT '0',
  `agentlevel` int(11) DEFAULT '0',
  `noticeset` text,
  `nickname` varchar(255) DEFAULT '',
  `credit1` decimal(10,2) DEFAULT '0.00',
  `credit2` decimal(10,2) DEFAULT '0.00',
  `birthyear` varchar(255) DEFAULT '',
  `birthmonth` varchar(255) DEFAULT '',
  `birthday` varchar(255) DEFAULT '',
  `gender` tinyint(3) DEFAULT '0',
  `avatar` varchar(255) DEFAULT '',
  `province` varchar(255) DEFAULT '',
  `city` varchar(255) DEFAULT '',
  `area` varchar(255) DEFAULT '',
  `childtime` int(11) DEFAULT '0',
  `agentnotupgrade` int(11) DEFAULT '0',
  `inviter` int(11) DEFAULT '0',
  `agentselectgoods` tinyint(3) DEFAULT '0',
  `agentblack` int(11) DEFAULT '0',
  `username` varchar(255) DEFAULT '',
  `fixagentid` tinyint(3) DEFAULT '0',
  `diymemberid` int(11) DEFAULT '0',
  `diymemberdataid` int(11) DEFAULT '0',
  `diymemberdata` text,
  `diycommissionid` int(11) DEFAULT '0',
  `diycommissiondataid` int(11) DEFAULT '0',
  `diycommissiondata` text,
  `isblack` int(11) DEFAULT '0',
  `diymemberfields` text,
  `diycommissionfields` text,
  `commission_total` decimal(10,2) DEFAULT '0.00',
  `endtime2` int(11) DEFAULT '0',
  `ispartner` tinyint(3) DEFAULT '0',
  `partnertime` int(11) DEFAULT '0',
  `partnerstatus` tinyint(3) DEFAULT '0',
  `partnerblack` tinyint(3) DEFAULT '0',
  `partnerlevel` int(11) DEFAULT '0',
  `partnernotupgrade` tinyint(3) DEFAULT '0',
  `diyglobonusid` int(11) DEFAULT '0',
  `diyglobonusdata` text,
  `diyglobonusfields` text,
  `isaagent` tinyint(3) DEFAULT '0',
  `aagentlevel` int(11) DEFAULT '0',
  `aagenttime` int(11) DEFAULT '0',
  `aagentstatus` tinyint(3) DEFAULT '0',
  `aagentblack` tinyint(3) DEFAULT '0',
  `aagentnotupgrade` tinyint(3) DEFAULT '0',
  `aagenttype` tinyint(3) DEFAULT '0',
  `aagentprovinces` text,
  `aagentcitys` text,
  `aagentareas` text,
  `diyaagentid` int(11) DEFAULT '0',
  `diyaagentdata` text,
  `diyaagentfields` text,
  `salt` varchar(32) DEFAULT NULL,
  `mobileverify` tinyint(3) DEFAULT '0',
  `mobileuser` tinyint(3) DEFAULT '0',
  `carrier_mobile` varchar(11) DEFAULT '0',
  `isauthor` tinyint(1) DEFAULT '0',
  `authortime` int(11) DEFAULT '0',
  `authorstatus` tinyint(1) DEFAULT '0',
  `authorblack` tinyint(1) DEFAULT '0',
  `authorlevel` int(11) DEFAULT '0',
  `authornotupgrade` tinyint(1) DEFAULT '0',
  `diyauthorid` int(11) DEFAULT '0',
  `diyauthordata` text,
  `diyauthorfields` text,
  `authorid` int(11) DEFAULT '0',
  `comefrom` varchar(20) DEFAULT NULL,
  `openid_qq` varchar(50) DEFAULT NULL,
  `openid_wx` varchar(50) DEFAULT NULL,
  `diymaxcredit` tinyint(3) DEFAULT '0',
  `maxcredit` int(11) DEFAULT '0',
  `datavalue` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_shareid` (`agentid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_status` (`status`),
  KEY `idx_agenttime` (`agenttime`),
  KEY `idx_isagent` (`isagent`),
  KEY `idx_uid` (`uid`),
  KEY `idx_groupid` (`groupid`),
  KEY `idx_level` (`level`)
) ENGINE=MyISAM AUTO_INCREMENT=2191 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_member
-- ----------------------------
INSERT INTO `ims_ewei_shop_member` VALUES ('2188', '3', '1', '0', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', '18189128369', '7663f8f1543732dfe14b76225fe0bc4f', '', '', '1493786653', '0', '0', '0', '0', '0', null, '王一翔', '0.00', '0.00', '', '', '', '1', 'http://wx.qlogo.cn/mmopen/4Apt0Ak3ABwlD1FPO692alKPltu55KBKoyb5dlO5ZFonXJ3e6v5LaiajDQVc1BlpFOmk6hut4x8A8iaBofwVxE3Bibo7Q44P4bc/132', '陕西', '西安', '', '0', '0', '0', '0', '0', '', '0', '0', '0', null, '0', '0', null, '0', null, null, '0.00', '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', null, null, null, '0', null, null, 'a9Cc4Z3JC4B6Jc84', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', null, null, null, '0', '0', '');
INSERT INTO `ims_ewei_shop_member` VALUES ('2189', '5', '2', '0', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '18189128369', '0ad35a45de4b3471772d438ee5e227cd', '', '', '1493969907', '0', '0', '0', '0', '0', null, '王一翔', '0.00', '0.00', '', '', '', '1', 'http://wx.qlogo.cn/mmopen/WgTJn6rLvQ302gOLraiaRKcuMyWwmkcaO3JH5ibeCME1aOXkUfL8D51avicoB4Q4Licszrr8gicMgIErP7XzhqTlEE36JxnLMia4zic/132', '陕西', '西安', '', '0', '0', '0', '0', '0', '', '0', '0', '0', null, '0', '0', null, '0', null, null, '0.00', '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', null, null, null, '0', null, null, 'AZX2eT1avxY4RbY2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', null, null, null, '0', '0', '');
INSERT INTO `ims_ewei_shop_member` VALUES ('2190', '3', '0', '0', '0', '0', 'o6tC-wmZovDTswVba3Kg1oAV_dd0', '', '', '', '', null, '1494136920', '0', '0', '0', '0', '0', null, '', '0.00', '0.00', '', '', '', '-1', '', '', '', '', '0', '0', '0', '0', '0', '', '0', '0', '0', null, '0', '0', null, '0', null, null, '0.00', '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', null, null, null, '0', null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', null, null, null, '0', '0', '');

-- ----------------------------
-- Table structure for ims_ewei_shop_member_address
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_address`;
CREATE TABLE `ims_ewei_shop_member_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(50) DEFAULT '0',
  `realname` varchar(20) DEFAULT '',
  `mobile` varchar(11) DEFAULT '',
  `province` varchar(30) DEFAULT '',
  `city` varchar(30) DEFAULT '',
  `area` varchar(30) DEFAULT '',
  `address` varchar(300) DEFAULT '',
  `isdefault` tinyint(1) DEFAULT '0',
  `zipcode` varchar(255) DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `street` varchar(50) NOT NULL DEFAULT '',
  `datavalue` varchar(50) NOT NULL DEFAULT '',
  `streetdatavalue` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_isdefault` (`isdefault`),
  KEY `idx_deleted` (`deleted`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_member_cart
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_cart`;
CREATE TABLE `ims_ewei_shop_member_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(100) DEFAULT '',
  `goodsid` int(11) DEFAULT '0',
  `total` int(11) DEFAULT '0',
  `marketprice` decimal(10,2) DEFAULT '0.00',
  `deleted` tinyint(1) DEFAULT '0',
  `optionid` int(11) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `diyformdataid` int(11) DEFAULT '0',
  `diyformdata` text,
  `diyformfields` text,
  `diyformid` int(11) DEFAULT '0',
  `selected` tinyint(1) DEFAULT '1',
  `merchid` int(11) DEFAULT '0',
  `selectedadd` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_goodsid` (`goodsid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_deleted` (`deleted`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_member_cart
-- ----------------------------
INSERT INTO `ims_ewei_shop_member_cart` VALUES ('63', '3', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '217', '1', '159.00', '0', '0', '1493793402', '0', 'false', 'a:0:{}', '0', '1', '0', '1');

-- ----------------------------
-- Table structure for ims_ewei_shop_member_favorite
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_favorite`;
CREATE TABLE `ims_ewei_shop_member_favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `goodsid` int(10) DEFAULT '0',
  `openid` varchar(50) DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_goodsid` (`goodsid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_deleted` (`deleted`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_member_favorite
-- ----------------------------
INSERT INTO `ims_ewei_shop_member_favorite` VALUES ('26', '3', '226', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1493796405', '0', '0');
INSERT INTO `ims_ewei_shop_member_favorite` VALUES ('27', '3', '224', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1494130722', '0', '0');
INSERT INTO `ims_ewei_shop_member_favorite` VALUES ('28', '3', '219', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1494135661', '0', '0');

-- ----------------------------
-- Table structure for ims_ewei_shop_member_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_group`;
CREATE TABLE `ims_ewei_shop_member_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `groupname` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_member_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_member_history
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_history`;
CREATE TABLE `ims_ewei_shop_member_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `goodsid` int(10) DEFAULT '0',
  `openid` varchar(50) DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `times` int(11) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_goodsid` (`goodsid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_deleted` (`deleted`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM AUTO_INCREMENT=2265 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_member_history
-- ----------------------------
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2234', '3', '217', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1493793398', '3', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2235', '3', '226', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1493794302', '23', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2236', '3', '225', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1493794314', '5', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2237', '3', '226', '', '0', '1493796322', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2238', '3', '226', '', '0', '1493796354', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2239', '3', '225', '', '0', '1493797351', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2240', '3', '225', '', '0', '1493797359', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2241', '3', '226', '', '0', '1493797404', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2242', '3', '226', '', '0', '1493797420', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2243', '3', '226', '', '0', '1493797432', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2244', '3', '225', '', '0', '1493797483', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2245', '3', '225', '', '0', '1493801392', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2246', '3', '226', '', '0', '1494072817', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2247', '3', '222', '', '0', '1494072821', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2248', '3', '225', '', '0', '1494129212', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2249', '3', '226', '', '0', '1494129600', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2250', '3', '226', '', '0', '1494129605', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2251', '3', '220', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1494130461', '3', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2252', '3', '223', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1494130510', '3', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2253', '3', '222', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1494130581', '2', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2254', '3', '224', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1494130719', '3', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2255', '3', '210', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1494131457', '3', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2256', '3', '219', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1494135656', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2257', '3', '247', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1494136450', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2258', '3', '250', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1494138454', '15', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2259', '3', '204', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1494138795', '2', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2260', '3', '229', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1494141385', '7', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2261', '3', '230', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1494214239', '2', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2262', '3', '237', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1494214284', '4', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2263', '3', '203', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1494214328', '1', '0');
INSERT INTO `ims_ewei_shop_member_history` VALUES ('2264', '3', '202', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', '1494217506', '1', '0');

-- ----------------------------
-- Table structure for ims_ewei_shop_member_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_level`;
CREATE TABLE `ims_ewei_shop_member_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `level` int(11) DEFAULT '0',
  `levelname` varchar(50) DEFAULT '',
  `ordermoney` decimal(10,2) DEFAULT '0.00',
  `ordercount` int(10) DEFAULT '0',
  `discount` decimal(10,2) DEFAULT '0.00',
  `enabled` tinyint(3) DEFAULT '0',
  `enabledadd` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_member_level
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_member_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_log`;
CREATE TABLE `ims_ewei_shop_member_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `type` tinyint(3) DEFAULT NULL,
  `logno` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `money` decimal(10,2) DEFAULT '0.00',
  `rechargetype` varchar(255) DEFAULT '',
  `transid` varchar(255) DEFAULT '',
  `gives` decimal(10,2) DEFAULT NULL,
  `couponid` int(11) DEFAULT '0',
  `isborrow` tinyint(3) DEFAULT '0',
  `borrowopenid` varchar(100) DEFAULT '',
  `realmoney` decimal(10,2) DEFAULT '0.00',
  `charge` decimal(10,2) DEFAULT '0.00',
  `deductionmoney` decimal(10,2) DEFAULT '0.00',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `apppay` tinyint(3) NOT NULL DEFAULT '0',
  `alipay` varchar(50) NOT NULL DEFAULT '',
  `bankname` varchar(50) NOT NULL DEFAULT '',
  `bankcard` varchar(50) NOT NULL DEFAULT '',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `applytype` tinyint(3) NOT NULL DEFAULT '0',
  `sendmoney` decimal(10,2) DEFAULT '0.00',
  `senddata` text,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_type` (`type`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_member_log
-- ----------------------------
INSERT INTO `ims_ewei_shop_member_log` VALUES ('106', '3', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '0', 'RC20170505123714930828', '会员充值', '1493959034', '1', '209.00', 'system', '', null, '0', '0', '', '0.00', '0.00', '0.00', '', '0', '', '', '', '', '0', '0.00', null);

-- ----------------------------
-- Table structure for ims_ewei_shop_member_message_template
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_message_template`;
CREATE TABLE `ims_ewei_shop_member_message_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `template_id` varchar(255) DEFAULT '',
  `first` text NOT NULL,
  `firstcolor` varchar(255) DEFAULT '',
  `data` text NOT NULL,
  `remark` text NOT NULL,
  `remarkcolor` varchar(255) DEFAULT '',
  `url` varchar(255) NOT NULL,
  `createtime` int(11) DEFAULT '0',
  `sendtimes` int(11) DEFAULT '0',
  `sendcount` int(11) DEFAULT '0',
  `typecode` varchar(30) DEFAULT '',
  `messagetype` tinyint(1) DEFAULT '0',
  `send_desc` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_member_message_template
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_member_message_template_default
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_message_template_default`;
CREATE TABLE `ims_ewei_shop_member_message_template_default` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typecode` varchar(255) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `templateid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_member_message_template_default
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_member_message_template_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_message_template_type`;
CREATE TABLE `ims_ewei_shop_member_message_template_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `typecode` varchar(255) DEFAULT NULL,
  `templatecode` varchar(255) DEFAULT NULL,
  `templateid` varchar(255) DEFAULT NULL,
  `templatename` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `showtotaladd` tinyint(1) DEFAULT '0',
  `typegroup` varchar(255) DEFAULT '',
  `groupname` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_member_message_template_type
-- ----------------------------
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('1', '订单付款通知', 'saler_pay', 'OPENTM405584202', 'xldHFTObiLLm7AK544PzW4bFJGgbS0o8Po4cXOgYEis', '订单付款通知', '{{first.DATA}}订单编号：{{keyword1.DATA}}商品名称：{{keyword2.DATA}}商品数量：{{keyword3.DATA}}支付金额：{{keyword4.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('2', '自提订单提交成功通知', 'carrier', 'OPENTM201594720', 'W6-XbT9l2Wb9FUUISss9yVZdPU8iEmEes9IZfvNZnbc', '订单付款通知', '{{first.DATA}}自提码：{{keyword1.DATA}}商品详情：{{keyword2.DATA}}提货地址：{{keyword3.DATA}}提货时间：{{keyword4.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('3', '订单取消通知', 'cancel', 'OPENTM201764653', 'EA6fL2052fvAs7F9w0Dx_UGbVuXmDFqLcrdT4IukWEY', '订单关闭提醒', '{{first.DATA}}订单商品：{{keyword1.DATA}}订单编号：{{keyword2.DATA}}下单时间：{{keyword3.DATA}}订单金额：{{keyword4.DATA}}关闭时间：{{keyword5.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('4', '订单即将取消通知', 'willcancel', 'OPENTM201764653', 'EA6fL2052fvAs7F9w0Dx_UGbVuXmDFqLcrdT4IukWEY', '订单关闭提醒', '{{first.DATA}}订单商品：{{keyword1.DATA}}订单编号：{{keyword2.DATA}}下单时间：{{keyword3.DATA}}订单金额：{{keyword4.DATA}}关闭时间：{{keyword5.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('5', '订单支付成功通知', 'pay', 'OPENTM405584202', 'xldHFTObiLLm7AK544PzW4bFJGgbS0o8Po4cXOgYEis', '订单支付通知', '{{first.DATA}}订单编号：{{keyword1.DATA}}商品名称：{{keyword2.DATA}}商品数量：{{keyword3.DATA}}支付金额：{{keyword4.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('6', '订单发货通知', 'send', 'OPENTM401874827', 'c0Db6XJBYJ0PcdDyDR5YsoGKy6zfvnQrNM97Ml2hBt4', '订单发货通知', '{{first.DATA}}订单编号：{{keyword1.DATA}}快递公司：{{keyword2.DATA}}快递单号：{{keyword3.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('7', '自动发货通知(虚拟物品及卡密)', 'virtualsend', 'OPENTM207793687', 'c2kQ5Pf7QkBUXhAVQRGpRusO1BS2uu_IBjPlIZ7IbYo', '自动发货通知', '{{first.DATA}}商品名称：{{keyword1.DATA}}订单号：{{keyword2.DATA}}订单金额：{{keyword3.DATA}}卡密信息：{{keyword4.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('8', '订单状态更新(修改收货地址)(修改价格)', 'orderstatus', 'TM00017', 'v6w5z7I8FMki08ndnGnfHSyx46eyYq9m_cIZUcvwCgU', '订单付款通知', '{{first.DATA}}订单编号: {{OrderSn.DATA}}订单状态: {{OrderStatus.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('9', '退款成功通知', 'refund1', 'TM00430', 'ez-VqnyVFEX6msJfoegrwMK2qZ6Va02sbOWvaHIMFNw', '退款成功通知', '{{first.DATA}}退款金额：{{orderProductPrice.DATA}}商品详情：{{orderProductName.DATA}}订单编号：{{orderName.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('10', '换货成功通知', 'refund3', 'OPENTM200605630', 'uS1mhnM85BtUum0s5xmlfEhnDGupvYqUkjK0A5o0sb8', '任务处理通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('11', '退款申请驳回通知', 'refund2', 'OPENTM200605630', 'uS1mhnM85BtUum0s5xmlfEhnDGupvYqUkjK0A5o0sb8', '任务处理通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('12', '充值成功通知', 'recharge_ok', 'OPENTM207727673', 'PWycmpCcbBEOuB99kZK6Lb_S_Ve6rZoigooR8lHtRHk', '充值成功提醒', '{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('13', '提现成功通知', 'withdraw_ok', 'OPENTM207422808', 'dpgcRnw1OrF_Beo7kgkK_0ThxcEY3nxpGHUPZ9Q4Yt0', '提现通知', '{{first.DATA}}申请提现金额：{{keyword1.DATA}}取提现手续费：{{keyword2.DATA}}实际到账金额：{{keyword3.DATA}}提现渠道：{{keyword4.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('14', '会员升级通知(任务处理通知)', 'upgrade', 'OPENTM200605630', 'UhLLmFRFoJB21zWe8Ue6s2Wbs6-hwAIcywjXFPEgAfk', '任务处理通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('15', '充值成功通知（后台管理员手动）', 'backrecharge_ok', 'OPENTM207727673', '8cH0W4PS46ttwb0NKaOsWlZXzp68pFkvhmz8Cx1TFYI', '充值成功提醒', '{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('16', '积分变动提醒', 'backpoint_ok', 'OPENTM207509450', 't4X8tcZsZRfiLaxvlZSd9QTgmQTZRpy110DgoJeu4DU', '积分变动提醒', '{{first.DATA}}获得时间：{{keyword1.DATA}}获得积分：{{keyword2.DATA}}获得原因：{{keyword3.DATA}}当前积分：{{keyword4.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('17', '换货发货通知', 'refund4', 'OPENTM401874827', 'c0Db6XJBYJ0PcdDyDR5YsoGKy6zfvnQrNM97Ml2hBt4', '订单发货通知', '{{first.DATA}}订单编号：{{keyword1.DATA}}快递公司：{{keyword2.DATA}}快递单号：{{keyword3.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('18', '砍价活动通知', 'bargain_message', 'OPENTM200605630', null, '任务处理通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}', '0', 'bargain', '砍价消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('19', '拼团活动通知', 'groups', null, null, null, null, '0', 'groups', '拼团消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('20', '人人分销通知', 'commission', null, null, null, null, '0', 'commission', '分销消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('21', '商品付款通知', 'saler_goodpay', 'OPENTM200605630', '', '任务处理通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('22', '砍到底价通知', 'bargain_fprice', 'OPENTM200605630', '', '任务处理通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}', '0', 'bargain', '砍价消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('23', '订单收货通知(卖家)', 'saler_finish', 'OPENTM200605630', '', '任务处理通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}', '0', 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('24', '余额兑换成功通知', 'exchange_balance', 'OPENTM207727673', '', '充值成功提醒', '{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}', '0', 'exchange', '兑换中心消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('25', '积分兑换成功通知', 'exchange_score', 'OPENTM207509450', '', '积分变动提醒', '{{first.DATA}}获得时间：{{keyword1.DATA}}获得积分：{{keyword2.DATA}}获得原因：{{keyword3.DATA}}当前积分：{{keyword4.DATA}}{{remark.DATA}}', '0', 'exchange', '兑换中心消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES ('26', '兑换中心余额充值通知', 'exchange_recharge', 'OPENTM207727673', '', '充值成功提醒', '{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}', '0', 'exchange', '兑换中心消息通知');

-- ----------------------------
-- Table structure for ims_ewei_shop_member_printer
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_printer`;
CREATE TABLE `ims_ewei_shop_member_printer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `type` tinyint(3) DEFAULT '0',
  `print_data` text,
  `createtime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`) USING BTREE,
  KEY `idx_createtime` (`createtime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_member_printer
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_member_printer_template
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_printer_template`;
CREATE TABLE `ims_ewei_shop_member_printer_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `type` tinyint(3) DEFAULT '0',
  `print_title` varchar(255) DEFAULT '',
  `print_style` varchar(255) DEFAULT '',
  `print_data` text,
  `code` varchar(500) DEFAULT '',
  `qrcode` varchar(500) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`) USING BTREE,
  KEY `idx_createtime` (`createtime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_member_printer_template
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_member_rank
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_rank`;
CREATE TABLE `ims_ewei_shop_member_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_member_rank
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_account`;
CREATE TABLE `ims_ewei_shop_merch_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `merchid` int(11) DEFAULT '0',
  `username` varchar(255) DEFAULT '',
  `pwd` varchar(255) DEFAULT '',
  `salt` varchar(255) DEFAULT '',
  `status` tinyint(3) DEFAULT '0',
  `perms` text,
  `isfounder` tinyint(3) DEFAULT '0',
  `lastip` varchar(255) DEFAULT '',
  `lastvisit` varchar(255) DEFAULT '',
  `roleid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_merchid` (`merchid`),
  KEY `idx_status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_account
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_adv`;
CREATE TABLE `ims_ewei_shop_merch_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `displayorder` int(11) DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_merchid` (`merchid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_adv
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_banner
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_banner`;
CREATE TABLE `ims_ewei_shop_merch_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `bannername` varchar(50) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_enabled` (`enabled`),
  KEY `idx_displayorder` (`displayorder`),
  KEY `idx_merchid` (`merchid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_banner
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_bill
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_bill`;
CREATE TABLE `ims_ewei_shop_merch_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `applyno` varchar(255) NOT NULL DEFAULT '',
  `merchid` int(11) NOT NULL DEFAULT '0',
  `orderids` text NOT NULL,
  `realprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `realpricerate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `finalprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payrateprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payrate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `applytime` int(11) NOT NULL DEFAULT '0',
  `checktime` int(11) NOT NULL DEFAULT '0',
  `paytime` int(11) NOT NULL DEFAULT '0',
  `invalidtime` int(11) NOT NULL DEFAULT '0',
  `refusetime` int(11) NOT NULL DEFAULT '0',
  `remark` text NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `ordernum` int(11) NOT NULL DEFAULT '0',
  `orderprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `passrealprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `passrealpricerate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `passorderids` text NOT NULL,
  `passordernum` int(11) NOT NULL DEFAULT '0',
  `passorderprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `alipay` varchar(50) NOT NULL DEFAULT '',
  `bankname` varchar(50) NOT NULL DEFAULT '',
  `bankcard` varchar(50) NOT NULL DEFAULT '',
  `applyrealname` varchar(50) NOT NULL DEFAULT '',
  `applytype` tinyint(3) NOT NULL DEFAULT '0',
  `handpay` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_merchid` (`merchid`),
  KEY `idx_status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_bill
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_billo
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_billo`;
CREATE TABLE `ims_ewei_shop_merch_billo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `billid` int(11) NOT NULL DEFAULT '0',
  `orderid` int(11) NOT NULL DEFAULT '0',
  `ordermoney` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_billo
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_category`;
CREATE TABLE `ims_ewei_shop_merch_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `catename` varchar(255) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `thumb` varchar(500) DEFAULT '',
  `isrecommand` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_category_swipe
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_category_swipe`;
CREATE TABLE `ims_ewei_shop_merch_category_swipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `thumb` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_category_swipe
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_clearing
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_clearing`;
CREATE TABLE `ims_ewei_shop_merch_clearing` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `merchid` int(11) NOT NULL DEFAULT '0',
  `clearno` varchar(64) NOT NULL DEFAULT '',
  `goodsprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dispatchprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deductprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deductcredit2` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discountprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deductenough` decimal(10,2) NOT NULL DEFAULT '0.00',
  `merchdeductenough` decimal(10,2) NOT NULL DEFAULT '0.00',
  `isdiscountprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `realprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `realpricerate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `finalprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `remark` varchar(2000) NOT NULL DEFAULT '',
  `paytime` int(11) NOT NULL DEFAULT '0',
  `payrate` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `merchid` (`merchid`),
  KEY `starttime` (`starttime`),
  KEY `endtime` (`endtime`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_clearing
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_group`;
CREATE TABLE `ims_ewei_shop_merch_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `groupname` varchar(255) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `isdefault` tinyint(1) DEFAULT '0',
  `goodschecked` tinyint(1) DEFAULT '0',
  `commissionchecked` tinyint(1) DEFAULT '0',
  `changepricechecked` tinyint(1) DEFAULT '0',
  `finishchecked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_nav
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_nav`;
CREATE TABLE `ims_ewei_shop_merch_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `navname` varchar(255) DEFAULT '',
  `icon` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_status` (`status`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_merchid` (`merchid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_nav
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_notice`;
CREATE TABLE `ims_ewei_shop_merch_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `detail` text,
  `status` tinyint(3) DEFAULT '0',
  `createtime` int(11) DEFAULT NULL,
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_merchid` (`merchid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_notice
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_perm_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_perm_log`;
CREATE TABLE `ims_ewei_shop_merch_perm_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT '',
  `op` text,
  `ip` varchar(255) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_merchid` (`merchid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=489 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_perm_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_perm_role
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_perm_role`;
CREATE TABLE `ims_ewei_shop_merch_perm_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  `rolename` varchar(255) DEFAULT '',
  `status` tinyint(3) DEFAULT '0',
  `perms` text,
  `deleted` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_status` (`status`),
  KEY `idx_deleted` (`deleted`),
  KEY `merchid` (`merchid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_perm_role
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_reg
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_reg`;
CREATE TABLE `ims_ewei_shop_merch_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `merchname` varchar(255) DEFAULT '',
  `salecate` varchar(255) DEFAULT '',
  `desc` varchar(500) DEFAULT '',
  `realname` varchar(255) DEFAULT '',
  `mobile` varchar(255) DEFAULT '',
  `status` tinyint(3) DEFAULT '0',
  `diyformdata` text,
  `diyformfields` text,
  `applytime` int(11) DEFAULT '0',
  `reason` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_reg
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_saler
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_saler`;
CREATE TABLE `ims_ewei_shop_merch_saler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeid` int(11) DEFAULT '0',
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `status` tinyint(3) DEFAULT '0',
  `salername` varchar(255) DEFAULT '',
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_storeid` (`storeid`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_merchid` (`merchid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_saler
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_store
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_store`;
CREATE TABLE `ims_ewei_shop_merch_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `storename` varchar(255) DEFAULT '',
  `address` varchar(255) DEFAULT '',
  `tel` varchar(255) DEFAULT '',
  `lat` varchar(255) DEFAULT '',
  `lng` varchar(255) DEFAULT '',
  `status` tinyint(3) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `realname` varchar(255) DEFAULT '',
  `mobile` varchar(255) DEFAULT '',
  `fetchtime` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `saletime` varchar(255) DEFAULT '',
  `desc` text,
  `displayorder` int(11) DEFAULT '0',
  `commission_total` decimal(10,2) DEFAULT NULL,
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_status` (`status`),
  KEY `idx_merchid` (`merchid`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_store
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_user`;
CREATE TABLE `ims_ewei_shop_merch_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `regid` int(11) DEFAULT '0',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `groupid` int(11) DEFAULT '0',
  `merchno` varchar(255) NOT NULL DEFAULT '',
  `merchname` varchar(255) NOT NULL DEFAULT '',
  `salecate` varchar(255) NOT NULL DEFAULT '',
  `desc` varchar(500) NOT NULL DEFAULT '',
  `realname` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(3) DEFAULT '0',
  `accounttime` int(11) DEFAULT '0',
  `diyformdata` text,
  `diyformfields` text,
  `applytime` int(11) DEFAULT '0',
  `accounttotal` int(11) DEFAULT '0',
  `remark` text,
  `jointime` int(11) DEFAULT '0',
  `accountid` int(11) DEFAULT '0',
  `sets` text,
  `logo` varchar(255) NOT NULL DEFAULT '',
  `payopenid` varchar(32) NOT NULL DEFAULT '',
  `payrate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `isrecommand` tinyint(1) DEFAULT '0',
  `cateid` int(11) DEFAULT '0',
  `address` varchar(255) DEFAULT '',
  `tel` varchar(255) DEFAULT '',
  `lat` varchar(255) DEFAULT '',
  `lng` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_status` (`status`),
  KEY `idx_groupid` (`groupid`),
  KEY `idx_regid` (`regid`),
  KEY `idx_cateid` (`cateid`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_merch_user
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_multi_shop
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_multi_shop`;
CREATE TABLE `ims_ewei_shop_multi_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `company` varchar(255) DEFAULT '',
  `sales` varchar(255) DEFAULT '',
  `starttime` int(11) DEFAULT '0',
  `endtime` int(11) DEFAULT '0',
  `applytime` int(11) DEFAULT '0',
  `jointime` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `refusecontent` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_multi_shop
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_nav
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_nav`;
CREATE TABLE `ims_ewei_shop_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `navname` varchar(255) DEFAULT '',
  `icon` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `iswxapp` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_status` (`status`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_nav
-- ----------------------------
INSERT INTO `ims_ewei_shop_nav` VALUES ('15', '3', '京东超市', 'images/3/2017/05/kU0NdFaN2dfBSATZMQuUcSM0FZT0Sb.png', '', '0', '1', '0');
INSERT INTO `ims_ewei_shop_nav` VALUES ('16', '3', '全球购', 'images/3/2017/05/F7C57f7vETSe4F7Q77s7sV19cmeY57.png', '', '0', '1', '0');
INSERT INTO `ims_ewei_shop_nav` VALUES ('17', '3', '服装城', 'images/3/2017/05/e8Fmm0K7Kfmk7bV09v8q8G8VQ8B78S.png', '', '0', '1', '0');
INSERT INTO `ims_ewei_shop_nav` VALUES ('18', '3', '京东生鲜', 'images/3/2017/05/Igq3YboGqQGUj3YGzZG3GQGgoZ7PBz.png', '', '0', '1', '0');

-- ----------------------------
-- Table structure for ims_ewei_shop_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_notice`;
CREATE TABLE `ims_ewei_shop_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `detail` text,
  `status` tinyint(3) DEFAULT '0',
  `createtime` int(11) DEFAULT NULL,
  `shopid` int(11) DEFAULT '0',
  `iswxapp` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_notice
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order`;
CREATE TABLE `ims_ewei_shop_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(50) DEFAULT '',
  `agentid` int(11) DEFAULT '0',
  `ordersn` varchar(30) DEFAULT '',
  `price` decimal(10,2) DEFAULT '0.00',
  `goodsprice` decimal(10,2) DEFAULT '0.00',
  `discountprice` decimal(10,2) DEFAULT '0.00',
  `status` tinyint(3) DEFAULT '0',
  `paytype` tinyint(1) DEFAULT '0',
  `transid` varchar(30) DEFAULT '0',
  `remark` varchar(1000) DEFAULT '',
  `addressid` int(11) DEFAULT '0',
  `dispatchprice` decimal(10,2) DEFAULT '0.00',
  `dispatchid` int(10) DEFAULT '0',
  `createtime` int(10) DEFAULT NULL,
  `dispatchtype` tinyint(3) DEFAULT '0',
  `carrier` text,
  `refundid` int(11) DEFAULT '0',
  `iscomment` tinyint(3) DEFAULT '0',
  `creditadd` tinyint(3) DEFAULT '0',
  `deleted` tinyint(3) DEFAULT '0',
  `userdeleted` tinyint(3) DEFAULT '0',
  `finishtime` int(11) DEFAULT '0',
  `paytime` int(11) DEFAULT '0',
  `expresscom` varchar(30) NOT NULL DEFAULT '',
  `expresssn` varchar(50) NOT NULL DEFAULT '',
  `express` varchar(255) DEFAULT '',
  `sendtime` int(11) DEFAULT '0',
  `fetchtime` int(11) DEFAULT '0',
  `cash` tinyint(3) DEFAULT '0',
  `canceltime` int(11) DEFAULT NULL,
  `cancelpaytime` int(11) DEFAULT '0',
  `refundtime` int(11) DEFAULT '0',
  `isverify` tinyint(3) DEFAULT '0',
  `verified` tinyint(3) DEFAULT '0',
  `verifyopenid` varchar(255) DEFAULT '',
  `verifytime` int(11) DEFAULT '0',
  `verifycode` varchar(255) DEFAULT '',
  `verifystoreid` int(11) DEFAULT '0',
  `deductprice` decimal(10,2) DEFAULT '0.00',
  `deductcredit` int(10) DEFAULT '0',
  `deductcredit2` decimal(10,2) DEFAULT '0.00',
  `deductenough` decimal(10,2) DEFAULT '0.00',
  `virtual` int(11) DEFAULT '0',
  `virtual_info` text,
  `virtual_str` text,
  `address` text,
  `sysdeleted` tinyint(3) DEFAULT '0',
  `ordersn2` int(11) DEFAULT '0',
  `changeprice` decimal(10,2) DEFAULT '0.00',
  `changedispatchprice` decimal(10,2) DEFAULT '0.00',
  `oldprice` decimal(10,2) DEFAULT '0.00',
  `olddispatchprice` decimal(10,2) DEFAULT '0.00',
  `isvirtual` tinyint(3) DEFAULT '0',
  `couponid` int(11) DEFAULT '0',
  `couponprice` decimal(10,2) DEFAULT '0.00',
  `diyformdata` text,
  `diyformfields` text,
  `diyformid` int(11) DEFAULT '0',
  `storeid` int(11) DEFAULT '0',
  `closereason` text,
  `remarksaler` text,
  `printstate` tinyint(1) DEFAULT '0',
  `printstate2` tinyint(1) DEFAULT '0',
  `address_send` text,
  `refundstate` tinyint(3) DEFAULT '0',
  `remarkclose` text,
  `remarksend` text,
  `ismr` int(1) NOT NULL DEFAULT '0',
  `isdiscountprice` decimal(10,2) DEFAULT '0.00',
  `isvirtualsend` tinyint(1) DEFAULT '0',
  `virtualsend_info` text,
  `verifyinfo` text,
  `verifytype` tinyint(1) DEFAULT '0',
  `verifycodes` text,
  `merchid` int(11) DEFAULT '0',
  `invoicename` varchar(255) DEFAULT '',
  `ismerch` tinyint(1) DEFAULT '0',
  `parentid` int(11) DEFAULT '0',
  `isparent` tinyint(1) DEFAULT '0',
  `grprice` decimal(10,2) DEFAULT '0.00',
  `merchshow` tinyint(1) DEFAULT '0',
  `merchdeductenough` decimal(10,2) DEFAULT '0.00',
  `couponmerchid` int(11) DEFAULT '0',
  `isglobonus` tinyint(3) DEFAULT '0',
  `merchapply` tinyint(1) DEFAULT '0',
  `isabonus` tinyint(3) DEFAULT '0',
  `isborrow` tinyint(3) DEFAULT '0',
  `borrowopenid` varchar(100) DEFAULT '',
  `merchisdiscountprice` decimal(10,2) DEFAULT '0.00',
  `apppay` tinyint(3) NOT NULL DEFAULT '0',
  `authorid` int(11) DEFAULT '0',
  `isauthor` tinyint(1) DEFAULT '0',
  `coupongoodprice` decimal(10,2) DEFAULT '1.00',
  `buyagainprice` decimal(10,2) DEFAULT '0.00',
  `ispackage` tinyint(3) DEFAULT '0',
  `packageid` int(11) DEFAULT '0',
  `taskdiscountprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `seckilldiscountprice` decimal(10,2) DEFAULT '0.00',
  `verifyendtime` int(11) NOT NULL DEFAULT '0',
  `willcancelmessage` tinyint(1) DEFAULT '0',
  `sendtype` tinyint(3) NOT NULL DEFAULT '0',
  `lotterydiscountprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_shareid` (`agentid`),
  KEY `idx_status` (`status`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_refundid` (`refundid`),
  KEY `idx_paytime` (`paytime`),
  KEY `idx_finishtime` (`finishtime`),
  KEY `idx_merchid` (`merchid`)
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_order_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_comment`;
CREATE TABLE `ims_ewei_shop_order_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `orderid` int(11) DEFAULT '0',
  `goodsid` int(11) DEFAULT '0',
  `openid` varchar(50) DEFAULT '',
  `nickname` varchar(50) DEFAULT '',
  `headimgurl` varchar(255) DEFAULT '',
  `level` tinyint(3) DEFAULT '0',
  `content` varchar(255) DEFAULT '',
  `images` text,
  `createtime` int(11) DEFAULT '0',
  `deleted` tinyint(3) DEFAULT '0',
  `append_content` varchar(255) DEFAULT '',
  `append_images` text,
  `reply_content` varchar(255) DEFAULT '',
  `reply_images` text,
  `append_reply_content` varchar(255) DEFAULT '',
  `append_reply_images` text,
  `istop` tinyint(3) DEFAULT '0',
  `checked` tinyint(3) NOT NULL DEFAULT '0',
  `replychecked` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_goodsid` (`goodsid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_orderid` (`orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_order_comment
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_goods`;
CREATE TABLE `ims_ewei_shop_order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `orderid` int(11) DEFAULT '0',
  `goodsid` int(11) DEFAULT '0',
  `price` decimal(10,2) DEFAULT '0.00',
  `total` int(11) DEFAULT '1',
  `optionid` int(10) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `optionname` text,
  `commission1` text,
  `applytime1` int(11) DEFAULT '0',
  `checktime1` int(10) DEFAULT '0',
  `paytime1` int(11) DEFAULT '0',
  `invalidtime1` int(11) DEFAULT '0',
  `deletetime1` int(11) DEFAULT '0',
  `status1` tinyint(3) DEFAULT '0',
  `content1` text,
  `commission2` text,
  `applytime2` int(11) DEFAULT '0',
  `checktime2` int(10) DEFAULT '0',
  `paytime2` int(11) DEFAULT '0',
  `invalidtime2` int(11) DEFAULT '0',
  `deletetime2` int(11) DEFAULT '0',
  `status2` tinyint(3) DEFAULT '0',
  `content2` text,
  `commission3` text,
  `applytime3` int(11) DEFAULT '0',
  `checktime3` int(10) DEFAULT '0',
  `paytime3` int(11) DEFAULT '0',
  `invalidtime3` int(11) DEFAULT '0',
  `deletetime3` int(11) DEFAULT '0',
  `status3` tinyint(3) DEFAULT '0',
  `content3` text,
  `realprice` decimal(10,2) DEFAULT '0.00',
  `goodssn` varchar(255) DEFAULT '',
  `productsn` varchar(255) DEFAULT '',
  `nocommission` tinyint(3) DEFAULT '0',
  `changeprice` decimal(10,2) DEFAULT '0.00',
  `oldprice` decimal(10,2) DEFAULT '0.00',
  `commissions` text,
  `diyformdata` text,
  `diyformfields` text,
  `diyformdataid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `diyformid` int(11) DEFAULT '0',
  `rstate` tinyint(3) DEFAULT '0',
  `refundtime` int(11) DEFAULT '0',
  `printstate` int(11) NOT NULL DEFAULT '0',
  `printstate2` int(11) NOT NULL DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  `parentorderid` int(11) DEFAULT '0',
  `merchsale` tinyint(3) NOT NULL DEFAULT '0',
  `isdiscountprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `canbuyagain` tinyint(1) DEFAULT '0',
  `seckill` tinyint(3) DEFAULT '0',
  `seckill_taskid` int(11) DEFAULT '0',
  `seckill_roomid` int(11) DEFAULT '0',
  `seckill_timeid` int(11) DEFAULT '0',
  `is_make` tinyint(1) DEFAULT '0',
  `sendtype` tinyint(3) NOT NULL DEFAULT '0',
  `expresscom` varchar(30) NOT NULL,
  `expresssn` varchar(50) NOT NULL,
  `express` varchar(255) NOT NULL,
  `sendtime` int(11) NOT NULL,
  `finishtime` int(11) NOT NULL,
  `remarksend` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_orderid` (`orderid`),
  KEY `idx_goodsid` (`goodsid`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_applytime1` (`applytime1`),
  KEY `idx_checktime1` (`checktime1`),
  KEY `idx_status1` (`status1`),
  KEY `idx_applytime2` (`applytime2`),
  KEY `idx_checktime2` (`checktime2`),
  KEY `idx_status2` (`status2`),
  KEY `idx_applytime3` (`applytime3`),
  KEY `idx_invalidtime1` (`invalidtime1`),
  KEY `idx_checktime3` (`checktime3`),
  KEY `idx_invalidtime2` (`invalidtime2`),
  KEY `idx_invalidtime3` (`invalidtime3`),
  KEY `idx_status3` (`status3`),
  KEY `idx_paytime1` (`paytime1`),
  KEY `idx_paytime2` (`paytime2`),
  KEY `idx_paytime3` (`paytime3`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_order_refund
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_refund`;
CREATE TABLE `ims_ewei_shop_order_refund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `orderid` int(11) DEFAULT '0',
  `refundno` varchar(255) DEFAULT '',
  `price` varchar(255) DEFAULT '',
  `reason` varchar(255) DEFAULT '',
  `images` text,
  `content` text,
  `createtime` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `reply` text,
  `refundtype` tinyint(3) DEFAULT '0',
  `realprice` decimal(10,2) DEFAULT '0.00',
  `refundtime` int(11) DEFAULT '0',
  `orderprice` decimal(10,2) DEFAULT '0.00',
  `applyprice` decimal(10,2) DEFAULT '0.00',
  `imgs` text,
  `rtype` tinyint(3) DEFAULT '0',
  `refundaddress` text,
  `message` text,
  `express` varchar(100) DEFAULT '',
  `expresscom` varchar(100) DEFAULT '',
  `expresssn` varchar(100) DEFAULT '',
  `operatetime` int(11) DEFAULT '0',
  `sendtime` int(11) DEFAULT '0',
  `returntime` int(11) DEFAULT '0',
  `rexpress` varchar(100) DEFAULT '',
  `rexpresscom` varchar(100) DEFAULT '',
  `rexpresssn` varchar(100) DEFAULT '',
  `refundaddressid` int(11) DEFAULT '0',
  `endtime` int(11) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_order_refund
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_package
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_package`;
CREATE TABLE `ims_ewei_shop_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `freight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `thumb` varchar(255) NOT NULL,
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `goodsid` varchar(255) NOT NULL,
  `cash` tinyint(3) NOT NULL DEFAULT '0',
  `share_title` varchar(255) NOT NULL,
  `share_icon` varchar(255) NOT NULL,
  `share_desc` varchar(500) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `deleted` tinyint(3) NOT NULL DEFAULT '0',
  `displayorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_package
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_package_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_package_goods`;
CREATE TABLE `ims_ewei_shop_package_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `option` varchar(255) NOT NULL,
  `goodssn` varchar(255) NOT NULL,
  `productsn` varchar(255) NOT NULL,
  `hasoption` tinyint(3) NOT NULL DEFAULT '0',
  `marketprice` decimal(10,2) DEFAULT '0.00',
  `packageprice` decimal(10,2) DEFAULT '0.00',
  `commission1` decimal(10,2) DEFAULT '0.00',
  `commission2` decimal(10,2) DEFAULT '0.00',
  `commission3` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_package_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_package_goods_option
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_package_goods_option`;
CREATE TABLE `ims_ewei_shop_package_goods_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `goodsid` int(11) NOT NULL DEFAULT '0',
  `optionid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `packageprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `marketprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `commission1` decimal(10,2) NOT NULL DEFAULT '0.00',
  `commission2` decimal(10,2) NOT NULL DEFAULT '0.00',
  `commission3` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_package_goods_option
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_perm_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_perm_log`;
CREATE TABLE `ims_ewei_shop_perm_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT '',
  `op` text,
  `createtime` int(11) DEFAULT '0',
  `ip` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_uniacid` (`uniacid`),
  FULLTEXT KEY `idx_type` (`type`),
  FULLTEXT KEY `idx_op` (`op`)
) ENGINE=MyISAM AUTO_INCREMENT=6901 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_perm_log
-- ----------------------------
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6711', '2', '3', '设置-短信提醒-短信模板库-添加', 'sysset.sms.temp.add', '添加短信模板 ID: 6 标题:  ', '1493783777', '::1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6712', '2', '3', '设置-全网通设置-修改', 'sysset.wap.edit', '修改WAP设置', '1493783850', '::1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6713', '2', '3', '设置-全网通设置-修改', 'sysset.wap.edit', '修改WAP设置', '1493783876', '::1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6714', '2', '3', '', 'shop.category.add', '添加分类 ID: 1174', '1493784816', '::1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6715', '2', '3', '会员管理-会员管理-修改', 'member.list.edit', '修改会员资料  ID: 2188 <br/> 会员信息:  oP5YGuOnVn4T12zhCHbtyQkrXjdY/王一翔//18189128369', '1493787172', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6716', '2', '3', '', 'sns.member.edit', '修改会员资料 ID: ', '1493787172', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6717', '2', '3', '会员管理-会员管理-修改', 'member.list.edit', '修改会员资料  ID: 2188 <br/> 会员信息:  oP5YGuOnVn4T12zhCHbtyQkrXjdY/王一翔//18189128369', '1493787241', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6718', '2', '3', '', 'sns.member.edit', '修改会员资料 ID: ', '1493787241', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6719', '2', '3', '', 'shop.category.add', '添加分类 ID: 1175', '1493791375', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6720', '2', '3', '', 'shop.category.add', '添加分类 ID: 1176', '1493791385', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6721', '2', '3', '', 'shop.category.add', '添加分类 ID: 1177', '1493791402', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6722', '2', '3', '', 'shop.category.add', '添加分类 ID: 1178', '1493791544', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6723', '2', '3', '商城管理-配送方式-修改', 'shop.dispatch.edit', '隐藏', '1493791552', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6724', '2', '3', '商城管理-配送方式-修改', 'shop.dispatch.edit', '隐藏', '1493791554', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6725', '2', '3', '商城管理-配送方式-修改', 'shop.dispatch.edit', '隐藏', '1493791565', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6726', '2', '3', '设置-分类层级-修改', 'sysset.category.edit', '修改系统设置-分类层级设置', '1493791573', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6727', '2', '3', '设置-分类层级-修改', 'sysset.category.edit', '修改系统设置-分类层级设置', '1493791586', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6728', '2', '3', '设置-分类层级-修改', 'sysset.category.edit', '修改系统设置-分类层级设置', '1493791622', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6729', '2', '3', '', 'shop.category.delete', '删除分类 ID: 1178 分类名称: T恤', '1493791646', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6730', '2', '3', '设置-分类层级-修改', 'sysset.category.edit', '修改系统设置-分类层级设置', '1493791656', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6731', '2', '3', '', 'shop.category.add', '添加分类 ID: 1179', '1493791697', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6732', '2', '3', '', 'shop.category.add', '添加分类 ID: 1180', '1493791750', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6733', '2', '3', '', 'shop.category.edit', '修改分类 ID: 1176', '1493791815', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6734', '2', '3', '', 'shop.category.add', '添加分类 ID: 1181', '1493791914', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6735', '2', '3', '', 'shop.category.add', '添加分类 ID: 1182', '1493791969', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6736', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11244404252', '1493792555', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6737', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10714642261', '1493792557', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6738', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11618919253', '1493792568', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6739', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10690942779', '1493792572', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6740', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11123713377', '1493792574', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6741', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11630976150', '1493792586', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6742', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:1468828743', '1493792598', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6743', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11585762811', '1493792641', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6744', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11255491612', '1493792645', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6745', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11302934209', '1493792647', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6746', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11233086394', '1493792649', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6747', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10220883969', '1493792651', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6748', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11096171544', '1493792660', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6749', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11061346614', '1493792664', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6750', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11241122346', '1493792743', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6751', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:12083008275', '1493792749', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6752', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10185715920', '1493792754', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6753', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:1153432771', '1493792762', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6754', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:12047599599', '1493792766', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6755', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11858599190', '1493792773', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6756', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11266530090', '1493792777', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6757', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11266536807', '1493792780', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6758', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792887', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6759', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792887', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6760', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792887', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6761', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792887', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6762', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792887', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6763', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792887', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6764', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792887', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6765', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792888', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6766', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792888', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6767', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792888', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6768', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792888', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6769', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792888', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6770', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792888', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6771', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792888', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6772', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792888', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6773', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792888', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6774', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792888', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6775', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792888', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6776', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792889', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6777', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792889', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6778', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792901', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6779', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493792901', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6780', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11628697549', '1493793311', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6781', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10065268825', '1493793316', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6782', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11828911943', '1493793334', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6783', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11117255000', '1493793342', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6784', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10569116585', '1493793345', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6785', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11146521668', '1493793353', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6786', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:1468198469', '1493793357', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6787', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493793370', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6788', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493793370', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6789', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493793370', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6790', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493793370', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6791', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493793370', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6792', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493793370', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6793', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1493793370', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6794', '2', '3', '', 'shop.category.edit', '修改分类 ID: 1179', '1493793511', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6795', '2', '3', '', 'shop.category.edit', '修改分类 ID: 1181', '1493793556', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6796', '2', '3', '', 'shop.category.edit', '修改分类 ID: 1180', '1493793589', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6797', '2', '3', '', 'shop.category.edit', '修改分类 ID: 1182', '1493793627', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6798', '2', '3', '商城管理-幻灯片-添加', 'shop.adv.add', '添加幻灯片 ID: 9', '1493793816', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6799', '2', '3', '商城管理-幻灯片-添加', 'shop.adv.add', '添加幻灯片 ID: 10', '1493793831', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6800', '2', '3', '商城管理-幻灯片-添加', 'shop.adv.add', '添加幻灯片 ID: 11', '1493793844', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6801', '2', '3', '商城管理-幻灯片-修改', 'shop.adv.edit', '隐藏', '1493793848', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6802', '2', '3', '商城管理-幻灯片-修改', 'shop.adv.edit', '隐藏', '1493793848', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6803', '2', '3', '商城管理-首页导航图标-添加', 'shop.nav.add', '添加首页导航 ID: 14', '1493793875', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6804', '2', '3', '商城管理-首页导航图标-删除', 'shop.nav.delete', '删除首页导航 ID: 14 标题: 导航1 ', '1493793972', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6805', '2', '3', '商城管理-首页导航图标-添加', 'shop.nav.add', '添加首页导航 ID: 15', '1493793990', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6806', '2', '3', '商城管理-首页导航图标-添加', 'shop.nav.add', '添加首页导航 ID: 16', '1493794005', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6807', '2', '3', '商城管理-首页导航图标-添加', 'shop.nav.add', '添加首页导航 ID: 17', '1493794023', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6808', '2', '3', '商城管理-首页导航图标-添加', 'shop.nav.add', '添加首页导航 ID: 18', '1493794039', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6809', '2', '3', '商城管理-首页导航图标-添加', 'shop.nav.add', '添加首页导航 ID: 19', '1493794075', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6810', '2', '3', '商城管理-首页导航图标-删除', 'shop.nav.delete', '删除首页导航 ID: 19 标题: 京东到家 ', '1493794086', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6811', '2', '3', '商城管理-首页广告-添加', 'shop.banner.add', '添加广告 ID: 4', '1493794139', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6812', '2', '3', '', 'shop.sort', '修改首页排版', '1493794238', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6813', '2', '3', '', 'shop.recommand', '修改首页推荐商品设置', '1493794264', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6814', '2', '3', '设置-模板设置-修改', 'sysset.templat.edit', '修改系统设置-模板设置', '1493806932', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6815', '2', '3', '设置-模板设置-修改', 'sysset.templat.edit', '修改系统设置-模板设置', '1493806951', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6816', '2', '3', '商城管理-配送方式-修改', 'shop.dispatch.edit', '隐藏', '1493881382', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6817', '2', '3', '商城管理-配送方式-修改', 'shop.dispatch.edit', '隐藏', '1493881384', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6818', '2', '3', '财务管理-充值-充值余额', 'finance.recharge.credit2', '充值余额: 209 <br/>会员信息: ID: 2188 /  oP5YGuOnVn4T12zhCHbtyQkrXjdY/王一翔//18189128369', '1493959035', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6819', '2', '3', '财务管理-充值-充值积分', 'finance.recharge.credit1', '充值积分: 208 <br/>会员信息: ID: 2188 /  oP5YGuOnVn4T12zhCHbtyQkrXjdY/王一翔//18189128369', '1493959047', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6820', '3', '5', '设置-短信提醒-短信模板库-添加', 'sysset.sms.temp.add', '添加短信模板 ID: 7 标题:  ', '1493966127', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6821', '3', '5', '设置-全网通设置-修改', 'sysset.wap.edit', '修改WAP设置', '1493966147', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6822', '3', '5', '会员管理-会员管理-修改', 'member.list.edit', '修改会员资料  ID: 2189 <br/> 会员信息:  o1jelwd721zK_A53PfLkesC0YvN0/王一翔//18189128369', '1493970087', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6823', '3', '5', '', 'sns.member.edit', '修改会员资料 ID: ', '1493970087', '127.0.0.1');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6824', '2', '3', '', 'shop.category.add', '添加分类 ID: 1183', '1494135748', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6825', '2', '3', '', 'shop.category.edit', '修改分类 ID: 1183', '1494135827', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6826', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10990219137', '1494136056', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6827', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11154605507', '1494136069', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6828', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10298172637', '1494136076', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6829', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:1276447665', '1494136078', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6830', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10495453724', '1494136085', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6831', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:1696470187', '1494136093', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6832', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10720206101', '1494136103', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6833', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10511895854', '1494136105', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6834', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10504716767', '1494136114', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6835', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:1057569392', '1494136119', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6836', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11170606815', '1494136127', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6837', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:1588117', '1494136134', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6838', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11243749534', '1494136136', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6839', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:1441652828', '1494136147', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6840', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10617869924', '1494136177', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6841', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11463803938', '1494136188', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6842', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:1672278668', '1494136199', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6843', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:1584959', '1494136205', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6844', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11666910819', '1494136206', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6845', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10685224966', '1494136216', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6846', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10286140643', '1494136217', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6847', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:1002762279', '1494136225', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6848', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:2552200', '1494136238', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6849', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10533138086', '1494136273', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6850', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:1398646579', '1494136282', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6851', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:10851355701', '1494136311', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6852', '2', '3', '', 'jingdong.main', '京东抓取宝贝 京东id:11594663113', '1494136327', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6853', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136338', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6854', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136338', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6855', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136338', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6856', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136338', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6857', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136338', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6858', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136338', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6859', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136338', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6860', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136338', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6861', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136338', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6862', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136338', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6863', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136338', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6864', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136339', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6865', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136339', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6866', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136339', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6867', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136339', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6868', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136339', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6869', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136339', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6870', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136339', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6871', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136339', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6872', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136339', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6873', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136344', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6874', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136344', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6875', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136344', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6876', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136345', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6877', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136345', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6878', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136345', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6879', '2', '3', '商品管理-修改', 'goods.edit', '下架', '1494136345', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6880', '2', '3', '', 'shop.recommand', '修改手机端商品组样式', '1494136376', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6881', '2', '3', '', 'shop.recommand', '修改手机端商品组样式', '1494136378', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6882', '2', '3', '', 'shop.sort', '修改首页排版', '1494136396', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6883', '2', '3', '', 'shop.recommand', '修改首页推荐商品设置', '1494136437', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6884', '2', '3', '', 'shop.recommand', '修改手机端商品组样式', '1494136444', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6885', '2', '3', '', 'shop.recommand', '修改首页推荐商品设置', '1494136445', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6886', '2', '3', '商城管理-首页魔方-修改', 'shop.cube.edit', '修改基本设置', '1494136567', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6887', '2', '3', '店铺装修-系统页面-添加', 'diypage.page.sys.add', '添加系统页面 id: 19  名称:【模板】系统模板01  关键字: ', '1494136720', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6888', '2', '3', '店铺装修-系统页面-编辑', 'diypage.page.sys.edit', '更新系统页面 id: 19  名称:【模板】系统模板01  关键字: ', '1494136748', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6889', '2', '3', '店铺装修-系统页面-编辑', 'diypage.page.sys.edit', '更新系统页面 id: 19  名称:【模板】系统模板01  关键字: ', '1494136755', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6890', '2', '3', '店铺装修-系统页面-编辑', 'diypage.page.sys.edit', '更新系统页面 id: 19  名称:【模板】系统模板01  关键字: ', '1494136878', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6891', '2', '3', '店铺装修-系统页面-编辑', 'diypage.page.sys.edit', '更新系统页面 id: 19  名称:【模板】系统模板01  关键字: ', '1494136919', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6892', '2', '3', '店铺装修-系统页面-编辑', 'diypage.page.sys.edit', '更新系统页面 id: 19  名称:【模板】系统模板01  关键字: ', '1494137033', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6893', '2', '3', '店铺装修-商城页面设置-页面设置-保存', 'diypage.shop.page.save', '保存商城 自定义页面: home=>19; member=>; detail=>; commission=>; creditshop=>; exchange=>; ', '1494137053', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6894', '2', '3', '店铺装修-系统页面-编辑', 'diypage.page.sys.edit', '更新系统页面 id: 19  名称:千叶商城  关键字: ', '1494137105', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6895', '2', '3', '店铺装修-系统页面-编辑', 'diypage.page.sys.edit', '更新系统页面 id: 19  名称:千叶商城  关键字: ', '1494137235', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6896', '2', '3', '店铺装修-系统页面-编辑', 'diypage.page.sys.edit', '更新系统页面 id: 19  名称:千叶商城  关键字: ', '1494137267', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6897', '2', '3', '店铺装修-商城页面设置-页面设置-保存', 'diypage.shop.page.save', '保存商城 自定义页面: home=>; member=>; detail=>; commission=>; creditshop=>; exchange=>; ', '1494137720', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6898', '2', '3', '店铺装修-商城页面设置-页面设置-保存', 'diypage.shop.page.save', '保存商城 自定义页面: home=>19; member=>; detail=>; commission=>; creditshop=>; exchange=>; ', '1494137727', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6899', '2', '3', '店铺装修-商城页面设置-页面设置-保存', 'diypage.shop.page.save', '保存商城 自定义页面: home=>; member=>; detail=>; commission=>; creditshop=>; exchange=>; ', '1494217290', '192.168.0.145');
INSERT INTO `ims_ewei_shop_perm_log` VALUES ('6900', '2', '3', '店铺装修-商城页面设置-页面设置-保存', 'diypage.shop.page.save', '保存商城 自定义页面: home=>19; member=>; detail=>; commission=>; creditshop=>; exchange=>; ', '1494217353', '192.168.0.145');

-- ----------------------------
-- Table structure for ims_ewei_shop_perm_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_perm_plugin`;
CREATE TABLE `ims_ewei_shop_perm_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(11) DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  `type` tinyint(3) DEFAULT '0',
  `plugins` text,
  `coms` text,
  `datas` text,
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_acid` (`acid`),
  KEY `idx_type` (`type`),
  KEY `idx_uniacid` (`acid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_perm_plugin
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_perm_role
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_perm_role`;
CREATE TABLE `ims_ewei_shop_perm_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `rolename` varchar(255) DEFAULT '',
  `status` tinyint(3) DEFAULT '0',
  `perms` text,
  `perms2` text,
  `deleted` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_status` (`status`),
  KEY `idx_deleted` (`deleted`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_perm_role
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_perm_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_perm_user`;
CREATE TABLE `ims_ewei_shop_perm_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  `username` varchar(255) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `roleid` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `perms` text,
  `perms2` text,
  `deleted` tinyint(3) DEFAULT '0',
  `realname` varchar(255) DEFAULT '',
  `mobile` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_uid` (`uid`),
  KEY `idx_roleid` (`roleid`),
  KEY `idx_status` (`status`),
  KEY `idx_deleted` (`deleted`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_perm_user
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_plugin`;
CREATE TABLE `ims_ewei_shop_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayorder` int(11) DEFAULT '0',
  `identity` varchar(50) DEFAULT '',
  `name` varchar(50) DEFAULT '',
  `version` varchar(10) DEFAULT '',
  `author` varchar(20) DEFAULT '',
  `status` int(11) DEFAULT '0',
  `category` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `desc` text,
  `iscom` tinyint(3) DEFAULT '0',
  `deprecated` tinyint(3) DEFAULT '0',
  `isv2` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_displayorder` (`displayorder`),
  KEY `idx_identity` (`identity`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_plugin
-- ----------------------------
INSERT INTO `ims_ewei_shop_plugin` VALUES ('1', '1', 'qiniu', '七牛存储', '1.0', '官方', '1', 'tool', '../addons/ewei_shopv2/static/images/qiniu.jpg', null, '1', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('2', '2', 'taobao', '商品助手', '1.0', '官方', '1', 'tool', '../addons/ewei_shopv2/static/images/taobao.jpg', '', '0', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('3', '3', 'commission', '人人分销', '1.0', '官方', '1', 'biz', '../addons/ewei_shopv2/static/images/commission.jpg', '', '0', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('4', '4', 'poster', '超级海报', '1.2', '官方', '1', 'sale', '../addons/ewei_shopv2/static/images/poster.jpg', '', '0', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('5', '5', 'verify', 'O2O核销', '1.0', '官方', '1', 'biz', '../addons/ewei_shopv2/static/images/verify.jpg', null, '1', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('6', '6', 'tmessage', '会员群发', '1.0', '官方', '1', 'tool', '../addons/ewei_shopv2/static/images/tmessage.jpg', null, '1', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('7', '7', 'perm', '分权系统', '1.0', '官方', '1', 'help', '../addons/ewei_shopv2/static/images/perm.jpg', null, '1', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('8', '8', 'sale', '营销宝', '1.0', '官方', '1', 'sale', '../addons/ewei_shopv2/static/images/sale.jpg', null, '1', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('9', '9', 'designer', '店铺装修V1', '1.0', '官方', '1', 'help', '../addons/ewei_shopv2/static/images/designer.jpg', null, '0', '1', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('10', '10', 'creditshop', '积分商城', '1.0', '官方', '1', 'biz', '../addons/ewei_shopv2/static/images/creditshop.jpg', '', '0', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('11', '11', 'virtual', '虚拟物品', '1.0', '官方', '1', 'biz', '../addons/ewei_shopv2/static/images/virtual.jpg', null, '1', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('12', '11', 'article', '文章营销', '1.0', '官方', '1', 'help', '../addons/ewei_shopv2/static/images/article.jpg', '', '0', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('13', '13', 'coupon', '超级券', '1.0', '官方', '1', 'sale', '../addons/ewei_shopv2/static/images/coupon.jpg', null, '1', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('14', '14', 'postera', '活动海报', '1.0', '官方', '1', 'sale', '../addons/ewei_shopv2/static/images/postera.jpg', '', '0', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('15', '16', 'system', '系统工具', '1.0', '官方', '0', 'help', '../addons/ewei_shopv2/static/images/system.jpg', null, '0', '1', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('16', '15', 'diyform', '自定表单', '1.0', '官方', '1', 'help', '../addons/ewei_shopv2/static/images/diyform.jpg', '', '0', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('17', '16', 'exhelper', '快递助手', '1.0', '官方', '1', 'help', '../addons/ewei_shopv2/static/images/exhelper.jpg', '', '0', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('18', '19', 'groups', '人人拼团', '1.0', '官方', '1', 'biz', '../addons/ewei_shopv2/static/images/groups.jpg', '', '0', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('19', '20', 'diypage', '店铺装修', '2.0', '官方', '1', 'help', '../addons/ewei_shopv2/static/images/designer.jpg', '', '0', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('20', '22', 'globonus', '全民股东', '1.0', '官方', '1', 'biz', '../addons/ewei_shopv2/static/images/globonus.jpg', '', '0', '0', '0');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('21', '23', 'merch', '多商户', '1.0', '官方', '1', 'biz', '../addons/ewei_shopv2/static/images/merch.jpg', '', '0', '0', '1');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('22', '26', 'qa', '帮助中心', '1.0', '官方', '1', 'help', '../addons/ewei_shopv2/static/images/qa.jpg', '', '0', '0', '1');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('24', '27', 'sms', '短信提醒', '1.0', '官方', '1', 'tool', '../addons/ewei_shopv2/static/images/sms.jpg', '', '1', '0', '1');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('25', '29', 'sign', '积分签到', '1.0', '官方', '1', 'tool', '../addons/ewei_shopv2/static/images/sign.jpg', '', '0', '0', '1');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('26', '30', 'sns', '全民社区', '1.0', '官方', '1', 'sale', '../addons/ewei_shopv2/static/images/sns.jpg', '', '0', '0', '1');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('27', '33', 'wap', '全网通', '1.0', '官方', '1', 'tool', '', '', '1', '0', '1');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('28', '34', 'h5app', 'H5APP', '1.0', '官方', '1', 'tool', '', '', '1', '0', '1');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('29', '26', 'abonus', '区域代理', '1.0', '官方', '1', 'biz', '../addons/ewei_shopv2/static/images/abonus.jpg', '', '0', '0', '1');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('30', '33', 'printer', '小票打印机', '1.0', '官方', '1', 'tool', '', '', '1', '0', '1');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('31', '34', 'bargain', '砍价活动', '1.0', '官方', '1', 'tool', '../addons/ewei_shopv2/static/images/bargain.jpg', '', '0', '0', '1');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('32', '35', 'task', '任务中心', '1.0', '官方', '1', 'sale', '../addons/ewei_shopv2/static/images/task.jpg', '', '0', '0', '1');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('33', '36', 'cashier', '收银台', '1.0', '官方', '1', 'biz', '../addons/ewei_shopv2/static/images/cashier.jpg', '', '0', '0', '1');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('34', '37', 'messages', '消息群发', '1.0', '官方', '1', 'tool', '../addons/ewei_shopv2/static/images/messages.jpg', '', '0', '0', '1');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('35', '38', 'seckill', '整点秒杀', '1.0', '官方', '1', 'sale', '../addons/ewei_shopv2/static/images/seckill.jpg', '', '0', '0', '1');
INSERT INTO `ims_ewei_shop_plugin` VALUES ('36', '39', 'exchange', '兑换中心', '1.0', '官方', '1', 'biz', '../addons/ewei_shopv2/static/images/exchange.jpg', '', '0', '0', '1');

-- ----------------------------
-- Table structure for ims_ewei_shop_poster
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_poster`;
CREATE TABLE `ims_ewei_shop_poster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `type` tinyint(3) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `bg` varchar(255) DEFAULT '',
  `data` text,
  `keyword` varchar(255) DEFAULT '',
  `keyword2` varchar(255) DEFAULT '',
  `times` int(11) DEFAULT '0',
  `follows` int(11) DEFAULT '0',
  `isdefault` tinyint(3) DEFAULT '0',
  `resptype` tinyint(3) DEFAULT '0',
  `resptext` text,
  `resptitle` varchar(255) DEFAULT '',
  `respthumb` varchar(255) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  `respdesc` varchar(255) DEFAULT '',
  `respurl` varchar(255) DEFAULT '',
  `waittext` varchar(255) DEFAULT '',
  `oktext` varchar(255) DEFAULT '',
  `subcredit` int(11) DEFAULT '0',
  `submoney` decimal(10,2) DEFAULT '0.00',
  `reccredit` int(11) DEFAULT '0',
  `recmoney` decimal(10,2) DEFAULT '0.00',
  `scantext` varchar(255) DEFAULT '',
  `subtext` varchar(255) DEFAULT '',
  `beagent` tinyint(3) DEFAULT '0',
  `bedown` tinyint(3) DEFAULT '0',
  `isopen` tinyint(3) DEFAULT '0',
  `opentext` varchar(255) DEFAULT '',
  `openurl` varchar(255) DEFAULT '',
  `paytype` tinyint(1) NOT NULL DEFAULT '0',
  `subpaycontent` text,
  `recpaycontent` varchar(255) DEFAULT '',
  `templateid` varchar(255) DEFAULT '',
  `entrytext` varchar(255) DEFAULT '',
  `reccouponid` int(11) DEFAULT '0',
  `reccouponnum` int(11) DEFAULT '0',
  `subcouponid` int(11) DEFAULT '0',
  `subcouponnum` int(11) DEFAULT '0',
  `resptext11` text,
  `reward_totle` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_type` (`type`),
  KEY `idx_times` (`times`),
  KEY `idx_isdefault` (`isdefault`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_poster
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_postera
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_postera`;
CREATE TABLE `ims_ewei_shop_postera` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `type` tinyint(3) DEFAULT '0',
  `days` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `bg` varchar(255) DEFAULT '',
  `data` text,
  `keyword` varchar(255) DEFAULT '',
  `keyword2` varchar(255) DEFAULT '',
  `isdefault` tinyint(3) DEFAULT '0',
  `resptype` tinyint(3) DEFAULT '0',
  `resptext` text,
  `resptitle` varchar(255) DEFAULT '',
  `respthumb` varchar(255) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  `respdesc` varchar(255) DEFAULT '',
  `respurl` varchar(255) DEFAULT '',
  `waittext` varchar(255) DEFAULT '',
  `oktext` varchar(255) DEFAULT '',
  `subcredit` int(11) DEFAULT '0',
  `submoney` decimal(10,2) DEFAULT '0.00',
  `reccredit` int(11) DEFAULT '0',
  `recmoney` decimal(10,2) DEFAULT '0.00',
  `scantext` varchar(255) DEFAULT '',
  `subtext` varchar(255) DEFAULT '',
  `beagent` tinyint(3) DEFAULT '0',
  `bedown` tinyint(3) DEFAULT '0',
  `isopen` tinyint(3) DEFAULT '0',
  `opentext` varchar(255) DEFAULT '',
  `openurl` varchar(255) DEFAULT '',
  `paytype` tinyint(1) NOT NULL DEFAULT '0',
  `subpaycontent` text,
  `recpaycontent` varchar(255) DEFAULT '',
  `templateid` varchar(255) DEFAULT '',
  `entrytext` varchar(255) DEFAULT '',
  `reccouponid` int(11) DEFAULT '0',
  `reccouponnum` int(11) DEFAULT '0',
  `subcouponid` int(11) DEFAULT '0',
  `subcouponnum` int(11) DEFAULT '0',
  `timestart` int(11) DEFAULT '0',
  `timeend` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `goodsid` int(11) DEFAULT '0',
  `starttext` varchar(255) DEFAULT '',
  `endtext` varchar(255) DEFAULT NULL,
  `testflag` tinyint(1) DEFAULT '0',
  `reward_totle` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_type` (`type`),
  KEY `idx_isdefault` (`isdefault`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_postera
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_postera_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_postera_log`;
CREATE TABLE `ims_ewei_shop_postera_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `posterid` int(11) DEFAULT '0',
  `from_openid` varchar(255) DEFAULT '',
  `subcredit` int(11) DEFAULT '0',
  `submoney` decimal(10,2) DEFAULT '0.00',
  `reccredit` int(11) DEFAULT '0',
  `recmoney` decimal(10,2) DEFAULT '0.00',
  `createtime` int(11) DEFAULT '0',
  `reccouponid` int(11) DEFAULT '0',
  `reccouponnum` int(11) DEFAULT '0',
  `subcouponid` int(11) DEFAULT '0',
  `subcouponnum` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_posteraid` (`posterid`),
  KEY `idx_from_openid` (`from_openid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_postera_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_postera_qr
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_postera_qr`;
CREATE TABLE `ims_ewei_shop_postera_qr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `openid` varchar(100) NOT NULL DEFAULT '',
  `posterid` int(11) DEFAULT '0',
  `type` tinyint(3) DEFAULT '0',
  `sceneid` int(11) DEFAULT '0',
  `mediaid` varchar(255) DEFAULT '',
  `ticket` varchar(250) NOT NULL,
  `url` varchar(80) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `goodsid` int(11) DEFAULT '0',
  `qrimg` varchar(1000) DEFAULT '',
  `expire` int(11) DEFAULT '0',
  `endtime` int(11) DEFAULT '0',
  `qrtime` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_acid` (`acid`),
  KEY `idx_sceneid` (`sceneid`),
  KEY `idx_type` (`type`),
  KEY `idx_posterid` (`posterid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_postera_qr
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_poster_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_poster_log`;
CREATE TABLE `ims_ewei_shop_poster_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `posterid` int(11) DEFAULT '0',
  `from_openid` varchar(255) DEFAULT '',
  `subcredit` int(11) DEFAULT '0',
  `submoney` decimal(10,2) DEFAULT '0.00',
  `reccredit` int(11) DEFAULT '0',
  `recmoney` decimal(10,2) DEFAULT '0.00',
  `createtime` int(11) DEFAULT '0',
  `reccouponid` int(11) DEFAULT '0',
  `reccouponnum` int(11) DEFAULT '0',
  `subcouponid` int(11) DEFAULT '0',
  `subcouponnum` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_posterid` (`posterid`),
  KEY `idx_from_openid` (`from_openid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_poster_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_poster_qr
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_poster_qr`;
CREATE TABLE `ims_ewei_shop_poster_qr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `openid` varchar(100) NOT NULL DEFAULT '',
  `type` tinyint(3) DEFAULT '0',
  `sceneid` int(11) DEFAULT '0',
  `mediaid` varchar(255) DEFAULT '',
  `ticket` varchar(250) NOT NULL,
  `url` varchar(80) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `goodsid` int(11) DEFAULT '0',
  `qrimg` varchar(1000) DEFAULT '',
  `scenestr` varchar(255) DEFAULT '',
  `posterid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acid` (`acid`),
  KEY `idx_sceneid` (`sceneid`),
  KEY `idx_type` (`type`),
  KEY `idx_openid` (`openid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_poster_qr
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_poster_scan
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_poster_scan`;
CREATE TABLE `ims_ewei_shop_poster_scan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `posterid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `from_openid` varchar(255) DEFAULT '',
  `scantime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_posterid` (`posterid`),
  KEY `idx_scantime` (`scantime`),
  KEY `idx_openid` (`openid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_poster_scan
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_qa_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_qa_adv`;
CREATE TABLE `ims_ewei_shop_qa_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_enabled` (`enabled`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_qa_adv
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_qa_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_qa_category`;
CREATE TABLE `ims_ewei_shop_qa_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `displayorder` tinyint(3) unsigned DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  `isrecommand` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_displayorder` (`displayorder`),
  KEY `idx_enabled` (`enabled`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_qa_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_qa_question
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_qa_question`;
CREATE TABLE `ims_ewei_shop_qa_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `cate` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `isrecommand` tinyint(3) NOT NULL DEFAULT '0',
  `displayorder` int(11) NOT NULL DEFAULT '0',
  `createtime` int(11) NOT NULL DEFAULT '0',
  `lastedittime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_qa_question
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_qa_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_qa_set`;
CREATE TABLE `ims_ewei_shop_qa_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `showmember` tinyint(3) NOT NULL DEFAULT '0',
  `showtype` tinyint(3) NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `enter_title` varchar(255) NOT NULL DEFAULT '',
  `enter_img` varchar(255) NOT NULL DEFAULT '',
  `enter_desc` varchar(255) NOT NULL DEFAULT '',
  `share` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_unaicid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_qa_set
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_refund_address
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_refund_address`;
CREATE TABLE `ims_ewei_shop_refund_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(50) DEFAULT '0',
  `title` varchar(20) DEFAULT '',
  `name` varchar(20) DEFAULT '',
  `tel` varchar(20) DEFAULT '',
  `mobile` varchar(11) DEFAULT '',
  `province` varchar(30) DEFAULT '',
  `city` varchar(30) DEFAULT '',
  `area` varchar(30) DEFAULT '',
  `address` varchar(300) DEFAULT '',
  `isdefault` tinyint(1) DEFAULT '0',
  `zipcode` varchar(255) DEFAULT '',
  `content` text,
  `deleted` tinyint(1) DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_isdefault` (`isdefault`),
  KEY `idx_deleted` (`deleted`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_refund_address
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_saler
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_saler`;
CREATE TABLE `ims_ewei_shop_saler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeid` int(11) DEFAULT '0',
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `status` tinyint(3) DEFAULT '0',
  `salername` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_storeid` (`storeid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_saler
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sale_coupon
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sale_coupon`;
CREATE TABLE `ims_ewei_shop_sale_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `type` tinyint(3) DEFAULT '0',
  `ckey` decimal(10,2) DEFAULT '0.00',
  `cvalue` decimal(10,2) DEFAULT '0.00',
  `nums` int(11) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sale_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sale_coupon_data
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sale_coupon_data`;
CREATE TABLE `ims_ewei_shop_sale_coupon_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `couponid` int(11) DEFAULT '0',
  `gettime` int(11) DEFAULT '0',
  `gettype` tinyint(3) DEFAULT '0',
  `usedtime` int(11) DEFAULT '0',
  `orderid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_couponid` (`couponid`),
  KEY `idx_gettime` (`gettime`),
  KEY `idx_gettype` (`gettype`),
  KEY `idx_usedtime` (`usedtime`),
  KEY `idx_orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sale_coupon_data
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_adv`;
CREATE TABLE `ims_ewei_shop_seckill_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_displayorder` (`displayorder`) USING BTREE,
  KEY `idx_enabled` (`enabled`) USING BTREE,
  KEY `idx_uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_seckill_adv
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_category`;
CREATE TABLE `ims_ewei_shop_seckill_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_seckill_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_task
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_task`;
CREATE TABLE `ims_ewei_shop_seckill_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `cateid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `enabled` tinyint(3) DEFAULT '0',
  `page_title` varchar(255) DEFAULT '',
  `share_title` varchar(255) DEFAULT '',
  `share_desc` varchar(255) DEFAULT '',
  `share_icon` varchar(255) DEFAULT '',
  `tag` varchar(10) DEFAULT '',
  `closesec` int(11) DEFAULT '0',
  `oldshow` tinyint(3) DEFAULT '0',
  `times` text,
  `createtime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`) USING BTREE,
  KEY `idx_status` (`enabled`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_seckill_task
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_task_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_task_goods`;
CREATE TABLE `ims_ewei_shop_seckill_task_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `taskid` int(11) DEFAULT '0',
  `roomid` int(11) DEFAULT '0',
  `timeid` int(11) DEFAULT '0',
  `goodsid` int(11) DEFAULT '0',
  `optionid` int(11) DEFAULT '0',
  `price` decimal(10,2) DEFAULT '0.00',
  `total` int(11) DEFAULT '0',
  `maxbuy` int(11) DEFAULT '0',
  `totalmaxbuy` int(11) DEFAULT '0',
  `commission1` decimal(10,2) DEFAULT '0.00',
  `commission2` decimal(10,2) DEFAULT '0.00',
  `commission3` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`) USING BTREE,
  KEY `idx_goodsid` (`goodsid`) USING BTREE,
  KEY `idx_optionid` (`optionid`) USING BTREE,
  KEY `idx_displayorder` (`displayorder`) USING BTREE,
  KEY `idx_taskid` (`taskid`) USING BTREE,
  KEY `idx_roomid` (`roomid`) USING BTREE,
  KEY `idx_time` (`timeid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ims_ewei_shop_seckill_task_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_task_room
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_task_room`;
CREATE TABLE `ims_ewei_shop_seckill_task_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `taskid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `enabled` tinyint(3) DEFAULT '0',
  `page_title` varchar(255) DEFAULT '',
  `share_title` varchar(255) DEFAULT '',
  `share_desc` varchar(255) DEFAULT '',
  `share_icon` varchar(255) DEFAULT '',
  `oldshow` tinyint(3) DEFAULT '0',
  `tag` varchar(10) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  `diypage` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_taskid` (`taskid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_seckill_task_room
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_task_time
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_task_time`;
CREATE TABLE `ims_ewei_shop_seckill_task_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `taskid` int(11) DEFAULT '0',
  `time` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ims_ewei_shop_seckill_task_time
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sign_records
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sign_records`;
CREATE TABLE `ims_ewei_shop_sign_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL DEFAULT '',
  `credit` int(11) NOT NULL DEFAULT '0',
  `log` varchar(255) DEFAULT '',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `day` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_time` (`time`),
  KEY `idx_type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=602 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sign_records
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sign_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sign_set`;
CREATE TABLE `ims_ewei_shop_sign_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `iscenter` tinyint(3) NOT NULL DEFAULT '0',
  `iscreditshop` tinyint(3) NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `desc` varchar(255) NOT NULL DEFAULT '',
  `isopen` tinyint(3) NOT NULL DEFAULT '0',
  `signold` tinyint(3) NOT NULL DEFAULT '0',
  `signold_price` int(11) NOT NULL DEFAULT '0',
  `signold_type` tinyint(3) NOT NULL DEFAULT '0',
  `textsign` varchar(255) NOT NULL DEFAULT '',
  `textsignold` varchar(255) NOT NULL DEFAULT '',
  `textsigned` varchar(255) NOT NULL DEFAULT '',
  `textsignforget` varchar(255) NOT NULL DEFAULT '',
  `maincolor` varchar(20) NOT NULL DEFAULT '',
  `cycle` tinyint(3) NOT NULL DEFAULT '0',
  `reward_default_first` int(11) NOT NULL DEFAULT '0',
  `reward_default_day` int(11) NOT NULL DEFAULT '0',
  `reword_order` text NOT NULL,
  `reword_sum` text NOT NULL,
  `reword_special` text NOT NULL,
  `sign_rule` text NOT NULL,
  `share` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sign_set
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sign_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sign_user`;
CREATE TABLE `ims_ewei_shop_sign_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `order` int(11) NOT NULL DEFAULT '0',
  `orderday` int(11) NOT NULL DEFAULT '0',
  `sum` int(11) NOT NULL DEFAULT '0',
  `signdate` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sign_user
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sms
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sms`;
CREATE TABLE `ims_ewei_shop_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `template` tinyint(3) NOT NULL DEFAULT '0',
  `smstplid` varchar(255) NOT NULL DEFAULT '',
  `smssign` varchar(255) NOT NULL DEFAULT '',
  `content` varchar(100) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sms
-- ----------------------------
INSERT INTO `ims_ewei_shop_sms` VALUES ('6', '3', 'test1', 'juhe', '1', '1', '', '', 'a:1:{i:0;a:2:{s:9:\"data_temp\";s:1:\"1\";s:9:\"data_shop\";s:1:\"1\";}}', '1');
INSERT INTO `ims_ewei_shop_sms` VALUES ('7', '5', '测试', 'dayu', '1', 'SMS_16305022', '博盛', '', 'a:1:{i:0;a:2:{s:9:\"data_temp\";s:11:\"[验证码]\";s:9:\"data_shop\";s:11:\"[验证码]\";}}', '1');

-- ----------------------------
-- Table structure for ims_ewei_shop_sms_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sms_set`;
CREATE TABLE `ims_ewei_shop_sms_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `juhe` tinyint(3) NOT NULL DEFAULT '0',
  `juhe_key` varchar(255) NOT NULL DEFAULT '',
  `dayu` tinyint(3) NOT NULL DEFAULT '0',
  `dayu_key` varchar(255) NOT NULL DEFAULT '',
  `dayu_secret` varchar(255) NOT NULL DEFAULT '',
  `emay` tinyint(3) NOT NULL DEFAULT '0',
  `emay_url` varchar(255) NOT NULL DEFAULT '',
  `emay_sn` varchar(255) NOT NULL DEFAULT '',
  `emay_pw` varchar(255) NOT NULL DEFAULT '',
  `emay_sk` varchar(255) NOT NULL DEFAULT '',
  `emay_phost` varchar(255) NOT NULL DEFAULT '',
  `emay_pport` int(11) NOT NULL DEFAULT '0',
  `emay_puser` varchar(255) NOT NULL DEFAULT '',
  `emay_ppw` varchar(255) NOT NULL DEFAULT '',
  `emay_out` int(11) NOT NULL DEFAULT '0',
  `emay_outresp` int(11) NOT NULL DEFAULT '30',
  `emay_warn` decimal(10,2) NOT NULL DEFAULT '0.00',
  `emay_mobile` varchar(11) NOT NULL DEFAULT '',
  `emay_warn_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sms_set
-- ----------------------------
INSERT INTO `ims_ewei_shop_sms_set` VALUES ('3', '3', '1', '3123123', '0', '', '', '0', '', '', '', '', '', '0', '', '', '0', '30', '0.00', '0', '0');
INSERT INTO `ims_ewei_shop_sms_set` VALUES ('4', '5', '0', '', '1', '23466178', '44df6409f5715e67a84fa9418e9979e6', '0', '', '', '', '', '', '0', '', '', '0', '30', '0.00', '0', '0');

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_adv`;
CREATE TABLE `ims_ewei_shop_sns_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_enabled` (`enabled`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sns_adv
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_board
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_board`;
CREATE TABLE `ims_ewei_shop_sns_board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `cid` int(11) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `desc` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  `showgroups` text,
  `showlevels` text,
  `postgroups` text,
  `postlevels` text,
  `showagentlevels` text,
  `postagentlevels` text,
  `postcredit` int(11) DEFAULT '0',
  `replycredit` int(11) DEFAULT '0',
  `bestcredit` int(11) DEFAULT '0',
  `bestboardcredit` int(11) DEFAULT '0',
  `notagent` tinyint(3) DEFAULT '0',
  `notagentpost` tinyint(3) DEFAULT '0',
  `topcredit` int(11) DEFAULT '0',
  `topboardcredit` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `noimage` tinyint(3) DEFAULT '0',
  `novoice` tinyint(3) DEFAULT '0',
  `needfollow` tinyint(3) DEFAULT '0',
  `needpostfollow` tinyint(3) DEFAULT '0',
  `share_title` varchar(255) DEFAULT '',
  `share_icon` varchar(255) DEFAULT '',
  `share_desc` varchar(255) DEFAULT '',
  `keyword` varchar(255) DEFAULT '',
  `isrecommand` tinyint(3) DEFAULT '0',
  `banner` varchar(255) DEFAULT '',
  `needcheck` tinyint(3) DEFAULT '0',
  `needcheckmanager` tinyint(3) DEFAULT '0',
  `needcheckreply` int(11) DEFAULT '0',
  `needcheckreplymanager` int(11) DEFAULT '0',
  `showsnslevels` text,
  `postsnslevels` text,
  `showpartnerlevels` text,
  `postpartnerlevels` text,
  `notpartner` tinyint(3) DEFAULT '0',
  `notpartnerpost` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_enabled` (`enabled`),
  KEY `idx_displayorder` (`displayorder`),
  KEY `idx_cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sns_board
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_board_follow
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_board_follow`;
CREATE TABLE `ims_ewei_shop_sns_board_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `bid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT NULL,
  `createtime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sns_board_follow
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_category`;
CREATE TABLE `ims_ewei_shop_sns_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `displayorder` tinyint(3) unsigned DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  `advimg` varchar(255) DEFAULT '',
  `advurl` varchar(500) DEFAULT '',
  `isrecommand` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_enabled` (`enabled`),
  KEY `idx_isrecommand` (`isrecommand`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sns_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_complain
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_complain`;
CREATE TABLE `ims_ewei_shop_sns_complain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL,
  `postsid` int(11) NOT NULL DEFAULT '0',
  `defendant` varchar(255) NOT NULL DEFAULT '0',
  `complainant` varchar(255) NOT NULL DEFAULT '0',
  `complaint_type` int(10) NOT NULL DEFAULT '0',
  `complaint_text` text NOT NULL,
  `images` text NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT '0',
  `checkedtime` int(11) NOT NULL DEFAULT '0',
  `checked` tinyint(3) NOT NULL DEFAULT '0',
  `checked_note` varchar(255) NOT NULL,
  `deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_sns_complain
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_complaincate
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_complaincate`;
CREATE TABLE `ims_ewei_shop_sns_complaincate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `displayorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_sns_complaincate
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_level`;
CREATE TABLE `ims_ewei_shop_sns_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `levelname` varchar(255) DEFAULT '',
  `credit` int(11) DEFAULT '0',
  `enabled` tinyint(3) DEFAULT '0',
  `post` int(11) DEFAULT '0',
  `color` varchar(255) DEFAULT '',
  `bg` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_enabled` (`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sns_level
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_like
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_like`;
CREATE TABLE `ims_ewei_shop_sns_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `pid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sns_like
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_manage
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_manage`;
CREATE TABLE `ims_ewei_shop_sns_manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `bid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `enabled` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sns_manage
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_member
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_member`;
CREATE TABLE `ims_ewei_shop_sns_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `credit` int(11) DEFAULT '0',
  `sign` varchar(255) DEFAULT '',
  `isblack` tinyint(3) DEFAULT '0',
  `notupgrade` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sns_member
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_post
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_post`;
CREATE TABLE `ims_ewei_shop_sns_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `bid` int(11) DEFAULT '0',
  `pid` int(11) DEFAULT '0',
  `rpid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `avatar` varchar(255) DEFAULT '',
  `nickname` varchar(255) DEFAULT '',
  `title` varchar(50) DEFAULT '',
  `content` text,
  `images` text,
  `voice` varchar(255) DEFAULT NULL,
  `createtime` int(11) DEFAULT '0',
  `replytime` int(11) DEFAULT '0',
  `credit` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `islock` tinyint(1) DEFAULT '0',
  `istop` tinyint(1) DEFAULT '0',
  `isboardtop` tinyint(1) DEFAULT '0',
  `isbest` tinyint(1) DEFAULT '0',
  `isboardbest` tinyint(3) DEFAULT '0',
  `deleted` tinyint(3) DEFAULT '0',
  `deletedtime` int(11) DEFAULT '0',
  `checked` tinyint(3) DEFAULT NULL,
  `checktime` int(11) DEFAULT '0',
  `isadmin` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_bid` (`bid`),
  KEY `idx_pid` (`pid`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_islock` (`islock`),
  KEY `idx_istop` (`istop`),
  KEY `idx_isboardtop` (`isboardtop`),
  KEY `idx_isbest` (`isbest`),
  KEY `idx_deleted` (`deleted`),
  KEY `idx_deletetime` (`deletedtime`),
  KEY `idx_checked` (`checked`),
  KEY `idx_rpid` (`rpid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sns_post
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_store
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_store`;
CREATE TABLE `ims_ewei_shop_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `storename` varchar(255) DEFAULT '',
  `address` varchar(255) DEFAULT '',
  `tel` varchar(255) DEFAULT '',
  `lat` varchar(255) DEFAULT '',
  `lng` varchar(255) DEFAULT '',
  `status` tinyint(3) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `realname` varchar(255) DEFAULT '',
  `mobile` varchar(255) DEFAULT '',
  `fetchtime` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `saletime` varchar(255) DEFAULT '',
  `desc` text,
  `displayorder` int(11) DEFAULT '0',
  `order_printer` varchar(500) DEFAULT '',
  `order_template` int(11) DEFAULT '0',
  `ordertype` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_store
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_sysset
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sysset`;
CREATE TABLE `ims_ewei_shop_sysset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `sets` longtext,
  `plugins` longtext,
  `sec` text,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_sysset
-- ----------------------------
INSERT INTO `ims_ewei_shop_sysset` VALUES ('11', '3', 'a:4:{s:3:\"wap\";a:18:{s:4:\"open\";i:1;s:7:\"inh5app\";s:1:\"0\";s:8:\"mustbind\";s:1:\"0\";s:5:\"style\";s:7:\"default\";s:5:\"color\";s:0:\"\";s:2:\"bg\";s:53:\"../addons/ewei_shopv2/template/account/default/bg.jpg\";s:10:\"smsimgcode\";s:1:\"0\";s:7:\"sms_reg\";s:1:\"6\";s:10:\"sms_forget\";s:1:\"6\";s:13:\"sms_changepwd\";s:1:\"6\";s:8:\"sms_bind\";s:1:\"6\";s:13:\"headerbgcolor\";s:0:\"\";s:11:\"headercolor\";s:0:\"\";s:15:\"headericoncolor\";s:0:\"\";s:9:\"statusbar\";s:1:\"0\";s:7:\"loginbg\";N;s:5:\"regbg\";N;s:3:\"sns\";a:2:{s:2:\"wx\";i:0;s:2:\"qq\";i:0;}}s:8:\"category\";a:5:{s:5:\"level\";s:1:\"2\";s:4:\"show\";s:1:\"0\";s:5:\"style\";s:1:\"0\";s:6:\"advimg\";s:0:\"\";s:6:\"advurl\";s:0:\"\";}s:4:\"shop\";a:9:{s:8:\"catlevel\";s:1:\"2\";s:7:\"catshow\";s:1:\"0\";s:9:\"catadvimg\";s:0:\"\";s:9:\"catadvurl\";s:0:\"\";s:9:\"indexsort\";a:8:{s:6:\"search\";a:2:{s:4:\"text\";s:9:\"搜索栏\";s:7:\"visible\";i:0;}s:3:\"adv\";a:2:{s:4:\"text\";s:9:\"幻灯片\";s:7:\"visible\";i:1;}s:3:\"nav\";a:2:{s:4:\"text\";s:9:\"导航栏\";s:7:\"visible\";i:1;}s:6:\"notice\";a:2:{s:4:\"text\";s:9:\"公告栏\";s:7:\"visible\";i:1;}s:7:\"seckill\";a:2:{s:4:\"text\";s:9:\"秒杀栏\";s:7:\"visible\";i:1;}s:4:\"cube\";a:2:{s:4:\"text\";s:9:\"魔方栏\";s:7:\"visible\";i:1;}s:6:\"banner\";a:2:{s:4:\"text\";s:9:\"广告栏\";s:7:\"visible\";i:1;}s:5:\"goods\";a:2:{s:4:\"text\";s:9:\"推荐栏\";s:7:\"visible\";i:1;}}s:15:\"indexrecommands\";a:16:{i:0;s:3:\"250\";i:1;s:3:\"248\";i:2;s:3:\"247\";i:3;s:3:\"241\";i:4;s:3:\"240\";i:5;s:3:\"239\";i:6;s:3:\"238\";i:7;s:3:\"237\";i:8;s:3:\"236\";i:9;s:3:\"234\";i:10;s:3:\"233\";i:11;s:3:\"232\";i:12;s:3:\"230\";i:13;s:3:\"229\";i:14;s:3:\"228\";i:15;s:3:\"227\";}s:5:\"style\";s:7:\"default\";s:10:\"goodsstyle\";i:0;s:5:\"cubes\";a:1:{i:0;a:2:{s:3:\"img\";s:51:\"images/3/2017/05/ha2azdPb6zyh6iJ1X66533hH727pZq.png\";s:3:\"url\";s:0:\"\";}}}s:8:\"template\";a:1:{s:5:\"style\";s:7:\"default\";}}', 'a:1:{s:7:\"diypage\";a:1:{s:4:\"page\";a:6:{s:4:\"home\";s:2:\"19\";s:6:\"member\";s:0:\"\";s:6:\"detail\";s:0:\"\";s:10:\"commission\";s:0:\"\";s:10:\"creditshop\";s:0:\"\";s:8:\"exchange\";s:0:\"\";}}}', null);
INSERT INTO `ims_ewei_shop_sysset` VALUES ('12', '5', 'a:1:{s:3:\"wap\";a:18:{s:4:\"open\";i:1;s:7:\"inh5app\";s:1:\"0\";s:8:\"mustbind\";s:1:\"0\";s:5:\"style\";s:7:\"default\";s:5:\"color\";s:0:\"\";s:2:\"bg\";s:53:\"../addons/ewei_shopv2/template/account/default/bg.jpg\";s:10:\"smsimgcode\";s:1:\"0\";s:7:\"sms_reg\";s:1:\"7\";s:10:\"sms_forget\";s:1:\"7\";s:13:\"sms_changepwd\";s:1:\"7\";s:8:\"sms_bind\";s:1:\"7\";s:13:\"headerbgcolor\";s:0:\"\";s:11:\"headercolor\";s:0:\"\";s:15:\"headericoncolor\";s:0:\"\";s:9:\"statusbar\";s:1:\"0\";s:7:\"loginbg\";N;s:5:\"regbg\";N;s:3:\"sns\";a:2:{s:2:\"wx\";i:0;s:2:\"qq\";i:0;}}}', null, null);

-- ----------------------------
-- Table structure for ims_ewei_shop_system_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_adv`;
CREATE TABLE `ims_ewei_shop_system_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `module` varchar(255) DEFAULT '',
  `status` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_system_adv
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_system_article
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_article`;
CREATE TABLE `ims_ewei_shop_system_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `author` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `content` text,
  `createtime` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `cate` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_system_article
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_system_banner
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_banner`;
CREATE TABLE `ims_ewei_shop_system_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `createtime` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `background` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_system_banner
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_system_case
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_case`;
CREATE TABLE `ims_ewei_shop_system_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `qr` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `cate` int(11) DEFAULT '0',
  `description` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_system_case
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_system_casecategory
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_casecategory`;
CREATE TABLE `ims_ewei_shop_system_casecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_system_casecategory
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_system_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_category`;
CREATE TABLE `ims_ewei_shop_system_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_system_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_system_company_article
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_company_article`;
CREATE TABLE `ims_ewei_shop_system_company_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `author` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `content` text,
  `createtime` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `cate` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_system_company_article
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_system_company_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_company_category`;
CREATE TABLE `ims_ewei_shop_system_company_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_system_company_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_system_copyright
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_copyright`;
CREATE TABLE `ims_ewei_shop_system_copyright` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `copyright` text,
  `bgcolor` varchar(255) DEFAULT '',
  `ismanage` tinyint(3) DEFAULT '0',
  `logo` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_system_copyright
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_system_copyright_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_copyright_notice`;
CREATE TABLE `ims_ewei_shop_system_copyright_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `author` varchar(255) DEFAULT '',
  `content` text,
  `createtime` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_system_copyright_notice
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_system_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_guestbook`;
CREATE TABLE `ims_ewei_shop_system_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `createtime` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `clientip` varchar(64) NOT NULL DEFAULT '',
  `mobile` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_system_guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_system_link
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_link`;
CREATE TABLE `ims_ewei_shop_system_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `displayorder` int(11) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_system_link
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_system_setting
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_setting`;
CREATE TABLE `ims_ewei_shop_system_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) DEFAULT NULL,
  `background` varchar(10) DEFAULT '',
  `casebanner` varchar(255) DEFAULT '',
  `contact` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_system_setting
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_system_site
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_site`;
CREATE TABLE `ims_ewei_shop_system_site` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL DEFAULT '',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_system_site
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_task_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_adv`;
CREATE TABLE `ims_ewei_shop_task_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_task_adv
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_task_default
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_default`;
CREATE TABLE `ims_ewei_shop_task_default` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `data` text,
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_task_default
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_task_join
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_join`;
CREATE TABLE `ims_ewei_shop_task_join` (
  `join_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `join_user` varchar(100) NOT NULL DEFAULT '',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `task_type` tinyint(1) NOT NULL DEFAULT '0',
  `needcount` tinyint(3) NOT NULL DEFAULT '0',
  `completecount` tinyint(3) NOT NULL DEFAULT '0',
  `reward_data` text,
  `is_reward` tinyint(1) NOT NULL DEFAULT '0',
  `failtime` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) DEFAULT '0',
  PRIMARY KEY (`join_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_task_join
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_task_joiner
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_joiner`;
CREATE TABLE `ims_ewei_shop_task_joiner` (
  `complete_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `task_user` varchar(100) NOT NULL DEFAULT '',
  `joiner_id` varchar(100) NOT NULL DEFAULT '',
  `join_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `task_type` tinyint(1) NOT NULL DEFAULT '0',
  `join_status` tinyint(1) NOT NULL DEFAULT '1',
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`complete_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_task_joiner
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_task_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_log`;
CREATE TABLE `ims_ewei_shop_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `openid` varchar(100) NOT NULL DEFAULT '',
  `from_openid` varchar(100) NOT NULL DEFAULT '',
  `join_id` int(11) NOT NULL DEFAULT '0',
  `taskid` int(11) DEFAULT '0',
  `task_type` tinyint(1) NOT NULL DEFAULT '0',
  `subdata` text,
  `recdata` text,
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_task_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_task_poster
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_poster`;
CREATE TABLE `ims_ewei_shop_task_poster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `days` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `bg` varchar(255) DEFAULT '',
  `data` text,
  `keyword` varchar(255) DEFAULT NULL,
  `resptype` tinyint(1) NOT NULL DEFAULT '0',
  `resptext` text,
  `resptitle` varchar(255) DEFAULT NULL,
  `respthumb` varchar(255) DEFAULT NULL,
  `respdesc` varchar(255) DEFAULT NULL,
  `respurl` varchar(255) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `waittext` varchar(255) DEFAULT NULL,
  `oktext` varchar(255) DEFAULT NULL,
  `scantext` varchar(255) DEFAULT NULL,
  `beagent` tinyint(1) NOT NULL DEFAULT '0',
  `bedown` tinyint(1) NOT NULL DEFAULT '0',
  `timestart` int(11) DEFAULT NULL,
  `timeend` int(11) DEFAULT NULL,
  `is_repeat` tinyint(1) DEFAULT '0',
  `getposter` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `starttext` varchar(255) DEFAULT NULL,
  `endtext` varchar(255) DEFAULT NULL,
  `reward_data` text,
  `needcount` tinyint(3) NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `poster_type` tinyint(1) DEFAULT '1',
  `reward_days` int(11) DEFAULT '0',
  `titleicon` text,
  `poster_banner` text,
  `is_goods` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_task_poster
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_task_poster_qr
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_poster_qr`;
CREATE TABLE `ims_ewei_shop_task_poster_qr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(11) NOT NULL DEFAULT '0',
  `openid` varchar(100) NOT NULL,
  `posterid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `sceneid` int(11) NOT NULL DEFAULT '0',
  `mediaid` varchar(255) DEFAULT NULL,
  `ticket` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `createtime` int(11) DEFAULT NULL,
  `qrimg` varchar(1000) DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_ewei_shop_task_poster_qr
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_virtual_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_virtual_category`;
CREATE TABLE `ims_ewei_shop_virtual_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_virtual_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_virtual_data
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_virtual_data`;
CREATE TABLE `ims_ewei_shop_virtual_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `typeid` int(11) NOT NULL DEFAULT '0',
  `pvalue` varchar(255) DEFAULT '',
  `fields` text NOT NULL,
  `openid` varchar(255) NOT NULL DEFAULT '',
  `usetime` int(11) NOT NULL DEFAULT '0',
  `orderid` int(11) DEFAULT '0',
  `ordersn` varchar(255) DEFAULT '',
  `price` decimal(10,2) DEFAULT '0.00',
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_typeid` (`typeid`),
  KEY `idx_usetime` (`usetime`),
  KEY `idx_orderid` (`orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_virtual_data
-- ----------------------------

-- ----------------------------
-- Table structure for ims_ewei_shop_virtual_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_virtual_type`;
CREATE TABLE `ims_ewei_shop_virtual_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `cate` int(11) DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `fields` text NOT NULL,
  `usedata` int(11) NOT NULL DEFAULT '0',
  `alldata` int(11) NOT NULL DEFAULT '0',
  `merchid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_cate` (`cate`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_ewei_shop_virtual_type
-- ----------------------------

-- ----------------------------
-- Table structure for ims_images_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_images_reply`;
CREATE TABLE `ims_images_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_images_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_card
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_card`;
CREATE TABLE `ims_mc_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `color` varchar(255) NOT NULL,
  `background` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `format_type` tinyint(3) unsigned NOT NULL,
  `format` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `fields` varchar(1000) NOT NULL,
  `snpos` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `business` text NOT NULL,
  `discount_type` tinyint(3) unsigned NOT NULL,
  `discount` varchar(3000) NOT NULL,
  `grant` varchar(3000) NOT NULL,
  `grant_rate` varchar(20) NOT NULL,
  `offset_rate` int(10) unsigned NOT NULL,
  `offset_max` int(10) NOT NULL,
  `nums_status` tinyint(3) unsigned NOT NULL,
  `nums_text` varchar(15) NOT NULL,
  `nums` varchar(1000) NOT NULL,
  `times_status` tinyint(3) unsigned NOT NULL,
  `times_text` varchar(15) NOT NULL,
  `times` varchar(1000) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `recommend_status` tinyint(3) unsigned NOT NULL,
  `sign_status` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_card
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_card_care
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_card_care`;
CREATE TABLE `ims_mc_card_care` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit2` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `granttime` int(10) unsigned NOT NULL,
  `days` int(10) unsigned NOT NULL,
  `time` tinyint(3) unsigned NOT NULL,
  `show_in_card` tinyint(3) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  `sms_notice` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_card_care
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_card_credit_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_card_credit_set`;
CREATE TABLE `ims_mc_card_credit_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `sign` varchar(1000) NOT NULL,
  `share` varchar(500) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_card_credit_set
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_card_members
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_card_members`;
CREATE TABLE `ims_mc_card_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `openid` varchar(50) NOT NULL,
  `cid` int(10) NOT NULL,
  `cardsn` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `nums` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_card_members
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_card_notices
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_card_notices`;
CREATE TABLE `ims_mc_card_notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_card_notices
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_card_notices_unread
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_card_notices_unread`;
CREATE TABLE `ims_mc_card_notices_unread` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`),
  KEY `notice_id` (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_card_notices_unread
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_card_recommend
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_card_recommend`;
CREATE TABLE `ims_mc_card_recommend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_card_recommend
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_card_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_card_record`;
CREATE TABLE `ims_mc_card_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `tag` varchar(10) NOT NULL,
  `note` varchar(255) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_card_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_card_sign_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_card_sign_record`;
CREATE TABLE `ims_mc_card_sign_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `is_grant` tinyint(3) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_card_sign_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_cash_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_cash_record`;
CREATE TABLE `ims_mc_cash_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `return_cash` decimal(10,2) unsigned NOT NULL,
  `final_cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_cash_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_chats_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_chats_record`;
CREATE TABLE `ims_mc_chats_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `openid` (`openid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_chats_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_credits_recharge
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_credits_recharge`;
CREATE TABLE `ims_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `tid` varchar(64) NOT NULL,
  `transid` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `backtype` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid_uid` (`uniacid`,`uid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_credits_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_credits_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_credits_record`;
CREATE TABLE `ims_mc_credits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_credits_record
-- ----------------------------
INSERT INTO `ims_mc_credits_record` VALUES ('1', '1', '3', 'credit2', '209.00', '2', 'ewei_shopv2', '0', '0', '0', '1493959034', '后台会员充值余额 ');
INSERT INTO `ims_mc_credits_record` VALUES ('2', '1', '3', 'credit1', '208.00', '2', 'ewei_shopv2', '0', '0', '0', '1493959046', '后台会员充值积分 ');

-- ----------------------------
-- Table structure for ims_mc_fans_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_fans_groups`;
CREATE TABLE `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_fans_groups
-- ----------------------------
INSERT INTO `ims_mc_fans_groups` VALUES ('1', '1', '1', 'a:1:{i:2;a:3:{s:2:\"id\";i:2;s:4:\"name\";s:9:\"星标组\";s:5:\"count\";i:0;}}');
INSERT INTO `ims_mc_fans_groups` VALUES ('2', '3', '3', 'a:1:{i:2;a:3:{s:2:\"id\";i:2;s:4:\"name\";s:9:\"星标组\";s:5:\"count\";i:0;}}');
INSERT INTO `ims_mc_fans_groups` VALUES ('3', '5', '5', 'a:1:{i:2;a:3:{s:2:\"id\";i:2;s:4:\"name\";s:9:\"星标组\";s:5:\"count\";i:0;}}');

-- ----------------------------
-- Table structure for ims_mc_fans_tag_mapping
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_fans_tag_mapping`;
CREATE TABLE `ims_mc_fans_tag_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fanid` int(11) unsigned NOT NULL,
  `tagid` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mapping` (`fanid`,`tagid`),
  KEY `fanid_index` (`fanid`),
  KEY `tagid_index` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_fans_tag_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_groups`;
CREATE TABLE `ims_mc_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `isdefault` tinyint(4) NOT NULL,
  PRIMARY KEY (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_groups
-- ----------------------------
INSERT INTO `ims_mc_groups` VALUES ('1', '1', '默认会员组', '0', '1');
INSERT INTO `ims_mc_groups` VALUES ('2', '2', '默认会员组', '0', '1');
INSERT INTO `ims_mc_groups` VALUES ('3', '3', '默认会员组', '0', '1');
INSERT INTO `ims_mc_groups` VALUES ('4', '4', '默认会员组', '0', '1');
INSERT INTO `ims_mc_groups` VALUES ('5', '5', '默认会员组', '0', '1');

-- ----------------------------
-- Table structure for ims_mc_handsel
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_handsel`;
CREATE TABLE `ims_mc_handsel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`touid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_handsel
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_mapping_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mapping_fans`;
CREATE TABLE `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` varchar(30) NOT NULL,
  `salt` char(8) NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL,
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  `unionid` varchar(64) NOT NULL,
  PRIMARY KEY (`fanid`),
  UNIQUE KEY `openid` (`openid`),
  KEY `acid` (`acid`),
  KEY `uniacid` (`uniacid`),
  KEY `nickname` (`nickname`),
  KEY `updatetime` (`updatetime`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_mapping_fans
-- ----------------------------
INSERT INTO `ims_mc_mapping_fans` VALUES ('1', '3', '3', '1', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '王一翔', '', 'YBdl4o44', '1', '1493786651', '0', 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1A1WUd1T25WbjRUMTJ6aENIYnR5UWtyWGpkWSI7czo4OiJuaWNrbmFtZSI7czo5OiLnjovkuIDnv5QiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6Iuilv+WuiSI7czo4OiJwcm92aW5jZSI7czo2OiLpmZXopb8iO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTI5OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuLzRBcHQwQWszQUJ3bEQxRlBPNjkyYWxLUGx0dTU1S0JLb3liNWRsTzVaRm9uWEozZTZ2NUxhaWFqRFFWYzFCbHBGT21rNmh1dDR4OEE4aWFCb2Z3VnhFM0JpYm83UTQ0UDRiYy8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE0OTM3ODY2NTE7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMjk6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vNEFwdDBBazNBQndsRDFGUE82OTJhbEtQbHR1NTVLQktveWI1ZGxPNVpGb25YSjNlNnY1TGFpYWpEUVZjMUJscEZPbWs2aHV0NHg4QThpYUJvZndWeEUzQmlibzdRNDRQNGJjLzEzMiI7fQ==', '1493969708', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('2', '5', '5', '2', 'o1jelwd721zK_A53PfLkesC0YvN0', '王一翔', '', 'k705v3g0', '1', '1493969628', '0', 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoibzFqZWx3ZDcyMXpLX0E1M1BmTGtlc0MwWXZOMCI7czo4OiJuaWNrbmFtZSI7czo5OiLnjovkuIDnv5QiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6Iuilv+WuiSI7czo4OiJwcm92aW5jZSI7czo2OiLpmZXopb8iO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTMzOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1dnVEpuNnJMdlEzMDJnT0xyYWlhUktjdU15V3dta2NhTzNKSDVpYmVDTUUxYU9Ya1VmTDhENTFhdmljb0I0UTRMaWNzenJyOGdpY01nSUVyUDdYemhxVGxFRTM2SnhuTE1pYTR6aWMvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNDkzOTY5NjI4O3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTMzOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1dnVEpuNnJMdlEzMDJnT0xyYWlhUktjdU15V3dta2NhTzNKSDVpYmVDTUUxYU9Ya1VmTDhENTFhdmljb0I0UTRMaWNzenJyOGdpY01nSUVyUDdYemhxVGxFRTM2SnhuTE1pYTR6aWMvMTMyIjt9', '1493969907', '');

-- ----------------------------
-- Table structure for ims_mc_mapping_ucenter
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mapping_ucenter`;
CREATE TABLE `ims_mc_mapping_ucenter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `centeruid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_mapping_ucenter
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_mass_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mass_record`;
CREATE TABLE `ims_mc_mass_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `fansnum` int(10) unsigned NOT NULL,
  `msgtype` varchar(10) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `group` int(10) NOT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `cron_id` int(10) unsigned NOT NULL,
  `sendtime` int(10) unsigned NOT NULL,
  `finalsendtime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_mass_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_members
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_members`;
CREATE TABLE `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(8) NOT NULL,
  `groupid` int(11) NOT NULL,
  `credit1` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `credit3` decimal(10,2) unsigned NOT NULL,
  `credit4` decimal(10,2) unsigned NOT NULL,
  `credit5` decimal(10,2) unsigned NOT NULL,
  `credit6` decimal(10,2) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groupid` (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_members
-- ----------------------------
INSERT INTO `ims_mc_members` VALUES ('1', '3', '', '349d6b1a98bec2fcd2d89d9209943126@we7.cc', '233f957b51574ff19be127fe8decebb0', 'W4n03LtL', '3', '208.00', '209.00', '0.00', '0.00', '0.00', '0.00', '1493786369', '', '王一翔', 'http://wx.qlogo.cn/mmopen/4Apt0Ak3ABwlD1FPO692alKPltu55KBKoyb5dlO5ZFonXJ3e6v5LaiajDQVc1BlpFOmk6hut4x8A8iaBofwVxE3Bibo7Q44P4bc/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '陕西省', '西安市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('2', '5', '', '6cafaf451d953ee8e38ece926ef729ba@we7.cc', '40f216280e79ef9ab0e4c608bb3a35dd', 'ExPvH5of', '5', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1493965214', '', '王一翔', 'http://wx.qlogo.cn/mmopen/WgTJn6rLvQ302gOLraiaRKcuMyWwmkcaO3JH5ibeCME1aOXkUfL8D51avicoB4Q4Licszrr8gicMgIErP7XzhqTlEE36JxnLMia4zic/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '陕西省', '西安市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for ims_mc_member_address
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_address`;
CREATE TABLE `ims_mc_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uinacid` (`uniacid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_member_fields
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_fields`;
CREATE TABLE `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_fieldid` (`fieldid`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_member_fields
-- ----------------------------
INSERT INTO `ims_mc_member_fields` VALUES ('1', '2', '1', '真实姓名', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('2', '2', '2', '昵称', '1', '1');
INSERT INTO `ims_mc_member_fields` VALUES ('3', '2', '3', '头像', '1', '1');
INSERT INTO `ims_mc_member_fields` VALUES ('4', '2', '4', 'QQ号', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('5', '2', '5', '手机号码', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('6', '2', '6', 'VIP级别', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('7', '2', '7', '性别', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('8', '2', '8', '出生生日', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('9', '2', '9', '星座', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('10', '2', '10', '生肖', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('11', '2', '11', '固定电话', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('12', '2', '12', '证件号码', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('13', '2', '13', '学号', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('14', '2', '14', '班级', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('15', '2', '15', '邮寄地址', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('16', '2', '16', '邮编', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('17', '2', '17', '国籍', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('18', '2', '18', '居住地址', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('19', '2', '19', '毕业学校', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('20', '2', '20', '公司', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('21', '2', '21', '学历', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('22', '2', '22', '职业', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('23', '2', '23', '职位', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('24', '2', '24', '年收入', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('25', '2', '25', '情感状态', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('26', '2', '26', ' 交友目的', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('27', '2', '27', '血型', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('28', '2', '28', '身高', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('29', '2', '29', '体重', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('30', '2', '30', '支付宝帐号', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('31', '2', '31', 'MSN', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('32', '2', '32', '电子邮箱', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('33', '2', '33', '阿里旺旺', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('34', '2', '34', '主页', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('35', '2', '35', '自我介绍', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('36', '2', '36', '兴趣爱好', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('37', '3', '1', '真实姓名', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('38', '3', '2', '昵称', '1', '1');
INSERT INTO `ims_mc_member_fields` VALUES ('39', '3', '3', '头像', '1', '1');
INSERT INTO `ims_mc_member_fields` VALUES ('40', '3', '4', 'QQ号', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('41', '3', '5', '手机号码', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('42', '3', '6', 'VIP级别', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('43', '3', '7', '性别', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('44', '3', '8', '出生生日', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('45', '3', '9', '星座', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('46', '3', '10', '生肖', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('47', '3', '11', '固定电话', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('48', '3', '12', '证件号码', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('49', '3', '13', '学号', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('50', '3', '14', '班级', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('51', '3', '15', '邮寄地址', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('52', '3', '16', '邮编', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('53', '3', '17', '国籍', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('54', '3', '18', '居住地址', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('55', '3', '19', '毕业学校', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('56', '3', '20', '公司', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('57', '3', '21', '学历', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('58', '3', '22', '职业', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('59', '3', '23', '职位', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('60', '3', '24', '年收入', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('61', '3', '25', '情感状态', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('62', '3', '26', ' 交友目的', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('63', '3', '27', '血型', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('64', '3', '28', '身高', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('65', '3', '29', '体重', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('66', '3', '30', '支付宝帐号', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('67', '3', '31', 'MSN', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('68', '3', '32', '电子邮箱', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('69', '3', '33', '阿里旺旺', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('70', '3', '34', '主页', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('71', '3', '35', '自我介绍', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('72', '3', '36', '兴趣爱好', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('73', '4', '1', '真实姓名', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('74', '4', '2', '昵称', '1', '1');
INSERT INTO `ims_mc_member_fields` VALUES ('75', '4', '3', '头像', '1', '1');
INSERT INTO `ims_mc_member_fields` VALUES ('76', '4', '4', 'QQ号', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('77', '4', '5', '手机号码', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('78', '4', '6', 'VIP级别', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('79', '4', '7', '性别', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('80', '4', '8', '出生生日', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('81', '4', '9', '星座', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('82', '4', '10', '生肖', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('83', '4', '11', '固定电话', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('84', '4', '12', '证件号码', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('85', '4', '13', '学号', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('86', '4', '14', '班级', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('87', '4', '15', '邮寄地址', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('88', '4', '16', '邮编', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('89', '4', '17', '国籍', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('90', '4', '18', '居住地址', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('91', '4', '19', '毕业学校', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('92', '4', '20', '公司', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('93', '4', '21', '学历', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('94', '4', '22', '职业', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('95', '4', '23', '职位', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('96', '4', '24', '年收入', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('97', '4', '25', '情感状态', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('98', '4', '26', ' 交友目的', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('99', '4', '27', '血型', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('100', '4', '28', '身高', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('101', '4', '29', '体重', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('102', '4', '30', '支付宝帐号', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('103', '4', '31', 'MSN', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('104', '4', '32', '电子邮箱', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('105', '4', '33', '阿里旺旺', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('106', '4', '34', '主页', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('107', '4', '35', '自我介绍', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('108', '4', '36', '兴趣爱好', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('109', '5', '1', '真实姓名', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('110', '5', '2', '昵称', '1', '1');
INSERT INTO `ims_mc_member_fields` VALUES ('111', '5', '3', '头像', '1', '1');
INSERT INTO `ims_mc_member_fields` VALUES ('112', '5', '4', 'QQ号', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('113', '5', '5', '手机号码', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('114', '5', '6', 'VIP级别', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('115', '5', '7', '性别', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('116', '5', '8', '出生生日', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('117', '5', '9', '星座', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('118', '5', '10', '生肖', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('119', '5', '11', '固定电话', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('120', '5', '12', '证件号码', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('121', '5', '13', '学号', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('122', '5', '14', '班级', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('123', '5', '15', '邮寄地址', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('124', '5', '16', '邮编', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('125', '5', '17', '国籍', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('126', '5', '18', '居住地址', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('127', '5', '19', '毕业学校', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('128', '5', '20', '公司', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('129', '5', '21', '学历', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('130', '5', '22', '职业', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('131', '5', '23', '职位', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('132', '5', '24', '年收入', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('133', '5', '25', '情感状态', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('134', '5', '26', ' 交友目的', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('135', '5', '27', '血型', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('136', '5', '28', '身高', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('137', '5', '29', '体重', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('138', '5', '30', '支付宝帐号', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('139', '5', '31', 'MSN', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('140', '5', '32', '电子邮箱', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('141', '5', '33', '阿里旺旺', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('142', '5', '34', '主页', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('143', '5', '35', '自我介绍', '1', '0');
INSERT INTO `ims_mc_member_fields` VALUES ('144', '5', '36', '兴趣爱好', '1', '0');

-- ----------------------------
-- Table structure for ims_mc_oauth_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_oauth_fans`;
CREATE TABLE `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_oauth_fans
-- ----------------------------

-- ----------------------------
-- Table structure for ims_menu_event
-- ----------------------------
DROP TABLE IF EXISTS `ims_menu_event`;
CREATE TABLE `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  `openid` varchar(128) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_menu_event
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mobilenumber
-- ----------------------------
DROP TABLE IF EXISTS `ims_mobilenumber`;
CREATE TABLE `ims_mobilenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mobilenumber
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules`;
CREATE TABLE `ims_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `version` varchar(10) NOT NULL,
  `ability` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `settings` tinyint(1) NOT NULL,
  `subscribes` varchar(500) NOT NULL,
  `handles` varchar(500) NOT NULL,
  `isrulefields` tinyint(1) NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `iscard` tinyint(3) unsigned NOT NULL,
  `permissions` varchar(5000) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules
-- ----------------------------
INSERT INTO `ims_modules` VALUES ('1', 'basic', 'system', '基本文字回复', '1.0', '和您进行简单对话', '一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.', 'WeEngine Team', 'http://www.qynetwork.io/', '0', '', '', '1', '1', '0', '0', '');
INSERT INTO `ims_modules` VALUES ('2', 'news', 'system', '基本混合图文回复', '1.0', '为你提供生动的图文资讯', '一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.', 'WeEngine Team', 'http://www.qynetwork.io/', '0', '', '', '1', '1', '0', '0', '');
INSERT INTO `ims_modules` VALUES ('3', 'music', 'system', '基本音乐回复', '1.0', '提供语音、音乐等音频类回复', '在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。', 'WeEngine Team', 'http://www.qynetwork.io/', '0', '', '', '1', '1', '0', '0', '');
INSERT INTO `ims_modules` VALUES ('4', 'userapi', 'system', '自定义接口回复', '1.1', '更方便的第三方接口设置', '自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。', 'WeEngine Team', 'http://www.qynetwork.io/', '0', '', '', '1', '1', '0', '0', '');
INSERT INTO `ims_modules` VALUES ('5', 'recharge', 'system', '会员中心充值模块', '1.0', '提供会员充值功能', '', 'WeEngine Team', 'http://www.qynetwork.io/', '0', '', '', '0', '1', '0', '0', '');
INSERT INTO `ims_modules` VALUES ('6', 'custom', 'system', '多客服转接', '1.0.0', '用来接入腾讯的多客服系统', '', 'WeEngine Team', 'http://www.qynetwork.io/', '0', 'a:0:{}', 'a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}', '1', '1', '0', '0', '');
INSERT INTO `ims_modules` VALUES ('7', 'images', 'system', '基本图片回复', '1.0', '提供图片回复', '在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。', 'WeEngine Team', 'http://www.qynetwork.io/', '0', '', '', '1', '1', '0', '0', '');
INSERT INTO `ims_modules` VALUES ('8', 'video', 'system', '基本视频回复', '1.0', '提供图片回复', '在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。', 'WeEngine Team', 'http://www.qynetwork.io/', '0', '', '', '1', '1', '0', '0', '');
INSERT INTO `ims_modules` VALUES ('9', 'voice', 'system', '基本语音回复', '1.0', '提供语音回复', '在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。', 'WeEngine Team', 'http://www.qynetwork.io/', '0', '', '', '1', '1', '0', '0', '');
INSERT INTO `ims_modules` VALUES ('10', 'chats', 'system', '发送客服消息', '1.0', '公众号可以在粉丝最后发送消息的48小时内无限制发送消息', '', 'WeEngine Team', 'http://www.qynetwork.io/', '0', '', '', '0', '1', '0', '0', '');
INSERT INTO `ims_modules` VALUES ('11', 'wxcard', 'system', '微信卡券回复', '1.0', '微信卡券回复', '微信卡券回复', 'WeEngine Team', 'http://www.qynetwork.io/', '0', '', '', '1', '1', '0', '0', '');
INSERT INTO `ims_modules` VALUES ('12', 'paycenter', 'system', '收银台', '1.0', '收银台', '收银台', 'WeEngine Team', 'http://www.qynetwork.io/', '0', '', '', '1', '1', '0', '0', '');
INSERT INTO `ims_modules` VALUES ('13', 'ewei_shopv2', 'business', '玩淘宝', '2.9.2', '玩淘宝商城(分销),多用户分权，淘宝商品一键转换，多种插件支持。', '玩淘宝商城(分销)，多项信息模板，强大的自定义规格设置', 'we7', 'http://www.qynetwork.io/', '0', 'a:14:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:11:\"unsubscribe\";i:9;s:2:\"qr\";i:10;s:5:\"trace\";i:11;s:5:\"click\";i:12;s:4:\"view\";i:13;s:14:\"merchant_order\";}', 'a:12:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:2:\"qr\";i:9;s:5:\"trace\";i:10;s:5:\"click\";i:11;s:14:\"merchant_order\";}', '0', '0', '0', '0', 'a:0:{}');

-- ----------------------------
-- Table structure for ims_modules_bindings
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_bindings`;
CREATE TABLE `ims_modules_bindings` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) NOT NULL,
  `entry` varchar(10) NOT NULL,
  `call` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `do` varchar(30) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `displayorder` tinyint(255) unsigned NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `idx_module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_bindings
-- ----------------------------
INSERT INTO `ims_modules_bindings` VALUES ('1', 'ewei_shopv2', 'cover', '', '商城入口', 'mobile', '', '0', '', '', '0');
INSERT INTO `ims_modules_bindings` VALUES ('2', 'ewei_shopv2', 'menu', 'getMenus', '', '', '', '0', '', '', '0');

-- ----------------------------
-- Table structure for ims_modules_recycle
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_recycle`;
CREATE TABLE `ims_modules_recycle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `modulename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modulename` (`modulename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_recycle
-- ----------------------------

-- ----------------------------
-- Table structure for ims_music_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_music_reply`;
CREATE TABLE `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(300) NOT NULL,
  `hqurl` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_music_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_news_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_news_reply`;
CREATE TABLE `ims_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parent_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_news_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_paycenter_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_paycenter_order`;
CREATE TABLE `ims_paycenter_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `uniontid` varchar(40) NOT NULL,
  `transaction_id` varchar(40) NOT NULL,
  `type` varchar(10) NOT NULL,
  `trade_type` varchar(10) NOT NULL,
  `body` varchar(255) NOT NULL,
  `fee` varchar(15) NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `auth_code` varchar(30) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `follow` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `credit_status` tinyint(3) unsigned NOT NULL,
  `paytime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_paycenter_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_profile_fields
-- ----------------------------
DROP TABLE IF EXISTS `ims_profile_fields`;
CREATE TABLE `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `unchangeable` tinyint(1) NOT NULL,
  `showinregister` tinyint(1) NOT NULL,
  `field_length` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_profile_fields
-- ----------------------------
INSERT INTO `ims_profile_fields` VALUES ('1', 'realname', '1', '真实姓名', '', '0', '1', '1', '1', '0');
INSERT INTO `ims_profile_fields` VALUES ('2', 'nickname', '1', '昵称', '', '1', '1', '0', '1', '0');
INSERT INTO `ims_profile_fields` VALUES ('3', 'avatar', '1', '头像', '', '1', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('4', 'qq', '1', 'QQ号', '', '0', '0', '0', '1', '0');
INSERT INTO `ims_profile_fields` VALUES ('5', 'mobile', '1', '手机号码', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('6', 'vip', '1', 'VIP级别', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('7', 'gender', '1', '性别', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('8', 'birthyear', '1', '出生生日', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('9', 'constellation', '1', '星座', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('10', 'zodiac', '1', '生肖', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('11', 'telephone', '1', '固定电话', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('12', 'idcard', '1', '证件号码', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('13', 'studentid', '1', '学号', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('14', 'grade', '1', '班级', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('15', 'address', '1', '邮寄地址', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('16', 'zipcode', '1', '邮编', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('17', 'nationality', '1', '国籍', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('18', 'resideprovince', '1', '居住地址', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('19', 'graduateschool', '1', '毕业学校', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('20', 'company', '1', '公司', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('21', 'education', '1', '学历', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('22', 'occupation', '1', '职业', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('23', 'position', '1', '职位', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('24', 'revenue', '1', '年收入', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('25', 'affectivestatus', '1', '情感状态', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('26', 'lookingfor', '1', ' 交友目的', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('27', 'bloodtype', '1', '血型', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('28', 'height', '1', '身高', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('29', 'weight', '1', '体重', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('30', 'alipay', '1', '支付宝帐号', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('31', 'msn', '1', 'MSN', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('32', 'email', '1', '电子邮箱', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('33', 'taobao', '1', '阿里旺旺', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('34', 'site', '1', '主页', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('35', 'bio', '1', '自我介绍', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('36', 'interest', '1', '兴趣爱好', '', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for ims_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `ims_qrcode`;
CREATE TABLE `ims_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `extra` int(10) unsigned NOT NULL,
  `qrcid` bigint(20) NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `model` tinyint(1) unsigned NOT NULL,
  `ticket` varchar(250) NOT NULL,
  `url` varchar(256) NOT NULL,
  `expire` int(10) unsigned NOT NULL,
  `subnum` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qrcid` (`qrcid`),
  KEY `uniacid` (`uniacid`),
  KEY `ticket` (`ticket`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for ims_qrcode_stat
-- ----------------------------
DROP TABLE IF EXISTS `ims_qrcode_stat`;
CREATE TABLE `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `qrcid` bigint(20) unsigned NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_qrcode_stat
-- ----------------------------

-- ----------------------------
-- Table structure for ims_rule
-- ----------------------------
DROP TABLE IF EXISTS `ims_rule`;
CREATE TABLE `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_rule
-- ----------------------------
INSERT INTO `ims_rule` VALUES ('1', '0', '城市天气', 'userapi', '255', '1');
INSERT INTO `ims_rule` VALUES ('2', '0', '百度百科', 'userapi', '255', '1');
INSERT INTO `ims_rule` VALUES ('3', '0', '即时翻译', 'userapi', '255', '1');
INSERT INTO `ims_rule` VALUES ('4', '0', '今日老黄历', 'userapi', '255', '1');
INSERT INTO `ims_rule` VALUES ('5', '0', '看新闻', 'userapi', '255', '1');
INSERT INTO `ims_rule` VALUES ('6', '0', '快递查询', 'userapi', '255', '1');
INSERT INTO `ims_rule` VALUES ('7', '1', '个人中心入口设置', 'cover', '0', '1');
INSERT INTO `ims_rule` VALUES ('8', '1', '微擎团队入口设置', 'cover', '0', '1');

-- ----------------------------
-- Table structure for ims_rule_keyword
-- ----------------------------
DROP TABLE IF EXISTS `ims_rule_keyword`;
CREATE TABLE `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content` (`content`),
  KEY `idx_rid` (`rid`),
  KEY `idx_uniacid_type_content` (`uniacid`,`type`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_rule_keyword
-- ----------------------------
INSERT INTO `ims_rule_keyword` VALUES ('1', '1', '0', 'userapi', '^.+天气$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('2', '2', '0', 'userapi', '^百科.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('3', '2', '0', 'userapi', '^定义.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('4', '3', '0', 'userapi', '^@.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('5', '4', '0', 'userapi', '日历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('6', '4', '0', 'userapi', '万年历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('7', '4', '0', 'userapi', '黄历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('8', '4', '0', 'userapi', '几号', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('9', '5', '0', 'userapi', '新闻', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('10', '6', '0', 'userapi', '^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('11', '7', '1', 'cover', '个人中心', '1', '0', '1');
INSERT INTO `ims_rule_keyword` VALUES ('12', '8', '1', 'cover', '首页', '1', '0', '1');

-- ----------------------------
-- Table structure for ims_site_article
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_article`;
CREATE TABLE `ims_site_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL,
  `ccate` int(10) unsigned NOT NULL,
  `template` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `credit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_article
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_category`;
CREATE TABLE `ims_site_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `icon` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `ishomepage` tinyint(1) NOT NULL,
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_multi
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_multi`;
CREATE TABLE `ims_site_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `bindhost` (`bindhost`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_multi
-- ----------------------------
INSERT INTO `ims_site_multi` VALUES ('1', '1', '微擎团队', '1', '', '1', '');
INSERT INTO `ims_site_multi` VALUES ('2', '2', 'wxiang_号内测试', '2', '', '0', '');
INSERT INTO `ims_site_multi` VALUES ('3', '3', 'wyxiang测试号', '3', '', '0', '');
INSERT INTO `ims_site_multi` VALUES ('4', '4', 'wyxiang2测试号', '4', '', '0', '');
INSERT INTO `ims_site_multi` VALUES ('5', '5', 'wyxinag2', '5', '', '0', '');

-- ----------------------------
-- Table structure for ims_site_nav
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_nav`;
CREATE TABLE `ims_site_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `css` varchar(1000) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `categoryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_nav
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_page
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_page`;
CREATE TABLE `ims_site_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `goodnum` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_page
-- ----------------------------
INSERT INTO `ims_site_page` VALUES ('1', '1', '0', '快捷菜单', '', '{\"navStyle\":\"2\",\"bgColor\":\"#f4f4f4\",\"menus\":[{\"title\":\"\\u4f1a\\u5458\\u5361\",\"url\":\".\\/index.php?c=mc&a=bond&do=card&i=1\",\"submenus\":[],\"icon\":{\"name\":\"fa fa-credit-card\",\"color\":\"#969696\"},\"image\":\"\",\"hoverimage\":\"\",\"hovericon\":[]},{\"title\":\"\\u5151\\u6362\",\"url\":\".\\/index.php?c=activity&a=coupon&do=display&&i=1\",\"submenus\":[],\"icon\":{\"name\":\"fa fa-money\",\"color\":\"#969696\"},\"image\":\"\",\"hoverimage\":\"\",\"hovericon\":[]},{\"title\":\"\\u4ed8\\u6b3e\",\"url\":\"\\\" data-target=\\\"#scan\\\" data-toggle=\\\"modal\\\" href=\\\"javascript:void();\",\"submenus\":[],\"icon\":{\"name\":\"fa fa-qrcode\",\"color\":\"#969696\"},\"image\":\"\",\"hoverimage\":\"\",\"hovericon\":\"\"},{\"title\":\"\\u4e2a\\u4eba\\u4e2d\\u5fc3\",\"url\":\".\\/index.php?i=1&c=mc&\",\"submenus\":[],\"icon\":{\"name\":\"fa fa-user\",\"color\":\"#969696\"},\"image\":\"\",\"hoverimage\":\"\",\"hovericon\":[]}],\"extend\":[],\"position\":{\"homepage\":true,\"usercenter\":true,\"page\":true,\"article\":true},\"ignoreModules\":[]}', '<div style=\"background-color: rgb(244, 244, 244);\" class=\"js-quickmenu nav-menu-app has-nav-0  has-nav-4\"   ><ul class=\"nav-group clearfix\"><li class=\"nav-group-item \" ><a href=\"./index.php?c=mc&a=bond&do=card&i=1\" style=\"background-position: center 2px;\" ><i style=\"color: rgb(150, 150, 150);\"  class=\"fa fa-credit-card\"  js-onclass-name=\"\" js-onclass-color=\"\" ></i><span style=\"color: rgb(150, 150, 150);\" class=\"\"  js-onclass-color=\"\">会员卡</span></a></li><li class=\"nav-group-item \" ><a href=\"./index.php?c=activity&a=coupon&do=display&&i=1\" style=\"background-position: center 2px;\" ><i style=\"color: rgb(150, 150, 150);\"  class=\"fa fa-money\"  js-onclass-name=\"\" js-onclass-color=\"\" ></i><span style=\"color: rgb(150, 150, 150);\" class=\"\"  js-onclass-color=\"\">兑换</span></a></li><li class=\"nav-group-item \" ><a href=\"\" data-target=\"#scan\" data-toggle=\"modal\" href=\"javascript:void();\" style=\"background-position: center 2px;\" ><i style=\"color: rgb(150, 150, 150);\"  class=\"fa fa-qrcode\"  js-onclass-name=\"\" js-onclass-color=\"\" ></i><span style=\"color: rgb(150, 150, 150);\" class=\"\"  js-onclass-color=\"\">付款</span></a></li><li class=\"nav-group-item \" ><a href=\"./index.php?i=1&c=mc&\" style=\"background-position: center 2px;\" ><i style=\"color: rgb(150, 150, 150);\"  class=\"fa fa-user\"  js-onclass-name=\"\" js-onclass-color=\"\" ></i><span style=\"color: rgb(150, 150, 150);\" class=\"\"  js-onclass-color=\"\">个人中心</span></a></li></ul></div>', '4', '1', '1440242655', '0');

-- ----------------------------
-- Table structure for ims_site_slide
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_slide`;
CREATE TABLE `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_slide
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_styles
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_styles`;
CREATE TABLE `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_styles
-- ----------------------------
INSERT INTO `ims_site_styles` VALUES ('1', '1', '1', '微站默认模板_gC5C');
INSERT INTO `ims_site_styles` VALUES ('2', '2', '1', '微站默认模板_w44l');
INSERT INTO `ims_site_styles` VALUES ('3', '3', '1', '微站默认模板_qEhJ');
INSERT INTO `ims_site_styles` VALUES ('4', '4', '1', '微站默认模板_Y222');
INSERT INTO `ims_site_styles` VALUES ('5', '5', '1', '微站默认模板_QrcR');

-- ----------------------------
-- Table structure for ims_site_styles_vars
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_styles_vars`;
CREATE TABLE `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_styles_vars
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_templates
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_templates`;
CREATE TABLE `ims_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `version` varchar(64) NOT NULL,
  `description` varchar(500) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sections` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_templates
-- ----------------------------
INSERT INTO `ims_site_templates` VALUES ('1', 'default', '微站默认模板', '', '由微擎提供默认微站模板套系', '微擎团队', 'http://we7.cc', '1', '0');
INSERT INTO `ims_site_templates` VALUES ('61', 'style40', '微网站style40', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('60', 'style41', '微网站style41', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('59', 'style42', '微网站style42', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('58', 'style43', '微网站style43', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('57', 'style44', '微网站style44', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('56', 'style45', '微网站style45', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('55', 'style46', '微网站style46', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('54', 'style47', '微网站style47', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('53', 'style48', '微网站style48', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('52', 'style49', '微网站style49', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('51', 'style5', '微网站style5', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'car', '0');
INSERT INTO `ims_site_templates` VALUES ('50', 'style50', '微网站style50', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('49', 'style51', '微网站style51', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('48', 'style52', '微网站style52', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('47', 'style53', '微网站style53', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('46', 'style54', '微网站style54', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('45', 'style55', '微网站style55', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('44', 'style56', '微网站style56', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('43', 'style57', '微网站style57', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('42', 'style58', '微网站模板58', '', '由微网站提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0');
INSERT INTO `ims_site_templates` VALUES ('41', 'style59', '微网站模板59', '', '由微网站提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0');
INSERT INTO `ims_site_templates` VALUES ('40', 'style6', '微网站style6', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('39', 'style60', '微网站模板60', '', '由微网站提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', '0');
INSERT INTO `ims_site_templates` VALUES ('38', 'style7', '微网站style7', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('37', 'style8', '微网站style8', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'shoot', '0');
INSERT INTO `ims_site_templates` VALUES ('36', 'style9', '微网站style9', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'car', '0');
INSERT INTO `ims_site_templates` VALUES ('62', 'style4', '微网站style4', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'car', '0');
INSERT INTO `ims_site_templates` VALUES ('63', 'style39', '微网站style39', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('64', 'style38', '微网站style38', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('65', 'style37', '微网站style37', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('66', 'style36', '微网站style36', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'medical', '0');
INSERT INTO `ims_site_templates` VALUES ('67', 'style35', '微网站style35', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('68', 'style34', '微网站style34', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('69', 'style33', '微网站style33', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('70', 'style32', '微网站style32', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('71', 'style31', '微网站style31', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'drink', '0');
INSERT INTO `ims_site_templates` VALUES ('72', 'style30', '微网站style30', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('73', 'style3', '微网站style3', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('74', 'style29', '微网站style29', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('75', 'style28', '微网站style28', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('76', 'style27', '微网站style27', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('77', 'style26', '微网站style26', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('78', 'style25', '微网站style25', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('79', 'style24', '微网站style24', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('80', 'style23', '微网站style23', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('81', 'style22', '微网站style22', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('82', 'style21', '微网站style21', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('83', 'style20', '微网站style20', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('84', 'style2', '微网站style2', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'cosmetology', '0');
INSERT INTO `ims_site_templates` VALUES ('85', 'style19', '微网站style19', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'drink', '0');
INSERT INTO `ims_site_templates` VALUES ('86', 'style18', '微网站style18', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('87', 'style17', '微网站style17', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('88', 'style16', '微网站style16', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('89', 'style15', '微网站style15', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'tourism', '0');
INSERT INTO `ims_site_templates` VALUES ('90', 'style14', '微网站style14', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('91', 'style13', '微网站style13', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'realty', '0');
INSERT INTO `ims_site_templates` VALUES ('92', 'style12', '微网站style12', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'often', '0');
INSERT INTO `ims_site_templates` VALUES ('93', 'style11', '微网站style11', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'shoot', '0');
INSERT INTO `ims_site_templates` VALUES ('94', 'style10', '微网站style10', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'shoot', '0');
INSERT INTO `ims_site_templates` VALUES ('95', 'style1', '微网站style1', '', '由微网站提供默认微站模板套系', '微网站', 'http://www.baidu.com', 'drink', '0');

-- ----------------------------
-- Table structure for ims_stat_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_fans`;
CREATE TABLE `ims_stat_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `new` int(10) unsigned NOT NULL,
  `cancel` int(10) unsigned NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_fans
-- ----------------------------
INSERT INTO `ims_stat_fans` VALUES ('1', '1', '0', '0', '6', '20170404');
INSERT INTO `ims_stat_fans` VALUES ('2', '1', '0', '0', '6', '20170403');
INSERT INTO `ims_stat_fans` VALUES ('3', '1', '0', '0', '6', '20170402');
INSERT INTO `ims_stat_fans` VALUES ('4', '1', '0', '0', '6', '20170401');
INSERT INTO `ims_stat_fans` VALUES ('5', '1', '0', '0', '6', '20170331');
INSERT INTO `ims_stat_fans` VALUES ('6', '1', '0', '0', '6', '20170330');
INSERT INTO `ims_stat_fans` VALUES ('7', '1', '0', '0', '6', '20170329');
INSERT INTO `ims_stat_fans` VALUES ('8', '1', '0', '0', '6', '20170501');
INSERT INTO `ims_stat_fans` VALUES ('9', '1', '0', '0', '6', '20170430');
INSERT INTO `ims_stat_fans` VALUES ('10', '1', '0', '0', '6', '20170429');
INSERT INTO `ims_stat_fans` VALUES ('11', '1', '0', '0', '6', '20170428');
INSERT INTO `ims_stat_fans` VALUES ('12', '1', '0', '0', '6', '20170427');
INSERT INTO `ims_stat_fans` VALUES ('13', '1', '0', '0', '6', '20170426');
INSERT INTO `ims_stat_fans` VALUES ('14', '1', '0', '0', '6', '20170425');
INSERT INTO `ims_stat_fans` VALUES ('15', '2', '0', '0', '0', '20170501');
INSERT INTO `ims_stat_fans` VALUES ('16', '2', '0', '0', '0', '20170430');
INSERT INTO `ims_stat_fans` VALUES ('17', '2', '0', '0', '0', '20170429');
INSERT INTO `ims_stat_fans` VALUES ('18', '2', '0', '0', '0', '20170428');
INSERT INTO `ims_stat_fans` VALUES ('19', '2', '0', '0', '0', '20170427');
INSERT INTO `ims_stat_fans` VALUES ('20', '2', '0', '0', '0', '20170426');
INSERT INTO `ims_stat_fans` VALUES ('21', '2', '0', '0', '0', '20170425');
INSERT INTO `ims_stat_fans` VALUES ('22', '3', '0', '0', '6', '20170501');
INSERT INTO `ims_stat_fans` VALUES ('23', '3', '0', '0', '6', '20170430');
INSERT INTO `ims_stat_fans` VALUES ('24', '3', '0', '0', '6', '20170429');
INSERT INTO `ims_stat_fans` VALUES ('25', '3', '0', '0', '6', '20170428');
INSERT INTO `ims_stat_fans` VALUES ('26', '3', '0', '0', '0', '20170427');
INSERT INTO `ims_stat_fans` VALUES ('27', '3', '0', '0', '0', '20170426');
INSERT INTO `ims_stat_fans` VALUES ('28', '3', '0', '0', '0', '20170425');
INSERT INTO `ims_stat_fans` VALUES ('29', '3', '0', '0', '6', '20170502');
INSERT INTO `ims_stat_fans` VALUES ('30', '3', '1', '1', '6', '20170503');
INSERT INTO `ims_stat_fans` VALUES ('31', '3', '0', '0', '6', '20170504');
INSERT INTO `ims_stat_fans` VALUES ('32', '5', '1', '0', '1', '20170505');
INSERT INTO `ims_stat_fans` VALUES ('33', '3', '0', '0', '6', '20170507');
INSERT INTO `ims_stat_fans` VALUES ('34', '3', '0', '0', '6', '20170506');
INSERT INTO `ims_stat_fans` VALUES ('35', '3', '0', '0', '6', '20170505');
INSERT INTO `ims_stat_fans` VALUES ('36', '5', '0', '0', '1', '20170507');
INSERT INTO `ims_stat_fans` VALUES ('37', '5', '0', '0', '1', '20170506');
INSERT INTO `ims_stat_fans` VALUES ('38', '5', '0', '0', '0', '20170504');
INSERT INTO `ims_stat_fans` VALUES ('39', '5', '0', '0', '0', '20170503');
INSERT INTO `ims_stat_fans` VALUES ('40', '5', '0', '0', '0', '20170502');
INSERT INTO `ims_stat_fans` VALUES ('41', '5', '0', '0', '0', '20170501');
INSERT INTO `ims_stat_fans` VALUES ('42', '4', '0', '0', '1', '20170507');
INSERT INTO `ims_stat_fans` VALUES ('43', '4', '0', '0', '1', '20170506');
INSERT INTO `ims_stat_fans` VALUES ('44', '4', '1', '0', '1', '20170505');

-- ----------------------------
-- Table structure for ims_stat_keyword
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_keyword`;
CREATE TABLE `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for ims_stat_msg_history
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_msg_history`;
CREATE TABLE `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_msg_history
-- ----------------------------
INSERT INTO `ims_stat_msg_history` VALUES ('1', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', 'default', 'a:3:{s:10:\"location_x\";s:9:\"34.216789\";s:10:\"location_y\";s:10:\"108.880424\";s:9:\"precision\";s:9:\"30.000000\";}', 'trace', '1493786259');
INSERT INTO `ims_stat_msg_history` VALUES ('2', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', 'default', 'a:3:{s:10:\"location_x\";s:9:\"34.216820\";s:10:\"location_y\";s:10:\"108.880417\";s:9:\"precision\";s:9:\"30.000000\";}', 'trace', '1493786368');
INSERT INTO `ims_stat_msg_history` VALUES ('3', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', '', 'event', '1493786369');
INSERT INTO `ims_stat_msg_history` VALUES ('4', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', 'default', 'a:3:{s:10:\"location_x\";s:9:\"34.216820\";s:10:\"location_y\";s:10:\"108.880417\";s:9:\"precision\";s:9:\"30.000000\";}', 'trace', '1493786381');
INSERT INTO `ims_stat_msg_history` VALUES ('5', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', '', 'unsubscrib', '1493786388');
INSERT INTO `ims_stat_msg_history` VALUES ('6', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', 'a:2:{s:5:\"scene\";N;s:6:\"ticket\";N;}', 'subscribe', '1493786394');
INSERT INTO `ims_stat_msg_history` VALUES ('7', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', 'default', 'a:3:{s:10:\"location_x\";s:9:\"34.216789\";s:10:\"location_y\";s:10:\"108.880486\";s:9:\"precision\";s:9:\"30.000000\";}', 'trace', '1493786397');
INSERT INTO `ims_stat_msg_history` VALUES ('8', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', '', 'event', '1493786399');
INSERT INTO `ims_stat_msg_history` VALUES ('9', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', 'default', 'a:3:{s:10:\"location_x\";s:9:\"34.216789\";s:10:\"location_y\";s:10:\"108.880486\";s:9:\"precision\";s:9:\"30.000000\";}', 'trace', '1493786422');
INSERT INTO `ims_stat_msg_history` VALUES ('10', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', '', 'unsubscrib', '1493786426');
INSERT INTO `ims_stat_msg_history` VALUES ('11', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', 'a:2:{s:5:\"scene\";N;s:6:\"ticket\";N;}', 'subscribe', '1493786438');
INSERT INTO `ims_stat_msg_history` VALUES ('12', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', 'default', 'a:3:{s:10:\"location_x\";s:9:\"34.216770\";s:10:\"location_y\";s:10:\"108.880585\";s:9:\"precision\";s:9:\"30.000000\";}', 'trace', '1493786441');
INSERT INTO `ims_stat_msg_history` VALUES ('13', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', '', 'unsubscrib', '1493786472');
INSERT INTO `ims_stat_msg_history` VALUES ('14', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', 'a:2:{s:5:\"scene\";N;s:6:\"ticket\";N;}', 'subscribe', '1493786478');
INSERT INTO `ims_stat_msg_history` VALUES ('15', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', 'default', 'a:3:{s:10:\"location_x\";s:9:\"34.216789\";s:10:\"location_y\";s:10:\"108.880577\";s:9:\"precision\";s:9:\"30.000000\";}', 'trace', '1493786480');
INSERT INTO `ims_stat_msg_history` VALUES ('16', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', '', 'event', '1493786491');
INSERT INTO `ims_stat_msg_history` VALUES ('17', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', 'default', 'a:3:{s:10:\"location_x\";s:9:\"34.216789\";s:10:\"location_y\";s:10:\"108.880577\";s:9:\"precision\";s:9:\"30.000000\";}', 'trace', '1493786495');
INSERT INTO `ims_stat_msg_history` VALUES ('18', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', '', 'unsubscrib', '1493786504');
INSERT INTO `ims_stat_msg_history` VALUES ('19', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', 'a:2:{s:5:\"scene\";N;s:6:\"ticket\";N;}', 'subscribe', '1493786510');
INSERT INTO `ims_stat_msg_history` VALUES ('20', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', '', 'unsubscrib', '1493786622');
INSERT INTO `ims_stat_msg_history` VALUES ('21', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', 'a:2:{s:5:\"scene\";N;s:6:\"ticket\";N;}', 'subscribe', '1493786629');
INSERT INTO `ims_stat_msg_history` VALUES ('22', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', 'default', 'a:3:{s:10:\"location_x\";s:9:\"34.216843\";s:10:\"location_y\";s:10:\"108.880470\";s:9:\"precision\";s:9:\"30.000000\";}', 'trace', '1493786631');
INSERT INTO `ims_stat_msg_history` VALUES ('23', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', '', 'unsubscrib', '1493786641');
INSERT INTO `ims_stat_msg_history` VALUES ('24', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', 'a:2:{s:5:\"scene\";N;s:6:\"ticket\";N;}', 'subscribe', '1493786651');
INSERT INTO `ims_stat_msg_history` VALUES ('25', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', '', 'event', '1493786659');
INSERT INTO `ims_stat_msg_history` VALUES ('26', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', '', 'event', '1493786802');
INSERT INTO `ims_stat_msg_history` VALUES ('27', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', 'a:2:{s:5:\"scene\";N;s:6:\"ticket\";N;}', 'subscribe', '1493965237');
INSERT INTO `ims_stat_msg_history` VALUES ('28', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'unsubscrib', '1493965384');
INSERT INTO `ims_stat_msg_history` VALUES ('29', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', 'a:2:{s:5:\"scene\";N;s:6:\"ticket\";N;}', 'subscribe', '1493965395');
INSERT INTO `ims_stat_msg_history` VALUES ('30', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'unsubscrib', '1493965422');
INSERT INTO `ims_stat_msg_history` VALUES ('31', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', 'a:2:{s:5:\"scene\";N;s:6:\"ticket\";N;}', 'subscribe', '1493965433');
INSERT INTO `ims_stat_msg_history` VALUES ('32', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', 'a:4:{s:7:\"content\";s:54:\"http://inxout.ngrok.cc/app/index.php?i=5&c=entry&eid=1\";s:8:\"original\";N;s:11:\"redirection\";b:0;s:6:\"source\";N;}', 'text', '1493965499');
INSERT INTO `ims_stat_msg_history` VALUES ('33', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'unsubscrib', '1493965693');
INSERT INTO `ims_stat_msg_history` VALUES ('34', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', 'a:2:{s:5:\"scene\";N;s:6:\"ticket\";N;}', 'subscribe', '1493965706');
INSERT INTO `ims_stat_msg_history` VALUES ('35', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'event', '1493965709');
INSERT INTO `ims_stat_msg_history` VALUES ('36', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'event', '1493968734');
INSERT INTO `ims_stat_msg_history` VALUES ('37', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'event', '1493968942');
INSERT INTO `ims_stat_msg_history` VALUES ('38', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'unsubscrib', '1493969049');
INSERT INTO `ims_stat_msg_history` VALUES ('39', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', 'a:2:{s:5:\"scene\";N;s:6:\"ticket\";N;}', 'subscribe', '1493969060');
INSERT INTO `ims_stat_msg_history` VALUES ('40', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'event', '1493969063');
INSERT INTO `ims_stat_msg_history` VALUES ('41', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'event', '1493969530');
INSERT INTO `ims_stat_msg_history` VALUES ('42', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'event', '1493969559');
INSERT INTO `ims_stat_msg_history` VALUES ('43', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'event', '1493969600');
INSERT INTO `ims_stat_msg_history` VALUES ('44', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'event', '1493969621');
INSERT INTO `ims_stat_msg_history` VALUES ('45', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', 'a:2:{s:5:\"scene\";N;s:6:\"ticket\";N;}', 'subscribe', '1493969628');
INSERT INTO `ims_stat_msg_history` VALUES ('46', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'event', '1493969630');
INSERT INTO `ims_stat_msg_history` VALUES ('47', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'event', '1493969649');
INSERT INTO `ims_stat_msg_history` VALUES ('48', '3', '0', '0', 'oP5YGuOnVn4T12zhCHbtyQkrXjdY', '', '', 'event', '1493969726');
INSERT INTO `ims_stat_msg_history` VALUES ('49', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'event', '1493969766');
INSERT INTO `ims_stat_msg_history` VALUES ('50', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'event', '1493969846');
INSERT INTO `ims_stat_msg_history` VALUES ('51', '5', '0', '0', 'o1jelwd721zK_A53PfLkesC0YvN0', '', '', 'event', '1493969893');

-- ----------------------------
-- Table structure for ims_stat_rule
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_rule`;
CREATE TABLE `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_rule
-- ----------------------------
INSERT INTO `ims_stat_rule` VALUES ('1', '3', '0', '1', '1493786259', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('2', '3', '0', '1', '1493786368', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('3', '3', '0', '1', '1493786369', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('4', '3', '0', '1', '1493786381', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('5', '3', '0', '1', '1493786394', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('6', '3', '0', '1', '1493786397', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('7', '3', '0', '1', '1493786399', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('8', '3', '0', '1', '1493786422', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('9', '3', '0', '1', '1493786438', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('10', '3', '0', '1', '1493786441', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('11', '3', '0', '1', '1493786478', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('12', '3', '0', '1', '1493786480', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('13', '3', '0', '1', '1493786491', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('14', '3', '0', '1', '1493786495', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('15', '3', '0', '1', '1493786510', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('16', '3', '0', '1', '1493786629', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('17', '3', '0', '1', '1493786631', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('18', '3', '0', '1', '1493786651', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('19', '3', '0', '1', '1493786659', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('20', '3', '0', '1', '1493786802', '1493740800');
INSERT INTO `ims_stat_rule` VALUES ('21', '5', '0', '1', '1493965237', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('22', '5', '0', '1', '1493965395', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('23', '5', '0', '1', '1493965433', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('24', '5', '0', '1', '1493965499', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('25', '5', '0', '1', '1493965706', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('26', '5', '0', '1', '1493965709', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('27', '5', '0', '1', '1493968734', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('28', '5', '0', '1', '1493968942', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('29', '5', '0', '1', '1493969060', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('30', '5', '0', '1', '1493969063', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('31', '5', '0', '1', '1493969530', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('32', '5', '0', '1', '1493969559', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('33', '5', '0', '1', '1493969600', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('34', '5', '0', '1', '1493969621', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('35', '5', '0', '1', '1493969628', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('36', '5', '0', '1', '1493969630', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('37', '5', '0', '1', '1493969649', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('38', '3', '0', '1', '1493969726', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('39', '5', '0', '1', '1493969766', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('40', '5', '0', '1', '1493969846', '1493913600');
INSERT INTO `ims_stat_rule` VALUES ('41', '5', '0', '1', '1493969893', '1493913600');

-- ----------------------------
-- Table structure for ims_uni_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account`;
CREATE TABLE `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `default_acid` int(10) unsigned NOT NULL,
  `rank` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account
-- ----------------------------
INSERT INTO `ims_uni_account` VALUES ('1', '0', '微擎团队', '一个朝气蓬勃的团队', '1', null);
INSERT INTO `ims_uni_account` VALUES ('2', '0', 'wxiang_号内测试', 'wxiang_号内测试', '2', null);
INSERT INTO `ims_uni_account` VALUES ('3', '0', 'wyxiang测试号', 'wyxiang测试号', '3', null);
INSERT INTO `ims_uni_account` VALUES ('4', '0', 'wyxiang2测试号', '', '4', null);
INSERT INTO `ims_uni_account` VALUES ('5', '0', 'wyxinag2', '', '5', null);

-- ----------------------------
-- Table structure for ims_uni_account_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_group`;
CREATE TABLE `ims_uni_account_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_group
-- ----------------------------
INSERT INTO `ims_uni_account_group` VALUES ('4', '1', '1');
INSERT INTO `ims_uni_account_group` VALUES ('3', '1', '-1');

-- ----------------------------
-- Table structure for ims_uni_account_menus
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_menus`;
CREATE TABLE `ims_uni_account_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `menuid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `group_id` int(10) NOT NULL,
  `client_platform_type` tinyint(3) unsigned NOT NULL,
  `area` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `menuid` (`menuid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_menus
-- ----------------------------
INSERT INTO `ims_uni_account_menus` VALUES ('1', '1', '0', '1', '', '0', '-1', '0', '', 'YTozOntzOjY6ImJ1dHRvbiI7YTozOntpOjA7YToyOntzOjQ6Im5hbWUiO3M6OToi5b6u5ZWG5Z+OIjtzOjEwOiJzdWJfYnV0dG9uIjthOjU6e2k6MDthOjQ6e3M6NDoidHlwZSI7czo0OiJ2aWV3IjtzOjQ6Im5hbWUiO3M6MTM6IuWVhuWfjummlumhtTIiO3M6MzoidXJsIjtzOjYyOiJodHRwOi8vbGluZ2dvdS5xaWFueXNvZnQuY24vbW9iaWxlL3dlaXhpbi9vYXV0aC5waHA/aWQ9MSZvaWQ9MSI7czoxMDoic3ViX2J1dHRvbiI7YTowOnt9fWk6MTthOjQ6e3M6NDoidHlwZSI7czo0OiJ2aWV3IjtzOjQ6Im5hbWUiO3M6MTI6IueDremXqOWVhuWTgSI7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9saW5nZ291LnFpYW55c29mdC5jbi8iO3M6MTA6InN1Yl9idXR0b24iO2E6MDp7fX1pOjI7YTo0OntzOjQ6InR5cGUiO3M6NToiY2xpY2siO3M6NDoibmFtZSI7czoxMjoi5pyA5paw5ZWG5ZOBIjtzOjM6ImtleSI7czozOiJuZXciO3M6MTA6InN1Yl9idXR0b24iO2E6MDp7fX1pOjM7YTo0OntzOjQ6InR5cGUiO3M6NToiY2xpY2siO3M6NDoibmFtZSI7czoxMjoi57K+5ZOB5o6o6I2QIjtzOjM6ImtleSI7czo0OiJiZXN0IjtzOjEwOiJzdWJfYnV0dG9uIjthOjA6e319aTo0O2E6NDp7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6NDoibmFtZSI7czo2OiLlgrvpgLwiO3M6MzoidXJsIjtzOjc3OiJodHRwOi8vZmVueGlhby5xeW5ldHdvcmsubmV0L2FwcC9pbmRleC5waHA/aT0yJmM9ZW50cnkmZG89c2hvcCZtPWV3ZWlfc2hvcF92MSI7czoxMDoic3ViX2J1dHRvbiI7YTowOnt9fX19aToxO2E6Mjp7czo0OiJuYW1lIjtzOjY6IuS8muWRmCI7czoxMDoic3ViX2J1dHRvbiI7YTo1OntpOjA7YTo0OntzOjQ6InR5cGUiO3M6NToiY2xpY2siO3M6NDoibmFtZSI7czoxMjoi5Liq5Lq65L+h5oGvIjtzOjM6ImtleSI7czo0OiJpbmZvIjtzOjEwOiJzdWJfYnV0dG9uIjthOjA6e319aToxO2E6NDp7czo0OiJ0eXBlIjtzOjU6ImNsaWNrIjtzOjQ6Im5hbWUiO3M6MTI6IuiuouWNleafpeivoiI7czozOiJrZXkiO3M6NDoiZGRjeCI7czoxMDoic3ViX2J1dHRvbiI7YTowOnt9fWk6MjthOjQ6e3M6NDoidHlwZSI7czo1OiJjbGljayI7czo0OiJuYW1lIjtzOjEyOiLlv6vpgJLmn6Xor6IiO3M6Mzoia2V5IjtzOjQ6InFkY3giO3M6MTA6InN1Yl9idXR0b24iO2E6MDp7fX1pOjM7YTo0OntzOjQ6InR5cGUiO3M6NToiY2xpY2siO3M6NDoibmFtZSI7czoxMjoi57uR5a6a5Lya5ZGYIjtzOjM6ImtleSI7czo0OiJiZGh5IjtzOjEwOiJzdWJfYnV0dG9uIjthOjA6e319aTo0O2E6NDp7czo0OiJ0eXBlIjtzOjU6ImNsaWNrIjtzOjQ6Im5hbWUiO3M6MTI6Iuino+mZpOe7keWumiI7czozOiJrZXkiO3M6NDoiamNiZCI7czoxMDoic3ViX2J1dHRvbiI7YTowOnt9fX19aToyO2E6Mjp7czo0OiJuYW1lIjtzOjY6IuabtOWkmiI7czoxMDoic3ViX2J1dHRvbiI7YToyOntpOjA7YTo0OntzOjQ6InR5cGUiO3M6NToiY2xpY2siO3M6NDoibmFtZSI7czo5OiLlvq7lrqLmnI0iO3M6Mzoia2V5IjtzOjI6ImtmIjtzOjEwOiJzdWJfYnV0dG9uIjthOjA6e319aToxO2E6NDp7czo0OiJ0eXBlIjtzOjU6ImNsaWNrIjtzOjQ6Im5hbWUiO3M6MTI6IuS7iuaXpeetvuWIsCI7czozOiJrZXkiO3M6MjoicWQiO3M6MTA6InN1Yl9idXR0b24iO2E6MDp7fX19fX1zOjQ6InR5cGUiO2k6MTtzOjk6Im1hdGNocnVsZSI7YTowOnt9fQ==', '1', '0', '0');
INSERT INTO `ims_uni_account_menus` VALUES ('5', '3', '0', '1', 'test5', '0', '-1', '0', '', 'YTozOntzOjY6ImJ1dHRvbiI7YToxOntpOjA7YToyOntzOjQ6Im5hbWUiO3M6MTI6IuiPnOWNleWQjeensCI7czoxMDoic3ViX2J1dHRvbiI7YToxOntpOjA7YTo0OntzOjQ6InR5cGUiO3M6NDoidmlldyI7czo0OiJuYW1lIjtzOjY6IuWVhuWfjiI7czozOiJ1cmwiO3M6NTQ6Imh0dHA6Ly9pbnhvdXQubmdyb2suY2MvYXBwL2luZGV4LnBocD9pPTMmYz1lbnRyeSZlaWQ9MSI7czoxMDoic3ViX2J1dHRvbiI7YTowOnt9fX19fXM6NDoidHlwZSI7aToxO3M6OToibWF0Y2hydWxlIjthOjA6e319', '1', '1493786563', '0');
INSERT INTO `ims_uni_account_menus` VALUES ('6', '5', '0', '1', '系统默认菜单', '0', '-1', '0', '', 'YTozOntzOjY6ImJ1dHRvbiI7YToxOntpOjA7YToyOntzOjQ6Im5hbWUiO3M6MTI6IuiPnOWNleWQjeensCI7czoxMDoic3ViX2J1dHRvbiI7YToxOntpOjA7YTo0OntzOjQ6InR5cGUiO3M6NDoidmlldyI7czo0OiJuYW1lIjtzOjc6IuWVhuWfjjIiO3M6MzoidXJsIjtzOjU0OiJodHRwOi8vaW54b3V0Lm5ncm9rLmNjL2FwcC9pbmRleC5waHA/aT01JmM9ZW50cnkmZWlkPTEiO3M6MTA6InN1Yl9idXR0b24iO2E6MDp7fX19fX1zOjQ6InR5cGUiO2k6MTtzOjk6Im1hdGNocnVsZSI7YTowOnt9fQ==', '1', '1493969008', '0');
INSERT INTO `ims_uni_account_menus` VALUES ('8', '5', '0', '2', '系统默认菜单', '0', '-1', '0', '', 'YToyOntzOjY6ImJ1dHRvbiI7YToxOntpOjA7YToyOntzOjQ6Im5hbWUiO3M6MTI6IuiPnOWNleWQjeensCI7czoxMDoic3ViX2J1dHRvbiI7YToxOntpOjA7YTozOntzOjQ6Im5hbWUiO3M6Nzoi5ZWG5Z+OMiI7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6MzoidXJsIjtzOjU0OiJodHRwOi8vaW54b3V0Lm5ncm9rLmNjL2FwcC9pbmRleC5waHA/aT01JmM9ZW50cnkmZWlkPTEiO319fX1zOjk6Im1hdGNocnVsZSI7YToxOntzOjc6Imdyb3VwaWQiO047fX0=', '0', '1493969008', '0');
INSERT INTO `ims_uni_account_menus` VALUES ('4', '3', '0', '2', 'test3', '0', '-1', '0', '', 'YToyOntzOjY6ImJ1dHRvbiI7YTozOntpOjA7YToyOntzOjQ6Im5hbWUiO3M6OToi5b6u5ZWG5Z+OIjtzOjEwOiJzdWJfYnV0dG9uIjthOjU6e2k6MDthOjM6e3M6NDoibmFtZSI7czoxMzoi5ZWG5Z+O6aaW6aG1NCI7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6MzoidXJsIjtzOjU0OiJodHRwOi8vaW54b3V0Lm5ncm9rLmNjL2FwcC9pbmRleC5waHA/aT0zJmM9ZW50cnkmZWlkPTEiO31pOjE7YTozOntzOjQ6Im5hbWUiO3M6MTI6IueDremXqOWVhuWTgSI7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6MzoidXJsIjtzOjI4OiJodHRwOi8vbGluZ2dvdS5xaWFueXNvZnQuY24vIjt9aToyO2E6Mzp7czo0OiJuYW1lIjtzOjEyOiLmnIDmlrDllYblk4EiO3M6NDoidHlwZSI7czo1OiJjbGljayI7czozOiJrZXkiO3M6MzoibmV3Ijt9aTozO2E6Mzp7czo0OiJuYW1lIjtzOjEyOiLnsr7lk4HmjqjojZAiO3M6NDoidHlwZSI7czo1OiJjbGljayI7czozOiJrZXkiO3M6NDoiYmVzdCI7fWk6NDthOjM6e3M6NDoibmFtZSI7czo2OiLlgrvpgLwiO3M6NDoidHlwZSI7czo0OiJ2aWV3IjtzOjM6InVybCI7czo3NzoiaHR0cDovL2ZlbnhpYW8ucXluZXR3b3JrLm5ldC9hcHAvaW5kZXgucGhwP2k9MiZjPWVudHJ5JmRvPXNob3AmbT1ld2VpX3Nob3BfdjEiO319fWk6MTthOjI6e3M6NDoibmFtZSI7czo2OiLkvJrlkZgiO3M6MTA6InN1Yl9idXR0b24iO2E6NTp7aTowO2E6Mzp7czo0OiJuYW1lIjtzOjEyOiLkuKrkurrkv6Hmga8iO3M6NDoidHlwZSI7czo1OiJjbGljayI7czozOiJrZXkiO3M6NDoiaW5mbyI7fWk6MTthOjM6e3M6NDoibmFtZSI7czoxMjoi6K6i5Y2V5p+l6K+iIjtzOjQ6InR5cGUiO3M6NToiY2xpY2siO3M6Mzoia2V5IjtzOjQ6ImRkY3giO31pOjI7YTozOntzOjQ6Im5hbWUiO3M6MTI6IuW/q+mAkuafpeivoiI7czo0OiJ0eXBlIjtzOjU6ImNsaWNrIjtzOjM6ImtleSI7czo0OiJxZGN4Ijt9aTozO2E6Mzp7czo0OiJuYW1lIjtzOjEyOiLnu5HlrprkvJrlkZgiO3M6NDoidHlwZSI7czo1OiJjbGljayI7czozOiJrZXkiO3M6NDoiYmRoeSI7fWk6NDthOjM6e3M6NDoibmFtZSI7czoxMjoi6Kej6Zmk57uR5a6aIjtzOjQ6InR5cGUiO3M6NToiY2xpY2siO3M6Mzoia2V5IjtzOjQ6ImpjYmQiO319fWk6MjthOjI6e3M6NDoibmFtZSI7czo2OiLmm7TlpJoiO3M6MTA6InN1Yl9idXR0b24iO2E6Mjp7aTowO2E6Mzp7czo0OiJuYW1lIjtzOjk6IuW+ruWuouacjSI7czo0OiJ0eXBlIjtzOjU6ImNsaWNrIjtzOjM6ImtleSI7czoyOiJrZiI7fWk6MTthOjM6e3M6NDoibmFtZSI7czoxMjoi5LuK5pel562+5YiwIjtzOjQ6InR5cGUiO3M6NToiY2xpY2siO3M6Mzoia2V5IjtzOjI6InFkIjt9fX19czo5OiJtYXRjaHJ1bGUiO2E6MTp7czo3OiJncm91cGlkIjtOO319', '0', '1493786509', '0');

-- ----------------------------
-- Table structure for ims_uni_account_modules
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_modules`;
CREATE TABLE `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_modules
-- ----------------------------
INSERT INTO `ims_uni_account_modules` VALUES ('1', '1', 'basic', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('2', '1', 'news', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('3', '1', 'music', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('4', '1', 'userapi', '1', 'a:6:{i:1;b:1;i:2;b:1;i:3;b:1;i:4;b:1;i:5;b:1;i:6;b:1;}');
INSERT INTO `ims_uni_account_modules` VALUES ('5', '1', 'recharge', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('6', '1', 'ewei_shopv2', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('7', '2', 'ewei_shopv2', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('8', '3', 'ewei_shopv2', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('9', '4', 'ewei_shopv2', '1', '');
INSERT INTO `ims_uni_account_modules` VALUES ('10', '5', 'ewei_shopv2', '1', '');

-- ----------------------------
-- Table structure for ims_uni_account_users
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_users`;
CREATE TABLE `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`uid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_users
-- ----------------------------
INSERT INTO `ims_uni_account_users` VALUES ('1', '2', '2', 'owner', '0');
INSERT INTO `ims_uni_account_users` VALUES ('2', '3', '2', 'owner', '0');

-- ----------------------------
-- Table structure for ims_uni_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_group`;
CREATE TABLE `ims_uni_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `modules` varchar(15000) NOT NULL,
  `templates` varchar(5000) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_group
-- ----------------------------
INSERT INTO `ims_uni_group` VALUES ('2', '黄金用户版套餐', 'a:1:{i:0;s:11:\"ewei_shopv2\";}', 'a:60:{i:0;s:2:\"61\";i:1;s:2:\"60\";i:2;s:2:\"59\";i:3;s:2:\"58\";i:4;s:2:\"57\";i:5;s:2:\"56\";i:6;s:2:\"55\";i:7;s:2:\"54\";i:8;s:2:\"53\";i:9;s:2:\"52\";i:10;s:2:\"51\";i:11;s:2:\"50\";i:12;s:2:\"49\";i:13;s:2:\"48\";i:14;s:2:\"47\";i:15;s:2:\"46\";i:16;s:2:\"45\";i:17;s:2:\"44\";i:18;s:2:\"43\";i:19;s:2:\"42\";i:20;s:2:\"41\";i:21;s:2:\"40\";i:22;s:2:\"39\";i:23;s:2:\"38\";i:24;s:2:\"37\";i:25;s:2:\"36\";i:26;s:2:\"62\";i:27;s:2:\"63\";i:28;s:2:\"64\";i:29;s:2:\"65\";i:30;s:2:\"66\";i:31;s:2:\"67\";i:32;s:2:\"68\";i:33;s:2:\"69\";i:34;s:2:\"70\";i:35;s:2:\"71\";i:36;s:2:\"72\";i:37;s:2:\"73\";i:38;s:2:\"74\";i:39;s:2:\"75\";i:40;s:2:\"76\";i:41;s:2:\"77\";i:42;s:2:\"78\";i:43;s:2:\"79\";i:44;s:2:\"80\";i:45;s:2:\"81\";i:46;s:2:\"82\";i:47;s:2:\"83\";i:48;s:2:\"84\";i:49;s:2:\"85\";i:50;s:2:\"86\";i:51;s:2:\"87\";i:52;s:2:\"88\";i:53;s:2:\"89\";i:54;s:2:\"90\";i:55;s:2:\"91\";i:56;s:2:\"92\";i:57;s:2:\"93\";i:58;s:2:\"94\";i:59;s:2:\"95\";}', '0');

-- ----------------------------
-- Table structure for ims_uni_settings
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_settings`;
CREATE TABLE `ims_uni_settings` (
  `uniacid` int(10) unsigned NOT NULL,
  `passport` varchar(200) NOT NULL,
  `oauth` varchar(100) NOT NULL,
  `jsauth_acid` int(10) unsigned NOT NULL,
  `uc` varchar(500) NOT NULL,
  `notify` varchar(2000) NOT NULL,
  `creditnames` varchar(500) NOT NULL,
  `creditbehaviors` varchar(500) NOT NULL,
  `welcome` varchar(60) NOT NULL,
  `default` varchar(60) NOT NULL,
  `default_message` varchar(2000) NOT NULL,
  `shortcuts` varchar(5000) NOT NULL,
  `payment` varchar(2000) NOT NULL,
  `stat` varchar(300) NOT NULL,
  `default_site` int(10) unsigned DEFAULT NULL,
  `sync` tinyint(3) unsigned NOT NULL,
  `recharge` varchar(500) NOT NULL,
  `tplnotice` varchar(1000) NOT NULL,
  `grouplevel` tinyint(3) unsigned NOT NULL,
  `mcplugin` varchar(500) NOT NULL,
  `exchange_enable` tinyint(3) unsigned NOT NULL,
  `coupon_type` tinyint(3) unsigned NOT NULL,
  `menuset` text NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_settings
-- ----------------------------
INSERT INTO `ims_uni_settings` VALUES ('1', 'a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}', 'a:2:{s:7:\"account\";i:1;s:4:\"host\";N;}', '0', 'a:1:{s:6:\"status\";i:0;}', 'a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}', 'a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}', 'a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}', '', '', '', '', 'a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}', '', '1', '0', '', '', '0', '', '0', '0', '');
INSERT INTO `ims_uni_settings` VALUES ('2', '', '', '0', '', '', 'a:2:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}}', 'a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}', '', '', '', '', '', '', '2', '0', '', '', '0', '', '0', '0', '');
INSERT INTO `ims_uni_settings` VALUES ('3', '', 'a:2:{s:7:\"account\";i:3;s:4:\"host\";s:0:\"\";}', '0', '', '', 'a:2:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}}', 'a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}', '', '', '', '', '', '', '3', '0', '', '', '0', '', '0', '0', '');
INSERT INTO `ims_uni_settings` VALUES ('4', '', 'a:2:{s:7:\"account\";s:1:\"4\";s:4:\"host\";s:0:\"\";}', '0', '', '', 'a:2:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}}', 'a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}', '', '', '', '', '', '', '4', '0', '', '', '0', '', '0', '0', '');
INSERT INTO `ims_uni_settings` VALUES ('5', '', 'a:2:{s:7:\"account\";s:1:\"5\";s:4:\"host\";s:0:\"\";}', '0', '', '', 'a:2:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}}', 'a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}', '', '', '', '', '', '', '5', '0', '', '', '0', '', '0', '0', '');

-- ----------------------------
-- Table structure for ims_uni_verifycode
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_verifycode`;
CREATE TABLE `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_verifycode
-- ----------------------------

-- ----------------------------
-- Table structure for ims_userapi_cache
-- ----------------------------
DROP TABLE IF EXISTS `ims_userapi_cache`;
CREATE TABLE `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_userapi_cache
-- ----------------------------

-- ----------------------------
-- Table structure for ims_userapi_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_userapi_reply`;
CREATE TABLE `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL,
  `apiurl` varchar(300) NOT NULL,
  `token` varchar(32) NOT NULL,
  `default_text` varchar(100) NOT NULL,
  `cachetime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_userapi_reply
-- ----------------------------
INSERT INTO `ims_userapi_reply` VALUES ('1', '1', '\"城市名+天气\", 如: \"北京天气\"', 'weather.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('2', '2', '\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"', 'baike.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('3', '3', '\"@查询内容(中文或英文)\"', 'translate.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('4', '4', '\"日历\", \"万年历\", \"黄历\"或\"几号\"', 'calendar.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('5', '5', '\"新闻\"', 'news.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('6', '6', '\"快递+单号\", 如: \"申通1200041125\"', 'express.php', '', '', '0');

-- ----------------------------
-- Table structure for ims_users
-- ----------------------------
DROP TABLE IF EXISTS `ims_users`;
CREATE TABLE `ims_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) unsigned NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `joindate` int(10) unsigned NOT NULL,
  `joinip` varchar(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users
-- ----------------------------
INSERT INTO `ims_users` VALUES ('1', '3', 'admin', '819a67ec61c14171f052fa38c1ffde391e02cc8e', '7c7687c5', '0', '0', '1491392351', '', '1494228137', '192.168.0.145', '', '1493724606', '0');
INSERT INTO `ims_users` VALUES ('2', '3', 'wyxiang', '6c36ae0be47d626603bc3a2983038c1ac01ae33d', 'yDDD7Thm', '0', '2', '1493724710', '::1', '1494226811', '192.168.0.145', '', '1493724710', '0');

-- ----------------------------
-- Table structure for ims_users_failed_login
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_failed_login`;
CREATE TABLE `ims_users_failed_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `username` varchar(32) NOT NULL,
  `count` tinyint(1) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_username` (`ip`,`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_failed_login
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_group`;
CREATE TABLE `ims_users_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_group
-- ----------------------------
INSERT INTO `ims_users_group` VALUES ('3', '黄金用户组', 'a:2:{i:0;i:2;i:1;i:-1;}', '1', '3', '0');

-- ----------------------------
-- Table structure for ims_users_invitation
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_invitation`;
CREATE TABLE `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_invitation
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_permission
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_permission`;
CREATE TABLE `ims_users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(30) NOT NULL,
  `permission` varchar(10000) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_permission
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_profile
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_profile`;
CREATE TABLE `ims_users_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `workerid` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_profile
-- ----------------------------
INSERT INTO `ims_users_profile` VALUES ('1', '1', '0', '', '', '', '', '', '', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for ims_video_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_video_reply`;
CREATE TABLE `ims_video_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_video_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_voice_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_voice_reply`;
CREATE TABLE `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_voice_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wechat_attachment
-- ----------------------------
DROP TABLE IF EXISTS `ims_wechat_attachment`;
CREATE TABLE `ims_wechat_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `media_id` (`media_id`),
  KEY `acid` (`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wechat_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wechat_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_wechat_news`;
CREATE TABLE `ims_wechat_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `thumb_media_id` varchar(60) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_source_url` varchar(200) NOT NULL,
  `show_cover_pic` tinyint(3) unsigned NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `attach_id` (`attach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wechat_news
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wxcard_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxcard_reply`;
CREATE TABLE `ims_wxcard_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxcard_reply
-- ----------------------------
