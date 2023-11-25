/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.7.35-log : Database - book
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`book` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `book`;

/*Table structure for table `book_borrow` */

DROP TABLE IF EXISTS `book_borrow`;

CREATE TABLE `book_borrow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户管理表',
  `ISBN` varchar(50) COLLATE utf8_bin DEFAULT '0' COMMENT '图书编号',
  `user_id` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '职工号',
  `user_name` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '用户名称',
  `book_name` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '图书名称',
  `sex` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '性别',
  `phone` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '联系电话',
  `day` varchar(20) COLLATE utf8_bin DEFAULT '30' COMMENT '默认天数',
  `borrow_date` date DEFAULT NULL COMMENT '借书日期',
  `return_date` date DEFAULT NULL COMMENT '还书日期',
  `borrow_ifFlag` varchar(20) COLLATE utf8_bin DEFAULT '0' COMMENT '借书标识',
  `return_ifFlag` varchar(20) COLLATE utf8_bin DEFAULT '0' COMMENT '还书标识',
  `status` varchar(20) COLLATE utf8_bin DEFAULT '未还' COMMENT '状态 借书状态/还书状态/无状态',
  `create_time` date DEFAULT '0000-00-00' COMMENT '还书时间',
  `del_flag` varchar(20) COLLATE utf8_bin DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `remark1` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark2` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark3` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark4` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark5` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark6` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='借阅表';

/*Data for the table `book_borrow` */

insert  into `book_borrow`(`id`,`ISBN`,`user_id`,`user_name`,`book_name`,`sex`,`phone`,`day`,`borrow_date`,`return_date`,`borrow_ifFlag`,`return_ifFlag`,`status`,`create_time`,`del_flag`,`remark1`,`remark2`,`remark3`,`remark4`,`remark5`,`remark6`) values (1,'1001-1','1000','username','x校园漫画1','男','15824575432','30','2022-01-06','2022-01-21','0','0','已还','0000-00-00','0','','','','','',''),(2,'1001-2','1001','小刚','x校园漫画2','男','18824535431','30','2022-01-06','2021-01-15','0','0','已还','0000-00-00','0','','','','','',''),(3,'1001-3','1002','小明','x校园漫画3','女','12824575431','30','2022-01-06',NULL,'0','0','未还','0000-00-00','0','','','','','',''),(4,'1001-1','1003','小红','x校园漫画1','男','18824575431','30','2022-01-12',NULL,'0','0','未还','0000-00-00','0','','','','','',''),(5,'1001-1','1003','小红','x校园漫画1','女','18824575431','30','2019-01-24',NULL,'0','0','未还','0000-00-00','0','','','','','',''),(6,'2002-5','1005','小测试','假如给我三天光明','男','13824575431','10','2019-01-23',NULL,'0','0','未还','0000-00-00','0','','','','','',''),(7,'2002-1','1000','username','西游记','男','15824575432','10','2019-01-23',NULL,'0','0','未还','0000-00-00','0','','','','','',''),(8,'1001-1','1000','username','x校园漫画1','男','15824575432','10','2019-01-23',NULL,'0','0','未还','0000-00-00','0','','','','','',''),(9,'2002-1','1008','小测试1','西游记','男','12824575432','10','2019-01-23',NULL,'0','0','未还','0000-00-00','0','','','','','',''),(10,'2002-1','1000','username','西游记','男','15824575432','10','2019-01-23',NULL,'0','0','未还','0000-00-00','0','','','','','',''),(11,'2002-1','1000','username','西游记','男','15824575432','10','2019-01-23',NULL,'0','0','未还','0000-00-00','0','','','','','',''),(12,'2002-1','1000','username','西游记','男','15824575432','10','2022-01-10',NULL,'0','0','未还','0000-00-00','0','','','','','',''),(13,'1001-1','1000','username','x校园漫画1','男','15824575432','10','2022-01-11',NULL,'0','0','未还','0000-00-00','0','','','','','',''),(14,'2002-1','1000','小测试','西游记','男','15824575432','10','2022-01-13',NULL,'0','0','未还','0000-00-00','0','','','','','','');

/*Table structure for table `book_card` */

