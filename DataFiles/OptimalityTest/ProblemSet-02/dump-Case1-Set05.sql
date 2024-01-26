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
INSERT INTO `initialgoalparameter` VALUES (7,'I','p1'),(8,'I','p1'),(12,'I','p1'),(16,'I','p1'),(21,'I','p1'),(26,'I','p1'),(2,'I','p10'),(4,'I','p10'),(5,'G','p10'),(13,'I','p10'),(17,'G','p10'),(19,'I','p10'),(21,'I','p10'),(22,'I','p10'),(24,'I','p10'),(25,'I','p10'),(1,'I','p11'),(10,'I','p11'),(11,'I','p11'),(22,'G','p11'),(24,'I','p11'),(27,'I','p11'),(29,'I','p11'),(2,'I','p12'),(4,'I','p12'),(5,'I','p12'),(6,'I','p12'),(9,'I','p12'),(10,'I','p12'),(18,'I','p12'),(19,'I','p12'),(27,'I','p12'),(1,'G','p13'),(3,'I','p13'),(10,'G','p13'),(11,'I','p13'),(12,'G','p13'),(13,'I','p13'),(14,'G','p13'),(19,'I','p13'),(20,'G','p13'),(21,'I','p13'),(24,'G','p13'),(26,'G','p13'),(27,'G','p13'),(29,'I','p13'),(1,'I','p14'),(3,'I','p14'),(4,'I','p14'),(5,'G','p14'),(7,'I','p14'),(10,'I','p14'),(12,'I','p14'),(14,'I','p14'),(17,'I','p14'),(18,'I','p14'),(19,'G','p14'),(21,'I','p14'),(25,'I','p14'),(26,'I','p14'),(28,'I','p14'),(2,'I','p15'),(3,'G','p15'),(7,'I','p15'),(21,'I','p15'),(23,'I','p15'),(28,'I','p15'),(30,'I','p15'),(1,'I','p16'),(5,'I','p16'),(7,'G','p16'),(11,'I','p16'),(18,'I','p16'),(19,'G','p16'),(23,'I','p16'),(24,'I','p16'),(26,'I','p16'),(29,'I','p16'),(2,'I','p17'),(3,'I','p17'),(8,'G','p17'),(13,'I','p17'),(14,'I','p17'),(17,'I','p17'),(20,'G','p17'),(26,'I','p17'),(30,'I','p17'),(9,'I','p18'),(15,'I','p18'),(16,'G','p18'),(22,'I','p18'),(24,'I','p18'),(3,'I','p19'),(5,'I','p19'),(6,'I','p19'),(7,'I','p19'),(8,'I','p19'),(10,'I','p19'),(18,'G','p19'),(25,'I','p19'),(28,'G','p19'),(29,'G','p19'),(30,'I','p19'),(5,'I','p2'),(8,'I','p2'),(9,'I','p2'),(13,'I','p2'),(20,'I','p2'),(22,'I','p2'),(23,'I','p2'),(24,'G','p2'),(30,'I','p2'),(5,'I','p20'),(11,'I','p20'),(12,'I','p20'),(14,'I','p20'),(16,'I','p20'),(20,'I','p20'),(21,'G','p20'),(22,'G','p20'),(24,'I','p20'),(26,'G','p20'),(28,'I','p20'),(29,'I','p20'),(30,'G','p20'),(12,'I','p21'),(14,'I','p21'),(16,'I','p21'),(17,'I','p21'),(18,'I','p21'),(20,'I','p21'),(24,'I','p21'),(25,'G','p21'),(27,'I','p21'),(6,'G','p22'),(7,'G','p22'),(11,'I','p22'),(17,'I','p22'),(18,'I','p22'),(28,'I','p22'),(30,'I','p22'),(1,'I','p23'),(7,'I','p23'),(8,'I','p23'),(10,'I','p23'),(12,'G','p23'),(14,'G','p23'),(15,'I','p23'),(16,'I','p23'),(19,'I','p23'),(22,'I','p23'),(23,'I','p23'),(25,'G','p23'),(27,'I','p23'),(1,'I','p24'),(2,'I','p24'),(5,'I','p24'),(6,'I','p24'),(9,'I','p24'),(11,'G','p24'),(13,'I','p24'),(17,'I','p24'),(19,'I','p24'),(22,'I','p24'),(23,'I','p24'),(2,'I','p25'),(4,'I','p25'),(8,'I','p25'),(13,'I','p25'),(14,'I','p25'),(16,'G','p25'),(17,'G','p25'),(18,'I','p25'),(20,'I','p25'),(22,'I','p25'),(25,'I','p25'),(26,'I','p25'),(27,'I','p25'),(29,'I','p25'),(30,'I','p25'),(9,'I','p26'),(10,'I','p26'),(15,'I','p26'),(17,'I','p26'),(18,'I','p26'),(25,'I','p26'),(26,'I','p26'),(28,'I','p26'),(1,'I','p27'),(4,'G','p27'),(9,'I','p27'),(27,'I','p27'),(29,'I','p27'),(3,'I','p28'),(4,'I','p28'),(7,'I','p28'),(9,'I','p28'),(19,'I','p28'),(21,'G','p28'),(23,'I','p28'),(25,'I','p28'),(27,'I','p28'),(28,'I','p28'),(2,'I','p29'),(3,'I','p29'),(6,'I','p29'),(9,'G','p29'),(12,'I','p29'),(14,'I','p29'),(15,'G','p29'),(19,'I','p29'),(20,'I','p29'),(23,'G','p29'),(2,'G','p3'),(6,'I','p3'),(7,'I','p3'),(8,'I','p3'),(10,'I','p3'),(15,'I','p3'),(16,'I','p3'),(21,'I','p3'),(25,'I','p3'),(26,'I','p3'),(29,'I','p3'),(2,'I','p30'),(6,'I','p30'),(8,'I','p30'),(10,'I','p30'),(11,'I','p30'),(12,'I','p30'),(14,'I','p30'),(15,'G','p30'),(18,'I','p30'),(20,'I','p30'),(21,'I','p30'),(22,'I','p30'),(23,'I','p30'),(27,'G','p30'),(29,'G','p30'),(2,'G','p4'),(4,'I','p4'),(6,'I','p4'),(11,'I','p4'),(13,'I','p4'),(25,'I','p4'),(1,'I','p5'),(3,'I','p5'),(6,'G','p5'),(8,'I','p5'),(9,'I','p5'),(11,'G','p5'),(12,'I','p5'),(17,'I','p5'),(21,'I','p5'),(29,'I','p5'),(1,'I','p6'),(4,'G','p6'),(5,'I','p6'),(9,'G','p6'),(11,'I','p6'),(13,'I','p6'),(14,'I','p6'),(15,'I','p6'),(16,'I','p6'),(30,'I','p6'),(10,'G','p7'),(15,'I','p7'),(16,'I','p7'),(18,'G','p7'),(23,'I','p7'),(24,'I','p7'),(27,'I','p7'),(28,'I','p7'),(30,'I','p7'),(1,'G','p8'),(3,'G','p8'),(4,'I','p8'),(13,'G','p8'),(15,'I','p8'),(16,'I','p8'),(19,'I','p8'),(20,'I','p8'),(22,'I','p8'),(23,'G','p8'),(24,'I','p8'),(28,'I','p8'),(30,'G','p8'),(3,'I','p9'),(4,'I','p9'),(5,'I','p9'),(6,'I','p9'),(7,'I','p9'),(8,'G','p9'),(12,'I','p9'),(13,'G','p9'),(15,'I','p9'),(17,'I','p9'),(20,'I','p9'),(26,'I','p9'),(28,'G','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS10','p1'),('WSS119','p1'),('WSS127','p1'),('WSS145','p1'),('WSS151','p1'),('WSS157','p1'),('WSS170','p1'),('WSS181','p1'),('WSS37','p1'),('WSS39','p1'),('WSS43','p1'),('WSS56','p1'),('WSS6','p1'),('WSS73','p1'),('WSS75','p1'),('WSS87','p1'),('WSS97','p1'),('WSS128','p10'),('WSS138','p10'),('WSS154','p10'),('WSS156','p10'),('WSS160','p10'),('WSS166','p10'),('WSS188','p10'),('WSS34','p10'),('WSS46','p10'),('WSS48','p10'),('WSS83','p10'),('WSS100','p11'),('WSS121','p11'),('WSS18','p11'),('WSS180','p11'),('WSS45','p11'),('WSS57','p11'),('WSS72','p11'),('WSS9','p11'),('WSS1','p12'),('WSS10','p12'),('WSS132','p12'),('WSS142','p12'),('WSS189','p12'),('WSS195','p12'),('WSS196','p12'),('WSS36','p12'),('WSS38','p12'),('WSS43','p12'),('WSS45','p12'),('WSS70','p12'),('WSS76','p12'),('WSS85','p12'),('WSS94','p12'),('WSS112','p13'),('WSS14','p13'),('WSS150','p13'),('WSS181','p13'),('WSS25','p13'),('WSS35','p13'),('WSS64','p13'),('WSS67','p13'),('WSS69','p13'),('WSS8','p13'),('WSS84','p13'),('WSS94','p13'),('WSS13','p14'),('WSS161','p14'),('WSS23','p14'),('WSS44','p14'),('WSS59','p14'),('WSS61','p14'),('WSS64','p14'),('WSS74','p14'),('WSS96','p14'),('WSS11','p15'),('WSS147','p15'),('WSS153','p15'),('WSS178','p15'),('WSS20','p15'),('WSS30','p15'),('WSS41','p15'),('WSS65','p15'),('WSS7','p15'),('WSS106','p16'),('WSS12','p16'),('WSS18','p16'),('WSS182','p16'),('WSS200','p16'),('WSS3','p16'),('WSS38','p16'),('WSS4','p16'),('WSS62','p16'),('WSS80','p16'),('WSS124','p17'),('WSS126','p17'),('WSS148','p17'),('WSS153','p17'),('WSS16','p17'),('WSS26','p17'),('WSS51','p17'),('WSS80','p17'),('WSS89','p17'),('WSS96','p17'),('WSS100','p18'),('WSS101','p18'),('WSS125','p18'),('WSS159','p18'),('WSS162','p18'),('WSS166','p18'),('WSS172','p18'),('WSS176','p18'),('WSS190','p18'),('WSS23','p18'),('WSS35','p18'),('WSS47','p18'),('WSS79','p18'),('WSS111','p19'),('WSS116','p19'),('WSS119','p19'),('WSS120','p19'),('WSS131','p19'),('WSS135','p19'),('WSS163','p19'),('WSS169','p19'),('WSS171','p19'),('WSS173','p19'),('WSS175','p19'),('WSS186','p19'),('WSS191','p19'),('WSS192','p19'),('WSS198','p19'),('WSS29','p19'),('WSS40','p19'),('WSS73','p19'),('WSS137','p2'),('WSS139','p2'),('WSS148','p2'),('WSS3','p2'),('WSS33','p2'),('WSS50','p2'),('WSS54','p2'),('WSS109','p20'),('WSS116','p20'),('WSS128','p20'),('WSS149','p20'),('WSS180','p20'),('WSS192','p20'),('WSS193','p20'),('WSS42','p20'),('WSS49','p20'),('WSS90','p20'),('WSS91','p20'),('WSS108','p21'),('WSS121','p21'),('WSS167','p21'),('WSS17','p21'),('WSS19','p21'),('WSS22','p21'),('WSS51','p21'),('WSS61','p21'),('WSS71','p21'),('WSS78','p21'),('WSS110','p22'),('WSS123','p22'),('WSS124','p22'),('WSS138','p22'),('WSS143','p22'),('WSS152','p22'),('WSS171','p22'),('WSS33','p22'),('WSS70','p22'),('WSS81','p22'),('WSS103','p23'),('WSS130','p23'),('WSS136','p23'),('WSS142','p23'),('WSS147','p23'),('WSS149','p23'),('WSS150','p23'),('WSS163','p23'),('WSS188','p23'),('WSS189','p23'),('WSS2','p23'),('WSS20','p23'),('WSS24','p23'),('WSS53','p23'),('WSS59','p23'),('WSS78','p23'),('WSS9','p23'),('WSS98','p23'),('WSS118','p24'),('WSS129','p24'),('WSS13','p24'),('WSS155','p24'),('WSS158','p24'),('WSS183','p24'),('WSS19','p24'),('WSS50','p24'),('WSS69','p24'),('WSS85','p24'),('WSS86','p24'),('WSS88','p24'),('WSS93','p24'),('WSS103','p25'),('WSS109','p25'),('WSS120','p25'),('WSS122','p25'),('WSS134','p25'),('WSS145','p25'),('WSS156','p25'),('WSS174','p25'),('WSS177','p25'),('WSS186','p25'),('WSS187','p25'),('WSS196','p25'),('WSS197','p25'),('WSS2','p25'),('WSS29','p25'),('WSS46','p25'),('WSS52','p25'),('WSS60','p25'),('WSS93','p25'),('WSS99','p25'),('WSS105','p26'),('WSS115','p26'),('WSS129','p26'),('WSS137','p26'),('WSS143','p26'),('WSS179','p26'),('WSS48','p26'),('WSS62','p26'),('WSS63','p26'),('WSS68','p26'),('WSS72','p26'),('WSS82','p26'),('WSS101','p27'),('WSS144','p27'),('WSS170','p27'),('WSS187','p27'),('WSS60','p27'),('WSS107','p28'),('WSS115','p28'),('WSS131','p28'),('WSS136','p28'),('WSS141','p28'),('WSS146','p28'),('WSS162','p28'),('WSS169','p28'),('WSS175','p28'),('WSS177','p28'),('WSS184','p28'),('WSS197','p28'),('WSS199','p28'),('WSS27','p28'),('WSS30','p28'),('WSS37','p28'),('WSS39','p28'),('WSS76','p28'),('WSS91','p28'),('WSS117','p29'),('WSS123','p29'),('WSS130','p29'),('WSS152','p29'),('WSS155','p29'),('WSS157','p29'),('WSS160','p29'),('WSS164','p29'),('WSS168','p29'),('WSS173','p29'),('WSS185','p29'),('WSS200','p29'),('WSS28','p29'),('WSS40','p29'),('WSS52','p29'),('WSS6','p29'),('WSS74','p29'),('WSS87','p29'),('WSS107','p3'),('WSS15','p3'),('WSS168','p3'),('WSS185','p3'),('WSS199','p3'),('WSS34','p3'),('WSS36','p3'),('WSS53','p3'),('WSS83','p3'),('WSS1','p30'),('WSS102','p30'),('WSS106','p30'),('WSS108','p30'),('WSS113','p30'),('WSS114','p30'),('WSS127','p30'),('WSS164','p30'),('WSS184','p30'),('WSS195','p30'),('WSS21','p30'),('WSS25','p30'),('WSS27','p30'),('WSS49','p30'),('WSS57','p30'),('WSS58','p30'),('WSS7','p30'),('WSS75','p30'),('WSS89','p30'),('WSS99','p30'),('WSS133','p4'),('WSS140','p4'),('WSS141','p4'),('WSS167','p4'),('WSS190','p4'),('WSS44','p4'),('WSS55','p4'),('WSS65','p4'),('WSS67','p4'),('WSS95','p4'),('WSS102','p5'),('WSS105','p5'),('WSS11','p5'),('WSS113','p5'),('WSS114','p5'),('WSS12','p5'),('WSS122','p5'),('WSS125','p5'),('WSS144','p5'),('WSS146','p5'),('WSS15','p5'),('WSS176','p5'),('WSS183','p5'),('WSS194','p5'),('WSS24','p5'),('WSS28','p5'),('WSS5','p5'),('WSS54','p5'),('WSS55','p5'),('WSS68','p5'),('WSS77','p5'),('WSS8','p5'),('WSS84','p5'),('WSS86','p5'),('WSS90','p5'),('WSS104','p6'),('WSS110','p6'),('WSS126','p6'),('WSS14','p6'),('WSS151','p6'),('WSS16','p6'),('WSS17','p6'),('WSS179','p6'),('WSS182','p6'),('WSS191','p6'),('WSS194','p6'),('WSS22','p6'),('WSS31','p6'),('WSS32','p6'),('WSS5','p6'),('WSS77','p6'),('WSS92','p6'),('WSS104','p7'),('WSS112','p7'),('WSS133','p7'),('WSS134','p7'),('WSS140','p7'),('WSS158','p7'),('WSS159','p7'),('WSS165','p7'),('WSS172','p7'),('WSS174','p7'),('WSS193','p7'),('WSS58','p7'),('WSS66','p7'),('WSS97','p7'),('WSS117','p8'),('WSS118','p8'),('WSS139','p8'),('WSS161','p8'),('WSS21','p8'),('WSS32','p8'),('WSS4','p8'),('WSS42','p8'),('WSS56','p8'),('WSS63','p8'),('WSS82','p8'),('WSS88','p8'),('WSS98','p8'),('WSS111','p9'),('WSS132','p9'),('WSS135','p9'),('WSS178','p9'),('WSS198','p9'),('WSS31','p9'),('WSS41','p9'),('WSS47','p9'),('WSS66','p9'),('WSS71','p9'),('WSS81','p9'),('WSS92','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS1','p1'),('WSS10','p1'),('WSS102','p1'),('WSS111','p1'),('WSS113','p1'),('WSS116','p1'),('WSS120','p1'),('WSS121','p1'),('WSS127','p1'),('WSS128','p1'),('WSS131','p1'),('WSS158','p1'),('WSS159','p1'),('WSS161','p1'),('WSS163','p1'),('WSS179','p1'),('WSS180','p1'),('WSS187','p1'),('WSS34','p1'),('WSS38','p1'),('WSS69','p1'),('WSS70','p1'),('WSS72','p1'),('WSS8','p1'),('WSS81','p1'),('WSS95','p1'),('WSS96','p1'),('WSS103','p10'),('WSS112','p10'),('WSS124','p10'),('WSS126','p10'),('WSS130','p10'),('WSS136','p10'),('WSS138','p10'),('WSS157','p10'),('WSS16','p10'),('WSS170','p10'),('WSS171','p10'),('WSS176','p10'),('WSS183','p10'),('WSS187','p10'),('WSS192','p10'),('WSS193','p10'),('WSS198','p10'),('WSS31','p10'),('WSS37','p10'),('WSS51','p10'),('WSS52','p10'),('WSS6','p10'),('WSS61','p10'),('WSS65','p10'),('WSS66','p10'),('WSS69','p10'),('WSS7','p10'),('WSS8','p10'),('WSS85','p10'),('WSS86','p10'),('WSS88','p10'),('WSS105','p11'),('WSS109','p11'),('WSS134','p11'),('WSS136','p11'),('WSS146','p11'),('WSS148','p11'),('WSS149','p11'),('WSS165','p11'),('WSS166','p11'),('WSS168','p11'),('WSS174','p11'),('WSS18','p11'),('WSS25','p11'),('WSS27','p11'),('WSS33','p11'),('WSS38','p11'),('WSS39','p11'),('WSS50','p11'),('WSS55','p11'),('WSS58','p11'),('WSS60','p11'),('WSS7','p11'),('WSS74','p11'),('WSS90','p11'),('WSS100','p12'),('WSS102','p12'),('WSS114','p12'),('WSS119','p12'),('WSS135','p12'),('WSS137','p12'),('WSS14','p12'),('WSS15','p12'),('WSS155','p12'),('WSS170','p12'),('WSS20','p12'),('WSS23','p12'),('WSS3','p12'),('WSS30','p12'),('WSS42','p12'),('WSS43','p12'),('WSS58','p12'),('WSS67','p12'),('WSS68','p12'),('WSS7','p12'),('WSS71','p12'),('WSS85','p12'),('WSS92','p12'),('WSS95','p12'),('WSS97','p12'),('WSS103','p13'),('WSS115','p13'),('WSS121','p13'),('WSS122','p13'),('WSS136','p13'),('WSS141','p13'),('WSS149','p13'),('WSS162','p13'),('WSS163','p13'),('WSS17','p13'),('WSS173','p13'),('WSS182','p13'),('WSS187','p13'),('WSS188','p13'),('WSS19','p13'),('WSS191','p13'),('WSS195','p13'),('WSS198','p13'),('WSS48','p13'),('WSS79','p13'),('WSS8','p13'),('WSS9','p13'),('WSS91','p13'),('WSS119','p14'),('WSS125','p14'),('WSS130','p14'),('WSS135','p14'),('WSS137','p14'),('WSS154','p14'),('WSS156','p14'),('WSS163','p14'),('WSS164','p14'),('WSS167','p14'),('WSS2','p14'),('WSS29','p14'),('WSS40','p14'),('WSS41','p14'),('WSS46','p14'),('WSS55','p14'),('WSS91','p14'),('WSS94','p14'),('WSS1','p15'),('WSS114','p15'),('WSS115','p15'),('WSS12','p15'),('WSS126','p15'),('WSS138','p15'),('WSS14','p15'),('WSS141','p15'),('WSS142','p15'),('WSS143','p15'),('WSS145','p15'),('WSS152','p15'),('WSS154','p15'),('WSS161','p15'),('WSS168','p15'),('WSS173','p15'),('WSS177','p15'),('WSS190','p15'),('WSS200','p15'),('WSS31','p15'),('WSS33','p15'),('WSS34','p15'),('WSS40','p15'),('WSS44','p15'),('WSS47','p15'),('WSS51','p15'),('WSS63','p15'),('WSS68','p15'),('WSS78','p15'),('WSS81','p15'),('WSS94','p15'),('WSS96','p15'),('WSS103','p16'),('WSS104','p16'),('WSS11','p16'),('WSS110','p16'),('WSS116','p16'),('WSS118','p16'),('WSS132','p16'),('WSS133','p16'),('WSS142','p16'),('WSS148','p16'),('WSS151','p16'),('WSS163','p16'),('WSS169','p16'),('WSS171','p16'),('WSS182','p16'),('WSS186','p16'),('WSS189','p16'),('WSS190','p16'),('WSS2','p16'),('WSS21','p16'),('WSS24','p16'),('WSS36','p16'),('WSS49','p16'),('WSS70','p16'),('WSS77','p16'),('WSS79','p16'),('WSS85','p16'),('WSS89','p16'),('WSS101','p17'),('WSS113','p17'),('WSS114','p17'),('WSS115','p17'),('WSS122','p17'),('WSS128','p17'),('WSS14','p17'),('WSS177','p17'),('WSS178','p17'),('WSS197','p17'),('WSS20','p17'),('WSS28','p17'),('WSS38','p17'),('WSS42','p17'),('WSS43','p17'),('WSS48','p17'),('WSS77','p17'),('WSS79','p17'),('WSS80','p17'),('WSS84','p17'),('WSS90','p17'),('WSS96','p17'),('WSS113','p18'),('WSS117','p18'),('WSS120','p18'),('WSS124','p18'),('WSS129','p18'),('WSS13','p18'),('WSS140','p18'),('WSS144','p18'),('WSS148','p18'),('WSS150','p18'),('WSS160','p18'),('WSS169','p18'),('WSS17','p18'),('WSS192','p18'),('WSS21','p18'),('WSS25','p18'),('WSS28','p18'),('WSS44','p18'),('WSS45','p18'),('WSS50','p18'),('WSS6','p18'),('WSS67','p18'),('WSS73','p18'),('WSS91','p18'),('WSS104','p19'),('WSS11','p19'),('WSS124','p19'),('WSS126','p19'),('WSS139','p19'),('WSS140','p19'),('WSS141','p19'),('WSS165','p19'),('WSS173','p19'),('WSS184','p19'),('WSS39','p19'),('WSS59','p19'),('WSS61','p19'),('WSS70','p19'),('WSS73','p19'),('WSS75','p19'),('WSS77','p19'),('WSS83','p19'),('WSS84','p19'),('WSS95','p19'),('WSS99','p19'),('WSS107','p2'),('WSS116','p2'),('WSS118','p2'),('WSS137','p2'),('WSS138','p2'),('WSS139','p2'),('WSS142','p2'),('WSS143','p2'),('WSS15','p2'),('WSS159','p2'),('WSS167','p2'),('WSS169','p2'),('WSS17','p2'),('WSS182','p2'),('WSS183','p2'),('WSS184','p2'),('WSS199','p2'),('WSS200','p2'),('WSS29','p2'),('WSS32','p2'),('WSS36','p2'),('WSS49','p2'),('WSS57','p2'),('WSS59','p2'),('WSS75','p2'),('WSS89','p2'),('WSS99','p2'),('WSS107','p20'),('WSS11','p20'),('WSS110','p20'),('WSS114','p20'),('WSS123','p20'),('WSS125','p20'),('WSS131','p20'),('WSS135','p20'),('WSS147','p20'),('WSS154','p20'),('WSS185','p20'),('WSS186','p20'),('WSS189','p20'),('WSS19','p20'),('WSS190','p20'),('WSS29','p20'),('WSS31','p20'),('WSS51','p20'),('WSS52','p20'),('WSS61','p20'),('WSS76','p20'),('WSS89','p20'),('WSS92','p20'),('WSS117','p21'),('WSS123','p21'),('WSS127','p21'),('WSS144','p21'),('WSS157','p21'),('WSS158','p21'),('WSS164','p21'),('WSS171','p21'),('WSS18','p21'),('WSS181','p21'),('WSS195','p21'),('WSS24','p21'),('WSS31','p21'),('WSS54','p21'),('WSS62','p21'),('WSS63','p21'),('WSS64','p21'),('WSS73','p21'),('WSS80','p21'),('WSS82','p21'),('WSS83','p21'),('WSS10','p22'),('WSS102','p22'),('WSS103','p22'),('WSS104','p22'),('WSS107','p22'),('WSS115','p22'),('WSS143','p22'),('WSS15','p22'),('WSS152','p22'),('WSS153','p22'),('WSS156','p22'),('WSS158','p22'),('WSS160','p22'),('WSS166','p22'),('WSS186','p22'),('WSS188','p22'),('WSS27','p22'),('WSS32','p22'),('WSS47','p22'),('WSS54','p22'),('WSS64','p22'),('WSS69','p22'),('WSS7','p22'),('WSS80','p22'),('WSS83','p22'),('WSS9','p22'),('WSS92','p22'),('WSS98','p22'),('WSS106','p23'),('WSS109','p23'),('WSS112','p23'),('WSS131','p23'),('WSS146','p23'),('WSS153','p23'),('WSS164','p23'),('WSS172','p23'),('WSS176','p23'),('WSS183','p23'),('WSS192','p23'),('WSS2','p23'),('WSS21','p23'),('WSS24','p23'),('WSS37','p23'),('WSS53','p23'),('WSS56','p23'),('WSS6','p23'),('WSS60','p23'),('WSS64','p23'),('WSS66','p23'),('WSS72','p23'),('WSS74','p23'),('WSS8','p23'),('WSS100','p24'),('WSS109','p24'),('WSS120','p24'),('WSS122','p24'),('WSS127','p24'),('WSS138','p24'),('WSS145','p24'),('WSS154','p24'),('WSS161','p24'),('WSS162','p24'),('WSS177','p24'),('WSS185','p24'),('WSS196','p24'),('WSS197','p24'),('WSS20','p24'),('WSS32','p24'),('WSS43','p24'),('WSS50','p24'),('WSS67','p24'),('WSS87','p24'),('WSS93','p24'),('WSS108','p25'),('WSS110','p25'),('WSS113','p25'),('WSS117','p25'),('WSS12','p25'),('WSS155','p25'),('WSS16','p25'),('WSS176','p25'),('WSS178','p25'),('WSS181','p25'),('WSS198','p25'),('WSS199','p25'),('WSS2','p25'),('WSS23','p25'),('WSS30','p25'),('WSS37','p25'),('WSS4','p25'),('WSS48','p25'),('WSS5','p25'),('WSS60','p25'),('WSS81','p25'),('WSS90','p25'),('WSS98','p25'),('WSS101','p26'),('WSS111','p26'),('WSS121','p26'),('WSS125','p26'),('WSS132','p26'),('WSS133','p26'),('WSS136','p26'),('WSS145','p26'),('WSS147','p26'),('WSS150','p26'),('WSS151','p26'),('WSS16','p26'),('WSS160','p26'),('WSS164','p26'),('WSS166','p26'),('WSS168','p26'),('WSS175','p26'),('WSS178','p26'),('WSS194','p26'),('WSS195','p26'),('WSS197','p26'),('WSS27','p26'),('WSS29','p26'),('WSS35','p26'),('WSS48','p26'),('WSS49','p26'),('WSS5','p26'),('WSS53','p26'),('WSS54','p26'),('WSS57','p26'),('WSS59','p26'),('WSS63','p26'),('WSS65','p26'),('WSS69','p26'),('WSS76','p26'),('WSS105','p27'),('WSS13','p27'),('WSS132','p27'),('WSS134','p27'),('WSS139','p27'),('WSS15','p27'),('WSS150','p27'),('WSS151','p27'),('WSS153','p27'),('WSS180','p27'),('WSS181','p27'),('WSS194','p27'),('WSS196','p27'),('WSS21','p27'),('WSS30','p27'),('WSS35','p27'),('WSS45','p27'),('WSS51','p27'),('WSS76','p27'),('WSS92','p27'),('WSS106','p28'),('WSS108','p28'),('WSS119','p28'),('WSS132','p28'),('WSS133','p28'),('WSS146','p28'),('WSS147','p28'),('WSS157','p28'),('WSS172','p28'),('WSS184','p28'),('WSS191','p28'),('WSS199','p28'),('WSS25','p28'),('WSS26','p28'),('WSS3','p28'),('WSS33','p28'),('WSS36','p28'),('WSS4','p28'),('WSS43','p28'),('WSS45','p28'),('WSS5','p28'),('WSS56','p28'),('WSS57','p28'),('WSS65','p28'),('WSS74','p28'),('WSS78','p28'),('WSS82','p28'),('WSS87','p28'),('WSS97','p28'),('WSS99','p28'),('WSS102','p29'),('WSS108','p29'),('WSS111','p29'),('WSS118','p29'),('WSS124','p29'),('WSS131','p29'),('WSS149','p29'),('WSS159','p29'),('WSS174','p29'),('WSS189','p29'),('WSS34','p29'),('WSS41','p29'),('WSS42','p29'),('WSS46','p29'),('WSS47','p29'),('WSS5','p29'),('WSS52','p29'),('WSS54','p29'),('WSS62','p29'),('WSS71','p29'),('WSS76','p29'),('WSS1','p3'),('WSS112','p3'),('WSS123','p3'),('WSS137','p3'),('WSS147','p3'),('WSS151','p3'),('WSS153','p3'),('WSS165','p3'),('WSS174','p3'),('WSS18','p3'),('WSS182','p3'),('WSS3','p3'),('WSS32','p3'),('WSS38','p3'),('WSS40','p3'),('WSS56','p3'),('WSS61','p3'),('WSS71','p3'),('WSS78','p3'),('WSS84','p3'),('WSS86','p3'),('WSS9','p3'),('WSS90','p3'),('WSS94','p3'),('WSS97','p3'),('WSS10','p30'),('WSS106','p30'),('WSS128','p30'),('WSS134','p30'),('WSS135','p30'),('WSS143','p30'),('WSS144','p30'),('WSS167','p30'),('WSS172','p30'),('WSS173','p30'),('WSS177','p30'),('WSS178','p30'),('WSS188','p30'),('WSS19','p30'),('WSS190','p30'),('WSS191','p30'),('WSS20','p30'),('WSS22','p30'),('WSS23','p30'),('WSS35','p30'),('WSS6','p30'),('WSS68','p30'),('WSS71','p30'),('WSS80','p30'),('WSS81','p30'),('WSS83','p30'),('WSS88','p30'),('WSS93','p30'),('WSS99','p30'),('WSS106','p4'),('WSS107','p4'),('WSS128','p4'),('WSS149','p4'),('WSS156','p4'),('WSS160','p4'),('WSS166','p4'),('WSS175','p4'),('WSS181','p4'),('WSS189','p4'),('WSS192','p4'),('WSS194','p4'),('WSS200','p4'),('WSS22','p4'),('WSS26','p4'),('WSS35','p4'),('WSS39','p4'),('WSS41','p4'),('WSS44','p4'),('WSS55','p4'),('WSS58','p4'),('WSS68','p4'),('WSS77','p4'),('WSS78','p4'),('WSS87','p4'),('WSS9','p4'),('WSS93','p4'),('WSS95','p4'),('WSS101','p5'),('WSS109','p5'),('WSS111','p5'),('WSS117','p5'),('WSS139','p5'),('WSS141','p5'),('WSS152','p5'),('WSS162','p5'),('WSS169','p5'),('WSS172','p5'),('WSS174','p5'),('WSS179','p5'),('WSS180','p5'),('WSS187','p5'),('WSS188','p5'),('WSS193','p5'),('WSS197','p5'),('WSS198','p5'),('WSS22','p5'),('WSS34','p5'),('WSS42','p5'),('WSS47','p5'),('WSS53','p5'),('WSS58','p5'),('WSS62','p5'),('WSS66','p5'),('WSS67','p5'),('WSS72','p5'),('WSS75','p5'),('WSS79','p5'),('WSS87','p5'),('WSS89','p5'),('WSS93','p5'),('WSS1','p6'),('WSS100','p6'),('WSS120','p6'),('WSS126','p6'),('WSS13','p6'),('WSS140','p6'),('WSS148','p6'),('WSS170','p6'),('WSS175','p6'),('WSS176','p6'),('WSS179','p6'),('WSS183','p6'),('WSS185','p6'),('WSS191','p6'),('WSS24','p6'),('WSS27','p6'),('WSS28','p6'),('WSS44','p6'),('WSS46','p6'),('WSS49','p6'),('WSS50','p6'),('WSS63','p6'),('WSS65','p6'),('WSS96','p6'),('WSS100','p7'),('WSS11','p7'),('WSS118','p7'),('WSS12','p7'),('WSS125','p7'),('WSS130','p7'),('WSS133','p7'),('WSS134','p7'),('WSS144','p7'),('WSS155','p7'),('WSS157','p7'),('WSS161','p7'),('WSS162','p7'),('WSS170','p7'),('WSS175','p7'),('WSS185','p7'),('WSS186','p7'),('WSS193','p7'),('WSS195','p7'),('WSS3','p7'),('WSS30','p7'),('WSS39','p7'),('WSS4','p7'),('WSS57','p7'),('WSS60','p7'),('WSS82','p7'),('WSS84','p7'),('WSS85','p7'),('WSS88','p7'),('WSS98','p7'),('WSS105','p8'),('WSS119','p8'),('WSS129','p8'),('WSS130','p8'),('WSS152','p8'),('WSS158','p8'),('WSS159','p8'),('WSS16','p8'),('WSS165','p8'),('WSS179','p8'),('WSS19','p8'),('WSS196','p8'),('WSS199','p8'),('WSS23','p8'),('WSS26','p8'),('WSS28','p8'),('WSS4','p8'),('WSS59','p8'),('WSS74','p8'),('WSS86','p8'),('WSS10','p9'),('WSS104','p9'),('WSS105','p9'),('WSS108','p9'),('WSS12','p9'),('WSS127','p9'),('WSS13','p9'),('WSS146','p9'),('WSS150','p9'),('WSS171','p9'),('WSS184','p9'),('WSS25','p9'),('WSS33','p9'),('WSS40','p9'),('WSS41','p9'),('WSS45','p9'),('WSS52','p9'),('WSS53','p9'),('WSS66','p9'),('WSS72','p9'),('WSS73','p9'),('WSS82','p9'),('WSS86','p9'),('WSS88','p9'),('WSS94','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS81'),(1,2,'WSS54'),(2,1,'WSS94'),(2,2,'WSS50'),(2,3,'WSS67'),(3,1,'WSS45'),(3,2,'WSS55'),(3,3,'WSS48'),(4,1,'WSS25'),(4,2,'WSS54'),(4,3,'WSS67'),(6,1,'WSS46'),(6,2,'WSS64'),(6,3,'WSS55'),(7,1,'WSS46'),(7,2,'WSS24'),(8,1,'WSS46'),(8,2,'WSS69'),(8,3,'WSS65'),(9,1,'WSS53'),(9,2,'WSS65'),(10,1,'WSS88'),(10,2,'WSS33'),(11,1,'WSS75'),(11,2,'WSS68'),(11,2,'WSS69'),(12,1,'WSS46'),(12,2,'WSS56'),(13,1,'WSS96'),(13,2,'WSS61'),(13,3,'WSS68'),(14,1,'WSS59'),(14,2,'WSS42'),(15,1,'WSS95'),(15,2,'WSS7'),(16,1,'WSS61'),(16,2,'WSS97'),(17,1,'WSS88'),(17,2,'WSS59'),(18,1,'WSS47'),(18,2,'WSS60'),(18,3,'WSS57'),(19,1,'WSS60'),(19,2,'WSS59'),(19,3,'WSS54'),(20,1,'WSS46'),(20,2,'WSS61'),(20,3,'WSS53'),(21,1,'WSS43'),(21,2,'WSS67'),(22,1,'WSS57'),(22,2,'WSS75'),(23,1,'WSS55'),(23,2,'WSS4'),(24,1,'WSS40'),(24,2,'WSS60'),(24,3,'WSS67'),(25,1,'WSS54'),(25,2,'WSS56'),(26,1,'WSS39'),(26,2,'WSS57'),(26,3,'WSS68'),(27,1,'WSS54'),(27,2,'WSS59'),(27,3,'WSS60'),(29,1,'WSS61'),(29,2,'WSS53'),(30,1,'WSS91'),(30,2,'WSS25'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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
INSERT INTO `webservicelist` VALUES ('WSS1','WSS1Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS10','WSS10Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS100','WSS100Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS101','WSS101Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS102','WSS102Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS103','WSS103Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS104','WSS104Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS105','WSS105Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS106','WSS106Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS107','WSS107Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS108','WSS108Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS109','WSS109Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS11','WSS11Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS110','WSS110Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS111','WSS111Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS112','WSS112Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS113','WSS113Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS114','WSS114Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS115','WSS115Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS116','WSS116Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS117','WSS117Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS118','WSS118Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS119','WSS119Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS12','WSS12Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS120','WSS120Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS121','WSS121Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS122','WSS122Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS123','WSS123Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS124','WSS124Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS125','WSS125Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS126','WSS126Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS127','WSS127Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS128','WSS128Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS129','WSS129Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS13','WSS13Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS130','WSS130Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS131','WSS131Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS132','WSS132Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS133','WSS133Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS134','WSS134Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS135','WSS135Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS136','WSS136Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS137','WSS137Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS138','WSS138Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS139','WSS139Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS14','WSS14Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS140','WSS140Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS141','WSS141Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS142','WSS142Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS143','WSS143Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS144','WSS144Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS145','WSS145Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS146','WSS146Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS147','WSS147Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS148','WSS148Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS149','WSS149Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS15','WSS15Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS150','WSS150Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS151','WSS151Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS152','WSS152Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS153','WSS153Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS154','WSS154Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS155','WSS155Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS156','WSS156Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS157','WSS157Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS158','WSS158Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS159','WSS159Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS16','WSS16Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS160','WSS160Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS161','WSS161Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS162','WSS162Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS163','WSS163Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS164','WSS164Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS165','WSS165Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS166','WSS166Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS167','WSS167Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS168','WSS168Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS169','WSS169Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS17','WSS17Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS170','WSS170Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS171','WSS171Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS172','WSS172Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS173','WSS173Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS174','WSS174Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS175','WSS175Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS176','WSS176Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS177','WSS177Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS178','WSS178Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS179','WSS179Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS18','WSS18Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS180','WSS180Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS181','WSS181Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS182','WSS182Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS183','WSS183Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS184','WSS184Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS185','WSS185Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS186','WSS186Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS187','WSS187Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS188','WSS188Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS189','WSS189Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS19','WSS19Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS190','WSS190Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS191','WSS191Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS192','WSS192Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS193','WSS193Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS194','WSS194Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS195','WSS195Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS196','WSS196Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS197','WSS197Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS198','WSS198Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS199','WSS199Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS2','WSS2Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS20','WSS20Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS200','WSS200Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS21','WSS21Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS22','WSS22Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS23','WSS23Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS24','WSS24Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS25','WSS25Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS26','WSS26Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS27','WSS27Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS28','WSS28Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS29','WSS29Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS3','WSS3Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS30','WSS30Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS31','WSS31Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS32','WSS32Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS33','WSS33Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS34','WSS34Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS35','WSS35Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS36','WSS36Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS37','WSS37Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS38','WSS38Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS39','WSS39Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS4','WSS4Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS40','WSS40Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS41','WSS41Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS42','WSS42Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS43','WSS43Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS44','WSS44Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS45','WSS45Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS46','WSS46Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS47','WSS47Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS48','WSS48Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS49','WSS49Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS5','WSS5Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS50','WSS50Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS51','WSS51Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS52','WSS52Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS53','WSS53Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS54','WSS54Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS55','WSS55Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS56','WSS56Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS57','WSS57Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS58','WSS58Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS59','WSS59Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS6','WSS6Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS60','WSS60Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS61','WSS61Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS62','WSS62Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS63','WSS63Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS64','WSS64Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS65','WSS65Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS66','WSS66Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS67','WSS67Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS68','WSS68Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS69','WSS69Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS7','WSS7Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS70','WSS70Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS71','WSS71Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS72','WSS72Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS73','WSS73Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS74','WSS74Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS75','WSS75Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS76','WSS76Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS77','WSS77Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS78','WSS78Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS79','WSS79Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS8','WSS8Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS80','WSS80Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS81','WSS81Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS82','WSS82Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS83','WSS83Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS84','WSS84Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS85','WSS85Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS86','WSS86Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS87','WSS87Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS88','WSS88Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS89','WSS89Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS9','WSS9Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS90','WSS90Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS91','WSS91Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS92','WSS92Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS93','WSS93Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS94','WSS94Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS95','WSS95Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS96','WSS96Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS97','WSS97Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS98','WSS98Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS99','WSS99Name',3,1,3,'serviceprovider','https://serviceprovider.com');
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

-- Dump completed on 2023-06-29  9:41:33
