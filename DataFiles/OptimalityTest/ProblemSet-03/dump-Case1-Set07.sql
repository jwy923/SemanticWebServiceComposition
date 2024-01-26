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
INSERT INTO `initialgoalparameter` VALUES (1,'G','p1'),(5,'I','p1'),(6,'I','p1'),(7,'I','p1'),(9,'I','p1'),(13,'I','p1'),(14,'I','p1'),(16,'I','p1'),(19,'G','p1'),(21,'I','p1'),(22,'I','p1'),(23,'I','p1'),(25,'I','p1'),(28,'I','p1'),(29,'I','p1'),(10,'I','p10'),(11,'I','p10'),(12,'G','p10'),(15,'I','p10'),(18,'G','p10'),(19,'I','p10'),(21,'G','p10'),(28,'G','p10'),(29,'I','p10'),(30,'G','p10'),(2,'G','p11'),(4,'I','p11'),(6,'I','p11'),(9,'I','p11'),(12,'I','p11'),(14,'I','p11'),(16,'I','p11'),(17,'G','p11'),(18,'G','p11'),(19,'G','p11'),(24,'I','p11'),(27,'I','p11'),(30,'I','p11'),(1,'G','p12'),(2,'G','p12'),(3,'I','p12'),(7,'G','p12'),(8,'I','p12'),(11,'G','p12'),(17,'I','p12'),(19,'I','p12'),(29,'I','p12'),(30,'I','p12'),(2,'I','p13'),(5,'I','p13'),(9,'I','p13'),(10,'I','p13'),(11,'I','p13'),(12,'G','p13'),(13,'G','p13'),(15,'G','p13'),(17,'G','p13'),(18,'I','p13'),(24,'I','p13'),(25,'I','p13'),(3,'G','p14'),(4,'G','p14'),(10,'I','p14'),(11,'G','p14'),(12,'I','p14'),(14,'G','p14'),(19,'I','p14'),(22,'G','p14'),(25,'G','p14'),(26,'G','p14'),(30,'G','p14'),(7,'I','p15'),(8,'I','p15'),(14,'G','p15'),(15,'I','p15'),(19,'I','p15'),(25,'G','p15'),(27,'G','p15'),(29,'I','p15'),(30,'I','p15'),(3,'I','p16'),(8,'G','p16'),(10,'G','p16'),(11,'I','p16'),(20,'G','p16'),(24,'G','p16'),(27,'I','p16'),(2,'I','p17'),(5,'I','p17'),(7,'I','p17'),(13,'I','p17'),(14,'I','p17'),(15,'I','p17'),(16,'I','p17'),(21,'I','p17'),(23,'G','p17'),(25,'I','p17'),(26,'I','p17'),(29,'G','p17'),(30,'I','p17'),(2,'G','p18'),(14,'I','p18'),(16,'I','p18'),(17,'I','p18'),(19,'I','p18'),(21,'I','p18'),(26,'G','p18'),(27,'I','p18'),(28,'G','p18'),(5,'G','p19'),(8,'I','p19'),(16,'I','p19'),(17,'G','p19'),(18,'I','p19'),(25,'G','p19'),(28,'I','p19'),(29,'G','p19'),(1,'I','p2'),(4,'G','p2'),(5,'I','p2'),(6,'G','p2'),(8,'I','p2'),(9,'G','p2'),(11,'I','p2'),(13,'G','p2'),(15,'G','p2'),(17,'I','p2'),(18,'G','p2'),(21,'I','p2'),(22,'I','p2'),(23,'G','p2'),(24,'G','p2'),(25,'I','p2'),(27,'G','p2'),(3,'G','p20'),(4,'G','p20'),(8,'I','p20'),(13,'I','p20'),(20,'G','p20'),(27,'G','p20'),(29,'G','p20'),(2,'G','p21'),(3,'I','p21'),(4,'I','p21'),(5,'G','p21'),(7,'G','p21'),(8,'I','p21'),(10,'I','p21'),(15,'I','p21'),(20,'I','p21'),(26,'I','p21'),(28,'I','p21'),(30,'I','p21'),(1,'I','p22'),(2,'I','p22'),(7,'G','p22'),(10,'I','p22'),(13,'I','p22'),(15,'I','p22'),(17,'I','p22'),(19,'G','p22'),(20,'G','p22'),(23,'I','p22'),(26,'G','p22'),(28,'I','p22'),(29,'G','p22'),(2,'I','p23'),(9,'I','p23'),(10,'I','p23'),(12,'I','p23'),(17,'G','p23'),(18,'I','p23'),(25,'G','p23'),(26,'I','p23'),(29,'I','p23'),(6,'I','p24'),(10,'G','p24'),(13,'G','p24'),(14,'G','p24'),(16,'I','p24'),(21,'G','p24'),(22,'G','p24'),(24,'I','p24'),(27,'I','p24'),(28,'I','p24'),(1,'G','p25'),(3,'I','p25'),(6,'G','p25'),(7,'I','p25'),(11,'I','p25'),(22,'G','p25'),(28,'I','p25'),(5,'I','p26'),(9,'G','p26'),(11,'I','p26'),(12,'G','p26'),(16,'G','p26'),(18,'G','p26'),(4,'I','p27'),(7,'G','p27'),(8,'G','p27'),(13,'I','p27'),(18,'I','p27'),(19,'I','p27'),(22,'I','p27'),(28,'G','p27'),(1,'I','p28'),(3,'I','p28'),(4,'I','p28'),(9,'I','p28'),(12,'I','p28'),(14,'I','p28'),(17,'I','p28'),(21,'G','p28'),(22,'I','p28'),(23,'I','p28'),(26,'I','p28'),(1,'I','p29'),(3,'G','p29'),(6,'G','p29'),(12,'I','p29'),(15,'G','p29'),(24,'G','p29'),(30,'I','p29'),(2,'I','p3'),(5,'G','p3'),(9,'I','p3'),(11,'G','p3'),(20,'I','p3'),(27,'I','p3'),(1,'I','p30'),(4,'I','p30'),(5,'I','p30'),(11,'G','p30'),(18,'I','p30'),(20,'I','p30'),(23,'I','p30'),(24,'I','p30'),(27,'G','p30'),(30,'G','p30'),(1,'I','p4'),(3,'I','p4'),(4,'G','p4'),(6,'I','p4'),(12,'I','p4'),(16,'G','p4'),(18,'I','p4'),(20,'I','p4'),(23,'G','p4'),(24,'I','p4'),(25,'I','p4'),(27,'I','p4'),(28,'G','p4'),(29,'I','p4'),(2,'I','p5'),(5,'G','p5'),(6,'G','p5'),(8,'G','p5'),(9,'G','p5'),(12,'G','p5'),(13,'G','p5'),(15,'I','p5'),(17,'I','p5'),(22,'I','p5'),(23,'G','p5'),(26,'I','p5'),(7,'I','p6'),(10,'G','p6'),(14,'G','p6'),(16,'G','p6'),(20,'G','p6'),(22,'I','p6'),(24,'G','p6'),(26,'G','p6'),(6,'I','p7'),(7,'I','p7'),(8,'G','p7'),(10,'G','p7'),(16,'G','p7'),(20,'I','p7'),(21,'I','p7'),(23,'I','p7'),(25,'I','p7'),(30,'G','p7'),(3,'G','p8'),(4,'I','p8'),(9,'G','p8'),(13,'I','p8'),(14,'I','p8'),(19,'G','p8'),(21,'I','p8'),(22,'G','p8'),(1,'G','p9'),(6,'I','p9'),(15,'G','p9'),(20,'I','p9'),(21,'G','p9'),(23,'I','p9'),(24,'I','p9'),(26,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS101','p1'),('WSS122','p1'),('WSS129','p1'),('WSS137','p1'),('WSS143','p1'),('WSS156','p1'),('WSS161','p1'),('WSS187','p1'),('WSS19','p1'),('WSS194','p1'),('WSS28','p1'),('WSS47','p1'),('WSS50','p1'),('WSS52','p1'),('WSS63','p1'),('WSS7','p1'),('WSS75','p1'),('WSS77','p1'),('WSS94','p1'),('WSS118','p10'),('WSS145','p10'),('WSS159','p10'),('WSS160','p10'),('WSS182','p10'),('WSS188','p10'),('WSS197','p10'),('WSS46','p10'),('WSS55','p10'),('WSS58','p10'),('WSS7','p10'),('WSS74','p10'),('WSS82','p10'),('WSS91','p10'),('WSS100','p11'),('WSS106','p11'),('WSS119','p11'),('WSS15','p11'),('WSS178','p11'),('WSS185','p11'),('WSS49','p11'),('WSS54','p11'),('WSS98','p11'),('WSS100','p12'),('WSS101','p12'),('WSS102','p12'),('WSS132','p12'),('WSS14','p12'),('WSS148','p12'),('WSS159','p12'),('WSS16','p12'),('WSS18','p12'),('WSS34','p12'),('WSS5','p12'),('WSS54','p12'),('WSS56','p12'),('WSS6','p12'),('WSS88','p12'),('WSS10','p13'),('WSS157','p13'),('WSS16','p13'),('WSS162','p13'),('WSS169','p13'),('WSS186','p13'),('WSS189','p13'),('WSS21','p13'),('WSS25','p13'),('WSS3','p13'),('WSS61','p13'),('WSS88','p13'),('WSS93','p13'),('WSS107','p14'),('WSS131','p14'),('WSS150','p14'),('WSS153','p14'),('WSS164','p14'),('WSS184','p14'),('WSS46','p14'),('WSS48','p14'),('WSS61','p14'),('WSS68','p14'),('WSS71','p14'),('WSS8','p14'),('WSS95','p14'),('WSS10','p15'),('WSS105','p15'),('WSS136','p15'),('WSS150','p15'),('WSS2','p15'),('WSS29','p15'),('WSS37','p15'),('WSS9','p15'),('WSS90','p15'),('WSS102','p16'),('WSS121','p16'),('WSS166','p16'),('WSS183','p16'),('WSS195','p16'),('WSS23','p16'),('WSS25','p16'),('WSS32','p16'),('WSS34','p16'),('WSS42','p16'),('WSS53','p16'),('WSS72','p16'),('WSS76','p16'),('WSS82','p16'),('WSS84','p16'),('WSS91','p16'),('WSS99','p16'),('WSS11','p17'),('WSS130','p17'),('WSS18','p17'),('WSS188','p17'),('WSS193','p17'),('WSS196','p17'),('WSS198','p17'),('WSS79','p17'),('WSS80','p17'),('WSS83','p17'),('WSS9','p17'),('WSS112','p18'),('WSS113','p18'),('WSS115','p18'),('WSS117','p18'),('WSS119','p18'),('WSS13','p18'),('WSS151','p18'),('WSS17','p18'),('WSS178','p18'),('WSS19','p18'),('WSS190','p18'),('WSS26','p18'),('WSS3','p18'),('WSS67','p18'),('WSS90','p18'),('WSS94','p18'),('WSS108','p19'),('WSS109','p19'),('WSS123','p19'),('WSS144','p19'),('WSS27','p19'),('WSS30','p19'),('WSS52','p19'),('WSS70','p19'),('WSS72','p19'),('WSS75','p19'),('WSS103','p2'),('WSS146','p2'),('WSS162','p2'),('WSS168','p2'),('WSS172','p2'),('WSS173','p2'),('WSS24','p2'),('WSS44','p2'),('WSS48','p2'),('WSS50','p2'),('WSS73','p2'),('WSS84','p2'),('WSS112','p20'),('WSS118','p20'),('WSS147','p20'),('WSS155','p20'),('WSS156','p20'),('WSS185','p20'),('WSS199','p20'),('WSS20','p20'),('WSS26','p20'),('WSS81','p20'),('WSS85','p20'),('WSS87','p20'),('WSS99','p20'),('WSS110','p21'),('WSS117','p21'),('WSS128','p21'),('WSS136','p21'),('WSS167','p21'),('WSS181','p21'),('WSS197','p21'),('WSS22','p21'),('WSS35','p21'),('WSS36','p21'),('WSS73','p21'),('WSS79','p21'),('WSS81','p21'),('WSS109','p22'),('WSS111','p22'),('WSS12','p22'),('WSS120','p22'),('WSS121','p22'),('WSS137','p22'),('WSS146','p22'),('WSS158','p22'),('WSS163','p22'),('WSS191','p22'),('WSS192','p22'),('WSS78','p22'),('WSS89','p22'),('WSS123','p23'),('WSS127','p23'),('WSS147','p23'),('WSS166','p23'),('WSS17','p23'),('WSS180','p23'),('WSS195','p23'),('WSS40','p23'),('WSS57','p23'),('WSS74','p23'),('WSS77','p23'),('WSS8','p23'),('WSS107','p24'),('WSS116','p24'),('WSS127','p24'),('WSS152','p24'),('WSS158','p24'),('WSS189','p24'),('WSS200','p24'),('WSS41','p24'),('WSS60','p24'),('WSS76','p24'),('WSS83','p24'),('WSS86','p24'),('WSS98','p24'),('WSS1','p25'),('WSS111','p25'),('WSS12','p25'),('WSS134','p25'),('WSS139','p25'),('WSS160','p25'),('WSS192','p25'),('WSS200','p25'),('WSS43','p25'),('WSS69','p25'),('WSS92','p25'),('WSS138','p26'),('WSS143','p26'),('WSS148','p26'),('WSS149','p26'),('WSS167','p26'),('WSS176','p26'),('WSS183','p26'),('WSS186','p26'),('WSS30','p26'),('WSS32','p26'),('WSS42','p26'),('WSS92','p26'),('WSS133','p27'),('WSS140','p27'),('WSS151','p27'),('WSS169','p27'),('WSS184','p27'),('WSS193','p27'),('WSS27','p27'),('WSS43','p27'),('WSS51','p27'),('WSS85','p27'),('WSS96','p27'),('WSS108','p28'),('WSS116','p28'),('WSS141','p28'),('WSS155','p28'),('WSS172','p28'),('WSS199','p28'),('WSS35','p28'),('WSS38','p28'),('WSS47','p28'),('WSS57','p28'),('WSS68','p28'),('WSS70','p28'),('WSS115','p29'),('WSS120','p29'),('WSS135','p29'),('WSS138','p29'),('WSS141','p29'),('WSS144','p29'),('WSS15','p29'),('WSS165','p29'),('WSS23','p29'),('WSS29','p29'),('WSS44','p29'),('WSS45','p29'),('WSS64','p29'),('WSS78','p29'),('WSS95','p29'),('WSS106','p3'),('WSS128','p3'),('WSS133','p3'),('WSS135','p3'),('WSS142','p3'),('WSS163','p3'),('WSS173','p3'),('WSS174','p3'),('WSS177','p3'),('WSS180','p3'),('WSS181','p3'),('WSS182','p3'),('WSS191','p3'),('WSS196','p3'),('WSS38','p3'),('WSS4','p3'),('WSS49','p3'),('WSS65','p3'),('WSS66','p3'),('WSS89','p3'),('WSS114','p30'),('WSS125','p30'),('WSS154','p30'),('WSS165','p30'),('WSS174','p30'),('WSS175','p30'),('WSS179','p30'),('WSS194','p30'),('WSS198','p30'),('WSS24','p30'),('WSS31','p30'),('WSS51','p30'),('WSS55','p30'),('WSS71','p30'),('WSS96','p30'),('WSS97','p30'),('WSS104','p4'),('WSS11','p4'),('WSS132','p4'),('WSS170','p4'),('WSS176','p4'),('WSS2','p4'),('WSS5','p4'),('WSS56','p4'),('WSS58','p4'),('WSS62','p4'),('WSS67','p4'),('WSS97','p4'),('WSS41','p5'),('WSS45','p5'),('WSS59','p5'),('WSS65','p5'),('WSS80','p5'),('WSS86','p5'),('WSS103','p6'),('WSS110','p6'),('WSS130','p6'),('WSS131','p6'),('WSS145','p6'),('WSS153','p6'),('WSS164','p6'),('WSS171','p6'),('WSS175','p6'),('WSS187','p6'),('WSS190','p6'),('WSS20','p6'),('WSS21','p6'),('WSS31','p6'),('WSS33','p6'),('WSS36','p6'),('WSS66','p6'),('WSS93','p6'),('WSS104','p7'),('WSS124','p7'),('WSS129','p7'),('WSS142','p7'),('WSS171','p7'),('WSS33','p7'),('WSS39','p7'),('WSS4','p7'),('WSS1','p8'),('WSS113','p8'),('WSS114','p8'),('WSS134','p8'),('WSS14','p8'),('WSS152','p8'),('WSS154','p8'),('WSS168','p8'),('WSS170','p8'),('WSS177','p8'),('WSS37','p8'),('WSS59','p8'),('WSS60','p8'),('WSS87','p8'),('WSS122','p9'),('WSS124','p9'),('WSS125','p9'),('WSS126','p9'),('WSS140','p9'),('WSS149','p9'),('WSS161','p9'),('WSS179','p9'),('WSS22','p9'),('WSS28','p9'),('WSS39','p9'),('WSS6','p9'),('WSS62','p9'),('WSS63','p9'),('WSS64','p9'),('WSS69','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS101','p1'),('WSS117','p1'),('WSS119','p1'),('WSS12','p1'),('WSS127','p1'),('WSS135','p1'),('WSS136','p1'),('WSS147','p1'),('WSS149','p1'),('WSS150','p1'),('WSS152','p1'),('WSS168','p1'),('WSS175','p1'),('WSS184','p1'),('WSS191','p1'),('WSS195','p1'),('WSS198','p1'),('WSS199','p1'),('WSS200','p1'),('WSS25','p1'),('WSS28','p1'),('WSS29','p1'),('WSS32','p1'),('WSS43','p1'),('WSS63','p1'),('WSS64','p1'),('WSS66','p1'),('WSS76','p1'),('WSS80','p1'),('WSS89','p1'),('WSS9','p1'),('WSS96','p1'),('WSS100','p10'),('WSS103','p10'),('WSS107','p10'),('WSS120','p10'),('WSS126','p10'),('WSS133','p10'),('WSS142','p10'),('WSS143','p10'),('WSS146','p10'),('WSS159','p10'),('WSS164','p10'),('WSS168','p10'),('WSS171','p10'),('WSS174','p10'),('WSS175','p10'),('WSS176','p10'),('WSS177','p10'),('WSS178','p10'),('WSS180','p10'),('WSS181','p10'),('WSS182','p10'),('WSS183','p10'),('WSS184','p10'),('WSS185','p10'),('WSS192','p10'),('WSS196','p10'),('WSS2','p10'),('WSS23','p10'),('WSS3','p10'),('WSS33','p10'),('WSS36','p10'),('WSS39','p10'),('WSS40','p10'),('WSS54','p10'),('WSS58','p10'),('WSS6','p10'),('WSS64','p10'),('WSS74','p10'),('WSS75','p10'),('WSS82','p10'),('WSS83','p10'),('WSS84','p10'),('WSS86','p10'),('WSS88','p10'),('WSS89','p10'),('WSS9','p10'),('WSS94','p10'),('WSS95','p10'),('WSS96','p10'),('WSS1','p11'),('WSS102','p11'),('WSS106','p11'),('WSS107','p11'),('WSS109','p11'),('WSS110','p11'),('WSS114','p11'),('WSS115','p11'),('WSS121','p11'),('WSS122','p11'),('WSS129','p11'),('WSS131','p11'),('WSS134','p11'),('WSS135','p11'),('WSS14','p11'),('WSS147','p11'),('WSS151','p11'),('WSS152','p11'),('WSS156','p11'),('WSS165','p11'),('WSS166','p11'),('WSS167','p11'),('WSS169','p11'),('WSS17','p11'),('WSS175','p11'),('WSS187','p11'),('WSS19','p11'),('WSS196','p11'),('WSS27','p11'),('WSS28','p11'),('WSS3','p11'),('WSS33','p11'),('WSS34','p11'),('WSS39','p11'),('WSS40','p11'),('WSS42','p11'),('WSS43','p11'),('WSS50','p11'),('WSS54','p11'),('WSS66','p11'),('WSS67','p11'),('WSS7','p11'),('WSS71','p11'),('WSS72','p11'),('WSS73','p11'),('WSS77','p11'),('WSS78','p11'),('WSS82','p11'),('WSS87','p11'),('WSS88','p11'),('WSS90','p11'),('WSS92','p11'),('WSS93','p11'),('WSS97','p11'),('WSS99','p11'),('WSS104','p12'),('WSS115','p12'),('WSS127','p12'),('WSS137','p12'),('WSS14','p12'),('WSS140','p12'),('WSS144','p12'),('WSS145','p12'),('WSS147','p12'),('WSS149','p12'),('WSS15','p12'),('WSS156','p12'),('WSS163','p12'),('WSS165','p12'),('WSS18','p12'),('WSS180','p12'),('WSS183','p12'),('WSS185','p12'),('WSS187','p12'),('WSS19','p12'),('WSS193','p12'),('WSS198','p12'),('WSS30','p12'),('WSS31','p12'),('WSS36','p12'),('WSS4','p12'),('WSS40','p12'),('WSS42','p12'),('WSS43','p12'),('WSS47','p12'),('WSS48','p12'),('WSS60','p12'),('WSS63','p12'),('WSS67','p12'),('WSS69','p12'),('WSS76','p12'),('WSS77','p12'),('WSS79','p12'),('WSS84','p12'),('WSS89','p12'),('WSS91','p12'),('WSS93','p12'),('WSS94','p12'),('WSS100','p13'),('WSS108','p13'),('WSS111','p13'),('WSS113','p13'),('WSS12','p13'),('WSS122','p13'),('WSS126','p13'),('WSS129','p13'),('WSS13','p13'),('WSS133','p13'),('WSS136','p13'),('WSS140','p13'),('WSS145','p13'),('WSS148','p13'),('WSS152','p13'),('WSS155','p13'),('WSS156','p13'),('WSS158','p13'),('WSS161','p13'),('WSS166','p13'),('WSS184','p13'),('WSS186','p13'),('WSS194','p13'),('WSS195','p13'),('WSS21','p13'),('WSS23','p13'),('WSS26','p13'),('WSS29','p13'),('WSS31','p13'),('WSS34','p13'),('WSS36','p13'),('WSS39','p13'),('WSS41','p13'),('WSS44','p13'),('WSS47','p13'),('WSS52','p13'),('WSS56','p13'),('WSS59','p13'),('WSS61','p13'),('WSS67','p13'),('WSS79','p13'),('WSS83','p13'),('WSS86','p13'),('WSS93','p13'),('WSS97','p13'),('WSS100','p14'),('WSS101','p14'),('WSS110','p14'),('WSS113','p14'),('WSS120','p14'),('WSS125','p14'),('WSS126','p14'),('WSS13','p14'),('WSS133','p14'),('WSS139','p14'),('WSS140','p14'),('WSS151','p14'),('WSS155','p14'),('WSS156','p14'),('WSS161','p14'),('WSS168','p14'),('WSS18','p14'),('WSS184','p14'),('WSS190','p14'),('WSS194','p14'),('WSS21','p14'),('WSS23','p14'),('WSS29','p14'),('WSS3','p14'),('WSS32','p14'),('WSS48','p14'),('WSS5','p14'),('WSS50','p14'),('WSS66','p14'),('WSS72','p14'),('WSS73','p14'),('WSS79','p14'),('WSS84','p14'),('WSS86','p14'),('WSS103','p15'),('WSS108','p15'),('WSS109','p15'),('WSS115','p15'),('WSS117','p15'),('WSS118','p15'),('WSS13','p15'),('WSS138','p15'),('WSS139','p15'),('WSS146','p15'),('WSS148','p15'),('WSS153','p15'),('WSS154','p15'),('WSS16','p15'),('WSS160','p15'),('WSS17','p15'),('WSS172','p15'),('WSS175','p15'),('WSS179','p15'),('WSS183','p15'),('WSS189','p15'),('WSS191','p15'),('WSS199','p15'),('WSS2','p15'),('WSS20','p15'),('WSS30','p15'),('WSS32','p15'),('WSS44','p15'),('WSS48','p15'),('WSS51','p15'),('WSS55','p15'),('WSS57','p15'),('WSS58','p15'),('WSS59','p15'),('WSS66','p15'),('WSS68','p15'),('WSS7','p15'),('WSS76','p15'),('WSS77','p15'),('WSS8','p15'),('WSS91','p15'),('WSS106','p16'),('WSS11','p16'),('WSS115','p16'),('WSS117','p16'),('WSS118','p16'),('WSS119','p16'),('WSS12','p16'),('WSS120','p16'),('WSS123','p16'),('WSS142','p16'),('WSS149','p16'),('WSS15','p16'),('WSS154','p16'),('WSS158','p16'),('WSS159','p16'),('WSS161','p16'),('WSS162','p16'),('WSS172','p16'),('WSS18','p16'),('WSS181','p16'),('WSS184','p16'),('WSS186','p16'),('WSS187','p16'),('WSS19','p16'),('WSS190','p16'),('WSS192','p16'),('WSS199','p16'),('WSS2','p16'),('WSS24','p16'),('WSS30','p16'),('WSS31','p16'),('WSS40','p16'),('WSS44','p16'),('WSS47','p16'),('WSS48','p16'),('WSS58','p16'),('WSS59','p16'),('WSS63','p16'),('WSS65','p16'),('WSS72','p16'),('WSS75','p16'),('WSS76','p16'),('WSS82','p16'),('WSS83','p16'),('WSS85','p16'),('WSS88','p16'),('WSS9','p16'),('WSS90','p16'),('WSS94','p16'),('WSS96','p16'),('WSS99','p16'),('WSS105','p17'),('WSS107','p17'),('WSS11','p17'),('WSS112','p17'),('WSS115','p17'),('WSS116','p17'),('WSS118','p17'),('WSS124','p17'),('WSS131','p17'),('WSS132','p17'),('WSS139','p17'),('WSS142','p17'),('WSS151','p17'),('WSS156','p17'),('WSS158','p17'),('WSS163','p17'),('WSS164','p17'),('WSS171','p17'),('WSS173','p17'),('WSS174','p17'),('WSS178','p17'),('WSS182','p17'),('WSS185','p17'),('WSS187','p17'),('WSS188','p17'),('WSS191','p17'),('WSS193','p17'),('WSS196','p17'),('WSS198','p17'),('WSS199','p17'),('WSS20','p17'),('WSS21','p17'),('WSS22','p17'),('WSS26','p17'),('WSS3','p17'),('WSS32','p17'),('WSS33','p17'),('WSS35','p17'),('WSS38','p17'),('WSS42','p17'),('WSS47','p17'),('WSS48','p17'),('WSS49','p17'),('WSS5','p17'),('WSS51','p17'),('WSS54','p17'),('WSS59','p17'),('WSS64','p17'),('WSS66','p17'),('WSS69','p17'),('WSS70','p17'),('WSS71','p17'),('WSS73','p17'),('WSS78','p17'),('WSS83','p17'),('WSS88','p17'),('WSS99','p17'),('WSS102','p18'),('WSS106','p18'),('WSS110','p18'),('WSS115','p18'),('WSS118','p18'),('WSS127','p18'),('WSS128','p18'),('WSS131','p18'),('WSS133','p18'),('WSS138','p18'),('WSS146','p18'),('WSS149','p18'),('WSS150','p18'),('WSS152','p18'),('WSS153','p18'),('WSS158','p18'),('WSS16','p18'),('WSS161','p18'),('WSS162','p18'),('WSS167','p18'),('WSS168','p18'),('WSS172','p18'),('WSS181','p18'),('WSS183','p18'),('WSS186','p18'),('WSS19','p18'),('WSS197','p18'),('WSS2','p18'),('WSS20','p18'),('WSS24','p18'),('WSS26','p18'),('WSS27','p18'),('WSS28','p18'),('WSS34','p18'),('WSS42','p18'),('WSS45','p18'),('WSS59','p18'),('WSS64','p18'),('WSS74','p18'),('WSS80','p18'),('WSS83','p18'),('WSS96','p18'),('WSS98','p18'),('WSS103','p19'),('WSS105','p19'),('WSS110','p19'),('WSS123','p19'),('WSS129','p19'),('WSS131','p19'),('WSS133','p19'),('WSS137','p19'),('WSS138','p19'),('WSS139','p19'),('WSS144','p19'),('WSS145','p19'),('WSS148','p19'),('WSS149','p19'),('WSS154','p19'),('WSS159','p19'),('WSS170','p19'),('WSS177','p19'),('WSS180','p19'),('WSS182','p19'),('WSS188','p19'),('WSS189','p19'),('WSS191','p19'),('WSS197','p19'),('WSS2','p19'),('WSS3','p19'),('WSS30','p19'),('WSS32','p19'),('WSS35','p19'),('WSS38','p19'),('WSS39','p19'),('WSS42','p19'),('WSS52','p19'),('WSS54','p19'),('WSS55','p19'),('WSS58','p19'),('WSS59','p19'),('WSS60','p19'),('WSS65','p19'),('WSS74','p19'),('WSS75','p19'),('WSS80','p19'),('WSS84','p19'),('WSS86','p19'),('WSS87','p19'),('WSS88','p19'),('WSS9','p19'),('WSS94','p19'),('WSS100','p2'),('WSS101','p2'),('WSS102','p2'),('WSS107','p2'),('WSS108','p2'),('WSS111','p2'),('WSS113','p2'),('WSS118','p2'),('WSS121','p2'),('WSS122','p2'),('WSS126','p2'),('WSS128','p2'),('WSS129','p2'),('WSS132','p2'),('WSS137','p2'),('WSS141','p2'),('WSS143','p2'),('WSS145','p2'),('WSS150','p2'),('WSS156','p2'),('WSS157','p2'),('WSS158','p2'),('WSS16','p2'),('WSS160','p2'),('WSS163','p2'),('WSS17','p2'),('WSS176','p2'),('WSS181','p2'),('WSS182','p2'),('WSS185','p2'),('WSS186','p2'),('WSS189','p2'),('WSS192','p2'),('WSS194','p2'),('WSS200','p2'),('WSS21','p2'),('WSS24','p2'),('WSS25','p2'),('WSS31','p2'),('WSS35','p2'),('WSS44','p2'),('WSS46','p2'),('WSS48','p2'),('WSS49','p2'),('WSS5','p2'),('WSS63','p2'),('WSS64','p2'),('WSS66','p2'),('WSS69','p2'),('WSS70','p2'),('WSS71','p2'),('WSS76','p2'),('WSS77','p2'),('WSS79','p2'),('WSS81','p2'),('WSS86','p2'),('WSS87','p2'),('WSS88','p2'),('WSS91','p2'),('WSS92','p2'),('WSS103','p20'),('WSS104','p20'),('WSS112','p20'),('WSS116','p20'),('WSS120','p20'),('WSS124','p20'),('WSS13','p20'),('WSS130','p20'),('WSS131','p20'),('WSS134','p20'),('WSS135','p20'),('WSS142','p20'),('WSS143','p20'),('WSS149','p20'),('WSS155','p20'),('WSS16','p20'),('WSS163','p20'),('WSS164','p20'),('WSS170','p20'),('WSS178','p20'),('WSS179','p20'),('WSS180','p20'),('WSS187','p20'),('WSS188','p20'),('WSS189','p20'),('WSS192','p20'),('WSS195','p20'),('WSS196','p20'),('WSS22','p20'),('WSS27','p20'),('WSS28','p20'),('WSS32','p20'),('WSS36','p20'),('WSS38','p20'),('WSS43','p20'),('WSS49','p20'),('WSS52','p20'),('WSS53','p20'),('WSS55','p20'),('WSS62','p20'),('WSS67','p20'),('WSS68','p20'),('WSS79','p20'),('WSS80','p20'),('WSS81','p20'),('WSS82','p20'),('WSS87','p20'),('WSS89','p20'),('WSS92','p20'),('WSS97','p20'),('WSS98','p20'),('WSS1','p21'),('WSS10','p21'),('WSS104','p21'),('WSS107','p21'),('WSS112','p21'),('WSS117','p21'),('WSS119','p21'),('WSS12','p21'),('WSS121','p21'),('WSS123','p21'),('WSS125','p21'),('WSS126','p21'),('WSS129','p21'),('WSS13','p21'),('WSS130','p21'),('WSS133','p21'),('WSS137','p21'),('WSS139','p21'),('WSS143','p21'),('WSS144','p21'),('WSS15','p21'),('WSS150','p21'),('WSS151','p21'),('WSS152','p21'),('WSS161','p21'),('WSS163','p21'),('WSS166','p21'),('WSS169','p21'),('WSS170','p21'),('WSS171','p21'),('WSS183','p21'),('WSS186','p21'),('WSS188','p21'),('WSS189','p21'),('WSS190','p21'),('WSS194','p21'),('WSS197','p21'),('WSS200','p21'),('WSS25','p21'),('WSS27','p21'),('WSS29','p21'),('WSS3','p21'),('WSS31','p21'),('WSS38','p21'),('WSS41','p21'),('WSS43','p21'),('WSS5','p21'),('WSS58','p21'),('WSS6','p21'),('WSS65','p21'),('WSS73','p21'),('WSS74','p21'),('WSS75','p21'),('WSS77','p21'),('WSS81','p21'),('WSS84','p21'),('WSS88','p21'),('WSS92','p21'),('WSS97','p21'),('WSS98','p21'),('WSS1','p22'),('WSS109','p22'),('WSS112','p22'),('WSS113','p22'),('WSS122','p22'),('WSS124','p22'),('WSS125','p22'),('WSS135','p22'),('WSS136','p22'),('WSS138','p22'),('WSS144','p22'),('WSS148','p22'),('WSS15','p22'),('WSS150','p22'),('WSS160','p22'),('WSS163','p22'),('WSS169','p22'),('WSS17','p22'),('WSS171','p22'),('WSS172','p22'),('WSS182','p22'),('WSS192','p22'),('WSS197','p22'),('WSS199','p22'),('WSS20','p22'),('WSS34','p22'),('WSS35','p22'),('WSS37','p22'),('WSS38','p22'),('WSS4','p22'),('WSS41','p22'),('WSS43','p22'),('WSS45','p22'),('WSS46','p22'),('WSS49','p22'),('WSS50','p22'),('WSS6','p22'),('WSS8','p22'),('WSS80','p22'),('WSS85','p22'),('WSS89','p22'),('WSS93','p22'),('WSS95','p22'),('WSS1','p23'),('WSS10','p23'),('WSS100','p23'),('WSS101','p23'),('WSS106','p23'),('WSS108','p23'),('WSS111','p23'),('WSS119','p23'),('WSS122','p23'),('WSS125','p23'),('WSS128','p23'),('WSS130','p23'),('WSS139','p23'),('WSS144','p23'),('WSS157','p23'),('WSS158','p23'),('WSS165','p23'),('WSS167','p23'),('WSS177','p23'),('WSS18','p23'),('WSS181','p23'),('WSS182','p23'),('WSS188','p23'),('WSS19','p23'),('WSS190','p23'),('WSS196','p23'),('WSS198','p23'),('WSS22','p23'),('WSS24','p23'),('WSS26','p23'),('WSS28','p23'),('WSS32','p23'),('WSS34','p23'),('WSS37','p23'),('WSS43','p23'),('WSS5','p23'),('WSS54','p23'),('WSS55','p23'),('WSS61','p23'),('WSS62','p23'),('WSS68','p23'),('WSS74','p23'),('WSS79','p23'),('WSS89','p23'),('WSS94','p23'),('WSS98','p23'),('WSS100','p24'),('WSS102','p24'),('WSS12','p24'),('WSS120','p24'),('WSS123','p24'),('WSS124','p24'),('WSS132','p24'),('WSS133','p24'),('WSS141','p24'),('WSS143','p24'),('WSS154','p24'),('WSS157','p24'),('WSS159','p24'),('WSS164','p24'),('WSS169','p24'),('WSS17','p24'),('WSS170','p24'),('WSS171','p24'),('WSS174','p24'),('WSS179','p24'),('WSS183','p24'),('WSS190','p24'),('WSS194','p24'),('WSS197','p24'),('WSS20','p24'),('WSS29','p24'),('WSS3','p24'),('WSS30','p24'),('WSS36','p24'),('WSS39','p24'),('WSS52','p24'),('WSS56','p24'),('WSS58','p24'),('WSS62','p24'),('WSS67','p24'),('WSS82','p24'),('WSS84','p24'),('WSS9','p24'),('WSS90','p24'),('WSS97','p24'),('WSS104','p25'),('WSS105','p25'),('WSS106','p25'),('WSS11','p25'),('WSS113','p25'),('WSS119','p25'),('WSS12','p25'),('WSS125','p25'),('WSS13','p25'),('WSS135','p25'),('WSS140','p25'),('WSS141','p25'),('WSS147','p25'),('WSS15','p25'),('WSS155','p25'),('WSS161','p25'),('WSS162','p25'),('WSS166','p25'),('WSS167','p25'),('WSS169','p25'),('WSS174','p25'),('WSS176','p25'),('WSS177','p25'),('WSS181','p25'),('WSS185','p25'),('WSS188','p25'),('WSS189','p25'),('WSS193','p25'),('WSS2','p25'),('WSS25','p25'),('WSS27','p25'),('WSS28','p25'),('WSS39','p25'),('WSS4','p25'),('WSS41','p25'),('WSS45','p25'),('WSS48','p25'),('WSS56','p25'),('WSS60','p25'),('WSS66','p25'),('WSS72','p25'),('WSS77','p25'),('WSS78','p25'),('WSS80','p25'),('WSS85','p25'),('WSS87','p25'),('WSS91','p25'),('WSS93','p25'),('WSS1','p26'),('WSS101','p26'),('WSS103','p26'),('WSS104','p26'),('WSS105','p26'),('WSS110','p26'),('WSS112','p26'),('WSS114','p26'),('WSS126','p26'),('WSS128','p26'),('WSS131','p26'),('WSS132','p26'),('WSS134','p26'),('WSS136','p26'),('WSS137','p26'),('WSS139','p26'),('WSS14','p26'),('WSS141','p26'),('WSS151','p26'),('WSS154','p26'),('WSS16','p26'),('WSS164','p26'),('WSS165','p26'),('WSS17','p26'),('WSS173','p26'),('WSS177','p26'),('WSS178','p26'),('WSS181','p26'),('WSS21','p26'),('WSS23','p26'),('WSS3','p26'),('WSS30','p26'),('WSS33','p26'),('WSS39','p26'),('WSS4','p26'),('WSS43','p26'),('WSS44','p26'),('WSS46','p26'),('WSS47','p26'),('WSS49','p26'),('WSS52','p26'),('WSS57','p26'),('WSS6','p26'),('WSS61','p26'),('WSS63','p26'),('WSS75','p26'),('WSS8','p26'),('WSS86','p26'),('WSS90','p26'),('WSS95','p26'),('WSS97','p26'),('WSS98','p26'),('WSS10','p27'),('WSS102','p27'),('WSS104','p27'),('WSS109','p27'),('WSS11','p27'),('WSS110','p27'),('WSS116','p27'),('WSS121','p27'),('WSS123','p27'),('WSS127','p27'),('WSS128','p27'),('WSS14','p27'),('WSS144','p27'),('WSS145','p27'),('WSS147','p27'),('WSS151','p27'),('WSS165','p27'),('WSS168','p27'),('WSS173','p27'),('WSS179','p27'),('WSS182','p27'),('WSS185','p27'),('WSS190','p27'),('WSS192','p27'),('WSS193','p27'),('WSS195','p27'),('WSS197','p27'),('WSS200','p27'),('WSS22','p27'),('WSS29','p27'),('WSS35','p27'),('WSS40','p27'),('WSS44','p27'),('WSS45','p27'),('WSS46','p27'),('WSS50','p27'),('WSS51','p27'),('WSS54','p27'),('WSS55','p27'),('WSS57','p27'),('WSS58','p27'),('WSS59','p27'),('WSS71','p27'),('WSS8','p27'),('WSS85','p27'),('WSS86','p27'),('WSS88','p27'),('WSS89','p27'),('WSS93','p27'),('WSS94','p27'),('WSS95','p27'),('WSS103','p28'),('WSS107','p28'),('WSS109','p28'),('WSS11','p28'),('WSS112','p28'),('WSS117','p28'),('WSS118','p28'),('WSS122','p28'),('WSS123','p28'),('WSS131','p28'),('WSS134','p28'),('WSS136','p28'),('WSS141','p28'),('WSS144','p28'),('WSS152','p28'),('WSS154','p28'),('WSS156','p28'),('WSS160','p28'),('WSS161','p28'),('WSS164','p28'),('WSS165','p28'),('WSS17','p28'),('WSS170','p28'),('WSS171','p28'),('WSS177','p28'),('WSS179','p28'),('WSS18','p28'),('WSS184','p28'),('WSS188','p28'),('WSS19','p28'),('WSS192','p28'),('WSS196','p28'),('WSS199','p28'),('WSS21','p28'),('WSS23','p28'),('WSS27','p28'),('WSS37','p28'),('WSS40','p28'),('WSS45','p28'),('WSS46','p28'),('WSS49','p28'),('WSS51','p28'),('WSS52','p28'),('WSS53','p28'),('WSS55','p28'),('WSS57','p28'),('WSS58','p28'),('WSS60','p28'),('WSS62','p28'),('WSS67','p28'),('WSS7','p28'),('WSS70','p28'),('WSS73','p28'),('WSS76','p28'),('WSS78','p28'),('WSS8','p28'),('WSS81','p28'),('WSS87','p28'),('WSS96','p28'),('WSS101','p29'),('WSS108','p29'),('WSS113','p29'),('WSS114','p29'),('WSS115','p29'),('WSS116','p29'),('WSS117','p29'),('WSS119','p29'),('WSS12','p29'),('WSS120','p29'),('WSS122','p29'),('WSS123','p29'),('WSS127','p29'),('WSS140','p29'),('WSS145','p29'),('WSS146','p29'),('WSS149','p29'),('WSS152','p29'),('WSS153','p29'),('WSS158','p29'),('WSS160','p29'),('WSS162','p29'),('WSS165','p29'),('WSS173','p29'),('WSS179','p29'),('WSS186','p29'),('WSS187','p29'),('WSS189','p29'),('WSS19','p29'),('WSS191','p29'),('WSS193','p29'),('WSS197','p29'),('WSS2','p29'),('WSS200','p29'),('WSS23','p29'),('WSS26','p29'),('WSS42','p29'),('WSS46','p29'),('WSS56','p29'),('WSS65','p29'),('WSS68','p29'),('WSS7','p29'),('WSS70','p29'),('WSS73','p29'),('WSS83','p29'),('WSS90','p29'),('WSS93','p29'),('WSS100','p3'),('WSS106','p3'),('WSS111','p3'),('WSS114','p3'),('WSS115','p3'),('WSS125','p3'),('WSS145','p3'),('WSS147','p3'),('WSS15','p3'),('WSS151','p3'),('WSS154','p3'),('WSS155','p3'),('WSS16','p3'),('WSS164','p3'),('WSS170','p3'),('WSS173','p3'),('WSS174','p3'),('WSS176','p3'),('WSS18','p3'),('WSS183','p3'),('WSS184','p3'),('WSS192','p3'),('WSS196','p3'),('WSS20','p3'),('WSS24','p3'),('WSS25','p3'),('WSS26','p3'),('WSS29','p3'),('WSS32','p3'),('WSS34','p3'),('WSS35','p3'),('WSS4','p3'),('WSS47','p3'),('WSS5','p3'),('WSS50','p3'),('WSS53','p3'),('WSS55','p3'),('WSS56','p3'),('WSS6','p3'),('WSS61','p3'),('WSS64','p3'),('WSS7','p3'),('WSS70','p3'),('WSS71','p3'),('WSS72','p3'),('WSS78','p3'),('WSS81','p3'),('WSS84','p3'),('WSS90','p3'),('WSS91','p3'),('WSS95','p3'),('WSS96','p3'),('WSS99','p3'),('WSS102','p30'),('WSS105','p30'),('WSS108','p30'),('WSS110','p30'),('WSS111','p30'),('WSS116','p30'),('WSS121','p30'),('WSS122','p30'),('WSS130','p30'),('WSS134','p30'),('WSS136','p30'),('WSS140','p30'),('WSS142','p30'),('WSS143','p30'),('WSS147','p30'),('WSS153','p30'),('WSS159','p30'),('WSS16','p30'),('WSS163','p30'),('WSS166','p30'),('WSS167','p30'),('WSS168','p30'),('WSS175','p30'),('WSS190','p30'),('WSS191','p30'),('WSS195','p30'),('WSS196','p30'),('WSS198','p30'),('WSS199','p30'),('WSS22','p30'),('WSS27','p30'),('WSS30','p30'),('WSS33','p30'),('WSS42','p30'),('WSS47','p30'),('WSS53','p30'),('WSS54','p30'),('WSS56','p30'),('WSS60','p30'),('WSS62','p30'),('WSS65','p30'),('WSS69','p30'),('WSS71','p30'),('WSS72','p30'),('WSS74','p30'),('WSS79','p30'),('WSS81','p30'),('WSS9','p30'),('WSS96','p30'),('WSS99','p30'),('WSS10','p4'),('WSS112','p4'),('WSS113','p4'),('WSS12','p4'),('WSS121','p4'),('WSS124','p4'),('WSS125','p4'),('WSS127','p4'),('WSS128','p4'),('WSS129','p4'),('WSS133','p4'),('WSS134','p4'),('WSS135','p4'),('WSS136','p4'),('WSS14','p4'),('WSS141','p4'),('WSS153','p4'),('WSS16','p4'),('WSS160','p4'),('WSS162','p4'),('WSS172','p4'),('WSS174','p4'),('WSS18','p4'),('WSS183','p4'),('WSS185','p4'),('WSS187','p4'),('WSS190','p4'),('WSS195','p4'),('WSS199','p4'),('WSS20','p4'),('WSS22','p4'),('WSS23','p4'),('WSS24','p4'),('WSS25','p4'),('WSS27','p4'),('WSS31','p4'),('WSS36','p4'),('WSS37','p4'),('WSS4','p4'),('WSS45','p4'),('WSS5','p4'),('WSS51','p4'),('WSS59','p4'),('WSS64','p4'),('WSS69','p4'),('WSS7','p4'),('WSS70','p4'),('WSS78','p4'),('WSS10','p5'),('WSS107','p5'),('WSS108','p5'),('WSS113','p5'),('WSS114','p5'),('WSS116','p5'),('WSS120','p5'),('WSS127','p5'),('WSS132','p5'),('WSS144','p5'),('WSS156','p5'),('WSS157','p5'),('WSS161','p5'),('WSS165','p5'),('WSS169','p5'),('WSS171','p5'),('WSS172','p5'),('WSS174','p5'),('WSS180','p5'),('WSS181','p5'),('WSS185','p5'),('WSS197','p5'),('WSS198','p5'),('WSS33','p5'),('WSS35','p5'),('WSS45','p5'),('WSS47','p5'),('WSS49','p5'),('WSS50','p5'),('WSS68','p5'),('WSS69','p5'),('WSS81','p5'),('WSS85','p5'),('WSS9','p5'),('WSS90','p5'),('WSS93','p5'),('WSS104','p6'),('WSS109','p6'),('WSS111','p6'),('WSS119','p6'),('WSS124','p6'),('WSS132','p6'),('WSS137','p6'),('WSS14','p6'),('WSS141','p6'),('WSS148','p6'),('WSS153','p6'),('WSS160','p6'),('WSS167','p6'),('WSS169','p6'),('WSS170','p6'),('WSS172','p6'),('WSS173','p6'),('WSS175','p6'),('WSS178','p6'),('WSS200','p6'),('WSS26','p6'),('WSS28','p6'),('WSS30','p6'),('WSS31','p6'),('WSS37','p6'),('WSS38','p6'),('WSS39','p6'),('WSS4','p6'),('WSS41','p6'),('WSS54','p6'),('WSS60','p6'),('WSS61','p6'),('WSS67','p6'),('WSS74','p6'),('WSS82','p6'),('WSS90','p6'),('WSS92','p6'),('WSS97','p6'),('WSS98','p6'),('WSS99','p6'),('WSS102','p7'),('WSS104','p7'),('WSS105','p7'),('WSS109','p7'),('WSS114','p7'),('WSS116','p7'),('WSS118','p7'),('WSS124','p7'),('WSS129','p7'),('WSS132','p7'),('WSS135','p7'),('WSS138','p7'),('WSS140','p7'),('WSS143','p7'),('WSS146','p7'),('WSS148','p7'),('WSS150','p7'),('WSS155','p7'),('WSS159','p7'),('WSS166','p7'),('WSS169','p7'),('WSS178','p7'),('WSS179','p7'),('WSS182','p7'),('WSS19','p7'),('WSS195','p7'),('WSS198','p7'),('WSS21','p7'),('WSS22','p7'),('WSS23','p7'),('WSS25','p7'),('WSS34','p7'),('WSS37','p7'),('WSS40','p7'),('WSS42','p7'),('WSS44','p7'),('WSS50','p7'),('WSS52','p7'),('WSS53','p7'),('WSS61','p7'),('WSS62','p7'),('WSS67','p7'),('WSS70','p7'),('WSS73','p7'),('WSS74','p7'),('WSS75','p7'),('WSS76','p7'),('WSS8','p7'),('WSS80','p7'),('WSS84','p7'),('WSS85','p7'),('WSS86','p7'),('WSS9','p7'),('WSS95','p7'),('WSS99','p7'),('WSS10','p8'),('WSS103','p8'),('WSS11','p8'),('WSS110','p8'),('WSS111','p8'),('WSS116','p8'),('WSS121','p8'),('WSS124','p8'),('WSS126','p8'),('WSS130','p8'),('WSS134','p8'),('WSS14','p8'),('WSS148','p8'),('WSS153','p8'),('WSS155','p8'),('WSS157','p8'),('WSS158','p8'),('WSS160','p8'),('WSS162','p8'),('WSS17','p8'),('WSS176','p8'),('WSS178','p8'),('WSS186','p8'),('WSS191','p8'),('WSS20','p8'),('WSS200','p8'),('WSS21','p8'),('WSS28','p8'),('WSS33','p8'),('WSS36','p8'),('WSS49','p8'),('WSS50','p8'),('WSS53','p8'),('WSS56','p8'),('WSS57','p8'),('WSS60','p8'),('WSS61','p8'),('WSS62','p8'),('WSS65','p8'),('WSS69','p8'),('WSS71','p8'),('WSS72','p8'),('WSS73','p8'),('WSS78','p8'),('WSS81','p8'),('WSS83','p8'),('WSS85','p8'),('WSS89','p8'),('WSS98','p8'),('WSS101','p9'),('WSS102','p9'),('WSS103','p9'),('WSS105','p9'),('WSS11','p9'),('WSS111','p9'),('WSS119','p9'),('WSS120','p9'),('WSS121','p9'),('WSS123','p9'),('WSS125','p9'),('WSS127','p9'),('WSS128','p9'),('WSS129','p9'),('WSS131','p9'),('WSS132','p9'),('WSS138','p9'),('WSS142','p9'),('WSS143','p9'),('WSS15','p9'),('WSS151','p9'),('WSS152','p9'),('WSS157','p9'),('WSS164','p9'),('WSS172','p9'),('WSS173','p9'),('WSS175','p9'),('WSS176','p9'),('WSS177','p9'),('WSS180','p9'),('WSS184','p9'),('WSS186','p9'),('WSS187','p9'),('WSS193','p9'),('WSS194','p9'),('WSS22','p9'),('WSS25','p9'),('WSS36','p9'),('WSS40','p9'),('WSS41','p9'),('WSS60','p9'),('WSS62','p9'),('WSS63','p9'),('WSS68','p9'),('WSS69','p9'),('WSS75','p9'),('WSS77','p9'),('WSS80','p9'),('WSS82','p9'),('WSS85','p9'),('WSS92','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS109'),(1,1,'WSS186'),(2,1,'WSS172'),(2,2,'WSS21'),(2,3,'WSS103'),(3,1,'WSS198'),(3,2,'WSS23'),(3,3,'WSS188'),(4,1,'WSS183'),(4,2,'WSS108'),(4,3,'WSS24'),(5,1,'WSS55'),(5,2,'WSS174'),(6,1,'WSS79'),(6,2,'WSS173'),(6,2,'WSS78'),(7,1,'WSS20'),(7,1,'WSS27'),(8,1,'WSS190'),(8,2,'WSS191'),(9,1,'WSS194'),(9,2,'WSS162'),(10,1,'WSS28'),(10,2,'WSS23'),(10,3,'WSS17'),(11,1,'WSS17'),(11,1,'WSS190'),(12,1,'WSS112'),(12,2,'WSS50'),(13,1,'WSS84'),(13,2,'WSS25'),(14,1,'WSS15'),(14,2,'WSS109'),(14,3,'WSS24'),(15,1,'WSS77'),(15,2,'WSS95'),(15,3,'WSS74'),(16,1,'WSS199'),(16,2,'WSS182'),(16,2,'WSS26'),(17,1,'WSS22'),(17,2,'WSS98'),(18,1,'WSS137'),(18,2,'WSS146'),(19,1,'WSS152'),(19,2,'WSS10'),(20,1,'WSS174'),(20,2,'WSS149'),(21,1,'WSS100'),(21,2,'WSS143'),(22,1,'WSS71'),(22,2,'WSS12'),(23,1,'WSS14'),(23,2,'WSS94'),(23,3,'WSS192'),(24,1,'WSS195'),(24,1,'WSS85'),(24,2,'WSS107'),(25,1,'WSS131'),(25,2,'WSS165'),(26,1,'WSS159'),(26,2,'WSS165'),(26,3,'WSS28'),(27,1,'WSS12'),(27,1,'WSS144'),(28,1,'WSS190'),(28,2,'WSS198'),(28,3,'WSS177'),(29,1,'WSS182'),(29,2,'WSS149'),(30,1,'WSS15'),(30,2,'WSS20'),(30,3,'WSS21'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-30  7:53:00