DROP TABLE IF EXISTS `book_card`;

CREATE TABLE `book_card` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `card_id` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '卡编号',
  `name` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '用户名称',
  `lend_flag` int(11) DEFAULT '0' COMMENT '借书标识',
  `del_flag` char(2) COLLATE utf8_bin DEFAULT '0' COMMENT '假删除',
  `remark1` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark2` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark3` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark4` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark5` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark6` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='卡信息管理表';

/*Data for the table `book_card` */

insert  into `book_card`(`id`,`card_id`,`name`,`lend_flag`,`del_flag`,`remark1`,`remark2`,`remark3`,`remark4`,`remark5`,`remark6`) values (1,'1000','username',7,'0','','','','','',''),(2,'1001','小刚',1,'0','','','','','',''),(3,'1002','小明',1,'0','','','','','',''),(4,'1003','小红',2,'0','','','','','',''),(5,'1005','小测试',1,'0','','','','','',''),(6,'1008','小测试1',1,'0','','','','','',''),(7,'106','秋裤',2,'0','','','','','',''),(8,'1009','admin',2,'0','','','','','','');

/*Table structure for table `book_jr` */

DROP TABLE IF EXISTS `book_jr`;

CREATE TABLE `book_jr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '图书仓库id',
  `ISBN` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '一本书对应一个ISBN',
  `book_name` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '书名',
  `type` varchar(50) COLLATE utf8_bin DEFAULT '文学类' COMMENT '图书类型',
  `publishing_house` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '出版社',
  `author` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '书作者',
  `shelf` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '架层',
  `url` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '图书封面',
  `number` varchar(20) COLLATE utf8_bin DEFAULT '0' COMMENT '上架数量',
  `number_jar` varchar(20) COLLATE utf8_bin DEFAULT '0' COMMENT '仓库量',
  `status` varchar(20) COLLATE utf8_bin DEFAULT '上线' COMMENT '状态',
  `lend_book` varchar(20) COLLATE utf8_bin DEFAULT '0' COMMENT '借书数量',
  `return_boot` varchar(20) COLLATE utf8_bin DEFAULT '0' COMMENT '还书数量',
  `del_flag` varchar(2) COLLATE utf8_bin DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `remark4` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark5` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark6` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='图书厂库表';

/*Data for the table `book_jr` */

insert  into `book_jr`(`id`,`ISBN`,`book_name`,`type`,`publishing_house`,`author`,`shelf`,`url`,`number`,`number_jar`,`status`,`lend_book`,`return_boot`,`del_flag`,`remark4`,`remark5`,`remark6`) values (60,'1001-1','x校园漫画1','漫画类','重庆大学出版社','小明','一架层','/ima/boosdas','0','0','下架','0','0','0','','',''),(61,'1001-2','x校园漫画2','漫画类','西南大学出版社','小红','一架层','/ima/boosdas','100','1','上架','0','0','0','','',''),(62,'1001-3','x校园漫画3','漫画类','西南大学出版社','小工','一架层','/ima/boosdas','100','0','上架','0','0','0','','',''),(63,'2002-1','西游记','小说类','人民邮电出版社','吴承恩','二架层','/ima/boosdas','99','0','上架','0','0','0','','',''),(64,'2002-2','水浒传','小说类','人民邮电出版社','施耐庵','二架层','/ima/boosdas','100','0','上架','0','0','0','','',''),(65,'2002-3','三国演义','小说类','人民邮电出版社','罗贯中','二架层','/ima/boosdas','100','0','上架','0','0','0','','',''),(66,'2002-4','红楼梦','小说类','人民邮电出版社','曹雪芹','二架层','/ima/boosdas','50','0','上架','0','0','0','','',''),(67,'2002-5','假如给我三天光明','小说类','四川文艺出版社','海伦·凯勒','二架层','/ima/boosdas','100','0','上架','0','0','0','','',''),(68,'2002-6','假如给我三天光明','小说类','四川文艺出版社','海伦·凯勒','二架层','/ima/boosdas','100','0','上架','0','0','0','','',''),(69,'2002-7','假如给我三天光明','小说类','四川文艺出版社','海伦·凯勒','二架层','/ima/boosdas','100','1','上架','0','0','0','','',''),(70,'3003-1','喜洋洋与灰太狼','动画片','人民邮电出版社','苏永乐','三架层','/ima/boosdas','34','0','上架','0','0','0','','',''),(71,'3003-2','喜洋洋与灰太狼','动画片','人民邮电出版社','苏永乐','三架层','/ima/boosdas','100','1','上架','0','0','0','','',''),(72,'3003-3','熊出没','动画片','云南人民出版社','武斌和侯喆','三架层','/ima/boosdas','56','','上架','0','0','0','','','');

