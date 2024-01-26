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
INSERT INTO `initialgoalparameter` VALUES (3,'G','p1'),(4,'I','p1'),(8,'I','p1'),(9,'I','p1'),(12,'I','p1'),(20,'I','p1'),(25,'I','p1'),(27,'G','p1'),(30,'I','p1'),(1,'I','p10'),(2,'I','p10'),(4,'G','p10'),(7,'G','p10'),(8,'I','p10'),(20,'I','p10'),(21,'I','p10'),(22,'G','p10'),(25,'I','p10'),(26,'I','p10'),(1,'G','p11'),(4,'I','p11'),(10,'G','p11'),(11,'G','p11'),(12,'G','p11'),(13,'I','p11'),(16,'I','p11'),(18,'I','p11'),(20,'I','p11'),(25,'I','p11'),(26,'I','p11'),(2,'I','p12'),(6,'I','p12'),(8,'G','p12'),(11,'I','p12'),(16,'I','p12'),(17,'G','p12'),(18,'I','p12'),(22,'G','p12'),(23,'I','p12'),(27,'G','p12'),(28,'G','p12'),(29,'G','p12'),(30,'G','p12'),(2,'G','p13'),(4,'I','p13'),(5,'G','p13'),(11,'G','p13'),(14,'I','p13'),(15,'I','p13'),(16,'I','p13'),(18,'I','p13'),(19,'I','p13'),(20,'G','p13'),(24,'I','p13'),(29,'G','p13'),(15,'I','p14'),(18,'G','p14'),(19,'G','p14'),(24,'I','p14'),(28,'G','p14'),(29,'I','p14'),(4,'I','p15'),(21,'G','p15'),(26,'I','p15'),(28,'I','p15'),(29,'I','p15'),(30,'G','p15'),(4,'G','p16'),(7,'I','p16'),(9,'G','p16'),(12,'G','p16'),(13,'I','p16'),(15,'G','p16'),(17,'G','p16'),(18,'I','p16'),(21,'I','p16'),(23,'G','p16'),(24,'I','p16'),(26,'I','p16'),(28,'I','p16'),(2,'G','p17'),(7,'I','p17'),(11,'I','p17'),(12,'I','p17'),(13,'G','p17'),(20,'G','p17'),(21,'G','p17'),(23,'I','p17'),(24,'G','p17'),(27,'I','p17'),(1,'I','p18'),(4,'I','p18'),(5,'G','p18'),(9,'G','p18'),(27,'I','p18'),(6,'G','p19'),(8,'I','p19'),(13,'I','p19'),(14,'I','p19'),(17,'I','p19'),(19,'I','p19'),(1,'G','p2'),(3,'I','p2'),(5,'I','p2'),(8,'I','p2'),(9,'I','p2'),(10,'I','p2'),(11,'I','p2'),(16,'I','p2'),(17,'I','p2'),(22,'I','p2'),(23,'G','p2'),(24,'I','p2'),(25,'G','p2'),(29,'I','p2'),(4,'G','p20'),(5,'I','p20'),(6,'I','p20'),(9,'I','p20'),(10,'G','p20'),(11,'I','p20'),(14,'I','p20'),(19,'G','p20'),(21,'I','p20'),(22,'I','p20'),(2,'G','p21'),(3,'I','p21'),(10,'I','p21'),(12,'I','p21'),(13,'G','p21'),(18,'G','p21'),(20,'I','p21'),(21,'I','p21'),(22,'I','p21'),(6,'G','p22'),(8,'G','p22'),(11,'G','p22'),(13,'I','p22'),(14,'G','p22'),(16,'G','p22'),(19,'I','p22'),(20,'G','p22'),(24,'G','p22'),(26,'G','p22'),(6,'I','p23'),(7,'I','p23'),(10,'I','p23'),(12,'I','p23'),(14,'G','p23'),(15,'G','p23'),(17,'G','p23'),(19,'G','p23'),(22,'I','p23'),(26,'G','p23'),(27,'G','p23'),(28,'I','p23'),(30,'I','p23'),(1,'G','p24'),(2,'I','p24'),(5,'G','p24'),(9,'G','p24'),(13,'I','p24'),(19,'I','p24'),(23,'I','p24'),(28,'I','p24'),(1,'I','p25'),(5,'I','p25'),(6,'I','p25'),(10,'G','p25'),(14,'I','p25'),(17,'I','p25'),(19,'G','p25'),(21,'I','p25'),(23,'G','p25'),(25,'G','p25'),(26,'I','p25'),(27,'I','p25'),(28,'I','p25'),(3,'I','p26'),(6,'I','p26'),(7,'G','p26'),(13,'G','p26'),(19,'I','p26'),(21,'G','p26'),(22,'I','p26'),(23,'I','p26'),(25,'I','p26'),(29,'G','p26'),(2,'I','p27'),(6,'G','p27'),(12,'I','p27'),(14,'G','p27'),(16,'G','p27'),(17,'I','p27'),(25,'I','p27'),(4,'G','p28'),(5,'I','p28'),(7,'I','p28'),(15,'G','p28'),(26,'G','p28'),(29,'G','p28'),(2,'I','p29'),(3,'I','p29'),(5,'G','p29'),(8,'G','p29'),(9,'I','p29'),(10,'I','p29'),(14,'G','p29'),(15,'I','p29'),(16,'I','p29'),(19,'I','p29'),(22,'G','p29'),(23,'G','p29'),(24,'G','p29'),(28,'G','p29'),(30,'I','p29'),(1,'I','p3'),(3,'I','p3'),(5,'I','p3'),(7,'G','p3'),(8,'G','p3'),(11,'I','p3'),(12,'I','p3'),(17,'G','p3'),(18,'G','p3'),(25,'I','p3'),(30,'I','p3'),(1,'G','p30'),(2,'I','p30'),(3,'G','p30'),(8,'I','p30'),(10,'G','p30'),(11,'I','p30'),(13,'I','p30'),(15,'I','p30'),(20,'I','p30'),(24,'I','p30'),(25,'G','p30'),(26,'G','p30'),(27,'G','p30'),(28,'G','p30'),(30,'I','p30'),(4,'I','p4'),(16,'G','p4'),(21,'I','p4'),(30,'G','p4'),(2,'G','p5'),(3,'I','p5'),(13,'G','p5'),(14,'I','p5'),(15,'I','p5'),(20,'G','p5'),(23,'I','p5'),(24,'G','p5'),(25,'G','p5'),(27,'I','p5'),(29,'I','p5'),(1,'I','p6'),(7,'G','p6'),(9,'G','p6'),(15,'I','p6'),(17,'I','p6'),(23,'I','p6'),(28,'I','p6'),(3,'G','p7'),(10,'I','p7'),(12,'G','p7'),(14,'I','p7'),(16,'I','p7'),(18,'G','p7'),(21,'G','p7'),(22,'I','p7'),(26,'I','p7'),(30,'G','p7'),(3,'G','p8'),(5,'I','p8'),(6,'G','p8'),(7,'I','p8'),(9,'I','p8'),(10,'I','p8'),(11,'G','p8'),(15,'G','p8'),(16,'G','p8'),(18,'I','p8'),(22,'G','p8'),(24,'I','p8'),(27,'I','p8'),(29,'I','p8'),(30,'I','p8'),(1,'I','p9'),(6,'I','p9'),(7,'I','p9'),(8,'I','p9'),(9,'I','p9'),(12,'G','p9'),(17,'I','p9'),(18,'I','p9'),(20,'I','p9'),(27,'I','p9'),(29,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS116','p1'),('WSS117','p1'),('WSS126','p1'),('WSS140','p1'),('WSS150','p1'),('WSS158','p1'),('WSS167','p1'),('WSS170','p1'),('WSS177','p1'),('WSS183','p1'),('WSS35','p1'),('WSS50','p1'),('WSS55','p1'),('WSS65','p1'),('WSS7','p1'),('WSS79','p1'),('WSS81','p1'),('WSS85','p1'),('WSS93','p1'),('WSS107','p10'),('WSS123','p10'),('WSS134','p10'),('WSS14','p10'),('WSS185','p10'),('WSS196','p10'),('WSS21','p10'),('WSS3','p10'),('WSS78','p10'),('WSS80','p10'),('WSS91','p10'),('WSS118','p11'),('WSS130','p11'),('WSS147','p11'),('WSS149','p11'),('WSS166','p11'),('WSS174','p11'),('WSS33','p11'),('WSS48','p11'),('WSS60','p11'),('WSS69','p11'),('WSS75','p11'),('WSS8','p11'),('WSS109','p12'),('WSS139','p12'),('WSS181','p12'),('WSS198','p12'),('WSS24','p12'),('WSS37','p12'),('WSS5','p12'),('WSS59','p12'),('WSS78','p12'),('WSS101','p13'),('WSS115','p13'),('WSS155','p13'),('WSS163','p13'),('WSS178','p13'),('WSS179','p13'),('WSS182','p13'),('WSS190','p13'),('WSS193','p13'),('WSS199','p13'),('WSS37','p13'),('WSS40','p13'),('WSS72','p13'),('WSS73','p13'),('WSS74','p13'),('WSS93','p13'),('WSS135','p14'),('WSS161','p14'),('WSS178','p14'),('WSS19','p14'),('WSS196','p14'),('WSS200','p14'),('WSS23','p14'),('WSS48','p14'),('WSS51','p14'),('WSS83','p14'),('WSS104','p15'),('WSS16','p15'),('WSS168','p15'),('WSS30','p15'),('WSS31','p15'),('WSS39','p15'),('WSS57','p15'),('WSS62','p15'),('WSS65','p15'),('WSS70','p15'),('WSS75','p15'),('WSS90','p15'),('WSS97','p15'),('WSS111','p16'),('WSS112','p16'),('WSS120','p16'),('WSS139','p16'),('WSS15','p16'),('WSS152','p16'),('WSS164','p16'),('WSS20','p16'),('WSS22','p16'),('WSS35','p16'),('WSS36','p16'),('WSS41','p16'),('WSS47','p16'),('WSS87','p16'),('WSS102','p17'),('WSS105','p17'),('WSS13','p17'),('WSS21','p17'),('WSS27','p17'),('WSS28','p17'),('WSS136','p18'),('WSS148','p18'),('WSS153','p18'),('WSS184','p18'),('WSS193','p18'),('WSS54','p18'),('WSS57','p18'),('WSS80','p18'),('WSS90','p18'),('WSS106','p19'),('WSS108','p19'),('WSS130','p19'),('WSS162','p19'),('WSS163','p19'),('WSS62','p19'),('WSS64','p19'),('WSS98','p19'),('WSS10','p2'),('WSS104','p2'),('WSS114','p2'),('WSS12','p2'),('WSS14','p2'),('WSS140','p2'),('WSS143','p2'),('WSS159','p2'),('WSS190','p2'),('WSS195','p2'),('WSS61','p2'),('WSS63','p2'),('WSS83','p2'),('WSS94','p2'),('WSS125','p20'),('WSS169','p20'),('WSS189','p20'),('WSS25','p20'),('WSS27','p20'),('WSS38','p20'),('WSS63','p20'),('WSS67','p20'),('WSS114','p21'),('WSS142','p21'),('WSS17','p21'),('WSS181','p21'),('WSS188','p21'),('WSS195','p21'),('WSS2','p21'),('WSS200','p21'),('WSS40','p21'),('WSS6','p21'),('WSS64','p21'),('WSS68','p21'),('WSS69','p21'),('WSS82','p21'),('WSS108','p22'),('WSS145','p22'),('WSS151','p22'),('WSS162','p22'),('WSS169','p22'),('WSS176','p22'),('WSS183','p22'),('WSS191','p22'),('WSS34','p22'),('WSS36','p22'),('WSS38','p22'),('WSS73','p22'),('WSS88','p22'),('WSS100','p23'),('WSS110','p23'),('WSS117','p23'),('WSS121','p23'),('WSS127','p23'),('WSS128','p23'),('WSS131','p23'),('WSS182','p23'),('WSS184','p23'),('WSS194','p23'),('WSS41','p23'),('WSS44','p23'),('WSS52','p23'),('WSS9','p23'),('WSS95','p23'),('WSS105','p24'),('WSS115','p24'),('WSS120','p24'),('WSS124','p24'),('WSS144','p24'),('WSS172','p24'),('WSS189','p24'),('WSS52','p24'),('WSS77','p24'),('WSS95','p24'),('WSS10','p25'),('WSS11','p25'),('WSS122','p25'),('WSS133','p25'),('WSS138','p25'),('WSS149','p25'),('WSS15','p25'),('WSS156','p25'),('WSS157','p25'),('WSS160','p25'),('WSS168','p25'),('WSS171','p25'),('WSS179','p25'),('WSS29','p25'),('WSS34','p25'),('WSS45','p25'),('WSS76','p25'),('WSS99','p25'),('WSS100','p26'),('WSS106','p26'),('WSS109','p26'),('WSS112','p26'),('WSS119','p26'),('WSS132','p26'),('WSS147','p26'),('WSS151','p26'),('WSS160','p26'),('WSS175','p26'),('WSS18','p26'),('WSS186','p26'),('WSS191','p26'),('WSS43','p26'),('WSS44','p26'),('WSS49','p26'),('WSS66','p26'),('WSS71','p26'),('WSS72','p26'),('WSS85','p26'),('WSS91','p26'),('WSS103','p27'),('WSS111','p27'),('WSS129','p27'),('WSS148','p27'),('WSS32','p27'),('WSS43','p27'),('WSS46','p27'),('WSS59','p27'),('WSS76','p27'),('WSS86','p27'),('WSS87','p27'),('WSS101','p28'),('WSS123','p28'),('WSS125','p28'),('WSS136','p28'),('WSS150','p28'),('WSS156','p28'),('WSS165','p28'),('WSS18','p28'),('WSS188','p28'),('WSS22','p28'),('WSS31','p28'),('WSS47','p28'),('WSS66','p28'),('WSS11','p29'),('WSS110','p29'),('WSS118','p29'),('WSS122','p29'),('WSS126','p29'),('WSS132','p29'),('WSS141','p29'),('WSS143','p29'),('WSS164','p29'),('WSS166','p29'),('WSS173','p29'),('WSS180','p29'),('WSS194','p29'),('WSS4','p29'),('WSS5','p29'),('WSS53','p29'),('WSS54','p29'),('WSS58','p29'),('WSS6','p29'),('WSS68','p29'),('WSS71','p29'),('WSS102','p3'),('WSS107','p3'),('WSS13','p3'),('WSS137','p3'),('WSS146','p3'),('WSS152','p3'),('WSS16','p3'),('WSS161','p3'),('WSS172','p3'),('WSS175','p3'),('WSS28','p3'),('WSS3','p3'),('WSS56','p3'),('WSS77','p3'),('WSS99','p3'),('WSS113','p30'),('WSS138','p30'),('WSS142','p30'),('WSS153','p30'),('WSS171','p30'),('WSS177','p30'),('WSS187','p30'),('WSS197','p30'),('WSS33','p30'),('WSS94','p30'),('WSS113','p4'),('WSS116','p4'),('WSS12','p4'),('WSS134','p4'),('WSS141','p4'),('WSS155','p4'),('WSS165','p4'),('WSS174','p4'),('WSS197','p4'),('WSS2','p4'),('WSS23','p4'),('WSS49','p4'),('WSS67','p4'),('WSS1','p5'),('WSS121','p5'),('WSS131','p5'),('WSS133','p5'),('WSS170','p5'),('WSS176','p5'),('WSS185','p5'),('WSS192','p5'),('WSS199','p5'),('WSS25','p5'),('WSS84','p5'),('WSS89','p5'),('WSS103','p6'),('WSS129','p6'),('WSS159','p6'),('WSS29','p6'),('WSS4','p6'),('WSS51','p6'),('WSS53','p6'),('WSS55','p6'),('WSS58','p6'),('WSS74','p6'),('WSS84','p6'),('WSS92','p6'),('WSS1','p7'),('WSS127','p7'),('WSS144','p7'),('WSS154','p7'),('WSS157','p7'),('WSS186','p7'),('WSS26','p7'),('WSS86','p7'),('WSS92','p7'),('WSS96','p7'),('WSS135','p8'),('WSS17','p8'),('WSS19','p8'),('WSS198','p8'),('WSS39','p8'),('WSS42','p8'),('WSS45','p8'),('WSS46','p8'),('WSS56','p8'),('WSS7','p8'),('WSS8','p8'),('WSS9','p8'),('WSS96','p8'),('WSS119','p9'),('WSS124','p9'),('WSS128','p9'),('WSS137','p9'),('WSS145','p9'),('WSS146','p9'),('WSS154','p9'),('WSS167','p9'),('WSS173','p9'),('WSS180','p9'),('WSS192','p9'),('WSS20','p9'),('WSS24','p9'),('WSS30','p9'),('WSS32','p9'),('WSS50','p9'),('WSS61','p9'),('WSS70','p9'),('WSS79','p9'),('WSS81','p9'),('WSS82','p9'),('WSS89','p9'),('WSS97','p9'),('WSS98','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS107','p1'),('WSS108','p1'),('WSS110','p1'),('WSS111','p1'),('WSS116','p1'),('WSS120','p1'),('WSS127','p1'),('WSS141','p1'),('WSS153','p1'),('WSS164','p1'),('WSS169','p1'),('WSS170','p1'),('WSS171','p1'),('WSS174','p1'),('WSS195','p1'),('WSS196','p1'),('WSS31','p1'),('WSS42','p1'),('WSS43','p1'),('WSS59','p1'),('WSS89','p1'),('WSS10','p10'),('WSS11','p10'),('WSS117','p10'),('WSS120','p10'),('WSS132','p10'),('WSS133','p10'),('WSS142','p10'),('WSS145','p10'),('WSS148','p10'),('WSS149','p10'),('WSS15','p10'),('WSS151','p10'),('WSS160','p10'),('WSS170','p10'),('WSS173','p10'),('WSS175','p10'),('WSS178','p10'),('WSS183','p10'),('WSS189','p10'),('WSS194','p10'),('WSS196','p10'),('WSS2','p10'),('WSS33','p10'),('WSS34','p10'),('WSS38','p10'),('WSS46','p10'),('WSS49','p10'),('WSS55','p10'),('WSS68','p10'),('WSS78','p10'),('WSS79','p10'),('WSS80','p10'),('WSS9','p10'),('WSS93','p10'),('WSS96','p10'),('WSS102','p11'),('WSS103','p11'),('WSS110','p11'),('WSS113','p11'),('WSS118','p11'),('WSS123','p11'),('WSS124','p11'),('WSS133','p11'),('WSS136','p11'),('WSS14','p11'),('WSS144','p11'),('WSS159','p11'),('WSS176','p11'),('WSS179','p11'),('WSS184','p11'),('WSS21','p11'),('WSS36','p11'),('WSS79','p11'),('WSS84','p11'),('WSS90','p11'),('WSS99','p11'),('WSS106','p12'),('WSS112','p12'),('WSS113','p12'),('WSS124','p12'),('WSS13','p12'),('WSS137','p12'),('WSS167','p12'),('WSS174','p12'),('WSS175','p12'),('WSS179','p12'),('WSS181','p12'),('WSS185','p12'),('WSS188','p12'),('WSS19','p12'),('WSS198','p12'),('WSS23','p12'),('WSS24','p12'),('WSS37','p12'),('WSS42','p12'),('WSS44','p12'),('WSS53','p12'),('WSS85','p12'),('WSS88','p12'),('WSS9','p12'),('WSS101','p13'),('WSS107','p13'),('WSS112','p13'),('WSS116','p13'),('WSS118','p13'),('WSS12','p13'),('WSS123','p13'),('WSS125','p13'),('WSS127','p13'),('WSS128','p13'),('WSS140','p13'),('WSS142','p13'),('WSS146','p13'),('WSS152','p13'),('WSS154','p13'),('WSS159','p13'),('WSS162','p13'),('WSS171','p13'),('WSS187','p13'),('WSS195','p13'),('WSS197','p13'),('WSS5','p13'),('WSS50','p13'),('WSS51','p13'),('WSS52','p13'),('WSS6','p13'),('WSS76','p13'),('WSS85','p13'),('WSS87','p13'),('WSS90','p13'),('WSS96','p13'),('WSS97','p13'),('WSS99','p13'),('WSS100','p14'),('WSS109','p14'),('WSS122','p14'),('WSS141','p14'),('WSS147','p14'),('WSS155','p14'),('WSS158','p14'),('WSS160','p14'),('WSS166','p14'),('WSS167','p14'),('WSS171','p14'),('WSS178','p14'),('WSS192','p14'),('WSS199','p14'),('WSS26','p14'),('WSS3','p14'),('WSS35','p14'),('WSS60','p14'),('WSS74','p14'),('WSS8','p14'),('WSS92','p14'),('WSS100','p15'),('WSS128','p15'),('WSS129','p15'),('WSS135','p15'),('WSS142','p15'),('WSS149','p15'),('WSS152','p15'),('WSS160','p15'),('WSS186','p15'),('WSS189','p15'),('WSS192','p15'),('WSS194','p15'),('WSS4','p15'),('WSS45','p15'),('WSS5','p15'),('WSS57','p15'),('WSS58','p15'),('WSS60','p15'),('WSS61','p15'),('WSS86','p15'),('WSS92','p15'),('WSS99','p15'),('WSS114','p16'),('WSS124','p16'),('WSS126','p16'),('WSS128','p16'),('WSS131','p16'),('WSS143','p16'),('WSS148','p16'),('WSS154','p16'),('WSS17','p16'),('WSS171','p16'),('WSS180','p16'),('WSS183','p16'),('WSS188','p16'),('WSS189','p16'),('WSS191','p16'),('WSS197','p16'),('WSS23','p16'),('WSS27','p16'),('WSS3','p16'),('WSS32','p16'),('WSS33','p16'),('WSS42','p16'),('WSS53','p16'),('WSS55','p16'),('WSS59','p16'),('WSS63','p16'),('WSS72','p16'),('WSS82','p16'),('WSS9','p16'),('WSS98','p16'),('WSS101','p17'),('WSS106','p17'),('WSS125','p17'),('WSS137','p17'),('WSS139','p17'),('WSS14','p17'),('WSS150','p17'),('WSS152','p17'),('WSS155','p17'),('WSS156','p17'),('WSS159','p17'),('WSS162','p17'),('WSS164','p17'),('WSS17','p17'),('WSS177','p17'),('WSS189','p17'),('WSS22','p17'),('WSS30','p17'),('WSS44','p17'),('WSS46','p17'),('WSS54','p17'),('WSS6','p17'),('WSS68','p17'),('WSS106','p18'),('WSS128','p18'),('WSS129','p18'),('WSS144','p18'),('WSS145','p18'),('WSS161','p18'),('WSS163','p18'),('WSS17','p18'),('WSS188','p18'),('WSS32','p18'),('WSS37','p18'),('WSS5','p18'),('WSS53','p18'),('WSS60','p18'),('WSS64','p18'),('WSS7','p18'),('WSS79','p18'),('WSS80','p18'),('WSS87','p18'),('WSS95','p18'),('WSS102','p19'),('WSS115','p19'),('WSS121','p19'),('WSS14','p19'),('WSS16','p19'),('WSS173','p19'),('WSS178','p19'),('WSS185','p19'),('WSS194','p19'),('WSS199','p19'),('WSS34','p19'),('WSS40','p19'),('WSS43','p19'),('WSS47','p19'),('WSS55','p19'),('WSS56','p19'),('WSS6','p19'),('WSS97','p19'),('WSS98','p19'),('WSS1','p2'),('WSS102','p2'),('WSS107','p2'),('WSS123','p2'),('WSS13','p2'),('WSS130','p2'),('WSS133','p2'),('WSS141','p2'),('WSS147','p2'),('WSS153','p2'),('WSS157','p2'),('WSS159','p2'),('WSS163','p2'),('WSS166','p2'),('WSS174','p2'),('WSS18','p2'),('WSS181','p2'),('WSS19','p2'),('WSS192','p2'),('WSS197','p2'),('WSS198','p2'),('WSS22','p2'),('WSS38','p2'),('WSS57','p2'),('WSS65','p2'),('WSS72','p2'),('WSS76','p2'),('WSS104','p20'),('WSS114','p20'),('WSS131','p20'),('WSS134','p20'),('WSS136','p20'),('WSS137','p20'),('WSS153','p20'),('WSS175','p20'),('WSS176','p20'),('WSS188','p20'),('WSS200','p20'),('WSS25','p20'),('WSS33','p20'),('WSS4','p20'),('WSS48','p20'),('WSS51','p20'),('WSS55','p20'),('WSS59','p20'),('WSS64','p20'),('WSS9','p20'),('WSS94','p20'),('WSS109','p21'),('WSS110','p21'),('WSS12','p21'),('WSS131','p21'),('WSS146','p21'),('WSS157','p21'),('WSS16','p21'),('WSS165','p21'),('WSS177','p21'),('WSS18','p21'),('WSS191','p21'),('WSS193','p21'),('WSS196','p21'),('WSS29','p21'),('WSS65','p21'),('WSS73','p21'),('WSS74','p21'),('WSS75','p21'),('WSS77','p21'),('WSS80','p21'),('WSS84','p21'),('WSS86','p21'),('WSS89','p21'),('WSS1','p22'),('WSS102','p22'),('WSS105','p22'),('WSS107','p22'),('WSS108','p22'),('WSS130','p22'),('WSS134','p22'),('WSS139','p22'),('WSS140','p22'),('WSS141','p22'),('WSS144','p22'),('WSS151','p22'),('WSS166','p22'),('WSS168','p22'),('WSS187','p22'),('WSS2','p22'),('WSS22','p22'),('WSS29','p22'),('WSS3','p22'),('WSS30','p22'),('WSS39','p22'),('WSS45','p22'),('WSS5','p22'),('WSS52','p22'),('WSS61','p22'),('WSS67','p22'),('WSS70','p22'),('WSS71','p22'),('WSS72','p22'),('WSS77','p22'),('WSS83','p22'),('WSS88','p22'),('WSS97','p22'),('WSS99','p22'),('WSS104','p23'),('WSS115','p23'),('WSS119','p23'),('WSS132','p23'),('WSS138','p23'),('WSS17','p23'),('WSS176','p23'),('WSS21','p23'),('WSS24','p23'),('WSS28','p23'),('WSS37','p23'),('WSS44','p23'),('WSS51','p23'),('WSS56','p23'),('WSS59','p23'),('WSS7','p23'),('WSS71','p23'),('WSS81','p23'),('WSS88','p23'),('WSS96','p23'),('WSS104','p24'),('WSS105','p24'),('WSS111','p24'),('WSS115','p24'),('WSS121','p24'),('WSS14','p24'),('WSS143','p24'),('WSS152','p24'),('WSS153','p24'),('WSS155','p24'),('WSS158','p24'),('WSS172','p24'),('WSS190','p24'),('WSS194','p24'),('WSS198','p24'),('WSS25','p24'),('WSS26','p24'),('WSS30','p24'),('WSS41','p24'),('WSS47','p24'),('WSS58','p24'),('WSS76','p24'),('WSS11','p25'),('WSS113','p25'),('WSS114','p25'),('WSS122','p25'),('WSS127','p25'),('WSS13','p25'),('WSS134','p25'),('WSS146','p25'),('WSS15','p25'),('WSS164','p25'),('WSS169','p25'),('WSS195','p25'),('WSS200','p25'),('WSS21','p25'),('WSS23','p25'),('WSS25','p25'),('WSS27','p25'),('WSS28','p25'),('WSS33','p25'),('WSS39','p25'),('WSS41','p25'),('WSS45','p25'),('WSS49','p25'),('WSS58','p25'),('WSS61','p25'),('WSS66','p25'),('WSS84','p25'),('WSS91','p25'),('WSS94','p25'),('WSS98','p25'),('WSS108','p26'),('WSS117','p26'),('WSS13','p26'),('WSS150','p26'),('WSS155','p26'),('WSS156','p26'),('WSS157','p26'),('WSS16','p26'),('WSS165','p26'),('WSS168','p26'),('WSS182','p26'),('WSS185','p26'),('WSS191','p26'),('WSS198','p26'),('WSS199','p26'),('WSS200','p26'),('WSS31','p26'),('WSS35','p26'),('WSS45','p26'),('WSS65','p26'),('WSS68','p26'),('WSS69','p26'),('WSS81','p26'),('WSS85','p26'),('WSS90','p26'),('WSS91','p26'),('WSS93','p26'),('WSS95','p26'),('WSS100','p27'),('WSS116','p27'),('WSS127','p27'),('WSS130','p27'),('WSS132','p27'),('WSS136','p27'),('WSS15','p27'),('WSS156','p27'),('WSS169','p27'),('WSS180','p27'),('WSS184','p27'),('WSS187','p27'),('WSS19','p27'),('WSS195','p27'),('WSS199','p27'),('WSS200','p27'),('WSS23','p27'),('WSS32','p27'),('WSS38','p27'),('WSS40','p27'),('WSS54','p27'),('WSS61','p27'),('WSS65','p27'),('WSS67','p27'),('WSS73','p27'),('WSS75','p27'),('WSS78','p27'),('WSS82','p27'),('WSS85','p27'),('WSS92','p27'),('WSS10','p28'),('WSS101','p28'),('WSS109','p28'),('WSS120','p28'),('WSS130','p28'),('WSS137','p28'),('WSS143','p28'),('WSS145','p28'),('WSS168','p28'),('WSS197','p28'),('WSS20','p28'),('WSS24','p28'),('WSS29','p28'),('WSS36','p28'),('WSS39','p28'),('WSS46','p28'),('WSS66','p28'),('WSS69','p28'),('WSS75','p28'),('WSS77','p28'),('WSS82','p28'),('WSS98','p28'),('WSS11','p29'),('WSS118','p29'),('WSS119','p29'),('WSS123','p29'),('WSS132','p29'),('WSS138','p29'),('WSS149','p29'),('WSS157','p29'),('WSS167','p29'),('WSS168','p29'),('WSS179','p29'),('WSS18','p29'),('WSS186','p29'),('WSS32','p29'),('WSS56','p29'),('WSS62','p29'),('WSS63','p29'),('WSS73','p29'),('WSS83','p29'),('WSS89','p29'),('WSS95','p29'),('WSS10','p3'),('WSS103','p3'),('WSS117','p3'),('WSS119','p3'),('WSS139','p3'),('WSS143','p3'),('WSS156','p3'),('WSS178','p3'),('WSS179','p3'),('WSS182','p3'),('WSS20','p3'),('WSS21','p3'),('WSS25','p3'),('WSS26','p3'),('WSS27','p3'),('WSS29','p3'),('WSS30','p3'),('WSS36','p3'),('WSS47','p3'),('WSS50','p3'),('WSS69','p3'),('WSS71','p3'),('WSS75','p3'),('WSS77','p3'),('WSS84','p3'),('WSS93','p3'),('WSS103','p30'),('WSS104','p30'),('WSS111','p30'),('WSS126','p30'),('WSS151','p30'),('WSS154','p30'),('WSS158','p30'),('WSS161','p30'),('WSS166','p30'),('WSS169','p30'),('WSS18','p30'),('WSS182','p30'),('WSS183','p30'),('WSS187','p30'),('WSS193','p30'),('WSS196','p30'),('WSS28','p30'),('WSS31','p30'),('WSS38','p30'),('WSS50','p30'),('WSS57','p30'),('WSS64','p30'),('WSS86','p30'),('WSS90','p30'),('WSS94','p30'),('WSS108','p4'),('WSS110','p4'),('WSS12','p4'),('WSS122','p4'),('WSS129','p4'),('WSS138','p4'),('WSS140','p4'),('WSS148','p4'),('WSS172','p4'),('WSS174','p4'),('WSS176','p4'),('WSS181','p4'),('WSS184','p4'),('WSS193','p4'),('WSS2','p4'),('WSS37','p4'),('WSS40','p4'),('WSS44','p4'),('WSS57','p4'),('WSS62','p4'),('WSS66','p4'),('WSS7','p4'),('WSS70','p4'),('WSS74','p4'),('WSS8','p4'),('WSS80','p4'),('WSS95','p4'),('WSS105','p5'),('WSS12','p5'),('WSS121','p5'),('WSS125','p5'),('WSS135','p5'),('WSS138','p5'),('WSS149','p5'),('WSS150','p5'),('WSS154','p5'),('WSS16','p5'),('WSS170','p5'),('WSS172','p5'),('WSS173','p5'),('WSS177','p5'),('WSS180','p5'),('WSS186','p5'),('WSS22','p5'),('WSS27','p5'),('WSS35','p5'),('WSS4','p5'),('WSS40','p5'),('WSS47','p5'),('WSS48','p5'),('WSS49','p5'),('WSS51','p5'),('WSS54','p5'),('WSS71','p5'),('WSS78','p5'),('WSS88','p5'),('WSS92','p5'),('WSS10','p6'),('WSS101','p6'),('WSS106','p6'),('WSS109','p6'),('WSS112','p6'),('WSS115','p6'),('WSS118','p6'),('WSS125','p6'),('WSS126','p6'),('WSS135','p6'),('WSS147','p6'),('WSS15','p6'),('WSS163','p6'),('WSS165','p6'),('WSS173','p6'),('WSS190','p6'),('WSS192','p6'),('WSS31','p6'),('WSS41','p6'),('WSS48','p6'),('WSS49','p6'),('WSS54','p6'),('WSS60','p6'),('WSS67','p6'),('WSS72','p6'),('WSS78','p6'),('WSS91','p6'),('WSS1','p7'),('WSS116','p7'),('WSS117','p7'),('WSS126','p7'),('WSS136','p7'),('WSS148','p7'),('WSS150','p7'),('WSS163','p7'),('WSS184','p7'),('WSS186','p7'),('WSS20','p7'),('WSS24','p7'),('WSS41','p7'),('WSS42','p7'),('WSS50','p7'),('WSS62','p7'),('WSS63','p7'),('WSS64','p7'),('WSS69','p7'),('WSS74','p7'),('WSS76','p7'),('WSS81','p7'),('WSS86','p7'),('WSS91','p7'),('WSS94','p7'),('WSS121','p8'),('WSS122','p8'),('WSS124','p8'),('WSS135','p8'),('WSS146','p8'),('WSS147','p8'),('WSS167','p8'),('WSS181','p8'),('WSS183','p8'),('WSS19','p8'),('WSS191','p8'),('WSS2','p8'),('WSS3','p8'),('WSS36','p8'),('WSS39','p8'),('WSS43','p8'),('WSS52','p8'),('WSS56','p8'),('WSS58','p8'),('WSS68','p8'),('WSS7','p8'),('WSS73','p8'),('WSS8','p8'),('WSS87','p8'),('WSS1','p9'),('WSS105','p9'),('WSS112','p9'),('WSS113','p9'),('WSS119','p9'),('WSS129','p9'),('WSS134','p9'),('WSS140','p9'),('WSS144','p9'),('WSS145','p9'),('WSS160','p9'),('WSS161','p9'),('WSS162','p9'),('WSS175','p9'),('WSS177','p9'),('WSS182','p9'),('WSS190','p9'),('WSS193','p9'),('WSS20','p9'),('WSS34','p9'),('WSS35','p9'),('WSS46','p9'),('WSS52','p9'),('WSS53','p9'),('WSS62','p9'),('WSS66','p9'),('WSS70','p9'),('WSS81','p9'),('WSS83','p9'),('WSS87','p9'),('WSS89','p9'),('WSS97','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS100'),(1,2,'WSS106'),(2,1,'WSS157'),(2,2,'WSS108'),(3,1,'WSS182'),(3,2,'WSS10'),(4,1,'WSS100'),(4,2,'WSS106'),(5,1,'WSS74'),(5,2,'WSS100'),(6,1,'WSS172'),(6,1,'WSS88'),(7,1,'WSS147'),(7,2,'WSS100'),(7,3,'WSS101'),(8,1,'WSS108'),(8,2,'WSS23'),(9,1,'WSS100'),(9,1,'WSS106'),(10,1,'WSS100'),(10,2,'WSS181'),(11,1,'WSS106'),(11,2,'WSS26'),(12,1,'WSS199'),(12,2,'WSS13'),(13,1,'WSS27'),(13,1,'WSS7'),(14,1,'WSS195'),(14,2,'WSS63'),(15,1,'WSS108'),(15,2,'WSS23'),(15,3,'WSS104'),(16,1,'WSS15'),(16,2,'WSS33'),(17,1,'WSS104'),(17,2,'WSS101'),(17,2,'WSS107'),(18,1,'WSS87'),(18,2,'WSS131'),(19,1,'WSS23'),(19,2,'WSS26'),(20,1,'WSS197'),(20,2,'WSS183'),(21,1,'WSS100'),(21,2,'WSS106'),(22,1,'WSS23'),(22,2,'WSS100'),(23,1,'WSS90'),(23,2,'WSS95'),(24,1,'WSS167'),(24,2,'WSS81'),(25,1,'WSS109'),(25,2,'WSS11'),(25,3,'WSS27'),(26,1,'WSS120'),(26,2,'WSS150'),(27,1,'WSS168'),(27,2,'WSS98'),(28,1,'WSS144'),(28,2,'WSS4'),(29,1,'WSS13'),(29,2,'WSS90'),(30,1,'WSS185'),(30,2,'WSS181'),(30,2,'WSS28'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-29  9:45:09
