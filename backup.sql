-- MySQL dump 10.13  Distrib 5.5.28, for Win64 (x86)
--
-- Host: localhost    Database: dcs_archiving_system
-- ------------------------------------------------------
-- Server version	5.5.28

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add log entry',6,'add_logentry'),(17,'Can change log entry',6,'change_logentry'),(18,'Can delete log entry',6,'delete_logentry'),(19,'Can add college',7,'add_college'),(20,'Can change college',7,'change_college'),(21,'Can delete college',7,'delete_college'),(22,'Can add department',8,'add_department'),(23,'Can change department',8,'change_department'),(24,'Can delete department',8,'delete_department'),(25,'Can add course',9,'add_course'),(26,'Can change course',9,'change_course'),(27,'Can delete course',9,'delete_course'),(28,'Can add user profile',10,'add_userprofile'),(29,'Can change user profile',10,'change_userprofile'),(30,'Can delete user profile',10,'delete_userprofile'),(31,'Can add alternate_email',11,'add_alternate_email'),(32,'Can change alternate_email',11,'change_alternate_email'),(33,'Can delete alternate_email',11,'delete_alternate_email'),(34,'Can add contact',12,'add_contact'),(35,'Can change contact',12,'change_contact'),(36,'Can delete contact',12,'delete_contact'),(37,'Can add address',13,'add_address'),(38,'Can change address',13,'change_address'),(39,'Can delete address',13,'delete_address'),(40,'Can add transaction',14,'add_transaction'),(41,'Can change transaction',14,'change_transaction'),(42,'Can delete transaction',14,'delete_transaction'),(43,'Can add file',15,'add_file'),(44,'Can change file',15,'change_file'),(45,'Can delete file',15,'delete_file'),(46,'Can add action',16,'add_action'),(47,'Can change action',16,'change_action'),(48,'Can delete action',16,'delete_action'),(49,'Can add log',17,'add_log'),(50,'Can change log',17,'change_log'),(51,'Can delete log',17,'delete_log');
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
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'root','','','molave.35@gmail.com','pbkdf2_sha256$10000$CGRwtROkqhWd$ts6mO4tfXJAIDr4mPrAvhDAIHtHQcUj27BYPH9jaUa0=',1,1,1,'2012-12-12 18:17:57','2012-12-12 10:04:26'),(2,'marc','','','','pbkdf2_sha256$10000$fM830gdBd5CK$V7IpxMPwP7a2crUG6YAVDgT4s4Z+smmeICHR8YvfY+c=',0,1,0,'2012-12-12 18:19:02','2012-12-12 18:19:02'),(3,'smit','','','','pbkdf2_sha256$10000$cVYWosKkttue$aDGR6ailVXZ18I3lgxq03TrvNYgZQtY+fHAWUgMdwf8=',0,1,0,'2012-12-12 18:20:01','2012-12-12 18:20:01'),(4,'carlyu','','','','pbkdf2_sha256$10000$dGDxkzwjGqw1$95+bLrkEINOBNw7mBq2w+QZpRRHqGimXbWhgWp6Eus8=',0,1,0,'2012-12-12 18:20:21','2012-12-12 18:20:21'),(5,'test','','','','pbkdf2_sha256$10000$lKHSvtTJKfpl$sCXdUh87dwLmj5KuQ+e09oANdxNNTGkbcGzLdWDdqQY=',0,1,0,'2012-12-12 18:20:46','2012-12-12 18:20:46');
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
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`),
  CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2012-12-12 18:18:44',1,7,'1','Engineering',1,''),(2,'2012-12-12 18:18:44',1,7,'2','Engineering',1,''),(3,'2012-12-12 18:18:46',1,8,'1','Computer Science, Engineering',1,''),(4,'2012-12-12 18:18:48',1,9,'1','BS CS, Computer Science',1,''),(5,'2012-12-12 18:19:02',1,3,'2','marc',1,''),(6,'2012-12-12 18:19:50',1,7,'3','Agriculture',1,''),(7,'2012-12-12 18:19:51',1,8,'2','Forests, Agriculture',1,''),(8,'2012-12-12 18:19:52',1,9,'2','BS Forestry, Forests',1,''),(9,'2012-12-12 18:20:02',1,3,'3','smit',1,''),(10,'2012-12-12 18:20:22',1,3,'4','carlyu',1,''),(11,'2012-12-12 18:20:46',1,3,'5','test',1,'');
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
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'log entry','admin','logentry'),(7,'college','testapp','college'),(8,'department','testapp','department'),(9,'course','testapp','course'),(10,'user profile','testapp','userprofile'),(11,'alternate_email','testapp','alternate_email'),(12,'contact','testapp','contact'),(13,'address','testapp','address'),(14,'transaction','testapp','transaction'),(15,'file','testapp','file'),(16,'action','testapp','action'),(17,'log','testapp','log');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
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
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('9d66c076007997245cb6e2f393fe7a4c','Y2YwMzI3NDQ2MzMzMTJiZWUxOTg5YTQ5NmRhZTZkYjk0Y2ZkYmQ5NDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-12-26 18:17:57');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_action`
--

DROP TABLE IF EXISTS `testapp_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testapp_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_action`
--

