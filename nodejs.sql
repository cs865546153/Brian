
CREATE DATABASE /*!32312 IF NOT EXISTS*/`heshe_stats` /*!40100 DEFAULT CHARACTER SET utf8 */;



/*Table structure for table `heshe_admin_role` */

DROP TABLE IF EXISTS `heshe_admin_role`;

CREATE TABLE `heshe_admin_role` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL DEFAULT '' COMMENT '角色名',
  `auths` text COMMENT '权限点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='后台用户角色表';

/*Data for the table `heshe_admin_role` */

insert  into `heshe_admin_role`(`id`,`name`,`auths`) values (1,'超级管理员','user,role,sms'),(2,'管理员','user,sms'),(3,'采购员','sms');

/*Table structure for table `heshe_admins` */

DROP TABLE IF EXISTS `heshe_admins`;

CREATE TABLE `heshe_admins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) NOT NULL,
  `roleid` int(10) DEFAULT NULL,
  `password` char(32) NOT NULL,
  `phoneno` char(11) NOT NULL COMMENT '手机号',
  `lastlogintime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `heshe_admins` */

insert  into `heshe_admins`(`id`,`user`,`roleid`,`password`,`phoneno`,`lastlogintime`) values (1,'admin',1,'admin','15101131912',1465903210),(2,'brian',2,'brian','15101131912',1465901909);

/*Table structure for table `heshe_pay_log` */

DROP TABLE IF EXISTS `heshe_pay_log`;

CREATE TABLE `heshe_pay_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `source_platform` varchar(10) NOT NULL DEFAULT '' COMMENT '来源平台',
  `platform` varchar(10) NOT NULL COMMENT '交易平台',
  `version` varchar(10) NOT NULL COMMENT '平台版本',
  `ip` varchar(15) DEFAULT '0.0.0.0' COMMENT '交易IP地址',
  `send_time` int(10) NOT NULL COMMENT '触发支付时间',
  `pay_ok_time` int(10) NOT NULL COMMENT '支付成功时间',
  `apply_refund_time` int(10) DEFAULT '0' COMMENT '申请退款时间',
  `refund_ok_time` int(10) DEFAULT NULL COMMENT '退款成功时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `send_time` (`send_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `heshe_pay_log` */

/*Table structure for table `heshe_sms_log` */

DROP TABLE IF EXISTS `heshe_sms_log`;

CREATE TABLE `heshe_sms_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(10) DEFAULT '0086' COMMENT '国家编码',
  `phoneno` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `smsid` varchar(50) DEFAULT NULL COMMENT '短信发送返回的id',
  `channel` varchar(10) DEFAULT NULL COMMENT '短信提供商名称',
  `template` varchar(20) DEFAULT NULL COMMENT '短信模版名称',
  `message` varchar(500) DEFAULT NULL COMMENT '短信内容',
  `send_time` int(10) DEFAULT '0' COMMENT '发送短信时间',
  `receipt_time` int(10) DEFAULT '0' COMMENT '收到回执时间',
  `errmsg` varchar(100) DEFAULT NULL COMMENT '发送失败的错误信息',
  PRIMARY KEY (`id`),
  KEY `send_time` (`send_time`)
) ENGINE=InnoDB AUTO_INCREMENT=30588 DEFAULT CHARSET=utf8;

