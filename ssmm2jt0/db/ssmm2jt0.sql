/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmm2jt0
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmm2jt0` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmm2jt0`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616845650389 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-27 19:03:26',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-27 19:03:26',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-27 19:03:26',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-27 19:03:26',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-27 19:03:26',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-27 19:03:26',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616845650388,'2021-03-27 19:47:30',1616845504768,'梅州市梅县区人民政府','222','11112222222','是');

/*Table structure for table `caipinfenlei` */

DROP TABLE IF EXISTS `caipinfenlei`;

CREATE TABLE `caipinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616844447387 DEFAULT CHARSET=utf8 COMMENT='菜品分类';

/*Data for the table `caipinfenlei` */

insert  into `caipinfenlei`(`id`,`addtime`,`caipinfenlei`) values (41,'2021-03-27 19:03:26','菜品分类1'),(42,'2021-03-27 19:03:26','菜品分类2'),(43,'2021-03-27 19:03:26','菜品分类3'),(44,'2021-03-27 19:03:26','菜品分类4'),(45,'2021-03-27 19:03:26','菜品分类5'),(46,'2021-03-27 19:03:26','菜品分类6'),(1616844447386,'2021-03-27 19:27:27','电饭锅df');

/*Table structure for table `caipinxinxi` */

DROP TABLE IF EXISTS `caipinxinxi`;

CREATE TABLE `caipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinmingcheng` varchar(200) NOT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `caipinjieshao` longtext COMMENT '菜品介绍',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `dianpuming` varchar(200) DEFAULT NULL COMMENT '店铺名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616844490311 DEFAULT CHARSET=utf8 COMMENT='菜品信息';

/*Data for the table `caipinxinxi` */

insert  into `caipinxinxi`(`id`,`addtime`,`caipinmingcheng`,`caipinfenlei`,`tupian`,`caipinjieshao`,`shangjiazhanghao`,`shangjiamingcheng`,`dianpuming`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (31,'2021-03-27 19:03:26','菜品名称1','菜品分类1','http://8.129.11.174:9002/ssmm2jt0/upload/caipinxinxi_tupian1.jpg','菜品介绍1','商家账号1','商家名称1','店铺名1',1,1,'2021-03-27 19:03:26',1,99.9),(32,'2021-03-27 19:03:26','菜品名称2','菜品分类2','http://8.129.11.174:9002/ssmm2jt0/upload/caipinxinxi_tupian2.jpg','菜品介绍2','商家账号2','商家名称2','店铺名2',2,2,'2021-03-27 19:43:41',3,99.9),(33,'2021-03-27 19:03:26','菜品名称3','菜品分类3','http://8.129.11.174:9002/ssmm2jt0/upload/caipinxinxi_tupian3.jpg','菜品介绍3','商家账号3','商家名称3','店铺名3',4,3,'2021-03-27 19:46:56',5,99.9),(34,'2021-03-27 19:03:26','菜品名称4','菜品分类4','http://8.129.11.174:9002/ssmm2jt0/upload/caipinxinxi_tupian4.jpg','菜品介绍4','商家账号4','商家名称4','店铺名4',4,4,'2021-03-27 19:03:26',4,99.9),(35,'2021-03-27 19:03:26','菜品名称5','菜品分类5','http://8.129.11.174:9002/ssmm2jt0/upload/caipinxinxi_tupian5.jpg','菜品介绍5','商家账号5','商家名称5','店铺名5',5,5,'2021-03-27 19:43:20',6,99.9),(36,'2021-03-27 19:03:26','菜品名称6','菜品分类6','http://8.129.11.174:9002/ssmm2jt0/upload/caipinxinxi_tupian6.jpg','菜品介绍6','商家账号6','商家名称6','店铺名6',6,6,'2021-03-27 19:43:38',8,99.9),(1616844470258,'2021-03-27 19:27:49','电饭锅','电饭锅df','http://8.129.11.174:9002/ssmm2jt0/upload/1616844457172.jpg','<p>发过的给对方地方</p><p><img src=\"http://8.129.11.174:9002/ssmm2jt0/upload/1616844464145.png\"><img src=\"http://8.129.11.174:9002/ssmm2jt0/upload/1616844467900.jpg\"></p>','22','地方打算','对方是否',0,0,'2021-03-27 19:45:43',2,15),(1616844490310,'2021-03-27 19:28:10','电饭锅和发给','菜品分类4','http://8.129.11.174:9002/ssmm2jt0/upload/1616844479845.png','<p>规划法规和f</p><p><img style=\"width:100%;\" src=\"http://8.129.11.174:9002/ssmm2jt0/upload/1616844486603.png\"></p>','22','地方打算','对方是否',1,0,'2021-03-27 19:46:36',5,20);

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'caipinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616845598827 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://8.129.11.174:9002/ssmm2jt0/upload/1616845473762.jpg'),(2,'picture2','http://8.129.11.174:9002/ssmm2jt0/upload/picture2.jpg'),(3,'picture3','http://8.129.11.174:9002/ssmm2jt0/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusscaipinxinxi` */

