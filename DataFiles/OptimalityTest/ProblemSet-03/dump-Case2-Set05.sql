-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: autowscs
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$t1PV0MeFrM2P$mdFVt5O/PMrM6U6PP4ei7LDjVNuN0OJi97bq+oRxpQg=','2020-10-19 22:21:14.385392',0,'kgayke','','','k2gaike@gmail.com',0,1,'2020-10-19 22:21:13.589791');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
-- Table structure for table `careerpath`
--

DROP TABLE IF EXISTS `careerpath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careerpath` (
  `careerPathID` char(4) NOT NULL,
  `careerPathName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`careerPathID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careerpath`
--

LOCK TABLES `careerpath` WRITE;
/*!40000 ALTER TABLE `careerpath` DISABLE KEYS */;
INSERT INTO `careerpath` VALUES ('C100','Data Analyst');
/*!40000 ALTER TABLE `careerpath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-03-09 23:45:06.538733'),(2,'auth','0001_initial','2020-03-09 23:45:10.018233'),(3,'admin','0001_initial','2020-03-09 23:45:11.118233'),(4,'admin','0002_logentry_remove_auto_add','2020-03-09 23:45:11.139233'),(5,'admin','0003_logentry_add_action_flag_choices','2020-03-09 23:45:11.169233'),(6,'contenttypes','0002_remove_content_type_name','2020-03-09 23:45:11.498233'),(7,'auth','0002_alter_permission_name_max_length','2020-03-09 23:45:11.539233'),(8,'auth','0003_alter_user_email_max_length','2020-03-09 23:45:11.619233'),(9,'auth','0004_alter_user_username_opts','2020-03-09 23:45:11.629233'),(10,'auth','0005_alter_user_last_login_null','2020-03-09 23:45:11.770233'),(11,'auth','0006_require_contenttypes_0002','2020-03-09 23:45:11.810233'),(12,'auth','0007_alter_validators_add_error_messages','2020-03-09 23:45:11.820233'),(13,'auth','0008_alter_user_username_max_length','2020-03-09 23:45:11.831233'),(14,'auth','0009_alter_user_last_name_max_length','2020-03-09 23:45:11.949233'),(15,'sessions','0001_initial','2020-03-09 23:45:12.140233');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('tyl1c5xdi2x8x2jwg76rgv4m7k8zrh9f','Y2FhMTEwYWE3NTdhZjlkMTFkYzhlMDM0OGM4NTU4YzVjZGQwZDM0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzIyNjA4ZWY3OTQ5MWYwMTUwOGMyMDFlMDIzZmRjNjI3MTU4N2IzIn0=','2020-11-02 22:21:14.400992');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `initialgoalparameter`
--

DROP TABLE IF EXISTS `initialgoalparameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `initialgoalparameter` (
  `transactionID` bigint NOT NULL,
  `iorg` varchar(10) NOT NULL,
  `parameterID` varchar(10) NOT NULL,
  PRIMARY KEY (`transactionID`,`iorg`,`parameterID`),
  KEY `knowledgeID` (`parameterID`),
  CONSTRAINT `initialgoalparameter_ibfk_1` FOREIGN KEY (`parameterID`) REFERENCES `parameterlist` (`parameterID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `initialgoalparameter`
--

LOCK TABLES `initialgoalparameter` WRITE;
/*!40000 ALTER TABLE `initialgoalparameter` DISABLE KEYS */;
INSERT INTO `initialgoalparameter` VALUES (2,'I','p1'),(5,'I','p1'),(12,'I','p1'),(15,'I','p1'),(16,'I','p1'),(21,'I','p1'),(24,'G','p1'),(25,'I','p1'),(28,'I','p1'),(29,'G','p1'),(30,'G','p1'),(6,'G','p10'),(7,'G','p10'),(10,'I','p10'),(12,'I','p10'),(13,'G','p10'),(14,'I','p10'),(15,'I','p10'),(23,'I','p10'),(27,'I','p10'),(29,'G','p10'),(6,'I','p11'),(8,'G','p11'),(10,'I','p11'),(11,'G','p11'),(15,'I','p11'),(17,'G','p11'),(19,'I','p11'),(21,'G','p11'),(2,'G','p12'),(4,'G','p12'),(6,'I','p12'),(13,'I','p12'),(19,'G','p12'),(24,'I','p12'),(26,'I','p12'),(1,'I','p13'),(4,'G','p13'),(5,'G','p13'),(7,'I','p13'),(8,'I','p13'),(9,'G','p13'),(10,'I','p13'),(16,'G','p13'),(17,'I','p13'),(18,'I','p13'),(20,'I','p13'),(21,'I','p13'),(23,'I','p13'),(30,'I','p13'),(2,'I','p14'),(4,'I','p14'),(6,'I','p14'),(8,'G','p14'),(9,'G','p14'),(16,'G','p14'),(18,'I','p14'),(22,'I','p14'),(25,'G','p14'),(29,'I','p14'),(1,'I','p15'),(4,'G','p15'),(10,'G','p15'),(11,'G','p15'),(17,'I','p15'),(20,'I','p15'),(22,'G','p15'),(29,'I','p15'),(2,'I','p16'),(3,'I','p16'),(6,'G','p16'),(11,'G','p16'),(12,'I','p16'),(13,'G','p16'),(16,'I','p16'),(20,'G','p16'),(23,'I','p16'),(24,'G','p16'),(25,'I','p16'),(26,'I','p16'),(2,'G','p17'),(3,'G','p17'),(5,'I','p17'),(8,'G','p17'),(11,'I','p17'),(14,'G','p17'),(17,'I','p17'),(19,'I','p17'),(21,'I','p17'),(22,'I','p17'),(23,'I','p17'),(24,'I','p17'),(25,'G','p17'),(26,'I','p17'),(27,'G','p17'),(3,'I','p18'),(5,'I','p18'),(6,'I','p18'),(8,'I','p18'),(10,'I','p18'),(17,'I','p18'),(18,'I','p18'),(20,'I','p18'),(22,'I','p18'),(25,'I','p18'),(27,'G','p18'),(19,'I','p19'),(25,'G','p19'),(29,'I','p19'),(1,'I','p2'),(3,'G','p2'),(5,'I','p2'),(6,'I','p2'),(8,'G','p2'),(9,'I','p2'),(10,'G','p2'),(11,'G','p2'),(14,'G','p2'),(15,'G','p2'),(18,'I','p2'),(19,'G','p2'),(21,'I','p2'),(25,'G','p2'),(30,'I','p2'),(6,'G','p20'),(7,'I','p20'),(8,'I','p20'),(15,'I','p20'),(16,'G','p20'),(18,'G','p20'),(22,'I','p20'),(23,'I','p20'),(26,'I','p20'),(28,'I','p20'),(29,'G','p20'),(30,'I','p20'),(1,'G','p21'),(4,'I','p21'),(7,'I','p21'),(9,'I','p21'),(10,'G','p21'),(11,'I','p21'),(15,'G','p21'),(19,'I','p21'),(20,'G','p21'),(24,'I','p21'),(26,'I','p21'),(29,'G','p21'),(30,'G','p21'),(2,'I','p22'),(3,'G','p22'),(4,'I','p22'),(7,'I','p22'),(8,'I','p22'),(12,'I','p22'),(14,'G','p22'),(18,'I','p22'),(21,'I','p22'),(24,'G','p22'),(27,'I','p22'),(6,'I','p23'),(11,'I','p23'),(13,'I','p23'),(17,'I','p23'),(22,'G','p23'),(23,'G','p23'),(28,'I','p23'),(3,'I','p24'),(5,'G','p24'),(8,'I','p24'),(9,'I','p24'),(12,'G','p24'),(14,'I','p24'),(29,'I','p24'),(1,'G','p25'),(2,'G','p25'),(3,'I','p25'),(5,'G','p25'),(10,'I','p25'),(11,'I','p25'),(12,'G','p25'),(14,'G','p25'),(17,'G','p25'),(18,'G','p25'),(20,'I','p25'),(28,'G','p25'),(3,'G','p26'),(4,'I','p26'),(5,'I','p26'),(7,'G','p26'),(13,'I','p26'),(14,'I','p26'),(15,'I','p26'),(16,'I','p26'),(20,'G','p26'),(22,'G','p26'),(23,'G','p26'),(25,'I','p26'),(26,'I','p26'),(1,'G','p27'),(3,'I','p27'),(7,'I','p27'),(18,'G','p27'),(19,'G','p27'),(20,'I','p27'),(22,'I','p27'),(26,'G','p27'),(27,'G','p27'),(28,'G','p27'),(8,'I','p28'),(9,'G','p28'),(10,'G','p28'),(11,'I','p28'),(13,'I','p28'),(23,'I','p28'),(24,'G','p28'),(26,'G','p28'),(27,'I','p28'),(28,'I','p28'),(30,'I','p28'),(4,'I','p29'),(9,'I','p29'),(12,'I','p29'),(14,'I','p29'),(18,'I','p29'),(21,'I','p29'),(23,'G','p29'),(26,'G','p29'),(28,'G','p29'),(2,'I','p3'),(5,'I','p3'),(7,'I','p3'),(10,'I','p3'),(16,'I','p3'),(19,'I','p3'),(21,'G','p3'),(27,'I','p3'),(2,'I','p30'),(4,'G','p30'),(6,'G','p30'),(9,'I','p30'),(12,'I','p30'),(16,'I','p30'),(23,'G','p30'),(24,'I','p30'),(28,'I','p30'),(1,'I','p4'),(9,'G','p4'),(13,'G','p4'),(15,'G','p4'),(21,'G','p4'),(1,'I','p5'),(12,'G','p5'),(15,'I','p5'),(18,'G','p5'),(19,'I','p5'),(22,'I','p5'),(25,'I','p5'),(27,'G','p5'),(29,'I','p5'),(30,'G','p5'),(1,'I','p6'),(3,'I','p6'),(4,'I','p6'),(7,'G','p6'),(14,'I','p6'),(17,'I','p6'),(21,'G','p6'),(25,'I','p6'),(26,'G','p6'),(27,'I','p6'),(28,'G','p6'),(30,'I','p6'),(1,'G','p7'),(7,'G','p7'),(9,'I','p7'),(11,'I','p7'),(13,'I','p7'),(15,'G','p7'),(16,'I','p7'),(17,'G','p7'),(20,'G','p7'),(24,'I','p7'),(30,'G','p7'),(12,'G','p8'),(13,'I','p8'),(14,'I','p8'),(16,'G','p8'),(17,'G','p8'),(19,'G','p8'),(24,'I','p8'),(28,'I','p8'),(30,'I','p8'),(2,'G','p9'),(5,'G','p9'),(13,'G','p9'),(20,'I','p9'),(22,'G','p9'),(27,'I','p9'),(29,'I','p9');
/*!40000 ALTER TABLE `initialgoalparameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inputparameter`
--

DROP TABLE IF EXISTS `inputparameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inputparameter` (
  `webServiceID` varchar(10) NOT NULL,
  `parameterID` varchar(10) NOT NULL,
  PRIMARY KEY (`webServiceID`,`parameterID`),
  KEY `knowledgeID` (`parameterID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inputparameter`
--

LOCK TABLES `inputparameter` WRITE;
/*!40000 ALTER TABLE `inputparameter` DISABLE KEYS */;
INSERT INTO `inputparameter` VALUES ('WSS108','p1'),('WSS119','p1'),('WSS123','p1'),('WSS129','p1'),('WSS133','p1'),('WSS152','p1'),('WSS23','p1'),('WSS241','p1'),('WSS255','p1'),('WSS316','p1'),('WSS34','p1'),('WSS344','p1'),('WSS365','p1'),('WSS375','p1'),('WSS379','p1'),('WSS399','p1'),('WSS53','p1'),('WSS77','p1'),('WSS92','p1'),('WSS103','p10'),('WSS109','p10'),('WSS116','p10'),('WSS127','p10'),('WSS132','p10'),('WSS183','p10'),('WSS197','p10'),('WSS21','p10'),('WSS228','p10'),('WSS262','p10'),('WSS270','p10'),('WSS278','p10'),('WSS286','p10'),('WSS300','p10'),('WSS31','p10'),('WSS310','p10'),('WSS335','p10'),('WSS375','p10'),('WSS397','p10'),('WSS61','p10'),('WSS82','p10'),('WSS118','p11'),('WSS149','p11'),('WSS157','p11'),('WSS168','p11'),('WSS180','p11'),('WSS19','p11'),('WSS197','p11'),('WSS224','p11'),('WSS257','p11'),('WSS276','p11'),('WSS278','p11'),('WSS30','p11'),('WSS322','p11'),('WSS337','p11'),('WSS341','p11'),('WSS351','p11'),('WSS367','p11'),('WSS368','p11'),('WSS374','p11'),('WSS387','p11'),('WSS4','p11'),('WSS65','p11'),('WSS75','p11'),('WSS8','p11'),('WSS113','p12'),('WSS122','p12'),('WSS129','p12'),('WSS137','p12'),('WSS139','p12'),('WSS199','p12'),('WSS202','p12'),('WSS21','p12'),('WSS226','p12'),('WSS227','p12'),('WSS242','p12'),('WSS246','p12'),('WSS256','p12'),('WSS282','p12'),('WSS3','p12'),('WSS303','p12'),('WSS311','p12'),('WSS315','p12'),('WSS319','p12'),('WSS330','p12'),('WSS338','p12'),('WSS357','p12'),('WSS359','p12'),('WSS372','p12'),('WSS384','p12'),('WSS393','p12'),('WSS41','p12'),('WSS97','p12'),('WSS136','p13'),('WSS146','p13'),('WSS159','p13'),('WSS171','p13'),('WSS18','p13'),('WSS194','p13'),('WSS218','p13'),('WSS220','p13'),('WSS225','p13'),('WSS232','p13'),('WSS270','p13'),('WSS273','p13'),('WSS29','p13'),('WSS318','p13'),('WSS349','p13'),('WSS356','p13'),('WSS362','p13'),('WSS39','p13'),('WSS69','p13'),('WSS78','p13'),('WSS8','p13'),('WSS80','p13'),('WSS86','p13'),('WSS87','p13'),('WSS94','p13'),('WSS102','p14'),('WSS107','p14'),('WSS108','p14'),('WSS111','p14'),('WSS112','p14'),('WSS123','p14'),('WSS140','p14'),('WSS144','p14'),('WSS154','p14'),('WSS185','p14'),('WSS2','p14'),('WSS211','p14'),('WSS223','p14'),('WSS225','p14'),('WSS262','p14'),('WSS265','p14'),('WSS273','p14'),('WSS274','p14'),('WSS293','p14'),('WSS315','p14'),('WSS33','p14'),('WSS364','p14'),('WSS368','p14'),('WSS373','p14'),('WSS378','p14'),('WSS379','p14'),('WSS383','p14'),('WSS385','p14'),('WSS394','p14'),('WSS68','p14'),('WSS83','p14'),('WSS96','p14'),('WSS135','p15'),('WSS148','p15'),('WSS153','p15'),('WSS18','p15'),('WSS219','p15'),('WSS223','p15'),('WSS229','p15'),('WSS272','p15'),('WSS289','p15'),('WSS304','p15'),('WSS328','p15'),('WSS347','p15'),('WSS353','p15'),('WSS400','p15'),('WSS49','p15'),('WSS84','p15'),('WSS101','p16'),('WSS102','p16'),('WSS109','p16'),('WSS13','p16'),('WSS130','p16'),('WSS14','p16'),('WSS145','p16'),('WSS172','p16'),('WSS189','p16'),('WSS205','p16'),('WSS206','p16'),('WSS213','p16'),('WSS22','p16'),('WSS230','p16'),('WSS232','p16'),('WSS244','p16'),('WSS28','p16'),('WSS307','p16'),('WSS373','p16'),('WSS376','p16'),('WSS380','p16'),('WSS390','p16'),('WSS54','p16'),('WSS63','p16'),('WSS69','p16'),('WSS74','p16'),('WSS79','p16'),('WSS88','p16'),('WSS122','p17'),('WSS128','p17'),('WSS160','p17'),('WSS162','p17'),('WSS17','p17'),('WSS191','p17'),('WSS192','p17'),('WSS20','p17'),('WSS201','p17'),('WSS213','p17'),('WSS226','p17'),('WSS239','p17'),('WSS250','p17'),('WSS254','p17'),('WSS275','p17'),('WSS301','p17'),('WSS310','p17'),('WSS312','p17'),('WSS326','p17'),('WSS336','p17'),('WSS340','p17'),('WSS350','p17'),('WSS352','p17'),('WSS37','p17'),('WSS44','p17'),('WSS57','p17'),('WSS7','p17'),('WSS98','p17'),('WSS125','p18'),('WSS150','p18'),('WSS154','p18'),('WSS237','p18'),('WSS266','p18'),('WSS267','p18'),('WSS279','p18'),('WSS283','p18'),('WSS325','p18'),('WSS326','p18'),('WSS330','p18'),('WSS343','p18'),('WSS381','p18'),('WSS67','p18'),('WSS74','p18'),('WSS77','p18'),('WSS1','p19'),('WSS11','p19'),('WSS124','p19'),('WSS141','p19'),('WSS172','p19'),('WSS188','p19'),('WSS210','p19'),('WSS233','p19'),('WSS249','p19'),('WSS254','p19'),('WSS255','p19'),('WSS259','p19'),('WSS271','p19'),('WSS280','p19'),('WSS306','p19'),('WSS334','p19'),('WSS361','p19'),('WSS369','p19'),('WSS371','p19'),('WSS38','p19'),('WSS382','p19'),('WSS392','p19'),('WSS395','p19'),('WSS56','p19'),('WSS72','p19'),('WSS79','p19'),('WSS92','p19'),('WSS106','p2'),('WSS117','p2'),('WSS161','p2'),('WSS187','p2'),('WSS193','p2'),('WSS233','p2'),('WSS241','p2'),('WSS282','p2'),('WSS309','p2'),('WSS343','p2'),('WSS360','p2'),('WSS363','p2'),('WSS364','p2'),('WSS366','p2'),('WSS385','p2'),('WSS394','p2'),('WSS397','p2'),('WSS40','p2'),('WSS44','p2'),('WSS53','p2'),('WSS58','p2'),('WSS59','p2'),('WSS62','p2'),('WSS95','p2'),('WSS11','p20'),('WSS112','p20'),('WSS12','p20'),('WSS166','p20'),('WSS170','p20'),('WSS178','p20'),('WSS182','p20'),('WSS187','p20'),('WSS190','p20'),('WSS208','p20'),('WSS210','p20'),('WSS258','p20'),('WSS264','p20'),('WSS267','p20'),('WSS281','p20'),('WSS287','p20'),('WSS288','p20'),('WSS289','p20'),('WSS346','p20'),('WSS370','p20'),('WSS372','p20'),('WSS377','p20'),('WSS388','p20'),('WSS46','p20'),('WSS49','p20'),('WSS51','p20'),('WSS6','p20'),('WSS10','p21'),('WSS116','p21'),('WSS124','p21'),('WSS126','p21'),('WSS131','p21'),('WSS134','p21'),('WSS140','p21'),('WSS155','p21'),('WSS173','p21'),('WSS183','p21'),('WSS185','p21'),('WSS222','p21'),('WSS243','p21'),('WSS284','p21'),('WSS288','p21'),('WSS295','p21'),('WSS307','p21'),('WSS342','p21'),('WSS386','p21'),('WSS387','p21'),('WSS39','p21'),('WSS393','p21'),('WSS7','p21'),('WSS76','p21'),('WSS15','p22'),('WSS165','p22'),('WSS167','p22'),('WSS186','p22'),('WSS19','p22'),('WSS202','p22'),('WSS212','p22'),('WSS214','p22'),('WSS216','p22'),('WSS237','p22'),('WSS304','p22'),('WSS314','p22'),('WSS332','p22'),('WSS337','p22'),('WSS349','p22'),('WSS352','p22'),('WSS356','p22'),('WSS5','p22'),('WSS52','p22'),('WSS73','p22'),('WSS93','p22'),('WSS121','p23'),('WSS147','p23'),('WSS164','p23'),('WSS177','p23'),('WSS195','p23'),('WSS207','p23'),('WSS238','p23'),('WSS247','p23'),('WSS261','p23'),('WSS271','p23'),('WSS274','p23'),('WSS28','p23'),('WSS280','p23'),('WSS298','p23'),('WSS301','p23'),('WSS320','p23'),('WSS354','p23'),('WSS36','p23'),('WSS366','p23'),('WSS369','p23'),('WSS399','p23'),('WSS48','p23'),('WSS56','p23'),('WSS58','p23'),('WSS70','p23'),('WSS118','p24'),('WSS120','p24'),('WSS127','p24'),('WSS13','p24'),('WSS133','p24'),('WSS138','p24'),('WSS151','p24'),('WSS163','p24'),('WSS165','p24'),('WSS180','p24'),('WSS203','p24'),('WSS209','p24'),('WSS212','p24'),('WSS217','p24'),('WSS230','p24'),('WSS249','p24'),('WSS291','p24'),('WSS295','p24'),('WSS299','p24'),('WSS306','p24'),('WSS313','p24'),('WSS316','p24'),('WSS32','p24'),('WSS341','p24'),('WSS36','p24'),('WSS38','p24'),('WSS380','p24'),('WSS45','p24'),('WSS48','p24'),('WSS54','p24'),('WSS55','p24'),('WSS71','p24'),('WSS86','p24'),('WSS91','p24'),('WSS99','p24'),('WSS12','p25'),('WSS120','p25'),('WSS121','p25'),('WSS144','p25'),('WSS176','p25'),('WSS179','p25'),('WSS196','p25'),('WSS20','p25'),('WSS206','p25'),('WSS218','p25'),('WSS242','p25'),('WSS250','p25'),('WSS251','p25'),('WSS252','p25'),('WSS269','p25'),('WSS27','p25'),('WSS272','p25'),('WSS294','p25'),('WSS308','p25'),('WSS345','p25'),('WSS374','p25'),('WSS386','p25'),('WSS66','p25'),('WSS76','p25'),('WSS78','p25'),('WSS101','p26'),('WSS114','p26'),('WSS115','p26'),('WSS117','p26'),('WSS128','p26'),('WSS148','p26'),('WSS159','p26'),('WSS160','p26'),('WSS17','p26'),('WSS175','p26'),('WSS211','p26'),('WSS217','p26'),('WSS24','p26'),('WSS240','p26'),('WSS248','p26'),('WSS257','p26'),('WSS260','p26'),('WSS292','p26'),('WSS296','p26'),('WSS331','p26'),('WSS377','p26'),('WSS381','p26'),('WSS390','p26'),('WSS395','p26'),('WSS55','p26'),('WSS100','p27'),('WSS110','p27'),('WSS113','p27'),('WSS143','p27'),('WSS147','p27'),('WSS156','p27'),('WSS161','p27'),('WSS162','p27'),('WSS174','p27'),('WSS186','p27'),('WSS192','p27'),('WSS205','p27'),('WSS219','p27'),('WSS248','p27'),('WSS268','p27'),('WSS27','p27'),('WSS276','p27'),('WSS277','p27'),('WSS285','p27'),('WSS294','p27'),('WSS312','p27'),('WSS333','p27'),('WSS334','p27'),('WSS345','p27'),('WSS348','p27'),('WSS35','p27'),('WSS354','p27'),('WSS361','p27'),('WSS389','p27'),('WSS396','p27'),('WSS398','p27'),('WSS60','p27'),('WSS81','p27'),('WSS89','p27'),('WSS105','p28'),('WSS152','p28'),('WSS16','p28'),('WSS2','p28'),('WSS200','p28'),('WSS209','p28'),('WSS221','p28'),('WSS258','p28'),('WSS283','p28'),('WSS292','p28'),('WSS298','p28'),('WSS308','p28'),('WSS320','p28'),('WSS324','p28'),('WSS325','p28'),('WSS329','p28'),('WSS34','p28'),('WSS35','p28'),('WSS37','p28'),('WSS396','p28'),('WSS4','p28'),('WSS400','p28'),('WSS57','p28'),('WSS62','p28'),('WSS68','p28'),('WSS88','p28'),('WSS9','p28'),('WSS114','p29'),('WSS141','p29'),('WSS155','p29'),('WSS171','p29'),('WSS190','p29'),('WSS194','p29'),('WSS236','p29'),('WSS238','p29'),('WSS25','p29'),('WSS252','p29'),('WSS279','p29'),('WSS281','p29'),('WSS299','p29'),('WSS305','p29'),('WSS329','p29'),('WSS338','p29'),('WSS342','p29'),('WSS370','p29'),('WSS371','p29'),('WSS378','p29'),('WSS391','p29'),('WSS59','p29'),('WSS66','p29'),('WSS71','p29'),('WSS72','p29'),('WSS82','p29'),('WSS100','p3'),('WSS103','p3'),('WSS106','p3'),('WSS107','p3'),('WSS151','p3'),('WSS153','p3'),('WSS169','p3'),('WSS199','p3'),('WSS215','p3'),('WSS216','p3'),('WSS256','p3'),('WSS264','p3'),('WSS287','p3'),('WSS293','p3'),('WSS31','p3'),('WSS322','p3'),('WSS336','p3'),('WSS358','p3'),('WSS383','p3'),('WSS384','p3'),('WSS40','p3'),('WSS42','p3'),('WSS89','p3'),('WSS90','p3'),('WSS91','p3'),('WSS125','p30'),('WSS138','p30'),('WSS139','p30'),('WSS142','p30'),('WSS146','p30'),('WSS15','p30'),('WSS150','p30'),('WSS158','p30'),('WSS168','p30'),('WSS184','p30'),('WSS188','p30'),('WSS191','p30'),('WSS200','p30'),('WSS224','p30'),('WSS235','p30'),('WSS243','p30'),('WSS247','p30'),('WSS26','p30'),('WSS266','p30'),('WSS290','p30'),('WSS30','p30'),('WSS302','p30'),('WSS33','p30'),('WSS339','p30'),('WSS340','p30'),('WSS355','p30'),('WSS365','p30'),('WSS382','p30'),('WSS5','p30'),('WSS52','p30'),('WSS63','p30'),('WSS64','p30'),('WSS83','p30'),('WSS84','p30'),('WSS9','p30'),('WSS104','p4'),('WSS137','p4'),('WSS143','p4'),('WSS149','p4'),('WSS156','p4'),('WSS173','p4'),('WSS177','p4'),('WSS179','p4'),('WSS189','p4'),('WSS207','p4'),('WSS234','p4'),('WSS236','p4'),('WSS253','p4'),('WSS296','p4'),('WSS311','p4'),('WSS317','p4'),('WSS321','p4'),('WSS327','p4'),('WSS328','p4'),('WSS333','p4'),('WSS346','p4'),('WSS350','p4'),('WSS376','p4'),('WSS392','p4'),('WSS43','p4'),('WSS50','p4'),('WSS60','p4'),('WSS67','p4'),('WSS80','p4'),('WSS85','p4'),('WSS96','p4'),('WSS97','p4'),('WSS1','p5'),('WSS126','p5'),('WSS134','p5'),('WSS164','p5'),('WSS176','p5'),('WSS182','p5'),('WSS196','p5'),('WSS203','p5'),('WSS204','p5'),('WSS245','p5'),('WSS25','p5'),('WSS284','p5'),('WSS3','p5'),('WSS302','p5'),('WSS309','p5'),('WSS319','p5'),('WSS339','p5'),('WSS358','p5'),('WSS359','p5'),('WSS363','p5'),('WSS389','p5'),('WSS41','p5'),('WSS73','p5'),('WSS81','p5'),('WSS85','p5'),('WSS130','p6'),('WSS132','p6'),('WSS14','p6'),('WSS166','p6'),('WSS170','p6'),('WSS201','p6'),('WSS215','p6'),('WSS22','p6'),('WSS228','p6'),('WSS240','p6'),('WSS265','p6'),('WSS303','p6'),('WSS305','p6'),('WSS317','p6'),('WSS321','p6'),('WSS344','p6'),('WSS362','p6'),('WSS367','p6'),('WSS51','p6'),('WSS90','p6'),('WSS98','p6'),('WSS111','p7'),('WSS136','p7'),('WSS145','p7'),('WSS169','p7'),('WSS181','p7'),('WSS195','p7'),('WSS198','p7'),('WSS204','p7'),('WSS208','p7'),('WSS214','p7'),('WSS23','p7'),('WSS234','p7'),('WSS244','p7'),('WSS245','p7'),('WSS246','p7'),('WSS26','p7'),('WSS261','p7'),('WSS263','p7'),('WSS286','p7'),('WSS290','p7'),('WSS300','p7'),('WSS323','p7'),('WSS324','p7'),('WSS327','p7'),('WSS351','p7'),('WSS353','p7'),('WSS357','p7'),('WSS360','p7'),('WSS46','p7'),('WSS65','p7'),('WSS87','p7'),('WSS10','p8'),('WSS105','p8'),('WSS110','p8'),('WSS115','p8'),('WSS131','p8'),('WSS158','p8'),('WSS175','p8'),('WSS181','p8'),('WSS198','p8'),('WSS220','p8'),('WSS222','p8'),('WSS227','p8'),('WSS231','p8'),('WSS235','p8'),('WSS260','p8'),('WSS277','p8'),('WSS29','p8'),('WSS297','p8'),('WSS32','p8'),('WSS332','p8'),('WSS335','p8'),('WSS348','p8'),('WSS388','p8'),('WSS42','p8'),('WSS45','p8'),('WSS70','p8'),('WSS95','p8'),('WSS104','p9'),('WSS119','p9'),('WSS142','p9'),('WSS16','p9'),('WSS167','p9'),('WSS174','p9'),('WSS184','p9'),('WSS193','p9'),('WSS221','p9'),('WSS229','p9'),('WSS231','p9'),('WSS251','p9'),('WSS268','p9'),('WSS269','p9'),('WSS275','p9'),('WSS285','p9'),('WSS297','p9'),('WSS313','p9'),('WSS314','p9'),('WSS318','p9'),('WSS323','p9'),('WSS347','p9'),('WSS355','p9'),('WSS391','p9'),('WSS43','p9'),('WSS47','p9'),('WSS50','p9'),('WSS6','p9'),('WSS61','p9'),('WSS64','p9'),('WSS93','p9'),('WSS94','p9');
/*!40000 ALTER TABLE `inputparameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knowledgeforcareerpath`
--

DROP TABLE IF EXISTS `knowledgeforcareerpath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knowledgeforcareerpath` (
  `careerPathID` char(4) NOT NULL,
  `knowledgeID` char(6) NOT NULL,
  PRIMARY KEY (`careerPathID`,`knowledgeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledgeforcareerpath`
--

LOCK TABLES `knowledgeforcareerpath` WRITE;
/*!40000 ALTER TABLE `knowledgeforcareerpath` DISABLE KEYS */;
INSERT INTO `knowledgeforcareerpath` VALUES ('C100','k1C311'),('C100','k1C412'),('C100','k1C469'),('C100','k1C500');
/*!40000 ALTER TABLE `knowledgeforcareerpath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lhs`
--

DROP TABLE IF EXISTS `lhs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lhs` (
  `ruleid` int NOT NULL,
  `courseid` varchar(10) NOT NULL,
  PRIMARY KEY (`ruleid`,`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lhs`
--

LOCK TABLES `lhs` WRITE;
/*!40000 ALTER TABLE `lhs` DISABLE KEYS */;
INSERT INTO `lhs` VALUES (1,'ICP006'),(2,'ICP006'),(3,'ICP006'),(4,'ICP110'),(5,'ICP110'),(6,'ICP311'),(7,'ICP006'),(7,'ICP110'),(8,'ICP006'),(8,'ICP110'),(9,'ICP006'),(9,'ICP311'),(10,'ICP110'),(10,'ICP311'),(11,'ICP006'),(11,'ICP110'),(11,'ICP311');
/*!40000 ALTER TABLE `lhs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outputparameter`
--

DROP TABLE IF EXISTS `outputparameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outputparameter` (
  `webServiceID` varchar(10) NOT NULL,
  `parameterID` varchar(10) NOT NULL,
  PRIMARY KEY (`webServiceID`,`parameterID`),
  KEY `knowledgeID` (`parameterID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outputparameter`
--

LOCK TABLES `outputparameter` WRITE;
/*!40000 ALTER TABLE `outputparameter` DISABLE KEYS */;
INSERT INTO `outputparameter` VALUES ('WSS101','p1'),('WSS128','p1'),('WSS139','p1'),('WSS146','p1'),('WSS149','p1'),('WSS162','p1'),('WSS164','p1'),('WSS171','p1'),('WSS187','p1'),('WSS196','p1'),('WSS207','p1'),('WSS209','p1'),('WSS21','p1'),('WSS213','p1'),('WSS222','p1'),('WSS229','p1'),('WSS233','p1'),('WSS240','p1'),('WSS241','p1'),('WSS244','p1'),('WSS248','p1'),('WSS26','p1'),('WSS261','p1'),('WSS274','p1'),('WSS310','p1'),('WSS318','p1'),('WSS326','p1'),('WSS33','p1'),('WSS334','p1'),('WSS345','p1'),('WSS353','p1'),('WSS354','p1'),('WSS367','p1'),('WSS368','p1'),('WSS381','p1'),('WSS384','p1'),('WSS387','p1'),('WSS389','p1'),('WSS39','p1'),('WSS390','p1'),('WSS391','p1'),('WSS400','p1'),('WSS66','p1'),('WSS71','p1'),('WSS83','p1'),('WSS89','p1'),('WSS92','p1'),('WSS95','p1'),('WSS106','p10'),('WSS110','p10'),('WSS113','p10'),('WSS12','p10'),('WSS126','p10'),('WSS133','p10'),('WSS135','p10'),('WSS138','p10'),('WSS139','p10'),('WSS16','p10'),('WSS165','p10'),('WSS170','p10'),('WSS173','p10'),('WSS181','p10'),('WSS189','p10'),('WSS197','p10'),('WSS198','p10'),('WSS210','p10'),('WSS222','p10'),('WSS223','p10'),('WSS230','p10'),('WSS236','p10'),('WSS242','p10'),('WSS250','p10'),('WSS262','p10'),('WSS263','p10'),('WSS272','p10'),('WSS287','p10'),('WSS293','p10'),('WSS3','p10'),('WSS30','p10'),('WSS319','p10'),('WSS320','p10'),('WSS327','p10'),('WSS33','p10'),('WSS336','p10'),('WSS338','p10'),('WSS342','p10'),('WSS348','p10'),('WSS351','p10'),('WSS370','p10'),('WSS373','p10'),('WSS376','p10'),('WSS387','p10'),('WSS388','p10'),('WSS40','p10'),('WSS45','p10'),('WSS50','p10'),('WSS53','p10'),('WSS54','p10'),('WSS62','p10'),('WSS67','p10'),('WSS72','p10'),('WSS8','p10'),('WSS11','p11'),('WSS112','p11'),('WSS114','p11'),('WSS115','p11'),('WSS122','p11'),('WSS126','p11'),('WSS130','p11'),('WSS132','p11'),('WSS138','p11'),('WSS140','p11'),('WSS144','p11'),('WSS167','p11'),('WSS188','p11'),('WSS208','p11'),('WSS22','p11'),('WSS224','p11'),('WSS231','p11'),('WSS24','p11'),('WSS240','p11'),('WSS245','p11'),('WSS249','p11'),('WSS267','p11'),('WSS27','p11'),('WSS276','p11'),('WSS291','p11'),('WSS294','p11'),('WSS295','p11'),('WSS307','p11'),('WSS313','p11'),('WSS323','p11'),('WSS324','p11'),('WSS337','p11'),('WSS338','p11'),('WSS342','p11'),('WSS355','p11'),('WSS366','p11'),('WSS377','p11'),('WSS378','p11'),('WSS383','p11'),('WSS386','p11'),('WSS391','p11'),('WSS397','p11'),('WSS42','p11'),('WSS43','p11'),('WSS48','p11'),('WSS49','p11'),('WSS5','p11'),('WSS54','p11'),('WSS6','p11'),('WSS62','p11'),('WSS77','p11'),('WSS83','p11'),('WSS85','p11'),('WSS100','p12'),('WSS111','p12'),('WSS119','p12'),('WSS123','p12'),('WSS128','p12'),('WSS132','p12'),('WSS135','p12'),('WSS138','p12'),('WSS168','p12'),('WSS17','p12'),('WSS177','p12'),('WSS18','p12'),('WSS182','p12'),('WSS199','p12'),('WSS20','p12'),('WSS204','p12'),('WSS212','p12'),('WSS215','p12'),('WSS225','p12'),('WSS230','p12'),('WSS235','p12'),('WSS239','p12'),('WSS243','p12'),('WSS244','p12'),('WSS246','p12'),('WSS252','p12'),('WSS253','p12'),('WSS259','p12'),('WSS260','p12'),('WSS264','p12'),('WSS270','p12'),('WSS279','p12'),('WSS294','p12'),('WSS30','p12'),('WSS301','p12'),('WSS302','p12'),('WSS314','p12'),('WSS316','p12'),('WSS333','p12'),('WSS337','p12'),('WSS340','p12'),('WSS345','p12'),('WSS347','p12'),('WSS349','p12'),('WSS37','p12'),('WSS377','p12'),('WSS392','p12'),('WSS41','p12'),('WSS54','p12'),('WSS57','p12'),('WSS59','p12'),('WSS66','p12'),('WSS77','p12'),('WSS82','p12'),('WSS92','p12'),('WSS93','p12'),('WSS98','p12'),('WSS101','p13'),('WSS137','p13'),('WSS144','p13'),('WSS155','p13'),('WSS156','p13'),('WSS16','p13'),('WSS161','p13'),('WSS169','p13'),('WSS172','p13'),('WSS173','p13'),('WSS183','p13'),('WSS189','p13'),('WSS199','p13'),('WSS205','p13'),('WSS211','p13'),('WSS214','p13'),('WSS219','p13'),('WSS224','p13'),('WSS244','p13'),('WSS247','p13'),('WSS259','p13'),('WSS261','p13'),('WSS266','p13'),('WSS267','p13'),('WSS275','p13'),('WSS28','p13'),('WSS282','p13'),('WSS286','p13'),('WSS288','p13'),('WSS298','p13'),('WSS315','p13'),('WSS32','p13'),('WSS322','p13'),('WSS324','p13'),('WSS33','p13'),('WSS335','p13'),('WSS337','p13'),('WSS339','p13'),('WSS343','p13'),('WSS349','p13'),('WSS356','p13'),('WSS357','p13'),('WSS363','p13'),('WSS377','p13'),('WSS385','p13'),('WSS387','p13'),('WSS393','p13'),('WSS4','p13'),('WSS49','p13'),('WSS5','p13'),('WSS52','p13'),('WSS61','p13'),('WSS79','p13'),('WSS85','p13'),('WSS87','p13'),('WSS101','p14'),('WSS107','p14'),('WSS111','p14'),('WSS118','p14'),('WSS124','p14'),('WSS125','p14'),('WSS126','p14'),('WSS133','p14'),('WSS14','p14'),('WSS142','p14'),('WSS149','p14'),('WSS155','p14'),('WSS157','p14'),('WSS159','p14'),('WSS163','p14'),('WSS164','p14'),('WSS168','p14'),('WSS175','p14'),('WSS180','p14'),('WSS185','p14'),('WSS186','p14'),('WSS19','p14'),('WSS190','p14'),('WSS192','p14'),('WSS196','p14'),('WSS20','p14'),('WSS200','p14'),('WSS210','p14'),('WSS212','p14'),('WSS218','p14'),('WSS221','p14'),('WSS255','p14'),('WSS257','p14'),('WSS266','p14'),('WSS296','p14'),('WSS297','p14'),('WSS301','p14'),('WSS307','p14'),('WSS308','p14'),('WSS321','p14'),('WSS33','p14'),('WSS336','p14'),('WSS341','p14'),('WSS348','p14'),('WSS349','p14'),('WSS35','p14'),('WSS351','p14'),('WSS367','p14'),('WSS372','p14'),('WSS38','p14'),('WSS380','p14'),('WSS392','p14'),('WSS399','p14'),('WSS40','p14'),('WSS45','p14'),('WSS56','p14'),('WSS58','p14'),('WSS78','p14'),('WSS79','p14'),('WSS81','p14'),('WSS10','p15'),('WSS103','p15'),('WSS104','p15'),('WSS117','p15'),('WSS12','p15'),('WSS13','p15'),('WSS134','p15'),('WSS137','p15'),('WSS139','p15'),('WSS147','p15'),('WSS149','p15'),('WSS150','p15'),('WSS153','p15'),('WSS177','p15'),('WSS189','p15'),('WSS194','p15'),('WSS206','p15'),('WSS217','p15'),('WSS221','p15'),('WSS226','p15'),('WSS238','p15'),('WSS241','p15'),('WSS258','p15'),('WSS26','p15'),('WSS268','p15'),('WSS271','p15'),('WSS281','p15'),('WSS29','p15'),('WSS305','p15'),('WSS31','p15'),('WSS312','p15'),('WSS32','p15'),('WSS321','p15'),('WSS332','p15'),('WSS34','p15'),('WSS346','p15'),('WSS350','p15'),('WSS359','p15'),('WSS369','p15'),('WSS389','p15'),('WSS390','p15'),('WSS399','p15'),('WSS44','p15'),('WSS50','p15'),('WSS7','p15'),('WSS70','p15'),('WSS76','p15'),('WSS88','p15'),('WSS95','p15'),('WSS100','p16'),('WSS102','p16'),('WSS105','p16'),('WSS110','p16'),('WSS113','p16'),('WSS119','p16'),('WSS122','p16'),('WSS136','p16'),('WSS140','p16'),('WSS142','p16'),('WSS153','p16'),('WSS159','p16'),('WSS165','p16'),('WSS186','p16'),('WSS192','p16'),('WSS195','p16'),('WSS2','p16'),('WSS203','p16'),('WSS208','p16'),('WSS216','p16'),('WSS232','p16'),('WSS247','p16'),('WSS248','p16'),('WSS25','p16'),('WSS251','p16'),('WSS252','p16'),('WSS254','p16'),('WSS258','p16'),('WSS275','p16'),('WSS289','p16'),('WSS291','p16'),('WSS312','p16'),('WSS329','p16'),('WSS335','p16'),('WSS340','p16'),('WSS346','p16'),('WSS356','p16'),('WSS359','p16'),('WSS360','p16'),('WSS369','p16'),('WSS37','p16'),('WSS375','p16'),('WSS377','p16'),('WSS46','p16'),('WSS53','p16'),('WSS6','p16'),('WSS7','p16'),('WSS80','p16'),('WSS82','p16'),('WSS84','p16'),('WSS99','p16'),('WSS104','p17'),('WSS105','p17'),('WSS115','p17'),('WSS137','p17'),('WSS14','p17'),('WSS146','p17'),('WSS160','p17'),('WSS163','p17'),('WSS169','p17'),('WSS178','p17'),('WSS191','p17'),('WSS198','p17'),('WSS211','p17'),('WSS228','p17'),('WSS236','p17'),('WSS237','p17'),('WSS243','p17'),('WSS246','p17'),('WSS249','p17'),('WSS256','p17'),('WSS263','p17'),('WSS264','p17'),('WSS270','p17'),('WSS273','p17'),('WSS276','p17'),('WSS278','p17'),('WSS283','p17'),('WSS291','p17'),('WSS295','p17'),('WSS327','p17'),('WSS344','p17'),('WSS353','p17'),('WSS354','p17'),('WSS355','p17'),('WSS36','p17'),('WSS361','p17'),('WSS362','p17'),('WSS364','p17'),('WSS383','p17'),('WSS392','p17'),('WSS393','p17'),('WSS397','p17'),('WSS398','p17'),('WSS58','p17'),('WSS63','p17'),('WSS69','p17'),('WSS8','p17'),('WSS88','p17'),('WSS11','p18'),('WSS112','p18'),('WSS117','p18'),('WSS125','p18'),('WSS129','p18'),('WSS138','p18'),('WSS143','p18'),('WSS148','p18'),('WSS151','p18'),('WSS152','p18'),('WSS158','p18'),('WSS162','p18'),('WSS165','p18'),('WSS166','p18'),('WSS17','p18'),('WSS174','p18'),('WSS180','p18'),('WSS190','p18'),('WSS204','p18'),('WSS21','p18'),('WSS227','p18'),('WSS233','p18'),('WSS24','p18'),('WSS25','p18'),('WSS260','p18'),('WSS263','p18'),('WSS268','p18'),('WSS277','p18'),('WSS281','p18'),('WSS290','p18'),('WSS292','p18'),('WSS298','p18'),('WSS304','p18'),('WSS317','p18'),('WSS334','p18'),('WSS335','p18'),('WSS338','p18'),('WSS348','p18'),('WSS353','p18'),('WSS366','p18'),('WSS369','p18'),('WSS379','p18'),('WSS38','p18'),('WSS381','p18'),('WSS386','p18'),('WSS388','p18'),('WSS397','p18'),('WSS43','p18'),('WSS66','p18'),('WSS80','p18'),('WSS99','p18'),('WSS1','p19'),('WSS103','p19'),('WSS106','p19'),('WSS108','p19'),('WSS109','p19'),('WSS134','p19'),('WSS141','p19'),('WSS146','p19'),('WSS148','p19'),('WSS157','p19'),('WSS162','p19'),('WSS169','p19'),('WSS175','p19'),('WSS177','p19'),('WSS178','p19'),('WSS18','p19'),('WSS185','p19'),('WSS193','p19'),('WSS202','p19'),('WSS204','p19'),('WSS205','p19'),('WSS206','p19'),('WSS220','p19'),('WSS221','p19'),('WSS225','p19'),('WSS231','p19'),('WSS234','p19'),('WSS241','p19'),('WSS245','p19'),('WSS248','p19'),('WSS25','p19'),('WSS270','p19'),('WSS289','p19'),('WSS306','p19'),('WSS308','p19'),('WSS31','p19'),('WSS311','p19'),('WSS317','p19'),('WSS318','p19'),('WSS328','p19'),('WSS330','p19'),('WSS346','p19'),('WSS365','p19'),('WSS376','p19'),('WSS388','p19'),('WSS400','p19'),('WSS43','p19'),('WSS51','p19'),('WSS64','p19'),('WSS65','p19'),('WSS9','p19'),('WSS96','p19'),('WSS112','p2'),('WSS121','p2'),('WSS123','p2'),('WSS129','p2'),('WSS13','p2'),('WSS131','p2'),('WSS143','p2'),('WSS145','p2'),('WSS15','p2'),('WSS174','p2'),('WSS176','p2'),('WSS187','p2'),('WSS202','p2'),('WSS208','p2'),('WSS213','p2'),('WSS217','p2'),('WSS219','p2'),('WSS220','p2'),('WSS239','p2'),('WSS250','p2'),('WSS253','p2'),('WSS265','p2'),('WSS27','p2'),('WSS280','p2'),('WSS288','p2'),('WSS289','p2'),('WSS294','p2'),('WSS296','p2'),('WSS305','p2'),('WSS320','p2'),('WSS321','p2'),('WSS329','p2'),('WSS335','p2'),('WSS341','p2'),('WSS350','p2'),('WSS357','p2'),('WSS359','p2'),('WSS364','p2'),('WSS365','p2'),('WSS366','p2'),('WSS37','p2'),('WSS371','p2'),('WSS387','p2'),('WSS39','p2'),('WSS45','p2'),('WSS51','p2'),('WSS6','p2'),('WSS68','p2'),('WSS76','p2'),('WSS86','p2'),('WSS91','p2'),('WSS94','p2'),('WSS108','p20'),('WSS121','p20'),('WSS122','p20'),('WSS130','p20'),('WSS131','p20'),('WSS158','p20'),('WSS160','p20'),('WSS165','p20'),('WSS176','p20'),('WSS187','p20'),('WSS200','p20'),('WSS207','p20'),('WSS21','p20'),('WSS215','p20'),('WSS22','p20'),('WSS222','p20'),('WSS231','p20'),('WSS232','p20'),('WSS234','p20'),('WSS238','p20'),('WSS242','p20'),('WSS251','p20'),('WSS259','p20'),('WSS265','p20'),('WSS284','p20'),('WSS293','p20'),('WSS303','p20'),('WSS317','p20'),('WSS321','p20'),('WSS327','p20'),('WSS332','p20'),('WSS333','p20'),('WSS339','p20'),('WSS34','p20'),('WSS358','p20'),('WSS41','p20'),('WSS51','p20'),('WSS64','p20'),('WSS67','p20'),('WSS69','p20'),('WSS73','p20'),('WSS77','p20'),('WSS78','p20'),('WSS8','p20'),('WSS83','p20'),('WSS97','p20'),('WSS10','p21'),('WSS106','p21'),('WSS118','p21'),('WSS120','p21'),('WSS125','p21'),('WSS126','p21'),('WSS14','p21'),('WSS148','p21'),('WSS15','p21'),('WSS155','p21'),('WSS160','p21'),('WSS166','p21'),('WSS170','p21'),('WSS172','p21'),('WSS189','p21'),('WSS190','p21'),('WSS199','p21'),('WSS2','p21'),('WSS209','p21'),('WSS215','p21'),('WSS216','p21'),('WSS22','p21'),('WSS23','p21'),('WSS256','p21'),('WSS261','p21'),('WSS267','p21'),('WSS275','p21'),('WSS283','p21'),('WSS289','p21'),('WSS293','p21'),('WSS298','p21'),('WSS299','p21'),('WSS300','p21'),('WSS304','p21'),('WSS306','p21'),('WSS312','p21'),('WSS318','p21'),('WSS323','p21'),('WSS330','p21'),('WSS34','p21'),('WSS343','p21'),('WSS348','p21'),('WSS352','p21'),('WSS362','p21'),('WSS369','p21'),('WSS38','p21'),('WSS388','p21'),('WSS399','p21'),('WSS55','p21'),('WSS62','p21'),('WSS63','p21'),('WSS64','p21'),('WSS7','p21'),('WSS95','p21'),('WSS96','p21'),('WSS107','p22'),('WSS109','p22'),('WSS115','p22'),('WSS119','p22'),('WSS120','p22'),('WSS124','p22'),('WSS127','p22'),('WSS132','p22'),('WSS135','p22'),('WSS148','p22'),('WSS150','p22'),('WSS153','p22'),('WSS159','p22'),('WSS16','p22'),('WSS167','p22'),('WSS172','p22'),('WSS182','p22'),('WSS188','p22'),('WSS191','p22'),('WSS193','p22'),('WSS213','p22'),('WSS214','p22'),('WSS230','p22'),('WSS236','p22'),('WSS265','p22'),('WSS273','p22'),('WSS285','p22'),('WSS288','p22'),('WSS293','p22'),('WSS295','p22'),('WSS309','p22'),('WSS314','p22'),('WSS319','p22'),('WSS324','p22'),('WSS328','p22'),('WSS331','p22'),('WSS346','p22'),('WSS352','p22'),('WSS370','p22'),('WSS376','p22'),('WSS380','p22'),('WSS385','p22'),('WSS389','p22'),('WSS395','p22'),('WSS400','p22'),('WSS41','p22'),('WSS42','p22'),('WSS52','p22'),('WSS53','p22'),('WSS54','p22'),('WSS70','p22'),('WSS73','p22'),('WSS78','p22'),('WSS82','p22'),('WSS85','p22'),('WSS89','p22'),('WSS94','p22'),('WSS1','p23'),('WSS102','p23'),('WSS133','p23'),('WSS141','p23'),('WSS149','p23'),('WSS151','p23'),('WSS179','p23'),('WSS194','p23'),('WSS196','p23'),('WSS201','p23'),('WSS203','p23'),('WSS205','p23'),('WSS207','p23'),('WSS21','p23'),('WSS226','p23'),('WSS227','p23'),('WSS24','p23'),('WSS265','p23'),('WSS266','p23'),('WSS271','p23'),('WSS273','p23'),('WSS29','p23'),('WSS295','p23'),('WSS3','p23'),('WSS311','p23'),('WSS316','p23'),('WSS319','p23'),('WSS322','p23'),('WSS325','p23'),('WSS337','p23'),('WSS344','p23'),('WSS347','p23'),('WSS349','p23'),('WSS353','p23'),('WSS354','p23'),('WSS364','p23'),('WSS368','p23'),('WSS386','p23'),('WSS39','p23'),('WSS50','p23'),('WSS58','p23'),('WSS59','p23'),('WSS84','p23'),('WSS9','p23'),('WSS1','p24'),('WSS100','p24'),('WSS116','p24'),('WSS118','p24'),('WSS12','p24'),('WSS130','p24'),('WSS169','p24'),('WSS17','p24'),('WSS179','p24'),('WSS180','p24'),('WSS250','p24'),('WSS252','p24'),('WSS26','p24'),('WSS260','p24'),('WSS264','p24'),('WSS268','p24'),('WSS279','p24'),('WSS28','p24'),('WSS282','p24'),('WSS283','p24'),('WSS290','p24'),('WSS292','p24'),('WSS3','p24'),('WSS301','p24'),('WSS302','p24'),('WSS305','p24'),('WSS308','p24'),('WSS315','p24'),('WSS342','p24'),('WSS347','p24'),('WSS351','p24'),('WSS358','p24'),('WSS368','p24'),('WSS371','p24'),('WSS39','p24'),('WSS393','p24'),('WSS395','p24'),('WSS4','p24'),('WSS44','p24'),('WSS60','p24'),('WSS68','p24'),('WSS75','p24'),('WSS83','p24'),('WSS123','p25'),('WSS156','p25'),('WSS161','p25'),('WSS168','p25'),('WSS174','p25'),('WSS179','p25'),('WSS185','p25'),('WSS200','p25'),('WSS212','p25'),('WSS218','p25'),('WSS227','p25'),('WSS237','p25'),('WSS246','p25'),('WSS248','p25'),('WSS255','p25'),('WSS26','p25'),('WSS27','p25'),('WSS274','p25'),('WSS279','p25'),('WSS292','p25'),('WSS307','p25'),('WSS308','p25'),('WSS320','p25'),('WSS331','p25'),('WSS340','p25'),('WSS345','p25'),('WSS363','p25'),('WSS366','p25'),('WSS368','p25'),('WSS372','p25'),('WSS373','p25'),('WSS380','p25'),('WSS390','p25'),('WSS392','p25'),('WSS394','p25'),('WSS4','p25'),('WSS52','p25'),('WSS53','p25'),('WSS6','p25'),('WSS61','p25'),('WSS87','p25'),('WSS104','p26'),('WSS114','p26'),('WSS129','p26'),('WSS158','p26'),('WSS167','p26'),('WSS184','p26'),('WSS188','p26'),('WSS191','p26'),('WSS195','p26'),('WSS2','p26'),('WSS203','p26'),('WSS211','p26'),('WSS215','p26'),('WSS220','p26'),('WSS229','p26'),('WSS232','p26'),('WSS237','p26'),('WSS25','p26'),('WSS254','p26'),('WSS256','p26'),('WSS278','p26'),('WSS280','p26'),('WSS283','p26'),('WSS285','p26'),('WSS286','p26'),('WSS3','p26'),('WSS300','p26'),('WSS302','p26'),('WSS304','p26'),('WSS31','p26'),('WSS322','p26'),('WSS330','p26'),('WSS332','p26'),('WSS336','p26'),('WSS344','p26'),('WSS372','p26'),('WSS374','p26'),('WSS375','p26'),('WSS378','p26'),('WSS394','p26'),('WSS395','p26'),('WSS396','p26'),('WSS397','p26'),('WSS46','p26'),('WSS47','p26'),('WSS69','p26'),('WSS70','p26'),('WSS72','p26'),('WSS74','p26'),('WSS80','p26'),('WSS87','p26'),('WSS96','p26'),('WSS10','p27'),('WSS109','p27'),('WSS113','p27'),('WSS114','p27'),('WSS117','p27'),('WSS120','p27'),('WSS136','p27'),('WSS137','p27'),('WSS14','p27'),('WSS145','p27'),('WSS159','p27'),('WSS164','p27'),('WSS176','p27'),('WSS182','p27'),('WSS206','p27'),('WSS208','p27'),('WSS216','p27'),('WSS224','p27'),('WSS231','p27'),('WSS233','p27'),('WSS234','p27'),('WSS250','p27'),('WSS258','p27'),('WSS266','p27'),('WSS269','p27'),('WSS271','p27'),('WSS272','p27'),('WSS281','p27'),('WSS282','p27'),('WSS287','p27'),('WSS294','p27'),('WSS312','p27'),('WSS329','p27'),('WSS356','p27'),('WSS378','p27'),('WSS389','p27'),('WSS395','p27'),('WSS52','p27'),('WSS66','p27'),('WSS72','p27'),('WSS75','p27'),('WSS76','p27'),('WSS90','p27'),('WSS94','p27'),('WSS105','p28'),('WSS108','p28'),('WSS132','p28'),('WSS133','p28'),('WSS142','p28'),('WSS145','p28'),('WSS166','p28'),('WSS171','p28'),('WSS178','p28'),('WSS180','p28'),('WSS192','p28'),('WSS198','p28'),('WSS201','p28'),('WSS206','p28'),('WSS209','p28'),('WSS210','p28'),('WSS213','p28'),('WSS214','p28'),('WSS225','p28'),('WSS226','p28'),('WSS229','p28'),('WSS234','p28'),('WSS238','p28'),('WSS240','p28'),('WSS242','p28'),('WSS243','p28'),('WSS244','p28'),('WSS253','p28'),('WSS262','p28'),('WSS269','p28'),('WSS27','p28'),('WSS28','p28'),('WSS291','p28'),('WSS292','p28'),('WSS303','p28'),('WSS311','p28'),('WSS326','p28'),('WSS339','p28'),('WSS343','p28'),('WSS344','p28'),('WSS357','p28'),('WSS36','p28'),('WSS361','p28'),('WSS371','p28'),('WSS374','p28'),('WSS385','p28'),('WSS394','p28'),('WSS396','p28'),('WSS399','p28'),('WSS47','p28'),('WSS49','p28'),('WSS51','p28'),('WSS55','p28'),('WSS59','p28'),('WSS68','p28'),('WSS76','p28'),('WSS78','p28'),('WSS89','p28'),('WSS90','p28'),('WSS91','p28'),('WSS110','p29'),('WSS134','p29'),('WSS143','p29'),('WSS15','p29'),('WSS150','p29'),('WSS152','p29'),('WSS158','p29'),('WSS17','p29'),('WSS171','p29'),('WSS181','p29'),('WSS19','p29'),('WSS191','p29'),('WSS194','p29'),('WSS196','p29'),('WSS197','p29'),('WSS2','p29'),('WSS220','p29'),('WSS223','p29'),('WSS228','p29'),('WSS23','p29'),('WSS240','p29'),('WSS247','p29'),('WSS251','p29'),('WSS254','p29'),('WSS255','p29'),('WSS262','p29'),('WSS275','p29'),('WSS284','p29'),('WSS29','p29'),('WSS297','p29'),('WSS298','p29'),('WSS299','p29'),('WSS301','p29'),('WSS310','p29'),('WSS313','p29'),('WSS322','p29'),('WSS327','p29'),('WSS357','p29'),('WSS36','p29'),('WSS364','p29'),('WSS37','p29'),('WSS374','p29'),('WSS379','p29'),('WSS382','p29'),('WSS383','p29'),('WSS41','p29'),('WSS44','p29'),('WSS57','p29'),('WSS62','p29'),('WSS81','p29'),('WSS86','p29'),('WSS92','p29'),('WSS93','p29'),('WSS94','p29'),('WSS100','p3'),('WSS109','p3'),('WSS118','p3'),('WSS125','p3'),('WSS146','p3'),('WSS147','p3'),('WSS163','p3'),('WSS184','p3'),('WSS185','p3'),('WSS188','p3'),('WSS198','p3'),('WSS20','p3'),('WSS257','p3'),('WSS259','p3'),('WSS261','p3'),('WSS280','p3'),('WSS282','p3'),('WSS306','p3'),('WSS307','p3'),('WSS310','p3'),('WSS320','p3'),('WSS329','p3'),('WSS350','p3'),('WSS356','p3'),('WSS362','p3'),('WSS373','p3'),('WSS375','p3'),('WSS382','p3'),('WSS398','p3'),('WSS40','p3'),('WSS43','p3'),('WSS47','p3'),('WSS48','p3'),('WSS56','p3'),('WSS57','p3'),('WSS71','p3'),('WSS73','p3'),('WSS75','p3'),('WSS79','p3'),('WSS82','p3'),('WSS88','p3'),('WSS93','p3'),('WSS95','p3'),('WSS98','p3'),('WSS102','p30'),('WSS103','p30'),('WSS107','p30'),('WSS116','p30'),('WSS124','p30'),('WSS130','p30'),('WSS131','p30'),('WSS143','p30'),('WSS145','p30'),('WSS155','p30'),('WSS157','p30'),('WSS166','p30'),('WSS170','p30'),('WSS172','p30'),('WSS173','p30'),('WSS181','p30'),('WSS187','p30'),('WSS19','p30'),('WSS201','p30'),('WSS203','p30'),('WSS216','p30'),('WSS219','p30'),('WSS221','p30'),('WSS223','p30'),('WSS228','p30'),('WSS239','p30'),('WSS249','p30'),('WSS253','p30'),('WSS257','p30'),('WSS269','p30'),('WSS272','p30'),('WSS281','p30'),('WSS288','p30'),('WSS309','p30'),('WSS31','p30'),('WSS325','p30'),('WSS326','p30'),('WSS333','p30'),('WSS336','p30'),('WSS338','p30'),('WSS341','p30'),('WSS342','p30'),('WSS345','p30'),('WSS35','p30'),('WSS355','p30'),('WSS361','p30'),('WSS370','p30'),('WSS390','p30'),('WSS391','p30'),('WSS46','p30'),('WSS5','p30'),('WSS56','p30'),('WSS61','p30'),('WSS67','p30'),('WSS71','p30'),('WSS8','p30'),('WSS81','p30'),('WSS97','p30'),('WSS99','p30'),('WSS104','p4'),('WSS106','p4'),('WSS11','p4'),('WSS119','p4'),('WSS121','p4'),('WSS128','p4'),('WSS131','p4'),('WSS156','p4'),('WSS16','p4'),('WSS183','p4'),('WSS194','p4'),('WSS212','p4'),('WSS217','p4'),('WSS232','p4'),('WSS247','p4'),('WSS249','p4'),('WSS254','p4'),('WSS262','p4'),('WSS269','p4'),('WSS276','p4'),('WSS284','p4'),('WSS286','p4'),('WSS297','p4'),('WSS30','p4'),('WSS303','p4'),('WSS309','p4'),('WSS315','p4'),('WSS331','p4'),('WSS34','p4'),('WSS371','p4'),('WSS372','p4'),('WSS375','p4'),('WSS378','p4'),('WSS381','p4'),('WSS382','p4'),('WSS385','p4'),('WSS386','p4'),('WSS45','p4'),('WSS48','p4'),('WSS63','p4'),('WSS70','p4'),('WSS71','p4'),('WSS73','p4'),('WSS80','p4'),('WSS90','p4'),('WSS91','p4'),('WSS10','p5'),('WSS121','p5'),('WSS136','p5'),('WSS140','p5'),('WSS144','p5'),('WSS163','p5'),('WSS167','p5'),('WSS171','p5'),('WSS173','p5'),('WSS179','p5'),('WSS18','p5'),('WSS186','p5'),('WSS193','p5'),('WSS230','p5'),('WSS239','p5'),('WSS245','p5'),('WSS258','p5'),('WSS280','p5'),('WSS285','p5'),('WSS290','p5'),('WSS310','p5'),('WSS313','p5'),('WSS314','p5'),('WSS315','p5'),('WSS316','p5'),('WSS323','p5'),('WSS325','p5'),('WSS332','p5'),('WSS334','p5'),('WSS340','p5'),('WSS35','p5'),('WSS36','p5'),('WSS363','p5'),('WSS374','p5'),('WSS396','p5'),('WSS400','p5'),('WSS46','p5'),('WSS60','p5'),('WSS74','p5'),('WSS90','p5'),('WSS91','p5'),('WSS98','p5'),('WSS102','p6'),('WSS105','p6'),('WSS113','p6'),('WSS116','p6'),('WSS122','p6'),('WSS124','p6'),('WSS134','p6'),('WSS136','p6'),('WSS152','p6'),('WSS154','p6'),('WSS156','p6'),('WSS157','p6'),('WSS161','p6'),('WSS177','p6'),('WSS181','p6'),('WSS183','p6'),('WSS190','p6'),('WSS193','p6'),('WSS197','p6'),('WSS205','p6'),('WSS222','p6'),('WSS236','p6'),('WSS241','p6'),('WSS245','p6'),('WSS257','p6'),('WSS263','p6'),('WSS267','p6'),('WSS271','p6'),('WSS274','p6'),('WSS285','p6'),('WSS287','p6'),('WSS299','p6'),('WSS304','p6'),('WSS317','p6'),('WSS32','p6'),('WSS323','p6'),('WSS334','p6'),('WSS339','p6'),('WSS350','p6'),('WSS351','p6'),('WSS359','p6'),('WSS361','p6'),('WSS379','p6'),('WSS381','p6'),('WSS394','p6'),('WSS60','p6'),('WSS63','p6'),('WSS65','p6'),('WSS77','p6'),('WSS87','p6'),('WSS97','p6'),('WSS101','p7'),('WSS108','p7'),('WSS11','p7'),('WSS111','p7'),('WSS112','p7'),('WSS115','p7'),('WSS116','p7'),('WSS120','p7'),('WSS123','p7'),('WSS127','p7'),('WSS129','p7'),('WSS147','p7'),('WSS151','p7'),('WSS153','p7'),('WSS154','p7'),('WSS182','p7'),('WSS186','p7'),('WSS195','p7'),('WSS200','p7'),('WSS202','p7'),('WSS204','p7'),('WSS209','p7'),('WSS227','p7'),('WSS235','p7'),('WSS242','p7'),('WSS251','p7'),('WSS252','p7'),('WSS273','p7'),('WSS279','p7'),('WSS28','p7'),('WSS299','p7'),('WSS324','p7'),('WSS325','p7'),('WSS326','p7'),('WSS330','p7'),('WSS355','p7'),('WSS360','p7'),('WSS367','p7'),('WSS376','p7'),('WSS379','p7'),('WSS384','p7'),('WSS393','p7'),('WSS396','p7'),('WSS398','p7'),('WSS4','p7'),('WSS40','p7'),('WSS57','p7'),('WSS75','p7'),('WSS81','p7'),('WSS84','p7'),('WSS86','p7'),('WSS88','p7'),('WSS89','p7'),('WSS9','p7'),('WSS103','p8'),('WSS127','p8'),('WSS141','p8'),('WSS144','p8'),('WSS147','p8'),('WSS150','p8'),('WSS154','p8'),('WSS161','p8'),('WSS162','p8'),('WSS168','p8'),('WSS175','p8'),('WSS183','p8'),('WSS184','p8'),('WSS19','p8'),('WSS192','p8'),('WSS197','p8'),('WSS20','p8'),('WSS201','p8'),('WSS202','p8'),('WSS211','p8'),('WSS217','p8'),('WSS219','p8'),('WSS224','p8'),('WSS226','p8'),('WSS23','p8'),('WSS235','p8'),('WSS24','p8'),('WSS274','p8'),('WSS276','p8'),('WSS277','p8'),('WSS278','p8'),('WSS29','p8'),('WSS290','p8'),('WSS30','p8'),('WSS300','p8'),('WSS305','p8'),('WSS306','p8'),('WSS316','p8'),('WSS319','p8'),('WSS352','p8'),('WSS354','p8'),('WSS358','p8'),('WSS360','p8'),('WSS38','p8'),('WSS384','p8'),('WSS398','p8'),('WSS42','p8'),('WSS44','p8'),('WSS5','p8'),('WSS50','p8'),('WSS55','p8'),('WSS56','p8'),('WSS58','p8'),('WSS59','p8'),('WSS61','p8'),('WSS64','p8'),('WSS65','p8'),('WSS7','p8'),('WSS93','p8'),('WSS98','p8'),('WSS1','p9'),('WSS107','p9'),('WSS110','p9'),('WSS135','p9'),('WSS140','p9'),('WSS154','p9'),('WSS160','p9'),('WSS164','p9'),('WSS175','p9'),('WSS207','p9'),('WSS210','p9'),('WSS214','p9'),('WSS218','p9'),('WSS22','p9'),('WSS23','p9'),('WSS233','p9'),('WSS235','p9'),('WSS237','p9'),('WSS238','p9'),('WSS246','p9'),('WSS255','p9'),('WSS260','p9'),('WSS277','p9'),('WSS278','p9'),('WSS286','p9'),('WSS303','p9'),('WSS309','p9'),('WSS313','p9'),('WSS318','p9'),('WSS32','p9'),('WSS328','p9'),('WSS333','p9'),('WSS343','p9'),('WSS352','p9'),('WSS358','p9'),('WSS360','p9'),('WSS362','p9'),('WSS363','p9'),('WSS365','p9'),('WSS373','p9'),('WSS380','p9'),('WSS384','p9'),('WSS391','p9'),('WSS47','p9'),('WSS49','p9'),('WSS55','p9'),('WSS65','p9'),('WSS67','p9'),('WSS84','p9'),('WSS86','p9'),('WSS92','p9');
/*!40000 ALTER TABLE `outputparameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parameterhierarchy`
--

DROP TABLE IF EXISTS `parameterhierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parameterhierarchy` (
  `parentParameterID` varchar(10) NOT NULL,
  `childParameterID` varchar(10) NOT NULL,
  PRIMARY KEY (`parentParameterID`,`childParameterID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parameterhierarchy`
--

LOCK TABLES `parameterhierarchy` WRITE;
/*!40000 ALTER TABLE `parameterhierarchy` DISABLE KEYS */;
/*!40000 ALTER TABLE `parameterhierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parameterlist`
--

DROP TABLE IF EXISTS `parameterlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parameterlist` (
  `parameterID` varchar(10) NOT NULL,
  `parameterName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`parameterID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parameterlist`
--

LOCK TABLES `parameterlist` WRITE;
/*!40000 ALTER TABLE `parameterlist` DISABLE KEYS */;
INSERT INTO `parameterlist` VALUES ('p1','p1name'),('p10','p10name'),('p11','p11name'),('p12','p12name'),('p13','p13name'),('p14','p14name'),('p15','p15name'),('p16','p16name'),('p17','p17name'),('p18','p18name'),('p19','p19name'),('p2','p2name'),('p20','p20name'),('p21','p21name'),('p22','p22name'),('p23','p23name'),('p24','p24name'),('p25','p25name'),('p26','p26name'),('p27','p27name'),('p28','p28name'),('p29','p29name'),('p3','p3name'),('p30','p30name'),('p4','p4name'),('p5','p5name'),('p6','p6name'),('p7','p7name'),('p8','p8name'),('p9','p9name');
/*!40000 ALTER TABLE `parameterlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `transactionID` bigint NOT NULL,
  `stage` int NOT NULL,
  `webServiceID` varchar(10) NOT NULL,
  PRIMARY KEY (`transactionID`,`stage`,`webServiceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,1,'WSS327'),(1,2,'WSS266'),(2,1,'WSS286'),(2,2,'WSS269'),(3,1,'WSS33'),(3,2,'WSS355'),(4,1,'WSS102'),(4,2,'WSS20'),(4,2,'WSS21'),(5,1,'WSS180'),(5,2,'WSS301'),(6,1,'WSS289'),(6,2,'WSS308'),(7,1,'WSS40'),(7,2,'WSS300'),(8,1,'WSS105'),(8,1,'WSS383'),(9,1,'WSS246'),(9,2,'WSS150'),(10,1,'WSS28'),(10,2,'WSS210'),(11,1,'WSS206'),(11,2,'WSS338'),(12,1,'WSS369'),(12,2,'WSS25'),(13,1,'WSS34'),(13,2,'WSS44'),(13,2,'WSS48'),(14,1,'WSS29'),(14,2,'WSS100'),(15,1,'WSS294'),(15,1,'WSS320'),(16,1,'WSS369'),(16,2,'WSS389'),(17,1,'WSS29'),(17,2,'WSS42'),(17,3,'WSS104'),(18,1,'WSS400'),(18,2,'WSS32'),(19,1,'WSS163'),(19,2,'WSS20'),(20,1,'WSS37'),(20,2,'WSS24'),(20,3,'WSS393'),(21,1,'WSS382'),(21,2,'WSS140'),(22,1,'WSS41'),(22,2,'WSS208'),(23,1,'WSS29'),(23,2,'WSS46'),(24,1,'WSS352'),(24,2,'WSS393'),(25,1,'WSS102'),(25,2,'WSS18'),(25,3,'WSS32'),(26,1,'WSS253'),(26,2,'WSS349'),(27,1,'WSS159'),(27,2,'WSS204'),(28,1,'WSS369'),(28,2,'WSS29'),(29,1,'WSS315'),(29,2,'WSS290'),(30,1,'WSS340'),(30,2,'WSS369'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rhs`
--

DROP TABLE IF EXISTS `rhs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rhs` (
  `ruleid` int NOT NULL,
  `courseid` varchar(10) NOT NULL,
  PRIMARY KEY (`ruleid`,`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rhs`
--

LOCK TABLES `rhs` WRITE;
/*!40000 ALTER TABLE `rhs` DISABLE KEYS */;
INSERT INTO `rhs` VALUES (1,'ICP110'),(2,'ICP311'),(3,'ICP500'),(4,'ICP311'),(5,'ICP500'),(6,'ICP500'),(7,'ICP311'),(8,'ICP500'),(9,'ICP500'),(10,'ICP500'),(11,'ICP500');
/*!40000 ALTER TABLE `rhs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruleinfo`
--

DROP TABLE IF EXISTS `ruleinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ruleinfo` (
  `ruleid` int NOT NULL,
  `support` float DEFAULT NULL,
  `confidence` float DEFAULT NULL,
  `lift` float DEFAULT NULL,
  `count` int DEFAULT NULL,
  PRIMARY KEY (`ruleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruleinfo`
--

LOCK TABLES `ruleinfo` WRITE;
/*!40000 ALTER TABLE `ruleinfo` DISABLE KEYS */;
INSERT INTO `ruleinfo` VALUES (1,0.2,0.719101,1.53765,3),(2,0.2,0.910112,1.69382,3),(3,0.2,1,2.11579,3),(4,0.2,0.670213,1.24734,3),(5,0.2,0.744681,1.57559,3),(6,0.2,0.777778,1.64561,3),(7,0.2,0.875,1.62847,3),(8,0.2,1,2.11579,3),(9,0.2,1,2.11579,3),(10,0.2,0.936508,1.98145,3),(11,0.2,1,2.11579,3);
/*!40000 ALTER TABLE `ruleinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webservicelist`
--

DROP TABLE IF EXISTS `webservicelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webservicelist` (
  `webServiceID` varchar(10) NOT NULL,
  `webServiceName` varchar(100) DEFAULT NULL,
  `reputation` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `provider` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`webServiceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webservicelist`
--

LOCK TABLES `webservicelist` WRITE;
/*!40000 ALTER TABLE `webservicelist` DISABLE KEYS */;
INSERT INTO `webservicelist` VALUES ('WSS1','WSS1Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS10','WSS10Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS100','WSS100Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS101','WSS101Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS102','WSS102Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS103','WSS103Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS104','WSS104Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS105','WSS105Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS106','WSS106Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS107','WSS107Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS108','WSS108Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS109','WSS109Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS11','WSS11Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS110','WSS110Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS111','WSS111Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS112','WSS112Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS113','WSS113Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS114','WSS114Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS115','WSS115Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS116','WSS116Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS117','WSS117Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS118','WSS118Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS119','WSS119Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS12','WSS12Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS120','WSS120Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS121','WSS121Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS122','WSS122Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS123','WSS123Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS124','WSS124Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS125','WSS125Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS126','WSS126Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS127','WSS127Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS128','WSS128Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS129','WSS129Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS13','WSS13Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS130','WSS130Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS131','WSS131Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS132','WSS132Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS133','WSS133Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS134','WSS134Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS135','WSS135Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS136','WSS136Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS137','WSS137Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS138','WSS138Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS139','WSS139Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS14','WSS14Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS140','WSS140Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS141','WSS141Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS142','WSS142Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS143','WSS143Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS144','WSS144Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS145','WSS145Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS146','WSS146Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS147','WSS147Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS148','WSS148Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS149','WSS149Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS15','WSS15Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS150','WSS150Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS151','WSS151Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS152','WSS152Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS153','WSS153Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS154','WSS154Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS155','WSS155Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS156','WSS156Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS157','WSS157Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS158','WSS158Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS159','WSS159Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS16','WSS16Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS160','WSS160Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS161','WSS161Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS162','WSS162Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS163','WSS163Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS164','WSS164Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS165','WSS165Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS166','WSS166Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS167','WSS167Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS168','WSS168Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS169','WSS169Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS17','WSS17Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS170','WSS170Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS171','WSS171Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS172','WSS172Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS173','WSS173Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS174','WSS174Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS175','WSS175Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS176','WSS176Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS177','WSS177Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS178','WSS178Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS179','WSS179Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS18','WSS18Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS180','WSS180Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS181','WSS181Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS182','WSS182Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS183','WSS183Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS184','WSS184Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS185','WSS185Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS186','WSS186Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS187','WSS187Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS188','WSS188Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS189','WSS189Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS19','WSS19Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS190','WSS190Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS191','WSS191Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS192','WSS192Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS193','WSS193Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS194','WSS194Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS195','WSS195Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS196','WSS196Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS197','WSS197Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS198','WSS198Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS199','WSS199Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS2','WSS2Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS20','WSS20Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS200','WSS200Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS201','WSS201Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS202','WSS202Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS203','WSS203Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS204','WSS204Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS205','WSS205Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS206','WSS206Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS207','WSS207Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS208','WSS208Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS209','WSS209Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS21','WSS21Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS210','WSS210Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS211','WSS211Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS212','WSS212Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS213','WSS213Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS214','WSS214Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS215','WSS215Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS216','WSS216Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS217','WSS217Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS218','WSS218Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS219','WSS219Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS22','WSS22Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS220','WSS220Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS221','WSS221Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS222','WSS222Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS223','WSS223Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS224','WSS224Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS225','WSS225Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS226','WSS226Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS227','WSS227Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS228','WSS228Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS229','WSS229Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS23','WSS23Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS230','WSS230Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS231','WSS231Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS232','WSS232Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS233','WSS233Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS234','WSS234Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS235','WSS235Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS236','WSS236Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS237','WSS237Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS238','WSS238Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS239','WSS239Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS24','WSS24Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS240','WSS240Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS241','WSS241Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS242','WSS242Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS243','WSS243Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS244','WSS244Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS245','WSS245Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS246','WSS246Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS247','WSS247Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS248','WSS248Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS249','WSS249Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS25','WSS25Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS250','WSS250Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS251','WSS251Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS252','WSS252Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS253','WSS253Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS254','WSS254Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS255','WSS255Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS256','WSS256Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS257','WSS257Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS258','WSS258Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS259','WSS259Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS26','WSS26Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS260','WSS260Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS261','WSS261Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS262','WSS262Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS263','WSS263Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS264','WSS264Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS265','WSS265Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS266','WSS266Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS267','WSS267Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS268','WSS268Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS269','WSS269Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS27','WSS27Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS270','WSS270Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS271','WSS271Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS272','WSS272Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS273','WSS273Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS274','WSS274Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS275','WSS275Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS276','WSS276Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS277','WSS277Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS278','WSS278Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS279','WSS279Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS28','WSS28Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS280','WSS280Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS281','WSS281Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS282','WSS282Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS283','WSS283Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS284','WSS284Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS285','WSS285Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS286','WSS286Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS287','WSS287Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS288','WSS288Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS289','WSS289Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS29','WSS29Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS290','WSS290Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS291','WSS291Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS292','WSS292Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS293','WSS293Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS294','WSS294Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS295','WSS295Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS296','WSS296Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS297','WSS297Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS298','WSS298Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS299','WSS299Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS3','WSS3Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS30','WSS30Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS300','WSS300Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS301','WSS301Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS302','WSS302Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS303','WSS303Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS304','WSS304Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS305','WSS305Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS306','WSS306Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS307','WSS307Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS308','WSS308Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS309','WSS309Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS31','WSS31Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS310','WSS310Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS311','WSS311Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS312','WSS312Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS313','WSS313Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS314','WSS314Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS315','WSS315Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS316','WSS316Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS317','WSS317Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS318','WSS318Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS319','WSS319Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS32','WSS32Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS320','WSS320Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS321','WSS321Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS322','WSS322Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS323','WSS323Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS324','WSS324Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS325','WSS325Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS326','WSS326Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS327','WSS327Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS328','WSS328Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS329','WSS329Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS33','WSS33Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS330','WSS330Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS331','WSS331Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS332','WSS332Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS333','WSS333Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS334','WSS334Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS335','WSS335Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS336','WSS336Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS337','WSS337Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS338','WSS338Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS339','WSS339Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS34','WSS34Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS340','WSS340Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS341','WSS341Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS342','WSS342Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS343','WSS343Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS344','WSS344Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS345','WSS345Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS346','WSS346Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS347','WSS347Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS348','WSS348Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS349','WSS349Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS35','WSS35Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS350','WSS350Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS351','WSS351Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS352','WSS352Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS353','WSS353Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS354','WSS354Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS355','WSS355Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS356','WSS356Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS357','WSS357Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS358','WSS358Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS359','WSS359Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS36','WSS36Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS360','WSS360Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS361','WSS361Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS362','WSS362Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS363','WSS363Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS364','WSS364Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS365','WSS365Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS366','WSS366Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS367','WSS367Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS368','WSS368Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS369','WSS369Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS37','WSS37Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS370','WSS370Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS371','WSS371Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS372','WSS372Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS373','WSS373Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS374','WSS374Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS375','WSS375Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS376','WSS376Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS377','WSS377Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS378','WSS378Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS379','WSS379Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS38','WSS38Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS380','WSS380Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS381','WSS381Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS382','WSS382Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS383','WSS383Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS384','WSS384Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS385','WSS385Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS386','WSS386Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS387','WSS387Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS388','WSS388Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS389','WSS389Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS39','WSS39Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS390','WSS390Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS391','WSS391Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS392','WSS392Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS393','WSS393Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS394','WSS394Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS395','WSS395Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS396','WSS396Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS397','WSS397Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS398','WSS398Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS399','WSS399Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS4','WSS4Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS40','WSS40Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS400','WSS400Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS41','WSS41Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS42','WSS42Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS43','WSS43Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS44','WSS44Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS45','WSS45Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS46','WSS46Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS47','WSS47Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS48','WSS48Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS49','WSS49Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS5','WSS5Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS50','WSS50Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS51','WSS51Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS52','WSS52Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS53','WSS53Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS54','WSS54Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS55','WSS55Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS56','WSS56Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS57','WSS57Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS58','WSS58Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS59','WSS59Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS6','WSS6Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS60','WSS60Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS61','WSS61Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS62','WSS62Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS63','WSS63Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS64','WSS64Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS65','WSS65Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS66','WSS66Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS67','WSS67Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS68','WSS68Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS69','WSS69Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS7','WSS7Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS70','WSS70Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS71','WSS71Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS72','WSS72Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS73','WSS73Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS74','WSS74Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS75','WSS75Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS76','WSS76Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS77','WSS77Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS78','WSS78Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS79','WSS79Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS8','WSS8Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS80','WSS80Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS81','WSS81Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS82','WSS82Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS83','WSS83Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS84','WSS84Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS85','WSS85Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS86','WSS86Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS87','WSS87Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS88','WSS88Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS89','WSS89Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS9','WSS9Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS90','WSS90Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS91','WSS91Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS92','WSS92Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS93','WSS93Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS94','WSS94Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS95','WSS95Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS96','WSS96Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS97','WSS97Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS98','WSS98Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS99','WSS99Name',3,1,3,'serviceprovider','https://serviceprovider.com');
/*!40000 ALTER TABLE `webservicelist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-30 10:12:33
