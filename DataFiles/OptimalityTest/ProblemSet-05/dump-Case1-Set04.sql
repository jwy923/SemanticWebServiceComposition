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
INSERT INTO `initialgoalparameter` VALUES (1,'G','p1'),(4,'G','p1'),(5,'I','p1'),(7,'I','p1'),(9,'G','p1'),(10,'G','p1'),(11,'G','p1'),(12,'G','p1'),(13,'G','p1'),(16,'I','p1'),(17,'G','p1'),(18,'G','p1'),(22,'G','p1'),(24,'G','p1'),(25,'G','p1'),(1,'I','p10'),(4,'G','p10'),(5,'I','p10'),(6,'G','p10'),(7,'G','p10'),(9,'G','p10'),(10,'G','p10'),(16,'I','p10'),(20,'G','p10'),(21,'I','p10'),(24,'I','p10'),(27,'I','p10'),(28,'G','p10'),(30,'I','p10'),(2,'G','p11'),(3,'G','p11'),(5,'G','p11'),(8,'G','p11'),(9,'I','p11'),(11,'I','p11'),(12,'G','p11'),(14,'I','p11'),(15,'G','p11'),(17,'G','p11'),(18,'I','p11'),(26,'I','p11'),(27,'G','p11'),(29,'G','p11'),(3,'G','p12'),(4,'I','p12'),(11,'I','p12'),(14,'I','p12'),(15,'I','p12'),(16,'G','p12'),(20,'I','p12'),(23,'G','p12'),(25,'G','p12'),(29,'I','p12'),(1,'I','p13'),(2,'G','p13'),(3,'I','p13'),(6,'G','p13'),(8,'I','p13'),(11,'G','p13'),(13,'G','p13'),(16,'G','p13'),(17,'I','p13'),(18,'G','p13'),(21,'G','p13'),(23,'G','p13'),(28,'I','p13'),(29,'G','p13'),(5,'G','p14'),(6,'G','p14'),(8,'I','p14'),(9,'G','p14'),(10,'I','p14'),(11,'G','p14'),(12,'G','p14'),(13,'G','p14'),(15,'G','p14'),(19,'I','p14'),(23,'G','p14'),(26,'G','p14'),(1,'G','p15'),(3,'G','p15'),(4,'G','p15'),(8,'I','p15'),(10,'G','p15'),(11,'G','p15'),(12,'G','p15'),(15,'G','p15'),(21,'G','p15'),(25,'G','p15'),(26,'I','p15'),(28,'G','p15'),(30,'G','p15'),(4,'I','p16'),(6,'I','p16'),(7,'I','p16'),(8,'G','p16'),(13,'I','p16'),(14,'I','p16'),(17,'G','p16'),(18,'G','p16'),(19,'G','p16'),(22,'I','p16'),(25,'G','p16'),(27,'G','p16'),(29,'G','p16'),(30,'G','p16'),(1,'G','p17'),(2,'I','p17'),(5,'I','p17'),(7,'G','p17'),(12,'I','p17'),(14,'I','p17'),(15,'G','p17'),(16,'G','p17'),(18,'G','p17'),(20,'I','p17'),(23,'G','p17'),(24,'I','p17'),(26,'G','p17'),(28,'G','p17'),(29,'I','p17'),(2,'I','p18'),(7,'G','p18'),(8,'G','p18'),(9,'I','p18'),(10,'G','p18'),(11,'I','p18'),(12,'I','p18'),(14,'G','p18'),(16,'I','p18'),(17,'I','p18'),(19,'I','p18'),(20,'G','p18'),(23,'I','p18'),(25,'G','p18'),(26,'G','p18'),(27,'G','p18'),(30,'G','p18'),(1,'I','p19'),(2,'G','p19'),(3,'G','p19'),(4,'G','p19'),(6,'I','p19'),(7,'I','p19'),(9,'G','p19'),(10,'I','p19'),(11,'G','p19'),(14,'G','p19'),(17,'I','p19'),(18,'I','p19'),(19,'I','p19'),(20,'I','p19'),(21,'I','p19'),(22,'I','p19'),(23,'I','p19'),(24,'G','p19'),(25,'I','p19'),(26,'I','p19'),(27,'G','p19'),(28,'I','p19'),(29,'G','p19'),(5,'G','p2'),(8,'G','p2'),(12,'G','p2'),(13,'I','p2'),(14,'G','p2'),(18,'G','p2'),(20,'G','p2'),(21,'G','p2'),(22,'I','p2'),(26,'G','p2'),(27,'I','p2'),(28,'G','p2'),(30,'I','p2'),(2,'I','p20'),(3,'I','p20'),(4,'G','p20'),(6,'I','p20'),(10,'G','p20'),(13,'I','p20'),(14,'G','p20'),(15,'G','p20'),(16,'G','p20'),(21,'I','p20'),(22,'G','p20'),(24,'G','p20'),(25,'G','p20'),(26,'G','p20'),(28,'G','p20'),(30,'I','p20'),(3,'I','p3'),(5,'G','p3'),(6,'G','p3'),(7,'G','p3'),(10,'I','p3'),(11,'I','p3'),(13,'G','p3'),(15,'I','p3'),(19,'G','p3'),(20,'G','p3'),(21,'G','p3'),(22,'G','p3'),(24,'I','p3'),(26,'G','p3'),(27,'G','p3'),(28,'I','p3'),(29,'I','p3'),(30,'G','p3'),(6,'G','p4'),(8,'G','p4'),(9,'I','p4'),(13,'G','p4'),(16,'G','p4'),(19,'G','p4'),(20,'G','p4'),(21,'G','p4'),(22,'G','p4'),(23,'G','p4'),(24,'I','p4'),(25,'I','p4'),(29,'G','p4'),(30,'I','p4'),(1,'G','p5'),(2,'G','p5'),(3,'I','p5'),(4,'I','p5'),(5,'I','p5'),(7,'G','p5'),(8,'G','p5'),(10,'G','p5'),(12,'I','p5'),(17,'G','p5'),(19,'I','p5'),(20,'I','p5'),(25,'I','p5'),(29,'I','p5'),(30,'G','p5'),(1,'G','p6'),(2,'G','p6'),(3,'G','p6'),(4,'I','p6'),(6,'I','p6'),(8,'I','p6'),(9,'G','p6'),(10,'I','p6'),(11,'G','p6'),(17,'I','p6'),(18,'I','p6'),(19,'G','p6'),(22,'I','p6'),(23,'I','p6'),(24,'G','p6'),(26,'I','p6'),(27,'I','p6'),(28,'G','p6'),(1,'G','p7'),(6,'G','p7'),(7,'I','p7'),(9,'G','p7'),(13,'I','p7'),(14,'G','p7'),(15,'I','p7'),(16,'I','p7'),(17,'G','p7'),(18,'I','p7'),(20,'G','p7'),(21,'G','p7'),(22,'G','p7'),(23,'I','p7'),(25,'I','p7'),(29,'G','p7'),(1,'I','p8'),(2,'I','p8'),(3,'G','p8'),(4,'G','p8'),(5,'G','p8'),(9,'I','p8'),(12,'G','p8'),(14,'G','p8'),(15,'I','p8'),(19,'G','p8'),(21,'I','p8'),(23,'G','p8'),(24,'G','p8'),(27,'G','p8'),(30,'G','p8'),(2,'G','p9'),(5,'G','p9'),(7,'G','p9'),(12,'I','p9'),(13,'G','p9'),(15,'G','p9'),(16,'G','p9'),(17,'G','p9'),(18,'G','p9'),(19,'G','p9'),(22,'G','p9'),(24,'G','p9'),(27,'I','p9'),(28,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS31','p1'),('WSS39','p1'),('WSS41','p1'),('WSS76','p1'),('WSS82','p1'),('WSS83','p1'),('WSS98','p1'),('WSS18','p10'),('WSS19','p10'),('WSS41','p10'),('WSS54','p10'),('WSS65','p10'),('WSS74','p10'),('WSS75','p10'),('WSS94','p10'),('WSS12','p11'),('WSS13','p11'),('WSS15','p11'),('WSS17','p11'),('WSS22','p11'),('WSS31','p11'),('WSS34','p11'),('WSS4','p11'),('WSS46','p11'),('WSS60','p11'),('WSS78','p11'),('WSS81','p11'),('WSS87','p11'),('WSS88','p11'),('WSS9','p11'),('WSS92','p11'),('WSS95','p11'),('WSS12','p12'),('WSS20','p12'),('WSS25','p12'),('WSS29','p12'),('WSS32','p12'),('WSS39','p12'),('WSS47','p12'),('WSS59','p12'),('WSS68','p12'),('WSS74','p12'),('WSS77','p12'),('WSS89','p12'),('WSS93','p12'),('WSS14','p13'),('WSS15','p13'),('WSS2','p13'),('WSS23','p13'),('WSS28','p13'),('WSS49','p13'),('WSS56','p13'),('WSS70','p13'),('WSS77','p13'),('WSS83','p13'),('WSS1','p14'),('WSS18','p14'),('WSS26','p14'),('WSS46','p14'),('WSS59','p14'),('WSS90','p14'),('WSS91','p14'),('WSS11','p15'),('WSS17','p15'),('WSS43','p15'),('WSS56','p15'),('WSS64','p15'),('WSS66','p15'),('WSS86','p15'),('WSS88','p15'),('WSS89','p15'),('WSS94','p15'),('WSS16','p16'),('WSS3','p16'),('WSS48','p16'),('WSS57','p16'),('WSS61','p16'),('WSS63','p16'),('WSS7','p16'),('WSS19','p17'),('WSS28','p17'),('WSS48','p17'),('WSS5','p17'),('WSS51','p17'),('WSS53','p17'),('WSS69','p17'),('WSS71','p17'),('WSS80','p17'),('WSS100','p18'),('WSS42','p18'),('WSS44','p18'),('WSS49','p18'),('WSS54','p18'),('WSS78','p18'),('WSS99','p18'),('WSS10','p19'),('WSS2','p19'),('WSS20','p19'),('WSS27','p19'),('WSS29','p19'),('WSS45','p19'),('WSS52','p19'),('WSS6','p19'),('WSS8','p19'),('WSS30','p2'),('WSS38','p2'),('WSS4','p2'),('WSS45','p2'),('WSS55','p2'),('WSS66','p2'),('WSS70','p2'),('WSS79','p2'),('WSS92','p2'),('WSS21','p20'),('WSS26','p20'),('WSS37','p20'),('WSS38','p20'),('WSS42','p20'),('WSS52','p20'),('WSS71','p20'),('WSS72','p20'),('WSS79','p20'),('WSS99','p20'),('WSS14','p3'),('WSS24','p3'),('WSS40','p3'),('WSS6','p3'),('WSS75','p3'),('WSS82','p3'),('WSS84','p3'),('WSS91','p3'),('WSS95','p3'),('WSS96','p3'),('WSS97','p3'),('WSS10','p4'),('WSS11','p4'),('WSS24','p4'),('WSS25','p4'),('WSS44','p4'),('WSS50','p4'),('WSS73','p4'),('WSS80','p4'),('WSS87','p4'),('WSS27','p5'),('WSS33','p5'),('WSS34','p5'),('WSS36','p5'),('WSS37','p5'),('WSS47','p5'),('WSS58','p5'),('WSS73','p5'),('WSS81','p5'),('WSS86','p5'),('WSS9','p5'),('WSS96','p5'),('WSS97','p5'),('WSS16','p6'),('WSS21','p6'),('WSS3','p6'),('WSS35','p6'),('WSS5','p6'),('WSS58','p6'),('WSS61','p6'),('WSS64','p6'),('WSS76','p6'),('WSS8','p6'),('WSS100','p7'),('WSS30','p7'),('WSS43','p7'),('WSS57','p7'),('WSS60','p7'),('WSS85','p7'),('WSS93','p7'),('WSS33','p8'),('WSS35','p8'),('WSS36','p8'),('WSS55','p8'),('WSS62','p8'),('WSS65','p8'),('WSS67','p8'),('WSS7','p8'),('WSS72','p8'),('WSS85','p8'),('WSS1','p9'),('WSS13','p9'),('WSS22','p9'),('WSS23','p9'),('WSS32','p9'),('WSS50','p9'),('WSS51','p9'),('WSS53','p9'),('WSS63','p9'),('WSS67','p9'),('WSS68','p9'),('WSS69','p9'),('WSS90','p9'),('WSS98','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS100','p1'),('WSS14','p1'),('WSS16','p1'),('WSS2','p1'),('WSS22','p1'),('WSS25','p1'),('WSS27','p1'),('WSS3','p1'),('WSS33','p1'),('WSS35','p1'),('WSS36','p1'),('WSS38','p1'),('WSS40','p1'),('WSS44','p1'),('WSS45','p1'),('WSS54','p1'),('WSS61','p1'),('WSS62','p1'),('WSS63','p1'),('WSS64','p1'),('WSS68','p1'),('WSS72','p1'),('WSS80','p1'),('WSS83','p1'),('WSS86','p1'),('WSS89','p1'),('WSS91','p1'),('WSS94','p1'),('WSS95','p1'),('WSS96','p1'),('WSS97','p1'),('WSS98','p1'),('WSS10','p10'),('WSS100','p10'),('WSS13','p10'),('WSS14','p10'),('WSS17','p10'),('WSS19','p10'),('WSS22','p10'),('WSS23','p10'),('WSS25','p10'),('WSS26','p10'),('WSS29','p10'),('WSS31','p10'),('WSS38','p10'),('WSS43','p10'),('WSS46','p10'),('WSS47','p10'),('WSS48','p10'),('WSS52','p10'),('WSS55','p10'),('WSS56','p10'),('WSS59','p10'),('WSS6','p10'),('WSS60','p10'),('WSS61','p10'),('WSS64','p10'),('WSS65','p10'),('WSS7','p10'),('WSS70','p10'),('WSS73','p10'),('WSS75','p10'),('WSS79','p10'),('WSS8','p10'),('WSS81','p10'),('WSS82','p10'),('WSS83','p10'),('WSS84','p10'),('WSS87','p10'),('WSS88','p10'),('WSS94','p10'),('WSS97','p10'),('WSS100','p11'),('WSS11','p11'),('WSS12','p11'),('WSS13','p11'),('WSS15','p11'),('WSS17','p11'),('WSS18','p11'),('WSS19','p11'),('WSS20','p11'),('WSS22','p11'),('WSS26','p11'),('WSS27','p11'),('WSS28','p11'),('WSS38','p11'),('WSS39','p11'),('WSS42','p11'),('WSS46','p11'),('WSS48','p11'),('WSS51','p11'),('WSS56','p11'),('WSS57','p11'),('WSS58','p11'),('WSS60','p11'),('WSS62','p11'),('WSS65','p11'),('WSS66','p11'),('WSS67','p11'),('WSS69','p11'),('WSS74','p11'),('WSS76','p11'),('WSS77','p11'),('WSS78','p11'),('WSS79','p11'),('WSS82','p11'),('WSS9','p11'),('WSS95','p11'),('WSS100','p12'),('WSS11','p12'),('WSS2','p12'),('WSS20','p12'),('WSS21','p12'),('WSS24','p12'),('WSS3','p12'),('WSS32','p12'),('WSS33','p12'),('WSS35','p12'),('WSS40','p12'),('WSS41','p12'),('WSS42','p12'),('WSS44','p12'),('WSS45','p12'),('WSS47','p12'),('WSS5','p12'),('WSS50','p12'),('WSS52','p12'),('WSS58','p12'),('WSS59','p12'),('WSS62','p12'),('WSS72','p12'),('WSS76','p12'),('WSS8','p12'),('WSS85','p12'),('WSS86','p12'),('WSS87','p12'),('WSS90','p12'),('WSS91','p12'),('WSS98','p12'),('WSS99','p12'),('WSS11','p13'),('WSS12','p13'),('WSS13','p13'),('WSS15','p13'),('WSS2','p13'),('WSS21','p13'),('WSS24','p13'),('WSS27','p13'),('WSS30','p13'),('WSS32','p13'),('WSS33','p13'),('WSS4','p13'),('WSS42','p13'),('WSS45','p13'),('WSS46','p13'),('WSS47','p13'),('WSS48','p13'),('WSS49','p13'),('WSS50','p13'),('WSS53','p13'),('WSS55','p13'),('WSS60','p13'),('WSS64','p13'),('WSS65','p13'),('WSS70','p13'),('WSS74','p13'),('WSS75','p13'),('WSS76','p13'),('WSS78','p13'),('WSS8','p13'),('WSS80','p13'),('WSS83','p13'),('WSS87','p13'),('WSS88','p13'),('WSS90','p13'),('WSS95','p13'),('WSS96','p13'),('WSS99','p13'),('WSS1','p14'),('WSS11','p14'),('WSS12','p14'),('WSS17','p14'),('WSS18','p14'),('WSS20','p14'),('WSS22','p14'),('WSS31','p14'),('WSS34','p14'),('WSS37','p14'),('WSS39','p14'),('WSS52','p14'),('WSS54','p14'),('WSS56','p14'),('WSS58','p14'),('WSS61','p14'),('WSS63','p14'),('WSS64','p14'),('WSS67','p14'),('WSS7','p14'),('WSS70','p14'),('WSS71','p14'),('WSS73','p14'),('WSS77','p14'),('WSS80','p14'),('WSS81','p14'),('WSS84','p14'),('WSS86','p14'),('WSS88','p14'),('WSS89','p14'),('WSS90','p14'),('WSS91','p14'),('WSS93','p14'),('WSS94','p14'),('WSS95','p14'),('WSS96','p14'),('WSS97','p14'),('WSS11','p15'),('WSS18','p15'),('WSS27','p15'),('WSS28','p15'),('WSS29','p15'),('WSS3','p15'),('WSS40','p15'),('WSS41','p15'),('WSS43','p15'),('WSS45','p15'),('WSS47','p15'),('WSS48','p15'),('WSS49','p15'),('WSS51','p15'),('WSS54','p15'),('WSS55','p15'),('WSS56','p15'),('WSS59','p15'),('WSS61','p15'),('WSS66','p15'),('WSS68','p15'),('WSS69','p15'),('WSS71','p15'),('WSS74','p15'),('WSS76','p15'),('WSS79','p15'),('WSS84','p15'),('WSS85','p15'),('WSS93','p15'),('WSS1','p16'),('WSS10','p16'),('WSS12','p16'),('WSS14','p16'),('WSS16','p16'),('WSS17','p16'),('WSS24','p16'),('WSS28','p16'),('WSS32','p16'),('WSS34','p16'),('WSS35','p16'),('WSS36','p16'),('WSS40','p16'),('WSS42','p16'),('WSS43','p16'),('WSS44','p16'),('WSS45','p16'),('WSS46','p16'),('WSS49','p16'),('WSS52','p16'),('WSS53','p16'),('WSS56','p16'),('WSS59','p16'),('WSS6','p16'),('WSS64','p16'),('WSS67','p16'),('WSS71','p16'),('WSS73','p16'),('WSS77','p16'),('WSS79','p16'),('WSS8','p16'),('WSS83','p16'),('WSS84','p16'),('WSS87','p16'),('WSS9','p16'),('WSS92','p16'),('WSS95','p16'),('WSS96','p16'),('WSS97','p16'),('WSS1','p17'),('WSS10','p17'),('WSS16','p17'),('WSS18','p17'),('WSS19','p17'),('WSS26','p17'),('WSS28','p17'),('WSS30','p17'),('WSS38','p17'),('WSS4','p17'),('WSS41','p17'),('WSS42','p17'),('WSS43','p17'),('WSS44','p17'),('WSS49','p17'),('WSS50','p17'),('WSS53','p17'),('WSS54','p17'),('WSS57','p17'),('WSS58','p17'),('WSS62','p17'),('WSS7','p17'),('WSS70','p17'),('WSS71','p17'),('WSS77','p17'),('WSS78','p17'),('WSS81','p17'),('WSS83','p17'),('WSS85','p17'),('WSS88','p17'),('WSS89','p17'),('WSS91','p17'),('WSS93','p17'),('WSS96','p17'),('WSS1','p18'),('WSS15','p18'),('WSS16','p18'),('WSS18','p18'),('WSS19','p18'),('WSS21','p18'),('WSS23','p18'),('WSS24','p18'),('WSS25','p18'),('WSS28','p18'),('WSS3','p18'),('WSS39','p18'),('WSS4','p18'),('WSS41','p18'),('WSS44','p18'),('WSS5','p18'),('WSS52','p18'),('WSS57','p18'),('WSS60','p18'),('WSS63','p18'),('WSS66','p18'),('WSS68','p18'),('WSS69','p18'),('WSS70','p18'),('WSS77','p18'),('WSS78','p18'),('WSS80','p18'),('WSS94','p18'),('WSS95','p18'),('WSS97','p18'),('WSS10','p19'),('WSS100','p19'),('WSS14','p19'),('WSS15','p19'),('WSS18','p19'),('WSS2','p19'),('WSS20','p19'),('WSS21','p19'),('WSS22','p19'),('WSS25','p19'),('WSS29','p19'),('WSS32','p19'),('WSS33','p19'),('WSS36','p19'),('WSS4','p19'),('WSS41','p19'),('WSS44','p19'),('WSS5','p19'),('WSS51','p19'),('WSS54','p19'),('WSS56','p19'),('WSS59','p19'),('WSS61','p19'),('WSS63','p19'),('WSS64','p19'),('WSS66','p19'),('WSS68','p19'),('WSS69','p19'),('WSS7','p19'),('WSS70','p19'),('WSS76','p19'),('WSS90','p19'),('WSS91','p19'),('WSS96','p19'),('WSS99','p19'),('WSS1','p2'),('WSS12','p2'),('WSS15','p2'),('WSS22','p2'),('WSS27','p2'),('WSS29','p2'),('WSS3','p2'),('WSS30','p2'),('WSS31','p2'),('WSS32','p2'),('WSS34','p2'),('WSS36','p2'),('WSS37','p2'),('WSS39','p2'),('WSS4','p2'),('WSS41','p2'),('WSS42','p2'),('WSS43','p2'),('WSS44','p2'),('WSS48','p2'),('WSS49','p2'),('WSS50','p2'),('WSS52','p2'),('WSS53','p2'),('WSS58','p2'),('WSS59','p2'),('WSS6','p2'),('WSS64','p2'),('WSS67','p2'),('WSS68','p2'),('WSS69','p2'),('WSS73','p2'),('WSS80','p2'),('WSS81','p2'),('WSS87','p2'),('WSS91','p2'),('WSS93','p2'),('WSS94','p2'),('WSS10','p20'),('WSS14','p20'),('WSS19','p20'),('WSS2','p20'),('WSS20','p20'),('WSS23','p20'),('WSS26','p20'),('WSS33','p20'),('WSS39','p20'),('WSS45','p20'),('WSS47','p20'),('WSS51','p20'),('WSS55','p20'),('WSS57','p20'),('WSS58','p20'),('WSS59','p20'),('WSS6','p20'),('WSS60','p20'),('WSS61','p20'),('WSS63','p20'),('WSS64','p20'),('WSS66','p20'),('WSS67','p20'),('WSS73','p20'),('WSS75','p20'),('WSS78','p20'),('WSS81','p20'),('WSS88','p20'),('WSS89','p20'),('WSS9','p20'),('WSS94','p20'),('WSS95','p20'),('WSS1','p3'),('WSS100','p3'),('WSS12','p3'),('WSS14','p3'),('WSS16','p3'),('WSS20','p3'),('WSS23','p3'),('WSS24','p3'),('WSS25','p3'),('WSS28','p3'),('WSS30','p3'),('WSS34','p3'),('WSS36','p3'),('WSS43','p3'),('WSS46','p3'),('WSS49','p3'),('WSS5','p3'),('WSS50','p3'),('WSS53','p3'),('WSS63','p3'),('WSS7','p3'),('WSS72','p3'),('WSS75','p3'),('WSS76','p3'),('WSS77','p3'),('WSS8','p3'),('WSS81','p3'),('WSS84','p3'),('WSS85','p3'),('WSS86','p3'),('WSS88','p3'),('WSS89','p3'),('WSS92','p3'),('WSS97','p3'),('WSS98','p3'),('WSS1','p4'),('WSS13','p4'),('WSS14','p4'),('WSS16','p4'),('WSS21','p4'),('WSS24','p4'),('WSS25','p4'),('WSS27','p4'),('WSS28','p4'),('WSS29','p4'),('WSS31','p4'),('WSS32','p4'),('WSS33','p4'),('WSS35','p4'),('WSS37','p4'),('WSS38','p4'),('WSS41','p4'),('WSS42','p4'),('WSS46','p4'),('WSS47','p4'),('WSS5','p4'),('WSS55','p4'),('WSS62','p4'),('WSS65','p4'),('WSS7','p4'),('WSS72','p4'),('WSS74','p4'),('WSS78','p4'),('WSS80','p4'),('WSS82','p4'),('WSS83','p4'),('WSS84','p4'),('WSS87','p4'),('WSS88','p4'),('WSS9','p4'),('WSS91','p4'),('WSS92','p4'),('WSS97','p4'),('WSS100','p5'),('WSS2','p5'),('WSS20','p5'),('WSS21','p5'),('WSS22','p5'),('WSS27','p5'),('WSS29','p5'),('WSS35','p5'),('WSS4','p5'),('WSS46','p5'),('WSS51','p5'),('WSS6','p5'),('WSS65','p5'),('WSS67','p5'),('WSS69','p5'),('WSS71','p5'),('WSS72','p5'),('WSS73','p5'),('WSS74','p5'),('WSS75','p5'),('WSS76','p5'),('WSS77','p5'),('WSS79','p5'),('WSS8','p5'),('WSS85','p5'),('WSS86','p5'),('WSS94','p5'),('WSS99','p5'),('WSS1','p6'),('WSS13','p6'),('WSS15','p6'),('WSS16','p6'),('WSS17','p6'),('WSS19','p6'),('WSS23','p6'),('WSS30','p6'),('WSS32','p6'),('WSS34','p6'),('WSS37','p6'),('WSS38','p6'),('WSS39','p6'),('WSS40','p6'),('WSS49','p6'),('WSS50','p6'),('WSS51','p6'),('WSS55','p6'),('WSS57','p6'),('WSS60','p6'),('WSS68','p6'),('WSS82','p6'),('WSS93','p6'),('WSS95','p6'),('WSS99','p6'),('WSS20','p7'),('WSS21','p7'),('WSS23','p7'),('WSS30','p7'),('WSS31','p7'),('WSS33','p7'),('WSS37','p7'),('WSS38','p7'),('WSS45','p7'),('WSS46','p7'),('WSS47','p7'),('WSS48','p7'),('WSS49','p7'),('WSS5','p7'),('WSS57','p7'),('WSS61','p7'),('WSS62','p7'),('WSS7','p7'),('WSS71','p7'),('WSS72','p7'),('WSS78','p7'),('WSS81','p7'),('WSS82','p7'),('WSS83','p7'),('WSS85','p7'),('WSS89','p7'),('WSS90','p7'),('WSS99','p7'),('WSS11','p8'),('WSS12','p8'),('WSS13','p8'),('WSS15','p8'),('WSS18','p8'),('WSS34','p8'),('WSS35','p8'),('WSS36','p8'),('WSS37','p8'),('WSS39','p8'),('WSS4','p8'),('WSS48','p8'),('WSS5','p8'),('WSS50','p8'),('WSS51','p8'),('WSS53','p8'),('WSS54','p8'),('WSS55','p8'),('WSS56','p8'),('WSS58','p8'),('WSS6','p8'),('WSS60','p8'),('WSS61','p8'),('WSS62','p8'),('WSS63','p8'),('WSS65','p8'),('WSS66','p8'),('WSS67','p8'),('WSS72','p8'),('WSS76','p8'),('WSS83','p8'),('WSS85','p8'),('WSS86','p8'),('WSS9','p8'),('WSS90','p8'),('WSS92','p8'),('WSS93','p8'),('WSS97','p8'),('WSS98','p8'),('WSS99','p8'),('WSS10','p9'),('WSS100','p9'),('WSS15','p9'),('WSS2','p9'),('WSS24','p9'),('WSS30','p9'),('WSS31','p9'),('WSS32','p9'),('WSS35','p9'),('WSS36','p9'),('WSS4','p9'),('WSS40','p9'),('WSS5','p9'),('WSS52','p9'),('WSS53','p9'),('WSS57','p9'),('WSS58','p9'),('WSS6','p9'),('WSS63','p9'),('WSS68','p9'),('WSS69','p9'),('WSS7','p9'),('WSS70','p9'),('WSS73','p9'),('WSS74','p9'),('WSS75','p9'),('WSS78','p9'),('WSS8','p9'),('WSS82','p9'),('WSS86','p9'),('WSS88','p9'),('WSS9','p9'),('WSS96','p9'),('WSS98','p9'),('WSS99','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS76'),(1,2,'WSS86'),(2,1,'WSS64'),(2,2,'WSS45'),(2,2,'WSS68'),(3,1,'WSS33'),(3,2,'WSS24'),(3,3,'WSS66'),(4,1,'WSS59'),(4,2,'WSS92'),(4,3,'WSS66'),(5,1,'WSS1'),(5,2,'WSS34'),(5,3,'WSS21'),(6,1,'WSS38'),(6,2,'WSS66'),(6,2,'WSS68'),(7,1,'WSS68'),(7,2,'WSS50'),(7,2,'WSS59'),(8,1,'WSS44'),(8,2,'WSS68'),(8,2,'WSS93'),(9,1,'WSS76'),(9,2,'WSS95'),(10,1,'WSS83'),(10,2,'WSS38'),(10,3,'WSS59'),(11,1,'WSS35'),(11,2,'WSS30'),(11,3,'WSS32'),(12,1,'WSS66'),(12,2,'WSS46'),(12,2,'WSS62'),(13,1,'WSS63'),(13,2,'WSS65'),(13,3,'WSS69'),(14,1,'WSS36'),(14,2,'WSS90'),(15,1,'WSS42'),(15,2,'WSS40'),(15,2,'WSS65'),(16,1,'WSS18'),(16,2,'WSS29'),(16,2,'WSS63'),(17,1,'WSS58'),(17,2,'WSS69'),(17,3,'WSS49'),(18,1,'WSS48'),(18,2,'WSS55'),(18,3,'WSS59'),(19,1,'WSS48'),(19,2,'WSS60'),(19,3,'WSS42'),(20,1,'WSS48'),(20,2,'WSS55'),(20,3,'WSS59'),(21,1,'WSS38'),(21,2,'WSS91'),(22,1,'WSS34'),(22,2,'WSS91'),(22,3,'WSS47'),(23,1,'WSS13'),(23,2,'WSS39'),(23,3,'WSS42'),(24,1,'WSS63'),(24,2,'WSS39'),(25,1,'WSS62'),(25,2,'WSS41'),(25,3,'WSS23'),(26,1,'WSS38'),(26,2,'WSS66'),(26,3,'WSS50'),(27,1,'WSS12'),(27,2,'WSS72'),(28,1,'WSS51'),(28,2,'WSS66'),(28,3,'WSS91'),(29,1,'WSS62'),(29,2,'WSS41'),(29,3,'WSS42'),(30,1,'WSS97'),(30,2,'WSS62'),(30,3,'WSS33'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-07-06 19:06:57
