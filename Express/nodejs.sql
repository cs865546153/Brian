
CREATE DATABASE `Express`;


/*Table structure for table `admin_role`            b*/
CREATE TABLE `admin_role` (
  `role_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(15) NOT NULL DEFAULT '' COMMENT '角色名',
  `role_auths` text COMMENT '权限点',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='后台用户角色表';

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





/*Table structure for table `items` */
CREATE TABLE `items` (
  `item_id` int(32) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(32) NOT NULL DEFAULT '',
	`item_price` int(32) NOT NULL,
  `item_price_type` varchar(32) NOT NULL DEFAULT 'rmb/500g',
	`item_provider` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Data for the table `items` */
insert  into `items`(`item_id`,`item_name`,`item_price`,`item_provider`) values (1,'apple',1,'kfc'),(2,'pear','mdl',1),(3,'car',3,'kfc'),(4,'bus',5,'mdl');




/*Table structure for table `providers` */
CREATE TABLE `providers` (
  `provider_id` int(32) NOT NULL AUTO_INCREMENT,
  `provider_name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`provider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Data for the table `items` */
insert  into `providers`(`provider_id`,`provider_name`) values (1,'kfc'),(2,'mdl');
