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
INSERT INTO `initialgoalparameter` VALUES (5,'G','p1'),(15,'I','p1'),(18,'I','p1'),(21,'I','p1'),(27,'G','p1'),(29,'G','p1'),(3,'I','p10'),(4,'I','p10'),(5,'G','p10'),(8,'G','p10'),(9,'G','p10'),(16,'G','p10'),(17,'G','p10'),(19,'I','p10'),(23,'I','p10'),(24,'I','p10'),(25,'I','p10'),(26,'G','p10'),(27,'G','p10'),(1,'G','p11'),(5,'I','p11'),(6,'I','p11'),(7,'I','p11'),(11,'I','p11'),(13,'I','p11'),(14,'I','p11'),(15,'I','p11'),(18,'I','p11'),(19,'I','p11'),(25,'G','p11'),(27,'I','p11'),(28,'G','p11'),(29,'I','p11'),(3,'G','p12'),(4,'G','p12'),(8,'I','p12'),(10,'I','p12'),(11,'G','p12'),(13,'I','p12'),(17,'G','p12'),(19,'I','p12'),(21,'G','p12'),(22,'I','p12'),(30,'G','p12'),(4,'I','p13'),(11,'I','p13'),(12,'G','p13'),(18,'G','p13'),(22,'G','p13'),(30,'I','p13'),(7,'I','p14'),(8,'G','p14'),(12,'I','p14'),(13,'G','p14'),(17,'I','p14'),(18,'G','p14'),(20,'G','p14'),(28,'I','p14'),(30,'G','p14'),(2,'I','p15'),(4,'G','p15'),(6,'G','p15'),(7,'I','p15'),(12,'I','p15'),(14,'G','p15'),(16,'I','p15'),(19,'I','p15'),(20,'I','p15'),(23,'G','p15'),(26,'G','p15'),(27,'I','p15'),(29,'I','p15'),(2,'G','p16'),(3,'I','p16'),(4,'G','p16'),(13,'I','p16'),(14,'G','p16'),(15,'G','p16'),(17,'G','p16'),(20,'I','p16'),(21,'I','p16'),(22,'I','p16'),(23,'I','p16'),(26,'I','p16'),(28,'I','p16'),(1,'I','p17'),(7,'G','p17'),(8,'I','p17'),(9,'G','p17'),(13,'G','p17'),(19,'G','p17'),(24,'G','p17'),(25,'I','p17'),(26,'I','p17'),(30,'I','p17'),(4,'G','p18'),(8,'I','p18'),(12,'I','p18'),(13,'I','p18'),(23,'G','p18'),(24,'I','p18'),(25,'I','p18'),(26,'I','p18'),(29,'I','p18'),(2,'G','p19'),(3,'G','p19'),(6,'G','p19'),(7,'I','p19'),(14,'I','p19'),(24,'I','p19'),(25,'G','p19'),(28,'I','p19'),(29,'I','p19'),(7,'G','p2'),(18,'G','p2'),(24,'I','p2'),(3,'G','p20'),(6,'I','p20'),(9,'I','p20'),(10,'G','p20'),(18,'G','p20'),(21,'I','p20'),(23,'I','p20'),(1,'I','p21'),(4,'I','p21'),(6,'I','p21'),(8,'G','p21'),(9,'I','p21'),(10,'I','p21'),(12,'G','p21'),(13,'I','p21'),(14,'I','p21'),(16,'G','p21'),(17,'I','p21'),(21,'G','p21'),(24,'I','p21'),(28,'I','p21'),(5,'G','p22'),(7,'G','p22'),(8,'I','p22'),(15,'G','p22'),(19,'G','p22'),(20,'G','p22'),(22,'I','p22'),(28,'G','p22'),(30,'G','p22'),(1,'I','p23'),(10,'G','p23'),(11,'I','p23'),(12,'I','p23'),(13,'I','p23'),(14,'I','p23'),(15,'I','p23'),(18,'I','p23'),(22,'I','p23'),(26,'I','p23'),(29,'G','p23'),(30,'I','p23'),(5,'I','p24'),(8,'G','p24'),(10,'I','p24'),(11,'G','p24'),(13,'G','p24'),(15,'G','p24'),(16,'G','p24'),(20,'I','p24'),(23,'I','p24'),(28,'I','p24'),(5,'I','p25'),(8,'I','p25'),(15,'I','p25'),(16,'I','p25'),(17,'I','p25'),(21,'G','p25'),(25,'I','p25'),(30,'G','p25'),(1,'G','p26'),(11,'G','p26'),(15,'I','p26'),(17,'I','p26'),(18,'I','p26'),(19,'G','p26'),(20,'I','p26'),(28,'I','p26'),(1,'G','p27'),(2,'G','p27'),(3,'I','p27'),(6,'I','p27'),(10,'G','p27'),(11,'I','p27'),(14,'G','p27'),(17,'G','p27'),(24,'G','p27'),(27,'I','p27'),(29,'I','p27'),(1,'I','p28'),(2,'I','p28'),(6,'I','p28'),(10,'I','p28'),(14,'I','p28'),(16,'G','p28'),(20,'G','p28'),(22,'G','p28'),(24,'I','p28'),(1,'I','p29'),(3,'I','p29'),(4,'I','p29'),(11,'I','p29'),(21,'I','p29'),(23,'G','p29'),(25,'G','p29'),(27,'G','p29'),(28,'G','p29'),(3,'G','p3'),(6,'I','p3'),(7,'G','p3'),(8,'I','p3'),(10,'G','p3'),(12,'I','p3'),(13,'G','p3'),(14,'G','p3'),(20,'G','p3'),(24,'G','p3'),(9,'I','p30'),(10,'I','p30'),(12,'G','p30'),(15,'I','p30'),(17,'I','p30'),(22,'I','p30'),(23,'I','p30'),(26,'I','p30'),(29,'G','p30'),(2,'I','p4'),(5,'G','p4'),(7,'I','p4'),(11,'G','p4'),(16,'I','p4'),(17,'I','p4'),(19,'I','p4'),(22,'G','p4'),(26,'G','p4'),(1,'I','p5'),(2,'G','p5'),(5,'I','p5'),(7,'I','p5'),(9,'I','p5'),(11,'I','p5'),(18,'I','p5'),(19,'G','p5'),(20,'I','p5'),(23,'I','p5'),(25,'I','p5'),(26,'I','p5'),(27,'I','p5'),(28,'G','p5'),(2,'I','p6'),(6,'G','p6'),(9,'G','p6'),(12,'G','p6'),(15,'G','p6'),(16,'I','p6'),(25,'G','p6'),(27,'I','p6'),(29,'G','p6'),(30,'I','p6'),(2,'I','p7'),(3,'I','p7'),(5,'I','p7'),(9,'G','p7'),(10,'I','p7'),(12,'I','p7'),(20,'I','p7'),(21,'I','p7'),(24,'G','p7'),(27,'G','p7'),(4,'I','p8'),(9,'I','p8'),(16,'I','p8'),(18,'I','p8'),(19,'I','p8'),(21,'I','p8'),(22,'I','p8'),(23,'G','p8'),(25,'I','p8'),(27,'I','p8'),(30,'I','p8'),(1,'G','p9'),(2,'I','p9'),(3,'I','p9'),(4,'I','p9'),(5,'I','p9'),(6,'G','p9'),(9,'I','p9'),(14,'I','p9'),(16,'I','p9'),(21,'G','p9'),(22,'G','p9'),(26,'G','p9'),(29,'I','p9'),(30,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS103','p1'),('WSS106','p1'),('WSS109','p1'),('WSS123','p1'),('WSS132','p1'),('WSS16','p1'),('WSS24','p1'),('WSS69','p1'),('WSS77','p1'),('WSS84','p1'),('WSS88','p1'),('WSS95','p1'),('WSS111','p10'),('WSS118','p10'),('WSS143','p10'),('WSS160','p10'),('WSS173','p10'),('WSS185','p10'),('WSS39','p10'),('WSS44','p10'),('WSS56','p10'),('WSS71','p10'),('WSS99','p10'),('WSS110','p11'),('WSS124','p11'),('WSS152','p11'),('WSS168','p11'),('WSS192','p11'),('WSS20','p11'),('WSS24','p11'),('WSS38','p11'),('WSS4','p11'),('WSS45','p11'),('WSS85','p11'),('WSS99','p11'),('WSS115','p12'),('WSS117','p12'),('WSS127','p12'),('WSS136','p12'),('WSS146','p12'),('WSS175','p12'),('WSS184','p12'),('WSS188','p12'),('WSS31','p12'),('WSS42','p12'),('WSS46','p12'),('WSS5','p12'),('WSS52','p12'),('WSS6','p12'),('WSS97','p12'),('WSS101','p13'),('WSS11','p13'),('WSS142','p13'),('WSS144','p13'),('WSS159','p13'),('WSS166','p13'),('WSS174','p13'),('WSS178','p13'),('WSS195','p13'),('WSS199','p13'),('WSS25','p13'),('WSS27','p13'),('WSS58','p13'),('WSS93','p13'),('WSS1','p14'),('WSS114','p14'),('WSS128','p14'),('WSS154','p14'),('WSS177','p14'),('WSS18','p14'),('WSS180','p14'),('WSS187','p14'),('WSS189','p14'),('WSS190','p14'),('WSS2','p14'),('WSS45','p14'),('WSS62','p14'),('WSS72','p14'),('WSS76','p14'),('WSS126','p15'),('WSS157','p15'),('WSS166','p15'),('WSS18','p15'),('WSS19','p15'),('WSS23','p15'),('WSS47','p15'),('WSS48','p15'),('WSS49','p15'),('WSS6','p15'),('WSS70','p15'),('WSS1','p16'),('WSS138','p16'),('WSS183','p16'),('WSS186','p16'),('WSS3','p16'),('WSS32','p16'),('WSS102','p17'),('WSS106','p17'),('WSS107','p17'),('WSS115','p17'),('WSS190','p17'),('WSS26','p17'),('WSS49','p17'),('WSS86','p17'),('WSS92','p17'),('WSS107','p18'),('WSS11','p18'),('WSS116','p18'),('WSS121','p18'),('WSS151','p18'),('WSS152','p18'),('WSS169','p18'),('WSS170','p18'),('WSS177','p18'),('WSS191','p18'),('WSS20','p18'),('WSS28','p18'),('WSS5','p18'),('WSS53','p18'),('WSS81','p18'),('WSS94','p18'),('WSS108','p19'),('WSS119','p19'),('WSS142','p19'),('WSS194','p19'),('WSS198','p19'),('WSS21','p19'),('WSS3','p19'),('WSS32','p19'),('WSS39','p19'),('WSS56','p19'),('WSS74','p19'),('WSS76','p19'),('WSS95','p19'),('WSS112','p2'),('WSS134','p2'),('WSS158','p2'),('WSS16','p2'),('WSS172','p2'),('WSS185','p2'),('WSS34','p2'),('WSS52','p2'),('WSS57','p2'),('WSS82','p2'),('WSS117','p20'),('WSS130','p20'),('WSS14','p20'),('WSS147','p20'),('WSS150','p20'),('WSS196','p20'),('WSS29','p20'),('WSS53','p20'),('WSS54','p20'),('WSS62','p20'),('WSS71','p20'),('WSS116','p21'),('WSS128','p21'),('WSS132','p21'),('WSS145','p21'),('WSS15','p21'),('WSS165','p21'),('WSS167','p21'),('WSS179','p21'),('WSS181','p21'),('WSS68','p21'),('WSS9','p21'),('WSS100','p22'),('WSS122','p22'),('WSS17','p22'),('WSS173','p22'),('WSS179','p22'),('WSS37','p22'),('WSS41','p22'),('WSS88','p22'),('WSS98','p22'),('WSS134','p23'),('WSS141','p23'),('WSS149','p23'),('WSS33','p23'),('WSS43','p23'),('WSS46','p23'),('WSS50','p23'),('WSS63','p23'),('WSS68','p23'),('WSS78','p23'),('WSS79','p23'),('WSS126','p24'),('WSS133','p24'),('WSS137','p24'),('WSS140','p24'),('WSS15','p24'),('WSS151','p24'),('WSS163','p24'),('WSS164','p24'),('WSS178','p24'),('WSS187','p24'),('WSS193','p24'),('WSS197','p24'),('WSS30','p24'),('WSS36','p24'),('WSS40','p24'),('WSS72','p24'),('WSS74','p24'),('WSS75','p24'),('WSS80','p24'),('WSS9','p24'),('WSS108','p25'),('WSS114','p25'),('WSS13','p25'),('WSS139','p25'),('WSS148','p25'),('WSS160','p25'),('WSS22','p25'),('WSS48','p25'),('WSS60','p25'),('WSS78','p25'),('WSS79','p25'),('WSS118','p26'),('WSS165','p26'),('WSS175','p26'),('WSS35','p26'),('WSS47','p26'),('WSS60','p26'),('WSS61','p26'),('WSS81','p26'),('WSS94','p26'),('WSS96','p26'),('WSS125','p27'),('WSS182','p27'),('WSS194','p27'),('WSS33','p27'),('WSS37','p27'),('WSS40','p27'),('WSS64','p27'),('WSS80','p27'),('WSS100','p28'),('WSS112','p28'),('WSS140','p28'),('WSS143','p28'),('WSS146','p28'),('WSS162','p28'),('WSS168','p28'),('WSS58','p28'),('WSS65','p28'),('WSS69','p28'),('WSS77','p28'),('WSS82','p28'),('WSS85','p28'),('WSS89','p28'),('WSS105','p29'),('WSS113','p29'),('WSS12','p29'),('WSS124','p29'),('WSS130','p29'),('WSS135','p29'),('WSS145','p29'),('WSS169','p29'),('WSS195','p29'),('WSS198','p29'),('WSS200','p29'),('WSS35','p29'),('WSS41','p29'),('WSS50','p29'),('WSS51','p29'),('WSS66','p29'),('WSS67','p29'),('WSS8','p29'),('WSS104','p3'),('WSS105','p3'),('WSS129','p3'),('WSS141','p3'),('WSS153','p3'),('WSS161','p3'),('WSS180','p3'),('WSS188','p3'),('WSS25','p3'),('WSS26','p3'),('WSS28','p3'),('WSS30','p3'),('WSS31','p3'),('WSS51','p3'),('WSS57','p3'),('WSS63','p3'),('WSS67','p3'),('WSS7','p3'),('WSS73','p3'),('WSS86','p3'),('WSS92','p3'),('WSS110','p30'),('WSS12','p30'),('WSS121','p30'),('WSS123','p30'),('WSS136','p30'),('WSS138','p30'),('WSS150','p30'),('WSS153','p30'),('WSS154','p30'),('WSS156','p30'),('WSS164','p30'),('WSS170','p30'),('WSS199','p30'),('WSS59','p30'),('WSS8','p30'),('WSS84','p30'),('WSS96','p30'),('WSS97','p30'),('WSS10','p4'),('WSS102','p4'),('WSS133','p4'),('WSS135','p4'),('WSS148','p4'),('WSS158','p4'),('WSS161','p4'),('WSS171','p4'),('WSS200','p4'),('WSS21','p4'),('WSS22','p4'),('WSS38','p4'),('WSS54','p4'),('WSS55','p4'),('WSS83','p4'),('WSS89','p4'),('WSS98','p4'),('WSS109','p5'),('WSS119','p5'),('WSS125','p5'),('WSS127','p5'),('WSS14','p5'),('WSS157','p5'),('WSS163','p5'),('WSS174','p5'),('WSS186','p5'),('WSS191','p5'),('WSS34','p5'),('WSS4','p5'),('WSS64','p5'),('WSS73','p5'),('WSS83','p5'),('WSS91','p5'),('WSS93','p5'),('WSS103','p6'),('WSS120','p6'),('WSS129','p6'),('WSS13','p6'),('WSS131','p6'),('WSS137','p6'),('WSS147','p6'),('WSS156','p6'),('WSS17','p6'),('WSS176','p6'),('WSS197','p6'),('WSS36','p6'),('WSS55','p6'),('WSS7','p6'),('WSS75','p6'),('WSS90','p6'),('WSS91','p6'),('WSS155','p7'),('WSS162','p7'),('WSS167','p7'),('WSS171','p7'),('WSS172','p7'),('WSS181','p7'),('WSS23','p7'),('WSS42','p7'),('WSS59','p7'),('WSS61','p7'),('WSS70','p7'),('WSS90','p7'),('WSS111','p8'),('WSS113','p8'),('WSS120','p8'),('WSS144','p8'),('WSS149','p8'),('WSS155','p8'),('WSS159','p8'),('WSS19','p8'),('WSS196','p8'),('WSS27','p8'),('WSS43','p8'),('WSS44','p8'),('WSS65','p8'),('WSS10','p9'),('WSS101','p9'),('WSS122','p9'),('WSS176','p9'),('WSS182','p9'),('WSS183','p9'),('WSS184','p9'),('WSS192','p9'),('WSS2','p9'),('WSS29','p9'),('WSS66','p9'),('WSS87','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS102','p1'),('WSS122','p1'),('WSS140','p1'),('WSS147','p1'),('WSS159','p1'),('WSS167','p1'),('WSS171','p1'),('WSS179','p1'),('WSS196','p1'),('WSS29','p1'),('WSS46','p1'),('WSS55','p1'),('WSS84','p1'),('WSS90','p1'),('WSS92','p1'),('WSS11','p10'),('WSS131','p10'),('WSS137','p10'),('WSS141','p10'),('WSS148','p10'),('WSS149','p10'),('WSS15','p10'),('WSS161','p10'),('WSS166','p10'),('WSS168','p10'),('WSS169','p10'),('WSS17','p10'),('WSS194','p10'),('WSS2','p10'),('WSS32','p10'),('WSS4','p10'),('WSS5','p10'),('WSS59','p10'),('WSS65','p10'),('WSS9','p10'),('WSS95','p10'),('WSS109','p11'),('WSS11','p11'),('WSS113','p11'),('WSS117','p11'),('WSS125','p11'),('WSS135','p11'),('WSS136','p11'),('WSS15','p11'),('WSS156','p11'),('WSS167','p11'),('WSS195','p11'),('WSS20','p11'),('WSS200','p11'),('WSS23','p11'),('WSS37','p11'),('WSS47','p11'),('WSS52','p11'),('WSS65','p11'),('WSS83','p11'),('WSS109','p12'),('WSS114','p12'),('WSS117','p12'),('WSS120','p12'),('WSS124','p12'),('WSS133','p12'),('WSS137','p12'),('WSS143','p12'),('WSS145','p12'),('WSS148','p12'),('WSS15','p12'),('WSS154','p12'),('WSS155','p12'),('WSS160','p12'),('WSS171','p12'),('WSS193','p12'),('WSS198','p12'),('WSS2','p12'),('WSS20','p12'),('WSS34','p12'),('WSS55','p12'),('WSS57','p12'),('WSS64','p12'),('WSS8','p12'),('WSS99','p12'),('WSS1','p13'),('WSS101','p13'),('WSS104','p13'),('WSS118','p13'),('WSS121','p13'),('WSS131','p13'),('WSS140','p13'),('WSS150','p13'),('WSS155','p13'),('WSS158','p13'),('WSS177','p13'),('WSS192','p13'),('WSS197','p13'),('WSS199','p13'),('WSS21','p13'),('WSS22','p13'),('WSS23','p13'),('WSS25','p13'),('WSS34','p13'),('WSS47','p13'),('WSS48','p13'),('WSS50','p13'),('WSS69','p13'),('WSS71','p13'),('WSS78','p13'),('WSS79','p13'),('WSS88','p13'),('WSS96','p13'),('WSS108','p14'),('WSS116','p14'),('WSS130','p14'),('WSS134','p14'),('WSS147','p14'),('WSS151','p14'),('WSS154','p14'),('WSS156','p14'),('WSS160','p14'),('WSS162','p14'),('WSS164','p14'),('WSS17','p14'),('WSS177','p14'),('WSS180','p14'),('WSS189','p14'),('WSS27','p14'),('WSS33','p14'),('WSS40','p14'),('WSS42','p14'),('WSS44','p14'),('WSS47','p14'),('WSS6','p14'),('WSS65','p14'),('WSS7','p14'),('WSS75','p14'),('WSS84','p14'),('WSS100','p15'),('WSS106','p15'),('WSS12','p15'),('WSS123','p15'),('WSS131','p15'),('WSS14','p15'),('WSS146','p15'),('WSS163','p15'),('WSS169','p15'),('WSS174','p15'),('WSS186','p15'),('WSS197','p15'),('WSS20','p15'),('WSS200','p15'),('WSS21','p15'),('WSS23','p15'),('WSS26','p15'),('WSS34','p15'),('WSS36','p15'),('WSS39','p15'),('WSS41','p15'),('WSS5','p15'),('WSS50','p15'),('WSS55','p15'),('WSS72','p15'),('WSS73','p15'),('WSS76','p15'),('WSS81','p15'),('WSS82','p15'),('WSS83','p15'),('WSS98','p15'),('WSS105','p16'),('WSS107','p16'),('WSS108','p16'),('WSS109','p16'),('WSS112','p16'),('WSS120','p16'),('WSS130','p16'),('WSS143','p16'),('WSS151','p16'),('WSS157','p16'),('WSS162','p16'),('WSS171','p16'),('WSS18','p16'),('WSS192','p16'),('WSS198','p16'),('WSS200','p16'),('WSS22','p16'),('WSS27','p16'),('WSS48','p16'),('WSS60','p16'),('WSS69','p16'),('WSS70','p16'),('WSS76','p16'),('WSS8','p16'),('WSS80','p16'),('WSS10','p17'),('WSS103','p17'),('WSS105','p17'),('WSS12','p17'),('WSS120','p17'),('WSS132','p17'),('WSS142','p17'),('WSS149','p17'),('WSS152','p17'),('WSS163','p17'),('WSS166','p17'),('WSS168','p17'),('WSS184','p17'),('WSS191','p17'),('WSS193','p17'),('WSS24','p17'),('WSS25','p17'),('WSS26','p17'),('WSS31','p17'),('WSS36','p17'),('WSS4','p17'),('WSS48','p17'),('WSS56','p17'),('WSS61','p17'),('WSS67','p17'),('WSS77','p17'),('WSS79','p17'),('WSS87','p17'),('WSS91','p17'),('WSS96','p17'),('WSS1','p18'),('WSS108','p18'),('WSS110','p18'),('WSS115','p18'),('WSS12','p18'),('WSS125','p18'),('WSS128','p18'),('WSS130','p18'),('WSS135','p18'),('WSS141','p18'),('WSS157','p18'),('WSS166','p18'),('WSS174','p18'),('WSS179','p18'),('WSS189','p18'),('WSS19','p18'),('WSS195','p18'),('WSS22','p18'),('WSS40','p18'),('WSS42','p18'),('WSS65','p18'),('WSS66','p18'),('WSS73','p18'),('WSS74','p18'),('WSS78','p18'),('WSS82','p18'),('WSS86','p18'),('WSS9','p18'),('WSS95','p18'),('WSS100','p19'),('WSS104','p19'),('WSS112','p19'),('WSS114','p19'),('WSS118','p19'),('WSS127','p19'),('WSS128','p19'),('WSS137','p19'),('WSS14','p19'),('WSS140','p19'),('WSS142','p19'),('WSS153','p19'),('WSS157','p19'),('WSS178','p19'),('WSS180','p19'),('WSS184','p19'),('WSS192','p19'),('WSS33','p19'),('WSS35','p19'),('WSS42','p19'),('WSS53','p19'),('WSS62','p19'),('WSS67','p19'),('WSS68','p19'),('WSS78','p19'),('WSS80','p19'),('WSS92','p19'),('WSS100','p2'),('WSS110','p2'),('WSS13','p2'),('WSS136','p2'),('WSS148','p2'),('WSS16','p2'),('WSS160','p2'),('WSS162','p2'),('WSS176','p2'),('WSS186','p2'),('WSS199','p2'),('WSS24','p2'),('WSS28','p2'),('WSS45','p2'),('WSS49','p2'),('WSS51','p2'),('WSS54','p2'),('WSS60','p2'),('WSS74','p2'),('WSS8','p2'),('WSS89','p2'),('WSS116','p20'),('WSS124','p20'),('WSS127','p20'),('WSS129','p20'),('WSS131','p20'),('WSS139','p20'),('WSS150','p20'),('WSS158','p20'),('WSS161','p20'),('WSS169','p20'),('WSS177','p20'),('WSS180','p20'),('WSS186','p20'),('WSS196','p20'),('WSS20','p20'),('WSS26','p20'),('WSS28','p20'),('WSS29','p20'),('WSS44','p20'),('WSS51','p20'),('WSS66','p20'),('WSS7','p20'),('WSS72','p20'),('WSS82','p20'),('WSS9','p20'),('WSS96','p20'),('WSS103','p21'),('WSS107','p21'),('WSS11','p21'),('WSS13','p21'),('WSS150','p21'),('WSS152','p21'),('WSS153','p21'),('WSS154','p21'),('WSS161','p21'),('WSS170','p21'),('WSS173','p21'),('WSS181','p21'),('WSS185','p21'),('WSS19','p21'),('WSS199','p21'),('WSS24','p21'),('WSS30','p21'),('WSS43','p21'),('WSS44','p21'),('WSS49','p21'),('WSS56','p21'),('WSS6','p21'),('WSS81','p21'),('WSS93','p21'),('WSS105','p22'),('WSS112','p22'),('WSS113','p22'),('WSS120','p22'),('WSS13','p22'),('WSS133','p22'),('WSS138','p22'),('WSS143','p22'),('WSS144','p22'),('WSS156','p22'),('WSS16','p22'),('WSS164','p22'),('WSS182','p22'),('WSS185','p22'),('WSS188','p22'),('WSS189','p22'),('WSS197','p22'),('WSS22','p22'),('WSS30','p22'),('WSS37','p22'),('WSS39','p22'),('WSS44','p22'),('WSS52','p22'),('WSS53','p22'),('WSS63','p22'),('WSS74','p22'),('WSS82','p22'),('WSS84','p22'),('WSS10','p23'),('WSS101','p23'),('WSS109','p23'),('WSS110','p23'),('WSS111','p23'),('WSS113','p23'),('WSS118','p23'),('WSS122','p23'),('WSS124','p23'),('WSS126','p23'),('WSS134','p23'),('WSS139','p23'),('WSS146','p23'),('WSS158','p23'),('WSS16','p23'),('WSS190','p23'),('WSS37','p23'),('WSS4','p23'),('WSS41','p23'),('WSS50','p23'),('WSS54','p23'),('WSS71','p23'),('WSS85','p23'),('WSS88','p23'),('WSS1','p24'),('WSS101','p24'),('WSS106','p24'),('WSS118','p24'),('WSS121','p24'),('WSS134','p24'),('WSS139','p24'),('WSS141','p24'),('WSS153','p24'),('WSS155','p24'),('WSS156','p24'),('WSS167','p24'),('WSS179','p24'),('WSS18','p24'),('WSS188','p24'),('WSS194','p24'),('WSS199','p24'),('WSS29','p24'),('WSS3','p24'),('WSS30','p24'),('WSS34','p24'),('WSS38','p24'),('WSS41','p24'),('WSS51','p24'),('WSS64','p24'),('WSS66','p24'),('WSS79','p24'),('WSS80','p24'),('WSS85','p24'),('WSS9','p24'),('WSS94','p24'),('WSS98','p24'),('WSS102','p25'),('WSS11','p25'),('WSS110','p25'),('WSS112','p25'),('WSS125','p25'),('WSS126','p25'),('WSS127','p25'),('WSS138','p25'),('WSS141','p25'),('WSS152','p25'),('WSS154','p25'),('WSS165','p25'),('WSS168','p25'),('WSS170','p25'),('WSS183','p25'),('WSS187','p25'),('WSS25','p25'),('WSS27','p25'),('WSS3','p25'),('WSS31','p25'),('WSS36','p25'),('WSS39','p25'),('WSS45','p25'),('WSS46','p25'),('WSS52','p25'),('WSS62','p25'),('WSS63','p25'),('WSS68','p25'),('WSS72','p25'),('WSS95','p25'),('WSS106','p26'),('WSS108','p26'),('WSS121','p26'),('WSS132','p26'),('WSS149','p26'),('WSS151','p26'),('WSS163','p26'),('WSS169','p26'),('WSS183','p26'),('WSS19','p26'),('WSS192','p26'),('WSS200','p26'),('WSS32','p26'),('WSS37','p26'),('WSS52','p26'),('WSS57','p26'),('WSS7','p26'),('WSS77','p26'),('WSS81','p26'),('WSS89','p26'),('WSS91','p26'),('WSS111','p27'),('WSS116','p27'),('WSS119','p27'),('WSS124','p27'),('WSS126','p27'),('WSS129','p27'),('WSS138','p27'),('WSS14','p27'),('WSS144','p27'),('WSS158','p27'),('WSS167','p27'),('WSS172','p27'),('WSS177','p27'),('WSS178','p27'),('WSS179','p27'),('WSS31','p27'),('WSS38','p27'),('WSS4','p27'),('WSS54','p27'),('WSS59','p27'),('WSS77','p27'),('WSS90','p27'),('WSS93','p27'),('WSS94','p27'),('WSS95','p27'),('WSS97','p27'),('WSS104','p28'),('WSS123','p28'),('WSS128','p28'),('WSS129','p28'),('WSS15','p28'),('WSS162','p28'),('WSS170','p28'),('WSS183','p28'),('WSS190','p28'),('WSS21','p28'),('WSS28','p28'),('WSS35','p28'),('WSS43','p28'),('WSS6','p28'),('WSS67','p28'),('WSS69','p28'),('WSS70','p28'),('WSS73','p28'),('WSS85','p28'),('WSS87','p28'),('WSS97','p28'),('WSS119','p29'),('WSS145','p29'),('WSS148','p29'),('WSS150','p29'),('WSS151','p29'),('WSS153','p29'),('WSS157','p29'),('WSS165','p29'),('WSS174','p29'),('WSS178','p29'),('WSS18','p29'),('WSS184','p29'),('WSS187','p29'),('WSS191','p29'),('WSS194','p29'),('WSS198','p29'),('WSS33','p29'),('WSS38','p29'),('WSS53','p29'),('WSS68','p29'),('WSS70','p29'),('WSS85','p29'),('WSS86','p29'),('WSS88','p29'),('WSS93','p29'),('WSS10','p3'),('WSS102','p3'),('WSS104','p3'),('WSS106','p3'),('WSS115','p3'),('WSS116','p3'),('WSS117','p3'),('WSS126','p3'),('WSS129','p3'),('WSS134','p3'),('WSS159','p3'),('WSS16','p3'),('WSS164','p3'),('WSS172','p3'),('WSS175','p3'),('WSS176','p3'),('WSS193','p3'),('WSS194','p3'),('WSS195','p3'),('WSS29','p3'),('WSS3','p3'),('WSS31','p3'),('WSS38','p3'),('WSS41','p3'),('WSS42','p3'),('WSS48','p3'),('WSS55','p3'),('WSS57','p3'),('WSS61','p3'),('WSS64','p3'),('WSS76','p3'),('WSS79','p3'),('WSS8','p3'),('WSS107','p30'),('WSS115','p30'),('WSS117','p30'),('WSS132','p30'),('WSS139','p30'),('WSS144','p30'),('WSS146','p30'),('WSS163','p30'),('WSS166','p30'),('WSS170','p30'),('WSS173','p30'),('WSS175','p30'),('WSS183','p30'),('WSS197','p30'),('WSS32','p30'),('WSS46','p30'),('WSS61','p30'),('WSS71','p30'),('WSS80','p30'),('WSS83','p30'),('WSS89','p30'),('WSS91','p30'),('WSS94','p30'),('WSS99','p30'),('WSS103','p4'),('WSS122','p4'),('WSS135','p4'),('WSS137','p4'),('WSS145','p4'),('WSS161','p4'),('WSS17','p4'),('WSS174','p4'),('WSS176','p4'),('WSS181','p4'),('WSS191','p4'),('WSS23','p4'),('WSS35','p4'),('WSS49','p4'),('WSS5','p4'),('WSS50','p4'),('WSS53','p4'),('WSS54','p4'),('WSS62','p4'),('WSS66','p4'),('WSS72','p4'),('WSS74','p4'),('WSS75','p4'),('WSS86','p4'),('WSS92','p4'),('WSS97','p4'),('WSS105','p5'),('WSS113','p5'),('WSS119','p5'),('WSS13','p5'),('WSS136','p5'),('WSS142','p5'),('WSS144','p5'),('WSS145','p5'),('WSS149','p5'),('WSS155','p5'),('WSS168','p5'),('WSS175','p5'),('WSS176','p5'),('WSS181','p5'),('WSS182','p5'),('WSS184','p5'),('WSS188','p5'),('WSS190','p5'),('WSS198','p5'),('WSS21','p5'),('WSS24','p5'),('WSS28','p5'),('WSS43','p5'),('WSS45','p5'),('WSS5','p5'),('WSS58','p5'),('WSS60','p5'),('WSS67','p5'),('WSS76','p5'),('WSS1','p6'),('WSS10','p6'),('WSS102','p6'),('WSS107','p6'),('WSS114','p6'),('WSS171','p6'),('WSS18','p6'),('WSS180','p6'),('WSS182','p6'),('WSS186','p6'),('WSS19','p6'),('WSS2','p6'),('WSS27','p6'),('WSS30','p6'),('WSS40','p6'),('WSS45','p6'),('WSS46','p6'),('WSS57','p6'),('WSS71','p6'),('WSS91','p6'),('WSS96','p6'),('WSS97','p6'),('WSS98','p6'),('WSS12','p7'),('WSS121','p7'),('WSS125','p7'),('WSS127','p7'),('WSS128','p7'),('WSS130','p7'),('WSS132','p7'),('WSS147','p7'),('WSS152','p7'),('WSS164','p7'),('WSS172','p7'),('WSS173','p7'),('WSS178','p7'),('WSS185','p7'),('WSS190','p7'),('WSS196','p7'),('WSS2','p7'),('WSS33','p7'),('WSS39','p7'),('WSS6','p7'),('WSS75','p7'),('WSS77','p7'),('WSS83','p7'),('WSS87','p7'),('WSS92','p7'),('WSS99','p7'),('WSS100','p8'),('WSS111','p8'),('WSS135','p8'),('WSS140','p8'),('WSS147','p8'),('WSS159','p8'),('WSS173','p8'),('WSS181','p8'),('WSS187','p8'),('WSS195','p8'),('WSS196','p8'),('WSS26','p8'),('WSS62','p8'),('WSS68','p8'),('WSS7','p8'),('WSS73','p8'),('WSS75','p8'),('WSS86','p8'),('WSS88','p8'),('WSS89','p8'),('WSS90','p8'),('WSS93','p8'),('WSS94','p8'),('WSS98','p8'),('WSS103','p9'),('WSS111','p9'),('WSS114','p9'),('WSS115','p9'),('WSS122','p9'),('WSS123','p9'),('WSS136','p9'),('WSS143','p9'),('WSS165','p9'),('WSS187','p9'),('WSS3','p9'),('WSS32','p9'),('WSS35','p9'),('WSS49','p9'),('WSS56','p9'),('WSS58','p9'),('WSS59','p9'),('WSS63','p9'),('WSS69','p9'),('WSS70','p9'),('WSS87','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS153'),(1,2,'WSS175'),(2,1,'WSS143'),(2,2,'WSS163'),(3,1,'WSS67'),(3,2,'WSS26'),(4,1,'WSS59'),(4,2,'WSS87'),(5,1,'WSS163'),(5,2,'WSS173'),(6,1,'WSS84'),(6,2,'WSS106'),(7,1,'WSS117'),(7,2,'WSS48'),(8,1,'WSS91'),(8,2,'WSS26'),(8,3,'WSS96'),(9,1,'WSS158'),(9,2,'WSS12'),(10,1,'WSS186'),(10,2,'WSS102'),(11,1,'WSS109'),(11,1,'WSS195'),(12,1,'WSS40'),(13,1,'WSS14'),(13,2,'WSS176'),(14,1,'WSS147'),(14,2,'WSS23'),(15,1,'WSS174'),(15,2,'WSS73'),(16,1,'WSS121'),(16,2,'WSS102'),(17,1,'WSS160'),(17,2,'WSS108'),(18,1,'WSS15'),(18,2,'WSS51'),(19,1,'WSS26'),(19,2,'WSS100'),(20,1,'WSS193'),(20,2,'WSS23'),(21,1,'WSS195'),(21,2,'WSS183'),(22,1,'WSS114'),(22,2,'WSS24'),(23,1,'WSS188'),(23,2,'WSS144'),(24,1,'WSS25'),(24,2,'WSS17'),(24,3,'WSS100'),(25,1,'WSS198'),(25,2,'WSS65'),(26,1,'WSS10'),(26,2,'WSS46'),(27,1,'WSS79'),(27,2,'WSS103'),(27,2,'WSS27'),(28,1,'WSS26'),(28,2,'WSS135'),(29,1,'WSS109'),(29,2,'WSS157'),(30,1,'WSS15'),(30,2,'WSS145'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-27 16:21:20
