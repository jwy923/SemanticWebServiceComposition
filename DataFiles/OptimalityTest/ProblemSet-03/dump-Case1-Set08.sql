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
INSERT INTO `initialgoalparameter` VALUES (1,'I','p1'),(2,'I','p1'),(3,'G','p1'),(8,'G','p1'),(9,'G','p1'),(10,'I','p1'),(16,'I','p1'),(17,'I','p1'),(19,'I','p1'),(21,'I','p1'),(29,'G','p1'),(1,'G','p10'),(4,'I','p10'),(6,'I','p10'),(7,'I','p10'),(9,'I','p10'),(10,'G','p10'),(11,'I','p10'),(12,'I','p10'),(21,'G','p10'),(22,'G','p10'),(25,'I','p10'),(26,'I','p10'),(1,'I','p11'),(5,'I','p11'),(6,'G','p11'),(9,'I','p11'),(14,'G','p11'),(15,'I','p11'),(19,'G','p11'),(20,'G','p11'),(22,'I','p11'),(26,'I','p11'),(28,'G','p11'),(4,'I','p12'),(8,'I','p12'),(16,'I','p12'),(19,'I','p12'),(21,'I','p12'),(26,'G','p12'),(27,'G','p12'),(1,'I','p13'),(2,'G','p13'),(5,'G','p13'),(13,'I','p13'),(14,'G','p13'),(20,'I','p13'),(23,'I','p13'),(24,'I','p13'),(27,'I','p13'),(30,'G','p13'),(2,'G','p14'),(7,'I','p14'),(10,'G','p14'),(11,'I','p14'),(18,'G','p14'),(20,'I','p14'),(22,'G','p14'),(24,'G','p14'),(25,'I','p14'),(27,'I','p14'),(2,'I','p15'),(4,'I','p15'),(5,'G','p15'),(6,'G','p15'),(15,'I','p15'),(17,'G','p15'),(19,'I','p15'),(20,'G','p15'),(25,'I','p15'),(1,'I','p16'),(6,'I','p16'),(8,'I','p16'),(11,'I','p16'),(14,'I','p16'),(18,'G','p16'),(20,'G','p16'),(21,'G','p16'),(25,'G','p16'),(26,'I','p16'),(30,'I','p16'),(2,'I','p17'),(4,'G','p17'),(8,'I','p17'),(9,'I','p17'),(11,'G','p17'),(23,'I','p17'),(25,'I','p17'),(26,'I','p17'),(28,'G','p17'),(29,'I','p17'),(30,'I','p17'),(2,'I','p18'),(11,'I','p18'),(12,'G','p18'),(13,'I','p18'),(19,'G','p18'),(27,'G','p18'),(30,'G','p18'),(5,'I','p19'),(7,'I','p19'),(8,'I','p19'),(9,'G','p19'),(10,'I','p19'),(18,'I','p19'),(20,'I','p19'),(23,'I','p19'),(28,'G','p19'),(29,'G','p19'),(30,'I','p19'),(3,'G','p2'),(14,'I','p2'),(27,'I','p2'),(1,'G','p20'),(6,'I','p20'),(7,'I','p20'),(8,'I','p20'),(9,'G','p20'),(11,'I','p20'),(13,'I','p20'),(14,'I','p20'),(16,'G','p20'),(17,'I','p20'),(21,'I','p20'),(22,'I','p20'),(24,'I','p20'),(26,'I','p20'),(27,'I','p20'),(29,'I','p20'),(7,'I','p21'),(9,'G','p21'),(10,'I','p21'),(13,'I','p21'),(18,'I','p21'),(19,'I','p21'),(20,'I','p21'),(23,'I','p21'),(24,'I','p21'),(26,'G','p21'),(27,'G','p21'),(28,'G','p21'),(29,'G','p21'),(3,'I','p22'),(7,'G','p22'),(12,'I','p22'),(17,'I','p22'),(22,'I','p22'),(24,'I','p22'),(25,'G','p22'),(2,'I','p23'),(4,'I','p23'),(13,'I','p23'),(20,'I','p23'),(23,'I','p23'),(24,'G','p23'),(26,'I','p23'),(5,'I','p24'),(6,'I','p24'),(7,'G','p24'),(13,'G','p24'),(15,'I','p24'),(18,'I','p24'),(19,'I','p24'),(22,'G','p24'),(28,'I','p24'),(1,'I','p25'),(3,'G','p25'),(5,'I','p25'),(8,'G','p25'),(9,'I','p25'),(14,'I','p25'),(15,'G','p25'),(17,'I','p25'),(20,'G','p25'),(23,'G','p25'),(24,'G','p25'),(25,'G','p25'),(26,'G','p25'),(27,'I','p25'),(29,'I','p25'),(1,'G','p26'),(3,'G','p26'),(6,'I','p26'),(9,'I','p26'),(10,'G','p26'),(12,'G','p26'),(16,'G','p26'),(18,'G','p26'),(21,'G','p26'),(25,'G','p26'),(28,'I','p26'),(2,'G','p27'),(5,'I','p27'),(14,'G','p27'),(15,'I','p27'),(16,'I','p27'),(17,'I','p27'),(19,'I','p27'),(22,'I','p27'),(23,'G','p27'),(29,'G','p27'),(3,'I','p28'),(5,'I','p28'),(6,'I','p28'),(10,'G','p28'),(11,'G','p28'),(12,'I','p28'),(16,'G','p28'),(17,'G','p28'),(18,'I','p28'),(27,'I','p28'),(30,'I','p28'),(1,'G','p29'),(3,'I','p29'),(4,'G','p29'),(13,'G','p29'),(16,'I','p29'),(17,'G','p29'),(21,'I','p29'),(24,'I','p29'),(29,'I','p29'),(30,'I','p29'),(2,'I','p3'),(4,'G','p3'),(10,'I','p3'),(13,'I','p3'),(14,'G','p3'),(15,'G','p3'),(21,'G','p3'),(24,'I','p3'),(26,'G','p3'),(29,'I','p3'),(3,'I','p30'),(7,'G','p30'),(10,'I','p30'),(11,'G','p30'),(12,'I','p30'),(15,'G','p30'),(16,'G','p30'),(18,'I','p30'),(21,'I','p30'),(23,'I','p30'),(25,'I','p30'),(30,'G','p30'),(4,'I','p4'),(7,'I','p4'),(8,'G','p4'),(9,'I','p4'),(12,'G','p4'),(14,'I','p4'),(19,'G','p4'),(22,'G','p4'),(23,'G','p4'),(28,'I','p4'),(3,'I','p5'),(5,'G','p5'),(8,'G','p5'),(10,'I','p5'),(12,'I','p5'),(15,'G','p5'),(18,'I','p5'),(24,'G','p5'),(25,'I','p5'),(28,'I','p5'),(1,'I','p6'),(2,'G','p6'),(11,'G','p6'),(13,'G','p6'),(17,'G','p6'),(18,'G','p6'),(21,'I','p6'),(28,'I','p6'),(30,'G','p6'),(6,'G','p7'),(12,'I','p7'),(14,'I','p7'),(15,'I','p7'),(16,'I','p7'),(17,'I','p7'),(19,'G','p7'),(20,'I','p7'),(22,'I','p7'),(23,'G','p7'),(28,'I','p7'),(29,'I','p7'),(30,'I','p7'),(3,'I','p8'),(4,'I','p8'),(5,'G','p8'),(7,'G','p8'),(8,'I','p8'),(11,'I','p8'),(12,'G','p8'),(13,'G','p8'),(22,'I','p8'),(27,'G','p8'),(4,'G','p9'),(6,'G','p9'),(15,'I','p9'),(16,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS108','p1'),('WSS110','p1'),('WSS116','p1'),('WSS140','p1'),('WSS3','p1'),('WSS41','p1'),('WSS46','p1'),('WSS50','p1'),('WSS69','p1'),('WSS79','p1'),('WSS105','p10'),('WSS160','p10'),('WSS176','p10'),('WSS181','p10'),('WSS188','p10'),('WSS61','p10'),('WSS78','p10'),('WSS79','p10'),('WSS84','p10'),('WSS1','p11'),('WSS142','p11'),('WSS162','p11'),('WSS169','p11'),('WSS191','p11'),('WSS55','p11'),('WSS59','p11'),('WSS62','p11'),('WSS74','p11'),('WSS107','p12'),('WSS128','p12'),('WSS129','p12'),('WSS132','p12'),('WSS178','p12'),('WSS194','p12'),('WSS197','p12'),('WSS199','p12'),('WSS4','p12'),('WSS70','p12'),('WSS87','p12'),('WSS88','p12'),('WSS9','p12'),('WSS128','p13'),('WSS136','p13'),('WSS148','p13'),('WSS160','p13'),('WSS163','p13'),('WSS166','p13'),('WSS178','p13'),('WSS188','p13'),('WSS2','p13'),('WSS44','p13'),('WSS60','p13'),('WSS73','p13'),('WSS97','p13'),('WSS109','p14'),('WSS111','p14'),('WSS15','p14'),('WSS150','p14'),('WSS154','p14'),('WSS158','p14'),('WSS17','p14'),('WSS182','p14'),('WSS183','p14'),('WSS186','p14'),('WSS200','p14'),('WSS31','p14'),('WSS33','p14'),('WSS4','p14'),('WSS40','p14'),('WSS50','p14'),('WSS70','p14'),('WSS83','p14'),('WSS88','p14'),('WSS132','p15'),('WSS149','p15'),('WSS156','p15'),('WSS158','p15'),('WSS19','p15'),('WSS30','p15'),('WSS37','p15'),('WSS49','p15'),('WSS59','p15'),('WSS67','p15'),('WSS68','p15'),('WSS8','p15'),('WSS94','p15'),('WSS95','p15'),('WSS112','p16'),('WSS116','p16'),('WSS144','p16'),('WSS147','p16'),('WSS199','p16'),('WSS20','p16'),('WSS32','p16'),('WSS34','p16'),('WSS65','p16'),('WSS85','p16'),('WSS94','p16'),('WSS99','p16'),('WSS10','p17'),('WSS104','p17'),('WSS120','p17'),('WSS121','p17'),('WSS144','p17'),('WSS145','p17'),('WSS172','p17'),('WSS174','p17'),('WSS187','p17'),('WSS190','p17'),('WSS192','p17'),('WSS58','p17'),('WSS71','p17'),('WSS108','p18'),('WSS143','p18'),('WSS155','p18'),('WSS184','p18'),('WSS198','p18'),('WSS25','p18'),('WSS45','p18'),('WSS5','p18'),('WSS56','p18'),('WSS63','p18'),('WSS73','p18'),('WSS98','p18'),('WSS127','p19'),('WSS130','p19'),('WSS133','p19'),('WSS153','p19'),('WSS154','p19'),('WSS155','p19'),('WSS159','p19'),('WSS163','p19'),('WSS169','p19'),('WSS196','p19'),('WSS29','p19'),('WSS34','p19'),('WSS36','p19'),('WSS57','p19'),('WSS61','p19'),('WSS64','p19'),('WSS81','p19'),('WSS9','p19'),('WSS91','p19'),('WSS100','p2'),('WSS123','p2'),('WSS13','p2'),('WSS193','p2'),('WSS21','p2'),('WSS26','p2'),('WSS38','p2'),('WSS40','p2'),('WSS52','p2'),('WSS54','p2'),('WSS6','p2'),('WSS111','p20'),('WSS143','p20'),('WSS156','p20'),('WSS16','p20'),('WSS175','p20'),('WSS32','p20'),('WSS46','p20'),('WSS48','p20'),('WSS51','p20'),('WSS60','p20'),('WSS67','p20'),('WSS85','p20'),('WSS87','p20'),('WSS122','p21'),('WSS127','p21'),('WSS171','p21'),('WSS18','p21'),('WSS183','p21'),('WSS26','p21'),('WSS35','p21'),('WSS39','p21'),('WSS53','p21'),('WSS78','p21'),('WSS86','p21'),('WSS103','p22'),('WSS114','p22'),('WSS120','p22'),('WSS142','p22'),('WSS153','p22'),('WSS164','p22'),('WSS167','p22'),('WSS177','p22'),('WSS186','p22'),('WSS2','p22'),('WSS30','p22'),('WSS38','p22'),('WSS43','p22'),('WSS47','p22'),('WSS77','p22'),('WSS8','p22'),('WSS84','p22'),('WSS102','p23'),('WSS104','p23'),('WSS114','p23'),('WSS145','p23'),('WSS161','p23'),('WSS165','p23'),('WSS180','p23'),('WSS185','p23'),('WSS21','p23'),('WSS48','p23'),('WSS92','p23'),('WSS99','p23'),('WSS109','p24'),('WSS112','p24'),('WSS12','p24'),('WSS124','p24'),('WSS175','p24'),('WSS190','p24'),('WSS193','p24'),('WSS41','p24'),('WSS56','p24'),('WSS58','p24'),('WSS86','p24'),('WSS96','p24'),('WSS106','p25'),('WSS107','p25'),('WSS115','p25'),('WSS126','p25'),('WSS139','p25'),('WSS140','p25'),('WSS149','p25'),('WSS179','p25'),('WSS181','p25'),('WSS198','p25'),('WSS28','p25'),('WSS35','p25'),('WSS66','p25'),('WSS90','p25'),('WSS91','p25'),('WSS129','p26'),('WSS135','p26'),('WSS137','p26'),('WSS138','p26'),('WSS161','p26'),('WSS176','p26'),('WSS90','p26'),('WSS105','p27'),('WSS146','p27'),('WSS148','p27'),('WSS151','p27'),('WSS152','p27'),('WSS168','p27'),('WSS23','p27'),('WSS57','p27'),('WSS6','p27'),('WSS71','p27'),('WSS72','p27'),('WSS89','p27'),('WSS93','p27'),('WSS98','p27'),('WSS10','p28'),('WSS110','p28'),('WSS119','p28'),('WSS131','p28'),('WSS134','p28'),('WSS137','p28'),('WSS146','p28'),('WSS15','p28'),('WSS167','p28'),('WSS170','p28'),('WSS22','p28'),('WSS28','p28'),('WSS42','p28'),('WSS63','p28'),('WSS7','p28'),('WSS75','p28'),('WSS101','p29'),('WSS123','p29'),('WSS124','p29'),('WSS141','p29'),('WSS151','p29'),('WSS165','p29'),('WSS195','p29'),('WSS197','p29'),('WSS200','p29'),('WSS25','p29'),('WSS27','p29'),('WSS37','p29'),('WSS68','p29'),('WSS69','p29'),('WSS7','p29'),('WSS81','p29'),('WSS11','p3'),('WSS118','p3'),('WSS125','p3'),('WSS13','p3'),('WSS147','p3'),('WSS164','p3'),('WSS182','p3'),('WSS191','p3'),('WSS3','p3'),('WSS44','p3'),('WSS66','p3'),('WSS72','p3'),('WSS95','p3'),('WSS113','p30'),('WSS130','p30'),('WSS134','p30'),('WSS18','p30'),('WSS24','p30'),('WSS29','p30'),('WSS54','p30'),('WSS76','p30'),('WSS1','p4'),('WSS106','p4'),('WSS115','p4'),('WSS126','p4'),('WSS14','p4'),('WSS152','p4'),('WSS16','p4'),('WSS162','p4'),('WSS173','p4'),('WSS179','p4'),('WSS187','p4'),('WSS19','p4'),('WSS192','p4'),('WSS22','p4'),('WSS24','p4'),('WSS31','p4'),('WSS39','p4'),('WSS49','p4'),('WSS62','p4'),('WSS80','p4'),('WSS93','p4'),('WSS122','p5'),('WSS138','p5'),('WSS139','p5'),('WSS14','p5'),('WSS166','p5'),('WSS168','p5'),('WSS195','p5'),('WSS23','p5'),('WSS42','p5'),('WSS52','p5'),('WSS82','p5'),('WSS101','p6'),('WSS103','p6'),('WSS117','p6'),('WSS12','p6'),('WSS150','p6'),('WSS174','p6'),('WSS180','p6'),('WSS184','p6'),('WSS196','p6'),('WSS53','p6'),('WSS77','p6'),('WSS11','p7'),('WSS118','p7'),('WSS119','p7'),('WSS121','p7'),('WSS131','p7'),('WSS133','p7'),('WSS136','p7'),('WSS170','p7'),('WSS171','p7'),('WSS172','p7'),('WSS185','p7'),('WSS194','p7'),('WSS47','p7'),('WSS5','p7'),('WSS76','p7'),('WSS80','p7'),('WSS89','p7'),('WSS92','p7'),('WSS96','p7'),('WSS117','p8'),('WSS177','p8'),('WSS189','p8'),('WSS20','p8'),('WSS75','p8'),('WSS83','p8'),('WSS100','p9'),('WSS102','p9'),('WSS113','p9'),('WSS125','p9'),('WSS135','p9'),('WSS141','p9'),('WSS157','p9'),('WSS159','p9'),('WSS17','p9'),('WSS189','p9'),('WSS27','p9'),('WSS45','p9'),('WSS55','p9'),('WSS74','p9'),('WSS82','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS102','p1'),('WSS104','p1'),('WSS11','p1'),('WSS114','p1'),('WSS12','p1'),('WSS120','p1'),('WSS129','p1'),('WSS135','p1'),('WSS152','p1'),('WSS157','p1'),('WSS164','p1'),('WSS166','p1'),('WSS178','p1'),('WSS182','p1'),('WSS194','p1'),('WSS195','p1'),('WSS196','p1'),('WSS24','p1'),('WSS3','p1'),('WSS41','p1'),('WSS59','p1'),('WSS70','p1'),('WSS77','p1'),('WSS79','p1'),('WSS81','p1'),('WSS85','p1'),('WSS88','p1'),('WSS89','p1'),('WSS92','p1'),('WSS96','p1'),('WSS97','p1'),('WSS1','p10'),('WSS102','p10'),('WSS107','p10'),('WSS122','p10'),('WSS125','p10'),('WSS126','p10'),('WSS132','p10'),('WSS138','p10'),('WSS148','p10'),('WSS159','p10'),('WSS16','p10'),('WSS165','p10'),('WSS175','p10'),('WSS186','p10'),('WSS199','p10'),('WSS26','p10'),('WSS30','p10'),('WSS31','p10'),('WSS37','p10'),('WSS38','p10'),('WSS39','p10'),('WSS43','p10'),('WSS51','p10'),('WSS62','p10'),('WSS69','p10'),('WSS7','p10'),('WSS76','p10'),('WSS86','p10'),('WSS90','p10'),('WSS94','p10'),('WSS110','p11'),('WSS119','p11'),('WSS128','p11'),('WSS130','p11'),('WSS142','p11'),('WSS147','p11'),('WSS151','p11'),('WSS153','p11'),('WSS159','p11'),('WSS166','p11'),('WSS185','p11'),('WSS198','p11'),('WSS199','p11'),('WSS28','p11'),('WSS30','p11'),('WSS51','p11'),('WSS67','p11'),('WSS7','p11'),('WSS75','p11'),('WSS97','p11'),('WSS99','p11'),('WSS105','p12'),('WSS108','p12'),('WSS112','p12'),('WSS117','p12'),('WSS119','p12'),('WSS123','p12'),('WSS136','p12'),('WSS137','p12'),('WSS146','p12'),('WSS149','p12'),('WSS155','p12'),('WSS156','p12'),('WSS16','p12'),('WSS168','p12'),('WSS19','p12'),('WSS191','p12'),('WSS192','p12'),('WSS22','p12'),('WSS31','p12'),('WSS32','p12'),('WSS41','p12'),('WSS42','p12'),('WSS47','p12'),('WSS51','p12'),('WSS56','p12'),('WSS58','p12'),('WSS64','p12'),('WSS67','p12'),('WSS68','p12'),('WSS77','p12'),('WSS86','p12'),('WSS89','p12'),('WSS93','p12'),('WSS100','p13'),('WSS106','p13'),('WSS107','p13'),('WSS11','p13'),('WSS116','p13'),('WSS121','p13'),('WSS128','p13'),('WSS132','p13'),('WSS139','p13'),('WSS141','p13'),('WSS147','p13'),('WSS155','p13'),('WSS167','p13'),('WSS177','p13'),('WSS185','p13'),('WSS189','p13'),('WSS30','p13'),('WSS39','p13'),('WSS53','p13'),('WSS74','p13'),('WSS8','p13'),('WSS85','p13'),('WSS103','p14'),('WSS105','p14'),('WSS116','p14'),('WSS120','p14'),('WSS129','p14'),('WSS144','p14'),('WSS153','p14'),('WSS155','p14'),('WSS157','p14'),('WSS169','p14'),('WSS170','p14'),('WSS172','p14'),('WSS173','p14'),('WSS176','p14'),('WSS18','p14'),('WSS183','p14'),('WSS188','p14'),('WSS23','p14'),('WSS30','p14'),('WSS35','p14'),('WSS39','p14'),('WSS42','p14'),('WSS5','p14'),('WSS52','p14'),('WSS54','p14'),('WSS60','p14'),('WSS71','p14'),('WSS75','p14'),('WSS92','p14'),('WSS10','p15'),('WSS109','p15'),('WSS114','p15'),('WSS12','p15'),('WSS130','p15'),('WSS14','p15'),('WSS142','p15'),('WSS146','p15'),('WSS153','p15'),('WSS160','p15'),('WSS162','p15'),('WSS171','p15'),('WSS172','p15'),('WSS179','p15'),('WSS187','p15'),('WSS21','p15'),('WSS40','p15'),('WSS46','p15'),('WSS63','p15'),('WSS64','p15'),('WSS78','p15'),('WSS80','p15'),('WSS83','p15'),('WSS84','p15'),('WSS93','p15'),('WSS94','p15'),('WSS107','p16'),('WSS120','p16'),('WSS121','p16'),('WSS133','p16'),('WSS138','p16'),('WSS14','p16'),('WSS144','p16'),('WSS145','p16'),('WSS149','p16'),('WSS152','p16'),('WSS16','p16'),('WSS161','p16'),('WSS167','p16'),('WSS177','p16'),('WSS2','p16'),('WSS26','p16'),('WSS50','p16'),('WSS62','p16'),('WSS65','p16'),('WSS67','p16'),('WSS8','p16'),('WSS84','p16'),('WSS87','p16'),('WSS115','p17'),('WSS120','p17'),('WSS122','p17'),('WSS124','p17'),('WSS125','p17'),('WSS139','p17'),('WSS180','p17'),('WSS181','p17'),('WSS182','p17'),('WSS183','p17'),('WSS184','p17'),('WSS187','p17'),('WSS190','p17'),('WSS195','p17'),('WSS197','p17'),('WSS22','p17'),('WSS31','p17'),('WSS36','p17'),('WSS4','p17'),('WSS64','p17'),('WSS68','p17'),('WSS69','p17'),('WSS82','p17'),('WSS88','p17'),('WSS90','p17'),('WSS93','p17'),('WSS1','p18'),('WSS10','p18'),('WSS101','p18'),('WSS106','p18'),('WSS134','p18'),('WSS135','p18'),('WSS143','p18'),('WSS147','p18'),('WSS151','p18'),('WSS156','p18'),('WSS175','p18'),('WSS2','p18'),('WSS29','p18'),('WSS3','p18'),('WSS33','p18'),('WSS35','p18'),('WSS43','p18'),('WSS45','p18'),('WSS5','p18'),('WSS50','p18'),('WSS6','p18'),('WSS61','p18'),('WSS7','p18'),('WSS73','p18'),('WSS80','p18'),('WSS9','p18'),('WSS98','p18'),('WSS112','p19'),('WSS127','p19'),('WSS136','p19'),('WSS143','p19'),('WSS146','p19'),('WSS17','p19'),('WSS188','p19'),('WSS190','p19'),('WSS194','p19'),('WSS26','p19'),('WSS28','p19'),('WSS38','p19'),('WSS46','p19'),('WSS52','p19'),('WSS57','p19'),('WSS72','p19'),('WSS82','p19'),('WSS104','p2'),('WSS110','p2'),('WSS112','p2'),('WSS113','p2'),('WSS12','p2'),('WSS121','p2'),('WSS128','p2'),('WSS140','p2'),('WSS154','p2'),('WSS161','p2'),('WSS164','p2'),('WSS171','p2'),('WSS172','p2'),('WSS192','p2'),('WSS198','p2'),('WSS200','p2'),('WSS28','p2'),('WSS38','p2'),('WSS53','p2'),('WSS72','p2'),('WSS78','p2'),('WSS92','p2'),('WSS95','p2'),('WSS96','p2'),('WSS99','p2'),('WSS1','p20'),('WSS100','p20'),('WSS105','p20'),('WSS113','p20'),('WSS133','p20'),('WSS134','p20'),('WSS135','p20'),('WSS145','p20'),('WSS162','p20'),('WSS168','p20'),('WSS18','p20'),('WSS181','p20'),('WSS193','p20'),('WSS4','p20'),('WSS45','p20'),('WSS6','p20'),('WSS79','p20'),('WSS80','p20'),('WSS84','p20'),('WSS126','p21'),('WSS133','p21'),('WSS138','p21'),('WSS148','p21'),('WSS163','p21'),('WSS165','p21'),('WSS182','p21'),('WSS184','p21'),('WSS195','p21'),('WSS25','p21'),('WSS4','p21'),('WSS41','p21'),('WSS44','p21'),('WSS53','p21'),('WSS62','p21'),('WSS65','p21'),('WSS66','p21'),('WSS85','p21'),('WSS9','p21'),('WSS95','p21'),('WSS110','p22'),('WSS111','p22'),('WSS113','p22'),('WSS127','p22'),('WSS129','p22'),('WSS13','p22'),('WSS139','p22'),('WSS148','p22'),('WSS160','p22'),('WSS179','p22'),('WSS196','p22'),('WSS25','p22'),('WSS40','p22'),('WSS45','p22'),('WSS47','p22'),('WSS54','p22'),('WSS59','p22'),('WSS98','p22'),('WSS102','p23'),('WSS103','p23'),('WSS13','p23'),('WSS130','p23'),('WSS136','p23'),('WSS15','p23'),('WSS154','p23'),('WSS156','p23'),('WSS169','p23'),('WSS17','p23'),('WSS170','p23'),('WSS174','p23'),('WSS177','p23'),('WSS178','p23'),('WSS193','p23'),('WSS20','p23'),('WSS21','p23'),('WSS23','p23'),('WSS32','p23'),('WSS43','p23'),('WSS48','p23'),('WSS56','p23'),('WSS70','p23'),('WSS82','p23'),('WSS90','p23'),('WSS91','p23'),('WSS95','p23'),('WSS98','p23'),('WSS11','p24'),('WSS124','p24'),('WSS142','p24'),('WSS163','p24'),('WSS171','p24'),('WSS199','p24'),('WSS2','p24'),('WSS21','p24'),('WSS23','p24'),('WSS44','p24'),('WSS48','p24'),('WSS71','p24'),('WSS73','p24'),('WSS74','p24'),('WSS77','p24'),('WSS83','p24'),('WSS91','p24'),('WSS108','p25'),('WSS110','p25'),('WSS114','p25'),('WSS118','p25'),('WSS12','p25'),('WSS126','p25'),('WSS14','p25'),('WSS141','p25'),('WSS15','p25'),('WSS151','p25'),('WSS161','p25'),('WSS173','p25'),('WSS18','p25'),('WSS180','p25'),('WSS183','p25'),('WSS197','p25'),('WSS200','p25'),('WSS22','p25'),('WSS25','p25'),('WSS26','p25'),('WSS38','p25'),('WSS44','p25'),('WSS48','p25'),('WSS57','p25'),('WSS59','p25'),('WSS66','p25'),('WSS70','p25'),('WSS9','p25'),('WSS99','p25'),('WSS10','p26'),('WSS125','p26'),('WSS134','p26'),('WSS14','p26'),('WSS142','p26'),('WSS152','p26'),('WSS158','p26'),('WSS159','p26'),('WSS169','p26'),('WSS175','p26'),('WSS183','p26'),('WSS192','p26'),('WSS194','p26'),('WSS24','p26'),('WSS27','p26'),('WSS41','p26'),('WSS56','p26'),('WSS58','p26'),('WSS66','p26'),('WSS73','p26'),('WSS84','p26'),('WSS101','p27'),('WSS111','p27'),('WSS115','p27'),('WSS121','p27'),('WSS124','p27'),('WSS138','p27'),('WSS147','p27'),('WSS149','p27'),('WSS150','p27'),('WSS158','p27'),('WSS16','p27'),('WSS160','p27'),('WSS167','p27'),('WSS174','p27'),('WSS188','p27'),('WSS20','p27'),('WSS25','p27'),('WSS32','p27'),('WSS36','p27'),('WSS63','p27'),('WSS65','p27'),('WSS67','p27'),('WSS68','p27'),('WSS81','p27'),('WSS82','p27'),('WSS89','p27'),('WSS98','p27'),('WSS104','p28'),('WSS106','p28'),('WSS108','p28'),('WSS118','p28'),('WSS124','p28'),('WSS125','p28'),('WSS127','p28'),('WSS13','p28'),('WSS131','p28'),('WSS164','p28'),('WSS168','p28'),('WSS170','p28'),('WSS176','p28'),('WSS177','p28'),('WSS184','p28'),('WSS185','p28'),('WSS186','p28'),('WSS19','p28'),('WSS191','p28'),('WSS193','p28'),('WSS197','p28'),('WSS27','p28'),('WSS33','p28'),('WSS37','p28'),('WSS40','p28'),('WSS42','p28'),('WSS46','p28'),('WSS47','p28'),('WSS58','p28'),('WSS61','p28'),('WSS76','p28'),('WSS87','p28'),('WSS88','p28'),('WSS95','p28'),('WSS97','p28'),('WSS100','p29'),('WSS102','p29'),('WSS109','p29'),('WSS111','p29'),('WSS118','p29'),('WSS122','p29'),('WSS137','p29'),('WSS141','p29'),('WSS145','p29'),('WSS150','p29'),('WSS166','p29'),('WSS182','p29'),('WSS187','p29'),('WSS189','p29'),('WSS190','p29'),('WSS198','p29'),('WSS200','p29'),('WSS28','p29'),('WSS29','p29'),('WSS5','p29'),('WSS51','p29'),('WSS55','p29'),('WSS60','p29'),('WSS63','p29'),('WSS72','p29'),('WSS83','p29'),('WSS103','p3'),('WSS11','p3'),('WSS111','p3'),('WSS115','p3'),('WSS117','p3'),('WSS123','p3'),('WSS126','p3'),('WSS129','p3'),('WSS140','p3'),('WSS15','p3'),('WSS154','p3'),('WSS158','p3'),('WSS160','p3'),('WSS179','p3'),('WSS189','p3'),('WSS19','p3'),('WSS191','p3'),('WSS192','p3'),('WSS21','p3'),('WSS37','p3'),('WSS43','p3'),('WSS45','p3'),('WSS49','p3'),('WSS5','p3'),('WSS50','p3'),('WSS55','p3'),('WSS57','p3'),('WSS91','p3'),('WSS107','p30'),('WSS109','p30'),('WSS132','p30'),('WSS134','p30'),('WSS135','p30'),('WSS143','p30'),('WSS150','p30'),('WSS151','p30'),('WSS166','p30'),('WSS178','p30'),('WSS179','p30'),('WSS181','p30'),('WSS189','p30'),('WSS198','p30'),('WSS2','p30'),('WSS3','p30'),('WSS33','p30'),('WSS34','p30'),('WSS36','p30'),('WSS42','p30'),('WSS54','p30'),('WSS55','p30'),('WSS76','p30'),('WSS8','p30'),('WSS90','p30'),('WSS101','p4'),('WSS137','p4'),('WSS15','p4'),('WSS155','p4'),('WSS163','p4'),('WSS165','p4'),('WSS169','p4'),('WSS172','p4'),('WSS173','p4'),('WSS174','p4'),('WSS23','p4'),('WSS24','p4'),('WSS27','p4'),('WSS33','p4'),('WSS39','p4'),('WSS4','p4'),('WSS48','p4'),('WSS49','p4'),('WSS56','p4'),('WSS60','p4'),('WSS77','p4'),('WSS83','p4'),('WSS87','p4'),('WSS89','p4'),('WSS94','p4'),('WSS97','p4'),('WSS101','p5'),('WSS114','p5'),('WSS115','p5'),('WSS117','p5'),('WSS122','p5'),('WSS132','p5'),('WSS145','p5'),('WSS146','p5'),('WSS149','p5'),('WSS153','p5'),('WSS158','p5'),('WSS167','p5'),('WSS174','p5'),('WSS176','p5'),('WSS178','p5'),('WSS18','p5'),('WSS181','p5'),('WSS184','p5'),('WSS24','p5'),('WSS3','p5'),('WSS34','p5'),('WSS35','p5'),('WSS49','p5'),('WSS53','p5'),('WSS86','p5'),('WSS92','p5'),('WSS94','p5'),('WSS106','p6'),('WSS117','p6'),('WSS130','p6'),('WSS140','p6'),('WSS144','p6'),('WSS152','p6'),('WSS154','p6'),('WSS159','p6'),('WSS161','p6'),('WSS168','p6'),('WSS175','p6'),('WSS176','p6'),('WSS180','p6'),('WSS186','p6'),('WSS29','p6'),('WSS40','p6'),('WSS44','p6'),('WSS49','p6'),('WSS54','p6'),('WSS7','p6'),('WSS74','p6'),('WSS9','p6'),('WSS91','p6'),('WSS93','p6'),('WSS103','p7'),('WSS109','p7'),('WSS118','p7'),('WSS123','p7'),('WSS128','p7'),('WSS131','p7'),('WSS133','p7'),('WSS156','p7'),('WSS162','p7'),('WSS165','p7'),('WSS170','p7'),('WSS180','p7'),('WSS186','p7'),('WSS195','p7'),('WSS20','p7'),('WSS200','p7'),('WSS22','p7'),('WSS31','p7'),('WSS46','p7'),('WSS65','p7'),('WSS69','p7'),('WSS75','p7'),('WSS78','p7'),('WSS79','p7'),('WSS81','p7'),('WSS96','p7'),('WSS10','p8'),('WSS112','p8'),('WSS119','p8'),('WSS13','p8'),('WSS140','p8'),('WSS144','p8'),('WSS193','p8'),('WSS194','p8'),('WSS196','p8'),('WSS20','p8'),('WSS34','p8'),('WSS35','p8'),('WSS37','p8'),('WSS47','p8'),('WSS50','p8'),('WSS55','p8'),('WSS63','p8'),('WSS68','p8'),('WSS70','p8'),('WSS73','p8'),('WSS78','p8'),('WSS79','p8'),('WSS8','p8'),('WSS81','p8'),('WSS104','p9'),('WSS105','p9'),('WSS113','p9'),('WSS116','p9'),('WSS127','p9'),('WSS137','p9'),('WSS139','p9'),('WSS143','p9'),('WSS150','p9'),('WSS157','p9'),('WSS163','p9'),('WSS164','p9'),('WSS17','p9'),('WSS173','p9'),('WSS187','p9'),('WSS27','p9'),('WSS29','p9'),('WSS52','p9'),('WSS58','p9'),('WSS61','p9'),('WSS62','p9'),('WSS64','p9'),('WSS66','p9'),('WSS71','p9'),('WSS76','p9'),('WSS87','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS97'),(1,2,'WSS15'),(1,3,'WSS25'),(2,1,'WSS80'),(2,2,'WSS77'),(3,1,'WSS102'),(3,2,'WSS13'),(3,2,'WSS200'),(4,1,'WSS51'),(4,2,'WSS79'),(5,1,'WSS50'),(5,2,'WSS65'),(6,1,'WSS161'),(6,2,'WSS189'),(7,1,'WSS171'),(7,2,'WSS145'),(8,1,'WSS105'),(8,2,'WSS179'),(8,3,'WSS172'),(9,1,'WSS49'),(10,1,'WSS74'),(10,2,'WSS190'),(11,1,'WSS84'),(11,2,'WSS102'),(12,1,'WSS68'),(12,2,'WSS126'),(13,1,'WSS156'),(13,2,'WSS100'),(14,1,'WSS13'),(14,2,'WSS90'),(15,1,'WSS136'),(15,2,'WSS186'),(16,1,'WSS178'),(16,2,'WSS20'),(17,1,'WSS13'),(17,2,'WSS88'),(17,3,'WSS108'),(18,1,'WSS97'),(18,2,'WSS185'),(19,1,'WSS150'),(19,2,'WSS73'),(20,1,'WSS104'),(20,2,'WSS85'),(21,1,'WSS94'),(21,2,'WSS123'),(22,1,'WSS103'),(22,2,'WSS20'),(22,3,'WSS13'),(23,1,'WSS28'),(23,2,'WSS185'),(24,1,'WSS98'),(24,2,'WSS186'),(25,1,'WSS104'),(25,2,'WSS139'),(26,1,'WSS79'),(26,2,'WSS172'),(27,1,'WSS13'),(27,2,'WSS81'),(28,1,'WSS192'),(28,2,'WSS27'),(29,1,'WSS132'),(29,2,'WSS80'),(30,1,'WSS100'),(30,1,'WSS105'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-30  7:54:18
