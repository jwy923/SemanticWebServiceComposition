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
INSERT INTO `initialgoalparameter` VALUES (4,'G','p1'),(5,'I','p1'),(7,'G','p1'),(8,'I','p1'),(10,'G','p1'),(12,'I','p1'),(13,'G','p1'),(15,'I','p1'),(16,'I','p1'),(17,'G','p1'),(18,'G','p1'),(19,'I','p1'),(24,'I','p1'),(25,'I','p1'),(27,'I','p1'),(29,'I','p1'),(3,'I','p10'),(6,'G','p10'),(8,'G','p10'),(12,'I','p10'),(13,'I','p10'),(17,'G','p10'),(18,'I','p10'),(27,'G','p10'),(3,'I','p11'),(4,'I','p11'),(7,'I','p11'),(8,'G','p11'),(9,'I','p11'),(12,'I','p11'),(15,'I','p11'),(21,'I','p11'),(22,'I','p11'),(23,'I','p11'),(26,'I','p11'),(5,'G','p12'),(6,'I','p12'),(7,'I','p12'),(8,'I','p12'),(11,'I','p12'),(14,'G','p12'),(16,'I','p12'),(18,'I','p12'),(22,'G','p12'),(30,'G','p12'),(2,'G','p13'),(4,'I','p13'),(10,'I','p13'),(16,'I','p13'),(18,'I','p13'),(24,'G','p13'),(28,'I','p13'),(3,'G','p14'),(5,'I','p14'),(8,'I','p14'),(12,'G','p14'),(14,'I','p14'),(15,'G','p14'),(19,'I','p14'),(21,'G','p14'),(23,'I','p14'),(24,'G','p14'),(26,'G','p14'),(28,'I','p14'),(1,'I','p15'),(5,'I','p15'),(7,'I','p15'),(12,'I','p15'),(14,'G','p15'),(19,'I','p15'),(20,'I','p15'),(21,'I','p15'),(29,'I','p15'),(30,'G','p15'),(6,'I','p16'),(8,'I','p16'),(9,'G','p16'),(11,'I','p16'),(14,'I','p16'),(15,'G','p16'),(20,'G','p16'),(27,'I','p16'),(28,'I','p16'),(29,'G','p16'),(5,'I','p17'),(7,'G','p17'),(9,'I','p17'),(10,'G','p17'),(16,'G','p17'),(17,'G','p17'),(18,'G','p17'),(19,'G','p17'),(23,'G','p17'),(25,'I','p17'),(28,'I','p17'),(29,'I','p17'),(6,'I','p18'),(7,'I','p18'),(9,'I','p18'),(11,'I','p18'),(13,'G','p18'),(15,'I','p18'),(16,'G','p18'),(20,'G','p18'),(21,'I','p18'),(24,'I','p18'),(25,'I','p18'),(26,'I','p18'),(28,'G','p18'),(2,'I','p19'),(4,'I','p19'),(5,'I','p19'),(11,'G','p19'),(14,'G','p19'),(17,'I','p19'),(20,'I','p19'),(23,'G','p19'),(29,'I','p19'),(3,'I','p2'),(5,'I','p2'),(10,'I','p2'),(13,'G','p2'),(20,'I','p2'),(24,'I','p2'),(26,'G','p2'),(30,'I','p2'),(1,'I','p20'),(4,'G','p20'),(5,'G','p20'),(7,'I','p20'),(17,'I','p20'),(21,'G','p20'),(22,'I','p20'),(23,'G','p20'),(25,'I','p20'),(26,'I','p20'),(27,'G','p20'),(28,'I','p20'),(30,'I','p20'),(2,'I','p21'),(7,'G','p21'),(8,'I','p21'),(13,'I','p21'),(15,'I','p21'),(19,'I','p21'),(20,'I','p21'),(24,'I','p21'),(3,'G','p22'),(4,'I','p22'),(7,'I','p22'),(12,'G','p22'),(16,'I','p22'),(17,'I','p22'),(18,'G','p22'),(19,'G','p22'),(22,'I','p22'),(23,'I','p22'),(27,'G','p22'),(29,'I','p22'),(30,'I','p22'),(3,'G','p23'),(10,'I','p23'),(19,'G','p23'),(21,'G','p23'),(23,'I','p23'),(24,'I','p23'),(26,'I','p23'),(27,'I','p23'),(2,'I','p24'),(12,'I','p24'),(14,'I','p24'),(15,'I','p24'),(17,'I','p24'),(25,'G','p24'),(27,'I','p24'),(1,'G','p25'),(3,'I','p25'),(5,'G','p25'),(11,'G','p25'),(12,'G','p25'),(13,'I','p25'),(14,'I','p25'),(16,'G','p25'),(19,'G','p25'),(21,'I','p25'),(25,'I','p25'),(6,'G','p26'),(9,'G','p26'),(11,'G','p26'),(13,'I','p26'),(14,'I','p26'),(16,'I','p26'),(17,'I','p26'),(18,'I','p26'),(24,'G','p26'),(28,'G','p26'),(30,'G','p26'),(1,'G','p27'),(2,'I','p27'),(6,'I','p27'),(10,'I','p27'),(11,'I','p27'),(13,'I','p27'),(17,'G','p27'),(20,'G','p27'),(22,'G','p27'),(25,'G','p27'),(28,'G','p27'),(29,'G','p27'),(3,'G','p28'),(8,'G','p28'),(10,'G','p28'),(20,'I','p28'),(26,'I','p28'),(1,'G','p29'),(3,'I','p29'),(4,'I','p29'),(9,'G','p29'),(18,'I','p29'),(22,'I','p29'),(29,'I','p29'),(1,'I','p3'),(2,'G','p3'),(3,'I','p3'),(6,'G','p3'),(9,'I','p3'),(11,'I','p3'),(12,'G','p3'),(13,'I','p3'),(16,'I','p3'),(18,'G','p3'),(20,'I','p3'),(21,'G','p3'),(30,'I','p3'),(12,'I','p30'),(16,'G','p30'),(26,'I','p30'),(27,'I','p30'),(30,'I','p30'),(2,'G','p4'),(4,'G','p4'),(6,'I','p4'),(9,'I','p4'),(13,'G','p4'),(14,'I','p4'),(22,'G','p4'),(23,'I','p4'),(29,'G','p4'),(30,'I','p4'),(1,'I','p5'),(2,'G','p5'),(4,'G','p5'),(6,'G','p5'),(10,'I','p5'),(20,'G','p5'),(25,'G','p5'),(26,'G','p5'),(30,'G','p5'),(1,'G','p6'),(7,'G','p6'),(8,'G','p6'),(9,'I','p6'),(10,'I','p6'),(15,'G','p6'),(21,'I','p6'),(23,'I','p6'),(1,'I','p7'),(5,'G','p7'),(8,'I','p7'),(10,'G','p7'),(11,'G','p7'),(22,'G','p7'),(23,'G','p7'),(25,'I','p7'),(26,'G','p7'),(27,'I','p7'),(28,'G','p7'),(29,'G','p7'),(1,'I','p8'),(2,'I','p8'),(4,'I','p8'),(6,'I','p8'),(14,'G','p8'),(15,'I','p8'),(18,'I','p8'),(19,'I','p8'),(21,'I','p8'),(22,'I','p8'),(24,'G','p8'),(2,'I','p9'),(9,'G','p9'),(11,'I','p9'),(15,'G','p9'),(17,'I','p9'),(19,'I','p9'),(22,'I','p9'),(24,'I','p9'),(25,'G','p9'),(27,'G','p9'),(28,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS1','p1'),('WSS107','p1'),('WSS131','p1'),('WSS141','p1'),('WSS161','p1'),('WSS171','p1'),('WSS18','p1'),('WSS189','p1'),('WSS195','p1'),('WSS223','p1'),('WSS238','p1'),('WSS240','p1'),('WSS247','p1'),('WSS256','p1'),('WSS257','p1'),('WSS259','p1'),('WSS262','p1'),('WSS280','p1'),('WSS29','p1'),('WSS296','p1'),('WSS299','p1'),('WSS314','p1'),('WSS354','p1'),('WSS381','p1'),('WSS387','p1'),('WSS389','p1'),('WSS39','p1'),('WSS4','p1'),('WSS51','p1'),('WSS57','p1'),('WSS6','p1'),('WSS71','p1'),('WSS101','p10'),('WSS114','p10'),('WSS136','p10'),('WSS180','p10'),('WSS182','p10'),('WSS184','p10'),('WSS199','p10'),('WSS234','p10'),('WSS24','p10'),('WSS253','p10'),('WSS276','p10'),('WSS289','p10'),('WSS303','p10'),('WSS333','p10'),('WSS338','p10'),('WSS341','p10'),('WSS359','p10'),('WSS36','p10'),('WSS361','p10'),('WSS364','p10'),('WSS37','p10'),('WSS394','p10'),('WSS47','p10'),('WSS7','p10'),('WSS10','p11'),('WSS110','p11'),('WSS111','p11'),('WSS139','p11'),('WSS144','p11'),('WSS16','p11'),('WSS163','p11'),('WSS217','p11'),('WSS232','p11'),('WSS233','p11'),('WSS252','p11'),('WSS255','p11'),('WSS258','p11'),('WSS310','p11'),('WSS316','p11'),('WSS317','p11'),('WSS320','p11'),('WSS321','p11'),('WSS341','p11'),('WSS349','p11'),('WSS363','p11'),('WSS388','p11'),('WSS394','p11'),('WSS396','p11'),('WSS53','p11'),('WSS83','p11'),('WSS91','p11'),('WSS96','p11'),('WSS120','p12'),('WSS122','p12'),('WSS151','p12'),('WSS19','p12'),('WSS192','p12'),('WSS199','p12'),('WSS20','p12'),('WSS222','p12'),('WSS231','p12'),('WSS24','p12'),('WSS292','p12'),('WSS321','p12'),('WSS340','p12'),('WSS350','p12'),('WSS356','p12'),('WSS367','p12'),('WSS377','p12'),('WSS382','p12'),('WSS386','p12'),('WSS56','p12'),('WSS74','p12'),('WSS77','p12'),('WSS81','p12'),('WSS89','p12'),('WSS127','p13'),('WSS13','p13'),('WSS172','p13'),('WSS176','p13'),('WSS179','p13'),('WSS193','p13'),('WSS196','p13'),('WSS220','p13'),('WSS226','p13'),('WSS228','p13'),('WSS23','p13'),('WSS289','p13'),('WSS348','p13'),('WSS349','p13'),('WSS353','p13'),('WSS369','p13'),('WSS373','p13'),('WSS376','p13'),('WSS382','p13'),('WSS393','p13'),('WSS62','p13'),('WSS65','p13'),('WSS69','p13'),('WSS102','p14'),('WSS113','p14'),('WSS130','p14'),('WSS168','p14'),('WSS182','p14'),('WSS194','p14'),('WSS22','p14'),('WSS222','p14'),('WSS226','p14'),('WSS245','p14'),('WSS267','p14'),('WSS285','p14'),('WSS328','p14'),('WSS335','p14'),('WSS378','p14'),('WSS379','p14'),('WSS395','p14'),('WSS399','p14'),('WSS400','p14'),('WSS42','p14'),('WSS50','p14'),('WSS59','p14'),('WSS60','p14'),('WSS85','p14'),('WSS135','p15'),('WSS153','p15'),('WSS174','p15'),('WSS177','p15'),('WSS184','p15'),('WSS19','p15'),('WSS2','p15'),('WSS206','p15'),('WSS237','p15'),('WSS238','p15'),('WSS239','p15'),('WSS246','p15'),('WSS277','p15'),('WSS300','p15'),('WSS336','p15'),('WSS339','p15'),('WSS35','p15'),('WSS352','p15'),('WSS366','p15'),('WSS367','p15'),('WSS368','p15'),('WSS46','p15'),('WSS8','p15'),('WSS80','p15'),('WSS81','p15'),('WSS85','p15'),('WSS88','p15'),('WSS100','p16'),('WSS104','p16'),('WSS115','p16'),('WSS119','p16'),('WSS13','p16'),('WSS140','p16'),('WSS143','p16'),('WSS155','p16'),('WSS164','p16'),('WSS191','p16'),('WSS193','p16'),('WSS20','p16'),('WSS23','p16'),('WSS237','p16'),('WSS249','p16'),('WSS260','p16'),('WSS279','p16'),('WSS304','p16'),('WSS310','p16'),('WSS315','p16'),('WSS322','p16'),('WSS338','p16'),('WSS339','p16'),('WSS389','p16'),('WSS45','p16'),('WSS48','p16'),('WSS58','p16'),('WSS86','p16'),('WSS94','p16'),('WSS97','p16'),('WSS112','p17'),('WSS142','p17'),('WSS148','p17'),('WSS152','p17'),('WSS16','p17'),('WSS165','p17'),('WSS167','p17'),('WSS172','p17'),('WSS210','p17'),('WSS213','p17'),('WSS224','p17'),('WSS26','p17'),('WSS261','p17'),('WSS263','p17'),('WSS283','p17'),('WSS294','p17'),('WSS297','p17'),('WSS305','p17'),('WSS312','p17'),('WSS326','p17'),('WSS328','p17'),('WSS33','p17'),('WSS356','p17'),('WSS357','p17'),('WSS362','p17'),('WSS391','p17'),('WSS54','p17'),('WSS129','p18'),('WSS130','p18'),('WSS147','p18'),('WSS161','p18'),('WSS188','p18'),('WSS190','p18'),('WSS212','p18'),('WSS215','p18'),('WSS218','p18'),('WSS224','p18'),('WSS242','p18'),('WSS25','p18'),('WSS261','p18'),('WSS268','p18'),('WSS269','p18'),('WSS29','p18'),('WSS316','p18'),('WSS317','p18'),('WSS329','p18'),('WSS336','p18'),('WSS337','p18'),('WSS351','p18'),('WSS385','p18'),('WSS43','p18'),('WSS59','p18'),('WSS7','p18'),('WSS84','p18'),('WSS106','p19'),('WSS147','p19'),('WSS170','p19'),('WSS178','p19'),('WSS183','p19'),('WSS187','p19'),('WSS220','p19'),('WSS236','p19'),('WSS253','p19'),('WSS280','p19'),('WSS298','p19'),('WSS31','p19'),('WSS340','p19'),('WSS366','p19'),('WSS372','p19'),('WSS53','p19'),('WSS6','p19'),('WSS61','p19'),('WSS63','p19'),('WSS66','p19'),('WSS93','p19'),('WSS1','p2'),('WSS109','p2'),('WSS117','p2'),('WSS14','p2'),('WSS157','p2'),('WSS158','p2'),('WSS160','p2'),('WSS165','p2'),('WSS166','p2'),('WSS17','p2'),('WSS196','p2'),('WSS200','p2'),('WSS217','p2'),('WSS221','p2'),('WSS282','p2'),('WSS307','p2'),('WSS327','p2'),('WSS343','p2'),('WSS348','p2'),('WSS371','p2'),('WSS375','p2'),('WSS392','p2'),('WSS5','p2'),('WSS87','p2'),('WSS96','p2'),('WSS15','p20'),('WSS154','p20'),('WSS158','p20'),('WSS171','p20'),('WSS179','p20'),('WSS185','p20'),('WSS203','p20'),('WSS207','p20'),('WSS213','p20'),('WSS225','p20'),('WSS227','p20'),('WSS230','p20'),('WSS243','p20'),('WSS28','p20'),('WSS302','p20'),('WSS311','p20'),('WSS332','p20'),('WSS355','p20'),('WSS380','p20'),('WSS386','p20'),('WSS395','p20'),('WSS41','p20'),('WSS45','p20'),('WSS48','p20'),('WSS64','p20'),('WSS78','p20'),('WSS88','p20'),('WSS106','p21'),('WSS113','p21'),('WSS125','p21'),('WSS134','p21'),('WSS146','p21'),('WSS149','p21'),('WSS150','p21'),('WSS159','p21'),('WSS183','p21'),('WSS197','p21'),('WSS21','p21'),('WSS219','p21'),('WSS227','p21'),('WSS232','p21'),('WSS235','p21'),('WSS250','p21'),('WSS255','p21'),('WSS260','p21'),('WSS281','p21'),('WSS323','p21'),('WSS33','p21'),('WSS34','p21'),('WSS352','p21'),('WSS355','p21'),('WSS381','p21'),('WSS44','p21'),('WSS63','p21'),('WSS80','p21'),('WSS92','p21'),('WSS118','p22'),('WSS122','p22'),('WSS138','p22'),('WSS145','p22'),('WSS151','p22'),('WSS160','p22'),('WSS168','p22'),('WSS169','p22'),('WSS218','p22'),('WSS250','p22'),('WSS271','p22'),('WSS279','p22'),('WSS293','p22'),('WSS309','p22'),('WSS319','p22'),('WSS325','p22'),('WSS346','p22'),('WSS354','p22'),('WSS51','p22'),('WSS79','p22'),('WSS90','p22'),('WSS111','p23'),('WSS132','p23'),('WSS141','p23'),('WSS145','p23'),('WSS156','p23'),('WSS219','p23'),('WSS241','p23'),('WSS248','p23'),('WSS25','p23'),('WSS266','p23'),('WSS273','p23'),('WSS282','p23'),('WSS287','p23'),('WSS293','p23'),('WSS295','p23'),('WSS327','p23'),('WSS35','p23'),('WSS37','p23'),('WSS377','p23'),('WSS54','p23'),('WSS74','p23'),('WSS75','p23'),('WSS82','p23'),('WSS105','p24'),('WSS129','p24'),('WSS166','p24'),('WSS205','p24'),('WSS22','p24'),('WSS242','p24'),('WSS251','p24'),('WSS265','p24'),('WSS274','p24'),('WSS284','p24'),('WSS294','p24'),('WSS306','p24'),('WSS330','p24'),('WSS333','p24'),('WSS358','p24'),('WSS77','p24'),('WSS8','p24'),('WSS97','p24'),('WSS101','p25'),('WSS132','p25'),('WSS155','p25'),('WSS162','p25'),('WSS186','p25'),('WSS194','p25'),('WSS225','p25'),('WSS241','p25'),('WSS262','p25'),('WSS28','p25'),('WSS322','p25'),('WSS329','p25'),('WSS343','p25'),('WSS362','p25'),('WSS369','p25'),('WSS384','p25'),('WSS392','p25'),('WSS42','p25'),('WSS64','p25'),('WSS79','p25'),('WSS119','p26'),('WSS128','p26'),('WSS133','p26'),('WSS15','p26'),('WSS175','p26'),('WSS176','p26'),('WSS191','p26'),('WSS200','p26'),('WSS208','p26'),('WSS214','p26'),('WSS216','p26'),('WSS230','p26'),('WSS231','p26'),('WSS244','p26'),('WSS257','p26'),('WSS266','p26'),('WSS267','p26'),('WSS272','p26'),('WSS283','p26'),('WSS296','p26'),('WSS301','p26'),('WSS304','p26'),('WSS311','p26'),('WSS319','p26'),('WSS332','p26'),('WSS344','p26'),('WSS350','p26'),('WSS375','p26'),('WSS5','p26'),('WSS72','p26'),('WSS121','p27'),('WSS126','p27'),('WSS139','p27'),('WSS143','p27'),('WSS170','p27'),('WSS185','p27'),('WSS189','p27'),('WSS198','p27'),('WSS221','p27'),('WSS233','p27'),('WSS243','p27'),('WSS258','p27'),('WSS26','p27'),('WSS284','p27'),('WSS290','p27'),('WSS314','p27'),('WSS331','p27'),('WSS344','p27'),('WSS346','p27'),('WSS347','p27'),('WSS360','p27'),('WSS397','p27'),('WSS399','p27'),('WSS55','p27'),('WSS67','p27'),('WSS125','p28'),('WSS137','p28'),('WSS188','p28'),('WSS195','p28'),('WSS197','p28'),('WSS210','p28'),('WSS215','p28'),('WSS228','p28'),('WSS239','p28'),('WSS245','p28'),('WSS254','p28'),('WSS259','p28'),('WSS3','p28'),('WSS301','p28'),('WSS308','p28'),('WSS324','p28'),('WSS376','p28'),('WSS65','p28'),('WSS76','p28'),('WSS87','p28'),('WSS92','p28'),('WSS126','p29'),('WSS127','p29'),('WSS137','p29'),('WSS140','p29'),('WSS157','p29'),('WSS17','p29'),('WSS178','p29'),('WSS18','p29'),('WSS181','p29'),('WSS2','p29'),('WSS204','p29'),('WSS208','p29'),('WSS269','p29'),('WSS270','p29'),('WSS273','p29'),('WSS274','p29'),('WSS281','p29'),('WSS295','p29'),('WSS302','p29'),('WSS307','p29'),('WSS313','p29'),('WSS315','p29'),('WSS335','p29'),('WSS342','p29'),('WSS347','p29'),('WSS357','p29'),('WSS368','p29'),('WSS390','p29'),('WSS50','p29'),('WSS76','p29'),('WSS86','p29'),('WSS91','p29'),('WSS94','p29'),('WSS98','p29'),('WSS102','p3'),('WSS103','p3'),('WSS104','p3'),('WSS110','p3'),('WSS114','p3'),('WSS116','p3'),('WSS117','p3'),('WSS118','p3'),('WSS123','p3'),('WSS124','p3'),('WSS128','p3'),('WSS148','p3'),('WSS149','p3'),('WSS154','p3'),('WSS159','p3'),('WSS211','p3'),('WSS216','p3'),('WSS229','p3'),('WSS235','p3'),('WSS244','p3'),('WSS246','p3'),('WSS247','p3'),('WSS271','p3'),('WSS275','p3'),('WSS286','p3'),('WSS297','p3'),('WSS299','p3'),('WSS30','p3'),('WSS303','p3'),('WSS318','p3'),('WSS32','p3'),('WSS323','p3'),('WSS325','p3'),('WSS326','p3'),('WSS334','p3'),('WSS361','p3'),('WSS365','p3'),('WSS370','p3'),('WSS374','p3'),('WSS384','p3'),('WSS396','p3'),('WSS4','p3'),('WSS43','p3'),('WSS47','p3'),('WSS49','p3'),('WSS52','p3'),('WSS58','p3'),('WSS67','p3'),('WSS68','p3'),('WSS69','p3'),('WSS71','p3'),('WSS72','p3'),('WSS108','p30'),('WSS11','p30'),('WSS124','p30'),('WSS146','p30'),('WSS153','p30'),('WSS167','p30'),('WSS169','p30'),('WSS181','p30'),('WSS187','p30'),('WSS202','p30'),('WSS203','p30'),('WSS264','p30'),('WSS265','p30'),('WSS268','p30'),('WSS270','p30'),('WSS292','p30'),('WSS309','p30'),('WSS334','p30'),('WSS337','p30'),('WSS371','p30'),('WSS372','p30'),('WSS390','p30'),('WSS397','p30'),('WSS398','p30'),('WSS41','p30'),('WSS52','p30'),('WSS56','p30'),('WSS78','p30'),('WSS89','p30'),('WSS90','p30'),('WSS93','p30'),('WSS95','p30'),('WSS99','p30'),('WSS105','p4'),('WSS109','p4'),('WSS112','p4'),('WSS12','p4'),('WSS134','p4'),('WSS173','p4'),('WSS177','p4'),('WSS192','p4'),('WSS198','p4'),('WSS202','p4'),('WSS209','p4'),('WSS21','p4'),('WSS252','p4'),('WSS27','p4'),('WSS272','p4'),('WSS287','p4'),('WSS288','p4'),('WSS30','p4'),('WSS306','p4'),('WSS308','p4'),('WSS324','p4'),('WSS330','p4'),('WSS331','p4'),('WSS36','p4'),('WSS370','p4'),('WSS373','p4'),('WSS374','p4'),('WSS380','p4'),('WSS383','p4'),('WSS385','p4'),('WSS40','p4'),('WSS55','p4'),('WSS61','p4'),('WSS68','p4'),('WSS70','p4'),('WSS9','p4'),('WSS100','p5'),('WSS138','p5'),('WSS142','p5'),('WSS144','p5'),('WSS201','p5'),('WSS204','p5'),('WSS207','p5'),('WSS209','p5'),('WSS211','p5'),('WSS229','p5'),('WSS240','p5'),('WSS278','p5'),('WSS32','p5'),('WSS34','p5'),('WSS345','p5'),('WSS359','p5'),('WSS38','p5'),('WSS387','p5'),('WSS388','p5'),('WSS391','p5'),('WSS393','p5'),('WSS66','p5'),('WSS98','p5'),('WSS116','p6'),('WSS120','p6'),('WSS131','p6'),('WSS14','p6'),('WSS175','p6'),('WSS186','p6'),('WSS190','p6'),('WSS206','p6'),('WSS248','p6'),('WSS249','p6'),('WSS276','p6'),('WSS285','p6'),('WSS290','p6'),('WSS31','p6'),('WSS345','p6'),('WSS353','p6'),('WSS360','p6'),('WSS363','p6'),('WSS379','p6'),('WSS70','p6'),('WSS73','p6'),('WSS10','p7'),('WSS107','p7'),('WSS123','p7'),('WSS135','p7'),('WSS156','p7'),('WSS163','p7'),('WSS174','p7'),('WSS180','p7'),('WSS234','p7'),('WSS263','p7'),('WSS278','p7'),('WSS286','p7'),('WSS291','p7'),('WSS300','p7'),('WSS305','p7'),('WSS320','p7'),('WSS351','p7'),('WSS383','p7'),('WSS39','p7'),('WSS398','p7'),('WSS400','p7'),('WSS75','p7'),('WSS82','p7'),('WSS84','p7'),('WSS99','p7'),('WSS103','p8'),('WSS11','p8'),('WSS115','p8'),('WSS121','p8'),('WSS136','p8'),('WSS162','p8'),('WSS201','p8'),('WSS205','p8'),('WSS214','p8'),('WSS251','p8'),('WSS254','p8'),('WSS27','p8'),('WSS277','p8'),('WSS288','p8'),('WSS291','p8'),('WSS312','p8'),('WSS342','p8'),('WSS378','p8'),('WSS60','p8'),('WSS73','p8'),('WSS83','p8'),('WSS108','p9'),('WSS133','p9'),('WSS152','p9'),('WSS164','p9'),('WSS173','p9'),('WSS223','p9'),('WSS236','p9'),('WSS256','p9'),('WSS264','p9'),('WSS275','p9'),('WSS298','p9'),('WSS313','p9'),('WSS318','p9'),('WSS365','p9'),('WSS38','p9'),('WSS40','p9'),('WSS46','p9'),('WSS49','p9'),('WSS57','p9'),('WSS9','p9'),('WSS95','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS102','p1'),('WSS117','p1'),('WSS12','p1'),('WSS164','p1'),('WSS166','p1'),('WSS182','p1'),('WSS186','p1'),('WSS196','p1'),('WSS198','p1'),('WSS201','p1'),('WSS215','p1'),('WSS22','p1'),('WSS230','p1'),('WSS235','p1'),('WSS242','p1'),('WSS245','p1'),('WSS252','p1'),('WSS254','p1'),('WSS277','p1'),('WSS285','p1'),('WSS290','p1'),('WSS293','p1'),('WSS3','p1'),('WSS300','p1'),('WSS302','p1'),('WSS303','p1'),('WSS304','p1'),('WSS314','p1'),('WSS324','p1'),('WSS347','p1'),('WSS36','p1'),('WSS399','p1'),('WSS400','p1'),('WSS47','p1'),('WSS51','p1'),('WSS57','p1'),('WSS63','p1'),('WSS66','p1'),('WSS77','p1'),('WSS87','p1'),('WSS90','p1'),('WSS103','p10'),('WSS104','p10'),('WSS105','p10'),('WSS12','p10'),('WSS129','p10'),('WSS139','p10'),('WSS142','p10'),('WSS155','p10'),('WSS16','p10'),('WSS162','p10'),('WSS167','p10'),('WSS168','p10'),('WSS172','p10'),('WSS174','p10'),('WSS177','p10'),('WSS197','p10'),('WSS2','p10'),('WSS202','p10'),('WSS210','p10'),('WSS214','p10'),('WSS224','p10'),('WSS230','p10'),('WSS232','p10'),('WSS233','p10'),('WSS243','p10'),('WSS251','p10'),('WSS254','p10'),('WSS259','p10'),('WSS266','p10'),('WSS268','p10'),('WSS275','p10'),('WSS276','p10'),('WSS28','p10'),('WSS295','p10'),('WSS310','p10'),('WSS316','p10'),('WSS337','p10'),('WSS338','p10'),('WSS344','p10'),('WSS357','p10'),('WSS359','p10'),('WSS363','p10'),('WSS364','p10'),('WSS367','p10'),('WSS379','p10'),('WSS38','p10'),('WSS393','p10'),('WSS45','p10'),('WSS48','p10'),('WSS59','p10'),('WSS62','p10'),('WSS77','p10'),('WSS85','p10'),('WSS100','p11'),('WSS102','p11'),('WSS111','p11'),('WSS112','p11'),('WSS114','p11'),('WSS115','p11'),('WSS119','p11'),('WSS124','p11'),('WSS140','p11'),('WSS145','p11'),('WSS146','p11'),('WSS166','p11'),('WSS169','p11'),('WSS174','p11'),('WSS178','p11'),('WSS18','p11'),('WSS183','p11'),('WSS2','p11'),('WSS21','p11'),('WSS212','p11'),('WSS218','p11'),('WSS219','p11'),('WSS220','p11'),('WSS228','p11'),('WSS229','p11'),('WSS232','p11'),('WSS263','p11'),('WSS270','p11'),('WSS275','p11'),('WSS278','p11'),('WSS289','p11'),('WSS292','p11'),('WSS296','p11'),('WSS303','p11'),('WSS305','p11'),('WSS308','p11'),('WSS31','p11'),('WSS313','p11'),('WSS323','p11'),('WSS324','p11'),('WSS325','p11'),('WSS327','p11'),('WSS329','p11'),('WSS342','p11'),('WSS347','p11'),('WSS351','p11'),('WSS353','p11'),('WSS360','p11'),('WSS366','p11'),('WSS395','p11'),('WSS42','p11'),('WSS43','p11'),('WSS60','p11'),('WSS63','p11'),('WSS69','p11'),('WSS71','p11'),('WSS78','p11'),('WSS8','p11'),('WSS86','p11'),('WSS94','p11'),('WSS1','p12'),('WSS107','p12'),('WSS110','p12'),('WSS118','p12'),('WSS123','p12'),('WSS161','p12'),('WSS163','p12'),('WSS168','p12'),('WSS169','p12'),('WSS172','p12'),('WSS174','p12'),('WSS182','p12'),('WSS197','p12'),('WSS201','p12'),('WSS217','p12'),('WSS223','p12'),('WSS238','p12'),('WSS243','p12'),('WSS250','p12'),('WSS257','p12'),('WSS266','p12'),('WSS28','p12'),('WSS284','p12'),('WSS287','p12'),('WSS293','p12'),('WSS298','p12'),('WSS308','p12'),('WSS316','p12'),('WSS320','p12'),('WSS322','p12'),('WSS326','p12'),('WSS329','p12'),('WSS349','p12'),('WSS355','p12'),('WSS368','p12'),('WSS369','p12'),('WSS374','p12'),('WSS377','p12'),('WSS387','p12'),('WSS4','p12'),('WSS44','p12'),('WSS49','p12'),('WSS58','p12'),('WSS73','p12'),('WSS76','p12'),('WSS81','p12'),('WSS82','p12'),('WSS9','p12'),('WSS94','p12'),('WSS10','p13'),('WSS116','p13'),('WSS13','p13'),('WSS134','p13'),('WSS148','p13'),('WSS164','p13'),('WSS177','p13'),('WSS179','p13'),('WSS19','p13'),('WSS203','p13'),('WSS205','p13'),('WSS206','p13'),('WSS217','p13'),('WSS23','p13'),('WSS231','p13'),('WSS237','p13'),('WSS258','p13'),('WSS273','p13'),('WSS278','p13'),('WSS283','p13'),('WSS288','p13'),('WSS289','p13'),('WSS309','p13'),('WSS325','p13'),('WSS330','p13'),('WSS335','p13'),('WSS34','p13'),('WSS345','p13'),('WSS352','p13'),('WSS36','p13'),('WSS369','p13'),('WSS370','p13'),('WSS377','p13'),('WSS382','p13'),('WSS383','p13'),('WSS384','p13'),('WSS396','p13'),('WSS398','p13'),('WSS40','p13'),('WSS47','p13'),('WSS53','p13'),('WSS61','p13'),('WSS70','p13'),('WSS72','p13'),('WSS86','p13'),('WSS98','p13'),('WSS112','p14'),('WSS119','p14'),('WSS121','p14'),('WSS122','p14'),('WSS131','p14'),('WSS136','p14'),('WSS144','p14'),('WSS149','p14'),('WSS15','p14'),('WSS150','p14'),('WSS159','p14'),('WSS169','p14'),('WSS17','p14'),('WSS182','p14'),('WSS199','p14'),('WSS207','p14'),('WSS22','p14'),('WSS223','p14'),('WSS229','p14'),('WSS249','p14'),('WSS255','p14'),('WSS26','p14'),('WSS264','p14'),('WSS267','p14'),('WSS272','p14'),('WSS283','p14'),('WSS286','p14'),('WSS288','p14'),('WSS289','p14'),('WSS290','p14'),('WSS293','p14'),('WSS3','p14'),('WSS317','p14'),('WSS322','p14'),('WSS325','p14'),('WSS327','p14'),('WSS330','p14'),('WSS331','p14'),('WSS333','p14'),('WSS340','p14'),('WSS346','p14'),('WSS352','p14'),('WSS357','p14'),('WSS360','p14'),('WSS364','p14'),('WSS37','p14'),('WSS372','p14'),('WSS373','p14'),('WSS381','p14'),('WSS382','p14'),('WSS386','p14'),('WSS392','p14'),('WSS397','p14'),('WSS399','p14'),('WSS4','p14'),('WSS41','p14'),('WSS44','p14'),('WSS46','p14'),('WSS65','p14'),('WSS7','p14'),('WSS77','p14'),('WSS82','p14'),('WSS96','p14'),('WSS97','p14'),('WSS103','p15'),('WSS113','p15'),('WSS120','p15'),('WSS129','p15'),('WSS159','p15'),('WSS165','p15'),('WSS167','p15'),('WSS170','p15'),('WSS179','p15'),('WSS18','p15'),('WSS190','p15'),('WSS192','p15'),('WSS211','p15'),('WSS213','p15'),('WSS217','p15'),('WSS219','p15'),('WSS234','p15'),('WSS240','p15'),('WSS253','p15'),('WSS265','p15'),('WSS267','p15'),('WSS272','p15'),('WSS291','p15'),('WSS297','p15'),('WSS298','p15'),('WSS307','p15'),('WSS324','p15'),('WSS327','p15'),('WSS33','p15'),('WSS339','p15'),('WSS340','p15'),('WSS342','p15'),('WSS343','p15'),('WSS349','p15'),('WSS350','p15'),('WSS351','p15'),('WSS355','p15'),('WSS370','p15'),('WSS371','p15'),('WSS372','p15'),('WSS374','p15'),('WSS41','p15'),('WSS48','p15'),('WSS56','p15'),('WSS67','p15'),('WSS80','p15'),('WSS97','p15'),('WSS100','p16'),('WSS104','p16'),('WSS112','p16'),('WSS125','p16'),('WSS137','p16'),('WSS151','p16'),('WSS156','p16'),('WSS17','p16'),('WSS170','p16'),('WSS175','p16'),('WSS181','p16'),('WSS183','p16'),('WSS186','p16'),('WSS187','p16'),('WSS189','p16'),('WSS191','p16'),('WSS194','p16'),('WSS202','p16'),('WSS207','p16'),('WSS226','p16'),('WSS230','p16'),('WSS236','p16'),('WSS237','p16'),('WSS238','p16'),('WSS239','p16'),('WSS24','p16'),('WSS244','p16'),('WSS248','p16'),('WSS274','p16'),('WSS28','p16'),('WSS30','p16'),('WSS301','p16'),('WSS305','p16'),('WSS318','p16'),('WSS341','p16'),('WSS343','p16'),('WSS345','p16'),('WSS350','p16'),('WSS356','p16'),('WSS362','p16'),('WSS363','p16'),('WSS374','p16'),('WSS38','p16'),('WSS380','p16'),('WSS385','p16'),('WSS391','p16'),('WSS394','p16'),('WSS397','p16'),('WSS400','p16'),('WSS42','p16'),('WSS52','p16'),('WSS80','p16'),('WSS88','p16'),('WSS89','p16'),('WSS94','p16'),('WSS95','p16'),('WSS97','p16'),('WSS105','p17'),('WSS11','p17'),('WSS110','p17'),('WSS115','p17'),('WSS118','p17'),('WSS13','p17'),('WSS131','p17'),('WSS132','p17'),('WSS167','p17'),('WSS175','p17'),('WSS195','p17'),('WSS2','p17'),('WSS20','p17'),('WSS206','p17'),('WSS215','p17'),('WSS219','p17'),('WSS224','p17'),('WSS229','p17'),('WSS240','p17'),('WSS247','p17'),('WSS248','p17'),('WSS25','p17'),('WSS253','p17'),('WSS257','p17'),('WSS262','p17'),('WSS263','p17'),('WSS270','p17'),('WSS281','p17'),('WSS29','p17'),('WSS297','p17'),('WSS315','p17'),('WSS317','p17'),('WSS321','p17'),('WSS328','p17'),('WSS334','p17'),('WSS34','p17'),('WSS345','p17'),('WSS347','p17'),('WSS361','p17'),('WSS367','p17'),('WSS377','p17'),('WSS379','p17'),('WSS382','p17'),('WSS391','p17'),('WSS47','p17'),('WSS5','p17'),('WSS55','p17'),('WSS68','p17'),('WSS7','p17'),('WSS8','p17'),('WSS104','p18'),('WSS117','p18'),('WSS126','p18'),('WSS128','p18'),('WSS14','p18'),('WSS141','p18'),('WSS150','p18'),('WSS165','p18'),('WSS171','p18'),('WSS176','p18'),('WSS184','p18'),('WSS187','p18'),('WSS188','p18'),('WSS189','p18'),('WSS194','p18'),('WSS20','p18'),('WSS202','p18'),('WSS209','p18'),('WSS211','p18'),('WSS22','p18'),('WSS231','p18'),('WSS245','p18'),('WSS247','p18'),('WSS248','p18'),('WSS250','p18'),('WSS254','p18'),('WSS258','p18'),('WSS27','p18'),('WSS271','p18'),('WSS297','p18'),('WSS307','p18'),('WSS311','p18'),('WSS320','p18'),('WSS330','p18'),('WSS331','p18'),('WSS333','p18'),('WSS334','p18'),('WSS338','p18'),('WSS339','p18'),('WSS351','p18'),('WSS354','p18'),('WSS365','p18'),('WSS37','p18'),('WSS375','p18'),('WSS380','p18'),('WSS382','p18'),('WSS395','p18'),('WSS399','p18'),('WSS46','p18'),('WSS51','p18'),('WSS64','p18'),('WSS67','p18'),('WSS8','p18'),('WSS81','p18'),('WSS92','p18'),('WSS98','p18'),('WSS99','p18'),('WSS10','p19'),('WSS107','p19'),('WSS11','p19'),('WSS133','p19'),('WSS141','p19'),('WSS145','p19'),('WSS154','p19'),('WSS156','p19'),('WSS162','p19'),('WSS194','p19'),('WSS197','p19'),('WSS210','p19'),('WSS215','p19'),('WSS223','p19'),('WSS246','p19'),('WSS249','p19'),('WSS256','p19'),('WSS273','p19'),('WSS279','p19'),('WSS280','p19'),('WSS302','p19'),('WSS304','p19'),('WSS31','p19'),('WSS311','p19'),('WSS322','p19'),('WSS325','p19'),('WSS33','p19'),('WSS336','p19'),('WSS348','p19'),('WSS35','p19'),('WSS357','p19'),('WSS371','p19'),('WSS39','p19'),('WSS394','p19'),('WSS45','p19'),('WSS53','p19'),('WSS56','p19'),('WSS62','p19'),('WSS65','p19'),('WSS84','p19'),('WSS89','p19'),('WSS92','p19'),('WSS93','p19'),('WSS106','p2'),('WSS120','p2'),('WSS124','p2'),('WSS126','p2'),('WSS13','p2'),('WSS130','p2'),('WSS133','p2'),('WSS138','p2'),('WSS140','p2'),('WSS15','p2'),('WSS161','p2'),('WSS163','p2'),('WSS166','p2'),('WSS178','p2'),('WSS181','p2'),('WSS189','p2'),('WSS191','p2'),('WSS2','p2'),('WSS204','p2'),('WSS212','p2'),('WSS214','p2'),('WSS221','p2'),('WSS225','p2'),('WSS282','p2'),('WSS291','p2'),('WSS314','p2'),('WSS321','p2'),('WSS328','p2'),('WSS337','p2'),('WSS351','p2'),('WSS375','p2'),('WSS381','p2'),('WSS386','p2'),('WSS392','p2'),('WSS394','p2'),('WSS6','p2'),('WSS60','p2'),('WSS61','p2'),('WSS65','p2'),('WSS76','p2'),('WSS79','p2'),('WSS93','p2'),('WSS98','p2'),('WSS101','p20'),('WSS112','p20'),('WSS117','p20'),('WSS123','p20'),('WSS128','p20'),('WSS138','p20'),('WSS151','p20'),('WSS153','p20'),('WSS154','p20'),('WSS155','p20'),('WSS164','p20'),('WSS171','p20'),('WSS180','p20'),('WSS188','p20'),('WSS192','p20'),('WSS203','p20'),('WSS222','p20'),('WSS233','p20'),('WSS235','p20'),('WSS239','p20'),('WSS250','p20'),('WSS254','p20'),('WSS256','p20'),('WSS264','p20'),('WSS269','p20'),('WSS271','p20'),('WSS283','p20'),('WSS285','p20'),('WSS287','p20'),('WSS294','p20'),('WSS30','p20'),('WSS315','p20'),('WSS347','p20'),('WSS353','p20'),('WSS359','p20'),('WSS362','p20'),('WSS363','p20'),('WSS372','p20'),('WSS385','p20'),('WSS387','p20'),('WSS39','p20'),('WSS392','p20'),('WSS393','p20'),('WSS396','p20'),('WSS400','p20'),('WSS54','p20'),('WSS58','p20'),('WSS68','p20'),('WSS70','p20'),('WSS71','p20'),('WSS75','p20'),('WSS77','p20'),('WSS92','p20'),('WSS105','p21'),('WSS115','p21'),('WSS119','p21'),('WSS120','p21'),('WSS125','p21'),('WSS131','p21'),('WSS138','p21'),('WSS143','p21'),('WSS151','p21'),('WSS159','p21'),('WSS170','p21'),('WSS174','p21'),('WSS190','p21'),('WSS193','p21'),('WSS195','p21'),('WSS200','p21'),('WSS201','p21'),('WSS203','p21'),('WSS205','p21'),('WSS211','p21'),('WSS214','p21'),('WSS220','p21'),('WSS224','p21'),('WSS225','p21'),('WSS226','p21'),('WSS233','p21'),('WSS234','p21'),('WSS241','p21'),('WSS255','p21'),('WSS256','p21'),('WSS262','p21'),('WSS264','p21'),('WSS265','p21'),('WSS27','p21'),('WSS277','p21'),('WSS285','p21'),('WSS288','p21'),('WSS29','p21'),('WSS300','p21'),('WSS301','p21'),('WSS304','p21'),('WSS306','p21'),('WSS313','p21'),('WSS341','p21'),('WSS367','p21'),('WSS37','p21'),('WSS376','p21'),('WSS377','p21'),('WSS381','p21'),('WSS387','p21'),('WSS389','p21'),('WSS396','p21'),('WSS40','p21'),('WSS45','p21'),('WSS49','p21'),('WSS50','p21'),('WSS59','p21'),('WSS66','p21'),('WSS73','p21'),('WSS91','p21'),('WSS96','p21'),('WSS106','p22'),('WSS108','p22'),('WSS109','p22'),('WSS11','p22'),('WSS110','p22'),('WSS116','p22'),('WSS121','p22'),('WSS125','p22'),('WSS127','p22'),('WSS144','p22'),('WSS146','p22'),('WSS153','p22'),('WSS157','p22'),('WSS160','p22'),('WSS162','p22'),('WSS164','p22'),('WSS176','p22'),('WSS179','p22'),('WSS191','p22'),('WSS196','p22'),('WSS204','p22'),('WSS208','p22'),('WSS21','p22'),('WSS226','p22'),('WSS251','p22'),('WSS252','p22'),('WSS259','p22'),('WSS26','p22'),('WSS269','p22'),('WSS270','p22'),('WSS273','p22'),('WSS279','p22'),('WSS285','p22'),('WSS30','p22'),('WSS307','p22'),('WSS310','p22'),('WSS313','p22'),('WSS329','p22'),('WSS333','p22'),('WSS343','p22'),('WSS346','p22'),('WSS356','p22'),('WSS357','p22'),('WSS36','p22'),('WSS386','p22'),('WSS42','p22'),('WSS52','p22'),('WSS55','p22'),('WSS56','p22'),('WSS57','p22'),('WSS59','p22'),('WSS67','p22'),('WSS69','p22'),('WSS85','p22'),('WSS91','p22'),('WSS107','p23'),('WSS108','p23'),('WSS113','p23'),('WSS118','p23'),('WSS135','p23'),('WSS136','p23'),('WSS146','p23'),('WSS147','p23'),('WSS158','p23'),('WSS172','p23'),('WSS173','p23'),('WSS18','p23'),('WSS193','p23'),('WSS200','p23'),('WSS206','p23'),('WSS22','p23'),('WSS220','p23'),('WSS235','p23'),('WSS24','p23'),('WSS242','p23'),('WSS251','p23'),('WSS252','p23'),('WSS257','p23'),('WSS269','p23'),('WSS274','p23'),('WSS275','p23'),('WSS282','p23'),('WSS288','p23'),('WSS289','p23'),('WSS29','p23'),('WSS298','p23'),('WSS300','p23'),('WSS304','p23'),('WSS310','p23'),('WSS311','p23'),('WSS313','p23'),('WSS318','p23'),('WSS319','p23'),('WSS328','p23'),('WSS334','p23'),('WSS340','p23'),('WSS36','p23'),('WSS362','p23'),('WSS375','p23'),('WSS376','p23'),('WSS378','p23'),('WSS384','p23'),('WSS390','p23'),('WSS68','p23'),('WSS78','p23'),('WSS89','p23'),('WSS9','p23'),('WSS97','p23'),('WSS100','p24'),('WSS115','p24'),('WSS130','p24'),('WSS132','p24'),('WSS140','p24'),('WSS142','p24'),('WSS143','p24'),('WSS144','p24'),('WSS148','p24'),('WSS153','p24'),('WSS158','p24'),('WSS160','p24'),('WSS168','p24'),('WSS173','p24'),('WSS185','p24'),('WSS198','p24'),('WSS199','p24'),('WSS209','p24'),('WSS210','p24'),('WSS216','p24'),('WSS218','p24'),('WSS236','p24'),('WSS247','p24'),('WSS25','p24'),('WSS263','p24'),('WSS264','p24'),('WSS272','p24'),('WSS284','p24'),('WSS286','p24'),('WSS291','p24'),('WSS306','p24'),('WSS308','p24'),('WSS321','p24'),('WSS332','p24'),('WSS334','p24'),('WSS364','p24'),('WSS369','p24'),('WSS38','p24'),('WSS386','p24'),('WSS41','p24'),('WSS50','p24'),('WSS56','p24'),('WSS57','p24'),('WSS66','p24'),('WSS67','p24'),('WSS72','p24'),('WSS75','p24'),('WSS81','p24'),('WSS82','p24'),('WSS83','p24'),('WSS84','p24'),('WSS9','p24'),('WSS99','p24'),('WSS1','p25'),('WSS105','p25'),('WSS114','p25'),('WSS145','p25'),('WSS152','p25'),('WSS163','p25'),('WSS180','p25'),('WSS181','p25'),('WSS190','p25'),('WSS20','p25'),('WSS203','p25'),('WSS204','p25'),('WSS206','p25'),('WSS213','p25'),('WSS23','p25'),('WSS231','p25'),('WSS234','p25'),('WSS237','p25'),('WSS238','p25'),('WSS24','p25'),('WSS260','p25'),('WSS261','p25'),('WSS263','p25'),('WSS271','p25'),('WSS274','p25'),('WSS291','p25'),('WSS310','p25'),('WSS312','p25'),('WSS320','p25'),('WSS322','p25'),('WSS327','p25'),('WSS331','p25'),('WSS339','p25'),('WSS346','p25'),('WSS350','p25'),('WSS356','p25'),('WSS361','p25'),('WSS388','p25'),('WSS39','p25'),('WSS390','p25'),('WSS394','p25'),('WSS398','p25'),('WSS48','p25'),('WSS5','p25'),('WSS62','p25'),('WSS64','p25'),('WSS75','p25'),('WSS79','p25'),('WSS81','p25'),('WSS89','p25'),('WSS90','p25'),('WSS92','p25'),('WSS1','p26'),('WSS102','p26'),('WSS116','p26'),('WSS117','p26'),('WSS132','p26'),('WSS136','p26'),('WSS139','p26'),('WSS143','p26'),('WSS147','p26'),('WSS148','p26'),('WSS154','p26'),('WSS162','p26'),('WSS177','p26'),('WSS180','p26'),('WSS219','p26'),('WSS235','p26'),('WSS241','p26'),('WSS242','p26'),('WSS261','p26'),('WSS267','p26'),('WSS268','p26'),('WSS27','p26'),('WSS274','p26'),('WSS277','p26'),('WSS279','p26'),('WSS290','p26'),('WSS296','p26'),('WSS30','p26'),('WSS31','p26'),('WSS316','p26'),('WSS317','p26'),('WSS32','p26'),('WSS323','p26'),('WSS333','p26'),('WSS339','p26'),('WSS344','p26'),('WSS352','p26'),('WSS369','p26'),('WSS378','p26'),('WSS381','p26'),('WSS65','p26'),('WSS68','p26'),('WSS7','p26'),('WSS70','p26'),('WSS71','p26'),('WSS76','p26'),('WSS80','p26'),('WSS83','p26'),('WSS84','p26'),('WSS87','p26'),('WSS1','p27'),('WSS100','p27'),('WSS109','p27'),('WSS11','p27'),('WSS110','p27'),('WSS123','p27'),('WSS124','p27'),('WSS127','p27'),('WSS13','p27'),('WSS133','p27'),('WSS134','p27'),('WSS139','p27'),('WSS14','p27'),('WSS149','p27'),('WSS152','p27'),('WSS157','p27'),('WSS158','p27'),('WSS167','p27'),('WSS171','p27'),('WSS188','p27'),('WSS191','p27'),('WSS208','p27'),('WSS217','p27'),('WSS222','p27'),('WSS224','p27'),('WSS227','p27'),('WSS228','p27'),('WSS23','p27'),('WSS239','p27'),('WSS244','p27'),('WSS248','p27'),('WSS255','p27'),('WSS262','p27'),('WSS277','p27'),('WSS284','p27'),('WSS286','p27'),('WSS315','p27'),('WSS316','p27'),('WSS323','p27'),('WSS349','p27'),('WSS35','p27'),('WSS372','p27'),('WSS373','p27'),('WSS389','p27'),('WSS46','p27'),('WSS52','p27'),('WSS54','p27'),('WSS6','p27'),('WSS63','p27'),('WSS75','p27'),('WSS79','p27'),('WSS85','p27'),('WSS106','p28'),('WSS14','p28'),('WSS152','p28'),('WSS163','p28'),('WSS176','p28'),('WSS182','p28'),('WSS189','p28'),('WSS194','p28'),('WSS195','p28'),('WSS196','p28'),('WSS197','p28'),('WSS202','p28'),('WSS205','p28'),('WSS212','p28'),('WSS213','p28'),('WSS218','p28'),('WSS221','p28'),('WSS222','p28'),('WSS239','p28'),('WSS243','p28'),('WSS246','p28'),('WSS259','p28'),('WSS276','p28'),('WSS280','p28'),('WSS287','p28'),('WSS290','p28'),('WSS292','p28'),('WSS296','p28'),('WSS306','p28'),('WSS32','p28'),('WSS326','p28'),('WSS332','p28'),('WSS335','p28'),('WSS346','p28'),('WSS352','p28'),('WSS358','p28'),('WSS360','p28'),('WSS362','p28'),('WSS366','p28'),('WSS374','p28'),('WSS383','p28'),('WSS385','p28'),('WSS390','p28'),('WSS4','p28'),('WSS6','p28'),('WSS66','p28'),('WSS73','p28'),('WSS74','p28'),('WSS83','p28'),('WSS88','p28'),('WSS9','p28'),('WSS94','p28'),('WSS96','p28'),('WSS118','p29'),('WSS122','p29'),('WSS126','p29'),('WSS127','p29'),('WSS14','p29'),('WSS149','p29'),('WSS157','p29'),('WSS161','p29'),('WSS169','p29'),('WSS170','p29'),('WSS176','p29'),('WSS178','p29'),('WSS185','p29'),('WSS186','p29'),('WSS198','p29'),('WSS236','p29'),('WSS241','p29'),('WSS256','p29'),('WSS26','p29'),('WSS260','p29'),('WSS279','p29'),('WSS282','p29'),('WSS295','p29'),('WSS298','p29'),('WSS299','p29'),('WSS319','p29'),('WSS329','p29'),('WSS336','p29'),('WSS343','p29'),('WSS354','p29'),('WSS365','p29'),('WSS366','p29'),('WSS368','p29'),('WSS371','p29'),('WSS373','p29'),('WSS383','p29'),('WSS389','p29'),('WSS398','p29'),('WSS40','p29'),('WSS44','p29'),('WSS53','p29'),('WSS58','p29'),('WSS69','p29'),('WSS74','p29'),('WSS90','p29'),('WSS102','p3'),('WSS106','p3'),('WSS12','p3'),('WSS123','p3'),('WSS128','p3'),('WSS136','p3'),('WSS137','p3'),('WSS151','p3'),('WSS157','p3'),('WSS172','p3'),('WSS175','p3'),('WSS177','p3'),('WSS190','p3'),('WSS193','p3'),('WSS200','p3'),('WSS201','p3'),('WSS209','p3'),('WSS21','p3'),('WSS222','p3'),('WSS226','p3'),('WSS227','p3'),('WSS23','p3'),('WSS241','p3'),('WSS243','p3'),('WSS249','p3'),('WSS250','p3'),('WSS253','p3'),('WSS266','p3'),('WSS276','p3'),('WSS297','p3'),('WSS306','p3'),('WSS31','p3'),('WSS315','p3'),('WSS317','p3'),('WSS335','p3'),('WSS337','p3'),('WSS340','p3'),('WSS342','p3'),('WSS348','p3'),('WSS384','p3'),('WSS39','p3'),('WSS399','p3'),('WSS5','p3'),('WSS51','p3'),('WSS54','p3'),('WSS6','p3'),('WSS60','p3'),('WSS61','p3'),('WSS71','p3'),('WSS91','p3'),('WSS93','p3'),('WSS103','p30'),('WSS109','p30'),('WSS122','p30'),('WSS137','p30'),('WSS143','p30'),('WSS146','p30'),('WSS147','p30'),('WSS150','p30'),('WSS154','p30'),('WSS159','p30'),('WSS16','p30'),('WSS165','p30'),('WSS17','p30'),('WSS178','p30'),('WSS18','p30'),('WSS180','p30'),('WSS181','p30'),('WSS199','p30'),('WSS200','p30'),('WSS207','p30'),('WSS223','p30'),('WSS230','p30'),('WSS244','p30'),('WSS245','p30'),('WSS257','p30'),('WSS261','p30'),('WSS281','p30'),('WSS292','p30'),('WSS294','p30'),('WSS299','p30'),('WSS301','p30'),('WSS314','p30'),('WSS330','p30'),('WSS337','p30'),('WSS358','p30'),('WSS364','p30'),('WSS365','p30'),('WSS366','p30'),('WSS368','p30'),('WSS370','p30'),('WSS371','p30'),('WSS378','p30'),('WSS50','p30'),('WSS60','p30'),('WSS64','p30'),('WSS73','p30'),('WSS74','p30'),('WSS84','p30'),('WSS87','p30'),('WSS101','p4'),('WSS103','p4'),('WSS107','p4'),('WSS113','p4'),('WSS121','p4'),('WSS126','p4'),('WSS134','p4'),('WSS149','p4'),('WSS15','p4'),('WSS155','p4'),('WSS185','p4'),('WSS186','p4'),('WSS193','p4'),('WSS199','p4'),('WSS212','p4'),('WSS220','p4'),('WSS232','p4'),('WSS233','p4'),('WSS238','p4'),('WSS253','p4'),('WSS255','p4'),('WSS258','p4'),('WSS261','p4'),('WSS280','p4'),('WSS292','p4'),('WSS303','p4'),('WSS305','p4'),('WSS326','p4'),('WSS332','p4'),('WSS348','p4'),('WSS35','p4'),('WSS355','p4'),('WSS359','p4'),('WSS37','p4'),('WSS376','p4'),('WSS385','p4'),('WSS388','p4'),('WSS396','p4'),('WSS43','p4'),('WSS69','p4'),('WSS83','p4'),('WSS86','p4'),('WSS88','p4'),('WSS116','p5'),('WSS12','p5'),('WSS125','p5'),('WSS127','p5'),('WSS134','p5'),('WSS135','p5'),('WSS142','p5'),('WSS156','p5'),('WSS16','p5'),('WSS188','p5'),('WSS19','p5'),('WSS21','p5'),('WSS211','p5'),('WSS214','p5'),('WSS221','p5'),('WSS225','p5'),('WSS228','p5'),('WSS24','p5'),('WSS240','p5'),('WSS245','p5'),('WSS25','p5'),('WSS252','p5'),('WSS259','p5'),('WSS26','p5'),('WSS260','p5'),('WSS278','p5'),('WSS280','p5'),('WSS299','p5'),('WSS308','p5'),('WSS309','p5'),('WSS319','p5'),('WSS32','p5'),('WSS323','p5'),('WSS335','p5'),('WSS338','p5'),('WSS348','p5'),('WSS349','p5'),('WSS350','p5'),('WSS361','p5'),('WSS378','p5'),('WSS380','p5'),('WSS390','p5'),('WSS391','p5'),('WSS393','p5'),('WSS395','p5'),('WSS397','p5'),('WSS40','p5'),('WSS48','p5'),('WSS49','p5'),('WSS54','p5'),('WSS76','p5'),('WSS80','p5'),('WSS87','p5'),('WSS113','p6'),('WSS119','p6'),('WSS122','p6'),('WSS128','p6'),('WSS130','p6'),('WSS137','p6'),('WSS142','p6'),('WSS144','p6'),('WSS153','p6'),('WSS158','p6'),('WSS161','p6'),('WSS187','p6'),('WSS192','p6'),('WSS198','p6'),('WSS207','p6'),('WSS208','p6'),('WSS209','p6'),('WSS215','p6'),('WSS231','p6'),('WSS237','p6'),('WSS240','p6'),('WSS242','p6'),('WSS247','p6'),('WSS27','p6'),('WSS273','p6'),('WSS275','p6'),('WSS284','p6'),('WSS293','p6'),('WSS299','p6'),('WSS302','p6'),('WSS311','p6'),('WSS312','p6'),('WSS318','p6'),('WSS319','p6'),('WSS338','p6'),('WSS342','p6'),('WSS388','p6'),('WSS391','p6'),('WSS400','p6'),('WSS46','p6'),('WSS51','p6'),('WSS61','p6'),('WSS64','p6'),('WSS70','p6'),('WSS72','p6'),('WSS78','p6'),('WSS88','p6'),('WSS91','p6'),('WSS96','p6'),('WSS10','p7'),('WSS111','p7'),('WSS15','p7'),('WSS155','p7'),('WSS160','p7'),('WSS171','p7'),('WSS173','p7'),('WSS179','p7'),('WSS184','p7'),('WSS185','p7'),('WSS187','p7'),('WSS192','p7'),('WSS205','p7'),('WSS213','p7'),('WSS225','p7'),('WSS227','p7'),('WSS234','p7'),('WSS246','p7'),('WSS249','p7'),('WSS251','p7'),('WSS268','p7'),('WSS282','p7'),('WSS3','p7'),('WSS300','p7'),('WSS312','p7'),('WSS314','p7'),('WSS318','p7'),('WSS32','p7'),('WSS320','p7'),('WSS34','p7'),('WSS35','p7'),('WSS353','p7'),('WSS354','p7'),('WSS359','p7'),('WSS370','p7'),('WSS373','p7'),('WSS376','p7'),('WSS380','p7'),('WSS389','p7'),('WSS42','p7'),('WSS44','p7'),('WSS52','p7'),('WSS72','p7'),('WSS79','p7'),('WSS82','p7'),('WSS85','p7'),('WSS93','p7'),('WSS95','p7'),('WSS101','p8'),('WSS114','p8'),('WSS121','p8'),('WSS124','p8'),('WSS129','p8'),('WSS141','p8'),('WSS147','p8'),('WSS148','p8'),('WSS150','p8'),('WSS152','p8'),('WSS165','p8'),('WSS166','p8'),('WSS183','p8'),('WSS19','p8'),('WSS218','p8'),('WSS227','p8'),('WSS232','p8'),('WSS236','p8'),('WSS258','p8'),('WSS265','p8'),('WSS267','p8'),('WSS269','p8'),('WSS278','p8'),('WSS28','p8'),('WSS281','p8'),('WSS286','p8'),('WSS294','p8'),('WSS296','p8'),('WSS302','p8'),('WSS309','p8'),('WSS312','p8'),('WSS321','p8'),('WSS324','p8'),('WSS326','p8'),('WSS328','p8'),('WSS336','p8'),('WSS344','p8'),('WSS358','p8'),('WSS365','p8'),('WSS379','p8'),('WSS383','p8'),('WSS388','p8'),('WSS41','p8'),('WSS45','p8'),('WSS49','p8'),('WSS50','p8'),('WSS53','p8'),('WSS55','p8'),('WSS58','p8'),('WSS63','p8'),('WSS7','p8'),('WSS90','p8'),('WSS101','p9'),('WSS108','p9'),('WSS111','p9'),('WSS131','p9'),('WSS133','p9'),('WSS135','p9'),('WSS139','p9'),('WSS141','p9'),('WSS156','p9'),('WSS175','p9'),('WSS184','p9'),('WSS195','p9'),('WSS196','p9'),('WSS204','p9'),('WSS208','p9'),('WSS210','p9'),('WSS216','p9'),('WSS25','p9'),('WSS271','p9'),('WSS276','p9'),('WSS295','p9'),('WSS305','p9'),('WSS309','p9'),('WSS33','p9'),('WSS331','p9'),('WSS336','p9'),('WSS341','p9'),('WSS353','p9'),('WSS354','p9'),('WSS355','p9'),('WSS356','p9'),('WSS358','p9'),('WSS360','p9'),('WSS368','p9'),('WSS38','p9'),('WSS398','p9'),('WSS43','p9'),('WSS5','p9'),('WSS74','p9'),('WSS78','p9'),('WSS98','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS231'),(1,2,'WSS290'),(2,1,'WSS113'),(2,2,'WSS37'),(3,1,'WSS383'),(3,2,'WSS379'),(4,1,'WSS19'),(4,2,'WSS108'),(5,1,'WSS281'),(5,2,'WSS39'),(6,1,'WSS366'),(6,2,'WSS38'),(7,1,'WSS334'),(7,2,'WSS1'),(8,1,'WSS268'),(8,2,'WSS389'),(9,1,'WSS266'),(9,2,'WSS34'),(10,1,'WSS268'),(10,2,'WSS370'),(11,1,'WSS242'),(11,2,'WSS36'),(12,1,'WSS398'),(12,2,'WSS338'),(13,1,'WSS210'),(13,2,'WSS186'),(14,1,'WSS389'),(14,2,'WSS379'),(15,1,'WSS307'),(15,2,'WSS356'),(16,1,'WSS289'),(16,2,'WSS397'),(17,1,'WSS198'),(17,2,'WSS232'),(18,1,'WSS30'),(18,2,'WSS101'),(18,3,'WSS40'),(19,1,'WSS309'),(19,2,'WSS276'),(20,1,'WSS104'),(20,2,'WSS383'),(21,1,'WSS13'),(21,2,'WSS300'),(22,1,'WSS256'),(22,2,'WSS298'),(23,1,'WSS117'),(23,2,'WSS254'),(24,1,'WSS398'),(24,2,'WSS383'),(25,1,'WSS9'),(25,2,'WSS40'),(26,1,'WSS222'),(26,2,'WSS366'),(27,1,'WSS20'),(27,2,'WSS26'),(28,1,'WSS28'),(28,2,'WSS103'),(28,3,'WSS101'),(29,1,'WSS35'),(29,2,'WSS16'),(30,1,'WSS377'),(30,2,'WSS44'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-27 19:22:50
