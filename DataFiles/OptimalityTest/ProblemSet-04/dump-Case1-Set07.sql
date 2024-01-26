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
INSERT INTO `initialgoalparameter` VALUES (1,'I','p1'),(6,'G','p1'),(8,'I','p1'),(9,'I','p1'),(16,'I','p1'),(19,'I','p1'),(20,'I','p1'),(21,'I','p1'),(22,'I','p1'),(23,'G','p1'),(25,'I','p1'),(28,'I','p1'),(29,'I','p1'),(1,'I','p10'),(5,'I','p10'),(8,'I','p10'),(9,'G','p10'),(10,'G','p10'),(11,'I','p10'),(15,'G','p10'),(16,'G','p10'),(19,'I','p10'),(23,'I','p10'),(25,'I','p10'),(30,'I','p10'),(3,'G','p11'),(4,'I','p11'),(6,'G','p11'),(7,'I','p11'),(8,'I','p11'),(12,'I','p11'),(13,'I','p11'),(16,'G','p11'),(17,'I','p11'),(18,'I','p11'),(19,'I','p11'),(21,'G','p11'),(28,'G','p11'),(30,'I','p11'),(2,'I','p12'),(8,'I','p12'),(12,'I','p12'),(14,'G','p12'),(19,'I','p12'),(20,'I','p12'),(24,'I','p12'),(25,'G','p12'),(26,'G','p12'),(28,'I','p12'),(2,'I','p13'),(5,'G','p13'),(9,'I','p13'),(11,'G','p13'),(15,'I','p13'),(19,'I','p13'),(23,'G','p13'),(24,'I','p13'),(27,'G','p13'),(1,'G','p14'),(3,'G','p14'),(6,'G','p14'),(7,'G','p14'),(12,'I','p14'),(14,'I','p14'),(15,'G','p14'),(17,'G','p14'),(23,'G','p14'),(28,'G','p14'),(29,'I','p14'),(1,'G','p15'),(2,'G','p15'),(9,'G','p15'),(11,'I','p15'),(18,'I','p15'),(21,'G','p15'),(25,'G','p15'),(26,'I','p15'),(28,'I','p15'),(29,'I','p15'),(3,'I','p16'),(13,'G','p16'),(14,'G','p16'),(18,'G','p16'),(20,'G','p16'),(23,'I','p16'),(25,'I','p16'),(27,'I','p16'),(8,'G','p17'),(12,'I','p17'),(13,'G','p17'),(14,'I','p17'),(15,'I','p17'),(20,'I','p17'),(27,'G','p17'),(29,'G','p17'),(2,'G','p18'),(6,'I','p18'),(7,'I','p18'),(9,'G','p18'),(11,'I','p18'),(19,'G','p18'),(24,'I','p18'),(26,'G','p18'),(28,'I','p18'),(30,'I','p18'),(5,'I','p19'),(11,'G','p19'),(15,'I','p19'),(16,'G','p19'),(18,'I','p19'),(20,'G','p19'),(21,'I','p19'),(23,'I','p19'),(26,'I','p19'),(27,'I','p19'),(28,'G','p19'),(2,'I','p2'),(4,'I','p2'),(5,'I','p2'),(10,'I','p2'),(14,'I','p2'),(17,'I','p2'),(21,'I','p2'),(24,'G','p2'),(25,'G','p2'),(27,'G','p2'),(30,'G','p2'),(1,'I','p20'),(5,'I','p20'),(8,'G','p20'),(9,'I','p20'),(17,'I','p20'),(20,'G','p20'),(22,'G','p20'),(26,'I','p20'),(3,'I','p21'),(4,'G','p21'),(5,'G','p21'),(6,'I','p21'),(11,'G','p21'),(13,'I','p21'),(15,'I','p21'),(17,'G','p21'),(22,'G','p21'),(26,'G','p21'),(28,'I','p21'),(1,'I','p22'),(10,'G','p22'),(11,'I','p22'),(13,'I','p22'),(19,'G','p22'),(23,'G','p22'),(24,'I','p22'),(3,'I','p23'),(5,'I','p23'),(7,'I','p23'),(10,'G','p23'),(13,'G','p23'),(15,'G','p23'),(16,'I','p23'),(18,'I','p23'),(19,'G','p23'),(21,'G','p23'),(22,'I','p23'),(30,'G','p23'),(2,'I','p24'),(4,'I','p24'),(6,'I','p24'),(7,'I','p24'),(10,'I','p24'),(11,'I','p24'),(12,'G','p24'),(14,'I','p24'),(20,'I','p24'),(23,'I','p24'),(26,'I','p24'),(29,'I','p24'),(3,'G','p25'),(4,'G','p25'),(10,'G','p25'),(13,'I','p25'),(14,'G','p25'),(15,'I','p25'),(17,'G','p25'),(18,'I','p25'),(22,'I','p25'),(23,'I','p25'),(25,'I','p25'),(26,'G','p25'),(3,'G','p26'),(17,'I','p26'),(29,'G','p26'),(3,'I','p27'),(8,'G','p27'),(12,'G','p27'),(16,'I','p27'),(18,'G','p27'),(23,'I','p27'),(30,'G','p27'),(1,'G','p28'),(3,'I','p28'),(6,'I','p28'),(7,'G','p28'),(8,'I','p28'),(9,'I','p28'),(12,'I','p28'),(17,'G','p28'),(18,'G','p28'),(20,'I','p28'),(24,'G','p28'),(27,'I','p28'),(29,'G','p28'),(2,'G','p29'),(4,'G','p29'),(7,'G','p29'),(12,'I','p29'),(16,'G','p29'),(26,'I','p29'),(27,'I','p29'),(2,'G','p3'),(5,'G','p3'),(10,'I','p3'),(12,'G','p3'),(19,'I','p3'),(20,'I','p3'),(21,'G','p3'),(24,'I','p3'),(25,'G','p3'),(26,'I','p3'),(27,'I','p3'),(28,'G','p3'),(29,'G','p3'),(30,'I','p3'),(1,'I','p30'),(5,'G','p30'),(7,'I','p30'),(12,'G','p30'),(13,'I','p30'),(14,'I','p30'),(16,'I','p30'),(21,'I','p30'),(22,'G','p30'),(24,'G','p30'),(30,'I','p30'),(1,'G','p4'),(2,'I','p4'),(6,'I','p4'),(7,'I','p4'),(14,'I','p4'),(18,'G','p4'),(21,'I','p4'),(22,'I','p4'),(27,'G','p4'),(29,'I','p4'),(30,'G','p4'),(1,'I','p5'),(3,'I','p5'),(4,'I','p5'),(5,'I','p5'),(7,'G','p5'),(9,'I','p5'),(14,'G','p5'),(15,'I','p5'),(24,'I','p5'),(28,'I','p5'),(4,'I','p6'),(8,'I','p6'),(9,'G','p6'),(13,'G','p6'),(17,'I','p6'),(18,'I','p6'),(22,'I','p6'),(29,'I','p6'),(2,'I','p7'),(10,'I','p7'),(13,'I','p7'),(15,'G','p7'),(16,'I','p7'),(20,'G','p7'),(21,'I','p7'),(22,'G','p7'),(4,'I','p8'),(6,'G','p8'),(8,'G','p8'),(9,'I','p8'),(10,'I','p8'),(11,'G','p8'),(22,'I','p8'),(24,'G','p8'),(25,'I','p8'),(27,'I','p8'),(30,'I','p8'),(4,'G','p9'),(6,'I','p9'),(10,'I','p9'),(11,'I','p9'),(16,'I','p9'),(17,'I','p9'),(19,'G','p9'),(25,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS12','p1'),('WSS125','p1'),('WSS147','p1'),('WSS167','p1'),('WSS17','p1'),('WSS177','p1'),('WSS179','p1'),('WSS185','p1'),('WSS58','p1'),('WSS90','p1'),('WSS119','p10'),('WSS174','p10'),('WSS190','p10'),('WSS194','p10'),('WSS24','p10'),('WSS39','p10'),('WSS59','p10'),('WSS60','p10'),('WSS73','p10'),('WSS81','p10'),('WSS1','p11'),('WSS105','p11'),('WSS108','p11'),('WSS115','p11'),('WSS13','p11'),('WSS131','p11'),('WSS152','p11'),('WSS157','p11'),('WSS165','p11'),('WSS184','p11'),('WSS23','p11'),('WSS29','p11'),('WSS44','p11'),('WSS50','p11'),('WSS66','p11'),('WSS68','p11'),('WSS87','p11'),('WSS98','p11'),('WSS103','p12'),('WSS105','p12'),('WSS116','p12'),('WSS124','p12'),('WSS137','p12'),('WSS2','p12'),('WSS42','p12'),('WSS65','p12'),('WSS116','p13'),('WSS133','p13'),('WSS163','p13'),('WSS180','p13'),('WSS191','p13'),('WSS38','p13'),('WSS48','p13'),('WSS6','p13'),('WSS61','p13'),('WSS71','p13'),('WSS72','p13'),('WSS75','p13'),('WSS93','p13'),('WSS103','p14'),('WSS109','p14'),('WSS138','p14'),('WSS166','p14'),('WSS181','p14'),('WSS182','p14'),('WSS200','p14'),('WSS25','p14'),('WSS33','p14'),('WSS44','p14'),('WSS50','p14'),('WSS62','p14'),('WSS67','p14'),('WSS85','p14'),('WSS106','p15'),('WSS120','p15'),('WSS146','p15'),('WSS149','p15'),('WSS154','p15'),('WSS156','p15'),('WSS16','p15'),('WSS39','p15'),('WSS42','p15'),('WSS66','p15'),('WSS70','p15'),('WSS84','p15'),('WSS88','p15'),('WSS89','p15'),('WSS10','p16'),('WSS100','p16'),('WSS104','p16'),('WSS11','p16'),('WSS118','p16'),('WSS122','p16'),('WSS135','p16'),('WSS15','p16'),('WSS163','p16'),('WSS191','p16'),('WSS199','p16'),('WSS5','p16'),('WSS57','p16'),('WSS69','p16'),('WSS101','p17'),('WSS102','p17'),('WSS171','p17'),('WSS27','p17'),('WSS37','p17'),('WSS38','p17'),('WSS43','p17'),('WSS55','p17'),('WSS7','p17'),('WSS82','p17'),('WSS9','p17'),('WSS92','p17'),('WSS99','p17'),('WSS121','p18'),('WSS130','p18'),('WSS137','p18'),('WSS144','p18'),('WSS16','p18'),('WSS172','p18'),('WSS175','p18'),('WSS187','p18'),('WSS192','p18'),('WSS32','p18'),('WSS37','p18'),('WSS46','p18'),('WSS74','p18'),('WSS77','p18'),('WSS85','p18'),('WSS95','p18'),('WSS111','p19'),('WSS117','p19'),('WSS124','p19'),('WSS125','p19'),('WSS126','p19'),('WSS131','p19'),('WSS145','p19'),('WSS159','p19'),('WSS183','p19'),('WSS19','p19'),('WSS192','p19'),('WSS194','p19'),('WSS195','p19'),('WSS198','p19'),('WSS28','p19'),('WSS40','p19'),('WSS64','p19'),('WSS7','p19'),('WSS83','p19'),('WSS87','p19'),('WSS96','p19'),('WSS97','p19'),('WSS106','p2'),('WSS134','p2'),('WSS139','p2'),('WSS143','p2'),('WSS148','p2'),('WSS174','p2'),('WSS196','p2'),('WSS36','p2'),('WSS53','p2'),('WSS59','p2'),('WSS83','p2'),('WSS9','p2'),('WSS113','p20'),('WSS118','p20'),('WSS119','p20'),('WSS134','p20'),('WSS157','p20'),('WSS189','p20'),('WSS196','p20'),('WSS29','p20'),('WSS1','p21'),('WSS100','p21'),('WSS135','p21'),('WSS160','p21'),('WSS164','p21'),('WSS178','p21'),('WSS193','p21'),('WSS21','p21'),('WSS28','p21'),('WSS31','p21'),('WSS40','p21'),('WSS51','p21'),('WSS60','p21'),('WSS72','p21'),('WSS75','p21'),('WSS76','p21'),('WSS99','p21'),('WSS10','p22'),('WSS102','p22'),('WSS11','p22'),('WSS121','p22'),('WSS139','p22'),('WSS149','p22'),('WSS156','p22'),('WSS172','p22'),('WSS186','p22'),('WSS189','p22'),('WSS199','p22'),('WSS2','p22'),('WSS23','p22'),('WSS30','p22'),('WSS54','p22'),('WSS6','p22'),('WSS63','p22'),('WSS86','p22'),('WSS94','p22'),('WSS96','p22'),('WSS114','p23'),('WSS128','p23'),('WSS184','p23'),('WSS35','p23'),('WSS63','p23'),('WSS129','p24'),('WSS13','p24'),('WSS147','p24'),('WSS150','p24'),('WSS151','p24'),('WSS153','p24'),('WSS158','p24'),('WSS162','p24'),('WSS166','p24'),('WSS188','p24'),('WSS41','p24'),('WSS80','p24'),('WSS91','p24'),('WSS12','p25'),('WSS123','p25'),('WSS132','p25'),('WSS14','p25'),('WSS178','p25'),('WSS197','p25'),('WSS4','p25'),('WSS54','p25'),('WSS67','p25'),('WSS88','p25'),('WSS97','p25'),('WSS126','p26'),('WSS127','p26'),('WSS128','p26'),('WSS14','p26'),('WSS169','p26'),('WSS182','p26'),('WSS188','p26'),('WSS25','p26'),('WSS34','p26'),('WSS36','p26'),('WSS45','p26'),('WSS62','p26'),('WSS79','p26'),('WSS81','p26'),('WSS82','p26'),('WSS93','p26'),('WSS104','p27'),('WSS108','p27'),('WSS109','p27'),('WSS133','p27'),('WSS142','p27'),('WSS187','p27'),('WSS30','p27'),('WSS53','p27'),('WSS68','p27'),('WSS70','p27'),('WSS71','p27'),('WSS80','p27'),('WSS84','p27'),('WSS154','p28'),('WSS167','p28'),('WSS169','p28'),('WSS17','p28'),('WSS179','p28'),('WSS197','p28'),('WSS20','p28'),('WSS49','p28'),('WSS52','p28'),('WSS69','p28'),('WSS73','p28'),('WSS78','p28'),('WSS136','p29'),('WSS150','p29'),('WSS151','p29'),('WSS153','p29'),('WSS161','p29'),('WSS173','p29'),('WSS18','p29'),('WSS26','p29'),('WSS41','p29'),('WSS55','p29'),('WSS79','p29'),('WSS86','p29'),('WSS123','p3'),('WSS129','p3'),('WSS145','p3'),('WSS170','p3'),('WSS173','p3'),('WSS183','p3'),('WSS190','p3'),('WSS198','p3'),('WSS20','p3'),('WSS200','p3'),('WSS3','p3'),('WSS46','p3'),('WSS58','p3'),('WSS74','p3'),('WSS78','p3'),('WSS91','p3'),('WSS112','p30'),('WSS114','p30'),('WSS117','p30'),('WSS120','p30'),('WSS132','p30'),('WSS144','p30'),('WSS155','p30'),('WSS158','p30'),('WSS176','p30'),('WSS181','p30'),('WSS195','p30'),('WSS47','p30'),('WSS52','p30'),('WSS56','p30'),('WSS57','p30'),('WSS110','p4'),('WSS111','p4'),('WSS127','p4'),('WSS130','p4'),('WSS140','p4'),('WSS148','p4'),('WSS155','p4'),('WSS159','p4'),('WSS171','p4'),('WSS185','p4'),('WSS47','p4'),('WSS5','p4'),('WSS61','p4'),('WSS64','p4'),('WSS65','p4'),('WSS8','p4'),('WSS98','p4'),('WSS110','p5'),('WSS140','p5'),('WSS18','p5'),('WSS180','p5'),('WSS21','p5'),('WSS22','p5'),('WSS48','p5'),('WSS56','p5'),('WSS94','p5'),('WSS95','p5'),('WSS136','p6'),('WSS143','p6'),('WSS15','p6'),('WSS161','p6'),('WSS162','p6'),('WSS164','p6'),('WSS168','p6'),('WSS19','p6'),('WSS4','p6'),('WSS160','p7'),('WSS165','p7'),('WSS175','p7'),('WSS27','p7'),('WSS32','p7'),('WSS107','p8'),('WSS113','p8'),('WSS115','p8'),('WSS122','p8'),('WSS168','p8'),('WSS170','p8'),('WSS176','p8'),('WSS22','p8'),('WSS24','p8'),('WSS26','p8'),('WSS35','p8'),('WSS43','p8'),('WSS45','p8'),('WSS49','p8'),('WSS51','p8'),('WSS76','p8'),('WSS101','p9'),('WSS107','p9'),('WSS112','p9'),('WSS138','p9'),('WSS141','p9'),('WSS146','p9'),('WSS152','p9'),('WSS177','p9'),('WSS186','p9'),('WSS193','p9'),('WSS3','p9'),('WSS33','p9'),('WSS77','p9'),('WSS92','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS10','p1'),('WSS102','p1'),('WSS104','p1'),('WSS109','p1'),('WSS110','p1'),('WSS113','p1'),('WSS117','p1'),('WSS123','p1'),('WSS131','p1'),('WSS133','p1'),('WSS139','p1'),('WSS141','p1'),('WSS144','p1'),('WSS148','p1'),('WSS15','p1'),('WSS16','p1'),('WSS165','p1'),('WSS168','p1'),('WSS173','p1'),('WSS177','p1'),('WSS180','p1'),('WSS181','p1'),('WSS182','p1'),('WSS183','p1'),('WSS19','p1'),('WSS190','p1'),('WSS194','p1'),('WSS195','p1'),('WSS198','p1'),('WSS2','p1'),('WSS200','p1'),('WSS22','p1'),('WSS24','p1'),('WSS27','p1'),('WSS33','p1'),('WSS46','p1'),('WSS49','p1'),('WSS53','p1'),('WSS54','p1'),('WSS69','p1'),('WSS81','p1'),('WSS83','p1'),('WSS86','p1'),('WSS87','p1'),('WSS9','p1'),('WSS96','p1'),('WSS99','p1'),('WSS103','p10'),('WSS104','p10'),('WSS11','p10'),('WSS111','p10'),('WSS116','p10'),('WSS118','p10'),('WSS119','p10'),('WSS12','p10'),('WSS120','p10'),('WSS132','p10'),('WSS133','p10'),('WSS136','p10'),('WSS141','p10'),('WSS145','p10'),('WSS147','p10'),('WSS157','p10'),('WSS160','p10'),('WSS161','p10'),('WSS164','p10'),('WSS166','p10'),('WSS168','p10'),('WSS170','p10'),('WSS173','p10'),('WSS174','p10'),('WSS175','p10'),('WSS18','p10'),('WSS180','p10'),('WSS182','p10'),('WSS189','p10'),('WSS190','p10'),('WSS197','p10'),('WSS22','p10'),('WSS24','p10'),('WSS25','p10'),('WSS26','p10'),('WSS33','p10'),('WSS40','p10'),('WSS47','p10'),('WSS60','p10'),('WSS61','p10'),('WSS63','p10'),('WSS65','p10'),('WSS78','p10'),('WSS79','p10'),('WSS81','p10'),('WSS89','p10'),('WSS92','p10'),('WSS97','p10'),('WSS1','p11'),('WSS101','p11'),('WSS105','p11'),('WSS116','p11'),('WSS118','p11'),('WSS123','p11'),('WSS127','p11'),('WSS13','p11'),('WSS133','p11'),('WSS137','p11'),('WSS14','p11'),('WSS141','p11'),('WSS142','p11'),('WSS143','p11'),('WSS148','p11'),('WSS149','p11'),('WSS154','p11'),('WSS155','p11'),('WSS157','p11'),('WSS159','p11'),('WSS16','p11'),('WSS160','p11'),('WSS162','p11'),('WSS166','p11'),('WSS17','p11'),('WSS171','p11'),('WSS175','p11'),('WSS177','p11'),('WSS179','p11'),('WSS186','p11'),('WSS188','p11'),('WSS19','p11'),('WSS194','p11'),('WSS197','p11'),('WSS198','p11'),('WSS200','p11'),('WSS21','p11'),('WSS26','p11'),('WSS50','p11'),('WSS57','p11'),('WSS62','p11'),('WSS71','p11'),('WSS73','p11'),('WSS77','p11'),('WSS8','p11'),('WSS84','p11'),('WSS90','p11'),('WSS91','p11'),('WSS105','p12'),('WSS109','p12'),('WSS11','p12'),('WSS115','p12'),('WSS117','p12'),('WSS124','p12'),('WSS13','p12'),('WSS130','p12'),('WSS133','p12'),('WSS136','p12'),('WSS138','p12'),('WSS141','p12'),('WSS152','p12'),('WSS153','p12'),('WSS156','p12'),('WSS162','p12'),('WSS164','p12'),('WSS165','p12'),('WSS166','p12'),('WSS17','p12'),('WSS171','p12'),('WSS176','p12'),('WSS18','p12'),('WSS183','p12'),('WSS185','p12'),('WSS196','p12'),('WSS22','p12'),('WSS30','p12'),('WSS44','p12'),('WSS49','p12'),('WSS59','p12'),('WSS64','p12'),('WSS66','p12'),('WSS73','p12'),('WSS82','p12'),('WSS88','p12'),('WSS91','p12'),('WSS102','p13'),('WSS107','p13'),('WSS112','p13'),('WSS119','p13'),('WSS12','p13'),('WSS121','p13'),('WSS124','p13'),('WSS126','p13'),('WSS128','p13'),('WSS13','p13'),('WSS130','p13'),('WSS131','p13'),('WSS133','p13'),('WSS138','p13'),('WSS139','p13'),('WSS140','p13'),('WSS142','p13'),('WSS145','p13'),('WSS150','p13'),('WSS158','p13'),('WSS164','p13'),('WSS174','p13'),('WSS178','p13'),('WSS179','p13'),('WSS18','p13'),('WSS185','p13'),('WSS189','p13'),('WSS195','p13'),('WSS199','p13'),('WSS23','p13'),('WSS27','p13'),('WSS28','p13'),('WSS29','p13'),('WSS31','p13'),('WSS35','p13'),('WSS36','p13'),('WSS4','p13'),('WSS40','p13'),('WSS46','p13'),('WSS48','p13'),('WSS5','p13'),('WSS55','p13'),('WSS57','p13'),('WSS59','p13'),('WSS63','p13'),('WSS64','p13'),('WSS68','p13'),('WSS71','p13'),('WSS72','p13'),('WSS75','p13'),('WSS8','p13'),('WSS83','p13'),('WSS84','p13'),('WSS85','p13'),('WSS9','p13'),('WSS90','p13'),('WSS92','p13'),('WSS93','p13'),('WSS96','p13'),('WSS97','p13'),('WSS99','p13'),('WSS1','p14'),('WSS101','p14'),('WSS103','p14'),('WSS105','p14'),('WSS106','p14'),('WSS109','p14'),('WSS119','p14'),('WSS122','p14'),('WSS123','p14'),('WSS125','p14'),('WSS126','p14'),('WSS132','p14'),('WSS136','p14'),('WSS137','p14'),('WSS139','p14'),('WSS140','p14'),('WSS146','p14'),('WSS148','p14'),('WSS152','p14'),('WSS159','p14'),('WSS162','p14'),('WSS164','p14'),('WSS169','p14'),('WSS170','p14'),('WSS175','p14'),('WSS176','p14'),('WSS180','p14'),('WSS183','p14'),('WSS188','p14'),('WSS192','p14'),('WSS193','p14'),('WSS196','p14'),('WSS20','p14'),('WSS21','p14'),('WSS22','p14'),('WSS28','p14'),('WSS37','p14'),('WSS41','p14'),('WSS42','p14'),('WSS46','p14'),('WSS48','p14'),('WSS55','p14'),('WSS58','p14'),('WSS6','p14'),('WSS60','p14'),('WSS62','p14'),('WSS64','p14'),('WSS65','p14'),('WSS80','p14'),('WSS82','p14'),('WSS86','p14'),('WSS9','p14'),('WSS93','p14'),('WSS98','p14'),('WSS101','p15'),('WSS105','p15'),('WSS106','p15'),('WSS111','p15'),('WSS116','p15'),('WSS121','p15'),('WSS127','p15'),('WSS129','p15'),('WSS13','p15'),('WSS132','p15'),('WSS136','p15'),('WSS154','p15'),('WSS160','p15'),('WSS161','p15'),('WSS167','p15'),('WSS169','p15'),('WSS171','p15'),('WSS181','p15'),('WSS19','p15'),('WSS190','p15'),('WSS197','p15'),('WSS200','p15'),('WSS25','p15'),('WSS3','p15'),('WSS31','p15'),('WSS34','p15'),('WSS38','p15'),('WSS45','p15'),('WSS48','p15'),('WSS49','p15'),('WSS50','p15'),('WSS51','p15'),('WSS57','p15'),('WSS63','p15'),('WSS7','p15'),('WSS71','p15'),('WSS73','p15'),('WSS76','p15'),('WSS78','p15'),('WSS8','p15'),('WSS80','p15'),('WSS82','p15'),('WSS84','p15'),('WSS86','p15'),('WSS9','p15'),('WSS92','p15'),('WSS1','p16'),('WSS104','p16'),('WSS112','p16'),('WSS12','p16'),('WSS128','p16'),('WSS134','p16'),('WSS137','p16'),('WSS142','p16'),('WSS152','p16'),('WSS168','p16'),('WSS17','p16'),('WSS172','p16'),('WSS173','p16'),('WSS174','p16'),('WSS176','p16'),('WSS179','p16'),('WSS181','p16'),('WSS183','p16'),('WSS189','p16'),('WSS191','p16'),('WSS196','p16'),('WSS198','p16'),('WSS25','p16'),('WSS34','p16'),('WSS42','p16'),('WSS43','p16'),('WSS47','p16'),('WSS57','p16'),('WSS6','p16'),('WSS62','p16'),('WSS69','p16'),('WSS75','p16'),('WSS76','p16'),('WSS84','p16'),('WSS9','p16'),('WSS98','p16'),('WSS100','p17'),('WSS105','p17'),('WSS108','p17'),('WSS109','p17'),('WSS113','p17'),('WSS115','p17'),('WSS119','p17'),('WSS123','p17'),('WSS125','p17'),('WSS130','p17'),('WSS134','p17'),('WSS143','p17'),('WSS145','p17'),('WSS151','p17'),('WSS167','p17'),('WSS186','p17'),('WSS187','p17'),('WSS189','p17'),('WSS190','p17'),('WSS196','p17'),('WSS197','p17'),('WSS2','p17'),('WSS20','p17'),('WSS200','p17'),('WSS3','p17'),('WSS31','p17'),('WSS40','p17'),('WSS41','p17'),('WSS49','p17'),('WSS50','p17'),('WSS57','p17'),('WSS66','p17'),('WSS67','p17'),('WSS68','p17'),('WSS83','p17'),('WSS87','p17'),('WSS88','p17'),('WSS9','p17'),('WSS90','p17'),('WSS100','p18'),('WSS107','p18'),('WSS108','p18'),('WSS110','p18'),('WSS111','p18'),('WSS117','p18'),('WSS122','p18'),('WSS127','p18'),('WSS129','p18'),('WSS131','p18'),('WSS132','p18'),('WSS135','p18'),('WSS144','p18'),('WSS146','p18'),('WSS147','p18'),('WSS149','p18'),('WSS15','p18'),('WSS153','p18'),('WSS155','p18'),('WSS157','p18'),('WSS158','p18'),('WSS161','p18'),('WSS166','p18'),('WSS168','p18'),('WSS170','p18'),('WSS179','p18'),('WSS186','p18'),('WSS22','p18'),('WSS23','p18'),('WSS24','p18'),('WSS28','p18'),('WSS29','p18'),('WSS33','p18'),('WSS34','p18'),('WSS41','p18'),('WSS44','p18'),('WSS50','p18'),('WSS61','p18'),('WSS62','p18'),('WSS65','p18'),('WSS66','p18'),('WSS68','p18'),('WSS73','p18'),('WSS74','p18'),('WSS77','p18'),('WSS79','p18'),('WSS80','p18'),('WSS9','p18'),('WSS95','p18'),('WSS10','p19'),('WSS107','p19'),('WSS108','p19'),('WSS113','p19'),('WSS126','p19'),('WSS13','p19'),('WSS139','p19'),('WSS148','p19'),('WSS151','p19'),('WSS152','p19'),('WSS156','p19'),('WSS161','p19'),('WSS167','p19'),('WSS169','p19'),('WSS174','p19'),('WSS180','p19'),('WSS185','p19'),('WSS192','p19'),('WSS193','p19'),('WSS20','p19'),('WSS25','p19'),('WSS26','p19'),('WSS27','p19'),('WSS3','p19'),('WSS30','p19'),('WSS35','p19'),('WSS37','p19'),('WSS38','p19'),('WSS39','p19'),('WSS4','p19'),('WSS41','p19'),('WSS53','p19'),('WSS54','p19'),('WSS56','p19'),('WSS58','p19'),('WSS59','p19'),('WSS64','p19'),('WSS68','p19'),('WSS72','p19'),('WSS73','p19'),('WSS75','p19'),('WSS76','p19'),('WSS77','p19'),('WSS85','p19'),('WSS88','p19'),('WSS89','p19'),('WSS96','p19'),('WSS98','p19'),('WSS1','p2'),('WSS106','p2'),('WSS116','p2'),('WSS123','p2'),('WSS125','p2'),('WSS128','p2'),('WSS130','p2'),('WSS136','p2'),('WSS138','p2'),('WSS14','p2'),('WSS15','p2'),('WSS151','p2'),('WSS158','p2'),('WSS164','p2'),('WSS165','p2'),('WSS169','p2'),('WSS17','p2'),('WSS175','p2'),('WSS18','p2'),('WSS181','p2'),('WSS188','p2'),('WSS189','p2'),('WSS20','p2'),('WSS21','p2'),('WSS24','p2'),('WSS28','p2'),('WSS3','p2'),('WSS32','p2'),('WSS39','p2'),('WSS4','p2'),('WSS40','p2'),('WSS43','p2'),('WSS44','p2'),('WSS45','p2'),('WSS48','p2'),('WSS51','p2'),('WSS52','p2'),('WSS58','p2'),('WSS59','p2'),('WSS6','p2'),('WSS62','p2'),('WSS68','p2'),('WSS72','p2'),('WSS74','p2'),('WSS77','p2'),('WSS86','p2'),('WSS95','p2'),('WSS97','p2'),('WSS98','p2'),('WSS99','p2'),('WSS101','p20'),('WSS103','p20'),('WSS105','p20'),('WSS111','p20'),('WSS114','p20'),('WSS118','p20'),('WSS121','p20'),('WSS123','p20'),('WSS127','p20'),('WSS129','p20'),('WSS131','p20'),('WSS134','p20'),('WSS138','p20'),('WSS14','p20'),('WSS141','p20'),('WSS142','p20'),('WSS145','p20'),('WSS146','p20'),('WSS149','p20'),('WSS15','p20'),('WSS154','p20'),('WSS155','p20'),('WSS161','p20'),('WSS163','p20'),('WSS17','p20'),('WSS171','p20'),('WSS175','p20'),('WSS176','p20'),('WSS179','p20'),('WSS186','p20'),('WSS187','p20'),('WSS19','p20'),('WSS190','p20'),('WSS192','p20'),('WSS193','p20'),('WSS194','p20'),('WSS198','p20'),('WSS23','p20'),('WSS26','p20'),('WSS36','p20'),('WSS42','p20'),('WSS48','p20'),('WSS50','p20'),('WSS54','p20'),('WSS57','p20'),('WSS6','p20'),('WSS63','p20'),('WSS77','p20'),('WSS80','p20'),('WSS86','p20'),('WSS87','p20'),('WSS89','p20'),('WSS93','p20'),('WSS94','p20'),('WSS96','p20'),('WSS98','p20'),('WSS10','p21'),('WSS109','p21'),('WSS120','p21'),('WSS124','p21'),('WSS125','p21'),('WSS127','p21'),('WSS128','p21'),('WSS13','p21'),('WSS132','p21'),('WSS133','p21'),('WSS138','p21'),('WSS140','p21'),('WSS142','p21'),('WSS145','p21'),('WSS158','p21'),('WSS178','p21'),('WSS182','p21'),('WSS185','p21'),('WSS187','p21'),('WSS190','p21'),('WSS192','p21'),('WSS195','p21'),('WSS198','p21'),('WSS29','p21'),('WSS32','p21'),('WSS34','p21'),('WSS39','p21'),('WSS4','p21'),('WSS42','p21'),('WSS47','p21'),('WSS56','p21'),('WSS57','p21'),('WSS60','p21'),('WSS65','p21'),('WSS71','p21'),('WSS74','p21'),('WSS78','p21'),('WSS83','p21'),('WSS87','p21'),('WSS88','p21'),('WSS93','p21'),('WSS94','p21'),('WSS95','p21'),('WSS101','p22'),('WSS104','p22'),('WSS11','p22'),('WSS115','p22'),('WSS12','p22'),('WSS131','p22'),('WSS137','p22'),('WSS139','p22'),('WSS14','p22'),('WSS153','p22'),('WSS155','p22'),('WSS156','p22'),('WSS161','p22'),('WSS19','p22'),('WSS192','p22'),('WSS193','p22'),('WSS195','p22'),('WSS24','p22'),('WSS26','p22'),('WSS40','p22'),('WSS45','p22'),('WSS55','p22'),('WSS58','p22'),('WSS6','p22'),('WSS61','p22'),('WSS64','p22'),('WSS65','p22'),('WSS66','p22'),('WSS67','p22'),('WSS71','p22'),('WSS73','p22'),('WSS75','p22'),('WSS76','p22'),('WSS77','p22'),('WSS85','p22'),('WSS88','p22'),('WSS89','p22'),('WSS90','p22'),('WSS92','p22'),('WSS94','p22'),('WSS97','p22'),('WSS98','p22'),('WSS102','p23'),('WSS110','p23'),('WSS111','p23'),('WSS116','p23'),('WSS117','p23'),('WSS124','p23'),('WSS128','p23'),('WSS130','p23'),('WSS134','p23'),('WSS135','p23'),('WSS139','p23'),('WSS140','p23'),('WSS150','p23'),('WSS16','p23'),('WSS166','p23'),('WSS167','p23'),('WSS168','p23'),('WSS17','p23'),('WSS170','p23'),('WSS172','p23'),('WSS194','p23'),('WSS195','p23'),('WSS23','p23'),('WSS28','p23'),('WSS31','p23'),('WSS34','p23'),('WSS36','p23'),('WSS41','p23'),('WSS49','p23'),('WSS5','p23'),('WSS53','p23'),('WSS58','p23'),('WSS60','p23'),('WSS68','p23'),('WSS75','p23'),('WSS78','p23'),('WSS79','p23'),('WSS8','p23'),('WSS82','p23'),('WSS89','p23'),('WSS91','p23'),('WSS99','p23'),('WSS105','p24'),('WSS106','p24'),('WSS114','p24'),('WSS117','p24'),('WSS118','p24'),('WSS121','p24'),('WSS124','p24'),('WSS125','p24'),('WSS134','p24'),('WSS135','p24'),('WSS143','p24'),('WSS149','p24'),('WSS151','p24'),('WSS152','p24'),('WSS158','p24'),('WSS159','p24'),('WSS16','p24'),('WSS170','p24'),('WSS171','p24'),('WSS176','p24'),('WSS177','p24'),('WSS179','p24'),('WSS183','p24'),('WSS187','p24'),('WSS189','p24'),('WSS2','p24'),('WSS20','p24'),('WSS23','p24'),('WSS32','p24'),('WSS33','p24'),('WSS38','p24'),('WSS39','p24'),('WSS40','p24'),('WSS41','p24'),('WSS46','p24'),('WSS48','p24'),('WSS52','p24'),('WSS56','p24'),('WSS60','p24'),('WSS63','p24'),('WSS65','p24'),('WSS66','p24'),('WSS7','p24'),('WSS75','p24'),('WSS76','p24'),('WSS90','p24'),('WSS91','p24'),('WSS97','p24'),('WSS100','p25'),('WSS104','p25'),('WSS109','p25'),('WSS11','p25'),('WSS12','p25'),('WSS122','p25'),('WSS126','p25'),('WSS129','p25'),('WSS135','p25'),('WSS137','p25'),('WSS139','p25'),('WSS142','p25'),('WSS147','p25'),('WSS148','p25'),('WSS153','p25'),('WSS154','p25'),('WSS155','p25'),('WSS156','p25'),('WSS159','p25'),('WSS16','p25'),('WSS168','p25'),('WSS169','p25'),('WSS172','p25'),('WSS173','p25'),('WSS177','p25'),('WSS183','p25'),('WSS185','p25'),('WSS190','p25'),('WSS192','p25'),('WSS194','p25'),('WSS196','p25'),('WSS27','p25'),('WSS38','p25'),('WSS43','p25'),('WSS44','p25'),('WSS52','p25'),('WSS56','p25'),('WSS61','p25'),('WSS8','p25'),('WSS81','p25'),('WSS84','p25'),('WSS85','p25'),('WSS9','p25'),('WSS93','p25'),('WSS10','p26'),('WSS102','p26'),('WSS103','p26'),('WSS110','p26'),('WSS111','p26'),('WSS114','p26'),('WSS115','p26'),('WSS120','p26'),('WSS124','p26'),('WSS127','p26'),('WSS135','p26'),('WSS141','p26'),('WSS148','p26'),('WSS151','p26'),('WSS153','p26'),('WSS156','p26'),('WSS157','p26'),('WSS160','p26'),('WSS169','p26'),('WSS171','p26'),('WSS172','p26'),('WSS173','p26'),('WSS178','p26'),('WSS18','p26'),('WSS182','p26'),('WSS188','p26'),('WSS194','p26'),('WSS2','p26'),('WSS20','p26'),('WSS22','p26'),('WSS24','p26'),('WSS28','p26'),('WSS32','p26'),('WSS43','p26'),('WSS46','p26'),('WSS5','p26'),('WSS52','p26'),('WSS56','p26'),('WSS58','p26'),('WSS6','p26'),('WSS61','p26'),('WSS62','p26'),('WSS63','p26'),('WSS65','p26'),('WSS69','p26'),('WSS7','p26'),('WSS71','p26'),('WSS74','p26'),('WSS75','p26'),('WSS78','p26'),('WSS80','p26'),('WSS83','p26'),('WSS84','p26'),('WSS87','p26'),('WSS92','p26'),('WSS94','p26'),('WSS1','p27'),('WSS100','p27'),('WSS101','p27'),('WSS102','p27'),('WSS106','p27'),('WSS109','p27'),('WSS114','p27'),('WSS118','p27'),('WSS119','p27'),('WSS122','p27'),('WSS126','p27'),('WSS129','p27'),('WSS135','p27'),('WSS148','p27'),('WSS149','p27'),('WSS15','p27'),('WSS150','p27'),('WSS155','p27'),('WSS16','p27'),('WSS163','p27'),('WSS169','p27'),('WSS176','p27'),('WSS177','p27'),('WSS18','p27'),('WSS180','p27'),('WSS182','p27'),('WSS188','p27'),('WSS189','p27'),('WSS19','p27'),('WSS193','p27'),('WSS198','p27'),('WSS2','p27'),('WSS25','p27'),('WSS3','p27'),('WSS35','p27'),('WSS36','p27'),('WSS4','p27'),('WSS44','p27'),('WSS47','p27'),('WSS5','p27'),('WSS50','p27'),('WSS54','p27'),('WSS56','p27'),('WSS66','p27'),('WSS67','p27'),('WSS72','p27'),('WSS8','p27'),('WSS88','p27'),('WSS96','p27'),('WSS99','p27'),('WSS1','p28'),('WSS101','p28'),('WSS112','p28'),('WSS116','p28'),('WSS118','p28'),('WSS126','p28'),('WSS13','p28'),('WSS131','p28'),('WSS138','p28'),('WSS144','p28'),('WSS145','p28'),('WSS146','p28'),('WSS150','p28'),('WSS151','p28'),('WSS153','p28'),('WSS160','p28'),('WSS163','p28'),('WSS164','p28'),('WSS165','p28'),('WSS17','p28'),('WSS170','p28'),('WSS173','p28'),('WSS176','p28'),('WSS178','p28'),('WSS180','p28'),('WSS184','p28'),('WSS187','p28'),('WSS191','p28'),('WSS2','p28'),('WSS200','p28'),('WSS27','p28'),('WSS30','p28'),('WSS31','p28'),('WSS35','p28'),('WSS40','p28'),('WSS46','p28'),('WSS47','p28'),('WSS49','p28'),('WSS5','p28'),('WSS52','p28'),('WSS53','p28'),('WSS59','p28'),('WSS61','p28'),('WSS62','p28'),('WSS7','p28'),('WSS70','p28'),('WSS72','p28'),('WSS81','p28'),('WSS86','p28'),('WSS90','p28'),('WSS92','p28'),('WSS95','p28'),('WSS11','p29'),('WSS110','p29'),('WSS111','p29'),('WSS115','p29'),('WSS120','p29'),('WSS121','p29'),('WSS124','p29'),('WSS125','p29'),('WSS141','p29'),('WSS144','p29'),('WSS145','p29'),('WSS149','p29'),('WSS150','p29'),('WSS154','p29'),('WSS157','p29'),('WSS162','p29'),('WSS165','p29'),('WSS17','p29'),('WSS174','p29'),('WSS178','p29'),('WSS181','p29'),('WSS184','p29'),('WSS185','p29'),('WSS199','p29'),('WSS200','p29'),('WSS24','p29'),('WSS27','p29'),('WSS31','p29'),('WSS33','p29'),('WSS36','p29'),('WSS39','p29'),('WSS47','p29'),('WSS48','p29'),('WSS63','p29'),('WSS65','p29'),('WSS69','p29'),('WSS72','p29'),('WSS76','p29'),('WSS77','p29'),('WSS79','p29'),('WSS8','p29'),('WSS81','p29'),('WSS82','p29'),('WSS87','p29'),('WSS89','p29'),('WSS90','p29'),('WSS91','p29'),('WSS95','p29'),('WSS100','p3'),('WSS102','p3'),('WSS103','p3'),('WSS105','p3'),('WSS107','p3'),('WSS11','p3'),('WSS110','p3'),('WSS112','p3'),('WSS113','p3'),('WSS114','p3'),('WSS122','p3'),('WSS126','p3'),('WSS130','p3'),('WSS131','p3'),('WSS132','p3'),('WSS150','p3'),('WSS155','p3'),('WSS156','p3'),('WSS158','p3'),('WSS164','p3'),('WSS167','p3'),('WSS172','p3'),('WSS174','p3'),('WSS177','p3'),('WSS178','p3'),('WSS181','p3'),('WSS184','p3'),('WSS187','p3'),('WSS193','p3'),('WSS194','p3'),('WSS24','p3'),('WSS27','p3'),('WSS28','p3'),('WSS29','p3'),('WSS3','p3'),('WSS30','p3'),('WSS32','p3'),('WSS34','p3'),('WSS35','p3'),('WSS36','p3'),('WSS37','p3'),('WSS39','p3'),('WSS4','p3'),('WSS44','p3'),('WSS5','p3'),('WSS55','p3'),('WSS59','p3'),('WSS6','p3'),('WSS67','p3'),('WSS74','p3'),('WSS84','p3'),('WSS85','p3'),('WSS87','p3'),('WSS89','p3'),('WSS95','p3'),('WSS98','p3'),('WSS10','p30'),('WSS100','p30'),('WSS103','p30'),('WSS104','p30'),('WSS110','p30'),('WSS12','p30'),('WSS120','p30'),('WSS121','p30'),('WSS122','p30'),('WSS126','p30'),('WSS136','p30'),('WSS143','p30'),('WSS144','p30'),('WSS15','p30'),('WSS150','p30'),('WSS154','p30'),('WSS156','p30'),('WSS158','p30'),('WSS160','p30'),('WSS161','p30'),('WSS165','p30'),('WSS167','p30'),('WSS168','p30'),('WSS171','p30'),('WSS172','p30'),('WSS174','p30'),('WSS175','p30'),('WSS177','p30'),('WSS179','p30'),('WSS18','p30'),('WSS182','p30'),('WSS184','p30'),('WSS186','p30'),('WSS191','p30'),('WSS195','p30'),('WSS27','p30'),('WSS34','p30'),('WSS42','p30'),('WSS43','p30'),('WSS44','p30'),('WSS45','p30'),('WSS51','p30'),('WSS54','p30'),('WSS55','p30'),('WSS60','p30'),('WSS63','p30'),('WSS66','p30'),('WSS67','p30'),('WSS68','p30'),('WSS69','p30'),('WSS70','p30'),('WSS74','p30'),('WSS76','p30'),('WSS79','p30'),('WSS81','p30'),('WSS83','p30'),('WSS84','p30'),('WSS92','p30'),('WSS94','p30'),('WSS97','p30'),('WSS99','p30'),('WSS106','p4'),('WSS107','p4'),('WSS108','p4'),('WSS118','p4'),('WSS120','p4'),('WSS125','p4'),('WSS129','p4'),('WSS137','p4'),('WSS149','p4'),('WSS152','p4'),('WSS163','p4'),('WSS166','p4'),('WSS167','p4'),('WSS173','p4'),('WSS175','p4'),('WSS176','p4'),('WSS178','p4'),('WSS183','p4'),('WSS188','p4'),('WSS193','p4'),('WSS196','p4'),('WSS198','p4'),('WSS199','p4'),('WSS2','p4'),('WSS22','p4'),('WSS25','p4'),('WSS3','p4'),('WSS30','p4'),('WSS33','p4'),('WSS35','p4'),('WSS36','p4'),('WSS38','p4'),('WSS41','p4'),('WSS55','p4'),('WSS58','p4'),('WSS69','p4'),('WSS7','p4'),('WSS73','p4'),('WSS79','p4'),('WSS85','p4'),('WSS91','p4'),('WSS92','p4'),('WSS93','p4'),('WSS97','p4'),('WSS102','p5'),('WSS103','p5'),('WSS108','p5'),('WSS109','p5'),('WSS11','p5'),('WSS112','p5'),('WSS113','p5'),('WSS119','p5'),('WSS120','p5'),('WSS129','p5'),('WSS134','p5'),('WSS136','p5'),('WSS14','p5'),('WSS142','p5'),('WSS146','p5'),('WSS159','p5'),('WSS16','p5'),('WSS160','p5'),('WSS161','p5'),('WSS162','p5'),('WSS171','p5'),('WSS172','p5'),('WSS184','p5'),('WSS185','p5'),('WSS188','p5'),('WSS190','p5'),('WSS195','p5'),('WSS196','p5'),('WSS197','p5'),('WSS198','p5'),('WSS199','p5'),('WSS20','p5'),('WSS23','p5'),('WSS25','p5'),('WSS29','p5'),('WSS3','p5'),('WSS32','p5'),('WSS37','p5'),('WSS44','p5'),('WSS47','p5'),('WSS52','p5'),('WSS57','p5'),('WSS62','p5'),('WSS64','p5'),('WSS67','p5'),('WSS70','p5'),('WSS71','p5'),('WSS81','p5'),('WSS94','p5'),('WSS95','p5'),('WSS107','p6'),('WSS115','p6'),('WSS120','p6'),('WSS122','p6'),('WSS124','p6'),('WSS131','p6'),('WSS134','p6'),('WSS143','p6'),('WSS146','p6'),('WSS147','p6'),('WSS15','p6'),('WSS163','p6'),('WSS165','p6'),('WSS174','p6'),('WSS18','p6'),('WSS181','p6'),('WSS186','p6'),('WSS187','p6'),('WSS191','p6'),('WSS197','p6'),('WSS199','p6'),('WSS2','p6'),('WSS21','p6'),('WSS23','p6'),('WSS26','p6'),('WSS29','p6'),('WSS37','p6'),('WSS39','p6'),('WSS4','p6'),('WSS45','p6'),('WSS48','p6'),('WSS50','p6'),('WSS52','p6'),('WSS53','p6'),('WSS56','p6'),('WSS58','p6'),('WSS64','p6'),('WSS69','p6'),('WSS78','p6'),('WSS94','p6'),('WSS99','p6'),('WSS100','p7'),('WSS103','p7'),('WSS106','p7'),('WSS108','p7'),('WSS113','p7'),('WSS114','p7'),('WSS119','p7'),('WSS123','p7'),('WSS128','p7'),('WSS13','p7'),('WSS132','p7'),('WSS133','p7'),('WSS138','p7'),('WSS140','p7'),('WSS142','p7'),('WSS143','p7'),('WSS144','p7'),('WSS145','p7'),('WSS146','p7'),('WSS153','p7'),('WSS154','p7'),('WSS157','p7'),('WSS159','p7'),('WSS162','p7'),('WSS166','p7'),('WSS179','p7'),('WSS183','p7'),('WSS191','p7'),('WSS193','p7'),('WSS196','p7'),('WSS199','p7'),('WSS21','p7'),('WSS23','p7'),('WSS29','p7'),('WSS34','p7'),('WSS42','p7'),('WSS49','p7'),('WSS50','p7'),('WSS51','p7'),('WSS53','p7'),('WSS54','p7'),('WSS55','p7'),('WSS60','p7'),('WSS64','p7'),('WSS67','p7'),('WSS71','p7'),('WSS73','p7'),('WSS74','p7'),('WSS77','p7'),('WSS80','p7'),('WSS82','p7'),('WSS108','p8'),('WSS112','p8'),('WSS113','p8'),('WSS114','p8'),('WSS116','p8'),('WSS127','p8'),('WSS128','p8'),('WSS129','p8'),('WSS130','p8'),('WSS143','p8'),('WSS144','p8'),('WSS149','p8'),('WSS151','p8'),('WSS159','p8'),('WSS164','p8'),('WSS167','p8'),('WSS181','p8'),('WSS191','p8'),('WSS194','p8'),('WSS197','p8'),('WSS25','p8'),('WSS28','p8'),('WSS33','p8'),('WSS37','p8'),('WSS4','p8'),('WSS41','p8'),('WSS42','p8'),('WSS45','p8'),('WSS51','p8'),('WSS53','p8'),('WSS6','p8'),('WSS66','p8'),('WSS70','p8'),('WSS72','p8'),('WSS76','p8'),('WSS78','p8'),('WSS83','p8'),('WSS88','p8'),('WSS89','p8'),('WSS91','p8'),('WSS96','p8'),('WSS97','p8'),('WSS10','p9'),('WSS102','p9'),('WSS106','p9'),('WSS115','p9'),('WSS117','p9'),('WSS119','p9'),('WSS122','p9'),('WSS128','p9'),('WSS14','p9'),('WSS140','p9'),('WSS141','p9'),('WSS147','p9'),('WSS154','p9'),('WSS158','p9'),('WSS163','p9'),('WSS170','p9'),('WSS173','p9'),('WSS177','p9'),('WSS188','p9'),('WSS19','p9'),('WSS191','p9'),('WSS199','p9'),('WSS20','p9'),('WSS22','p9'),('WSS30','p9'),('WSS35','p9'),('WSS40','p9'),('WSS43','p9'),('WSS49','p9'),('WSS5','p9'),('WSS52','p9'),('WSS54','p9'),('WSS60','p9'),('WSS61','p9'),('WSS67','p9'),('WSS7','p9'),('WSS70','p9'),('WSS74','p9'),('WSS79','p9'),('WSS8','p9'),('WSS80','p9'),('WSS83','p9'),('WSS85','p9'),('WSS87','p9'),('WSS96','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS174'),(1,2,'WSS82'),(2,1,'WSS175'),(2,2,'WSS169'),(2,3,'WSS83'),(3,1,'WSS54'),(3,2,'WSS150'),(4,1,'WSS34'),(4,2,'WSS29'),(5,1,'WSS148'),(5,1,'WSS191'),(6,1,'WSS170'),(6,2,'WSS73'),(7,1,'WSS108'),(7,2,'WSS49'),(8,1,'WSS177'),(8,2,'WSS199'),(9,1,'WSS170'),(9,1,'WSS70'),(10,1,'WSS16'),(10,2,'WSS37'),(11,1,'WSS121'),(11,2,'WSS3'),(12,1,'WSS63'),(12,1,'WSS93'),(13,1,'WSS89'),(13,2,'WSS19'),(14,1,'WSS177'),(14,2,'WSS27'),(14,3,'WSS167'),(15,1,'WSS40'),(15,2,'WSS9'),(16,1,'WSS118'),(16,2,'WSS98'),(17,1,'WSS102'),(17,1,'WSS12'),(18,1,'WSS41'),(18,2,'WSS181'),(19,1,'WSS151'),(19,2,'WSS26'),(20,1,'WSS17'),(20,2,'WSS96'),(21,1,'WSS100'),(21,1,'WSS174'),(22,1,'WSS106'),(22,2,'WSS63'),(23,1,'WSS174'),(23,2,'WSS82'),(24,1,'WSS176'),(24,2,'WSS101'),(24,2,'WSS99'),(25,1,'WSS83'),(25,2,'WSS61'),(26,1,'WSS22'),(26,2,'WSS106'),(26,2,'WSS95'),(27,1,'WSS83'),(27,2,'WSS183'),(28,1,'WSS187'),(28,2,'WSS19'),(28,3,'WSS198'),(29,1,'WSS191'),(29,2,'WSS19'),(29,3,'WSS197'),(30,1,'WSS17'),(30,2,'WSS89'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-07-05 23:23:15
