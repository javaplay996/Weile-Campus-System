/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - weilexiaoyuan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`weilexiaoyuan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `weilexiaoyuan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `daipiao` */

DROP TABLE IF EXISTS `daipiao`;

CREATE TABLE `daipiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `daipiao_name` varchar(200) DEFAULT NULL COMMENT '代跑标题  Search111 ',
  `daipiao_photo` varchar(200) DEFAULT NULL COMMENT '代跑照片',
  `daipiao_address` varchar(200) DEFAULT NULL COMMENT '代跑地点',
  `daipiao_lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `daipiao_lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `daipiao_types` int(11) DEFAULT NULL COMMENT '代跑类型 Search111',
  `daipiao_new_money` decimal(10,2) DEFAULT NULL COMMENT '代跑金额',
  `daipiao_time` timestamp NULL DEFAULT NULL COMMENT '代跑时间',
  `daipiao_content` text COMMENT '代跑内容',
  `daipiao_zhuangtai_types` int(11) DEFAULT NULL COMMENT '代跑状态  Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='代跑';

/*Data for the table `daipiao` */

insert  into `daipiao`(`id`,`yonghu_id`,`daipiao_name`,`daipiao_photo`,`daipiao_address`,`daipiao_lianxiren`,`daipiao_lianxifangshi`,`daipiao_types`,`daipiao_new_money`,`daipiao_time`,`daipiao_content`,`daipiao_zhuangtai_types`,`insert_time`,`create_time`) values (1,1,'代跑标题1','upload/daipiao1.jpg','代跑地点1','联系人1','联系方式1',1,'251.87','2023-03-01 19:52:30','代跑内容1',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(2,1,'代跑标题2','upload/daipiao2.jpg','代跑地点2','联系人2','联系方式2',1,'207.70','2023-03-01 19:52:30','代跑内容2',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(3,1,'代跑标题3','upload/daipiao3.jpg','代跑地点3','联系人3','联系方式3',1,'289.03','2023-03-01 19:52:30','代跑内容3',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(4,1,'代跑标题4','upload/daipiao4.jpg','代跑地点4','联系人4','联系方式4',1,'255.84','2023-03-01 19:52:30','代跑内容4',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(5,1,'代跑标题5','upload/daipiao5.jpg','代跑地点5','联系人5','联系方式5',1,'163.62','2023-03-01 19:52:30','代跑内容5',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(6,2,'代跑标题6','upload/daipiao6.jpg','代跑地点6','联系人6','联系方式6',4,'212.13','2023-03-01 19:52:30','代跑内容6',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(7,3,'代跑标题7','upload/daipiao7.jpg','代跑地点7','联系人7','联系方式7',3,'342.04','2023-03-01 19:52:30','代跑内容7',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(8,3,'代跑标题8','upload/daipiao8.jpg','代跑地点8','联系人8','联系方式8',3,'395.90','2023-03-01 19:52:30','代跑内容8',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(9,1,'代跑标题9','upload/daipiao9.jpg','代跑地点9','联系人9','联系方式9',1,'129.22','2023-03-01 19:52:30','代跑内容9',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(10,3,'代跑标题10','upload/daipiao10.jpg','代跑地点10','联系人10','联系方式10',2,'482.92','2023-03-01 19:52:30','代跑内容10',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(11,3,'代跑标题11','upload/daipiao11.jpg','代跑地点11','联系人11','联系方式11',4,'198.37','2023-03-01 19:52:30','代跑内容11',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(12,2,'代跑标题12','upload/daipiao12.jpg','代跑地点12','联系人12','联系方式12',2,'61.95','2023-03-01 19:52:30','代跑内容12',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(13,2,'代跑标题13','upload/daipiao13.jpg','代跑地点13','联系人13','联系方式13',4,'24.52','2023-03-01 19:52:30','代跑内容13',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(14,3,'代跑标题14','upload/daipiao14.jpg','代跑地点14','联系人14','联系方式14',3,'221.47','2023-03-01 19:52:30','代跑内容14',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(16,3,'11','upload/1677676890817.jpg','11','11','11',4,'11.00','2023-03-01 00:00:00','1111',1,'2023-03-01 21:21:38','2023-03-01 21:21:38'),(17,1,'代跑111','upload/1677726491240.jpg','地点111','张三','17703789696',2,'199.00','2023-03-02 11:08:30','广东省分公司',1,'2023-03-02 11:08:33','2023-03-02 11:08:33');

/*Table structure for table `daipiao_collection` */

DROP TABLE IF EXISTS `daipiao_collection`;

CREATE TABLE `daipiao_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `daipiao_id` int(11) DEFAULT NULL COMMENT '代跑',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `daipiao_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='代跑收藏';

/*Data for the table `daipiao_collection` */

insert  into `daipiao_collection`(`id`,`daipiao_id`,`yonghu_id`,`daipiao_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(2,2,2,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(3,3,1,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(4,4,3,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(5,5,3,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(6,6,2,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(7,7,3,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(8,8,1,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(9,9,2,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(10,10,1,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(11,11,1,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(12,12,1,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(13,13,1,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(14,14,3,1,'2023-03-01 19:52:30','2023-03-01 19:52:30');

/*Table structure for table `daipiao_liuyan` */

DROP TABLE IF EXISTS `daipiao_liuyan`;

CREATE TABLE `daipiao_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `daipiao_id` int(11) DEFAULT NULL COMMENT '代跑',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `daipiao_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='代跑留言';

/*Data for the table `daipiao_liuyan` */

insert  into `daipiao_liuyan`(`id`,`daipiao_id`,`yonghu_id`,`daipiao_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-03-01 19:52:30','回复信息1','2023-03-01 19:52:30','2023-03-01 19:52:30'),(2,2,1,'留言内容2','2023-03-01 19:52:30','回复信息2','2023-03-01 19:52:30','2023-03-01 19:52:30'),(3,3,2,'留言内容3','2023-03-01 19:52:30','回复信息3','2023-03-01 19:52:30','2023-03-01 19:52:30'),(4,4,1,'留言内容4','2023-03-01 19:52:30','回复信息4','2023-03-01 19:52:30','2023-03-01 19:52:30'),(5,5,2,'留言内容5','2023-03-01 19:52:30','回复信息5','2023-03-01 19:52:30','2023-03-01 19:52:30'),(6,6,3,'留言内容6','2023-03-01 19:52:30','回复信息6','2023-03-01 19:52:30','2023-03-01 19:52:30'),(7,7,3,'留言内容7','2023-03-01 19:52:30','回复信息7','2023-03-01 19:52:30','2023-03-01 19:52:30'),(8,8,2,'留言内容8','2023-03-01 19:52:30','回复信息8','2023-03-01 19:52:30','2023-03-01 19:52:30'),(9,9,2,'留言内容9','2023-03-01 19:52:30','回复信息9','2023-03-01 19:52:30','2023-03-01 19:52:30'),(10,10,2,'留言内容10','2023-03-01 19:52:30','回复信息10','2023-03-01 19:52:30','2023-03-01 19:52:30'),(11,11,3,'留言内容11','2023-03-01 19:52:30','回复信息11','2023-03-01 19:52:30','2023-03-01 19:52:30'),(12,12,2,'留言内容12','2023-03-01 19:52:30','回复信息12','2023-03-01 19:52:30','2023-03-01 19:52:30'),(13,13,1,'留言内容13','2023-03-01 19:52:30','回复信息13','2023-03-01 19:52:30','2023-03-01 19:52:30'),(14,14,1,'留言内容14','2023-03-01 19:52:30','回复信息14','2023-03-01 19:52:30','2023-03-01 19:52:30');

/*Table structure for table `daipiao_order` */

DROP TABLE IF EXISTS `daipiao_order`;

CREATE TABLE `daipiao_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `daipiao_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `daipiao_id` int(11) DEFAULT NULL COMMENT '代跑',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `daipiao_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `daipiao_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `daipiao_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='代跑订单';

/*Data for the table `daipiao_order` */

insert  into `daipiao_order`(`id`,`daipiao_order_uuid_number`,`daipiao_id`,`yonghu_id`,`daipiao_order_true_price`,`daipiao_order_types`,`daipiao_order_payment_types`,`insert_time`,`create_time`) values (1,'1677672603646',14,1,'221.47',103,1,'2023-03-01 20:10:04','2023-03-01 20:10:04'),(2,'1677726171815',9,1,'129.22',102,1,'2023-03-02 11:02:52','2023-03-02 11:02:52'),(3,'1677726310559',9,1,'129.22',103,1,'2023-03-02 11:05:11','2023-03-02 11:05:11');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-01 19:52:26'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-01 19:52:26'),(3,'daipiao_zhuangtai_types','代跑状态',1,'未接单',NULL,NULL,'2023-03-01 19:52:26'),(4,'daipiao_zhuangtai_types','代跑状态',2,'已接单',NULL,NULL,'2023-03-01 19:52:26'),(5,'daipiao_types','代跑类型',1,'代跑类型1',NULL,NULL,'2023-03-01 19:52:26'),(6,'daipiao_types','代跑类型',2,'代跑类型2',NULL,NULL,'2023-03-01 19:52:26'),(7,'daipiao_types','代跑类型',3,'代跑类型3',NULL,NULL,'2023-03-01 19:52:26'),(8,'daipiao_types','代跑类型',4,'代跑类型4',NULL,NULL,'2023-03-01 19:52:26'),(9,'daipiao_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-01 19:52:26'),(10,'daipiao_order_types','订单类型',101,'已申请代跑',NULL,NULL,'2023-03-01 19:52:26'),(11,'daipiao_order_types','订单类型',102,'已取消代跑',NULL,NULL,'2023-03-01 19:52:26'),(12,'daipiao_order_types','订单类型',103,'已接受',NULL,NULL,'2023-03-01 19:52:26'),(13,'daipiao_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-03-01 19:52:26'),(14,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-03-01 19:52:26'),(15,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-03-01 19:52:26'),(16,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-03-01 19:52:26'),(17,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2023-03-01 19:52:26'),(18,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-03-01 19:52:26'),(19,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-03-01 19:52:26'),(20,'shangpin_order_types','订单类型',103,'已确认',NULL,NULL,'2023-03-01 19:52:26'),(21,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-03-01 19:52:26'),(22,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-03-01 19:52:26'),(23,'shangpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-03-01 19:52:26'),(24,'jiaoche_types','叫车类型',1,'长途车',NULL,NULL,'2023-03-01 19:52:27'),(25,'jiaoche_types','叫车类型',2,'短途车',NULL,NULL,'2023-03-01 19:52:27'),(26,'jiaoche_zhuangtai_types','叫车类型',1,'已申请叫车',NULL,NULL,'2023-03-01 19:52:27'),(27,'jiaoche_zhuangtai_types','叫车类型',2,'已取消叫车',NULL,NULL,'2023-03-01 19:52:27'),(28,'jiaoche_zhuangtai_types','叫车类型',3,'已接单',NULL,NULL,'2023-03-01 19:52:27'),(29,'jiaoche_zhuangtai_types','叫车类型',4,'已确认使用',NULL,NULL,'2023-03-01 19:52:27'),(30,'jiaoche_chat_types','数据类型',1,'问题',NULL,NULL,'2023-03-01 19:52:27'),(31,'jiaoche_chat_types','数据类型',2,'回复',NULL,NULL,'2023-03-01 19:52:27'),(32,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-03-01 19:52:27'),(33,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-03-01 19:52:27'),(34,'yuezhanxiaoyuan_types','约战校园类型',1,'约战校园类型1',NULL,NULL,'2023-03-01 19:52:27'),(35,'yuezhanxiaoyuan_types','约战校园类型',2,'约战校园类型2',NULL,NULL,'2023-03-01 19:52:27'),(36,'yuezhanxiaoyuan_types','约战校园类型',3,'约战校园类型3',NULL,NULL,'2023-03-01 19:52:27'),(37,'yuezhanxiaoyuan_types','约战校园类型',4,'约战校园类型4',NULL,NULL,'2023-03-01 19:52:27'),(38,'shiwuzhaoling_zhuangtai_types','状态',1,'未找到',NULL,NULL,'2023-03-01 19:52:27'),(39,'shiwuzhaoling_zhuangtai_types','状态',2,'已找到',NULL,NULL,'2023-03-01 19:52:27'),(40,'shiwuzhaoling_types','物品类型',1,'物品类型1',NULL,NULL,'2023-03-01 19:52:27'),(41,'shiwuzhaoling_types','物品类型',2,'物品类型2',NULL,NULL,'2023-03-01 19:52:27'),(42,'shiwuzhaoling_types','物品类型',3,'物品类型3',NULL,NULL,'2023-03-01 19:52:27'),(43,'shiwuzhaoling_types','物品类型',4,'物品类型4',NULL,NULL,'2023-03-01 19:52:27'),(44,'yuezhanxiaoyuan_types','约战校园类型',5,'约战校园类型5',NULL,'','2023-03-02 11:20:37');

/*Table structure for table `jiaoche` */

DROP TABLE IF EXISTS `jiaoche`;

CREATE TABLE `jiaoche` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `siji_id` int(11) DEFAULT NULL COMMENT '司机',
  `jiaoche_uuid_number` varchar(200) DEFAULT NULL COMMENT '叫车编号',
  `jiaoche_name` varchar(200) DEFAULT NULL COMMENT '叫车标题  Search111 ',
  `jiaoche_photo` varchar(200) DEFAULT NULL COMMENT '叫车照片',
  `shangche_time` timestamp NULL DEFAULT NULL COMMENT '上车时间',
  `jiaoche_address` varchar(200) DEFAULT NULL COMMENT '上车地点',
  `jiaoche_quwang_address` varchar(200) DEFAULT NULL COMMENT '去往地点',
  `jiaoche_types` int(11) DEFAULT NULL COMMENT '叫车类型 Search111',
  `jiaoche_new_money` decimal(10,2) DEFAULT NULL COMMENT '出价',
  `jiaoche_content` text COMMENT '叫车详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '叫车时间',
  `jiaoche_zhuangtai_types` int(11) DEFAULT NULL COMMENT '叫车状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='叫车';

/*Data for the table `jiaoche` */

insert  into `jiaoche`(`id`,`yonghu_id`,`siji_id`,`jiaoche_uuid_number`,`jiaoche_name`,`jiaoche_photo`,`shangche_time`,`jiaoche_address`,`jiaoche_quwang_address`,`jiaoche_types`,`jiaoche_new_money`,`jiaoche_content`,`insert_time`,`jiaoche_zhuangtai_types`,`create_time`) values (1,1,1,'1677671550111','叫车标题1','upload/jiaoche1.jpg','2023-03-01 19:52:30','上车地点1','去往地点1',1,'395.38','叫车详情1','2023-03-01 19:52:30',4,'2023-03-01 19:52:30'),(2,2,3,'1677671550096','叫车标题2','upload/jiaoche2.jpg','2023-03-01 19:52:30','上车地点2','去往地点2',1,'11.10','叫车详情2','2023-03-01 19:52:30',1,'2023-03-01 19:52:30'),(3,2,2,'1677671550110','叫车标题3','upload/jiaoche3.jpg','2023-03-01 19:52:30','上车地点3','去往地点3',2,'365.50','叫车详情3','2023-03-01 19:52:30',2,'2023-03-01 19:52:30'),(4,2,3,'1677671550151','叫车标题4','upload/jiaoche4.jpg','2023-03-01 19:52:30','上车地点4','去往地点4',1,'441.74','叫车详情4','2023-03-01 19:52:30',4,'2023-03-01 19:52:30'),(5,1,1,'1677671550108','叫车标题5','upload/jiaoche5.jpg','2023-03-01 19:52:30','上车地点5','去往地点5',2,'411.44','叫车详情5','2023-03-01 19:52:30',3,'2023-03-01 19:52:30'),(6,1,3,'1677671550126','叫车标题6','upload/jiaoche6.jpg','2023-03-01 19:52:30','上车地点6','去往地点6',1,'215.59','叫车详情6','2023-03-01 19:52:30',3,'2023-03-01 19:52:30'),(7,1,3,'1677671550102','叫车标题7','upload/jiaoche7.jpg','2023-03-01 19:52:30','上车地点7','去往地点7',2,'320.70','叫车详情7','2023-03-01 19:52:30',3,'2023-03-01 19:52:30'),(8,1,3,'1677671550128','叫车标题8','upload/jiaoche8.jpg','2023-03-01 19:52:30','上车地点8','去往地点8',1,'300.81','叫车详情8','2023-03-01 19:52:30',3,'2023-03-01 19:52:30'),(9,2,1,'1677671550094','叫车标题9','upload/jiaoche9.jpg','2023-03-01 19:52:30','上车地点9','去往地点9',2,'138.59','叫车详情9','2023-03-01 19:52:30',3,'2023-03-01 19:52:30'),(10,3,2,'1677671550142','叫车标题10','upload/jiaoche10.jpg','2023-03-01 19:52:30','上车地点10','去往地点10',2,'406.73','叫车详情10','2023-03-01 19:52:30',3,'2023-03-01 19:52:30'),(11,1,3,'1677671550106','叫车标题11','upload/jiaoche11.jpg','2023-03-01 19:52:30','上车地点11','去往地点11',2,'393.43','叫车详情11','2023-03-01 19:52:30',4,'2023-03-01 19:52:30'),(12,1,2,'1677671550104','叫车标题12','upload/jiaoche12.jpg','2023-03-01 19:52:30','上车地点12','去往地点12',2,'374.14','叫车详情12','2023-03-01 19:52:30',2,'2023-03-01 19:52:30'),(13,1,1,'1677671550158','叫车标题13','upload/jiaoche13.jpg','2023-03-01 19:52:30','上车地点13','去往地点13',2,'38.64','叫车详情13','2023-03-01 19:52:30',2,'2023-03-01 19:52:30'),(14,2,2,'1677671550164','叫车标题14','upload/jiaoche14.jpg','2023-03-01 19:52:30','上车地点14','去往地点14',1,'141.68','叫车详情14','2023-03-01 19:52:30',3,'2023-03-01 19:52:30'),(15,1,1,'1677724011518','叫车111','upload/1677724021485.jpg','2023-03-02 10:27:03','地点1','去往地点11',1,'11.00','更好地发给对方是个','2023-03-02 10:27:37',3,'2023-03-02 10:27:37'),(16,1,1,'1677724218887','表11','upload/1677724236309.jpg','2023-03-02 10:30:42','底单111','网址111',2,'99.70','给第三方','2023-03-02 10:30:54',3,'2023-03-02 10:30:54'),(17,1,1,'1677726532671','叫车111','upload/1677726538735.jpg','2023-03-02 11:09:01','抵达11','底单1213',2,'99.00','供电公司','2023-03-02 11:09:10',4,'2023-03-02 11:09:10');

/*Table structure for table `jiaoche_chat` */

DROP TABLE IF EXISTS `jiaoche_chat`;

CREATE TABLE `jiaoche_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问人',
  `siji_id` int(11) DEFAULT NULL COMMENT '回答人',
  `jiaoche_chat_issue_text` text COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间',
  `jiaoche_chat_reply_text` text COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `jiaoche_chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提问时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='用户咨询';

/*Data for the table `jiaoche_chat` */

insert  into `jiaoche_chat`(`id`,`yonghu_id`,`siji_id`,`jiaoche_chat_issue_text`,`issue_time`,`jiaoche_chat_reply_text`,`reply_time`,`zhuangtai_types`,`jiaoche_chat_types`,`insert_time`,`create_time`) values (1,1,3,'问题1','2023-03-01 19:52:30','回复1','2023-03-01 19:52:30',1,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(2,1,1,'问题2','2023-03-01 19:52:30','回复2','2023-03-01 19:52:30',1,2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(3,3,1,'问题3','2023-03-01 19:52:30','回复3','2023-03-01 19:52:30',2,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(4,1,1,'问题4','2023-03-01 19:52:30','回复4','2023-03-01 19:52:30',2,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(5,1,3,'问题5','2023-03-01 19:52:30','回复5','2023-03-01 19:52:30',1,2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(6,2,2,'问题6','2023-03-01 19:52:30','回复6','2023-03-01 19:52:30',2,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(7,3,2,'问题7','2023-03-01 19:52:30','回复7','2023-03-01 19:52:30',2,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(8,2,1,'问题8','2023-03-01 19:52:30','回复8','2023-03-01 19:52:30',2,2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(9,2,2,'问题9','2023-03-01 19:52:30','回复9','2023-03-01 19:52:30',2,2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(10,2,3,'问题10','2023-03-01 19:52:30','回复10','2023-03-01 19:52:30',1,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(11,1,1,'问题11','2023-03-01 19:52:30','回复11','2023-03-01 19:52:30',1,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(12,1,2,'问题12','2023-03-01 19:52:30','回复12','2023-03-01 19:52:30',2,2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(13,2,1,'问题13','2023-03-01 19:52:30','回复13','2023-03-01 19:52:30',1,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(14,2,1,'问题14','2023-03-01 19:52:30','回复14','2023-03-01 19:52:30',2,1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(15,1,NULL,'11111','2023-03-02 10:45:31',NULL,NULL,1,1,'2023-03-02 10:45:32','2023-03-02 10:45:32'),(16,1,NULL,'www','2023-03-02 10:47:13',NULL,NULL,1,1,'2023-03-02 10:47:13','2023-03-02 10:47:13'),(17,1,NULL,'高公公','2023-03-02 10:47:58',NULL,NULL,1,1,'2023-03-02 10:47:59','2023-03-02 10:47:59'),(18,1,NULL,'高公公','2023-03-02 10:49:19',NULL,NULL,1,1,'2023-03-02 10:49:20','2023-03-02 10:49:20'),(19,1,NULL,'哈哈哈','2023-03-02 10:49:23',NULL,NULL,1,1,'2023-03-02 10:49:23','2023-03-02 10:49:23'),(20,1,1,'灌灌灌灌','2023-03-02 10:50:17',NULL,NULL,2,1,'2023-03-02 10:50:18','2023-03-02 10:50:18'),(21,1,1,NULL,NULL,'高公公','2023-03-02 10:51:49',NULL,2,'2023-03-02 10:51:49','2023-03-02 10:51:49'),(22,2,1,NULL,NULL,'发的个','2023-03-02 10:53:55',NULL,2,'2023-03-02 10:53:55','2023-03-02 10:53:55'),(23,1,1,'99','2023-03-02 10:55:33',NULL,NULL,1,1,'2023-03-02 10:55:33','2023-03-02 10:55:33'),(24,1,1,'孤独颂歌','2023-03-02 11:16:39',NULL,NULL,2,1,'2023-03-02 11:16:40','2023-03-02 11:16:40'),(25,1,1,'很好','2023-03-02 11:16:44',NULL,NULL,2,1,'2023-03-02 11:16:45','2023-03-02 11:16:45'),(26,1,1,NULL,NULL,'国风','2023-03-02 11:16:55',NULL,2,'2023-03-02 11:16:55','2023-03-02 11:16:55'),(27,1,1,NULL,NULL,'gggg','2023-03-02 11:20:13',NULL,2,'2023-03-02 11:20:13','2023-03-02 11:20:13');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '二手商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '二手商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '二手商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '二手数量',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '二手商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/个',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '二手商品热度',
  `shangpin_content` text COMMENT '二手商品介绍 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='二手商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`yonghu_id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_clicknum`,`shangpin_content`,`shangpin_delete`,`insert_time`,`create_time`) values (1,2,'二手商品名称1','1677671550122','upload/shangpin1.jpg',4,100,'979.55','281.00',469,'二手商品介绍1',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(2,2,'二手商品名称2','1677671550132','upload/shangpin2.jpg',4,101,'779.84','231.82',289,'二手商品介绍2',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(3,1,'二手商品名称3','1677671550178','upload/shangpin3.jpg',1,103,'911.15','339.42',483,'二手商品介绍3',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(4,2,'二手商品名称4','1677671550181','upload/shangpin4.jpg',3,104,'654.43','258.65',31,'二手商品介绍4',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(5,1,'二手商品名称5','1677671550114','upload/shangpin5.jpg',2,105,'771.73','251.53',95,'二手商品介绍5',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(6,1,'二手商品名称6','1677671550175','upload/shangpin6.jpg',1,106,'826.49','401.71',262,'二手商品介绍6',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(7,2,'二手商品名称7','1677671550171','upload/shangpin7.jpg',1,107,'529.89','461.10',228,'二手商品介绍7',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(8,1,'二手商品名称8','1677671550144','upload/shangpin8.jpg',2,108,'901.65','16.95',21,'二手商品介绍8',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(9,2,'二手商品名称9','1677671550175','upload/shangpin9.jpg',4,109,'891.95','23.92',56,'二手商品介绍9',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(10,2,'二手商品名称10','1677671550134','upload/shangpin10.jpg',2,1010,'921.81','155.46',438,'二手商品介绍10',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(11,2,'二手商品名称11','1677671550094','upload/shangpin11.jpg',2,1011,'684.53','265.71',41,'二手商品介绍11',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(12,1,'二手商品名称12','1677671550168','upload/shangpin12.jpg',1,1011,'677.92','42.16',446,'二手商品介绍12',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(13,2,'二手商品名称13','1677671550161','upload/shangpin13.jpg',3,1013,'555.44','292.18',404,'二手商品介绍13',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(14,2,'二手商品名称14','1677671550178','upload/shangpin14.jpg',3,1014,'511.45','174.05',321,'二手商品介绍14',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(15,1,'标题111','1677721096386','upload/1677721107775.jpg',4,99,NULL,NULL,NULL,'对方是否第三个是',2,'2023-03-02 09:38:29','2023-03-02 09:38:29'),(16,1,'商品11','1677721343523','upload/1677721349510.jpg',4,55,'99.00','55.10',1,'孤独颂歌',1,'2023-03-02 09:42:53','2023-03-02 09:42:53'),(17,1,'商品111','1677727028802','upload/1677727034907.jpg',4,99,'88.00','44.00',1,'个人三分大赛',1,'2023-03-02 11:17:23','2023-03-02 11:17:23');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '二手商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='二手商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-03-01 19:52:30','回复信息1','2023-03-01 19:52:30','2023-03-01 19:52:30'),(2,2,3,'评价内容2','2023-03-01 19:52:30','回复信息2','2023-03-01 19:52:30','2023-03-01 19:52:30'),(3,3,2,'评价内容3','2023-03-01 19:52:30','回复信息3','2023-03-01 19:52:30','2023-03-01 19:52:30'),(4,4,1,'评价内容4','2023-03-01 19:52:30','回复信息4','2023-03-01 19:52:30','2023-03-01 19:52:30'),(5,5,2,'评价内容5','2023-03-01 19:52:30','回复信息5','2023-03-01 19:52:30','2023-03-01 19:52:30'),(6,6,2,'评价内容6','2023-03-01 19:52:30','回复信息6','2023-03-01 19:52:30','2023-03-01 19:52:30'),(7,7,2,'评价内容7','2023-03-01 19:52:30','回复信息7','2023-03-01 19:52:30','2023-03-01 19:52:30'),(8,8,3,'评价内容8','2023-03-01 19:52:30','回复信息8','2023-03-01 19:52:30','2023-03-01 19:52:30'),(9,9,2,'评价内容9','2023-03-01 19:52:30','回复信息9','2023-03-01 19:52:30','2023-03-01 19:52:30'),(10,10,2,'评价内容10','2023-03-01 19:52:30','回复信息10','2023-03-01 19:52:30','2023-03-01 19:52:30'),(11,11,3,'评价内容11','2023-03-01 19:52:30','回复信息11','2023-03-01 19:52:30','2023-03-01 19:52:30'),(12,12,3,'评价内容12','2023-03-01 19:52:30','回复信息12','2023-03-01 19:52:30','2023-03-01 19:52:30'),(13,13,1,'评价内容13','2023-03-01 19:52:30','回复信息13','2023-03-01 19:52:30','2023-03-01 19:52:30'),(14,14,1,'评价内容14','2023-03-01 19:52:30','回复信息14','2023-03-01 19:52:30','2023-03-01 19:52:30'),(15,12,1,'孤独颂歌','2023-03-02 11:06:30',NULL,NULL,'2023-03-02 11:06:30'),(16,1,1,'共和国','2023-03-02 11:17:44',NULL,NULL,'2023-03-02 11:17:44');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '二手商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='二手商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1677678019577',2,1,1,'231.82',NULL,NULL,101,1,'2023-03-01 21:40:20','2023-03-01 21:40:20'),(2,'1677678040143',12,1,1,'42.16','分手大师','个第三个十多个个',105,1,'2023-03-01 21:40:40','2023-03-01 21:40:40'),(3,'1677726355913',1,1,1,'281.00','张三','177735456',105,1,'2023-03-02 11:05:56','2023-03-02 11:05:56');

/*Table structure for table `shiwuzhaoling` */

DROP TABLE IF EXISTS `shiwuzhaoling`;

CREATE TABLE `shiwuzhaoling` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shiwuzhaoling_name` varchar(200) DEFAULT NULL COMMENT '物品名称  Search111 ',
  `shiwuzhaoling_uuid_number` varchar(200) DEFAULT NULL COMMENT '物品编号',
  `shiwuzhaoling_photo` varchar(200) DEFAULT NULL COMMENT '物品照片',
  `shiwuzhaoling_address` varchar(200) DEFAULT NULL COMMENT '丢失地点/找到地点',
  `shiwuzhaoling_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `jutishijian_time` timestamp NULL DEFAULT NULL COMMENT '具体时间',
  `shiwuzhaoling_clicknum` int(11) DEFAULT NULL COMMENT '热度',
  `shiwuzhaoling_content` text COMMENT '详细描述',
  `shiwuzhaoling_zhuangtai_types` int(11) DEFAULT NULL COMMENT '状态 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='失物招领';

/*Data for the table `shiwuzhaoling` */

insert  into `shiwuzhaoling`(`id`,`yonghu_id`,`shiwuzhaoling_name`,`shiwuzhaoling_uuid_number`,`shiwuzhaoling_photo`,`shiwuzhaoling_address`,`shiwuzhaoling_types`,`jutishijian_time`,`shiwuzhaoling_clicknum`,`shiwuzhaoling_content`,`shiwuzhaoling_zhuangtai_types`,`insert_time`,`create_time`) values (1,2,'物品名称1','1677671550125','upload/shiwuzhaoling1.jpg','丢失地点/找到地点1',4,'2023-03-01 19:52:30',203,'详细描述1',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(2,3,'物品名称2','1677671550147','upload/shiwuzhaoling2.jpg','丢失地点/找到地点2',2,'2023-03-01 19:52:30',334,'详细描述2',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(3,1,'物品名称3','1677671550095','upload/shiwuzhaoling3.jpg','丢失地点/找到地点3',4,'2023-03-01 19:52:30',334,'详细描述3',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(4,3,'物品名称4','1677671550173','upload/shiwuzhaoling4.jpg','丢失地点/找到地点4',4,'2023-03-01 19:52:30',268,'详细描述4',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(5,3,'物品名称5','1677671550125','upload/shiwuzhaoling5.jpg','丢失地点/找到地点5',3,'2023-03-01 19:52:30',140,'详细描述5',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(6,2,'物品名称6','1677671550153','upload/shiwuzhaoling6.jpg','丢失地点/找到地点6',1,'2023-03-01 19:52:30',247,'详细描述6',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(7,3,'物品名称7','1677671550180','upload/shiwuzhaoling7.jpg','丢失地点/找到地点7',1,'2023-03-01 19:52:30',371,'详细描述7',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(8,1,'物品名称8','1677671550181','upload/shiwuzhaoling8.jpg','丢失地点/找到地点8',2,'2023-03-01 19:52:30',359,'详细描述8',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(9,3,'物品名称9','1677671550156','upload/shiwuzhaoling9.jpg','丢失地点/找到地点9',1,'2023-03-01 19:52:30',189,'详细描述9',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(10,3,'物品名称10','1677671550102','upload/shiwuzhaoling10.jpg','丢失地点/找到地点10',3,'2023-03-01 19:52:30',80,'详细描述10',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(11,2,'物品名称11','1677671550161','upload/shiwuzhaoling11.jpg','丢失地点/找到地点11',2,'2023-03-01 19:52:30',322,'详细描述11',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(12,2,'物品名称12','1677671550189','upload/shiwuzhaoling12.jpg','丢失地点/找到地点12',1,'2023-03-01 19:52:30',139,'详细描述12',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(13,1,'物品名称13','1677671550143','upload/shiwuzhaoling13.jpg','丢失地点/找到地点13',4,'2023-03-01 19:52:30',129,'详细描述13',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(14,2,'物品名称14','1677671550095','upload/shiwuzhaoling14.jpg','丢失地点/找到地点14',4,'2023-03-01 19:52:30',303,'详细描述14',2,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(15,1,'标题111','1677722089615','upload/1677722095260.jpg','嗲嗲111',2,'2023-03-02 09:55:02',1,'该发生的故事地方',1,'2023-03-02 09:55:04','2023-03-02 09:55:04');

/*Table structure for table `siji` */

DROP TABLE IF EXISTS `siji`;

CREATE TABLE `siji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `siji_name` varchar(200) DEFAULT NULL COMMENT '司机姓名 Search111 ',
  `siji_phone` varchar(200) DEFAULT NULL COMMENT '司机手机号',
  `siji_id_number` varchar(200) DEFAULT NULL COMMENT '司机身份证号',
  `siji_photo` varchar(200) DEFAULT NULL COMMENT '司机头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `siji_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='司机';

/*Data for the table `siji` */

insert  into `siji`(`id`,`username`,`password`,`siji_name`,`siji_phone`,`siji_id_number`,`siji_photo`,`sex_types`,`new_money`,`siji_email`,`create_time`) values (1,'a1','123456','司机姓名1','17703786901','410224199010102001','upload/siji1.jpg',2,'933.53','1@qq.com','2023-03-01 19:52:30'),(2,'a2','123456','司机姓名2','17703786902','410224199010102002','upload/siji2.jpg',2,'401.39','2@qq.com','2023-03-01 19:52:30'),(3,'a3','123456','司机姓名3','17703786903','410224199010102003','upload/siji3.jpg',1,'495.71','3@qq.com','2023-03-01 19:52:30'),(4,'a5','123456','张5','17703786905','410224199610232005','/upload/1677727194470.jpg',2,'0.00','5@qq.com','2023-03-02 11:19:35');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','bxapid5u12dn6nm4w2krcd2wslv4xddb','2023-03-01 19:53:13','2023-03-02 12:07:34'),(2,2,'a2','yonghu','用户','3trvx8ka0xopxbwojtfosvhxisr1uy1k','2023-03-01 20:31:09','2023-03-02 12:07:15'),(3,3,'a3','yonghu','用户','gylcbo5ulhrg3coiuzxccv1mi8i41usk','2023-03-01 20:31:20','2023-03-01 21:31:20'),(4,1,'admin','users','管理员','2runkt1ac7piqdbir4r9me9t8513yism','2023-03-02 09:20:49','2023-03-02 12:29:23'),(5,1,'a1','siji','司机','gccf2r6sz1gu6zdlkrv39tj2k36ttqao','2023-03-02 10:26:32','2023-03-02 12:20:04'),(6,4,'a9','yonghu','用户','je4pip5cbx0xbhvspxbc6zr5d53logz2','2023-03-02 11:01:21','2023-03-02 12:01:21'),(7,4,'a5','siji','司机','msl8ovt9l02wevkyyg18z654os84erpy','2023-03-02 11:19:42','2023-03-02 12:19:42');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-01 19:52:25');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','99855.30','2023-03-01 19:52:30'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','847.87','2023-03-01 19:52:30'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','433.40','2023-03-01 19:52:30'),(4,'a9','123456','张9','17703780606','402241996140230091','upload/1677726155940.jpg',2,'9@qq.com','0.00','2023-03-02 11:01:17');

/*Table structure for table `yuezhanxiaoyuan` */

DROP TABLE IF EXISTS `yuezhanxiaoyuan`;

CREATE TABLE `yuezhanxiaoyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yuezhanxiaoyuan_name` varchar(200) DEFAULT NULL COMMENT '约战校园名称  Search111 ',
  `yuezhanxiaoyuan_photo` varchar(200) DEFAULT NULL COMMENT '约战校园照片',
  `yuezhan_time` timestamp NULL DEFAULT NULL COMMENT '约战时间',
  `yuezhanxiaoyuan_address` varchar(200) DEFAULT NULL COMMENT '约战地点',
  `yuezhanxiaoyuan_types` int(11) DEFAULT NULL COMMENT '约战校园类型 Search111',
  `yuezhanxiaoyuan_clicknum` int(11) DEFAULT NULL COMMENT '约战校园热度',
  `yuezhanxiaoyuan_content` text COMMENT '约战内容',
  `yuezhanxiaoyuan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='约战校园';

/*Data for the table `yuezhanxiaoyuan` */

insert  into `yuezhanxiaoyuan`(`id`,`yonghu_id`,`yuezhanxiaoyuan_name`,`yuezhanxiaoyuan_photo`,`yuezhan_time`,`yuezhanxiaoyuan_address`,`yuezhanxiaoyuan_types`,`yuezhanxiaoyuan_clicknum`,`yuezhanxiaoyuan_content`,`yuezhanxiaoyuan_delete`,`insert_time`,`create_time`) values (1,1,'约战校园名称1','upload/yuezhanxiaoyuan1.jpg','2023-03-01 19:52:30','约战地点1',4,46,'约战内容1',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(2,2,'约战校园名称2','upload/yuezhanxiaoyuan2.jpg','2023-03-01 19:52:30','约战地点2',4,470,'约战内容2',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(3,2,'约战校园名称3','upload/yuezhanxiaoyuan3.jpg','2023-03-01 19:52:30','约战地点3',2,15,'约战内容3',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(4,3,'约战校园名称4','upload/yuezhanxiaoyuan4.jpg','2023-03-01 19:52:30','约战地点4',4,282,'约战内容4',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(5,3,'约战校园名称5','upload/yuezhanxiaoyuan5.jpg','2023-03-01 19:52:30','约战地点5',4,208,'约战内容5',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(6,1,'约战校园名称6','upload/yuezhanxiaoyuan6.jpg','2023-03-01 19:52:30','约战地点6',2,153,'约战内容6',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(7,2,'约战校园名称7','upload/yuezhanxiaoyuan7.jpg','2023-03-01 19:52:30','约战地点7',2,48,'约战内容7',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(8,2,'约战校园名称8','upload/yuezhanxiaoyuan8.jpg','2023-03-01 19:52:30','约战地点8',3,475,'约战内容8',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(9,3,'约战校园名称9','upload/yuezhanxiaoyuan9.jpg','2023-03-01 19:52:30','约战地点9',3,289,'约战内容9',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(10,1,'约战校园名称10','upload/yuezhanxiaoyuan10.jpg','2023-03-01 19:52:30','约战地点10',2,478,'约战内容10',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(11,3,'约战校园名称11','upload/yuezhanxiaoyuan11.jpg','2023-03-01 19:52:30','约战地点11',2,86,'约战内容11',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(12,3,'约战校园名称12','upload/yuezhanxiaoyuan12.jpg','2023-03-01 19:52:30','约战地点12',1,70,'约战内容12',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(13,2,'约战校园名称13','upload/yuezhanxiaoyuan13.jpg','2023-03-01 19:52:30','约战地点13',3,335,'约战内容13',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(14,3,'约战校园名称14','upload/yuezhanxiaoyuan14.jpg','2023-03-01 19:52:30','约战地点14',1,328,'约战内容14',1,'2023-03-01 19:52:30','2023-03-01 19:52:30'),(15,1,'标题111','upload/1677722705149.jpg','2023-03-02 10:05:07','弟弟那11',2,2,'广东省官方是否是否',1,'2023-03-02 10:05:12','2023-03-02 10:05:12'),(16,1,'标题11','upload/1677722752903.jpg','2023-03-02 10:05:55','地点1',4,1,'供电公司',1,'2023-03-02 10:06:01','2023-03-02 10:06:01'),(17,1,'约战11','upload/1677727084014.jpg','2023-03-02 11:18:06','底单111',2,3,'搞活动方式第三个',1,'2023-03-02 11:18:11','2023-03-02 11:18:11');

/*Table structure for table `yuezhanxiaoyuan_liuyan` */

DROP TABLE IF EXISTS `yuezhanxiaoyuan_liuyan`;

CREATE TABLE `yuezhanxiaoyuan_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuezhanxiaoyuan_id` int(11) DEFAULT NULL COMMENT '约战校园',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yuezhanxiaoyuan_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='约战校园留言';

/*Data for the table `yuezhanxiaoyuan_liuyan` */

insert  into `yuezhanxiaoyuan_liuyan`(`id`,`yuezhanxiaoyuan_id`,`yonghu_id`,`yuezhanxiaoyuan_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-03-01 19:52:30',NULL,NULL,'2023-03-01 19:52:30'),(2,2,2,'留言内容2','2023-03-01 19:52:30',NULL,NULL,'2023-03-01 19:52:30'),(3,3,2,'留言内容3','2023-03-01 19:52:30',NULL,NULL,'2023-03-01 19:52:30'),(4,4,1,'留言内容4','2023-03-01 19:52:30',NULL,NULL,'2023-03-01 19:52:30'),(5,5,3,'留言内容5','2023-03-01 19:52:30',NULL,NULL,'2023-03-01 19:52:30'),(6,6,3,'留言内容6','2023-03-01 19:52:30',NULL,NULL,'2023-03-01 19:52:30'),(7,7,1,'留言内容7','2023-03-01 19:52:30',NULL,NULL,'2023-03-01 19:52:30'),(8,8,3,'留言内容8','2023-03-01 19:52:30',NULL,NULL,'2023-03-01 19:52:30'),(9,9,3,'留言内容9','2023-03-01 19:52:30',NULL,NULL,'2023-03-01 19:52:30'),(10,10,1,'留言内容10','2023-03-01 19:52:30',NULL,NULL,'2023-03-01 19:52:30'),(11,11,1,'留言内容11','2023-03-01 19:52:30',NULL,NULL,'2023-03-01 19:52:30'),(12,12,3,'留言内容12','2023-03-01 19:52:30',NULL,NULL,'2023-03-01 19:52:30'),(13,13,1,'留言内容13','2023-03-01 19:52:30',NULL,NULL,'2023-03-01 19:52:30'),(14,14,3,'留言内容14','2023-03-01 19:52:30',NULL,NULL,'2023-03-01 19:52:30'),(15,10,1,'感受到','2023-03-02 09:57:36',NULL,NULL,'2023-03-02 09:57:36'),(16,17,1,'个','2023-03-02 11:18:29',NULL,NULL,'2023-03-02 11:18:29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
