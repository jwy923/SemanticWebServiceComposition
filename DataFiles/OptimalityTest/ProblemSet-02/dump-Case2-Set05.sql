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
INSERT INTO `initialgoalparameter` VALUES (2,'I','p1'),(7,'I','p1'),(10,'G','p1'),(13,'I','p1'),(14,'I','p1'),(18,'I','p1'),(19,'I','p1'),(21,'I','p1'),(22,'G','p1'),(24,'I','p1'),(5,'G','p10'),(6,'I','p10'),(8,'I','p10'),(9,'I','p10'),(11,'I','p10'),(13,'G','p10'),(16,'I','p10'),(21,'I','p10'),(26,'I','p10'),(5,'I','p11'),(9,'G','p11'),(11,'I','p11'),(15,'I','p11'),(16,'G','p11'),(17,'G','p11'),(20,'G','p11'),(24,'G','p11'),(28,'G','p11'),(29,'I','p11'),(4,'G','p12'),(6,'G','p12'),(7,'G','p12'),(10,'G','p12'),(13,'I','p12'),(15,'G','p12'),(16,'I','p12'),(19,'I','p12'),(29,'I','p12'),(1,'G','p13'),(7,'I','p13'),(10,'I','p13'),(24,'G','p13'),(27,'G','p13'),(29,'I','p13'),(1,'G','p14'),(3,'G','p14'),(4,'I','p14'),(7,'I','p14'),(8,'I','p14'),(18,'I','p14'),(19,'G','p14'),(20,'G','p14'),(22,'G','p14'),(25,'I','p14'),(27,'G','p14'),(28,'I','p14'),(1,'G','p15'),(2,'I','p15'),(9,'I','p15'),(11,'G','p15'),(14,'G','p15'),(16,'I','p15'),(18,'I','p15'),(21,'G','p15'),(24,'I','p15'),(27,'I','p15'),(28,'I','p15'),(30,'G','p15'),(4,'G','p16'),(11,'G','p16'),(14,'I','p16'),(15,'G','p16'),(17,'I','p16'),(18,'G','p16'),(22,'I','p16'),(23,'G','p16'),(30,'G','p16'),(4,'G','p17'),(7,'I','p17'),(10,'I','p17'),(11,'I','p17'),(20,'G','p17'),(25,'I','p17'),(28,'G','p17'),(1,'I','p18'),(3,'I','p18'),(6,'G','p18'),(7,'G','p18'),(9,'G','p18'),(12,'G','p18'),(15,'I','p18'),(16,'G','p18'),(18,'I','p18'),(23,'I','p18'),(1,'I','p19'),(3,'I','p19'),(7,'I','p19'),(8,'I','p19'),(11,'I','p19'),(13,'G','p19'),(18,'G','p19'),(20,'I','p19'),(22,'I','p19'),(30,'G','p19'),(2,'G','p2'),(3,'I','p2'),(4,'I','p2'),(12,'I','p2'),(14,'I','p2'),(17,'I','p2'),(19,'G','p2'),(26,'I','p2'),(30,'I','p2'),(2,'I','p20'),(3,'I','p20'),(8,'G','p20'),(9,'I','p20'),(10,'I','p20'),(12,'G','p20'),(14,'G','p20'),(17,'I','p20'),(18,'G','p20'),(23,'I','p20'),(24,'G','p20'),(25,'G','p20'),(30,'I','p20'),(2,'I','p21'),(3,'G','p21'),(5,'I','p21'),(9,'I','p21'),(10,'I','p21'),(14,'G','p21'),(19,'G','p21'),(23,'G','p21'),(26,'I','p21'),(29,'G','p21'),(30,'I','p21'),(1,'G','p22'),(2,'I','p22'),(4,'I','p22'),(5,'G','p22'),(12,'I','p22'),(15,'G','p22'),(18,'G','p22'),(24,'I','p22'),(25,'G','p22'),(29,'G','p22'),(30,'I','p22'),(2,'G','p23'),(7,'I','p23'),(8,'I','p23'),(9,'G','p23'),(11,'I','p23'),(15,'I','p23'),(16,'G','p23'),(21,'I','p23'),(22,'I','p23'),(25,'G','p23'),(27,'I','p23'),(28,'I','p23'),(5,'G','p24'),(6,'G','p24'),(8,'G','p24'),(17,'I','p24'),(19,'G','p24'),(21,'I','p24'),(26,'I','p24'),(28,'G','p24'),(1,'I','p25'),(4,'G','p25'),(5,'I','p25'),(6,'G','p25'),(7,'G','p25'),(9,'G','p25'),(14,'I','p25'),(16,'G','p25'),(20,'G','p25'),(23,'I','p25'),(24,'I','p25'),(25,'I','p25'),(27,'I','p25'),(28,'G','p25'),(10,'G','p26'),(12,'I','p26'),(17,'I','p26'),(19,'I','p26'),(20,'I','p26'),(21,'I','p26'),(23,'I','p26'),(24,'I','p26'),(26,'I','p26'),(1,'I','p27'),(2,'I','p27'),(3,'I','p27'),(6,'I','p27'),(7,'G','p27'),(13,'I','p27'),(20,'I','p27'),(24,'I','p27'),(27,'I','p27'),(3,'I','p28'),(6,'I','p28'),(12,'G','p28'),(14,'G','p28'),(16,'I','p28'),(17,'G','p28'),(18,'I','p28'),(19,'I','p28'),(20,'I','p28'),(28,'I','p28'),(29,'I','p28'),(1,'I','p29'),(4,'I','p29'),(8,'I','p29'),(9,'I','p29'),(11,'G','p29'),(13,'I','p29'),(22,'G','p29'),(23,'I','p29'),(25,'I','p29'),(26,'G','p29'),(27,'I','p29'),(1,'I','p3'),(4,'I','p3'),(5,'I','p3'),(8,'G','p3'),(10,'I','p3'),(11,'G','p3'),(15,'I','p3'),(21,'G','p3'),(22,'I','p3'),(26,'G','p3'),(27,'G','p3'),(28,'I','p3'),(29,'G','p3'),(30,'I','p3'),(2,'G','p30'),(4,'I','p30'),(6,'I','p30'),(14,'I','p30'),(15,'I','p30'),(16,'I','p30'),(19,'I','p30'),(23,'I','p30'),(26,'G','p30'),(29,'I','p30'),(2,'G','p4'),(12,'I','p4'),(13,'I','p4'),(15,'I','p4'),(16,'I','p4'),(20,'I','p4'),(21,'I','p4'),(22,'I','p4'),(25,'I','p4'),(26,'G','p4'),(28,'I','p4'),(3,'G','p5'),(5,'G','p5'),(11,'I','p5'),(19,'I','p5'),(21,'G','p5'),(22,'G','p5'),(25,'I','p5'),(30,'I','p5'),(6,'I','p6'),(8,'I','p6'),(12,'G','p6'),(13,'G','p6'),(14,'I','p6'),(17,'I','p6'),(23,'G','p6'),(25,'G','p6'),(5,'I','p7'),(6,'I','p7'),(12,'I','p7'),(13,'I','p7'),(15,'G','p7'),(17,'G','p7'),(18,'I','p7'),(22,'I','p7'),(23,'G','p7'),(24,'G','p7'),(27,'I','p7'),(29,'I','p7'),(30,'G','p7'),(5,'I','p8'),(10,'I','p8'),(13,'G','p8'),(20,'I','p8'),(26,'I','p8'),(27,'G','p8'),(3,'G','p9'),(8,'G','p9'),(9,'I','p9'),(10,'G','p9'),(12,'I','p9'),(17,'G','p9'),(21,'G','p9'),(29,'G','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS101','p1'),('WSS129','p1'),('WSS160','p1'),('WSS167','p1'),('WSS182','p1'),('WSS19','p1'),('WSS206','p1'),('WSS211','p1'),('WSS219','p1'),('WSS225','p1'),('WSS235','p1'),('WSS247','p1'),('WSS267','p1'),('WSS273','p1'),('WSS275','p1'),('WSS281','p1'),('WSS287','p1'),('WSS312','p1'),('WSS313','p1'),('WSS326','p1'),('WSS378','p1'),('WSS380','p1'),('WSS384','p1'),('WSS386','p1'),('WSS396','p1'),('WSS397','p1'),('WSS4','p1'),('WSS57','p1'),('WSS60','p1'),('WSS65','p1'),('WSS8','p1'),('WSS85','p1'),('WSS111','p10'),('WSS119','p10'),('WSS17','p10'),('WSS184','p10'),('WSS2','p10'),('WSS270','p10'),('WSS288','p10'),('WSS29','p10'),('WSS293','p10'),('WSS298','p10'),('WSS32','p10'),('WSS322','p10'),('WSS329','p10'),('WSS34','p10'),('WSS347','p10'),('WSS359','p10'),('WSS380','p10'),('WSS387','p10'),('WSS390','p10'),('WSS7','p10'),('WSS81','p10'),('WSS82','p10'),('WSS89','p10'),('WSS105','p11'),('WSS137','p11'),('WSS177','p11'),('WSS183','p11'),('WSS190','p11'),('WSS194','p11'),('WSS197','p11'),('WSS230','p11'),('WSS258','p11'),('WSS268','p11'),('WSS27','p11'),('WSS271','p11'),('WSS296','p11'),('WSS319','p11'),('WSS325','p11'),('WSS349','p11'),('WSS35','p11'),('WSS361','p11'),('WSS37','p11'),('WSS370','p11'),('WSS371','p11'),('WSS376','p11'),('WSS39','p11'),('WSS396','p11'),('WSS52','p11'),('WSS96','p11'),('WSS97','p11'),('WSS100','p12'),('WSS197','p12'),('WSS199','p12'),('WSS202','p12'),('WSS209','p12'),('WSS21','p12'),('WSS213','p12'),('WSS229','p12'),('WSS233','p12'),('WSS261','p12'),('WSS262','p12'),('WSS274','p12'),('WSS277','p12'),('WSS317','p12'),('WSS324','p12'),('WSS337','p12'),('WSS34','p12'),('WSS344','p12'),('WSS361','p12'),('WSS362','p12'),('WSS365','p12'),('WSS38','p12'),('WSS393','p12'),('WSS397','p12'),('WSS43','p12'),('WSS58','p12'),('WSS66','p12'),('WSS67','p12'),('WSS83','p12'),('WSS85','p12'),('WSS86','p12'),('WSS90','p12'),('WSS127','p13'),('WSS129','p13'),('WSS130','p13'),('WSS139','p13'),('WSS146','p13'),('WSS163','p13'),('WSS215','p13'),('WSS218','p13'),('WSS227','p13'),('WSS240','p13'),('WSS242','p13'),('WSS25','p13'),('WSS299','p13'),('WSS303','p13'),('WSS311','p13'),('WSS313','p13'),('WSS320','p13'),('WSS325','p13'),('WSS345','p13'),('WSS353','p13'),('WSS356','p13'),('WSS40','p13'),('WSS46','p13'),('WSS54','p13'),('WSS63','p13'),('WSS68','p13'),('WSS135','p14'),('WSS142','p14'),('WSS148','p14'),('WSS163','p14'),('WSS166','p14'),('WSS187','p14'),('WSS188','p14'),('WSS199','p14'),('WSS226','p14'),('WSS24','p14'),('WSS250','p14'),('WSS259','p14'),('WSS26','p14'),('WSS261','p14'),('WSS264','p14'),('WSS319','p14'),('WSS329','p14'),('WSS339','p14'),('WSS344','p14'),('WSS35','p14'),('WSS363','p14'),('WSS369','p14'),('WSS372','p14'),('WSS375','p14'),('WSS394','p14'),('WSS51','p14'),('WSS56','p14'),('WSS59','p14'),('WSS71','p14'),('WSS87','p14'),('WSS107','p15'),('WSS110','p15'),('WSS115','p15'),('WSS118','p15'),('WSS152','p15'),('WSS168','p15'),('WSS172','p15'),('WSS178','p15'),('WSS191','p15'),('WSS198','p15'),('WSS218','p15'),('WSS219','p15'),('WSS250','p15'),('WSS262','p15'),('WSS263','p15'),('WSS278','p15'),('WSS28','p15'),('WSS301','p15'),('WSS321','p15'),('WSS332','p15'),('WSS343','p15'),('WSS385','p15'),('WSS400','p15'),('WSS45','p15'),('WSS60','p15'),('WSS64','p15'),('WSS84','p15'),('WSS88','p15'),('WSS97','p15'),('WSS102','p16'),('WSS103','p16'),('WSS120','p16'),('WSS130','p16'),('WSS131','p16'),('WSS132','p16'),('WSS136','p16'),('WSS137','p16'),('WSS147','p16'),('WSS151','p16'),('WSS166','p16'),('WSS173','p16'),('WSS207','p16'),('WSS214','p16'),('WSS220','p16'),('WSS245','p16'),('WSS253','p16'),('WSS269','p16'),('WSS283','p16'),('WSS286','p16'),('WSS291','p16'),('WSS297','p16'),('WSS347','p16'),('WSS356','p16'),('WSS375','p16'),('WSS398','p16'),('WSS44','p16'),('WSS84','p16'),('WSS104','p17'),('WSS116','p17'),('WSS121','p17'),('WSS13','p17'),('WSS136','p17'),('WSS138','p17'),('WSS161','p17'),('WSS179','p17'),('WSS182','p17'),('WSS20','p17'),('WSS205','p17'),('WSS23','p17'),('WSS243','p17'),('WSS282','p17'),('WSS290','p17'),('WSS301','p17'),('WSS334','p17'),('WSS340','p17'),('WSS342','p17'),('WSS350','p17'),('WSS365','p17'),('WSS382','p17'),('WSS39','p17'),('WSS50','p17'),('WSS65','p17'),('WSS70','p17'),('WSS95','p17'),('WSS112','p18'),('WSS117','p18'),('WSS123','p18'),('WSS153','p18'),('WSS193','p18'),('WSS196','p18'),('WSS203','p18'),('WSS210','p18'),('WSS215','p18'),('WSS222','p18'),('WSS224','p18'),('WSS227','p18'),('WSS234','p18'),('WSS248','p18'),('WSS251','p18'),('WSS289','p18'),('WSS303','p18'),('WSS314','p18'),('WSS317','p18'),('WSS326','p18'),('WSS330','p18'),('WSS348','p18'),('WSS354','p18'),('WSS355','p18'),('WSS48','p18'),('WSS49','p18'),('WSS5','p18'),('WSS76','p18'),('WSS80','p18'),('WSS86','p18'),('WSS90','p18'),('WSS1','p19'),('WSS106','p19'),('WSS111','p19'),('WSS120','p19'),('WSS171','p19'),('WSS189','p19'),('WSS230','p19'),('WSS232','p19'),('WSS239','p19'),('WSS242','p19'),('WSS248','p19'),('WSS257','p19'),('WSS260','p19'),('WSS302','p19'),('WSS308','p19'),('WSS327','p19'),('WSS336','p19'),('WSS351','p19'),('WSS352','p19'),('WSS36','p19'),('WSS377','p19'),('WSS384','p19'),('WSS66','p19'),('WSS98','p19'),('WSS99','p19'),('WSS104','p2'),('WSS106','p2'),('WSS108','p2'),('WSS145','p2'),('WSS148','p2'),('WSS149','p2'),('WSS180','p2'),('WSS181','p2'),('WSS194','p2'),('WSS195','p2'),('WSS216','p2'),('WSS217','p2'),('WSS228','p2'),('WSS23','p2'),('WSS233','p2'),('WSS254','p2'),('WSS268','p2'),('WSS276','p2'),('WSS305','p2'),('WSS379','p2'),('WSS391','p2'),('WSS41','p2'),('WSS102','p20'),('WSS12','p20'),('WSS121','p20'),('WSS123','p20'),('WSS150','p20'),('WSS153','p20'),('WSS155','p20'),('WSS156','p20'),('WSS167','p20'),('WSS177','p20'),('WSS208','p20'),('WSS214','p20'),('WSS228','p20'),('WSS236','p20'),('WSS246','p20'),('WSS282','p20'),('WSS299','p20'),('WSS32','p20'),('WSS324','p20'),('WSS368','p20'),('WSS374','p20'),('WSS45','p20'),('WSS48','p20'),('WSS51','p20'),('WSS55','p20'),('WSS101','p21'),('WSS109','p21'),('WSS12','p21'),('WSS133','p21'),('WSS140','p21'),('WSS141','p21'),('WSS146','p21'),('WSS156','p21'),('WSS164','p21'),('WSS175','p21'),('WSS176','p21'),('WSS18','p21'),('WSS187','p21'),('WSS2','p21'),('WSS200','p21'),('WSS211','p21'),('WSS22','p21'),('WSS221','p21'),('WSS266','p21'),('WSS279','p21'),('WSS284','p21'),('WSS290','p21'),('WSS3','p21'),('WSS306','p21'),('WSS332','p21'),('WSS334','p21'),('WSS335','p21'),('WSS338','p21'),('WSS41','p21'),('WSS47','p21'),('WSS49','p21'),('WSS50','p21'),('WSS53','p21'),('WSS6','p21'),('WSS61','p21'),('WSS74','p21'),('WSS92','p21'),('WSS93','p21'),('WSS105','p22'),('WSS11','p22'),('WSS13','p22'),('WSS154','p22'),('WSS158','p22'),('WSS192','p22'),('WSS198','p22'),('WSS229','p22'),('WSS237','p22'),('WSS269','p22'),('WSS284','p22'),('WSS287','p22'),('WSS294','p22'),('WSS296','p22'),('WSS315','p22'),('WSS333','p22'),('WSS36','p22'),('WSS360','p22'),('WSS374','p22'),('WSS383','p22'),('WSS400','p22'),('WSS52','p22'),('WSS71','p22'),('WSS73','p22'),('WSS76','p22'),('WSS8','p22'),('WSS95','p22'),('WSS116','p23'),('WSS134','p23'),('WSS15','p23'),('WSS150','p23'),('WSS152','p23'),('WSS162','p23'),('WSS21','p23'),('WSS240','p23'),('WSS244','p23'),('WSS249','p23'),('WSS255','p23'),('WSS271','p23'),('WSS280','p23'),('WSS289','p23'),('WSS318','p23'),('WSS33','p23'),('WSS345','p23'),('WSS354','p23'),('WSS355','p23'),('WSS363','p23'),('WSS366','p23'),('WSS100','p24'),('WSS122','p24'),('WSS135','p24'),('WSS140','p24'),('WSS159','p24'),('WSS164','p24'),('WSS165','p24'),('WSS17','p24'),('WSS180','p24'),('WSS203','p24'),('WSS220','p24'),('WSS223','p24'),('WSS241','p24'),('WSS251','p24'),('WSS26','p24'),('WSS280','p24'),('WSS281','p24'),('WSS292','p24'),('WSS294','p24'),('WSS295','p24'),('WSS298','p24'),('WSS304','p24'),('WSS312','p24'),('WSS314','p24'),('WSS337','p24'),('WSS358','p24'),('WSS367','p24'),('WSS389','p24'),('WSS57','p24'),('WSS58','p24'),('WSS69','p24'),('WSS77','p24'),('WSS78','p24'),('WSS79','p24'),('WSS112','p25'),('WSS113','p25'),('WSS145','p25'),('WSS158','p25'),('WSS171','p25'),('WSS176','p25'),('WSS178','p25'),('WSS202','p25'),('WSS234','p25'),('WSS25','p25'),('WSS27','p25'),('WSS285','p25'),('WSS305','p25'),('WSS330','p25'),('WSS336','p25'),('WSS338','p25'),('WSS362','p25'),('WSS389','p25'),('WSS392','p25'),('WSS395','p25'),('WSS55','p25'),('WSS62','p25'),('WSS69','p25'),('WSS73','p25'),('WSS80','p25'),('WSS91','p25'),('WSS94','p25'),('WSS10','p26'),('WSS114','p26'),('WSS124','p26'),('WSS128','p26'),('WSS151','p26'),('WSS179','p26'),('WSS185','p26'),('WSS186','p26'),('WSS3','p26'),('WSS300','p26'),('WSS302','p26'),('WSS370','p26'),('WSS373','p26'),('WSS382','p26'),('WSS393','p26'),('WSS398','p26'),('WSS6','p26'),('WSS10','p27'),('WSS103','p27'),('WSS109','p27'),('WSS128','p27'),('WSS168','p27'),('WSS205','p27'),('WSS221','p27'),('WSS231','p27'),('WSS24','p27'),('WSS252','p27'),('WSS265','p27'),('WSS270','p27'),('WSS278','p27'),('WSS286','p27'),('WSS288','p27'),('WSS304','p27'),('WSS320','p27'),('WSS328','p27'),('WSS33','p27'),('WSS335','p27'),('WSS364','p27'),('WSS366','p27'),('WSS38','p27'),('WSS42','p27'),('WSS125','p28'),('WSS127','p28'),('WSS170','p28'),('WSS183','p28'),('WSS224','p28'),('WSS231','p28'),('WSS238','p28'),('WSS239','p28'),('WSS257','p28'),('WSS259','p28'),('WSS272','p28'),('WSS291','p28'),('WSS333','p28'),('WSS369','p28'),('WSS381','p28'),('WSS383','p28'),('WSS395','p28'),('WSS56','p28'),('WSS61','p28'),('WSS63','p28'),('WSS64','p28'),('WSS70','p28'),('WSS82','p28'),('WSS98','p28'),('WSS107','p29'),('WSS115','p29'),('WSS133','p29'),('WSS14','p29'),('WSS142','p29'),('WSS16','p29'),('WSS169','p29'),('WSS172','p29'),('WSS184','p29'),('WSS193','p29'),('WSS210','p29'),('WSS236','p29'),('WSS293','p29'),('WSS297','p29'),('WSS308','p29'),('WSS31','p29'),('WSS339','p29'),('WSS352','p29'),('WSS379','p29'),('WSS385','p29'),('WSS47','p29'),('WSS88','p29'),('WSS11','p3'),('WSS119','p3'),('WSS18','p3'),('WSS188','p3'),('WSS191','p3'),('WSS20','p3'),('WSS212','p3'),('WSS223','p3'),('WSS226','p3'),('WSS235','p3'),('WSS237','p3'),('WSS28','p3'),('WSS30','p3'),('WSS310','p3'),('WSS323','p3'),('WSS328','p3'),('WSS346','p3'),('WSS349','p3'),('WSS359','p3'),('WSS373','p3'),('WSS53','p3'),('WSS78','p3'),('WSS9','p3'),('WSS118','p30'),('WSS132','p30'),('WSS157','p30'),('WSS160','p30'),('WSS161','p30'),('WSS162','p30'),('WSS186','p30'),('WSS19','p30'),('WSS190','p30'),('WSS238','p30'),('WSS258','p30'),('WSS30','p30'),('WSS300','p30'),('WSS309','p30'),('WSS311','p30'),('WSS323','p30'),('WSS331','p30'),('WSS342','p30'),('WSS357','p30'),('WSS358','p30'),('WSS367','p30'),('WSS388','p30'),('WSS42','p30'),('WSS62','p30'),('WSS79','p30'),('WSS91','p30'),('WSS1','p4'),('WSS124','p4'),('WSS141','p4'),('WSS149','p4'),('WSS216','p4'),('WSS217','p4'),('WSS225','p4'),('WSS232','p4'),('WSS241','p4'),('WSS247','p4'),('WSS265','p4'),('WSS266','p4'),('WSS274','p4'),('WSS275','p4'),('WSS283','p4'),('WSS310','p4'),('WSS315','p4'),('WSS322','p4'),('WSS37','p4'),('WSS381','p4'),('WSS392','p4'),('WSS44','p4'),('WSS46','p4'),('WSS54','p4'),('WSS67','p4'),('WSS9','p4'),('WSS117','p5'),('WSS125','p5'),('WSS14','p5'),('WSS143','p5'),('WSS165','p5'),('WSS189','p5'),('WSS252','p5'),('WSS256','p5'),('WSS277','p5'),('WSS279','p5'),('WSS343','p5'),('WSS357','p5'),('WSS376','p5'),('WSS7','p5'),('WSS72','p5'),('WSS75','p5'),('WSS92','p5'),('WSS110','p6'),('WSS122','p6'),('WSS131','p6'),('WSS138','p6'),('WSS144','p6'),('WSS154','p6'),('WSS16','p6'),('WSS169','p6'),('WSS175','p6'),('WSS185','p6'),('WSS196','p6'),('WSS256','p6'),('WSS260','p6'),('WSS276','p6'),('WSS29','p6'),('WSS327','p6'),('WSS372','p6'),('WSS386','p6'),('WSS394','p6'),('WSS399','p6'),('WSS4','p6'),('WSS139','p7'),('WSS173','p7'),('WSS181','p7'),('WSS195','p7'),('WSS208','p7'),('WSS213','p7'),('WSS222','p7'),('WSS244','p7'),('WSS253','p7'),('WSS273','p7'),('WSS307','p7'),('WSS316','p7'),('WSS340','p7'),('WSS387','p7'),('WSS59','p7'),('WSS72','p7'),('WSS74','p7'),('WSS75','p7'),('WSS77','p7'),('WSS93','p7'),('WSS99','p7'),('WSS108','p8'),('WSS134','p8'),('WSS143','p8'),('WSS144','p8'),('WSS15','p8'),('WSS159','p8'),('WSS170','p8'),('WSS174','p8'),('WSS200','p8'),('WSS201','p8'),('WSS204','p8'),('WSS207','p8'),('WSS212','p8'),('WSS245','p8'),('WSS246','p8'),('WSS264','p8'),('WSS267','p8'),('WSS272','p8'),('WSS292','p8'),('WSS307','p8'),('WSS316','p8'),('WSS321','p8'),('WSS331','p8'),('WSS341','p8'),('WSS348','p8'),('WSS350','p8'),('WSS351','p8'),('WSS364','p8'),('WSS371','p8'),('WSS399','p8'),('WSS83','p8'),('WSS89','p8'),('WSS96','p8'),('WSS113','p9'),('WSS114','p9'),('WSS126','p9'),('WSS147','p9'),('WSS155','p9'),('WSS192','p9'),('WSS204','p9'),('WSS22','p9'),('WSS243','p9'),('WSS254','p9'),('WSS255','p9'),('WSS263','p9'),('WSS295','p9'),('WSS306','p9'),('WSS309','p9'),('WSS341','p9'),('WSS346','p9'),('WSS360','p9'),('WSS377','p9'),('WSS378','p9'),('WSS390','p9'),('WSS391','p9'),('WSS43','p9'),('WSS5','p9'),('WSS81','p9'),('WSS87','p9'),('WSS94','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS111','p1'),('WSS120','p1'),('WSS124','p1'),('WSS128','p1'),('WSS14','p1'),('WSS142','p1'),('WSS151','p1'),('WSS155','p1'),('WSS156','p1'),('WSS158','p1'),('WSS173','p1'),('WSS191','p1'),('WSS221','p1'),('WSS223','p1'),('WSS228','p1'),('WSS234','p1'),('WSS239','p1'),('WSS240','p1'),('WSS244','p1'),('WSS251','p1'),('WSS281','p1'),('WSS283','p1'),('WSS288','p1'),('WSS295','p1'),('WSS297','p1'),('WSS302','p1'),('WSS307','p1'),('WSS312','p1'),('WSS326','p1'),('WSS328','p1'),('WSS34','p1'),('WSS340','p1'),('WSS35','p1'),('WSS364','p1'),('WSS367','p1'),('WSS37','p1'),('WSS372','p1'),('WSS374','p1'),('WSS39','p1'),('WSS392','p1'),('WSS41','p1'),('WSS61','p1'),('WSS64','p1'),('WSS66','p1'),('WSS73','p1'),('WSS96','p1'),('WSS100','p10'),('WSS103','p10'),('WSS106','p10'),('WSS12','p10'),('WSS121','p10'),('WSS132','p10'),('WSS143','p10'),('WSS147','p10'),('WSS151','p10'),('WSS160','p10'),('WSS166','p10'),('WSS167','p10'),('WSS169','p10'),('WSS175','p10'),('WSS176','p10'),('WSS181','p10'),('WSS185','p10'),('WSS19','p10'),('WSS204','p10'),('WSS212','p10'),('WSS216','p10'),('WSS222','p10'),('WSS229','p10'),('WSS238','p10'),('WSS24','p10'),('WSS246','p10'),('WSS25','p10'),('WSS255','p10'),('WSS260','p10'),('WSS282','p10'),('WSS290','p10'),('WSS292','p10'),('WSS310','p10'),('WSS317','p10'),('WSS319','p10'),('WSS332','p10'),('WSS338','p10'),('WSS342','p10'),('WSS349','p10'),('WSS35','p10'),('WSS363','p10'),('WSS367','p10'),('WSS369','p10'),('WSS370','p10'),('WSS374','p10'),('WSS379','p10'),('WSS380','p10'),('WSS397','p10'),('WSS398','p10'),('WSS47','p10'),('WSS82','p10'),('WSS89','p10'),('WSS90','p10'),('WSS91','p10'),('WSS108','p11'),('WSS113','p11'),('WSS131','p11'),('WSS138','p11'),('WSS142','p11'),('WSS147','p11'),('WSS150','p11'),('WSS152','p11'),('WSS169','p11'),('WSS173','p11'),('WSS180','p11'),('WSS193','p11'),('WSS2','p11'),('WSS207','p11'),('WSS211','p11'),('WSS237','p11'),('WSS243','p11'),('WSS249','p11'),('WSS250','p11'),('WSS251','p11'),('WSS257','p11'),('WSS263','p11'),('WSS268','p11'),('WSS272','p11'),('WSS285','p11'),('WSS301','p11'),('WSS333','p11'),('WSS337','p11'),('WSS346','p11'),('WSS360','p11'),('WSS365','p11'),('WSS376','p11'),('WSS384','p11'),('WSS394','p11'),('WSS62','p11'),('WSS66','p11'),('WSS69','p11'),('WSS76','p11'),('WSS87','p11'),('WSS101','p12'),('WSS116','p12'),('WSS119','p12'),('WSS125','p12'),('WSS129','p12'),('WSS13','p12'),('WSS137','p12'),('WSS140','p12'),('WSS149','p12'),('WSS159','p12'),('WSS160','p12'),('WSS167','p12'),('WSS179','p12'),('WSS18','p12'),('WSS183','p12'),('WSS192','p12'),('WSS193','p12'),('WSS194','p12'),('WSS200','p12'),('WSS201','p12'),('WSS204','p12'),('WSS21','p12'),('WSS216','p12'),('WSS217','p12'),('WSS222','p12'),('WSS224','p12'),('WSS233','p12'),('WSS234','p12'),('WSS245','p12'),('WSS246','p12'),('WSS253','p12'),('WSS268','p12'),('WSS27','p12'),('WSS282','p12'),('WSS289','p12'),('WSS29','p12'),('WSS319','p12'),('WSS325','p12'),('WSS339','p12'),('WSS358','p12'),('WSS364','p12'),('WSS376','p12'),('WSS382','p12'),('WSS388','p12'),('WSS389','p12'),('WSS397','p12'),('WSS4','p12'),('WSS45','p12'),('WSS5','p12'),('WSS50','p12'),('WSS53','p12'),('WSS55','p12'),('WSS58','p12'),('WSS65','p12'),('WSS68','p12'),('WSS71','p12'),('WSS82','p12'),('WSS89','p12'),('WSS9','p12'),('WSS92','p12'),('WSS96','p12'),('WSS115','p13'),('WSS12','p13'),('WSS13','p13'),('WSS135','p13'),('WSS136','p13'),('WSS14','p13'),('WSS140','p13'),('WSS145','p13'),('WSS146','p13'),('WSS201','p13'),('WSS205','p13'),('WSS207','p13'),('WSS217','p13'),('WSS229','p13'),('WSS231','p13'),('WSS236','p13'),('WSS258','p13'),('WSS259','p13'),('WSS261','p13'),('WSS269','p13'),('WSS276','p13'),('WSS300','p13'),('WSS305','p13'),('WSS307','p13'),('WSS339','p13'),('WSS341','p13'),('WSS35','p13'),('WSS366','p13'),('WSS369','p13'),('WSS375','p13'),('WSS394','p13'),('WSS396','p13'),('WSS54','p13'),('WSS56','p13'),('WSS57','p13'),('WSS67','p13'),('WSS70','p13'),('WSS97','p13'),('WSS1','p14'),('WSS115','p14'),('WSS118','p14'),('WSS135','p14'),('WSS141','p14'),('WSS16','p14'),('WSS162','p14'),('WSS168','p14'),('WSS180','p14'),('WSS194','p14'),('WSS213','p14'),('WSS219','p14'),('WSS225','p14'),('WSS231','p14'),('WSS236','p14'),('WSS237','p14'),('WSS238','p14'),('WSS248','p14'),('WSS256','p14'),('WSS278','p14'),('WSS279','p14'),('WSS280','p14'),('WSS294','p14'),('WSS295','p14'),('WSS30','p14'),('WSS305','p14'),('WSS307','p14'),('WSS315','p14'),('WSS316','p14'),('WSS328','p14'),('WSS331','p14'),('WSS343','p14'),('WSS355','p14'),('WSS392','p14'),('WSS397','p14'),('WSS46','p14'),('WSS6','p14'),('WSS60','p14'),('WSS7','p14'),('WSS73','p14'),('WSS89','p14'),('WSS97','p14'),('WSS100','p15'),('WSS103','p15'),('WSS104','p15'),('WSS105','p15'),('WSS117','p15'),('WSS123','p15'),('WSS128','p15'),('WSS143','p15'),('WSS165','p15'),('WSS172','p15'),('WSS175','p15'),('WSS186','p15'),('WSS187','p15'),('WSS21','p15'),('WSS212','p15'),('WSS219','p15'),('WSS220','p15'),('WSS233','p15'),('WSS236','p15'),('WSS244','p15'),('WSS260','p15'),('WSS281','p15'),('WSS290','p15'),('WSS294','p15'),('WSS303','p15'),('WSS31','p15'),('WSS316','p15'),('WSS341','p15'),('WSS350','p15'),('WSS356','p15'),('WSS373','p15'),('WSS390','p15'),('WSS392','p15'),('WSS397','p15'),('WSS5','p15'),('WSS55','p15'),('WSS57','p15'),('WSS58','p15'),('WSS63','p15'),('WSS64','p15'),('WSS65','p15'),('WSS69','p15'),('WSS7','p15'),('WSS76','p15'),('WSS8','p15'),('WSS82','p15'),('WSS88','p15'),('WSS102','p16'),('WSS104','p16'),('WSS121','p16'),('WSS133','p16'),('WSS153','p16'),('WSS156','p16'),('WSS163','p16'),('WSS177','p16'),('WSS184','p16'),('WSS189','p16'),('WSS192','p16'),('WSS20','p16'),('WSS202','p16'),('WSS206','p16'),('WSS21','p16'),('WSS219','p16'),('WSS227','p16'),('WSS228','p16'),('WSS23','p16'),('WSS241','p16'),('WSS247','p16'),('WSS261','p16'),('WSS286','p16'),('WSS287','p16'),('WSS292','p16'),('WSS304','p16'),('WSS306','p16'),('WSS312','p16'),('WSS323','p16'),('WSS328','p16'),('WSS339','p16'),('WSS35','p16'),('WSS358','p16'),('WSS372','p16'),('WSS380','p16'),('WSS385','p16'),('WSS386','p16'),('WSS393','p16'),('WSS396','p16'),('WSS47','p16'),('WSS56','p16'),('WSS58','p16'),('WSS72','p16'),('WSS8','p16'),('WSS82','p16'),('WSS106','p17'),('WSS122','p17'),('WSS130','p17'),('WSS131','p17'),('WSS137','p17'),('WSS144','p17'),('WSS145','p17'),('WSS156','p17'),('WSS159','p17'),('WSS166','p17'),('WSS168','p17'),('WSS172','p17'),('WSS175','p17'),('WSS18','p17'),('WSS199','p17'),('WSS209','p17'),('WSS214','p17'),('WSS217','p17'),('WSS22','p17'),('WSS223','p17'),('WSS226','p17'),('WSS232','p17'),('WSS235','p17'),('WSS243','p17'),('WSS245','p17'),('WSS246','p17'),('WSS254','p17'),('WSS255','p17'),('WSS256','p17'),('WSS257','p17'),('WSS262','p17'),('WSS27','p17'),('WSS286','p17'),('WSS291','p17'),('WSS3','p17'),('WSS30','p17'),('WSS325','p17'),('WSS339','p17'),('WSS34','p17'),('WSS345','p17'),('WSS348','p17'),('WSS354','p17'),('WSS356','p17'),('WSS36','p17'),('WSS362','p17'),('WSS366','p17'),('WSS37','p17'),('WSS373','p17'),('WSS398','p17'),('WSS399','p17'),('WSS41','p17'),('WSS42','p17'),('WSS46','p17'),('WSS5','p17'),('WSS53','p17'),('WSS68','p17'),('WSS72','p17'),('WSS85','p17'),('WSS86','p17'),('WSS98','p17'),('WSS108','p18'),('WSS114','p18'),('WSS12','p18'),('WSS123','p18'),('WSS13','p18'),('WSS134','p18'),('WSS152','p18'),('WSS171','p18'),('WSS173','p18'),('WSS174','p18'),('WSS181','p18'),('WSS190','p18'),('WSS191','p18'),('WSS20','p18'),('WSS209','p18'),('WSS215','p18'),('WSS234','p18'),('WSS235','p18'),('WSS249','p18'),('WSS252','p18'),('WSS254','p18'),('WSS266','p18'),('WSS273','p18'),('WSS278','p18'),('WSS281','p18'),('WSS286','p18'),('WSS287','p18'),('WSS297','p18'),('WSS311','p18'),('WSS331','p18'),('WSS335','p18'),('WSS348','p18'),('WSS351','p18'),('WSS378','p18'),('WSS387','p18'),('WSS39','p18'),('WSS396','p18'),('WSS40','p18'),('WSS42','p18'),('WSS46','p18'),('WSS51','p18'),('WSS68','p18'),('WSS69','p18'),('WSS70','p18'),('WSS71','p18'),('WSS74','p18'),('WSS77','p18'),('WSS8','p18'),('WSS80','p18'),('WSS88','p18'),('WSS94','p18'),('WSS97','p18'),('WSS10','p19'),('WSS101','p19'),('WSS108','p19'),('WSS120','p19'),('WSS121','p19'),('WSS127','p19'),('WSS139','p19'),('WSS15','p19'),('WSS157','p19'),('WSS164','p19'),('WSS165','p19'),('WSS166','p19'),('WSS174','p19'),('WSS179','p19'),('WSS190','p19'),('WSS198','p19'),('WSS203','p19'),('WSS206','p19'),('WSS221','p19'),('WSS226','p19'),('WSS238','p19'),('WSS24','p19'),('WSS270','p19'),('WSS273','p19'),('WSS274','p19'),('WSS291','p19'),('WSS298','p19'),('WSS303','p19'),('WSS307','p19'),('WSS31','p19'),('WSS321','p19'),('WSS329','p19'),('WSS337','p19'),('WSS338','p19'),('WSS343','p19'),('WSS344','p19'),('WSS349','p19'),('WSS351','p19'),('WSS352','p19'),('WSS360','p19'),('WSS362','p19'),('WSS363','p19'),('WSS368','p19'),('WSS377','p19'),('WSS384','p19'),('WSS50','p19'),('WSS6','p19'),('WSS67','p19'),('WSS69','p19'),('WSS70','p19'),('WSS81','p19'),('WSS86','p19'),('WSS9','p19'),('WSS95','p19'),('WSS11','p2'),('WSS113','p2'),('WSS122','p2'),('WSS138','p2'),('WSS142','p2'),('WSS143','p2'),('WSS144','p2'),('WSS151','p2'),('WSS164','p2'),('WSS178','p2'),('WSS19','p2'),('WSS198','p2'),('WSS201','p2'),('WSS210','p2'),('WSS230','p2'),('WSS241','p2'),('WSS244','p2'),('WSS25','p2'),('WSS254','p2'),('WSS271','p2'),('WSS272','p2'),('WSS274','p2'),('WSS275','p2'),('WSS277','p2'),('WSS278','p2'),('WSS300','p2'),('WSS317','p2'),('WSS324','p2'),('WSS334','p2'),('WSS336','p2'),('WSS346','p2'),('WSS348','p2'),('WSS353','p2'),('WSS357','p2'),('WSS371','p2'),('WSS372','p2'),('WSS374','p2'),('WSS390','p2'),('WSS391','p2'),('WSS4','p2'),('WSS44','p2'),('WSS50','p2'),('WSS58','p2'),('WSS64','p2'),('WSS76','p2'),('WSS90','p2'),('WSS99','p2'),('WSS105','p20'),('WSS109','p20'),('WSS110','p20'),('WSS111','p20'),('WSS13','p20'),('WSS141','p20'),('WSS143','p20'),('WSS146','p20'),('WSS150','p20'),('WSS154','p20'),('WSS176','p20'),('WSS186','p20'),('WSS202','p20'),('WSS208','p20'),('WSS211','p20'),('WSS213','p20'),('WSS214','p20'),('WSS215','p20'),('WSS222','p20'),('WSS225','p20'),('WSS227','p20'),('WSS233','p20'),('WSS26','p20'),('WSS270','p20'),('WSS271','p20'),('WSS28','p20'),('WSS283','p20'),('WSS289','p20'),('WSS311','p20'),('WSS313','p20'),('WSS32','p20'),('WSS33','p20'),('WSS351','p20'),('WSS356','p20'),('WSS359','p20'),('WSS367','p20'),('WSS368','p20'),('WSS386','p20'),('WSS52','p20'),('WSS56','p20'),('WSS8','p20'),('WSS112','p21'),('WSS113','p21'),('WSS125','p21'),('WSS126','p21'),('WSS129','p21'),('WSS153','p21'),('WSS155','p21'),('WSS156','p21'),('WSS159','p21'),('WSS163','p21'),('WSS170','p21'),('WSS18','p21'),('WSS180','p21'),('WSS188','p21'),('WSS19','p21'),('WSS190','p21'),('WSS195','p21'),('WSS199','p21'),('WSS20','p21'),('WSS200','p21'),('WSS210','p21'),('WSS218','p21'),('WSS220','p21'),('WSS227','p21'),('WSS25','p21'),('WSS264','p21'),('WSS265','p21'),('WSS276','p21'),('WSS29','p21'),('WSS295','p21'),('WSS297','p21'),('WSS3','p21'),('WSS309','p21'),('WSS311','p21'),('WSS316','p21'),('WSS317','p21'),('WSS318','p21'),('WSS34','p21'),('WSS355','p21'),('WSS357','p21'),('WSS361','p21'),('WSS366','p21'),('WSS368','p21'),('WSS370','p21'),('WSS375','p21'),('WSS383','p21'),('WSS386','p21'),('WSS392','p21'),('WSS50','p21'),('WSS61','p21'),('WSS72','p21'),('WSS78','p21'),('WSS81','p21'),('WSS107','p22'),('WSS114','p22'),('WSS119','p22'),('WSS124','p22'),('WSS126','p22'),('WSS132','p22'),('WSS136','p22'),('WSS137','p22'),('WSS139','p22'),('WSS146','p22'),('WSS18','p22'),('WSS208','p22'),('WSS216','p22'),('WSS22','p22'),('WSS226','p22'),('WSS253','p22'),('WSS259','p22'),('WSS263','p22'),('WSS265','p22'),('WSS267','p22'),('WSS274','p22'),('WSS293','p22'),('WSS296','p22'),('WSS303','p22'),('WSS323','p22'),('WSS326','p22'),('WSS332','p22'),('WSS334','p22'),('WSS336','p22'),('WSS340','p22'),('WSS352','p22'),('WSS36','p22'),('WSS363','p22'),('WSS377','p22'),('WSS390','p22'),('WSS399','p22'),('WSS42','p22'),('WSS43','p22'),('WSS47','p22'),('WSS48','p22'),('WSS49','p22'),('WSS66','p22'),('WSS74','p22'),('WSS75','p22'),('WSS81','p22'),('WSS83','p22'),('WSS84','p22'),('WSS92','p22'),('WSS1','p23'),('WSS102','p23'),('WSS107','p23'),('WSS109','p23'),('WSS111','p23'),('WSS117','p23'),('WSS129','p23'),('WSS133','p23'),('WSS16','p23'),('WSS160','p23'),('WSS167','p23'),('WSS170','p23'),('WSS173','p23'),('WSS182','p23'),('WSS203','p23'),('WSS209','p23'),('WSS21','p23'),('WSS243','p23'),('WSS259','p23'),('WSS26','p23'),('WSS262','p23'),('WSS267','p23'),('WSS274','p23'),('WSS28','p23'),('WSS281','p23'),('WSS283','p23'),('WSS298','p23'),('WSS305','p23'),('WSS31','p23'),('WSS314','p23'),('WSS318','p23'),('WSS321','p23'),('WSS332','p23'),('WSS337','p23'),('WSS341','p23'),('WSS354','p23'),('WSS355','p23'),('WSS36','p23'),('WSS369','p23'),('WSS378','p23'),('WSS388','p23'),('WSS391','p23'),('WSS396','p23'),('WSS45','p23'),('WSS48','p23'),('WSS49','p23'),('WSS60','p23'),('WSS61','p23'),('WSS64','p23'),('WSS65','p23'),('WSS67','p23'),('WSS80','p23'),('WSS95','p23'),('WSS100','p24'),('WSS112','p24'),('WSS141','p24'),('WSS144','p24'),('WSS145','p24'),('WSS148','p24'),('WSS154','p24'),('WSS157','p24'),('WSS158','p24'),('WSS161','p24'),('WSS165','p24'),('WSS172','p24'),('WSS183','p24'),('WSS185','p24'),('WSS187','p24'),('WSS192','p24'),('WSS20','p24'),('WSS207','p24'),('WSS211','p24'),('WSS216','p24'),('WSS232','p24'),('WSS238','p24'),('WSS239','p24'),('WSS240','p24'),('WSS249','p24'),('WSS251','p24'),('WSS262','p24'),('WSS269','p24'),('WSS280','p24'),('WSS282','p24'),('WSS29','p24'),('WSS291','p24'),('WSS301','p24'),('WSS310','p24'),('WSS313','p24'),('WSS321','p24'),('WSS324','p24'),('WSS330','p24'),('WSS334','p24'),('WSS340','p24'),('WSS345','p24'),('WSS349','p24'),('WSS353','p24'),('WSS356','p24'),('WSS361','p24'),('WSS381','p24'),('WSS382','p24'),('WSS384','p24'),('WSS389','p24'),('WSS395','p24'),('WSS399','p24'),('WSS400','p24'),('WSS52','p24'),('WSS53','p24'),('WSS57','p24'),('WSS6','p24'),('WSS62','p24'),('WSS75','p24'),('WSS79','p24'),('WSS86','p24'),('WSS87','p24'),('WSS93','p24'),('WSS10','p25'),('WSS107','p25'),('WSS122','p25'),('WSS132','p25'),('WSS144','p25'),('WSS149','p25'),('WSS155','p25'),('WSS158','p25'),('WSS163','p25'),('WSS170','p25'),('WSS183','p25'),('WSS187','p25'),('WSS196','p25'),('WSS198','p25'),('WSS202','p25'),('WSS213','p25'),('WSS215','p25'),('WSS217','p25'),('WSS22','p25'),('WSS220','p25'),('WSS223','p25'),('WSS229','p25'),('WSS23','p25'),('WSS239','p25'),('WSS241','p25'),('WSS242','p25'),('WSS249','p25'),('WSS255','p25'),('WSS26','p25'),('WSS261','p25'),('WSS269','p25'),('WSS275','p25'),('WSS289','p25'),('WSS290','p25'),('WSS291','p25'),('WSS299','p25'),('WSS318','p25'),('WSS326','p25'),('WSS328','p25'),('WSS329','p25'),('WSS33','p25'),('WSS333','p25'),('WSS350','p25'),('WSS358','p25'),('WSS36','p25'),('WSS361','p25'),('WSS370','p25'),('WSS38','p25'),('WSS383','p25'),('WSS398','p25'),('WSS54','p25'),('WSS59','p25'),('WSS73','p25'),('WSS79','p25'),('WSS80','p25'),('WSS92','p25'),('WSS11','p26'),('WSS111','p26'),('WSS135','p26'),('WSS148','p26'),('WSS153','p26'),('WSS157','p26'),('WSS16','p26'),('WSS17','p26'),('WSS177','p26'),('WSS182','p26'),('WSS184','p26'),('WSS188','p26'),('WSS189','p26'),('WSS19','p26'),('WSS205','p26'),('WSS23','p26'),('WSS230','p26'),('WSS248','p26'),('WSS250','p26'),('WSS252','p26'),('WSS257','p26'),('WSS26','p26'),('WSS268','p26'),('WSS278','p26'),('WSS293','p26'),('WSS306','p26'),('WSS32','p26'),('WSS327','p26'),('WSS329','p26'),('WSS348','p26'),('WSS379','p26'),('WSS385','p26'),('WSS387','p26'),('WSS400','p26'),('WSS48','p26'),('WSS63','p26'),('WSS7','p26'),('WSS71','p26'),('WSS74','p26'),('WSS81','p26'),('WSS87','p26'),('WSS89','p26'),('WSS97','p26'),('WSS101','p27'),('WSS102','p27'),('WSS112','p27'),('WSS115','p27'),('WSS116','p27'),('WSS127','p27'),('WSS130','p27'),('WSS136','p27'),('WSS145','p27'),('WSS148','p27'),('WSS158','p27'),('WSS161','p27'),('WSS162','p27'),('WSS164','p27'),('WSS167','p27'),('WSS17','p27'),('WSS171','p27'),('WSS184','p27'),('WSS193','p27'),('WSS194','p27'),('WSS199','p27'),('WSS201','p27'),('WSS206','p27'),('WSS228','p27'),('WSS237','p27'),('WSS24','p27'),('WSS245','p27'),('WSS247','p27'),('WSS256','p27'),('WSS266','p27'),('WSS285','p27'),('WSS304','p27'),('WSS308','p27'),('WSS313','p27'),('WSS323','p27'),('WSS330','p27'),('WSS340','p27'),('WSS341','p27'),('WSS350','p27'),('WSS357','p27'),('WSS359','p27'),('WSS361','p27'),('WSS369','p27'),('WSS377','p27'),('WSS378','p27'),('WSS383','p27'),('WSS384','p27'),('WSS44','p27'),('WSS5','p27'),('WSS51','p27'),('WSS59','p27'),('WSS98','p27'),('WSS10','p28'),('WSS102','p28'),('WSS106','p28'),('WSS11','p28'),('WSS120','p28'),('WSS125','p28'),('WSS128','p28'),('WSS130','p28'),('WSS15','p28'),('WSS152','p28'),('WSS155','p28'),('WSS164','p28'),('WSS176','p28'),('WSS185','p28'),('WSS193','p28'),('WSS194','p28'),('WSS202','p28'),('WSS214','p28'),('WSS225','p28'),('WSS226','p28'),('WSS228','p28'),('WSS234','p28'),('WSS239','p28'),('WSS252','p28'),('WSS253','p28'),('WSS264','p28'),('WSS271','p28'),('WSS276','p28'),('WSS277','p28'),('WSS279','p28'),('WSS28','p28'),('WSS285','p28'),('WSS287','p28'),('WSS29','p28'),('WSS295','p28'),('WSS296','p28'),('WSS298','p28'),('WSS301','p28'),('WSS322','p28'),('WSS33','p28'),('WSS330','p28'),('WSS347','p28'),('WSS354','p28'),('WSS358','p28'),('WSS360','p28'),('WSS376','p28'),('WSS398','p28'),('WSS43','p28'),('WSS44','p28'),('WSS51','p28'),('WSS84','p28'),('WSS85','p28'),('WSS94','p28'),('WSS1','p29'),('WSS10','p29'),('WSS113','p29'),('WSS118','p29'),('WSS119','p29'),('WSS133','p29'),('WSS139','p29'),('WSS162','p29'),('WSS178','p29'),('WSS184','p29'),('WSS189','p29'),('WSS2','p29'),('WSS200','p29'),('WSS210','p29'),('WSS218','p29'),('WSS224','p29'),('WSS230','p29'),('WSS231','p29'),('WSS235','p29'),('WSS237','p29'),('WSS24','p29'),('WSS258','p29'),('WSS260','p29'),('WSS266','p29'),('WSS279','p29'),('WSS284','p29'),('WSS290','p29'),('WSS294','p29'),('WSS296','p29'),('WSS299','p29'),('WSS301','p29'),('WSS302','p29'),('WSS304','p29'),('WSS308','p29'),('WSS315','p29'),('WSS324','p29'),('WSS325','p29'),('WSS327','p29'),('WSS337','p29'),('WSS342','p29'),('WSS344','p29'),('WSS364','p29'),('WSS370','p29'),('WSS371','p29'),('WSS382','p29'),('WSS390','p29'),('WSS393','p29'),('WSS395','p29'),('WSS4','p29'),('WSS41','p29'),('WSS52','p29'),('WSS6','p29'),('WSS61','p29'),('WSS85','p29'),('WSS103','p3'),('WSS118','p3'),('WSS125','p3'),('WSS126','p3'),('WSS127','p3'),('WSS131','p3'),('WSS134','p3'),('WSS137','p3'),('WSS138','p3'),('WSS147','p3'),('WSS16','p3'),('WSS160','p3'),('WSS176','p3'),('WSS187','p3'),('WSS190','p3'),('WSS195','p3'),('WSS204','p3'),('WSS227','p3'),('WSS245','p3'),('WSS258','p3'),('WSS264','p3'),('WSS27','p3'),('WSS275','p3'),('WSS310','p3'),('WSS312','p3'),('WSS320','p3'),('WSS329','p3'),('WSS330','p3'),('WSS331','p3'),('WSS335','p3'),('WSS343','p3'),('WSS346','p3'),('WSS347','p3'),('WSS352','p3'),('WSS379','p3'),('WSS380','p3'),('WSS387','p3'),('WSS40','p3'),('WSS73','p3'),('WSS78','p3'),('WSS83','p3'),('WSS86','p3'),('WSS87','p3'),('WSS103','p30'),('WSS110','p30'),('WSS118','p30'),('WSS127','p30'),('WSS136','p30'),('WSS14','p30'),('WSS15','p30'),('WSS150','p30'),('WSS161','p30'),('WSS162','p30'),('WSS172','p30'),('WSS178','p30'),('WSS181','p30'),('WSS203','p30'),('WSS205','p30'),('WSS207','p30'),('WSS215','p30'),('WSS23','p30'),('WSS235','p30'),('WSS240','p30'),('WSS241','p30'),('WSS244','p30'),('WSS259','p30'),('WSS263','p30'),('WSS27','p30'),('WSS270','p30'),('WSS272','p30'),('WSS277','p30'),('WSS288','p30'),('WSS292','p30'),('WSS3','p30'),('WSS30','p30'),('WSS302','p30'),('WSS314','p30'),('WSS318','p30'),('WSS319','p30'),('WSS32','p30'),('WSS326','p30'),('WSS335','p30'),('WSS336','p30'),('WSS338','p30'),('WSS346','p30'),('WSS353','p30'),('WSS355','p30'),('WSS362','p30'),('WSS379','p30'),('WSS38','p30'),('WSS381','p30'),('WSS45','p30'),('WSS55','p30'),('WSS63','p30'),('WSS66','p30'),('WSS67','p30'),('WSS75','p30'),('WSS84','p30'),('WSS9','p30'),('WSS100','p4'),('WSS106','p4'),('WSS116','p4'),('WSS12','p4'),('WSS123','p4'),('WSS124','p4'),('WSS133','p4'),('WSS134','p4'),('WSS135','p4'),('WSS14','p4'),('WSS148','p4'),('WSS15','p4'),('WSS154','p4'),('WSS168','p4'),('WSS17','p4'),('WSS174','p4'),('WSS175','p4'),('WSS177','p4'),('WSS182','p4'),('WSS183','p4'),('WSS186','p4'),('WSS191','p4'),('WSS197','p4'),('WSS2','p4'),('WSS200','p4'),('WSS213','p4'),('WSS219','p4'),('WSS247','p4'),('WSS248','p4'),('WSS265','p4'),('WSS267','p4'),('WSS269','p4'),('WSS277','p4'),('WSS284','p4'),('WSS294','p4'),('WSS299','p4'),('WSS314','p4'),('WSS317','p4'),('WSS319','p4'),('WSS32','p4'),('WSS327','p4'),('WSS334','p4'),('WSS338','p4'),('WSS344','p4'),('WSS345','p4'),('WSS353','p4'),('WSS359','p4'),('WSS362','p4'),('WSS37','p4'),('WSS376','p4'),('WSS381','p4'),('WSS382','p4'),('WSS389','p4'),('WSS394','p4'),('WSS48','p4'),('WSS53','p4'),('WSS72','p4'),('WSS88','p4'),('WSS91','p4'),('WSS93','p4'),('WSS95','p4'),('WSS98','p4'),('WSS99','p4'),('WSS101','p5'),('WSS109','p5'),('WSS114','p5'),('WSS126','p5'),('WSS129','p5'),('WSS142','p5'),('WSS151','p5'),('WSS152','p5'),('WSS169','p5'),('WSS180','p5'),('WSS182','p5'),('WSS188','p5'),('WSS195','p5'),('WSS196','p5'),('WSS197','p5'),('WSS198','p5'),('WSS214','p5'),('WSS221','p5'),('WSS229','p5'),('WSS232','p5'),('WSS248','p5'),('WSS250','p5'),('WSS260','p5'),('WSS264','p5'),('WSS266','p5'),('WSS28','p5'),('WSS280','p5'),('WSS296','p5'),('WSS3','p5'),('WSS314','p5'),('WSS316','p5'),('WSS320','p5'),('WSS321','p5'),('WSS332','p5'),('WSS333','p5'),('WSS367','p5'),('WSS368','p5'),('WSS373','p5'),('WSS374','p5'),('WSS381','p5'),('WSS385','p5'),('WSS388','p5'),('WSS391','p5'),('WSS395','p5'),('WSS40','p5'),('WSS41','p5'),('WSS47','p5'),('WSS49','p5'),('WSS55','p5'),('WSS59','p5'),('WSS60','p5'),('WSS62','p5'),('WSS76','p5'),('WSS79','p5'),('WSS9','p5'),('WSS98','p5'),('WSS105','p6'),('WSS11','p6'),('WSS114','p6'),('WSS140','p6'),('WSS146','p6'),('WSS149','p6'),('WSS159','p6'),('WSS168','p6'),('WSS174','p6'),('WSS196','p6'),('WSS232','p6'),('WSS242','p6'),('WSS243','p6'),('WSS263','p6'),('WSS265','p6'),('WSS279','p6'),('WSS283','p6'),('WSS30','p6'),('WSS306','p6'),('WSS309','p6'),('WSS311','p6'),('WSS315','p6'),('WSS322','p6'),('WSS343','p6'),('WSS350','p6'),('WSS351','p6'),('WSS360','p6'),('WSS363','p6'),('WSS365','p6'),('WSS372','p6'),('WSS38','p6'),('WSS394','p6'),('WSS43','p6'),('WSS52','p6'),('WSS56','p6'),('WSS62','p6'),('WSS79','p6'),('WSS88','p6'),('WSS1','p7'),('WSS104','p7'),('WSS109','p7'),('WSS115','p7'),('WSS121','p7'),('WSS124','p7'),('WSS130','p7'),('WSS131','p7'),('WSS132','p7'),('WSS149','p7'),('WSS153','p7'),('WSS170','p7'),('WSS179','p7'),('WSS196','p7'),('WSS203','p7'),('WSS212','p7'),('WSS221','p7'),('WSS222','p7'),('WSS224','p7'),('WSS242','p7'),('WSS247','p7'),('WSS257','p7'),('WSS261','p7'),('WSS267','p7'),('WSS270','p7'),('WSS276','p7'),('WSS280','p7'),('WSS282','p7'),('WSS288','p7'),('WSS289','p7'),('WSS293','p7'),('WSS300','p7'),('WSS308','p7'),('WSS309','p7'),('WSS312','p7'),('WSS313','p7'),('WSS320','p7'),('WSS323','p7'),('WSS333','p7'),('WSS335','p7'),('WSS342','p7'),('WSS349','p7'),('WSS354','p7'),('WSS359','p7'),('WSS365','p7'),('WSS385','p7'),('WSS388','p7'),('WSS39','p7'),('WSS400','p7'),('WSS43','p7'),('WSS46','p7'),('WSS63','p7'),('WSS77','p7'),('WSS85','p7'),('WSS90','p7'),('WSS93','p7'),('WSS108','p8'),('WSS112','p8'),('WSS116','p8'),('WSS119','p8'),('WSS154','p8'),('WSS161','p8'),('WSS163','p8'),('WSS171','p8'),('WSS178','p8'),('WSS188','p8'),('WSS189','p8'),('WSS191','p8'),('WSS205','p8'),('WSS206','p8'),('WSS208','p8'),('WSS218','p8'),('WSS220','p8'),('WSS252','p8'),('WSS253','p8'),('WSS254','p8'),('WSS268','p8'),('WSS271','p8'),('WSS272','p8'),('WSS275','p8'),('WSS284','p8'),('WSS285','p8'),('WSS287','p8'),('WSS292','p8'),('WSS300','p8'),('WSS302','p8'),('WSS305','p8'),('WSS309','p8'),('WSS331','p8'),('WSS336','p8'),('WSS366','p8'),('WSS375','p8'),('WSS378','p8'),('WSS380','p8'),('WSS387','p8'),('WSS395','p8'),('WSS40','p8'),('WSS400','p8'),('WSS49','p8'),('WSS51','p8'),('WSS60','p8'),('WSS7','p8'),('WSS71','p8'),('WSS78','p8'),('WSS80','p8'),('WSS84','p8'),('WSS94','p8'),('WSS96','p8'),('WSS107','p9'),('WSS110','p9'),('WSS117','p9'),('WSS120','p9'),('WSS134','p9'),('WSS140','p9'),('WSS141','p9'),('WSS147','p9'),('WSS150','p9'),('WSS157','p9'),('WSS171','p9'),('WSS177','p9'),('WSS181','p9'),('WSS185','p9'),('WSS192','p9'),('WSS2','p9'),('WSS204','p9'),('WSS208','p9'),('WSS211','p9'),('WSS212','p9'),('WSS224','p9'),('WSS230','p9'),('WSS231','p9'),('WSS240','p9'),('WSS262','p9'),('WSS273','p9'),('WSS293','p9'),('WSS299','p9'),('WSS303','p9'),('WSS306','p9'),('WSS31','p9'),('WSS310','p9'),('WSS315','p9'),('WSS320','p9'),('WSS322','p9'),('WSS324','p9'),('WSS342','p9'),('WSS344','p9'),('WSS347','p9'),('WSS357','p9'),('WSS371','p9'),('WSS38','p9'),('WSS39','p9'),('WSS393','p9'),('WSS399','p9'),('WSS4','p9'),('WSS42','p9'),('WSS44','p9'),('WSS45','p9'),('WSS54','p9'),('WSS59','p9'),('WSS70','p9'),('WSS74','p9'),('WSS75','p9'),('WSS77','p9'),('WSS78','p9'),('WSS83','p9'),('WSS93','p9'),('WSS94','p9'),('WSS99','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS231'),(1,2,'WSS48'),(2,1,'WSS373'),(2,2,'WSS282'),(3,1,'WSS373'),(3,2,'WSS361'),(4,1,'WSS152'),(4,2,'WSS313'),(5,1,'WSS331'),(5,2,'WSS1'),(6,1,'WSS32'),(6,2,'WSS399'),(7,1,'WSS26'),(7,2,'WSS41'),(7,3,'WSS105'),(8,1,'WSS132'),(8,2,'WSS269'),(9,1,'WSS24'),(9,2,'WSS35'),(10,1,'WSS311'),(10,2,'WSS278'),(11,1,'WSS36'),(11,2,'WSS367'),(12,1,'WSS30'),(12,2,'WSS46'),(13,1,'WSS351'),(13,2,'WSS359'),(14,1,'WSS252'),(14,2,'WSS30'),(15,1,'WSS231'),(15,2,'WSS388'),(16,1,'WSS166'),(16,2,'WSS352'),(17,1,'WSS373'),(17,2,'WSS334'),(18,1,'WSS147'),(18,1,'WSS373'),(19,1,'WSS275'),(19,2,'WSS222'),(20,1,'WSS36'),(20,1,'WSS373'),(21,1,'WSS36'),(21,2,'WSS34'),(22,1,'WSS171'),(22,2,'WSS179'),(23,1,'WSS35'),(23,2,'WSS311'),(24,1,'WSS338'),(24,2,'WSS286'),(25,1,'WSS309'),(25,2,'WSS244'),(26,1,'WSS34'),(26,2,'WSS30'),(27,1,'WSS104'),(27,2,'WSS46'),(27,3,'WSS48'),(28,1,'WSS9'),(28,2,'WSS146'),(29,1,'WSS215'),(29,2,'WSS124'),(30,1,'WSS192'),(30,2,'WSS282'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-29 12:30:03