DROP TABLE IF EXISTS `discusscaipinxinxi`;

CREATE TABLE `discusscaipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616845594077 DEFAULT CHARSET=utf8 COMMENT='菜品信息评论表';

/*Data for the table `discusscaipinxinxi` */

insert  into `discusscaipinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-03-27 19:03:26',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-27 19:03:26',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-27 19:03:26',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-27 19:03:26',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-27 19:03:26',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-27 19:03:26',6,6,'用户名6','评论内容6','回复内容6'),(1616845542187,'2021-03-27 19:45:42',1616844470258,1616845504768,'222','鬼地方个的',''),(1616845594076,'2021-03-27 19:46:33',1616844490310,1616845504768,'222','是否的','');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616845465340 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-03-27 19:03:26','标题1','简介1','http://8.129.11.174:9002/ssmm2jt0/upload/news_picture1.jpg','内容1'),(92,'2021-03-27 19:03:26','标题2','简介2','http://8.129.11.174:9002/ssmm2jt0/upload/news_picture2.jpg','内容2'),(93,'2021-03-27 19:03:26','标题3','简介3','http://8.129.11.174:9002/ssmm2jt0/upload/news_picture3.jpg','内容3'),(94,'2021-03-27 19:03:26','标题4','简介4','http://8.129.11.174:9002/ssmm2jt0/upload/news_picture4.jpg','内容4'),(95,'2021-03-27 19:03:26','标题5','简介5','http://8.129.11.174:9002/ssmm2jt0/upload/news_picture5.jpg','内容5'),(96,'2021-03-27 19:03:26','标题6','简介6','http://8.129.11.174:9002/ssmm2jt0/upload/news_picture6.jpg','内容6'),(1616845465339,'2021-03-27 19:44:25','d跟电工','电饭锅地方鬼地方个','http://8.129.11.174:9002/ssmm2jt0/upload/1616845453896.jpg','<p>发给电饭锅地方给对方g<img src=\"http://8.129.11.174:9002/ssmm2jt0/upload/1616845460265.JPEG\"><img src=\"http://8.129.11.174:9002/ssmm2jt0/upload/1616845463175.png\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'caipinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616845655657 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1616845655127,'2021-03-27 19:47:34','2021327194727740317','caipinxinxi',1616845504768,33,'菜品名称3','http://8.129.11.174:9002/ssmm2jt0/upload/caipinxinxi_tupian3.jpg',2,99.9,99.9,199.8,199.8,1,'已完成','梅州市梅县区人民政府'),(1616845655656,'2021-03-27 19:47:34','20213271947212216553','caipinxinxi',1616845504768,1616844490310,'电饭锅和发给','http://8.129.11.174:9002/ssmm2jt0/upload/1616844479845.png',2,20,20,40,40,1,'已完成','梅州市梅县区人民政府');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `dianpuming` varchar(200) DEFAULT NULL COMMENT '店铺名',
  `dianpudizhi` varchar(200) DEFAULT NULL COMMENT '店铺地址',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjiatupian` varchar(200) DEFAULT NULL COMMENT '商家图片',
  `xiuxishijian` varchar(200) DEFAULT NULL COMMENT '休息时间',
  `shangjiajieshao` longtext COMMENT '商家介绍',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616844433738 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiamingcheng`,`dianpuming`,`dianpudizhi`,`lianxiren`,`lianxifangshi`,`shangjiatupian`,`xiuxishijian`,`shangjiajieshao`,`money`) values (21,'2021-03-27 19:03:26','商家1','123456','商家名称1','店铺名1','店铺地址1','联系人1','联系方式1','http://8.129.11.174:9002/ssmm2jt0/upload/shangjia_shangjiatupian1.jpg','休息时间1','商家介绍1',100),(22,'2021-03-27 19:03:26','商家2','123456','商家名称2','店铺名2','店铺地址2','联系人2','联系方式2','http://8.129.11.174:9002/ssmm2jt0/upload/shangjia_shangjiatupian2.jpg','休息时间2','商家介绍2',100),(23,'2021-03-27 19:03:26','商家3','123456','商家名称3','店铺名3','店铺地址3','联系人3','联系方式3','http://8.129.11.174:9002/ssmm2jt0/upload/shangjia_shangjiatupian3.jpg','休息时间3','商家介绍3',100),(24,'2021-03-27 19:03:26','商家4','123456','商家名称4','店铺名4','店铺地址4','联系人4','联系方式4','http://8.129.11.174:9002/ssmm2jt0/upload/shangjia_shangjiatupian4.jpg','休息时间4','商家介绍4',100),(25,'2021-03-27 19:03:26','商家5','123456','商家名称5','店铺名5','店铺地址5','联系人5','联系方式5','http://8.129.11.174:9002/ssmm2jt0/upload/shangjia_shangjiatupian5.jpg','休息时间5','商家介绍5',100),(26,'2021-03-27 19:03:26','商家6','123456','商家名称6','店铺名6','店铺地址6','联系人6','联系方式6','http://8.129.11.174:9002/ssmm2jt0/upload/shangjia_shangjiatupian6.jpg','休息时间6','商家介绍6',100),(1616844433737,'2021-03-27 19:27:13','22','22','地方打算','对方是否','地方删掉f','水电费删掉发','11115555111','http://8.129.11.174:9002/ssmm2jt0/upload/1616844423503.png','发送到f','<p>第三方删掉发顺丰</p><p><img src=\"http://8.129.11.174:9002/ssmm2jt0/upload/1616844428560.png\"><img src=\"http://8.129.11.174:9002/ssmm2jt0/upload/1616844431673.png\"></p>',0);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616845590107 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616845590106,'2021-03-27 19:46:29',1616845504768,1616844490310,'caipinxinxi','电饭锅和发给','http://8.129.11.174:9002/ssmm2jt0/upload/1616844479845.png');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','kwl0n12y6zgt4ap61lxoexezqacnsma2','2021-03-27 19:26:43','2021-03-27 20:47:56'),(2,1616844433737,'22','shangjia','商家','zj3w0kp3y4gnxrxyicf8msbu29icmihb','2021-03-27 19:27:20','2021-03-27 20:48:11'),(3,1616845381534,'11','yonghu','用户','7unrs7d6ivqppkfoint732pzleu0xwvo','2021-03-27 19:43:08','2021-03-27 20:43:08'),(4,1616845504768,'222','yonghu','用户','4zh4g3oay0vg6jymbm9gqz62so966bn6','2021-03-27 19:45:12','2021-03-27 20:48:49');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-27 19:03:26');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616845504769 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (11,'2021-03-27 19:03:26','用户1','123456','姓名1','年龄1','男','13823888881','http://8.129.11.174:9002/ssmm2jt0/upload/yonghu_zhaopian1.jpg',100),(12,'2021-03-27 19:03:26','用户2','123456','姓名2','年龄2','男','13823888882','http://8.129.11.174:9002/ssmm2jt0/upload/yonghu_zhaopian2.jpg',100),(13,'2021-03-27 19:03:26','用户3','123456','姓名3','年龄3','男','13823888883','http://8.129.11.174:9002/ssmm2jt0/upload/yonghu_zhaopian3.jpg',100),(14,'2021-03-27 19:03:26','用户4','123456','姓名4','年龄4','男','13823888884','http://8.129.11.174:9002/ssmm2jt0/upload/yonghu_zhaopian4.jpg',100),(15,'2021-03-27 19:03:26','用户5','123456','姓名5','年龄5','男','13823888885','http://8.129.11.174:9002/ssmm2jt0/upload/yonghu_zhaopian5.jpg',100),(16,'2021-03-27 19:03:26','用户6','123456','姓名6','年龄6','男','13823888886','http://8.129.11.174:9002/ssmm2jt0/upload/yonghu_zhaopian6.jpg',100),(1616845381534,'2021-03-27 19:43:01','11','11','地方','12','女','11122211111',NULL,0),(1616845504768,'2021-03-27 19:45:04','222','222','幸福感地方','22','男','15111111111','http://8.129.11.174:9002/ssmm2jt0/upload/1616845611755.jpg',4760.2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
