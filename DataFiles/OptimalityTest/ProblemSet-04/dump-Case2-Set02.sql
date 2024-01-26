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
INSERT INTO `initialgoalparameter` VALUES (1,'G','p1'),(3,'G','p1'),(4,'G','p1'),(7,'I','p1'),(8,'G','p1'),(10,'G','p1'),(11,'G','p1'),(13,'G','p1'),(15,'G','p1'),(16,'I','p1'),(19,'I','p1'),(20,'G','p1'),(21,'G','p1'),(22,'G','p1'),(23,'I','p1'),(25,'I','p1'),(26,'G','p1'),(28,'G','p1'),(1,'I','p10'),(5,'G','p10'),(6,'G','p10'),(7,'I','p10'),(8,'I','p10'),(9,'G','p10'),(12,'G','p10'),(16,'G','p10'),(18,'I','p10'),(20,'I','p10'),(21,'G','p10'),(22,'I','p10'),(23,'G','p10'),(28,'I','p10'),(30,'G','p10'),(5,'G','p11'),(7,'I','p11'),(10,'G','p11'),(13,'G','p11'),(16,'G','p11'),(18,'G','p11'),(20,'G','p11'),(21,'G','p11'),(24,'I','p11'),(25,'I','p11'),(26,'G','p11'),(1,'G','p12'),(2,'I','p12'),(3,'G','p12'),(8,'G','p12'),(9,'I','p12'),(11,'I','p12'),(12,'I','p12'),(14,'I','p12'),(15,'I','p12'),(17,'G','p12'),(18,'G','p12'),(19,'G','p12'),(20,'I','p12'),(24,'I','p12'),(29,'G','p12'),(30,'G','p12'),(1,'G','p13'),(2,'G','p13'),(4,'G','p13'),(7,'G','p13'),(8,'G','p13'),(9,'I','p13'),(11,'G','p13'),(17,'I','p13'),(18,'G','p13'),(19,'G','p13'),(23,'I','p13'),(24,'G','p13'),(26,'G','p13'),(3,'G','p14'),(4,'G','p14'),(5,'I','p14'),(6,'G','p14'),(7,'G','p14'),(9,'G','p14'),(10,'I','p14'),(11,'I','p14'),(12,'G','p14'),(13,'G','p14'),(14,'G','p14'),(15,'G','p14'),(18,'G','p14'),(20,'I','p14'),(21,'G','p14'),(23,'I','p14'),(24,'I','p14'),(26,'I','p14'),(27,'G','p14'),(29,'G','p14'),(30,'G','p14'),(5,'I','p15'),(6,'I','p15'),(9,'I','p15'),(14,'G','p15'),(15,'G','p15'),(16,'G','p15'),(17,'G','p15'),(19,'I','p15'),(21,'I','p15'),(22,'G','p15'),(24,'G','p15'),(27,'I','p15'),(29,'I','p15'),(30,'G','p15'),(1,'G','p16'),(2,'I','p16'),(3,'I','p16'),(4,'G','p16'),(5,'G','p16'),(6,'G','p16'),(8,'G','p16'),(11,'I','p16'),(13,'I','p16'),(14,'I','p16'),(16,'G','p16'),(17,'I','p16'),(25,'I','p16'),(30,'I','p16'),(1,'I','p17'),(5,'I','p17'),(6,'G','p17'),(11,'G','p17'),(13,'G','p17'),(15,'G','p17'),(16,'G','p17'),(20,'G','p17'),(21,'I','p17'),(22,'G','p17'),(23,'G','p17'),(25,'G','p17'),(26,'I','p17'),(28,'G','p17'),(2,'G','p18'),(3,'G','p18'),(6,'I','p18'),(8,'I','p18'),(9,'I','p18'),(10,'I','p18'),(12,'I','p18'),(13,'G','p18'),(16,'I','p18'),(19,'G','p18'),(22,'G','p18'),(23,'G','p18'),(24,'G','p18'),(27,'I','p18'),(28,'G','p18'),(29,'G','p18'),(3,'G','p19'),(4,'I','p19'),(5,'G','p19'),(10,'G','p19'),(12,'G','p19'),(13,'I','p19'),(14,'G','p19'),(16,'I','p19'),(22,'G','p19'),(25,'I','p19'),(26,'G','p19'),(27,'I','p19'),(28,'I','p19'),(29,'G','p19'),(30,'I','p19'),(1,'G','p2'),(2,'G','p2'),(4,'I','p2'),(5,'G','p2'),(9,'G','p2'),(15,'I','p2'),(16,'G','p2'),(17,'I','p2'),(18,'G','p2'),(19,'G','p2'),(20,'I','p2'),(21,'I','p2'),(26,'G','p2'),(27,'G','p2'),(28,'G','p2'),(29,'G','p2'),(2,'I','p20'),(6,'G','p20'),(10,'G','p20'),(11,'G','p20'),(12,'I','p20'),(14,'G','p20'),(17,'G','p20'),(19,'I','p20'),(21,'I','p20'),(23,'I','p20'),(24,'I','p20'),(26,'G','p20'),(28,'I','p20'),(29,'G','p20'),(30,'G','p20'),(1,'G','p3'),(2,'G','p3'),(3,'I','p3'),(4,'G','p3'),(9,'G','p3'),(11,'I','p3'),(12,'G','p3'),(13,'I','p3'),(14,'G','p3'),(17,'G','p3'),(19,'G','p3'),(20,'G','p3'),(22,'G','p3'),(23,'G','p3'),(25,'G','p3'),(2,'G','p4'),(4,'I','p4'),(7,'G','p4'),(8,'I','p4'),(15,'G','p4'),(17,'I','p4'),(20,'G','p4'),(25,'G','p4'),(27,'G','p4'),(2,'G','p5'),(3,'I','p5'),(4,'G','p5'),(8,'I','p5'),(9,'G','p5'),(10,'G','p5'),(14,'I','p5'),(15,'G','p5'),(23,'G','p5'),(25,'G','p5'),(26,'I','p5'),(29,'I','p5'),(3,'G','p6'),(5,'G','p6'),(6,'G','p6'),(7,'G','p6'),(8,'G','p6'),(9,'G','p6'),(10,'I','p6'),(11,'G','p6'),(13,'G','p6'),(14,'G','p6'),(15,'I','p6'),(17,'G','p6'),(18,'I','p6'),(19,'G','p6'),(22,'I','p6'),(27,'G','p6'),(29,'I','p6'),(30,'G','p6'),(1,'I','p7'),(4,'I','p7'),(5,'I','p7'),(6,'I','p7'),(7,'I','p7'),(8,'G','p7'),(10,'G','p7'),(11,'G','p7'),(12,'I','p7'),(14,'I','p7'),(16,'I','p7'),(18,'G','p7'),(21,'G','p7'),(23,'G','p7'),(24,'G','p7'),(25,'G','p7'),(27,'G','p7'),(28,'G','p7'),(1,'I','p8'),(2,'I','p8'),(7,'G','p8'),(10,'I','p8'),(12,'G','p8'),(13,'I','p8'),(17,'G','p8'),(18,'I','p8'),(20,'G','p8'),(21,'G','p8'),(22,'I','p8'),(24,'G','p8'),(27,'G','p8'),(28,'I','p8'),(30,'I','p8'),(3,'I','p9'),(6,'I','p9'),(7,'G','p9'),(12,'G','p9'),(15,'I','p9'),(18,'I','p9'),(19,'I','p9'),(22,'I','p9'),(24,'G','p9'),(25,'G','p9'),(26,'I','p9'),(27,'I','p9'),(28,'G','p9'),(29,'I','p9'),(30,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS100','p1'),('WSS117','p1'),('WSS122','p1'),('WSS127','p1'),('WSS128','p1'),('WSS129','p1'),('WSS138','p1'),('WSS143','p1'),('WSS171','p1'),('WSS182','p1'),('WSS199','p1'),('WSS205','p1'),('WSS242','p1'),('WSS255','p1'),('WSS257','p1'),('WSS265','p1'),('WSS267','p1'),('WSS296','p1'),('WSS41','p1'),('WSS44','p1'),('WSS6','p1'),('WSS74','p1'),('WSS8','p1'),('WSS89','p1'),('WSS92','p1'),('WSS95','p1'),('WSS1','p10'),('WSS106','p10'),('WSS120','p10'),('WSS124','p10'),('WSS138','p10'),('WSS140','p10'),('WSS142','p10'),('WSS149','p10'),('WSS164','p10'),('WSS165','p10'),('WSS184','p10'),('WSS188','p10'),('WSS209','p10'),('WSS218','p10'),('WSS222','p10'),('WSS225','p10'),('WSS230','p10'),('WSS239','p10'),('WSS24','p10'),('WSS241','p10'),('WSS250','p10'),('WSS252','p10'),('WSS256','p10'),('WSS261','p10'),('WSS269','p10'),('WSS271','p10'),('WSS278','p10'),('WSS280','p10'),('WSS29','p10'),('WSS295','p10'),('WSS34','p10'),('WSS52','p10'),('WSS62','p10'),('WSS90','p10'),('WSS98','p10'),('WSS110','p11'),('WSS136','p11'),('WSS147','p11'),('WSS158','p11'),('WSS166','p11'),('WSS196','p11'),('WSS201','p11'),('WSS212','p11'),('WSS213','p11'),('WSS220','p11'),('WSS221','p11'),('WSS224','p11'),('WSS229','p11'),('WSS231','p11'),('WSS252','p11'),('WSS254','p11'),('WSS260','p11'),('WSS266','p11'),('WSS288','p11'),('WSS36','p11'),('WSS58','p11'),('WSS69','p11'),('WSS109','p12'),('WSS132','p12'),('WSS136','p12'),('WSS14','p12'),('WSS142','p12'),('WSS150','p12'),('WSS155','p12'),('WSS161','p12'),('WSS171','p12'),('WSS189','p12'),('WSS199','p12'),('WSS2','p12'),('WSS214','p12'),('WSS223','p12'),('WSS247','p12'),('WSS263','p12'),('WSS268','p12'),('WSS27','p12'),('WSS277','p12'),('WSS296','p12'),('WSS300','p12'),('WSS40','p12'),('WSS47','p12'),('WSS57','p12'),('WSS76','p12'),('WSS84','p12'),('WSS85','p12'),('WSS87','p12'),('WSS95','p12'),('WSS109','p13'),('WSS111','p13'),('WSS116','p13'),('WSS12','p13'),('WSS121','p13'),('WSS13','p13'),('WSS141','p13'),('WSS159','p13'),('WSS160','p13'),('WSS161','p13'),('WSS168','p13'),('WSS176','p13'),('WSS179','p13'),('WSS18','p13'),('WSS180','p13'),('WSS189','p13'),('WSS20','p13'),('WSS213','p13'),('WSS22','p13'),('WSS227','p13'),('WSS232','p13'),('WSS233','p13'),('WSS238','p13'),('WSS249','p13'),('WSS256','p13'),('WSS26','p13'),('WSS272','p13'),('WSS291','p13'),('WSS42','p13'),('WSS64','p13'),('WSS67','p13'),('WSS73','p13'),('WSS74','p13'),('WSS88','p13'),('WSS96','p13'),('WSS113','p14'),('WSS114','p14'),('WSS125','p14'),('WSS127','p14'),('WSS135','p14'),('WSS178','p14'),('WSS180','p14'),('WSS190','p14'),('WSS192','p14'),('WSS221','p14'),('WSS227','p14'),('WSS23','p14'),('WSS233','p14'),('WSS242','p14'),('WSS243','p14'),('WSS253','p14'),('WSS257','p14'),('WSS273','p14'),('WSS276','p14'),('WSS287','p14'),('WSS289','p14'),('WSS33','p14'),('WSS54','p14'),('WSS79','p14'),('WSS86','p14'),('WSS87','p14'),('WSS102','p15'),('WSS107','p15'),('WSS120','p15'),('WSS137','p15'),('WSS144','p15'),('WSS148','p15'),('WSS15','p15'),('WSS150','p15'),('WSS186','p15'),('WSS195','p15'),('WSS204','p15'),('WSS210','p15'),('WSS224','p15'),('WSS23','p15'),('WSS235','p15'),('WSS244','p15'),('WSS266','p15'),('WSS271','p15'),('WSS275','p15'),('WSS289','p15'),('WSS290','p15'),('WSS300','p15'),('WSS32','p15'),('WSS35','p15'),('WSS39','p15'),('WSS46','p15'),('WSS53','p15'),('WSS60','p15'),('WSS66','p15'),('WSS69','p15'),('WSS77','p15'),('WSS79','p15'),('WSS89','p15'),('WSS103','p16'),('WSS114','p16'),('WSS121','p16'),('WSS140','p16'),('WSS148','p16'),('WSS15','p16'),('WSS157','p16'),('WSS184','p16'),('WSS191','p16'),('WSS200','p16'),('WSS206','p16'),('WSS212','p16'),('WSS24','p16'),('WSS249','p16'),('WSS250','p16'),('WSS251','p16'),('WSS269','p16'),('WSS270','p16'),('WSS278','p16'),('WSS45','p16'),('WSS59','p16'),('WSS65','p16'),('WSS99','p16'),('WSS106','p17'),('WSS112','p17'),('WSS123','p17'),('WSS126','p17'),('WSS129','p17'),('WSS151','p17'),('WSS154','p17'),('WSS156','p17'),('WSS162','p17'),('WSS164','p17'),('WSS167','p17'),('WSS176','p17'),('WSS18','p17'),('WSS182','p17'),('WSS19','p17'),('WSS204','p17'),('WSS210','p17'),('WSS229','p17'),('WSS241','p17'),('WSS274','p17'),('WSS3','p17'),('WSS32','p17'),('WSS40','p17'),('WSS6','p17'),('WSS71','p17'),('WSS81','p17'),('WSS82','p17'),('WSS94','p17'),('WSS96','p17'),('WSS1','p18'),('WSS105','p18'),('WSS107','p18'),('WSS125','p18'),('WSS131','p18'),('WSS163','p18'),('WSS173','p18'),('WSS190','p18'),('WSS202','p18'),('WSS203','p18'),('WSS207','p18'),('WSS208','p18'),('WSS237','p18'),('WSS246','p18'),('WSS251','p18'),('WSS262','p18'),('WSS263','p18'),('WSS27','p18'),('WSS279','p18'),('WSS286','p18'),('WSS292','p18'),('WSS37','p18'),('WSS42','p18'),('WSS47','p18'),('WSS51','p18'),('WSS55','p18'),('WSS64','p18'),('WSS80','p18'),('WSS10','p19'),('WSS104','p19'),('WSS111','p19'),('WSS131','p19'),('WSS133','p19'),('WSS137','p19'),('WSS139','p19'),('WSS144','p19'),('WSS146','p19'),('WSS154','p19'),('WSS172','p19'),('WSS183','p19'),('WSS188','p19'),('WSS193','p19'),('WSS198','p19'),('WSS205','p19'),('WSS209','p19'),('WSS214','p19'),('WSS217','p19'),('WSS234','p19'),('WSS245','p19'),('WSS248','p19'),('WSS264','p19'),('WSS265','p19'),('WSS275','p19'),('WSS290','p19'),('WSS293','p19'),('WSS31','p19'),('WSS37','p19'),('WSS4','p19'),('WSS54','p19'),('WSS60','p19'),('WSS62','p19'),('WSS75','p19'),('WSS77','p19'),('WSS82','p19'),('WSS99','p19'),('WSS100','p2'),('WSS12','p2'),('WSS123','p2'),('WSS124','p2'),('WSS134','p2'),('WSS147','p2'),('WSS149','p2'),('WSS153','p2'),('WSS158','p2'),('WSS170','p2'),('WSS175','p2'),('WSS178','p2'),('WSS196','p2'),('WSS20','p2'),('WSS211','p2'),('WSS222','p2'),('WSS226','p2'),('WSS230','p2'),('WSS240','p2'),('WSS255','p2'),('WSS267','p2'),('WSS272','p2'),('WSS276','p2'),('WSS29','p2'),('WSS297','p2'),('WSS39','p2'),('WSS55','p2'),('WSS61','p2'),('WSS63','p2'),('WSS66','p2'),('WSS68','p2'),('WSS83','p2'),('WSS104','p20'),('WSS108','p20'),('WSS11','p20'),('WSS110','p20'),('WSS113','p20'),('WSS118','p20'),('WSS135','p20'),('WSS14','p20'),('WSS151','p20'),('WSS152','p20'),('WSS157','p20'),('WSS159','p20'),('WSS170','p20'),('WSS177','p20'),('WSS19','p20'),('WSS194','p20'),('WSS206','p20'),('WSS21','p20'),('WSS215','p20'),('WSS216','p20'),('WSS228','p20'),('WSS236','p20'),('WSS244','p20'),('WSS259','p20'),('WSS273','p20'),('WSS283','p20'),('WSS299','p20'),('WSS38','p20'),('WSS43','p20'),('WSS44','p20'),('WSS56','p20'),('WSS93','p20'),('WSS98','p20'),('WSS117','p3'),('WSS122','p3'),('WSS130','p3'),('WSS132','p3'),('WSS169','p3'),('WSS172','p3'),('WSS187','p3'),('WSS197','p3'),('WSS207','p3'),('WSS220','p3'),('WSS228','p3'),('WSS231','p3'),('WSS232','p3'),('WSS235','p3'),('WSS253','p3'),('WSS259','p3'),('WSS28','p3'),('WSS280','p3'),('WSS281','p3'),('WSS284','p3'),('WSS294','p3'),('WSS34','p3'),('WSS43','p3'),('WSS48','p3'),('WSS5','p3'),('WSS57','p3'),('WSS101','p4'),('WSS116','p4'),('WSS126','p4'),('WSS133','p4'),('WSS16','p4'),('WSS17','p4'),('WSS185','p4'),('WSS186','p4'),('WSS187','p4'),('WSS191','p4'),('WSS192','p4'),('WSS195','p4'),('WSS200','p4'),('WSS239','p4'),('WSS25','p4'),('WSS274','p4'),('WSS279','p4'),('WSS28','p4'),('WSS283','p4'),('WSS284','p4'),('WSS286','p4'),('WSS291','p4'),('WSS50','p4'),('WSS68','p4'),('WSS7','p4'),('WSS73','p4'),('WSS76','p4'),('WSS80','p4'),('WSS84','p4'),('WSS91','p4'),('WSS94','p4'),('WSS112','p5'),('WSS118','p5'),('WSS13','p5'),('WSS141','p5'),('WSS143','p5'),('WSS152','p5'),('WSS169','p5'),('WSS173','p5'),('WSS219','p5'),('WSS243','p5'),('WSS264','p5'),('WSS270','p5'),('WSS292','p5'),('WSS294','p5'),('WSS298','p5'),('WSS31','p5'),('WSS46','p5'),('WSS48','p5'),('WSS53','p5'),('WSS67','p5'),('WSS72','p5'),('WSS9','p5'),('WSS128','p6'),('WSS145','p6'),('WSS153','p6'),('WSS156','p6'),('WSS163','p6'),('WSS177','p6'),('WSS179','p6'),('WSS197','p6'),('WSS211','p6'),('WSS215','p6'),('WSS217','p6'),('WSS234','p6'),('WSS237','p6'),('WSS248','p6'),('WSS260','p6'),('WSS285','p6'),('WSS4','p6'),('WSS56','p6'),('WSS59','p6'),('WSS81','p6'),('WSS83','p6'),('WSS88','p6'),('WSS97','p6'),('WSS102','p7'),('WSS103','p7'),('WSS108','p7'),('WSS130','p7'),('WSS134','p7'),('WSS146','p7'),('WSS155','p7'),('WSS17','p7'),('WSS181','p7'),('WSS183','p7'),('WSS193','p7'),('WSS202','p7'),('WSS208','p7'),('WSS21','p7'),('WSS216','p7'),('WSS226','p7'),('WSS236','p7'),('WSS246','p7'),('WSS247','p7'),('WSS254','p7'),('WSS258','p7'),('WSS262','p7'),('WSS287','p7'),('WSS288','p7'),('WSS298','p7'),('WSS299','p7'),('WSS3','p7'),('WSS45','p7'),('WSS49','p7'),('WSS51','p7'),('WSS63','p7'),('WSS70','p7'),('WSS71','p7'),('WSS72','p7'),('WSS78','p7'),('WSS85','p7'),('WSS86','p7'),('WSS10','p8'),('WSS101','p8'),('WSS105','p8'),('WSS115','p8'),('WSS139','p8'),('WSS145','p8'),('WSS16','p8'),('WSS160','p8'),('WSS167','p8'),('WSS174','p8'),('WSS201','p8'),('WSS218','p8'),('WSS219','p8'),('WSS223','p8'),('WSS258','p8'),('WSS261','p8'),('WSS277','p8'),('WSS281','p8'),('WSS282','p8'),('WSS285','p8'),('WSS293','p8'),('WSS295','p8'),('WSS30','p8'),('WSS38','p8'),('WSS5','p8'),('WSS50','p8'),('WSS52','p8'),('WSS58','p8'),('WSS61','p8'),('WSS65','p8'),('WSS70','p8'),('WSS75','p8'),('WSS78','p8'),('WSS8','p8'),('WSS93','p8'),('WSS97','p8'),('WSS11','p9'),('WSS115','p9'),('WSS119','p9'),('WSS162','p9'),('WSS165','p9'),('WSS166','p9'),('WSS168','p9'),('WSS174','p9'),('WSS181','p9'),('WSS185','p9'),('WSS194','p9'),('WSS203','p9'),('WSS225','p9'),('WSS238','p9'),('WSS240','p9'),('WSS245','p9'),('WSS25','p9'),('WSS26','p9'),('WSS297','p9'),('WSS33','p9'),('WSS36','p9'),('WSS49','p9'),('WSS7','p9'),('WSS9','p9'),('WSS90','p9'),('WSS92','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS106','p1'),('WSS110','p1'),('WSS112','p1'),('WSS115','p1'),('WSS117','p1'),('WSS12','p1'),('WSS126','p1'),('WSS132','p1'),('WSS137','p1'),('WSS14','p1'),('WSS140','p1'),('WSS142','p1'),('WSS143','p1'),('WSS144','p1'),('WSS145','p1'),('WSS15','p1'),('WSS157','p1'),('WSS159','p1'),('WSS160','p1'),('WSS167','p1'),('WSS184','p1'),('WSS198','p1'),('WSS202','p1'),('WSS203','p1'),('WSS204','p1'),('WSS216','p1'),('WSS223','p1'),('WSS225','p1'),('WSS229','p1'),('WSS235','p1'),('WSS237','p1'),('WSS242','p1'),('WSS250','p1'),('WSS254','p1'),('WSS255','p1'),('WSS26','p1'),('WSS260','p1'),('WSS264','p1'),('WSS269','p1'),('WSS270','p1'),('WSS274','p1'),('WSS278','p1'),('WSS287','p1'),('WSS291','p1'),('WSS30','p1'),('WSS4','p1'),('WSS40','p1'),('WSS45','p1'),('WSS50','p1'),('WSS68','p1'),('WSS77','p1'),('WSS79','p1'),('WSS80','p1'),('WSS92','p1'),('WSS94','p1'),('WSS100','p10'),('WSS105','p10'),('WSS110','p10'),('WSS113','p10'),('WSS116','p10'),('WSS13','p10'),('WSS136','p10'),('WSS141','p10'),('WSS142','p10'),('WSS148','p10'),('WSS151','p10'),('WSS152','p10'),('WSS156','p10'),('WSS159','p10'),('WSS164','p10'),('WSS167','p10'),('WSS169','p10'),('WSS170','p10'),('WSS172','p10'),('WSS175','p10'),('WSS180','p10'),('WSS182','p10'),('WSS187','p10'),('WSS19','p10'),('WSS199','p10'),('WSS2','p10'),('WSS201','p10'),('WSS214','p10'),('WSS217','p10'),('WSS224','p10'),('WSS23','p10'),('WSS230','p10'),('WSS243','p10'),('WSS244','p10'),('WSS247','p10'),('WSS25','p10'),('WSS254','p10'),('WSS258','p10'),('WSS26','p10'),('WSS272','p10'),('WSS28','p10'),('WSS288','p10'),('WSS293','p10'),('WSS294','p10'),('WSS33','p10'),('WSS36','p10'),('WSS44','p10'),('WSS46','p10'),('WSS51','p10'),('WSS54','p10'),('WSS57','p10'),('WSS60','p10'),('WSS79','p10'),('WSS82','p10'),('WSS83','p10'),('WSS84','p10'),('WSS87','p10'),('WSS89','p10'),('WSS90','p10'),('WSS91','p10'),('WSS95','p10'),('WSS99','p10'),('WSS103','p11'),('WSS104','p11'),('WSS106','p11'),('WSS108','p11'),('WSS111','p11'),('WSS112','p11'),('WSS113','p11'),('WSS119','p11'),('WSS121','p11'),('WSS125','p11'),('WSS133','p11'),('WSS146','p11'),('WSS148','p11'),('WSS168','p11'),('WSS17','p11'),('WSS172','p11'),('WSS177','p11'),('WSS183','p11'),('WSS190','p11'),('WSS20','p11'),('WSS201','p11'),('WSS204','p11'),('WSS205','p11'),('WSS209','p11'),('WSS212','p11'),('WSS218','p11'),('WSS219','p11'),('WSS221','p11'),('WSS224','p11'),('WSS228','p11'),('WSS23','p11'),('WSS232','p11'),('WSS234','p11'),('WSS237','p11'),('WSS244','p11'),('WSS247','p11'),('WSS248','p11'),('WSS250','p11'),('WSS251','p11'),('WSS256','p11'),('WSS258','p11'),('WSS261','p11'),('WSS262','p11'),('WSS267','p11'),('WSS27','p11'),('WSS270','p11'),('WSS276','p11'),('WSS285','p11'),('WSS286','p11'),('WSS288','p11'),('WSS289','p11'),('WSS29','p11'),('WSS3','p11'),('WSS37','p11'),('WSS39','p11'),('WSS43','p11'),('WSS49','p11'),('WSS63','p11'),('WSS67','p11'),('WSS7','p11'),('WSS71','p11'),('WSS72','p11'),('WSS74','p11'),('WSS76','p11'),('WSS87','p11'),('WSS9','p11'),('WSS101','p12'),('WSS106','p12'),('WSS119','p12'),('WSS12','p12'),('WSS123','p12'),('WSS134','p12'),('WSS136','p12'),('WSS144','p12'),('WSS147','p12'),('WSS15','p12'),('WSS153','p12'),('WSS157','p12'),('WSS160','p12'),('WSS165','p12'),('WSS166','p12'),('WSS167','p12'),('WSS176','p12'),('WSS18','p12'),('WSS180','p12'),('WSS187','p12'),('WSS20','p12'),('WSS200','p12'),('WSS219','p12'),('WSS228','p12'),('WSS231','p12'),('WSS235','p12'),('WSS237','p12'),('WSS238','p12'),('WSS239','p12'),('WSS24','p12'),('WSS249','p12'),('WSS257','p12'),('WSS261','p12'),('WSS263','p12'),('WSS266','p12'),('WSS277','p12'),('WSS281','p12'),('WSS282','p12'),('WSS294','p12'),('WSS35','p12'),('WSS49','p12'),('WSS50','p12'),('WSS59','p12'),('WSS6','p12'),('WSS60','p12'),('WSS64','p12'),('WSS65','p12'),('WSS68','p12'),('WSS75','p12'),('WSS9','p12'),('WSS12','p13'),('WSS121','p13'),('WSS130','p13'),('WSS131','p13'),('WSS132','p13'),('WSS14','p13'),('WSS141','p13'),('WSS151','p13'),('WSS161','p13'),('WSS171','p13'),('WSS173','p13'),('WSS177','p13'),('WSS184','p13'),('WSS188','p13'),('WSS192','p13'),('WSS195','p13'),('WSS199','p13'),('WSS202','p13'),('WSS207','p13'),('WSS21','p13'),('WSS211','p13'),('WSS217','p13'),('WSS218','p13'),('WSS221','p13'),('WSS224','p13'),('WSS232','p13'),('WSS233','p13'),('WSS234','p13'),('WSS236','p13'),('WSS240','p13'),('WSS249','p13'),('WSS252','p13'),('WSS255','p13'),('WSS257','p13'),('WSS264','p13'),('WSS268','p13'),('WSS269','p13'),('WSS279','p13'),('WSS286','p13'),('WSS290','p13'),('WSS291','p13'),('WSS30','p13'),('WSS38','p13'),('WSS48','p13'),('WSS55','p13'),('WSS63','p13'),('WSS64','p13'),('WSS79','p13'),('WSS84','p13'),('WSS91','p13'),('WSS93','p13'),('WSS1','p14'),('WSS101','p14'),('WSS102','p14'),('WSS107','p14'),('WSS124','p14'),('WSS128','p14'),('WSS13','p14'),('WSS132','p14'),('WSS139','p14'),('WSS142','p14'),('WSS144','p14'),('WSS151','p14'),('WSS152','p14'),('WSS155','p14'),('WSS159','p14'),('WSS16','p14'),('WSS162','p14'),('WSS164','p14'),('WSS165','p14'),('WSS176','p14'),('WSS18','p14'),('WSS180','p14'),('WSS184','p14'),('WSS189','p14'),('WSS197','p14'),('WSS2','p14'),('WSS202','p14'),('WSS206','p14'),('WSS208','p14'),('WSS211','p14'),('WSS219','p14'),('WSS22','p14'),('WSS222','p14'),('WSS226','p14'),('WSS227','p14'),('WSS230','p14'),('WSS233','p14'),('WSS238','p14'),('WSS24','p14'),('WSS244','p14'),('WSS262','p14'),('WSS27','p14'),('WSS273','p14'),('WSS278','p14'),('WSS29','p14'),('WSS294','p14'),('WSS295','p14'),('WSS297','p14'),('WSS3','p14'),('WSS30','p14'),('WSS32','p14'),('WSS35','p14'),('WSS37','p14'),('WSS39','p14'),('WSS4','p14'),('WSS41','p14'),('WSS45','p14'),('WSS46','p14'),('WSS50','p14'),('WSS55','p14'),('WSS57','p14'),('WSS63','p14'),('WSS68','p14'),('WSS70','p14'),('WSS74','p14'),('WSS83','p14'),('WSS85','p14'),('WSS86','p14'),('WSS87','p14'),('WSS94','p14'),('WSS96','p14'),('WSS100','p15'),('WSS11','p15'),('WSS122','p15'),('WSS125','p15'),('WSS126','p15'),('WSS133','p15'),('WSS135','p15'),('WSS143','p15'),('WSS152','p15'),('WSS158','p15'),('WSS162','p15'),('WSS166','p15'),('WSS183','p15'),('WSS185','p15'),('WSS2','p15'),('WSS203','p15'),('WSS207','p15'),('WSS210','p15'),('WSS221','p15'),('WSS240','p15'),('WSS245','p15'),('WSS256','p15'),('WSS263','p15'),('WSS269','p15'),('WSS271','p15'),('WSS277','p15'),('WSS28','p15'),('WSS299','p15'),('WSS300','p15'),('WSS33','p15'),('WSS38','p15'),('WSS39','p15'),('WSS46','p15'),('WSS52','p15'),('WSS58','p15'),('WSS59','p15'),('WSS6','p15'),('WSS75','p15'),('WSS76','p15'),('WSS8','p15'),('WSS90','p15'),('WSS95','p15'),('WSS96','p15'),('WSS102','p16'),('WSS110','p16'),('WSS111','p16'),('WSS12','p16'),('WSS126','p16'),('WSS129','p16'),('WSS130','p16'),('WSS131','p16'),('WSS149','p16'),('WSS176','p16'),('WSS188','p16'),('WSS191','p16'),('WSS200','p16'),('WSS205','p16'),('WSS206','p16'),('WSS209','p16'),('WSS219','p16'),('WSS225','p16'),('WSS23','p16'),('WSS245','p16'),('WSS247','p16'),('WSS250','p16'),('WSS251','p16'),('WSS253','p16'),('WSS255','p16'),('WSS259','p16'),('WSS261','p16'),('WSS265','p16'),('WSS267','p16'),('WSS269','p16'),('WSS270','p16'),('WSS273','p16'),('WSS274','p16'),('WSS28','p16'),('WSS295','p16'),('WSS43','p16'),('WSS46','p16'),('WSS53','p16'),('WSS60','p16'),('WSS61','p16'),('WSS62','p16'),('WSS66','p16'),('WSS7','p16'),('WSS71','p16'),('WSS74','p16'),('WSS88','p16'),('WSS9','p16'),('WSS93','p16'),('WSS96','p16'),('WSS1','p17'),('WSS101','p17'),('WSS107','p17'),('WSS114','p17'),('WSS117','p17'),('WSS123','p17'),('WSS129','p17'),('WSS139','p17'),('WSS143','p17'),('WSS149','p17'),('WSS15','p17'),('WSS150','p17'),('WSS154','p17'),('WSS166','p17'),('WSS169','p17'),('WSS175','p17'),('WSS183','p17'),('WSS184','p17'),('WSS195','p17'),('WSS196','p17'),('WSS197','p17'),('WSS200','p17'),('WSS210','p17'),('WSS214','p17'),('WSS226','p17'),('WSS229','p17'),('WSS231','p17'),('WSS233','p17'),('WSS238','p17'),('WSS249','p17'),('WSS251','p17'),('WSS255','p17'),('WSS262','p17'),('WSS264','p17'),('WSS272','p17'),('WSS277','p17'),('WSS280','p17'),('WSS281','p17'),('WSS289','p17'),('WSS293','p17'),('WSS298','p17'),('WSS32','p17'),('WSS4','p17'),('WSS41','p17'),('WSS43','p17'),('WSS55','p17'),('WSS56','p17'),('WSS61','p17'),('WSS72','p17'),('WSS73','p17'),('WSS76','p17'),('WSS77','p17'),('WSS81','p17'),('WSS84','p17'),('WSS89','p17'),('WSS95','p17'),('WSS97','p17'),('WSS10','p18'),('WSS100','p18'),('WSS103','p18'),('WSS105','p18'),('WSS11','p18'),('WSS115','p18'),('WSS116','p18'),('WSS119','p18'),('WSS120','p18'),('WSS135','p18'),('WSS145','p18'),('WSS148','p18'),('WSS15','p18'),('WSS154','p18'),('WSS158','p18'),('WSS168','p18'),('WSS173','p18'),('WSS175','p18'),('WSS181','p18'),('WSS19','p18'),('WSS192','p18'),('WSS196','p18'),('WSS197','p18'),('WSS2','p18'),('WSS206','p18'),('WSS207','p18'),('WSS208','p18'),('WSS214','p18'),('WSS215','p18'),('WSS218','p18'),('WSS22','p18'),('WSS220','p18'),('WSS222','p18'),('WSS236','p18'),('WSS238','p18'),('WSS241','p18'),('WSS254','p18'),('WSS259','p18'),('WSS267','p18'),('WSS271','p18'),('WSS273','p18'),('WSS274','p18'),('WSS276','p18'),('WSS280','p18'),('WSS283','p18'),('WSS291','p18'),('WSS296','p18'),('WSS300','p18'),('WSS33','p18'),('WSS42','p18'),('WSS45','p18'),('WSS47','p18'),('WSS48','p18'),('WSS51','p18'),('WSS52','p18'),('WSS62','p18'),('WSS65','p18'),('WSS86','p18'),('WSS88','p18'),('WSS97','p18'),('WSS99','p18'),('WSS10','p19'),('WSS105','p19'),('WSS106','p19'),('WSS107','p19'),('WSS109','p19'),('WSS117','p19'),('WSS121','p19'),('WSS122','p19'),('WSS125','p19'),('WSS127','p19'),('WSS133','p19'),('WSS152','p19'),('WSS155','p19'),('WSS168','p19'),('WSS17','p19'),('WSS170','p19'),('WSS173','p19'),('WSS182','p19'),('WSS186','p19'),('WSS188','p19'),('WSS192','p19'),('WSS195','p19'),('WSS21','p19'),('WSS215','p19'),('WSS217','p19'),('WSS22','p19'),('WSS223','p19'),('WSS232','p19'),('WSS248','p19'),('WSS251','p19'),('WSS258','p19'),('WSS259','p19'),('WSS260','p19'),('WSS266','p19'),('WSS279','p19'),('WSS280','p19'),('WSS281','p19'),('WSS286','p19'),('WSS290','p19'),('WSS299','p19'),('WSS34','p19'),('WSS35','p19'),('WSS36','p19'),('WSS40','p19'),('WSS49','p19'),('WSS53','p19'),('WSS54','p19'),('WSS56','p19'),('WSS59','p19'),('WSS66','p19'),('WSS67','p19'),('WSS70','p19'),('WSS72','p19'),('WSS81','p19'),('WSS89','p19'),('WSS92','p19'),('WSS95','p19'),('WSS108','p2'),('WSS111','p2'),('WSS114','p2'),('WSS119','p2'),('WSS120','p2'),('WSS126','p2'),('WSS13','p2'),('WSS136','p2'),('WSS140','p2'),('WSS141','p2'),('WSS142','p2'),('WSS145','p2'),('WSS155','p2'),('WSS169','p2'),('WSS18','p2'),('WSS187','p2'),('WSS194','p2'),('WSS196','p2'),('WSS198','p2'),('WSS20','p2'),('WSS201','p2'),('WSS205','p2'),('WSS208','p2'),('WSS21','p2'),('WSS210','p2'),('WSS213','p2'),('WSS215','p2'),('WSS220','p2'),('WSS223','p2'),('WSS230','p2'),('WSS246','p2'),('WSS253','p2'),('WSS270','p2'),('WSS282','p2'),('WSS290','p2'),('WSS297','p2'),('WSS3','p2'),('WSS31','p2'),('WSS38','p2'),('WSS47','p2'),('WSS51','p2'),('WSS61','p2'),('WSS67','p2'),('WSS69','p2'),('WSS7','p2'),('WSS88','p2'),('WSS102','p20'),('WSS117','p20'),('WSS118','p20'),('WSS122','p20'),('WSS128','p20'),('WSS139','p20'),('WSS148','p20'),('WSS149','p20'),('WSS154','p20'),('WSS157','p20'),('WSS161','p20'),('WSS163','p20'),('WSS165','p20'),('WSS174','p20'),('WSS178','p20'),('WSS191','p20'),('WSS213','p20'),('WSS218','p20'),('WSS222','p20'),('WSS227','p20'),('WSS239','p20'),('WSS243','p20'),('WSS257','p20'),('WSS266','p20'),('WSS268','p20'),('WSS27','p20'),('WSS271','p20'),('WSS275','p20'),('WSS276','p20'),('WSS280','p20'),('WSS281','p20'),('WSS283','p20'),('WSS284','p20'),('WSS287','p20'),('WSS292','p20'),('WSS296','p20'),('WSS32','p20'),('WSS44','p20'),('WSS45','p20'),('WSS5','p20'),('WSS54','p20'),('WSS56','p20'),('WSS67','p20'),('WSS68','p20'),('WSS69','p20'),('WSS77','p20'),('WSS79','p20'),('WSS88','p20'),('WSS90','p20'),('WSS92','p20'),('WSS94','p20'),('WSS10','p3'),('WSS104','p3'),('WSS108','p3'),('WSS109','p3'),('WSS11','p3'),('WSS110','p3'),('WSS112','p3'),('WSS116','p3'),('WSS120','p3'),('WSS123','p3'),('WSS124','p3'),('WSS127','p3'),('WSS128','p3'),('WSS13','p3'),('WSS136','p3'),('WSS137','p3'),('WSS138','p3'),('WSS140','p3'),('WSS147','p3'),('WSS150','p3'),('WSS153','p3'),('WSS171','p3'),('WSS173','p3'),('WSS185','p3'),('WSS189','p3'),('WSS190','p3'),('WSS197','p3'),('WSS22','p3'),('WSS220','p3'),('WSS222','p3'),('WSS223','p3'),('WSS224','p3'),('WSS228','p3'),('WSS232','p3'),('WSS237','p3'),('WSS243','p3'),('WSS246','p3'),('WSS25','p3'),('WSS252','p3'),('WSS267','p3'),('WSS268','p3'),('WSS284','p3'),('WSS295','p3'),('WSS32','p3'),('WSS34','p3'),('WSS35','p3'),('WSS41','p3'),('WSS73','p3'),('WSS81','p3'),('WSS82','p3'),('WSS90','p3'),('WSS94','p3'),('WSS96','p3'),('WSS99','p3'),('WSS108','p4'),('WSS114','p4'),('WSS131','p4'),('WSS139','p4'),('WSS14','p4'),('WSS140','p4'),('WSS141','p4'),('WSS143','p4'),('WSS144','p4'),('WSS146','p4'),('WSS149','p4'),('WSS170','p4'),('WSS171','p4'),('WSS174','p4'),('WSS179','p4'),('WSS182','p4'),('WSS186','p4'),('WSS19','p4'),('WSS191','p4'),('WSS198','p4'),('WSS201','p4'),('WSS204','p4'),('WSS227','p4'),('WSS247','p4'),('WSS282','p4'),('WSS290','p4'),('WSS3','p4'),('WSS300','p4'),('WSS31','p4'),('WSS42','p4'),('WSS47','p4'),('WSS5','p4'),('WSS52','p4'),('WSS61','p4'),('WSS70','p4'),('WSS71','p4'),('WSS73','p4'),('WSS75','p4'),('WSS8','p4'),('WSS80','p4'),('WSS86','p4'),('WSS87','p4'),('WSS93','p4'),('WSS97','p4'),('WSS98','p4'),('WSS10','p5'),('WSS103','p5'),('WSS109','p5'),('WSS11','p5'),('WSS118','p5'),('WSS121','p5'),('WSS122','p5'),('WSS123','p5'),('WSS129','p5'),('WSS131','p5'),('WSS134','p5'),('WSS14','p5'),('WSS151','p5'),('WSS156','p5'),('WSS160','p5'),('WSS161','p5'),('WSS163','p5'),('WSS172','p5'),('WSS186','p5'),('WSS190','p5'),('WSS193','p5'),('WSS194','p5'),('WSS198','p5'),('WSS202','p5'),('WSS204','p5'),('WSS205','p5'),('WSS209','p5'),('WSS211','p5'),('WSS214','p5'),('WSS216','p5'),('WSS221','p5'),('WSS226','p5'),('WSS228','p5'),('WSS23','p5'),('WSS231','p5'),('WSS234','p5'),('WSS235','p5'),('WSS242','p5'),('WSS246','p5'),('WSS248','p5'),('WSS249','p5'),('WSS253','p5'),('WSS264','p5'),('WSS265','p5'),('WSS272','p5'),('WSS278','p5'),('WSS279','p5'),('WSS282','p5'),('WSS284','p5'),('WSS286','p5'),('WSS292','p5'),('WSS295','p5'),('WSS297','p5'),('WSS298','p5'),('WSS299','p5'),('WSS31','p5'),('WSS39','p5'),('WSS4','p5'),('WSS53','p5'),('WSS6','p5'),('WSS71','p5'),('WSS78','p5'),('WSS8','p5'),('WSS82','p5'),('WSS92','p5'),('WSS1','p6'),('WSS104','p6'),('WSS115','p6'),('WSS120','p6'),('WSS127','p6'),('WSS138','p6'),('WSS146','p6'),('WSS150','p6'),('WSS156','p6'),('WSS159','p6'),('WSS16','p6'),('WSS162','p6'),('WSS164','p6'),('WSS174','p6'),('WSS175','p6'),('WSS178','p6'),('WSS179','p6'),('WSS181','p6'),('WSS191','p6'),('WSS193','p6'),('WSS194','p6'),('WSS20','p6'),('WSS206','p6'),('WSS21','p6'),('WSS211','p6'),('WSS213','p6'),('WSS229','p6'),('WSS230','p6'),('WSS236','p6'),('WSS239','p6'),('WSS24','p6'),('WSS240','p6'),('WSS241','p6'),('WSS244','p6'),('WSS246','p6'),('WSS252','p6'),('WSS254','p6'),('WSS262','p6'),('WSS263','p6'),('WSS275','p6'),('WSS285','p6'),('WSS287','p6'),('WSS288','p6'),('WSS293','p6'),('WSS30','p6'),('WSS42','p6'),('WSS44','p6'),('WSS47','p6'),('WSS55','p6'),('WSS58','p6'),('WSS63','p6'),('WSS74','p6'),('WSS77','p6'),('WSS78','p6'),('WSS83','p6'),('WSS85','p6'),('WSS91','p6'),('WSS97','p6'),('WSS100','p7'),('WSS113','p7'),('WSS116','p7'),('WSS124','p7'),('WSS132','p7'),('WSS133','p7'),('WSS135','p7'),('WSS138','p7'),('WSS145','p7'),('WSS153','p7'),('WSS154','p7'),('WSS16','p7'),('WSS163','p7'),('WSS164','p7'),('WSS169','p7'),('WSS171','p7'),('WSS177','p7'),('WSS179','p7'),('WSS185','p7'),('WSS188','p7'),('WSS208','p7'),('WSS210','p7'),('WSS212','p7'),('WSS216','p7'),('WSS225','p7'),('WSS242','p7'),('WSS245','p7'),('WSS250','p7'),('WSS26','p7'),('WSS263','p7'),('WSS27','p7'),('WSS271','p7'),('WSS275','p7'),('WSS276','p7'),('WSS292','p7'),('WSS298','p7'),('WSS31','p7'),('WSS34','p7'),('WSS36','p7'),('WSS37','p7'),('WSS40','p7'),('WSS44','p7'),('WSS48','p7'),('WSS5','p7'),('WSS58','p7'),('WSS59','p7'),('WSS66','p7'),('WSS69','p7'),('WSS72','p7'),('WSS78','p7'),('WSS86','p7'),('WSS98','p7'),('WSS101','p8'),('WSS102','p8'),('WSS107','p8'),('WSS109','p8'),('WSS113','p8'),('WSS114','p8'),('WSS115','p8'),('WSS128','p8'),('WSS138','p8'),('WSS153','p8'),('WSS162','p8'),('WSS165','p8'),('WSS166','p8'),('WSS17','p8'),('WSS178','p8'),('WSS179','p8'),('WSS18','p8'),('WSS180','p8'),('WSS185','p8'),('WSS186','p8'),('WSS190','p8'),('WSS193','p8'),('WSS195','p8'),('WSS199','p8'),('WSS203','p8'),('WSS212','p8'),('WSS213','p8'),('WSS225','p8'),('WSS229','p8'),('WSS239','p8'),('WSS24','p8'),('WSS243','p8'),('WSS253','p8'),('WSS256','p8'),('WSS260','p8'),('WSS261','p8'),('WSS265','p8'),('WSS266','p8'),('WSS268','p8'),('WSS28','p8'),('WSS283','p8'),('WSS285','p8'),('WSS289','p8'),('WSS29','p8'),('WSS291','p8'),('WSS33','p8'),('WSS34','p8'),('WSS48','p8'),('WSS54','p8'),('WSS57','p8'),('WSS65','p8'),('WSS66','p8'),('WSS73','p8'),('WSS78','p8'),('WSS8','p8'),('WSS80','p8'),('WSS83','p8'),('WSS84','p8'),('WSS98','p8'),('WSS104','p9'),('WSS105','p9'),('WSS124','p9'),('WSS130','p9'),('WSS134','p9'),('WSS137','p9'),('WSS158','p9'),('WSS172','p9'),('WSS177','p9'),('WSS178','p9'),('WSS181','p9'),('WSS187','p9'),('WSS189','p9'),('WSS19','p9'),('WSS193','p9'),('WSS194','p9'),('WSS199','p9'),('WSS227','p9'),('WSS233','p9'),('WSS235','p9'),('WSS240','p9'),('WSS241','p9'),('WSS25','p9'),('WSS256','p9'),('WSS258','p9'),('WSS260','p9'),('WSS265','p9'),('WSS274','p9'),('WSS283','p9'),('WSS292','p9'),('WSS293','p9'),('WSS294','p9'),('WSS296','p9'),('WSS299','p9'),('WSS300','p9'),('WSS36','p9'),('WSS40','p9'),('WSS41','p9'),('WSS42','p9'),('WSS50','p9'),('WSS51','p9'),('WSS53','p9'),('WSS58','p9'),('WSS62','p9'),('WSS64','p9'),('WSS65','p9'),('WSS69','p9'),('WSS70','p9'),('WSS76','p9'),('WSS81','p9'),('WSS85','p9'),('WSS99','p9');
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
INSERT INTO `parameterlist` VALUES ('p1','p1name'),('p10','p10name'),('p11','p11name'),('p12','p12name'),('p13','p13name'),('p14','p14name'),('p15','p15name'),('p16','p16name'),('p17','p17name'),('p18','p18name'),('p19','p19name'),('p2','p2name'),('p20','p20name'),('p3','p3name'),('p4','p4name'),('p5','p5name'),('p6','p6name'),('p7','p7name'),('p8','p8name'),('p9','p9name');
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
INSERT INTO `result` VALUES (1,1,'WSS35'),(1,2,'WSS24'),(1,3,'WSS223'),(1,4,'WSS44'),(2,1,'WSS30'),(2,2,'WSS29'),(2,3,'WSS271'),(2,4,'WSS293'),(3,1,'WSS289'),(3,1,'WSS84'),(3,2,'WSS232'),(3,3,'WSS21'),(4,1,'WSS223'),(4,2,'WSS44'),(4,3,'WSS184'),(4,4,'WSS237'),(5,1,'WSS77'),(5,2,'WSS172'),(5,3,'WSS138'),(5,4,'WSS293'),(6,1,'WSS254'),(6,2,'WSS280'),(6,2,'WSS40'),(6,3,'WSS239'),(7,1,'WSS295'),(7,2,'WSS237'),(7,3,'WSS246'),(7,3,'WSS35'),(8,1,'WSS47'),(8,2,'WSS18'),(8,2,'WSS184'),(8,2,'WSS33'),(9,1,'WSS167'),(9,2,'WSS199'),(9,3,'WSS163'),(9,3,'WSS165'),(10,1,'WSS210'),(10,1,'WSS248'),(10,2,'WSS247'),(10,2,'WSS32'),(11,1,'WSS22'),(11,1,'WSS270'),(11,2,'WSS12'),(11,2,'WSS292'),(12,1,'WSS237'),(12,1,'WSS282'),(12,2,'WSS20'),(12,3,'WSS242'),(13,1,'WSS266'),(13,1,'WSS41'),(13,2,'WSS100'),(13,3,'WSS259'),(14,1,'WSS299'),(14,2,'WSS12'),(14,3,'WSS23'),(14,3,'WSS271'),(14,4,'WSS289'),(15,1,'WSS239'),(15,2,'WSS282'),(15,3,'WSS270'),(15,3,'WSS299'),(16,1,'WSS119'),(16,2,'WSS163'),(16,2,'WSS187'),(16,3,'WSS240'),(17,1,'WSS184'),(17,2,'WSS100'),(17,3,'WSS210'),(17,4,'WSS103'),(18,1,'WSS147'),(18,2,'WSS150'),(18,2,'WSS48'),(18,3,'WSS282'),(19,1,'WSS154'),(19,2,'WSS46'),(19,3,'WSS102'),(19,3,'WSS181'),(20,1,'WSS119'),(20,1,'WSS281'),(20,2,'WSS260'),(20,3,'WSS239'),(21,1,'WSS137'),(21,1,'WSS192'),(21,2,'WSS29'),(21,3,'WSS16'),(22,1,'WSS280'),(22,2,'WSS296'),(22,3,'WSS24'),(22,3,'WSS44'),(23,1,'WSS187'),(23,2,'WSS214'),(23,3,'WSS25'),(23,4,'WSS106'),(24,1,'WSS181'),(24,1,'WSS211'),(24,2,'WSS286'),(24,3,'WSS199'),(25,1,'WSS168'),(25,2,'WSS205'),(25,3,'WSS268'),(25,4,'WSS140'),(26,1,'WSS5'),(26,2,'WSS296'),(26,2,'WSS46'),(26,3,'WSS243'),(27,1,'WSS274'),(27,2,'WSS22'),(27,3,'WSS12'),(27,4,'WSS271'),(27,4,'WSS290'),(28,1,'WSS237'),(28,2,'WSS264'),(28,2,'WSS278'),(28,3,'WSS296'),(29,1,'WSS147'),(29,2,'WSS163'),(29,2,'WSS48'),(29,3,'WSS27'),(30,1,'WSS212'),(30,2,'WSS214'),(30,3,'WSS112'),(30,4,'WSS21'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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
INSERT INTO `webservicelist` VALUES ('WSS1','WSS1Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS10','WSS10Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS100','WSS100Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS101','WSS101Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS102','WSS102Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS103','WSS103Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS104','WSS104Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS105','WSS105Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS106','WSS106Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS107','WSS107Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS108','WSS108Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS109','WSS109Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS11','WSS11Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS110','WSS110Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS111','WSS111Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS112','WSS112Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS113','WSS113Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS114','WSS114Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS115','WSS115Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS116','WSS116Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS117','WSS117Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS118','WSS118Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS119','WSS119Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS12','WSS12Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS120','WSS120Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS121','WSS121Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS122','WSS122Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS123','WSS123Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS124','WSS124Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS125','WSS125Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS126','WSS126Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS127','WSS127Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS128','WSS128Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS129','WSS129Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS13','WSS13Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS130','WSS130Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS131','WSS131Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS132','WSS132Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS133','WSS133Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS134','WSS134Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS135','WSS135Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS136','WSS136Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS137','WSS137Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS138','WSS138Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS139','WSS139Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS14','WSS14Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS140','WSS140Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS141','WSS141Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS142','WSS142Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS143','WSS143Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS144','WSS144Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS145','WSS145Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS146','WSS146Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS147','WSS147Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS148','WSS148Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS149','WSS149Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS15','WSS15Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS150','WSS150Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS151','WSS151Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS152','WSS152Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS153','WSS153Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS154','WSS154Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS155','WSS155Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS156','WSS156Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS157','WSS157Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS158','WSS158Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS159','WSS159Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS16','WSS16Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS160','WSS160Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS161','WSS161Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS162','WSS162Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS163','WSS163Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS164','WSS164Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS165','WSS165Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS166','WSS166Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS167','WSS167Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS168','WSS168Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS169','WSS169Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS17','WSS17Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS170','WSS170Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS171','WSS171Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS172','WSS172Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS173','WSS173Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS174','WSS174Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS175','WSS175Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS176','WSS176Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS177','WSS177Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS178','WSS178Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS179','WSS179Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS18','WSS18Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS180','WSS180Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS181','WSS181Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS182','WSS182Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS183','WSS183Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS184','WSS184Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS185','WSS185Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS186','WSS186Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS187','WSS187Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS188','WSS188Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS189','WSS189Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS19','WSS19Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS190','WSS190Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS191','WSS191Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS192','WSS192Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS193','WSS193Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS194','WSS194Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS195','WSS195Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS196','WSS196Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS197','WSS197Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS198','WSS198Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS199','WSS199Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS2','WSS2Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS20','WSS20Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS200','WSS200Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS201','WSS201Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS202','WSS202Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS203','WSS203Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS204','WSS204Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS205','WSS205Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS206','WSS206Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS207','WSS207Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS208','WSS208Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS209','WSS209Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS21','WSS21Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS210','WSS210Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS211','WSS211Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS212','WSS212Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS213','WSS213Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS214','WSS214Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS215','WSS215Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS216','WSS216Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS217','WSS217Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS218','WSS218Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS219','WSS219Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS22','WSS22Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS220','WSS220Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS221','WSS221Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS222','WSS222Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS223','WSS223Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS224','WSS224Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS225','WSS225Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS226','WSS226Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS227','WSS227Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS228','WSS228Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS229','WSS229Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS23','WSS23Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS230','WSS230Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS231','WSS231Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS232','WSS232Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS233','WSS233Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS234','WSS234Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS235','WSS235Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS236','WSS236Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS237','WSS237Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS238','WSS238Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS239','WSS239Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS24','WSS24Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS240','WSS240Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS241','WSS241Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS242','WSS242Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS243','WSS243Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS244','WSS244Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS245','WSS245Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS246','WSS246Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS247','WSS247Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS248','WSS248Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS249','WSS249Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS25','WSS25Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS250','WSS250Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS251','WSS251Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS252','WSS252Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS253','WSS253Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS254','WSS254Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS255','WSS255Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS256','WSS256Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS257','WSS257Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS258','WSS258Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS259','WSS259Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS26','WSS26Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS260','WSS260Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS261','WSS261Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS262','WSS262Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS263','WSS263Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS264','WSS264Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS265','WSS265Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS266','WSS266Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS267','WSS267Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS268','WSS268Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS269','WSS269Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS27','WSS27Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS270','WSS270Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS271','WSS271Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS272','WSS272Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS273','WSS273Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS274','WSS274Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS275','WSS275Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS276','WSS276Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS277','WSS277Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS278','WSS278Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS279','WSS279Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS28','WSS28Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS280','WSS280Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS281','WSS281Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS282','WSS282Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS283','WSS283Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS284','WSS284Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS285','WSS285Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS286','WSS286Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS287','WSS287Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS288','WSS288Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS289','WSS289Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS29','WSS29Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS290','WSS290Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS291','WSS291Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS292','WSS292Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS293','WSS293Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS294','WSS294Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS295','WSS295Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS296','WSS296Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS297','WSS297Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS298','WSS298Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS299','WSS299Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS3','WSS3Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS30','WSS30Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS300','WSS300Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS31','WSS31Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS32','WSS32Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS33','WSS33Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS34','WSS34Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS35','WSS35Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS36','WSS36Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS37','WSS37Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS38','WSS38Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS39','WSS39Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS4','WSS4Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS40','WSS40Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS41','WSS41Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS42','WSS42Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS43','WSS43Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS44','WSS44Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS45','WSS45Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS46','WSS46Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS47','WSS47Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS48','WSS48Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS49','WSS49Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS5','WSS5Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS50','WSS50Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS51','WSS51Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS52','WSS52Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS53','WSS53Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS54','WSS54Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS55','WSS55Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS56','WSS56Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS57','WSS57Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS58','WSS58Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS59','WSS59Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS6','WSS6Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS60','WSS60Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS61','WSS61Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS62','WSS62Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS63','WSS63Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS64','WSS64Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS65','WSS65Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS66','WSS66Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS67','WSS67Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS68','WSS68Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS69','WSS69Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS7','WSS7Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS70','WSS70Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS71','WSS71Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS72','WSS72Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS73','WSS73Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS74','WSS74Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS75','WSS75Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS76','WSS76Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS77','WSS77Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS78','WSS78Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS79','WSS79Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS8','WSS8Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS80','WSS80Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS81','WSS81Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS82','WSS82Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS83','WSS83Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS84','WSS84Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS85','WSS85Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS86','WSS86Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS87','WSS87Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS88','WSS88Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS89','WSS89Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS9','WSS9Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS90','WSS90Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS91','WSS91Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS92','WSS92Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS93','WSS93Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS94','WSS94Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS95','WSS95Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS96','WSS96Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS97','WSS97Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS98','WSS98Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS99','WSS99Name',3,1,3,'serviceprovider','https://serviceprovider.com');
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

-- Dump completed on 2023-07-06  2:11:30
