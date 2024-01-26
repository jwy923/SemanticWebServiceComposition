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
INSERT INTO `initialgoalparameter` VALUES (1,'I','p1'),(4,'G','p1'),(5,'G','p1'),(10,'I','p1'),(11,'G','p1'),(12,'G','p1'),(15,'I','p1'),(16,'I','p1'),(19,'I','p1'),(20,'G','p1'),(21,'G','p1'),(23,'I','p1'),(24,'G','p1'),(27,'G','p1'),(28,'I','p1'),(29,'G','p1'),(2,'G','p10'),(6,'I','p10'),(8,'G','p10'),(9,'G','p10'),(10,'G','p10'),(13,'G','p10'),(14,'I','p10'),(15,'I','p10'),(17,'I','p10'),(18,'I','p10'),(19,'G','p10'),(25,'G','p10'),(29,'G','p10'),(30,'I','p10'),(1,'I','p11'),(4,'G','p11'),(5,'G','p11'),(7,'G','p11'),(8,'G','p11'),(9,'I','p11'),(10,'G','p11'),(11,'I','p11'),(12,'G','p11'),(14,'G','p11'),(17,'G','p11'),(19,'I','p11'),(20,'I','p11'),(22,'G','p11'),(24,'G','p11'),(25,'I','p11'),(30,'I','p11'),(2,'I','p12'),(3,'I','p12'),(4,'G','p12'),(7,'G','p12'),(9,'G','p12'),(10,'I','p12'),(11,'G','p12'),(17,'I','p12'),(18,'I','p12'),(20,'G','p12'),(21,'G','p12'),(22,'I','p12'),(27,'I','p12'),(29,'I','p12'),(30,'I','p12'),(3,'G','p13'),(4,'I','p13'),(5,'I','p13'),(11,'I','p13'),(14,'G','p13'),(15,'G','p13'),(19,'I','p13'),(21,'G','p13'),(22,'I','p13'),(25,'I','p13'),(29,'G','p13'),(30,'G','p13'),(1,'G','p14'),(3,'G','p14'),(4,'I','p14'),(5,'I','p14'),(6,'I','p14'),(7,'I','p14'),(8,'G','p14'),(9,'I','p14'),(10,'I','p14'),(12,'I','p14'),(13,'G','p14'),(15,'G','p14'),(16,'G','p14'),(20,'G','p14'),(21,'G','p14'),(23,'G','p14'),(24,'G','p14'),(25,'G','p14'),(26,'G','p14'),(28,'I','p14'),(30,'G','p14'),(3,'G','p15'),(5,'I','p15'),(6,'G','p15'),(7,'I','p15'),(8,'G','p15'),(11,'G','p15'),(13,'G','p15'),(19,'G','p15'),(23,'G','p15'),(24,'I','p15'),(26,'I','p15'),(27,'I','p15'),(30,'G','p15'),(1,'G','p16'),(2,'G','p16'),(7,'G','p16'),(12,'I','p16'),(14,'G','p16'),(16,'G','p16'),(19,'G','p16'),(21,'G','p16'),(22,'G','p16'),(26,'G','p16'),(27,'I','p16'),(8,'G','p17'),(9,'G','p17'),(12,'G','p17'),(14,'G','p17'),(17,'G','p17'),(20,'I','p17'),(22,'I','p17'),(24,'G','p17'),(26,'I','p17'),(27,'I','p17'),(30,'G','p17'),(1,'G','p18'),(2,'G','p18'),(3,'G','p18'),(6,'G','p18'),(9,'G','p18'),(10,'G','p18'),(11,'G','p18'),(12,'G','p18'),(13,'I','p18'),(16,'G','p18'),(17,'G','p18'),(18,'I','p18'),(21,'I','p18'),(22,'I','p18'),(25,'G','p18'),(28,'I','p18'),(2,'I','p19'),(3,'G','p19'),(5,'I','p19'),(8,'I','p19'),(13,'G','p19'),(16,'I','p19'),(18,'G','p19'),(23,'G','p19'),(24,'I','p19'),(27,'G','p19'),(28,'I','p19'),(29,'G','p19'),(1,'G','p2'),(5,'G','p2'),(6,'I','p2'),(10,'G','p2'),(11,'I','p2'),(12,'I','p2'),(13,'I','p2'),(14,'I','p2'),(15,'I','p2'),(18,'I','p2'),(19,'G','p2'),(22,'G','p2'),(23,'I','p2'),(24,'I','p2'),(25,'G','p2'),(27,'G','p2'),(28,'G','p2'),(29,'I','p2'),(30,'I','p2'),(1,'G','p20'),(2,'I','p20'),(4,'G','p20'),(6,'G','p20'),(7,'G','p20'),(8,'I','p20'),(9,'I','p20'),(12,'G','p20'),(15,'G','p20'),(16,'I','p20'),(18,'G','p20'),(23,'I','p20'),(25,'G','p20'),(26,'I','p20'),(28,'G','p20'),(1,'G','p3'),(2,'G','p3'),(4,'I','p3'),(5,'G','p3'),(9,'I','p3'),(11,'G','p3'),(12,'I','p3'),(17,'G','p3'),(18,'G','p3'),(20,'I','p3'),(23,'G','p3'),(25,'I','p3'),(28,'G','p3'),(29,'G','p3'),(2,'G','p4'),(3,'I','p4'),(4,'G','p4'),(7,'G','p4'),(9,'G','p4'),(13,'G','p4'),(14,'I','p4'),(15,'I','p4'),(16,'G','p4'),(17,'I','p4'),(18,'G','p4'),(20,'G','p4'),(22,'G','p4'),(23,'G','p4'),(26,'G','p4'),(27,'G','p4'),(28,'G','p4'),(2,'I','p5'),(5,'G','p5'),(6,'G','p5'),(13,'G','p5'),(14,'G','p5'),(16,'I','p5'),(17,'I','p5'),(19,'I','p5'),(21,'G','p5'),(23,'G','p5'),(26,'I','p5'),(28,'G','p5'),(29,'G','p5'),(3,'I','p6'),(7,'I','p6'),(9,'G','p6'),(10,'G','p6'),(11,'G','p6'),(12,'G','p6'),(15,'G','p6'),(20,'I','p6'),(24,'G','p6'),(27,'G','p6'),(28,'G','p6'),(30,'G','p6'),(1,'I','p7'),(3,'G','p7'),(4,'G','p7'),(6,'I','p7'),(7,'I','p7'),(8,'I','p7'),(13,'I','p7'),(15,'G','p7'),(17,'G','p7'),(19,'G','p7'),(21,'I','p7'),(22,'G','p7'),(24,'G','p7'),(25,'G','p7'),(26,'G','p7'),(30,'G','p7'),(1,'I','p8'),(2,'G','p8'),(3,'I','p8'),(4,'I','p8'),(5,'G','p8'),(6,'G','p8'),(7,'G','p8'),(8,'I','p8'),(10,'I','p8'),(11,'I','p8'),(14,'I','p8'),(15,'G','p8'),(16,'G','p8'),(18,'G','p8'),(20,'G','p8'),(21,'I','p8'),(26,'G','p8'),(27,'G','p8'),(29,'I','p8'),(6,'G','p9'),(8,'G','p9'),(10,'G','p9'),(13,'I','p9'),(14,'G','p9'),(16,'G','p9'),(17,'G','p9'),(18,'G','p9'),(19,'G','p9'),(20,'G','p9'),(21,'I','p9'),(22,'G','p9'),(23,'I','p9'),(24,'I','p9'),(25,'I','p9'),(26,'G','p9'),(29,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS101','p1'),('WSS110','p1'),('WSS122','p1'),('WSS131','p1'),('WSS143','p1'),('WSS146','p1'),('WSS149','p1'),('WSS15','p1'),('WSS154','p1'),('WSS174','p1'),('WSS205','p1'),('WSS22','p1'),('WSS229','p1'),('WSS235','p1'),('WSS249','p1'),('WSS254','p1'),('WSS262','p1'),('WSS28','p1'),('WSS283','p1'),('WSS293','p1'),('WSS44','p1'),('WSS48','p1'),('WSS55','p1'),('WSS73','p1'),('WSS82','p1'),('WSS91','p1'),('WSS95','p1'),('WSS11','p10'),('WSS136','p10'),('WSS137','p10'),('WSS156','p10'),('WSS162','p10'),('WSS176','p10'),('WSS177','p10'),('WSS181','p10'),('WSS182','p10'),('WSS195','p10'),('WSS201','p10'),('WSS210','p10'),('WSS231','p10'),('WSS259','p10'),('WSS26','p10'),('WSS266','p10'),('WSS283','p10'),('WSS296','p10'),('WSS298','p10'),('WSS32','p10'),('WSS43','p10'),('WSS47','p10'),('WSS49','p10'),('WSS57','p10'),('WSS76','p10'),('WSS100','p11'),('WSS106','p11'),('WSS114','p11'),('WSS115','p11'),('WSS136','p11'),('WSS148','p11'),('WSS161','p11'),('WSS163','p11'),('WSS164','p11'),('WSS185','p11'),('WSS199','p11'),('WSS2','p11'),('WSS200','p11'),('WSS213','p11'),('WSS215','p11'),('WSS227','p11'),('WSS248','p11'),('WSS263','p11'),('WSS264','p11'),('WSS269','p11'),('WSS270','p11'),('WSS294','p11'),('WSS295','p11'),('WSS297','p11'),('WSS31','p11'),('WSS34','p11'),('WSS71','p11'),('WSS77','p11'),('WSS97','p11'),('WSS1','p12'),('WSS103','p12'),('WSS121','p12'),('WSS124','p12'),('WSS128','p12'),('WSS138','p12'),('WSS14','p12'),('WSS150','p12'),('WSS151','p12'),('WSS156','p12'),('WSS178','p12'),('WSS190','p12'),('WSS234','p12'),('WSS236','p12'),('WSS241','p12'),('WSS265','p12'),('WSS273','p12'),('WSS276','p12'),('WSS297','p12'),('WSS36','p12'),('WSS43','p12'),('WSS49','p12'),('WSS51','p12'),('WSS58','p12'),('WSS83','p12'),('WSS1','p13'),('WSS105','p13'),('WSS126','p13'),('WSS13','p13'),('WSS138','p13'),('WSS139','p13'),('WSS140','p13'),('WSS142','p13'),('WSS149','p13'),('WSS155','p13'),('WSS157','p13'),('WSS175','p13'),('WSS185','p13'),('WSS186','p13'),('WSS190','p13'),('WSS191','p13'),('WSS20','p13'),('WSS206','p13'),('WSS215','p13'),('WSS218','p13'),('WSS223','p13'),('WSS245','p13'),('WSS25','p13'),('WSS268','p13'),('WSS270','p13'),('WSS278','p13'),('WSS284','p13'),('WSS285','p13'),('WSS287','p13'),('WSS294','p13'),('WSS32','p13'),('WSS60','p13'),('WSS81','p13'),('WSS85','p13'),('WSS86','p13'),('WSS89','p13'),('WSS90','p13'),('WSS92','p13'),('WSS99','p13'),('WSS108','p14'),('WSS11','p14'),('WSS12','p14'),('WSS124','p14'),('WSS129','p14'),('WSS144','p14'),('WSS172','p14'),('WSS195','p14'),('WSS197','p14'),('WSS216','p14'),('WSS226','p14'),('WSS239','p14'),('WSS25','p14'),('WSS251','p14'),('WSS254','p14'),('WSS274','p14'),('WSS277','p14'),('WSS282','p14'),('WSS286','p14'),('WSS289','p14'),('WSS291','p14'),('WSS30','p14'),('WSS36','p14'),('WSS4','p14'),('WSS47','p14'),('WSS80','p14'),('WSS9','p14'),('WSS92','p14'),('WSS98','p14'),('WSS107','p15'),('WSS114','p15'),('WSS118','p15'),('WSS122','p15'),('WSS125','p15'),('WSS132','p15'),('WSS134','p15'),('WSS135','p15'),('WSS140','p15'),('WSS153','p15'),('WSS170','p15'),('WSS176','p15'),('WSS18','p15'),('WSS196','p15'),('WSS198','p15'),('WSS200','p15'),('WSS202','p15'),('WSS210','p15'),('WSS214','p15'),('WSS251','p15'),('WSS258','p15'),('WSS285','p15'),('WSS29','p15'),('WSS290','p15'),('WSS37','p15'),('WSS62','p15'),('WSS63','p15'),('WSS68','p15'),('WSS70','p15'),('WSS8','p15'),('WSS84','p15'),('WSS96','p15'),('WSS103','p16'),('WSS109','p16'),('WSS111','p16'),('WSS115','p16'),('WSS118','p16'),('WSS131','p16'),('WSS154','p16'),('WSS164','p16'),('WSS192','p16'),('WSS209','p16'),('WSS212','p16'),('WSS218','p16'),('WSS221','p16'),('WSS224','p16'),('WSS233','p16'),('WSS237','p16'),('WSS24','p16'),('WSS244','p16'),('WSS249','p16'),('WSS259','p16'),('WSS275','p16'),('WSS28','p16'),('WSS289','p16'),('WSS3','p16'),('WSS300','p16'),('WSS4','p16'),('WSS60','p16'),('WSS61','p16'),('WSS7','p16'),('WSS75','p16'),('WSS104','p17'),('WSS119','p17'),('WSS128','p17'),('WSS143','p17'),('WSS144','p17'),('WSS146','p17'),('WSS179','p17'),('WSS180','p17'),('WSS189','p17'),('WSS192','p17'),('WSS208','p17'),('WSS217','p17'),('WSS225','p17'),('WSS228','p17'),('WSS238','p17'),('WSS255','p17'),('WSS27','p17'),('WSS35','p17'),('WSS42','p17'),('WSS54','p17'),('WSS56','p17'),('WSS61','p17'),('WSS70','p17'),('WSS86','p17'),('WSS100','p18'),('WSS102','p18'),('WSS119','p18'),('WSS120','p18'),('WSS125','p18'),('WSS139','p18'),('WSS14','p18'),('WSS141','p18'),('WSS145','p18'),('WSS162','p18'),('WSS167','p18'),('WSS169','p18'),('WSS18','p18'),('WSS194','p18'),('WSS214','p18'),('WSS241','p18'),('WSS242','p18'),('WSS246','p18'),('WSS250','p18'),('WSS257','p18'),('WSS26','p18'),('WSS280','p18'),('WSS281','p18'),('WSS30','p18'),('WSS34','p18'),('WSS37','p18'),('WSS55','p18'),('WSS57','p18'),('WSS79','p18'),('WSS91','p18'),('WSS102','p19'),('WSS13','p19'),('WSS130','p19'),('WSS15','p19'),('WSS158','p19'),('WSS175','p19'),('WSS202','p19'),('WSS204','p19'),('WSS211','p19'),('WSS239','p19'),('WSS258','p19'),('WSS264','p19'),('WSS266','p19'),('WSS267','p19'),('WSS279','p19'),('WSS288','p19'),('WSS29','p19'),('WSS299','p19'),('WSS41','p19'),('WSS66','p19'),('WSS67','p19'),('WSS78','p19'),('WSS9','p19'),('WSS93','p19'),('WSS94','p19'),('WSS95','p19'),('WSS109','p2'),('WSS110','p2'),('WSS111','p2'),('WSS112','p2'),('WSS142','p2'),('WSS16','p2'),('WSS17','p2'),('WSS179','p2'),('WSS184','p2'),('WSS197','p2'),('WSS203','p2'),('WSS207','p2'),('WSS221','p2'),('WSS222','p2'),('WSS237','p2'),('WSS244','p2'),('WSS253','p2'),('WSS272','p2'),('WSS273','p2'),('WSS3','p2'),('WSS39','p2'),('WSS42','p2'),('WSS52','p2'),('WSS56','p2'),('WSS69','p2'),('WSS83','p2'),('WSS96','p2'),('WSS113','p20'),('WSS134','p20'),('WSS141','p20'),('WSS150','p20'),('WSS166','p20'),('WSS168','p20'),('WSS171','p20'),('WSS181','p20'),('WSS183','p20'),('WSS189','p20'),('WSS19','p20'),('WSS198','p20'),('WSS22','p20'),('WSS220','p20'),('WSS233','p20'),('WSS260','p20'),('WSS265','p20'),('WSS271','p20'),('WSS272','p20'),('WSS31','p20'),('WSS33','p20'),('WSS41','p20'),('WSS50','p20'),('WSS53','p20'),('WSS54','p20'),('WSS73','p20'),('WSS77','p20'),('WSS87','p20'),('WSS116','p3'),('WSS117','p3'),('WSS123','p3'),('WSS129','p3'),('WSS133','p3'),('WSS153','p3'),('WSS158','p3'),('WSS161','p3'),('WSS163','p3'),('WSS169','p3'),('WSS17','p3'),('WSS173','p3'),('WSS174','p3'),('WSS183','p3'),('WSS187','p3'),('WSS193','p3'),('WSS21','p3'),('WSS211','p3'),('WSS216','p3'),('WSS219','p3'),('WSS222','p3'),('WSS248','p3'),('WSS27','p3'),('WSS274','p3'),('WSS280','p3'),('WSS282','p3'),('WSS298','p3'),('WSS53','p3'),('WSS68','p3'),('WSS71','p3'),('WSS75','p3'),('WSS76','p3'),('WSS84','p3'),('WSS85','p3'),('WSS101','p4'),('WSS108','p4'),('WSS121','p4'),('WSS159','p4'),('WSS16','p4'),('WSS173','p4'),('WSS194','p4'),('WSS196','p4'),('WSS201','p4'),('WSS212','p4'),('WSS229','p4'),('WSS236','p4'),('WSS240','p4'),('WSS246','p4'),('WSS247','p4'),('WSS256','p4'),('WSS257','p4'),('WSS267','p4'),('WSS279','p4'),('WSS284','p4'),('WSS290','p4'),('WSS296','p4'),('WSS35','p4'),('WSS39','p4'),('WSS40','p4'),('WSS46','p4'),('WSS50','p4'),('WSS59','p4'),('WSS62','p4'),('WSS65','p4'),('WSS72','p4'),('WSS78','p4'),('WSS8','p4'),('WSS81','p4'),('WSS98','p4'),('WSS10','p5'),('WSS106','p5'),('WSS127','p5'),('WSS132','p5'),('WSS166','p5'),('WSS170','p5'),('WSS187','p5'),('WSS199','p5'),('WSS205','p5'),('WSS213','p5'),('WSS217','p5'),('WSS224','p5'),('WSS24','p5'),('WSS261','p5'),('WSS269','p5'),('WSS33','p5'),('WSS52','p5'),('WSS74','p5'),('WSS79','p5'),('WSS112','p6'),('WSS113','p6'),('WSS116','p6'),('WSS126','p6'),('WSS147','p6'),('WSS160','p6'),('WSS167','p6'),('WSS180','p6'),('WSS188','p6'),('WSS2','p6'),('WSS204','p6'),('WSS208','p6'),('WSS220','p6'),('WSS223','p6'),('WSS227','p6'),('WSS230','p6'),('WSS235','p6'),('WSS240','p6'),('WSS243','p6'),('WSS253','p6'),('WSS256','p6'),('WSS261','p6'),('WSS262','p6'),('WSS277','p6'),('WSS286','p6'),('WSS288','p6'),('WSS291','p6'),('WSS38','p6'),('WSS5','p6'),('WSS69','p6'),('WSS74','p6'),('WSS88','p6'),('WSS107','p7'),('WSS127','p7'),('WSS130','p7'),('WSS133','p7'),('WSS137','p7'),('WSS148','p7'),('WSS152','p7'),('WSS160','p7'),('WSS172','p7'),('WSS203','p7'),('WSS206','p7'),('WSS21','p7'),('WSS228','p7'),('WSS23','p7'),('WSS231','p7'),('WSS238','p7'),('WSS243','p7'),('WSS252','p7'),('WSS275','p7'),('WSS278','p7'),('WSS292','p7'),('WSS38','p7'),('WSS48','p7'),('WSS51','p7'),('WSS58','p7'),('WSS6','p7'),('WSS64','p7'),('WSS66','p7'),('WSS87','p7'),('WSS89','p7'),('WSS90','p7'),('WSS104','p8'),('WSS117','p8'),('WSS151','p8'),('WSS152','p8'),('WSS165','p8'),('WSS168','p8'),('WSS178','p8'),('WSS188','p8'),('WSS19','p8'),('WSS20','p8'),('WSS207','p8'),('WSS209','p8'),('WSS219','p8'),('WSS225','p8'),('WSS242','p8'),('WSS247','p8'),('WSS250','p8'),('WSS276','p8'),('WSS287','p8'),('WSS40','p8'),('WSS44','p8'),('WSS46','p8'),('WSS5','p8'),('WSS6','p8'),('WSS82','p8'),('WSS99','p8'),('WSS10','p9'),('WSS105','p9'),('WSS120','p9'),('WSS123','p9'),('WSS145','p9'),('WSS147','p9'),('WSS165','p9'),('WSS182','p9'),('WSS184','p9'),('WSS193','p9'),('WSS226','p9'),('WSS23','p9'),('WSS230','p9'),('WSS232','p9'),('WSS234','p9'),('WSS252','p9'),('WSS260','p9'),('WSS263','p9'),('WSS268','p9'),('WSS271','p9'),('WSS292','p9'),('WSS293','p9'),('WSS295','p9'),('WSS299','p9'),('WSS300','p9'),('WSS45','p9'),('WSS63','p9'),('WSS64','p9'),('WSS65','p9'),('WSS7','p9'),('WSS72','p9'),('WSS80','p9'),('WSS93','p9'),('WSS94','p9'),('WSS97','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS100','p1'),('WSS101','p1'),('WSS102','p1'),('WSS116','p1'),('WSS126','p1'),('WSS133','p1'),('WSS145','p1'),('WSS150','p1'),('WSS164','p1'),('WSS17','p1'),('WSS170','p1'),('WSS171','p1'),('WSS176','p1'),('WSS178','p1'),('WSS180','p1'),('WSS186','p1'),('WSS192','p1'),('WSS193','p1'),('WSS197','p1'),('WSS198','p1'),('WSS200','p1'),('WSS201','p1'),('WSS202','p1'),('WSS204','p1'),('WSS210','p1'),('WSS217','p1'),('WSS222','p1'),('WSS233','p1'),('WSS235','p1'),('WSS239','p1'),('WSS244','p1'),('WSS245','p1'),('WSS258','p1'),('WSS259','p1'),('WSS26','p1'),('WSS264','p1'),('WSS266','p1'),('WSS274','p1'),('WSS276','p1'),('WSS278','p1'),('WSS285','p1'),('WSS29','p1'),('WSS300','p1'),('WSS36','p1'),('WSS37','p1'),('WSS41','p1'),('WSS42','p1'),('WSS43','p1'),('WSS52','p1'),('WSS6','p1'),('WSS69','p1'),('WSS70','p1'),('WSS71','p1'),('WSS77','p1'),('WSS79','p1'),('WSS87','p1'),('WSS97','p1'),('WSS101','p10'),('WSS109','p10'),('WSS110','p10'),('WSS115','p10'),('WSS116','p10'),('WSS117','p10'),('WSS122','p10'),('WSS133','p10'),('WSS146','p10'),('WSS148','p10'),('WSS153','p10'),('WSS154','p10'),('WSS157','p10'),('WSS158','p10'),('WSS160','p10'),('WSS161','p10'),('WSS162','p10'),('WSS169','p10'),('WSS171','p10'),('WSS174','p10'),('WSS179','p10'),('WSS182','p10'),('WSS184','p10'),('WSS187','p10'),('WSS188','p10'),('WSS189','p10'),('WSS198','p10'),('WSS20','p10'),('WSS205','p10'),('WSS208','p10'),('WSS22','p10'),('WSS225','p10'),('WSS226','p10'),('WSS227','p10'),('WSS240','p10'),('WSS242','p10'),('WSS249','p10'),('WSS250','p10'),('WSS253','p10'),('WSS256','p10'),('WSS257','p10'),('WSS265','p10'),('WSS284','p10'),('WSS286','p10'),('WSS289','p10'),('WSS293','p10'),('WSS296','p10'),('WSS298','p10'),('WSS299','p10'),('WSS30','p10'),('WSS300','p10'),('WSS38','p10'),('WSS39','p10'),('WSS42','p10'),('WSS48','p10'),('WSS59','p10'),('WSS63','p10'),('WSS66','p10'),('WSS71','p10'),('WSS73','p10'),('WSS75','p10'),('WSS8','p10'),('WSS83','p10'),('WSS88','p10'),('WSS94','p10'),('WSS97','p10'),('WSS99','p10'),('WSS111','p11'),('WSS114','p11'),('WSS122','p11'),('WSS124','p11'),('WSS128','p11'),('WSS13','p11'),('WSS136','p11'),('WSS152','p11'),('WSS155','p11'),('WSS157','p11'),('WSS165','p11'),('WSS167','p11'),('WSS172','p11'),('WSS186','p11'),('WSS187','p11'),('WSS20','p11'),('WSS203','p11'),('WSS204','p11'),('WSS218','p11'),('WSS221','p11'),('WSS228','p11'),('WSS229','p11'),('WSS234','p11'),('WSS239','p11'),('WSS242','p11'),('WSS248','p11'),('WSS249','p11'),('WSS251','p11'),('WSS260','p11'),('WSS265','p11'),('WSS271','p11'),('WSS272','p11'),('WSS273','p11'),('WSS276','p11'),('WSS281','p11'),('WSS284','p11'),('WSS294','p11'),('WSS297','p11'),('WSS31','p11'),('WSS37','p11'),('WSS5','p11'),('WSS68','p11'),('WSS72','p11'),('WSS89','p11'),('WSS96','p11'),('WSS99','p11'),('WSS102','p12'),('WSS107','p12'),('WSS112','p12'),('WSS127','p12'),('WSS140','p12'),('WSS145','p12'),('WSS150','p12'),('WSS155','p12'),('WSS156','p12'),('WSS158','p12'),('WSS162','p12'),('WSS168','p12'),('WSS183','p12'),('WSS184','p12'),('WSS191','p12'),('WSS192','p12'),('WSS196','p12'),('WSS199','p12'),('WSS203','p12'),('WSS209','p12'),('WSS212','p12'),('WSS223','p12'),('WSS224','p12'),('WSS23','p12'),('WSS231','p12'),('WSS234','p12'),('WSS241','p12'),('WSS261','p12'),('WSS271','p12'),('WSS273','p12'),('WSS275','p12'),('WSS276','p12'),('WSS280','p12'),('WSS282','p12'),('WSS286','p12'),('WSS291','p12'),('WSS295','p12'),('WSS297','p12'),('WSS37','p12'),('WSS38','p12'),('WSS4','p12'),('WSS40','p12'),('WSS43','p12'),('WSS49','p12'),('WSS52','p12'),('WSS61','p12'),('WSS65','p12'),('WSS77','p12'),('WSS85','p12'),('WSS86','p12'),('WSS94','p12'),('WSS105','p13'),('WSS106','p13'),('WSS111','p13'),('WSS113','p13'),('WSS117','p13'),('WSS119','p13'),('WSS125','p13'),('WSS126','p13'),('WSS130','p13'),('WSS132','p13'),('WSS139','p13'),('WSS14','p13'),('WSS140','p13'),('WSS141','p13'),('WSS145','p13'),('WSS148','p13'),('WSS157','p13'),('WSS160','p13'),('WSS163','p13'),('WSS166','p13'),('WSS173','p13'),('WSS181','p13'),('WSS188','p13'),('WSS194','p13'),('WSS205','p13'),('WSS21','p13'),('WSS223','p13'),('WSS227','p13'),('WSS228','p13'),('WSS238','p13'),('WSS24','p13'),('WSS240','p13'),('WSS244','p13'),('WSS247','p13'),('WSS251','p13'),('WSS252','p13'),('WSS255','p13'),('WSS261','p13'),('WSS262','p13'),('WSS266','p13'),('WSS269','p13'),('WSS272','p13'),('WSS275','p13'),('WSS280','p13'),('WSS29','p13'),('WSS295','p13'),('WSS33','p13'),('WSS34','p13'),('WSS49','p13'),('WSS54','p13'),('WSS64','p13'),('WSS84','p13'),('WSS85','p13'),('WSS87','p13'),('WSS102','p14'),('WSS108','p14'),('WSS113','p14'),('WSS118','p14'),('WSS12','p14'),('WSS135','p14'),('WSS146','p14'),('WSS147','p14'),('WSS157','p14'),('WSS16','p14'),('WSS160','p14'),('WSS169','p14'),('WSS18','p14'),('WSS183','p14'),('WSS188','p14'),('WSS191','p14'),('WSS210','p14'),('WSS22','p14'),('WSS231','p14'),('WSS249','p14'),('WSS255','p14'),('WSS258','p14'),('WSS262','p14'),('WSS267','p14'),('WSS27','p14'),('WSS270','p14'),('WSS272','p14'),('WSS273','p14'),('WSS284','p14'),('WSS286','p14'),('WSS294','p14'),('WSS31','p14'),('WSS32','p14'),('WSS34','p14'),('WSS36','p14'),('WSS40','p14'),('WSS50','p14'),('WSS59','p14'),('WSS62','p14'),('WSS7','p14'),('WSS74','p14'),('WSS75','p14'),('WSS78','p14'),('WSS92','p14'),('WSS96','p14'),('WSS10','p15'),('WSS105','p15'),('WSS12','p15'),('WSS120','p15'),('WSS123','p15'),('WSS126','p15'),('WSS134','p15'),('WSS14','p15'),('WSS143','p15'),('WSS147','p15'),('WSS149','p15'),('WSS152','p15'),('WSS156','p15'),('WSS161','p15'),('WSS164','p15'),('WSS167','p15'),('WSS180','p15'),('WSS184','p15'),('WSS189','p15'),('WSS191','p15'),('WSS198','p15'),('WSS204','p15'),('WSS208','p15'),('WSS219','p15'),('WSS229','p15'),('WSS23','p15'),('WSS236','p15'),('WSS245','p15'),('WSS248','p15'),('WSS252','p15'),('WSS254','p15'),('WSS257','p15'),('WSS261','p15'),('WSS270','p15'),('WSS271','p15'),('WSS279','p15'),('WSS281','p15'),('WSS283','p15'),('WSS288','p15'),('WSS29','p15'),('WSS30','p15'),('WSS300','p15'),('WSS41','p15'),('WSS45','p15'),('WSS46','p15'),('WSS48','p15'),('WSS55','p15'),('WSS58','p15'),('WSS59','p15'),('WSS6','p15'),('WSS67','p15'),('WSS68','p15'),('WSS70','p15'),('WSS72','p15'),('WSS9','p15'),('WSS91','p15'),('WSS98','p15'),('WSS103','p16'),('WSS104','p16'),('WSS113','p16'),('WSS128','p16'),('WSS129','p16'),('WSS13','p16'),('WSS133','p16'),('WSS142','p16'),('WSS150','p16'),('WSS152','p16'),('WSS153','p16'),('WSS159','p16'),('WSS166','p16'),('WSS171','p16'),('WSS172','p16'),('WSS181','p16'),('WSS182','p16'),('WSS183','p16'),('WSS2','p16'),('WSS208','p16'),('WSS213','p16'),('WSS217','p16'),('WSS219','p16'),('WSS22','p16'),('WSS224','p16'),('WSS227','p16'),('WSS233','p16'),('WSS238','p16'),('WSS239','p16'),('WSS24','p16'),('WSS243','p16'),('WSS246','p16'),('WSS247','p16'),('WSS250','p16'),('WSS26','p16'),('WSS263','p16'),('WSS275','p16'),('WSS277','p16'),('WSS29','p16'),('WSS299','p16'),('WSS46','p16'),('WSS51','p16'),('WSS57','p16'),('WSS6','p16'),('WSS60','p16'),('WSS64','p16'),('WSS65','p16'),('WSS67','p16'),('WSS71','p16'),('WSS73','p16'),('WSS74','p16'),('WSS76','p16'),('WSS95','p16'),('WSS96','p16'),('WSS1','p17'),('WSS109','p17'),('WSS115','p17'),('WSS117','p17'),('WSS130','p17'),('WSS134','p17'),('WSS137','p17'),('WSS143','p17'),('WSS153','p17'),('WSS155','p17'),('WSS161','p17'),('WSS163','p17'),('WSS170','p17'),('WSS174','p17'),('WSS176','p17'),('WSS177','p17'),('WSS179','p17'),('WSS19','p17'),('WSS193','p17'),('WSS195','p17'),('WSS197','p17'),('WSS199','p17'),('WSS207','p17'),('WSS208','p17'),('WSS211','p17'),('WSS220','p17'),('WSS229','p17'),('WSS232','p17'),('WSS234','p17'),('WSS238','p17'),('WSS239','p17'),('WSS242','p17'),('WSS246','p17'),('WSS25','p17'),('WSS259','p17'),('WSS260','p17'),('WSS267','p17'),('WSS27','p17'),('WSS276','p17'),('WSS279','p17'),('WSS284','p17'),('WSS287','p17'),('WSS292','p17'),('WSS298','p17'),('WSS3','p17'),('WSS31','p17'),('WSS36','p17'),('WSS37','p17'),('WSS4','p17'),('WSS41','p17'),('WSS42','p17'),('WSS5','p17'),('WSS54','p17'),('WSS59','p17'),('WSS62','p17'),('WSS67','p17'),('WSS76','p17'),('WSS77','p17'),('WSS80','p17'),('WSS85','p17'),('WSS89','p17'),('WSS90','p17'),('WSS91','p17'),('WSS94','p17'),('WSS10','p18'),('WSS103','p18'),('WSS120','p18'),('WSS121','p18'),('WSS124','p18'),('WSS125','p18'),('WSS128','p18'),('WSS131','p18'),('WSS139','p18'),('WSS14','p18'),('WSS140','p18'),('WSS141','p18'),('WSS149','p18'),('WSS15','p18'),('WSS159','p18'),('WSS163','p18'),('WSS175','p18'),('WSS178','p18'),('WSS181','p18'),('WSS186','p18'),('WSS193','p18'),('WSS194','p18'),('WSS195','p18'),('WSS201','p18'),('WSS206','p18'),('WSS215','p18'),('WSS218','p18'),('WSS221','p18'),('WSS232','p18'),('WSS246','p18'),('WSS250','p18'),('WSS251','p18'),('WSS254','p18'),('WSS266','p18'),('WSS268','p18'),('WSS273','p18'),('WSS283','p18'),('WSS289','p18'),('WSS290','p18'),('WSS291','p18'),('WSS298','p18'),('WSS38','p18'),('WSS40','p18'),('WSS51','p18'),('WSS52','p18'),('WSS53','p18'),('WSS57','p18'),('WSS60','p18'),('WSS68','p18'),('WSS69','p18'),('WSS77','p18'),('WSS8','p18'),('WSS81','p18'),('WSS82','p18'),('WSS84','p18'),('WSS86','p18'),('WSS88','p18'),('WSS9','p18'),('WSS93','p18'),('WSS96','p18'),('WSS98','p18'),('WSS100','p19'),('WSS104','p19'),('WSS109','p19'),('WSS121','p19'),('WSS129','p19'),('WSS137','p19'),('WSS138','p19'),('WSS144','p19'),('WSS145','p19'),('WSS15','p19'),('WSS158','p19'),('WSS165','p19'),('WSS175','p19'),('WSS182','p19'),('WSS19','p19'),('WSS195','p19'),('WSS196','p19'),('WSS201','p19'),('WSS209','p19'),('WSS211','p19'),('WSS214','p19'),('WSS215','p19'),('WSS216','p19'),('WSS217','p19'),('WSS218','p19'),('WSS222','p19'),('WSS228','p19'),('WSS230','p19'),('WSS253','p19'),('WSS255','p19'),('WSS256','p19'),('WSS262','p19'),('WSS264','p19'),('WSS265','p19'),('WSS268','p19'),('WSS271','p19'),('WSS279','p19'),('WSS285','p19'),('WSS292','p19'),('WSS293','p19'),('WSS296','p19'),('WSS300','p19'),('WSS31','p19'),('WSS33','p19'),('WSS4','p19'),('WSS53','p19'),('WSS56','p19'),('WSS64','p19'),('WSS7','p19'),('WSS70','p19'),('WSS76','p19'),('WSS79','p19'),('WSS8','p19'),('WSS80','p19'),('WSS10','p2'),('WSS106','p2'),('WSS108','p2'),('WSS110','p2'),('WSS112','p2'),('WSS115','p2'),('WSS116','p2'),('WSS119','p2'),('WSS121','p2'),('WSS122','p2'),('WSS124','p2'),('WSS125','p2'),('WSS13','p2'),('WSS136','p2'),('WSS138','p2'),('WSS14','p2'),('WSS142','p2'),('WSS154','p2'),('WSS170','p2'),('WSS171','p2'),('WSS175','p2'),('WSS179','p2'),('WSS181','p2'),('WSS185','p2'),('WSS193','p2'),('WSS199','p2'),('WSS201','p2'),('WSS205','p2'),('WSS206','p2'),('WSS209','p2'),('WSS21','p2'),('WSS210','p2'),('WSS212','p2'),('WSS214','p2'),('WSS216','p2'),('WSS224','p2'),('WSS24','p2'),('WSS243','p2'),('WSS250','p2'),('WSS26','p2'),('WSS267','p2'),('WSS277','p2'),('WSS28','p2'),('WSS282','p2'),('WSS283','p2'),('WSS286','p2'),('WSS287','p2'),('WSS3','p2'),('WSS30','p2'),('WSS5','p2'),('WSS51','p2'),('WSS68','p2'),('WSS7','p2'),('WSS71','p2'),('WSS81','p2'),('WSS86','p2'),('WSS87','p2'),('WSS90','p2'),('WSS93','p2'),('WSS103','p20'),('WSS11','p20'),('WSS110','p20'),('WSS111','p20'),('WSS118','p20'),('WSS120','p20'),('WSS122','p20'),('WSS127','p20'),('WSS129','p20'),('WSS130','p20'),('WSS131','p20'),('WSS137','p20'),('WSS142','p20'),('WSS148','p20'),('WSS151','p20'),('WSS162','p20'),('WSS170','p20'),('WSS172','p20'),('WSS174','p20'),('WSS183','p20'),('WSS185','p20'),('WSS190','p20'),('WSS196','p20'),('WSS2','p20'),('WSS209','p20'),('WSS219','p20'),('WSS222','p20'),('WSS225','p20'),('WSS226','p20'),('WSS230','p20'),('WSS233','p20'),('WSS234','p20'),('WSS245','p20'),('WSS25','p20'),('WSS251','p20'),('WSS263','p20'),('WSS264','p20'),('WSS269','p20'),('WSS274','p20'),('WSS280','p20'),('WSS282','p20'),('WSS288','p20'),('WSS32','p20'),('WSS33','p20'),('WSS39','p20'),('WSS40','p20'),('WSS49','p20'),('WSS53','p20'),('WSS57','p20'),('WSS66','p20'),('WSS85','p20'),('WSS97','p20'),('WSS100','p3'),('WSS103','p3'),('WSS114','p3'),('WSS13','p3'),('WSS136','p3'),('WSS139','p3'),('WSS143','p3'),('WSS150','p3'),('WSS154','p3'),('WSS16','p3'),('WSS173','p3'),('WSS178','p3'),('WSS184','p3'),('WSS185','p3'),('WSS186','p3'),('WSS192','p3'),('WSS194','p3'),('WSS200','p3'),('WSS202','p3'),('WSS203','p3'),('WSS21','p3'),('WSS213','p3'),('WSS214','p3'),('WSS225','p3'),('WSS226','p3'),('WSS238','p3'),('WSS241','p3'),('WSS246','p3'),('WSS247','p3'),('WSS249','p3'),('WSS25','p3'),('WSS253','p3'),('WSS258','p3'),('WSS259','p3'),('WSS261','p3'),('WSS27','p3'),('WSS282','p3'),('WSS285','p3'),('WSS290','p3'),('WSS291','p3'),('WSS292','p3'),('WSS294','p3'),('WSS299','p3'),('WSS3','p3'),('WSS34','p3'),('WSS43','p3'),('WSS44','p3'),('WSS46','p3'),('WSS47','p3'),('WSS50','p3'),('WSS56','p3'),('WSS57','p3'),('WSS58','p3'),('WSS61','p3'),('WSS63','p3'),('WSS65','p3'),('WSS67','p3'),('WSS7','p3'),('WSS70','p3'),('WSS76','p3'),('WSS78','p3'),('WSS81','p3'),('WSS83','p3'),('WSS91','p3'),('WSS92','p3'),('WSS93','p3'),('WSS99','p3'),('WSS102','p4'),('WSS108','p4'),('WSS115','p4'),('WSS123','p4'),('WSS127','p4'),('WSS132','p4'),('WSS136','p4'),('WSS139','p4'),('WSS144','p4'),('WSS148','p4'),('WSS164','p4'),('WSS165','p4'),('WSS167','p4'),('WSS168','p4'),('WSS172','p4'),('WSS18','p4'),('WSS180','p4'),('WSS182','p4'),('WSS185','p4'),('WSS190','p4'),('WSS202','p4'),('WSS216','p4'),('WSS231','p4'),('WSS236','p4'),('WSS248','p4'),('WSS259','p4'),('WSS263','p4'),('WSS265','p4'),('WSS272','p4'),('WSS274','p4'),('WSS283','p4'),('WSS290','p4'),('WSS293','p4'),('WSS295','p4'),('WSS296','p4'),('WSS30','p4'),('WSS44','p4'),('WSS58','p4'),('WSS61','p4'),('WSS63','p4'),('WSS65','p4'),('WSS73','p4'),('WSS75','p4'),('WSS79','p4'),('WSS82','p4'),('WSS83','p4'),('WSS84','p4'),('WSS87','p4'),('WSS89','p4'),('WSS9','p4'),('WSS92','p4'),('WSS10','p5'),('WSS106','p5'),('WSS109','p5'),('WSS116','p5'),('WSS121','p5'),('WSS134','p5'),('WSS147','p5'),('WSS151','p5'),('WSS162','p5'),('WSS165','p5'),('WSS168','p5'),('WSS177','p5'),('WSS178','p5'),('WSS188','p5'),('WSS190','p5'),('WSS20','p5'),('WSS200','p5'),('WSS206','p5'),('WSS210','p5'),('WSS211','p5'),('WSS216','p5'),('WSS217','p5'),('WSS221','p5'),('WSS223','p5'),('WSS224','p5'),('WSS230','p5'),('WSS237','p5'),('WSS240','p5'),('WSS241','p5'),('WSS244','p5'),('WSS247','p5'),('WSS25','p5'),('WSS252','p5'),('WSS266','p5'),('WSS277','p5'),('WSS278','p5'),('WSS28','p5'),('WSS288','p5'),('WSS292','p5'),('WSS293','p5'),('WSS45','p5'),('WSS48','p5'),('WSS5','p5'),('WSS52','p5'),('WSS55','p5'),('WSS60','p5'),('WSS62','p5'),('WSS64','p5'),('WSS72','p5'),('WSS74','p5'),('WSS75','p5'),('WSS8','p5'),('WSS80','p5'),('WSS88','p5'),('WSS89','p5'),('WSS97','p5'),('WSS101','p6'),('WSS104','p6'),('WSS110','p6'),('WSS114','p6'),('WSS12','p6'),('WSS123','p6'),('WSS125','p6'),('WSS128','p6'),('WSS132','p6'),('WSS135','p6'),('WSS141','p6'),('WSS144','p6'),('WSS15','p6'),('WSS151','p6'),('WSS158','p6'),('WSS16','p6'),('WSS168','p6'),('WSS169','p6'),('WSS18','p6'),('WSS19','p6'),('WSS192','p6'),('WSS20','p6'),('WSS202','p6'),('WSS203','p6'),('WSS204','p6'),('WSS207','p6'),('WSS215','p6'),('WSS219','p6'),('WSS220','p6'),('WSS236','p6'),('WSS254','p6'),('WSS256','p6'),('WSS260','p6'),('WSS270','p6'),('WSS274','p6'),('WSS278','p6'),('WSS287','p6'),('WSS288','p6'),('WSS297','p6'),('WSS35','p6'),('WSS45','p6'),('WSS50','p6'),('WSS55','p6'),('WSS56','p6'),('WSS78','p6'),('WSS86','p6'),('WSS90','p6'),('WSS91','p6'),('WSS94','p6'),('WSS95','p6'),('WSS99','p6'),('WSS1','p7'),('WSS106','p7'),('WSS118','p7'),('WSS12','p7'),('WSS120','p7'),('WSS135','p7'),('WSS143','p7'),('WSS144','p7'),('WSS149','p7'),('WSS156','p7'),('WSS159','p7'),('WSS174','p7'),('WSS187','p7'),('WSS19','p7'),('WSS194','p7'),('WSS195','p7'),('WSS197','p7'),('WSS198','p7'),('WSS2','p7'),('WSS200','p7'),('WSS205','p7'),('WSS207','p7'),('WSS211','p7'),('WSS213','p7'),('WSS218','p7'),('WSS22','p7'),('WSS223','p7'),('WSS225','p7'),('WSS226','p7'),('WSS235','p7'),('WSS237','p7'),('WSS245','p7'),('WSS257','p7'),('WSS26','p7'),('WSS267','p7'),('WSS268','p7'),('WSS27','p7'),('WSS270','p7'),('WSS28','p7'),('WSS289','p7'),('WSS299','p7'),('WSS32','p7'),('WSS35','p7'),('WSS49','p7'),('WSS53','p7'),('WSS6','p7'),('WSS61','p7'),('WSS66','p7'),('WSS78','p7'),('WSS82','p7'),('WSS93','p7'),('WSS101','p8'),('WSS105','p8'),('WSS107','p8'),('WSS114','p8'),('WSS118','p8'),('WSS129','p8'),('WSS130','p8'),('WSS131','p8'),('WSS134','p8'),('WSS138','p8'),('WSS141','p8'),('WSS142','p8'),('WSS15','p8'),('WSS152','p8'),('WSS153','p8'),('WSS159','p8'),('WSS16','p8'),('WSS160','p8'),('WSS169','p8'),('WSS17','p8'),('WSS176','p8'),('WSS177','p8'),('WSS180','p8'),('WSS187','p8'),('WSS189','p8'),('WSS191','p8'),('WSS196','p8'),('WSS2','p8'),('WSS212','p8'),('WSS220','p8'),('WSS23','p8'),('WSS230','p8'),('WSS233','p8'),('WSS240','p8'),('WSS241','p8'),('WSS253','p8'),('WSS256','p8'),('WSS269','p8'),('WSS279','p8'),('WSS281','p8'),('WSS289','p8'),('WSS32','p8'),('WSS38','p8'),('WSS39','p8'),('WSS41','p8'),('WSS45','p8'),('WSS47','p8'),('WSS54','p8'),('WSS55','p8'),('WSS56','p8'),('WSS90','p8'),('WSS92','p8'),('WSS95','p8'),('WSS98','p8'),('WSS1','p9'),('WSS104','p9'),('WSS107','p9'),('WSS11','p9'),('WSS117','p9'),('WSS119','p9'),('WSS124','p9'),('WSS126','p9'),('WSS131','p9'),('WSS135','p9'),('WSS138','p9'),('WSS146','p9'),('WSS147','p9'),('WSS149','p9'),('WSS156','p9'),('WSS164','p9'),('WSS166','p9'),('WSS173','p9'),('WSS175','p9'),('WSS18','p9'),('WSS197','p9'),('WSS206','p9'),('WSS21','p9'),('WSS212','p9'),('WSS213','p9'),('WSS214','p9'),('WSS215','p9'),('WSS222','p9'),('WSS23','p9'),('WSS232','p9'),('WSS235','p9'),('WSS237','p9'),('WSS243','p9'),('WSS248','p9'),('WSS252','p9'),('WSS254','p9'),('WSS255','p9'),('WSS258','p9'),('WSS262','p9'),('WSS269','p9'),('WSS287','p9'),('WSS290','p9'),('WSS291','p9'),('WSS294','p9'),('WSS295','p9'),('WSS34','p9'),('WSS43','p9'),('WSS48','p9'),('WSS51','p9'),('WSS54','p9'),('WSS60','p9'),('WSS69','p9'),('WSS72','p9'),('WSS74','p9'),('WSS82','p9'),('WSS83','p9'),('WSS95','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS1'),(1,1,'WSS249'),(1,2,'WSS14'),(1,2,'WSS49'),(1,3,'WSS32'),(2,1,'WSS28'),(2,1,'WSS297'),(2,2,'WSS101'),(2,3,'WSS18'),(3,1,'WSS277'),(3,2,'WSS11'),(3,2,'WSS238'),(3,3,'WSS6'),(4,1,'WSS274'),(4,2,'WSS253'),(4,3,'WSS17'),(4,4,'WSS268'),(5,1,'WSS41'),(5,2,'WSS45'),(5,3,'WSS156'),(5,3,'WSS9'),(6,1,'WSS38'),(6,2,'WSS287'),(6,2,'WSS42'),(6,3,'WSS272'),(7,1,'WSS1'),(7,2,'WSS241'),(7,3,'WSS44'),(7,4,'WSS285'),(8,1,'WSS183'),(8,2,'WSS80'),(8,3,'WSS228'),(8,4,'WSS146'),(9,1,'WSS285'),(9,2,'WSS14'),(9,3,'WSS223'),(9,4,'WSS30'),(10,1,'WSS212'),(10,2,'WSS10'),(10,2,'WSS38'),(10,3,'WSS12'),(11,1,'WSS12'),(11,1,'WSS9'),(11,2,'WSS287'),(11,3,'WSS193'),(12,1,'WSS189'),(12,2,'WSS162'),(12,3,'WSS124'),(12,4,'WSS16'),(13,1,'WSS266'),(13,1,'WSS289'),(13,2,'WSS193'),(13,2,'WSS228'),(14,1,'WSS281'),(14,2,'WSS28'),(14,3,'WSS32'),(14,4,'WSS247'),(15,1,'WSS31'),(15,2,'WSS20'),(15,3,'WSS262'),(15,4,'WSS222'),(16,1,'WSS242'),(16,1,'WSS6'),(16,2,'WSS21'),(16,2,'WSS41'),(17,1,'WSS195'),(17,2,'WSS88'),(17,3,'WSS123'),(17,4,'WSS246'),(18,1,'WSS235'),(18,2,'WSS250'),(18,2,'WSS65'),(19,1,'WSS6'),(19,2,'WSS281'),(19,3,'WSS28'),(19,4,'WSS101'),(19,4,'WSS183'),(20,1,'WSS226'),(20,2,'WSS37'),(20,3,'WSS101'),(20,3,'WSS32'),(21,1,'WSS277'),(21,1,'WSS49'),(21,2,'WSS18'),(21,3,'WSS27'),(22,1,'WSS256'),(22,2,'WSS30'),(22,3,'WSS277'),(23,1,'WSS299'),(23,2,'WSS26'),(23,3,'WSS263'),(23,3,'WSS293'),(24,1,'WSS101'),(24,1,'WSS223'),(24,2,'WSS7'),(24,3,'WSS20'),(25,1,'WSS200'),(25,1,'WSS242'),(25,1,'WSS254'),(25,2,'WSS80'),(26,1,'WSS14'),(26,1,'WSS217'),(26,2,'WSS41'),(26,3,'WSS250'),(27,1,'WSS13'),(27,1,'WSS196'),(27,1,'WSS28'),(27,2,'WSS48'),(28,1,'WSS233'),(28,2,'WSS246'),(28,2,'WSS296'),(28,3,'WSS28'),(29,1,'WSS32'),(29,1,'WSS44'),(29,2,'WSS12'),(29,2,'WSS47'),(30,1,'WSS102'),(30,2,'WSS58'),(30,3,'WSS105'),(30,3,'WSS160'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-27 19:16:32
