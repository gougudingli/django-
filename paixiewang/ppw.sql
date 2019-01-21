-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: ppw
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_cart`
--

DROP TABLE IF EXISTS `app_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `isselect` tinyint(1) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_cart_user_id_2bf07879_fk_app_user_id` (`user_id`),
  KEY `app_cart_goods_id_995513ff_fk_pxw_goods_id` (`goods_id`),
  CONSTRAINT `app_cart_goods_id_995513ff_fk_pxw_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `pxw_goods` (`id`),
  CONSTRAINT `app_cart_user_id_2bf07879_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_cart`
--

LOCK TABLES `app_cart` WRITE;
/*!40000 ALTER TABLE `app_cart` DISABLE KEYS */;
INSERT INTO `app_cart` VALUES (1,3,1,1,5),(2,12,1,3,5),(3,5,1,5,5),(4,1,1,8,5),(5,0,1,6,5);
/*!40000 ALTER TABLE `app_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_shoes`
--

DROP TABLE IF EXISTS `app_shoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_shoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(1000) NOT NULL,
  `shoesid` varchar(10) NOT NULL,
  `sc` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL,
  `shoesname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_shoes`
--

LOCK TABLES `app_shoes` WRITE;
/*!40000 ALTER TABLE `app_shoes` DISABLE KEYS */;
INSERT INTO `app_shoes` VALUES (1,'img/list-1/J5/l1.jpg','1','纯香 帆布鞋 秋季高帮帆布鞋女侧拉链内增高松糕厚底休闲帆布裸靴','￥69.00','帆布鞋'),(2,'img/list-1/J5/l2.jpg','2','戈美其 2016秋季欧美深口粗跟鞋防滑耐磨尖头休闲 女靴子 黑色 1611187','￥169.00','戈美其 '),(3,'img/list-1/J5/l3.jpg','3','达芙妮 短靴时尚休闲舒适马丁靴裸靴 棕色 1014605004','￥106.00','达芙妮'),(4,'img/list-1/J5/l4.jpg','4','2016秋冬新款马丁靴短靴中性平底裸靴英伦风黑色工作鞋小皮鞋包邮','￥106.00','新款马丁靴'),(5,'img/list-1/J5/l5.jpg','5','东帝名坊2016秋冬时尚尖头粗跟金属装修拉链休闲 短靴 52035','￥99.00','短靴'),(6,'img/list-1/J5/l6.jpg','6','东帝名坊2016秋冬款圆头英伦风粗跟平底松紧带绒面女 靴子 319-1','￥39.00','英伦风'),(7,'img/list-1/J5/l7.jpg','7','爱尚完美2015新品冬款侧拉链马丁靴','￥89.00','冬款侧拉链'),(8,'img/list-1/J5/l8.jpg','8','2016秋冬新款马丁靴短靴中性平底裸靴英伦风黑色工作鞋小皮鞋包邮','￥106.00','马丁靴短靴'),(9,'img/list-1/J5/l9.jpg','9','东帝名坊2016秋冬时尚圆头内增高短靴休闲女 靴子 52015','￥99.00','秋冬时尚圆头'),(10,'img/list-1/J5/l10.jpg','10','东帝名坊2016秋冬款圆头英伦风粗跟平底松紧带绒面女 靴子 319-1','￥39.00','圆头英伦');
/*!40000 ALTER TABLE `app_shoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(300) NOT NULL,
  `phone` varchar(18) NOT NULL,
  `token` varchar(300) NOT NULL,
  `password1` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (1,'liuchang','123123','','0e7edee1e471342f29fdafdefe79d1b7','20'),(3,'liuchangha','1231231231','','79db7028e259bf739e4c0a8ab274fc40','20'),(4,'wang','1231231231','','073b79520649f1487ee02f37d7df2325','1231231232434'),(5,'jielun','123','','117b1e7afd8c4c15ddf4922243126bc4','123'),(6,'123','123','','d774af9de770a5a5cef9f8650ce1afe4','123'),(7,'wangde','11','','20bc255d32566cf7a338e7b0c288a652','11'),(8,'liuchang1111','202cb962ac59075b964b07152d234b70','','2f8895f32e9179d4de7b820d3f9dded9','202cb962ac59075b964b07152d234b70'),(9,'lili','202cb962ac59075b964b07152d234b70','','8b5b3d1eb0789370987bb804985efb05','202cb962ac59075b964b07152d234b70'),(10,'liuchang333','310dcbbf4cce62f762a2aaa148d556bd','','941661edbe8874e00cf077649bcd865b','310dcbbf4cce62f762a2aaa148d556bd'),(12,'jielun1','adc6beabc7f7978de9525a3a58b6a318','','40ddb5c0ef811107a8d56c543193e5a3','adc6beabc7f7978de9525a3a58b6a318'),(13,'liuchang123123','9f63043f8a188b468e6b8cf7bb1c7a5c','','f06187142b2cb8dc2cbcdf12175ceb7b','9f63043f8a188b468e6b8cf7bb1c7a5c'),(14,'','d41d8cd98f00b204e9800998ecf8427e','','5563f573b8c06394d3a4b05abde5e2a7','d41d8cd98f00b204e9800998ecf8427e'),(26,'python','23eeeb4347bdd26bfc6b7ee9a3b755dd','123312','5e61156614462342c0cdf4920f57a678','23eeeb4347bdd26bfc6b7ee9a3b755dd'),(27,'python1811','44c6eebc168186c6b8cabaf6ea26e1c3','1231231','a1a3ce87d865b40bf5a31180b7712ac4','44c6eebc168186c6b8cabaf6ea26e1c3');
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add user',7,'add_user'),(20,'Can change user',7,'change_user'),(21,'Can delete user',7,'delete_user'),(22,'Can add wheel',8,'add_wheel'),(23,'Can change wheel',8,'change_wheel'),(24,'Can delete wheel',8,'delete_wheel'),(25,'Can add list_goods',9,'add_list_goods'),(26,'Can change list_goods',9,'change_list_goods'),(27,'Can delete list_goods',9,'delete_list_goods'),(28,'Can add shoes',10,'add_shoes'),(29,'Can change shoes',10,'change_shoes'),(30,'Can delete shoes',10,'delete_shoes'),(31,'Can add cart',11,'add_cart'),(32,'Can change cart',11,'change_cart'),(33,'Can delete cart',11,'delete_cart');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$J4uns9f6TvtB$vf3PFxUds6qe9yD3ID1ZGVqC5GgwjvJA1V2Me0ZcVWk=','2019-01-10 06:20:50.807741',1,'liuchang','','','',1,1,'2019-01-10 06:19:38.900156');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(11,'app','cart'),(9,'app','list_goods'),(10,'app','shoes'),(7,'app','user'),(8,'app','wheel'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-01-09 15:35:37.956330'),(2,'auth','0001_initial','2019-01-09 15:35:40.869664'),(3,'admin','0001_initial','2019-01-09 15:35:41.532531'),(4,'admin','0002_logentry_remove_auto_add','2019-01-09 15:35:41.604957'),(5,'app','0001_initial','2019-01-09 15:35:41.758837'),(6,'contenttypes','0002_remove_content_type_name','2019-01-09 15:35:42.409227'),(7,'auth','0002_alter_permission_name_max_length','2019-01-09 15:35:42.527244'),(8,'auth','0003_alter_user_email_max_length','2019-01-09 15:35:42.700477'),(9,'auth','0004_alter_user_username_opts','2019-01-09 15:35:42.720617'),(10,'auth','0005_alter_user_last_login_null','2019-01-09 15:35:42.936401'),(11,'auth','0006_require_contenttypes_0002','2019-01-09 15:35:42.941416'),(12,'auth','0007_alter_validators_add_error_messages','2019-01-09 15:35:42.964562'),(13,'auth','0008_alter_user_username_max_length','2019-01-09 15:35:43.299656'),(14,'sessions','0001_initial','2019-01-09 15:35:43.464686'),(15,'app','0002_user_password1','2019-01-09 15:55:56.778707'),(16,'app','0003_auto_20190109_1820','2019-01-09 18:20:26.813008'),(17,'app','0004_auto_20190109_1821','2019-01-09 18:21:29.299936'),(18,'app','0005_user_content','2019-01-10 06:14:48.369144'),(19,'app','0006_remove_user_content','2019-01-10 13:27:06.808146'),(20,'app','0007_wheel','2019-01-11 12:48:59.057265'),(21,'app','0008_wheel_price','2019-01-11 13:23:59.093351'),(22,'app','0009_auto_20190111_1353','2019-01-11 13:54:06.500847'),(23,'app','0010_list_goods','2019-01-12 09:32:28.979466'),(24,'app','0011_shoes','2019-01-14 10:59:41.683600'),(25,'app','0012_shoes_shoesname','2019-01-14 11:43:58.374140'),(26,'app','0013_cart','2019-01-16 07:45:08.797242'),(27,'app','0014_auto_20190116_1134','2019-01-16 11:34:41.903232'),(28,'app','0015_auto_20190116_1136','2019-01-16 11:36:42.513157');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1a5ym2ynhpqzcg6w7455tz9r6ymoqg8q','MjkzMGFhYTY0Zjk5ZjI4ZWVlMjVjYmY0NWU1MDY1OTk5ZmU3ZTgwODp7InRva2VuIjoiIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MH0=','2019-01-15 09:32:56.882596'),('1h99bxxsdnukq7dvntroucbp2vl019g4','MmI5MDY2OWI3MmExODc5ZmExYTRmYjNlMmJjODAzZWNlZTliYmU5Njp7InRva2VuIjoiamllbHVuICIsIl9zZXNzaW9uX2V4cGlyeSI6NjB9','2019-01-09 17:23:35.464112'),('4l2r58ublnrpbont4gcruqogvqifajj3','YTBhNTBiYWE3Y2I0MmI1YzA4MzBlNjJiNWNmMWUxNDBjMzgwMGRiYjp7InRva2VuIjoiamllbHVuIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MH0=','2019-01-16 01:02:59.606693'),('a1e0izpws4yrklfg6slmj77nz65zdmmm','YTRmMzk4ZWQ1YWU1YWNhYmE2MjI5MTZkYWJjMGNmNTM0ODFlYTI4YTp7Il9zZXNzaW9uX2V4cGlyeSI6NjAsInRva2VuIjoiamllbHVuIn0=','2019-01-10 13:34:05.554493'),('ba1ma267uev33b6h1ox8twwioj55ah2v','ZTJiMmVmZGNiZmQ4YjFlMWMwYjlmY2NhNjFjZTg3MDQ5YTY0YTgwMzp7InRva2VuIjoid2FuZyIsIl9zZXNzaW9uX2V4cGlyeSI6MTB9','2019-01-09 15:56:50.768337'),('fxowvhrtto5gib9xqw6fjvrde5fpv1j1','YTRmMzk4ZWQ1YWU1YWNhYmE2MjI5MTZkYWJjMGNmNTM0ODFlYTI4YTp7Il9zZXNzaW9uX2V4cGlyeSI6NjAsInRva2VuIjoiamllbHVuIn0=','2019-01-15 13:16:35.449395'),('irzw7xjhaeg9v3m5wxmy3efxyvl8kfep','YzViNDM0NWVmNWYyNjZhOGI0Y2Y3ZTQ5NDg1MGI0YWNjMzZiOWJiODp7Il9zZXNzaW9uX2V4cGlyeSI6MTAsInRva2VuIjoiamllbHVuIn0=','2019-01-09 16:08:28.774153'),('jcqzs0pjcc7dlqd4htvx6eq4djbyv8i9','OTQ2NGQ1ZmRmZGEwZjY2NmM5ZjgzMzAwMDg1YTRiZDQzOWUyNzZhMDp7InRva2VuIjoibGl1Y2hhbmdoYSIsIl9zZXNzaW9uX2V4cGlyeSI6MTB9','2019-01-09 15:54:12.755713'),('jzxez0dcbpudyr5fwc6plv3rf8d2ec9g','YmI4MTVkYjRmMDZlZmIxZjMxYjVmMzI5MmJkODE1MzhlZGJiYTU2YTp7InRva2VuIjoibGl1Y2hhbmciLCJfc2Vzc2lvbl9leHBpcnkiOjEwfQ==','2019-01-09 15:53:23.491926'),('mk17vn7l6ko7s300sfy5pbkwxjabtwag','YTRmMzk4ZWQ1YWU1YWNhYmE2MjI5MTZkYWJjMGNmNTM0ODFlYTI4YTp7Il9zZXNzaW9uX2V4cGlyeSI6NjAsInRva2VuIjoiamllbHVuIn0=','2019-01-16 01:06:36.000700'),('o2sqow7j0pndeef6s6114k6cik1p4n8d','YTRmMzk4ZWQ1YWU1YWNhYmE2MjI5MTZkYWJjMGNmNTM0ODFlYTI4YTp7Il9zZXNzaW9uX2V4cGlyeSI6NjAsInRva2VuIjoiamllbHVuIn0=','2019-01-16 09:32:50.502563'),('ohu34otb0cdh76607sh30yrea79fgaxr','NGMzZjkwZmQwZWRhYTNhYTM4ZTA5NjU0NTc1NGJlNmRhNmRmYWYxZTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc5NWYzOGU0OGQ5M2Q5YWNiNWNhNDg3MWFkOGE2ZDhlYzM4ZGYyODQiLCJ0b2tlbiI6ImxpbGkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MH0=','2019-01-10 13:08:41.604001'),('pvazqg3cj2ao3sabblyi1pepj0tw7rhv','ODJkZDVlMzYyZjJiOTA2MDM3NmVjMjIzZmE4YTIxMWIxZTFhOGMxMjp7Il9zZXNzaW9uX2V4cGlyeSI6MTAsInRva2VuIjoiMTIzIn0=','2019-01-09 16:10:08.990908'),('s844oergdx1s0agi9yji23g8vjvd9fk0','YTRmMzk4ZWQ1YWU1YWNhYmE2MjI5MTZkYWJjMGNmNTM0ODFlYTI4YTp7Il9zZXNzaW9uX2V4cGlyeSI6NjAsInRva2VuIjoiamllbHVuIn0=','2019-01-16 09:30:32.737202'),('ukswh6bzvckavxyneyzphrvuja9bwmpu','NGMyZWEyNTM3ZmIxZmI4MzI3YmNiZjhjMTkxZGU5ZjA0YzcxZGM5YTp7InRva2VuIjoibGl1Y2hhbmciLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ==','2019-01-09 17:19:36.397826'),('ux7u77c47e8c0dqmtjhl7rs2nqqu56in','MzQzMzFhNmFlYmI3YWU5M2NmYjUyZGU2MTM3NDRjNmFhMjRhZjZiODp7Il9zZXNzaW9uX2V4cGlyeSI6ODY0MDAsInRva2VuIjoiMTE3YjFlN2FmZDhjNGMxNWRkZjQ5MjIyNDMxMjZiYzQifQ==','2019-01-17 12:55:59.803992'),('x9uz3zbobfc5bntfh569gjwho6tc5fmq','N2VhODMxMTBmNWVlZDJjMmRjOGY3MWJmMjZkYTUxNDBiZmNjODdmYjp7InRva2VuIjoid2FuZ2RlIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MH0=','2019-01-15 09:07:59.919277');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxw_goods`
--

DROP TABLE IF EXISTS `pxw_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pxw_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(1000) NOT NULL,
  `name` varchar(100) NOT NULL,
  `trackid` varchar(10) NOT NULL,
  `price` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxw_goods`
--

LOCK TABLES `pxw_goods` WRITE;
/*!40000 ALTER TABLE `pxw_goods` DISABLE KEYS */;
INSERT INTO `pxw_goods` VALUES (1,'img/list-1/J7/l1.jpg','吉吉猴秋季男童鞋儿童运动鞋网','1','46'),(2,'img/list-1/J7/l2.jpg','男童鞋女童鞋春秋休闲鞋','2','30'),(3,'img/list-1/J7/l3.jpg','蜘蛛侠弹簧鞋童鞋男童','3','46'),(4,'img/list-1/J7/l4.jpg','吉吉猴2016秋季新款童鞋','4','35'),(5,'img/list-1/J7/l5.jpg','鸿星尔克 男童低帮魔术贴调节','5','139'),(6,'img/list-1/J7/l6.jpg','吉吉猴秋季男童鞋儿童','6','46'),(7,'img/list-1/J7/l7.jpg','2016春款单鞋男童鞋女童鞋','7','46'),(8,'img/list-1/J7/l8.jpg','吉吉猴2016秋季新款童鞋','8','35'),(9,'img/list-1/J6/l9.jpg','鞋柜/shoebox 童鞋春秋款','9','39'),(10,'img/list-1/J7/l10.jpg','吉吉猴夏秋季男童鞋儿童运动鞋','10','29');
/*!40000 ALTER TABLE `pxw_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxw_wheel`
--

DROP TABLE IF EXISTS `pxw_wheel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pxw_wheel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(1000) NOT NULL,
  `name` varchar(100) NOT NULL,
  `trackid` varchar(10) NOT NULL,
  `price` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxw_wheel`
--

LOCK TABLES `pxw_wheel` WRITE;
/*!40000 ALTER TABLE `pxw_wheel` DISABLE KEYS */;
INSERT INTO `pxw_wheel` VALUES (1,'img/list-1/J8/l10.jpg','丹爵(DANJUE)新款男式休闲胸腰包时尚潮流头层牛皮胸包胸包D8081','1','￥159.00'),(2,'img/list-1/J8/l2.jpg','柏丽雅诗 森系编织纹锁扣链条小方包','2','￥54.00'),(3,'img/list-1/J8/l3.jpg','瑞士军刀新款超大双肩包男户外登山包女运动休闲背包电脑包SA1330','3','￥108.00'),(4,'img/list-1/J8/l4.jpg','瑞士军刀韩版时尚男士运动双肩电脑背包商务休闲包学生书包SW9017','4','￥99.00'),(5,'img/list-1/J8/l5.jpg','包包2015新款斜挎包女包迷你包锁扣包信封小方包单肩斜跨简约小包','5','￥59.00'),(6,'img/list-1/J8/l6.jpg','柏丽雅诗 新款糖果色休闲百搭斜挎单肩包手机袋','6','￥34.00'),(7,'img/list-1/J8/l7.jpg','柏丽雅诗 新款方块细带单肩斜挎包','7','￥43.00'),(8,'img/list-1/J8/l8.jpg','暗号 新款背包男双肩包韩版大容量户外旅行包迷彩帆布包学生包潮 军绿色 IN3910','8','￥69.00'),(9,'img/list-1/J8/l9.jpg','柏丽雅诗 新款简约荔枝纹单肩小方包','9','￥44.00'),(10,'img/list-1/J8/l10.jpg','柏丽雅诗 夏款日韩兔耳朵菱格单肩斜挎百搭贝壳包','10','￥46.00');
/*!40000 ALTER TABLE `pxw_wheel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-17 17:57:16
