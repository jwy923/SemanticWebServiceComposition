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
INSERT INTO `initialgoalparameter` VALUES (2,'I','p1'),(3,'I','p1'),(15,'G','p1'),(16,'I','p1'),(18,'G','p1'),(23,'G','p1'),(25,'G','p1'),(26,'I','p1'),(28,'I','p1'),(29,'I','p1'),(2,'I','p10'),(4,'I','p10'),(5,'I','p10'),(6,'G','p10'),(9,'G','p10'),(10,'G','p10'),(12,'I','p10'),(15,'I','p10'),(17,'G','p10'),(22,'I','p10'),(23,'I','p10'),(29,'G','p10'),(30,'G','p10'),(1,'G','p11'),(19,'I','p11'),(23,'G','p11'),(24,'G','p11'),(25,'I','p11'),(27,'I','p11'),(28,'G','p11'),(29,'G','p11'),(30,'I','p11'),(3,'G','p12'),(4,'I','p12'),(7,'G','p12'),(11,'I','p12'),(12,'G','p12'),(15,'G','p12'),(19,'G','p12'),(20,'I','p12'),(21,'I','p12'),(23,'G','p12'),(24,'I','p12'),(29,'I','p12'),(1,'I','p13'),(4,'G','p13'),(23,'I','p13'),(24,'G','p13'),(26,'I','p13'),(28,'G','p13'),(3,'G','p14'),(4,'G','p14'),(8,'I','p14'),(15,'I','p14'),(18,'I','p14'),(21,'I','p14'),(27,'I','p14'),(30,'G','p14'),(1,'I','p15'),(2,'I','p15'),(3,'G','p15'),(8,'I','p15'),(11,'I','p15'),(12,'I','p15'),(13,'I','p15'),(14,'I','p15'),(17,'I','p15'),(24,'G','p15'),(5,'G','p16'),(7,'I','p16'),(12,'G','p16'),(16,'I','p16'),(28,'I','p16'),(29,'I','p16'),(1,'I','p17'),(4,'G','p17'),(5,'I','p17'),(8,'G','p17'),(13,'I','p17'),(14,'I','p17'),(18,'I','p17'),(19,'I','p17'),(21,'G','p17'),(23,'I','p17'),(25,'I','p17'),(28,'I','p17'),(30,'I','p17'),(1,'I','p18'),(3,'I','p18'),(7,'G','p18'),(10,'G','p18'),(14,'G','p18'),(17,'I','p18'),(24,'I','p18'),(26,'I','p18'),(28,'I','p18'),(30,'G','p18'),(2,'G','p19'),(11,'G','p19'),(12,'G','p19'),(13,'I','p19'),(16,'I','p19'),(19,'I','p19'),(24,'I','p19'),(25,'G','p19'),(29,'I','p19'),(5,'I','p2'),(6,'I','p2'),(8,'G','p2'),(9,'I','p2'),(10,'I','p2'),(13,'I','p2'),(16,'G','p2'),(18,'G','p2'),(20,'I','p2'),(23,'I','p2'),(25,'I','p2'),(3,'I','p20'),(9,'I','p20'),(10,'G','p20'),(11,'I','p20'),(13,'G','p20'),(18,'G','p20'),(19,'G','p20'),(21,'I','p20'),(25,'I','p20'),(3,'G','p21'),(7,'I','p21'),(12,'I','p21'),(14,'I','p21'),(15,'I','p21'),(17,'I','p21'),(22,'I','p21'),(24,'I','p21'),(26,'I','p21'),(27,'I','p21'),(30,'I','p21'),(2,'I','p22'),(5,'G','p22'),(7,'I','p22'),(8,'G','p22'),(9,'I','p22'),(15,'G','p22'),(16,'G','p22'),(18,'I','p22'),(22,'I','p22'),(23,'I','p22'),(24,'I','p22'),(25,'G','p22'),(26,'G','p22'),(1,'G','p23'),(4,'I','p23'),(6,'G','p23'),(9,'I','p23'),(11,'I','p23'),(18,'I','p23'),(19,'G','p23'),(21,'G','p23'),(23,'I','p23'),(25,'I','p23'),(27,'G','p23'),(29,'I','p23'),(9,'G','p24'),(11,'G','p24'),(13,'G','p24'),(16,'I','p24'),(20,'G','p24'),(21,'G','p24'),(30,'I','p24'),(2,'I','p25'),(3,'I','p25'),(12,'I','p25'),(14,'G','p25'),(20,'G','p25'),(22,'G','p25'),(27,'G','p25'),(29,'G','p25'),(30,'I','p25'),(5,'G','p26'),(6,'I','p26'),(7,'G','p26'),(8,'I','p26'),(12,'G','p26'),(14,'G','p26'),(15,'I','p26'),(17,'I','p26'),(18,'I','p26'),(19,'I','p26'),(20,'I','p26'),(22,'G','p26'),(24,'I','p26'),(1,'G','p27'),(2,'G','p27'),(3,'I','p27'),(28,'G','p27'),(29,'G','p27'),(3,'I','p28'),(5,'I','p28'),(7,'I','p28'),(8,'I','p28'),(9,'G','p28'),(10,'I','p28'),(13,'I','p28'),(14,'I','p28'),(18,'G','p28'),(20,'G','p28'),(21,'G','p28'),(26,'G','p28'),(27,'I','p28'),(4,'I','p29'),(5,'I','p29'),(7,'I','p29'),(8,'I','p29'),(9,'I','p29'),(11,'I','p29'),(14,'I','p29'),(17,'I','p29'),(25,'I','p29'),(27,'I','p29'),(28,'I','p29'),(29,'I','p29'),(6,'G','p3'),(12,'I','p3'),(13,'G','p3'),(14,'G','p3'),(20,'I','p3'),(22,'I','p3'),(25,'G','p3'),(27,'G','p3'),(2,'I','p30'),(4,'I','p30'),(6,'I','p30'),(9,'G','p30'),(10,'I','p30'),(16,'G','p30'),(17,'G','p30'),(19,'I','p30'),(22,'I','p30'),(23,'G','p30'),(27,'G','p30'),(28,'I','p30'),(1,'G','p4'),(5,'I','p4'),(6,'I','p4'),(9,'I','p4'),(10,'I','p4'),(11,'I','p4'),(14,'I','p4'),(15,'I','p4'),(17,'I','p4'),(18,'I','p4'),(20,'G','p4'),(21,'I','p4'),(26,'G','p4'),(1,'I','p5'),(4,'I','p5'),(5,'G','p5'),(13,'G','p5'),(15,'I','p5'),(4,'G','p6'),(6,'I','p6'),(7,'G','p6'),(8,'G','p6'),(10,'G','p6'),(12,'I','p6'),(15,'G','p6'),(16,'I','p6'),(19,'G','p6'),(20,'I','p6'),(22,'I','p6'),(30,'G','p6'),(6,'I','p7'),(8,'I','p7'),(11,'G','p7'),(17,'G','p7'),(21,'I','p7'),(22,'G','p7'),(26,'G','p7'),(1,'I','p8'),(2,'G','p8'),(7,'I','p8'),(10,'I','p8'),(11,'G','p8'),(13,'I','p8'),(16,'I','p8'),(19,'I','p8'),(21,'I','p8'),(22,'G','p8'),(24,'G','p8'),(26,'I','p8'),(30,'I','p8'),(2,'G','p9'),(6,'G','p9'),(10,'I','p9'),(16,'G','p9'),(17,'G','p9'),(20,'I','p9'),(26,'I','p9'),(27,'I','p9'),(28,'G','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS143','p1'),('WSS169','p1'),('WSS194','p1'),('WSS22','p1'),('WSS36','p1'),('WSS50','p1'),('WSS59','p1'),('WSS83','p1'),('WSS84','p1'),('WSS96','p1'),('WSS97','p1'),('WSS136','p10'),('WSS153','p10'),('WSS160','p10'),('WSS167','p10'),('WSS179','p10'),('WSS18','p10'),('WSS191','p10'),('WSS50','p10'),('WSS63','p10'),('WSS77','p10'),('WSS92','p10'),('WSS99','p10'),('WSS137','p11'),('WSS144','p11'),('WSS165','p11'),('WSS183','p11'),('WSS196','p11'),('WSS26','p11'),('WSS3','p11'),('WSS38','p11'),('WSS48','p11'),('WSS5','p11'),('WSS8','p11'),('WSS89','p11'),('WSS95','p11'),('WSS10','p12'),('WSS114','p12'),('WSS194','p12'),('WSS40','p12'),('WSS42','p12'),('WSS74','p12'),('WSS84','p12'),('WSS1','p13'),('WSS106','p13'),('WSS113','p13'),('WSS115','p13'),('WSS122','p13'),('WSS149','p13'),('WSS151','p13'),('WSS16','p13'),('WSS161','p13'),('WSS173','p13'),('WSS21','p13'),('WSS22','p13'),('WSS60','p13'),('WSS71','p13'),('WSS86','p13'),('WSS1','p14'),('WSS121','p14'),('WSS16','p14'),('WSS162','p14'),('WSS181','p14'),('WSS188','p14'),('WSS26','p14'),('WSS34','p14'),('WSS37','p14'),('WSS65','p14'),('WSS102','p15'),('WSS122','p15'),('WSS126','p15'),('WSS137','p15'),('WSS140','p15'),('WSS145','p15'),('WSS147','p15'),('WSS148','p15'),('WSS17','p15'),('WSS170','p15'),('WSS171','p15'),('WSS184','p15'),('WSS187','p15'),('WSS197','p15'),('WSS43','p15'),('WSS55','p15'),('WSS68','p15'),('WSS101','p16'),('WSS104','p16'),('WSS112','p16'),('WSS121','p16'),('WSS129','p16'),('WSS13','p16'),('WSS139','p16'),('WSS14','p16'),('WSS146','p16'),('WSS158','p16'),('WSS164','p16'),('WSS174','p16'),('WSS195','p16'),('WSS198','p16'),('WSS37','p16'),('WSS45','p16'),('WSS52','p16'),('WSS61','p16'),('WSS66','p16'),('WSS73','p16'),('WSS78','p16'),('WSS103','p17'),('WSS129','p17'),('WSS166','p17'),('WSS17','p17'),('WSS186','p17'),('WSS27','p17'),('WSS30','p17'),('WSS32','p17'),('WSS51','p17'),('WSS73','p17'),('WSS99','p17'),('WSS103','p18'),('WSS108','p18'),('WSS116','p18'),('WSS127','p18'),('WSS131','p18'),('WSS157','p18'),('WSS160','p18'),('WSS168','p18'),('WSS176','p18'),('WSS197','p18'),('WSS23','p18'),('WSS54','p18'),('WSS98','p18'),('WSS108','p19'),('WSS115','p19'),('WSS12','p19'),('WSS143','p19'),('WSS147','p19'),('WSS150','p19'),('WSS165','p19'),('WSS167','p19'),('WSS169','p19'),('WSS172','p19'),('WSS176','p19'),('WSS181','p19'),('WSS2','p19'),('WSS28','p19'),('WSS31','p19'),('WSS61','p19'),('WSS69','p19'),('WSS8','p19'),('WSS89','p19'),('WSS91','p19'),('WSS100','p2'),('WSS123','p2'),('WSS139','p2'),('WSS156','p2'),('WSS42','p2'),('WSS58','p2'),('WSS66','p2'),('WSS69','p2'),('WSS83','p2'),('WSS85','p2'),('WSS107','p20'),('WSS149','p20'),('WSS15','p20'),('WSS151','p20'),('WSS159','p20'),('WSS173','p20'),('WSS175','p20'),('WSS179','p20'),('WSS185','p20'),('WSS199','p20'),('WSS2','p20'),('WSS200','p20'),('WSS33','p20'),('WSS35','p20'),('WSS77','p20'),('WSS79','p20'),('WSS100','p21'),('WSS109','p21'),('WSS11','p21'),('WSS118','p21'),('WSS120','p21'),('WSS138','p21'),('WSS152','p21'),('WSS154','p21'),('WSS164','p21'),('WSS170','p21'),('WSS19','p21'),('WSS190','p21'),('WSS28','p21'),('WSS48','p21'),('WSS49','p21'),('WSS64','p21'),('WSS75','p21'),('WSS76','p21'),('WSS98','p21'),('WSS133','p22'),('WSS161','p22'),('WSS38','p22'),('WSS39','p22'),('WSS44','p22'),('WSS90','p22'),('WSS96','p22'),('WSS102','p23'),('WSS112','p23'),('WSS118','p23'),('WSS132','p23'),('WSS140','p23'),('WSS178','p23'),('WSS34','p23'),('WSS4','p23'),('WSS41','p23'),('WSS6','p23'),('WSS76','p23'),('WSS12','p24'),('WSS134','p24'),('WSS153','p24'),('WSS166','p24'),('WSS184','p24'),('WSS189','p24'),('WSS192','p24'),('WSS3','p24'),('WSS33','p24'),('WSS41','p24'),('WSS56','p24'),('WSS90','p24'),('WSS97','p24'),('WSS11','p25'),('WSS116','p25'),('WSS128','p25'),('WSS15','p25'),('WSS152','p25'),('WSS30','p25'),('WSS39','p25'),('WSS47','p25'),('WSS5','p25'),('WSS55','p25'),('WSS93','p25'),('WSS95','p25'),('WSS134','p26'),('WSS135','p26'),('WSS141','p26'),('WSS142','p26'),('WSS186','p26'),('WSS35','p26'),('WSS40','p26'),('WSS47','p26'),('WSS7','p26'),('WSS70','p26'),('WSS9','p26'),('WSS93','p26'),('WSS123','p27'),('WSS130','p27'),('WSS141','p27'),('WSS155','p27'),('WSS163','p27'),('WSS171','p27'),('WSS172','p27'),('WSS177','p27'),('WSS182','p27'),('WSS187','p27'),('WSS191','p27'),('WSS24','p27'),('WSS29','p27'),('WSS57','p27'),('WSS60','p27'),('WSS78','p27'),('WSS80','p27'),('WSS101','p28'),('WSS105','p28'),('WSS106','p28'),('WSS111','p28'),('WSS114','p28'),('WSS117','p28'),('WSS120','p28'),('WSS132','p28'),('WSS163','p28'),('WSS180','p28'),('WSS19','p28'),('WSS25','p28'),('WSS65','p28'),('WSS82','p28'),('WSS94','p28'),('WSS110','p29'),('WSS135','p29'),('WSS136','p29'),('WSS145','p29'),('WSS174','p29'),('WSS20','p29'),('WSS27','p29'),('WSS53','p29'),('WSS6','p29'),('WSS63','p29'),('WSS82','p29'),('WSS88','p29'),('WSS94','p29'),('WSS110','p3'),('WSS117','p3'),('WSS119','p3'),('WSS146','p3'),('WSS157','p3'),('WSS158','p3'),('WSS178','p3'),('WSS180','p3'),('WSS198','p3'),('WSS199','p3'),('WSS58','p3'),('WSS64','p3'),('WSS67','p3'),('WSS68','p3'),('WSS156','p30'),('WSS175','p30'),('WSS183','p30'),('WSS185','p30'),('WSS192','p30'),('WSS20','p30'),('WSS29','p30'),('WSS32','p30'),('WSS36','p30'),('WSS46','p30'),('WSS53','p30'),('WSS67','p30'),('WSS74','p30'),('WSS81','p30'),('WSS125','p4'),('WSS133','p4'),('WSS200','p4'),('WSS24','p4'),('WSS44','p4'),('WSS51','p4'),('WSS54','p4'),('WSS62','p4'),('WSS71','p4'),('WSS87','p4'),('WSS9','p4'),('WSS107','p5'),('WSS111','p5'),('WSS130','p5'),('WSS190','p5'),('WSS193','p5'),('WSS23','p5'),('WSS49','p5'),('WSS79','p5'),('WSS88','p5'),('WSS105','p6'),('WSS113','p6'),('WSS124','p6'),('WSS127','p6'),('WSS155','p6'),('WSS196','p6'),('WSS25','p6'),('WSS4','p6'),('WSS43','p6'),('WSS52','p6'),('WSS57','p6'),('WSS80','p6'),('WSS85','p6'),('WSS109','p7'),('WSS126','p7'),('WSS128','p7'),('WSS131','p7'),('WSS150','p7'),('WSS182','p7'),('WSS188','p7'),('WSS189','p7'),('WSS31','p7'),('WSS56','p7'),('WSS72','p7'),('WSS75','p7'),('WSS87','p7'),('WSS10','p8'),('WSS104','p8'),('WSS138','p8'),('WSS14','p8'),('WSS177','p8'),('WSS195','p8'),('WSS21','p8'),('WSS45','p8'),('WSS46','p8'),('WSS70','p8'),('WSS119','p9'),('WSS125','p9'),('WSS148','p9'),('WSS154','p9'),('WSS159','p9'),('WSS162','p9'),('WSS168','p9'),('WSS59','p9'),('WSS62','p9'),('WSS7','p9'),('WSS81','p9'),('WSS86','p9'),('WSS91','p9'),('WSS92','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS100','p1'),('WSS102','p1'),('WSS11','p1'),('WSS12','p1'),('WSS129','p1'),('WSS139','p1'),('WSS144','p1'),('WSS149','p1'),('WSS152','p1'),('WSS154','p1'),('WSS156','p1'),('WSS157','p1'),('WSS161','p1'),('WSS170','p1'),('WSS173','p1'),('WSS174','p1'),('WSS22','p1'),('WSS26','p1'),('WSS3','p1'),('WSS31','p1'),('WSS33','p1'),('WSS36','p1'),('WSS37','p1'),('WSS52','p1'),('WSS57','p1'),('WSS62','p1'),('WSS64','p1'),('WSS69','p1'),('WSS7','p1'),('WSS87','p1'),('WSS1','p10'),('WSS108','p10'),('WSS116','p10'),('WSS12','p10'),('WSS136','p10'),('WSS142','p10'),('WSS149','p10'),('WSS152','p10'),('WSS167','p10'),('WSS169','p10'),('WSS17','p10'),('WSS174','p10'),('WSS177','p10'),('WSS185','p10'),('WSS199','p10'),('WSS23','p10'),('WSS4','p10'),('WSS44','p10'),('WSS47','p10'),('WSS6','p10'),('WSS60','p10'),('WSS7','p10'),('WSS8','p10'),('WSS84','p10'),('WSS88','p10'),('WSS89','p10'),('WSS101','p11'),('WSS113','p11'),('WSS124','p11'),('WSS13','p11'),('WSS133','p11'),('WSS141','p11'),('WSS148','p11'),('WSS152','p11'),('WSS155','p11'),('WSS156','p11'),('WSS163','p11'),('WSS165','p11'),('WSS171','p11'),('WSS179','p11'),('WSS180','p11'),('WSS186','p11'),('WSS192','p11'),('WSS27','p11'),('WSS28','p11'),('WSS40','p11'),('WSS42','p11'),('WSS65','p11'),('WSS74','p11'),('WSS76','p11'),('WSS83','p11'),('WSS97','p11'),('WSS105','p12'),('WSS108','p12'),('WSS11','p12'),('WSS113','p12'),('WSS119','p12'),('WSS120','p12'),('WSS132','p12'),('WSS140','p12'),('WSS157','p12'),('WSS159','p12'),('WSS163','p12'),('WSS168','p12'),('WSS173','p12'),('WSS178','p12'),('WSS18','p12'),('WSS187','p12'),('WSS190','p12'),('WSS195','p12'),('WSS197','p12'),('WSS2','p12'),('WSS200','p12'),('WSS25','p12'),('WSS3','p12'),('WSS36','p12'),('WSS56','p12'),('WSS64','p12'),('WSS73','p12'),('WSS91','p12'),('WSS11','p13'),('WSS115','p13'),('WSS116','p13'),('WSS117','p13'),('WSS12','p13'),('WSS130','p13'),('WSS132','p13'),('WSS146','p13'),('WSS155','p13'),('WSS170','p13'),('WSS172','p13'),('WSS181','p13'),('WSS185','p13'),('WSS193','p13'),('WSS22','p13'),('WSS43','p13'),('WSS44','p13'),('WSS46','p13'),('WSS48','p13'),('WSS57','p13'),('WSS58','p13'),('WSS63','p13'),('WSS71','p13'),('WSS81','p13'),('WSS85','p13'),('WSS90','p13'),('WSS95','p13'),('WSS10','p14'),('WSS101','p14'),('WSS115','p14'),('WSS118','p14'),('WSS124','p14'),('WSS127','p14'),('WSS131','p14'),('WSS150','p14'),('WSS157','p14'),('WSS160','p14'),('WSS164','p14'),('WSS17','p14'),('WSS170','p14'),('WSS178','p14'),('WSS180','p14'),('WSS183','p14'),('WSS200','p14'),('WSS21','p14'),('WSS43','p14'),('WSS5','p14'),('WSS59','p14'),('WSS67','p14'),('WSS68','p14'),('WSS69','p14'),('WSS80','p14'),('WSS84','p14'),('WSS98','p14'),('WSS125','p15'),('WSS128','p15'),('WSS132','p15'),('WSS154','p15'),('WSS161','p15'),('WSS166','p15'),('WSS182','p15'),('WSS184','p15'),('WSS19','p15'),('WSS191','p15'),('WSS22','p15'),('WSS32','p15'),('WSS39','p15'),('WSS56','p15'),('WSS57','p15'),('WSS59','p15'),('WSS71','p15'),('WSS80','p15'),('WSS81','p15'),('WSS98','p15'),('WSS109','p16'),('WSS119','p16'),('WSS121','p16'),('WSS148','p16'),('WSS15','p16'),('WSS150','p16'),('WSS155','p16'),('WSS158','p16'),('WSS160','p16'),('WSS162','p16'),('WSS168','p16'),('WSS177','p16'),('WSS183','p16'),('WSS195','p16'),('WSS20','p16'),('WSS34','p16'),('WSS39','p16'),('WSS42','p16'),('WSS50','p16'),('WSS66','p16'),('WSS85','p16'),('WSS9','p16'),('WSS100','p17'),('WSS102','p17'),('WSS125','p17'),('WSS13','p17'),('WSS134','p17'),('WSS137','p17'),('WSS144','p17'),('WSS147','p17'),('WSS151','p17'),('WSS162','p17'),('WSS188','p17'),('WSS191','p17'),('WSS193','p17'),('WSS194','p17'),('WSS27','p17'),('WSS38','p17'),('WSS61','p17'),('WSS66','p17'),('WSS72','p17'),('WSS73','p17'),('WSS94','p17'),('WSS96','p17'),('WSS98','p17'),('WSS99','p17'),('WSS105','p18'),('WSS109','p18'),('WSS118','p18'),('WSS134','p18'),('WSS141','p18'),('WSS145','p18'),('WSS153','p18'),('WSS171','p18'),('WSS174','p18'),('WSS18','p18'),('WSS185','p18'),('WSS188','p18'),('WSS193','p18'),('WSS195','p18'),('WSS4','p18'),('WSS45','p18'),('WSS54','p18'),('WSS55','p18'),('WSS64','p18'),('WSS75','p18'),('WSS78','p18'),('WSS87','p18'),('WSS92','p18'),('WSS107','p19'),('WSS110','p19'),('WSS111','p19'),('WSS112','p19'),('WSS123','p19'),('WSS127','p19'),('WSS135','p19'),('WSS144','p19'),('WSS150','p19'),('WSS159','p19'),('WSS160','p19'),('WSS169','p19'),('WSS175','p19'),('WSS18','p19'),('WSS183','p19'),('WSS184','p19'),('WSS192','p19'),('WSS197','p19'),('WSS21','p19'),('WSS38','p19'),('WSS46','p19'),('WSS54','p19'),('WSS63','p19'),('WSS74','p19'),('WSS75','p19'),('WSS77','p19'),('WSS81','p19'),('WSS89','p19'),('WSS9','p19'),('WSS95','p19'),('WSS104','p2'),('WSS114','p2'),('WSS133','p2'),('WSS139','p2'),('WSS14','p2'),('WSS159','p2'),('WSS167','p2'),('WSS181','p2'),('WSS193','p2'),('WSS194','p2'),('WSS197','p2'),('WSS198','p2'),('WSS199','p2'),('WSS24','p2'),('WSS3','p2'),('WSS31','p2'),('WSS4','p2'),('WSS48','p2'),('WSS54','p2'),('WSS58','p2'),('WSS67','p2'),('WSS80','p2'),('WSS83','p2'),('WSS10','p20'),('WSS111','p20'),('WSS117','p20'),('WSS125','p20'),('WSS129','p20'),('WSS145','p20'),('WSS147','p20'),('WSS160','p20'),('WSS162','p20'),('WSS17','p20'),('WSS172','p20'),('WSS182','p20'),('WSS188','p20'),('WSS27','p20'),('WSS34','p20'),('WSS35','p20'),('WSS43','p20'),('WSS45','p20'),('WSS58','p20'),('WSS59','p20'),('WSS62','p20'),('WSS63','p20'),('WSS107','p21'),('WSS120','p21'),('WSS126','p21'),('WSS14','p21'),('WSS161','p21'),('WSS172','p21'),('WSS178','p21'),('WSS181','p21'),('WSS185','p21'),('WSS186','p21'),('WSS187','p21'),('WSS189','p21'),('WSS2','p21'),('WSS24','p21'),('WSS55','p21'),('WSS65','p21'),('WSS91','p21'),('WSS103','p22'),('WSS106','p22'),('WSS114','p22'),('WSS118','p22'),('WSS122','p22'),('WSS125','p22'),('WSS133','p22'),('WSS136','p22'),('WSS142','p22'),('WSS146','p22'),('WSS147','p22'),('WSS152','p22'),('WSS153','p22'),('WSS16','p22'),('WSS167','p22'),('WSS179','p22'),('WSS189','p22'),('WSS190','p22'),('WSS194','p22'),('WSS196','p22'),('WSS30','p22'),('WSS32','p22'),('WSS45','p22'),('WSS56','p22'),('WSS66','p22'),('WSS74','p22'),('WSS76','p22'),('WSS82','p22'),('WSS90','p22'),('WSS99','p22'),('WSS102','p23'),('WSS103','p23'),('WSS104','p23'),('WSS107','p23'),('WSS109','p23'),('WSS113','p23'),('WSS117','p23'),('WSS122','p23'),('WSS124','p23'),('WSS127','p23'),('WSS129','p23'),('WSS138','p23'),('WSS139','p23'),('WSS140','p23'),('WSS146','p23'),('WSS15','p23'),('WSS16','p23'),('WSS164','p23'),('WSS170','p23'),('WSS176','p23'),('WSS177','p23'),('WSS186','p23'),('WSS27','p23'),('WSS28','p23'),('WSS3','p23'),('WSS37','p23'),('WSS49','p23'),('WSS59','p23'),('WSS61','p23'),('WSS71','p23'),('WSS73','p23'),('WSS79','p23'),('WSS85','p23'),('WSS91','p23'),('WSS97','p23'),('WSS100','p24'),('WSS102','p24'),('WSS106','p24'),('WSS120','p24'),('WSS121','p24'),('WSS130','p24'),('WSS131','p24'),('WSS136','p24'),('WSS138','p24'),('WSS151','p24'),('WSS154','p24'),('WSS176','p24'),('WSS177','p24'),('WSS186','p24'),('WSS2','p24'),('WSS21','p24'),('WSS23','p24'),('WSS24','p24'),('WSS26','p24'),('WSS33','p24'),('WSS34','p24'),('WSS46','p24'),('WSS50','p24'),('WSS55','p24'),('WSS65','p24'),('WSS7','p24'),('WSS74','p24'),('WSS82','p24'),('WSS86','p24'),('WSS87','p24'),('WSS88','p24'),('WSS95','p24'),('WSS97','p24'),('WSS108','p25'),('WSS111','p25'),('WSS118','p25'),('WSS141','p25'),('WSS145','p25'),('WSS151','p25'),('WSS155','p25'),('WSS158','p25'),('WSS166','p25'),('WSS175','p25'),('WSS184','p25'),('WSS187','p25'),('WSS197','p25'),('WSS198','p25'),('WSS20','p25'),('WSS30','p25'),('WSS36','p25'),('WSS39','p25'),('WSS44','p25'),('WSS5','p25'),('WSS6','p25'),('WSS69','p25'),('WSS70','p25'),('WSS78','p25'),('WSS8','p25'),('WSS89','p25'),('WSS93','p25'),('WSS99','p25'),('WSS12','p26'),('WSS122','p26'),('WSS128','p26'),('WSS129','p26'),('WSS132','p26'),('WSS135','p26'),('WSS139','p26'),('WSS15','p26'),('WSS159','p26'),('WSS161','p26'),('WSS163','p26'),('WSS166','p26'),('WSS173','p26'),('WSS175','p26'),('WSS176','p26'),('WSS181','p26'),('WSS19','p26'),('WSS191','p26'),('WSS20','p26'),('WSS200','p26'),('WSS32','p26'),('WSS38','p26'),('WSS44','p26'),('WSS60','p26'),('WSS61','p26'),('WSS62','p26'),('WSS70','p26'),('WSS82','p26'),('WSS9','p26'),('WSS114','p27'),('WSS126','p27'),('WSS131','p27'),('WSS135','p27'),('WSS14','p27'),('WSS141','p27'),('WSS142','p27'),('WSS143','p27'),('WSS148','p27'),('WSS153','p27'),('WSS156','p27'),('WSS165','p27'),('WSS167','p27'),('WSS168','p27'),('WSS172','p27'),('WSS18','p27'),('WSS182','p27'),('WSS41','p27'),('WSS52','p27'),('WSS63','p27'),('WSS64','p27'),('WSS67','p27'),('WSS68','p27'),('WSS78','p27'),('WSS79','p27'),('WSS82','p27'),('WSS93','p27'),('WSS101','p28'),('WSS104','p28'),('WSS107','p28'),('WSS117','p28'),('WSS119','p28'),('WSS123','p28'),('WSS137','p28'),('WSS142','p28'),('WSS144','p28'),('WSS15','p28'),('WSS150','p28'),('WSS163','p28'),('WSS174','p28'),('WSS188','p28'),('WSS192','p28'),('WSS200','p28'),('WSS30','p28'),('WSS41','p28'),('WSS47','p28'),('WSS52','p28'),('WSS6','p28'),('WSS60','p28'),('WSS61','p28'),('WSS7','p28'),('WSS73','p28'),('WSS75','p28'),('WSS84','p28'),('WSS86','p28'),('WSS93','p28'),('WSS97','p28'),('WSS1','p29'),('WSS103','p29'),('WSS116','p29'),('WSS119','p29'),('WSS127','p29'),('WSS128','p29'),('WSS134','p29'),('WSS138','p29'),('WSS148','p29'),('WSS153','p29'),('WSS157','p29'),('WSS158','p29'),('WSS171','p29'),('WSS175','p29'),('WSS179','p29'),('WSS180','p29'),('WSS189','p29'),('WSS192','p29'),('WSS31','p29'),('WSS33','p29'),('WSS42','p29'),('WSS5','p29'),('WSS51','p29'),('WSS57','p29'),('WSS58','p29'),('WSS70','p29'),('WSS86','p29'),('WSS91','p29'),('WSS10','p3'),('WSS103','p3'),('WSS11','p3'),('WSS112','p3'),('WSS120','p3'),('WSS126','p3'),('WSS134','p3'),('WSS14','p3'),('WSS169','p3'),('WSS194','p3'),('WSS196','p3'),('WSS23','p3'),('WSS24','p3'),('WSS25','p3'),('WSS28','p3'),('WSS32','p3'),('WSS37','p3'),('WSS38','p3'),('WSS39','p3'),('WSS4','p3'),('WSS48','p3'),('WSS49','p3'),('WSS65','p3'),('WSS90','p3'),('WSS94','p3'),('WSS104','p30'),('WSS106','p30'),('WSS110','p30'),('WSS112','p30'),('WSS116','p30'),('WSS122','p30'),('WSS130','p30'),('WSS140','p30'),('WSS16','p30'),('WSS165','p30'),('WSS180','p30'),('WSS19','p30'),('WSS47','p30'),('WSS49','p30'),('WSS50','p30'),('WSS54','p30'),('WSS67','p30'),('WSS70','p30'),('WSS71','p30'),('WSS85','p30'),('WSS87','p30'),('WSS88','p30'),('WSS90','p30'),('WSS94','p30'),('WSS105','p4'),('WSS106','p4'),('WSS108','p4'),('WSS110','p4'),('WSS113','p4'),('WSS114','p4'),('WSS140','p4'),('WSS143','p4'),('WSS145','p4'),('WSS146','p4'),('WSS149','p4'),('WSS151','p4'),('WSS154','p4'),('WSS16','p4'),('WSS169','p4'),('WSS173','p4'),('WSS199','p4'),('WSS26','p4'),('WSS29','p4'),('WSS35','p4'),('WSS37','p4'),('WSS41','p4'),('WSS46','p4'),('WSS47','p4'),('WSS51','p4'),('WSS52','p4'),('WSS66','p4'),('WSS68','p4'),('WSS83','p4'),('WSS9','p4'),('WSS92','p4'),('WSS10','p5'),('WSS131','p5'),('WSS176','p5'),('WSS190','p5'),('WSS195','p5'),('WSS196','p5'),('WSS198','p5'),('WSS28','p5'),('WSS29','p5'),('WSS33','p5'),('WSS40','p5'),('WSS42','p5'),('WSS51','p5'),('WSS6','p5'),('WSS60','p5'),('WSS72','p5'),('WSS84','p5'),('WSS89','p5'),('WSS95','p5'),('WSS98','p5'),('WSS109','p6'),('WSS110','p6'),('WSS123','p6'),('WSS124','p6'),('WSS13','p6'),('WSS133','p6'),('WSS135','p6'),('WSS143','p6'),('WSS149','p6'),('WSS164','p6'),('WSS166','p6'),('WSS168','p6'),('WSS179','p6'),('WSS187','p6'),('WSS199','p6'),('WSS21','p6'),('WSS25','p6'),('WSS26','p6'),('WSS35','p6'),('WSS40','p6'),('WSS45','p6'),('WSS5','p6'),('WSS53','p6'),('WSS55','p6'),('WSS72','p6'),('WSS75','p6'),('WSS77','p6'),('WSS1','p7'),('WSS115','p7'),('WSS121','p7'),('WSS130','p7'),('WSS137','p7'),('WSS147','p7'),('WSS156','p7'),('WSS165','p7'),('WSS171','p7'),('WSS183','p7'),('WSS189','p7'),('WSS19','p7'),('WSS53','p7'),('WSS72','p7'),('WSS78','p7'),('WSS79','p7'),('WSS8','p7'),('WSS81','p7'),('WSS86','p7'),('WSS88','p7'),('WSS92','p7'),('WSS99','p7'),('WSS101','p8'),('WSS105','p8'),('WSS121','p8'),('WSS128','p8'),('WSS136','p8'),('WSS138','p8'),('WSS162','p8'),('WSS164','p8'),('WSS184','p8'),('WSS2','p8'),('WSS22','p8'),('WSS29','p8'),('WSS53','p8'),('WSS77','p8'),('WSS83','p8'),('WSS96','p8'),('WSS1','p9'),('WSS100','p9'),('WSS126','p9'),('WSS13','p9'),('WSS143','p9'),('WSS158','p9'),('WSS196','p9'),('WSS23','p9'),('WSS30','p9'),('WSS51','p9'),('WSS53','p9'),('WSS56','p9'),('WSS62','p9'),('WSS68','p9'),('WSS76','p9'),('WSS77','p9'),('WSS79','p9'),('WSS96','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS147'),(1,2,'WSS15'),(2,1,'WSS106'),(2,2,'WSS187'),(3,1,'WSS17'),(3,2,'WSS107'),(4,1,'WSS58'),(4,2,'WSS92'),(5,1,'WSS81'),(5,2,'WSS197'),(6,1,'WSS6'),(6,2,'WSS91'),(7,1,'WSS62'),(7,2,'WSS160'),(8,1,'WSS2'),(8,2,'WSS152'),(9,1,'WSS93'),(9,2,'WSS22'),(10,1,'WSS74'),(10,2,'WSS66'),(11,1,'WSS162'),(11,2,'WSS28'),(12,1,'WSS100'),(12,2,'WSS195'),(12,3,'WSS109'),(13,1,'WSS156'),(13,2,'WSS102'),(13,2,'WSS105'),(14,1,'WSS35'),(14,2,'WSS109'),(15,1,'WSS100'),(15,2,'WSS15'),(16,1,'WSS63'),(16,2,'WSS184'),(17,1,'WSS140'),(17,2,'WSS104'),(18,1,'WSS146'),(18,2,'WSS154'),(19,1,'WSS71'),(19,2,'WSS23'),(20,1,'WSS43'),(20,2,'WSS63'),(21,1,'WSS188'),(21,2,'WSS48'),(22,1,'WSS24'),(22,2,'WSS14'),(23,1,'WSS191'),(23,2,'WSS127'),(24,1,'WSS164'),(24,2,'WSS193'),(25,1,'WSS90'),(25,2,'WSS18'),(26,1,'WSS125'),(26,2,'WSS77'),(27,1,'WSS28'),(27,2,'WSS99'),(28,1,'WSS199'),(28,1,'WSS73'),(29,1,'WSS172'),(29,2,'WSS105'),(29,3,'WSS109'),(30,1,'WSS22'),(30,2,'WSS191'),(30,3,'WSS196'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-07-06 19:54:40
