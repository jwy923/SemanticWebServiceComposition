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
INSERT INTO `initialgoalparameter` VALUES (2,'I','p1'),(4,'I','p1'),(9,'G','p1'),(10,'I','p1'),(17,'I','p1'),(18,'I','p1'),(20,'G','p1'),(21,'I','p1'),(22,'I','p1'),(26,'I','p1'),(5,'I','p10'),(9,'I','p10'),(12,'I','p10'),(14,'G','p10'),(16,'G','p10'),(18,'I','p10'),(19,'I','p10'),(20,'I','p10'),(22,'I','p10'),(25,'I','p10'),(28,'I','p10'),(29,'G','p10'),(3,'I','p11'),(4,'G','p11'),(5,'I','p11'),(6,'I','p11'),(10,'I','p11'),(12,'G','p11'),(13,'G','p11'),(17,'I','p11'),(18,'G','p11'),(19,'I','p11'),(22,'G','p11'),(26,'G','p11'),(29,'I','p11'),(30,'G','p11'),(9,'I','p12'),(12,'I','p12'),(15,'I','p12'),(16,'I','p12'),(17,'G','p12'),(18,'I','p12'),(23,'I','p12'),(29,'I','p12'),(2,'I','p13'),(8,'G','p13'),(15,'I','p13'),(16,'I','p13'),(21,'G','p13'),(24,'I','p13'),(25,'G','p13'),(27,'G','p13'),(28,'G','p13'),(29,'I','p13'),(6,'I','p14'),(10,'G','p14'),(11,'G','p14'),(14,'I','p14'),(16,'G','p14'),(17,'I','p14'),(19,'I','p14'),(21,'G','p14'),(24,'I','p14'),(28,'I','p14'),(30,'I','p14'),(1,'I','p15'),(2,'I','p15'),(4,'I','p15'),(5,'I','p15'),(6,'I','p15'),(7,'G','p15'),(9,'I','p15'),(11,'I','p15'),(13,'I','p15'),(14,'I','p15'),(22,'G','p15'),(24,'I','p15'),(28,'I','p15'),(30,'I','p15'),(1,'I','p16'),(2,'I','p16'),(3,'G','p16'),(10,'G','p16'),(11,'G','p16'),(12,'G','p16'),(17,'I','p16'),(19,'I','p16'),(20,'G','p16'),(22,'G','p16'),(24,'I','p16'),(29,'I','p16'),(4,'I','p17'),(5,'G','p17'),(6,'G','p17'),(7,'I','p17'),(9,'G','p17'),(10,'G','p17'),(13,'I','p17'),(14,'I','p17'),(16,'I','p17'),(18,'G','p17'),(20,'G','p17'),(30,'I','p17'),(1,'I','p18'),(2,'I','p18'),(5,'I','p18'),(7,'G','p18'),(9,'I','p18'),(13,'I','p18'),(14,'G','p18'),(16,'I','p18'),(21,'I','p18'),(23,'I','p18'),(26,'I','p18'),(28,'I','p18'),(29,'I','p18'),(30,'G','p18'),(2,'G','p19'),(15,'G','p19'),(16,'G','p19'),(18,'I','p19'),(20,'I','p19'),(21,'I','p19'),(22,'I','p19'),(25,'G','p19'),(26,'I','p19'),(27,'I','p19'),(29,'I','p19'),(30,'I','p19'),(3,'I','p2'),(4,'G','p2'),(6,'I','p2'),(7,'I','p2'),(8,'I','p2'),(12,'I','p2'),(13,'G','p2'),(15,'G','p2'),(18,'I','p2'),(19,'G','p2'),(20,'I','p2'),(23,'I','p2'),(24,'I','p2'),(25,'I','p2'),(27,'G','p2'),(28,'I','p2'),(30,'G','p2'),(1,'I','p20'),(2,'G','p20'),(5,'G','p20'),(12,'G','p20'),(13,'I','p20'),(14,'G','p20'),(15,'I','p20'),(16,'I','p20'),(17,'G','p20'),(18,'I','p20'),(21,'I','p20'),(23,'I','p20'),(25,'G','p20'),(28,'G','p20'),(1,'G','p21'),(2,'G','p21'),(4,'G','p21'),(7,'I','p21'),(8,'I','p21'),(14,'I','p21'),(18,'G','p21'),(22,'I','p21'),(23,'G','p21'),(26,'I','p21'),(27,'G','p21'),(4,'I','p22'),(6,'I','p22'),(8,'I','p22'),(9,'I','p22'),(11,'I','p22'),(12,'I','p22'),(14,'I','p22'),(15,'I','p22'),(16,'I','p22'),(18,'I','p22'),(20,'I','p22'),(21,'I','p22'),(26,'I','p22'),(27,'I','p22'),(2,'I','p23'),(5,'G','p23'),(10,'G','p23'),(16,'I','p23'),(17,'G','p23'),(24,'G','p23'),(25,'I','p23'),(28,'I','p23'),(1,'G','p24'),(3,'G','p24'),(7,'I','p24'),(8,'I','p24'),(9,'I','p24'),(11,'G','p24'),(12,'I','p24'),(13,'I','p24'),(27,'G','p24'),(28,'I','p24'),(7,'I','p25'),(9,'G','p25'),(11,'I','p25'),(13,'G','p25'),(15,'G','p25'),(19,'G','p25'),(24,'G','p25'),(26,'G','p25'),(27,'I','p25'),(30,'I','p25'),(1,'G','p26'),(6,'I','p26'),(7,'I','p26'),(8,'I','p26'),(20,'G','p26'),(21,'I','p26'),(23,'G','p26'),(3,'I','p27'),(4,'G','p27'),(5,'I','p27'),(8,'I','p27'),(12,'I','p27'),(14,'I','p27'),(16,'G','p27'),(21,'G','p27'),(23,'I','p27'),(24,'I','p27'),(25,'I','p27'),(27,'I','p27'),(1,'I','p28'),(3,'G','p28'),(5,'G','p28'),(9,'I','p28'),(10,'I','p28'),(11,'G','p28'),(19,'I','p28'),(21,'I','p28'),(22,'I','p28'),(23,'I','p28'),(25,'I','p28'),(27,'I','p28'),(29,'G','p28'),(30,'G','p28'),(1,'I','p29'),(2,'I','p29'),(4,'I','p29'),(5,'I','p29'),(8,'I','p29'),(13,'G','p29'),(14,'I','p29'),(22,'I','p29'),(25,'I','p29'),(3,'I','p3'),(6,'I','p3'),(9,'I','p3'),(10,'I','p3'),(13,'I','p3'),(15,'I','p3'),(17,'I','p3'),(20,'I','p3'),(22,'G','p3'),(23,'G','p3'),(24,'G','p3'),(26,'I','p3'),(30,'I','p3'),(1,'I','p30'),(4,'I','p30'),(6,'I','p30'),(15,'I','p30'),(16,'I','p30'),(20,'I','p30'),(21,'I','p30'),(25,'I','p30'),(27,'I','p30'),(29,'G','p30'),(30,'I','p30'),(1,'I','p4'),(3,'I','p4'),(7,'I','p4'),(11,'I','p4'),(12,'G','p4'),(17,'I','p4'),(18,'I','p4'),(19,'I','p4'),(20,'I','p4'),(23,'I','p4'),(24,'I','p4'),(27,'I','p4'),(28,'G','p4'),(29,'I','p4'),(3,'I','p5'),(6,'G','p5'),(7,'I','p5'),(8,'G','p5'),(9,'G','p5'),(13,'I','p5'),(15,'I','p5'),(17,'G','p5'),(18,'G','p5'),(19,'I','p5'),(20,'I','p5'),(21,'G','p5'),(22,'I','p5'),(23,'G','p5'),(26,'I','p5'),(3,'G','p6'),(4,'I','p6'),(6,'G','p6'),(7,'G','p6'),(10,'I','p6'),(11,'I','p6'),(12,'I','p6'),(14,'G','p6'),(15,'G','p6'),(23,'I','p6'),(24,'G','p6'),(26,'G','p6'),(28,'I','p6'),(29,'G','p6'),(1,'G','p7'),(2,'I','p7'),(4,'I','p7'),(5,'I','p7'),(6,'G','p7'),(7,'G','p7'),(8,'G','p7'),(10,'I','p7'),(11,'I','p7'),(17,'I','p7'),(19,'G','p7'),(24,'I','p7'),(30,'I','p7'),(3,'I','p8'),(8,'I','p8'),(10,'I','p8'),(11,'I','p8'),(12,'I','p8'),(14,'I','p8'),(17,'I','p8'),(19,'G','p8'),(22,'I','p8'),(25,'I','p8'),(26,'I','p8'),(28,'G','p8'),(2,'G','p9'),(3,'I','p9'),(5,'I','p9'),(8,'G','p9'),(10,'I','p9'),(11,'I','p9'),(13,'I','p9'),(15,'I','p9'),(19,'I','p9'),(25,'G','p9'),(26,'G','p9'),(27,'I','p9'),(29,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS102','p1'),('WSS105','p1'),('WSS107','p1'),('WSS110','p1'),('WSS14','p1'),('WSS172','p1'),('WSS175','p1'),('WSS184','p1'),('WSS196','p1'),('WSS197','p1'),('WSS2','p1'),('WSS22','p1'),('WSS46','p1'),('WSS49','p1'),('WSS56','p1'),('WSS9','p1'),('WSS92','p1'),('WSS117','p10'),('WSS166','p10'),('WSS167','p10'),('WSS197','p10'),('WSS36','p10'),('WSS45','p10'),('WSS5','p10'),('WSS55','p10'),('WSS61','p10'),('WSS68','p10'),('WSS73','p10'),('WSS75','p10'),('WSS97','p10'),('WSS10','p11'),('WSS112','p11'),('WSS12','p11'),('WSS145','p11'),('WSS151','p11'),('WSS162','p11'),('WSS171','p11'),('WSS180','p11'),('WSS19','p11'),('WSS191','p11'),('WSS30','p11'),('WSS39','p11'),('WSS54','p11'),('WSS60','p11'),('WSS87','p11'),('WSS124','p12'),('WSS155','p12'),('WSS185','p12'),('WSS24','p12'),('WSS4','p12'),('WSS48','p12'),('WSS67','p12'),('WSS70','p12'),('WSS77','p12'),('WSS80','p12'),('WSS118','p13'),('WSS128','p13'),('WSS139','p13'),('WSS153','p13'),('WSS172','p13'),('WSS183','p13'),('WSS29','p13'),('WSS65','p13'),('WSS74','p13'),('WSS103','p14'),('WSS112','p14'),('WSS138','p14'),('WSS156','p14'),('WSS167','p14'),('WSS168','p14'),('WSS39','p14'),('WSS56','p14'),('WSS75','p14'),('WSS104','p15'),('WSS131','p15'),('WSS135','p15'),('WSS148','p15'),('WSS170','p15'),('WSS190','p15'),('WSS198','p15'),('WSS27','p15'),('WSS30','p15'),('WSS33','p15'),('WSS4','p15'),('WSS53','p15'),('WSS70','p15'),('WSS77','p15'),('WSS8','p15'),('WSS90','p15'),('WSS91','p15'),('WSS127','p16'),('WSS13','p16'),('WSS132','p16'),('WSS193','p16'),('WSS3','p16'),('WSS31','p16'),('WSS5','p16'),('WSS55','p16'),('WSS78','p16'),('WSS90','p16'),('WSS101','p17'),('WSS105','p17'),('WSS111','p17'),('WSS116','p17'),('WSS149','p17'),('WSS19','p17'),('WSS2','p17'),('WSS200','p17'),('WSS47','p17'),('WSS6','p17'),('WSS69','p17'),('WSS79','p17'),('WSS88','p17'),('WSS89','p17'),('WSS9','p17'),('WSS95','p17'),('WSS114','p18'),('WSS122','p18'),('WSS138','p18'),('WSS159','p18'),('WSS165','p18'),('WSS174','p18'),('WSS191','p18'),('WSS193','p18'),('WSS194','p18'),('WSS20','p18'),('WSS43','p18'),('WSS50','p18'),('WSS64','p18'),('WSS7','p18'),('WSS74','p18'),('WSS89','p18'),('WSS95','p18'),('WSS97','p18'),('WSS115','p19'),('WSS116','p19'),('WSS123','p19'),('WSS158','p19'),('WSS164','p19'),('WSS17','p19'),('WSS171','p19'),('WSS180','p19'),('WSS198','p19'),('WSS38','p19'),('WSS44','p19'),('WSS62','p19'),('WSS99','p19'),('WSS110','p2'),('WSS113','p2'),('WSS126','p2'),('WSS136','p2'),('WSS163','p2'),('WSS176','p2'),('WSS181','p2'),('WSS187','p2'),('WSS26','p2'),('WSS32','p2'),('WSS50','p2'),('WSS71','p2'),('WSS76','p2'),('WSS107','p20'),('WSS109','p20'),('WSS120','p20'),('WSS124','p20'),('WSS134','p20'),('WSS135','p20'),('WSS141','p20'),('WSS145','p20'),('WSS160','p20'),('WSS163','p20'),('WSS174','p20'),('WSS21','p20'),('WSS25','p20'),('WSS35','p20'),('WSS69','p20'),('WSS1','p21'),('WSS104','p21'),('WSS108','p21'),('WSS120','p21'),('WSS132','p21'),('WSS133','p21'),('WSS181','p21'),('WSS183','p21'),('WSS189','p21'),('WSS194','p21'),('WSS24','p21'),('WSS59','p21'),('WSS65','p21'),('WSS8','p21'),('WSS86','p21'),('WSS92','p21'),('WSS100','p22'),('WSS117','p22'),('WSS118','p22'),('WSS136','p22'),('WSS173','p22'),('WSS177','p22'),('WSS28','p22'),('WSS34','p22'),('WSS41','p22'),('WSS6','p22'),('WSS72','p22'),('WSS84','p22'),('WSS114','p23'),('WSS130','p23'),('WSS139','p23'),('WSS150','p23'),('WSS168','p23'),('WSS178','p23'),('WSS186','p23'),('WSS187','p23'),('WSS21','p23'),('WSS66','p23'),('WSS108','p24'),('WSS14','p24'),('WSS161','p24'),('WSS173','p24'),('WSS196','p24'),('WSS23','p24'),('WSS36','p24'),('WSS52','p24'),('WSS67','p24'),('WSS76','p24'),('WSS78','p24'),('WSS85','p24'),('WSS91','p24'),('WSS93','p24'),('WSS10','p25'),('WSS121','p25'),('WSS137','p25'),('WSS140','p25'),('WSS144','p25'),('WSS165','p25'),('WSS179','p25'),('WSS189','p25'),('WSS43','p25'),('WSS52','p25'),('WSS73','p25'),('WSS98','p25'),('WSS100','p26'),('WSS101','p26'),('WSS11','p26'),('WSS119','p26'),('WSS129','p26'),('WSS137','p26'),('WSS141','p26'),('WSS143','p26'),('WSS15','p26'),('WSS152','p26'),('WSS192','p26'),('WSS31','p26'),('WSS32','p26'),('WSS37','p26'),('WSS48','p26'),('WSS80','p26'),('WSS82','p26'),('WSS84','p26'),('WSS96','p26'),('WSS127','p27'),('WSS140','p27'),('WSS146','p27'),('WSS147','p27'),('WSS157','p27'),('WSS159','p27'),('WSS18','p27'),('WSS23','p27'),('WSS38','p27'),('WSS54','p27'),('WSS58','p27'),('WSS83','p27'),('WSS88','p27'),('WSS98','p27'),('WSS106','p28'),('WSS109','p28'),('WSS149','p28'),('WSS151','p28'),('WSS155','p28'),('WSS16','p28'),('WSS160','p28'),('WSS178','p28'),('WSS26','p28'),('WSS46','p28'),('WSS57','p28'),('WSS71','p28'),('WSS152','p29'),('WSS175','p29'),('WSS177','p29'),('WSS179','p29'),('WSS18','p29'),('WSS34','p29'),('WSS58','p29'),('WSS144','p3'),('WSS158','p3'),('WSS166','p3'),('WSS66','p3'),('WSS72','p3'),('WSS81','p3'),('WSS86','p3'),('WSS113','p30'),('WSS119','p30'),('WSS123','p30'),('WSS128','p30'),('WSS13','p30'),('WSS130','p30'),('WSS143','p30'),('WSS161','p30'),('WSS164','p30'),('WSS182','p30'),('WSS188','p30'),('WSS195','p30'),('WSS3','p30'),('WSS60','p30'),('WSS83','p30'),('WSS96','p30'),('WSS102','p4'),('WSS122','p4'),('WSS131','p4'),('WSS15','p4'),('WSS154','p4'),('WSS185','p4'),('WSS188','p4'),('WSS195','p4'),('WSS33','p4'),('WSS41','p4'),('WSS51','p4'),('WSS64','p4'),('WSS68','p4'),('WSS7','p4'),('WSS82','p4'),('WSS85','p4'),('WSS125','p5'),('WSS126','p5'),('WSS142','p5'),('WSS157','p5'),('WSS169','p5'),('WSS192','p5'),('WSS28','p5'),('WSS49','p5'),('WSS103','p6'),('WSS111','p6'),('WSS129','p6'),('WSS147','p6'),('WSS162','p6'),('WSS182','p6'),('WSS200','p6'),('WSS35','p6'),('WSS42','p6'),('WSS45','p6'),('WSS47','p6'),('WSS63','p6'),('WSS12','p7'),('WSS121','p7'),('WSS142','p7'),('WSS150','p7'),('WSS154','p7'),('WSS156','p7'),('WSS16','p7'),('WSS176','p7'),('WSS184','p7'),('WSS199','p7'),('WSS51','p7'),('WSS81','p7'),('WSS94','p7'),('WSS99','p7'),('WSS106','p8'),('WSS11','p8'),('WSS125','p8'),('WSS133','p8'),('WSS134','p8'),('WSS153','p8'),('WSS186','p8'),('WSS20','p8'),('WSS37','p8'),('WSS53','p8'),('WSS63','p8'),('WSS93','p8'),('WSS1','p9'),('WSS115','p9'),('WSS148','p9'),('WSS190','p9'),('WSS199','p9'),('WSS25','p9'),('WSS27','p9'),('WSS29','p9'),('WSS40','p9'),('WSS42','p9'),('WSS44','p9'),('WSS57','p9'),('WSS59','p9'),('WSS61','p9'),('WSS62','p9'),('WSS79','p9'),('WSS87','p9'),('WSS94','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS101','p1'),('WSS102','p1'),('WSS108','p1'),('WSS121','p1'),('WSS124','p1'),('WSS125','p1'),('WSS131','p1'),('WSS133','p1'),('WSS142','p1'),('WSS147','p1'),('WSS155','p1'),('WSS157','p1'),('WSS158','p1'),('WSS162','p1'),('WSS164','p1'),('WSS181','p1'),('WSS182','p1'),('WSS186','p1'),('WSS189','p1'),('WSS19','p1'),('WSS24','p1'),('WSS30','p1'),('WSS38','p1'),('WSS40','p1'),('WSS47','p1'),('WSS50','p1'),('WSS59','p1'),('WSS6','p1'),('WSS62','p1'),('WSS64','p1'),('WSS70','p1'),('WSS72','p1'),('WSS74','p1'),('WSS89','p1'),('WSS92','p1'),('WSS96','p1'),('WSS106','p10'),('WSS110','p10'),('WSS116','p10'),('WSS118','p10'),('WSS119','p10'),('WSS120','p10'),('WSS124','p10'),('WSS130','p10'),('WSS134','p10'),('WSS138','p10'),('WSS159','p10'),('WSS161','p10'),('WSS163','p10'),('WSS170','p10'),('WSS179','p10'),('WSS181','p10'),('WSS183','p10'),('WSS19','p10'),('WSS192','p10'),('WSS193','p10'),('WSS2','p10'),('WSS20','p10'),('WSS27','p10'),('WSS31','p10'),('WSS35','p10'),('WSS46','p10'),('WSS5','p10'),('WSS51','p10'),('WSS54','p10'),('WSS59','p10'),('WSS68','p10'),('WSS77','p10'),('WSS78','p10'),('WSS8','p10'),('WSS9','p10'),('WSS90','p10'),('WSS92','p10'),('WSS103','p11'),('WSS108','p11'),('WSS111','p11'),('WSS113','p11'),('WSS117','p11'),('WSS122','p11'),('WSS125','p11'),('WSS13','p11'),('WSS136','p11'),('WSS14','p11'),('WSS142','p11'),('WSS149','p11'),('WSS156','p11'),('WSS165','p11'),('WSS166','p11'),('WSS168','p11'),('WSS178','p11'),('WSS179','p11'),('WSS18','p11'),('WSS181','p11'),('WSS187','p11'),('WSS193','p11'),('WSS196','p11'),('WSS198','p11'),('WSS21','p11'),('WSS29','p11'),('WSS30','p11'),('WSS35','p11'),('WSS57','p11'),('WSS63','p11'),('WSS65','p11'),('WSS68','p11'),('WSS72','p11'),('WSS73','p11'),('WSS8','p11'),('WSS87','p11'),('WSS89','p11'),('WSS91','p11'),('WSS95','p11'),('WSS97','p11'),('WSS98','p11'),('WSS1','p12'),('WSS10','p12'),('WSS102','p12'),('WSS105','p12'),('WSS115','p12'),('WSS122','p12'),('WSS123','p12'),('WSS13','p12'),('WSS139','p12'),('WSS141','p12'),('WSS146','p12'),('WSS149','p12'),('WSS160','p12'),('WSS178','p12'),('WSS188','p12'),('WSS190','p12'),('WSS191','p12'),('WSS2','p12'),('WSS25','p12'),('WSS26','p12'),('WSS27','p12'),('WSS28','p12'),('WSS32','p12'),('WSS39','p12'),('WSS4','p12'),('WSS50','p12'),('WSS53','p12'),('WSS62','p12'),('WSS65','p12'),('WSS69','p12'),('WSS72','p12'),('WSS76','p12'),('WSS78','p12'),('WSS90','p12'),('WSS91','p12'),('WSS96','p12'),('WSS100','p13'),('WSS103','p13'),('WSS106','p13'),('WSS107','p13'),('WSS109','p13'),('WSS115','p13'),('WSS119','p13'),('WSS125','p13'),('WSS127','p13'),('WSS144','p13'),('WSS149','p13'),('WSS15','p13'),('WSS155','p13'),('WSS158','p13'),('WSS176','p13'),('WSS187','p13'),('WSS192','p13'),('WSS199','p13'),('WSS200','p13'),('WSS22','p13'),('WSS24','p13'),('WSS31','p13'),('WSS34','p13'),('WSS42','p13'),('WSS48','p13'),('WSS49','p13'),('WSS66','p13'),('WSS70','p13'),('WSS74','p13'),('WSS77','p13'),('WSS8','p13'),('WSS83','p13'),('WSS86','p13'),('WSS90','p13'),('WSS92','p13'),('WSS94','p13'),('WSS98','p13'),('WSS99','p13'),('WSS11','p14'),('WSS111','p14'),('WSS113','p14'),('WSS122','p14'),('WSS129','p14'),('WSS132','p14'),('WSS133','p14'),('WSS138','p14'),('WSS139','p14'),('WSS145','p14'),('WSS16','p14'),('WSS164','p14'),('WSS165','p14'),('WSS169','p14'),('WSS174','p14'),('WSS188','p14'),('WSS195','p14'),('WSS198','p14'),('WSS199','p14'),('WSS3','p14'),('WSS33','p14'),('WSS46','p14'),('WSS48','p14'),('WSS51','p14'),('WSS56','p14'),('WSS67','p14'),('WSS74','p14'),('WSS75','p14'),('WSS79','p14'),('WSS88','p14'),('WSS91','p14'),('WSS98','p14'),('WSS100','p15'),('WSS102','p15'),('WSS103','p15'),('WSS108','p15'),('WSS113','p15'),('WSS133','p15'),('WSS136','p15'),('WSS140','p15'),('WSS144','p15'),('WSS153','p15'),('WSS16','p15'),('WSS161','p15'),('WSS163','p15'),('WSS164','p15'),('WSS169','p15'),('WSS170','p15'),('WSS171','p15'),('WSS172','p15'),('WSS176','p15'),('WSS178','p15'),('WSS185','p15'),('WSS2','p15'),('WSS25','p15'),('WSS32','p15'),('WSS38','p15'),('WSS51','p15'),('WSS52','p15'),('WSS53','p15'),('WSS61','p15'),('WSS63','p15'),('WSS70','p15'),('WSS78','p15'),('WSS84','p15'),('WSS1','p16'),('WSS103','p16'),('WSS11','p16'),('WSS121','p16'),('WSS128','p16'),('WSS137','p16'),('WSS14','p16'),('WSS144','p16'),('WSS151','p16'),('WSS161','p16'),('WSS165','p16'),('WSS168','p16'),('WSS17','p16'),('WSS172','p16'),('WSS18','p16'),('WSS185','p16'),('WSS187','p16'),('WSS188','p16'),('WSS189','p16'),('WSS20','p16'),('WSS200','p16'),('WSS23','p16'),('WSS37','p16'),('WSS41','p16'),('WSS42','p16'),('WSS43','p16'),('WSS44','p16'),('WSS45','p16'),('WSS50','p16'),('WSS51','p16'),('WSS52','p16'),('WSS54','p16'),('WSS55','p16'),('WSS56','p16'),('WSS57','p16'),('WSS58','p16'),('WSS60','p16'),('WSS61','p16'),('WSS63','p16'),('WSS64','p16'),('WSS7','p16'),('WSS76','p16'),('WSS81','p16'),('WSS9','p16'),('WSS90','p16'),('WSS97','p16'),('WSS111','p17'),('WSS119','p17'),('WSS144','p17'),('WSS15','p17'),('WSS150','p17'),('WSS155','p17'),('WSS163','p17'),('WSS170','p17'),('WSS173','p17'),('WSS175','p17'),('WSS176','p17'),('WSS178','p17'),('WSS18','p17'),('WSS182','p17'),('WSS183','p17'),('WSS185','p17'),('WSS187','p17'),('WSS189','p17'),('WSS191','p17'),('WSS20','p17'),('WSS22','p17'),('WSS23','p17'),('WSS28','p17'),('WSS30','p17'),('WSS32','p17'),('WSS37','p17'),('WSS39','p17'),('WSS4','p17'),('WSS40','p17'),('WSS41','p17'),('WSS59','p17'),('WSS6','p17'),('WSS64','p17'),('WSS80','p17'),('WSS83','p17'),('WSS88','p17'),('WSS96','p17'),('WSS10','p18'),('WSS107','p18'),('WSS115','p18'),('WSS122','p18'),('WSS130','p18'),('WSS134','p18'),('WSS136','p18'),('WSS139','p18'),('WSS145','p18'),('WSS147','p18'),('WSS148','p18'),('WSS149','p18'),('WSS153','p18'),('WSS16','p18'),('WSS162','p18'),('WSS167','p18'),('WSS17','p18'),('WSS175','p18'),('WSS193','p18'),('WSS194','p18'),('WSS195','p18'),('WSS2','p18'),('WSS33','p18'),('WSS36','p18'),('WSS39','p18'),('WSS45','p18'),('WSS48','p18'),('WSS49','p18'),('WSS5','p18'),('WSS52','p18'),('WSS56','p18'),('WSS58','p18'),('WSS59','p18'),('WSS73','p18'),('WSS8','p18'),('WSS87','p18'),('WSS96','p18'),('WSS97','p18'),('WSS100','p19'),('WSS102','p19'),('WSS108','p19'),('WSS112','p19'),('WSS118','p19'),('WSS121','p19'),('WSS126','p19'),('WSS135','p19'),('WSS147','p19'),('WSS152','p19'),('WSS162','p19'),('WSS163','p19'),('WSS169','p19'),('WSS17','p19'),('WSS176','p19'),('WSS179','p19'),('WSS18','p19'),('WSS19','p19'),('WSS198','p19'),('WSS200','p19'),('WSS23','p19'),('WSS36','p19'),('WSS39','p19'),('WSS44','p19'),('WSS46','p19'),('WSS60','p19'),('WSS61','p19'),('WSS71','p19'),('WSS72','p19'),('WSS77','p19'),('WSS81','p19'),('WSS86','p19'),('WSS9','p19'),('WSS98','p19'),('WSS112','p2'),('WSS117','p2'),('WSS124','p2'),('WSS13','p2'),('WSS141','p2'),('WSS151','p2'),('WSS156','p2'),('WSS158','p2'),('WSS159','p2'),('WSS160','p2'),('WSS164','p2'),('WSS173','p2'),('WSS179','p2'),('WSS180','p2'),('WSS182','p2'),('WSS183','p2'),('WSS185','p2'),('WSS19','p2'),('WSS192','p2'),('WSS193','p2'),('WSS197','p2'),('WSS199','p2'),('WSS29','p2'),('WSS31','p2'),('WSS4','p2'),('WSS40','p2'),('WSS42','p2'),('WSS48','p2'),('WSS60','p2'),('WSS66','p2'),('WSS7','p2'),('WSS71','p2'),('WSS72','p2'),('WSS75','p2'),('WSS76','p2'),('WSS78','p2'),('WSS79','p2'),('WSS80','p2'),('WSS83','p2'),('WSS86','p2'),('WSS89','p2'),('WSS93','p2'),('WSS100','p20'),('WSS102','p20'),('WSS109','p20'),('WSS11','p20'),('WSS112','p20'),('WSS116','p20'),('WSS121','p20'),('WSS125','p20'),('WSS126','p20'),('WSS132','p20'),('WSS136','p20'),('WSS148','p20'),('WSS149','p20'),('WSS152','p20'),('WSS153','p20'),('WSS154','p20'),('WSS155','p20'),('WSS167','p20'),('WSS175','p20'),('WSS184','p20'),('WSS19','p20'),('WSS192','p20'),('WSS196','p20'),('WSS197','p20'),('WSS22','p20'),('WSS25','p20'),('WSS32','p20'),('WSS36','p20'),('WSS38','p20'),('WSS4','p20'),('WSS40','p20'),('WSS43','p20'),('WSS45','p20'),('WSS49','p20'),('WSS60','p20'),('WSS61','p20'),('WSS63','p20'),('WSS7','p20'),('WSS82','p20'),('WSS84','p20'),('WSS87','p20'),('WSS91','p20'),('WSS10','p21'),('WSS104','p21'),('WSS107','p21'),('WSS12','p21'),('WSS126','p21'),('WSS127','p21'),('WSS129','p21'),('WSS135','p21'),('WSS137','p21'),('WSS139','p21'),('WSS144','p21'),('WSS161','p21'),('WSS162','p21'),('WSS166','p21'),('WSS180','p21'),('WSS190','p21'),('WSS2','p21'),('WSS21','p21'),('WSS29','p21'),('WSS30','p21'),('WSS36','p21'),('WSS37','p21'),('WSS41','p21'),('WSS50','p21'),('WSS55','p21'),('WSS56','p21'),('WSS57','p21'),('WSS61','p21'),('WSS62','p21'),('WSS67','p21'),('WSS69','p21'),('WSS77','p21'),('WSS79','p21'),('WSS80','p21'),('WSS82','p21'),('WSS83','p21'),('WSS85','p21'),('WSS103','p22'),('WSS104','p22'),('WSS105','p22'),('WSS107','p22'),('WSS109','p22'),('WSS114','p22'),('WSS115','p22'),('WSS120','p22'),('WSS129','p22'),('WSS131','p22'),('WSS135','p22'),('WSS140','p22'),('WSS145','p22'),('WSS152','p22'),('WSS154','p22'),('WSS16','p22'),('WSS172','p22'),('WSS174','p22'),('WSS181','p22'),('WSS182','p22'),('WSS194','p22'),('WSS195','p22'),('WSS196','p22'),('WSS2','p22'),('WSS28','p22'),('WSS33','p22'),('WSS44','p22'),('WSS65','p22'),('WSS66','p22'),('WSS68','p22'),('WSS7','p22'),('WSS75','p22'),('WSS8','p22'),('WSS87','p22'),('WSS92','p22'),('WSS108','p23'),('WSS109','p23'),('WSS111','p23'),('WSS114','p23'),('WSS116','p23'),('WSS118','p23'),('WSS12','p23'),('WSS120','p23'),('WSS126','p23'),('WSS127','p23'),('WSS128','p23'),('WSS138','p23'),('WSS14','p23'),('WSS143','p23'),('WSS15','p23'),('WSS150','p23'),('WSS158','p23'),('WSS159','p23'),('WSS164','p23'),('WSS165','p23'),('WSS169','p23'),('WSS172','p23'),('WSS173','p23'),('WSS174','p23'),('WSS175','p23'),('WSS184','p23'),('WSS186','p23'),('WSS191','p23'),('WSS26','p23'),('WSS3','p23'),('WSS36','p23'),('WSS37','p23'),('WSS43','p23'),('WSS52','p23'),('WSS54','p23'),('WSS65','p23'),('WSS66','p23'),('WSS76','p23'),('WSS78','p23'),('WSS85','p23'),('WSS91','p23'),('WSS93','p23'),('WSS99','p23'),('WSS11','p24'),('WSS110','p24'),('WSS112','p24'),('WSS115','p24'),('WSS117','p24'),('WSS124','p24'),('WSS125','p24'),('WSS139','p24'),('WSS143','p24'),('WSS15','p24'),('WSS150','p24'),('WSS151','p24'),('WSS154','p24'),('WSS156','p24'),('WSS159','p24'),('WSS160','p24'),('WSS162','p24'),('WSS166','p24'),('WSS168','p24'),('WSS172','p24'),('WSS179','p24'),('WSS18','p24'),('WSS183','p24'),('WSS200','p24'),('WSS23','p24'),('WSS24','p24'),('WSS28','p24'),('WSS3','p24'),('WSS33','p24'),('WSS40','p24'),('WSS42','p24'),('WSS47','p24'),('WSS50','p24'),('WSS6','p24'),('WSS69','p24'),('WSS74','p24'),('WSS82','p24'),('WSS88','p24'),('WSS94','p24'),('WSS106','p25'),('WSS113','p25'),('WSS118','p25'),('WSS127','p25'),('WSS135','p25'),('WSS151','p25'),('WSS153','p25'),('WSS157','p25'),('WSS159','p25'),('WSS16','p25'),('WSS170','p25'),('WSS171','p25'),('WSS176','p25'),('WSS191','p25'),('WSS200','p25'),('WSS31','p25'),('WSS37','p25'),('WSS41','p25'),('WSS43','p25'),('WSS5','p25'),('WSS55','p25'),('WSS58','p25'),('WSS60','p25'),('WSS76','p25'),('WSS87','p25'),('WSS89','p25'),('WSS9','p25'),('WSS96','p25'),('WSS99','p25'),('WSS1','p26'),('WSS104','p26'),('WSS120','p26'),('WSS132','p26'),('WSS138','p26'),('WSS15','p26'),('WSS156','p26'),('WSS158','p26'),('WSS16','p26'),('WSS164','p26'),('WSS167','p26'),('WSS17','p26'),('WSS171','p26'),('WSS174','p26'),('WSS176','p26'),('WSS177','p26'),('WSS184','p26'),('WSS186','p26'),('WSS188','p26'),('WSS22','p26'),('WSS34','p26'),('WSS41','p26'),('WSS44','p26'),('WSS45','p26'),('WSS56','p26'),('WSS58','p26'),('WSS67','p26'),('WSS74','p26'),('WSS85','p26'),('WSS92','p26'),('WSS98','p26'),('WSS100','p27'),('WSS101','p27'),('WSS103','p27'),('WSS11','p27'),('WSS110','p27'),('WSS116','p27'),('WSS118','p27'),('WSS119','p27'),('WSS12','p27'),('WSS124','p27'),('WSS131','p27'),('WSS139','p27'),('WSS141','p27'),('WSS152','p27'),('WSS155','p27'),('WSS156','p27'),('WSS157','p27'),('WSS160','p27'),('WSS161','p27'),('WSS169','p27'),('WSS171','p27'),('WSS172','p27'),('WSS178','p27'),('WSS184','p27'),('WSS188','p27'),('WSS190','p27'),('WSS193','p27'),('WSS21','p27'),('WSS24','p27'),('WSS28','p27'),('WSS29','p27'),('WSS36','p27'),('WSS41','p27'),('WSS45','p27'),('WSS57','p27'),('WSS6','p27'),('WSS63','p27'),('WSS68','p27'),('WSS69','p27'),('WSS71','p27'),('WSS75','p27'),('WSS78','p27'),('WSS86','p27'),('WSS90','p27'),('WSS99','p27'),('WSS1','p28'),('WSS119','p28'),('WSS122','p28'),('WSS126','p28'),('WSS127','p28'),('WSS129','p28'),('WSS134','p28'),('WSS135','p28'),('WSS140','p28'),('WSS142','p28'),('WSS148','p28'),('WSS151','p28'),('WSS152','p28'),('WSS165','p28'),('WSS166','p28'),('WSS171','p28'),('WSS184','p28'),('WSS186','p28'),('WSS196','p28'),('WSS197','p28'),('WSS22','p28'),('WSS27','p28'),('WSS3','p28'),('WSS31','p28'),('WSS47','p28'),('WSS5','p28'),('WSS53','p28'),('WSS54','p28'),('WSS55','p28'),('WSS68','p28'),('WSS70','p28'),('WSS8','p28'),('WSS89','p28'),('WSS102','p29'),('WSS111','p29'),('WSS114','p29'),('WSS12','p29'),('WSS127','p29'),('WSS128','p29'),('WSS13','p29'),('WSS137','p29'),('WSS145','p29'),('WSS146','p29'),('WSS154','p29'),('WSS167','p29'),('WSS17','p29'),('WSS177','p29'),('WSS183','p29'),('WSS185','p29'),('WSS187','p29'),('WSS189','p29'),('WSS19','p29'),('WSS192','p29'),('WSS194','p29'),('WSS198','p29'),('WSS199','p29'),('WSS20','p29'),('WSS31','p29'),('WSS35','p29'),('WSS4','p29'),('WSS53','p29'),('WSS55','p29'),('WSS59','p29'),('WSS79','p29'),('WSS81','p29'),('WSS85','p29'),('WSS86','p29'),('WSS88','p29'),('WSS95','p29'),('WSS105','p3'),('WSS106','p3'),('WSS107','p3'),('WSS112','p3'),('WSS114','p3'),('WSS117','p3'),('WSS123','p3'),('WSS130','p3'),('WSS132','p3'),('WSS136','p3'),('WSS138','p3'),('WSS148','p3'),('WSS160','p3'),('WSS167','p3'),('WSS180','p3'),('WSS182','p3'),('WSS25','p3'),('WSS29','p3'),('WSS44','p3'),('WSS58','p3'),('WSS6','p3'),('WSS65','p3'),('WSS69','p3'),('WSS7','p3'),('WSS82','p3'),('WSS88','p3'),('WSS94','p3'),('WSS95','p3'),('WSS99','p3'),('WSS10','p30'),('WSS116','p30'),('WSS121','p30'),('WSS125','p30'),('WSS130','p30'),('WSS137','p30'),('WSS140','p30'),('WSS143','p30'),('WSS144','p30'),('WSS150','p30'),('WSS151','p30'),('WSS155','p30'),('WSS157','p30'),('WSS163','p30'),('WSS167','p30'),('WSS169','p30'),('WSS171','p30'),('WSS178','p30'),('WSS180','p30'),('WSS182','p30'),('WSS191','p30'),('WSS196','p30'),('WSS33','p30'),('WSS34','p30'),('WSS38','p30'),('WSS43','p30'),('WSS52','p30'),('WSS53','p30'),('WSS54','p30'),('WSS56','p30'),('WSS62','p30'),('WSS65','p30'),('WSS67','p30'),('WSS85','p30'),('WSS97','p30'),('WSS10','p4'),('WSS100','p4'),('WSS101','p4'),('WSS110','p4'),('WSS114','p4'),('WSS128','p4'),('WSS13','p4'),('WSS153','p4'),('WSS170','p4'),('WSS173','p4'),('WSS175','p4'),('WSS194','p4'),('WSS195','p4'),('WSS198','p4'),('WSS20','p4'),('WSS21','p4'),('WSS22','p4'),('WSS24','p4'),('WSS3','p4'),('WSS32','p4'),('WSS37','p4'),('WSS38','p4'),('WSS4','p4'),('WSS47','p4'),('WSS53','p4'),('WSS57','p4'),('WSS66','p4'),('WSS68','p4'),('WSS71','p4'),('WSS72','p4'),('WSS81','p4'),('WSS84','p4'),('WSS90','p4'),('WSS93','p4'),('WSS98','p4'),('WSS1','p5'),('WSS118','p5'),('WSS12','p5'),('WSS123','p5'),('WSS131','p5'),('WSS132','p5'),('WSS133','p5'),('WSS14','p5'),('WSS140','p5'),('WSS143','p5'),('WSS146','p5'),('WSS147','p5'),('WSS149','p5'),('WSS150','p5'),('WSS158','p5'),('WSS161','p5'),('WSS168','p5'),('WSS174','p5'),('WSS175','p5'),('WSS179','p5'),('WSS180','p5'),('WSS181','p5'),('WSS183','p5'),('WSS197','p5'),('WSS199','p5'),('WSS27','p5'),('WSS29','p5'),('WSS34','p5'),('WSS5','p5'),('WSS51','p5'),('WSS62','p5'),('WSS67','p5'),('WSS70','p5'),('WSS73','p5'),('WSS77','p5'),('WSS79','p5'),('WSS84','p5'),('WSS87','p5'),('WSS88','p5'),('WSS94','p5'),('WSS97','p5'),('WSS101','p6'),('WSS105','p6'),('WSS106','p6'),('WSS110','p6'),('WSS113','p6'),('WSS117','p6'),('WSS120','p6'),('WSS133','p6'),('WSS134','p6'),('WSS137','p6'),('WSS140','p6'),('WSS142','p6'),('WSS143','p6'),('WSS150','p6'),('WSS165','p6'),('WSS173','p6'),('WSS177','p6'),('WSS186','p6'),('WSS197','p6'),('WSS200','p6'),('WSS24','p6'),('WSS30','p6'),('WSS47','p6'),('WSS49','p6'),('WSS63','p6'),('WSS66','p6'),('WSS73','p6'),('WSS75','p6'),('WSS84','p6'),('WSS9','p6'),('WSS96','p6'),('WSS10','p7'),('WSS105','p7'),('WSS108','p7'),('WSS112','p7'),('WSS115','p7'),('WSS117','p7'),('WSS121','p7'),('WSS123','p7'),('WSS126','p7'),('WSS138','p7'),('WSS142','p7'),('WSS146','p7'),('WSS147','p7'),('WSS148','p7'),('WSS166','p7'),('WSS174','p7'),('WSS177','p7'),('WSS184','p7'),('WSS187','p7'),('WSS195','p7'),('WSS197','p7'),('WSS21','p7'),('WSS26','p7'),('WSS30','p7'),('WSS33','p7'),('WSS35','p7'),('WSS42','p7'),('WSS46','p7'),('WSS48','p7'),('WSS49','p7'),('WSS54','p7'),('WSS64','p7'),('WSS71','p7'),('WSS73','p7'),('WSS104','p8'),('WSS105','p8'),('WSS106','p8'),('WSS107','p8'),('WSS122','p8'),('WSS123','p8'),('WSS128','p8'),('WSS130','p8'),('WSS131','p8'),('WSS133','p8'),('WSS135','p8'),('WSS14','p8'),('WSS141','p8'),('WSS146','p8'),('WSS15','p8'),('WSS154','p8'),('WSS157','p8'),('WSS160','p8'),('WSS162','p8'),('WSS170','p8'),('WSS173','p8'),('WSS181','p8'),('WSS190','p8'),('WSS196','p8'),('WSS198','p8'),('WSS20','p8'),('WSS23','p8'),('WSS26','p8'),('WSS32','p8'),('WSS46','p8'),('WSS80','p8'),('WSS93','p8'),('WSS94','p8'),('WSS101','p9'),('WSS104','p9'),('WSS11','p9'),('WSS114','p9'),('WSS119','p9'),('WSS123','p9'),('WSS128','p9'),('WSS129','p9'),('WSS136','p9'),('WSS141','p9'),('WSS142','p9'),('WSS147','p9'),('WSS152','p9'),('WSS168','p9'),('WSS177','p9'),('WSS185','p9'),('WSS189','p9'),('WSS190','p9'),('WSS191','p9'),('WSS194','p9'),('WSS195','p9'),('WSS199','p9'),('WSS23','p9'),('WSS27','p9'),('WSS3','p9'),('WSS34','p9'),('WSS42','p9'),('WSS46','p9'),('WSS5','p9'),('WSS61','p9'),('WSS64','p9'),('WSS69','p9'),('WSS7','p9'),('WSS73','p9'),('WSS75','p9'),('WSS76','p9'),('WSS79','p9'),('WSS81','p9'),('WSS82','p9'),('WSS83','p9'),('WSS84','p9'),('WSS89','p9'),('WSS91','p9'),('WSS95','p9'),('WSS99','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS127'),(2,1,'WSS19'),(2,2,'WSS24'),(2,3,'WSS22'),(3,1,'WSS138'),(4,1,'WSS15'),(4,2,'WSS190'),(5,1,'WSS154'),(5,1,'WSS86'),(6,1,'WSS108'),(6,2,'WSS80'),(7,1,'WSS70'),(7,2,'WSS127'),(8,1,'WSS18'),(8,1,'WSS194'),(9,1,'WSS55'),(10,1,'WSS145'),(10,2,'WSS106'),(10,3,'WSS109'),(11,1,'WSS185'),(11,1,'WSS188'),(12,1,'WSS199'),(12,2,'WSS146'),(13,1,'WSS12'),(13,2,'WSS170'),(14,1,'WSS98'),(14,2,'WSS174'),(15,1,'WSS197'),(15,2,'WSS106'),(16,1,'WSS13'),(16,1,'WSS154'),(17,1,'WSS109'),(18,1,'WSS27'),(18,2,'WSS22'),(19,1,'WSS142'),(20,1,'WSS183'),(20,2,'WSS4'),(21,1,'WSS82'),(21,2,'WSS13'),(22,1,'WSS191'),(22,2,'WSS44'),(23,1,'WSS159'),(23,1,'WSS181'),(24,1,'WSS166'),(24,2,'WSS156'),(25,1,'WSS168'),(26,1,'WSS102'),(26,1,'WSS25'),(27,1,'WSS150'),(27,2,'WSS193'),(28,1,'WSS188'),(28,2,'WSS174'),(29,1,'WSS92'),(29,2,'WSS108'),(30,1,'WSS148'),(30,2,'WSS78'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-07-05 23:21:59
