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
INSERT INTO `initialgoalparameter` VALUES (7,'G','p1'),(9,'I','p1'),(10,'G','p1'),(11,'G','p1'),(12,'G','p1'),(13,'I','p1'),(15,'G','p1'),(16,'G','p1'),(21,'G','p1'),(22,'G','p1'),(24,'G','p1'),(26,'G','p1'),(30,'G','p1'),(2,'G','p10'),(4,'G','p10'),(6,'I','p10'),(7,'I','p10'),(8,'I','p10'),(10,'G','p10'),(12,'I','p10'),(13,'I','p10'),(14,'I','p10'),(15,'I','p10'),(16,'G','p10'),(17,'G','p10'),(20,'I','p10'),(23,'G','p10'),(24,'G','p10'),(25,'I','p10'),(27,'G','p10'),(30,'G','p10'),(1,'G','p11'),(4,'G','p11'),(5,'G','p11'),(6,'G','p11'),(8,'G','p11'),(12,'G','p11'),(16,'I','p11'),(20,'G','p11'),(21,'I','p11'),(23,'G','p11'),(24,'G','p11'),(25,'G','p11'),(28,'G','p11'),(29,'I','p11'),(4,'G','p12'),(6,'G','p12'),(9,'I','p12'),(12,'I','p12'),(13,'G','p12'),(16,'G','p12'),(18,'G','p12'),(19,'G','p12'),(22,'G','p12'),(23,'I','p12'),(24,'I','p12'),(25,'G','p12'),(26,'I','p12'),(29,'G','p12'),(1,'G','p13'),(7,'G','p13'),(9,'G','p13'),(11,'G','p13'),(12,'G','p13'),(14,'I','p13'),(17,'G','p13'),(18,'G','p13'),(19,'G','p13'),(21,'I','p13'),(22,'G','p13'),(23,'I','p13'),(24,'G','p13'),(25,'I','p13'),(26,'I','p13'),(27,'G','p13'),(28,'G','p13'),(29,'G','p13'),(2,'I','p14'),(4,'G','p14'),(5,'G','p14'),(6,'I','p14'),(9,'I','p14'),(10,'I','p14'),(11,'G','p14'),(13,'G','p14'),(14,'G','p14'),(15,'G','p14'),(19,'I','p14'),(20,'G','p14'),(21,'G','p14'),(24,'I','p14'),(25,'I','p14'),(27,'I','p14'),(29,'G','p14'),(30,'G','p14'),(4,'G','p15'),(5,'G','p15'),(8,'G','p15'),(15,'I','p15'),(16,'G','p15'),(20,'I','p15'),(21,'I','p15'),(28,'G','p15'),(1,'I','p16'),(2,'G','p16'),(5,'I','p16'),(6,'I','p16'),(7,'I','p16'),(9,'G','p16'),(10,'I','p16'),(13,'G','p16'),(14,'G','p16'),(16,'G','p16'),(17,'G','p16'),(19,'G','p16'),(20,'G','p16'),(21,'G','p16'),(22,'G','p16'),(23,'I','p16'),(26,'G','p16'),(27,'G','p16'),(28,'I','p16'),(30,'G','p16'),(3,'G','p17'),(11,'I','p17'),(17,'G','p17'),(20,'I','p17'),(22,'I','p17'),(23,'G','p17'),(27,'I','p17'),(28,'G','p17'),(29,'I','p17'),(1,'I','p18'),(3,'G','p18'),(5,'G','p18'),(6,'I','p18'),(8,'G','p18'),(9,'G','p18'),(10,'G','p18'),(11,'I','p18'),(14,'I','p18'),(16,'G','p18'),(17,'I','p18'),(18,'G','p18'),(23,'G','p18'),(25,'G','p18'),(26,'G','p18'),(27,'G','p18'),(29,'G','p18'),(30,'I','p18'),(1,'I','p19'),(2,'G','p19'),(5,'I','p19'),(6,'G','p19'),(7,'G','p19'),(8,'G','p19'),(9,'G','p19'),(10,'G','p19'),(12,'G','p19'),(17,'G','p19'),(19,'G','p19'),(21,'G','p19'),(25,'I','p19'),(27,'I','p19'),(30,'I','p19'),(2,'I','p2'),(3,'I','p2'),(4,'I','p2'),(7,'G','p2'),(8,'G','p2'),(9,'I','p2'),(11,'G','p2'),(13,'I','p2'),(14,'G','p2'),(15,'G','p2'),(18,'I','p2'),(24,'I','p2'),(27,'G','p2'),(28,'I','p2'),(29,'I','p2'),(1,'G','p20'),(2,'G','p20'),(3,'G','p20'),(4,'I','p20'),(7,'I','p20'),(8,'I','p20'),(10,'G','p20'),(16,'I','p20'),(19,'I','p20'),(20,'I','p20'),(25,'G','p20'),(27,'G','p20'),(28,'G','p20'),(29,'G','p20'),(30,'G','p20'),(1,'G','p3'),(2,'I','p3'),(6,'G','p3'),(7,'I','p3'),(8,'G','p3'),(11,'G','p3'),(18,'I','p3'),(19,'G','p3'),(22,'I','p3'),(26,'G','p3'),(28,'G','p3'),(29,'G','p3'),(3,'G','p4'),(4,'I','p4'),(5,'I','p4'),(7,'G','p4'),(12,'I','p4'),(13,'G','p4'),(14,'I','p4'),(15,'G','p4'),(18,'G','p4'),(22,'I','p4'),(23,'G','p4'),(26,'G','p4'),(27,'I','p4'),(28,'I','p4'),(1,'G','p5'),(2,'G','p5'),(3,'G','p5'),(5,'G','p5'),(10,'G','p5'),(13,'G','p5'),(14,'G','p5'),(15,'I','p5'),(17,'G','p5'),(18,'I','p5'),(19,'G','p5'),(20,'G','p5'),(22,'G','p5'),(24,'I','p5'),(26,'I','p5'),(1,'I','p6'),(3,'I','p6'),(4,'I','p6'),(5,'I','p6'),(6,'G','p6'),(7,'G','p6'),(8,'I','p6'),(9,'G','p6'),(10,'I','p6'),(11,'G','p6'),(12,'G','p6'),(13,'G','p6'),(14,'G','p6'),(15,'G','p6'),(16,'I','p6'),(17,'I','p6'),(18,'G','p6'),(21,'G','p6'),(25,'G','p6'),(26,'I','p6'),(30,'G','p6'),(2,'I','p7'),(3,'I','p7'),(4,'G','p7'),(5,'G','p7'),(6,'G','p7'),(13,'I','p7'),(16,'I','p7'),(20,'G','p7'),(21,'G','p7'),(23,'I','p7'),(26,'G','p7'),(29,'I','p7'),(30,'I','p7'),(1,'G','p8'),(2,'G','p8'),(3,'I','p8'),(11,'I','p8'),(12,'I','p8'),(15,'G','p8'),(17,'I','p8'),(18,'I','p8'),(19,'I','p8'),(22,'I','p8'),(24,'G','p8'),(25,'G','p8'),(28,'I','p8'),(30,'I','p8'),(3,'G','p9'),(8,'I','p9'),(9,'G','p9'),(10,'I','p9'),(11,'I','p9'),(12,'G','p9'),(14,'G','p9'),(15,'I','p9'),(17,'I','p9'),(18,'G','p9'),(19,'I','p9'),(20,'G','p9'),(21,'I','p9'),(22,'G','p9'),(23,'G','p9'),(24,'G','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS29','p1'),('WSS32','p1'),('WSS41','p1'),('WSS44','p1'),('WSS51','p1'),('WSS62','p1'),('WSS64','p1'),('WSS66','p1'),('WSS7','p1'),('WSS76','p1'),('WSS84','p1'),('WSS86','p1'),('WSS92','p1'),('WSS96','p1'),('WSS11','p10'),('WSS12','p10'),('WSS14','p10'),('WSS18','p10'),('WSS24','p10'),('WSS46','p10'),('WSS85','p10'),('WSS93','p10'),('WSS95','p10'),('WSS10','p11'),('WSS28','p11'),('WSS37','p11'),('WSS48','p11'),('WSS56','p11'),('WSS61','p11'),('WSS67','p11'),('WSS69','p11'),('WSS71','p11'),('WSS72','p11'),('WSS84','p11'),('WSS87','p11'),('WSS97','p11'),('WSS13','p12'),('WSS19','p12'),('WSS36','p12'),('WSS40','p12'),('WSS51','p12'),('WSS52','p12'),('WSS53','p12'),('WSS55','p12'),('WSS68','p12'),('WSS9','p12'),('WSS98','p12'),('WSS14','p13'),('WSS16','p13'),('WSS3','p13'),('WSS31','p13'),('WSS33','p13'),('WSS38','p13'),('WSS39','p13'),('WSS43','p13'),('WSS59','p13'),('WSS85','p13'),('WSS97','p13'),('WSS10','p14'),('WSS15','p14'),('WSS21','p14'),('WSS22','p14'),('WSS28','p14'),('WSS3','p14'),('WSS33','p14'),('WSS40','p14'),('WSS53','p14'),('WSS54','p14'),('WSS6','p14'),('WSS60','p14'),('WSS64','p14'),('WSS7','p14'),('WSS77','p14'),('WSS82','p14'),('WSS22','p15'),('WSS48','p15'),('WSS5','p15'),('WSS50','p15'),('WSS66','p15'),('WSS80','p15'),('WSS83','p15'),('WSS89','p15'),('WSS9','p15'),('WSS92','p15'),('WSS15','p16'),('WSS18','p16'),('WSS30','p16'),('WSS36','p16'),('WSS41','p16'),('WSS65','p16'),('WSS99','p16'),('WSS23','p17'),('WSS26','p17'),('WSS27','p17'),('WSS42','p17'),('WSS49','p17'),('WSS57','p17'),('WSS62','p17'),('WSS72','p17'),('WSS75','p17'),('WSS90','p17'),('WSS30','p18'),('WSS37','p18'),('WSS59','p18'),('WSS74','p18'),('WSS81','p18'),('WSS91','p18'),('WSS100','p19'),('WSS21','p19'),('WSS34','p19'),('WSS54','p19'),('WSS63','p19'),('WSS70','p19'),('WSS71','p19'),('WSS78','p19'),('WSS81','p19'),('WSS98','p2'),('WSS1','p20'),('WSS2','p20'),('WSS25','p20'),('WSS58','p20'),('WSS65','p20'),('WSS74','p20'),('WSS83','p20'),('WSS1','p3'),('WSS29','p3'),('WSS32','p3'),('WSS34','p3'),('WSS4','p3'),('WSS47','p3'),('WSS52','p3'),('WSS57','p3'),('WSS79','p3'),('WSS8','p3'),('WSS93','p3'),('WSS94','p3'),('WSS99','p3'),('WSS31','p4'),('WSS38','p4'),('WSS49','p4'),('WSS68','p4'),('WSS82','p4'),('WSS86','p4'),('WSS90','p4'),('WSS13','p5'),('WSS17','p5'),('WSS20','p5'),('WSS27','p5'),('WSS35','p5'),('WSS47','p5'),('WSS5','p5'),('WSS70','p5'),('WSS25','p6'),('WSS26','p6'),('WSS39','p6'),('WSS4','p6'),('WSS42','p6'),('WSS45','p6'),('WSS67','p6'),('WSS73','p6'),('WSS88','p6'),('WSS12','p7'),('WSS16','p7'),('WSS17','p7'),('WSS19','p7'),('WSS2','p7'),('WSS20','p7'),('WSS23','p7'),('WSS24','p7'),('WSS35','p7'),('WSS50','p7'),('WSS55','p7'),('WSS61','p7'),('WSS63','p7'),('WSS76','p7'),('WSS91','p7'),('WSS94','p7'),('WSS96','p7'),('WSS100','p8'),('WSS44','p8'),('WSS45','p8'),('WSS6','p8'),('WSS73','p8'),('WSS78','p8'),('WSS80','p8'),('WSS89','p8'),('WSS11','p9'),('WSS43','p9'),('WSS58','p9'),('WSS60','p9'),('WSS69','p9'),('WSS75','p9'),('WSS77','p9'),('WSS79','p9'),('WSS8','p9'),('WSS87','p9'),('WSS88','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS1','p1'),('WSS11','p1'),('WSS12','p1'),('WSS15','p1'),('WSS17','p1'),('WSS18','p1'),('WSS19','p1'),('WSS21','p1'),('WSS22','p1'),('WSS23','p1'),('WSS29','p1'),('WSS33','p1'),('WSS38','p1'),('WSS43','p1'),('WSS44','p1'),('WSS45','p1'),('WSS46','p1'),('WSS47','p1'),('WSS48','p1'),('WSS55','p1'),('WSS57','p1'),('WSS62','p1'),('WSS64','p1'),('WSS67','p1'),('WSS70','p1'),('WSS74','p1'),('WSS75','p1'),('WSS83','p1'),('WSS84','p1'),('WSS86','p1'),('WSS9','p1'),('WSS91','p1'),('WSS95','p1'),('WSS96','p1'),('WSS97','p1'),('WSS10','p10'),('WSS17','p10'),('WSS18','p10'),('WSS24','p10'),('WSS31','p10'),('WSS32','p10'),('WSS33','p10'),('WSS35','p10'),('WSS37','p10'),('WSS38','p10'),('WSS4','p10'),('WSS42','p10'),('WSS47','p10'),('WSS49','p10'),('WSS50','p10'),('WSS52','p10'),('WSS54','p10'),('WSS58','p10'),('WSS60','p10'),('WSS68','p10'),('WSS69','p10'),('WSS70','p10'),('WSS78','p10'),('WSS79','p10'),('WSS80','p10'),('WSS81','p10'),('WSS88','p10'),('WSS90','p10'),('WSS91','p10'),('WSS96','p10'),('WSS97','p10'),('WSS100','p11'),('WSS13','p11'),('WSS17','p11'),('WSS18','p11'),('WSS2','p11'),('WSS21','p11'),('WSS26','p11'),('WSS27','p11'),('WSS32','p11'),('WSS36','p11'),('WSS38','p11'),('WSS4','p11'),('WSS40','p11'),('WSS44','p11'),('WSS45','p11'),('WSS46','p11'),('WSS49','p11'),('WSS50','p11'),('WSS54','p11'),('WSS56','p11'),('WSS6','p11'),('WSS63','p11'),('WSS66','p11'),('WSS69','p11'),('WSS7','p11'),('WSS74','p11'),('WSS75','p11'),('WSS79','p11'),('WSS83','p11'),('WSS9','p11'),('WSS92','p11'),('WSS94','p11'),('WSS96','p11'),('WSS99','p11'),('WSS10','p12'),('WSS14','p12'),('WSS15','p12'),('WSS21','p12'),('WSS28','p12'),('WSS29','p12'),('WSS37','p12'),('WSS45','p12'),('WSS47','p12'),('WSS49','p12'),('WSS5','p12'),('WSS50','p12'),('WSS52','p12'),('WSS53','p12'),('WSS54','p12'),('WSS61','p12'),('WSS64','p12'),('WSS65','p12'),('WSS67','p12'),('WSS68','p12'),('WSS70','p12'),('WSS71','p12'),('WSS75','p12'),('WSS78','p12'),('WSS8','p12'),('WSS82','p12'),('WSS89','p12'),('WSS91','p12'),('WSS93','p12'),('WSS97','p12'),('WSS99','p12'),('WSS100','p13'),('WSS17','p13'),('WSS25','p13'),('WSS29','p13'),('WSS30','p13'),('WSS32','p13'),('WSS39','p13'),('WSS41','p13'),('WSS42','p13'),('WSS44','p13'),('WSS45','p13'),('WSS46','p13'),('WSS5','p13'),('WSS51','p13'),('WSS54','p13'),('WSS57','p13'),('WSS60','p13'),('WSS61','p13'),('WSS65','p13'),('WSS69','p13'),('WSS71','p13'),('WSS80','p13'),('WSS88','p13'),('WSS95','p13'),('WSS11','p14'),('WSS16','p14'),('WSS20','p14'),('WSS23','p14'),('WSS25','p14'),('WSS28','p14'),('WSS29','p14'),('WSS36','p14'),('WSS37','p14'),('WSS39','p14'),('WSS4','p14'),('WSS40','p14'),('WSS41','p14'),('WSS42','p14'),('WSS43','p14'),('WSS45','p14'),('WSS47','p14'),('WSS52','p14'),('WSS55','p14'),('WSS61','p14'),('WSS65','p14'),('WSS66','p14'),('WSS68','p14'),('WSS71','p14'),('WSS72','p14'),('WSS73','p14'),('WSS75','p14'),('WSS76','p14'),('WSS77','p14'),('WSS79','p14'),('WSS80','p14'),('WSS81','p14'),('WSS83','p14'),('WSS84','p14'),('WSS86','p14'),('WSS87','p14'),('WSS93','p14'),('WSS95','p14'),('WSS1','p15'),('WSS10','p15'),('WSS11','p15'),('WSS13','p15'),('WSS16','p15'),('WSS19','p15'),('WSS2','p15'),('WSS21','p15'),('WSS26','p15'),('WSS3','p15'),('WSS30','p15'),('WSS34','p15'),('WSS35','p15'),('WSS38','p15'),('WSS40','p15'),('WSS41','p15'),('WSS47','p15'),('WSS49','p15'),('WSS51','p15'),('WSS55','p15'),('WSS57','p15'),('WSS63','p15'),('WSS67','p15'),('WSS69','p15'),('WSS72','p15'),('WSS8','p15'),('WSS83','p15'),('WSS87','p15'),('WSS89','p15'),('WSS9','p15'),('WSS92','p15'),('WSS93','p15'),('WSS94','p15'),('WSS97','p15'),('WSS11','p16'),('WSS12','p16'),('WSS14','p16'),('WSS15','p16'),('WSS19','p16'),('WSS25','p16'),('WSS26','p16'),('WSS27','p16'),('WSS28','p16'),('WSS3','p16'),('WSS31','p16'),('WSS33','p16'),('WSS4','p16'),('WSS40','p16'),('WSS42','p16'),('WSS48','p16'),('WSS49','p16'),('WSS51','p16'),('WSS53','p16'),('WSS56','p16'),('WSS59','p16'),('WSS61','p16'),('WSS63','p16'),('WSS65','p16'),('WSS67','p16'),('WSS68','p16'),('WSS69','p16'),('WSS71','p16'),('WSS72','p16'),('WSS74','p16'),('WSS75','p16'),('WSS77','p16'),('WSS78','p16'),('WSS79','p16'),('WSS80','p16'),('WSS84','p16'),('WSS85','p16'),('WSS9','p16'),('WSS90','p16'),('WSS92','p16'),('WSS98','p16'),('WSS12','p17'),('WSS13','p17'),('WSS14','p17'),('WSS15','p17'),('WSS2','p17'),('WSS20','p17'),('WSS25','p17'),('WSS28','p17'),('WSS3','p17'),('WSS33','p17'),('WSS34','p17'),('WSS38','p17'),('WSS39','p17'),('WSS51','p17'),('WSS55','p17'),('WSS56','p17'),('WSS59','p17'),('WSS60','p17'),('WSS62','p17'),('WSS66','p17'),('WSS71','p17'),('WSS72','p17'),('WSS76','p17'),('WSS8','p17'),('WSS81','p17'),('WSS82','p17'),('WSS85','p17'),('WSS88','p17'),('WSS89','p17'),('WSS90','p17'),('WSS92','p17'),('WSS96','p17'),('WSS98','p17'),('WSS99','p17'),('WSS1','p18'),('WSS100','p18'),('WSS16','p18'),('WSS18','p18'),('WSS19','p18'),('WSS2','p18'),('WSS20','p18'),('WSS21','p18'),('WSS23','p18'),('WSS24','p18'),('WSS26','p18'),('WSS31','p18'),('WSS32','p18'),('WSS33','p18'),('WSS36','p18'),('WSS41','p18'),('WSS42','p18'),('WSS52','p18'),('WSS54','p18'),('WSS55','p18'),('WSS58','p18'),('WSS6','p18'),('WSS60','p18'),('WSS61','p18'),('WSS62','p18'),('WSS64','p18'),('WSS65','p18'),('WSS68','p18'),('WSS75','p18'),('WSS76','p18'),('WSS77','p18'),('WSS80','p18'),('WSS82','p18'),('WSS84','p18'),('WSS86','p18'),('WSS94','p18'),('WSS95','p18'),('WSS98','p18'),('WSS99','p18'),('WSS10','p19'),('WSS12','p19'),('WSS19','p19'),('WSS25','p19'),('WSS27','p19'),('WSS31','p19'),('WSS32','p19'),('WSS33','p19'),('WSS37','p19'),('WSS43','p19'),('WSS46','p19'),('WSS49','p19'),('WSS5','p19'),('WSS50','p19'),('WSS53','p19'),('WSS59','p19'),('WSS61','p19'),('WSS63','p19'),('WSS64','p19'),('WSS66','p19'),('WSS67','p19'),('WSS69','p19'),('WSS7','p19'),('WSS72','p19'),('WSS73','p19'),('WSS78','p19'),('WSS79','p19'),('WSS82','p19'),('WSS85','p19'),('WSS86','p19'),('WSS87','p19'),('WSS88','p19'),('WSS89','p19'),('WSS97','p19'),('WSS98','p19'),('WSS15','p2'),('WSS18','p2'),('WSS19','p2'),('WSS22','p2'),('WSS35','p2'),('WSS36','p2'),('WSS39','p2'),('WSS42','p2'),('WSS43','p2'),('WSS46','p2'),('WSS52','p2'),('WSS55','p2'),('WSS57','p2'),('WSS58','p2'),('WSS6','p2'),('WSS60','p2'),('WSS69','p2'),('WSS7','p2'),('WSS70','p2'),('WSS72','p2'),('WSS74','p2'),('WSS8','p2'),('WSS81','p2'),('WSS83','p2'),('WSS84','p2'),('WSS87','p2'),('WSS89','p2'),('WSS9','p2'),('WSS91','p2'),('WSS92','p2'),('WSS94','p2'),('WSS12','p20'),('WSS14','p20'),('WSS15','p20'),('WSS18','p20'),('WSS20','p20'),('WSS22','p20'),('WSS24','p20'),('WSS27','p20'),('WSS28','p20'),('WSS29','p20'),('WSS33','p20'),('WSS34','p20'),('WSS36','p20'),('WSS38','p20'),('WSS40','p20'),('WSS48','p20'),('WSS50','p20'),('WSS53','p20'),('WSS56','p20'),('WSS57','p20'),('WSS58','p20'),('WSS60','p20'),('WSS64','p20'),('WSS70','p20'),('WSS74','p20'),('WSS76','p20'),('WSS8','p20'),('WSS81','p20'),('WSS85','p20'),('WSS88','p20'),('WSS9','p20'),('WSS91','p20'),('WSS95','p20'),('WSS96','p20'),('WSS99','p20'),('WSS10','p3'),('WSS100','p3'),('WSS12','p3'),('WSS18','p3'),('WSS22','p3'),('WSS23','p3'),('WSS28','p3'),('WSS29','p3'),('WSS3','p3'),('WSS34','p3'),('WSS35','p3'),('WSS37','p3'),('WSS38','p3'),('WSS39','p3'),('WSS40','p3'),('WSS43','p3'),('WSS44','p3'),('WSS48','p3'),('WSS52','p3'),('WSS53','p3'),('WSS54','p3'),('WSS55','p3'),('WSS58','p3'),('WSS6','p3'),('WSS62','p3'),('WSS69','p3'),('WSS70','p3'),('WSS73','p3'),('WSS85','p3'),('WSS87','p3'),('WSS89','p3'),('WSS93','p3'),('WSS94','p3'),('WSS99','p3'),('WSS10','p4'),('WSS100','p4'),('WSS11','p4'),('WSS13','p4'),('WSS14','p4'),('WSS15','p4'),('WSS16','p4'),('WSS17','p4'),('WSS18','p4'),('WSS2','p4'),('WSS22','p4'),('WSS24','p4'),('WSS26','p4'),('WSS30','p4'),('WSS31','p4'),('WSS34','p4'),('WSS35','p4'),('WSS36','p4'),('WSS37','p4'),('WSS4','p4'),('WSS48','p4'),('WSS5','p4'),('WSS51','p4'),('WSS57','p4'),('WSS6','p4'),('WSS63','p4'),('WSS68','p4'),('WSS7','p4'),('WSS70','p4'),('WSS71','p4'),('WSS73','p4'),('WSS74','p4'),('WSS75','p4'),('WSS78','p4'),('WSS81','p4'),('WSS85','p4'),('WSS86','p4'),('WSS90','p4'),('WSS94','p4'),('WSS96','p4'),('WSS98','p4'),('WSS1','p5'),('WSS12','p5'),('WSS19','p5'),('WSS2','p5'),('WSS20','p5'),('WSS23','p5'),('WSS28','p5'),('WSS3','p5'),('WSS31','p5'),('WSS34','p5'),('WSS35','p5'),('WSS42','p5'),('WSS48','p5'),('WSS53','p5'),('WSS54','p5'),('WSS67','p5'),('WSS7','p5'),('WSS72','p5'),('WSS75','p5'),('WSS77','p5'),('WSS82','p5'),('WSS84','p5'),('WSS88','p5'),('WSS90','p5'),('WSS93','p5'),('WSS96','p5'),('WSS1','p6'),('WSS11','p6'),('WSS13','p6'),('WSS14','p6'),('WSS21','p6'),('WSS24','p6'),('WSS29','p6'),('WSS30','p6'),('WSS31','p6'),('WSS32','p6'),('WSS36','p6'),('WSS43','p6'),('WSS5','p6'),('WSS50','p6'),('WSS55','p6'),('WSS56','p6'),('WSS57','p6'),('WSS59','p6'),('WSS6','p6'),('WSS60','p6'),('WSS62','p6'),('WSS64','p6'),('WSS65','p6'),('WSS66','p6'),('WSS68','p6'),('WSS7','p6'),('WSS72','p6'),('WSS73','p6'),('WSS77','p6'),('WSS80','p6'),('WSS82','p6'),('WSS91','p6'),('WSS92','p6'),('WSS93','p6'),('WSS98','p6'),('WSS17','p7'),('WSS22','p7'),('WSS23','p7'),('WSS26','p7'),('WSS30','p7'),('WSS32','p7'),('WSS39','p7'),('WSS44','p7'),('WSS45','p7'),('WSS46','p7'),('WSS5','p7'),('WSS52','p7'),('WSS53','p7'),('WSS56','p7'),('WSS58','p7'),('WSS60','p7'),('WSS67','p7'),('WSS71','p7'),('WSS74','p7'),('WSS76','p7'),('WSS77','p7'),('WSS81','p7'),('WSS86','p7'),('WSS92','p7'),('WSS97','p7'),('WSS98','p7'),('WSS99','p7'),('WSS1','p8'),('WSS100','p8'),('WSS11','p8'),('WSS16','p8'),('WSS19','p8'),('WSS2','p8'),('WSS20','p8'),('WSS21','p8'),('WSS22','p8'),('WSS24','p8'),('WSS25','p8'),('WSS26','p8'),('WSS3','p8'),('WSS30','p8'),('WSS34','p8'),('WSS35','p8'),('WSS37','p8'),('WSS41','p8'),('WSS44','p8'),('WSS45','p8'),('WSS49','p8'),('WSS5','p8'),('WSS51','p8'),('WSS56','p8'),('WSS59','p8'),('WSS62','p8'),('WSS63','p8'),('WSS65','p8'),('WSS67','p8'),('WSS7','p8'),('WSS70','p8'),('WSS73','p8'),('WSS76','p8'),('WSS79','p8'),('WSS8','p8'),('WSS81','p8'),('WSS83','p8'),('WSS84','p8'),('WSS87','p8'),('WSS95','p8'),('WSS97','p8'),('WSS99','p8'),('WSS1','p9'),('WSS10','p9'),('WSS100','p9'),('WSS11','p9'),('WSS13','p9'),('WSS15','p9'),('WSS21','p9'),('WSS23','p9'),('WSS24','p9'),('WSS27','p9'),('WSS3','p9'),('WSS30','p9'),('WSS32','p9'),('WSS4','p9'),('WSS40','p9'),('WSS44','p9'),('WSS45','p9'),('WSS47','p9'),('WSS48','p9'),('WSS53','p9'),('WSS56','p9'),('WSS57','p9'),('WSS59','p9'),('WSS73','p9'),('WSS74','p9'),('WSS80','p9'),('WSS85','p9'),('WSS86','p9'),('WSS95','p9'),('WSS97','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS52'),(1,2,'WSS23'),(2,1,'WSS52'),(2,2,'WSS34'),(2,2,'WSS84'),(3,1,'WSS45'),(3,2,'WSS38'),(3,3,'WSS51'),(4,1,'WSS26'),(4,1,'WSS49'),(4,2,'WSS63'),(5,1,'WSS35'),(5,1,'WSS63'),(5,2,'WSS65'),(6,1,'WSS65'),(6,2,'WSS48'),(6,3,'WSS69'),(7,1,'WSS69'),(7,2,'WSS66'),(7,3,'WSS60'),(8,1,'WSS99'),(8,2,'WSS65'),(8,3,'WSS48'),(9,1,'WSS64'),(9,2,'WSS46'),(9,3,'WSS50'),(10,1,'WSS49'),(10,1,'WSS63'),(10,2,'WSS50'),(11,1,'WSS50'),(11,2,'WSS57'),(11,2,'WSS69'),(12,1,'WSS81'),(12,2,'WSS62'),(12,3,'WSS60'),(13,1,'WSS65'),(13,2,'WSS57'),(13,3,'WSS23'),(14,1,'WSS62'),(14,2,'WSS51'),(14,3,'WSS67'),(15,1,'WSS35'),(15,2,'WSS53'),(15,3,'WSS67'),(16,1,'WSS99'),(16,2,'WSS39'),(16,3,'WSS53'),(17,1,'WSS65'),(17,2,'WSS59'),(17,3,'WSS54'),(18,1,'WSS98'),(18,2,'WSS50'),(18,3,'WSS48'),(19,1,'WSS78'),(19,2,'WSS32'),(19,3,'WSS84'),(20,1,'WSS63'),(20,2,'WSS66'),(20,3,'WSS60'),(21,1,'WSS65'),(21,2,'WSS48'),(21,3,'WSS67'),(22,1,'WSS34'),(22,2,'WSS46'),(22,3,'WSS59'),(23,1,'WSS85'),(23,2,'WSS41'),(23,3,'WSS31'),(24,1,'WSS28'),(24,2,'WSS38'),(24,2,'WSS54'),(25,1,'WSS65'),(25,2,'WSS48'),(25,3,'WSS84'),(26,1,'WSS82'),(26,2,'WSS60'),(26,3,'WSS68'),(27,1,'WSS46'),(27,2,'WSS68'),(27,3,'WSS64'),(28,1,'WSS81'),(28,2,'WSS62'),(28,3,'WSS60'),(29,1,'WSS52'),(29,2,'WSS32'),(30,1,'WSS65'),(30,2,'WSS48'),(30,3,'WSS29'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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
INSERT INTO `webservicelist` VALUES ('WSS1','WSS1Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS10','WSS10Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS100','WSS100Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS11','WSS11Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS12','WSS12Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS13','WSS13Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS14','WSS14Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS15','WSS15Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS16','WSS16Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS17','WSS17Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS18','WSS18Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS19','WSS19Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS2','WSS2Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS20','WSS20Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS21','WSS21Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS22','WSS22Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS23','WSS23Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS24','WSS24Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS25','WSS25Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS26','WSS26Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS27','WSS27Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS28','WSS28Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS29','WSS29Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS3','WSS3Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS30','WSS30Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS31','WSS31Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS32','WSS32Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS33','WSS33Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS34','WSS34Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS35','WSS35Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS36','WSS36Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS37','WSS37Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS38','WSS38Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS39','WSS39Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS4','WSS4Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS40','WSS40Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS41','WSS41Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS42','WSS42Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS43','WSS43Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS44','WSS44Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS45','WSS45Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS46','WSS46Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS47','WSS47Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS48','WSS48Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS49','WSS49Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS5','WSS5Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS50','WSS50Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS51','WSS51Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS52','WSS52Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS53','WSS53Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS54','WSS54Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS55','WSS55Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS56','WSS56Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS57','WSS57Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS58','WSS58Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS59','WSS59Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS6','WSS6Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS60','WSS60Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS61','WSS61Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS62','WSS62Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS63','WSS63Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS64','WSS64Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS65','WSS65Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS66','WSS66Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS67','WSS67Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS68','WSS68Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS69','WSS69Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS7','WSS7Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS70','WSS70Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS71','WSS71Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS72','WSS72Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS73','WSS73Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS74','WSS74Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS75','WSS75Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS76','WSS76Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS77','WSS77Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS78','WSS78Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS79','WSS79Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS8','WSS8Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS80','WSS80Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS81','WSS81Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS82','WSS82Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS83','WSS83Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS84','WSS84Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS85','WSS85Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS86','WSS86Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS87','WSS87Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS88','WSS88Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS89','WSS89Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS9','WSS9Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS90','WSS90Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS91','WSS91Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS92','WSS92Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS93','WSS93Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS94','WSS94Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS95','WSS95Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS96','WSS96Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS97','WSS97Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS98','WSS98Name',3,1,3,'serviceprovider','https://serviceprovider.com'),('WSS99','WSS99Name',3,1,3,'serviceprovider','https://serviceprovider.com');
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

-- Dump completed on 2023-06-29  8:14:01
