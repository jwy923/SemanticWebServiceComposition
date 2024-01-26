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
INSERT INTO `initialgoalparameter` VALUES (2,'I','p1'),(3,'G','p1'),(6,'G','p1'),(8,'I','p1'),(11,'G','p1'),(12,'G','p1'),(15,'I','p1'),(17,'G','p1'),(19,'I','p1'),(20,'I','p1'),(21,'G','p1'),(23,'I','p1'),(24,'G','p1'),(25,'G','p1'),(26,'I','p1'),(28,'G','p1'),(29,'G','p1'),(1,'I','p10'),(3,'G','p10'),(4,'I','p10'),(5,'G','p10'),(8,'I','p10'),(9,'I','p10'),(10,'I','p10'),(14,'G','p10'),(15,'I','p10'),(18,'I','p10'),(19,'G','p10'),(20,'I','p10'),(21,'I','p10'),(22,'G','p10'),(23,'I','p10'),(25,'G','p10'),(26,'G','p10'),(27,'I','p10'),(5,'G','p11'),(8,'I','p11'),(9,'I','p11'),(10,'I','p11'),(13,'I','p11'),(15,'I','p11'),(16,'I','p11'),(18,'G','p11'),(20,'G','p11'),(23,'I','p11'),(25,'I','p11'),(26,'I','p11'),(30,'I','p11'),(1,'I','p12'),(2,'G','p12'),(4,'G','p12'),(5,'I','p12'),(6,'I','p12'),(8,'G','p12'),(9,'G','p12'),(10,'I','p12'),(12,'I','p12'),(16,'I','p12'),(22,'G','p12'),(23,'G','p12'),(24,'I','p12'),(1,'I','p13'),(2,'I','p13'),(3,'G','p13'),(4,'G','p13'),(10,'G','p13'),(12,'I','p13'),(14,'I','p13'),(20,'G','p13'),(21,'I','p13'),(24,'G','p13'),(26,'I','p13'),(27,'I','p13'),(29,'I','p13'),(2,'G','p14'),(3,'I','p14'),(4,'I','p14'),(13,'G','p14'),(18,'I','p14'),(27,'I','p14'),(2,'I','p15'),(4,'I','p15'),(9,'I','p15'),(11,'I','p15'),(19,'I','p15'),(21,'G','p15'),(22,'I','p15'),(24,'I','p15'),(25,'I','p15'),(26,'G','p15'),(4,'G','p16'),(7,'I','p16'),(9,'G','p16'),(10,'I','p16'),(11,'I','p16'),(12,'I','p16'),(15,'I','p16'),(17,'G','p16'),(18,'I','p16'),(20,'I','p16'),(21,'G','p16'),(22,'G','p16'),(27,'G','p16'),(28,'I','p16'),(3,'I','p17'),(9,'I','p17'),(10,'G','p17'),(11,'I','p17'),(15,'I','p17'),(17,'G','p17'),(19,'G','p17'),(20,'G','p17'),(29,'G','p17'),(1,'I','p18'),(2,'G','p18'),(3,'G','p18'),(4,'I','p18'),(6,'G','p18'),(8,'G','p18'),(14,'I','p18'),(21,'I','p18'),(27,'G','p18'),(28,'I','p18'),(29,'I','p18'),(6,'G','p19'),(7,'G','p19'),(9,'I','p19'),(13,'I','p19'),(14,'I','p19'),(15,'I','p19'),(21,'I','p19'),(27,'G','p19'),(29,'I','p19'),(30,'I','p19'),(3,'I','p2'),(7,'I','p2'),(8,'I','p2'),(13,'I','p2'),(21,'I','p2'),(22,'I','p2'),(24,'I','p2'),(26,'G','p2'),(6,'I','p20'),(8,'I','p20'),(11,'I','p20'),(15,'G','p20'),(16,'I','p20'),(19,'I','p20'),(22,'I','p20'),(23,'G','p20'),(24,'I','p20'),(29,'G','p20'),(30,'G','p20'),(4,'I','p21'),(5,'I','p21'),(10,'I','p21'),(14,'G','p21'),(16,'G','p21'),(17,'I','p21'),(18,'I','p21'),(20,'I','p21'),(29,'I','p21'),(30,'I','p21'),(4,'I','p22'),(6,'I','p22'),(7,'I','p22'),(14,'I','p22'),(16,'G','p22'),(18,'G','p22'),(20,'G','p22'),(23,'I','p22'),(28,'G','p22'),(30,'G','p22'),(5,'I','p23'),(6,'I','p23'),(8,'I','p23'),(17,'I','p23'),(18,'I','p23'),(22,'I','p23'),(25,'I','p23'),(28,'I','p23'),(30,'G','p23'),(3,'I','p24'),(7,'G','p24'),(9,'G','p24'),(19,'I','p24'),(20,'I','p24'),(24,'I','p24'),(27,'I','p24'),(30,'I','p24'),(5,'I','p25'),(12,'I','p25'),(14,'I','p25'),(16,'I','p25'),(17,'I','p25'),(19,'I','p25'),(22,'I','p25'),(25,'I','p25'),(26,'G','p25'),(28,'G','p25'),(29,'I','p25'),(7,'I','p26'),(14,'G','p26'),(17,'G','p26'),(26,'I','p26'),(28,'I','p26'),(4,'G','p27'),(5,'G','p27'),(7,'G','p27'),(11,'G','p27'),(12,'G','p27'),(13,'G','p27'),(14,'G','p27'),(20,'I','p27'),(24,'G','p27'),(26,'I','p27'),(28,'I','p27'),(29,'G','p27'),(6,'I','p28'),(9,'G','p28'),(13,'I','p28'),(14,'I','p28'),(16,'I','p28'),(18,'G','p28'),(21,'I','p28'),(27,'G','p28'),(29,'I','p28'),(2,'G','p29'),(10,'G','p29'),(12,'I','p29'),(13,'I','p29'),(15,'G','p29'),(16,'G','p29'),(18,'I','p29'),(19,'G','p29'),(22,'I','p29'),(23,'G','p29'),(24,'G','p29'),(30,'G','p29'),(1,'G','p3'),(2,'I','p3'),(7,'G','p3'),(11,'G','p3'),(12,'G','p3'),(19,'I','p3'),(23,'I','p3'),(25,'G','p3'),(28,'I','p3'),(1,'G','p30'),(5,'G','p30'),(8,'G','p30'),(10,'G','p30'),(12,'I','p30'),(13,'G','p30'),(17,'I','p30'),(25,'G','p30'),(1,'I','p4'),(6,'I','p4'),(11,'G','p4'),(13,'G','p4'),(19,'G','p4'),(23,'G','p4'),(3,'I','p5'),(5,'I','p5'),(9,'I','p5'),(11,'I','p5'),(17,'I','p5'),(23,'I','p5'),(26,'I','p5'),(30,'I','p5'),(2,'I','p6'),(3,'I','p6'),(25,'I','p6'),(1,'G','p7'),(2,'I','p7'),(12,'G','p7'),(13,'I','p7'),(15,'G','p7'),(16,'G','p7'),(21,'G','p7'),(1,'I','p8'),(5,'I','p8'),(6,'G','p8'),(7,'I','p8'),(10,'I','p8'),(18,'G','p8'),(24,'I','p8'),(25,'I','p8'),(27,'I','p8'),(28,'G','p8'),(1,'G','p9'),(7,'I','p9'),(8,'G','p9'),(11,'I','p9'),(15,'G','p9'),(16,'I','p9'),(17,'I','p9'),(22,'G','p9'),(27,'I','p9'),(30,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS108','p1'),('WSS113','p1'),('WSS134','p1'),('WSS149','p1'),('WSS42','p1'),('WSS51','p1'),('WSS58','p1'),('WSS72','p1'),('WSS98','p1'),('WSS100','p10'),('WSS115','p10'),('WSS130','p10'),('WSS137','p10'),('WSS154','p10'),('WSS163','p10'),('WSS168','p10'),('WSS184','p10'),('WSS187','p10'),('WSS191','p10'),('WSS197','p10'),('WSS2','p10'),('WSS36','p10'),('WSS71','p10'),('WSS89','p10'),('WSS96','p10'),('WSS108','p11'),('WSS111','p11'),('WSS118','p11'),('WSS16','p11'),('WSS163','p11'),('WSS189','p11'),('WSS20','p11'),('WSS27','p11'),('WSS34','p11'),('WSS35','p11'),('WSS37','p11'),('WSS49','p11'),('WSS60','p11'),('WSS66','p11'),('WSS92','p11'),('WSS12','p12'),('WSS129','p12'),('WSS135','p12'),('WSS140','p12'),('WSS142','p12'),('WSS15','p12'),('WSS150','p12'),('WSS156','p12'),('WSS164','p12'),('WSS176','p12'),('WSS179','p12'),('WSS199','p12'),('WSS21','p12'),('WSS29','p12'),('WSS42','p12'),('WSS43','p12'),('WSS5','p12'),('WSS65','p12'),('WSS74','p12'),('WSS110','p13'),('WSS120','p13'),('WSS126','p13'),('WSS13','p13'),('WSS26','p13'),('WSS28','p13'),('WSS34','p13'),('WSS43','p13'),('WSS59','p13'),('WSS76','p13'),('WSS89','p13'),('WSS102','p14'),('WSS114','p14'),('WSS160','p14'),('WSS180','p14'),('WSS182','p14'),('WSS192','p14'),('WSS3','p14'),('WSS32','p14'),('WSS38','p14'),('WSS39','p14'),('WSS41','p14'),('WSS67','p14'),('WSS70','p14'),('WSS87','p14'),('WSS106','p15'),('WSS109','p15'),('WSS12','p15'),('WSS153','p15'),('WSS167','p15'),('WSS54','p15'),('WSS58','p15'),('WSS132','p16'),('WSS136','p16'),('WSS14','p16'),('WSS31','p16'),('WSS48','p16'),('WSS55','p16'),('WSS62','p16'),('WSS66','p16'),('WSS78','p16'),('WSS94','p16'),('WSS115','p17'),('WSS116','p17'),('WSS121','p17'),('WSS122','p17'),('WSS129','p17'),('WSS14','p17'),('WSS143','p17'),('WSS148','p17'),('WSS159','p17'),('WSS166','p17'),('WSS183','p17'),('WSS45','p17'),('WSS47','p17'),('WSS64','p17'),('WSS9','p17'),('WSS95','p17'),('WSS133','p18'),('WSS137','p18'),('WSS139','p18'),('WSS155','p18'),('WSS161','p18'),('WSS162','p18'),('WSS174','p18'),('WSS200','p18'),('WSS24','p18'),('WSS25','p18'),('WSS37','p18'),('WSS46','p18'),('WSS50','p18'),('WSS52','p18'),('WSS63','p18'),('WSS70','p18'),('WSS8','p18'),('WSS86','p18'),('WSS142','p19'),('WSS179','p19'),('WSS18','p19'),('WSS195','p19'),('WSS75','p19'),('WSS84','p19'),('WSS1','p2'),('WSS124','p2'),('WSS138','p2'),('WSS146','p2'),('WSS149','p2'),('WSS180','p2'),('WSS184','p2'),('WSS198','p2'),('WSS25','p2'),('WSS47','p2'),('WSS80','p2'),('WSS93','p2'),('WSS10','p20'),('WSS113','p20'),('WSS119','p20'),('WSS135','p20'),('WSS140','p20'),('WSS152','p20'),('WSS167','p20'),('WSS172','p20'),('WSS175','p20'),('WSS178','p20'),('WSS18','p20'),('WSS188','p20'),('WSS19','p20'),('WSS196','p20'),('WSS23','p20'),('WSS30','p20'),('WSS88','p20'),('WSS1','p21'),('WSS116','p21'),('WSS130','p21'),('WSS143','p21'),('WSS145','p21'),('WSS165','p21'),('WSS192','p21'),('WSS63','p21'),('WSS68','p21'),('WSS83','p21'),('WSS103','p22'),('WSS112','p22'),('WSS122','p22'),('WSS125','p22'),('WSS128','p22'),('WSS145','p22'),('WSS152','p22'),('WSS156','p22'),('WSS158','p22'),('WSS188','p22'),('WSS45','p22'),('WSS48','p22'),('WSS53','p22'),('WSS54','p22'),('WSS55','p22'),('WSS56','p22'),('WSS91','p22'),('WSS111','p23'),('WSS124','p23'),('WSS162','p23'),('WSS170','p23'),('WSS177','p23'),('WSS186','p23'),('WSS189','p23'),('WSS22','p23'),('WSS41','p23'),('WSS77','p23'),('WSS85','p23'),('WSS94','p23'),('WSS123','p24'),('WSS173','p24'),('WSS182','p24'),('WSS197','p24'),('WSS21','p24'),('WSS3','p24'),('WSS109','p25'),('WSS125','p25'),('WSS175','p25'),('WSS23','p25'),('WSS36','p25'),('WSS62','p25'),('WSS74','p25'),('WSS79','p25'),('WSS83','p25'),('WSS96','p25'),('WSS101','p26'),('WSS102','p26'),('WSS119','p26'),('WSS127','p26'),('WSS131','p26'),('WSS144','p26'),('WSS174','p26'),('WSS193','p26'),('WSS30','p26'),('WSS11','p27'),('WSS117','p27'),('WSS120','p27'),('WSS151','p27'),('WSS164','p27'),('WSS178','p27'),('WSS19','p27'),('WSS20','p27'),('WSS33','p27'),('WSS35','p27'),('WSS69','p27'),('WSS71','p27'),('WSS73','p27'),('WSS79','p27'),('WSS9','p27'),('WSS112','p28'),('WSS114','p28'),('WSS13','p28'),('WSS131','p28'),('WSS173','p28'),('WSS195','p28'),('WSS29','p28'),('WSS52','p28'),('WSS84','p28'),('WSS85','p28'),('WSS86','p28'),('WSS88','p28'),('WSS92','p28'),('WSS105','p29'),('WSS127','p29'),('WSS134','p29'),('WSS166','p29'),('WSS171','p29'),('WSS196','p29'),('WSS198','p29'),('WSS199','p29'),('WSS46','p29'),('WSS5','p29'),('WSS64','p29'),('WSS7','p29'),('WSS73','p29'),('WSS81','p29'),('WSS99','p29'),('WSS107','p3'),('WSS11','p3'),('WSS121','p3'),('WSS128','p3'),('WSS132','p3'),('WSS144','p3'),('WSS155','p3'),('WSS16','p3'),('WSS171','p3'),('WSS26','p3'),('WSS38','p3'),('WSS4','p3'),('WSS40','p3'),('WSS51','p3'),('WSS6','p3'),('WSS65','p3'),('WSS82','p3'),('WSS90','p3'),('WSS97','p3'),('WSS104','p30'),('WSS136','p30'),('WSS160','p30'),('WSS17','p30'),('WSS170','p30'),('WSS181','p30'),('WSS187','p30'),('WSS191','p30'),('WSS194','p30'),('WSS56','p30'),('WSS61','p30'),('WSS72','p30'),('WSS80','p30'),('WSS97','p30'),('WSS141','p4'),('WSS146','p4'),('WSS158','p4'),('WSS169','p4'),('WSS172','p4'),('WSS183','p4'),('WSS190','p4'),('WSS53','p4'),('WSS67','p4'),('WSS77','p4'),('WSS78','p4'),('WSS93','p4'),('WSS10','p5'),('WSS101','p5'),('WSS106','p5'),('WSS107','p5'),('WSS117','p5'),('WSS118','p5'),('WSS161','p5'),('WSS181','p5'),('WSS185','p5'),('WSS33','p5'),('WSS39','p5'),('WSS68','p5'),('WSS90','p5'),('WSS91','p5'),('WSS99','p5'),('WSS105','p6'),('WSS139','p6'),('WSS153','p6'),('WSS154','p6'),('WSS157','p6'),('WSS165','p6'),('WSS169','p6'),('WSS17','p6'),('WSS190','p6'),('WSS194','p6'),('WSS200','p6'),('WSS24','p6'),('WSS32','p6'),('WSS59','p6'),('WSS75','p6'),('WSS82','p6'),('WSS103','p7'),('WSS126','p7'),('WSS133','p7'),('WSS138','p7'),('WSS157','p7'),('WSS176','p7'),('WSS193','p7'),('WSS22','p7'),('WSS27','p7'),('WSS44','p7'),('WSS61','p7'),('WSS7','p7'),('WSS95','p7'),('WSS110','p8'),('WSS123','p8'),('WSS141','p8'),('WSS147','p8'),('WSS148','p8'),('WSS151','p8'),('WSS159','p8'),('WSS177','p8'),('WSS2','p8'),('WSS31','p8'),('WSS4','p8'),('WSS57','p8'),('WSS76','p8'),('WSS8','p8'),('WSS81','p8'),('WSS98','p8'),('WSS104','p9'),('WSS147','p9'),('WSS15','p9'),('WSS150','p9'),('WSS168','p9'),('WSS185','p9'),('WSS186','p9'),('WSS44','p9'),('WSS57','p9'),('WSS6','p9'),('WSS69','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS1','p1'),('WSS10','p1'),('WSS106','p1'),('WSS107','p1'),('WSS11','p1'),('WSS110','p1'),('WSS111','p1'),('WSS112','p1'),('WSS122','p1'),('WSS124','p1'),('WSS13','p1'),('WSS137','p1'),('WSS139','p1'),('WSS140','p1'),('WSS151','p1'),('WSS155','p1'),('WSS164','p1'),('WSS168','p1'),('WSS174','p1'),('WSS180','p1'),('WSS191','p1'),('WSS192','p1'),('WSS3','p1'),('WSS36','p1'),('WSS39','p1'),('WSS4','p1'),('WSS41','p1'),('WSS48','p1'),('WSS49','p1'),('WSS55','p1'),('WSS59','p1'),('WSS69','p1'),('WSS71','p1'),('WSS73','p1'),('WSS74','p1'),('WSS75','p1'),('WSS78','p1'),('WSS81','p1'),('WSS86','p1'),('WSS88','p1'),('WSS93','p1'),('WSS1','p10'),('WSS117','p10'),('WSS119','p10'),('WSS120','p10'),('WSS121','p10'),('WSS124','p10'),('WSS128','p10'),('WSS133','p10'),('WSS138','p10'),('WSS139','p10'),('WSS140','p10'),('WSS141','p10'),('WSS144','p10'),('WSS147','p10'),('WSS150','p10'),('WSS155','p10'),('WSS168','p10'),('WSS171','p10'),('WSS179','p10'),('WSS18','p10'),('WSS182','p10'),('WSS192','p10'),('WSS193','p10'),('WSS200','p10'),('WSS23','p10'),('WSS24','p10'),('WSS27','p10'),('WSS3','p10'),('WSS31','p10'),('WSS33','p10'),('WSS38','p10'),('WSS40','p10'),('WSS5','p10'),('WSS55','p10'),('WSS56','p10'),('WSS63','p10'),('WSS64','p10'),('WSS72','p10'),('WSS74','p10'),('WSS75','p10'),('WSS77','p10'),('WSS94','p10'),('WSS96','p10'),('WSS99','p10'),('WSS103','p11'),('WSS105','p11'),('WSS110','p11'),('WSS115','p11'),('WSS117','p11'),('WSS12','p11'),('WSS123','p11'),('WSS130','p11'),('WSS131','p11'),('WSS139','p11'),('WSS14','p11'),('WSS145','p11'),('WSS149','p11'),('WSS157','p11'),('WSS158','p11'),('WSS159','p11'),('WSS161','p11'),('WSS166','p11'),('WSS169','p11'),('WSS17','p11'),('WSS173','p11'),('WSS175','p11'),('WSS177','p11'),('WSS178','p11'),('WSS180','p11'),('WSS183','p11'),('WSS184','p11'),('WSS189','p11'),('WSS191','p11'),('WSS195','p11'),('WSS199','p11'),('WSS22','p11'),('WSS26','p11'),('WSS27','p11'),('WSS32','p11'),('WSS36','p11'),('WSS47','p11'),('WSS49','p11'),('WSS52','p11'),('WSS57','p11'),('WSS64','p11'),('WSS70','p11'),('WSS74','p11'),('WSS79','p11'),('WSS80','p11'),('WSS81','p11'),('WSS83','p11'),('WSS86','p11'),('WSS89','p11'),('WSS9','p11'),('WSS91','p11'),('WSS92','p11'),('WSS98','p11'),('WSS99','p11'),('WSS102','p12'),('WSS105','p12'),('WSS106','p12'),('WSS107','p12'),('WSS120','p12'),('WSS121','p12'),('WSS124','p12'),('WSS125','p12'),('WSS132','p12'),('WSS136','p12'),('WSS140','p12'),('WSS141','p12'),('WSS143','p12'),('WSS145','p12'),('WSS155','p12'),('WSS156','p12'),('WSS157','p12'),('WSS161','p12'),('WSS165','p12'),('WSS168','p12'),('WSS17','p12'),('WSS18','p12'),('WSS180','p12'),('WSS194','p12'),('WSS199','p12'),('WSS20','p12'),('WSS200','p12'),('WSS23','p12'),('WSS24','p12'),('WSS31','p12'),('WSS32','p12'),('WSS35','p12'),('WSS36','p12'),('WSS38','p12'),('WSS42','p12'),('WSS46','p12'),('WSS48','p12'),('WSS51','p12'),('WSS7','p12'),('WSS76','p12'),('WSS83','p12'),('WSS89','p12'),('WSS94','p12'),('WSS95','p12'),('WSS96','p12'),('WSS10','p13'),('WSS105','p13'),('WSS106','p13'),('WSS112','p13'),('WSS113','p13'),('WSS114','p13'),('WSS115','p13'),('WSS120','p13'),('WSS125','p13'),('WSS132','p13'),('WSS140','p13'),('WSS145','p13'),('WSS149','p13'),('WSS153','p13'),('WSS16','p13'),('WSS160','p13'),('WSS161','p13'),('WSS165','p13'),('WSS17','p13'),('WSS173','p13'),('WSS174','p13'),('WSS175','p13'),('WSS181','p13'),('WSS183','p13'),('WSS185','p13'),('WSS194','p13'),('WSS196','p13'),('WSS2','p13'),('WSS23','p13'),('WSS25','p13'),('WSS27','p13'),('WSS29','p13'),('WSS3','p13'),('WSS32','p13'),('WSS35','p13'),('WSS4','p13'),('WSS43','p13'),('WSS46','p13'),('WSS47','p13'),('WSS52','p13'),('WSS6','p13'),('WSS61','p13'),('WSS68','p13'),('WSS69','p13'),('WSS72','p13'),('WSS76','p13'),('WSS81','p13'),('WSS82','p13'),('WSS85','p13'),('WSS86','p13'),('WSS88','p13'),('WSS92','p13'),('WSS94','p13'),('WSS98','p13'),('WSS101','p14'),('WSS103','p14'),('WSS104','p14'),('WSS105','p14'),('WSS108','p14'),('WSS11','p14'),('WSS111','p14'),('WSS112','p14'),('WSS123','p14'),('WSS125','p14'),('WSS127','p14'),('WSS130','p14'),('WSS133','p14'),('WSS134','p14'),('WSS137','p14'),('WSS138','p14'),('WSS14','p14'),('WSS140','p14'),('WSS142','p14'),('WSS143','p14'),('WSS144','p14'),('WSS147','p14'),('WSS152','p14'),('WSS159','p14'),('WSS16','p14'),('WSS164','p14'),('WSS169','p14'),('WSS177','p14'),('WSS178','p14'),('WSS192','p14'),('WSS193','p14'),('WSS194','p14'),('WSS2','p14'),('WSS21','p14'),('WSS22','p14'),('WSS35','p14'),('WSS41','p14'),('WSS43','p14'),('WSS5','p14'),('WSS50','p14'),('WSS52','p14'),('WSS56','p14'),('WSS59','p14'),('WSS62','p14'),('WSS63','p14'),('WSS65','p14'),('WSS67','p14'),('WSS7','p14'),('WSS71','p14'),('WSS75','p14'),('WSS8','p14'),('WSS80','p14'),('WSS82','p14'),('WSS9','p14'),('WSS90','p14'),('WSS93','p14'),('WSS99','p14'),('WSS1','p15'),('WSS100','p15'),('WSS103','p15'),('WSS107','p15'),('WSS109','p15'),('WSS110','p15'),('WSS114','p15'),('WSS118','p15'),('WSS12','p15'),('WSS120','p15'),('WSS126','p15'),('WSS127','p15'),('WSS129','p15'),('WSS13','p15'),('WSS135','p15'),('WSS136','p15'),('WSS141','p15'),('WSS148','p15'),('WSS152','p15'),('WSS153','p15'),('WSS159','p15'),('WSS16','p15'),('WSS162','p15'),('WSS170','p15'),('WSS172','p15'),('WSS180','p15'),('WSS186','p15'),('WSS189','p15'),('WSS190','p15'),('WSS200','p15'),('WSS25','p15'),('WSS28','p15'),('WSS29','p15'),('WSS36','p15'),('WSS37','p15'),('WSS39','p15'),('WSS42','p15'),('WSS48','p15'),('WSS54','p15'),('WSS55','p15'),('WSS63','p15'),('WSS7','p15'),('WSS78','p15'),('WSS82','p15'),('WSS84','p15'),('WSS86','p15'),('WSS90','p15'),('WSS96','p15'),('WSS98','p15'),('WSS99','p15'),('WSS100','p16'),('WSS107','p16'),('WSS113','p16'),('WSS117','p16'),('WSS123','p16'),('WSS126','p16'),('WSS129','p16'),('WSS13','p16'),('WSS132','p16'),('WSS137','p16'),('WSS141','p16'),('WSS143','p16'),('WSS146','p16'),('WSS147','p16'),('WSS150','p16'),('WSS154','p16'),('WSS164','p16'),('WSS165','p16'),('WSS167','p16'),('WSS173','p16'),('WSS180','p16'),('WSS186','p16'),('WSS192','p16'),('WSS196','p16'),('WSS32','p16'),('WSS36','p16'),('WSS39','p16'),('WSS40','p16'),('WSS44','p16'),('WSS45','p16'),('WSS47','p16'),('WSS49','p16'),('WSS52','p16'),('WSS56','p16'),('WSS57','p16'),('WSS58','p16'),('WSS59','p16'),('WSS60','p16'),('WSS65','p16'),('WSS66','p16'),('WSS70','p16'),('WSS79','p16'),('WSS83','p16'),('WSS84','p16'),('WSS92','p16'),('WSS95','p16'),('WSS98','p16'),('WSS10','p17'),('WSS101','p17'),('WSS119','p17'),('WSS130','p17'),('WSS133','p17'),('WSS139','p17'),('WSS14','p17'),('WSS141','p17'),('WSS144','p17'),('WSS150','p17'),('WSS154','p17'),('WSS163','p17'),('WSS164','p17'),('WSS170','p17'),('WSS176','p17'),('WSS179','p17'),('WSS181','p17'),('WSS187','p17'),('WSS188','p17'),('WSS196','p17'),('WSS197','p17'),('WSS198','p17'),('WSS26','p17'),('WSS29','p17'),('WSS30','p17'),('WSS32','p17'),('WSS34','p17'),('WSS40','p17'),('WSS48','p17'),('WSS50','p17'),('WSS53','p17'),('WSS56','p17'),('WSS57','p17'),('WSS6','p17'),('WSS60','p17'),('WSS61','p17'),('WSS66','p17'),('WSS69','p17'),('WSS7','p17'),('WSS70','p17'),('WSS71','p17'),('WSS78','p17'),('WSS90','p17'),('WSS101','p18'),('WSS103','p18'),('WSS104','p18'),('WSS106','p18'),('WSS108','p18'),('WSS11','p18'),('WSS110','p18'),('WSS115','p18'),('WSS118','p18'),('WSS119','p18'),('WSS124','p18'),('WSS125','p18'),('WSS141','p18'),('WSS142','p18'),('WSS143','p18'),('WSS146','p18'),('WSS152','p18'),('WSS154','p18'),('WSS156','p18'),('WSS16','p18'),('WSS171','p18'),('WSS18','p18'),('WSS182','p18'),('WSS183','p18'),('WSS193','p18'),('WSS197','p18'),('WSS20','p18'),('WSS23','p18'),('WSS29','p18'),('WSS32','p18'),('WSS33','p18'),('WSS37','p18'),('WSS40','p18'),('WSS44','p18'),('WSS45','p18'),('WSS5','p18'),('WSS51','p18'),('WSS53','p18'),('WSS59','p18'),('WSS6','p18'),('WSS60','p18'),('WSS69','p18'),('WSS76','p18'),('WSS77','p18'),('WSS8','p18'),('WSS85','p18'),('WSS88','p18'),('WSS91','p18'),('WSS95','p18'),('WSS98','p18'),('WSS1','p19'),('WSS101','p19'),('WSS107','p19'),('WSS11','p19'),('WSS112','p19'),('WSS12','p19'),('WSS122','p19'),('WSS124','p19'),('WSS126','p19'),('WSS133','p19'),('WSS135','p19'),('WSS14','p19'),('WSS143','p19'),('WSS146','p19'),('WSS157','p19'),('WSS158','p19'),('WSS162','p19'),('WSS164','p19'),('WSS170','p19'),('WSS172','p19'),('WSS178','p19'),('WSS181','p19'),('WSS183','p19'),('WSS185','p19'),('WSS191','p19'),('WSS194','p19'),('WSS196','p19'),('WSS199','p19'),('WSS200','p19'),('WSS23','p19'),('WSS37','p19'),('WSS38','p19'),('WSS42','p19'),('WSS48','p19'),('WSS52','p19'),('WSS62','p19'),('WSS65','p19'),('WSS67','p19'),('WSS74','p19'),('WSS81','p19'),('WSS84','p19'),('WSS91','p19'),('WSS98','p19'),('WSS102','p2'),('WSS104','p2'),('WSS111','p2'),('WSS112','p2'),('WSS113','p2'),('WSS119','p2'),('WSS130','p2'),('WSS135','p2'),('WSS14','p2'),('WSS141','p2'),('WSS147','p2'),('WSS148','p2'),('WSS149','p2'),('WSS15','p2'),('WSS150','p2'),('WSS155','p2'),('WSS158','p2'),('WSS165','p2'),('WSS166','p2'),('WSS173','p2'),('WSS174','p2'),('WSS175','p2'),('WSS18','p2'),('WSS184','p2'),('WSS187','p2'),('WSS194','p2'),('WSS197','p2'),('WSS28','p2'),('WSS39','p2'),('WSS4','p2'),('WSS43','p2'),('WSS46','p2'),('WSS53','p2'),('WSS55','p2'),('WSS6','p2'),('WSS61','p2'),('WSS63','p2'),('WSS7','p2'),('WSS70','p2'),('WSS71','p2'),('WSS76','p2'),('WSS77','p2'),('WSS80','p2'),('WSS86','p2'),('WSS96','p2'),('WSS97','p2'),('WSS1','p20'),('WSS108','p20'),('WSS109','p20'),('WSS112','p20'),('WSS116','p20'),('WSS117','p20'),('WSS121','p20'),('WSS124','p20'),('WSS140','p20'),('WSS145','p20'),('WSS148','p20'),('WSS149','p20'),('WSS157','p20'),('WSS166','p20'),('WSS167','p20'),('WSS17','p20'),('WSS177','p20'),('WSS179','p20'),('WSS18','p20'),('WSS182','p20'),('WSS186','p20'),('WSS191','p20'),('WSS196','p20'),('WSS2','p20'),('WSS28','p20'),('WSS29','p20'),('WSS31','p20'),('WSS34','p20'),('WSS41','p20'),('WSS44','p20'),('WSS47','p20'),('WSS58','p20'),('WSS59','p20'),('WSS62','p20'),('WSS77','p20'),('WSS78','p20'),('WSS79','p20'),('WSS87','p20'),('WSS88','p20'),('WSS9','p20'),('WSS90','p20'),('WSS95','p20'),('WSS99','p20'),('WSS10','p21'),('WSS100','p21'),('WSS104','p21'),('WSS105','p21'),('WSS11','p21'),('WSS116','p21'),('WSS122','p21'),('WSS123','p21'),('WSS127','p21'),('WSS129','p21'),('WSS131','p21'),('WSS132','p21'),('WSS133','p21'),('WSS137','p21'),('WSS14','p21'),('WSS15','p21'),('WSS150','p21'),('WSS152','p21'),('WSS153','p21'),('WSS158','p21'),('WSS163','p21'),('WSS165','p21'),('WSS166','p21'),('WSS171','p21'),('WSS173','p21'),('WSS174','p21'),('WSS176','p21'),('WSS187','p21'),('WSS19','p21'),('WSS193','p21'),('WSS194','p21'),('WSS195','p21'),('WSS197','p21'),('WSS198','p21'),('WSS22','p21'),('WSS27','p21'),('WSS31','p21'),('WSS33','p21'),('WSS39','p21'),('WSS40','p21'),('WSS42','p21'),('WSS50','p21'),('WSS51','p21'),('WSS65','p21'),('WSS67','p21'),('WSS69','p21'),('WSS70','p21'),('WSS82','p21'),('WSS83','p21'),('WSS99','p21'),('WSS101','p22'),('WSS102','p22'),('WSS118','p22'),('WSS119','p22'),('WSS12','p22'),('WSS122','p22'),('WSS127','p22'),('WSS131','p22'),('WSS132','p22'),('WSS134','p22'),('WSS137','p22'),('WSS146','p22'),('WSS15','p22'),('WSS160','p22'),('WSS162','p22'),('WSS165','p22'),('WSS17','p22'),('WSS181','p22'),('WSS183','p22'),('WSS186','p22'),('WSS193','p22'),('WSS194','p22'),('WSS197','p22'),('WSS198','p22'),('WSS21','p22'),('WSS24','p22'),('WSS27','p22'),('WSS3','p22'),('WSS32','p22'),('WSS4','p22'),('WSS40','p22'),('WSS45','p22'),('WSS48','p22'),('WSS55','p22'),('WSS58','p22'),('WSS64','p22'),('WSS7','p22'),('WSS71','p22'),('WSS9','p22'),('WSS93','p22'),('WSS96','p22'),('WSS113','p23'),('WSS119','p23'),('WSS121','p23'),('WSS136','p23'),('WSS138','p23'),('WSS139','p23'),('WSS14','p23'),('WSS147','p23'),('WSS151','p23'),('WSS154','p23'),('WSS156','p23'),('WSS160','p23'),('WSS162','p23'),('WSS167','p23'),('WSS169','p23'),('WSS173','p23'),('WSS182','p23'),('WSS184','p23'),('WSS188','p23'),('WSS19','p23'),('WSS190','p23'),('WSS193','p23'),('WSS199','p23'),('WSS26','p23'),('WSS28','p23'),('WSS40','p23'),('WSS41','p23'),('WSS43','p23'),('WSS44','p23'),('WSS45','p23'),('WSS46','p23'),('WSS47','p23'),('WSS58','p23'),('WSS6','p23'),('WSS64','p23'),('WSS65','p23'),('WSS68','p23'),('WSS71','p23'),('WSS72','p23'),('WSS8','p23'),('WSS81','p23'),('WSS82','p23'),('WSS85','p23'),('WSS88','p23'),('WSS91','p23'),('WSS92','p23'),('WSS96','p23'),('WSS10','p24'),('WSS100','p24'),('WSS108','p24'),('WSS110','p24'),('WSS114','p24'),('WSS127','p24'),('WSS128','p24'),('WSS13','p24'),('WSS133','p24'),('WSS135','p24'),('WSS137','p24'),('WSS138','p24'),('WSS14','p24'),('WSS145','p24'),('WSS156','p24'),('WSS16','p24'),('WSS169','p24'),('WSS175','p24'),('WSS18','p24'),('WSS184','p24'),('WSS185','p24'),('WSS190','p24'),('WSS20','p24'),('WSS33','p24'),('WSS35','p24'),('WSS37','p24'),('WSS42','p24'),('WSS44','p24'),('WSS46','p24'),('WSS49','p24'),('WSS50','p24'),('WSS51','p24'),('WSS54','p24'),('WSS57','p24'),('WSS60','p24'),('WSS63','p24'),('WSS64','p24'),('WSS66','p24'),('WSS83','p24'),('WSS87','p24'),('WSS9','p24'),('WSS91','p24'),('WSS92','p24'),('WSS93','p24'),('WSS95','p24'),('WSS96','p24'),('WSS97','p24'),('WSS101','p25'),('WSS108','p25'),('WSS109','p25'),('WSS114','p25'),('WSS116','p25'),('WSS117','p25'),('WSS118','p25'),('WSS123','p25'),('WSS130','p25'),('WSS143','p25'),('WSS150','p25'),('WSS151','p25'),('WSS152','p25'),('WSS156','p25'),('WSS161','p25'),('WSS180','p25'),('WSS189','p25'),('WSS190','p25'),('WSS2','p25'),('WSS200','p25'),('WSS25','p25'),('WSS3','p25'),('WSS30','p25'),('WSS4','p25'),('WSS41','p25'),('WSS49','p25'),('WSS50','p25'),('WSS54','p25'),('WSS65','p25'),('WSS68','p25'),('WSS74','p25'),('WSS75','p25'),('WSS79','p25'),('WSS98','p25'),('WSS104','p26'),('WSS11','p26'),('WSS111','p26'),('WSS113','p26'),('WSS118','p26'),('WSS134','p26'),('WSS136','p26'),('WSS138','p26'),('WSS142','p26'),('WSS149','p26'),('WSS152','p26'),('WSS153','p26'),('WSS155','p26'),('WSS159','p26'),('WSS16','p26'),('WSS160','p26'),('WSS162','p26'),('WSS163','p26'),('WSS169','p26'),('WSS170','p26'),('WSS171','p26'),('WSS172','p26'),('WSS185','p26'),('WSS189','p26'),('WSS19','p26'),('WSS190','p26'),('WSS191','p26'),('WSS195','p26'),('WSS198','p26'),('WSS2','p26'),('WSS20','p26'),('WSS27','p26'),('WSS42','p26'),('WSS55','p26'),('WSS62','p26'),('WSS64','p26'),('WSS76','p26'),('WSS79','p26'),('WSS8','p26'),('WSS80','p26'),('WSS82','p26'),('WSS84','p26'),('WSS85','p26'),('WSS87','p26'),('WSS88','p26'),('WSS100','p27'),('WSS102','p27'),('WSS107','p27'),('WSS109','p27'),('WSS115','p27'),('WSS123','p27'),('WSS125','p27'),('WSS129','p27'),('WSS13','p27'),('WSS131','p27'),('WSS142','p27'),('WSS143','p27'),('WSS147','p27'),('WSS148','p27'),('WSS149','p27'),('WSS15','p27'),('WSS152','p27'),('WSS153','p27'),('WSS154','p27'),('WSS166','p27'),('WSS167','p27'),('WSS173','p27'),('WSS175','p27'),('WSS186','p27'),('WSS187','p27'),('WSS189','p27'),('WSS19','p27'),('WSS191','p27'),('WSS197','p27'),('WSS2','p27'),('WSS22','p27'),('WSS26','p27'),('WSS28','p27'),('WSS30','p27'),('WSS50','p27'),('WSS54','p27'),('WSS59','p27'),('WSS60','p27'),('WSS61','p27'),('WSS63','p27'),('WSS66','p27'),('WSS7','p27'),('WSS73','p27'),('WSS80','p27'),('WSS82','p27'),('WSS83','p27'),('WSS89','p27'),('WSS91','p27'),('WSS94','p27'),('WSS97','p27'),('WSS101','p28'),('WSS102','p28'),('WSS103','p28'),('WSS106','p28'),('WSS11','p28'),('WSS111','p28'),('WSS115','p28'),('WSS117','p28'),('WSS118','p28'),('WSS119','p28'),('WSS12','p28'),('WSS122','p28'),('WSS126','p28'),('WSS128','p28'),('WSS139','p28'),('WSS146','p28'),('WSS150','p28'),('WSS151','p28'),('WSS154','p28'),('WSS157','p28'),('WSS161','p28'),('WSS164','p28'),('WSS168','p28'),('WSS176','p28'),('WSS18','p28'),('WSS186','p28'),('WSS188','p28'),('WSS189','p28'),('WSS198','p28'),('WSS199','p28'),('WSS27','p28'),('WSS31','p28'),('WSS33','p28'),('WSS35','p28'),('WSS39','p28'),('WSS4','p28'),('WSS41','p28'),('WSS43','p28'),('WSS48','p28'),('WSS51','p28'),('WSS53','p28'),('WSS57','p28'),('WSS58','p28'),('WSS6','p28'),('WSS64','p28'),('WSS68','p28'),('WSS70','p28'),('WSS73','p28'),('WSS79','p28'),('WSS85','p28'),('WSS87','p28'),('WSS89','p28'),('WSS9','p28'),('WSS95','p28'),('WSS97','p28'),('WSS1','p29'),('WSS10','p29'),('WSS125','p29'),('WSS128','p29'),('WSS129','p29'),('WSS131','p29'),('WSS136','p29'),('WSS138','p29'),('WSS142','p29'),('WSS144','p29'),('WSS148','p29'),('WSS153','p29'),('WSS155','p29'),('WSS157','p29'),('WSS165','p29'),('WSS167','p29'),('WSS172','p29'),('WSS177','p29'),('WSS178','p29'),('WSS181','p29'),('WSS184','p29'),('WSS19','p29'),('WSS198','p29'),('WSS200','p29'),('WSS22','p29'),('WSS23','p29'),('WSS24','p29'),('WSS25','p29'),('WSS33','p29'),('WSS34','p29'),('WSS38','p29'),('WSS4','p29'),('WSS41','p29'),('WSS42','p29'),('WSS43','p29'),('WSS44','p29'),('WSS45','p29'),('WSS54','p29'),('WSS59','p29'),('WSS70','p29'),('WSS84','p29'),('WSS86','p29'),('WSS92','p29'),('WSS95','p29'),('WSS97','p29'),('WSS99','p29'),('WSS101','p3'),('WSS104','p3'),('WSS105','p3'),('WSS106','p3'),('WSS109','p3'),('WSS110','p3'),('WSS114','p3'),('WSS116','p3'),('WSS117','p3'),('WSS118','p3'),('WSS12','p3'),('WSS121','p3'),('WSS123','p3'),('WSS124','p3'),('WSS128','p3'),('WSS13','p3'),('WSS145','p3'),('WSS158','p3'),('WSS159','p3'),('WSS161','p3'),('WSS163','p3'),('WSS168','p3'),('WSS173','p3'),('WSS174','p3'),('WSS177','p3'),('WSS180','p3'),('WSS185','p3'),('WSS196','p3'),('WSS37','p3'),('WSS4','p3'),('WSS46','p3'),('WSS50','p3'),('WSS53','p3'),('WSS61','p3'),('WSS62','p3'),('WSS63','p3'),('WSS68','p3'),('WSS75','p3'),('WSS78','p3'),('WSS88','p3'),('WSS1','p30'),('WSS100','p30'),('WSS104','p30'),('WSS112','p30'),('WSS113','p30'),('WSS115','p30'),('WSS116','p30'),('WSS12','p30'),('WSS125','p30'),('WSS126','p30'),('WSS127','p30'),('WSS13','p30'),('WSS131','p30'),('WSS132','p30'),('WSS134','p30'),('WSS140','p30'),('WSS144','p30'),('WSS149','p30'),('WSS157','p30'),('WSS164','p30'),('WSS166','p30'),('WSS169','p30'),('WSS171','p30'),('WSS178','p30'),('WSS179','p30'),('WSS180','p30'),('WSS185','p30'),('WSS187','p30'),('WSS190','p30'),('WSS191','p30'),('WSS192','p30'),('WSS198','p30'),('WSS20','p30'),('WSS21','p30'),('WSS23','p30'),('WSS24','p30'),('WSS25','p30'),('WSS27','p30'),('WSS28','p30'),('WSS30','p30'),('WSS37','p30'),('WSS49','p30'),('WSS5','p30'),('WSS55','p30'),('WSS56','p30'),('WSS67','p30'),('WSS73','p30'),('WSS77','p30'),('WSS78','p30'),('WSS79','p30'),('WSS8','p30'),('WSS85','p30'),('WSS89','p30'),('WSS90','p30'),('WSS93','p30'),('WSS97','p30'),('WSS102','p4'),('WSS112','p4'),('WSS118','p4'),('WSS120','p4'),('WSS121','p4'),('WSS122','p4'),('WSS125','p4'),('WSS128','p4'),('WSS130','p4'),('WSS131','p4'),('WSS132','p4'),('WSS135','p4'),('WSS137','p4'),('WSS147','p4'),('WSS148','p4'),('WSS15','p4'),('WSS151','p4'),('WSS161','p4'),('WSS162','p4'),('WSS163','p4'),('WSS165','p4'),('WSS167','p4'),('WSS168','p4'),('WSS176','p4'),('WSS177','p4'),('WSS178','p4'),('WSS184','p4'),('WSS188','p4'),('WSS19','p4'),('WSS190','p4'),('WSS197','p4'),('WSS200','p4'),('WSS22','p4'),('WSS26','p4'),('WSS3','p4'),('WSS47','p4'),('WSS53','p4'),('WSS55','p4'),('WSS57','p4'),('WSS58','p4'),('WSS62','p4'),('WSS7','p4'),('WSS71','p4'),('WSS72','p4'),('WSS73','p4'),('WSS77','p4'),('WSS85','p4'),('WSS9','p4'),('WSS90','p4'),('WSS92','p4'),('WSS93','p4'),('WSS10','p5'),('WSS100','p5'),('WSS105','p5'),('WSS108','p5'),('WSS110','p5'),('WSS115','p5'),('WSS116','p5'),('WSS13','p5'),('WSS130','p5'),('WSS142','p5'),('WSS145','p5'),('WSS15','p5'),('WSS150','p5'),('WSS156','p5'),('WSS159','p5'),('WSS17','p5'),('WSS170','p5'),('WSS174','p5'),('WSS176','p5'),('WSS179','p5'),('WSS184','p5'),('WSS192','p5'),('WSS193','p5'),('WSS195','p5'),('WSS2','p5'),('WSS22','p5'),('WSS25','p5'),('WSS26','p5'),('WSS30','p5'),('WSS34','p5'),('WSS35','p5'),('WSS45','p5'),('WSS47','p5'),('WSS5','p5'),('WSS52','p5'),('WSS56','p5'),('WSS71','p5'),('WSS73','p5'),('WSS75','p5'),('WSS84','p5'),('WSS89','p5'),('WSS91','p5'),('WSS93','p5'),('WSS95','p5'),('WSS107','p6'),('WSS109','p6'),('WSS111','p6'),('WSS114','p6'),('WSS116','p6'),('WSS117','p6'),('WSS120','p6'),('WSS126','p6'),('WSS134','p6'),('WSS136','p6'),('WSS144','p6'),('WSS146','p6'),('WSS149','p6'),('WSS154','p6'),('WSS155','p6'),('WSS160','p6'),('WSS163','p6'),('WSS166','p6'),('WSS170','p6'),('WSS171','p6'),('WSS172','p6'),('WSS176','p6'),('WSS179','p6'),('WSS181','p6'),('WSS184','p6'),('WSS188','p6'),('WSS194','p6'),('WSS25','p6'),('WSS29','p6'),('WSS3','p6'),('WSS38','p6'),('WSS39','p6'),('WSS47','p6'),('WSS51','p6'),('WSS60','p6'),('WSS65','p6'),('WSS66','p6'),('WSS69','p6'),('WSS70','p6'),('WSS72','p6'),('WSS76','p6'),('WSS81','p6'),('WSS87','p6'),('WSS93','p6'),('WSS94','p6'),('WSS103','p7'),('WSS104','p7'),('WSS106','p7'),('WSS11','p7'),('WSS111','p7'),('WSS113','p7'),('WSS124','p7'),('WSS128','p7'),('WSS129','p7'),('WSS133','p7'),('WSS136','p7'),('WSS144','p7'),('WSS151','p7'),('WSS158','p7'),('WSS16','p7'),('WSS160','p7'),('WSS169','p7'),('WSS170','p7'),('WSS171','p7'),('WSS175','p7'),('WSS179','p7'),('WSS18','p7'),('WSS182','p7'),('WSS185','p7'),('WSS192','p7'),('WSS195','p7'),('WSS196','p7'),('WSS199','p7'),('WSS26','p7'),('WSS29','p7'),('WSS30','p7'),('WSS31','p7'),('WSS33','p7'),('WSS34','p7'),('WSS36','p7'),('WSS39','p7'),('WSS45','p7'),('WSS46','p7'),('WSS5','p7'),('WSS52','p7'),('WSS60','p7'),('WSS66','p7'),('WSS69','p7'),('WSS90','p7'),('WSS94','p7'),('WSS97','p7'),('WSS98','p7'),('WSS10','p8'),('WSS102','p8'),('WSS120','p8'),('WSS121','p8'),('WSS123','p8'),('WSS134','p8'),('WSS138','p8'),('WSS140','p8'),('WSS141','p8'),('WSS144','p8'),('WSS148','p8'),('WSS158','p8'),('WSS159','p8'),('WSS16','p8'),('WSS169','p8'),('WSS17','p8'),('WSS171','p8'),('WSS172','p8'),('WSS188','p8'),('WSS190','p8'),('WSS24','p8'),('WSS31','p8'),('WSS32','p8'),('WSS33','p8'),('WSS34','p8'),('WSS38','p8'),('WSS43','p8'),('WSS46','p8'),('WSS54','p8'),('WSS57','p8'),('WSS59','p8'),('WSS60','p8'),('WSS66','p8'),('WSS67','p8'),('WSS68','p8'),('WSS76','p8'),('WSS8','p8'),('WSS80','p8'),('WSS85','p8'),('WSS87','p8'),('WSS9','p8'),('WSS99','p8'),('WSS100','p9'),('WSS103','p9'),('WSS116','p9'),('WSS120','p9'),('WSS126','p9'),('WSS127','p9'),('WSS129','p9'),('WSS130','p9'),('WSS135','p9'),('WSS136','p9'),('WSS153','p9'),('WSS154','p9'),('WSS156','p9'),('WSS161','p9'),('WSS162','p9'),('WSS164','p9'),('WSS174','p9'),('WSS175','p9'),('WSS178','p9'),('WSS183','p9'),('WSS189','p9'),('WSS195','p9'),('WSS23','p9'),('WSS31','p9'),('WSS5','p9'),('WSS52','p9'),('WSS53','p9'),('WSS61','p9'),('WSS63','p9'),('WSS72','p9'),('WSS76','p9'),('WSS78','p9'),('WSS8','p9'),('WSS83','p9'),('WSS89','p9'),('WSS90','p9'),('WSS91','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS107'),(1,2,'WSS169'),(2,1,'WSS150'),(2,2,'WSS26'),(3,1,'WSS107'),(3,2,'WSS186'),(4,1,'WSS106'),(4,2,'WSS65'),(5,1,'WSS164'),(5,2,'WSS20'),(6,1,'WSS129'),(6,2,'WSS26'),(7,1,'WSS107'),(7,2,'WSS195'),(8,1,'WSS5'),(8,2,'WSS96'),(9,1,'WSS16'),(9,1,'WSS74'),(10,1,'WSS20'),(10,2,'WSS8'),(11,1,'WSS1'),(11,2,'WSS165'),(12,1,'WSS18'),(12,2,'WSS100'),(13,1,'WSS91'),(13,2,'WSS184'),(14,1,'WSS95'),(14,2,'WSS165'),(15,1,'WSS197'),(15,2,'WSS75'),(16,1,'WSS95'),(16,2,'WSS16'),(16,2,'WSS23'),(17,1,'WSS185'),(17,2,'WSS192'),(17,2,'WSS25'),(18,1,'WSS125'),(18,2,'WSS194'),(19,1,'WSS193'),(19,2,'WSS187'),(19,3,'WSS100'),(20,1,'WSS181'),(20,2,'WSS26'),(20,2,'WSS93'),(21,1,'WSS154'),(22,1,'WSS54'),(22,2,'WSS108'),(23,1,'WSS53'),(23,2,'WSS101'),(24,1,'WSS168'),(24,2,'WSS93'),(25,1,'WSS196'),(25,1,'WSS56'),(26,1,'WSS93'),(26,2,'WSS186'),(26,3,'WSS28'),(27,1,'WSS36'),(27,2,'WSS34'),(28,1,'WSS128'),(28,1,'WSS60'),(29,1,'WSS66'),(29,2,'WSS6'),(30,1,'WSS186'),(30,2,'WSS23'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-29  9:43:53
