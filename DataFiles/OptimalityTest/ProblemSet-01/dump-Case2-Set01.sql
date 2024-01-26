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
INSERT INTO `initialgoalparameter` VALUES (1,'G','p1'),(5,'G','p1'),(6,'I','p1'),(8,'G','p1'),(10,'I','p1'),(11,'I','p1'),(12,'I','p1'),(14,'G','p1'),(15,'G','p1'),(16,'G','p1'),(17,'G','p1'),(18,'I','p1'),(20,'G','p1'),(23,'I','p1'),(24,'G','p1'),(25,'G','p1'),(26,'G','p1'),(29,'G','p1'),(30,'G','p1'),(8,'I','p10'),(9,'I','p10'),(11,'I','p10'),(13,'I','p10'),(18,'G','p10'),(21,'I','p10'),(25,'G','p10'),(26,'I','p10'),(29,'I','p10'),(4,'G','p11'),(9,'I','p11'),(12,'G','p11'),(13,'G','p11'),(17,'I','p11'),(18,'G','p11'),(19,'I','p11'),(20,'I','p11'),(22,'G','p11'),(23,'G','p11'),(24,'I','p11'),(26,'G','p11'),(1,'G','p12'),(2,'G','p12'),(3,'G','p12'),(7,'G','p12'),(8,'I','p12'),(9,'G','p12'),(11,'G','p12'),(12,'I','p12'),(13,'G','p12'),(14,'G','p12'),(15,'G','p12'),(18,'G','p12'),(19,'G','p12'),(20,'I','p12'),(21,'G','p12'),(22,'G','p12'),(23,'G','p12'),(24,'I','p12'),(28,'G','p12'),(1,'G','p13'),(4,'I','p13'),(5,'I','p13'),(6,'G','p13'),(8,'I','p13'),(9,'G','p13'),(12,'I','p13'),(13,'I','p13'),(14,'G','p13'),(17,'G','p13'),(22,'G','p13'),(23,'G','p13'),(25,'G','p13'),(26,'G','p13'),(27,'G','p13'),(28,'I','p13'),(30,'G','p13'),(1,'G','p14'),(5,'I','p14'),(8,'I','p14'),(10,'G','p14'),(11,'I','p14'),(12,'G','p14'),(14,'G','p14'),(16,'G','p14'),(18,'G','p14'),(19,'G','p14'),(20,'G','p14'),(25,'I','p14'),(26,'G','p14'),(29,'G','p14'),(3,'G','p15'),(10,'I','p15'),(12,'G','p15'),(14,'I','p15'),(15,'I','p15'),(16,'G','p15'),(17,'G','p15'),(18,'I','p15'),(23,'I','p15'),(24,'G','p15'),(25,'G','p15'),(27,'G','p15'),(28,'G','p15'),(2,'I','p16'),(3,'I','p16'),(8,'G','p16'),(12,'G','p16'),(14,'I','p16'),(15,'G','p16'),(17,'I','p16'),(18,'I','p16'),(19,'I','p16'),(20,'G','p16'),(21,'I','p16'),(22,'I','p16'),(25,'I','p16'),(27,'G','p16'),(29,'G','p16'),(30,'G','p16'),(1,'I','p17'),(2,'I','p17'),(5,'G','p17'),(6,'G','p17'),(7,'I','p17'),(12,'G','p17'),(13,'G','p17'),(20,'I','p17'),(27,'G','p17'),(28,'I','p17'),(30,'I','p17'),(1,'G','p18'),(3,'G','p18'),(4,'G','p18'),(5,'G','p18'),(6,'I','p18'),(7,'I','p18'),(11,'G','p18'),(15,'I','p18'),(16,'G','p18'),(18,'G','p18'),(21,'G','p18'),(23,'G','p18'),(28,'G','p18'),(2,'I','p19'),(4,'G','p19'),(7,'G','p19'),(9,'G','p19'),(10,'I','p19'),(11,'G','p19'),(13,'G','p19'),(14,'G','p19'),(17,'I','p19'),(19,'G','p19'),(22,'G','p19'),(23,'G','p19'),(24,'I','p19'),(25,'G','p19'),(26,'I','p19'),(27,'I','p19'),(29,'I','p19'),(30,'G','p19'),(1,'G','p2'),(2,'I','p2'),(4,'G','p2'),(5,'I','p2'),(6,'I','p2'),(7,'G','p2'),(10,'G','p2'),(13,'I','p2'),(14,'G','p2'),(16,'I','p2'),(18,'I','p2'),(21,'G','p2'),(26,'G','p2'),(27,'G','p2'),(30,'I','p2'),(3,'I','p20'),(4,'I','p20'),(5,'G','p20'),(6,'G','p20'),(7,'G','p20'),(8,'G','p20'),(9,'I','p20'),(10,'G','p20'),(11,'G','p20'),(13,'I','p20'),(16,'G','p20'),(19,'G','p20'),(25,'G','p20'),(27,'I','p20'),(29,'G','p20'),(1,'I','p3'),(2,'G','p3'),(6,'G','p3'),(7,'I','p3'),(10,'G','p3'),(15,'G','p3'),(20,'I','p3'),(21,'G','p3'),(23,'G','p3'),(25,'I','p3'),(27,'I','p3'),(28,'G','p3'),(29,'I','p3'),(30,'I','p3'),(2,'G','p4'),(3,'I','p4'),(4,'I','p4'),(8,'G','p4'),(9,'I','p4'),(10,'G','p4'),(13,'G','p4'),(17,'I','p4'),(23,'I','p4'),(24,'G','p4'),(28,'G','p4'),(29,'G','p4'),(30,'G','p4'),(1,'I','p5'),(2,'G','p5'),(4,'I','p5'),(5,'I','p5'),(7,'G','p5'),(9,'G','p5'),(11,'I','p5'),(12,'G','p5'),(14,'I','p5'),(15,'G','p5'),(16,'G','p5'),(19,'G','p5'),(20,'G','p5'),(21,'G','p5'),(22,'I','p5'),(24,'I','p5'),(26,'I','p5'),(3,'G','p6'),(4,'G','p6'),(6,'I','p6'),(7,'G','p6'),(8,'G','p6'),(9,'G','p6'),(11,'G','p6'),(13,'G','p6'),(16,'I','p6'),(19,'I','p6'),(22,'I','p6'),(24,'G','p6'),(26,'I','p6'),(28,'I','p6'),(29,'G','p6'),(1,'I','p7'),(2,'G','p7'),(3,'I','p7'),(6,'G','p7'),(9,'G','p7'),(11,'G','p7'),(14,'I','p7'),(15,'I','p7'),(16,'I','p7'),(17,'G','p7'),(18,'G','p7'),(21,'I','p7'),(22,'G','p7'),(24,'G','p7'),(25,'I','p7'),(26,'G','p7'),(27,'I','p7'),(28,'G','p7'),(30,'G','p7'),(2,'G','p8'),(3,'G','p8'),(5,'G','p8'),(6,'G','p8'),(7,'I','p8'),(10,'G','p8'),(12,'I','p8'),(15,'I','p8'),(17,'G','p8'),(19,'G','p8'),(20,'G','p8'),(21,'G','p8'),(22,'G','p8'),(24,'G','p8'),(27,'G','p8'),(28,'I','p8'),(30,'I','p8'),(3,'G','p9'),(4,'G','p9'),(5,'G','p9'),(8,'G','p9'),(10,'I','p9'),(15,'G','p9'),(16,'I','p9'),(17,'G','p9'),(19,'I','p9'),(20,'G','p9'),(21,'I','p9'),(22,'I','p9'),(23,'I','p9'),(29,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS107','p1'),('WSS123','p1'),('WSS141','p1'),('WSS160','p1'),('WSS168','p1'),('WSS177','p1'),('WSS184','p1'),('WSS189','p1'),('WSS192','p1'),('WSS193','p1'),('WSS22','p1'),('WSS228','p1'),('WSS234','p1'),('WSS250','p1'),('WSS264','p1'),('WSS265','p1'),('WSS267','p1'),('WSS292','p1'),('WSS293','p1'),('WSS295','p1'),('WSS298','p1'),('WSS299','p1'),('WSS38','p1'),('WSS40','p1'),('WSS42','p1'),('WSS45','p1'),('WSS47','p1'),('WSS66','p1'),('WSS79','p1'),('WSS82','p1'),('WSS91','p1'),('WSS92','p1'),('WSS138','p10'),('WSS14','p10'),('WSS144','p10'),('WSS15','p10'),('WSS152','p10'),('WSS155','p10'),('WSS156','p10'),('WSS159','p10'),('WSS167','p10'),('WSS174','p10'),('WSS181','p10'),('WSS198','p10'),('WSS205','p10'),('WSS215','p10'),('WSS23','p10'),('WSS241','p10'),('WSS261','p10'),('WSS279','p10'),('WSS280','p10'),('WSS285','p10'),('WSS286','p10'),('WSS289','p10'),('WSS29','p10'),('WSS291','p10'),('WSS300','p10'),('WSS44','p10'),('WSS54','p10'),('WSS60','p10'),('WSS73','p10'),('WSS78','p10'),('WSS9','p10'),('WSS99','p10'),('WSS111','p11'),('WSS115','p11'),('WSS120','p11'),('WSS129','p11'),('WSS136','p11'),('WSS154','p11'),('WSS158','p11'),('WSS169','p11'),('WSS176','p11'),('WSS184','p11'),('WSS186','p11'),('WSS195','p11'),('WSS201','p11'),('WSS209','p11'),('WSS215','p11'),('WSS239','p11'),('WSS24','p11'),('WSS240','p11'),('WSS250','p11'),('WSS291','p11'),('WSS298','p11'),('WSS65','p11'),('WSS8','p11'),('WSS85','p11'),('WSS88','p11'),('WSS99','p11'),('WSS101','p12'),('WSS122','p12'),('WSS140','p12'),('WSS142','p12'),('WSS143','p12'),('WSS158','p12'),('WSS159','p12'),('WSS162','p12'),('WSS171','p12'),('WSS183','p12'),('WSS206','p12'),('WSS207','p12'),('WSS222','p12'),('WSS223','p12'),('WSS230','p12'),('WSS247','p12'),('WSS25','p12'),('WSS258','p12'),('WSS284','p12'),('WSS3','p12'),('WSS34','p12'),('WSS48','p12'),('WSS63','p12'),('WSS77','p12'),('WSS80','p12'),('WSS85','p12'),('WSS94','p12'),('WSS98','p12'),('WSS115','p13'),('WSS117','p13'),('WSS146','p13'),('WSS147','p13'),('WSS150','p13'),('WSS183','p13'),('WSS185','p13'),('WSS188','p13'),('WSS189','p13'),('WSS190','p13'),('WSS191','p13'),('WSS194','p13'),('WSS218','p13'),('WSS227','p13'),('WSS228','p13'),('WSS231','p13'),('WSS232','p13'),('WSS243','p13'),('WSS251','p13'),('WSS264','p13'),('WSS270','p13'),('WSS273','p13'),('WSS282','p13'),('WSS289','p13'),('WSS292','p13'),('WSS33','p13'),('WSS52','p13'),('WSS73','p13'),('WSS8','p13'),('WSS103','p14'),('WSS118','p14'),('WSS12','p14'),('WSS121','p14'),('WSS127','p14'),('WSS131','p14'),('WSS136','p14'),('WSS139','p14'),('WSS147','p14'),('WSS151','p14'),('WSS156','p14'),('WSS169','p14'),('WSS171','p14'),('WSS180','p14'),('WSS19','p14'),('WSS191','p14'),('WSS201','p14'),('WSS210','p14'),('WSS211','p14'),('WSS220','p14'),('WSS230','p14'),('WSS236','p14'),('WSS247','p14'),('WSS260','p14'),('WSS267','p14'),('WSS51','p14'),('WSS52','p14'),('WSS53','p14'),('WSS54','p14'),('WSS64','p14'),('WSS75','p14'),('WSS91','p14'),('WSS110','p15'),('WSS113','p15'),('WSS114','p15'),('WSS149','p15'),('WSS16','p15'),('WSS168','p15'),('WSS175','p15'),('WSS20','p15'),('WSS212','p15'),('WSS219','p15'),('WSS220','p15'),('WSS244','p15'),('WSS248','p15'),('WSS252','p15'),('WSS269','p15'),('WSS271','p15'),('WSS278','p15'),('WSS281','p15'),('WSS284','p15'),('WSS290','p15'),('WSS299','p15'),('WSS4','p15'),('WSS7','p15'),('WSS70','p15'),('WSS76','p15'),('WSS92','p15'),('WSS96','p15'),('WSS11','p16'),('WSS116','p16'),('WSS123','p16'),('WSS124','p16'),('WSS125','p16'),('WSS148','p16'),('WSS150','p16'),('WSS161','p16'),('WSS164','p16'),('WSS178','p16'),('WSS19','p16'),('WSS194','p16'),('WSS2','p16'),('WSS200','p16'),('WSS221','p16'),('WSS224','p16'),('WSS227','p16'),('WSS248','p16'),('WSS254','p16'),('WSS256','p16'),('WSS277','p16'),('WSS297','p16'),('WSS33','p16'),('WSS35','p16'),('WSS53','p16'),('WSS55','p16'),('WSS60','p16'),('WSS63','p16'),('WSS86','p16'),('WSS95','p16'),('WSS1','p17'),('WSS102','p17'),('WSS122','p17'),('WSS125','p17'),('WSS132','p17'),('WSS134','p17'),('WSS142','p17'),('WSS145','p17'),('WSS151','p17'),('WSS153','p17'),('WSS180','p17'),('WSS193','p17'),('WSS20','p17'),('WSS210','p17'),('WSS216','p17'),('WSS226','p17'),('WSS229','p17'),('WSS233','p17'),('WSS249','p17'),('WSS263','p17'),('WSS272','p17'),('WSS283','p17'),('WSS293','p17'),('WSS294','p17'),('WSS296','p17'),('WSS297','p17'),('WSS37','p17'),('WSS48','p17'),('WSS59','p17'),('WSS74','p17'),('WSS94','p17'),('WSS96','p17'),('WSS10','p18'),('WSS100','p18'),('WSS106','p18'),('WSS111','p18'),('WSS114','p18'),('WSS128','p18'),('WSS130','p18'),('WSS132','p18'),('WSS133','p18'),('WSS137','p18'),('WSS138','p18'),('WSS153','p18'),('WSS170','p18'),('WSS187','p18'),('WSS188','p18'),('WSS197','p18'),('WSS202','p18'),('WSS203','p18'),('WSS214','p18'),('WSS222','p18'),('WSS229','p18'),('WSS239','p18'),('WSS260','p18'),('WSS261','p18'),('WSS268','p18'),('WSS269','p18'),('WSS286','p18'),('WSS36','p18'),('WSS38','p18'),('WSS5','p18'),('WSS62','p18'),('WSS72','p18'),('WSS74','p18'),('WSS84','p18'),('WSS10','p19'),('WSS100','p19'),('WSS101','p19'),('WSS104','p19'),('WSS109','p19'),('WSS119','p19'),('WSS148','p19'),('WSS161','p19'),('WSS167','p19'),('WSS170','p19'),('WSS176','p19'),('WSS181','p19'),('WSS196','p19'),('WSS199','p19'),('WSS202','p19'),('WSS208','p19'),('WSS209','p19'),('WSS223','p19'),('WSS225','p19'),('WSS236','p19'),('WSS240','p19'),('WSS276','p19'),('WSS28','p19'),('WSS288','p19'),('WSS30','p19'),('WSS32','p19'),('WSS44','p19'),('WSS56','p19'),('WSS61','p19'),('WSS62','p19'),('WSS67','p19'),('WSS69','p19'),('WSS78','p19'),('WSS81','p19'),('WSS89','p19'),('WSS95','p19'),('WSS102','p2'),('WSS104','p2'),('WSS113','p2'),('WSS117','p2'),('WSS128','p2'),('WSS135','p2'),('WSS137','p2'),('WSS15','p2'),('WSS152','p2'),('WSS17','p2'),('WSS172','p2'),('WSS173','p2'),('WSS177','p2'),('WSS204','p2'),('WSS213','p2'),('WSS224','p2'),('WSS235','p2'),('WSS245','p2'),('WSS255','p2'),('WSS258','p2'),('WSS266','p2'),('WSS268','p2'),('WSS27','p2'),('WSS35','p2'),('WSS41','p2'),('WSS45','p2'),('WSS46','p2'),('WSS58','p2'),('WSS65','p2'),('WSS68','p2'),('WSS75','p2'),('WSS106','p20'),('WSS108','p20'),('WSS124','p20'),('WSS13','p20'),('WSS130','p20'),('WSS135','p20'),('WSS141','p20'),('WSS143','p20'),('WSS145','p20'),('WSS154','p20'),('WSS155','p20'),('WSS163','p20'),('WSS165','p20'),('WSS182','p20'),('WSS187','p20'),('WSS190','p20'),('WSS196','p20'),('WSS21','p20'),('WSS244','p20'),('WSS251','p20'),('WSS253','p20'),('WSS265','p20'),('WSS266','p20'),('WSS274','p20'),('WSS275','p20'),('WSS287','p20'),('WSS42','p20'),('WSS47','p20'),('WSS58','p20'),('WSS61','p20'),('WSS71','p20'),('WSS80','p20'),('WSS90','p20'),('WSS109','p3'),('WSS119','p3'),('WSS13','p3'),('WSS134','p3'),('WSS160','p3'),('WSS166','p3'),('WSS226','p3'),('WSS237','p3'),('WSS24','p3'),('WSS252','p3'),('WSS257','p3'),('WSS29','p3'),('WSS32','p3'),('WSS43','p3'),('WSS55','p3'),('WSS59','p3'),('WSS86','p3'),('WSS89','p3'),('WSS103','p4'),('WSS105','p4'),('WSS112','p4'),('WSS126','p4'),('WSS127','p4'),('WSS139','p4'),('WSS165','p4'),('WSS195','p4'),('WSS207','p4'),('WSS214','p4'),('WSS219','p4'),('WSS238','p4'),('WSS26','p4'),('WSS262','p4'),('WSS263','p4'),('WSS27','p4'),('WSS279','p4'),('WSS280','p4'),('WSS285','p4'),('WSS290','p4'),('WSS296','p4'),('WSS300','p4'),('WSS56','p4'),('WSS64','p4'),('WSS83','p4'),('WSS116','p5'),('WSS131','p5'),('WSS14','p5'),('WSS149','p5'),('WSS157','p5'),('WSS16','p5'),('WSS162','p5'),('WSS164','p5'),('WSS174','p5'),('WSS205','p5'),('WSS206','p5'),('WSS211','p5'),('WSS216','p5'),('WSS217','p5'),('WSS22','p5'),('WSS234','p5'),('WSS26','p5'),('WSS274','p5'),('WSS278','p5'),('WSS281','p5'),('WSS295','p5'),('WSS34','p5'),('WSS37','p5'),('WSS39','p5'),('WSS4','p5'),('WSS41','p5'),('WSS46','p5'),('WSS57','p5'),('WSS68','p5'),('WSS69','p5'),('WSS72','p5'),('WSS79','p5'),('WSS82','p5'),('WSS88','p5'),('WSS9','p5'),('WSS97','p5'),('WSS107','p6'),('WSS144','p6'),('WSS146','p6'),('WSS163','p6'),('WSS166','p6'),('WSS172','p6'),('WSS175','p6'),('WSS179','p6'),('WSS192','p6'),('WSS197','p6'),('WSS199','p6'),('WSS204','p6'),('WSS213','p6'),('WSS217','p6'),('WSS225','p6'),('WSS23','p6'),('WSS243','p6'),('WSS25','p6'),('WSS256','p6'),('WSS257','p6'),('WSS259','p6'),('WSS272','p6'),('WSS273','p6'),('WSS275','p6'),('WSS282','p6'),('WSS287','p6'),('WSS288','p6'),('WSS30','p6'),('WSS36','p6'),('WSS50','p6'),('WSS87','p6'),('WSS108','p7'),('WSS118','p7'),('WSS140','p7'),('WSS178','p7'),('WSS18','p7'),('WSS200','p7'),('WSS242','p7'),('WSS254','p7'),('WSS255','p7'),('WSS271','p7'),('WSS277','p7'),('WSS283','p7'),('WSS294','p7'),('WSS31','p7'),('WSS43','p7'),('WSS49','p7'),('WSS5','p7'),('WSS71','p7'),('WSS77','p7'),('WSS81','p7'),('WSS84','p7'),('WSS87','p7'),('WSS97','p7'),('WSS98','p7'),('WSS105','p8'),('WSS11','p8'),('WSS112','p8'),('WSS120','p8'),('WSS126','p8'),('WSS133','p8'),('WSS157','p8'),('WSS17','p8'),('WSS18','p8'),('WSS185','p8'),('WSS198','p8'),('WSS2','p8'),('WSS233','p8'),('WSS237','p8'),('WSS238','p8'),('WSS241','p8'),('WSS246','p8'),('WSS253','p8'),('WSS259','p8'),('WSS262','p8'),('WSS270','p8'),('WSS31','p8'),('WSS39','p8'),('WSS66','p8'),('WSS67','p8'),('WSS76','p8'),('WSS83','p8'),('WSS110','p9'),('WSS121','p9'),('WSS129','p9'),('WSS173','p9'),('WSS179','p9'),('WSS182','p9'),('WSS208','p9'),('WSS21','p9'),('WSS218','p9'),('WSS221','p9'),('WSS231','p9'),('WSS232','p9'),('WSS245','p9'),('WSS246','p9'),('WSS276','p9'),('WSS3','p9'),('WSS40','p9'),('WSS49','p9'),('WSS51','p9'),('WSS57','p9'),('WSS6','p9'),('WSS7','p9'),('WSS90','p9'),('WSS93','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS114','p1'),('WSS116','p1'),('WSS157','p1'),('WSS169','p1'),('WSS187','p1'),('WSS20','p1'),('WSS202','p1'),('WSS208','p1'),('WSS239','p1'),('WSS257','p1'),('WSS266','p1'),('WSS267','p1'),('WSS280','p1'),('WSS290','p1'),('WSS292','p1'),('WSS32','p1'),('WSS41','p1'),('WSS42','p1'),('WSS58','p1'),('WSS62','p1'),('WSS74','p1'),('WSS80','p1'),('WSS85','p1'),('WSS88','p1'),('WSS1','p10'),('WSS110','p10'),('WSS111','p10'),('WSS128','p10'),('WSS138','p10'),('WSS145','p10'),('WSS154','p10'),('WSS159','p10'),('WSS197','p10'),('WSS202','p10'),('WSS220','p10'),('WSS240','p10'),('WSS245','p10'),('WSS271','p10'),('WSS273','p10'),('WSS284','p10'),('WSS45','p10'),('WSS65','p10'),('WSS66','p10'),('WSS67','p10'),('WSS69','p10'),('WSS78','p10'),('WSS80','p10'),('WSS88','p10'),('WSS93','p10'),('WSS94','p10'),('WSS97','p10'),('WSS106','p11'),('WSS114','p11'),('WSS118','p11'),('WSS152','p11'),('WSS154','p11'),('WSS16','p11'),('WSS161','p11'),('WSS166','p11'),('WSS174','p11'),('WSS186','p11'),('WSS190','p11'),('WSS203','p11'),('WSS204','p11'),('WSS217','p11'),('WSS221','p11'),('WSS224','p11'),('WSS225','p11'),('WSS229','p11'),('WSS23','p11'),('WSS235','p11'),('WSS244','p11'),('WSS253','p11'),('WSS259','p11'),('WSS260','p11'),('WSS265','p11'),('WSS269','p11'),('WSS289','p11'),('WSS293','p11'),('WSS3','p11'),('WSS30','p11'),('WSS53','p11'),('WSS73','p11'),('WSS74','p11'),('WSS83','p11'),('WSS90','p11'),('WSS121','p12'),('WSS132','p12'),('WSS136','p12'),('WSS142','p12'),('WSS145','p12'),('WSS16','p12'),('WSS165','p12'),('WSS166','p12'),('WSS188','p12'),('WSS19','p12'),('WSS193','p12'),('WSS201','p12'),('WSS206','p12'),('WSS214','p12'),('WSS227','p12'),('WSS234','p12'),('WSS249','p12'),('WSS254','p12'),('WSS262','p12'),('WSS277','p12'),('WSS28','p12'),('WSS285','p12'),('WSS299','p12'),('WSS36','p12'),('WSS65','p12'),('WSS72','p12'),('WSS79','p12'),('WSS99','p12'),('WSS111','p13'),('WSS125','p13'),('WSS13','p13'),('WSS130','p13'),('WSS131','p13'),('WSS137','p13'),('WSS14','p13'),('WSS140','p13'),('WSS144','p13'),('WSS147','p13'),('WSS151','p13'),('WSS160','p13'),('WSS175','p13'),('WSS176','p13'),('WSS177','p13'),('WSS192','p13'),('WSS195','p13'),('WSS203','p13'),('WSS211','p13'),('WSS213','p13'),('WSS245','p13'),('WSS251','p13'),('WSS254','p13'),('WSS256','p13'),('WSS258','p13'),('WSS263','p13'),('WSS270','p13'),('WSS276','p13'),('WSS281','p13'),('WSS33','p13'),('WSS42','p13'),('WSS52','p13'),('WSS56','p13'),('WSS57','p13'),('WSS71','p13'),('WSS8','p13'),('WSS10','p14'),('WSS106','p14'),('WSS109','p14'),('WSS110','p14'),('WSS124','p14'),('WSS126','p14'),('WSS150','p14'),('WSS164','p14'),('WSS169','p14'),('WSS179','p14'),('WSS183','p14'),('WSS21','p14'),('WSS215','p14'),('WSS250','p14'),('WSS264','p14'),('WSS275','p14'),('WSS279','p14'),('WSS283','p14'),('WSS29','p14'),('WSS292','p14'),('WSS298','p14'),('WSS32','p14'),('WSS40','p14'),('WSS70','p14'),('WSS86','p14'),('WSS104','p15'),('WSS108','p15'),('WSS113','p15'),('WSS116','p15'),('WSS124','p15'),('WSS131','p15'),('WSS177','p15'),('WSS191','p15'),('WSS198','p15'),('WSS199','p15'),('WSS200','p15'),('WSS223','p15'),('WSS23','p15'),('WSS244','p15'),('WSS246','p15'),('WSS248','p15'),('WSS261','p15'),('WSS266','p15'),('WSS33','p15'),('WSS46','p15'),('WSS48','p15'),('WSS59','p15'),('WSS6','p15'),('WSS77','p15'),('WSS81','p15'),('WSS102','p16'),('WSS135','p16'),('WSS146','p16'),('WSS152','p16'),('WSS158','p16'),('WSS178','p16'),('WSS184','p16'),('WSS189','p16'),('WSS194','p16'),('WSS196','p16'),('WSS2','p16'),('WSS205','p16'),('WSS214','p16'),('WSS222','p16'),('WSS226','p16'),('WSS238','p16'),('WSS291','p16'),('WSS47','p16'),('WSS51','p16'),('WSS87','p16'),('WSS112','p17'),('WSS115','p17'),('WSS117','p17'),('WSS120','p17'),('WSS127','p17'),('WSS130','p17'),('WSS151','p17'),('WSS156','p17'),('WSS162','p17'),('WSS167','p17'),('WSS170','p17'),('WSS176','p17'),('WSS186','p17'),('WSS19','p17'),('WSS196','p17'),('WSS209','p17'),('WSS216','p17'),('WSS225','p17'),('WSS230','p17'),('WSS242','p17'),('WSS26','p17'),('WSS27','p17'),('WSS273','p17'),('WSS287','p17'),('WSS289','p17'),('WSS291','p17'),('WSS294','p17'),('WSS300','p17'),('WSS31','p17'),('WSS63','p17'),('WSS7','p17'),('WSS86','p17'),('WSS91','p17'),('WSS104','p18'),('WSS105','p18'),('WSS11','p18'),('WSS113','p18'),('WSS122','p18'),('WSS132','p18'),('WSS134','p18'),('WSS148','p18'),('WSS15','p18'),('WSS17','p18'),('WSS172','p18'),('WSS191','p18'),('WSS192','p18'),('WSS197','p18'),('WSS205','p18'),('WSS207','p18'),('WSS21','p18'),('WSS212','p18'),('WSS224','p18'),('WSS232','p18'),('WSS235','p18'),('WSS24','p18'),('WSS259','p18'),('WSS263','p18'),('WSS264','p18'),('WSS269','p18'),('WSS275','p18'),('WSS290','p18'),('WSS296','p18'),('WSS297','p18'),('WSS34','p18'),('WSS49','p18'),('WSS50','p18'),('WSS54','p18'),('WSS63','p18'),('WSS76','p18'),('WSS9','p18'),('WSS94','p18'),('WSS103','p19'),('WSS121','p19'),('WSS14','p19'),('WSS149','p19'),('WSS155','p19'),('WSS160','p19'),('WSS181','p19'),('WSS182','p19'),('WSS193','p19'),('WSS200','p19'),('WSS209','p19'),('WSS210','p19'),('WSS232','p19'),('WSS241','p19'),('WSS256','p19'),('WSS260','p19'),('WSS267','p19'),('WSS268','p19'),('WSS278','p19'),('WSS281','p19'),('WSS288','p19'),('WSS293','p19'),('WSS296','p19'),('WSS37','p19'),('WSS4','p19'),('WSS46','p19'),('WSS47','p19'),('WSS51','p19'),('WSS72','p19'),('WSS90','p19'),('WSS107','p2'),('WSS117','p2'),('WSS118','p2'),('WSS119','p2'),('WSS13','p2'),('WSS141','p2'),('WSS144','p2'),('WSS15','p2'),('WSS161','p2'),('WSS163','p2'),('WSS212','p2'),('WSS213','p2'),('WSS217','p2'),('WSS219','p2'),('WSS241','p2'),('WSS247','p2'),('WSS253','p2'),('WSS270','p2'),('WSS49','p2'),('WSS5','p2'),('WSS64','p2'),('WSS68','p2'),('WSS70','p2'),('WSS85','p2'),('WSS93','p2'),('WSS102','p20'),('WSS125','p20'),('WSS141','p20'),('WSS143','p20'),('WSS149','p20'),('WSS159','p20'),('WSS162','p20'),('WSS183','p20'),('WSS229','p20'),('WSS242','p20'),('WSS261','p20'),('WSS274','p20'),('WSS288','p20'),('WSS38','p20'),('WSS39','p20'),('WSS44','p20'),('WSS55','p20'),('WSS60','p20'),('WSS81','p20'),('WSS82','p20'),('WSS9','p20'),('WSS91','p20'),('WSS95','p20'),('WSS122','p3'),('WSS127','p3'),('WSS129','p3'),('WSS135','p3'),('WSS172','p3'),('WSS181','p3'),('WSS185','p3'),('WSS199','p3'),('WSS206','p3'),('WSS219','p3'),('WSS22','p3'),('WSS222','p3'),('WSS230','p3'),('WSS247','p3'),('WSS26','p3'),('WSS27','p3'),('WSS276','p3'),('WSS28','p3'),('WSS38','p3'),('WSS43','p3'),('WSS10','p4'),('WSS112','p4'),('WSS168','p4'),('WSS173','p4'),('WSS174','p4'),('WSS179','p4'),('WSS18','p4'),('WSS180','p4'),('WSS190','p4'),('WSS194','p4'),('WSS20','p4'),('WSS208','p4'),('WSS228','p4'),('WSS233','p4'),('WSS24','p4'),('WSS248','p4'),('WSS25','p4'),('WSS255','p4'),('WSS279','p4'),('WSS280','p4'),('WSS283','p4'),('WSS284','p4'),('WSS35','p4'),('WSS39','p4'),('WSS44','p4'),('WSS50','p4'),('WSS54','p4'),('WSS58','p4'),('WSS60','p4'),('WSS64','p4'),('WSS66','p4'),('WSS71','p4'),('WSS92','p4'),('WSS96','p4'),('WSS98','p4'),('WSS100','p5'),('WSS103','p5'),('WSS115','p5'),('WSS119','p5'),('WSS134','p5'),('WSS139','p5'),('WSS143','p5'),('WSS157','p5'),('WSS164','p5'),('WSS165','p5'),('WSS167','p5'),('WSS178','p5'),('WSS18','p5'),('WSS182','p5'),('WSS185','p5'),('WSS189','p5'),('WSS195','p5'),('WSS198','p5'),('WSS210','p5'),('WSS215','p5'),('WSS22','p5'),('WSS226','p5'),('WSS234','p5'),('WSS236','p5'),('WSS25','p5'),('WSS255','p5'),('WSS257','p5'),('WSS258','p5'),('WSS285','p5'),('WSS29','p5'),('WSS295','p5'),('WSS299','p5'),('WSS300','p5'),('WSS31','p5'),('WSS41','p5'),('WSS53','p5'),('WSS57','p5'),('WSS6','p5'),('WSS61','p5'),('WSS62','p5'),('WSS68','p5'),('WSS73','p5'),('WSS77','p5'),('WSS79','p5'),('WSS8','p5'),('WSS87','p5'),('WSS89','p5'),('WSS1','p6'),('WSS12','p6'),('WSS140','p6'),('WSS142','p6'),('WSS163','p6'),('WSS171','p6'),('WSS201','p6'),('WSS218','p6'),('WSS223','p6'),('WSS228','p6'),('WSS231','p6'),('WSS236','p6'),('WSS238','p6'),('WSS243','p6'),('WSS265','p6'),('WSS268','p6'),('WSS298','p6'),('WSS35','p6'),('WSS36','p6'),('WSS43','p6'),('WSS59','p6'),('WSS67','p6'),('WSS89','p6'),('WSS98','p6'),('WSS105','p7'),('WSS126','p7'),('WSS133','p7'),('WSS136','p7'),('WSS138','p7'),('WSS158','p7'),('WSS170','p7'),('WSS184','p7'),('WSS188','p7'),('WSS2','p7'),('WSS237','p7'),('WSS239','p7'),('WSS246','p7'),('WSS250','p7'),('WSS282','p7'),('WSS287','p7'),('WSS294','p7'),('WSS295','p7'),('WSS297','p7'),('WSS30','p7'),('WSS69','p7'),('WSS7','p7'),('WSS75','p7'),('WSS84','p7'),('WSS101','p8'),('WSS107','p8'),('WSS12','p8'),('WSS123','p8'),('WSS129','p8'),('WSS153','p8'),('WSS156','p8'),('WSS168','p8'),('WSS173','p8'),('WSS180','p8'),('WSS204','p8'),('WSS207','p8'),('WSS211','p8'),('WSS221','p8'),('WSS237','p8'),('WSS243','p8'),('WSS272','p8'),('WSS274','p8'),('WSS277','p8'),('WSS286','p8'),('WSS34','p8'),('WSS48','p8'),('WSS56','p8'),('WSS75','p8'),('WSS82','p8'),('WSS97','p8'),('WSS100','p9'),('WSS101','p9'),('WSS109','p9'),('WSS11','p9'),('WSS120','p9'),('WSS123','p9'),('WSS128','p9'),('WSS133','p9'),('WSS137','p9'),('WSS146','p9'),('WSS150','p9'),('WSS153','p9'),('WSS155','p9'),('WSS17','p9'),('WSS171','p9'),('WSS175','p9'),('WSS216','p9'),('WSS218','p9'),('WSS220','p9'),('WSS227','p9'),('WSS231','p9'),('WSS233','p9'),('WSS240','p9'),('WSS249','p9'),('WSS251','p9'),('WSS252','p9'),('WSS262','p9'),('WSS272','p9'),('WSS278','p9'),('WSS40','p9'),('WSS45','p9'),('WSS5','p9'),('WSS52','p9'),('WSS61','p9'),('WSS76','p9'),('WSS78','p9'),('WSS83','p9'),('WSS84','p9'),('WSS92','p9'),('WSS95','p9'),('WSS99','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS64'),(1,2,'WSS166'),(2,1,'WSS45'),(2,1,'WSS47'),(3,1,'WSS207'),(3,2,'WSS250'),(4,1,'WSS162'),(4,1,'WSS55'),(5,1,'WSS140'),(5,2,'WSS296'),(6,1,'WSS246'),(6,1,'WSS251'),(7,1,'WSS128'),(7,2,'WSS28'),(8,1,'WSS241'),(8,2,'WSS250'),(9,1,'WSS229'),(9,2,'WSS277'),(10,1,'WSS94'),(10,2,'WSS260'),(11,1,'WSS259'),(11,2,'WSS265'),(12,1,'WSS48'),(12,2,'WSS22'),(12,3,'WSS103'),(13,1,'WSS240'),(13,1,'WSS296'),(14,1,'WSS284'),(14,2,'WSS49'),(15,1,'WSS140'),(15,2,'WSS29'),(16,1,'WSS274'),(16,2,'WSS41'),(17,1,'WSS31'),(17,2,'WSS48'),(17,3,'WSS38'),(18,1,'WSS31'),(18,2,'WSS6'),(18,3,'WSS291'),(19,1,'WSS192'),(19,2,'WSS136'),(20,1,'WSS277'),(20,2,'WSS46'),(20,3,'WSS102'),(21,1,'WSS241'),(21,1,'WSS246'),(22,1,'WSS18'),(22,1,'WSS222'),(23,1,'WSS47'),(23,2,'WSS254'),(24,1,'WSS105'),(24,2,'WSS104'),(24,2,'WSS293'),(25,1,'WSS185'),(25,2,'WSS224'),(26,1,'WSS201'),(26,2,'WSS170'),(27,1,'WSS234'),(27,2,'WSS103'),(28,1,'WSS53'),(28,2,'WSS29'),(29,1,'WSS27'),(29,2,'WSS122'),(30,1,'WSS107'),(30,2,'WSS76'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-27 16:27:42
