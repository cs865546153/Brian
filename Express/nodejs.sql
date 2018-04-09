
CREATE DATABASE `expressdb`;

USE `expressdb`;


/*Table structure for table `heshe_access_log` */

DROP TABLE IF EXISTS `heshe_access_log`;

CREATE TABLE `heshe_access_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `pc_uv` int(11) NOT NULL DEFAULT '0' COMMENT 'PC端UV',
  `pc_pv` int(11) NOT NULL DEFAULT '0' COMMENT 'pc端pv',
  `wx_uv` int(11) NOT NULL DEFAULT '0' COMMENT '微信端uv',
  `wx_pv` int(11) NOT NULL DEFAULT '0' COMMENT '微信端PV',
  `ios_uv` int(11) NOT NULL DEFAULT '0' COMMENT 'IOS端UV',
  `ios_pv` int(11) NOT NULL DEFAULT '0' COMMENT 'ios端PV',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

/*Data for the table `heshe_access_log` */

insert  into `heshe_access_log`(`id`,`pc_uv`,`pc_pv`,`wx_uv`,`wx_pv`,`ios_uv`,`ios_pv`,`add_time`) values (1,338,1818,170,877,23,396,1457971200),(2,290,1464,202,902,39,209,1458057600),(3,228,1558,179,1153,17,293,1458144000),(4,300,1561,175,1835,17,317,1458230400),(5,135,663,102,571,12,115,1458316800),(6,135,670,730,3840,9,190,1458403200),(7,358,2541,310,1952,18,558,1458489600),(8,250,1311,153,1011,18,478,1458576000),(9,244,1697,187,1503,15,767,1458662400),(10,182,1240,146,1239,22,1113,1458748800),(11,259,1308,63,452,9,472,1458835200),(12,89,412,57,213,19,374,1458921600),(13,98,709,156,1040,8,329,1459008000),(14,274,1472,226,1506,19,710,1459094400),(15,248,1409,168,1451,16,672,1459180800),(16,205,1010,379,5525,14,349,1459267200),(17,32,183,171,2247,10,406,1459353600),(21,264,1433,395,2314,20,507,1459440000),(22,93,494,121,1175,9,103,1459526400),(23,94,420,91,568,13,371,1459612800),(24,188,1047,44,271,13,278,1459699200),(25,220,1441,125,940,30,919,1459785600),(26,193,1042,547,4072,31,865,1459872000),(27,300,2636,708,3977,26,643,1459958400),(28,179,1425,911,5890,24,581,1460044800),(29,69,376,132,996,9,107,1460131200),(30,54,380,206,1873,19,304,1460217600),(31,132,1477,161,870,29,470,1460304000),(32,174,1346,200,1100,19,260,1460390400),(33,161,1167,133,597,19,273,1460476800),(34,207,1855,69,563,12,169,1460563200),(35,2900,427862,142,1291,27,929,1460649600),(36,1809,689615,93,484,16,421,1460736000),(37,80,384,74,350,15,296,1460822400),(41,202,2095,51,173,17,347,1460908800),(42,232,3317,46,411,22,602,1460995200),(43,185,2245,44,253,26,533,1461081600),(44,236,2623,137,707,19,317,1461168000),(45,326,2804,25,178,17,384,1461254400),(46,80,576,17,75,23,491,1461340800),(47,105,670,31,402,20,373,1461427200),(48,173,2099,43,441,22,481,1461513600),(49,232,1841,46,193,37,1611,1461600000),(50,175,1371,39,225,24,1585,1461686400),(51,181,5528,36,129,20,351,1461772800),(52,155,1013,25,66,12,138,1461859200),(53,133,820,17,43,9,128,1461945600),(54,162,863,18,87,10,180,1462032000),(55,147,1046,23,88,9,124,1462118400),(56,171,1258,19,78,8,83,1462204800),(57,143,2636,22,175,9,436,1462291200),(58,206,2211,44,249,19,1224,1462377600),(59,192,1174,22,80,22,455,1462464000),(60,150,596,36,75,5,126,1462550400),(61,83,391,14,54,21,219,1462636800),(62,118,864,24,118,15,660,1462723200),(63,159,998,15,87,21,380,1462809600),(64,136,1126,17,158,18,616,1462896000),(65,106,838,13,74,6,243,1462982400),(66,101,829,11,51,11,198,1463068800),(67,43,96,43,330,7,254,1463155200),(68,44,115,18,35,9,249,1463241600),(69,73,400,17,108,7,121,1463328000),(70,141,1136,32,255,20,905,1463414400),(71,142,1089,13,67,16,324,1463500800),(72,926,14885,188,4562,264,17292,1463587200),(73,453,8452,81,2638,129,8544,1463673600),(74,85,716,17,319,13,420,1463760000),(75,81,370,20,92,14,427,1463846400),(76,117,884,15,162,22,619,1463932800),(77,122,598,16,390,21,670,1464019200),(78,133,822,19,238,11,430,1464105600),(79,196,2434,18,288,17,368,1464192000),(80,185,1890,28,394,22,1278,1464278400),(81,132,864,15,63,19,566,1464364800),(82,88,456,11,170,17,548,1464451200),(83,210,2005,19,103,25,1023,1464537600),(84,293,2062,16,82,20,318,1464624000),(85,125,553,19,87,11,388,1464710400),(86,154,805,21,75,16,234,1464796800),(87,235,1540,41,115,19,404,1464883200),(88,106,395,10,37,14,83,1464969600),(89,118,424,12,44,10,134,1465056000),(90,189,1078,9,54,16,403,1465142400),(91,224,2538,42,304,12,369,1465228800),(92,155,1112,14,125,9,351,1465315200),(93,128,628,13,50,12,98,1465401600),(94,115,456,15,25,18,209,1465488000),(95,133,457,24,52,6,70,1465574400),(96,216,897,16,438,16,526,1465660800),(97,261,1060,10,103,23,803,1465747200);



/*Table structure for table `admin_role`            b*/

CREATE TABLE `admin_role` (
  `role_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(15) NOT NULL DEFAULT '' COMMENT '角色名',
  `role_auths` text COMMENT '权限点',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='后台用户角色表';

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
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*Data for the table `items` */
insert  into `items`(`item_id`,`item_name`,`item_price`,`item_provider`) values (1,'红烧排骨',22,'KFC'),(2,'椒盐排条',33,'KFC'),(3,'炒白菜',33,'MDL');


