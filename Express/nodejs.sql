
CREATE DATABASE `expressdb`;

USE `expressdb`;


/*Table structure for table `admin_role`            b*/

CREATE TABLE `admin_role` (
  `role_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(15) NOT NULL DEFAULT '' COMMENT '角色名',
  `role_auths` text COMMENT '权限点',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Data for the table `admin_role` */
insert  into `admin_role`(`role_id`,`role_name`,`role_auths`) values (1,'管理员','user,role,sms'),(2,'运营','sms');


/*Table structure for table `admins`               a*/
CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) NOT NULL,
  `roleid` int(10) DEFAULT NULL,
  `password` char(32) NOT NULL,
  `lastlogintime` int(10) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Data for the table `admins` */
insert  into `admins`(`admin_id`,`user`,`roleid`,`password`,`lastlogintime`) values (1,'admin',1,'admin',1465903210),(2,'brian',1,'brian',1465903210);


/*Table structure for table `items`               a*/
CREATE TABLE `items` (
  `item_id` int(10) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(10) NOT NULL,
  `item_price` int(10) DEFAULT NULL,
  `item_price_type` char(32) DEFAULT 'rmb/500g',
  `item_provider` char(32) NOT NULL,
  `item_provider_region` char(32) DEFAULT 'SuZhou',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Data for the table `items` */
insert  into `items`(`item_id`,`item_name`,`item_price`,`item_provider`) values (1,'青菜',22,'KFC'),(2,'猪肉',33,'KFC'),(3,'牛肉',33,'MDL');


CREATE TABLE `providers` (
  `provider_id` int(10) NOT NULL AUTO_INCREMENT,
  `provider_name` varchar(10) NOT NULL,
  `provider_region` char(32) DEFAULT 'SuZhou',
  `provider_address` char(32) DEFAULT '',
  `provider_phone` char(32) DEFAULT '',
  PRIMARY KEY (`provider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert  into `providers`(`provider_id`,`provider_name`) values (1,'KFC'),(2,'MDL');

