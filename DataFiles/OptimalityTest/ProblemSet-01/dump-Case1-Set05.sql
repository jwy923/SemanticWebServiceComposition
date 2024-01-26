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
INSERT INTO `initialgoalparameter` VALUES (1,'I','p1'),(3,'I','p1'),(4,'I','p1'),(5,'I','p1'),(7,'I','p1'),(15,'G','p1'),(16,'I','p1'),(19,'I','p1'),(20,'G','p1'),(21,'I','p1'),(22,'I','p1'),(24,'I','p1'),(1,'I','p10'),(6,'G','p10'),(7,'I','p10'),(9,'I','p10'),(10,'G','p10'),(13,'I','p10'),(27,'I','p10'),(28,'I','p10'),(5,'I','p11'),(9,'I','p11'),(10,'I','p11'),(13,'I','p11'),(14,'I','p11'),(16,'I','p11'),(29,'I','p11'),(2,'I','p12'),(4,'G','p12'),(6,'I','p12'),(15,'I','p12'),(24,'G','p12'),(26,'I','p12'),(29,'I','p12'),(2,'G','p13'),(9,'I','p13'),(12,'I','p13'),(16,'I','p13'),(18,'I','p13'),(19,'I','p13'),(22,'I','p13'),(24,'I','p13'),(26,'I','p13'),(27,'G','p13'),(29,'I','p13'),(1,'I','p14'),(2,'I','p14'),(5,'I','p14'),(7,'G','p14'),(11,'I','p14'),(12,'G','p14'),(17,'I','p14'),(20,'G','p14'),(23,'I','p14'),(26,'I','p14'),(2,'I','p15'),(3,'G','p15'),(4,'I','p15'),(5,'G','p15'),(6,'I','p15'),(10,'I','p15'),(17,'G','p15'),(29,'I','p15'),(1,'G','p16'),(5,'I','p16'),(6,'I','p16'),(7,'I','p16'),(8,'G','p16'),(13,'G','p16'),(15,'I','p16'),(18,'I','p16'),(22,'I','p16'),(25,'I','p16'),(26,'I','p16'),(27,'I','p16'),(2,'I','p17'),(3,'I','p17'),(8,'I','p17'),(12,'I','p17'),(16,'I','p17'),(17,'I','p17'),(24,'I','p17'),(27,'I','p17'),(29,'I','p17'),(1,'I','p18'),(3,'I','p18'),(4,'I','p18'),(6,'I','p18'),(8,'I','p18'),(10,'I','p18'),(12,'I','p18'),(17,'G','p18'),(21,'I','p18'),(1,'I','p19'),(4,'G','p19'),(10,'I','p19'),(11,'I','p19'),(23,'G','p19'),(25,'G','p19'),(29,'G','p19'),(2,'I','p2'),(3,'G','p2'),(9,'I','p2'),(10,'I','p2'),(11,'I','p2'),(14,'I','p2'),(16,'I','p2'),(21,'G','p2'),(23,'I','p2'),(26,'G','p2'),(3,'I','p20'),(5,'I','p20'),(6,'I','p20'),(7,'G','p20'),(9,'G','p20'),(11,'I','p20'),(12,'I','p20'),(13,'I','p20'),(14,'I','p20'),(16,'I','p20'),(18,'I','p20'),(20,'I','p20'),(21,'G','p20'),(25,'I','p20'),(27,'I','p20'),(28,'I','p20'),(3,'I','p21'),(7,'I','p21'),(10,'I','p21'),(11,'G','p21'),(15,'I','p21'),(17,'I','p21'),(19,'I','p21'),(20,'I','p21'),(21,'I','p21'),(24,'I','p21'),(26,'I','p21'),(27,'G','p21'),(28,'I','p21'),(5,'I','p22'),(12,'I','p22'),(14,'I','p22'),(17,'I','p22'),(20,'I','p22'),(22,'I','p22'),(23,'I','p22'),(28,'G','p22'),(5,'I','p23'),(6,'I','p23'),(11,'I','p23'),(13,'I','p23'),(19,'G','p23'),(20,'I','p23'),(23,'I','p23'),(25,'G','p23'),(26,'I','p23'),(28,'I','p23'),(29,'I','p23'),(2,'I','p24'),(14,'I','p24'),(16,'I','p24'),(17,'I','p24'),(18,'G','p24'),(20,'I','p24'),(21,'I','p24'),(28,'I','p24'),(30,'I','p24'),(1,'I','p25'),(6,'I','p25'),(7,'I','p25'),(9,'G','p25'),(13,'I','p25'),(15,'I','p25'),(17,'I','p25'),(23,'I','p25'),(30,'I','p25'),(3,'I','p26'),(4,'I','p26'),(16,'G','p26'),(18,'I','p26'),(19,'I','p26'),(20,'I','p26'),(22,'I','p26'),(25,'I','p26'),(26,'I','p26'),(30,'I','p26'),(1,'I','p27'),(4,'I','p27'),(7,'I','p27'),(10,'I','p27'),(15,'I','p27'),(19,'G','p27'),(22,'I','p27'),(24,'I','p27'),(27,'I','p27'),(28,'I','p27'),(1,'G','p28'),(9,'I','p28'),(12,'G','p28'),(14,'I','p28'),(15,'I','p28'),(18,'I','p28'),(21,'I','p28'),(22,'G','p28'),(23,'G','p28'),(25,'I','p28'),(27,'I','p28'),(30,'I','p28'),(1,'I','p29'),(4,'I','p29'),(8,'I','p29'),(9,'I','p29'),(13,'I','p29'),(14,'G','p29'),(15,'I','p29'),(18,'G','p29'),(21,'I','p29'),(24,'I','p29'),(26,'I','p29'),(28,'I','p29'),(29,'I','p29'),(3,'I','p3'),(6,'G','p3'),(9,'I','p3'),(11,'I','p3'),(12,'I','p3'),(13,'I','p3'),(19,'I','p3'),(22,'I','p3'),(25,'I','p3'),(29,'G','p3'),(30,'I','p3'),(2,'I','p30'),(8,'I','p30'),(9,'I','p30'),(11,'I','p30'),(16,'I','p30'),(19,'I','p30'),(21,'I','p30'),(22,'I','p30'),(23,'I','p30'),(30,'G','p30'),(2,'I','p4'),(5,'G','p4'),(7,'I','p4'),(8,'I','p4'),(17,'I','p4'),(18,'I','p4'),(20,'I','p4'),(23,'I','p4'),(24,'I','p4'),(25,'I','p4'),(30,'I','p4'),(3,'I','p5'),(7,'I','p5'),(8,'G','p5'),(13,'G','p5'),(15,'I','p5'),(19,'I','p5'),(21,'I','p5'),(22,'G','p5'),(24,'G','p5'),(26,'G','p5'),(29,'I','p5'),(30,'I','p5'),(8,'I','p6'),(10,'I','p6'),(14,'I','p6'),(28,'I','p6'),(4,'I','p7'),(6,'I','p7'),(8,'I','p7'),(10,'G','p7'),(11,'G','p7'),(12,'I','p7'),(14,'G','p7'),(17,'I','p7'),(18,'I','p7'),(24,'I','p7'),(27,'I','p7'),(30,'I','p7'),(4,'I','p8'),(5,'I','p8'),(8,'I','p8'),(12,'I','p8'),(13,'I','p8'),(14,'I','p8'),(16,'G','p8'),(20,'I','p8'),(23,'I','p8'),(25,'I','p8'),(27,'I','p8'),(30,'G','p8'),(2,'G','p9'),(11,'I','p9'),(15,'G','p9'),(18,'I','p9'),(19,'I','p9'),(25,'I','p9'),(28,'G','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS106','p1'),('WSS138','p1'),('WSS170','p1'),('WSS25','p1'),('WSS3','p1'),('WSS40','p1'),('WSS53','p1'),('WSS87','p1'),('WSS115','p10'),('WSS131','p10'),('WSS151','p10'),('WSS177','p10'),('WSS188','p10'),('WSS31','p10'),('WSS37','p10'),('WSS41','p10'),('WSS49','p10'),('WSS58','p10'),('WSS63','p10'),('WSS64','p10'),('WSS99','p10'),('WSS114','p11'),('WSS139','p11'),('WSS141','p11'),('WSS162','p11'),('WSS21','p11'),('WSS33','p11'),('WSS64','p11'),('WSS82','p11'),('WSS86','p11'),('WSS97','p11'),('WSS102','p12'),('WSS120','p12'),('WSS14','p12'),('WSS161','p12'),('WSS169','p12'),('WSS18','p12'),('WSS185','p12'),('WSS189','p12'),('WSS191','p12'),('WSS42','p12'),('WSS62','p12'),('WSS90','p12'),('WSS98','p12'),('WSS105','p13'),('WSS107','p13'),('WSS120','p13'),('WSS126','p13'),('WSS136','p13'),('WSS149','p13'),('WSS195','p13'),('WSS198','p13'),('WSS22','p13'),('WSS47','p13'),('WSS67','p13'),('WSS89','p13'),('WSS92','p13'),('WSS124','p14'),('WSS132','p14'),('WSS137','p14'),('WSS152','p14'),('WSS164','p14'),('WSS184','p14'),('WSS23','p14'),('WSS24','p14'),('WSS30','p14'),('WSS33','p14'),('WSS34','p14'),('WSS36','p14'),('WSS45','p14'),('WSS6','p14'),('WSS65','p14'),('WSS79','p14'),('WSS108','p15'),('WSS119','p15'),('WSS134','p15'),('WSS137','p15'),('WSS157','p15'),('WSS170','p15'),('WSS192','p15'),('WSS20','p15'),('WSS31','p15'),('WSS34','p15'),('WSS36','p15'),('WSS38','p15'),('WSS5','p15'),('WSS63','p15'),('WSS66','p15'),('WSS107','p16'),('WSS123','p16'),('WSS141','p16'),('WSS15','p16'),('WSS152','p16'),('WSS155','p16'),('WSS159','p16'),('WSS174','p16'),('WSS28','p16'),('WSS39','p16'),('WSS52','p16'),('WSS55','p16'),('WSS68','p16'),('WSS82','p16'),('WSS96','p16'),('WSS112','p17'),('WSS149','p17'),('WSS163','p17'),('WSS172','p17'),('WSS187','p17'),('WSS25','p17'),('WSS48','p17'),('WSS50','p17'),('WSS51','p17'),('WSS70','p17'),('WSS89','p17'),('WSS92','p17'),('WSS119','p18'),('WSS12','p18'),('WSS122','p18'),('WSS156','p18'),('WSS189','p18'),('WSS199','p18'),('WSS35','p18'),('WSS5','p18'),('WSS54','p18'),('WSS6','p18'),('WSS67','p18'),('WSS74','p18'),('WSS83','p18'),('WSS103','p19'),('WSS121','p19'),('WSS139','p19'),('WSS140','p19'),('WSS150','p19'),('WSS19','p19'),('WSS51','p19'),('WSS73','p19'),('WSS75','p19'),('WSS84','p19'),('WSS101','p2'),('WSS109','p2'),('WSS112','p2'),('WSS115','p2'),('WSS142','p2'),('WSS162','p2'),('WSS167','p2'),('WSS173','p2'),('WSS179','p2'),('WSS188','p2'),('WSS197','p2'),('WSS198','p2'),('WSS22','p2'),('WSS3','p2'),('WSS32','p2'),('WSS47','p2'),('WSS57','p2'),('WSS75','p2'),('WSS12','p20'),('WSS144','p20'),('WSS148','p20'),('WSS151','p20'),('WSS160','p20'),('WSS165','p20'),('WSS17','p20'),('WSS176','p20'),('WSS196','p20'),('WSS26','p20'),('WSS27','p20'),('WSS58','p20'),('WSS61','p20'),('WSS8','p20'),('WSS93','p20'),('WSS1','p21'),('WSS100','p21'),('WSS126','p21'),('WSS129','p21'),('WSS135','p21'),('WSS195','p21'),('WSS197','p21'),('WSS200','p21'),('WSS77','p21'),('WSS95','p21'),('WSS140','p22'),('WSS154','p22'),('WSS175','p22'),('WSS180','p22'),('WSS183','p22'),('WSS38','p22'),('WSS4','p22'),('WSS49','p22'),('WSS61','p22'),('WSS87','p22'),('WSS99','p22'),('WSS103','p23'),('WSS134','p23'),('WSS145','p23'),('WSS147','p23'),('WSS160','p23'),('WSS185','p23'),('WSS29','p23'),('WSS48','p23'),('WSS78','p23'),('WSS81','p23'),('WSS9','p23'),('WSS101','p24'),('WSS102','p24'),('WSS104','p24'),('WSS109','p24'),('WSS110','p24'),('WSS132','p24'),('WSS133','p24'),('WSS145','p24'),('WSS173','p24'),('WSS19','p24'),('WSS27','p24'),('WSS28','p24'),('WSS30','p24'),('WSS35','p24'),('WSS46','p24'),('WSS56','p24'),('WSS65','p24'),('WSS66','p24'),('WSS70','p24'),('WSS74','p24'),('WSS8','p24'),('WSS85','p24'),('WSS97','p24'),('WSS113','p25'),('WSS135','p25'),('WSS143','p25'),('WSS144','p25'),('WSS164','p25'),('WSS167','p25'),('WSS169','p25'),('WSS183','p25'),('WSS50','p25'),('WSS56','p25'),('WSS59','p25'),('WSS88','p25'),('WSS91','p25'),('WSS1','p26'),('WSS10','p26'),('WSS104','p26'),('WSS146','p26'),('WSS153','p26'),('WSS165','p26'),('WSS177','p26'),('WSS181','p26'),('WSS20','p26'),('WSS43','p26'),('WSS45','p26'),('WSS54','p26'),('WSS73','p26'),('WSS100','p27'),('WSS108','p27'),('WSS122','p27'),('WSS146','p27'),('WSS168','p27'),('WSS172','p27'),('WSS176','p27'),('WSS190','p27'),('WSS193','p27'),('WSS2','p27'),('WSS42','p27'),('WSS46','p27'),('WSS69','p27'),('WSS7','p27'),('WSS81','p27'),('WSS86','p27'),('WSS90','p27'),('WSS94','p27'),('WSS106','p28'),('WSS118','p28'),('WSS121','p28'),('WSS138','p28'),('WSS15','p28'),('WSS16','p28'),('WSS17','p28'),('WSS174','p28'),('WSS180','p28'),('WSS194','p28'),('WSS23','p28'),('WSS84','p28'),('WSS96','p28'),('WSS114','p29'),('WSS166','p29'),('WSS171','p29'),('WSS175','p29'),('WSS182','p29'),('WSS196','p29'),('WSS59','p29'),('WSS60','p29'),('WSS68','p29'),('WSS76','p29'),('WSS79','p29'),('WSS83','p29'),('WSS95','p29'),('WSS116','p3'),('WSS117','p3'),('WSS124','p3'),('WSS128','p3'),('WSS158','p3'),('WSS178','p3'),('WSS184','p3'),('WSS21','p3'),('WSS32','p3'),('WSS39','p3'),('WSS4','p3'),('WSS60','p3'),('WSS72','p3'),('WSS80','p3'),('WSS88','p3'),('WSS105','p30'),('WSS110','p30'),('WSS125','p30'),('WSS143','p30'),('WSS147','p30'),('WSS156','p30'),('WSS168','p30'),('WSS179','p30'),('WSS18','p30'),('WSS187','p30'),('WSS194','p30'),('WSS200','p30'),('WSS24','p30'),('WSS55','p30'),('WSS71','p30'),('WSS78','p30'),('WSS85','p30'),('WSS10','p4'),('WSS11','p4'),('WSS158','p4'),('WSS16','p4'),('WSS44','p4'),('WSS76','p4'),('WSS93','p4'),('WSS94','p4'),('WSS117','p5'),('WSS127','p5'),('WSS129','p5'),('WSS133','p5'),('WSS154','p5'),('WSS161','p5'),('WSS186','p5'),('WSS7','p5'),('WSS80','p5'),('WSS111','p6'),('WSS113','p6'),('WSS130','p6'),('WSS153','p6'),('WSS157','p6'),('WSS159','p6'),('WSS192','p6'),('WSS193','p6'),('WSS26','p6'),('WSS62','p6'),('WSS91','p6'),('WSS13','p7'),('WSS155','p7'),('WSS163','p7'),('WSS182','p7'),('WSS29','p7'),('WSS53','p7'),('WSS57','p7'),('WSS71','p7'),('WSS72','p7'),('WSS77','p7'),('WSS118','p8'),('WSS123','p8'),('WSS125','p8'),('WSS127','p8'),('WSS128','p8'),('WSS136','p8'),('WSS142','p8'),('WSS148','p8'),('WSS166','p8'),('WSS171','p8'),('WSS178','p8'),('WSS181','p8'),('WSS186','p8'),('WSS43','p8'),('WSS44','p8'),('WSS9','p8'),('WSS11','p9'),('WSS116','p9'),('WSS13','p9'),('WSS14','p9'),('WSS150','p9'),('WSS2','p9'),('WSS37','p9'),('WSS41','p9'),('WSS52','p9'),('WSS69','p9'),('WSS98','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS1','p1'),('WSS100','p1'),('WSS108','p1'),('WSS112','p1'),('WSS113','p1'),('WSS122','p1'),('WSS129','p1'),('WSS139','p1'),('WSS142','p1'),('WSS167','p1'),('WSS170','p1'),('WSS172','p1'),('WSS173','p1'),('WSS175','p1'),('WSS192','p1'),('WSS195','p1'),('WSS33','p1'),('WSS39','p1'),('WSS41','p1'),('WSS59','p1'),('WSS62','p1'),('WSS70','p1'),('WSS72','p1'),('WSS74','p1'),('WSS79','p1'),('WSS8','p1'),('WSS80','p1'),('WSS82','p1'),('WSS84','p1'),('WSS91','p1'),('WSS101','p10'),('WSS105','p10'),('WSS131','p10'),('WSS132','p10'),('WSS134','p10'),('WSS135','p10'),('WSS140','p10'),('WSS147','p10'),('WSS154','p10'),('WSS157','p10'),('WSS175','p10'),('WSS19','p10'),('WSS194','p10'),('WSS3','p10'),('WSS48','p10'),('WSS58','p10'),('WSS6','p10'),('WSS63','p10'),('WSS124','p11'),('WSS128','p11'),('WSS13','p11'),('WSS157','p11'),('WSS160','p11'),('WSS162','p11'),('WSS172','p11'),('WSS187','p11'),('WSS22','p11'),('WSS26','p11'),('WSS36','p11'),('WSS40','p11'),('WSS44','p11'),('WSS5','p11'),('WSS60','p11'),('WSS63','p11'),('WSS78','p11'),('WSS86','p11'),('WSS89','p11'),('WSS95','p11'),('WSS100','p12'),('WSS102','p12'),('WSS110','p12'),('WSS116','p12'),('WSS124','p12'),('WSS127','p12'),('WSS134','p12'),('WSS145','p12'),('WSS148','p12'),('WSS162','p12'),('WSS169','p12'),('WSS170','p12'),('WSS171','p12'),('WSS174','p12'),('WSS175','p12'),('WSS18','p12'),('WSS180','p12'),('WSS194','p12'),('WSS2','p12'),('WSS23','p12'),('WSS24','p12'),('WSS26','p12'),('WSS34','p12'),('WSS46','p12'),('WSS47','p12'),('WSS59','p12'),('WSS61','p12'),('WSS74','p12'),('WSS89','p12'),('WSS96','p12'),('WSS10','p13'),('WSS105','p13'),('WSS108','p13'),('WSS112','p13'),('WSS119','p13'),('WSS124','p13'),('WSS127','p13'),('WSS128','p13'),('WSS129','p13'),('WSS136','p13'),('WSS138','p13'),('WSS139','p13'),('WSS140','p13'),('WSS150','p13'),('WSS178','p13'),('WSS180','p13'),('WSS183','p13'),('WSS184','p13'),('WSS187','p13'),('WSS2','p13'),('WSS28','p13'),('WSS29','p13'),('WSS30','p13'),('WSS4','p13'),('WSS65','p13'),('WSS72','p13'),('WSS87','p13'),('WSS91','p13'),('WSS92','p13'),('WSS110','p14'),('WSS113','p14'),('WSS118','p14'),('WSS12','p14'),('WSS145','p14'),('WSS151','p14'),('WSS171','p14'),('WSS172','p14'),('WSS174','p14'),('WSS180','p14'),('WSS181','p14'),('WSS195','p14'),('WSS196','p14'),('WSS36','p14'),('WSS44','p14'),('WSS50','p14'),('WSS58','p14'),('WSS61','p14'),('WSS69','p14'),('WSS70','p14'),('WSS72','p14'),('WSS79','p14'),('WSS81','p14'),('WSS84','p14'),('WSS94','p14'),('WSS1','p15'),('WSS103','p15'),('WSS107','p15'),('WSS123','p15'),('WSS144','p15'),('WSS146','p15'),('WSS154','p15'),('WSS155','p15'),('WSS163','p15'),('WSS173','p15'),('WSS178','p15'),('WSS70','p15'),('WSS86','p15'),('WSS89','p15'),('WSS100','p16'),('WSS115','p16'),('WSS118','p16'),('WSS120','p16'),('WSS132','p16'),('WSS135','p16'),('WSS136','p16'),('WSS141','p16'),('WSS159','p16'),('WSS177','p16'),('WSS196','p16'),('WSS24','p16'),('WSS32','p16'),('WSS37','p16'),('WSS47','p16'),('WSS5','p16'),('WSS63','p16'),('WSS67','p16'),('WSS7','p16'),('WSS73','p16'),('WSS77','p16'),('WSS84','p16'),('WSS85','p16'),('WSS90','p16'),('WSS93','p16'),('WSS10','p17'),('WSS112','p17'),('WSS114','p17'),('WSS120','p17'),('WSS128','p17'),('WSS139','p17'),('WSS14','p17'),('WSS141','p17'),('WSS153','p17'),('WSS164','p17'),('WSS176','p17'),('WSS185','p17'),('WSS19','p17'),('WSS200','p17'),('WSS22','p17'),('WSS27','p17'),('WSS41','p17'),('WSS42','p17'),('WSS46','p17'),('WSS51','p17'),('WSS68','p17'),('WSS69','p17'),('WSS86','p17'),('WSS93','p17'),('WSS102','p18'),('WSS115','p18'),('WSS121','p18'),('WSS125','p18'),('WSS130','p18'),('WSS146','p18'),('WSS148','p18'),('WSS149','p18'),('WSS158','p18'),('WSS17','p18'),('WSS193','p18'),('WSS22','p18'),('WSS27','p18'),('WSS28','p18'),('WSS33','p18'),('WSS34','p18'),('WSS35','p18'),('WSS38','p18'),('WSS42','p18'),('WSS43','p18'),('WSS46','p18'),('WSS49','p18'),('WSS57','p18'),('WSS61','p18'),('WSS76','p18'),('WSS79','p18'),('WSS81','p18'),('WSS93','p18'),('WSS96','p18'),('WSS99','p18'),('WSS104','p19'),('WSS111','p19'),('WSS117','p19'),('WSS119','p19'),('WSS128','p19'),('WSS130','p19'),('WSS133','p19'),('WSS134','p19'),('WSS137','p19'),('WSS143','p19'),('WSS155','p19'),('WSS163','p19'),('WSS169','p19'),('WSS174','p19'),('WSS181','p19'),('WSS195','p19'),('WSS200','p19'),('WSS3','p19'),('WSS43','p19'),('WSS49','p19'),('WSS58','p19'),('WSS64','p19'),('WSS108','p2'),('WSS117','p2'),('WSS126','p2'),('WSS131','p2'),('WSS136','p2'),('WSS137','p2'),('WSS140','p2'),('WSS156','p2'),('WSS159','p2'),('WSS176','p2'),('WSS179','p2'),('WSS18','p2'),('WSS20','p2'),('WSS27','p2'),('WSS30','p2'),('WSS34','p2'),('WSS38','p2'),('WSS53','p2'),('WSS60','p2'),('WSS64','p2'),('WSS71','p2'),('WSS75','p2'),('WSS83','p2'),('WSS9','p2'),('WSS97','p2'),('WSS109','p20'),('WSS11','p20'),('WSS125','p20'),('WSS126','p20'),('WSS145','p20'),('WSS147','p20'),('WSS151','p20'),('WSS165','p20'),('WSS169','p20'),('WSS2','p20'),('WSS26','p20'),('WSS37','p20'),('WSS38','p20'),('WSS39','p20'),('WSS45','p20'),('WSS47','p20'),('WSS51','p20'),('WSS66','p20'),('WSS68','p20'),('WSS7','p20'),('WSS83','p20'),('WSS84','p20'),('WSS88','p20'),('WSS91','p20'),('WSS95','p20'),('WSS10','p21'),('WSS100','p21'),('WSS106','p21'),('WSS112','p21'),('WSS120','p21'),('WSS146','p21'),('WSS148','p21'),('WSS15','p21'),('WSS151','p21'),('WSS152','p21'),('WSS155','p21'),('WSS163','p21'),('WSS165','p21'),('WSS17','p21'),('WSS191','p21'),('WSS198','p21'),('WSS21','p21'),('WSS25','p21'),('WSS29','p21'),('WSS33','p21'),('WSS35','p21'),('WSS39','p21'),('WSS47','p21'),('WSS52','p21'),('WSS56','p21'),('WSS6','p21'),('WSS67','p21'),('WSS73','p21'),('WSS9','p21'),('WSS97','p21'),('WSS102','p22'),('WSS103','p22'),('WSS108','p22'),('WSS123','p22'),('WSS132','p22'),('WSS141','p22'),('WSS147','p22'),('WSS150','p22'),('WSS152','p22'),('WSS156','p22'),('WSS158','p22'),('WSS164','p22'),('WSS171','p22'),('WSS177','p22'),('WSS182','p22'),('WSS185','p22'),('WSS188','p22'),('WSS191','p22'),('WSS21','p22'),('WSS31','p22'),('WSS33','p22'),('WSS37','p22'),('WSS4','p22'),('WSS44','p22'),('WSS53','p22'),('WSS55','p22'),('WSS60','p22'),('WSS68','p22'),('WSS7','p22'),('WSS88','p22'),('WSS96','p22'),('WSS98','p22'),('WSS10','p23'),('WSS106','p23'),('WSS107','p23'),('WSS11','p23'),('WSS121','p23'),('WSS138','p23'),('WSS14','p23'),('WSS149','p23'),('WSS154','p23'),('WSS158','p23'),('WSS162','p23'),('WSS172','p23'),('WSS187','p23'),('WSS189','p23'),('WSS27','p23'),('WSS43','p23'),('WSS50','p23'),('WSS54','p23'),('WSS55','p23'),('WSS57','p23'),('WSS62','p23'),('WSS64','p23'),('WSS1','p24'),('WSS114','p24'),('WSS122','p24'),('WSS14','p24'),('WSS156','p24'),('WSS158','p24'),('WSS16','p24'),('WSS179','p24'),('WSS183','p24'),('WSS188','p24'),('WSS40','p24'),('WSS65','p24'),('WSS72','p24'),('WSS73','p24'),('WSS77','p24'),('WSS81','p24'),('WSS83','p24'),('WSS86','p24'),('WSS88','p24'),('WSS9','p24'),('WSS96','p24'),('WSS101','p25'),('WSS114','p25'),('WSS119','p25'),('WSS127','p25'),('WSS130','p25'),('WSS131','p25'),('WSS14','p25'),('WSS149','p25'),('WSS174','p25'),('WSS178','p25'),('WSS183','p25'),('WSS188','p25'),('WSS198','p25'),('WSS25','p25'),('WSS26','p25'),('WSS4','p25'),('WSS48','p25'),('WSS49','p25'),('WSS55','p25'),('WSS57','p25'),('WSS71','p25'),('WSS78','p25'),('WSS87','p25'),('WSS99','p25'),('WSS109','p26'),('WSS119','p26'),('WSS12','p26'),('WSS139','p26'),('WSS142','p26'),('WSS150','p26'),('WSS156','p26'),('WSS157','p26'),('WSS159','p26'),('WSS160','p26'),('WSS161','p26'),('WSS163','p26'),('WSS166','p26'),('WSS167','p26'),('WSS171','p26'),('WSS184','p26'),('WSS48','p26'),('WSS5','p26'),('WSS64','p26'),('WSS71','p26'),('WSS73','p26'),('WSS75','p26'),('WSS77','p26'),('WSS80','p26'),('WSS9','p26'),('WSS99','p26'),('WSS104','p27'),('WSS123','p27'),('WSS157','p27'),('WSS180','p27'),('WSS182','p27'),('WSS188','p27'),('WSS189','p27'),('WSS190','p27'),('WSS199','p27'),('WSS23','p27'),('WSS31','p27'),('WSS36','p27'),('WSS4','p27'),('WSS45','p27'),('WSS67','p27'),('WSS7','p27'),('WSS76','p27'),('WSS78','p27'),('WSS80','p27'),('WSS90','p27'),('WSS93','p27'),('WSS98','p27'),('WSS104','p28'),('WSS106','p28'),('WSS117','p28'),('WSS122','p28'),('WSS123','p28'),('WSS125','p28'),('WSS141','p28'),('WSS144','p28'),('WSS145','p28'),('WSS149','p28'),('WSS153','p28'),('WSS16','p28'),('WSS160','p28'),('WSS166','p28'),('WSS17','p28'),('WSS170','p28'),('WSS187','p28'),('WSS190','p28'),('WSS191','p28'),('WSS192','p28'),('WSS196','p28'),('WSS199','p28'),('WSS22','p28'),('WSS23','p28'),('WSS25','p28'),('WSS34','p28'),('WSS48','p28'),('WSS6','p28'),('WSS69','p28'),('WSS82','p28'),('WSS92','p28'),('WSS94','p28'),('WSS116','p29'),('WSS122','p29'),('WSS130','p29'),('WSS133','p29'),('WSS144','p29'),('WSS159','p29'),('WSS161','p29'),('WSS162','p29'),('WSS166','p29'),('WSS168','p29'),('WSS177','p29'),('WSS179','p29'),('WSS18','p29'),('WSS185','p29'),('WSS186','p29'),('WSS189','p29'),('WSS191','p29'),('WSS192','p29'),('WSS20','p29'),('WSS29','p29'),('WSS3','p29'),('WSS30','p29'),('WSS46','p29'),('WSS51','p29'),('WSS54','p29'),('WSS75','p29'),('WSS79','p29'),('WSS81','p29'),('WSS97','p29'),('WSS105','p3'),('WSS121','p3'),('WSS129','p3'),('WSS13','p3'),('WSS133','p3'),('WSS143','p3'),('WSS16','p3'),('WSS165','p3'),('WSS167','p3'),('WSS181','p3'),('WSS182','p3'),('WSS185','p3'),('WSS186','p3'),('WSS190','p3'),('WSS196','p3'),('WSS197','p3'),('WSS199','p3'),('WSS21','p3'),('WSS24','p3'),('WSS32','p3'),('WSS40','p3'),('WSS50','p3'),('WSS52','p3'),('WSS54','p3'),('WSS82','p3'),('WSS85','p3'),('WSS90','p3'),('WSS94','p3'),('WSS98','p3'),('WSS99','p3'),('WSS104','p30'),('WSS110','p30'),('WSS114','p30'),('WSS115','p30'),('WSS12','p30'),('WSS125','p30'),('WSS13','p30'),('WSS135','p30'),('WSS138','p30'),('WSS15','p30'),('WSS164','p30'),('WSS194','p30'),('WSS197','p30'),('WSS2','p30'),('WSS20','p30'),('WSS28','p30'),('WSS31','p30'),('WSS37','p30'),('WSS38','p30'),('WSS44','p30'),('WSS54','p30'),('WSS55','p30'),('WSS61','p30'),('WSS63','p30'),('WSS66','p30'),('WSS69','p30'),('WSS70','p30'),('WSS89','p30'),('WSS97','p30'),('WSS101','p4'),('WSS103','p4'),('WSS106','p4'),('WSS120','p4'),('WSS121','p4'),('WSS129','p4'),('WSS138','p4'),('WSS143','p4'),('WSS15','p4'),('WSS166','p4'),('WSS175','p4'),('WSS192','p4'),('WSS193','p4'),('WSS21','p4'),('WSS32','p4'),('WSS43','p4'),('WSS5','p4'),('WSS51','p4'),('WSS56','p4'),('WSS66','p4'),('WSS76','p4'),('WSS8','p4'),('WSS80','p4'),('WSS11','p5'),('WSS134','p5'),('WSS137','p5'),('WSS148','p5'),('WSS153','p5'),('WSS179','p5'),('WSS194','p5'),('WSS24','p5'),('WSS45','p5'),('WSS50','p5'),('WSS52','p5'),('WSS60','p5'),('WSS65','p5'),('WSS82','p5'),('WSS88','p5'),('WSS105','p6'),('WSS110','p6'),('WSS111','p6'),('WSS113','p6'),('WSS116','p6'),('WSS117','p6'),('WSS118','p6'),('WSS136','p6'),('WSS15','p6'),('WSS16','p6'),('WSS165','p6'),('WSS167','p6'),('WSS168','p6'),('WSS173','p6'),('WSS184','p6'),('WSS186','p6'),('WSS190','p6'),('WSS197','p6'),('WSS3','p6'),('WSS30','p6'),('WSS35','p6'),('WSS65','p6'),('WSS74','p6'),('WSS8','p6'),('WSS85','p6'),('WSS87','p6'),('WSS90','p6'),('WSS102','p7'),('WSS11','p7'),('WSS111','p7'),('WSS118','p7'),('WSS12','p7'),('WSS135','p7'),('WSS144','p7'),('WSS150','p7'),('WSS151','p7'),('WSS152','p7'),('WSS168','p7'),('WSS170','p7'),('WSS182','p7'),('WSS186','p7'),('WSS19','p7'),('WSS193','p7'),('WSS29','p7'),('WSS32','p7'),('WSS57','p7'),('WSS62','p7'),('WSS76','p7'),('WSS8','p7'),('WSS1','p8'),('WSS116','p8'),('WSS127','p8'),('WSS131','p8'),('WSS132','p8'),('WSS140','p8'),('WSS142','p8'),('WSS146','p8'),('WSS153','p8'),('WSS154','p8'),('WSS155','p8'),('WSS161','p8'),('WSS176','p8'),('WSS183','p8'),('WSS184','p8'),('WSS19','p8'),('WSS197','p8'),('WSS198','p8'),('WSS20','p8'),('WSS200','p8'),('WSS25','p8'),('WSS28','p8'),('WSS31','p8'),('WSS35','p8'),('WSS36','p8'),('WSS41','p8'),('WSS42','p8'),('WSS45','p8'),('WSS52','p8'),('WSS53','p8'),('WSS56','p8'),('WSS59','p8'),('WSS66','p8'),('WSS71','p8'),('WSS74','p8'),('WSS77','p8'),('WSS78','p8'),('WSS87','p8'),('WSS107','p9'),('WSS109','p9'),('WSS111','p9'),('WSS113','p9'),('WSS126','p9'),('WSS143','p9'),('WSS160','p9'),('WSS173','p9'),('WSS176','p9'),('WSS177','p9'),('WSS181','p9'),('WSS195','p9'),('WSS199','p9'),('WSS200','p9'),('WSS23','p9'),('WSS40','p9'),('WSS59','p9'),('WSS68','p9'),('WSS83','p9'),('WSS85','p9'),('WSS92','p9'),('WSS95','p9'),('WSS98','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS33'),(1,2,'WSS46'),(2,1,'WSS31'),(2,2,'WSS66'),(3,1,'WSS82'),(3,2,'WSS29'),(4,1,'WSS64'),(4,2,'WSS67'),(4,3,'WSS52'),(5,1,'WSS82'),(5,2,'WSS66'),(5,3,'WSS54'),(6,1,'WSS58'),(6,2,'WSS61'),(6,3,'WSS57'),(7,1,'WSS26'),(7,2,'WSS33'),(8,1,'WSS39'),(8,2,'WSS36'),(9,1,'WSS38'),(9,2,'WSS34'),(9,2,'WSS60'),(10,1,'WSS55'),(10,2,'WSS66'),(11,1,'WSS29'),(11,2,'WSS42'),(11,2,'WSS66'),(12,1,'WSS43'),(12,2,'WSS61'),(12,3,'WSS66'),(13,1,'WSS32'),(13,2,'WSS54'),(13,3,'WSS65'),(14,1,'WSS83'),(14,2,'WSS59'),(15,1,'WSS44'),(15,2,'WSS69'),(15,3,'WSS66'),(16,1,'WSS65'),(16,2,'WSS50'),(16,3,'WSS60'),(17,1,'WSS67'),(17,2,'WSS61'),(17,3,'WSS69'),(18,1,'WSS38'),(18,2,'WSS64'),(18,2,'WSS67'),(19,1,'WSS14'),(19,2,'WSS66'),(20,1,'WSS47'),(20,2,'WSS65'),(20,3,'WSS64'),(21,1,'WSS26'),(21,2,'WSS33'),(22,1,'WSS29'),(22,2,'WSS97'),(22,3,'WSS67'),(23,1,'WSS26'),(23,2,'WSS59'),(23,3,'WSS69'),(24,1,'WSS86'),(24,2,'WSS45'),(25,1,'WSS98'),(25,2,'WSS58'),(25,3,'WSS62'),(26,1,'WSS31'),(27,1,'WSS48'),(27,2,'WSS65'),(27,3,'WSS46'),(28,1,'WSS37'),(28,2,'WSS85'),(29,1,'WSS64'),(29,2,'WSS10'),(30,1,'WSS51'),(30,2,'WSS98'),(30,3,'WSS63'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-27 16:17:45
