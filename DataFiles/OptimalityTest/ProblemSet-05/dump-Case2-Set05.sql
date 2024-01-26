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
INSERT INTO `initialgoalparameter` VALUES (2,'I','p1'),(3,'I','p1'),(4,'I','p1'),(10,'G','p1'),(11,'G','p1'),(13,'I','p1'),(14,'G','p1'),(19,'I','p1'),(20,'I','p1'),(23,'I','p1'),(24,'G','p1'),(3,'G','p10'),(7,'I','p10'),(8,'G','p10'),(11,'I','p10'),(14,'G','p10'),(17,'G','p10'),(20,'I','p10'),(24,'I','p10'),(25,'I','p10'),(29,'G','p10'),(1,'I','p11'),(2,'G','p11'),(6,'I','p11'),(15,'G','p11'),(16,'G','p11'),(18,'I','p11'),(20,'G','p11'),(26,'G','p11'),(30,'G','p11'),(7,'I','p12'),(10,'G','p12'),(12,'G','p12'),(13,'G','p12'),(16,'I','p12'),(22,'I','p12'),(27,'I','p12'),(28,'G','p12'),(3,'I','p13'),(15,'I','p13'),(16,'G','p13'),(18,'G','p13'),(26,'I','p13'),(28,'I','p13'),(30,'G','p13'),(4,'G','p14'),(10,'G','p14'),(11,'I','p14'),(13,'G','p14'),(23,'G','p14'),(25,'I','p14'),(26,'G','p14'),(6,'G','p15'),(7,'G','p15'),(8,'I','p15'),(17,'G','p15'),(20,'G','p15'),(25,'I','p15'),(28,'G','p15'),(5,'I','p16'),(7,'I','p16'),(8,'I','p16'),(12,'G','p16'),(13,'I','p16'),(14,'I','p16'),(18,'G','p16'),(23,'G','p16'),(25,'I','p16'),(29,'G','p16'),(7,'I','p17'),(9,'I','p17'),(16,'I','p17'),(18,'G','p17'),(20,'I','p17'),(21,'G','p17'),(22,'I','p17'),(28,'G','p17'),(10,'I','p18'),(12,'I','p18'),(14,'I','p18'),(17,'I','p18'),(21,'G','p18'),(24,'G','p18'),(26,'G','p18'),(28,'G','p18'),(29,'I','p18'),(30,'I','p18'),(1,'G','p19'),(2,'G','p19'),(5,'I','p19'),(7,'G','p19'),(8,'G','p19'),(10,'I','p19'),(11,'G','p19'),(14,'G','p19'),(20,'I','p19'),(23,'I','p19'),(25,'I','p19'),(27,'I','p19'),(30,'I','p19'),(3,'I','p2'),(6,'G','p2'),(9,'G','p2'),(10,'G','p2'),(17,'I','p2'),(21,'I','p2'),(24,'I','p2'),(25,'G','p2'),(2,'I','p20'),(4,'G','p20'),(5,'I','p20'),(9,'G','p20'),(13,'G','p20'),(14,'I','p20'),(15,'I','p20'),(27,'I','p20'),(29,'G','p20'),(3,'I','p21'),(5,'G','p21'),(15,'I','p21'),(20,'I','p21'),(22,'I','p21'),(23,'I','p21'),(28,'I','p21'),(5,'G','p22'),(6,'I','p22'),(7,'I','p22'),(9,'I','p22'),(12,'I','p22'),(13,'I','p22'),(14,'I','p22'),(15,'G','p22'),(16,'I','p22'),(19,'I','p22'),(21,'I','p22'),(26,'I','p22'),(27,'G','p22'),(30,'I','p22'),(1,'I','p23'),(4,'I','p23'),(9,'I','p23'),(11,'I','p23'),(13,'G','p23'),(15,'G','p23'),(18,'I','p23'),(19,'I','p23'),(1,'I','p24'),(2,'I','p24'),(6,'G','p24'),(9,'G','p24'),(10,'I','p24'),(11,'G','p24'),(12,'I','p24'),(17,'I','p24'),(18,'I','p24'),(19,'G','p24'),(23,'G','p24'),(27,'I','p24'),(28,'I','p24'),(3,'G','p25'),(5,'G','p25'),(6,'I','p25'),(8,'G','p25'),(9,'I','p25'),(14,'I','p25'),(15,'I','p25'),(17,'I','p25'),(19,'I','p25'),(21,'G','p25'),(24,'G','p25'),(25,'I','p25'),(27,'I','p25'),(29,'I','p25'),(4,'I','p26'),(8,'I','p26'),(9,'I','p26'),(12,'I','p26'),(14,'I','p26'),(15,'I','p26'),(19,'G','p26'),(29,'I','p26'),(30,'I','p26'),(1,'I','p27'),(4,'G','p27'),(5,'I','p27'),(7,'I','p27'),(11,'I','p27'),(12,'G','p27'),(16,'I','p27'),(19,'G','p27'),(20,'G','p27'),(21,'I','p27'),(23,'I','p27'),(4,'I','p28'),(6,'I','p28'),(11,'G','p28'),(15,'I','p28'),(16,'I','p28'),(17,'G','p28'),(18,'I','p28'),(19,'I','p28'),(21,'I','p28'),(22,'G','p28'),(24,'I','p28'),(26,'I','p28'),(29,'G','p28'),(30,'I','p28'),(1,'I','p29'),(2,'I','p29'),(4,'I','p29'),(5,'I','p29'),(6,'I','p29'),(9,'I','p29'),(10,'I','p29'),(22,'G','p29'),(23,'I','p29'),(25,'G','p29'),(30,'G','p29'),(1,'G','p3'),(2,'I','p3'),(6,'G','p3'),(10,'I','p3'),(12,'I','p3'),(19,'G','p3'),(21,'G','p3'),(22,'I','p3'),(27,'G','p3'),(28,'I','p3'),(1,'G','p30'),(2,'G','p30'),(6,'I','p30'),(10,'I','p30'),(12,'G','p30'),(16,'G','p30'),(18,'I','p30'),(23,'G','p30'),(26,'G','p30'),(28,'I','p30'),(3,'G','p4'),(4,'G','p4'),(8,'I','p4'),(13,'I','p4'),(14,'G','p4'),(16,'G','p4'),(20,'I','p4'),(21,'I','p4'),(22,'I','p4'),(24,'G','p4'),(5,'I','p5'),(8,'I','p5'),(9,'G','p5'),(11,'I','p5'),(12,'I','p5'),(18,'G','p5'),(20,'G','p5'),(25,'G','p5'),(27,'G','p5'),(28,'I','p5'),(1,'G','p6'),(2,'G','p6'),(3,'I','p6'),(8,'I','p6'),(15,'G','p6'),(17,'I','p6'),(18,'I','p6'),(24,'I','p6'),(26,'I','p6'),(29,'I','p6'),(3,'I','p7'),(4,'I','p7'),(7,'G','p7'),(11,'I','p7'),(13,'I','p7'),(17,'I','p7'),(22,'G','p7'),(23,'I','p7'),(29,'I','p7'),(1,'I','p8'),(2,'I','p8'),(3,'G','p8'),(5,'G','p8'),(7,'G','p8'),(8,'G','p8'),(13,'I','p8'),(22,'G','p8'),(24,'I','p8'),(26,'I','p8'),(27,'G','p8'),(29,'I','p8'),(30,'I','p8'),(16,'I','p9'),(17,'G','p9'),(19,'I','p9'),(21,'I','p9'),(22,'I','p9'),(24,'I','p9'),(25,'G','p9'),(26,'I','p9'),(27,'I','p9'),(30,'G','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS114','p1'),('WSS128','p1'),('WSS195','p1'),('WSS206','p1'),('WSS239','p1'),('WSS253','p1'),('WSS290','p1'),('WSS293','p1'),('WSS296','p1'),('WSS30','p1'),('WSS305','p1'),('WSS324','p1'),('WSS329','p1'),('WSS345','p1'),('WSS347','p1'),('WSS356','p1'),('WSS36','p1'),('WSS362','p1'),('WSS366','p1'),('WSS368','p1'),('WSS386','p1'),('WSS392','p1'),('WSS52','p1'),('WSS6','p1'),('WSS105','p10'),('WSS137','p10'),('WSS141','p10'),('WSS181','p10'),('WSS203','p10'),('WSS205','p10'),('WSS246','p10'),('WSS247','p10'),('WSS251','p10'),('WSS263','p10'),('WSS273','p10'),('WSS295','p10'),('WSS311','p10'),('WSS314','p10'),('WSS50','p10'),('WSS55','p10'),('WSS74','p10'),('WSS82','p10'),('WSS93','p10'),('WSS107','p11'),('WSS110','p11'),('WSS122','p11'),('WSS130','p11'),('WSS159','p11'),('WSS165','p11'),('WSS17','p11'),('WSS210','p11'),('WSS24','p11'),('WSS26','p11'),('WSS28','p11'),('WSS288','p11'),('WSS318','p11'),('WSS333','p11'),('WSS336','p11'),('WSS341','p11'),('WSS349','p11'),('WSS355','p11'),('WSS359','p11'),('WSS384','p11'),('WSS39','p11'),('WSS125','p12'),('WSS153','p12'),('WSS166','p12'),('WSS171','p12'),('WSS214','p12'),('WSS241','p12'),('WSS263','p12'),('WSS269','p12'),('WSS270','p12'),('WSS285','p12'),('WSS312','p12'),('WSS319','p12'),('WSS342','p12'),('WSS35','p12'),('WSS358','p12'),('WSS359','p12'),('WSS36','p12'),('WSS376','p12'),('WSS41','p12'),('WSS79','p12'),('WSS83','p12'),('WSS84','p12'),('WSS95','p12'),('WSS96','p12'),('WSS102','p13'),('WSS11','p13'),('WSS13','p13'),('WSS132','p13'),('WSS14','p13'),('WSS162','p13'),('WSS19','p13'),('WSS200','p13'),('WSS220','p13'),('WSS23','p13'),('WSS234','p13'),('WSS238','p13'),('WSS259','p13'),('WSS272','p13'),('WSS277','p13'),('WSS303','p13'),('WSS381','p13'),('WSS383','p13'),('WSS391','p13'),('WSS397','p13'),('WSS68','p13'),('WSS80','p13'),('WSS113','p14'),('WSS125','p14'),('WSS151','p14'),('WSS156','p14'),('WSS163','p14'),('WSS17','p14'),('WSS182','p14'),('WSS183','p14'),('WSS185','p14'),('WSS193','p14'),('WSS196','p14'),('WSS211','p14'),('WSS212','p14'),('WSS222','p14'),('WSS226','p14'),('WSS232','p14'),('WSS240','p14'),('WSS245','p14'),('WSS25','p14'),('WSS254','p14'),('WSS256','p14'),('WSS271','p14'),('WSS277','p14'),('WSS286','p14'),('WSS291','p14'),('WSS294','p14'),('WSS295','p14'),('WSS301','p14'),('WSS304','p14'),('WSS324','p14'),('WSS370','p14'),('WSS38','p14'),('WSS48','p14'),('WSS58','p14'),('WSS60','p14'),('WSS71','p14'),('WSS89','p14'),('WSS95','p14'),('WSS11','p15'),('WSS119','p15'),('WSS123','p15'),('WSS126','p15'),('WSS127','p15'),('WSS175','p15'),('WSS181','p15'),('WSS182','p15'),('WSS184','p15'),('WSS188','p15'),('WSS2','p15'),('WSS213','p15'),('WSS219','p15'),('WSS227','p15'),('WSS236','p15'),('WSS282','p15'),('WSS365','p15'),('WSS389','p15'),('WSS392','p15'),('WSS45','p15'),('WSS65','p15'),('WSS72','p15'),('WSS73','p15'),('WSS81','p15'),('WSS92','p15'),('WSS118','p16'),('WSS139','p16'),('WSS15','p16'),('WSS167','p16'),('WSS169','p16'),('WSS188','p16'),('WSS191','p16'),('WSS242','p16'),('WSS255','p16'),('WSS26','p16'),('WSS28','p16'),('WSS318','p16'),('WSS332','p16'),('WSS337','p16'),('WSS353','p16'),('WSS391','p16'),('WSS43','p16'),('WSS82','p16'),('WSS102','p17'),('WSS103','p17'),('WSS110','p17'),('WSS122','p17'),('WSS134','p17'),('WSS147','p17'),('WSS152','p17'),('WSS207','p17'),('WSS221','p17'),('WSS228','p17'),('WSS250','p17'),('WSS284','p17'),('WSS306','p17'),('WSS310','p17'),('WSS47','p17'),('WSS53','p17'),('WSS56','p17'),('WSS59','p17'),('WSS81','p17'),('WSS93','p17'),('WSS97','p17'),('WSS101','p18'),('WSS129','p18'),('WSS152','p18'),('WSS158','p18'),('WSS174','p18'),('WSS179','p18'),('WSS196','p18'),('WSS233','p18'),('WSS235','p18'),('WSS244','p18'),('WSS268','p18'),('WSS289','p18'),('WSS292','p18'),('WSS312','p18'),('WSS313','p18'),('WSS315','p18'),('WSS317','p18'),('WSS344','p18'),('WSS346','p18'),('WSS351','p18'),('WSS399','p18'),('WSS4','p18'),('WSS43','p18'),('WSS9','p18'),('WSS121','p19'),('WSS136','p19'),('WSS143','p19'),('WSS180','p19'),('WSS218','p19'),('WSS229','p19'),('WSS230','p19'),('WSS243','p19'),('WSS248','p19'),('WSS250','p19'),('WSS252','p19'),('WSS254','p19'),('WSS280','p19'),('WSS314','p19'),('WSS33','p19'),('WSS338','p19'),('WSS342','p19'),('WSS355','p19'),('WSS379','p19'),('WSS385','p19'),('WSS387','p19'),('WSS397','p19'),('WSS74','p19'),('WSS75','p19'),('WSS78','p19'),('WSS8','p19'),('WSS97','p19'),('WSS103','p2'),('WSS109','p2'),('WSS111','p2'),('WSS112','p2'),('WSS154','p2'),('WSS167','p2'),('WSS176','p2'),('WSS183','p2'),('WSS185','p2'),('WSS187','p2'),('WSS202','p2'),('WSS225','p2'),('WSS249','p2'),('WSS257','p2'),('WSS266','p2'),('WSS27','p2'),('WSS316','p2'),('WSS323','p2'),('WSS343','p2'),('WSS372','p2'),('WSS385','p2'),('WSS394','p2'),('WSS399','p2'),('WSS62','p2'),('WSS77','p2'),('WSS98','p2'),('WSS154','p20'),('WSS168','p20'),('WSS177','p20'),('WSS199','p20'),('WSS208','p20'),('WSS217','p20'),('WSS234','p20'),('WSS257','p20'),('WSS297','p20'),('WSS299','p20'),('WSS304','p20'),('WSS328','p20'),('WSS335','p20'),('WSS348','p20'),('WSS382','p20'),('WSS395','p20'),('WSS61','p20'),('WSS73','p20'),('WSS87','p20'),('WSS94','p20'),('WSS138','p21'),('WSS141','p21'),('WSS143','p21'),('WSS153','p21'),('WSS155','p21'),('WSS170','p21'),('WSS184','p21'),('WSS19','p21'),('WSS200','p21'),('WSS238','p21'),('WSS262','p21'),('WSS264','p21'),('WSS278','p21'),('WSS285','p21'),('WSS302','p21'),('WSS322','p21'),('WSS361','p21'),('WSS380','p21'),('WSS46','p21'),('WSS50','p21'),('WSS56','p21'),('WSS63','p21'),('WSS13','p22'),('WSS133','p22'),('WSS137','p22'),('WSS14','p22'),('WSS142','p22'),('WSS149','p22'),('WSS178','p22'),('WSS197','p22'),('WSS198','p22'),('WSS206','p22'),('WSS208','p22'),('WSS214','p22'),('WSS255','p22'),('WSS258','p22'),('WSS275','p22'),('WSS309','p22'),('WSS31','p22'),('WSS321','p22'),('WSS33','p22'),('WSS332','p22'),('WSS34','p22'),('WSS345','p22'),('WSS350','p22'),('WSS353','p22'),('WSS38','p22'),('WSS39','p22'),('WSS4','p22'),('WSS400','p22'),('WSS51','p22'),('WSS57','p22'),('WSS58','p22'),('WSS85','p22'),('WSS87','p22'),('WSS116','p23'),('WSS117','p23'),('WSS118','p23'),('WSS131','p23'),('WSS144','p23'),('WSS148','p23'),('WSS150','p23'),('WSS189','p23'),('WSS20','p23'),('WSS212','p23'),('WSS217','p23'),('WSS22','p23'),('WSS246','p23'),('WSS260','p23'),('WSS279','p23'),('WSS283','p23'),('WSS301','p23'),('WSS308','p23'),('WSS331','p23'),('WSS334','p23'),('WSS339','p23'),('WSS42','p23'),('WSS6','p23'),('WSS63','p23'),('WSS78','p23'),('WSS90','p23'),('WSS91','p23'),('WSS116','p24'),('WSS12','p24'),('WSS123','p24'),('WSS142','p24'),('WSS15','p24'),('WSS16','p24'),('WSS192','p24'),('WSS202','p24'),('WSS210','p24'),('WSS216','p24'),('WSS221','p24'),('WSS229','p24'),('WSS261','p24'),('WSS267','p24'),('WSS270','p24'),('WSS278','p24'),('WSS284','p24'),('WSS298','p24'),('WSS337','p24'),('WSS341','p24'),('WSS351','p24'),('WSS368','p24'),('WSS37','p24'),('WSS380','p24'),('WSS60','p24'),('WSS84','p24'),('WSS85','p24'),('WSS86','p24'),('WSS107','p25'),('WSS108','p25'),('WSS133','p25'),('WSS145','p25'),('WSS148','p25'),('WSS164','p25'),('WSS170','p25'),('WSS195','p25'),('WSS203','p25'),('WSS209','p25'),('WSS22','p25'),('WSS23','p25'),('WSS251','p25'),('WSS267','p25'),('WSS289','p25'),('WSS307','p25'),('WSS331','p25'),('WSS336','p25'),('WSS346','p25'),('WSS356','p25'),('WSS357','p25'),('WSS364','p25'),('WSS369','p25'),('WSS378','p25'),('WSS40','p25'),('WSS47','p25'),('WSS54','p25'),('WSS1','p26'),('WSS104','p26'),('WSS105','p26'),('WSS106','p26'),('WSS124','p26'),('WSS190','p26'),('WSS222','p26'),('WSS224','p26'),('WSS228','p26'),('WSS231','p26'),('WSS241','p26'),('WSS249','p26'),('WSS276','p26'),('WSS279','p26'),('WSS281','p26'),('WSS29','p26'),('WSS294','p26'),('WSS320','p26'),('WSS321','p26'),('WSS322','p26'),('WSS330','p26'),('WSS333','p26'),('WSS35','p26'),('WSS361','p26'),('WSS370','p26'),('WSS396','p26'),('WSS45','p26'),('WSS67','p26'),('WSS70','p26'),('WSS72','p26'),('WSS76','p26'),('WSS77','p26'),('WSS86','p26'),('WSS91','p26'),('WSS99','p26'),('WSS10','p27'),('WSS111','p27'),('WSS134','p27'),('WSS147','p27'),('WSS157','p27'),('WSS161','p27'),('WSS162','p27'),('WSS165','p27'),('WSS186','p27'),('WSS187','p27'),('WSS209','p27'),('WSS215','p27'),('WSS231','p27'),('WSS235','p27'),('WSS245','p27'),('WSS265','p27'),('WSS298','p27'),('WSS299','p27'),('WSS31','p27'),('WSS319','p27'),('WSS326','p27'),('WSS363','p27'),('WSS369','p27'),('WSS373','p27'),('WSS378','p27'),('WSS390','p27'),('WSS400','p27'),('WSS42','p27'),('WSS59','p27'),('WSS100','p28'),('WSS115','p28'),('WSS124','p28'),('WSS132','p28'),('WSS135','p28'),('WSS145','p28'),('WSS146','p28'),('WSS177','p28'),('WSS189','p28'),('WSS225','p28'),('WSS237','p28'),('WSS239','p28'),('WSS242','p28'),('WSS25','p28'),('WSS252','p28'),('WSS261','p28'),('WSS272','p28'),('WSS274','p28'),('WSS300','p28'),('WSS306','p28'),('WSS307','p28'),('WSS325','p28'),('WSS362','p28'),('WSS377','p28'),('WSS383','p28'),('WSS386','p28'),('WSS398','p28'),('WSS44','p28'),('WSS53','p28'),('WSS7','p28'),('WSS71','p28'),('WSS115','p29'),('WSS126','p29'),('WSS138','p29'),('WSS140','p29'),('WSS163','p29'),('WSS164','p29'),('WSS18','p29'),('WSS201','p29'),('WSS204','p29'),('WSS223','p29'),('WSS237','p29'),('WSS243','p29'),('WSS266','p29'),('WSS281','p29'),('WSS302','p29'),('WSS350','p29'),('WSS352','p29'),('WSS366','p29'),('WSS374','p29'),('WSS382','p29'),('WSS49','p29'),('WSS9','p29'),('WSS94','p29'),('WSS104','p3'),('WSS106','p3'),('WSS130','p3'),('WSS150','p3'),('WSS157','p3'),('WSS166','p3'),('WSS205','p3'),('WSS211','p3'),('WSS216','p3'),('WSS218','p3'),('WSS224','p3'),('WSS227','p3'),('WSS24','p3'),('WSS269','p3'),('WSS274','p3'),('WSS282','p3'),('WSS309','p3'),('WSS320','p3'),('WSS340','p3'),('WSS357','p3'),('WSS372','p3'),('WSS375','p3'),('WSS376','p3'),('WSS387','p3'),('WSS393','p3'),('WSS5','p3'),('WSS52','p3'),('WSS66','p3'),('WSS79','p3'),('WSS90','p3'),('WSS1','p30'),('WSS101','p30'),('WSS128','p30'),('WSS136','p30'),('WSS149','p30'),('WSS160','p30'),('WSS172','p30'),('WSS192','p30'),('WSS233','p30'),('WSS30','p30'),('WSS308','p30'),('WSS326','p30'),('WSS327','p30'),('WSS349','p30'),('WSS37','p30'),('WSS371','p30'),('WSS377','p30'),('WSS379','p30'),('WSS394','p30'),('WSS41','p30'),('WSS61','p30'),('WSS76','p30'),('WSS98','p30'),('WSS100','p4'),('WSS109','p4'),('WSS113','p4'),('WSS114','p4'),('WSS175','p4'),('WSS190','p4'),('WSS191','p4'),('WSS199','p4'),('WSS21','p4'),('WSS223','p4'),('WSS226','p4'),('WSS247','p4'),('WSS253','p4'),('WSS256','p4'),('WSS260','p4'),('WSS264','p4'),('WSS276','p4'),('WSS286','p4'),('WSS287','p4'),('WSS296','p4'),('WSS311','p4'),('WSS327','p4'),('WSS335','p4'),('WSS34','p4'),('WSS347','p4'),('WSS363','p4'),('WSS393','p4'),('WSS5','p4'),('WSS62','p4'),('WSS64','p4'),('WSS7','p4'),('WSS70','p4'),('WSS75','p4'),('WSS119','p5'),('WSS127','p5'),('WSS129','p5'),('WSS156','p5'),('WSS160','p5'),('WSS173','p5'),('WSS197','p5'),('WSS21','p5'),('WSS230','p5'),('WSS244','p5'),('WSS248','p5'),('WSS27','p5'),('WSS273','p5'),('WSS283','p5'),('WSS29','p5'),('WSS292','p5'),('WSS297','p5'),('WSS316','p5'),('WSS323','p5'),('WSS325','p5'),('WSS354','p5'),('WSS360','p5'),('WSS367','p5'),('WSS373','p5'),('WSS381','p5'),('WSS40','p5'),('WSS57','p5'),('WSS66','p5'),('WSS108','p6'),('WSS120','p6'),('WSS131','p6'),('WSS135','p6'),('WSS151','p6'),('WSS158','p6'),('WSS159','p6'),('WSS16','p6'),('WSS168','p6'),('WSS173','p6'),('WSS174','p6'),('WSS178','p6'),('WSS18','p6'),('WSS180','p6'),('WSS186','p6'),('WSS20','p6'),('WSS219','p6'),('WSS259','p6'),('WSS262','p6'),('WSS268','p6'),('WSS280','p6'),('WSS291','p6'),('WSS3','p6'),('WSS334','p6'),('WSS365','p6'),('WSS388','p6'),('WSS389','p6'),('WSS395','p6'),('WSS396','p6'),('WSS46','p6'),('WSS49','p6'),('WSS55','p6'),('WSS65','p6'),('WSS88','p6'),('WSS96','p6'),('WSS99','p6'),('WSS161','p7'),('WSS169','p7'),('WSS193','p7'),('WSS194','p7'),('WSS2','p7'),('WSS207','p7'),('WSS213','p7'),('WSS215','p7'),('WSS240','p7'),('WSS287','p7'),('WSS305','p7'),('WSS310','p7'),('WSS313','p7'),('WSS317','p7'),('WSS32','p7'),('WSS328','p7'),('WSS330','p7'),('WSS338','p7'),('WSS339','p7'),('WSS343','p7'),('WSS352','p7'),('WSS360','p7'),('WSS364','p7'),('WSS371','p7'),('WSS390','p7'),('WSS44','p7'),('WSS51','p7'),('WSS67','p7'),('WSS69','p7'),('WSS88','p7'),('WSS139','p8'),('WSS144','p8'),('WSS146','p8'),('WSS155','p8'),('WSS198','p8'),('WSS204','p8'),('WSS258','p8'),('WSS265','p8'),('WSS275','p8'),('WSS300','p8'),('WSS303','p8'),('WSS344','p8'),('WSS348','p8'),('WSS354','p8'),('WSS367','p8'),('WSS384','p8'),('WSS388','p8'),('WSS54','p8'),('WSS69','p8'),('WSS83','p8'),('WSS89','p8'),('WSS92','p8'),('WSS10','p9'),('WSS112','p9'),('WSS117','p9'),('WSS12','p9'),('WSS121','p9'),('WSS179','p9'),('WSS220','p9'),('WSS236','p9'),('WSS271','p9'),('WSS290','p9'),('WSS3','p9'),('WSS315','p9'),('WSS340','p9'),('WSS374','p9'),('WSS375','p9'),('WSS398','p9'),('WSS68','p9'),('WSS8','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS119','p1'),('WSS121','p1'),('WSS123','p1'),('WSS128','p1'),('WSS13','p1'),('WSS144','p1'),('WSS152','p1'),('WSS155','p1'),('WSS158','p1'),('WSS159','p1'),('WSS162','p1'),('WSS165','p1'),('WSS167','p1'),('WSS170','p1'),('WSS181','p1'),('WSS189','p1'),('WSS196','p1'),('WSS199','p1'),('WSS204','p1'),('WSS21','p1'),('WSS211','p1'),('WSS232','p1'),('WSS239','p1'),('WSS247','p1'),('WSS261','p1'),('WSS263','p1'),('WSS270','p1'),('WSS272','p1'),('WSS287','p1'),('WSS296','p1'),('WSS297','p1'),('WSS306','p1'),('WSS309','p1'),('WSS31','p1'),('WSS314','p1'),('WSS326','p1'),('WSS353','p1'),('WSS354','p1'),('WSS355','p1'),('WSS366','p1'),('WSS374','p1'),('WSS375','p1'),('WSS380','p1'),('WSS387','p1'),('WSS390','p1'),('WSS46','p1'),('WSS53','p1'),('WSS60','p1'),('WSS66','p1'),('WSS73','p1'),('WSS78','p1'),('WSS82','p1'),('WSS1','p10'),('WSS117','p10'),('WSS128','p10'),('WSS129','p10'),('WSS14','p10'),('WSS155','p10'),('WSS16','p10'),('WSS160','p10'),('WSS164','p10'),('WSS174','p10'),('WSS183','p10'),('WSS202','p10'),('WSS203','p10'),('WSS209','p10'),('WSS21','p10'),('WSS223','p10'),('WSS238','p10'),('WSS248','p10'),('WSS255','p10'),('WSS27','p10'),('WSS273','p10'),('WSS274','p10'),('WSS275','p10'),('WSS28','p10'),('WSS288','p10'),('WSS294','p10'),('WSS300','p10'),('WSS323','p10'),('WSS328','p10'),('WSS33','p10'),('WSS332','p10'),('WSS346','p10'),('WSS35','p10'),('WSS361','p10'),('WSS368','p10'),('WSS37','p10'),('WSS371','p10'),('WSS382','p10'),('WSS387','p10'),('WSS397','p10'),('WSS5','p10'),('WSS51','p10'),('WSS52','p10'),('WSS54','p10'),('WSS74','p10'),('WSS87','p10'),('WSS90','p10'),('WSS94','p10'),('WSS125','p11'),('WSS126','p11'),('WSS127','p11'),('WSS137','p11'),('WSS142','p11'),('WSS154','p11'),('WSS157','p11'),('WSS164','p11'),('WSS17','p11'),('WSS185','p11'),('WSS191','p11'),('WSS199','p11'),('WSS2','p11'),('WSS201','p11'),('WSS214','p11'),('WSS22','p11'),('WSS230','p11'),('WSS24','p11'),('WSS240','p11'),('WSS243','p11'),('WSS245','p11'),('WSS247','p11'),('WSS249','p11'),('WSS253','p11'),('WSS258','p11'),('WSS268','p11'),('WSS270','p11'),('WSS283','p11'),('WSS31','p11'),('WSS314','p11'),('WSS317','p11'),('WSS319','p11'),('WSS327','p11'),('WSS342','p11'),('WSS345','p11'),('WSS35','p11'),('WSS354','p11'),('WSS361','p11'),('WSS367','p11'),('WSS372','p11'),('WSS43','p11'),('WSS44','p11'),('WSS54','p11'),('WSS6','p11'),('WSS64','p11'),('WSS71','p11'),('WSS75','p11'),('WSS88','p11'),('WSS89','p11'),('WSS99','p11'),('WSS115','p12'),('WSS131','p12'),('WSS132','p12'),('WSS148','p12'),('WSS149','p12'),('WSS162','p12'),('WSS172','p12'),('WSS173','p12'),('WSS176','p12'),('WSS197','p12'),('WSS206','p12'),('WSS208','p12'),('WSS210','p12'),('WSS23','p12'),('WSS253','p12'),('WSS263','p12'),('WSS295','p12'),('WSS297','p12'),('WSS318','p12'),('WSS320','p12'),('WSS331','p12'),('WSS336','p12'),('WSS35','p12'),('WSS357','p12'),('WSS358','p12'),('WSS360','p12'),('WSS369','p12'),('WSS379','p12'),('WSS388','p12'),('WSS398','p12'),('WSS45','p12'),('WSS53','p12'),('WSS57','p12'),('WSS64','p12'),('WSS68','p12'),('WSS78','p12'),('WSS91','p12'),('WSS97','p12'),('WSS100','p13'),('WSS102','p13'),('WSS109','p13'),('WSS110','p13'),('WSS111','p13'),('WSS115','p13'),('WSS117','p13'),('WSS119','p13'),('WSS12','p13'),('WSS123','p13'),('WSS124','p13'),('WSS126','p13'),('WSS127','p13'),('WSS13','p13'),('WSS132','p13'),('WSS139','p13'),('WSS142','p13'),('WSS143','p13'),('WSS156','p13'),('WSS159','p13'),('WSS164','p13'),('WSS165','p13'),('WSS173','p13'),('WSS177','p13'),('WSS18','p13'),('WSS186','p13'),('WSS196','p13'),('WSS199','p13'),('WSS202','p13'),('WSS217','p13'),('WSS222','p13'),('WSS234','p13'),('WSS247','p13'),('WSS248','p13'),('WSS269','p13'),('WSS279','p13'),('WSS29','p13'),('WSS30','p13'),('WSS300','p13'),('WSS304','p13'),('WSS309','p13'),('WSS317','p13'),('WSS338','p13'),('WSS350','p13'),('WSS366','p13'),('WSS368','p13'),('WSS372','p13'),('WSS374','p13'),('WSS375','p13'),('WSS377','p13'),('WSS390','p13'),('WSS45','p13'),('WSS55','p13'),('WSS68','p13'),('WSS69','p13'),('WSS70','p13'),('WSS73','p13'),('WSS81','p13'),('WSS99','p13'),('WSS10','p14'),('WSS100','p14'),('WSS104','p14'),('WSS108','p14'),('WSS112','p14'),('WSS113','p14'),('WSS116','p14'),('WSS122','p14'),('WSS145','p14'),('WSS158','p14'),('WSS172','p14'),('WSS178','p14'),('WSS182','p14'),('WSS187','p14'),('WSS188','p14'),('WSS204','p14'),('WSS211','p14'),('WSS219','p14'),('WSS231','p14'),('WSS246','p14'),('WSS252','p14'),('WSS260','p14'),('WSS261','p14'),('WSS263','p14'),('WSS277','p14'),('WSS284','p14'),('WSS289','p14'),('WSS293','p14'),('WSS295','p14'),('WSS307','p14'),('WSS310','p14'),('WSS315','p14'),('WSS317','p14'),('WSS32','p14'),('WSS347','p14'),('WSS352','p14'),('WSS362','p14'),('WSS374','p14'),('WSS375','p14'),('WSS379','p14'),('WSS388','p14'),('WSS393','p14'),('WSS44','p14'),('WSS56','p14'),('WSS61','p14'),('WSS68','p14'),('WSS69','p14'),('WSS75','p14'),('WSS80','p14'),('WSS82','p14'),('WSS84','p14'),('WSS86','p14'),('WSS87','p14'),('WSS9','p14'),('WSS97','p14'),('WSS103','p15'),('WSS106','p15'),('WSS119','p15'),('WSS120','p15'),('WSS136','p15'),('WSS150','p15'),('WSS151','p15'),('WSS157','p15'),('WSS175','p15'),('WSS179','p15'),('WSS180','p15'),('WSS183','p15'),('WSS188','p15'),('WSS212','p15'),('WSS219','p15'),('WSS224','p15'),('WSS239','p15'),('WSS257','p15'),('WSS258','p15'),('WSS262','p15'),('WSS270','p15'),('WSS271','p15'),('WSS272','p15'),('WSS284','p15'),('WSS298','p15'),('WSS305','p15'),('WSS313','p15'),('WSS316','p15'),('WSS321','p15'),('WSS324','p15'),('WSS326','p15'),('WSS335','p15'),('WSS337','p15'),('WSS350','p15'),('WSS355','p15'),('WSS361','p15'),('WSS367','p15'),('WSS374','p15'),('WSS381','p15'),('WSS394','p15'),('WSS40','p15'),('WSS47','p15'),('WSS83','p15'),('WSS85','p15'),('WSS96','p15'),('WSS99','p15'),('WSS1','p16'),('WSS105','p16'),('WSS106','p16'),('WSS114','p16'),('WSS117','p16'),('WSS120','p16'),('WSS122','p16'),('WSS133','p16'),('WSS135','p16'),('WSS137','p16'),('WSS138','p16'),('WSS15','p16'),('WSS151','p16'),('WSS161','p16'),('WSS163','p16'),('WSS165','p16'),('WSS171','p16'),('WSS186','p16'),('WSS19','p16'),('WSS190','p16'),('WSS198','p16'),('WSS20','p16'),('WSS200','p16'),('WSS254','p16'),('WSS255','p16'),('WSS26','p16'),('WSS28','p16'),('WSS294','p16'),('WSS3','p16'),('WSS302','p16'),('WSS307','p16'),('WSS308','p16'),('WSS319','p16'),('WSS322','p16'),('WSS330','p16'),('WSS337','p16'),('WSS343','p16'),('WSS37','p16'),('WSS376','p16'),('WSS38','p16'),('WSS382','p16'),('WSS383','p16'),('WSS393','p16'),('WSS45','p16'),('WSS47','p16'),('WSS56','p16'),('WSS59','p16'),('WSS72','p16'),('WSS79','p16'),('WSS87','p16'),('WSS89','p16'),('WSS9','p16'),('WSS94','p16'),('WSS96','p16'),('WSS109','p17'),('WSS11','p17'),('WSS115','p17'),('WSS124','p17'),('WSS125','p17'),('WSS147','p17'),('WSS148','p17'),('WSS150','p17'),('WSS16','p17'),('WSS161','p17'),('WSS170','p17'),('WSS172','p17'),('WSS175','p17'),('WSS18','p17'),('WSS181','p17'),('WSS183','p17'),('WSS196','p17'),('WSS209','p17'),('WSS213','p17'),('WSS215','p17'),('WSS229','p17'),('WSS231','p17'),('WSS233','p17'),('WSS240','p17'),('WSS244','p17'),('WSS249','p17'),('WSS269','p17'),('WSS272','p17'),('WSS276','p17'),('WSS277','p17'),('WSS281','p17'),('WSS283','p17'),('WSS285','p17'),('WSS287','p17'),('WSS288','p17'),('WSS293','p17'),('WSS309','p17'),('WSS322','p17'),('WSS330','p17'),('WSS336','p17'),('WSS349','p17'),('WSS373','p17'),('WSS379','p17'),('WSS381','p17'),('WSS391','p17'),('WSS399','p17'),('WSS400','p17'),('WSS41','p17'),('WSS45','p17'),('WSS86','p17'),('WSS101','p18'),('WSS112','p18'),('WSS127','p18'),('WSS132','p18'),('WSS142','p18'),('WSS155','p18'),('WSS166','p18'),('WSS195','p18'),('WSS205','p18'),('WSS207','p18'),('WSS21','p18'),('WSS222','p18'),('WSS224','p18'),('WSS226','p18'),('WSS230','p18'),('WSS235','p18'),('WSS24','p18'),('WSS25','p18'),('WSS259','p18'),('WSS266','p18'),('WSS268','p18'),('WSS269','p18'),('WSS271','p18'),('WSS283','p18'),('WSS289','p18'),('WSS299','p18'),('WSS301','p18'),('WSS304','p18'),('WSS311','p18'),('WSS312','p18'),('WSS315','p18'),('WSS343','p18'),('WSS346','p18'),('WSS347','p18'),('WSS357','p18'),('WSS37','p18'),('WSS371','p18'),('WSS382','p18'),('WSS389','p18'),('WSS39','p18'),('WSS390','p18'),('WSS42','p18'),('WSS49','p18'),('WSS56','p18'),('WSS74','p18'),('WSS97','p18'),('WSS101','p19'),('WSS102','p19'),('WSS104','p19'),('WSS109','p19'),('WSS121','p19'),('WSS122','p19'),('WSS129','p19'),('WSS130','p19'),('WSS140','p19'),('WSS142','p19'),('WSS144','p19'),('WSS149','p19'),('WSS156','p19'),('WSS157','p19'),('WSS159','p19'),('WSS177','p19'),('WSS182','p19'),('WSS193','p19'),('WSS195','p19'),('WSS197','p19'),('WSS204','p19'),('WSS206','p19'),('WSS220','p19'),('WSS223','p19'),('WSS225','p19'),('WSS229','p19'),('WSS233','p19'),('WSS237','p19'),('WSS238','p19'),('WSS241','p19'),('WSS249','p19'),('WSS256','p19'),('WSS260','p19'),('WSS265','p19'),('WSS271','p19'),('WSS274','p19'),('WSS276','p19'),('WSS278','p19'),('WSS285','p19'),('WSS286','p19'),('WSS308','p19'),('WSS324','p19'),('WSS328','p19'),('WSS334','p19'),('WSS351','p19'),('WSS356','p19'),('WSS358','p19'),('WSS360','p19'),('WSS377','p19'),('WSS384','p19'),('WSS387','p19'),('WSS43','p19'),('WSS55','p19'),('WSS66','p19'),('WSS67','p19'),('WSS77','p19'),('WSS86','p19'),('WSS9','p19'),('WSS107','p2'),('WSS110','p2'),('WSS120','p2'),('WSS125','p2'),('WSS126','p2'),('WSS133','p2'),('WSS139','p2'),('WSS146','p2'),('WSS152','p2'),('WSS155','p2'),('WSS167','p2'),('WSS169','p2'),('WSS173','p2'),('WSS184','p2'),('WSS187','p2'),('WSS190','p2'),('WSS192','p2'),('WSS193','p2'),('WSS194','p2'),('WSS204','p2'),('WSS21','p2'),('WSS216','p2'),('WSS220','p2'),('WSS225','p2'),('WSS228','p2'),('WSS243','p2'),('WSS251','p2'),('WSS271','p2'),('WSS273','p2'),('WSS282','p2'),('WSS300','p2'),('WSS303','p2'),('WSS310','p2'),('WSS317','p2'),('WSS320','p2'),('WSS324','p2'),('WSS326','p2'),('WSS339','p2'),('WSS344','p2'),('WSS348','p2'),('WSS35','p2'),('WSS353','p2'),('WSS359','p2'),('WSS362','p2'),('WSS371','p2'),('WSS372','p2'),('WSS378','p2'),('WSS383','p2'),('WSS384','p2'),('WSS397','p2'),('WSS40','p2'),('WSS400','p2'),('WSS42','p2'),('WSS61','p2'),('WSS64','p2'),('WSS66','p2'),('WSS80','p2'),('WSS107','p20'),('WSS130','p20'),('WSS133','p20'),('WSS15','p20'),('WSS151','p20'),('WSS152','p20'),('WSS153','p20'),('WSS168','p20'),('WSS169','p20'),('WSS19','p20'),('WSS192','p20'),('WSS193','p20'),('WSS231','p20'),('WSS238','p20'),('WSS245','p20'),('WSS247','p20'),('WSS26','p20'),('WSS265','p20'),('WSS266','p20'),('WSS275','p20'),('WSS285','p20'),('WSS292','p20'),('WSS297','p20'),('WSS3','p20'),('WSS305','p20'),('WSS306','p20'),('WSS333','p20'),('WSS336','p20'),('WSS339','p20'),('WSS340','p20'),('WSS349','p20'),('WSS353','p20'),('WSS364','p20'),('WSS378','p20'),('WSS380','p20'),('WSS383','p20'),('WSS395','p20'),('WSS49','p20'),('WSS59','p20'),('WSS62','p20'),('WSS76','p20'),('WSS79','p20'),('WSS82','p20'),('WSS98','p20'),('WSS103','p21'),('WSS106','p21'),('WSS108','p21'),('WSS111','p21'),('WSS113','p21'),('WSS12','p21'),('WSS123','p21'),('WSS128','p21'),('WSS129','p21'),('WSS139','p21'),('WSS14','p21'),('WSS147','p21'),('WSS172','p21'),('WSS186','p21'),('WSS19','p21'),('WSS197','p21'),('WSS198','p21'),('WSS200','p21'),('WSS203','p21'),('WSS205','p21'),('WSS216','p21'),('WSS217','p21'),('WSS22','p21'),('WSS220','p21'),('WSS228','p21'),('WSS23','p21'),('WSS237','p21'),('WSS245','p21'),('WSS255','p21'),('WSS256','p21'),('WSS257','p21'),('WSS259','p21'),('WSS262','p21'),('WSS278','p21'),('WSS304','p21'),('WSS319','p21'),('WSS32','p21'),('WSS329','p21'),('WSS332','p21'),('WSS334','p21'),('WSS340','p21'),('WSS342','p21'),('WSS343','p21'),('WSS344','p21'),('WSS360','p21'),('WSS364','p21'),('WSS376','p21'),('WSS385','p21'),('WSS392','p21'),('WSS398','p21'),('WSS399','p21'),('WSS44','p21'),('WSS47','p21'),('WSS49','p21'),('WSS5','p21'),('WSS51','p21'),('WSS56','p21'),('WSS57','p21'),('WSS60','p21'),('WSS62','p21'),('WSS65','p21'),('WSS68','p21'),('WSS81','p21'),('WSS83','p21'),('WSS93','p21'),('WSS95','p21'),('WSS106','p22'),('WSS111','p22'),('WSS13','p22'),('WSS134','p22'),('WSS140','p22'),('WSS141','p22'),('WSS150','p22'),('WSS152','p22'),('WSS160','p22'),('WSS163','p22'),('WSS167','p22'),('WSS168','p22'),('WSS176','p22'),('WSS184','p22'),('WSS190','p22'),('WSS191','p22'),('WSS194','p22'),('WSS197','p22'),('WSS206','p22'),('WSS212','p22'),('WSS213','p22'),('WSS218','p22'),('WSS22','p22'),('WSS222','p22'),('WSS225','p22'),('WSS226','p22'),('WSS230','p22'),('WSS267','p22'),('WSS274','p22'),('WSS277','p22'),('WSS279','p22'),('WSS287','p22'),('WSS307','p22'),('WSS32','p22'),('WSS321','p22'),('WSS335','p22'),('WSS338','p22'),('WSS341','p22'),('WSS354','p22'),('WSS36','p22'),('WSS363','p22'),('WSS367','p22'),('WSS383','p22'),('WSS4','p22'),('WSS47','p22'),('WSS6','p22'),('WSS77','p22'),('WSS8','p22'),('WSS80','p22'),('WSS81','p22'),('WSS84','p22'),('WSS95','p22'),('WSS105','p23'),('WSS108','p23'),('WSS113','p23'),('WSS129','p23'),('WSS130','p23'),('WSS153','p23'),('WSS154','p23'),('WSS156','p23'),('WSS160','p23'),('WSS164','p23'),('WSS17','p23'),('WSS170','p23'),('WSS174','p23'),('WSS180','p23'),('WSS20','p23'),('WSS210','p23'),('WSS213','p23'),('WSS215','p23'),('WSS218','p23'),('WSS248','p23'),('WSS250','p23'),('WSS254','p23'),('WSS268','p23'),('WSS279','p23'),('WSS292','p23'),('WSS296','p23'),('WSS301','p23'),('WSS315','p23'),('WSS316','p23'),('WSS325','p23'),('WSS337','p23'),('WSS356','p23'),('WSS362','p23'),('WSS363','p23'),('WSS373','p23'),('WSS385','p23'),('WSS39','p23'),('WSS392','p23'),('WSS396','p23'),('WSS41','p23'),('WSS46','p23'),('WSS5','p23'),('WSS52','p23'),('WSS70','p23'),('WSS98','p23'),('WSS118','p24'),('WSS141','p24'),('WSS143','p24'),('WSS150','p24'),('WSS174','p24'),('WSS176','p24'),('WSS183','p24'),('WSS2','p24'),('WSS221','p24'),('WSS226','p24'),('WSS227','p24'),('WSS229','p24'),('WSS231','p24'),('WSS243','p24'),('WSS246','p24'),('WSS248','p24'),('WSS25','p24'),('WSS258','p24'),('WSS26','p24'),('WSS288','p24'),('WSS320','p24'),('WSS331','p24'),('WSS334','p24'),('WSS338','p24'),('WSS345','p24'),('WSS353','p24'),('WSS357','p24'),('WSS361','p24'),('WSS373','p24'),('WSS376','p24'),('WSS38','p24'),('WSS385','p24'),('WSS386','p24'),('WSS393','p24'),('WSS40','p24'),('WSS64','p24'),('WSS89','p24'),('WSS98','p24'),('WSS102','p25'),('WSS107','p25'),('WSS112','p25'),('WSS113','p25'),('WSS114','p25'),('WSS119','p25'),('WSS12','p25'),('WSS127','p25'),('WSS128','p25'),('WSS134','p25'),('WSS136','p25'),('WSS143','p25'),('WSS144','p25'),('WSS145','p25'),('WSS147','p25'),('WSS168','p25'),('WSS178','p25'),('WSS205','p25'),('WSS217','p25'),('WSS219','p25'),('WSS221','p25'),('WSS23','p25'),('WSS237','p25'),('WSS241','p25'),('WSS249','p25'),('WSS252','p25'),('WSS253','p25'),('WSS254','p25'),('WSS262','p25'),('WSS263','p25'),('WSS266','p25'),('WSS276','p25'),('WSS291','p25'),('WSS295','p25'),('WSS302','p25'),('WSS311','p25'),('WSS312','p25'),('WSS315','p25'),('WSS322','p25'),('WSS332','p25'),('WSS333','p25'),('WSS336','p25'),('WSS344','p25'),('WSS356','p25'),('WSS357','p25'),('WSS365','p25'),('WSS378','p25'),('WSS38','p25'),('WSS394','p25'),('WSS397','p25'),('WSS400','p25'),('WSS44','p25'),('WSS46','p25'),('WSS54','p25'),('WSS77','p25'),('WSS79','p25'),('WSS92','p25'),('WSS95','p25'),('WSS10','p26'),('WSS117','p26'),('WSS133','p26'),('WSS15','p26'),('WSS162','p26'),('WSS166','p26'),('WSS168','p26'),('WSS171','p26'),('WSS178','p26'),('WSS179','p26'),('WSS180','p26'),('WSS185','p26'),('WSS200','p26'),('WSS207','p26'),('WSS214','p26'),('WSS22','p26'),('WSS230','p26'),('WSS233','p26'),('WSS241','p26'),('WSS242','p26'),('WSS243','p26'),('WSS257','p26'),('WSS261','p26'),('WSS27','p26'),('WSS277','p26'),('WSS3','p26'),('WSS318','p26'),('WSS322','p26'),('WSS325','p26'),('WSS335','p26'),('WSS34','p26'),('WSS340','p26'),('WSS347','p26'),('WSS349','p26'),('WSS352','p26'),('WSS356','p26'),('WSS363','p26'),('WSS368','p26'),('WSS370','p26'),('WSS379','p26'),('WSS387','p26'),('WSS395','p26'),('WSS396','p26'),('WSS50','p26'),('WSS60','p26'),('WSS69','p26'),('WSS70','p26'),('WSS71','p26'),('WSS72','p26'),('WSS89','p26'),('WSS90','p26'),('WSS11','p27'),('WSS138','p27'),('WSS163','p27'),('WSS171','p27'),('WSS184','p27'),('WSS189','p27'),('WSS193','p27'),('WSS198','p27'),('WSS2','p27'),('WSS201','p27'),('WSS215','p27'),('WSS218','p27'),('WSS236','p27'),('WSS244','p27'),('WSS250','p27'),('WSS274','p27'),('WSS280','p27'),('WSS281','p27'),('WSS29','p27'),('WSS290','p27'),('WSS295','p27'),('WSS296','p27'),('WSS303','p27'),('WSS305','p27'),('WSS313','p27'),('WSS328','p27'),('WSS335','p27'),('WSS34','p27'),('WSS348','p27'),('WSS355','p27'),('WSS388','p27'),('WSS391','p27'),('WSS394','p27'),('WSS395','p27'),('WSS397','p27'),('WSS398','p27'),('WSS41','p27'),('WSS46','p27'),('WSS48','p27'),('WSS59','p27'),('WSS63','p27'),('WSS67','p27'),('WSS69','p27'),('WSS73','p27'),('WSS76','p27'),('WSS79','p27'),('WSS8','p27'),('WSS90','p27'),('WSS97','p27'),('WSS101','p28'),('WSS116','p28'),('WSS122','p28'),('WSS131','p28'),('WSS134','p28'),('WSS136','p28'),('WSS149','p28'),('WSS179','p28'),('WSS188','p28'),('WSS206','p28'),('WSS227','p28'),('WSS239','p28'),('WSS242','p28'),('WSS256','p28'),('WSS258','p28'),('WSS266','p28'),('WSS267','p28'),('WSS278','p28'),('WSS28','p28'),('WSS285','p28'),('WSS289','p28'),('WSS290','p28'),('WSS293','p28'),('WSS294','p28'),('WSS298','p28'),('WSS301','p28'),('WSS310','p28'),('WSS312','p28'),('WSS32','p28'),('WSS325','p28'),('WSS329','p28'),('WSS334','p28'),('WSS339','p28'),('WSS340','p28'),('WSS349','p28'),('WSS352','p28'),('WSS359','p28'),('WSS364','p28'),('WSS367','p28'),('WSS384','p28'),('WSS39','p28'),('WSS52','p28'),('WSS62','p28'),('WSS67','p28'),('WSS7','p28'),('WSS8','p28'),('WSS92','p28'),('WSS94','p28'),('WSS98','p28'),('WSS1','p29'),('WSS108','p29'),('WSS118','p29'),('WSS121','p29'),('WSS139','p29'),('WSS158','p29'),('WSS165','p29'),('WSS170','p29'),('WSS173','p29'),('WSS18','p29'),('WSS180','p29'),('WSS181','p29'),('WSS188','p29'),('WSS192','p29'),('WSS207','p29'),('WSS211','p29'),('WSS212','p29'),('WSS213','p29'),('WSS217','p29'),('WSS221','p29'),('WSS228','p29'),('WSS235','p29'),('WSS236','p29'),('WSS238','p29'),('WSS240','p29'),('WSS241','p29'),('WSS259','p29'),('WSS260','p29'),('WSS261','p29'),('WSS264','p29'),('WSS267','p29'),('WSS268','p29'),('WSS286','p29'),('WSS287','p29'),('WSS292','p29'),('WSS302','p29'),('WSS319','p29'),('WSS321','p29'),('WSS327','p29'),('WSS351','p29'),('WSS370','p29'),('WSS38','p29'),('WSS385','p29'),('WSS386','p29'),('WSS392','p29'),('WSS396','p29'),('WSS399','p29'),('WSS4','p29'),('WSS53','p29'),('WSS58','p29'),('WSS6','p29'),('WSS60','p29'),('WSS65','p29'),('WSS71','p29'),('WSS85','p29'),('WSS103','p3'),('WSS111','p3'),('WSS114','p3'),('WSS116','p3'),('WSS118','p3'),('WSS125','p3'),('WSS137','p3'),('WSS14','p3'),('WSS149','p3'),('WSS157','p3'),('WSS178','p3'),('WSS179','p3'),('WSS181','p3'),('WSS195','p3'),('WSS198','p3'),('WSS209','p3'),('WSS218','p3'),('WSS224','p3'),('WSS236','p3'),('WSS251','p3'),('WSS253','p3'),('WSS256','p3'),('WSS260','p3'),('WSS264','p3'),('WSS273','p3'),('WSS275','p3'),('WSS284','p3'),('WSS291','p3'),('WSS302','p3'),('WSS305','p3'),('WSS314','p3'),('WSS316','p3'),('WSS318','p3'),('WSS351','p3'),('WSS358','p3'),('WSS36','p3'),('WSS384','p3'),('WSS389','p3'),('WSS42','p3'),('WSS43','p3'),('WSS48','p3'),('WSS55','p3'),('WSS58','p3'),('WSS61','p3'),('WSS7','p3'),('WSS8','p3'),('WSS84','p3'),('WSS85','p3'),('WSS90','p3'),('WSS102','p30'),('WSS105','p30'),('WSS109','p30'),('WSS13','p30'),('WSS134','p30'),('WSS140','p30'),('WSS143','p30'),('WSS16','p30'),('WSS163','p30'),('WSS17','p30'),('WSS191','p30'),('WSS194','p30'),('WSS208','p30'),('WSS215','p30'),('WSS220','p30'),('WSS223','p30'),('WSS224','p30'),('WSS23','p30'),('WSS250','p30'),('WSS252','p30'),('WSS26','p30'),('WSS27','p30'),('WSS281','p30'),('WSS282','p30'),('WSS288','p30'),('WSS292','p30'),('WSS299','p30'),('WSS30','p30'),('WSS309','p30'),('WSS310','p30'),('WSS348','p30'),('WSS366','p30'),('WSS380','p30'),('WSS386','p30'),('WSS389','p30'),('WSS391','p30'),('WSS58','p30'),('WSS71','p30'),('WSS76','p30'),('WSS1','p4'),('WSS100','p4'),('WSS101','p4'),('WSS140','p4'),('WSS141','p4'),('WSS144','p4'),('WSS147','p4'),('WSS148','p4'),('WSS154','p4'),('WSS189','p4'),('WSS192','p4'),('WSS2','p4'),('WSS205','p4'),('WSS209','p4'),('WSS227','p4'),('WSS239','p4'),('WSS24','p4'),('WSS244','p4'),('WSS279','p4'),('WSS28','p4'),('WSS280','p4'),('WSS283','p4'),('WSS291','p4'),('WSS297','p4'),('WSS327','p4'),('WSS332','p4'),('WSS337','p4'),('WSS342','p4'),('WSS345','p4'),('WSS352','p4'),('WSS363','p4'),('WSS369','p4'),('WSS370','p4'),('WSS388','p4'),('WSS51','p4'),('WSS52','p4'),('WSS54','p4'),('WSS70','p4'),('WSS74','p4'),('WSS75','p4'),('WSS81','p4'),('WSS85','p4'),('WSS88','p4'),('WSS96','p4'),('WSS103','p5'),('WSS121','p5'),('WSS126','p5'),('WSS136','p5'),('WSS14','p5'),('WSS146','p5'),('WSS148','p5'),('WSS167','p5'),('WSS169','p5'),('WSS174','p5'),('WSS175','p5'),('WSS176','p5'),('WSS18','p5'),('WSS191','p5'),('WSS207','p5'),('WSS210','p5'),('WSS216','p5'),('WSS232','p5'),('WSS234','p5'),('WSS235','p5'),('WSS242','p5'),('WSS245','p5'),('WSS254','p5'),('WSS262','p5'),('WSS264','p5'),('WSS270','p5'),('WSS272','p5'),('WSS278','p5'),('WSS282','p5'),('WSS293','p5'),('WSS303','p5'),('WSS304','p5'),('WSS308','p5'),('WSS31','p5'),('WSS314','p5'),('WSS316','p5'),('WSS321','p5'),('WSS323','p5'),('WSS329','p5'),('WSS33','p5'),('WSS339','p5'),('WSS341','p5'),('WSS347','p5'),('WSS359','p5'),('WSS365','p5'),('WSS370','p5'),('WSS392','p5'),('WSS394','p5'),('WSS396','p5'),('WSS398','p5'),('WSS4','p5'),('WSS49','p5'),('WSS50','p5'),('WSS51','p5'),('WSS55','p5'),('WSS59','p5'),('WSS6','p5'),('WSS63','p5'),('WSS74','p5'),('WSS82','p5'),('WSS88','p5'),('WSS91','p5'),('WSS92','p5'),('WSS93','p5'),('WSS112','p6'),('WSS118','p6'),('WSS137','p6'),('WSS146','p6'),('WSS153','p6'),('WSS154','p6'),('WSS17','p6'),('WSS175','p6'),('WSS187','p6'),('WSS194','p6'),('WSS200','p6'),('WSS202','p6'),('WSS210','p6'),('WSS225','p6'),('WSS234','p6'),('WSS246','p6'),('WSS25','p6'),('WSS251','p6'),('WSS255','p6'),('WSS259','p6'),('WSS269','p6'),('WSS282','p6'),('WSS286','p6'),('WSS299','p6'),('WSS30','p6'),('WSS300','p6'),('WSS303','p6'),('WSS306','p6'),('WSS313','p6'),('WSS328','p6'),('WSS341','p6'),('WSS350','p6'),('WSS355','p6'),('WSS358','p6'),('WSS362','p6'),('WSS364','p6'),('WSS365','p6'),('WSS369','p6'),('WSS39','p6'),('WSS40','p6'),('WSS400','p6'),('WSS48','p6'),('WSS57','p6'),('WSS61','p6'),('WSS63','p6'),('WSS76','p6'),('WSS83','p6'),('WSS94','p6'),('WSS10','p7'),('WSS110','p7'),('WSS114','p7'),('WSS120','p7'),('WSS124','p7'),('WSS131','p7'),('WSS135','p7'),('WSS141','p7'),('WSS145','p7'),('WSS161','p7'),('WSS166','p7'),('WSS177','p7'),('WSS185','p7'),('WSS203','p7'),('WSS208','p7'),('WSS212','p7'),('WSS223','p7'),('WSS228','p7'),('WSS232','p7'),('WSS233','p7'),('WSS235','p7'),('WSS267','p7'),('WSS273','p7'),('WSS275','p7'),('WSS30','p7'),('WSS301','p7'),('WSS311','p7'),('WSS312','p7'),('WSS320','p7'),('WSS326','p7'),('WSS329','p7'),('WSS33','p7'),('WSS330','p7'),('WSS34','p7'),('WSS346','p7'),('WSS36','p7'),('WSS369','p7'),('WSS371','p7'),('WSS375','p7'),('WSS378','p7'),('WSS382','p7'),('WSS4','p7'),('WSS42','p7'),('WSS43','p7'),('WSS5','p7'),('WSS50','p7'),('WSS62','p7'),('WSS65','p7'),('WSS66','p7'),('WSS7','p7'),('WSS72','p7'),('WSS86','p7'),('WSS93','p7'),('WSS105','p8'),('WSS11','p8'),('WSS130','p8'),('WSS131','p8'),('WSS138','p8'),('WSS156','p8'),('WSS159','p8'),('WSS187','p8'),('WSS189','p8'),('WSS190','p8'),('WSS20','p8'),('WSS202','p8'),('WSS203','p8'),('WSS208','p8'),('WSS222','p8'),('WSS244','p8'),('WSS251','p8'),('WSS257','p8'),('WSS27','p8'),('WSS276','p8'),('WSS286','p8'),('WSS298','p8'),('WSS3','p8'),('WSS308','p8'),('WSS318','p8'),('WSS323','p8'),('WSS325','p8'),('WSS331','p8'),('WSS338','p8'),('WSS34','p8'),('WSS341','p8'),('WSS343','p8'),('WSS345','p8'),('WSS350','p8'),('WSS354','p8'),('WSS360','p8'),('WSS365','p8'),('WSS377','p8'),('WSS63','p8'),('WSS91','p8'),('WSS99','p8'),('WSS100','p9'),('WSS110','p9'),('WSS115','p9'),('WSS12','p9'),('WSS123','p9'),('WSS135','p9'),('WSS169','p9'),('WSS185','p9'),('WSS195','p9'),('WSS196','p9'),('WSS199','p9'),('WSS214','p9'),('WSS219','p9'),('WSS221','p9'),('WSS227','p9'),('WSS232','p9'),('WSS234','p9'),('WSS236','p9'),('WSS24','p9'),('WSS240','p9'),('WSS280','p9'),('WSS29','p9'),('WSS290','p9'),('WSS296','p9'),('WSS298','p9'),('WSS299','p9'),('WSS307','p9'),('WSS324','p9'),('WSS33','p9'),('WSS330','p9'),('WSS333','p9'),('WSS351','p9'),('WSS359','p9'),('WSS376','p9'),('WSS393','p9'),('WSS48','p9'),('WSS53','p9'),('WSS65','p9'),('WSS67','p9'),('WSS7','p9'),('WSS73','p9'),('WSS75','p9'),('WSS84','p9'),('WSS87','p9'),('WSS92','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS35'),(1,2,'WSS45'),(2,1,'WSS370'),(2,2,'WSS397'),(3,1,'WSS278'),(3,2,'WSS277'),(4,1,'WSS375'),(4,2,'WSS364'),(5,1,'WSS359'),(5,1,'WSS43'),(6,1,'WSS242'),(6,2,'WSS27'),(7,1,'WSS39'),(7,2,'WSS38'),(7,3,'WSS26'),(8,1,'WSS189'),(8,2,'WSS13'),(9,1,'WSS329'),(9,2,'WSS42'),(10,1,'WSS278'),(10,2,'WSS48'),(11,1,'WSS20'),(11,2,'WSS391'),(12,1,'WSS271'),(12,2,'WSS357'),(13,1,'WSS301'),(13,2,'WSS379'),(14,1,'WSS348'),(14,2,'WSS399'),(15,1,'WSS234'),(15,2,'WSS242'),(16,1,'WSS95'),(16,2,'WSS198'),(17,1,'WSS28'),(17,1,'WSS342'),(18,1,'WSS148'),(18,2,'WSS211'),(19,1,'WSS166'),(19,2,'WSS197'),(20,1,'WSS235'),(20,1,'WSS373'),(21,1,'WSS278'),(21,2,'WSS25'),(22,1,'WSS292'),(22,2,'WSS27'),(23,1,'WSS179'),(23,2,'WSS337'),(24,1,'WSS182'),(24,2,'WSS179'),(25,1,'WSS364'),(25,2,'WSS351'),(26,1,'WSS278'),(26,2,'WSS25'),(27,1,'WSS137'),(27,2,'WSS318'),(28,1,'WSS43'),(28,1,'WSS88'),(29,1,'WSS142'),(29,2,'WSS362'),(30,1,'WSS364'),(30,2,'WSS385'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-07-07  0:11:51