/*Table structure for table `book_notice` */

DROP TABLE IF EXISTS `book_notice`;

CREATE TABLE `book_notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '公告标题',
  `author` varchar(50) COLLATE utf8_bin DEFAULT '皇家牛号' COMMENT '作者',
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '公告内容',
  `create_time` date DEFAULT NULL COMMENT '发布时间',
  `del_flag` varchar(10) COLLATE utf8_bin DEFAULT '0' COMMENT '删除为1 假删除',
  `remark3` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark4` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark5` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark6` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='公告表';

/*Data for the table `book_notice` */

insert  into `book_notice`(`id`,`title`,`author`,`content`,`create_time`,`del_flag`,`remark3`,`remark4`,`remark5`,`remark6`) values (1,'图书馆简介','皇家牛号','重庆图书馆历经200年的建设和发展，现有各类馆藏文献460多万册（件），并已形成在国内外都具有影响力的民国时期出版物、古籍线装书、联合国资料三大馆藏特色。同时，重庆图书馆从建馆之初就重视地方文献的征集整理与研究工作，已形成了较为完整的地方文献体系，主要收集有重庆及四川各地的方志、图书、报刊、族谱、乐谱、书画等各类地方文献','2022-01-06','0','','','',''),(2,'四大名著来咯','皇家牛号','全书主要描写了孙悟空出世及大闹天宫后，遇见了唐僧、猪八戒、沙僧和白龙马，西行取经，一路上历经艰险、妖怪魔法高强，经历了九九八十一难，终于到达西天见到如来佛祖，最终五圣成真的故事。该小说以“唐僧取经”这一历史事件为蓝本，通过作者的艺术加工，深刻地描绘了明代社会现实。','2022-01-06','0','','','',''),(4,'图书来咯！','金角大王','《大妖精》上市拉中国神话的妖精是指修炼后的物类，好比人修道成仙那样，妖精经常被人视同于妖怪，可妖同样有好坏之分，即使是妖若心存善念也可修成正果；而人若心存恶念亦会堕落成魔。妖精和妖怪的性质其实不尽相同，区别也不大，有时可混用：「妖怪」是指除人类和神以外存在于天地中的超自然生物，一般由大型猛兽修炼而成，外表通常凶恶吓人，即由于认知限制，人们暂时难以以科学解释的现象或事物；而「妖精」比较偏向大自然事物化身，一般由小型动植物成精，外表通常美丽迷人，会愚弄人类的神怪。','2022-01-04','0','','','',''),(5,'图书来咯','金角大王','《大妖精》上市拉小妖精（Faerie），又名小仙子。原词来自法文，是指遍布世界各地的小妖精。一般分为两类：群居小妖精和独居小妖精。','2022-01-03','1','','','',''),(6,'图书来咯','银角大王','《小妖精》和《大妖精》大结局了','2022-01-02','0','','','',''),(7,'牛魔王来辣','皇家牛号','介绍了牛魔王和铁扇公主的爱情故事','2022-01-08','0','','','',''),(8,'小牛牛 ','皇家牛号','神奇小牛大耳朵','2022-01-08','0','','','',''),(9,'爱情之海','皇家牛号','这个书是非常的好看','2022-01-08','0','','','',''),(10,'老人与海','皇家牛号','该作围绕一位老年古巴渔夫，与一条巨大的马林鱼在离岸很远的湾流中搏斗而展开故事的讲述。尽管海明威笔下的老人是悲剧性的，但他身上却有着尼采“超人”的品质，泰然自若地接受失败，沉着勇敢地面对死亡，这些“硬汉子”体现了海明威的人生哲学和道德理想，即人类不向命运低头，永不服输的斗士精神和积极向上的乐观人生态度。','2022-01-13','0','','','',''),(11,'爱情之海','皇家牛号','《爱情之海》是悦宝创作的网络小说，发表于起点网。','2022-01-04','0','','','',''),(12,'西游记来耶','皇家牛号','唐僧使徒取径的故事','2022-01-11','0','','','','');