CREATE TABLE `providers` (
  `provider_id` int(10) NOT NULL AUTO_INCREMENT,
  `provider_name` varchar(10) NOT NULL,
  PRIMARY KEY (`provider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert  into `providers`(`provider_id`,`provider_name`) values (1,'KFC'),(2,'mdl');


/*Table structure for table `heshe_pay_log` */
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

/*Data for the table `heshe_sms_log` */

insert  into `heshe_sms_log`(`id`,`country_code`,`phoneno`,`smsid`,`channel`,`template`,`message`,`send_time`,`receipt_time`,`errmsg`) values (1,'0086','15101131912','242483918','huyi','authcode','您的验证码是：8848。请不要把验证码泄露给其他人。',1453370371,1453445341,''),(2,'0086','15101131912','242516530','huyi','authcode','您的验证码是：9988。请不要把验证码泄露给其他人。',1453373517,1453445341,''),(5,'0086','15101131912','211901193654921483','mandao','yoox_order_notice','您好，YOOX的店铺有订单产生了，订单号为：11223344，请您及时处理！',1453374079,0,''),(6,'0086','18811090820','211911074012735485','mandao','yoox_order_notice','您好，YOOX的店铺有订单产生了，订单号为：123456789，请您及时处理！',1453374667,0,''),(7,'0086','18811090820','221329453287561045','mandao','yoox_order_notice','您好，YOOX的店铺有订单产生了，订单号为：12422552656，请您及时处理！',1453440585,1453440589,''),(8,'0086','15101131912','221435184224885336','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1453444519,1453444537,''),(10,'0086','15101131912','','mandao','yoox_order_notice','您好，YOOX的店铺有订单产生了，订单号为：11223344，请您及时处理！',1453446219,0,'-2'),(11,'0086','15101131912','','huyi','authcode','您的验证码是：{code}。请不要把验证码泄露给其他人。',1453446373,0,'405=>用户名或密码不正确(U:cf_shiy P:A7D4D6FBB8A3F8F664EE5CDC5487F950)'),(12,'0086','15701337525','221551553130969165','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1453449116,1453449120,''),(13,'0086','18611816250','243229868','huyi','authcode','您的验证码是：3898。请不要把验证码泄露给其他人。',1453449731,1453449781,''),(14,'0086','15701337525','221604513420589711','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1453449891,1453449897,''),(15,'0086','18610011598','221816132684825460','mandao','after_payment_to_sto','尊敬的商家，您在He She贺喜时尚的店铺有订单产生，请登录商家后台，订单管理里面查看详情，请在24小时内安排发货。顺祝商祺。',1453457774,1453457785,''),(16,'0086','18610011598','221833371015675303','mandao','after_payment_to_sto','尊敬的商家，您在He She贺喜时尚的店铺有订单产生，请登录商家后台，订单管理里面查看详情，请在24小时内安排发货。顺祝商祺。',1453458817,1453458831,''),(17,'0086','18610011598','243340012','huyi','authcode','您的验证码是：3896。请不要把验证码泄露给其他人。',1453461053,1453461121,''),(18,'0086','18610011598','243343187','huyi','authcode','您的验证码是：3595。请不要把验证码泄露给其他人。',1453461470,1453461541,''),(19,'0086','15701337525','251154540896979091','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1453694094,1453694100,''),(20,'0086','15701337525','251202314097540802','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1453694551,1453694557,''),(21,'0086','18811090820','245637752','huyi','authcode','您的验证码是：5005。请不要把验证码泄露给其他人。',1453694633,1453700701,''),(22,'0086','18811090820','245644168','huyi','authcode','您的验证码是：2527。请不要把验证码泄露给其他人。',1453695226,1453700941,''),(23,'0086','18811090820','245647345','huyi','authcode','您的验证码是：1568。请不要把验证码泄露给其他人。',1453695504,1453701002,''),(24,'0086','18811090820','245652624','huyi','authcode','您的验证码是：1906。请不要把验证码泄露给其他人。',1453696008,1453701121,''),(25,'0086','18811090820','','huyi','authcode','您的验证码是：0190。请不要把验证码泄露给其他人。',1453700404,0,'4085=>同一手机号验证码短信发送超出5条'),(26,'0086','18811090820','','huyi','authcode','您的验证码是：4360。请不要把验证码泄露给其他人。',1453700422,0,'4085=>同一手机号验证码短信发送超出5条'),(27,'0086','18811090820','','huyi','authcode','您的验证码是：5758。请不要把验证码泄露给其他人。',1453700826,0,'4085=>同一手机号验证码短信发送超出5条'),(28,'0086','18811090820','','huyi','authcode','您的验证码是：8130。请不要把验证码泄露给其他人。',1453701038,0,'4085=>同一手机号验证码短信发送超出5条'),(29,'0086','18811090820','','huyi','authcode','您的验证码是：5527。请不要把验证码泄露给其他人。',1453701252,0,'4085=>同一手机号验证码短信发送超出5条'),(30,'0086','18811090820','','huyi','authcode','您的验证码是：7058。请不要把验证码泄露给其他人。',1453701366,0,'4085=>同一手机号验证码短信发送超出5条'),(31,'0086','18811090820','','huyi','authcode','您的验证码是：5880。请不要把验证码泄露给其他人。',1453701395,0,'4085=>同一手机号验证码短信发送超出5条'),(32,'0086','18811090820','','huyi','authcode','您的验证码是：6276。请不要把验证码泄露给其他人。',1453701415,0,'4085=>同一手机号验证码短信发送超出5条'),(33,'0086','18811090820','','huyi','authcode','您的验证码是：4194。请不要把验证码泄露给其他人。',1453701418,0,'4085=>同一手机号验证码短信发送超出5条'),(34,'0086','18811090820','','huyi','authcode','您的验证码是：7810。请不要把验证码泄露给其他人。',1453701465,0,'4085=>同一手机号验证码短信发送超出5条'),(35,'0086','18811090820','','huyi','authcode','您的验证码是：9532。请不要把验证码泄露给其他人。',1453701484,0,'4085=>同一手机号验证码短信发送超出5条'),(36,'0086','18811090820','','huyi','authcode','您的验证码是：4063。请不要把验证码泄露给其他人。',1453701495,0,'4085=>同一手机号验证码短信发送超出5条'),(37,'0086','18811090820','','huyi','authcode','您的验证码是：9641。请不要把验证码泄露给其他人。',1453701621,0,'4085=>同一手机号验证码短信发送超出5条'),(38,'0086','18811090820','','huyi','authcode','您的验证码是：4835。请不要把验证码泄露给其他人。',1453701636,0,'4085=>同一手机号验证码短信发送超出5条'),(39,'0086','18701553166','245714033','huyi','authcode','您的验证码是：3005。请不要把验证码泄露给其他人。',1453701841,1453703161,''),(40,'0086','18333193006','245716679','huyi','authcode','您的验证码是：7046。请不要把验证码泄露给其他人。',1453701994,1453703221,''),(41,'0086','18868692626','245716828','huyi','authcode','您的验证码是：9792。请不要把验证码泄露给其他人。',1453702002,1453703221,''),(42,'0086','13520911132','245733017','huyi','authcode','您的验证码是：6325。请不要把验证码泄露给其他人。',1453703103,1453703821,''),(43,'0086','18811090820','','mandao','yoox_order_notice','您好，YOOX的店铺有订单产生了，订单号为：5288258，请您及时处理！',1453703352,0,'-2'),(44,'0086','18811090820','','mandao','yoox_order_notice','您好，YOOX的店铺有订单产生了，订单号为：5288258，请您及时处理！',1453703352,0,'-2'),(45,'0086','15101131912','251450221424064846','mandao','yoox_order_notice','您好，YOOX的店铺有订单产生了，订单号为：11223344，请您及时处理！',1453704622,1453704637,''),(46,'0086','15910616323','245797304','huyi','authcode','您的验证码是：5390。请不要把验证码泄露给其他人。',1453709697,1453709704,''),(47,'0086','18610011598','245875776','huyi','authcode','您的验证码是：8667。请不要把验证码泄露给其他人。',1453718306,1453718401,''),(48,'0086','13811215939','246686918','huyi','authcode','您的验证码是：2019。请不要把验证码泄露给其他人。',1453811125,1453811162,''),(49,'0086','18702883946','246707686','huyi','authcode','您的验证码是：2719。请不要把验证码泄露给其他人。',1453813678,1453813741,''),(50,'0086','13910675684','247212034','huyi','authcode','您的验证码是：5276。请不要把验证码泄露给其他人。',1453865028,1453865041,''),(51,'0086','18311192313','247312698','huyi','authcode','您的验证码是：4984。请不要把验证码泄露给其他人。',1453874476,1453874521,''),(52,'0086','18722130790','247334583','huyi','authcode','您的验证码是：0779。请不要把验证码泄露给其他人。',1453876483,1453876501,''),(53,'0086','15701337525','271445212654938862','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1453877121,1453877127,''),(54,'0086','18522151856','247347445','huyi','authcode','您的验证码是：6603。请不要把验证码泄露给其他人。',1453878065,1453878122,''),(55,'0086','13456776794','247370720','huyi','authcode','您的验证码是：9044。请不要把验证码泄露给其他人。',1453880666,1453880701,''),(56,'0086','15910917419','247512068','huyi','authcode','您的验证码是：8801。请不要把验证码泄露给其他人。',1453895488,1453895521,''),(57,'0086','15144972073','248724441','huyi','authcode','您的验证码是：5992。请不要把验证码泄露给其他人。',1453997377,1453997401,''),(58,'0086','18600399109','248845917','huyi','authcode','您的验证码是：9465。请不要把验证码泄露给其他人。',1454037819,1454037901,''),(59,'0086','13911084720','250763578','huyi','authcode','您的验证码是：8714。请不要把验证码泄露给其他人。',1454243739,1454243761,''),(60,'0086','18701553166','312100050430037442','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1454245205,1454245210,''),(61,'0086','18701553166','312100442723207204','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1454245244,1454245248,''),(62,'0086','13811215939','312101220678433797','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1454245282,1454245288,''),(63,'0086','13456776794','010034231332351050','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1454258063,1454258069,''),(64,'0086','18604671919','011153253854333814','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1454298805,1454298813,''),(65,'0086','15561560626','011802301716591796','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1454320950,1454320958,''),(66,'0086','18502264200','252213240','huyi','authcode','您的验证码是：8117。请不要把验证码泄露给其他人。',1454388634,1454388721,''),(67,'0086','15889783053','252220882','huyi','authcode','您的验证码是：1970。请不要把验证码泄露给其他人。',1454389877,1454389921,''),(68,'0086','13811215939','022226541881540430','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1454423215,1454423219,''),(69,'0086','18577169427','253023253','huyi','authcode','您的验证码是：0775。请不要把验证码泄露给其他人。',1454468548,1454468581,''),(70,'0086','18811090820','253204616','huyi','authcode','您的验证码是：2943。请不要把验证码泄露给其他人。',1454493877,1454493901,''),(71,'0086','15577775254','253701520','huyi','authcode','您的验证码是：5095。请不要把验证码泄露给其他人。',1454517226,1454517241,''),(72,'0086','15926605925','256354031','huyi','authcode','您的验证码是：7123。请不要把验证码泄露给其他人。',1454820461,1454821921,''),(73,'0086','15546359069','257124483','huyi','authcode','您的验证码是：0251。请不要把验证码泄露给其他人。',1454889561,1454889601,''),(74,'0086','13844269666','259634177','huyi','authcode','您的验证码是：6156。请不要把验证码泄露给其他人。',1455120495,1455121021,''),(75,'0086','15801220190','261580305','huyi','authcode','您的验证码是：1761。请不要把验证码泄露给其他人。',1455335172,1455335221,''),(76,'0086','15101507938','264780630','huyi','authcode','您的验证码是：8812。请不要把验证码泄露给其他人。',1455670414,1455670442,''),(77,'0086','15257175259','264941938','huyi','authcode','您的验证码是：1968。请不要把验证码泄露给其他人。',1455692052,1455692281,''),(78,'0086','15257175259','264942391','huyi','authcode','您的验证码是：4840。请不要把验证码泄露给其他人。',1455692117,1455692281,''),(79,'0086','15257175259','264943969','huyi','authcode','您的验证码是：5039。请不要把验证码泄露给其他人。',1455692340,1455692461,''),(80,'0086','13542098565','265013834','huyi','authcode','您的验证码是：6068。请不要把验证码泄露给其他人。',1455701287,1455701342,''),(81,'0086','18502264200','181852092024089008','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1455792729,1455792735,''),(82,'0086','18502264200','181852093299211439','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1455792730,1455792735,''),(83,'0086','18310707781','266024595','huyi','authcode','您的验证码是：9396。请不要把验证码泄露给其他人。',1455807705,1455807841,''),(84,'0086','13638300387','266386610','huyi','authcode','您的验证码是：2906。请不要把验证码泄露给其他人。',1455818149,1455818161,''),(85,'0086','15102052271','267215104','huyi','authcode','您的验证码是：2165。请不要把验证码泄露给其他人。',1455904084,1455904141,''),(86,'0086','13526945795','267303514','huyi','authcode','您的验证码是：4686。请不要把验证码泄露给其他人。',1455933495,1455933541,''),(87,'0086','15901312293','267446394','huyi','authcode','您的验证码是：2488。请不要把验证码泄露给其他人。',1455950516,1455950522,''),(88,'0086','15371027129','267527129','huyi','authcode','您的验证码是：9113。请不要把验证码泄露给其他人。',1455958975,1455959042,''),(89,'0086','15371027129','267528016','huyi','authcode','您的验证码是：0275。请不要把验证码泄露给其他人。',1455959073,1455959161,''),(90,'0086','15201055258','268226724','huyi','authcode','您的验证码是：4394。请不要把验证码泄露给其他人。',1456031347,1456031401,''),(91,'0086','13693248920','270025906','huyi','authcode','您的验证码是：2536。请不要把验证码泄露给其他人。',1456213378,1456213381,''),(92,'0086','13693248920','270027103','huyi','authcode','您的验证码是：1588。请不要把验证码泄露给其他人。',1456213504,1456213561,''),(93,'0086','18445865432','270688569','huyi','authcode','您的验证码是：0769。请不要把验证码泄露给其他人。',1456282855,1456282861,''),(94,'0086','18445865432','270829038','huyi','authcode','您的验证码是：3683。请不要把验证码泄露给其他人。',1456300619,1456300681,''),(95,'0086','18601121321','270895914','huyi','authcode','您的验证码是：7428。请不要把验证码泄露给其他人。',1456308237,1456308301,''),(96,'0086','18445865432','270936050','huyi','authcode','您的验证码是：8875。请不要把验证码泄露给其他人。',1456312689,1456312742,''),(97,'0086','18510324145','271602156','huyi','authcode','您的验证码是：2289。请不要把验证码泄露给其他人。',1456379054,1456379101,''),(98,'0086','13932621976','271624798','huyi','authcode','您的验证码是：2057。请不要把验证码泄露给其他人。',1456381682,1456381741,''),(99,'0086','15521070221','251800393617976987','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1456394440,1456394462,''),(100,'0086','18698169787','272487761','huyi','authcode','您的验证码是：6657。请不要把验证码泄露给其他人。',1456472496,1456472521,''),(101,'0086','18510324145','273349206','huyi','authcode','您的验证码是：8311。请不要把验证码泄露给其他人。',1456562060,1456562101,''),(102,'0086','18231851965','274361984','huyi','authcode','您的验证码是：4229。请不要把验证码泄露给其他人。',1456667757,1456667762,''),(103,'0086','13911851238','290935302101345146','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1456709731,1456709737,''),(104,'0086','13938586802','275257359','huyi','authcode','您的验证码是：4233。请不要把验证码泄露给其他人。',1456761244,1456761302,''),(105,'0086','13938586802','275257975','huyi','authcode','您的验证码是：9774。请不要把验证码泄露给其他人。',1456761377,1456761421,''),(106,'0086','13938586802','275258736','huyi','authcode','您的验证码是：8388。请不要把验证码泄露给其他人。',1456761524,1456761541,''),(107,'0086','13718898238','275887485','huyi','authcode','您的验证码是：0743。请不要把验证码泄露给其他人。',1456820822,1456820941,''),(108,'0086','18612833629','276378998','huyi','authcode','您的验证码是：4725。请不要把验证码泄露给其他人。',1456849221,1456849261,''),(109,'0086','18610011598','276769669','huyi','authcode','您的验证码是：9653。请不要把验证码泄露给其他人。',1456910419,1456910461,''),(110,'0086','15821029109','278059590','huyi','authcode','您的验证码是：2301。请不要把验证码泄露给其他人。',1457026256,1457026261,''),(111,'0086','13938586802','040926294137967608','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1457054789,1457054803,''),(112,'0086','13910281711','040926591951947211','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1457054819,1457054822,''),(113,'0086','18801355715','040927220633084836','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1457054843,1457054848,''),(114,'0086','18305916735','279727452','huyi','authcode','您的验证码是：4506。请不要把验证码泄露给其他人。',1457201703,1457201761,''),(115,'0086','13911239296','071406263380197694','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1457330786,1457330794,''),(116,'0086','13681110794','071428353139266849','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1457332115,1457332122,''),(117,'0086','13716076126','280937197','huyi','authcode','您的验证码是：0660。请不要把验证码泄露给其他人。',1457349289,1457349301,''),(118,'0086','18662876777','281064481','huyi','authcode','您的验证码是：5927。请不要把验证码泄露给其他人。',1457365025,1457365081,''),(119,'0086','18515539827','281697832','huyi','authcode','您的验证码是：6521。请不要把验证码泄露给其他人。',1457428273,1457428321,''),(120,'0086','18515539827','281698987','huyi','authcode','您的验证码是：9675。请不要把验证码泄露给其他人。',1457428392,1457428441,''),(121,'0086','13613369039','282483490','huyi','authcode','您的验证码是：9074。请不要把验证码泄露给其他人。',1457505594,1457505601,''),(122,'0086','18601121321','18601121321','mandao','authcode','直接写数据库的测试',1457428393,1457428442,''),(123,'0086','15755366066','282543179','huyi','authcode','您的验证码是：1674。请不要把验证码泄露给其他人。',1457511506,1457511541,''),(124,'0086','13024157621','282593247','huyi','authcode','您的验证码是：1309。请不要把验证码泄露给其他人。',1457515962,1457515982,''),(125,'0086','18601781788','282781060','huyi','authcode','您的验证码是：3403。请不要把验证码泄露给其他人。',1457536875,1457536921,''),(126,'0086','18311359770','101026553810752589','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1457576815,1457576821,''),(127,'0086','15518503870','101108374087767573','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1457579317,1457579334,''),(128,'0086','13837769012','101848361466987451','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1457606916,1457606924,''),(129,'0086','18601121321','284223226','huyi','authcode','您的验证码是：4906。请不要把验证码泄露给其他人。',1457685912,1457685927,''),(130,'0086','15051683626','284776911','huyi','authcode','您的验证码是：9919。请不要把验证码泄露给其他人。',1457744584,1457744641,''),(131,'0086','18686305538','285078432','huyi','authcode','您的验证码是：8574。请不要把验证码泄露给其他人。',1457778683,0,''),(132,'0086','18686305538','285079164','huyi','authcode','您的验证码是：9869。请不要把验证码泄露给其他人。',1457778771,0,''),(133,'0086','18613307777','150945243984967532','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458006324,1458010281,''),(134,'0086','18610011598','287674053','huyi','authcode','您的验证码是：6122。请不要把验证码泄露给其他人。',1458045195,1458045242,'发送成功\r\n回执时间：2016/3/15 20:33:22'),(135,'0086','15618164709','161706021793444188','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458119163,0,''),(136,'0086','15618164709','161706032178399015','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458119163,0,''),(137,'0086','18333193006','288987543','huyi','authcode','您的验证码是：5759。请不要把验证码泄露给其他人。',1458181412,1458181442,''),(138,'0086','15810692347','288997116','huyi','authcode','您的验证码是：6416。请不要把验证码泄露给其他人。',1458182374,1458182402,''),(139,'0086','18811090820','171051414223444898','mandao','yoox_order_notice','您好，YOOX的店铺有订单产生了，订单号为：123456，请您及时处理！',1458183102,1458183107,''),(140,'0086','18811090820','171051421096777897','mandao','yoox_order_notice','您好，YOOX的店铺有订单产生了，订单号为：123456，请您及时处理！',1458183102,1458183107,''),(141,'0086','15101131912','171053041927967472','mandao','yoox_order_notice','您好，YOOX的店铺有订单产生了，订单号为：123456，请您及时处理！',1458183184,1458183192,''),(142,'0086','15618164709','171057241048928299','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458183445,0,''),(143,'0086','15618164709','171116570550398901','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458184618,0,''),(144,'0086','15618164709','171139374078445091','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458185977,1458185983,''),(145,'0086','15514795003','289043399','huyi','authcode','您的验证码是：3454。请不要把验证码泄露给其他人。',1458186764,1458186843,'发送成功\r\n回执时间：2016/3/17 11:53:01'),(146,'0086','18811090820','289065697','huyi','authcode','您的验证码是：0441。请不要把验证码泄露给其他人。',1458188856,1458188882,''),(147,'0086','18514027215','181713303851649850','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458292411,1458292417,''),(148,'0086','18616571673','290126882','huyi','authcode','您的验证码是：4572。请不要把验证码泄露给其他人。',1458298260,1458298321,'发送成功\r\n回执时间：2016/3/18 18:51:07'),(149,'0086','18857909430','290559416','huyi','authcode','您的验证码是：0153。请不要把验证码泄露给其他人。',1458342421,1458342482,''),(150,'0086','15518583870','211049542941113497','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458528595,1458528605,''),(151,'0086','15110135090','292458022','huyi','authcode','您的验证码是：3853。请不要把验证码泄露给其他人。',1458536216,1458536221,''),(152,'0086','13818382796','221442492319497198','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458628969,1458628975,''),(153,'0086','18611107046','293490484','huyi','authcode','您的验证码是：7266。请不要把验证码泄露给其他人。',1458638463,1458638522,''),(154,'0086','13880909366','221813503241478791','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458641631,1458641636,''),(155,'0086','13818184167','231616144268189567','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458720974,1458720977,''),(156,'0086','13818184167','231616251615855788','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458720986,1458720990,''),(157,'0086','18616571673','231616431142691475','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458721003,1458721009,''),(158,'0086','18616571673','231616532622769377','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458721013,1458721016,''),(159,'0086','13716076126','231643174138435940','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458722598,1458722606,''),(160,'0086','18500372115','294569474','huyi','authcode','您的验证码是：7909。请不要把验证码泄露给其他人。',1458735205,1458735242,''),(161,'0086','18601021061','232015134091871730','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458735313,1458735318,''),(162,'0086','18538557272','294588050','huyi','authcode','您的验证码是：1124。请不要把验证码泄露给其他人。',1458736772,1458736802,''),(163,'0086','13987991433','294749615','huyi','authcode','您的验证码是：5192。请不要把验证码泄露给其他人。',1458772382,1458772442,''),(164,'0086','13987991433','294754160','huyi','authcode','您的验证码是：0534。请不要把验证码泄露给其他人。',1458773973,1458774001,''),(165,'0086','13911657041','241056470736110208','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458788207,1458788214,''),(166,'0086','18601021061','241057453532237205','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458788265,1458788271,''),(167,'0086','13818382796','295081837','huyi','authcode','您的验证码是：1895。请不要把验证码泄露给其他人。',1458801454,1458801482,''),(168,'0086','13482485224','295390653','huyi','authcode','您的验证码是：1246。请不要把验证码泄露给其他人。',1458824024,1458824042,''),(169,'0086','13520580333','295663379','huyi','authcode','您的验证码是：1031。请不要把验证码泄露给其他人。',1458867735,1458867781,''),(170,'0086','13771797712','251424401748711358','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458887081,1458887087,''),(171,'0086','13372507676','251738223929789540','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458898703,1458898711,''),(172,'0086','13811601606','251739003305032356','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458898741,1458898749,''),(173,'0086','13810012128','251819203236477586','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1458901160,1458901165,''),(174,'0086','15321577371','296481695','huyi','authcode','您的验证码是：3062。请不要把验证码泄露给其他人。',1458950482,1458950522,'DELIVRD(成功)'),(175,'0086','15543198075','297418793','huyi','authcode','您的验证码是：5251。请不要把验证码泄露给其他人。',1459050730,1459050781,''),(176,'0086','18601082738','297616036','huyi','authcode','您的验证码是：0227。请不要把验证码泄露给其他人。',1459069566,1459069622,''),(177,'0086','13552811181','281513454010597291','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1459149225,1459149234,''),(178,'0086','13911759979','298460080','huyi','authcode','您的验证码是：4601。请不要把验证码泄露给其他人。',1459151573,1459151582,''),(179,'0086','18667922777','281559581572287934','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1459151998,1459240678,''),(180,'0086','17898187216','299563541','huyi','authcode','您的验证码是：1301。请不要把验证码泄露给其他人。',1459261718,1459261742,''),(181,'0086','13981071978','299874976','huyi','authcode','您的验证码是：7494。请不要把验证码泄露给其他人。',1459302852,1459302902,''),(182,'0086','18521314123','301100061503601053','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1459306806,1459306812,''),(183,'0086','18701553166','301320283877048444','mandao','delivery_notice','尊贵的陛下，您在He She贺喜钦点的时尚恩宠已快马加鞭奔赴朝中，请您耐心等待。记得常翻He She贺喜牌子哟。',1459315228,1459315234,''),(184,'0086','13718241423','300160958','huyi','authcode','您的验证码是：6031。请不要把验证码泄露给其他人。',1459326567,1459326601,''),(185,'0086','18500959401','300175894','huyi','authcode','您的验证码是：7793。请不要把验证码泄露给其他人。',1459327610,1459327682,''),(186,'0086','15021173090','300242542','huyi','authcode','您的验证码是：4128。请不要把验证码泄露给其他人。',1459332659,1459332722,'(成功)\r\nrtime：2016-03-30 18:11:00'),(187,'0086','15010233017','300343761','huyi','authcode','您的验证码是：1150。请不要把验证码泄露给其他人。',1459340747,1459340762,'(成功)\r\nrtime：2016-03-30 20:25:00'),(188,'0086','13693247408','300356517','huyi','authcode','您的验证码是：6101。请不要把验证码泄露给其他人。',1459341831,1459341842,'(成功)\r\nrtime：2016-03-30 20:43:00'),(189,'0086','18700808002','300357944','huyi','authcode','您的验证码是：6381。请不要把验证码泄露给其他人。',1459341956,1459341961,'(成功)\r\nrtime：2016-03-30 20:45:00'),(190,'0086','15901889929','300377315','huyi','authcode','您的验证码是：6679。请不要把验证码泄露给其他人。',1459343558,1459343582,'(成功)\r\nrtime：2016-03-30 21:12:00'),(191,'0086','15010576663','300393155','huyi','authcode','您的验证码是：1532。请不要把验证码泄露给其他人。',1459344912,1459344961,'(成功)\r\nrtime：2016-03-30 21:35:00'),(192,'0086','13683020039','300408115','huyi','authcode','您的验证码是：1434。请不要把验证码泄露给其他人。',1459346265,1459346281,'(成功)\r\nrtime：2016-03-30 21:57:00'),(193,'0086','13949747811','300424864','huyi','authcode','您的验证码是：2696。请不要把验证码泄露给其他人。',1459347850,1459347902,'(成功)\r\nrtime：2016-03-30 22:24:00'),(194,'0086','15010502511','','huyi','authcode','您的验证码是：4611。请不要把验证码泄露给其他人。',1459349686,0,'4086=>提交失败'),(195,'0086','18717900009','300484837','huyi','authcode','您的验证码是：0085。请不要把验证码泄露给其他人。',1459352911,1459352942,''),(196,'0086','17710341765','300485747','huyi','authcode','您的验证码是：9018。请不要把验证码泄露给其他人。',1459353084,1459353122,'DELIVRD(成功)'),(197,'0086','13478276124','300576432','huyi','authcode','您的验证码是：8551。请不要把验证码泄露给其他人。',1459357650,1459357682,'发送失败(MK:0001)号码未分配'),(198,'0086','13941587287','300594985','huyi','authcode','您的验证码是：7822。请不要把验证码泄露给其他人。',1459368777,1459368842,''),(199,'0086','13522591693','300639058','huyi','authcode','您的验证码是：6387。请不要把验证码泄露给其他人。',1459384411,1459384441,''),(200,'0086','13901175351','300641534','huyi','authcode','您的验证码是：2927。请不要把验证码泄露给其他人。',1459384776,1459384801,'');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
