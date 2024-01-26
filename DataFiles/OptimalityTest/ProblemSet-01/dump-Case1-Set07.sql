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
INSERT INTO `initialgoalparameter` VALUES (1,'I','p1'),(3,'G','p1'),(9,'I','p1'),(12,'I','p1'),(19,'I','p1'),(21,'I','p1'),(24,'G','p1'),(29,'I','p1'),(30,'I','p1'),(1,'G','p10'),(2,'I','p10'),(5,'I','p10'),(6,'I','p10'),(10,'G','p10'),(11,'I','p10'),(12,'I','p10'),(14,'I','p10'),(15,'G','p10'),(17,'I','p10'),(18,'G','p10'),(22,'I','p10'),(25,'I','p10'),(26,'I','p10'),(29,'I','p10'),(2,'I','p11'),(3,'I','p11'),(5,'G','p11'),(7,'I','p11'),(10,'G','p11'),(11,'I','p11'),(13,'I','p11'),(14,'G','p11'),(15,'I','p11'),(16,'G','p11'),(18,'G','p11'),(20,'G','p11'),(21,'I','p11'),(22,'G','p11'),(25,'G','p11'),(29,'I','p11'),(3,'G','p12'),(6,'G','p12'),(11,'I','p12'),(14,'G','p12'),(15,'G','p12'),(16,'G','p12'),(23,'G','p12'),(24,'I','p12'),(25,'I','p12'),(27,'G','p12'),(1,'G','p13'),(2,'I','p13'),(4,'I','p13'),(6,'G','p13'),(7,'G','p13'),(13,'G','p13'),(14,'I','p13'),(16,'I','p13'),(19,'I','p13'),(23,'G','p13'),(25,'I','p13'),(28,'I','p13'),(29,'G','p13'),(1,'I','p14'),(5,'I','p14'),(6,'I','p14'),(8,'I','p14'),(12,'G','p14'),(13,'G','p14'),(17,'G','p14'),(20,'G','p14'),(22,'I','p14'),(23,'I','p14'),(2,'I','p15'),(3,'G','p15'),(6,'G','p15'),(12,'G','p15'),(19,'G','p15'),(25,'G','p15'),(26,'I','p15'),(27,'I','p15'),(30,'G','p15'),(1,'I','p16'),(3,'I','p16'),(4,'G','p16'),(15,'I','p16'),(19,'G','p16'),(20,'I','p16'),(23,'I','p16'),(24,'G','p16'),(26,'G','p16'),(2,'G','p17'),(5,'I','p17'),(6,'I','p17'),(9,'I','p17'),(12,'I','p17'),(13,'I','p17'),(4,'I','p18'),(8,'G','p18'),(11,'I','p18'),(16,'I','p18'),(20,'I','p18'),(24,'I','p18'),(3,'G','p19'),(11,'G','p19'),(17,'I','p19'),(19,'G','p19'),(20,'I','p19'),(29,'I','p19'),(30,'G','p19'),(4,'I','p2'),(5,'I','p2'),(7,'I','p2'),(8,'G','p2'),(14,'G','p2'),(16,'I','p2'),(17,'I','p2'),(18,'G','p2'),(20,'I','p2'),(21,'G','p2'),(27,'I','p2'),(4,'G','p20'),(10,'I','p20'),(12,'I','p20'),(13,'G','p20'),(21,'G','p20'),(22,'I','p20'),(23,'I','p20'),(27,'G','p20'),(5,'I','p21'),(6,'I','p21'),(7,'I','p21'),(17,'G','p21'),(18,'I','p21'),(25,'I','p21'),(26,'I','p21'),(28,'I','p21'),(30,'I','p21'),(2,'I','p22'),(4,'I','p22'),(5,'I','p22'),(8,'G','p22'),(10,'G','p22'),(17,'I','p22'),(18,'I','p22'),(21,'I','p22'),(23,'G','p22'),(25,'G','p22'),(4,'I','p23'),(10,'I','p23'),(11,'G','p23'),(13,'I','p23'),(15,'I','p23'),(16,'I','p23'),(22,'I','p23'),(23,'G','p23'),(28,'G','p23'),(1,'G','p24'),(4,'G','p24'),(6,'I','p24'),(7,'G','p24'),(10,'I','p24'),(14,'I','p24'),(16,'I','p24'),(21,'G','p24'),(29,'I','p24'),(30,'G','p24'),(1,'I','p25'),(7,'G','p25'),(8,'G','p25'),(9,'I','p25'),(10,'G','p25'),(15,'I','p25'),(16,'I','p25'),(17,'G','p25'),(18,'I','p25'),(22,'I','p25'),(26,'I','p25'),(27,'I','p25'),(28,'G','p25'),(1,'I','p26'),(6,'I','p26'),(9,'G','p26'),(13,'I','p26'),(14,'I','p26'),(19,'I','p26'),(21,'I','p26'),(28,'I','p26'),(5,'G','p27'),(7,'I','p27'),(8,'I','p27'),(10,'I','p27'),(14,'I','p27'),(15,'I','p27'),(16,'G','p27'),(20,'G','p27'),(24,'I','p27'),(25,'I','p27'),(27,'G','p27'),(29,'G','p27'),(30,'I','p27'),(1,'G','p28'),(3,'I','p28'),(7,'I','p28'),(8,'I','p28'),(9,'I','p28'),(15,'G','p28'),(20,'G','p28'),(23,'I','p28'),(27,'I','p28'),(2,'G','p29'),(14,'I','p29'),(17,'G','p29'),(18,'G','p29'),(19,'I','p29'),(21,'G','p29'),(22,'I','p29'),(23,'I','p29'),(24,'G','p29'),(28,'I','p29'),(29,'G','p29'),(30,'G','p29'),(9,'G','p3'),(12,'G','p3'),(19,'I','p3'),(24,'I','p3'),(25,'G','p3'),(27,'I','p3'),(28,'I','p3'),(2,'I','p30'),(9,'I','p30'),(11,'G','p30'),(14,'G','p30'),(23,'I','p30'),(28,'G','p30'),(6,'G','p4'),(8,'I','p4'),(10,'I','p4'),(12,'I','p4'),(13,'I','p4'),(15,'G','p4'),(17,'I','p4'),(20,'I','p4'),(22,'G','p4'),(26,'I','p4'),(3,'I','p5'),(4,'G','p5'),(5,'G','p5'),(11,'I','p5'),(13,'G','p5'),(19,'I','p5'),(21,'I','p5'),(22,'G','p5'),(24,'I','p5'),(26,'G','p5'),(28,'I','p5'),(30,'I','p5'),(8,'I','p6'),(9,'G','p6'),(11,'G','p6'),(12,'G','p6'),(17,'I','p6'),(18,'I','p6'),(19,'G','p6'),(22,'G','p6'),(28,'G','p6'),(29,'G','p6'),(1,'I','p7'),(2,'G','p7'),(3,'I','p7'),(4,'I','p7'),(8,'I','p7'),(13,'I','p7'),(18,'I','p7'),(24,'I','p7'),(26,'I','p7'),(30,'I','p7'),(2,'G','p8'),(5,'G','p8'),(7,'I','p8'),(9,'G','p8'),(10,'I','p8'),(11,'I','p8'),(20,'I','p8'),(24,'G','p8'),(25,'I','p8'),(26,'G','p8'),(27,'I','p8'),(29,'I','p8'),(3,'I','p9'),(7,'G','p9'),(9,'I','p9'),(12,'I','p9'),(15,'I','p9'),(16,'G','p9'),(18,'I','p9'),(21,'I','p9'),(26,'G','p9'),(27,'G','p9'),(30,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS119','p1'),('WSS131','p1'),('WSS139','p1'),('WSS140','p1'),('WSS16','p1'),('WSS164','p1'),('WSS18','p1'),('WSS183','p1'),('WSS196','p1'),('WSS30','p1'),('WSS34','p1'),('WSS41','p1'),('WSS69','p1'),('WSS76','p1'),('WSS82','p1'),('WSS10','p10'),('WSS108','p10'),('WSS109','p10'),('WSS116','p10'),('WSS122','p10'),('WSS136','p10'),('WSS143','p10'),('WSS149','p10'),('WSS162','p10'),('WSS191','p10'),('WSS192','p10'),('WSS196','p10'),('WSS200','p10'),('WSS27','p10'),('WSS46','p10'),('WSS88','p10'),('WSS1','p11'),('WSS128','p11'),('WSS142','p11'),('WSS144','p11'),('WSS146','p11'),('WSS174','p11'),('WSS177','p11'),('WSS195','p11'),('WSS43','p11'),('WSS54','p11'),('WSS56','p11'),('WSS63','p11'),('WSS64','p11'),('WSS67','p11'),('WSS75','p11'),('WSS92','p11'),('WSS103','p12'),('WSS151','p12'),('WSS172','p12'),('WSS19','p12'),('WSS198','p12'),('WSS21','p12'),('WSS37','p12'),('WSS50','p12'),('WSS7','p12'),('WSS121','p13'),('WSS141','p13'),('WSS142','p13'),('WSS16','p13'),('WSS185','p13'),('WSS26','p13'),('WSS30','p13'),('WSS36','p13'),('WSS41','p13'),('WSS42','p13'),('WSS77','p13'),('WSS108','p14'),('WSS126','p14'),('WSS129','p14'),('WSS163','p14'),('WSS35','p14'),('WSS56','p14'),('WSS57','p14'),('WSS70','p14'),('WSS84','p14'),('WSS87','p14'),('WSS96','p14'),('WSS97','p14'),('WSS104','p15'),('WSS105','p15'),('WSS123','p15'),('WSS135','p15'),('WSS139','p15'),('WSS145','p15'),('WSS171','p15'),('WSS181','p15'),('WSS22','p15'),('WSS60','p15'),('WSS66','p15'),('WSS127','p16'),('WSS138','p16'),('WSS153','p16'),('WSS169','p16'),('WSS170','p16'),('WSS179','p16'),('WSS188','p16'),('WSS189','p16'),('WSS193','p16'),('WSS34','p16'),('WSS42','p16'),('WSS44','p16'),('WSS50','p16'),('WSS83','p16'),('WSS89','p16'),('WSS99','p16'),('WSS103','p17'),('WSS112','p17'),('WSS137','p17'),('WSS150','p17'),('WSS158','p17'),('WSS180','p17'),('WSS199','p17'),('WSS40','p17'),('WSS49','p17'),('WSS6','p17'),('WSS65','p17'),('WSS73','p17'),('WSS9','p17'),('WSS94','p17'),('WSS11','p18'),('WSS113','p18'),('WSS12','p18'),('WSS168','p18'),('WSS18','p18'),('WSS183','p18'),('WSS38','p18'),('WSS39','p18'),('WSS52','p18'),('WSS54','p18'),('WSS59','p18'),('WSS7','p18'),('WSS71','p18'),('WSS80','p18'),('WSS92','p18'),('WSS107','p19'),('WSS115','p19'),('WSS160','p19'),('WSS175','p19'),('WSS178','p19'),('WSS182','p19'),('WSS192','p19'),('WSS197','p19'),('WSS32','p19'),('WSS48','p19'),('WSS78','p19'),('WSS82','p19'),('WSS83','p19'),('WSS89','p19'),('WSS96','p19'),('WSS98','p19'),('WSS132','p2'),('WSS134','p2'),('WSS136','p2'),('WSS150','p2'),('WSS155','p2'),('WSS184','p2'),('WSS187','p2'),('WSS193','p2'),('WSS53','p2'),('WSS58','p2'),('WSS59','p2'),('WSS79','p2'),('WSS81','p2'),('WSS98','p2'),('WSS1','p20'),('WSS100','p20'),('WSS114','p20'),('WSS125','p20'),('WSS131','p20'),('WSS135','p20'),('WSS154','p20'),('WSS168','p20'),('WSS186','p20'),('WSS197','p20'),('WSS29','p20'),('WSS40','p20'),('WSS60','p20'),('WSS72','p20'),('WSS85','p20'),('WSS106','p21'),('WSS127','p21'),('WSS15','p21'),('WSS154','p21'),('WSS164','p21'),('WSS181','p21'),('WSS194','p21'),('WSS198','p21'),('WSS3','p21'),('WSS45','p21'),('WSS62','p21'),('WSS63','p21'),('WSS86','p21'),('WSS88','p21'),('WSS105','p22'),('WSS113','p22'),('WSS122','p22'),('WSS124','p22'),('WSS133','p22'),('WSS152','p22'),('WSS166','p22'),('WSS173','p22'),('WSS31','p22'),('WSS35','p22'),('WSS57','p22'),('WSS9','p22'),('WSS106','p23'),('WSS107','p23'),('WSS110','p23'),('WSS114','p23'),('WSS120','p23'),('WSS121','p23'),('WSS126','p23'),('WSS129','p23'),('WSS14','p23'),('WSS149','p23'),('WSS155','p23'),('WSS176','p23'),('WSS22','p23'),('WSS55','p23'),('WSS62','p23'),('WSS72','p23'),('WSS74','p23'),('WSS78','p23'),('WSS94','p23'),('WSS115','p24'),('WSS124','p24'),('WSS128','p24'),('WSS13','p24'),('WSS147','p24'),('WSS157','p24'),('WSS159','p24'),('WSS20','p24'),('WSS28','p24'),('WSS46','p24'),('WSS47','p24'),('WSS74','p24'),('WSS8','p24'),('WSS80','p24'),('WSS81','p24'),('WSS95','p24'),('WSS101','p25'),('WSS111','p25'),('WSS118','p25'),('WSS125','p25'),('WSS134','p25'),('WSS152','p25'),('WSS153','p25'),('WSS167','p25'),('WSS21','p25'),('WSS3','p25'),('WSS4','p25'),('WSS45','p25'),('WSS49','p25'),('WSS75','p25'),('WSS100','p26'),('WSS118','p26'),('WSS12','p26'),('WSS13','p26'),('WSS137','p26'),('WSS14','p26'),('WSS145','p26'),('WSS148','p26'),('WSS157','p26'),('WSS159','p26'),('WSS17','p26'),('WSS173','p26'),('WSS175','p26'),('WSS177','p26'),('WSS190','p26'),('WSS47','p26'),('WSS61','p26'),('WSS84','p26'),('WSS95','p26'),('WSS11','p27'),('WSS167','p27'),('WSS186','p27'),('WSS199','p27'),('WSS25','p27'),('WSS28','p27'),('WSS8','p27'),('WSS90','p27'),('WSS117','p28'),('WSS146','p28'),('WSS158','p28'),('WSS37','p28'),('WSS48','p28'),('WSS5','p28'),('WSS53','p28'),('WSS99','p28'),('WSS101','p29'),('WSS119','p29'),('WSS147','p29'),('WSS165','p29'),('WSS172','p29'),('WSS185','p29'),('WSS188','p29'),('WSS2','p29'),('WSS24','p29'),('WSS130','p3'),('WSS133','p3'),('WSS151','p3'),('WSS156','p3'),('WSS17','p3'),('WSS68','p3'),('WSS79','p3'),('WSS85','p3'),('WSS104','p30'),('WSS116','p30'),('WSS130','p30'),('WSS143','p30'),('WSS148','p30'),('WSS184','p30'),('WSS187','p30'),('WSS23','p30'),('WSS33','p30'),('WSS43','p30'),('WSS55','p30'),('WSS69','p30'),('WSS71','p30'),('WSS90','p30'),('WSS93','p30'),('WSS132','p4'),('WSS138','p4'),('WSS160','p4'),('WSS171','p4'),('WSS66','p4'),('WSS76','p4'),('WSS91','p4'),('WSS97','p4'),('WSS140','p5'),('WSS156','p5'),('WSS166','p5'),('WSS170','p5'),('WSS176','p5'),('WSS178','p5'),('WSS180','p5'),('WSS195','p5'),('WSS20','p5'),('WSS25','p5'),('WSS26','p5'),('WSS32','p5'),('WSS51','p5'),('WSS61','p5'),('WSS67','p5'),('WSS86','p5'),('WSS112','p6'),('WSS161','p6'),('WSS169','p6'),('WSS189','p6'),('WSS38','p6'),('WSS65','p6'),('WSS93','p6'),('WSS10','p7'),('WSS144','p7'),('WSS15','p7'),('WSS161','p7'),('WSS19','p7'),('WSS194','p7'),('WSS24','p7'),('WSS27','p7'),('WSS31','p7'),('WSS51','p7'),('WSS68','p7'),('WSS87','p7'),('WSS102','p8'),('WSS109','p8'),('WSS117','p8'),('WSS120','p8'),('WSS179','p8'),('WSS190','p8'),('WSS23','p8'),('WSS29','p8'),('WSS5','p8'),('WSS58','p8'),('WSS70','p8'),('WSS77','p8'),('WSS102','p9'),('WSS110','p9'),('WSS111','p9'),('WSS123','p9'),('WSS162','p9'),('WSS165','p9'),('WSS174','p9'),('WSS182','p9'),('WSS191','p9'),('WSS200','p9'),('WSS33','p9'),('WSS36','p9'),('WSS4','p9'),('WSS52','p9'),('WSS6','p9'),('WSS64','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS104','p1'),('WSS106','p1'),('WSS108','p1'),('WSS113','p1'),('WSS116','p1'),('WSS119','p1'),('WSS12','p1'),('WSS129','p1'),('WSS130','p1'),('WSS133','p1'),('WSS136','p1'),('WSS137','p1'),('WSS139','p1'),('WSS147','p1'),('WSS15','p1'),('WSS150','p1'),('WSS161','p1'),('WSS165','p1'),('WSS167','p1'),('WSS168','p1'),('WSS170','p1'),('WSS172','p1'),('WSS174','p1'),('WSS175','p1'),('WSS178','p1'),('WSS183','p1'),('WSS191','p1'),('WSS192','p1'),('WSS22','p1'),('WSS25','p1'),('WSS33','p1'),('WSS36','p1'),('WSS38','p1'),('WSS4','p1'),('WSS46','p1'),('WSS48','p1'),('WSS53','p1'),('WSS56','p1'),('WSS63','p1'),('WSS64','p1'),('WSS67','p1'),('WSS70','p1'),('WSS72','p1'),('WSS75','p1'),('WSS84','p1'),('WSS90','p1'),('WSS93','p1'),('WSS97','p1'),('WSS10','p10'),('WSS102','p10'),('WSS104','p10'),('WSS106','p10'),('WSS108','p10'),('WSS11','p10'),('WSS119','p10'),('WSS121','p10'),('WSS125','p10'),('WSS129','p10'),('WSS13','p10'),('WSS130','p10'),('WSS133','p10'),('WSS136','p10'),('WSS142','p10'),('WSS143','p10'),('WSS151','p10'),('WSS152','p10'),('WSS154','p10'),('WSS156','p10'),('WSS160','p10'),('WSS166','p10'),('WSS171','p10'),('WSS175','p10'),('WSS184','p10'),('WSS185','p10'),('WSS187','p10'),('WSS193','p10'),('WSS21','p10'),('WSS23','p10'),('WSS29','p10'),('WSS31','p10'),('WSS36','p10'),('WSS37','p10'),('WSS46','p10'),('WSS49','p10'),('WSS5','p10'),('WSS51','p10'),('WSS73','p10'),('WSS74','p10'),('WSS75','p10'),('WSS79','p10'),('WSS81','p10'),('WSS82','p10'),('WSS85','p10'),('WSS88','p10'),('WSS89','p10'),('WSS92','p10'),('WSS96','p10'),('WSS102','p11'),('WSS115','p11'),('WSS116','p11'),('WSS119','p11'),('WSS13','p11'),('WSS131','p11'),('WSS132','p11'),('WSS140','p11'),('WSS141','p11'),('WSS142','p11'),('WSS150','p11'),('WSS156','p11'),('WSS162','p11'),('WSS164','p11'),('WSS165','p11'),('WSS173','p11'),('WSS179','p11'),('WSS180','p11'),('WSS182','p11'),('WSS184','p11'),('WSS188','p11'),('WSS196','p11'),('WSS199','p11'),('WSS20','p11'),('WSS23','p11'),('WSS24','p11'),('WSS29','p11'),('WSS30','p11'),('WSS39','p11'),('WSS40','p11'),('WSS42','p11'),('WSS45','p11'),('WSS47','p11'),('WSS48','p11'),('WSS51','p11'),('WSS6','p11'),('WSS60','p11'),('WSS63','p11'),('WSS65','p11'),('WSS66','p11'),('WSS72','p11'),('WSS76','p11'),('WSS8','p11'),('WSS88','p11'),('WSS90','p11'),('WSS92','p11'),('WSS101','p12'),('WSS102','p12'),('WSS106','p12'),('WSS109','p12'),('WSS112','p12'),('WSS113','p12'),('WSS115','p12'),('WSS117','p12'),('WSS118','p12'),('WSS12','p12'),('WSS123','p12'),('WSS126','p12'),('WSS128','p12'),('WSS131','p12'),('WSS135','p12'),('WSS136','p12'),('WSS140','p12'),('WSS141','p12'),('WSS142','p12'),('WSS144','p12'),('WSS145','p12'),('WSS149','p12'),('WSS165','p12'),('WSS178','p12'),('WSS180','p12'),('WSS181','p12'),('WSS184','p12'),('WSS195','p12'),('WSS23','p12'),('WSS37','p12'),('WSS52','p12'),('WSS60','p12'),('WSS61','p12'),('WSS62','p12'),('WSS66','p12'),('WSS67','p12'),('WSS69','p12'),('WSS71','p12'),('WSS73','p12'),('WSS79','p12'),('WSS8','p12'),('WSS85','p12'),('WSS97','p12'),('WSS98','p12'),('WSS103','p13'),('WSS107','p13'),('WSS109','p13'),('WSS11','p13'),('WSS111','p13'),('WSS115','p13'),('WSS117','p13'),('WSS118','p13'),('WSS120','p13'),('WSS126','p13'),('WSS127','p13'),('WSS132','p13'),('WSS138','p13'),('WSS14','p13'),('WSS144','p13'),('WSS151','p13'),('WSS153','p13'),('WSS156','p13'),('WSS157','p13'),('WSS159','p13'),('WSS160','p13'),('WSS161','p13'),('WSS17','p13'),('WSS172','p13'),('WSS173','p13'),('WSS18','p13'),('WSS180','p13'),('WSS181','p13'),('WSS184','p13'),('WSS188','p13'),('WSS19','p13'),('WSS197','p13'),('WSS2','p13'),('WSS22','p13'),('WSS25','p13'),('WSS32','p13'),('WSS38','p13'),('WSS40','p13'),('WSS41','p13'),('WSS44','p13'),('WSS52','p13'),('WSS56','p13'),('WSS61','p13'),('WSS62','p13'),('WSS63','p13'),('WSS65','p13'),('WSS67','p13'),('WSS73','p13'),('WSS77','p13'),('WSS78','p13'),('WSS79','p13'),('WSS80','p13'),('WSS83','p13'),('WSS84','p13'),('WSS89','p13'),('WSS91','p13'),('WSS96','p13'),('WSS99','p13'),('WSS1','p14'),('WSS101','p14'),('WSS107','p14'),('WSS113','p14'),('WSS115','p14'),('WSS126','p14'),('WSS132','p14'),('WSS141','p14'),('WSS143','p14'),('WSS155','p14'),('WSS160','p14'),('WSS165','p14'),('WSS170','p14'),('WSS176','p14'),('WSS187','p14'),('WSS191','p14'),('WSS20','p14'),('WSS23','p14'),('WSS25','p14'),('WSS27','p14'),('WSS28','p14'),('WSS29','p14'),('WSS32','p14'),('WSS33','p14'),('WSS37','p14'),('WSS38','p14'),('WSS40','p14'),('WSS43','p14'),('WSS47','p14'),('WSS54','p14'),('WSS58','p14'),('WSS59','p14'),('WSS62','p14'),('WSS64','p14'),('WSS7','p14'),('WSS71','p14'),('WSS80','p14'),('WSS87','p14'),('WSS91','p14'),('WSS98','p14'),('WSS1','p15'),('WSS10','p15'),('WSS104','p15'),('WSS105','p15'),('WSS11','p15'),('WSS116','p15'),('WSS121','p15'),('WSS124','p15'),('WSS125','p15'),('WSS127','p15'),('WSS132','p15'),('WSS138','p15'),('WSS144','p15'),('WSS15','p15'),('WSS156','p15'),('WSS161','p15'),('WSS164','p15'),('WSS165','p15'),('WSS166','p15'),('WSS169','p15'),('WSS170','p15'),('WSS179','p15'),('WSS181','p15'),('WSS187','p15'),('WSS19','p15'),('WSS190','p15'),('WSS197','p15'),('WSS198','p15'),('WSS199','p15'),('WSS26','p15'),('WSS29','p15'),('WSS30','p15'),('WSS31','p15'),('WSS34','p15'),('WSS4','p15'),('WSS40','p15'),('WSS44','p15'),('WSS47','p15'),('WSS54','p15'),('WSS59','p15'),('WSS6','p15'),('WSS62','p15'),('WSS63','p15'),('WSS71','p15'),('WSS72','p15'),('WSS77','p15'),('WSS79','p15'),('WSS8','p15'),('WSS81','p15'),('WSS84','p15'),('WSS87','p15'),('WSS9','p15'),('WSS92','p15'),('WSS93','p15'),('WSS1','p16'),('WSS10','p16'),('WSS100','p16'),('WSS101','p16'),('WSS104','p16'),('WSS105','p16'),('WSS107','p16'),('WSS117','p16'),('WSS121','p16'),('WSS127','p16'),('WSS128','p16'),('WSS129','p16'),('WSS134','p16'),('WSS135','p16'),('WSS143','p16'),('WSS145','p16'),('WSS148','p16'),('WSS151','p16'),('WSS155','p16'),('WSS157','p16'),('WSS16','p16'),('WSS161','p16'),('WSS165','p16'),('WSS166','p16'),('WSS167','p16'),('WSS170','p16'),('WSS174','p16'),('WSS18','p16'),('WSS181','p16'),('WSS187','p16'),('WSS189','p16'),('WSS192','p16'),('WSS196','p16'),('WSS197','p16'),('WSS21','p16'),('WSS22','p16'),('WSS31','p16'),('WSS33','p16'),('WSS35','p16'),('WSS37','p16'),('WSS44','p16'),('WSS54','p16'),('WSS57','p16'),('WSS58','p16'),('WSS59','p16'),('WSS6','p16'),('WSS60','p16'),('WSS67','p16'),('WSS72','p16'),('WSS75','p16'),('WSS98','p16'),('WSS99','p16'),('WSS10','p17'),('WSS100','p17'),('WSS103','p17'),('WSS111','p17'),('WSS116','p17'),('WSS117','p17'),('WSS123','p17'),('WSS128','p17'),('WSS129','p17'),('WSS14','p17'),('WSS142','p17'),('WSS147','p17'),('WSS148','p17'),('WSS149','p17'),('WSS150','p17'),('WSS163','p17'),('WSS164','p17'),('WSS168','p17'),('WSS169','p17'),('WSS171','p17'),('WSS172','p17'),('WSS174','p17'),('WSS180','p17'),('WSS190','p17'),('WSS193','p17'),('WSS195','p17'),('WSS197','p17'),('WSS198','p17'),('WSS27','p17'),('WSS29','p17'),('WSS34','p17'),('WSS39','p17'),('WSS42','p17'),('WSS45','p17'),('WSS5','p17'),('WSS50','p17'),('WSS56','p17'),('WSS6','p17'),('WSS62','p17'),('WSS63','p17'),('WSS64','p17'),('WSS65','p17'),('WSS70','p17'),('WSS71','p17'),('WSS73','p17'),('WSS76','p17'),('WSS77','p17'),('WSS78','p17'),('WSS79','p17'),('WSS82','p17'),('WSS85','p17'),('WSS86','p17'),('WSS9','p17'),('WSS94','p17'),('WSS95','p17'),('WSS1','p18'),('WSS103','p18'),('WSS105','p18'),('WSS107','p18'),('WSS112','p18'),('WSS123','p18'),('WSS125','p18'),('WSS13','p18'),('WSS130','p18'),('WSS133','p18'),('WSS136','p18'),('WSS139','p18'),('WSS141','p18'),('WSS142','p18'),('WSS146','p18'),('WSS148','p18'),('WSS150','p18'),('WSS152','p18'),('WSS158','p18'),('WSS171','p18'),('WSS172','p18'),('WSS192','p18'),('WSS195','p18'),('WSS24','p18'),('WSS36','p18'),('WSS4','p18'),('WSS43','p18'),('WSS49','p18'),('WSS52','p18'),('WSS53','p18'),('WSS68','p18'),('WSS76','p18'),('WSS83','p18'),('WSS84','p18'),('WSS86','p18'),('WSS95','p18'),('WSS96','p18'),('WSS101','p19'),('WSS109','p19'),('WSS111','p19'),('WSS113','p19'),('WSS114','p19'),('WSS117','p19'),('WSS121','p19'),('WSS123','p19'),('WSS129','p19'),('WSS130','p19'),('WSS132','p19'),('WSS137','p19'),('WSS138','p19'),('WSS14','p19'),('WSS145','p19'),('WSS148','p19'),('WSS150','p19'),('WSS153','p19'),('WSS158','p19'),('WSS162','p19'),('WSS169','p19'),('WSS17','p19'),('WSS171','p19'),('WSS178','p19'),('WSS179','p19'),('WSS181','p19'),('WSS185','p19'),('WSS186','p19'),('WSS19','p19'),('WSS2','p19'),('WSS22','p19'),('WSS23','p19'),('WSS26','p19'),('WSS27','p19'),('WSS3','p19'),('WSS33','p19'),('WSS34','p19'),('WSS39','p19'),('WSS4','p19'),('WSS45','p19'),('WSS46','p19'),('WSS51','p19'),('WSS55','p19'),('WSS56','p19'),('WSS58','p19'),('WSS66','p19'),('WSS7','p19'),('WSS70','p19'),('WSS75','p19'),('WSS8','p19'),('WSS82','p19'),('WSS86','p19'),('WSS9','p19'),('WSS96','p19'),('WSS1','p2'),('WSS102','p2'),('WSS106','p2'),('WSS111','p2'),('WSS112','p2'),('WSS119','p2'),('WSS125','p2'),('WSS127','p2'),('WSS13','p2'),('WSS131','p2'),('WSS137','p2'),('WSS138','p2'),('WSS140','p2'),('WSS141','p2'),('WSS147','p2'),('WSS149','p2'),('WSS15','p2'),('WSS151','p2'),('WSS154','p2'),('WSS155','p2'),('WSS156','p2'),('WSS158','p2'),('WSS159','p2'),('WSS16','p2'),('WSS167','p2'),('WSS170','p2'),('WSS177','p2'),('WSS182','p2'),('WSS183','p2'),('WSS200','p2'),('WSS21','p2'),('WSS38','p2'),('WSS40','p2'),('WSS46','p2'),('WSS60','p2'),('WSS63','p2'),('WSS65','p2'),('WSS68','p2'),('WSS69','p2'),('WSS73','p2'),('WSS75','p2'),('WSS80','p2'),('WSS81','p2'),('WSS83','p2'),('WSS84','p2'),('WSS87','p2'),('WSS91','p2'),('WSS93','p2'),('WSS98','p2'),('WSS1','p20'),('WSS100','p20'),('WSS108','p20'),('WSS124','p20'),('WSS126','p20'),('WSS127','p20'),('WSS134','p20'),('WSS136','p20'),('WSS148','p20'),('WSS152','p20'),('WSS156','p20'),('WSS162','p20'),('WSS166','p20'),('WSS17','p20'),('WSS172','p20'),('WSS173','p20'),('WSS176','p20'),('WSS181','p20'),('WSS183','p20'),('WSS189','p20'),('WSS190','p20'),('WSS191','p20'),('WSS197','p20'),('WSS199','p20'),('WSS200','p20'),('WSS22','p20'),('WSS26','p20'),('WSS44','p20'),('WSS47','p20'),('WSS49','p20'),('WSS50','p20'),('WSS53','p20'),('WSS56','p20'),('WSS58','p20'),('WSS59','p20'),('WSS6','p20'),('WSS64','p20'),('WSS66','p20'),('WSS67','p20'),('WSS68','p20'),('WSS71','p20'),('WSS72','p20'),('WSS74','p20'),('WSS76','p20'),('WSS78','p20'),('WSS79','p20'),('WSS8','p20'),('WSS85','p20'),('WSS88','p20'),('WSS89','p20'),('WSS95','p20'),('WSS96','p20'),('WSS99','p20'),('WSS10','p21'),('WSS103','p21'),('WSS108','p21'),('WSS110','p21'),('WSS114','p21'),('WSS120','p21'),('WSS123','p21'),('WSS133','p21'),('WSS135','p21'),('WSS143','p21'),('WSS145','p21'),('WSS146','p21'),('WSS152','p21'),('WSS162','p21'),('WSS168','p21'),('WSS171','p21'),('WSS176','p21'),('WSS182','p21'),('WSS190','p21'),('WSS191','p21'),('WSS194','p21'),('WSS199','p21'),('WSS200','p21'),('WSS21','p21'),('WSS27','p21'),('WSS28','p21'),('WSS29','p21'),('WSS34','p21'),('WSS38','p21'),('WSS39','p21'),('WSS42','p21'),('WSS53','p21'),('WSS61','p21'),('WSS67','p21'),('WSS7','p21'),('WSS74','p21'),('WSS75','p21'),('WSS78','p21'),('WSS89','p21'),('WSS9','p21'),('WSS93','p21'),('WSS94','p21'),('WSS96','p21'),('WSS98','p21'),('WSS105','p22'),('WSS107','p22'),('WSS111','p22'),('WSS115','p22'),('WSS120','p22'),('WSS122','p22'),('WSS134','p22'),('WSS135','p22'),('WSS140','p22'),('WSS150','p22'),('WSS152','p22'),('WSS153','p22'),('WSS154','p22'),('WSS166','p22'),('WSS169','p22'),('WSS170','p22'),('WSS171','p22'),('WSS174','p22'),('WSS18','p22'),('WSS185','p22'),('WSS186','p22'),('WSS188','p22'),('WSS191','p22'),('WSS197','p22'),('WSS198','p22'),('WSS2','p22'),('WSS30','p22'),('WSS31','p22'),('WSS34','p22'),('WSS38','p22'),('WSS5','p22'),('WSS50','p22'),('WSS53','p22'),('WSS56','p22'),('WSS61','p22'),('WSS71','p22'),('WSS73','p22'),('WSS74','p22'),('WSS76','p22'),('WSS77','p22'),('WSS80','p22'),('WSS81','p22'),('WSS87','p22'),('WSS89','p22'),('WSS90','p22'),('WSS94','p22'),('WSS96','p22'),('WSS104','p23'),('WSS110','p23'),('WSS113','p23'),('WSS12','p23'),('WSS126','p23'),('WSS130','p23'),('WSS135','p23'),('WSS138','p23'),('WSS139','p23'),('WSS141','p23'),('WSS144','p23'),('WSS145','p23'),('WSS146','p23'),('WSS149','p23'),('WSS153','p23'),('WSS158','p23'),('WSS160','p23'),('WSS164','p23'),('WSS175','p23'),('WSS179','p23'),('WSS18','p23'),('WSS187','p23'),('WSS190','p23'),('WSS191','p23'),('WSS194','p23'),('WSS195','p23'),('WSS197','p23'),('WSS20','p23'),('WSS200','p23'),('WSS30','p23'),('WSS31','p23'),('WSS41','p23'),('WSS47','p23'),('WSS53','p23'),('WSS54','p23'),('WSS55','p23'),('WSS66','p23'),('WSS7','p23'),('WSS72','p23'),('WSS74','p23'),('WSS83','p23'),('WSS84','p23'),('WSS88','p23'),('WSS94','p23'),('WSS98','p23'),('WSS10','p24'),('WSS103','p24'),('WSS104','p24'),('WSS118','p24'),('WSS12','p24'),('WSS126','p24'),('WSS128','p24'),('WSS133','p24'),('WSS139','p24'),('WSS144','p24'),('WSS145','p24'),('WSS146','p24'),('WSS153','p24'),('WSS154','p24'),('WSS157','p24'),('WSS16','p24'),('WSS161','p24'),('WSS168','p24'),('WSS180','p24'),('WSS184','p24'),('WSS188','p24'),('WSS189','p24'),('WSS194','p24'),('WSS195','p24'),('WSS196','p24'),('WSS2','p24'),('WSS20','p24'),('WSS32','p24'),('WSS34','p24'),('WSS4','p24'),('WSS41','p24'),('WSS43','p24'),('WSS48','p24'),('WSS5','p24'),('WSS50','p24'),('WSS55','p24'),('WSS56','p24'),('WSS6','p24'),('WSS61','p24'),('WSS65','p24'),('WSS67','p24'),('WSS7','p24'),('WSS77','p24'),('WSS81','p24'),('WSS83','p24'),('WSS87','p24'),('WSS91','p24'),('WSS92','p24'),('WSS95','p24'),('WSS99','p24'),('WSS100','p25'),('WSS102','p25'),('WSS104','p25'),('WSS108','p25'),('WSS114','p25'),('WSS116','p25'),('WSS125','p25'),('WSS128','p25'),('WSS132','p25'),('WSS137','p25'),('WSS149','p25'),('WSS158','p25'),('WSS159','p25'),('WSS16','p25'),('WSS162','p25'),('WSS167','p25'),('WSS170','p25'),('WSS177','p25'),('WSS178','p25'),('WSS180','p25'),('WSS183','p25'),('WSS184','p25'),('WSS187','p25'),('WSS19','p25'),('WSS196','p25'),('WSS2','p25'),('WSS22','p25'),('WSS24','p25'),('WSS26','p25'),('WSS27','p25'),('WSS28','p25'),('WSS41','p25'),('WSS48','p25'),('WSS52','p25'),('WSS65','p25'),('WSS71','p25'),('WSS76','p25'),('WSS8','p25'),('WSS88','p25'),('WSS92','p25'),('WSS97','p25'),('WSS99','p25'),('WSS106','p26'),('WSS107','p26'),('WSS109','p26'),('WSS116','p26'),('WSS124','p26'),('WSS13','p26'),('WSS131','p26'),('WSS133','p26'),('WSS135','p26'),('WSS14','p26'),('WSS144','p26'),('WSS15','p26'),('WSS151','p26'),('WSS154','p26'),('WSS158','p26'),('WSS162','p26'),('WSS163','p26'),('WSS172','p26'),('WSS175','p26'),('WSS177','p26'),('WSS18','p26'),('WSS188','p26'),('WSS192','p26'),('WSS193','p26'),('WSS25','p26'),('WSS26','p26'),('WSS28','p26'),('WSS39','p26'),('WSS46','p26'),('WSS51','p26'),('WSS52','p26'),('WSS55','p26'),('WSS57','p26'),('WSS58','p26'),('WSS59','p26'),('WSS63','p26'),('WSS69','p26'),('WSS73','p26'),('WSS87','p26'),('WSS88','p26'),('WSS90','p26'),('WSS93','p26'),('WSS96','p26'),('WSS101','p27'),('WSS105','p27'),('WSS11','p27'),('WSS112','p27'),('WSS114','p27'),('WSS115','p27'),('WSS121','p27'),('WSS130','p27'),('WSS139','p27'),('WSS142','p27'),('WSS157','p27'),('WSS161','p27'),('WSS162','p27'),('WSS163','p27'),('WSS168','p27'),('WSS17','p27'),('WSS176','p27'),('WSS178','p27'),('WSS188','p27'),('WSS189','p27'),('WSS190','p27'),('WSS194','p27'),('WSS198','p27'),('WSS199','p27'),('WSS20','p27'),('WSS23','p27'),('WSS26','p27'),('WSS27','p27'),('WSS29','p27'),('WSS44','p27'),('WSS47','p27'),('WSS59','p27'),('WSS62','p27'),('WSS64','p27'),('WSS81','p27'),('WSS82','p27'),('WSS86','p27'),('WSS97','p27'),('WSS108','p28'),('WSS11','p28'),('WSS113','p28'),('WSS114','p28'),('WSS117','p28'),('WSS118','p28'),('WSS12','p28'),('WSS122','p28'),('WSS128','p28'),('WSS136','p28'),('WSS137','p28'),('WSS139','p28'),('WSS143','p28'),('WSS144','p28'),('WSS149','p28'),('WSS154','p28'),('WSS155','p28'),('WSS174','p28'),('WSS175','p28'),('WSS179','p28'),('WSS18','p28'),('WSS181','p28'),('WSS186','p28'),('WSS189','p28'),('WSS19','p28'),('WSS194','p28'),('WSS195','p28'),('WSS23','p28'),('WSS25','p28'),('WSS28','p28'),('WSS29','p28'),('WSS3','p28'),('WSS32','p28'),('WSS36','p28'),('WSS38','p28'),('WSS39','p28'),('WSS42','p28'),('WSS45','p28'),('WSS49','p28'),('WSS5','p28'),('WSS50','p28'),('WSS55','p28'),('WSS57','p28'),('WSS67','p28'),('WSS69','p28'),('WSS70','p28'),('WSS72','p28'),('WSS77','p28'),('WSS78','p28'),('WSS80','p28'),('WSS86','p28'),('WSS94','p28'),('WSS95','p28'),('WSS97','p28'),('WSS109','p29'),('WSS110','p29'),('WSS112','p29'),('WSS113','p29'),('WSS122','p29'),('WSS123','p29'),('WSS13','p29'),('WSS144','p29'),('WSS146','p29'),('WSS147','p29'),('WSS149','p29'),('WSS15','p29'),('WSS153','p29'),('WSS154','p29'),('WSS159','p29'),('WSS160','p29'),('WSS163','p29'),('WSS164','p29'),('WSS17','p29'),('WSS182','p29'),('WSS183','p29'),('WSS186','p29'),('WSS190','p29'),('WSS199','p29'),('WSS32','p29'),('WSS35','p29'),('WSS36','p29'),('WSS41','p29'),('WSS43','p29'),('WSS44','p29'),('WSS45','p29'),('WSS49','p29'),('WSS50','p29'),('WSS57','p29'),('WSS59','p29'),('WSS68','p29'),('WSS77','p29'),('WSS83','p29'),('WSS85','p29'),('WSS9','p29'),('WSS92','p29'),('WSS95','p29'),('WSS99','p29'),('WSS109','p3'),('WSS110','p3'),('WSS116','p3'),('WSS12','p3'),('WSS120','p3'),('WSS131','p3'),('WSS134','p3'),('WSS145','p3'),('WSS16','p3'),('WSS160','p3'),('WSS163','p3'),('WSS164','p3'),('WSS166','p3'),('WSS173','p3'),('WSS182','p3'),('WSS184','p3'),('WSS187','p3'),('WSS191','p3'),('WSS196','p3'),('WSS20','p3'),('WSS21','p3'),('WSS24','p3'),('WSS25','p3'),('WSS26','p3'),('WSS3','p3'),('WSS30','p3'),('WSS32','p3'),('WSS40','p3'),('WSS49','p3'),('WSS51','p3'),('WSS58','p3'),('WSS59','p3'),('WSS6','p3'),('WSS64','p3'),('WSS65','p3'),('WSS68','p3'),('WSS69','p3'),('WSS70','p3'),('WSS72','p3'),('WSS82','p3'),('WSS87','p3'),('WSS93','p3'),('WSS94','p3'),('WSS100','p30'),('WSS102','p30'),('WSS116','p30'),('WSS118','p30'),('WSS119','p30'),('WSS120','p30'),('WSS122','p30'),('WSS125','p30'),('WSS128','p30'),('WSS129','p30'),('WSS132','p30'),('WSS135','p30'),('WSS137','p30'),('WSS14','p30'),('WSS140','p30'),('WSS147','p30'),('WSS148','p30'),('WSS152','p30'),('WSS160','p30'),('WSS166','p30'),('WSS168','p30'),('WSS169','p30'),('WSS18','p30'),('WSS180','p30'),('WSS182','p30'),('WSS183','p30'),('WSS184','p30'),('WSS19','p30'),('WSS193','p30'),('WSS195','p30'),('WSS198','p30'),('WSS2','p30'),('WSS200','p30'),('WSS21','p30'),('WSS27','p30'),('WSS34','p30'),('WSS37','p30'),('WSS38','p30'),('WSS39','p30'),('WSS40','p30'),('WSS45','p30'),('WSS50','p30'),('WSS51','p30'),('WSS53','p30'),('WSS64','p30'),('WSS66','p30'),('WSS7','p30'),('WSS73','p30'),('WSS79','p30'),('WSS88','p30'),('WSS89','p30'),('WSS95','p30'),('WSS105','p4'),('WSS11','p4'),('WSS115','p4'),('WSS119','p4'),('WSS120','p4'),('WSS126','p4'),('WSS127','p4'),('WSS133','p4'),('WSS136','p4'),('WSS142','p4'),('WSS143','p4'),('WSS148','p4'),('WSS149','p4'),('WSS150','p4'),('WSS152','p4'),('WSS164','p4'),('WSS166','p4'),('WSS167','p4'),('WSS168','p4'),('WSS174','p4'),('WSS185','p4'),('WSS186','p4'),('WSS187','p4'),('WSS19','p4'),('WSS192','p4'),('WSS196','p4'),('WSS2','p4'),('WSS22','p4'),('WSS24','p4'),('WSS30','p4'),('WSS37','p4'),('WSS48','p4'),('WSS52','p4'),('WSS54','p4'),('WSS57','p4'),('WSS60','p4'),('WSS66','p4'),('WSS69','p4'),('WSS74','p4'),('WSS84','p4'),('WSS91','p4'),('WSS94','p4'),('WSS95','p4'),('WSS98','p4'),('WSS99','p4'),('WSS100','p5'),('WSS101','p5'),('WSS102','p5'),('WSS106','p5'),('WSS109','p5'),('WSS11','p5'),('WSS110','p5'),('WSS113','p5'),('WSS114','p5'),('WSS118','p5'),('WSS125','p5'),('WSS126','p5'),('WSS127','p5'),('WSS129','p5'),('WSS130','p5'),('WSS14','p5'),('WSS145','p5'),('WSS15','p5'),('WSS159','p5'),('WSS162','p5'),('WSS165','p5'),('WSS170','p5'),('WSS173','p5'),('WSS176','p5'),('WSS178','p5'),('WSS185','p5'),('WSS189','p5'),('WSS200','p5'),('WSS28','p5'),('WSS32','p5'),('WSS34','p5'),('WSS35','p5'),('WSS41','p5'),('WSS42','p5'),('WSS43','p5'),('WSS46','p5'),('WSS49','p5'),('WSS52','p5'),('WSS54','p5'),('WSS70','p5'),('WSS74','p5'),('WSS87','p5'),('WSS91','p5'),('WSS93','p5'),('WSS97','p5'),('WSS100','p6'),('WSS103','p6'),('WSS118','p6'),('WSS122','p6'),('WSS131','p6'),('WSS135','p6'),('WSS139','p6'),('WSS140','p6'),('WSS143','p6'),('WSS147','p6'),('WSS15','p6'),('WSS157','p6'),('WSS158','p6'),('WSS167','p6'),('WSS169','p6'),('WSS177','p6'),('WSS179','p6'),('WSS186','p6'),('WSS194','p6'),('WSS195','p6'),('WSS198','p6'),('WSS24','p6'),('WSS27','p6'),('WSS3','p6'),('WSS31','p6'),('WSS33','p6'),('WSS4','p6'),('WSS40','p6'),('WSS42','p6'),('WSS54','p6'),('WSS57','p6'),('WSS62','p6'),('WSS68','p6'),('WSS70','p6'),('WSS8','p6'),('WSS80','p6'),('WSS84','p6'),('WSS85','p6'),('WSS9','p6'),('WSS93','p6'),('WSS104','p7'),('WSS107','p7'),('WSS110','p7'),('WSS112','p7'),('WSS114','p7'),('WSS118','p7'),('WSS13','p7'),('WSS138','p7'),('WSS140','p7'),('WSS141','p7'),('WSS143','p7'),('WSS146','p7'),('WSS15','p7'),('WSS151','p7'),('WSS159','p7'),('WSS16','p7'),('WSS168','p7'),('WSS174','p7'),('WSS175','p7'),('WSS177','p7'),('WSS178','p7'),('WSS179','p7'),('WSS182','p7'),('WSS185','p7'),('WSS188','p7'),('WSS190','p7'),('WSS191','p7'),('WSS193','p7'),('WSS196','p7'),('WSS199','p7'),('WSS22','p7'),('WSS23','p7'),('WSS24','p7'),('WSS26','p7'),('WSS3','p7'),('WSS30','p7'),('WSS31','p7'),('WSS39','p7'),('WSS4','p7'),('WSS41','p7'),('WSS44','p7'),('WSS49','p7'),('WSS55','p7'),('WSS61','p7'),('WSS62','p7'),('WSS65','p7'),('WSS68','p7'),('WSS7','p7'),('WSS71','p7'),('WSS78','p7'),('WSS79','p7'),('WSS85','p7'),('WSS88','p7'),('WSS89','p7'),('WSS9','p7'),('WSS91','p7'),('WSS92','p7'),('WSS97','p7'),('WSS100','p8'),('WSS103','p8'),('WSS105','p8'),('WSS106','p8'),('WSS108','p8'),('WSS11','p8'),('WSS110','p8'),('WSS115','p8'),('WSS117','p8'),('WSS119','p8'),('WSS12','p8'),('WSS121','p8'),('WSS122','p8'),('WSS124','p8'),('WSS125','p8'),('WSS128','p8'),('WSS130','p8'),('WSS134','p8'),('WSS138','p8'),('WSS147','p8'),('WSS151','p8'),('WSS158','p8'),('WSS159','p8'),('WSS16','p8'),('WSS163','p8'),('WSS167','p8'),('WSS172','p8'),('WSS176','p8'),('WSS186','p8'),('WSS189','p8'),('WSS197','p8'),('WSS198','p8'),('WSS32','p8'),('WSS33','p8'),('WSS35','p8'),('WSS41','p8'),('WSS44','p8'),('WSS46','p8'),('WSS47','p8'),('WSS48','p8'),('WSS5','p8'),('WSS50','p8'),('WSS51','p8'),('WSS60','p8'),('WSS61','p8'),('WSS64','p8'),('WSS7','p8'),('WSS70','p8'),('WSS76','p8'),('WSS78','p8'),('WSS80','p8'),('WSS81','p8'),('WSS86','p8'),('WSS90','p8'),('WSS92','p8'),('WSS10','p9'),('WSS102','p9'),('WSS103','p9'),('WSS111','p9'),('WSS112','p9'),('WSS12','p9'),('WSS121','p9'),('WSS123','p9'),('WSS124','p9'),('WSS131','p9'),('WSS137','p9'),('WSS140','p9'),('WSS153','p9'),('WSS155','p9'),('WSS156','p9'),('WSS161','p9'),('WSS165','p9'),('WSS175','p9'),('WSS176','p9'),('WSS179','p9'),('WSS180','p9'),('WSS185','p9'),('WSS186','p9'),('WSS192','p9'),('WSS194','p9'),('WSS20','p9'),('WSS28','p9'),('WSS3','p9'),('WSS30','p9'),('WSS35','p9'),('WSS36','p9'),('WSS42','p9'),('WSS45','p9'),('WSS46','p9'),('WSS48','p9'),('WSS55','p9'),('WSS69','p9'),('WSS74','p9'),('WSS75','p9'),('WSS76','p9'),('WSS82','p9'),('WSS83','p9'),('WSS86','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS33'),(1,2,'WSS22'),(2,1,'WSS98'),(2,2,'WSS101'),(3,1,'WSS167'),(3,1,'WSS97'),(4,1,'WSS12'),(4,2,'WSS84'),(5,1,'WSS88'),(5,2,'WSS185'),(6,1,'WSS63'),(6,2,'WSS67'),(7,1,'WSS17'),(7,2,'WSS195'),(7,2,'WSS28'),(8,1,'WSS125'),(8,2,'WSS87'),(9,1,'WSS113'),(9,2,'WSS52'),(10,1,'WSS92'),(10,2,'WSS161'),(11,1,'WSS190'),(11,2,'WSS33'),(12,1,'WSS156'),(12,2,'WSS101'),(13,1,'WSS1'),(13,2,'WSS79'),(14,1,'WSS24'),(14,2,'WSS74'),(15,1,'WSS95'),(15,2,'WSS181'),(15,3,'WSS171'),(16,1,'WSS143'),(16,2,'WSS142'),(17,1,'WSS106'),(17,2,'WSS15'),(18,1,'WSS16'),(18,2,'WSS106'),(18,3,'WSS24'),(19,1,'WSS191'),(19,2,'WSS26'),(20,1,'WSS28'),(20,2,'WSS152'),(21,1,'WSS183'),(21,2,'WSS15'),(21,3,'WSS98'),(22,1,'WSS88'),(22,2,'WSS78'),(23,1,'WSS111'),(23,2,'WSS196'),(24,1,'WSS41'),(24,2,'WSS57'),(25,1,'WSS156'),(25,1,'WSS173'),(26,1,'WSS197'),(26,1,'WSS199'),(27,1,'WSS165'),(27,1,'WSS186'),(28,1,'WSS15'),(28,1,'WSS193'),(29,1,'WSS106'),(29,1,'WSS109'),(30,1,'WSS17'),(30,1,'WSS187'),(30,2,'WSS106'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-27 16:20:05