LOCK TABLES `testapp_action` WRITE;
/*!40000 ALTER TABLE `testapp_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `testapp_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_address`
--

DROP TABLE IF EXISTS `testapp_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testapp_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testapp_address_403f60f` (`user_id`),
  CONSTRAINT `user_id_refs_id_d540a6f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_address`
--

LOCK TABLES `testapp_address` WRITE;
/*!40000 ALTER TABLE `testapp_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `testapp_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_alternate_email`
--

DROP TABLE IF EXISTS `testapp_alternate_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testapp_alternate_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testapp_alternate_email_403f60f` (`user_id`),
  CONSTRAINT `user_id_refs_id_5d6248bc` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_alternate_email`
--

LOCK TABLES `testapp_alternate_email` WRITE;
/*!40000 ALTER TABLE `testapp_alternate_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `testapp_alternate_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_college`
--

DROP TABLE IF EXISTS `testapp_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testapp_college` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_college`
--

LOCK TABLES `testapp_college` WRITE;
/*!40000 ALTER TABLE `testapp_college` DISABLE KEYS */;
INSERT INTO `testapp_college` VALUES (1,'Engineering'),(2,'Engineering'),(3,'Agriculture');
/*!40000 ALTER TABLE `testapp_college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_contact`
--

DROP TABLE IF EXISTS `testapp_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testapp_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testapp_contact_403f60f` (`user_id`),
  CONSTRAINT `user_id_refs_id_307af2e3` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_contact`
--

LOCK TABLES `testapp_contact` WRITE;
/*!40000 ALTER TABLE `testapp_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `testapp_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_course`
--

DROP TABLE IF EXISTS `testapp_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testapp_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testapp_course_2ae7390` (`department_id`),
  CONSTRAINT `department_id_refs_id_25a042f2` FOREIGN KEY (`department_id`) REFERENCES `testapp_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_course`
--

LOCK TABLES `testapp_course` WRITE;
/*!40000 ALTER TABLE `testapp_course` DISABLE KEYS */;
INSERT INTO `testapp_course` VALUES (1,'BS CS',1),(2,'BS Forestry',2);
/*!40000 ALTER TABLE `testapp_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_department`
--

DROP TABLE IF EXISTS `testapp_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testapp_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `college_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testapp_department_6d2e0b0` (`college_id`),
  CONSTRAINT `college_id_refs_id_430833cf` FOREIGN KEY (`college_id`) REFERENCES `testapp_college` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_department`
--

LOCK TABLES `testapp_department` WRITE;
/*!40000 ALTER TABLE `testapp_department` DISABLE KEYS */;
INSERT INTO `testapp_department` VALUES (1,'Computer Science',2),(2,'Forests',3);
/*!40000 ALTER TABLE `testapp_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_file`
--

DROP TABLE IF EXISTS `testapp_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testapp_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testapp_file_403f60f` (`user_id`),
  KEY `testapp_file_45d19ab3` (`transaction_id`),
  CONSTRAINT `transaction_id_refs_id_7cc4d790` FOREIGN KEY (`transaction_id`) REFERENCES `testapp_transaction` (`id`),
  CONSTRAINT `user_id_refs_id_413e793e` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_file`
--

LOCK TABLES `testapp_file` WRITE;
/*!40000 ALTER TABLE `testapp_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `testapp_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_log`
--

DROP TABLE IF EXISTS `testapp_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testapp_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testapp_log_403f60f` (`user_id`),
  KEY `testapp_log_206b3f10` (`action_id`),
  KEY `testapp_log_2243e3be` (`file_id`),
  CONSTRAINT `action_id_refs_id_3b2dc6de` FOREIGN KEY (`action_id`) REFERENCES `testapp_action` (`id`),
  CONSTRAINT `file_id_refs_id_6b0688f8` FOREIGN KEY (`file_id`) REFERENCES `testapp_file` (`id`),
  CONSTRAINT `user_id_refs_id_29582d5f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_log`
--

LOCK TABLES `testapp_log` WRITE;
/*!40000 ALTER TABLE `testapp_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `testapp_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_transaction`
--

DROP TABLE IF EXISTS `testapp_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testapp_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_transaction`
--

LOCK TABLES `testapp_transaction` WRITE;
/*!40000 ALTER TABLE `testapp_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `testapp_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_userprofile`
--

DROP TABLE IF EXISTS `testapp_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testapp_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `middlename` varchar(32) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `highest_degree_attained` varchar(100) DEFAULT NULL,
  `length_of_service` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `testapp_userprofile_b7271b` (`course_id`),
  CONSTRAINT `course_id_refs_id_4967e30f` FOREIGN KEY (`course_id`) REFERENCES `testapp_course` (`id`),
  CONSTRAINT `user_id_refs_id_7103e0e7` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_userprofile`
--

LOCK TABLES `testapp_userprofile` WRITE;
/*!40000 ALTER TABLE `testapp_userprofile` DISABLE KEYS */;
INSERT INTO `testapp_userprofile` VALUES (1,1,NULL,'',NULL,NULL,NULL,NULL),(2,2,'marc','','2012-12-13',1,'BSCS','1 year'),(3,3,'smit','','2012-12-12',2,'',''),(4,4,'carlyu','',NULL,1,'',''),(5,5,'test','photos/bio1.jpg',NULL,NULL,'','');
/*!40000 ALTER TABLE `testapp_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-12-13  2:26:20
