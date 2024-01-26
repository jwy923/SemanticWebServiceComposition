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
INSERT INTO `initialgoalparameter` VALUES (2,'G','p1'),(8,'I','p1'),(10,'I','p1'),(11,'G','p1'),(14,'I','p1'),(16,'I','p1'),(20,'G','p1'),(22,'I','p1'),(24,'G','p1'),(28,'G','p1'),(29,'I','p1'),(1,'G','p10'),(2,'I','p10'),(5,'I','p10'),(7,'G','p10'),(10,'G','p10'),(12,'G','p10'),(17,'G','p10'),(18,'I','p10'),(24,'I','p10'),(28,'I','p10'),(9,'I','p11'),(10,'I','p11'),(13,'I','p11'),(15,'I','p11'),(25,'I','p11'),(29,'I','p11'),(8,'I','p12'),(9,'G','p12'),(12,'I','p12'),(18,'I','p12'),(19,'I','p12'),(23,'I','p12'),(25,'I','p12'),(3,'I','p13'),(4,'I','p13'),(7,'I','p13'),(8,'I','p13'),(11,'G','p13'),(13,'G','p13'),(14,'I','p13'),(16,'G','p13'),(23,'I','p13'),(24,'G','p13'),(25,'I','p13'),(26,'I','p13'),(27,'I','p13'),(29,'G','p13'),(30,'I','p13'),(2,'I','p14'),(7,'I','p14'),(13,'I','p14'),(15,'G','p14'),(16,'G','p14'),(17,'I','p14'),(19,'I','p14'),(21,'I','p14'),(25,'I','p14'),(28,'I','p14'),(1,'I','p15'),(2,'G','p15'),(3,'I','p15'),(6,'I','p15'),(9,'I','p15'),(10,'I','p15'),(13,'I','p15'),(23,'G','p15'),(29,'I','p15'),(30,'I','p15'),(1,'I','p16'),(4,'G','p16'),(5,'I','p16'),(8,'G','p16'),(11,'I','p16'),(12,'G','p16'),(14,'I','p16'),(15,'I','p16'),(17,'I','p16'),(19,'G','p16'),(22,'I','p16'),(24,'I','p16'),(25,'I','p16'),(26,'G','p16'),(29,'I','p16'),(8,'G','p17'),(13,'G','p17'),(19,'I','p17'),(26,'G','p17'),(3,'G','p18'),(6,'I','p18'),(9,'I','p18'),(12,'I','p18'),(16,'G','p18'),(19,'G','p18'),(22,'G','p18'),(23,'I','p18'),(27,'G','p18'),(28,'G','p18'),(1,'G','p19'),(4,'I','p19'),(5,'I','p19'),(9,'G','p19'),(10,'I','p19'),(15,'G','p19'),(19,'G','p19'),(21,'I','p19'),(25,'G','p19'),(26,'G','p19'),(28,'I','p19'),(1,'G','p2'),(2,'I','p2'),(5,'G','p2'),(6,'G','p2'),(10,'I','p2'),(17,'I','p2'),(29,'I','p2'),(1,'G','p20'),(12,'I','p20'),(15,'I','p20'),(20,'G','p20'),(21,'I','p20'),(25,'G','p20'),(28,'I','p20'),(30,'G','p20'),(1,'I','p21'),(3,'I','p21'),(6,'G','p21'),(8,'I','p21'),(18,'I','p21'),(20,'G','p21'),(22,'I','p21'),(28,'I','p21'),(7,'G','p22'),(9,'G','p22'),(11,'G','p22'),(12,'I','p22'),(13,'G','p22'),(14,'I','p22'),(18,'G','p22'),(21,'G','p22'),(22,'I','p22'),(30,'I','p22'),(1,'I','p23'),(2,'I','p23'),(5,'G','p23'),(8,'I','p23'),(15,'I','p23'),(17,'I','p23'),(20,'I','p23'),(21,'G','p23'),(24,'I','p23'),(27,'I','p23'),(28,'G','p23'),(30,'G','p23'),(7,'G','p24'),(9,'G','p24'),(13,'G','p24'),(14,'G','p24'),(15,'G','p24'),(25,'I','p24'),(26,'I','p24'),(3,'I','p25'),(4,'I','p25'),(5,'I','p25'),(6,'I','p25'),(7,'I','p25'),(10,'G','p25'),(16,'I','p25'),(18,'G','p25'),(19,'I','p25'),(20,'I','p25'),(22,'I','p25'),(24,'G','p25'),(25,'G','p25'),(28,'G','p25'),(30,'G','p25'),(4,'I','p26'),(6,'I','p26'),(11,'I','p26'),(12,'I','p26'),(15,'I','p26'),(16,'I','p26'),(23,'G','p26'),(24,'I','p26'),(26,'I','p26'),(27,'I','p26'),(29,'G','p26'),(30,'I','p26'),(2,'I','p27'),(4,'G','p27'),(8,'G','p27'),(11,'I','p27'),(14,'I','p27'),(16,'I','p27'),(21,'I','p27'),(23,'G','p27'),(27,'I','p27'),(1,'I','p28'),(2,'G','p28'),(9,'I','p28'),(10,'G','p28'),(12,'G','p28'),(13,'I','p28'),(17,'G','p28'),(18,'I','p28'),(19,'I','p28'),(21,'I','p28'),(4,'G','p29'),(7,'I','p29'),(8,'G','p29'),(11,'I','p29'),(13,'I','p29'),(16,'I','p29'),(17,'G','p29'),(19,'G','p29'),(20,'I','p29'),(23,'I','p29'),(27,'G','p29'),(29,'I','p29'),(3,'G','p3'),(6,'I','p3'),(7,'G','p3'),(14,'G','p3'),(18,'I','p3'),(21,'G','p3'),(22,'G','p3'),(24,'G','p3'),(25,'G','p3'),(26,'I','p3'),(27,'I','p3'),(30,'I','p3'),(3,'G','p30'),(4,'I','p30'),(5,'G','p30'),(7,'I','p30'),(9,'I','p30'),(12,'G','p30'),(13,'I','p30'),(14,'G','p30'),(16,'G','p30'),(17,'I','p30'),(22,'I','p30'),(24,'I','p30'),(5,'G','p4'),(7,'I','p4'),(10,'G','p4'),(16,'I','p4'),(17,'G','p4'),(20,'I','p4'),(22,'G','p4'),(26,'I','p4'),(27,'G','p4'),(28,'I','p4'),(2,'G','p5'),(3,'G','p5'),(5,'I','p5'),(14,'I','p5'),(20,'I','p5'),(22,'G','p5'),(24,'I','p5'),(29,'G','p5'),(4,'G','p6'),(6,'G','p6'),(8,'I','p6'),(9,'I','p6'),(11,'I','p6'),(17,'I','p6'),(18,'G','p6'),(20,'I','p6'),(23,'I','p6'),(27,'I','p6'),(2,'I','p7'),(3,'I','p7'),(10,'I','p7'),(11,'G','p7'),(12,'I','p7'),(15,'G','p7'),(18,'I','p7'),(23,'G','p7'),(26,'G','p7'),(27,'G','p7'),(30,'I','p7'),(3,'I','p8'),(4,'I','p8'),(5,'I','p8'),(6,'I','p8'),(11,'I','p8'),(18,'G','p8'),(19,'I','p8'),(21,'G','p8'),(23,'I','p8'),(1,'I','p9'),(6,'G','p9'),(14,'G','p9'),(15,'I','p9'),(20,'G','p9'),(21,'I','p9'),(26,'I','p9'),(29,'G','p9'),(30,'G','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS200','p1'),('WSS21','p1'),('WSS47','p1'),('WSS57','p1'),('WSS60','p1'),('WSS65','p1'),('WSS74','p1'),('WSS77','p1'),('WSS79','p1'),('WSS84','p1'),('WSS91','p1'),('WSS109','p10'),('WSS129','p10'),('WSS135','p10'),('WSS16','p10'),('WSS189','p10'),('WSS199','p10'),('WSS47','p10'),('WSS73','p10'),('WSS81','p10'),('WSS84','p10'),('WSS89','p10'),('WSS115','p11'),('WSS116','p11'),('WSS123','p11'),('WSS156','p11'),('WSS173','p11'),('WSS176','p11'),('WSS182','p11'),('WSS192','p11'),('WSS45','p11'),('WSS150','p12'),('WSS168','p12'),('WSS170','p12'),('WSS173','p12'),('WSS27','p12'),('WSS37','p12'),('WSS46','p12'),('WSS49','p12'),('WSS52','p12'),('WSS75','p12'),('WSS92','p12'),('WSS129','p13'),('WSS152','p13'),('WSS166','p13'),('WSS17','p13'),('WSS174','p13'),('WSS185','p13'),('WSS19','p13'),('WSS191','p13'),('WSS196','p13'),('WSS2','p13'),('WSS28','p13'),('WSS42','p13'),('WSS110','p14'),('WSS112','p14'),('WSS117','p14'),('WSS119','p14'),('WSS131','p14'),('WSS134','p14'),('WSS149','p14'),('WSS156','p14'),('WSS165','p14'),('WSS188','p14'),('WSS104','p15'),('WSS153','p15'),('WSS194','p15'),('WSS22','p15'),('WSS53','p15'),('WSS6','p15'),('WSS61','p15'),('WSS69','p15'),('WSS75','p15'),('WSS86','p15'),('WSS133','p16'),('WSS140','p16'),('WSS164','p16'),('WSS165','p16'),('WSS171','p16'),('WSS34','p16'),('WSS48','p16'),('WSS54','p16'),('WSS66','p16'),('WSS8','p16'),('WSS155','p17'),('WSS159','p17'),('WSS167','p17'),('WSS176','p17'),('WSS49','p17'),('WSS71','p17'),('WSS9','p17'),('WSS101','p18'),('WSS124','p18'),('WSS127','p18'),('WSS136','p18'),('WSS161','p18'),('WSS190','p18'),('WSS191','p18'),('WSS23','p18'),('WSS32','p18'),('WSS34','p18'),('WSS36','p18'),('WSS46','p18'),('WSS83','p18'),('WSS88','p18'),('WSS93','p18'),('WSS95','p18'),('WSS102','p19'),('WSS103','p19'),('WSS116','p19'),('WSS128','p19'),('WSS130','p19'),('WSS187','p19'),('WSS33','p19'),('WSS48','p19'),('WSS58','p19'),('WSS70','p19'),('WSS74','p19'),('WSS96','p19'),('WSS11','p2'),('WSS111','p2'),('WSS122','p2'),('WSS15','p2'),('WSS157','p2'),('WSS172','p2'),('WSS27','p2'),('WSS50','p2'),('WSS54','p2'),('WSS57','p2'),('WSS94','p2'),('WSS100','p20'),('WSS108','p20'),('WSS110','p20'),('WSS132','p20'),('WSS149','p20'),('WSS158','p20'),('WSS184','p20'),('WSS188','p20'),('WSS195','p20'),('WSS25','p20'),('WSS29','p20'),('WSS45','p20'),('WSS5','p20'),('WSS51','p20'),('WSS59','p20'),('WSS68','p20'),('WSS82','p20'),('WSS87','p20'),('WSS97','p20'),('WSS107','p21'),('WSS115','p21'),('WSS117','p21'),('WSS130','p21'),('WSS142','p21'),('WSS17','p21'),('WSS174','p21'),('WSS183','p21'),('WSS197','p21'),('WSS199','p21'),('WSS20','p21'),('WSS42','p21'),('WSS7','p21'),('WSS73','p21'),('WSS76','p21'),('WSS78','p21'),('WSS80','p21'),('WSS83','p21'),('WSS9','p21'),('WSS98','p21'),('WSS108','p22'),('WSS13','p22'),('WSS148','p22'),('WSS24','p22'),('WSS35','p22'),('WSS37','p22'),('WSS40','p22'),('WSS44','p22'),('WSS67','p22'),('WSS106','p23'),('WSS111','p23'),('WSS112','p23'),('WSS119','p23'),('WSS142','p23'),('WSS147','p23'),('WSS151','p23'),('WSS159','p23'),('WSS163','p23'),('WSS171','p23'),('WSS180','p23'),('WSS182','p23'),('WSS193','p23'),('WSS196','p23'),('WSS2','p23'),('WSS26','p23'),('WSS55','p23'),('WSS85','p23'),('WSS87','p23'),('WSS125','p24'),('WSS160','p24'),('WSS177','p24'),('WSS181','p24'),('WSS186','p24'),('WSS195','p24'),('WSS25','p24'),('WSS26','p24'),('WSS3','p24'),('WSS53','p24'),('WSS64','p24'),('WSS7','p24'),('WSS77','p24'),('WSS80','p24'),('WSS90','p24'),('WSS99','p24'),('WSS105','p25'),('WSS122','p25'),('WSS14','p25'),('WSS151','p25'),('WSS157','p25'),('WSS169','p25'),('WSS24','p25'),('WSS40','p25'),('WSS58','p25'),('WSS66','p25'),('WSS67','p25'),('WSS81','p25'),('WSS91','p25'),('WSS95','p25'),('WSS98','p25'),('WSS10','p26'),('WSS100','p26'),('WSS135','p26'),('WSS138','p26'),('WSS139','p26'),('WSS143','p26'),('WSS145','p26'),('WSS150','p26'),('WSS189','p26'),('WSS21','p26'),('WSS32','p26'),('WSS56','p26'),('WSS106','p27'),('WSS114','p27'),('WSS137','p27'),('WSS153','p27'),('WSS161','p27'),('WSS162','p27'),('WSS178','p27'),('WSS179','p27'),('WSS180','p27'),('WSS186','p27'),('WSS193','p27'),('WSS28','p27'),('WSS31','p27'),('WSS35','p27'),('WSS63','p27'),('WSS78','p27'),('WSS82','p27'),('WSS86','p27'),('WSS11','p28'),('WSS118','p28'),('WSS121','p28'),('WSS123','p28'),('WSS124','p28'),('WSS143','p28'),('WSS144','p28'),('WSS146','p28'),('WSS163','p28'),('WSS61','p28'),('WSS76','p28'),('WSS8','p28'),('WSS97','p28'),('WSS118','p29'),('WSS131','p29'),('WSS172','p29'),('WSS177','p29'),('WSS178','p29'),('WSS184','p29'),('WSS198','p29'),('WSS23','p29'),('WSS43','p29'),('WSS59','p29'),('WSS63','p29'),('WSS65','p29'),('WSS72','p29'),('WSS79','p29'),('WSS89','p29'),('WSS126','p3'),('WSS144','p3'),('WSS146','p3'),('WSS169','p3'),('WSS198','p3'),('WSS22','p3'),('WSS5','p3'),('WSS51','p3'),('WSS6','p3'),('WSS64','p3'),('WSS1','p30'),('WSS127','p30'),('WSS139','p30'),('WSS140','p30'),('WSS145','p30'),('WSS164','p30'),('WSS185','p30'),('WSS197','p30'),('WSS29','p30'),('WSS4','p30'),('WSS44','p30'),('WSS62','p30'),('WSS68','p30'),('WSS101','p4'),('WSS113','p4'),('WSS128','p4'),('WSS183','p4'),('WSS190','p4'),('WSS38','p4'),('WSS39','p4'),('WSS56','p4'),('WSS62','p4'),('WSS107','p5'),('WSS109','p5'),('WSS120','p5'),('WSS121','p5'),('WSS141','p5'),('WSS15','p5'),('WSS152','p5'),('WSS179','p5'),('WSS181','p5'),('WSS194','p5'),('WSS30','p5'),('WSS31','p5'),('WSS36','p5'),('WSS69','p5'),('WSS1','p6'),('WSS10','p6'),('WSS103','p6'),('WSS104','p6'),('WSS114','p6'),('WSS13','p6'),('WSS133','p6'),('WSS136','p6'),('WSS137','p6'),('WSS138','p6'),('WSS154','p6'),('WSS162','p6'),('WSS167','p6'),('WSS175','p6'),('WSS18','p6'),('WSS19','p6'),('WSS38','p6'),('WSS39','p6'),('WSS43','p6'),('WSS55','p6'),('WSS70','p6'),('WSS88','p6'),('WSS93','p6'),('WSS99','p6'),('WSS102','p7'),('WSS134','p7'),('WSS14','p7'),('WSS154','p7'),('WSS18','p7'),('WSS187','p7'),('WSS3','p7'),('WSS33','p7'),('WSS41','p7'),('WSS72','p7'),('WSS94','p7'),('WSS113','p8'),('WSS12','p8'),('WSS148','p8'),('WSS158','p8'),('WSS16','p8'),('WSS160','p8'),('WSS168','p8'),('WSS170','p8'),('WSS200','p8'),('WSS4','p8'),('WSS41','p8'),('WSS50','p8'),('WSS71','p8'),('WSS85','p8'),('WSS92','p8'),('WSS12','p9'),('WSS125','p9'),('WSS126','p9'),('WSS132','p9'),('WSS141','p9'),('WSS155','p9'),('WSS166','p9'),('WSS175','p9'),('WSS192','p9'),('WSS20','p9'),('WSS52','p9'),('WSS60','p9'),('WSS96','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS10','p1'),('WSS100','p1'),('WSS110','p1'),('WSS112','p1'),('WSS113','p1'),('WSS119','p1'),('WSS123','p1'),('WSS125','p1'),('WSS13','p1'),('WSS132','p1'),('WSS134','p1'),('WSS136','p1'),('WSS139','p1'),('WSS142','p1'),('WSS153','p1'),('WSS166','p1'),('WSS168','p1'),('WSS174','p1'),('WSS175','p1'),('WSS179','p1'),('WSS185','p1'),('WSS187','p1'),('WSS19','p1'),('WSS190','p1'),('WSS193','p1'),('WSS21','p1'),('WSS22','p1'),('WSS23','p1'),('WSS28','p1'),('WSS33','p1'),('WSS37','p1'),('WSS39','p1'),('WSS43','p1'),('WSS44','p1'),('WSS5','p1'),('WSS53','p1'),('WSS56','p1'),('WSS58','p1'),('WSS6','p1'),('WSS63','p1'),('WSS67','p1'),('WSS73','p1'),('WSS79','p1'),('WSS80','p1'),('WSS84','p1'),('WSS97','p1'),('WSS99','p1'),('WSS103','p10'),('WSS104','p10'),('WSS105','p10'),('WSS110','p10'),('WSS118','p10'),('WSS119','p10'),('WSS123','p10'),('WSS137','p10'),('WSS138','p10'),('WSS139','p10'),('WSS146','p10'),('WSS148','p10'),('WSS15','p10'),('WSS150','p10'),('WSS158','p10'),('WSS160','p10'),('WSS163','p10'),('WSS165','p10'),('WSS170','p10'),('WSS181','p10'),('WSS183','p10'),('WSS186','p10'),('WSS195','p10'),('WSS200','p10'),('WSS29','p10'),('WSS31','p10'),('WSS35','p10'),('WSS4','p10'),('WSS44','p10'),('WSS47','p10'),('WSS5','p10'),('WSS53','p10'),('WSS54','p10'),('WSS55','p10'),('WSS61','p10'),('WSS63','p10'),('WSS65','p10'),('WSS66','p10'),('WSS67','p10'),('WSS69','p10'),('WSS7','p10'),('WSS79','p10'),('WSS84','p10'),('WSS85','p10'),('WSS95','p10'),('WSS98','p10'),('WSS106','p11'),('WSS107','p11'),('WSS108','p11'),('WSS111','p11'),('WSS114','p11'),('WSS115','p11'),('WSS121','p11'),('WSS125','p11'),('WSS126','p11'),('WSS128','p11'),('WSS130','p11'),('WSS136','p11'),('WSS138','p11'),('WSS150','p11'),('WSS152','p11'),('WSS155','p11'),('WSS16','p11'),('WSS161','p11'),('WSS165','p11'),('WSS169','p11'),('WSS179','p11'),('WSS180','p11'),('WSS198','p11'),('WSS200','p11'),('WSS21','p11'),('WSS25','p11'),('WSS26','p11'),('WSS27','p11'),('WSS31','p11'),('WSS38','p11'),('WSS40','p11'),('WSS42','p11'),('WSS47','p11'),('WSS48','p11'),('WSS52','p11'),('WSS57','p11'),('WSS68','p11'),('WSS70','p11'),('WSS8','p11'),('WSS85','p11'),('WSS87','p11'),('WSS88','p11'),('WSS90','p11'),('WSS92','p11'),('WSS94','p11'),('WSS98','p11'),('WSS99','p11'),('WSS1','p12'),('WSS105','p12'),('WSS112','p12'),('WSS114','p12'),('WSS118','p12'),('WSS120','p12'),('WSS121','p12'),('WSS126','p12'),('WSS130','p12'),('WSS133','p12'),('WSS137','p12'),('WSS139','p12'),('WSS149','p12'),('WSS157','p12'),('WSS160','p12'),('WSS162','p12'),('WSS163','p12'),('WSS170','p12'),('WSS171','p12'),('WSS172','p12'),('WSS173','p12'),('WSS18','p12'),('WSS182','p12'),('WSS184','p12'),('WSS185','p12'),('WSS189','p12'),('WSS191','p12'),('WSS192','p12'),('WSS24','p12'),('WSS27','p12'),('WSS3','p12'),('WSS31','p12'),('WSS33','p12'),('WSS43','p12'),('WSS45','p12'),('WSS57','p12'),('WSS58','p12'),('WSS64','p12'),('WSS66','p12'),('WSS69','p12'),('WSS75','p12'),('WSS76','p12'),('WSS77','p12'),('WSS78','p12'),('WSS93','p12'),('WSS95','p12'),('WSS98','p12'),('WSS99','p12'),('WSS108','p13'),('WSS111','p13'),('WSS116','p13'),('WSS117','p13'),('WSS127','p13'),('WSS128','p13'),('WSS13','p13'),('WSS139','p13'),('WSS141','p13'),('WSS145','p13'),('WSS146','p13'),('WSS149','p13'),('WSS154','p13'),('WSS156','p13'),('WSS159','p13'),('WSS162','p13'),('WSS168','p13'),('WSS169','p13'),('WSS172','p13'),('WSS184','p13'),('WSS188','p13'),('WSS193','p13'),('WSS194','p13'),('WSS195','p13'),('WSS197','p13'),('WSS24','p13'),('WSS29','p13'),('WSS32','p13'),('WSS34','p13'),('WSS37','p13'),('WSS4','p13'),('WSS46','p13'),('WSS49','p13'),('WSS50','p13'),('WSS59','p13'),('WSS62','p13'),('WSS72','p13'),('WSS74','p13'),('WSS76','p13'),('WSS77','p13'),('WSS78','p13'),('WSS8','p13'),('WSS80','p13'),('WSS83','p13'),('WSS84','p13'),('WSS89','p13'),('WSS9','p13'),('WSS100','p14'),('WSS104','p14'),('WSS106','p14'),('WSS109','p14'),('WSS117','p14'),('WSS119','p14'),('WSS12','p14'),('WSS122','p14'),('WSS124','p14'),('WSS13','p14'),('WSS137','p14'),('WSS138','p14'),('WSS14','p14'),('WSS143','p14'),('WSS156','p14'),('WSS165','p14'),('WSS166','p14'),('WSS168','p14'),('WSS175','p14'),('WSS178','p14'),('WSS180','p14'),('WSS182','p14'),('WSS189','p14'),('WSS193','p14'),('WSS196','p14'),('WSS200','p14'),('WSS29','p14'),('WSS31','p14'),('WSS38','p14'),('WSS4','p14'),('WSS54','p14'),('WSS55','p14'),('WSS56','p14'),('WSS58','p14'),('WSS63','p14'),('WSS64','p14'),('WSS65','p14'),('WSS68','p14'),('WSS7','p14'),('WSS71','p14'),('WSS74','p14'),('WSS76','p14'),('WSS8','p14'),('WSS87','p14'),('WSS88','p14'),('WSS92','p14'),('WSS108','p15'),('WSS11','p15'),('WSS115','p15'),('WSS127','p15'),('WSS131','p15'),('WSS140','p15'),('WSS145','p15'),('WSS148','p15'),('WSS151','p15'),('WSS155','p15'),('WSS156','p15'),('WSS157','p15'),('WSS158','p15'),('WSS159','p15'),('WSS168','p15'),('WSS169','p15'),('WSS17','p15'),('WSS175','p15'),('WSS185','p15'),('WSS187','p15'),('WSS193','p15'),('WSS196','p15'),('WSS20','p15'),('WSS29','p15'),('WSS30','p15'),('WSS37','p15'),('WSS39','p15'),('WSS4','p15'),('WSS43','p15'),('WSS54','p15'),('WSS55','p15'),('WSS57','p15'),('WSS59','p15'),('WSS6','p15'),('WSS60','p15'),('WSS64','p15'),('WSS68','p15'),('WSS7','p15'),('WSS80','p15'),('WSS81','p15'),('WSS82','p15'),('WSS83','p15'),('WSS85','p15'),('WSS87','p15'),('WSS92','p15'),('WSS94','p15'),('WSS96','p15'),('WSS1','p16'),('WSS107','p16'),('WSS118','p16'),('WSS124','p16'),('WSS128','p16'),('WSS131','p16'),('WSS133','p16'),('WSS135','p16'),('WSS141','p16'),('WSS151','p16'),('WSS163','p16'),('WSS167','p16'),('WSS170','p16'),('WSS177','p16'),('WSS18','p16'),('WSS186','p16'),('WSS188','p16'),('WSS189','p16'),('WSS195','p16'),('WSS199','p16'),('WSS2','p16'),('WSS23','p16'),('WSS25','p16'),('WSS26','p16'),('WSS27','p16'),('WSS4','p16'),('WSS40','p16'),('WSS51','p16'),('WSS56','p16'),('WSS57','p16'),('WSS60','p16'),('WSS65','p16'),('WSS7','p16'),('WSS74','p16'),('WSS76','p16'),('WSS77','p16'),('WSS82','p16'),('WSS91','p16'),('WSS92','p16'),('WSS98','p16'),('WSS10','p17'),('WSS104','p17'),('WSS105','p17'),('WSS107','p17'),('WSS108','p17'),('WSS11','p17'),('WSS111','p17'),('WSS116','p17'),('WSS129','p17'),('WSS131','p17'),('WSS136','p17'),('WSS138','p17'),('WSS14','p17'),('WSS145','p17'),('WSS152','p17'),('WSS159','p17'),('WSS167','p17'),('WSS168','p17'),('WSS170','p17'),('WSS179','p17'),('WSS184','p17'),('WSS192','p17'),('WSS195','p17'),('WSS196','p17'),('WSS198','p17'),('WSS20','p17'),('WSS33','p17'),('WSS36','p17'),('WSS37','p17'),('WSS38','p17'),('WSS40','p17'),('WSS44','p17'),('WSS46','p17'),('WSS5','p17'),('WSS58','p17'),('WSS59','p17'),('WSS65','p17'),('WSS67','p17'),('WSS70','p17'),('WSS71','p17'),('WSS72','p17'),('WSS73','p17'),('WSS77','p17'),('WSS84','p17'),('WSS89','p17'),('WSS1','p18'),('WSS10','p18'),('WSS101','p18'),('WSS102','p18'),('WSS11','p18'),('WSS112','p18'),('WSS122','p18'),('WSS124','p18'),('WSS126','p18'),('WSS134','p18'),('WSS135','p18'),('WSS136','p18'),('WSS14','p18'),('WSS144','p18'),('WSS146','p18'),('WSS150','p18'),('WSS16','p18'),('WSS162','p18'),('WSS169','p18'),('WSS17','p18'),('WSS171','p18'),('WSS176','p18'),('WSS180','p18'),('WSS183','p18'),('WSS19','p18'),('WSS191','p18'),('WSS193','p18'),('WSS195','p18'),('WSS198','p18'),('WSS22','p18'),('WSS24','p18'),('WSS28','p18'),('WSS3','p18'),('WSS32','p18'),('WSS35','p18'),('WSS40','p18'),('WSS41','p18'),('WSS42','p18'),('WSS47','p18'),('WSS49','p18'),('WSS50','p18'),('WSS51','p18'),('WSS55','p18'),('WSS57','p18'),('WSS60','p18'),('WSS63','p18'),('WSS67','p18'),('WSS70','p18'),('WSS71','p18'),('WSS73','p18'),('WSS78','p18'),('WSS81','p18'),('WSS83','p18'),('WSS88','p18'),('WSS96','p18'),('WSS97','p18'),('WSS101','p19'),('WSS103','p19'),('WSS106','p19'),('WSS108','p19'),('WSS112','p19'),('WSS113','p19'),('WSS114','p19'),('WSS116','p19'),('WSS118','p19'),('WSS122','p19'),('WSS125','p19'),('WSS129','p19'),('WSS130','p19'),('WSS134','p19'),('WSS136','p19'),('WSS137','p19'),('WSS143','p19'),('WSS146','p19'),('WSS149','p19'),('WSS15','p19'),('WSS151','p19'),('WSS152','p19'),('WSS156','p19'),('WSS160','p19'),('WSS165','p19'),('WSS171','p19'),('WSS18','p19'),('WSS183','p19'),('WSS187','p19'),('WSS188','p19'),('WSS189','p19'),('WSS19','p19'),('WSS197','p19'),('WSS2','p19'),('WSS20','p19'),('WSS22','p19'),('WSS23','p19'),('WSS33','p19'),('WSS37','p19'),('WSS42','p19'),('WSS44','p19'),('WSS45','p19'),('WSS62','p19'),('WSS66','p19'),('WSS67','p19'),('WSS73','p19'),('WSS76','p19'),('WSS78','p19'),('WSS82','p19'),('WSS84','p19'),('WSS87','p19'),('WSS92','p19'),('WSS94','p19'),('WSS95','p19'),('WSS96','p19'),('WSS97','p19'),('WSS1','p2'),('WSS100','p2'),('WSS113','p2'),('WSS114','p2'),('WSS115','p2'),('WSS119','p2'),('WSS12','p2'),('WSS128','p2'),('WSS134','p2'),('WSS143','p2'),('WSS145','p2'),('WSS147','p2'),('WSS148','p2'),('WSS152','p2'),('WSS153','p2'),('WSS157','p2'),('WSS158','p2'),('WSS159','p2'),('WSS167','p2'),('WSS168','p2'),('WSS172','p2'),('WSS177','p2'),('WSS178','p2'),('WSS181','p2'),('WSS190','p2'),('WSS191','p2'),('WSS192','p2'),('WSS193','p2'),('WSS197','p2'),('WSS198','p2'),('WSS200','p2'),('WSS25','p2'),('WSS46','p2'),('WSS5','p2'),('WSS50','p2'),('WSS52','p2'),('WSS56','p2'),('WSS59','p2'),('WSS77','p2'),('WSS86','p2'),('WSS89','p2'),('WSS91','p2'),('WSS93','p2'),('WSS1','p20'),('WSS101','p20'),('WSS105','p20'),('WSS107','p20'),('WSS109','p20'),('WSS110','p20'),('WSS117','p20'),('WSS124','p20'),('WSS128','p20'),('WSS131','p20'),('WSS137','p20'),('WSS138','p20'),('WSS140','p20'),('WSS143','p20'),('WSS15','p20'),('WSS151','p20'),('WSS153','p20'),('WSS163','p20'),('WSS164','p20'),('WSS168','p20'),('WSS172','p20'),('WSS173','p20'),('WSS177','p20'),('WSS18','p20'),('WSS180','p20'),('WSS181','p20'),('WSS182','p20'),('WSS186','p20'),('WSS19','p20'),('WSS196','p20'),('WSS199','p20'),('WSS20','p20'),('WSS23','p20'),('WSS26','p20'),('WSS28','p20'),('WSS30','p20'),('WSS40','p20'),('WSS45','p20'),('WSS47','p20'),('WSS5','p20'),('WSS50','p20'),('WSS51','p20'),('WSS6','p20'),('WSS63','p20'),('WSS67','p20'),('WSS71','p20'),('WSS73','p20'),('WSS74','p20'),('WSS82','p20'),('WSS85','p20'),('WSS89','p20'),('WSS11','p21'),('WSS111','p21'),('WSS113','p21'),('WSS114','p21'),('WSS116','p21'),('WSS117','p21'),('WSS120','p21'),('WSS123','p21'),('WSS134','p21'),('WSS135','p21'),('WSS140','p21'),('WSS141','p21'),('WSS142','p21'),('WSS144','p21'),('WSS147','p21'),('WSS149','p21'),('WSS155','p21'),('WSS157','p21'),('WSS160','p21'),('WSS169','p21'),('WSS171','p21'),('WSS174','p21'),('WSS176','p21'),('WSS184','p21'),('WSS187','p21'),('WSS194','p21'),('WSS199','p21'),('WSS23','p21'),('WSS26','p21'),('WSS27','p21'),('WSS32','p21'),('WSS33','p21'),('WSS38','p21'),('WSS39','p21'),('WSS43','p21'),('WSS44','p21'),('WSS47','p21'),('WSS48','p21'),('WSS49','p21'),('WSS54','p21'),('WSS55','p21'),('WSS56','p21'),('WSS6','p21'),('WSS61','p21'),('WSS71','p21'),('WSS80','p21'),('WSS81','p21'),('WSS82','p21'),('WSS83','p21'),('WSS86','p21'),('WSS89','p21'),('WSS94','p21'),('WSS96','p21'),('WSS97','p21'),('WSS101','p22'),('WSS102','p22'),('WSS115','p22'),('WSS117','p22'),('WSS12','p22'),('WSS125','p22'),('WSS129','p22'),('WSS133','p22'),('WSS148','p22'),('WSS151','p22'),('WSS154','p22'),('WSS155','p22'),('WSS158','p22'),('WSS16','p22'),('WSS162','p22'),('WSS166','p22'),('WSS169','p22'),('WSS17','p22'),('WSS173','p22'),('WSS175','p22'),('WSS177','p22'),('WSS180','p22'),('WSS181','p22'),('WSS182','p22'),('WSS183','p22'),('WSS187','p22'),('WSS188','p22'),('WSS192','p22'),('WSS194','p22'),('WSS195','p22'),('WSS196','p22'),('WSS199','p22'),('WSS20','p22'),('WSS23','p22'),('WSS25','p22'),('WSS31','p22'),('WSS34','p22'),('WSS39','p22'),('WSS43','p22'),('WSS52','p22'),('WSS57','p22'),('WSS59','p22'),('WSS60','p22'),('WSS62','p22'),('WSS63','p22'),('WSS68','p22'),('WSS75','p22'),('WSS76','p22'),('WSS80','p22'),('WSS90','p22'),('WSS91','p22'),('WSS93','p22'),('WSS107','p23'),('WSS108','p23'),('WSS110','p23'),('WSS113','p23'),('WSS115','p23'),('WSS116','p23'),('WSS118','p23'),('WSS125','p23'),('WSS126','p23'),('WSS130','p23'),('WSS137','p23'),('WSS14','p23'),('WSS141','p23'),('WSS144','p23'),('WSS155','p23'),('WSS161','p23'),('WSS164','p23'),('WSS165','p23'),('WSS167','p23'),('WSS173','p23'),('WSS175','p23'),('WSS176','p23'),('WSS183','p23'),('WSS185','p23'),('WSS186','p23'),('WSS190','p23'),('WSS191','p23'),('WSS196','p23'),('WSS200','p23'),('WSS24','p23'),('WSS28','p23'),('WSS34','p23'),('WSS48','p23'),('WSS58','p23'),('WSS6','p23'),('WSS61','p23'),('WSS64','p23'),('WSS73','p23'),('WSS75','p23'),('WSS78','p23'),('WSS81','p23'),('WSS93','p23'),('WSS95','p23'),('WSS96','p23'),('WSS99','p23'),('WSS100','p24'),('WSS102','p24'),('WSS107','p24'),('WSS109','p24'),('WSS110','p24'),('WSS112','p24'),('WSS121','p24'),('WSS123','p24'),('WSS126','p24'),('WSS127','p24'),('WSS140','p24'),('WSS141','p24'),('WSS143','p24'),('WSS144','p24'),('WSS145','p24'),('WSS147','p24'),('WSS15','p24'),('WSS152','p24'),('WSS163','p24'),('WSS164','p24'),('WSS167','p24'),('WSS174','p24'),('WSS176','p24'),('WSS177','p24'),('WSS182','p24'),('WSS198','p24'),('WSS2','p24'),('WSS200','p24'),('WSS25','p24'),('WSS28','p24'),('WSS29','p24'),('WSS34','p24'),('WSS35','p24'),('WSS40','p24'),('WSS62','p24'),('WSS64','p24'),('WSS65','p24'),('WSS7','p24'),('WSS72','p24'),('WSS75','p24'),('WSS84','p24'),('WSS89','p24'),('WSS93','p24'),('WSS113','p25'),('WSS119','p25'),('WSS12','p25'),('WSS123','p25'),('WSS124','p25'),('WSS129','p25'),('WSS143','p25'),('WSS145','p25'),('WSS146','p25'),('WSS147','p25'),('WSS15','p25'),('WSS156','p25'),('WSS159','p25'),('WSS161','p25'),('WSS163','p25'),('WSS164','p25'),('WSS169','p25'),('WSS172','p25'),('WSS176','p25'),('WSS178','p25'),('WSS179','p25'),('WSS18','p25'),('WSS184','p25'),('WSS185','p25'),('WSS186','p25'),('WSS189','p25'),('WSS194','p25'),('WSS196','p25'),('WSS198','p25'),('WSS199','p25'),('WSS2','p25'),('WSS3','p25'),('WSS30','p25'),('WSS37','p25'),('WSS38','p25'),('WSS45','p25'),('WSS48','p25'),('WSS51','p25'),('WSS54','p25'),('WSS62','p25'),('WSS64','p25'),('WSS66','p25'),('WSS70','p25'),('WSS74','p25'),('WSS77','p25'),('WSS88','p25'),('WSS93','p25'),('WSS94','p25'),('WSS96','p25'),('WSS102','p26'),('WSS105','p26'),('WSS106','p26'),('WSS108','p26'),('WSS111','p26'),('WSS112','p26'),('WSS118','p26'),('WSS125','p26'),('WSS128','p26'),('WSS129','p26'),('WSS13','p26'),('WSS135','p26'),('WSS138','p26'),('WSS146','p26'),('WSS149','p26'),('WSS151','p26'),('WSS153','p26'),('WSS154','p26'),('WSS155','p26'),('WSS162','p26'),('WSS165','p26'),('WSS167','p26'),('WSS171','p26'),('WSS189','p26'),('WSS191','p26'),('WSS194','p26'),('WSS195','p26'),('WSS197','p26'),('WSS199','p26'),('WSS21','p26'),('WSS22','p26'),('WSS25','p26'),('WSS32','p26'),('WSS4','p26'),('WSS42','p26'),('WSS45','p26'),('WSS53','p26'),('WSS58','p26'),('WSS68','p26'),('WSS70','p26'),('WSS79','p26'),('WSS8','p26'),('WSS83','p26'),('WSS88','p26'),('WSS90','p26'),('WSS95','p26'),('WSS10','p27'),('WSS100','p27'),('WSS103','p27'),('WSS106','p27'),('WSS127','p27'),('WSS132','p27'),('WSS133','p27'),('WSS134','p27'),('WSS142','p27'),('WSS144','p27'),('WSS148','p27'),('WSS150','p27'),('WSS152','p27'),('WSS162','p27'),('WSS164','p27'),('WSS17','p27'),('WSS178','p27'),('WSS179','p27'),('WSS180','p27'),('WSS186','p27'),('WSS188','p27'),('WSS19','p27'),('WSS199','p27'),('WSS2','p27'),('WSS20','p27'),('WSS21','p27'),('WSS25','p27'),('WSS26','p27'),('WSS3','p27'),('WSS31','p27'),('WSS32','p27'),('WSS41','p27'),('WSS42','p27'),('WSS43','p27'),('WSS44','p27'),('WSS47','p27'),('WSS50','p27'),('WSS51','p27'),('WSS53','p27'),('WSS61','p27'),('WSS63','p27'),('WSS64','p27'),('WSS67','p27'),('WSS69','p27'),('WSS71','p27'),('WSS72','p27'),('WSS74','p27'),('WSS8','p27'),('WSS92','p27'),('WSS102','p28'),('WSS109','p28'),('WSS115','p28'),('WSS116','p28'),('WSS12','p28'),('WSS121','p28'),('WSS125','p28'),('WSS132','p28'),('WSS135','p28'),('WSS137','p28'),('WSS140','p28'),('WSS149','p28'),('WSS16','p28'),('WSS170','p28'),('WSS173','p28'),('WSS175','p28'),('WSS184','p28'),('WSS187','p28'),('WSS188','p28'),('WSS190','p28'),('WSS192','p28'),('WSS197','p28'),('WSS21','p28'),('WSS28','p28'),('WSS30','p28'),('WSS37','p28'),('WSS42','p28'),('WSS44','p28'),('WSS47','p28'),('WSS51','p28'),('WSS54','p28'),('WSS62','p28'),('WSS64','p28'),('WSS65','p28'),('WSS66','p28'),('WSS75','p28'),('WSS78','p28'),('WSS88','p28'),('WSS9','p28'),('WSS92','p28'),('WSS95','p28'),('WSS98','p28'),('WSS101','p29'),('WSS103','p29'),('WSS106','p29'),('WSS110','p29'),('WSS115','p29'),('WSS130','p29'),('WSS132','p29'),('WSS133','p29'),('WSS137','p29'),('WSS140','p29'),('WSS141','p29'),('WSS147','p29'),('WSS151','p29'),('WSS152','p29'),('WSS157','p29'),('WSS159','p29'),('WSS161','p29'),('WSS166','p29'),('WSS180','p29'),('WSS183','p29'),('WSS187','p29'),('WSS22','p29'),('WSS24','p29'),('WSS3','p29'),('WSS35','p29'),('WSS39','p29'),('WSS41','p29'),('WSS49','p29'),('WSS50','p29'),('WSS52','p29'),('WSS53','p29'),('WSS55','p29'),('WSS57','p29'),('WSS58','p29'),('WSS61','p29'),('WSS68','p29'),('WSS69','p29'),('WSS7','p29'),('WSS71','p29'),('WSS72','p29'),('WSS8','p29'),('WSS83','p29'),('WSS85','p29'),('WSS9','p29'),('WSS91','p29'),('WSS95','p29'),('WSS96','p29'),('WSS98','p29'),('WSS99','p29'),('WSS100','p3'),('WSS103','p3'),('WSS104','p3'),('WSS107','p3'),('WSS109','p3'),('WSS113','p3'),('WSS117','p3'),('WSS120','p3'),('WSS124','p3'),('WSS125','p3'),('WSS127','p3'),('WSS130','p3'),('WSS131','p3'),('WSS150','p3'),('WSS154','p3'),('WSS158','p3'),('WSS160','p3'),('WSS162','p3'),('WSS164','p3'),('WSS165','p3'),('WSS170','p3'),('WSS18','p3'),('WSS181','p3'),('WSS182','p3'),('WSS185','p3'),('WSS194','p3'),('WSS197','p3'),('WSS2','p3'),('WSS24','p3'),('WSS27','p3'),('WSS29','p3'),('WSS31','p3'),('WSS32','p3'),('WSS38','p3'),('WSS44','p3'),('WSS46','p3'),('WSS48','p3'),('WSS49','p3'),('WSS51','p3'),('WSS52','p3'),('WSS66','p3'),('WSS68','p3'),('WSS70','p3'),('WSS76','p3'),('WSS79','p3'),('WSS8','p3'),('WSS82','p3'),('WSS89','p3'),('WSS91','p3'),('WSS93','p3'),('WSS109','p30'),('WSS111','p30'),('WSS112','p30'),('WSS127','p30'),('WSS13','p30'),('WSS131','p30'),('WSS136','p30'),('WSS139','p30'),('WSS143','p30'),('WSS145','p30'),('WSS154','p30'),('WSS156','p30'),('WSS166','p30'),('WSS17','p30'),('WSS173','p30'),('WSS178','p30'),('WSS182','p30'),('WSS184','p30'),('WSS185','p30'),('WSS19','p30'),('WSS190','p30'),('WSS191','p30'),('WSS198','p30'),('WSS34','p30'),('WSS36','p30'),('WSS38','p30'),('WSS4','p30'),('WSS43','p30'),('WSS49','p30'),('WSS55','p30'),('WSS60','p30'),('WSS62','p30'),('WSS69','p30'),('WSS81','p30'),('WSS82','p30'),('WSS86','p30'),('WSS88','p30'),('WSS9','p30'),('WSS90','p30'),('WSS97','p30'),('WSS101','p4'),('WSS102','p4'),('WSS103','p4'),('WSS104','p4'),('WSS117','p4'),('WSS119','p4'),('WSS120','p4'),('WSS122','p4'),('WSS123','p4'),('WSS14','p4'),('WSS142','p4'),('WSS145','p4'),('WSS160','p4'),('WSS163','p4'),('WSS172','p4'),('WSS177','p4'),('WSS183','p4'),('WSS187','p4'),('WSS194','p4'),('WSS195','p4'),('WSS198','p4'),('WSS21','p4'),('WSS30','p4'),('WSS33','p4'),('WSS35','p4'),('WSS41','p4'),('WSS45','p4'),('WSS48','p4'),('WSS51','p4'),('WSS53','p4'),('WSS54','p4'),('WSS59','p4'),('WSS74','p4'),('WSS77','p4'),('WSS78','p4'),('WSS81','p4'),('WSS86','p4'),('WSS93','p4'),('WSS99','p4'),('WSS100','p5'),('WSS101','p5'),('WSS103','p5'),('WSS106','p5'),('WSS109','p5'),('WSS110','p5'),('WSS111','p5'),('WSS114','p5'),('WSS12','p5'),('WSS120','p5'),('WSS122','p5'),('WSS131','p5'),('WSS132','p5'),('WSS139','p5'),('WSS14','p5'),('WSS140','p5'),('WSS142','p5'),('WSS144','p5'),('WSS147','p5'),('WSS152','p5'),('WSS153','p5'),('WSS156','p5'),('WSS157','p5'),('WSS160','p5'),('WSS164','p5'),('WSS17','p5'),('WSS171','p5'),('WSS172','p5'),('WSS174','p5'),('WSS178','p5'),('WSS179','p5'),('WSS185','p5'),('WSS186','p5'),('WSS19','p5'),('WSS190','p5'),('WSS192','p5'),('WSS199','p5'),('WSS2','p5'),('WSS20','p5'),('WSS21','p5'),('WSS25','p5'),('WSS27','p5'),('WSS36','p5'),('WSS42','p5'),('WSS49','p5'),('WSS50','p5'),('WSS56','p5'),('WSS59','p5'),('WSS68','p5'),('WSS70','p5'),('WSS73','p5'),('WSS80','p5'),('WSS82','p5'),('WSS85','p5'),('WSS9','p5'),('WSS91','p5'),('WSS94','p5'),('WSS96','p5'),('WSS97','p5'),('WSS99','p5'),('WSS1','p6'),('WSS102','p6'),('WSS104','p6'),('WSS105','p6'),('WSS119','p6'),('WSS12','p6'),('WSS126','p6'),('WSS129','p6'),('WSS13','p6'),('WSS134','p6'),('WSS135','p6'),('WSS136','p6'),('WSS146','p6'),('WSS147','p6'),('WSS153','p6'),('WSS154','p6'),('WSS158','p6'),('WSS16','p6'),('WSS161','p6'),('WSS162','p6'),('WSS166','p6'),('WSS167','p6'),('WSS171','p6'),('WSS175','p6'),('WSS176','p6'),('WSS18','p6'),('WSS19','p6'),('WSS194','p6'),('WSS197','p6'),('WSS2','p6'),('WSS23','p6'),('WSS26','p6'),('WSS29','p6'),('WSS32','p6'),('WSS33','p6'),('WSS36','p6'),('WSS39','p6'),('WSS40','p6'),('WSS46','p6'),('WSS52','p6'),('WSS56','p6'),('WSS61','p6'),('WSS65','p6'),('WSS66','p6'),('WSS7','p6'),('WSS73','p6'),('WSS74','p6'),('WSS75','p6'),('WSS80','p6'),('WSS81','p6'),('WSS84','p6'),('WSS87','p6'),('WSS90','p6'),('WSS91','p6'),('WSS92','p6'),('WSS95','p6'),('WSS97','p6'),('WSS104','p7'),('WSS105','p7'),('WSS112','p7'),('WSS113','p7'),('WSS116','p7'),('WSS121','p7'),('WSS127','p7'),('WSS128','p7'),('WSS130','p7'),('WSS132','p7'),('WSS136','p7'),('WSS142','p7'),('WSS143','p7'),('WSS15','p7'),('WSS156','p7'),('WSS157','p7'),('WSS158','p7'),('WSS16','p7'),('WSS173','p7'),('WSS174','p7'),('WSS175','p7'),('WSS176','p7'),('WSS181','p7'),('WSS186','p7'),('WSS188','p7'),('WSS189','p7'),('WSS196','p7'),('WSS22','p7'),('WSS23','p7'),('WSS24','p7'),('WSS27','p7'),('WSS28','p7'),('WSS3','p7'),('WSS32','p7'),('WSS35','p7'),('WSS36','p7'),('WSS41','p7'),('WSS46','p7'),('WSS49','p7'),('WSS5','p7'),('WSS52','p7'),('WSS53','p7'),('WSS6','p7'),('WSS65','p7'),('WSS67','p7'),('WSS72','p7'),('WSS77','p7'),('WSS83','p7'),('WSS86','p7'),('WSS9','p7'),('WSS90','p7'),('WSS94','p7'),('WSS98','p7'),('WSS101','p8'),('WSS103','p8'),('WSS108','p8'),('WSS11','p8'),('WSS118','p8'),('WSS121','p8'),('WSS122','p8'),('WSS124','p8'),('WSS133','p8'),('WSS135','p8'),('WSS141','p8'),('WSS142','p8'),('WSS148','p8'),('WSS149','p8'),('WSS154','p8'),('WSS168','p8'),('WSS174','p8'),('WSS177','p8'),('WSS178','p8'),('WSS179','p8'),('WSS190','p8'),('WSS191','p8'),('WSS193','p8'),('WSS200','p8'),('WSS3','p8'),('WSS30','p8'),('WSS34','p8'),('WSS39','p8'),('WSS41','p8'),('WSS45','p8'),('WSS48','p8'),('WSS55','p8'),('WSS60','p8'),('WSS62','p8'),('WSS69','p8'),('WSS75','p8'),('WSS78','p8'),('WSS84','p8'),('WSS85','p8'),('WSS86','p8'),('WSS87','p8'),('WSS9','p8'),('WSS90','p8'),('WSS1','p9'),('WSS10','p9'),('WSS109','p9'),('WSS11','p9'),('WSS110','p9'),('WSS114','p9'),('WSS119','p9'),('WSS120','p9'),('WSS127','p9'),('WSS130','p9'),('WSS131','p9'),('WSS132','p9'),('WSS133','p9'),('WSS134','p9'),('WSS139','p9'),('WSS144','p9'),('WSS146','p9'),('WSS157','p9'),('WSS16','p9'),('WSS161','p9'),('WSS163','p9'),('WSS165','p9'),('WSS166','p9'),('WSS170','p9'),('WSS20','p9'),('WSS200','p9'),('WSS22','p9'),('WSS26','p9'),('WSS36','p9'),('WSS38','p9'),('WSS40','p9'),('WSS46','p9'),('WSS53','p9'),('WSS61','p9'),('WSS63','p9'),('WSS69','p9'),('WSS8','p9'),('WSS83','p9'),('WSS86','p9'),('WSS88','p9'),('WSS91','p9'),('WSS99','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS70'),(1,2,'WSS174'),(2,1,'WSS104'),(2,2,'WSS107'),(2,2,'WSS26'),(3,1,'WSS2'),(3,1,'WSS85'),(4,1,'WSS27'),(4,2,'WSS185'),(5,1,'WSS85'),(5,2,'WSS170'),(6,1,'WSS91'),(6,2,'WSS95'),(7,1,'WSS2'),(7,2,'WSS152'),(8,1,'WSS109'),(8,2,'WSS183'),(9,1,'WSS93'),(9,2,'WSS160'),(10,1,'WSS12'),(10,2,'WSS187'),(11,1,'WSS148'),(11,2,'WSS62'),(12,1,'WSS198'),(12,2,'WSS109'),(12,3,'WSS99'),(13,1,'WSS150'),(13,2,'WSS66'),(14,1,'WSS23'),(14,1,'WSS74'),(15,1,'WSS86'),(15,2,'WSS1'),(16,1,'WSS108'),(16,2,'WSS194'),(16,3,'WSS170'),(17,1,'WSS129'),(17,2,'WSS40'),(18,1,'WSS147'),(18,2,'WSS64'),(19,1,'WSS95'),(19,1,'WSS99'),(20,1,'WSS15'),(20,1,'WSS56'),(21,1,'WSS199'),(21,1,'WSS22'),(21,2,'WSS11'),(22,1,'WSS21'),(22,1,'WSS88'),(23,1,'WSS63'),(23,2,'WSS89'),(24,1,'WSS104'),(24,2,'WSS6'),(25,1,'WSS189'),(25,1,'WSS193'),(26,1,'WSS25'),(26,2,'WSS19'),(27,1,'WSS109'),(27,2,'WSS157'),(28,1,'WSS159'),(28,2,'WSS146'),(29,1,'WSS104'),(29,2,'WSS100'),(30,1,'WSS148'),(30,2,'WSS107'),(30,3,'WSS175'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-07-06 19:53:24
