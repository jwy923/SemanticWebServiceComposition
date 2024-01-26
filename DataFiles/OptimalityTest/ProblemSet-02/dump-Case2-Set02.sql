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
INSERT INTO `initialgoalparameter` VALUES (3,'I','p1'),(4,'G','p1'),(9,'G','p1'),(10,'G','p1'),(11,'G','p1'),(14,'G','p1'),(15,'G','p1'),(16,'I','p1'),(17,'G','p1'),(18,'G','p1'),(21,'G','p1'),(22,'G','p1'),(26,'G','p1'),(28,'G','p1'),(2,'G','p10'),(4,'I','p10'),(5,'G','p10'),(7,'G','p10'),(10,'I','p10'),(14,'G','p10'),(20,'G','p10'),(21,'G','p10'),(22,'I','p10'),(23,'I','p10'),(24,'G','p10'),(26,'G','p10'),(28,'G','p10'),(29,'G','p10'),(7,'G','p11'),(9,'I','p11'),(10,'I','p11'),(11,'I','p11'),(12,'G','p11'),(16,'G','p11'),(19,'G','p11'),(20,'I','p11'),(21,'I','p11'),(24,'G','p11'),(27,'G','p11'),(29,'I','p11'),(1,'G','p12'),(5,'I','p12'),(6,'G','p12'),(8,'I','p12'),(9,'G','p12'),(12,'G','p12'),(13,'I','p12'),(14,'G','p12'),(15,'I','p12'),(20,'I','p12'),(22,'G','p12'),(23,'G','p12'),(24,'I','p12'),(27,'I','p12'),(30,'G','p12'),(1,'G','p13'),(6,'I','p13'),(7,'I','p13'),(9,'I','p13'),(11,'I','p13'),(12,'G','p13'),(14,'I','p13'),(17,'G','p13'),(19,'I','p13'),(20,'G','p13'),(23,'G','p13'),(24,'G','p13'),(25,'I','p13'),(26,'G','p13'),(27,'G','p13'),(28,'G','p13'),(29,'G','p13'),(30,'G','p13'),(1,'I','p14'),(3,'G','p14'),(6,'G','p14'),(7,'I','p14'),(9,'G','p14'),(10,'G','p14'),(11,'G','p14'),(15,'I','p14'),(16,'G','p14'),(17,'G','p14'),(18,'I','p14'),(19,'I','p14'),(20,'G','p14'),(22,'G','p14'),(26,'G','p14'),(27,'G','p14'),(30,'G','p14'),(2,'G','p15'),(7,'I','p15'),(10,'G','p15'),(11,'G','p15'),(12,'G','p15'),(13,'I','p15'),(15,'G','p15'),(16,'I','p15'),(18,'G','p15'),(19,'G','p15'),(21,'G','p15'),(22,'G','p15'),(27,'G','p15'),(28,'I','p15'),(30,'G','p15'),(2,'I','p16'),(5,'I','p16'),(7,'G','p16'),(8,'G','p16'),(14,'G','p16'),(15,'I','p16'),(16,'I','p16'),(18,'G','p16'),(21,'G','p16'),(22,'I','p16'),(23,'G','p16'),(24,'I','p16'),(26,'G','p16'),(1,'G','p17'),(5,'G','p17'),(6,'G','p17'),(8,'I','p17'),(9,'I','p17'),(10,'G','p17'),(11,'I','p17'),(13,'G','p17'),(15,'I','p17'),(17,'G','p17'),(18,'I','p17'),(21,'I','p17'),(22,'G','p17'),(24,'I','p17'),(28,'G','p17'),(30,'I','p17'),(1,'G','p18'),(3,'G','p18'),(4,'I','p18'),(7,'I','p18'),(8,'G','p18'),(10,'I','p18'),(12,'I','p18'),(17,'G','p18'),(18,'I','p18'),(19,'G','p18'),(20,'I','p18'),(22,'G','p18'),(25,'G','p18'),(27,'I','p18'),(28,'I','p18'),(29,'G','p18'),(30,'G','p18'),(2,'G','p19'),(3,'I','p19'),(8,'G','p19'),(10,'G','p19'),(14,'G','p19'),(16,'G','p19'),(17,'I','p19'),(21,'G','p19'),(24,'G','p19'),(25,'I','p19'),(26,'I','p19'),(29,'G','p19'),(1,'G','p2'),(2,'G','p2'),(3,'I','p2'),(4,'G','p2'),(8,'G','p2'),(9,'G','p2'),(12,'I','p2'),(13,'G','p2'),(15,'G','p2'),(16,'G','p2'),(17,'I','p2'),(18,'G','p2'),(19,'G','p2'),(25,'G','p2'),(26,'I','p2'),(5,'G','p20'),(6,'G','p20'),(8,'I','p20'),(12,'G','p20'),(13,'G','p20'),(14,'I','p20'),(16,'G','p20'),(20,'G','p20'),(23,'G','p20'),(25,'G','p20'),(29,'I','p20'),(1,'I','p3'),(3,'G','p3'),(4,'G','p3'),(6,'G','p3'),(8,'G','p3'),(11,'G','p3'),(12,'G','p3'),(13,'G','p3'),(14,'I','p3'),(15,'G','p3'),(16,'I','p3'),(17,'G','p3'),(21,'I','p3'),(23,'I','p3'),(24,'G','p3'),(25,'G','p3'),(27,'G','p3'),(28,'I','p3'),(29,'I','p3'),(3,'G','p4'),(4,'I','p4'),(5,'G','p4'),(11,'G','p4'),(12,'I','p4'),(13,'I','p4'),(14,'G','p4'),(22,'I','p4'),(25,'G','p4'),(29,'G','p4'),(30,'I','p4'),(2,'G','p5'),(3,'G','p5'),(4,'I','p5'),(5,'I','p5'),(6,'I','p5'),(8,'G','p5'),(12,'I','p5'),(13,'G','p5'),(15,'G','p5'),(16,'G','p5'),(18,'G','p5'),(19,'G','p5'),(20,'G','p5'),(23,'I','p5'),(25,'I','p5'),(26,'G','p5'),(28,'I','p5'),(30,'G','p5'),(1,'I','p6'),(2,'G','p6'),(3,'G','p6'),(4,'G','p6'),(5,'G','p6'),(7,'G','p6'),(8,'I','p6'),(9,'I','p6'),(11,'I','p6'),(13,'I','p6'),(18,'G','p6'),(19,'I','p6'),(20,'I','p6'),(23,'I','p6'),(27,'I','p6'),(1,'G','p7'),(2,'I','p7'),(3,'I','p7'),(4,'G','p7'),(6,'I','p7'),(7,'G','p7'),(9,'G','p7'),(18,'I','p7'),(19,'I','p7'),(20,'G','p7'),(21,'G','p7'),(22,'I','p7'),(23,'G','p7'),(24,'G','p7'),(26,'I','p7'),(27,'G','p7'),(28,'G','p7'),(30,'I','p7'),(2,'I','p8'),(5,'I','p8'),(6,'G','p8'),(7,'G','p8'),(9,'G','p8'),(10,'I','p8'),(11,'G','p8'),(13,'G','p8'),(17,'I','p8'),(19,'G','p8'),(23,'G','p8'),(25,'G','p8'),(26,'I','p8'),(28,'G','p8'),(29,'I','p8'),(1,'I','p9'),(2,'I','p9'),(4,'G','p9'),(5,'G','p9'),(6,'I','p9'),(10,'G','p9'),(14,'I','p9'),(15,'G','p9'),(17,'I','p9'),(21,'I','p9'),(24,'I','p9'),(25,'I','p9'),(27,'I','p9'),(29,'G','p9'),(30,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS103','p1'),('WSS116','p1'),('WSS140','p1'),('WSS178','p1'),('WSS179','p1'),('WSS186','p1'),('WSS188','p1'),('WSS19','p1'),('WSS192','p1'),('WSS195','p1'),('WSS204','p1'),('WSS216','p1'),('WSS234','p1'),('WSS238','p1'),('WSS240','p1'),('WSS244','p1'),('WSS247','p1'),('WSS248','p1'),('WSS252','p1'),('WSS255','p1'),('WSS256','p1'),('WSS258','p1'),('WSS259','p1'),('WSS269','p1'),('WSS286','p1'),('WSS289','p1'),('WSS294','p1'),('WSS296','p1'),('WSS299','p1'),('WSS30','p1'),('WSS42','p1'),('WSS48','p1'),('WSS53','p1'),('WSS68','p1'),('WSS72','p1'),('WSS83','p1'),('WSS87','p1'),('WSS89','p1'),('WSS114','p10'),('WSS122','p10'),('WSS155','p10'),('WSS168','p10'),('WSS171','p10'),('WSS204','p10'),('WSS208','p10'),('WSS21','p10'),('WSS211','p10'),('WSS257','p10'),('WSS284','p10'),('WSS287','p10'),('WSS29','p10'),('WSS296','p10'),('WSS30','p10'),('WSS5','p10'),('WSS51','p10'),('WSS61','p10'),('WSS63','p10'),('WSS65','p10'),('WSS76','p10'),('WSS80','p10'),('WSS88','p10'),('WSS95','p10'),('WSS105','p11'),('WSS113','p11'),('WSS125','p11'),('WSS137','p11'),('WSS146','p11'),('WSS148','p11'),('WSS154','p11'),('WSS156','p11'),('WSS16','p11'),('WSS160','p11'),('WSS18','p11'),('WSS184','p11'),('WSS187','p11'),('WSS197','p11'),('WSS200','p11'),('WSS215','p11'),('WSS217','p11'),('WSS233','p11'),('WSS237','p11'),('WSS262','p11'),('WSS269','p11'),('WSS45','p11'),('WSS51','p11'),('WSS64','p11'),('WSS82','p11'),('WSS109','p12'),('WSS118','p12'),('WSS133','p12'),('WSS136','p12'),('WSS138','p12'),('WSS147','p12'),('WSS149','p12'),('WSS168','p12'),('WSS169','p12'),('WSS173','p12'),('WSS181','p12'),('WSS185','p12'),('WSS197','p12'),('WSS211','p12'),('WSS237','p12'),('WSS241','p12'),('WSS245','p12'),('WSS247','p12'),('WSS3','p12'),('WSS33','p12'),('WSS35','p12'),('WSS44','p12'),('WSS49','p12'),('WSS50','p12'),('WSS54','p12'),('WSS57','p12'),('WSS66','p12'),('WSS7','p12'),('WSS70','p12'),('WSS72','p12'),('WSS75','p12'),('WSS78','p12'),('WSS80','p12'),('WSS81','p12'),('WSS10','p13'),('WSS102','p13'),('WSS112','p13'),('WSS128','p13'),('WSS14','p13'),('WSS17','p13'),('WSS170','p13'),('WSS183','p13'),('WSS203','p13'),('WSS205','p13'),('WSS209','p13'),('WSS210','p13'),('WSS227','p13'),('WSS228','p13'),('WSS232','p13'),('WSS254','p13'),('WSS255','p13'),('WSS261','p13'),('WSS264','p13'),('WSS270','p13'),('WSS300','p13'),('WSS31','p13'),('WSS40','p13'),('WSS43','p13'),('WSS44','p13'),('WSS53','p13'),('WSS61','p13'),('WSS62','p13'),('WSS68','p13'),('WSS73','p13'),('WSS77','p13'),('WSS79','p13'),('WSS8','p13'),('WSS11','p14'),('WSS131','p14'),('WSS140','p14'),('WSS145','p14'),('WSS150','p14'),('WSS153','p14'),('WSS155','p14'),('WSS163','p14'),('WSS165','p14'),('WSS167','p14'),('WSS171','p14'),('WSS173','p14'),('WSS189','p14'),('WSS194','p14'),('WSS196','p14'),('WSS216','p14'),('WSS218','p14'),('WSS220','p14'),('WSS222','p14'),('WSS239','p14'),('WSS24','p14'),('WSS246','p14'),('WSS25','p14'),('WSS282','p14'),('WSS288','p14'),('WSS29','p14'),('WSS292','p14'),('WSS31','p14'),('WSS37','p14'),('WSS41','p14'),('WSS58','p14'),('WSS78','p14'),('WSS105','p15'),('WSS122','p15'),('WSS126','p15'),('WSS13','p15'),('WSS134','p15'),('WSS141','p15'),('WSS146','p15'),('WSS149','p15'),('WSS163','p15'),('WSS198','p15'),('WSS202','p15'),('WSS21','p15'),('WSS213','p15'),('WSS224','p15'),('WSS24','p15'),('WSS250','p15'),('WSS260','p15'),('WSS279','p15'),('WSS280','p15'),('WSS4','p15'),('WSS43','p15'),('WSS88','p15'),('WSS9','p15'),('WSS1','p16'),('WSS111','p16'),('WSS114','p16'),('WSS125','p16'),('WSS148','p16'),('WSS166','p16'),('WSS174','p16'),('WSS191','p16'),('WSS2','p16'),('WSS22','p16'),('WSS220','p16'),('WSS232','p16'),('WSS243','p16'),('WSS273','p16'),('WSS275','p16'),('WSS284','p16'),('WSS290','p16'),('WSS33','p16'),('WSS35','p16'),('WSS42','p16'),('WSS45','p16'),('WSS49','p16'),('WSS59','p16'),('WSS62','p16'),('WSS97','p16'),('WSS104','p17'),('WSS115','p17'),('WSS123','p17'),('WSS13','p17'),('WSS131','p17'),('WSS151','p17'),('WSS158','p17'),('WSS186','p17'),('WSS187','p17'),('WSS196','p17'),('WSS199','p17'),('WSS201','p17'),('WSS206','p17'),('WSS217','p17'),('WSS222','p17'),('WSS238','p17'),('WSS244','p17'),('WSS264','p17'),('WSS277','p17'),('WSS283','p17'),('WSS292','p17'),('WSS34','p17'),('WSS40','p17'),('WSS41','p17'),('WSS47','p17'),('WSS89','p17'),('WSS94','p17'),('WSS104','p18'),('WSS119','p18'),('WSS169','p18'),('WSS170','p18'),('WSS180','p18'),('WSS19','p18'),('WSS193','p18'),('WSS212','p18'),('WSS22','p18'),('WSS223','p18'),('WSS240','p18'),('WSS246','p18'),('WSS248','p18'),('WSS251','p18'),('WSS256','p18'),('WSS266','p18'),('WSS274','p18'),('WSS28','p18'),('WSS288','p18'),('WSS57','p18'),('WSS6','p18'),('WSS64','p18'),('WSS71','p18'),('WSS73','p18'),('WSS8','p18'),('WSS86','p18'),('WSS95','p18'),('WSS111','p19'),('WSS135','p19'),('WSS139','p19'),('WSS152','p19'),('WSS161','p19'),('WSS180','p19'),('WSS184','p19'),('WSS201','p19'),('WSS202','p19'),('WSS209','p19'),('WSS230','p19'),('WSS251','p19'),('WSS253','p19'),('WSS26','p19'),('WSS281','p19'),('WSS285','p19'),('WSS291','p19'),('WSS297','p19'),('WSS32','p19'),('WSS36','p19'),('WSS38','p19'),('WSS54','p19'),('WSS59','p19'),('WSS94','p19'),('WSS98','p19'),('WSS99','p19'),('WSS107','p2'),('WSS119','p2'),('WSS129','p2'),('WSS136','p2'),('WSS143','p2'),('WSS144','p2'),('WSS157','p2'),('WSS159','p2'),('WSS165','p2'),('WSS166','p2'),('WSS167','p2'),('WSS174','p2'),('WSS182','p2'),('WSS190','p2'),('WSS193','p2'),('WSS195','p2'),('WSS228','p2'),('WSS230','p2'),('WSS235','p2'),('WSS245','p2'),('WSS250','p2'),('WSS261','p2'),('WSS273','p2'),('WSS286','p2'),('WSS287','p2'),('WSS299','p2'),('WSS55','p2'),('WSS66','p2'),('WSS7','p2'),('WSS74','p2'),('WSS75','p2'),('WSS77','p2'),('WSS79','p2'),('WSS97','p2'),('WSS109','p20'),('WSS116','p20'),('WSS120','p20'),('WSS126','p20'),('WSS15','p20'),('WSS151','p20'),('WSS154','p20'),('WSS178','p20'),('WSS189','p20'),('WSS200','p20'),('WSS203','p20'),('WSS207','p20'),('WSS212','p20'),('WSS213','p20'),('WSS215','p20'),('WSS23','p20'),('WSS26','p20'),('WSS275','p20'),('WSS278','p20'),('WSS34','p20'),('WSS38','p20'),('WSS39','p20'),('WSS60','p20'),('WSS69','p20'),('WSS71','p20'),('WSS81','p20'),('WSS82','p20'),('WSS84','p20'),('WSS96','p20'),('WSS99','p20'),('WSS100','p3'),('WSS101','p3'),('WSS106','p3'),('WSS124','p3'),('WSS132','p3'),('WSS137','p3'),('WSS139','p3'),('WSS144','p3'),('WSS153','p3'),('WSS18','p3'),('WSS185','p3'),('WSS194','p3'),('WSS219','p3'),('WSS226','p3'),('WSS229','p3'),('WSS236','p3'),('WSS252','p3'),('WSS254','p3'),('WSS259','p3'),('WSS262','p3'),('WSS279','p3'),('WSS285','p3'),('WSS291','p3'),('WSS293','p3'),('WSS48','p3'),('WSS56','p3'),('WSS60','p3'),('WSS67','p3'),('WSS76','p3'),('WSS90','p3'),('WSS93','p3'),('WSS96','p3'),('WSS1','p4'),('WSS106','p4'),('WSS123','p4'),('WSS147','p4'),('WSS150','p4'),('WSS172','p4'),('WSS176','p4'),('WSS177','p4'),('WSS183','p4'),('WSS219','p4'),('WSS221','p4'),('WSS233','p4'),('WSS242','p4'),('WSS25','p4'),('WSS265','p4'),('WSS266','p4'),('WSS27','p4'),('WSS297','p4'),('WSS298','p4'),('WSS46','p4'),('WSS47','p4'),('WSS69','p4'),('WSS85','p4'),('WSS87','p4'),('WSS110','p5'),('WSS117','p5'),('WSS12','p5'),('WSS120','p5'),('WSS121','p5'),('WSS129','p5'),('WSS134','p5'),('WSS138','p5'),('WSS159','p5'),('WSS162','p5'),('WSS188','p5'),('WSS192','p5'),('WSS207','p5'),('WSS208','p5'),('WSS214','p5'),('WSS223','p5'),('WSS23','p5'),('WSS231','p5'),('WSS236','p5'),('WSS242','p5'),('WSS249','p5'),('WSS271','p5'),('WSS272','p5'),('WSS294','p5'),('WSS295','p5'),('WSS3','p5'),('WSS300','p5'),('WSS37','p5'),('WSS84','p5'),('WSS92','p5'),('WSS10','p6'),('WSS102','p6'),('WSS103','p6'),('WSS107','p6'),('WSS108','p6'),('WSS112','p6'),('WSS115','p6'),('WSS127','p6'),('WSS130','p6'),('WSS143','p6'),('WSS152','p6'),('WSS156','p6'),('WSS158','p6'),('WSS16','p6'),('WSS160','p6'),('WSS164','p6'),('WSS175','p6'),('WSS199','p6'),('WSS205','p6'),('WSS210','p6'),('WSS214','p6'),('WSS225','p6'),('WSS226','p6'),('WSS227','p6'),('WSS253','p6'),('WSS260','p6'),('WSS263','p6'),('WSS265','p6'),('WSS27','p6'),('WSS271','p6'),('WSS272','p6'),('WSS283','p6'),('WSS298','p6'),('WSS39','p6'),('WSS5','p6'),('WSS50','p6'),('WSS52','p6'),('WSS56','p6'),('WSS74','p6'),('WSS85','p6'),('WSS98','p6'),('WSS101','p7'),('WSS11','p7'),('WSS117','p7'),('WSS121','p7'),('WSS130','p7'),('WSS135','p7'),('WSS142','p7'),('WSS162','p7'),('WSS175','p7'),('WSS191','p7'),('WSS198','p7'),('WSS2','p7'),('WSS20','p7'),('WSS224','p7'),('WSS231','p7'),('WSS243','p7'),('WSS257','p7'),('WSS258','p7'),('WSS268','p7'),('WSS276','p7'),('WSS278','p7'),('WSS28','p7'),('WSS289','p7'),('WSS290','p7'),('WSS293','p7'),('WSS36','p7'),('WSS58','p7'),('WSS83','p7'),('WSS90','p7'),('WSS91','p7'),('WSS93','p7'),('WSS100','p8'),('WSS108','p8'),('WSS118','p8'),('WSS12','p8'),('WSS127','p8'),('WSS128','p8'),('WSS14','p8'),('WSS141','p8'),('WSS142','p8'),('WSS15','p8'),('WSS157','p8'),('WSS17','p8'),('WSS176','p8'),('WSS181','p8'),('WSS190','p8'),('WSS20','p8'),('WSS235','p8'),('WSS239','p8'),('WSS268','p8'),('WSS274','p8'),('WSS276','p8'),('WSS282','p8'),('WSS32','p8'),('WSS55','p8'),('WSS6','p8'),('WSS9','p8'),('WSS91','p8'),('WSS110','p9'),('WSS124','p9'),('WSS132','p9'),('WSS133','p9'),('WSS161','p9'),('WSS172','p9'),('WSS177','p9'),('WSS179','p9'),('WSS182','p9'),('WSS225','p9'),('WSS229','p9'),('WSS249','p9'),('WSS263','p9'),('WSS267','p9'),('WSS270','p9'),('WSS277','p9'),('WSS280','p9'),('WSS281','p9'),('WSS295','p9'),('WSS4','p9'),('WSS46','p9'),('WSS52','p9'),('WSS67','p9'),('WSS70','p9'),('WSS86','p9'),('WSS92','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS11','p1'),('WSS114','p1'),('WSS121','p1'),('WSS124','p1'),('WSS129','p1'),('WSS130','p1'),('WSS135','p1'),('WSS136','p1'),('WSS140','p1'),('WSS147','p1'),('WSS15','p1'),('WSS154','p1'),('WSS158','p1'),('WSS16','p1'),('WSS162','p1'),('WSS163','p1'),('WSS165','p1'),('WSS167','p1'),('WSS17','p1'),('WSS170','p1'),('WSS188','p1'),('WSS194','p1'),('WSS196','p1'),('WSS2','p1'),('WSS209','p1'),('WSS21','p1'),('WSS212','p1'),('WSS215','p1'),('WSS220','p1'),('WSS223','p1'),('WSS225','p1'),('WSS236','p1'),('WSS237','p1'),('WSS242','p1'),('WSS265','p1'),('WSS269','p1'),('WSS27','p1'),('WSS275','p1'),('WSS276','p1'),('WSS283','p1'),('WSS297','p1'),('WSS30','p1'),('WSS37','p1'),('WSS38','p1'),('WSS40','p1'),('WSS50','p1'),('WSS53','p1'),('WSS59','p1'),('WSS60','p1'),('WSS65','p1'),('WSS66','p1'),('WSS82','p1'),('WSS92','p1'),('WSS94','p1'),('WSS96','p1'),('WSS97','p1'),('WSS99','p1'),('WSS10','p10'),('WSS12','p10'),('WSS120','p10'),('WSS123','p10'),('WSS132','p10'),('WSS133','p10'),('WSS138','p10'),('WSS140','p10'),('WSS141','p10'),('WSS156','p10'),('WSS161','p10'),('WSS166','p10'),('WSS173','p10'),('WSS176','p10'),('WSS18','p10'),('WSS184','p10'),('WSS185','p10'),('WSS189','p10'),('WSS197','p10'),('WSS199','p10'),('WSS20','p10'),('WSS201','p10'),('WSS206','p10'),('WSS210','p10'),('WSS216','p10'),('WSS224','p10'),('WSS237','p10'),('WSS253','p10'),('WSS257','p10'),('WSS260','p10'),('WSS267','p10'),('WSS270','p10'),('WSS271','p10'),('WSS274','p10'),('WSS278','p10'),('WSS280','p10'),('WSS283','p10'),('WSS293','p10'),('WSS296','p10'),('WSS33','p10'),('WSS44','p10'),('WSS49','p10'),('WSS54','p10'),('WSS6','p10'),('WSS62','p10'),('WSS65','p10'),('WSS68','p10'),('WSS69','p10'),('WSS87','p10'),('WSS101','p11'),('WSS102','p11'),('WSS103','p11'),('WSS105','p11'),('WSS109','p11'),('WSS112','p11'),('WSS123','p11'),('WSS136','p11'),('WSS142','p11'),('WSS143','p11'),('WSS146','p11'),('WSS164','p11'),('WSS165','p11'),('WSS168','p11'),('WSS17','p11'),('WSS180','p11'),('WSS203','p11'),('WSS205','p11'),('WSS209','p11'),('WSS233','p11'),('WSS234','p11'),('WSS24','p11'),('WSS244','p11'),('WSS249','p11'),('WSS259','p11'),('WSS273','p11'),('WSS285','p11'),('WSS289','p11'),('WSS292','p11'),('WSS293','p11'),('WSS36','p11'),('WSS43','p11'),('WSS48','p11'),('WSS49','p11'),('WSS5','p11'),('WSS50','p11'),('WSS51','p11'),('WSS53','p11'),('WSS67','p11'),('WSS69','p11'),('WSS78','p11'),('WSS82','p11'),('WSS85','p11'),('WSS86','p11'),('WSS92','p11'),('WSS94','p11'),('WSS1','p12'),('WSS100','p12'),('WSS110','p12'),('WSS119','p12'),('WSS134','p12'),('WSS138','p12'),('WSS142','p12'),('WSS147','p12'),('WSS152','p12'),('WSS156','p12'),('WSS167','p12'),('WSS178','p12'),('WSS181','p12'),('WSS183','p12'),('WSS187','p12'),('WSS197','p12'),('WSS213','p12'),('WSS224','p12'),('WSS228','p12'),('WSS231','p12'),('WSS232','p12'),('WSS233','p12'),('WSS24','p12'),('WSS240','p12'),('WSS248','p12'),('WSS25','p12'),('WSS250','p12'),('WSS251','p12'),('WSS255','p12'),('WSS261','p12'),('WSS263','p12'),('WSS273','p12'),('WSS274','p12'),('WSS28','p12'),('WSS286','p12'),('WSS296','p12'),('WSS298','p12'),('WSS39','p12'),('WSS40','p12'),('WSS42','p12'),('WSS64','p12'),('WSS70','p12'),('WSS74','p12'),('WSS83','p12'),('WSS84','p12'),('WSS89','p12'),('WSS91','p12'),('WSS1','p13'),('WSS113','p13'),('WSS114','p13'),('WSS126','p13'),('WSS136','p13'),('WSS137','p13'),('WSS139','p13'),('WSS14','p13'),('WSS146','p13'),('WSS148','p13'),('WSS149','p13'),('WSS158','p13'),('WSS16','p13'),('WSS162','p13'),('WSS165','p13'),('WSS169','p13'),('WSS170','p13'),('WSS171','p13'),('WSS173','p13'),('WSS179','p13'),('WSS180','p13'),('WSS184','p13'),('WSS189','p13'),('WSS193','p13'),('WSS194','p13'),('WSS197','p13'),('WSS205','p13'),('WSS208','p13'),('WSS226','p13'),('WSS227','p13'),('WSS23','p13'),('WSS232','p13'),('WSS238','p13'),('WSS240','p13'),('WSS248','p13'),('WSS252','p13'),('WSS257','p13'),('WSS259','p13'),('WSS267','p13'),('WSS27','p13'),('WSS279','p13'),('WSS285','p13'),('WSS287','p13'),('WSS289','p13'),('WSS29','p13'),('WSS292','p13'),('WSS295','p13'),('WSS32','p13'),('WSS4','p13'),('WSS42','p13'),('WSS46','p13'),('WSS67','p13'),('WSS71','p13'),('WSS72','p13'),('WSS77','p13'),('WSS83','p13'),('WSS84','p13'),('WSS85','p13'),('WSS95','p13'),('WSS98','p13'),('WSS103','p14'),('WSS105','p14'),('WSS108','p14'),('WSS113','p14'),('WSS115','p14'),('WSS121','p14'),('WSS124','p14'),('WSS129','p14'),('WSS13','p14'),('WSS141','p14'),('WSS153','p14'),('WSS154','p14'),('WSS155','p14'),('WSS156','p14'),('WSS170','p14'),('WSS177','p14'),('WSS18','p14'),('WSS194','p14'),('WSS199','p14'),('WSS203','p14'),('WSS208','p14'),('WSS210','p14'),('WSS212','p14'),('WSS214','p14'),('WSS216','p14'),('WSS218','p14'),('WSS22','p14'),('WSS220','p14'),('WSS221','p14'),('WSS225','p14'),('WSS227','p14'),('WSS229','p14'),('WSS236','p14'),('WSS237','p14'),('WSS243','p14'),('WSS244','p14'),('WSS248','p14'),('WSS253','p14'),('WSS262','p14'),('WSS263','p14'),('WSS266','p14'),('WSS277','p14'),('WSS279','p14'),('WSS282','p14'),('WSS293','p14'),('WSS299','p14'),('WSS31','p14'),('WSS33','p14'),('WSS43','p14'),('WSS51','p14'),('WSS52','p14'),('WSS58','p14'),('WSS61','p14'),('WSS62','p14'),('WSS65','p14'),('WSS75','p14'),('WSS76','p14'),('WSS79','p14'),('WSS86','p14'),('WSS87','p14'),('WSS96','p14'),('WSS103','p15'),('WSS104','p15'),('WSS108','p15'),('WSS112','p15'),('WSS116','p15'),('WSS120','p15'),('WSS125','p15'),('WSS127','p15'),('WSS135','p15'),('WSS14','p15'),('WSS141','p15'),('WSS149','p15'),('WSS153','p15'),('WSS157','p15'),('WSS167','p15'),('WSS19','p15'),('WSS196','p15'),('WSS20','p15'),('WSS201','p15'),('WSS203','p15'),('WSS207','p15'),('WSS21','p15'),('WSS211','p15'),('WSS216','p15'),('WSS236','p15'),('WSS240','p15'),('WSS243','p15'),('WSS247','p15'),('WSS250','p15'),('WSS251','p15'),('WSS252','p15'),('WSS26','p15'),('WSS273','p15'),('WSS28','p15'),('WSS280','p15'),('WSS282','p15'),('WSS284','p15'),('WSS290','p15'),('WSS291','p15'),('WSS294','p15'),('WSS300','p15'),('WSS32','p15'),('WSS34','p15'),('WSS36','p15'),('WSS37','p15'),('WSS38','p15'),('WSS40','p15'),('WSS52','p15'),('WSS70','p15'),('WSS77','p15'),('WSS78','p15'),('WSS80','p15'),('WSS94','p15'),('WSS10','p16'),('WSS108','p16'),('WSS120','p16'),('WSS121','p16'),('WSS123','p16'),('WSS128','p16'),('WSS137','p16'),('WSS139','p16'),('WSS140','p16'),('WSS142','p16'),('WSS148','p16'),('WSS150','p16'),('WSS151','p16'),('WSS172','p16'),('WSS174','p16'),('WSS180','p16'),('WSS181','p16'),('WSS184','p16'),('WSS188','p16'),('WSS19','p16'),('WSS190','p16'),('WSS2','p16'),('WSS205','p16'),('WSS211','p16'),('WSS217','p16'),('WSS22','p16'),('WSS227','p16'),('WSS228','p16'),('WSS230','p16'),('WSS231','p16'),('WSS232','p16'),('WSS233','p16'),('WSS235','p16'),('WSS238','p16'),('WSS239','p16'),('WSS241','p16'),('WSS251','p16'),('WSS261','p16'),('WSS268','p16'),('WSS270','p16'),('WSS276','p16'),('WSS278','p16'),('WSS285','p16'),('WSS286','p16'),('WSS288','p16'),('WSS291','p16'),('WSS299','p16'),('WSS31','p16'),('WSS33','p16'),('WSS47','p16'),('WSS48','p16'),('WSS54','p16'),('WSS6','p16'),('WSS62','p16'),('WSS66','p16'),('WSS70','p16'),('WSS89','p16'),('WSS9','p16'),('WSS91','p16'),('WSS95','p16'),('WSS10','p17'),('WSS106','p17'),('WSS110','p17'),('WSS112','p17'),('WSS113','p17'),('WSS121','p17'),('WSS125','p17'),('WSS138','p17'),('WSS14','p17'),('WSS143','p17'),('WSS145','p17'),('WSS148','p17'),('WSS150','p17'),('WSS162','p17'),('WSS163','p17'),('WSS166','p17'),('WSS168','p17'),('WSS182','p17'),('WSS187','p17'),('WSS189','p17'),('WSS207','p17'),('WSS210','p17'),('WSS213','p17'),('WSS214','p17'),('WSS215','p17'),('WSS224','p17'),('WSS242','p17'),('WSS245','p17'),('WSS246','p17'),('WSS247','p17'),('WSS254','p17'),('WSS257','p17'),('WSS26','p17'),('WSS268','p17'),('WSS270','p17'),('WSS277','p17'),('WSS280','p17'),('WSS285','p17'),('WSS287','p17'),('WSS3','p17'),('WSS36','p17'),('WSS44','p17'),('WSS56','p17'),('WSS74','p17'),('WSS81','p17'),('WSS83','p17'),('WSS88','p17'),('WSS9','p17'),('WSS93','p17'),('WSS96','p17'),('WSS101','p18'),('WSS105','p18'),('WSS107','p18'),('WSS109','p18'),('WSS111','p18'),('WSS12','p18'),('WSS122','p18'),('WSS123','p18'),('WSS127','p18'),('WSS135','p18'),('WSS146','p18'),('WSS150','p18'),('WSS153','p18'),('WSS154','p18'),('WSS155','p18'),('WSS157','p18'),('WSS161','p18'),('WSS176','p18'),('WSS177','p18'),('WSS190','p18'),('WSS193','p18'),('WSS195','p18'),('WSS203','p18'),('WSS204','p18'),('WSS206','p18'),('WSS21','p18'),('WSS212','p18'),('WSS216','p18'),('WSS223','p18'),('WSS225','p18'),('WSS226','p18'),('WSS23','p18'),('WSS234','p18'),('WSS254','p18'),('WSS255','p18'),('WSS257','p18'),('WSS258','p18'),('WSS259','p18'),('WSS261','p18'),('WSS265','p18'),('WSS268','p18'),('WSS269','p18'),('WSS27','p18'),('WSS271','p18'),('WSS272','p18'),('WSS274','p18'),('WSS275','p18'),('WSS295','p18'),('WSS31','p18'),('WSS34','p18'),('WSS4','p18'),('WSS55','p18'),('WSS59','p18'),('WSS68','p18'),('WSS7','p18'),('WSS76','p18'),('WSS87','p18'),('WSS91','p18'),('WSS98','p18'),('WSS1','p19'),('WSS104','p19'),('WSS108','p19'),('WSS114','p19'),('WSS117','p19'),('WSS119','p19'),('WSS120','p19'),('WSS122','p19'),('WSS126','p19'),('WSS137','p19'),('WSS15','p19'),('WSS151','p19'),('WSS159','p19'),('WSS172','p19'),('WSS174','p19'),('WSS175','p19'),('WSS182','p19'),('WSS190','p19'),('WSS200','p19'),('WSS201','p19'),('WSS202','p19'),('WSS220','p19'),('WSS227','p19'),('WSS228','p19'),('WSS238','p19'),('WSS241','p19'),('WSS243','p19'),('WSS244','p19'),('WSS250','p19'),('WSS256','p19'),('WSS262','p19'),('WSS271','p19'),('WSS296','p19'),('WSS32','p19'),('WSS4','p19'),('WSS41','p19'),('WSS43','p19'),('WSS45','p19'),('WSS54','p19'),('WSS55','p19'),('WSS56','p19'),('WSS58','p19'),('WSS68','p19'),('WSS69','p19'),('WSS75','p19'),('WSS76','p19'),('WSS79','p19'),('WSS80','p19'),('WSS81','p19'),('WSS85','p19'),('WSS86','p19'),('WSS88','p19'),('WSS91','p19'),('WSS95','p19'),('WSS101','p2'),('WSS102','p2'),('WSS109','p2'),('WSS111','p2'),('WSS115','p2'),('WSS116','p2'),('WSS117','p2'),('WSS12','p2'),('WSS122','p2'),('WSS128','p2'),('WSS13','p2'),('WSS149','p2'),('WSS157','p2'),('WSS166','p2'),('WSS169','p2'),('WSS171','p2'),('WSS173','p2'),('WSS176','p2'),('WSS180','p2'),('WSS185','p2'),('WSS198','p2'),('WSS206','p2'),('WSS213','p2'),('WSS218','p2'),('WSS222','p2'),('WSS224','p2'),('WSS229','p2'),('WSS231','p2'),('WSS233','p2'),('WSS236','p2'),('WSS241','p2'),('WSS245','p2'),('WSS249','p2'),('WSS258','p2'),('WSS261','p2'),('WSS264','p2'),('WSS27','p2'),('WSS272','p2'),('WSS277','p2'),('WSS281','p2'),('WSS283','p2'),('WSS284','p2'),('WSS29','p2'),('WSS290','p2'),('WSS298','p2'),('WSS299','p2'),('WSS30','p2'),('WSS300','p2'),('WSS35','p2'),('WSS37','p2'),('WSS41','p2'),('WSS42','p2'),('WSS49','p2'),('WSS55','p2'),('WSS65','p2'),('WSS66','p2'),('WSS7','p2'),('WSS8','p2'),('WSS80','p2'),('WSS82','p2'),('WSS9','p2'),('WSS98','p2'),('WSS101','p20'),('WSS104','p20'),('WSS106','p20'),('WSS110','p20'),('WSS132','p20'),('WSS140','p20'),('WSS144','p20'),('WSS15','p20'),('WSS158','p20'),('WSS175','p20'),('WSS178','p20'),('WSS191','p20'),('WSS193','p20'),('WSS199','p20'),('WSS204','p20'),('WSS214','p20'),('WSS217','p20'),('WSS22','p20'),('WSS221','p20'),('WSS228','p20'),('WSS229','p20'),('WSS237','p20'),('WSS25','p20'),('WSS253','p20'),('WSS254','p20'),('WSS258','p20'),('WSS259','p20'),('WSS281','p20'),('WSS287','p20'),('WSS299','p20'),('WSS34','p20'),('WSS39','p20'),('WSS45','p20'),('WSS46','p20'),('WSS49','p20'),('WSS50','p20'),('WSS52','p20'),('WSS56','p20'),('WSS58','p20'),('WSS60','p20'),('WSS61','p20'),('WSS63','p20'),('WSS64','p20'),('WSS72','p20'),('WSS73','p20'),('WSS74','p20'),('WSS8','p20'),('WSS83','p20'),('WSS84','p20'),('WSS90','p20'),('WSS93','p20'),('WSS99','p20'),('WSS11','p3'),('WSS111','p3'),('WSS115','p3'),('WSS118','p3'),('WSS12','p3'),('WSS124','p3'),('WSS125','p3'),('WSS127','p3'),('WSS134','p3'),('WSS145','p3'),('WSS151','p3'),('WSS160','p3'),('WSS171','p3'),('WSS172','p3'),('WSS179','p3'),('WSS182','p3'),('WSS186','p3'),('WSS187','p3'),('WSS189','p3'),('WSS193','p3'),('WSS209','p3'),('WSS218','p3'),('WSS221','p3'),('WSS222','p3'),('WSS225','p3'),('WSS234','p3'),('WSS235','p3'),('WSS239','p3'),('WSS244','p3'),('WSS246','p3'),('WSS249','p3'),('WSS252','p3'),('WSS253','p3'),('WSS260','p3'),('WSS263','p3'),('WSS269','p3'),('WSS278','p3'),('WSS28','p3'),('WSS280','p3'),('WSS281','p3'),('WSS286','p3'),('WSS295','p3'),('WSS3','p3'),('WSS30','p3'),('WSS300','p3'),('WSS39','p3'),('WSS48','p3'),('WSS57','p3'),('WSS59','p3'),('WSS64','p3'),('WSS66','p3'),('WSS70','p3'),('WSS73','p3'),('WSS75','p3'),('WSS89','p3'),('WSS94','p3'),('WSS95','p3'),('WSS107','p4'),('WSS110','p4'),('WSS117','p4'),('WSS125','p4'),('WSS128','p4'),('WSS134','p4'),('WSS135','p4'),('WSS136','p4'),('WSS139','p4'),('WSS14','p4'),('WSS141','p4'),('WSS142','p4'),('WSS143','p4'),('WSS156','p4'),('WSS164','p4'),('WSS168','p4'),('WSS169','p4'),('WSS174','p4'),('WSS182','p4'),('WSS183','p4'),('WSS188','p4'),('WSS190','p4'),('WSS192','p4'),('WSS198','p4'),('WSS2','p4'),('WSS205','p4'),('WSS214','p4'),('WSS219','p4'),('WSS226','p4'),('WSS230','p4'),('WSS243','p4'),('WSS245','p4'),('WSS246','p4'),('WSS25','p4'),('WSS250','p4'),('WSS26','p4'),('WSS267','p4'),('WSS272','p4'),('WSS290','p4'),('WSS296','p4'),('WSS297','p4'),('WSS298','p4'),('WSS35','p4'),('WSS39','p4'),('WSS42','p4'),('WSS5','p4'),('WSS56','p4'),('WSS6','p4'),('WSS60','p4'),('WSS62','p4'),('WSS67','p4'),('WSS76','p4'),('WSS77','p4'),('WSS79','p4'),('WSS80','p4'),('WSS81','p4'),('WSS102','p5'),('WSS103','p5'),('WSS106','p5'),('WSS107','p5'),('WSS115','p5'),('WSS122','p5'),('WSS128','p5'),('WSS129','p5'),('WSS133','p5'),('WSS147','p5'),('WSS15','p5'),('WSS151','p5'),('WSS157','p5'),('WSS159','p5'),('WSS16','p5'),('WSS169','p5'),('WSS17','p5'),('WSS177','p5'),('WSS184','p5'),('WSS196','p5'),('WSS197','p5'),('WSS198','p5'),('WSS200','p5'),('WSS202','p5'),('WSS210','p5'),('WSS213','p5'),('WSS220','p5'),('WSS235','p5'),('WSS241','p5'),('WSS242','p5'),('WSS246','p5'),('WSS249','p5'),('WSS256','p5'),('WSS262','p5'),('WSS265','p5'),('WSS267','p5'),('WSS269','p5'),('WSS273','p5'),('WSS279','p5'),('WSS288','p5'),('WSS289','p5'),('WSS29','p5'),('WSS290','p5'),('WSS293','p5'),('WSS294','p5'),('WSS298','p5'),('WSS43','p5'),('WSS44','p5'),('WSS46','p5'),('WSS47','p5'),('WSS53','p5'),('WSS54','p5'),('WSS55','p5'),('WSS6','p5'),('WSS60','p5'),('WSS61','p5'),('WSS63','p5'),('WSS7','p5'),('WSS78','p5'),('WSS8','p5'),('WSS89','p5'),('WSS93','p5'),('WSS96','p5'),('WSS97','p5'),('WSS99','p5'),('WSS1','p6'),('WSS100','p6'),('WSS105','p6'),('WSS116','p6'),('WSS130','p6'),('WSS131','p6'),('WSS132','p6'),('WSS139','p6'),('WSS144','p6'),('WSS145','p6'),('WSS153','p6'),('WSS16','p6'),('WSS172','p6'),('WSS18','p6'),('WSS186','p6'),('WSS191','p6'),('WSS192','p6'),('WSS20','p6'),('WSS200','p6'),('WSS202','p6'),('WSS207','p6'),('WSS208','p6'),('WSS215','p6'),('WSS217','p6'),('WSS22','p6'),('WSS223','p6'),('WSS232','p6'),('WSS24','p6'),('WSS247','p6'),('WSS248','p6'),('WSS25','p6'),('WSS263','p6'),('WSS266','p6'),('WSS279','p6'),('WSS282','p6'),('WSS287','p6'),('WSS288','p6'),('WSS289','p6'),('WSS29','p6'),('WSS291','p6'),('WSS292','p6'),('WSS294','p6'),('WSS297','p6'),('WSS3','p6'),('WSS34','p6'),('WSS48','p6'),('WSS63','p6'),('WSS64','p6'),('WSS71','p6'),('WSS72','p6'),('WSS85','p6'),('WSS88','p6'),('WSS92','p6'),('WSS97','p6'),('WSS104','p7'),('WSS106','p7'),('WSS111','p7'),('WSS118','p7'),('WSS126','p7'),('WSS13','p7'),('WSS130','p7'),('WSS131','p7'),('WSS134','p7'),('WSS144','p7'),('WSS146','p7'),('WSS150','p7'),('WSS152','p7'),('WSS154','p7'),('WSS155','p7'),('WSS160','p7'),('WSS161','p7'),('WSS164','p7'),('WSS175','p7'),('WSS176','p7'),('WSS177','p7'),('WSS178','p7'),('WSS179','p7'),('WSS181','p7'),('WSS183','p7'),('WSS185','p7'),('WSS186','p7'),('WSS191','p7'),('WSS192','p7'),('WSS199','p7'),('WSS2','p7'),('WSS202','p7'),('WSS208','p7'),('WSS209','p7'),('WSS21','p7'),('WSS211','p7'),('WSS212','p7'),('WSS218','p7'),('WSS219','p7'),('WSS222','p7'),('WSS229','p7'),('WSS239','p7'),('WSS251','p7'),('WSS264','p7'),('WSS266','p7'),('WSS268','p7'),('WSS271','p7'),('WSS276','p7'),('WSS284','p7'),('WSS297','p7'),('WSS300','p7'),('WSS33','p7'),('WSS44','p7'),('WSS45','p7'),('WSS5','p7'),('WSS53','p7'),('WSS57','p7'),('WSS58','p7'),('WSS63','p7'),('WSS67','p7'),('WSS68','p7'),('WSS72','p7'),('WSS74','p7'),('WSS75','p7'),('WSS78','p7'),('WSS79','p7'),('WSS8','p7'),('WSS84','p7'),('WSS88','p7'),('WSS90','p7'),('WSS92','p7'),('WSS99','p7'),('WSS109','p8'),('WSS11','p8'),('WSS117','p8'),('WSS118','p8'),('WSS13','p8'),('WSS131','p8'),('WSS132','p8'),('WSS144','p8'),('WSS152','p8'),('WSS155','p8'),('WSS160','p8'),('WSS163','p8'),('WSS166','p8'),('WSS167','p8'),('WSS183','p8'),('WSS187','p8'),('WSS188','p8'),('WSS19','p8'),('WSS191','p8'),('WSS192','p8'),('WSS195','p8'),('WSS198','p8'),('WSS211','p8'),('WSS215','p8'),('WSS219','p8'),('WSS222','p8'),('WSS231','p8'),('WSS234','p8'),('WSS239','p8'),('WSS252','p8'),('WSS264','p8'),('WSS265','p8'),('WSS272','p8'),('WSS274','p8'),('WSS276','p8'),('WSS292','p8'),('WSS295','p8'),('WSS35','p8'),('WSS38','p8'),('WSS41','p8'),('WSS57','p8'),('WSS71','p8'),('WSS73','p8'),('WSS10','p9'),('WSS100','p9'),('WSS107','p9'),('WSS126','p9'),('WSS138','p9'),('WSS149','p9'),('WSS158','p9'),('WSS159','p9'),('WSS162','p9'),('WSS163','p9'),('WSS164','p9'),('WSS165','p9'),('WSS17','p9'),('WSS175','p9'),('WSS181','p9'),('WSS186','p9'),('WSS195','p9'),('WSS20','p9'),('WSS204','p9'),('WSS206','p9'),('WSS207','p9'),('WSS226','p9'),('WSS23','p9'),('WSS254','p9'),('WSS255','p9'),('WSS256','p9'),('WSS264','p9'),('WSS266','p9'),('WSS270','p9'),('WSS275','p9'),('WSS278','p9'),('WSS281','p9'),('WSS283','p9'),('WSS288','p9'),('WSS30','p9'),('WSS36','p9'),('WSS37','p9'),('WSS38','p9'),('WSS4','p9'),('WSS47','p9'),('WSS50','p9'),('WSS51','p9'),('WSS69','p9'),('WSS71','p9'),('WSS77','p9'),('WSS82','p9'),('WSS87','p9'),('WSS90','p9'),('WSS93','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS293'),(1,2,'WSS287'),(1,2,'WSS295'),(1,3,'WSS272'),(1,4,'WSS281'),(2,1,'WSS25'),(2,2,'WSS11'),(2,2,'WSS298'),(2,3,'WSS102'),(3,1,'WSS29'),(3,2,'WSS290'),(3,3,'WSS38'),(3,4,'WSS35'),(4,1,'WSS228'),(4,1,'WSS268'),(4,2,'WSS294'),(4,2,'WSS43'),(5,1,'WSS250'),(5,1,'WSS37'),(5,2,'WSS269'),(5,2,'WSS280'),(5,3,'WSS13'),(6,1,'WSS248'),(6,2,'WSS226'),(6,2,'WSS298'),(6,3,'WSS102'),(6,3,'WSS6'),(7,1,'WSS188'),(7,2,'WSS228'),(7,3,'WSS294'),(7,4,'WSS26'),(8,1,'WSS250'),(8,1,'WSS4'),(8,2,'WSS84'),(9,1,'WSS275'),(9,2,'WSS18'),(9,2,'WSS251'),(9,2,'WSS296'),(10,1,'WSS293'),(10,2,'WSS236'),(10,3,'WSS282'),(10,4,'WSS272'),(11,1,'WSS103'),(11,2,'WSS267'),(11,3,'WSS249'),(11,3,'WSS257'),(12,1,'WSS149'),(12,2,'WSS281'),(12,3,'WSS184'),(12,3,'WSS9'),(13,1,'WSS293'),(13,2,'WSS278'),(13,3,'WSS26'),(13,4,'WSS256'),(14,1,'WSS295'),(14,1,'WSS34'),(14,2,'WSS35'),(14,3,'WSS290'),(15,1,'WSS60'),(15,2,'WSS160'),(15,3,'WSS19'),(15,4,'WSS277'),(16,1,'WSS12'),(16,2,'WSS225'),(16,3,'WSS237'),(16,4,'WSS284'),(17,1,'WSS191'),(17,1,'WSS298'),(17,2,'WSS297'),(18,1,'WSS26'),(18,2,'WSS238'),(18,3,'WSS215'),(18,4,'WSS11'),(19,1,'WSS250'),(19,1,'WSS256'),(19,2,'WSS18'),(19,3,'WSS21'),(20,1,'WSS88'),(20,2,'WSS294'),(20,3,'WSS99'),(20,4,'WSS80'),(21,1,'WSS151'),(21,2,'WSS89'),(21,3,'WSS173'),(21,3,'WSS6'),(22,1,'WSS33'),(22,1,'WSS49'),(22,2,'WSS48'),(22,3,'WSS12'),(23,1,'WSS43'),(23,2,'WSS225'),(23,3,'WSS20'),(23,3,'WSS27'),(24,1,'WSS169'),(24,1,'WSS46'),(24,2,'WSS4'),(24,3,'WSS24'),(25,1,'WSS276'),(25,2,'WSS141'),(25,2,'WSS19'),(25,3,'WSS25'),(26,1,'WSS272'),(26,2,'WSS8'),(26,3,'WSS45'),(26,4,'WSS261'),(27,1,'WSS120'),(27,1,'WSS243'),(27,2,'WSS277'),(28,1,'WSS300'),(28,2,'WSS17'),(28,3,'WSS295'),(28,3,'WSS34'),(29,1,'WSS23'),(29,2,'WSS268'),(29,2,'WSS3'),(29,3,'WSS253'),(30,1,'WSS298'),(30,2,'WSS102'),(30,2,'WSS41'),(30,3,'WSS299'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-29 12:23:34
