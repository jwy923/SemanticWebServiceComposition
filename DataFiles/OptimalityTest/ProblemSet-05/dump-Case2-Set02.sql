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
INSERT INTO `initialgoalparameter` VALUES (2,'G','p1'),(3,'I','p1'),(4,'I','p1'),(6,'I','p1'),(7,'G','p1'),(8,'I','p1'),(9,'I','p1'),(10,'G','p1'),(11,'G','p1'),(13,'G','p1'),(14,'I','p1'),(15,'G','p1'),(16,'I','p1'),(21,'G','p1'),(23,'G','p1'),(24,'G','p1'),(26,'I','p1'),(27,'I','p1'),(29,'G','p1'),(1,'I','p10'),(4,'G','p10'),(5,'G','p10'),(9,'G','p10'),(10,'I','p10'),(11,'G','p10'),(14,'G','p10'),(16,'I','p10'),(17,'G','p10'),(18,'G','p10'),(19,'I','p10'),(24,'I','p10'),(28,'G','p10'),(30,'G','p10'),(2,'G','p11'),(6,'G','p11'),(7,'I','p11'),(8,'G','p11'),(11,'G','p11'),(12,'I','p11'),(13,'I','p11'),(14,'G','p11'),(19,'G','p11'),(20,'G','p11'),(21,'I','p11'),(23,'I','p11'),(24,'I','p11'),(26,'G','p11'),(30,'I','p11'),(1,'G','p12'),(2,'I','p12'),(3,'G','p12'),(4,'G','p12'),(5,'G','p12'),(6,'I','p12'),(8,'G','p12'),(9,'I','p12'),(10,'I','p12'),(12,'G','p12'),(15,'G','p12'),(18,'G','p12'),(20,'G','p12'),(22,'I','p12'),(23,'I','p12'),(26,'G','p12'),(27,'I','p12'),(28,'I','p12'),(29,'I','p12'),(30,'I','p12'),(1,'G','p13'),(2,'I','p13'),(3,'I','p13'),(8,'G','p13'),(10,'G','p13'),(11,'I','p13'),(12,'G','p13'),(13,'G','p13'),(16,'G','p13'),(18,'I','p13'),(22,'G','p13'),(6,'G','p14'),(7,'G','p14'),(8,'I','p14'),(9,'I','p14'),(11,'G','p14'),(12,'I','p14'),(13,'G','p14'),(17,'G','p14'),(19,'I','p14'),(21,'I','p14'),(22,'I','p14'),(25,'G','p14'),(26,'I','p14'),(27,'G','p14'),(28,'I','p14'),(29,'I','p14'),(3,'I','p15'),(6,'G','p15'),(8,'G','p15'),(10,'G','p15'),(12,'G','p15'),(13,'I','p15'),(15,'I','p15'),(19,'G','p15'),(20,'G','p15'),(21,'G','p15'),(22,'G','p15'),(23,'I','p15'),(24,'I','p15'),(27,'I','p15'),(4,'I','p16'),(5,'G','p16'),(7,'G','p16'),(8,'G','p16'),(9,'G','p16'),(15,'G','p16'),(16,'G','p16'),(18,'G','p16'),(19,'G','p16'),(20,'G','p16'),(23,'G','p16'),(25,'G','p16'),(26,'I','p16'),(27,'G','p16'),(29,'G','p16'),(30,'G','p16'),(1,'I','p17'),(6,'G','p17'),(7,'G','p17'),(9,'G','p17'),(12,'G','p17'),(14,'G','p17'),(17,'G','p17'),(19,'G','p17'),(20,'I','p17'),(24,'G','p17'),(25,'G','p17'),(28,'G','p17'),(29,'I','p17'),(1,'G','p18'),(2,'G','p18'),(5,'G','p18'),(14,'G','p18'),(15,'I','p18'),(17,'I','p18'),(18,'I','p18'),(23,'G','p18'),(25,'I','p18'),(26,'G','p18'),(27,'G','p18'),(1,'G','p19'),(2,'G','p19'),(3,'G','p19'),(5,'I','p19'),(6,'I','p19'),(7,'I','p19'),(10,'G','p19'),(13,'G','p19'),(16,'G','p19'),(20,'I','p19'),(21,'G','p19'),(22,'G','p19'),(24,'G','p19'),(25,'I','p19'),(27,'G','p19'),(29,'G','p19'),(30,'I','p19'),(3,'G','p2'),(4,'I','p2'),(5,'I','p2'),(7,'G','p2'),(11,'G','p2'),(12,'G','p2'),(14,'G','p2'),(15,'I','p2'),(16,'I','p2'),(19,'I','p2'),(20,'G','p2'),(21,'G','p2'),(22,'G','p2'),(27,'I','p2'),(28,'I','p2'),(3,'I','p20'),(10,'G','p20'),(11,'I','p20'),(15,'I','p20'),(16,'G','p20'),(17,'I','p20'),(20,'I','p20'),(22,'G','p20'),(23,'G','p20'),(3,'G','p3'),(12,'G','p3'),(17,'I','p3'),(18,'G','p3'),(19,'G','p3'),(20,'G','p3'),(21,'G','p3'),(22,'I','p3'),(24,'G','p3'),(25,'G','p3'),(26,'G','p3'),(29,'G','p3'),(30,'G','p3'),(1,'I','p4'),(2,'I','p4'),(3,'G','p4'),(4,'G','p4'),(5,'G','p4'),(7,'G','p4'),(9,'I','p4'),(13,'I','p4'),(15,'G','p4'),(16,'I','p4'),(18,'I','p4'),(24,'G','p4'),(27,'G','p4'),(28,'G','p4'),(29,'G','p4'),(30,'G','p4'),(6,'I','p5'),(8,'I','p5'),(15,'G','p5'),(17,'G','p5'),(18,'I','p5'),(21,'I','p5'),(23,'I','p5'),(25,'G','p5'),(28,'G','p5'),(29,'I','p5'),(1,'G','p6'),(2,'I','p6'),(4,'G','p6'),(5,'I','p6'),(7,'I','p6'),(9,'G','p6'),(10,'I','p6'),(11,'I','p6'),(12,'I','p6'),(14,'G','p6'),(16,'G','p6'),(17,'I','p6'),(18,'G','p6'),(23,'G','p6'),(25,'I','p6'),(26,'G','p6'),(28,'G','p6'),(29,'G','p6'),(30,'I','p6'),(1,'G','p7'),(2,'G','p7'),(3,'G','p7'),(4,'G','p7'),(6,'G','p7'),(8,'G','p7'),(9,'G','p7'),(10,'I','p7'),(11,'G','p7'),(13,'G','p7'),(14,'I','p7'),(16,'G','p7'),(17,'G','p7'),(18,'G','p7'),(20,'I','p7'),(21,'G','p7'),(22,'I','p7'),(24,'I','p7'),(25,'G','p7'),(26,'G','p7'),(4,'G','p8'),(5,'I','p8'),(6,'G','p8'),(7,'I','p8'),(8,'I','p8'),(9,'G','p8'),(12,'I','p8'),(13,'G','p8'),(14,'I','p8'),(17,'G','p8'),(19,'I','p8'),(21,'I','p8'),(22,'G','p8'),(23,'G','p8'),(25,'I','p8'),(26,'I','p8'),(28,'I','p8'),(30,'G','p8'),(1,'I','p9'),(2,'G','p9'),(4,'I','p9'),(5,'G','p9'),(10,'G','p9'),(11,'I','p9'),(13,'I','p9'),(14,'I','p9'),(15,'G','p9'),(19,'G','p9'),(24,'G','p9'),(27,'G','p9'),(28,'G','p9'),(30,'G','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS107','p1'),('WSS11','p1'),('WSS111','p1'),('WSS114','p1'),('WSS126','p1'),('WSS162','p1'),('WSS170','p1'),('WSS180','p1'),('WSS187','p1'),('WSS189','p1'),('WSS201','p1'),('WSS209','p1'),('WSS212','p1'),('WSS23','p1'),('WSS235','p1'),('WSS270','p1'),('WSS38','p1'),('WSS69','p1'),('WSS75','p1'),('WSS77','p1'),('WSS86','p1'),('WSS93','p1'),('WSS10','p10'),('WSS121','p10'),('WSS125','p10'),('WSS147','p10'),('WSS15','p10'),('WSS152','p10'),('WSS159','p10'),('WSS168','p10'),('WSS182','p10'),('WSS19','p10'),('WSS196','p10'),('WSS20','p10'),('WSS200','p10'),('WSS221','p10'),('WSS225','p10'),('WSS232','p10'),('WSS244','p10'),('WSS270','p10'),('WSS275','p10'),('WSS297','p10'),('WSS37','p10'),('WSS4','p10'),('WSS45','p10'),('WSS48','p10'),('WSS70','p10'),('WSS72','p10'),('WSS83','p10'),('WSS97','p10'),('WSS1','p11'),('WSS119','p11'),('WSS123','p11'),('WSS124','p11'),('WSS14','p11'),('WSS144','p11'),('WSS151','p11'),('WSS165','p11'),('WSS177','p11'),('WSS186','p11'),('WSS201','p11'),('WSS204','p11'),('WSS210','p11'),('WSS231','p11'),('WSS233','p11'),('WSS245','p11'),('WSS251','p11'),('WSS253','p11'),('WSS254','p11'),('WSS259','p11'),('WSS263','p11'),('WSS273','p11'),('WSS275','p11'),('WSS277','p11'),('WSS282','p11'),('WSS29','p11'),('WSS298','p11'),('WSS41','p11'),('WSS42','p11'),('WSS43','p11'),('WSS46','p11'),('WSS52','p11'),('WSS57','p11'),('WSS68','p11'),('WSS76','p11'),('WSS78','p11'),('WSS83','p11'),('WSS94','p11'),('WSS99','p11'),('WSS128','p12'),('WSS146','p12'),('WSS150','p12'),('WSS156','p12'),('WSS16','p12'),('WSS169','p12'),('WSS171','p12'),('WSS177','p12'),('WSS185','p12'),('WSS195','p12'),('WSS202','p12'),('WSS220','p12'),('WSS225','p12'),('WSS23','p12'),('WSS232','p12'),('WSS24','p12'),('WSS247','p12'),('WSS249','p12'),('WSS277','p12'),('WSS28','p12'),('WSS285','p12'),('WSS289','p12'),('WSS296','p12'),('WSS3','p12'),('WSS49','p12'),('WSS62','p12'),('WSS68','p12'),('WSS71','p12'),('WSS75','p12'),('WSS79','p12'),('WSS88','p12'),('WSS89','p12'),('WSS92','p12'),('WSS97','p12'),('WSS99','p12'),('WSS102','p13'),('WSS110','p13'),('WSS133','p13'),('WSS142','p13'),('WSS150','p13'),('WSS179','p13'),('WSS184','p13'),('WSS194','p13'),('WSS206','p13'),('WSS234','p13'),('WSS246','p13'),('WSS251','p13'),('WSS252','p13'),('WSS258','p13'),('WSS262','p13'),('WSS267','p13'),('WSS269','p13'),('WSS272','p13'),('WSS280','p13'),('WSS3','p13'),('WSS47','p13'),('WSS5','p13'),('WSS56','p13'),('WSS6','p13'),('WSS67','p13'),('WSS70','p13'),('WSS73','p13'),('WSS8','p13'),('WSS94','p13'),('WSS116','p14'),('WSS118','p14'),('WSS132','p14'),('WSS140','p14'),('WSS154','p14'),('WSS155','p14'),('WSS169','p14'),('WSS182','p14'),('WSS188','p14'),('WSS189','p14'),('WSS191','p14'),('WSS196','p14'),('WSS20','p14'),('WSS213','p14'),('WSS217','p14'),('WSS222','p14'),('WSS224','p14'),('WSS235','p14'),('WSS242','p14'),('WSS257','p14'),('WSS263','p14'),('WSS289','p14'),('WSS49','p14'),('WSS58','p14'),('WSS6','p14'),('WSS76','p14'),('WSS85','p14'),('WSS96','p14'),('WSS101','p15'),('WSS109','p15'),('WSS110','p15'),('WSS117','p15'),('WSS12','p15'),('WSS120','p15'),('WSS125','p15'),('WSS13','p15'),('WSS138','p15'),('WSS143','p15'),('WSS148','p15'),('WSS158','p15'),('WSS180','p15'),('WSS190','p15'),('WSS206','p15'),('WSS211','p15'),('WSS220','p15'),('WSS228','p15'),('WSS259','p15'),('WSS261','p15'),('WSS266','p15'),('WSS269','p15'),('WSS292','p15'),('WSS295','p15'),('WSS32','p15'),('WSS34','p15'),('WSS40','p15'),('WSS42','p15'),('WSS50','p15'),('WSS51','p15'),('WSS63','p15'),('WSS72','p15'),('WSS87','p15'),('WSS89','p15'),('WSS101','p16'),('WSS123','p16'),('WSS124','p16'),('WSS144','p16'),('WSS148','p16'),('WSS151','p16'),('WSS153','p16'),('WSS160','p16'),('WSS161','p16'),('WSS163','p16'),('WSS167','p16'),('WSS168','p16'),('WSS17','p16'),('WSS171','p16'),('WSS172','p16'),('WSS174','p16'),('WSS181','p16'),('WSS19','p16'),('WSS193','p16'),('WSS198','p16'),('WSS199','p16'),('WSS21','p16'),('WSS214','p16'),('WSS219','p16'),('WSS224','p16'),('WSS243','p16'),('WSS260','p16'),('WSS28','p16'),('WSS286','p16'),('WSS287','p16'),('WSS29','p16'),('WSS293','p16'),('WSS294','p16'),('WSS53','p16'),('WSS61','p16'),('WSS79','p16'),('WSS84','p16'),('WSS90','p16'),('WSS10','p17'),('WSS100','p17'),('WSS111','p17'),('WSS120','p17'),('WSS136','p17'),('WSS162','p17'),('WSS173','p17'),('WSS178','p17'),('WSS218','p17'),('WSS238','p17'),('WSS24','p17'),('WSS240','p17'),('WSS245','p17'),('WSS247','p17'),('WSS265','p17'),('WSS27','p17'),('WSS274','p17'),('WSS283','p17'),('WSS284','p17'),('WSS287','p17'),('WSS294','p17'),('WSS33','p17'),('WSS81','p17'),('WSS86','p17'),('WSS106','p18'),('WSS119','p18'),('WSS12','p18'),('WSS121','p18'),('WSS127','p18'),('WSS140','p18'),('WSS143','p18'),('WSS158','p18'),('WSS174','p18'),('WSS22','p18'),('WSS221','p18'),('WSS229','p18'),('WSS234','p18'),('WSS240','p18'),('WSS242','p18'),('WSS248','p18'),('WSS249','p18'),('WSS254','p18'),('WSS290','p18'),('WSS35','p18'),('WSS36','p18'),('WSS51','p18'),('WSS59','p18'),('WSS66','p18'),('WSS81','p18'),('WSS108','p19'),('WSS11','p19'),('WSS132','p19'),('WSS137','p19'),('WSS138','p19'),('WSS145','p19'),('WSS146','p19'),('WSS161','p19'),('WSS18','p19'),('WSS191','p19'),('WSS192','p19'),('WSS204','p19'),('WSS210','p19'),('WSS212','p19'),('WSS230','p19'),('WSS237','p19'),('WSS239','p19'),('WSS241','p19'),('WSS255','p19'),('WSS27','p19'),('WSS271','p19'),('WSS272','p19'),('WSS280','p19'),('WSS282','p19'),('WSS285','p19'),('WSS30','p19'),('WSS31','p19'),('WSS39','p19'),('WSS43','p19'),('WSS46','p19'),('WSS47','p19'),('WSS65','p19'),('WSS115','p2'),('WSS122','p2'),('WSS152','p2'),('WSS170','p2'),('WSS172','p2'),('WSS18','p2'),('WSS181','p2'),('WSS184','p2'),('WSS192','p2'),('WSS219','p2'),('WSS22','p2'),('WSS223','p2'),('WSS25','p2'),('WSS278','p2'),('WSS293','p2'),('WSS61','p2'),('WSS92','p2'),('WSS96','p2'),('WSS102','p20'),('WSS103','p20'),('WSS109','p20'),('WSS112','p20'),('WSS115','p20'),('WSS116','p20'),('WSS122','p20'),('WSS13','p20'),('WSS130','p20'),('WSS131','p20'),('WSS139','p20'),('WSS145','p20'),('WSS149','p20'),('WSS167','p20'),('WSS175','p20'),('WSS176','p20'),('WSS187','p20'),('WSS193','p20'),('WSS195','p20'),('WSS207','p20'),('WSS209','p20'),('WSS21','p20'),('WSS211','p20'),('WSS222','p20'),('WSS223','p20'),('WSS226','p20'),('WSS256','p20'),('WSS260','p20'),('WSS266','p20'),('WSS267','p20'),('WSS268','p20'),('WSS281','p20'),('WSS284','p20'),('WSS291','p20'),('WSS4','p20'),('WSS53','p20'),('WSS54','p20'),('WSS64','p20'),('WSS80','p20'),('WSS106','p3'),('WSS129','p3'),('WSS141','p3'),('WSS166','p3'),('WSS194','p3'),('WSS197','p3'),('WSS2','p3'),('WSS203','p3'),('WSS208','p3'),('WSS227','p3'),('WSS252','p3'),('WSS281','p3'),('WSS299','p3'),('WSS30','p3'),('WSS300','p3'),('WSS34','p3'),('WSS39','p3'),('WSS40','p3'),('WSS45','p3'),('WSS55','p3'),('WSS67','p3'),('WSS7','p3'),('WSS74','p3'),('WSS88','p3'),('WSS95','p3'),('WSS100','p4'),('WSS104','p4'),('WSS105','p4'),('WSS118','p4'),('WSS126','p4'),('WSS136','p4'),('WSS16','p4'),('WSS176','p4'),('WSS197','p4'),('WSS205','p4'),('WSS217','p4'),('WSS26','p4'),('WSS262','p4'),('WSS295','p4'),('WSS300','p4'),('WSS31','p4'),('WSS41','p4'),('WSS44','p4'),('WSS60','p4'),('WSS71','p4'),('WSS73','p4'),('WSS85','p4'),('WSS103','p5'),('WSS127','p5'),('WSS14','p5'),('WSS153','p5'),('WSS159','p5'),('WSS173','p5'),('WSS179','p5'),('WSS183','p5'),('WSS188','p5'),('WSS190','p5'),('WSS198','p5'),('WSS200','p5'),('WSS208','p5'),('WSS213','p5'),('WSS227','p5'),('WSS233','p5'),('WSS236','p5'),('WSS239','p5'),('WSS257','p5'),('WSS276','p5'),('WSS279','p5'),('WSS290','p5'),('WSS291','p5'),('WSS296','p5'),('WSS33','p5'),('WSS56','p5'),('WSS57','p5'),('WSS66','p5'),('WSS84','p5'),('WSS9','p5'),('WSS91','p5'),('WSS104','p6'),('WSS105','p6'),('WSS112','p6'),('WSS113','p6'),('WSS114','p6'),('WSS117','p6'),('WSS128','p6'),('WSS130','p6'),('WSS131','p6'),('WSS139','p6'),('WSS141','p6'),('WSS147','p6'),('WSS156','p6'),('WSS160','p6'),('WSS164','p6'),('WSS175','p6'),('WSS186','p6'),('WSS207','p6'),('WSS214','p6'),('WSS241','p6'),('WSS246','p6'),('WSS25','p6'),('WSS250','p6'),('WSS265','p6'),('WSS273','p6'),('WSS286','p6'),('WSS292','p6'),('WSS35','p6'),('WSS38','p6'),('WSS5','p6'),('WSS55','p6'),('WSS58','p6'),('WSS62','p6'),('WSS63','p6'),('WSS7','p6'),('WSS8','p6'),('WSS90','p6'),('WSS91','p6'),('WSS1','p7'),('WSS107','p7'),('WSS108','p7'),('WSS133','p7'),('WSS135','p7'),('WSS149','p7'),('WSS157','p7'),('WSS178','p7'),('WSS203','p7'),('WSS205','p7'),('WSS215','p7'),('WSS216','p7'),('WSS226','p7'),('WSS229','p7'),('WSS230','p7'),('WSS253','p7'),('WSS258','p7'),('WSS26','p7'),('WSS261','p7'),('WSS278','p7'),('WSS288','p7'),('WSS37','p7'),('WSS50','p7'),('WSS59','p7'),('WSS65','p7'),('WSS95','p7'),('WSS98','p7'),('WSS129','p8'),('WSS134','p8'),('WSS15','p8'),('WSS155','p8'),('WSS164','p8'),('WSS17','p8'),('WSS185','p8'),('WSS199','p8'),('WSS202','p8'),('WSS236','p8'),('WSS237','p8'),('WSS238','p8'),('WSS243','p8'),('WSS244','p8'),('WSS250','p8'),('WSS255','p8'),('WSS264','p8'),('WSS276','p8'),('WSS279','p8'),('WSS283','p8'),('WSS297','p8'),('WSS32','p8'),('WSS44','p8'),('WSS48','p8'),('WSS60','p8'),('WSS77','p8'),('WSS78','p8'),('WSS9','p8'),('WSS93','p8'),('WSS98','p8'),('WSS113','p9'),('WSS135','p9'),('WSS137','p9'),('WSS142','p9'),('WSS154','p9'),('WSS157','p9'),('WSS163','p9'),('WSS165','p9'),('WSS183','p9'),('WSS2','p9'),('WSS215','p9'),('WSS218','p9'),('WSS228','p9'),('WSS231','p9'),('WSS271','p9'),('WSS274','p9'),('WSS288','p9'),('WSS298','p9'),('WSS299','p9'),('WSS52','p9'),('WSS54','p9'),('WSS69','p9'),('WSS82','p9'),('WSS87','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS100','p1'),('WSS104','p1'),('WSS120','p1'),('WSS134','p1'),('WSS146','p1'),('WSS150','p1'),('WSS156','p1'),('WSS158','p1'),('WSS162','p1'),('WSS166','p1'),('WSS167','p1'),('WSS168','p1'),('WSS17','p1'),('WSS173','p1'),('WSS175','p1'),('WSS178','p1'),('WSS188','p1'),('WSS200','p1'),('WSS202','p1'),('WSS204','p1'),('WSS208','p1'),('WSS215','p1'),('WSS222','p1'),('WSS223','p1'),('WSS227','p1'),('WSS229','p1'),('WSS231','p1'),('WSS236','p1'),('WSS239','p1'),('WSS24','p1'),('WSS244','p1'),('WSS247','p1'),('WSS262','p1'),('WSS263','p1'),('WSS266','p1'),('WSS280','p1'),('WSS288','p1'),('WSS3','p1'),('WSS40','p1'),('WSS42','p1'),('WSS43','p1'),('WSS46','p1'),('WSS50','p1'),('WSS52','p1'),('WSS58','p1'),('WSS62','p1'),('WSS63','p1'),('WSS70','p1'),('WSS76','p1'),('WSS79','p1'),('WSS82','p1'),('WSS84','p1'),('WSS86','p1'),('WSS90','p1'),('WSS93','p1'),('WSS95','p1'),('WSS102','p10'),('WSS109','p10'),('WSS11','p10'),('WSS111','p10'),('WSS12','p10'),('WSS130','p10'),('WSS133','p10'),('WSS142','p10'),('WSS145','p10'),('WSS148','p10'),('WSS15','p10'),('WSS152','p10'),('WSS156','p10'),('WSS159','p10'),('WSS16','p10'),('WSS160','p10'),('WSS162','p10'),('WSS163','p10'),('WSS165','p10'),('WSS170','p10'),('WSS174','p10'),('WSS179','p10'),('WSS18','p10'),('WSS181','p10'),('WSS185','p10'),('WSS203','p10'),('WSS206','p10'),('WSS211','p10'),('WSS214','p10'),('WSS215','p10'),('WSS227','p10'),('WSS233','p10'),('WSS236','p10'),('WSS238','p10'),('WSS246','p10'),('WSS248','p10'),('WSS268','p10'),('WSS273','p10'),('WSS285','p10'),('WSS287','p10'),('WSS292','p10'),('WSS295','p10'),('WSS296','p10'),('WSS3','p10'),('WSS39','p10'),('WSS42','p10'),('WSS43','p10'),('WSS44','p10'),('WSS46','p10'),('WSS48','p10'),('WSS51','p10'),('WSS71','p10'),('WSS72','p10'),('WSS74','p10'),('WSS75','p10'),('WSS78','p10'),('WSS82','p10'),('WSS84','p10'),('WSS85','p10'),('WSS9','p10'),('WSS92','p10'),('WSS94','p10'),('WSS100','p11'),('WSS101','p11'),('WSS104','p11'),('WSS106','p11'),('WSS108','p11'),('WSS109','p11'),('WSS110','p11'),('WSS112','p11'),('WSS114','p11'),('WSS115','p11'),('WSS117','p11'),('WSS12','p11'),('WSS120','p11'),('WSS123','p11'),('WSS129','p11'),('WSS134','p11'),('WSS138','p11'),('WSS140','p11'),('WSS144','p11'),('WSS145','p11'),('WSS157','p11'),('WSS159','p11'),('WSS160','p11'),('WSS166','p11'),('WSS180','p11'),('WSS187','p11'),('WSS190','p11'),('WSS194','p11'),('WSS196','p11'),('WSS208','p11'),('WSS21','p11'),('WSS210','p11'),('WSS212','p11'),('WSS215','p11'),('WSS219','p11'),('WSS22','p11'),('WSS224','p11'),('WSS236','p11'),('WSS237','p11'),('WSS239','p11'),('WSS244','p11'),('WSS251','p11'),('WSS278','p11'),('WSS279','p11'),('WSS287','p11'),('WSS289','p11'),('WSS291','p11'),('WSS299','p11'),('WSS32','p11'),('WSS47','p11'),('WSS49','p11'),('WSS52','p11'),('WSS53','p11'),('WSS57','p11'),('WSS60','p11'),('WSS64','p11'),('WSS69','p11'),('WSS70','p11'),('WSS71','p11'),('WSS83','p11'),('WSS87','p11'),('WSS90','p11'),('WSS96','p11'),('WSS97','p11'),('WSS10','p12'),('WSS121','p12'),('WSS122','p12'),('WSS126','p12'),('WSS13','p12'),('WSS131','p12'),('WSS151','p12'),('WSS152','p12'),('WSS153','p12'),('WSS154','p12'),('WSS155','p12'),('WSS157','p12'),('WSS161','p12'),('WSS164','p12'),('WSS165','p12'),('WSS169','p12'),('WSS172','p12'),('WSS174','p12'),('WSS185','p12'),('WSS188','p12'),('WSS190','p12'),('WSS196','p12'),('WSS199','p12'),('WSS2','p12'),('WSS202','p12'),('WSS204','p12'),('WSS209','p12'),('WSS212','p12'),('WSS218','p12'),('WSS226','p12'),('WSS229','p12'),('WSS230','p12'),('WSS232','p12'),('WSS234','p12'),('WSS25','p12'),('WSS250','p12'),('WSS255','p12'),('WSS259','p12'),('WSS26','p12'),('WSS264','p12'),('WSS268','p12'),('WSS288','p12'),('WSS295','p12'),('WSS30','p12'),('WSS300','p12'),('WSS53','p12'),('WSS60','p12'),('WSS63','p12'),('WSS65','p12'),('WSS78','p12'),('WSS85','p12'),('WSS98','p12'),('WSS99','p12'),('WSS105','p13'),('WSS115','p13'),('WSS119','p13'),('WSS120','p13'),('WSS129','p13'),('WSS130','p13'),('WSS132','p13'),('WSS133','p13'),('WSS137','p13'),('WSS146','p13'),('WSS15','p13'),('WSS153','p13'),('WSS168','p13'),('WSS175','p13'),('WSS182','p13'),('WSS186','p13'),('WSS188','p13'),('WSS197','p13'),('WSS199','p13'),('WSS203','p13'),('WSS216','p13'),('WSS222','p13'),('WSS223','p13'),('WSS225','p13'),('WSS23','p13'),('WSS241','p13'),('WSS242','p13'),('WSS245','p13'),('WSS249','p13'),('WSS25','p13'),('WSS252','p13'),('WSS254','p13'),('WSS257','p13'),('WSS259','p13'),('WSS260','p13'),('WSS262','p13'),('WSS264','p13'),('WSS265','p13'),('WSS266','p13'),('WSS277','p13'),('WSS280','p13'),('WSS29','p13'),('WSS291','p13'),('WSS292','p13'),('WSS294','p13'),('WSS295','p13'),('WSS299','p13'),('WSS34','p13'),('WSS35','p13'),('WSS4','p13'),('WSS41','p13'),('WSS45','p13'),('WSS48','p13'),('WSS49','p13'),('WSS54','p13'),('WSS58','p13'),('WSS68','p13'),('WSS73','p13'),('WSS76','p13'),('WSS77','p13'),('WSS79','p13'),('WSS8','p13'),('WSS86','p13'),('WSS87','p13'),('WSS93','p13'),('WSS96','p13'),('WSS10','p14'),('WSS103','p14'),('WSS105','p14'),('WSS106','p14'),('WSS108','p14'),('WSS11','p14'),('WSS110','p14'),('WSS115','p14'),('WSS116','p14'),('WSS119','p14'),('WSS123','p14'),('WSS125','p14'),('WSS127','p14'),('WSS128','p14'),('WSS132','p14'),('WSS137','p14'),('WSS140','p14'),('WSS143','p14'),('WSS144','p14'),('WSS16','p14'),('WSS160','p14'),('WSS164','p14'),('WSS167','p14'),('WSS179','p14'),('WSS181','p14'),('WSS186','p14'),('WSS190','p14'),('WSS201','p14'),('WSS202','p14'),('WSS21','p14'),('WSS210','p14'),('WSS216','p14'),('WSS217','p14'),('WSS218','p14'),('WSS223','p14'),('WSS225','p14'),('WSS227','p14'),('WSS233','p14'),('WSS246','p14'),('WSS252','p14'),('WSS256','p14'),('WSS261','p14'),('WSS285','p14'),('WSS288','p14'),('WSS294','p14'),('WSS33','p14'),('WSS34','p14'),('WSS40','p14'),('WSS5','p14'),('WSS50','p14'),('WSS57','p14'),('WSS58','p14'),('WSS59','p14'),('WSS60','p14'),('WSS66','p14'),('WSS73','p14'),('WSS87','p14'),('WSS97','p14'),('WSS99','p14'),('WSS103','p15'),('WSS105','p15'),('WSS107','p15'),('WSS110','p15'),('WSS113','p15'),('WSS116','p15'),('WSS119','p15'),('WSS138','p15'),('WSS139','p15'),('WSS147','p15'),('WSS150','p15'),('WSS152','p15'),('WSS157','p15'),('WSS167','p15'),('WSS169','p15'),('WSS176','p15'),('WSS18','p15'),('WSS180','p15'),('WSS188','p15'),('WSS19','p15'),('WSS194','p15'),('WSS195','p15'),('WSS197','p15'),('WSS207','p15'),('WSS211','p15'),('WSS213','p15'),('WSS214','p15'),('WSS219','p15'),('WSS23','p15'),('WSS230','p15'),('WSS235','p15'),('WSS240','p15'),('WSS243','p15'),('WSS248','p15'),('WSS250','p15'),('WSS258','p15'),('WSS259','p15'),('WSS260','p15'),('WSS267','p15'),('WSS275','p15'),('WSS283','p15'),('WSS284','p15'),('WSS297','p15'),('WSS298','p15'),('WSS38','p15'),('WSS48','p15'),('WSS59','p15'),('WSS61','p15'),('WSS75','p15'),('WSS84','p15'),('WSS86','p15'),('WSS9','p15'),('WSS96','p15'),('WSS108','p16'),('WSS110','p16'),('WSS114','p16'),('WSS116','p16'),('WSS121','p16'),('WSS125','p16'),('WSS132','p16'),('WSS138','p16'),('WSS149','p16'),('WSS151','p16'),('WSS154','p16'),('WSS155','p16'),('WSS162','p16'),('WSS171','p16'),('WSS172','p16'),('WSS184','p16'),('WSS190','p16'),('WSS192','p16'),('WSS2','p16'),('WSS201','p16'),('WSS202','p16'),('WSS208','p16'),('WSS216','p16'),('WSS221','p16'),('WSS228','p16'),('WSS233','p16'),('WSS240','p16'),('WSS248','p16'),('WSS250','p16'),('WSS253','p16'),('WSS255','p16'),('WSS258','p16'),('WSS261','p16'),('WSS267','p16'),('WSS27','p16'),('WSS276','p16'),('WSS284','p16'),('WSS295','p16'),('WSS30','p16'),('WSS31','p16'),('WSS32','p16'),('WSS41','p16'),('WSS44','p16'),('WSS45','p16'),('WSS5','p16'),('WSS61','p16'),('WSS62','p16'),('WSS67','p16'),('WSS7','p16'),('WSS72','p16'),('WSS8','p16'),('WSS98','p16'),('WSS1','p17'),('WSS101','p17'),('WSS111','p17'),('WSS117','p17'),('WSS126','p17'),('WSS13','p17'),('WSS134','p17'),('WSS135','p17'),('WSS143','p17'),('WSS144','p17'),('WSS16','p17'),('WSS163','p17'),('WSS171','p17'),('WSS179','p17'),('WSS182','p17'),('WSS184','p17'),('WSS189','p17'),('WSS19','p17'),('WSS193','p17'),('WSS2','p17'),('WSS20','p17'),('WSS206','p17'),('WSS217','p17'),('WSS220','p17'),('WSS228','p17'),('WSS237','p17'),('WSS240','p17'),('WSS244','p17'),('WSS245','p17'),('WSS254','p17'),('WSS257','p17'),('WSS260','p17'),('WSS267','p17'),('WSS27','p17'),('WSS270','p17'),('WSS274','p17'),('WSS293','p17'),('WSS31','p17'),('WSS35','p17'),('WSS42','p17'),('WSS47','p17'),('WSS67','p17'),('WSS8','p17'),('WSS85','p17'),('WSS92','p17'),('WSS95','p17'),('WSS100','p18'),('WSS105','p18'),('WSS109','p18'),('WSS11','p18'),('WSS118','p18'),('WSS122','p18'),('WSS128','p18'),('WSS131','p18'),('WSS133','p18'),('WSS14','p18'),('WSS141','p18'),('WSS149','p18'),('WSS150','p18'),('WSS153','p18'),('WSS154','p18'),('WSS156','p18'),('WSS158','p18'),('WSS16','p18'),('WSS170','p18'),('WSS173','p18'),('WSS175','p18'),('WSS183','p18'),('WSS186','p18'),('WSS187','p18'),('WSS194','p18'),('WSS198','p18'),('WSS199','p18'),('WSS2','p18'),('WSS206','p18'),('WSS21','p18'),('WSS212','p18'),('WSS221','p18'),('WSS230','p18'),('WSS232','p18'),('WSS246','p18'),('WSS253','p18'),('WSS258','p18'),('WSS263','p18'),('WSS269','p18'),('WSS276','p18'),('WSS278','p18'),('WSS285','p18'),('WSS289','p18'),('WSS37','p18'),('WSS38','p18'),('WSS46','p18'),('WSS48','p18'),('WSS50','p18'),('WSS52','p18'),('WSS58','p18'),('WSS6','p18'),('WSS63','p18'),('WSS72','p18'),('WSS74','p18'),('WSS80','p18'),('WSS88','p18'),('WSS89','p18'),('WSS90','p18'),('WSS99','p18'),('WSS1','p19'),('WSS106','p19'),('WSS113','p19'),('WSS128','p19'),('WSS132','p19'),('WSS14','p19'),('WSS143','p19'),('WSS146','p19'),('WSS157','p19'),('WSS160','p19'),('WSS169','p19'),('WSS174','p19'),('WSS176','p19'),('WSS177','p19'),('WSS180','p19'),('WSS191','p19'),('WSS211','p19'),('WSS213','p19'),('WSS217','p19'),('WSS228','p19'),('WSS231','p19'),('WSS234','p19'),('WSS24','p19'),('WSS243','p19'),('WSS247','p19'),('WSS271','p19'),('WSS273','p19'),('WSS28','p19'),('WSS281','p19'),('WSS298','p19'),('WSS33','p19'),('WSS36','p19'),('WSS37','p19'),('WSS39','p19'),('WSS40','p19'),('WSS45','p19'),('WSS51','p19'),('WSS54','p19'),('WSS56','p19'),('WSS6','p19'),('WSS61','p19'),('WSS70','p19'),('WSS71','p19'),('WSS76','p19'),('WSS77','p19'),('WSS92','p19'),('WSS94','p19'),('WSS1','p2'),('WSS102','p2'),('WSS109','p2'),('WSS112','p2'),('WSS114','p2'),('WSS117','p2'),('WSS120','p2'),('WSS126','p2'),('WSS128','p2'),('WSS136','p2'),('WSS137','p2'),('WSS145','p2'),('WSS163','p2'),('WSS17','p2'),('WSS171','p2'),('WSS177','p2'),('WSS187','p2'),('WSS191','p2'),('WSS195','p2'),('WSS204','p2'),('WSS209','p2'),('WSS210','p2'),('WSS226','p2'),('WSS235','p2'),('WSS242','p2'),('WSS257','p2'),('WSS26','p2'),('WSS271','p2'),('WSS274','p2'),('WSS277','p2'),('WSS279','p2'),('WSS281','p2'),('WSS282','p2'),('WSS286','p2'),('WSS287','p2'),('WSS290','p2'),('WSS291','p2'),('WSS37','p2'),('WSS44','p2'),('WSS51','p2'),('WSS53','p2'),('WSS55','p2'),('WSS57','p2'),('WSS69','p2'),('WSS7','p2'),('WSS88','p2'),('WSS9','p2'),('WSS94','p2'),('WSS95','p2'),('WSS101','p20'),('WSS102','p20'),('WSS107','p20'),('WSS114','p20'),('WSS125','p20'),('WSS127','p20'),('WSS13','p20'),('WSS130','p20'),('WSS136','p20'),('WSS14','p20'),('WSS148','p20'),('WSS151','p20'),('WSS156','p20'),('WSS159','p20'),('WSS161','p20'),('WSS162','p20'),('WSS166','p20'),('WSS168','p20'),('WSS169','p20'),('WSS172','p20'),('WSS185','p20'),('WSS187','p20'),('WSS192','p20'),('WSS198','p20'),('WSS20','p20'),('WSS220','p20'),('WSS221','p20'),('WSS224','p20'),('WSS239','p20'),('WSS241','p20'),('WSS244','p20'),('WSS245','p20'),('WSS247','p20'),('WSS252','p20'),('WSS256','p20'),('WSS258','p20'),('WSS263','p20'),('WSS264','p20'),('WSS269','p20'),('WSS276','p20'),('WSS278','p20'),('WSS282','p20'),('WSS288','p20'),('WSS290','p20'),('WSS296','p20'),('WSS299','p20'),('WSS3','p20'),('WSS300','p20'),('WSS31','p20'),('WSS32','p20'),('WSS34','p20'),('WSS36','p20'),('WSS42','p20'),('WSS5','p20'),('WSS54','p20'),('WSS55','p20'),('WSS65','p20'),('WSS66','p20'),('WSS68','p20'),('WSS73','p20'),('WSS77','p20'),('WSS80','p20'),('WSS81','p20'),('WSS82','p20'),('WSS87','p20'),('WSS89','p20'),('WSS91','p20'),('WSS93','p20'),('WSS103','p3'),('WSS104','p3'),('WSS111','p3'),('WSS113','p3'),('WSS118','p3'),('WSS119','p3'),('WSS124','p3'),('WSS127','p3'),('WSS130','p3'),('WSS133','p3'),('WSS136','p3'),('WSS137','p3'),('WSS138','p3'),('WSS141','p3'),('WSS147','p3'),('WSS153','p3'),('WSS163','p3'),('WSS167','p3'),('WSS178','p3'),('WSS180','p3'),('WSS184','p3'),('WSS19','p3'),('WSS193','p3'),('WSS195','p3'),('WSS208','p3'),('WSS210','p3'),('WSS214','p3'),('WSS22','p3'),('WSS224','p3'),('WSS232','p3'),('WSS242','p3'),('WSS249','p3'),('WSS254','p3'),('WSS256','p3'),('WSS26','p3'),('WSS272','p3'),('WSS277','p3'),('WSS281','p3'),('WSS289','p3'),('WSS290','p3'),('WSS294','p3'),('WSS37','p3'),('WSS4','p3'),('WSS40','p3'),('WSS56','p3'),('WSS6','p3'),('WSS81','p3'),('WSS83','p3'),('WSS89','p3'),('WSS91','p3'),('WSS93','p3'),('WSS94','p3'),('WSS103','p4'),('WSS11','p4'),('WSS113','p4'),('WSS123','p4'),('WSS124','p4'),('WSS131','p4'),('WSS141','p4'),('WSS142','p4'),('WSS144','p4'),('WSS147','p4'),('WSS151','p4'),('WSS161','p4'),('WSS166','p4'),('WSS18','p4'),('WSS184','p4'),('WSS195','p4'),('WSS198','p4'),('WSS201','p4'),('WSS206','p4'),('WSS207','p4'),('WSS212','p4'),('WSS218','p4'),('WSS222','p4'),('WSS224','p4'),('WSS225','p4'),('WSS226','p4'),('WSS227','p4'),('WSS230','p4'),('WSS235','p4'),('WSS236','p4'),('WSS24','p4'),('WSS240','p4'),('WSS249','p4'),('WSS255','p4'),('WSS266','p4'),('WSS269','p4'),('WSS27','p4'),('WSS275','p4'),('WSS279','p4'),('WSS28','p4'),('WSS283','p4'),('WSS284','p4'),('WSS293','p4'),('WSS30','p4'),('WSS33','p4'),('WSS35','p4'),('WSS43','p4'),('WSS47','p4'),('WSS49','p4'),('WSS6','p4'),('WSS61','p4'),('WSS64','p4'),('WSS65','p4'),('WSS69','p4'),('WSS7','p4'),('WSS71','p4'),('WSS84','p4'),('WSS86','p4'),('WSS88','p4'),('WSS1','p5'),('WSS104','p5'),('WSS126','p5'),('WSS131','p5'),('WSS136','p5'),('WSS148','p5'),('WSS149','p5'),('WSS15','p5'),('WSS150','p5'),('WSS171','p5'),('WSS173','p5'),('WSS175','p5'),('WSS176','p5'),('WSS178','p5'),('WSS179','p5'),('WSS186','p5'),('WSS189','p5'),('WSS191','p5'),('WSS197','p5'),('WSS200','p5'),('WSS203','p5'),('WSS205','p5'),('WSS209','p5'),('WSS213','p5'),('WSS217','p5'),('WSS219','p5'),('WSS22','p5'),('WSS220','p5'),('WSS225','p5'),('WSS229','p5'),('WSS234','p5'),('WSS235','p5'),('WSS239','p5'),('WSS248','p5'),('WSS254','p5'),('WSS271','p5'),('WSS272','p5'),('WSS275','p5'),('WSS279','p5'),('WSS28','p5'),('WSS282','p5'),('WSS29','p5'),('WSS290','p5'),('WSS291','p5'),('WSS297','p5'),('WSS44','p5'),('WSS45','p5'),('WSS47','p5'),('WSS49','p5'),('WSS50','p5'),('WSS65','p5'),('WSS66','p5'),('WSS73','p5'),('WSS77','p5'),('WSS80','p5'),('WSS81','p5'),('WSS83','p5'),('WSS95','p5'),('WSS96','p5'),('WSS10','p6'),('WSS108','p6'),('WSS129','p6'),('WSS139','p6'),('WSS143','p6'),('WSS148','p6'),('WSS152','p6'),('WSS155','p6'),('WSS158','p6'),('WSS164','p6'),('WSS172','p6'),('WSS178','p6'),('WSS183','p6'),('WSS189','p6'),('WSS193','p6'),('WSS199','p6'),('WSS200','p6'),('WSS201','p6'),('WSS205','p6'),('WSS207','p6'),('WSS213','p6'),('WSS214','p6'),('WSS24','p6'),('WSS242','p6'),('WSS250','p6'),('WSS251','p6'),('WSS261','p6'),('WSS267','p6'),('WSS270','p6'),('WSS274','p6'),('WSS280','p6'),('WSS283','p6'),('WSS29','p6'),('WSS298','p6'),('WSS35','p6'),('WSS36','p6'),('WSS41','p6'),('WSS55','p6'),('WSS63','p6'),('WSS64','p6'),('WSS68','p6'),('WSS7','p6'),('WSS74','p6'),('WSS78','p6'),('WSS79','p6'),('WSS82','p6'),('WSS97','p6'),('WSS99','p6'),('WSS102','p7'),('WSS107','p7'),('WSS111','p7'),('WSS118','p7'),('WSS122','p7'),('WSS124','p7'),('WSS129','p7'),('WSS134','p7'),('WSS135','p7'),('WSS14','p7'),('WSS141','p7'),('WSS145','p7'),('WSS149','p7'),('WSS155','p7'),('WSS161','p7'),('WSS165','p7'),('WSS168','p7'),('WSS170','p7'),('WSS177','p7'),('WSS182','p7'),('WSS192','p7'),('WSS193','p7'),('WSS20','p7'),('WSS209','p7'),('WSS21','p7'),('WSS216','p7'),('WSS218','p7'),('WSS226','p7'),('WSS232','p7'),('WSS237','p7'),('WSS241','p7'),('WSS243','p7'),('WSS247','p7'),('WSS25','p7'),('WSS257','p7'),('WSS263','p7'),('WSS266','p7'),('WSS268','p7'),('WSS270','p7'),('WSS282','p7'),('WSS285','p7'),('WSS294','p7'),('WSS296','p7'),('WSS297','p7'),('WSS33','p7'),('WSS38','p7'),('WSS43','p7'),('WSS51','p7'),('WSS56','p7'),('WSS8','p7'),('WSS81','p7'),('WSS90','p7'),('WSS91','p7'),('WSS98','p7'),('WSS115','p8'),('WSS117','p8'),('WSS118','p8'),('WSS12','p8'),('WSS124','p8'),('WSS139','p8'),('WSS142','p8'),('WSS146','p8'),('WSS15','p8'),('WSS17','p8'),('WSS173','p8'),('WSS174','p8'),('WSS176','p8'),('WSS177','p8'),('WSS18','p8'),('WSS183','p8'),('WSS19','p8'),('WSS197','p8'),('WSS20','p8'),('WSS205','p8'),('WSS207','p8'),('WSS22','p8'),('WSS223','p8'),('WSS229','p8'),('WSS233','p8'),('WSS237','p8'),('WSS243','p8'),('WSS245','p8'),('WSS25','p8'),('WSS259','p8'),('WSS262','p8'),('WSS265','p8'),('WSS274','p8'),('WSS277','p8'),('WSS283','p8'),('WSS286','p8'),('WSS287','p8'),('WSS292','p8'),('WSS293','p8'),('WSS299','p8'),('WSS3','p8'),('WSS300','p8'),('WSS34','p8'),('WSS36','p8'),('WSS39','p8'),('WSS4','p8'),('WSS41','p8'),('WSS52','p8'),('WSS62','p8'),('WSS67','p8'),('WSS68','p8'),('WSS69','p8'),('WSS78','p8'),('WSS79','p8'),('WSS83','p8'),('WSS89','p8'),('WSS10','p9'),('WSS106','p9'),('WSS107','p9'),('WSS112','p9'),('WSS116','p9'),('WSS121','p9'),('WSS123','p9'),('WSS125','p9'),('WSS127','p9'),('WSS135','p9'),('WSS139','p9'),('WSS140','p9'),('WSS147','p9'),('WSS158','p9'),('WSS17','p9'),('WSS181','p9'),('WSS182','p9'),('WSS185','p9'),('WSS198','p9'),('WSS204','p9'),('WSS215','p9'),('WSS219','p9'),('WSS228','p9'),('WSS23','p9'),('WSS231','p9'),('WSS238','p9'),('WSS241','p9'),('WSS249','p9'),('WSS251','p9'),('WSS253','p9'),('WSS256','p9'),('WSS260','p9'),('WSS265','p9'),('WSS270','p9'),('WSS271','p9'),('WSS272','p9'),('WSS275','p9'),('WSS278','p9'),('WSS28','p9'),('WSS280','p9'),('WSS281','p9'),('WSS286','p9'),('WSS289','p9'),('WSS29','p9'),('WSS300','p9'),('WSS38','p9'),('WSS4','p9'),('WSS5','p9'),('WSS59','p9'),('WSS60','p9'),('WSS64','p9'),('WSS67','p9'),('WSS70','p9'),('WSS75','p9'),('WSS76','p9'),('WSS91','p9'),('WSS97','p9'),('WSS98','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS230'),(1,1,'WSS252'),(1,2,'WSS177'),(2,1,'WSS274'),(2,2,'WSS37'),(2,2,'WSS86'),(2,3,'WSS1'),(3,1,'WSS23'),(3,1,'WSS38'),(3,2,'WSS298'),(3,3,'WSS44'),(4,1,'WSS249'),(4,2,'WSS167'),(4,3,'WSS232'),(4,4,'WSS218'),(5,1,'WSS44'),(5,1,'WSS70'),(5,2,'WSS160'),(6,1,'WSS26'),(6,1,'WSS42'),(6,2,'WSS1'),(6,2,'WSS267'),(7,1,'WSS288'),(7,1,'WSS49'),(7,2,'WSS32'),(7,3,'WSS230'),(8,1,'WSS172'),(8,2,'WSS12'),(8,2,'WSS247'),(8,3,'WSS206'),(9,1,'WSS153'),(9,2,'WSS160'),(9,3,'WSS241'),(9,4,'WSS98'),(10,1,'WSS173'),(10,2,'WSS101'),(10,2,'WSS94'),(10,3,'WSS106'),(11,1,'WSS282'),(11,1,'WSS285'),(11,2,'WSS33'),(11,3,'WSS7'),(12,1,'WSS186'),(12,2,'WSS231'),(12,3,'WSS292'),(12,3,'WSS94'),(13,1,'WSS177'),(13,1,'WSS200'),(13,2,'WSS167'),(13,3,'WSS100'),(14,1,'WSS255'),(14,2,'WSS27'),(14,2,'WSS6'),(14,3,'WSS1'),(15,1,'WSS10'),(15,2,'WSS194'),(15,3,'WSS65'),(15,4,'WSS246'),(16,1,'WSS188'),(16,2,'WSS19'),(16,2,'WSS64'),(16,3,'WSS32'),(17,1,'WSS110'),(17,2,'WSS103'),(17,2,'WSS160'),(17,3,'WSS16'),(18,1,'WSS103'),(18,2,'WSS49'),(18,3,'WSS84'),(18,4,'WSS277'),(19,1,'WSS290'),(19,2,'WSS158'),(19,2,'WSS199'),(19,3,'WSS241'),(20,1,'WSS261'),(20,1,'WSS32'),(20,2,'WSS180'),(20,2,'WSS8'),(20,3,'WSS46'),(21,1,'WSS224'),(21,2,'WSS45'),(21,3,'WSS7'),(21,4,'WSS292'),(22,1,'WSS34'),(22,2,'WSS169'),(22,3,'WSS253'),(22,4,'WSS44'),(23,1,'WSS107'),(23,1,'WSS222'),(23,2,'WSS1'),(23,2,'WSS292'),(24,1,'WSS183'),(24,2,'WSS65'),(24,3,'WSS295'),(24,4,'WSS246'),(25,1,'WSS200'),(25,1,'WSS211'),(25,1,'WSS33'),(25,2,'WSS2'),(26,1,'WSS235'),(26,2,'WSS23'),(26,2,'WSS27'),(26,3,'WSS97'),(27,1,'WSS12'),(27,2,'WSS185'),(27,3,'WSS271'),(27,4,'WSS13'),(28,1,'WSS18'),(28,2,'WSS263'),(28,3,'WSS182'),(28,4,'WSS161'),(29,1,'WSS100'),(29,1,'WSS241'),(29,2,'WSS43'),(29,3,'WSS37'),(29,4,'WSS290'),(30,1,'WSS21'),(30,2,'WSS271'),(30,3,'WSS273'),(30,4,'WSS226'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-07-07  0:05:32