/*Table structure for table `book_shelf` */

DROP TABLE IF EXISTS `book_shelf`;

CREATE TABLE `book_shelf` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '书架号',
  `ISBN` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '图书编号',
  `shelf` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '架层',
  `book_position` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '详细位置',
  `del_flag` varchar(50) COLLATE utf8_bin DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `remark1` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark2` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark3` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark4` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark5` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  `remark6` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='书架表';

/*Data for the table `book_shelf` */

insert  into `book_shelf`(`id`,`ISBN`,`shelf`,`book_position`,`del_flag`,`remark1`,`remark2`,`remark3`,`remark4`,`remark5`,`remark6`) values (1,'1001-1','一架层','1排2号','0','','','','','',''),(2,'1001-2','一架层','1排2号','0','','','','','',''),(3,'1001-3','一架层','1排3号','0','','','','','',''),(4,'2002-1','二架层','2排1号','0','','','','','',''),(5,'2002-2','二架层','2排2号','0','','','','','',''),(6,'2002-3','二架层','2排3号','0','','','','','',''),(7,'3003-1','三架层','3排1号','0','','','','','',''),(8,'3003-2','三架层','3排2号','0','','','','','',''),(9,'3003-3','三架层','3排20号','0','','','','','','');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) COLLATE utf8_bin DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) COLLATE utf8_bin DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) COLLATE utf8_bin DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='菜单权限表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`url`,`target`,`menu_type`,`visible`,`is_refresh`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'书架管理',0,1,'/system/shelf','','M','0','1','','fa fa-gear','admin','2021-09-09 10:33:19','',NULL,'系统管理目录'),(2,'借阅管理',0,2,'/system/borrow','','M','0','1','','fa fa-video-camera','admin','2021-09-09 10:33:19','',NULL,'系统监控目录'),(4,'卡信息管理',0,4,'/system/card','','C','0','1','','fa fa-location-arrow','admin','2021-09-09 10:33:19','',NULL,'若依官网地址'),(5,'公告管理',0,0,'/system/notice','','','0','1',NULL,'#','',NULL,'',NULL,''),(6,'用户管理',0,0,'/system/user','','','0','1',NULL,'#','',NULL,'',NULL,'');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `work_id` varchar(20) DEFAULT NULL COMMENT '工作id',
  `login_name` varchar(30) DEFAULT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(10) DEFAULT '' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phone_number` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(2) DEFAULT '男' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `status` varchar(10) DEFAULT '在线' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='管理员表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`work_id`,`login_name`,`user_name`,`user_type`,`email`,`phone_number`,`sex`,`avatar`,`password`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'100','admin','小明1','用户','1@qq.com','15023484246','男','abc','123456','在线','0','','2022-01-10 15:00:27','',NULL,NULL),(2,'101','admin123','晓东','用户','1@qq.com','15023484296','男','bcd','123456','下线','0','','2022-01-10 15:00:25','',NULL,NULL),(3,'102','ad','小明','用户','1@qq.com','15023484342','男','bcd','123456','在线','0','','2022-01-10 15:00:24','',NULL,NULL),(4,'103','a','小兰','管理员','1@qq.com','13402484246','男','bcd','123456','在线','0','','2022-01-10 15:00:24','',NULL,NULL),(5,'104','b','小明','用户','1@qq.com','15023348424','女','bcd','123456','在线','0','','2022-01-10 15:00:22','',NULL,NULL),(36,'105','abc','小测试','管理员','1804591889@qq.com','12023484246','女','abc','测试12','在线','0','','2022-01-10 15:00:18','',NULL,NULL),(37,'106','aa','username','用户','1804591889@qq.com','12123484246','女','abc','测试12','下线','0','','2022-01-10 14:56:41','',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
