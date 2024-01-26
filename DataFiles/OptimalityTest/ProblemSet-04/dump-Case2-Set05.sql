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
INSERT INTO `initialgoalparameter` VALUES (1,'I','p1'),(4,'I','p1'),(11,'G','p1'),(12,'I','p1'),(15,'G','p1'),(16,'G','p1'),(18,'I','p1'),(19,'I','p1'),(20,'G','p1'),(22,'G','p1'),(30,'I','p1'),(1,'I','p10'),(2,'G','p10'),(3,'I','p10'),(4,'I','p10'),(8,'I','p10'),(9,'I','p10'),(12,'G','p10'),(14,'I','p10'),(16,'I','p10'),(18,'I','p10'),(20,'I','p10'),(22,'I','p10'),(29,'G','p10'),(5,'G','p11'),(6,'G','p11'),(12,'G','p11'),(14,'G','p11'),(20,'I','p11'),(24,'G','p11'),(25,'G','p11'),(27,'I','p11'),(28,'I','p11'),(29,'I','p11'),(4,'G','p12'),(5,'G','p12'),(7,'I','p12'),(10,'G','p12'),(11,'I','p12'),(13,'I','p12'),(20,'I','p12'),(21,'I','p12'),(23,'I','p12'),(25,'I','p12'),(28,'I','p12'),(3,'G','p13'),(5,'I','p13'),(8,'I','p13'),(9,'I','p13'),(14,'I','p13'),(17,'I','p13'),(23,'G','p13'),(30,'I','p13'),(1,'I','p14'),(2,'I','p14'),(12,'I','p14'),(13,'G','p14'),(15,'G','p14'),(17,'I','p14'),(19,'I','p14'),(22,'I','p14'),(24,'G','p14'),(27,'I','p14'),(28,'I','p14'),(29,'G','p14'),(2,'I','p15'),(4,'I','p15'),(6,'G','p15'),(7,'I','p15'),(13,'I','p15'),(19,'I','p15'),(20,'I','p15'),(23,'I','p15'),(29,'I','p15'),(3,'G','p16'),(5,'I','p16'),(6,'I','p16'),(18,'G','p16'),(22,'I','p16'),(24,'I','p16'),(25,'I','p16'),(26,'G','p16'),(30,'G','p16'),(1,'I','p17'),(2,'I','p17'),(3,'G','p17'),(4,'I','p17'),(7,'G','p17'),(8,'I','p17'),(9,'I','p17'),(10,'G','p17'),(11,'I','p17'),(14,'G','p17'),(15,'G','p17'),(16,'G','p17'),(18,'I','p17'),(22,'G','p17'),(26,'I','p17'),(6,'I','p18'),(7,'G','p18'),(10,'I','p18'),(23,'G','p18'),(25,'I','p18'),(27,'I','p18'),(8,'G','p19'),(11,'I','p19'),(13,'G','p19'),(16,'I','p19'),(17,'I','p19'),(19,'I','p19'),(20,'I','p19'),(23,'G','p19'),(26,'G','p19'),(30,'G','p19'),(5,'I','p2'),(7,'I','p2'),(9,'I','p2'),(13,'I','p2'),(17,'I','p2'),(21,'I','p2'),(23,'I','p2'),(24,'I','p2'),(26,'I','p2'),(28,'G','p2'),(11,'I','p20'),(15,'I','p20'),(18,'G','p20'),(23,'G','p20'),(26,'I','p20'),(28,'I','p20'),(30,'G','p20'),(2,'G','p21'),(5,'I','p21'),(7,'I','p21'),(8,'G','p21'),(11,'I','p21'),(16,'G','p21'),(17,'G','p21'),(19,'G','p21'),(23,'I','p21'),(24,'I','p21'),(27,'G','p21'),(29,'I','p21'),(1,'G','p22'),(6,'I','p22'),(9,'I','p22'),(10,'I','p22'),(11,'G','p22'),(12,'I','p22'),(21,'G','p22'),(25,'G','p22'),(26,'I','p22'),(27,'I','p22'),(1,'I','p23'),(3,'I','p23'),(4,'G','p23'),(6,'I','p23'),(9,'G','p23'),(17,'I','p23'),(19,'G','p23'),(28,'G','p23'),(29,'I','p23'),(30,'I','p23'),(1,'G','p24'),(2,'I','p24'),(8,'I','p24'),(15,'I','p24'),(17,'G','p24'),(21,'I','p24'),(27,'G','p24'),(28,'G','p24'),(3,'I','p25'),(8,'G','p25'),(10,'I','p25'),(13,'I','p25'),(15,'G','p25'),(17,'G','p25'),(18,'G','p25'),(22,'I','p25'),(24,'I','p25'),(28,'I','p25'),(3,'I','p26'),(5,'G','p26'),(7,'G','p26'),(12,'I','p26'),(17,'G','p26'),(30,'I','p26'),(2,'G','p27'),(3,'I','p27'),(10,'G','p27'),(11,'G','p27'),(13,'G','p27'),(14,'G','p27'),(16,'G','p27'),(17,'I','p27'),(20,'G','p27'),(21,'G','p27'),(25,'G','p27'),(27,'G','p27'),(4,'I','p28'),(6,'G','p28'),(11,'I','p28'),(15,'I','p28'),(16,'I','p28'),(20,'G','p28'),(24,'G','p28'),(25,'I','p28'),(27,'I','p28'),(30,'G','p28'),(4,'G','p29'),(9,'G','p29'),(10,'I','p29'),(11,'G','p29'),(12,'G','p29'),(19,'I','p29'),(21,'G','p29'),(29,'I','p29'),(3,'G','p3'),(12,'G','p3'),(16,'I','p3'),(22,'G','p3'),(23,'I','p3'),(25,'I','p3'),(26,'G','p3'),(1,'G','p30'),(2,'I','p30'),(7,'I','p30'),(9,'I','p30'),(10,'I','p30'),(14,'G','p30'),(18,'I','p30'),(24,'I','p30'),(26,'I','p30'),(28,'G','p30'),(1,'G','p4'),(5,'I','p4'),(9,'G','p4'),(10,'G','p4'),(14,'I','p4'),(15,'I','p4'),(22,'I','p4'),(3,'I','p5'),(6,'I','p5'),(13,'I','p5'),(14,'I','p5'),(19,'I','p5'),(21,'I','p5'),(24,'I','p5'),(25,'G','p5'),(29,'G','p5'),(4,'I','p6'),(8,'I','p6'),(10,'I','p6'),(14,'I','p6'),(15,'I','p6'),(18,'G','p6'),(19,'G','p6'),(22,'I','p6'),(24,'G','p6'),(29,'G','p6'),(1,'I','p7'),(2,'I','p7'),(4,'G','p7'),(5,'I','p7'),(7,'I','p7'),(12,'I','p7'),(13,'I','p7'),(16,'I','p7'),(18,'I','p7'),(21,'I','p7'),(25,'I','p7'),(29,'I','p7'),(5,'G','p8'),(6,'G','p8'),(7,'G','p8'),(8,'I','p8'),(12,'I','p8'),(13,'G','p8'),(14,'I','p8'),(18,'I','p8'),(20,'I','p8'),(21,'G','p8'),(22,'G','p8'),(26,'G','p8'),(27,'G','p8'),(30,'I','p8'),(2,'G','p9'),(6,'I','p9'),(8,'G','p9'),(9,'G','p9'),(15,'I','p9'),(16,'I','p9'),(19,'G','p9'),(20,'G','p9'),(21,'I','p9'),(23,'I','p9'),(26,'I','p9'),(27,'I','p9'),(28,'I','p9'),(30,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS112','p1'),('WSS115','p1'),('WSS12','p1'),('WSS147','p1'),('WSS195','p1'),('WSS200','p1'),('WSS202','p1'),('WSS214','p1'),('WSS228','p1'),('WSS244','p1'),('WSS264','p1'),('WSS275','p1'),('WSS298','p1'),('WSS302','p1'),('WSS312','p1'),('WSS320','p1'),('WSS336','p1'),('WSS357','p1'),('WSS363','p1'),('WSS378','p1'),('WSS38','p1'),('WSS383','p1'),('WSS51','p1'),('WSS6','p1'),('WSS92','p1'),('WSS10','p10'),('WSS111','p10'),('WSS128','p10'),('WSS152','p10'),('WSS153','p10'),('WSS164','p10'),('WSS165','p10'),('WSS168','p10'),('WSS171','p10'),('WSS174','p10'),('WSS202','p10'),('WSS206','p10'),('WSS208','p10'),('WSS218','p10'),('WSS229','p10'),('WSS262','p10'),('WSS273','p10'),('WSS293','p10'),('WSS294','p10'),('WSS32','p10'),('WSS324','p10'),('WSS333','p10'),('WSS334','p10'),('WSS375','p10'),('WSS45','p10'),('WSS47','p10'),('WSS71','p10'),('WSS75','p10'),('WSS8','p10'),('WSS91','p10'),('WSS93','p10'),('WSS111','p11'),('WSS120','p11'),('WSS131','p11'),('WSS136','p11'),('WSS140','p11'),('WSS148','p11'),('WSS161','p11'),('WSS172','p11'),('WSS173','p11'),('WSS190','p11'),('WSS205','p11'),('WSS213','p11'),('WSS217','p11'),('WSS223','p11'),('WSS226','p11'),('WSS229','p11'),('WSS239','p11'),('WSS266','p11'),('WSS298','p11'),('WSS308','p11'),('WSS31','p11'),('WSS312','p11'),('WSS332','p11'),('WSS358','p11'),('WSS372','p11'),('WSS382','p11'),('WSS383','p11'),('WSS63','p11'),('WSS77','p11'),('WSS109','p12'),('WSS112','p12'),('WSS118','p12'),('WSS124','p12'),('WSS127','p12'),('WSS155','p12'),('WSS159','p12'),('WSS17','p12'),('WSS186','p12'),('WSS188','p12'),('WSS196','p12'),('WSS197','p12'),('WSS212','p12'),('WSS246','p12'),('WSS269','p12'),('WSS272','p12'),('WSS284','p12'),('WSS286','p12'),('WSS294','p12'),('WSS300','p12'),('WSS307','p12'),('WSS313','p12'),('WSS315','p12'),('WSS332','p12'),('WSS353','p12'),('WSS367','p12'),('WSS372','p12'),('WSS4','p12'),('WSS56','p12'),('WSS62','p12'),('WSS10','p13'),('WSS107','p13'),('WSS144','p13'),('WSS154','p13'),('WSS176','p13'),('WSS18','p13'),('WSS186','p13'),('WSS2','p13'),('WSS234','p13'),('WSS259','p13'),('WSS270','p13'),('WSS300','p13'),('WSS330','p13'),('WSS350','p13'),('WSS358','p13'),('WSS384','p13'),('WSS49','p13'),('WSS50','p13'),('WSS57','p13'),('WSS72','p13'),('WSS82','p13'),('WSS90','p13'),('WSS1','p14'),('WSS139','p14'),('WSS169','p14'),('WSS20','p14'),('WSS220','p14'),('WSS222','p14'),('WSS251','p14'),('WSS254','p14'),('WSS262','p14'),('WSS343','p14'),('WSS370','p14'),('WSS38','p14'),('WSS380','p14'),('WSS384','p14'),('WSS55','p14'),('WSS60','p14'),('WSS63','p14'),('WSS86','p14'),('WSS127','p15'),('WSS128','p15'),('WSS139','p15'),('WSS16','p15'),('WSS164','p15'),('WSS178','p15'),('WSS194','p15'),('WSS23','p15'),('WSS237','p15'),('WSS238','p15'),('WSS245','p15'),('WSS247','p15'),('WSS248','p15'),('WSS249','p15'),('WSS268','p15'),('WSS292','p15'),('WSS344','p15'),('WSS361','p15'),('WSS366','p15'),('WSS389','p15'),('WSS393','p15'),('WSS399','p15'),('WSS65','p15'),('WSS7','p15'),('WSS75','p15'),('WSS9','p15'),('WSS97','p15'),('WSS102','p16'),('WSS105','p16'),('WSS110','p16'),('WSS116','p16'),('WSS135','p16'),('WSS137','p16'),('WSS153','p16'),('WSS177','p16'),('WSS185','p16'),('WSS198','p16'),('WSS21','p16'),('WSS211','p16'),('WSS231','p16'),('WSS255','p16'),('WSS276','p16'),('WSS277','p16'),('WSS278','p16'),('WSS279','p16'),('WSS281','p16'),('WSS288','p16'),('WSS299','p16'),('WSS30','p16'),('WSS305','p16'),('WSS319','p16'),('WSS326','p16'),('WSS331','p16'),('WSS336','p16'),('WSS340','p16'),('WSS367','p16'),('WSS39','p16'),('WSS391','p16'),('WSS393','p16'),('WSS104','p17'),('WSS141','p17'),('WSS145','p17'),('WSS174','p17'),('WSS182','p17'),('WSS183','p17'),('WSS189','p17'),('WSS19','p17'),('WSS22','p17'),('WSS285','p17'),('WSS31','p17'),('WSS341','p17'),('WSS348','p17'),('WSS353','p17'),('WSS382','p17'),('WSS58','p17'),('WSS59','p17'),('WSS86','p17'),('WSS90','p17'),('WSS105','p18'),('WSS11','p18'),('WSS18','p18'),('WSS181','p18'),('WSS193','p18'),('WSS222','p18'),('WSS247','p18'),('WSS249','p18'),('WSS27','p18'),('WSS285','p18'),('WSS3','p18'),('WSS322','p18'),('WSS325','p18'),('WSS330','p18'),('WSS364','p18'),('WSS365','p18'),('WSS376','p18'),('WSS71','p18'),('WSS81','p18'),('WSS84','p18'),('WSS101','p19'),('WSS103','p19'),('WSS124','p19'),('WSS138','p19'),('WSS147','p19'),('WSS149','p19'),('WSS156','p19'),('WSS16','p19'),('WSS170','p19'),('WSS234','p19'),('WSS235','p19'),('WSS252','p19'),('WSS291','p19'),('WSS296','p19'),('WSS309','p19'),('WSS321','p19'),('WSS344','p19'),('WSS348','p19'),('WSS359','p19'),('WSS361','p19'),('WSS373','p19'),('WSS377','p19'),('WSS59','p19'),('WSS98','p19'),('WSS108','p2'),('WSS113','p2'),('WSS117','p2'),('WSS132','p2'),('WSS145','p2'),('WSS152','p2'),('WSS166','p2'),('WSS207','p2'),('WSS209','p2'),('WSS211','p2'),('WSS224','p2'),('WSS240','p2'),('WSS280','p2'),('WSS282','p2'),('WSS30','p2'),('WSS301','p2'),('WSS303','p2'),('WSS306','p2'),('WSS327','p2'),('WSS371','p2'),('WSS390','p2'),('WSS40','p2'),('WSS46','p2'),('WSS49','p2'),('WSS52','p2'),('WSS65','p2'),('WSS74','p2'),('WSS107','p20'),('WSS113','p20'),('WSS115','p20'),('WSS132','p20'),('WSS157','p20'),('WSS166','p20'),('WSS167','p20'),('WSS181','p20'),('WSS220','p20'),('WSS230','p20'),('WSS239','p20'),('WSS24','p20'),('WSS255','p20'),('WSS263','p20'),('WSS28','p20'),('WSS289','p20'),('WSS295','p20'),('WSS311','p20'),('WSS323','p20'),('WSS327','p20'),('WSS329','p20'),('WSS349','p20'),('WSS355','p20'),('WSS359','p20'),('WSS365','p20'),('WSS381','p20'),('WSS391','p20'),('WSS398','p20'),('WSS61','p20'),('WSS80','p20'),('WSS102','p21'),('WSS122','p21'),('WSS129','p21'),('WSS130','p21'),('WSS140','p21'),('WSS142','p21'),('WSS17','p21'),('WSS191','p21'),('WSS208','p21'),('WSS219','p21'),('WSS227','p21'),('WSS256','p21'),('WSS258','p21'),('WSS26','p21'),('WSS261','p21'),('WSS292','p21'),('WSS297','p21'),('WSS304','p21'),('WSS310','p21'),('WSS320','p21'),('WSS333','p21'),('WSS35','p21'),('WSS360','p21'),('WSS368','p21'),('WSS370','p21'),('WSS378','p21'),('WSS395','p21'),('WSS56','p21'),('WSS76','p21'),('WSS78','p21'),('WSS79','p21'),('WSS85','p21'),('WSS93','p21'),('WSS99','p21'),('WSS101','p22'),('WSS104','p22'),('WSS116','p22'),('WSS133','p22'),('WSS137','p22'),('WSS149','p22'),('WSS179','p22'),('WSS236','p22'),('WSS25','p22'),('WSS253','p22'),('WSS26','p22'),('WSS266','p22'),('WSS287','p22'),('WSS291','p22'),('WSS313','p22'),('WSS328','p22'),('WSS337','p22'),('WSS347','p22'),('WSS35','p22'),('WSS380','p22'),('WSS386','p22'),('WSS66','p22'),('WSS69','p22'),('WSS70','p22'),('WSS9','p22'),('WSS98','p22'),('WSS117','p23'),('WSS125','p23'),('WSS143','p23'),('WSS176','p23'),('WSS180','p23'),('WSS213','p23'),('WSS227','p23'),('WSS236','p23'),('WSS243','p23'),('WSS250','p23'),('WSS296','p23'),('WSS304','p23'),('WSS339','p23'),('WSS351','p23'),('WSS357','p23'),('WSS374','p23'),('WSS39','p23'),('WSS392','p23'),('WSS53','p23'),('WSS62','p23'),('WSS77','p23'),('WSS81','p23'),('WSS95','p23'),('WSS96','p23'),('WSS118','p24'),('WSS121','p24'),('WSS157','p24'),('WSS19','p24'),('WSS192','p24'),('WSS196','p24'),('WSS197','p24'),('WSS198','p24'),('WSS206','p24'),('WSS215','p24'),('WSS221','p24'),('WSS226','p24'),('WSS242','p24'),('WSS265','p24'),('WSS273','p24'),('WSS286','p24'),('WSS302','p24'),('WSS318','p24'),('WSS319','p24'),('WSS326','p24'),('WSS335','p24'),('WSS346','p24'),('WSS350','p24'),('WSS396','p24'),('WSS40','p24'),('WSS400','p24'),('WSS45','p24'),('WSS66','p24'),('WSS79','p24'),('WSS110','p25'),('WSS130','p25'),('WSS15','p25'),('WSS155','p25'),('WSS158','p25'),('WSS160','p25'),('WSS173','p25'),('WSS217','p25'),('WSS240','p25'),('WSS243','p25'),('WSS27','p25'),('WSS284','p25'),('WSS306','p25'),('WSS316','p25'),('WSS33','p25'),('WSS342','p25'),('WSS349','p25'),('WSS36','p25'),('WSS375','p25'),('WSS400','p25'),('WSS41','p25'),('WSS42','p25'),('WSS64','p25'),('WSS69','p25'),('WSS80','p25'),('WSS94','p25'),('WSS108','p26'),('WSS146','p26'),('WSS151','p26'),('WSS184','p26'),('WSS21','p26'),('WSS23','p26'),('WSS233','p26'),('WSS256','p26'),('WSS257','p26'),('WSS259','p26'),('WSS269','p26'),('WSS289','p26'),('WSS29','p26'),('WSS293','p26'),('WSS297','p26'),('WSS321','p26'),('WSS346','p26'),('WSS356','p26'),('WSS389','p26'),('WSS44','p26'),('WSS55','p26'),('WSS67','p26'),('WSS74','p26'),('WSS8','p26'),('WSS106','p27'),('WSS114','p27'),('WSS126','p27'),('WSS129','p27'),('WSS135','p27'),('WSS138','p27'),('WSS151','p27'),('WSS162','p27'),('WSS172','p27'),('WSS190','p27'),('WSS194','p27'),('WSS201','p27'),('WSS212','p27'),('WSS216','p27'),('WSS225','p27'),('WSS232','p27'),('WSS267','p27'),('WSS270','p27'),('WSS274','p27'),('WSS277','p27'),('WSS279','p27'),('WSS282','p27'),('WSS283','p27'),('WSS33','p27'),('WSS343','p27'),('WSS355','p27'),('WSS369','p27'),('WSS379','p27'),('WSS390','p27'),('WSS399','p27'),('WSS41','p27'),('WSS47','p27'),('WSS50','p27'),('WSS72','p27'),('WSS92','p27'),('WSS120','p28'),('WSS14','p28'),('WSS146','p28'),('WSS150','p28'),('WSS154','p28'),('WSS158','p28'),('WSS159','p28'),('WSS160','p28'),('WSS163','p28'),('WSS169','p28'),('WSS203','p28'),('WSS223','p28'),('WSS271','p28'),('WSS281','p28'),('WSS283','p28'),('WSS301','p28'),('WSS315','p28'),('WSS329','p28'),('WSS342','p28'),('WSS345','p28'),('WSS373','p28'),('WSS397','p28'),('WSS4','p28'),('WSS42','p28'),('WSS46','p28'),('WSS73','p28'),('WSS76','p28'),('WSS83','p28'),('WSS114','p29'),('WSS119','p29'),('WSS121','p29'),('WSS126','p29'),('WSS134','p29'),('WSS141','p29'),('WSS165','p29'),('WSS203','p29'),('WSS210','p29'),('WSS232','p29'),('WSS238','p29'),('WSS258','p29'),('WSS314','p29'),('WSS317','p29'),('WSS339','p29'),('WSS34','p29'),('WSS341','p29'),('WSS351','p29'),('WSS354','p29'),('WSS360','p29'),('WSS385','p29'),('WSS58','p29'),('WSS7','p29'),('WSS70','p29'),('WSS87','p29'),('WSS99','p29'),('WSS122','p3'),('WSS156','p3'),('WSS168','p3'),('WSS171','p3'),('WSS183','p3'),('WSS204','p3'),('WSS210','p3'),('WSS233','p3'),('WSS252','p3'),('WSS260','p3'),('WSS275','p3'),('WSS310','p3'),('WSS314','p3'),('WSS316','p3'),('WSS317','p3'),('WSS334','p3'),('WSS345','p3'),('WSS347','p3'),('WSS48','p3'),('WSS68','p3'),('WSS73','p3'),('WSS83','p3'),('WSS12','p30'),('WSS123','p30'),('WSS143','p30'),('WSS175','p30'),('WSS177','p30'),('WSS195','p30'),('WSS20','p30'),('WSS214','p30'),('WSS228','p30'),('WSS231','p30'),('WSS237','p30'),('WSS242','p30'),('WSS254','p30'),('WSS264','p30'),('WSS267','p30'),('WSS299','p30'),('WSS305','p30'),('WSS322','p30'),('WSS338','p30'),('WSS340','p30'),('WSS354','p30'),('WSS379','p30'),('WSS381','p30'),('WSS387','p30'),('WSS398','p30'),('WSS5','p30'),('WSS67','p30'),('WSS84','p30'),('WSS88','p30'),('WSS1','p4'),('WSS134','p4'),('WSS163','p4'),('WSS180','p4'),('WSS192','p4'),('WSS199','p4'),('WSS225','p4'),('WSS241','p4'),('WSS246','p4'),('WSS251','p4'),('WSS253','p4'),('WSS263','p4'),('WSS369','p4'),('WSS371','p4'),('WSS48','p4'),('WSS52','p4'),('WSS54','p4'),('WSS6','p4'),('WSS85','p4'),('WSS88','p4'),('WSS94','p4'),('WSS123','p5'),('WSS13','p5'),('WSS14','p5'),('WSS15','p5'),('WSS150','p5'),('WSS175','p5'),('WSS182','p5'),('WSS185','p5'),('WSS189','p5'),('WSS191','p5'),('WSS193','p5'),('WSS216','p5'),('WSS219','p5'),('WSS241','p5'),('WSS248','p5'),('WSS278','p5'),('WSS290','p5'),('WSS308','p5'),('WSS309','p5'),('WSS32','p5'),('WSS352','p5'),('WSS362','p5'),('WSS364','p5'),('WSS366','p5'),('WSS368','p5'),('WSS387','p5'),('WSS394','p5'),('WSS43','p5'),('WSS68','p5'),('WSS106','p6'),('WSS142','p6'),('WSS167','p6'),('WSS2','p6'),('WSS205','p6'),('WSS22','p6'),('WSS268','p6'),('WSS276','p6'),('WSS28','p6'),('WSS287','p6'),('WSS288','p6'),('WSS290','p6'),('WSS311','p6'),('WSS323','p6'),('WSS325','p6'),('WSS338','p6'),('WSS352','p6'),('WSS36','p6'),('WSS363','p6'),('WSS374','p6'),('WSS377','p6'),('WSS394','p6'),('WSS5','p6'),('WSS51','p6'),('WSS54','p6'),('WSS57','p6'),('WSS60','p6'),('WSS78','p6'),('WSS82','p6'),('WSS96','p6'),('WSS100','p7'),('WSS109','p7'),('WSS11','p7'),('WSS119','p7'),('WSS13','p7'),('WSS133','p7'),('WSS148','p7'),('WSS187','p7'),('WSS200','p7'),('WSS201','p7'),('WSS224','p7'),('WSS230','p7'),('WSS244','p7'),('WSS272','p7'),('WSS274','p7'),('WSS337','p7'),('WSS34','p7'),('WSS356','p7'),('WSS37','p7'),('WSS385','p7'),('WSS388','p7'),('WSS396','p7'),('WSS397','p7'),('WSS43','p7'),('WSS64','p7'),('WSS89','p7'),('WSS95','p7'),('WSS125','p8'),('WSS136','p8'),('WSS162','p8'),('WSS178','p8'),('WSS179','p8'),('WSS187','p8'),('WSS199','p8'),('WSS218','p8'),('WSS221','p8'),('WSS235','p8'),('WSS24','p8'),('WSS25','p8'),('WSS250','p8'),('WSS260','p8'),('WSS261','p8'),('WSS265','p8'),('WSS3','p8'),('WSS307','p8'),('WSS318','p8'),('WSS331','p8'),('WSS335','p8'),('WSS362','p8'),('WSS37','p8'),('WSS44','p8'),('WSS61','p8'),('WSS87','p8'),('WSS89','p8'),('WSS91','p8'),('WSS97','p8'),('WSS100','p9'),('WSS103','p9'),('WSS131','p9'),('WSS144','p9'),('WSS161','p9'),('WSS184','p9'),('WSS188','p9'),('WSS204','p9'),('WSS207','p9'),('WSS209','p9'),('WSS245','p9'),('WSS257','p9'),('WSS271','p9'),('WSS295','p9'),('WSS324','p9'),('WSS328','p9'),('WSS386','p9'),('WSS388','p9'),('WSS392','p9'),('WSS395','p9'),('WSS53','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS104','p1'),('WSS109','p1'),('WSS111','p1'),('WSS113','p1'),('WSS127','p1'),('WSS130','p1'),('WSS145','p1'),('WSS146','p1'),('WSS155','p1'),('WSS165','p1'),('WSS17','p1'),('WSS175','p1'),('WSS180','p1'),('WSS187','p1'),('WSS194','p1'),('WSS199','p1'),('WSS212','p1'),('WSS216','p1'),('WSS221','p1'),('WSS242','p1'),('WSS25','p1'),('WSS251','p1'),('WSS26','p1'),('WSS283','p1'),('WSS285','p1'),('WSS298','p1'),('WSS305','p1'),('WSS328','p1'),('WSS35','p1'),('WSS351','p1'),('WSS37','p1'),('WSS371','p1'),('WSS375','p1'),('WSS377','p1'),('WSS391','p1'),('WSS394','p1'),('WSS42','p1'),('WSS55','p1'),('WSS59','p1'),('WSS6','p1'),('WSS63','p1'),('WSS66','p1'),('WSS75','p1'),('WSS81','p1'),('WSS84','p1'),('WSS86','p1'),('WSS91','p1'),('WSS98','p1'),('WSS10','p10'),('WSS100','p10'),('WSS102','p10'),('WSS104','p10'),('WSS106','p10'),('WSS108','p10'),('WSS11','p10'),('WSS115','p10'),('WSS116','p10'),('WSS12','p10'),('WSS120','p10'),('WSS124','p10'),('WSS125','p10'),('WSS128','p10'),('WSS137','p10'),('WSS138','p10'),('WSS139','p10'),('WSS142','p10'),('WSS161','p10'),('WSS164','p10'),('WSS170','p10'),('WSS178','p10'),('WSS179','p10'),('WSS184','p10'),('WSS195','p10'),('WSS199','p10'),('WSS206','p10'),('WSS214','p10'),('WSS215','p10'),('WSS223','p10'),('WSS23','p10'),('WSS237','p10'),('WSS238','p10'),('WSS240','p10'),('WSS259','p10'),('WSS268','p10'),('WSS276','p10'),('WSS293','p10'),('WSS323','p10'),('WSS343','p10'),('WSS345','p10'),('WSS349','p10'),('WSS362','p10'),('WSS377','p10'),('WSS382','p10'),('WSS383','p10'),('WSS389','p10'),('WSS390','p10'),('WSS392','p10'),('WSS398','p10'),('WSS400','p10'),('WSS42','p10'),('WSS47','p10'),('WSS49','p10'),('WSS52','p10'),('WSS54','p10'),('WSS58','p10'),('WSS65','p10'),('WSS67','p10'),('WSS76','p10'),('WSS82','p10'),('WSS90','p10'),('WSS1','p11'),('WSS102','p11'),('WSS115','p11'),('WSS116','p11'),('WSS123','p11'),('WSS126','p11'),('WSS129','p11'),('WSS149','p11'),('WSS15','p11'),('WSS151','p11'),('WSS154','p11'),('WSS16','p11'),('WSS160','p11'),('WSS167','p11'),('WSS171','p11'),('WSS176','p11'),('WSS182','p11'),('WSS191','p11'),('WSS194','p11'),('WSS203','p11'),('WSS212','p11'),('WSS214','p11'),('WSS22','p11'),('WSS225','p11'),('WSS238','p11'),('WSS242','p11'),('WSS244','p11'),('WSS246','p11'),('WSS250','p11'),('WSS267','p11'),('WSS286','p11'),('WSS287','p11'),('WSS29','p11'),('WSS297','p11'),('WSS302','p11'),('WSS311','p11'),('WSS313','p11'),('WSS314','p11'),('WSS315','p11'),('WSS336','p11'),('WSS344','p11'),('WSS346','p11'),('WSS354','p11'),('WSS355','p11'),('WSS357','p11'),('WSS36','p11'),('WSS363','p11'),('WSS379','p11'),('WSS387','p11'),('WSS39','p11'),('WSS392','p11'),('WSS41','p11'),('WSS47','p11'),('WSS60','p11'),('WSS62','p11'),('WSS69','p11'),('WSS71','p11'),('WSS8','p11'),('WSS88','p11'),('WSS9','p11'),('WSS91','p11'),('WSS95','p11'),('WSS104','p12'),('WSS105','p12'),('WSS112','p12'),('WSS134','p12'),('WSS140','p12'),('WSS160','p12'),('WSS165','p12'),('WSS183','p12'),('WSS184','p12'),('WSS186','p12'),('WSS190','p12'),('WSS196','p12'),('WSS20','p12'),('WSS204','p12'),('WSS207','p12'),('WSS208','p12'),('WSS211','p12'),('WSS217','p12'),('WSS221','p12'),('WSS222','p12'),('WSS225','p12'),('WSS229','p12'),('WSS235','p12'),('WSS24','p12'),('WSS243','p12'),('WSS279','p12'),('WSS282','p12'),('WSS284','p12'),('WSS287','p12'),('WSS308','p12'),('WSS321','p12'),('WSS338','p12'),('WSS342','p12'),('WSS343','p12'),('WSS344','p12'),('WSS35','p12'),('WSS353','p12'),('WSS358','p12'),('WSS364','p12'),('WSS382','p12'),('WSS390','p12'),('WSS396','p12'),('WSS397','p12'),('WSS400','p12'),('WSS44','p12'),('WSS72','p12'),('WSS74','p12'),('WSS102','p13'),('WSS106','p13'),('WSS109','p13'),('WSS110','p13'),('WSS117','p13'),('WSS118','p13'),('WSS132','p13'),('WSS143','p13'),('WSS147','p13'),('WSS149','p13'),('WSS152','p13'),('WSS157','p13'),('WSS160','p13'),('WSS174','p13'),('WSS177','p13'),('WSS188','p13'),('WSS197','p13'),('WSS209','p13'),('WSS211','p13'),('WSS255','p13'),('WSS265','p13'),('WSS28','p13'),('WSS291','p13'),('WSS292','p13'),('WSS306','p13'),('WSS308','p13'),('WSS310','p13'),('WSS312','p13'),('WSS316','p13'),('WSS32','p13'),('WSS322','p13'),('WSS33','p13'),('WSS330','p13'),('WSS339','p13'),('WSS346','p13'),('WSS357','p13'),('WSS376','p13'),('WSS384','p13'),('WSS386','p13'),('WSS40','p13'),('WSS44','p13'),('WSS49','p13'),('WSS56','p13'),('WSS61','p13'),('WSS64','p13'),('WSS68','p13'),('WSS70','p13'),('WSS71','p13'),('WSS76','p13'),('WSS80','p13'),('WSS89','p13'),('WSS94','p13'),('WSS128','p14'),('WSS129','p14'),('WSS132','p14'),('WSS133','p14'),('WSS135','p14'),('WSS151','p14'),('WSS156','p14'),('WSS162','p14'),('WSS168','p14'),('WSS171','p14'),('WSS173','p14'),('WSS18','p14'),('WSS181','p14'),('WSS186','p14'),('WSS193','p14'),('WSS208','p14'),('WSS210','p14'),('WSS224','p14'),('WSS230','p14'),('WSS231','p14'),('WSS236','p14'),('WSS25','p14'),('WSS253','p14'),('WSS264','p14'),('WSS267','p14'),('WSS284','p14'),('WSS286','p14'),('WSS298','p14'),('WSS303','p14'),('WSS313','p14'),('WSS314','p14'),('WSS326','p14'),('WSS328','p14'),('WSS330','p14'),('WSS334','p14'),('WSS336','p14'),('WSS34','p14'),('WSS35','p14'),('WSS350','p14'),('WSS360','p14'),('WSS372','p14'),('WSS379','p14'),('WSS45','p14'),('WSS47','p14'),('WSS52','p14'),('WSS55','p14'),('WSS61','p14'),('WSS73','p14'),('WSS78','p14'),('WSS85','p14'),('WSS90','p14'),('WSS92','p14'),('WSS105','p15'),('WSS121','p15'),('WSS123','p15'),('WSS150','p15'),('WSS152','p15'),('WSS159','p15'),('WSS169','p15'),('WSS181','p15'),('WSS182','p15'),('WSS183','p15'),('WSS189','p15'),('WSS191','p15'),('WSS198','p15'),('WSS205','p15'),('WSS21','p15'),('WSS215','p15'),('WSS217','p15'),('WSS227','p15'),('WSS231','p15'),('WSS249','p15'),('WSS251','p15'),('WSS263','p15'),('WSS265','p15'),('WSS267','p15'),('WSS277','p15'),('WSS29','p15'),('WSS290','p15'),('WSS302','p15'),('WSS319','p15'),('WSS335','p15'),('WSS348','p15'),('WSS358','p15'),('WSS366','p15'),('WSS39','p15'),('WSS399','p15'),('WSS400','p15'),('WSS50','p15'),('WSS54','p15'),('WSS56','p15'),('WSS69','p15'),('WSS7','p15'),('WSS71','p15'),('WSS72','p15'),('WSS84','p15'),('WSS91','p15'),('WSS92','p15'),('WSS98','p15'),('WSS101','p16'),('WSS114','p16'),('WSS128','p16'),('WSS13','p16'),('WSS131','p16'),('WSS192','p16'),('WSS201','p16'),('WSS204','p16'),('WSS211','p16'),('WSS220','p16'),('WSS226','p16'),('WSS228','p16'),('WSS233','p16'),('WSS236','p16'),('WSS244','p16'),('WSS246','p16'),('WSS260','p16'),('WSS262','p16'),('WSS27','p16'),('WSS271','p16'),('WSS274','p16'),('WSS275','p16'),('WSS285','p16'),('WSS288','p16'),('WSS29','p16'),('WSS295','p16'),('WSS304','p16'),('WSS306','p16'),('WSS319','p16'),('WSS320','p16'),('WSS322','p16'),('WSS327','p16'),('WSS330','p16'),('WSS349','p16'),('WSS356','p16'),('WSS365','p16'),('WSS367','p16'),('WSS376','p16'),('WSS381','p16'),('WSS382','p16'),('WSS42','p16'),('WSS43','p16'),('WSS51','p16'),('WSS53','p16'),('WSS58','p16'),('WSS60','p16'),('WSS61','p16'),('WSS7','p16'),('WSS77','p16'),('WSS78','p16'),('WSS9','p16'),('WSS96','p16'),('WSS105','p17'),('WSS115','p17'),('WSS126','p17'),('WSS128','p17'),('WSS134','p17'),('WSS142','p17'),('WSS144','p17'),('WSS147','p17'),('WSS150','p17'),('WSS161','p17'),('WSS171','p17'),('WSS176','p17'),('WSS181','p17'),('WSS185','p17'),('WSS187','p17'),('WSS188','p17'),('WSS2','p17'),('WSS206','p17'),('WSS215','p17'),('WSS219','p17'),('WSS224','p17'),('WSS226','p17'),('WSS233','p17'),('WSS241','p17'),('WSS242','p17'),('WSS244','p17'),('WSS245','p17'),('WSS250','p17'),('WSS255','p17'),('WSS264','p17'),('WSS265','p17'),('WSS277','p17'),('WSS304','p17'),('WSS305','p17'),('WSS306','p17'),('WSS309','p17'),('WSS311','p17'),('WSS312','p17'),('WSS318','p17'),('WSS322','p17'),('WSS325','p17'),('WSS349','p17'),('WSS358','p17'),('WSS360','p17'),('WSS369','p17'),('WSS399','p17'),('WSS4','p17'),('WSS52','p17'),('WSS6','p17'),('WSS64','p17'),('WSS65','p17'),('WSS79','p17'),('WSS83','p17'),('WSS91','p17'),('WSS97','p17'),('WSS10','p18'),('WSS107','p18'),('WSS121','p18'),('WSS125','p18'),('WSS133','p18'),('WSS134','p18'),('WSS135','p18'),('WSS139','p18'),('WSS143','p18'),('WSS144','p18'),('WSS149','p18'),('WSS151','p18'),('WSS162','p18'),('WSS17','p18'),('WSS172','p18'),('WSS174','p18'),('WSS177','p18'),('WSS185','p18'),('WSS200','p18'),('WSS201','p18'),('WSS207','p18'),('WSS213','p18'),('WSS227','p18'),('WSS240','p18'),('WSS245','p18'),('WSS25','p18'),('WSS256','p18'),('WSS26','p18'),('WSS263','p18'),('WSS289','p18'),('WSS293','p18'),('WSS308','p18'),('WSS309','p18'),('WSS324','p18'),('WSS326','p18'),('WSS352','p18'),('WSS363','p18'),('WSS365','p18'),('WSS371','p18'),('WSS394','p18'),('WSS4','p18'),('WSS48','p18'),('WSS5','p18'),('WSS81','p18'),('WSS86','p18'),('WSS89','p18'),('WSS95','p18'),('WSS98','p18'),('WSS108','p19'),('WSS12','p19'),('WSS123','p19'),('WSS124','p19'),('WSS129','p19'),('WSS141','p19'),('WSS17','p19'),('WSS179','p19'),('WSS18','p19'),('WSS190','p19'),('WSS198','p19'),('WSS203','p19'),('WSS209','p19'),('WSS212','p19'),('WSS213','p19'),('WSS217','p19'),('WSS218','p19'),('WSS223','p19'),('WSS244','p19'),('WSS248','p19'),('WSS250','p19'),('WSS253','p19'),('WSS257','p19'),('WSS258','p19'),('WSS260','p19'),('WSS262','p19'),('WSS263','p19'),('WSS271','p19'),('WSS288','p19'),('WSS289','p19'),('WSS294','p19'),('WSS296','p19'),('WSS300','p19'),('WSS307','p19'),('WSS314','p19'),('WSS332','p19'),('WSS339','p19'),('WSS341','p19'),('WSS344','p19'),('WSS347','p19'),('WSS356','p19'),('WSS358','p19'),('WSS363','p19'),('WSS364','p19'),('WSS370','p19'),('WSS373','p19'),('WSS374','p19'),('WSS380','p19'),('WSS381','p19'),('WSS385','p19'),('WSS389','p19'),('WSS392','p19'),('WSS393','p19'),('WSS394','p19'),('WSS396','p19'),('WSS4','p19'),('WSS44','p19'),('WSS58','p19'),('WSS61','p19'),('WSS63','p19'),('WSS73','p19'),('WSS76','p19'),('WSS87','p19'),('WSS90','p19'),('WSS11','p2'),('WSS111','p2'),('WSS122','p2'),('WSS125','p2'),('WSS126','p2'),('WSS131','p2'),('WSS133','p2'),('WSS135','p2'),('WSS138','p2'),('WSS14','p2'),('WSS145','p2'),('WSS147','p2'),('WSS16','p2'),('WSS163','p2'),('WSS182','p2'),('WSS187','p2'),('WSS19','p2'),('WSS190','p2'),('WSS192','p2'),('WSS193','p2'),('WSS195','p2'),('WSS206','p2'),('WSS220','p2'),('WSS237','p2'),('WSS239','p2'),('WSS24','p2'),('WSS245','p2'),('WSS247','p2'),('WSS249','p2'),('WSS257','p2'),('WSS26','p2'),('WSS261','p2'),('WSS273','p2'),('WSS275','p2'),('WSS283','p2'),('WSS295','p2'),('WSS30','p2'),('WSS320','p2'),('WSS327','p2'),('WSS33','p2'),('WSS354','p2'),('WSS384','p2'),('WSS388','p2'),('WSS398','p2'),('WSS41','p2'),('WSS45','p2'),('WSS54','p2'),('WSS57','p2'),('WSS59','p2'),('WSS67','p2'),('WSS72','p2'),('WSS75','p2'),('WSS86','p2'),('WSS88','p2'),('WSS99','p2'),('WSS110','p20'),('WSS120','p20'),('WSS141','p20'),('WSS159','p20'),('WSS163','p20'),('WSS166','p20'),('WSS169','p20'),('WSS183','p20'),('WSS186','p20'),('WSS19','p20'),('WSS196','p20'),('WSS219','p20'),('WSS23','p20'),('WSS234','p20'),('WSS239','p20'),('WSS248','p20'),('WSS255','p20'),('WSS256','p20'),('WSS266','p20'),('WSS268','p20'),('WSS272','p20'),('WSS278','p20'),('WSS281','p20'),('WSS293','p20'),('WSS302','p20'),('WSS306','p20'),('WSS307','p20'),('WSS320','p20'),('WSS327','p20'),('WSS329','p20'),('WSS335','p20'),('WSS337','p20'),('WSS36','p20'),('WSS369','p20'),('WSS370','p20'),('WSS375','p20'),('WSS380','p20'),('WSS385','p20'),('WSS391','p20'),('WSS393','p20'),('WSS400','p20'),('WSS46','p20'),('WSS49','p20'),('WSS59','p20'),('WSS69','p20'),('WSS7','p20'),('WSS89','p20'),('WSS9','p20'),('WSS94','p20'),('WSS99','p20'),('WSS101','p21'),('WSS103','p21'),('WSS107','p21'),('WSS109','p21'),('WSS11','p21'),('WSS115','p21'),('WSS130','p21'),('WSS14','p21'),('WSS142','p21'),('WSS15','p21'),('WSS150','p21'),('WSS153','p21'),('WSS188','p21'),('WSS20','p21'),('WSS202','p21'),('WSS203','p21'),('WSS204','p21'),('WSS205','p21'),('WSS21','p21'),('WSS22','p21'),('WSS226','p21'),('WSS240','p21'),('WSS258','p21'),('WSS266','p21'),('WSS27','p21'),('WSS272','p21'),('WSS275','p21'),('WSS286','p21'),('WSS296','p21'),('WSS304','p21'),('WSS318','p21'),('WSS326','p21'),('WSS334','p21'),('WSS340','p21'),('WSS350','p21'),('WSS359','p21'),('WSS361','p21'),('WSS368','p21'),('WSS372','p21'),('WSS373','p21'),('WSS374','p21'),('WSS375','p21'),('WSS38','p21'),('WSS382','p21'),('WSS390','p21'),('WSS395','p21'),('WSS396','p21'),('WSS41','p21'),('WSS43','p21'),('WSS51','p21'),('WSS52','p21'),('WSS55','p21'),('WSS57','p21'),('WSS62','p21'),('WSS90','p21'),('WSS95','p21'),('WSS96','p21'),('WSS101','p22'),('WSS117','p22'),('WSS119','p22'),('WSS122','p22'),('WSS13','p22'),('WSS154','p22'),('WSS156','p22'),('WSS169','p22'),('WSS170','p22'),('WSS172','p22'),('WSS178','p22'),('WSS182','p22'),('WSS204','p22'),('WSS216','p22'),('WSS218','p22'),('WSS233','p22'),('WSS236','p22'),('WSS241','p22'),('WSS248','p22'),('WSS250','p22'),('WSS252','p22'),('WSS254','p22'),('WSS265','p22'),('WSS277','p22'),('WSS282','p22'),('WSS287','p22'),('WSS291','p22'),('WSS294','p22'),('WSS301','p22'),('WSS318','p22'),('WSS324','p22'),('WSS332','p22'),('WSS333','p22'),('WSS34','p22'),('WSS340','p22'),('WSS341','p22'),('WSS37','p22'),('WSS377','p22'),('WSS394','p22'),('WSS399','p22'),('WSS43','p22'),('WSS65','p22'),('WSS75','p22'),('WSS87','p22'),('WSS101','p23'),('WSS103','p23'),('WSS122','p23'),('WSS143','p23'),('WSS162','p23'),('WSS167','p23'),('WSS176','p23'),('WSS177','p23'),('WSS194','p23'),('WSS206','p23'),('WSS21','p23'),('WSS224','p23'),('WSS231','p23'),('WSS234','p23'),('WSS242','p23'),('WSS247','p23'),('WSS254','p23'),('WSS259','p23'),('WSS270','p23'),('WSS276','p23'),('WSS277','p23'),('WSS281','p23'),('WSS290','p23'),('WSS294','p23'),('WSS295','p23'),('WSS303','p23'),('WSS315','p23'),('WSS318','p23'),('WSS32','p23'),('WSS325','p23'),('WSS338','p23'),('WSS361','p23'),('WSS368','p23'),('WSS369','p23'),('WSS378','p23'),('WSS38','p23'),('WSS380','p23'),('WSS384','p23'),('WSS39','p23'),('WSS398','p23'),('WSS399','p23'),('WSS54','p23'),('WSS78','p23'),('WSS100','p24'),('WSS110','p24'),('WSS112','p24'),('WSS118','p24'),('WSS119','p24'),('WSS125','p24'),('WSS154','p24'),('WSS161','p24'),('WSS172','p24'),('WSS175','p24'),('WSS186','p24'),('WSS202','p24'),('WSS209','p24'),('WSS21','p24'),('WSS214','p24'),('WSS229','p24'),('WSS237','p24'),('WSS253','p24'),('WSS268','p24'),('WSS278','p24'),('WSS282','p24'),('WSS293','p24'),('WSS299','p24'),('WSS3','p24'),('WSS300','p24'),('WSS303','p24'),('WSS307','p24'),('WSS31','p24'),('WSS313','p24'),('WSS315','p24'),('WSS317','p24'),('WSS32','p24'),('WSS321','p24'),('WSS334','p24'),('WSS337','p24'),('WSS352','p24'),('WSS353','p24'),('WSS357','p24'),('WSS367','p24'),('WSS371','p24'),('WSS383','p24'),('WSS391','p24'),('WSS393','p24'),('WSS46','p24'),('WSS51','p24'),('WSS53','p24'),('WSS68','p24'),('WSS89','p24'),('WSS92','p24'),('WSS120','p25'),('WSS135','p25'),('WSS136','p25'),('WSS146','p25'),('WSS156','p25'),('WSS160','p25'),('WSS173','p25'),('WSS174','p25'),('WSS183','p25'),('WSS193','p25'),('WSS197','p25'),('WSS2','p25'),('WSS201','p25'),('WSS209','p25'),('WSS216','p25'),('WSS22','p25'),('WSS227','p25'),('WSS230','p25'),('WSS234','p25'),('WSS259','p25'),('WSS261','p25'),('WSS271','p25'),('WSS272','p25'),('WSS28','p25'),('WSS281','p25'),('WSS30','p25'),('WSS310','p25'),('WSS312','p25'),('WSS314','p25'),('WSS315','p25'),('WSS317','p25'),('WSS323','p25'),('WSS327','p25'),('WSS331','p25'),('WSS335','p25'),('WSS346','p25'),('WSS359','p25'),('WSS398','p25'),('WSS42','p25'),('WSS50','p25'),('WSS56','p25'),('WSS57','p25'),('WSS66','p25'),('WSS68','p25'),('WSS82','p25'),('WSS93','p25'),('WSS94','p25'),('WSS104','p26'),('WSS105','p26'),('WSS106','p26'),('WSS112','p26'),('WSS114','p26'),('WSS12','p26'),('WSS127','p26'),('WSS13','p26'),('WSS15','p26'),('WSS154','p26'),('WSS16','p26'),('WSS169','p26'),('WSS18','p26'),('WSS190','p26'),('WSS2','p26'),('WSS208','p26'),('WSS22','p26'),('WSS227','p26'),('WSS232','p26'),('WSS233','p26'),('WSS24','p26'),('WSS259','p26'),('WSS260','p26'),('WSS264','p26'),('WSS268','p26'),('WSS270','p26'),('WSS281','p26'),('WSS286','p26'),('WSS288','p26'),('WSS328','p26'),('WSS329','p26'),('WSS335','p26'),('WSS339','p26'),('WSS345','p26'),('WSS369','p26'),('WSS374','p26'),('WSS378','p26'),('WSS46','p26'),('WSS50','p26'),('WSS62','p26'),('WSS7','p26'),('WSS71','p26'),('WSS73','p26'),('WSS78','p26'),('WSS85','p26'),('WSS88','p26'),('WSS98','p26'),('WSS1','p27'),('WSS107','p27'),('WSS111','p27'),('WSS138','p27'),('WSS140','p27'),('WSS148','p27'),('WSS16','p27'),('WSS166','p27'),('WSS168','p27'),('WSS172','p27'),('WSS18','p27'),('WSS180','p27'),('WSS185','p27'),('WSS200','p27'),('WSS205','p27'),('WSS213','p27'),('WSS218','p27'),('WSS220','p27'),('WSS222','p27'),('WSS229','p27'),('WSS23','p27'),('WSS230','p27'),('WSS239','p27'),('WSS260','p27'),('WSS261','p27'),('WSS283','p27'),('WSS29','p27'),('WSS31','p27'),('WSS321','p27'),('WSS326','p27'),('WSS329','p27'),('WSS333','p27'),('WSS348','p27'),('WSS349','p27'),('WSS365','p27'),('WSS371','p27'),('WSS391','p27'),('WSS4','p27'),('WSS41','p27'),('WSS47','p27'),('WSS53','p27'),('WSS67','p27'),('WSS68','p27'),('WSS82','p27'),('WSS83','p27'),('WSS86','p27'),('WSS92','p27'),('WSS93','p27'),('WSS1','p28'),('WSS100','p28'),('WSS103','p28'),('WSS108','p28'),('WSS113','p28'),('WSS117','p28'),('WSS124','p28'),('WSS136','p28'),('WSS148','p28'),('WSS150','p28'),('WSS178','p28'),('WSS180','p28'),('WSS205','p28'),('WSS212','p28'),('WSS219','p28'),('WSS222','p28'),('WSS232','p28'),('WSS235','p28'),('WSS239','p28'),('WSS285','p28'),('WSS290','p28'),('WSS296','p28'),('WSS299','p28'),('WSS3','p28'),('WSS307','p28'),('WSS331','p28'),('WSS341','p28'),('WSS342','p28'),('WSS346','p28'),('WSS347','p28'),('WSS359','p28'),('WSS36','p28'),('WSS362','p28'),('WSS37','p28'),('WSS374','p28'),('WSS383','p28'),('WSS386','p28'),('WSS389','p28'),('WSS393','p28'),('WSS40','p28'),('WSS5','p28'),('WSS57','p28'),('WSS63','p28'),('WSS70','p28'),('WSS76','p28'),('WSS77','p28'),('WSS79','p28'),('WSS8','p28'),('WSS80','p28'),('WSS114','p29'),('WSS122','p29'),('WSS143','p29'),('WSS148','p29'),('WSS158','p29'),('WSS161','p29'),('WSS180','p29'),('WSS189','p29'),('WSS19','p29'),('WSS196','p29'),('WSS20','p29'),('WSS213','p29'),('WSS224','p29'),('WSS232','p29'),('WSS237','p29'),('WSS238','p29'),('WSS246','p29'),('WSS247','p29'),('WSS249','p29'),('WSS256','p29'),('WSS269','p29'),('WSS270','p29'),('WSS272','p29'),('WSS274','p29'),('WSS283','p29'),('WSS287','p29'),('WSS297','p29'),('WSS311','p29'),('WSS320','p29'),('WSS323','p29'),('WSS347','p29'),('WSS348','p29'),('WSS35','p29'),('WSS356','p29'),('WSS360','p29'),('WSS372','p29'),('WSS376','p29'),('WSS379','p29'),('WSS386','p29'),('WSS388','p29'),('WSS397','p29'),('WSS40','p29'),('WSS49','p29'),('WSS79','p29'),('WSS81','p29'),('WSS84','p29'),('WSS10','p3'),('WSS108','p3'),('WSS114','p3'),('WSS118','p3'),('WSS132','p3'),('WSS14','p3'),('WSS141','p3'),('WSS144','p3'),('WSS156','p3'),('WSS157','p3'),('WSS166','p3'),('WSS167','p3'),('WSS17','p3'),('WSS173','p3'),('WSS189','p3'),('WSS19','p3'),('WSS195','p3'),('WSS198','p3'),('WSS200','p3'),('WSS215','p3'),('WSS218','p3'),('WSS225','p3'),('WSS228','p3'),('WSS230','p3'),('WSS235','p3'),('WSS243','p3'),('WSS261','p3'),('WSS269','p3'),('WSS276','p3'),('WSS28','p3'),('WSS280','p3'),('WSS284','p3'),('WSS294','p3'),('WSS299','p3'),('WSS30','p3'),('WSS305','p3'),('WSS309','p3'),('WSS31','p3'),('WSS316','p3'),('WSS338','p3'),('WSS342','p3'),('WSS343','p3'),('WSS345','p3'),('WSS351','p3'),('WSS354','p3'),('WSS356','p3'),('WSS364','p3'),('WSS366','p3'),('WSS380','p3'),('WSS381','p3'),('WSS385','p3'),('WSS387','p3'),('WSS392','p3'),('WSS395','p3'),('WSS396','p3'),('WSS48','p3'),('WSS73','p3'),('WSS74','p3'),('WSS88','p3'),('WSS99','p3'),('WSS1','p30'),('WSS106','p30'),('WSS117','p30'),('WSS118','p30'),('WSS129','p30'),('WSS173','p30'),('WSS185','p30'),('WSS197','p30'),('WSS2','p30'),('WSS207','p30'),('WSS210','p30'),('WSS221','p30'),('WSS228','p30'),('WSS246','p30'),('WSS247','p30'),('WSS251','p30'),('WSS252','p30'),('WSS26','p30'),('WSS266','p30'),('WSS267','p30'),('WSS269','p30'),('WSS270','p30'),('WSS278','p30'),('WSS280','p30'),('WSS292','p30'),('WSS300','p30'),('WSS309','p30'),('WSS317','p30'),('WSS328','p30'),('WSS331','p30'),('WSS334','p30'),('WSS336','p30'),('WSS344','p30'),('WSS350','p30'),('WSS357','p30'),('WSS365','p30'),('WSS368','p30'),('WSS375','p30'),('WSS39','p30'),('WSS5','p30'),('WSS56','p30'),('WSS66','p30'),('WSS87','p30'),('WSS9','p30'),('WSS95','p30'),('WSS11','p4'),('WSS110','p4'),('WSS112','p4'),('WSS123','p4'),('WSS131','p4'),('WSS165','p4'),('WSS178','p4'),('WSS184','p4'),('WSS202','p4'),('WSS249','p4'),('WSS25','p4'),('WSS27','p4'),('WSS28','p4'),('WSS284','p4'),('WSS290','p4'),('WSS310','p4'),('WSS324','p4'),('WSS336','p4'),('WSS347','p4'),('WSS359','p4'),('WSS36','p4'),('WSS373','p4'),('WSS378','p4'),('WSS388','p4'),('WSS43','p4'),('WSS64','p4'),('WSS66','p4'),('WSS80','p4'),('WSS84','p4'),('WSS97','p4'),('WSS113','p5'),('WSS134','p5'),('WSS137','p5'),('WSS14','p5'),('WSS153','p5'),('WSS158','p5'),('WSS164','p5'),('WSS165','p5'),('WSS176','p5'),('WSS179','p5'),('WSS210','p5'),('WSS223','p5'),('WSS225','p5'),('WSS226','p5'),('WSS229','p5'),('WSS23','p5'),('WSS232','p5'),('WSS252','p5'),('WSS254','p5'),('WSS256','p5'),('WSS273','p5'),('WSS279','p5'),('WSS282','p5'),('WSS289','p5'),('WSS291','p5'),('WSS292','p5'),('WSS3','p5'),('WSS300','p5'),('WSS311','p5'),('WSS32','p5'),('WSS322','p5'),('WSS325','p5'),('WSS33','p5'),('WSS332','p5'),('WSS333','p5'),('WSS337','p5'),('WSS341','p5'),('WSS343','p5'),('WSS353','p5'),('WSS362','p5'),('WSS366','p5'),('WSS368','p5'),('WSS370','p5'),('WSS372','p5'),('WSS395','p5'),('WSS397','p5'),('WSS58','p5'),('WSS6','p5'),('WSS62','p5'),('WSS70','p5'),('WSS81','p5'),('WSS103','p6'),('WSS109','p6'),('WSS111','p6'),('WSS124','p6'),('WSS127','p6'),('WSS136','p6'),('WSS137','p6'),('WSS15','p6'),('WSS152','p6'),('WSS163','p6'),('WSS164','p6'),('WSS192','p6'),('WSS200','p6'),('WSS202','p6'),('WSS203','p6'),('WSS221','p6'),('WSS234','p6'),('WSS238','p6'),('WSS240','p6'),('WSS241','p6'),('WSS243','p6'),('WSS258','p6'),('WSS262','p6'),('WSS291','p6'),('WSS295','p6'),('WSS297','p6'),('WSS301','p6'),('WSS321','p6'),('WSS329','p6'),('WSS332','p6'),('WSS352','p6'),('WSS354','p6'),('WSS355','p6'),('WSS363','p6'),('WSS366','p6'),('WSS367','p6'),('WSS381','p6'),('WSS387','p6'),('WSS389','p6'),('WSS40','p6'),('WSS45','p6'),('WSS48','p6'),('WSS53','p6'),('WSS60','p6'),('WSS80','p6'),('WSS82','p6'),('WSS85','p6'),('WSS93','p6'),('WSS107','p7'),('WSS119','p7'),('WSS121','p7'),('WSS126','p7'),('WSS136','p7'),('WSS137','p7'),('WSS139','p7'),('WSS141','p7'),('WSS145','p7'),('WSS153','p7'),('WSS157','p7'),('WSS162','p7'),('WSS167','p7'),('WSS168','p7'),('WSS174','p7'),('WSS175','p7'),('WSS189','p7'),('WSS191','p7'),('WSS194','p7'),('WSS196','p7'),('WSS197','p7'),('WSS201','p7'),('WSS208','p7'),('WSS210','p7'),('WSS217','p7'),('WSS223','p7'),('WSS236','p7'),('WSS255','p7'),('WSS257','p7'),('WSS269','p7'),('WSS276','p7'),('WSS285','p7'),('WSS288','p7'),('WSS301','p7'),('WSS303','p7'),('WSS305','p7'),('WSS317','p7'),('WSS319','p7'),('WSS331','p7'),('WSS342','p7'),('WSS350','p7'),('WSS360','p7'),('WSS361','p7'),('WSS370','p7'),('WSS376','p7'),('WSS48','p7'),('WSS55','p7'),('WSS63','p7'),('WSS65','p7'),('WSS70','p7'),('WSS79','p7'),('WSS8','p7'),('WSS83','p7'),('WSS96','p7'),('WSS10','p8'),('WSS116','p8'),('WSS12','p8'),('WSS121','p8'),('WSS127','p8'),('WSS133','p8'),('WSS138','p8'),('WSS140','p8'),('WSS147','p8'),('WSS149','p8'),('WSS159','p8'),('WSS170','p8'),('WSS171','p8'),('WSS177','p8'),('WSS198','p8'),('WSS199','p8'),('WSS24','p8'),('WSS241','p8'),('WSS254','p8'),('WSS262','p8'),('WSS263','p8'),('WSS264','p8'),('WSS273','p8'),('WSS278','p8'),('WSS296','p8'),('WSS30','p8'),('WSS301','p8'),('WSS31','p8'),('WSS310','p8'),('WSS316','p8'),('WSS319','p8'),('WSS324','p8'),('WSS339','p8'),('WSS34','p8'),('WSS351','p8'),('WSS355','p8'),('WSS362','p8'),('WSS364','p8'),('WSS38','p8'),('WSS385','p8'),('WSS390','p8'),('WSS44','p8'),('WSS50','p8'),('WSS64','p8'),('WSS67','p8'),('WSS74','p8'),('WSS87','p8'),('WSS97','p8'),('WSS99','p8'),('WSS100','p9'),('WSS116','p9'),('WSS130','p9'),('WSS131','p9'),('WSS132','p9'),('WSS140','p9'),('WSS142','p9'),('WSS144','p9'),('WSS145','p9'),('WSS146','p9'),('WSS152','p9'),('WSS155','p9'),('WSS158','p9'),('WSS159','p9'),('WSS163','p9'),('WSS168','p9'),('WSS179','p9'),('WSS187','p9'),('WSS188','p9'),('WSS20','p9'),('WSS211','p9'),('WSS216','p9'),('WSS235','p9'),('WSS243','p9'),('WSS245','p9'),('WSS253','p9'),('WSS257','p9'),('WSS266','p9'),('WSS27','p9'),('WSS271','p9'),('WSS273','p9'),('WSS274','p9'),('WSS280','p9'),('WSS289','p9'),('WSS298','p9'),('WSS302','p9'),('WSS316','p9'),('WSS340','p9'),('WSS345','p9'),('WSS348','p9'),('WSS351','p9'),('WSS353','p9'),('WSS367','p9'),('WSS373','p9'),('WSS377','p9'),('WSS379','p9'),('WSS383','p9'),('WSS395','p9'),('WSS46','p9'),('WSS6','p9'),('WSS69','p9'),('WSS77','p9'),('WSS83','p9'),('WSS94','p9'),('WSS97','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS354'),(1,2,'WSS25'),(2,1,'WSS97'),(2,2,'WSS373'),(3,1,'WSS191'),(3,2,'WSS360'),(4,1,'WSS102'),(4,2,'WSS192'),(5,1,'WSS378'),(5,2,'WSS348'),(6,1,'WSS22'),(6,2,'WSS45'),(6,3,'WSS31'),(7,1,'WSS317'),(7,2,'WSS36'),(8,1,'WSS242'),(8,2,'WSS346'),(9,1,'WSS68'),(9,2,'WSS313'),(10,1,'WSS79'),(10,2,'WSS48'),(11,1,'WSS400'),(11,2,'WSS37'),(12,1,'WSS149'),(12,2,'WSS71'),(13,1,'WSS133'),(13,2,'WSS253'),(14,1,'WSS336'),(14,2,'WSS43'),(15,1,'WSS42'),(15,2,'WSS280'),(16,1,'WSS14'),(16,2,'WSS263'),(17,1,'WSS237'),(17,2,'WSS4'),(18,1,'WSS217'),(18,2,'WSS249'),(19,1,'WSS261'),(19,2,'WSS147'),(20,1,'WSS372'),(20,2,'WSS41'),(21,1,'WSS394'),(21,2,'WSS48'),(21,2,'WSS49'),(22,1,'WSS31'),(22,2,'WSS46'),(23,1,'WSS373'),(23,2,'WSS273'),(24,1,'WSS371'),(24,2,'WSS33'),(25,1,'WSS330'),(25,2,'WSS103'),(26,1,'WSS48'),(26,2,'WSS372'),(27,1,'WSS330'),(27,2,'WSS371'),(28,1,'WSS307'),(28,2,'WSS316'),(29,1,'WSS14'),(29,2,'WSS273'),(30,1,'WSS373'),(30,2,'WSS81'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-07-06  2:17:36
