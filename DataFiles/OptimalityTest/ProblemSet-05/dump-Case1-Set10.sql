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
INSERT INTO `initialgoalparameter` VALUES (1,'I','p1'),(4,'I','p1'),(5,'I','p1'),(6,'I','p1'),(9,'G','p1'),(10,'G','p1'),(11,'I','p1'),(12,'I','p1'),(13,'G','p1'),(14,'I','p1'),(15,'I','p1'),(16,'I','p1'),(18,'I','p1'),(19,'I','p1'),(20,'G','p1'),(21,'I','p1'),(24,'I','p1'),(25,'I','p1'),(26,'G','p1'),(27,'I','p1'),(28,'I','p1'),(1,'G','p10'),(4,'I','p10'),(5,'I','p10'),(7,'I','p10'),(10,'I','p10'),(12,'I','p10'),(15,'I','p10'),(17,'I','p10'),(18,'G','p10'),(19,'I','p10'),(20,'G','p10'),(21,'G','p10'),(23,'G','p10'),(27,'G','p10'),(28,'G','p10'),(29,'G','p10'),(30,'G','p10'),(2,'I','p11'),(8,'I','p11'),(9,'G','p11'),(10,'G','p11'),(12,'G','p11'),(18,'I','p11'),(21,'I','p11'),(25,'I','p11'),(2,'I','p12'),(5,'I','p12'),(7,'I','p12'),(9,'G','p12'),(12,'I','p12'),(13,'I','p12'),(14,'G','p12'),(17,'G','p12'),(18,'I','p12'),(20,'G','p12'),(22,'I','p12'),(23,'I','p12'),(26,'I','p12'),(27,'I','p12'),(30,'I','p12'),(6,'I','p13'),(7,'G','p13'),(10,'I','p13'),(11,'I','p13'),(12,'I','p13'),(16,'I','p13'),(17,'G','p13'),(18,'G','p13'),(19,'I','p13'),(23,'I','p13'),(24,'I','p13'),(25,'I','p13'),(26,'I','p13'),(1,'I','p14'),(2,'G','p14'),(4,'I','p14'),(5,'G','p14'),(8,'G','p14'),(10,'I','p14'),(15,'G','p14'),(17,'I','p14'),(21,'G','p14'),(22,'I','p14'),(25,'G','p14'),(26,'G','p14'),(1,'G','p15'),(2,'I','p15'),(4,'G','p15'),(5,'I','p15'),(7,'G','p15'),(8,'I','p15'),(11,'G','p15'),(13,'I','p15'),(14,'G','p15'),(15,'G','p15'),(17,'I','p15'),(18,'G','p15'),(19,'I','p15'),(20,'I','p15'),(22,'I','p15'),(24,'G','p15'),(25,'G','p15'),(26,'I','p15'),(28,'G','p15'),(1,'G','p16'),(2,'G','p16'),(5,'I','p16'),(8,'G','p16'),(9,'G','p16'),(11,'I','p16'),(12,'G','p16'),(13,'G','p16'),(16,'G','p16'),(20,'I','p16'),(21,'G','p16'),(22,'I','p16'),(27,'G','p16'),(29,'G','p16'),(30,'I','p16'),(3,'G','p17'),(4,'I','p17'),(6,'I','p17'),(8,'I','p17'),(9,'I','p17'),(10,'I','p17'),(15,'I','p17'),(16,'I','p17'),(17,'I','p17'),(19,'I','p17'),(23,'G','p17'),(25,'G','p17'),(26,'I','p17'),(27,'I','p17'),(29,'G','p17'),(2,'I','p18'),(4,'I','p18'),(7,'I','p18'),(11,'I','p18'),(21,'I','p18'),(23,'I','p18'),(24,'I','p18'),(26,'G','p18'),(27,'I','p18'),(28,'I','p18'),(29,'G','p18'),(1,'I','p19'),(3,'I','p19'),(6,'G','p19'),(7,'I','p19'),(8,'I','p19'),(9,'G','p19'),(12,'G','p19'),(13,'G','p19'),(15,'I','p19'),(16,'I','p19'),(17,'I','p19'),(20,'I','p19'),(21,'I','p19'),(24,'G','p19'),(1,'G','p2'),(2,'I','p2'),(3,'G','p2'),(6,'I','p2'),(7,'I','p2'),(14,'G','p2'),(18,'G','p2'),(20,'I','p2'),(23,'G','p2'),(6,'G','p20'),(7,'G','p20'),(9,'G','p20'),(11,'G','p20'),(13,'I','p20'),(14,'I','p20'),(15,'G','p20'),(17,'I','p20'),(18,'I','p20'),(19,'G','p20'),(20,'I','p20'),(26,'G','p20'),(28,'I','p20'),(29,'I','p20'),(30,'I','p20'),(1,'I','p21'),(2,'G','p21'),(3,'I','p21'),(6,'G','p21'),(8,'G','p21'),(9,'I','p21'),(10,'I','p21'),(13,'I','p21'),(19,'I','p21'),(24,'G','p21'),(25,'G','p21'),(27,'G','p21'),(29,'G','p21'),(30,'I','p21'),(6,'I','p22'),(7,'I','p22'),(8,'G','p22'),(9,'I','p22'),(13,'I','p22'),(15,'G','p22'),(16,'G','p22'),(17,'G','p22'),(18,'I','p22'),(19,'G','p22'),(20,'I','p22'),(22,'G','p22'),(23,'I','p22'),(27,'G','p22'),(28,'G','p22'),(29,'I','p22'),(30,'I','p22'),(2,'I','p23'),(3,'I','p23'),(5,'G','p23'),(8,'G','p23'),(9,'I','p23'),(13,'I','p23'),(14,'G','p23'),(16,'G','p23'),(22,'G','p23'),(23,'I','p23'),(25,'I','p23'),(28,'G','p23'),(30,'G','p23'),(1,'I','p24'),(2,'G','p24'),(3,'I','p24'),(4,'G','p24'),(5,'I','p24'),(8,'G','p24'),(9,'I','p24'),(13,'I','p24'),(15,'I','p24'),(18,'G','p24'),(22,'I','p24'),(23,'I','p24'),(27,'I','p24'),(1,'G','p25'),(5,'G','p25'),(6,'G','p25'),(11,'I','p25'),(12,'I','p25'),(14,'I','p25'),(16,'I','p25'),(21,'G','p25'),(22,'I','p25'),(23,'G','p25'),(27,'G','p25'),(28,'I','p25'),(2,'G','p26'),(4,'I','p26'),(7,'G','p26'),(11,'I','p26'),(13,'G','p26'),(14,'I','p26'),(17,'G','p26'),(18,'I','p26'),(21,'I','p26'),(22,'I','p26'),(23,'G','p26'),(24,'G','p26'),(29,'I','p26'),(1,'I','p27'),(2,'I','p27'),(3,'G','p27'),(4,'I','p27'),(6,'I','p27'),(7,'G','p27'),(8,'I','p27'),(9,'I','p27'),(10,'G','p27'),(11,'G','p27'),(12,'G','p27'),(14,'I','p27'),(15,'I','p27'),(18,'G','p27'),(19,'G','p27'),(20,'G','p27'),(27,'G','p27'),(28,'G','p27'),(29,'G','p27'),(30,'G','p27'),(3,'G','p28'),(7,'I','p28'),(8,'I','p28'),(10,'G','p28'),(12,'I','p28'),(15,'I','p28'),(21,'I','p28'),(22,'G','p28'),(23,'I','p28'),(24,'G','p28'),(25,'I','p28'),(26,'I','p28'),(29,'I','p28'),(3,'G','p29'),(4,'G','p29'),(12,'G','p29'),(13,'I','p29'),(18,'I','p29'),(19,'G','p29'),(21,'G','p29'),(22,'G','p29'),(25,'I','p29'),(28,'I','p29'),(3,'I','p3'),(4,'G','p3'),(5,'I','p3'),(6,'I','p3'),(10,'G','p3'),(11,'G','p3'),(17,'G','p3'),(19,'I','p3'),(20,'I','p3'),(23,'I','p3'),(24,'G','p3'),(25,'G','p3'),(26,'I','p3'),(28,'I','p3'),(4,'G','p30'),(10,'I','p30'),(14,'I','p30'),(17,'G','p30'),(18,'I','p30'),(26,'I','p30'),(27,'I','p30'),(28,'I','p30'),(3,'I','p4'),(5,'I','p4'),(6,'I','p4'),(8,'I','p4'),(10,'I','p4'),(11,'I','p4'),(13,'G','p4'),(14,'I','p4'),(16,'I','p4'),(17,'I','p4'),(19,'G','p4'),(20,'G','p4'),(21,'I','p4'),(22,'G','p4'),(24,'I','p4'),(26,'G','p4'),(28,'I','p4'),(29,'I','p4'),(30,'G','p4'),(1,'G','p5'),(2,'G','p5'),(3,'G','p5'),(6,'G','p5'),(11,'I','p5'),(13,'G','p5'),(15,'G','p5'),(16,'I','p5'),(19,'G','p5'),(21,'G','p5'),(22,'I','p5'),(23,'G','p5'),(25,'I','p5'),(27,'I','p5'),(29,'I','p5'),(30,'I','p5'),(2,'I','p6'),(4,'I','p6'),(5,'G','p6'),(7,'G','p6'),(8,'I','p6'),(9,'I','p6'),(11,'G','p6'),(12,'I','p6'),(14,'G','p6'),(16,'I','p6'),(20,'G','p6'),(24,'I','p6'),(25,'G','p6'),(26,'G','p6'),(27,'I','p6'),(29,'I','p6'),(30,'I','p6'),(1,'I','p7'),(6,'G','p7'),(12,'I','p7'),(14,'I','p7'),(16,'G','p7'),(17,'I','p7'),(19,'I','p7'),(21,'I','p7'),(24,'I','p7'),(30,'I','p7'),(1,'I','p8'),(3,'I','p8'),(5,'G','p8'),(7,'I','p8'),(10,'I','p8'),(14,'G','p8'),(15,'I','p8'),(16,'G','p8'),(22,'G','p8'),(24,'I','p8'),(28,'G','p8'),(29,'I','p8'),(30,'G','p8'),(3,'I','p9'),(4,'G','p9'),(5,'G','p9'),(9,'I','p9'),(10,'G','p9'),(11,'G','p9'),(12,'G','p9'),(15,'G','p9'),(16,'G','p9'),(20,'I','p9'),(24,'I','p9'),(25,'I','p9'),(26,'I','p9'),(30,'G','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS121','p1'),('WSS146','p1'),('WSS150','p1'),('WSS174','p1'),('WSS178','p1'),('WSS179','p1'),('WSS180','p1'),('WSS22','p1'),('WSS231','p1'),('WSS275','p1'),('WSS30','p1'),('WSS41','p1'),('WSS86','p1'),('WSS88','p1'),('WSS91','p1'),('WSS108','p10'),('WSS114','p10'),('WSS165','p10'),('WSS167','p10'),('WSS17','p10'),('WSS180','p10'),('WSS193','p10'),('WSS200','p10'),('WSS201','p10'),('WSS215','p10'),('WSS23','p10'),('WSS231','p10'),('WSS287','p10'),('WSS298','p10'),('WSS300','p10'),('WSS35','p10'),('WSS49','p10'),('WSS58','p10'),('WSS62','p10'),('WSS76','p10'),('WSS81','p10'),('WSS87','p10'),('WSS106','p11'),('WSS113','p11'),('WSS124','p11'),('WSS131','p11'),('WSS143','p11'),('WSS168','p11'),('WSS179','p11'),('WSS202','p11'),('WSS245','p11'),('WSS26','p11'),('WSS283','p11'),('WSS297','p11'),('WSS44','p11'),('WSS51','p11'),('WSS54','p11'),('WSS86','p11'),('WSS148','p12'),('WSS155','p12'),('WSS163','p12'),('WSS176','p12'),('WSS18','p12'),('WSS185','p12'),('WSS192','p12'),('WSS230','p12'),('WSS258','p12'),('WSS261','p12'),('WSS275','p12'),('WSS288','p12'),('WSS296','p12'),('WSS3','p12'),('WSS32','p12'),('WSS35','p12'),('WSS39','p12'),('WSS101','p13'),('WSS108','p13'),('WSS114','p13'),('WSS127','p13'),('WSS149','p13'),('WSS16','p13'),('WSS172','p13'),('WSS181','p13'),('WSS189','p13'),('WSS197','p13'),('WSS200','p13'),('WSS209','p13'),('WSS224','p13'),('WSS237','p13'),('WSS243','p13'),('WSS265','p13'),('WSS273','p13'),('WSS277','p13'),('WSS286','p13'),('WSS294','p13'),('WSS295','p13'),('WSS41','p13'),('WSS47','p13'),('WSS48','p13'),('WSS57','p13'),('WSS81','p13'),('WSS96','p13'),('WSS98','p13'),('WSS113','p14'),('WSS121','p14'),('WSS145','p14'),('WSS172','p14'),('WSS225','p14'),('WSS23','p14'),('WSS285','p14'),('WSS291','p14'),('WSS294','p14'),('WSS38','p14'),('WSS43','p14'),('WSS5','p14'),('WSS57','p14'),('WSS84','p14'),('WSS10','p15'),('WSS105','p15'),('WSS109','p15'),('WSS115','p15'),('WSS125','p15'),('WSS142','p15'),('WSS151','p15'),('WSS157','p15'),('WSS175','p15'),('WSS199','p15'),('WSS21','p15'),('WSS222','p15'),('WSS237','p15'),('WSS256','p15'),('WSS281','p15'),('WSS29','p15'),('WSS37','p15'),('WSS45','p15'),('WSS72','p15'),('WSS109','p16'),('WSS116','p16'),('WSS14','p16'),('WSS147','p16'),('WSS153','p16'),('WSS169','p16'),('WSS175','p16'),('WSS191','p16'),('WSS194','p16'),('WSS198','p16'),('WSS20','p16'),('WSS213','p16'),('WSS214','p16'),('WSS218','p16'),('WSS22','p16'),('WSS292','p16'),('WSS32','p16'),('WSS43','p16'),('WSS95','p16'),('WSS106','p17'),('WSS107','p17'),('WSS12','p17'),('WSS13','p17'),('WSS156','p17'),('WSS173','p17'),('WSS182','p17'),('WSS195','p17'),('WSS210','p17'),('WSS211','p17'),('WSS227','p17'),('WSS235','p17'),('WSS239','p17'),('WSS241','p17'),('WSS242','p17'),('WSS245','p17'),('WSS263','p17'),('WSS31','p17'),('WSS49','p17'),('WSS6','p17'),('WSS71','p17'),('WSS73','p17'),('WSS83','p17'),('WSS119','p18'),('WSS132','p18'),('WSS146','p18'),('WSS219','p18'),('WSS226','p18'),('WSS230','p18'),('WSS233','p18'),('WSS238','p18'),('WSS24','p18'),('WSS242','p18'),('WSS250','p18'),('WSS261','p18'),('WSS270','p18'),('WSS271','p18'),('WSS274','p18'),('WSS28','p18'),('WSS33','p18'),('WSS50','p18'),('WSS84','p18'),('WSS129','p19'),('WSS144','p19'),('WSS159','p19'),('WSS171','p19'),('WSS177','p19'),('WSS187','p19'),('WSS19','p19'),('WSS190','p19'),('WSS198','p19'),('WSS236','p19'),('WSS247','p19'),('WSS266','p19'),('WSS272','p19'),('WSS300','p19'),('WSS56','p19'),('WSS10','p2'),('WSS104','p2'),('WSS111','p2'),('WSS120','p2'),('WSS126','p2'),('WSS13','p2'),('WSS132','p2'),('WSS138','p2'),('WSS152','p2'),('WSS168','p2'),('WSS205','p2'),('WSS216','p2'),('WSS232','p2'),('WSS236','p2'),('WSS243','p2'),('WSS248','p2'),('WSS249','p2'),('WSS251','p2'),('WSS266','p2'),('WSS283','p2'),('WSS284','p2'),('WSS44','p2'),('WSS7','p2'),('WSS99','p2'),('WSS11','p20'),('WSS125','p20'),('WSS136','p20'),('WSS141','p20'),('WSS18','p20'),('WSS182','p20'),('WSS185','p20'),('WSS186','p20'),('WSS223','p20'),('WSS226','p20'),('WSS250','p20'),('WSS276','p20'),('WSS290','p20'),('WSS291','p20'),('WSS36','p20'),('WSS39','p20'),('WSS66','p20'),('WSS69','p20'),('WSS75','p20'),('WSS89','p20'),('WSS96','p20'),('WSS97','p20'),('WSS112','p21'),('WSS12','p21'),('WSS122','p21'),('WSS123','p21'),('WSS138','p21'),('WSS149','p21'),('WSS155','p21'),('WSS184','p21'),('WSS193','p21'),('WSS197','p21'),('WSS207','p21'),('WSS223','p21'),('WSS225','p21'),('WSS239','p21'),('WSS260','p21'),('WSS268','p21'),('WSS269','p21'),('WSS27','p21'),('WSS278','p21'),('WSS282','p21'),('WSS289','p21'),('WSS34','p21'),('WSS78','p21'),('WSS82','p21'),('WSS92','p21'),('WSS122','p22'),('WSS123','p22'),('WSS126','p22'),('WSS157','p22'),('WSS163','p22'),('WSS187','p22'),('WSS211','p22'),('WSS212','p22'),('WSS213','p22'),('WSS219','p22'),('WSS260','p22'),('WSS28','p22'),('WSS290','p22'),('WSS299','p22'),('WSS40','p22'),('WSS45','p22'),('WSS48','p22'),('WSS54','p22'),('WSS61','p22'),('WSS74','p22'),('WSS93','p22'),('WSS100','p23'),('WSS102','p23'),('WSS104','p23'),('WSS135','p23'),('WSS151','p23'),('WSS154','p23'),('WSS16','p23'),('WSS161','p23'),('WSS174','p23'),('WSS191','p23'),('WSS204','p23'),('WSS209','p23'),('WSS246','p23'),('WSS247','p23'),('WSS252','p23'),('WSS269','p23'),('WSS280','p23'),('WSS293','p23'),('WSS64','p23'),('WSS80','p23'),('WSS100','p24'),('WSS103','p24'),('WSS127','p24'),('WSS14','p24'),('WSS158','p24'),('WSS162','p24'),('WSS199','p24'),('WSS206','p24'),('WSS234','p24'),('WSS255','p24'),('WSS257','p24'),('WSS258','p24'),('WSS259','p24'),('WSS262','p24'),('WSS264','p24'),('WSS27','p24'),('WSS274','p24'),('WSS289','p24'),('WSS29','p24'),('WSS55','p24'),('WSS58','p24'),('WSS94','p24'),('WSS105','p25'),('WSS117','p25'),('WSS141','p25'),('WSS145','p25'),('WSS161','p25'),('WSS170','p25'),('WSS173','p25'),('WSS222','p25'),('WSS228','p25'),('WSS229','p25'),('WSS259','p25'),('WSS55','p25'),('WSS75','p25'),('WSS91','p25'),('WSS112','p26'),('WSS115','p26'),('WSS129','p26'),('WSS143','p26'),('WSS144','p26'),('WSS184','p26'),('WSS189','p26'),('WSS205','p26'),('WSS224','p26'),('WSS228','p26'),('WSS235','p26'),('WSS253','p26'),('WSS298','p26'),('WSS63','p26'),('WSS64','p26'),('WSS65','p26'),('WSS68','p26'),('WSS77','p26'),('WSS8','p26'),('WSS92','p26'),('WSS11','p27'),('WSS111','p27'),('WSS128','p27'),('WSS134','p27'),('WSS15','p27'),('WSS165','p27'),('WSS19','p27'),('WSS194','p27'),('WSS20','p27'),('WSS203','p27'),('WSS220','p27'),('WSS221','p27'),('WSS246','p27'),('WSS253','p27'),('WSS254','p27'),('WSS272','p27'),('WSS273','p27'),('WSS280','p27'),('WSS286','p27'),('WSS292','p27'),('WSS36','p27'),('WSS38','p27'),('WSS79','p27'),('WSS87','p27'),('WSS88','p27'),('WSS90','p27'),('WSS118','p28'),('WSS120','p28'),('WSS142','p28'),('WSS148','p28'),('WSS158','p28'),('WSS2','p28'),('WSS208','p28'),('WSS244','p28'),('WSS282','p28'),('WSS42','p28'),('WSS46','p28'),('WSS70','p28'),('WSS77','p28'),('WSS78','p28'),('WSS103','p29'),('WSS107','p29'),('WSS110','p29'),('WSS134','p29'),('WSS137','p29'),('WSS150','p29'),('WSS159','p29'),('WSS183','p29'),('WSS196','p29'),('WSS227','p29'),('WSS24','p29'),('WSS240','p29'),('WSS278','p29'),('WSS288','p29'),('WSS33','p29'),('WSS6','p29'),('WSS61','p29'),('WSS76','p29'),('WSS79','p29'),('WSS90','p29'),('WSS94','p29'),('WSS99','p29'),('WSS1','p3'),('WSS102','p3'),('WSS133','p3'),('WSS152','p3'),('WSS166','p3'),('WSS196','p3'),('WSS21','p3'),('WSS218','p3'),('WSS232','p3'),('WSS271','p3'),('WSS30','p3'),('WSS52','p3'),('WSS7','p3'),('WSS71','p3'),('WSS117','p30'),('WSS15','p30'),('WSS153','p30'),('WSS170','p30'),('WSS183','p30'),('WSS188','p30'),('WSS2','p30'),('WSS207','p30'),('WSS210','p30'),('WSS268','p30'),('WSS37','p30'),('WSS40','p30'),('WSS42','p30'),('WSS50','p30'),('WSS63','p30'),('WSS66','p30'),('WSS67','p30'),('WSS83','p30'),('WSS9','p30'),('WSS110','p4'),('WSS136','p4'),('WSS137','p4'),('WSS147','p4'),('WSS162','p4'),('WSS176','p4'),('WSS204','p4'),('WSS212','p4'),('WSS240','p4'),('WSS244','p4'),('WSS249','p4'),('WSS267','p4'),('WSS276','p4'),('WSS287','p4'),('WSS295','p4'),('WSS3','p4'),('WSS62','p4'),('WSS85','p4'),('WSS89','p4'),('WSS97','p4'),('WSS130','p5'),('WSS139','p5'),('WSS160','p5'),('WSS192','p5'),('WSS206','p5'),('WSS217','p5'),('WSS229','p5'),('WSS238','p5'),('WSS241','p5'),('WSS25','p5'),('WSS252','p5'),('WSS26','p5'),('WSS262','p5'),('WSS267','p5'),('WSS279','p5'),('WSS281','p5'),('WSS52','p5'),('WSS53','p5'),('WSS65','p5'),('WSS68','p5'),('WSS69','p5'),('WSS72','p5'),('WSS82','p5'),('WSS1','p6'),('WSS118','p6'),('WSS131','p6'),('WSS160','p6'),('WSS164','p6'),('WSS167','p6'),('WSS17','p6'),('WSS177','p6'),('WSS208','p6'),('WSS214','p6'),('WSS265','p6'),('WSS51','p6'),('WSS67','p6'),('WSS98','p6'),('WSS133','p7'),('WSS154','p7'),('WSS156','p7'),('WSS164','p7'),('WSS178','p7'),('WSS195','p7'),('WSS201','p7'),('WSS217','p7'),('WSS221','p7'),('WSS251','p7'),('WSS254','p7'),('WSS297','p7'),('WSS4','p7'),('WSS60','p7'),('WSS70','p7'),('WSS8','p7'),('WSS119','p8'),('WSS124','p8'),('WSS140','p8'),('WSS169','p8'),('WSS186','p8'),('WSS190','p8'),('WSS216','p8'),('WSS25','p8'),('WSS264','p8'),('WSS285','p8'),('WSS293','p8'),('WSS299','p8'),('WSS31','p8'),('WSS34','p8'),('WSS4','p8'),('WSS5','p8'),('WSS53','p8'),('WSS56','p8'),('WSS59','p8'),('WSS60','p8'),('WSS73','p8'),('WSS80','p8'),('WSS9','p8'),('WSS93','p8'),('WSS101','p9'),('WSS116','p9'),('WSS128','p9'),('WSS130','p9'),('WSS135','p9'),('WSS140','p9'),('WSS166','p9'),('WSS181','p9'),('WSS188','p9'),('WSS202','p9'),('WSS203','p9'),('WSS215','p9'),('WSS220','p9'),('WSS234','p9'),('WSS248','p9'),('WSS255','p9'),('WSS257','p9'),('WSS270','p9'),('WSS284','p9'),('WSS296','p9'),('WSS47','p9'),('WSS74','p9'),('WSS95','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS1','p1'),('WSS102','p1'),('WSS104','p1'),('WSS107','p1'),('WSS109','p1'),('WSS110','p1'),('WSS115','p1'),('WSS127','p1'),('WSS129','p1'),('WSS132','p1'),('WSS135','p1'),('WSS136','p1'),('WSS149','p1'),('WSS15','p1'),('WSS153','p1'),('WSS161','p1'),('WSS165','p1'),('WSS166','p1'),('WSS172','p1'),('WSS176','p1'),('WSS179','p1'),('WSS183','p1'),('WSS186','p1'),('WSS188','p1'),('WSS19','p1'),('WSS194','p1'),('WSS196','p1'),('WSS200','p1'),('WSS203','p1'),('WSS204','p1'),('WSS205','p1'),('WSS206','p1'),('WSS207','p1'),('WSS214','p1'),('WSS218','p1'),('WSS22','p1'),('WSS221','p1'),('WSS23','p1'),('WSS237','p1'),('WSS238','p1'),('WSS239','p1'),('WSS240','p1'),('WSS241','p1'),('WSS243','p1'),('WSS244','p1'),('WSS25','p1'),('WSS251','p1'),('WSS252','p1'),('WSS268','p1'),('WSS269','p1'),('WSS273','p1'),('WSS276','p1'),('WSS279','p1'),('WSS28','p1'),('WSS282','p1'),('WSS285','p1'),('WSS287','p1'),('WSS288','p1'),('WSS289','p1'),('WSS29','p1'),('WSS298','p1'),('WSS299','p1'),('WSS3','p1'),('WSS35','p1'),('WSS41','p1'),('WSS45','p1'),('WSS47','p1'),('WSS49','p1'),('WSS50','p1'),('WSS51','p1'),('WSS55','p1'),('WSS58','p1'),('WSS6','p1'),('WSS63','p1'),('WSS66','p1'),('WSS67','p1'),('WSS69','p1'),('WSS72','p1'),('WSS73','p1'),('WSS77','p1'),('WSS79','p1'),('WSS85','p1'),('WSS90','p1'),('WSS95','p1'),('WSS96','p1'),('WSS101','p10'),('WSS112','p10'),('WSS113','p10'),('WSS115','p10'),('WSS124','p10'),('WSS125','p10'),('WSS13','p10'),('WSS132','p10'),('WSS138','p10'),('WSS141','p10'),('WSS144','p10'),('WSS149','p10'),('WSS151','p10'),('WSS157','p10'),('WSS159','p10'),('WSS161','p10'),('WSS164','p10'),('WSS166','p10'),('WSS167','p10'),('WSS169','p10'),('WSS172','p10'),('WSS175','p10'),('WSS184','p10'),('WSS194','p10'),('WSS196','p10'),('WSS201','p10'),('WSS202','p10'),('WSS203','p10'),('WSS205','p10'),('WSS210','p10'),('WSS211','p10'),('WSS214','p10'),('WSS216','p10'),('WSS217','p10'),('WSS224','p10'),('WSS226','p10'),('WSS23','p10'),('WSS230','p10'),('WSS237','p10'),('WSS248','p10'),('WSS25','p10'),('WSS252','p10'),('WSS257','p10'),('WSS262','p10'),('WSS266','p10'),('WSS27','p10'),('WSS273','p10'),('WSS292','p10'),('WSS293','p10'),('WSS294','p10'),('WSS30','p10'),('WSS300','p10'),('WSS32','p10'),('WSS36','p10'),('WSS38','p10'),('WSS45','p10'),('WSS50','p10'),('WSS52','p10'),('WSS59','p10'),('WSS64','p10'),('WSS70','p10'),('WSS72','p10'),('WSS78','p10'),('WSS79','p10'),('WSS84','p10'),('WSS85','p10'),('WSS86','p10'),('WSS87','p10'),('WSS89','p10'),('WSS90','p10'),('WSS91','p10'),('WSS96','p10'),('WSS98','p10'),('WSS99','p10'),('WSS100','p11'),('WSS102','p11'),('WSS107','p11'),('WSS121','p11'),('WSS125','p11'),('WSS126','p11'),('WSS127','p11'),('WSS130','p11'),('WSS133','p11'),('WSS143','p11'),('WSS147','p11'),('WSS149','p11'),('WSS153','p11'),('WSS16','p11'),('WSS164','p11'),('WSS165','p11'),('WSS166','p11'),('WSS170','p11'),('WSS172','p11'),('WSS173','p11'),('WSS180','p11'),('WSS183','p11'),('WSS184','p11'),('WSS191','p11'),('WSS193','p11'),('WSS198','p11'),('WSS199','p11'),('WSS20','p11'),('WSS200','p11'),('WSS201','p11'),('WSS204','p11'),('WSS214','p11'),('WSS219','p11'),('WSS222','p11'),('WSS224','p11'),('WSS232','p11'),('WSS24','p11'),('WSS240','p11'),('WSS248','p11'),('WSS253','p11'),('WSS254','p11'),('WSS258','p11'),('WSS259','p11'),('WSS265','p11'),('WSS270','p11'),('WSS278','p11'),('WSS282','p11'),('WSS284','p11'),('WSS29','p11'),('WSS294','p11'),('WSS295','p11'),('WSS296','p11'),('WSS298','p11'),('WSS31','p11'),('WSS46','p11'),('WSS47','p11'),('WSS5','p11'),('WSS53','p11'),('WSS57','p11'),('WSS58','p11'),('WSS60','p11'),('WSS62','p11'),('WSS63','p11'),('WSS64','p11'),('WSS69','p11'),('WSS76','p11'),('WSS77','p11'),('WSS80','p11'),('WSS82','p11'),('WSS94','p11'),('WSS96','p11'),('WSS1','p12'),('WSS10','p12'),('WSS102','p12'),('WSS103','p12'),('WSS105','p12'),('WSS110','p12'),('WSS113','p12'),('WSS116','p12'),('WSS117','p12'),('WSS125','p12'),('WSS126','p12'),('WSS128','p12'),('WSS134','p12'),('WSS137','p12'),('WSS139','p12'),('WSS140','p12'),('WSS142','p12'),('WSS143','p12'),('WSS149','p12'),('WSS151','p12'),('WSS154','p12'),('WSS156','p12'),('WSS158','p12'),('WSS160','p12'),('WSS164','p12'),('WSS169','p12'),('WSS174','p12'),('WSS183','p12'),('WSS185','p12'),('WSS188','p12'),('WSS189','p12'),('WSS19','p12'),('WSS191','p12'),('WSS193','p12'),('WSS196','p12'),('WSS198','p12'),('WSS20','p12'),('WSS201','p12'),('WSS202','p12'),('WSS204','p12'),('WSS205','p12'),('WSS206','p12'),('WSS208','p12'),('WSS213','p12'),('WSS218','p12'),('WSS221','p12'),('WSS23','p12'),('WSS230','p12'),('WSS231','p12'),('WSS238','p12'),('WSS245','p12'),('WSS247','p12'),('WSS252','p12'),('WSS254','p12'),('WSS257','p12'),('WSS259','p12'),('WSS269','p12'),('WSS276','p12'),('WSS28','p12'),('WSS280','p12'),('WSS281','p12'),('WSS283','p12'),('WSS290','p12'),('WSS291','p12'),('WSS292','p12'),('WSS293','p12'),('WSS30','p12'),('WSS38','p12'),('WSS4','p12'),('WSS42','p12'),('WSS45','p12'),('WSS46','p12'),('WSS5','p12'),('WSS56','p12'),('WSS58','p12'),('WSS65','p12'),('WSS66','p12'),('WSS77','p12'),('WSS8','p12'),('WSS80','p12'),('WSS82','p12'),('WSS83','p12'),('WSS9','p12'),('WSS104','p13'),('WSS105','p13'),('WSS11','p13'),('WSS110','p13'),('WSS112','p13'),('WSS113','p13'),('WSS130','p13'),('WSS134','p13'),('WSS136','p13'),('WSS138','p13'),('WSS139','p13'),('WSS143','p13'),('WSS154','p13'),('WSS158','p13'),('WSS159','p13'),('WSS16','p13'),('WSS167','p13'),('WSS168','p13'),('WSS171','p13'),('WSS172','p13'),('WSS178','p13'),('WSS18','p13'),('WSS183','p13'),('WSS184','p13'),('WSS185','p13'),('WSS186','p13'),('WSS19','p13'),('WSS193','p13'),('WSS197','p13'),('WSS201','p13'),('WSS202','p13'),('WSS207','p13'),('WSS212','p13'),('WSS218','p13'),('WSS223','p13'),('WSS228','p13'),('WSS233','p13'),('WSS244','p13'),('WSS256','p13'),('WSS261','p13'),('WSS262','p13'),('WSS266','p13'),('WSS276','p13'),('WSS28','p13'),('WSS280','p13'),('WSS287','p13'),('WSS288','p13'),('WSS299','p13'),('WSS32','p13'),('WSS34','p13'),('WSS50','p13'),('WSS52','p13'),('WSS54','p13'),('WSS56','p13'),('WSS59','p13'),('WSS7','p13'),('WSS75','p13'),('WSS86','p13'),('WSS92','p13'),('WSS102','p14'),('WSS103','p14'),('WSS111','p14'),('WSS113','p14'),('WSS116','p14'),('WSS117','p14'),('WSS120','p14'),('WSS121','p14'),('WSS128','p14'),('WSS129','p14'),('WSS137','p14'),('WSS145','p14'),('WSS148','p14'),('WSS15','p14'),('WSS150','p14'),('WSS152','p14'),('WSS153','p14'),('WSS165','p14'),('WSS168','p14'),('WSS169','p14'),('WSS17','p14'),('WSS171','p14'),('WSS176','p14'),('WSS181','p14'),('WSS182','p14'),('WSS187','p14'),('WSS196','p14'),('WSS198','p14'),('WSS199','p14'),('WSS210','p14'),('WSS215','p14'),('WSS22','p14'),('WSS226','p14'),('WSS232','p14'),('WSS235','p14'),('WSS238','p14'),('WSS245','p14'),('WSS248','p14'),('WSS253','p14'),('WSS260','p14'),('WSS266','p14'),('WSS27','p14'),('WSS270','p14'),('WSS273','p14'),('WSS276','p14'),('WSS282','p14'),('WSS289','p14'),('WSS290','p14'),('WSS291','p14'),('WSS293','p14'),('WSS297','p14'),('WSS300','p14'),('WSS32','p14'),('WSS33','p14'),('WSS36','p14'),('WSS39','p14'),('WSS44','p14'),('WSS45','p14'),('WSS50','p14'),('WSS52','p14'),('WSS59','p14'),('WSS63','p14'),('WSS68','p14'),('WSS69','p14'),('WSS74','p14'),('WSS76','p14'),('WSS82','p14'),('WSS88','p14'),('WSS89','p14'),('WSS93','p14'),('WSS94','p14'),('WSS99','p14'),('WSS1','p15'),('WSS10','p15'),('WSS100','p15'),('WSS101','p15'),('WSS114','p15'),('WSS120','p15'),('WSS131','p15'),('WSS134','p15'),('WSS136','p15'),('WSS140','p15'),('WSS145','p15'),('WSS146','p15'),('WSS156','p15'),('WSS158','p15'),('WSS160','p15'),('WSS163','p15'),('WSS166','p15'),('WSS170','p15'),('WSS173','p15'),('WSS176','p15'),('WSS178','p15'),('WSS179','p15'),('WSS18','p15'),('WSS188','p15'),('WSS189','p15'),('WSS194','p15'),('WSS197','p15'),('WSS202','p15'),('WSS205','p15'),('WSS208','p15'),('WSS210','p15'),('WSS211','p15'),('WSS229','p15'),('WSS23','p15'),('WSS230','p15'),('WSS236','p15'),('WSS241','p15'),('WSS247','p15'),('WSS249','p15'),('WSS256','p15'),('WSS26','p15'),('WSS260','p15'),('WSS264','p15'),('WSS265','p15'),('WSS270','p15'),('WSS274','p15'),('WSS285','p15'),('WSS286','p15'),('WSS287','p15'),('WSS288','p15'),('WSS291','p15'),('WSS3','p15'),('WSS38','p15'),('WSS39','p15'),('WSS4','p15'),('WSS46','p15'),('WSS53','p15'),('WSS55','p15'),('WSS6','p15'),('WSS61','p15'),('WSS62','p15'),('WSS64','p15'),('WSS67','p15'),('WSS7','p15'),('WSS70','p15'),('WSS73','p15'),('WSS76','p15'),('WSS79','p15'),('WSS8','p15'),('WSS83','p15'),('WSS86','p15'),('WSS87','p15'),('WSS88','p15'),('WSS94','p15'),('WSS99','p15'),('WSS10','p16'),('WSS103','p16'),('WSS115','p16'),('WSS119','p16'),('WSS122','p16'),('WSS123','p16'),('WSS124','p16'),('WSS129','p16'),('WSS13','p16'),('WSS137','p16'),('WSS138','p16'),('WSS14','p16'),('WSS140','p16'),('WSS141','p16'),('WSS143','p16'),('WSS144','p16'),('WSS147','p16'),('WSS15','p16'),('WSS154','p16'),('WSS155','p16'),('WSS160','p16'),('WSS162','p16'),('WSS169','p16'),('WSS17','p16'),('WSS179','p16'),('WSS180','p16'),('WSS182','p16'),('WSS190','p16'),('WSS195','p16'),('WSS198','p16'),('WSS20','p16'),('WSS201','p16'),('WSS204','p16'),('WSS206','p16'),('WSS208','p16'),('WSS217','p16'),('WSS219','p16'),('WSS225','p16'),('WSS228','p16'),('WSS23','p16'),('WSS231','p16'),('WSS238','p16'),('WSS247','p16'),('WSS255','p16'),('WSS259','p16'),('WSS261','p16'),('WSS265','p16'),('WSS267','p16'),('WSS272','p16'),('WSS275','p16'),('WSS277','p16'),('WSS28','p16'),('WSS282','p16'),('WSS284','p16'),('WSS293','p16'),('WSS297','p16'),('WSS298','p16'),('WSS299','p16'),('WSS34','p16'),('WSS35','p16'),('WSS36','p16'),('WSS37','p16'),('WSS4','p16'),('WSS47','p16'),('WSS53','p16'),('WSS65','p16'),('WSS72','p16'),('WSS75','p16'),('WSS79','p16'),('WSS80','p16'),('WSS83','p16'),('WSS85','p16'),('WSS9','p16'),('WSS90','p16'),('WSS92','p16'),('WSS95','p16'),('WSS97','p16'),('WSS100','p17'),('WSS104','p17'),('WSS105','p17'),('WSS11','p17'),('WSS111','p17'),('WSS112','p17'),('WSS12','p17'),('WSS127','p17'),('WSS128','p17'),('WSS139','p17'),('WSS150','p17'),('WSS155','p17'),('WSS158','p17'),('WSS164','p17'),('WSS173','p17'),('WSS176','p17'),('WSS177','p17'),('WSS182','p17'),('WSS194','p17'),('WSS195','p17'),('WSS197','p17'),('WSS201','p17'),('WSS209','p17'),('WSS21','p17'),('WSS224','p17'),('WSS227','p17'),('WSS23','p17'),('WSS230','p17'),('WSS231','p17'),('WSS233','p17'),('WSS235','p17'),('WSS236','p17'),('WSS238','p17'),('WSS239','p17'),('WSS246','p17'),('WSS249','p17'),('WSS250','p17'),('WSS260','p17'),('WSS263','p17'),('WSS274','p17'),('WSS28','p17'),('WSS280','p17'),('WSS286','p17'),('WSS291','p17'),('WSS296','p17'),('WSS297','p17'),('WSS3','p17'),('WSS33','p17'),('WSS36','p17'),('WSS41','p17'),('WSS42','p17'),('WSS45','p17'),('WSS54','p17'),('WSS59','p17'),('WSS60','p17'),('WSS68','p17'),('WSS7','p17'),('WSS78','p17'),('WSS83','p17'),('WSS84','p17'),('WSS86','p17'),('WSS87','p17'),('WSS93','p17'),('WSS100','p18'),('WSS101','p18'),('WSS109','p18'),('WSS116','p18'),('WSS117','p18'),('WSS118','p18'),('WSS120','p18'),('WSS121','p18'),('WSS129','p18'),('WSS13','p18'),('WSS136','p18'),('WSS147','p18'),('WSS151','p18'),('WSS152','p18'),('WSS153','p18'),('WSS160','p18'),('WSS168','p18'),('WSS173','p18'),('WSS200','p18'),('WSS204','p18'),('WSS206','p18'),('WSS207','p18'),('WSS21','p18'),('WSS210','p18'),('WSS215','p18'),('WSS220','p18'),('WSS223','p18'),('WSS236','p18'),('WSS243','p18'),('WSS244','p18'),('WSS245','p18'),('WSS247','p18'),('WSS251','p18'),('WSS261','p18'),('WSS266','p18'),('WSS267','p18'),('WSS268','p18'),('WSS27','p18'),('WSS270','p18'),('WSS274','p18'),('WSS277','p18'),('WSS281','p18'),('WSS288','p18'),('WSS29','p18'),('WSS290','p18'),('WSS293','p18'),('WSS36','p18'),('WSS39','p18'),('WSS44','p18'),('WSS49','p18'),('WSS61','p18'),('WSS63','p18'),('WSS65','p18'),('WSS68','p18'),('WSS7','p18'),('WSS70','p18'),('WSS74','p18'),('WSS76','p18'),('WSS8','p18'),('WSS85','p18'),('WSS93','p18'),('WSS99','p18'),('WSS112','p19'),('WSS12','p19'),('WSS120','p19'),('WSS122','p19'),('WSS13','p19'),('WSS132','p19'),('WSS133','p19'),('WSS139','p19'),('WSS154','p19'),('WSS155','p19'),('WSS16','p19'),('WSS168','p19'),('WSS172','p19'),('WSS177','p19'),('WSS18','p19'),('WSS183','p19'),('WSS186','p19'),('WSS188','p19'),('WSS215','p19'),('WSS216','p19'),('WSS22','p19'),('WSS223','p19'),('WSS234','p19'),('WSS237','p19'),('WSS24','p19'),('WSS245','p19'),('WSS246','p19'),('WSS250','p19'),('WSS252','p19'),('WSS253','p19'),('WSS256','p19'),('WSS258','p19'),('WSS262','p19'),('WSS263','p19'),('WSS265','p19'),('WSS269','p19'),('WSS270','p19'),('WSS272','p19'),('WSS277','p19'),('WSS278','p19'),('WSS283','p19'),('WSS285','p19'),('WSS286','p19'),('WSS287','p19'),('WSS290','p19'),('WSS291','p19'),('WSS294','p19'),('WSS297','p19'),('WSS300','p19'),('WSS31','p19'),('WSS35','p19'),('WSS38','p19'),('WSS46','p19'),('WSS48','p19'),('WSS53','p19'),('WSS55','p19'),('WSS59','p19'),('WSS69','p19'),('WSS71','p19'),('WSS77','p19'),('WSS78','p19'),('WSS86','p19'),('WSS89','p19'),('WSS9','p19'),('WSS90','p19'),('WSS92','p19'),('WSS94','p19'),('WSS10','p2'),('WSS100','p2'),('WSS108','p2'),('WSS109','p2'),('WSS112','p2'),('WSS114','p2'),('WSS119','p2'),('WSS120','p2'),('WSS123','p2'),('WSS127','p2'),('WSS132','p2'),('WSS135','p2'),('WSS137','p2'),('WSS138','p2'),('WSS141','p2'),('WSS146','p2'),('WSS148','p2'),('WSS151','p2'),('WSS154','p2'),('WSS159','p2'),('WSS163','p2'),('WSS167','p2'),('WSS172','p2'),('WSS179','p2'),('WSS180','p2'),('WSS19','p2'),('WSS192','p2'),('WSS194','p2'),('WSS199','p2'),('WSS202','p2'),('WSS208','p2'),('WSS216','p2'),('WSS223','p2'),('WSS228','p2'),('WSS234','p2'),('WSS238','p2'),('WSS242','p2'),('WSS245','p2'),('WSS25','p2'),('WSS250','p2'),('WSS255','p2'),('WSS257','p2'),('WSS258','p2'),('WSS267','p2'),('WSS269','p2'),('WSS271','p2'),('WSS273','p2'),('WSS275','p2'),('WSS277','p2'),('WSS280','p2'),('WSS286','p2'),('WSS290','p2'),('WSS297','p2'),('WSS31','p2'),('WSS48','p2'),('WSS5','p2'),('WSS57','p2'),('WSS58','p2'),('WSS6','p2'),('WSS61','p2'),('WSS62','p2'),('WSS65','p2'),('WSS73','p2'),('WSS96','p2'),('WSS103','p20'),('WSS113','p20'),('WSS12','p20'),('WSS123','p20'),('WSS124','p20'),('WSS128','p20'),('WSS132','p20'),('WSS134','p20'),('WSS135','p20'),('WSS139','p20'),('WSS141','p20'),('WSS145','p20'),('WSS147','p20'),('WSS150','p20'),('WSS156','p20'),('WSS168','p20'),('WSS17','p20'),('WSS175','p20'),('WSS177','p20'),('WSS18','p20'),('WSS181','p20'),('WSS182','p20'),('WSS183','p20'),('WSS190','p20'),('WSS192','p20'),('WSS206','p20'),('WSS209','p20'),('WSS211','p20'),('WSS213','p20'),('WSS219','p20'),('WSS220','p20'),('WSS226','p20'),('WSS23','p20'),('WSS236','p20'),('WSS238','p20'),('WSS244','p20'),('WSS252','p20'),('WSS255','p20'),('WSS27','p20'),('WSS277','p20'),('WSS279','p20'),('WSS283','p20'),('WSS286','p20'),('WSS289','p20'),('WSS295','p20'),('WSS296','p20'),('WSS300','p20'),('WSS31','p20'),('WSS32','p20'),('WSS38','p20'),('WSS4','p20'),('WSS41','p20'),('WSS54','p20'),('WSS60','p20'),('WSS7','p20'),('WSS70','p20'),('WSS71','p20'),('WSS73','p20'),('WSS77','p20'),('WSS80','p20'),('WSS83','p20'),('WSS84','p20'),('WSS97','p20'),('WSS104','p21'),('WSS109','p21'),('WSS113','p21'),('WSS114','p21'),('WSS117','p21'),('WSS121','p21'),('WSS132','p21'),('WSS134','p21'),('WSS135','p21'),('WSS137','p21'),('WSS14','p21'),('WSS141','p21'),('WSS144','p21'),('WSS148','p21'),('WSS155','p21'),('WSS16','p21'),('WSS163','p21'),('WSS165','p21'),('WSS170','p21'),('WSS171','p21'),('WSS173','p21'),('WSS175','p21'),('WSS178','p21'),('WSS190','p21'),('WSS192','p21'),('WSS193','p21'),('WSS20','p21'),('WSS203','p21'),('WSS21','p21'),('WSS211','p21'),('WSS212','p21'),('WSS213','p21'),('WSS214','p21'),('WSS217','p21'),('WSS22','p21'),('WSS222','p21'),('WSS224','p21'),('WSS233','p21'),('WSS234','p21'),('WSS237','p21'),('WSS241','p21'),('WSS250','p21'),('WSS253','p21'),('WSS257','p21'),('WSS258','p21'),('WSS26','p21'),('WSS264','p21'),('WSS268','p21'),('WSS270','p21'),('WSS271','p21'),('WSS274','p21'),('WSS276','p21'),('WSS279','p21'),('WSS281','p21'),('WSS284','p21'),('WSS286','p21'),('WSS287','p21'),('WSS288','p21'),('WSS289','p21'),('WSS290','p21'),('WSS293','p21'),('WSS3','p21'),('WSS31','p21'),('WSS32','p21'),('WSS34','p21'),('WSS35','p21'),('WSS37','p21'),('WSS47','p21'),('WSS51','p21'),('WSS61','p21'),('WSS67','p21'),('WSS68','p21'),('WSS70','p21'),('WSS71','p21'),('WSS75','p21'),('WSS78','p21'),('WSS79','p21'),('WSS81','p21'),('WSS83','p21'),('WSS84','p21'),('WSS88','p21'),('WSS90','p21'),('WSS91','p21'),('WSS93','p21'),('WSS97','p21'),('WSS99','p21'),('WSS10','p22'),('WSS100','p22'),('WSS101','p22'),('WSS102','p22'),('WSS106','p22'),('WSS108','p22'),('WSS109','p22'),('WSS111','p22'),('WSS118','p22'),('WSS119','p22'),('WSS129','p22'),('WSS132','p22'),('WSS139','p22'),('WSS14','p22'),('WSS142','p22'),('WSS143','p22'),('WSS144','p22'),('WSS146','p22'),('WSS149','p22'),('WSS159','p22'),('WSS163','p22'),('WSS167','p22'),('WSS168','p22'),('WSS171','p22'),('WSS175','p22'),('WSS176','p22'),('WSS181','p22'),('WSS185','p22'),('WSS195','p22'),('WSS203','p22'),('WSS208','p22'),('WSS209','p22'),('WSS211','p22'),('WSS222','p22'),('WSS225','p22'),('WSS227','p22'),('WSS229','p22'),('WSS232','p22'),('WSS234','p22'),('WSS24','p22'),('WSS243','p22'),('WSS245','p22'),('WSS246','p22'),('WSS250','p22'),('WSS252','p22'),('WSS257','p22'),('WSS262','p22'),('WSS264','p22'),('WSS268','p22'),('WSS273','p22'),('WSS278','p22'),('WSS279','p22'),('WSS28','p22'),('WSS280','p22'),('WSS285','p22'),('WSS287','p22'),('WSS289','p22'),('WSS293','p22'),('WSS296','p22'),('WSS31','p22'),('WSS4','p22'),('WSS43','p22'),('WSS44','p22'),('WSS46','p22'),('WSS47','p22'),('WSS55','p22'),('WSS57','p22'),('WSS58','p22'),('WSS6','p22'),('WSS63','p22'),('WSS69','p22'),('WSS74','p22'),('WSS8','p22'),('WSS82','p22'),('WSS96','p22'),('WSS98','p22'),('WSS99','p22'),('WSS10','p23'),('WSS102','p23'),('WSS105','p23'),('WSS107','p23'),('WSS108','p23'),('WSS110','p23'),('WSS111','p23'),('WSS112','p23'),('WSS114','p23'),('WSS118','p23'),('WSS119','p23'),('WSS122','p23'),('WSS126','p23'),('WSS147','p23'),('WSS149','p23'),('WSS16','p23'),('WSS18','p23'),('WSS180','p23'),('WSS182','p23'),('WSS183','p23'),('WSS185','p23'),('WSS186','p23'),('WSS189','p23'),('WSS190','p23'),('WSS191','p23'),('WSS195','p23'),('WSS197','p23'),('WSS199','p23'),('WSS200','p23'),('WSS203','p23'),('WSS204','p23'),('WSS211','p23'),('WSS221','p23'),('WSS223','p23'),('WSS225','p23'),('WSS226','p23'),('WSS239','p23'),('WSS24','p23'),('WSS240','p23'),('WSS241','p23'),('WSS242','p23'),('WSS256','p23'),('WSS259','p23'),('WSS26','p23'),('WSS261','p23'),('WSS263','p23'),('WSS265','p23'),('WSS274','p23'),('WSS275','p23'),('WSS279','p23'),('WSS281','p23'),('WSS283','p23'),('WSS288','p23'),('WSS29','p23'),('WSS290','p23'),('WSS295','p23'),('WSS299','p23'),('WSS3','p23'),('WSS37','p23'),('WSS38','p23'),('WSS41','p23'),('WSS42','p23'),('WSS44','p23'),('WSS47','p23'),('WSS5','p23'),('WSS50','p23'),('WSS53','p23'),('WSS55','p23'),('WSS56','p23'),('WSS58','p23'),('WSS64','p23'),('WSS65','p23'),('WSS67','p23'),('WSS70','p23'),('WSS72','p23'),('WSS8','p23'),('WSS81','p23'),('WSS90','p23'),('WSS93','p23'),('WSS1','p24'),('WSS101','p24'),('WSS106','p24'),('WSS11','p24'),('WSS110','p24'),('WSS124','p24'),('WSS127','p24'),('WSS13','p24'),('WSS131','p24'),('WSS133','p24'),('WSS135','p24'),('WSS137','p24'),('WSS141','p24'),('WSS142','p24'),('WSS147','p24'),('WSS15','p24'),('WSS160','p24'),('WSS163','p24'),('WSS165','p24'),('WSS167','p24'),('WSS175','p24'),('WSS176','p24'),('WSS178','p24'),('WSS185','p24'),('WSS196','p24'),('WSS197','p24'),('WSS199','p24'),('WSS2','p24'),('WSS207','p24'),('WSS217','p24'),('WSS224','p24'),('WSS226','p24'),('WSS227','p24'),('WSS230','p24'),('WSS231','p24'),('WSS232','p24'),('WSS239','p24'),('WSS242','p24'),('WSS243','p24'),('WSS246','p24'),('WSS249','p24'),('WSS25','p24'),('WSS254','p24'),('WSS257','p24'),('WSS263','p24'),('WSS266','p24'),('WSS267','p24'),('WSS269','p24'),('WSS279','p24'),('WSS28','p24'),('WSS281','p24'),('WSS282','p24'),('WSS289','p24'),('WSS297','p24'),('WSS32','p24'),('WSS34','p24'),('WSS35','p24'),('WSS36','p24'),('WSS40','p24'),('WSS46','p24'),('WSS47','p24'),('WSS49','p24'),('WSS5','p24'),('WSS53','p24'),('WSS55','p24'),('WSS59','p24'),('WSS9','p24'),('WSS91','p24'),('WSS97','p24'),('WSS98','p24'),('WSS99','p24'),('WSS103','p25'),('WSS104','p25'),('WSS106','p25'),('WSS109','p25'),('WSS115','p25'),('WSS124','p25'),('WSS127','p25'),('WSS135','p25'),('WSS139','p25'),('WSS142','p25'),('WSS146','p25'),('WSS150','p25'),('WSS153','p25'),('WSS156','p25'),('WSS16','p25'),('WSS161','p25'),('WSS163','p25'),('WSS165','p25'),('WSS170','p25'),('WSS176','p25'),('WSS180','p25'),('WSS187','p25'),('WSS193','p25'),('WSS198','p25'),('WSS199','p25'),('WSS2','p25'),('WSS200','p25'),('WSS209','p25'),('WSS214','p25'),('WSS215','p25'),('WSS220','p25'),('WSS227','p25'),('WSS231','p25'),('WSS233','p25'),('WSS241','p25'),('WSS248','p25'),('WSS251','p25'),('WSS256','p25'),('WSS26','p25'),('WSS260','p25'),('WSS262','p25'),('WSS264','p25'),('WSS27','p25'),('WSS272','p25'),('WSS277','p25'),('WSS284','p25'),('WSS285','p25'),('WSS29','p25'),('WSS30','p25'),('WSS32','p25'),('WSS35','p25'),('WSS39','p25'),('WSS47','p25'),('WSS49','p25'),('WSS60','p25'),('WSS71','p25'),('WSS78','p25'),('WSS8','p25'),('WSS88','p25'),('WSS91','p25'),('WSS93','p25'),('WSS108','p26'),('WSS111','p26'),('WSS114','p26'),('WSS119','p26'),('WSS121','p26'),('WSS126','p26'),('WSS127','p26'),('WSS130','p26'),('WSS132','p26'),('WSS136','p26'),('WSS146','p26'),('WSS147','p26'),('WSS15','p26'),('WSS153','p26'),('WSS156','p26'),('WSS159','p26'),('WSS162','p26'),('WSS163','p26'),('WSS169','p26'),('WSS17','p26'),('WSS170','p26'),('WSS171','p26'),('WSS175','p26'),('WSS177','p26'),('WSS179','p26'),('WSS184','p26'),('WSS19','p26'),('WSS190','p26'),('WSS194','p26'),('WSS2','p26'),('WSS20','p26'),('WSS200','p26'),('WSS212','p26'),('WSS214','p26'),('WSS216','p26'),('WSS217','p26'),('WSS222','p26'),('WSS228','p26'),('WSS229','p26'),('WSS231','p26'),('WSS234','p26'),('WSS235','p26'),('WSS236','p26'),('WSS243','p26'),('WSS254','p26'),('WSS256','p26'),('WSS259','p26'),('WSS26','p26'),('WSS261','p26'),('WSS264','p26'),('WSS267','p26'),('WSS271','p26'),('WSS272','p26'),('WSS274','p26'),('WSS278','p26'),('WSS286','p26'),('WSS289','p26'),('WSS297','p26'),('WSS298','p26'),('WSS34','p26'),('WSS37','p26'),('WSS43','p26'),('WSS44','p26'),('WSS45','p26'),('WSS5','p26'),('WSS58','p26'),('WSS59','p26'),('WSS6','p26'),('WSS61','p26'),('WSS64','p26'),('WSS65','p26'),('WSS66','p26'),('WSS69','p26'),('WSS71','p26'),('WSS75','p26'),('WSS79','p26'),('WSS80','p26'),('WSS87','p26'),('WSS89','p26'),('WSS9','p26'),('WSS93','p26'),('WSS95','p26'),('WSS1','p27'),('WSS103','p27'),('WSS11','p27'),('WSS111','p27'),('WSS114','p27'),('WSS116','p27'),('WSS118','p27'),('WSS121','p27'),('WSS123','p27'),('WSS128','p27'),('WSS129','p27'),('WSS133','p27'),('WSS155','p27'),('WSS157','p27'),('WSS164','p27'),('WSS171','p27'),('WSS184','p27'),('WSS188','p27'),('WSS189','p27'),('WSS191','p27'),('WSS192','p27'),('WSS195','p27'),('WSS20','p27'),('WSS208','p27'),('WSS210','p27'),('WSS212','p27'),('WSS213','p27'),('WSS214','p27'),('WSS216','p27'),('WSS218','p27'),('WSS221','p27'),('WSS224','p27'),('WSS225','p27'),('WSS229','p27'),('WSS232','p27'),('WSS234','p27'),('WSS235','p27'),('WSS239','p27'),('WSS242','p27'),('WSS243','p27'),('WSS244','p27'),('WSS248','p27'),('WSS25','p27'),('WSS254','p27'),('WSS255','p27'),('WSS259','p27'),('WSS26','p27'),('WSS266','p27'),('WSS271','p27'),('WSS278','p27'),('WSS281','p27'),('WSS29','p27'),('WSS292','p27'),('WSS295','p27'),('WSS296','p27'),('WSS298','p27'),('WSS3','p27'),('WSS40','p27'),('WSS41','p27'),('WSS48','p27'),('WSS50','p27'),('WSS51','p27'),('WSS54','p27'),('WSS55','p27'),('WSS56','p27'),('WSS68','p27'),('WSS73','p27'),('WSS74','p27'),('WSS75','p27'),('WSS81','p27'),('WSS82','p27'),('WSS92','p27'),('WSS96','p27'),('WSS101','p28'),('WSS108','p28'),('WSS110','p28'),('WSS113','p28'),('WSS118','p28'),('WSS122','p28'),('WSS128','p28'),('WSS133','p28'),('WSS144','p28'),('WSS146','p28'),('WSS147','p28'),('WSS150','p28'),('WSS159','p28'),('WSS161','p28'),('WSS165','p28'),('WSS166','p28'),('WSS167','p28'),('WSS17','p28'),('WSS170','p28'),('WSS174','p28'),('WSS177','p28'),('WSS181','p28'),('WSS184','p28'),('WSS186','p28'),('WSS189','p28'),('WSS190','p28'),('WSS191','p28'),('WSS195','p28'),('WSS196','p28'),('WSS198','p28'),('WSS199','p28'),('WSS2','p28'),('WSS205','p28'),('WSS207','p28'),('WSS216','p28'),('WSS223','p28'),('WSS23','p28'),('WSS237','p28'),('WSS242','p28'),('WSS247','p28'),('WSS248','p28'),('WSS249','p28'),('WSS260','p28'),('WSS263','p28'),('WSS264','p28'),('WSS265','p28'),('WSS275','p28'),('WSS276','p28'),('WSS277','p28'),('WSS283','p28'),('WSS300','p28'),('WSS31','p28'),('WSS32','p28'),('WSS37','p28'),('WSS38','p28'),('WSS49','p28'),('WSS51','p28'),('WSS52','p28'),('WSS56','p28'),('WSS57','p28'),('WSS65','p28'),('WSS68','p28'),('WSS69','p28'),('WSS71','p28'),('WSS81','p28'),('WSS87','p28'),('WSS89','p28'),('WSS95','p28'),('WSS105','p29'),('WSS120','p29'),('WSS125','p29'),('WSS128','p29'),('WSS13','p29'),('WSS130','p29'),('WSS131','p29'),('WSS133','p29'),('WSS134','p29'),('WSS135','p29'),('WSS136','p29'),('WSS139','p29'),('WSS142','p29'),('WSS146','p29'),('WSS148','p29'),('WSS152','p29'),('WSS155','p29'),('WSS166','p29'),('WSS172','p29'),('WSS173','p29'),('WSS174','p29'),('WSS178','p29'),('WSS18','p29'),('WSS181','p29'),('WSS185','p29'),('WSS186','p29'),('WSS187','p29'),('WSS191','p29'),('WSS192','p29'),('WSS206','p29'),('WSS207','p29'),('WSS209','p29'),('WSS21','p29'),('WSS220','p29'),('WSS225','p29'),('WSS228','p29'),('WSS229','p29'),('WSS230','p29'),('WSS233','p29'),('WSS236','p29'),('WSS242','p29'),('WSS250','p29'),('WSS251','p29'),('WSS254','p29'),('WSS255','p29'),('WSS258','p29'),('WSS261','p29'),('WSS271','p29'),('WSS272','p29'),('WSS285','p29'),('WSS291','p29'),('WSS298','p29'),('WSS299','p29'),('WSS3','p29'),('WSS30','p29'),('WSS33','p29'),('WSS41','p29'),('WSS42','p29'),('WSS45','p29'),('WSS52','p29'),('WSS58','p29'),('WSS6','p29'),('WSS60','p29'),('WSS63','p29'),('WSS67','p29'),('WSS69','p29'),('WSS72','p29'),('WSS73','p29'),('WSS80','p29'),('WSS81','p29'),('WSS85','p29'),('WSS87','p29'),('WSS9','p29'),('WSS97','p29'),('WSS105','p3'),('WSS106','p3'),('WSS108','p3'),('WSS11','p3'),('WSS115','p3'),('WSS123','p3'),('WSS133','p3'),('WSS157','p3'),('WSS16','p3'),('WSS177','p3'),('WSS179','p3'),('WSS180','p3'),('WSS188','p3'),('WSS194','p3'),('WSS209','p3'),('WSS21','p3'),('WSS210','p3'),('WSS213','p3'),('WSS214','p3'),('WSS22','p3'),('WSS222','p3'),('WSS225','p3'),('WSS226','p3'),('WSS228','p3'),('WSS235','p3'),('WSS236','p3'),('WSS244','p3'),('WSS249','p3'),('WSS25','p3'),('WSS251','p3'),('WSS255','p3'),('WSS256','p3'),('WSS258','p3'),('WSS26','p3'),('WSS271','p3'),('WSS272','p3'),('WSS282','p3'),('WSS284','p3'),('WSS292','p3'),('WSS296','p3'),('WSS299','p3'),('WSS30','p3'),('WSS34','p3'),('WSS37','p3'),('WSS40','p3'),('WSS42','p3'),('WSS43','p3'),('WSS46','p3'),('WSS5','p3'),('WSS52','p3'),('WSS53','p3'),('WSS7','p3'),('WSS72','p3'),('WSS74','p3'),('WSS76','p3'),('WSS79','p3'),('WSS81','p3'),('WSS82','p3'),('WSS89','p3'),('WSS91','p3'),('WSS92','p3'),('WSS10','p30'),('WSS100','p30'),('WSS104','p30'),('WSS106','p30'),('WSS11','p30'),('WSS112','p30'),('WSS116','p30'),('WSS12','p30'),('WSS122','p30'),('WSS125','p30'),('WSS129','p30'),('WSS130','p30'),('WSS14','p30'),('WSS143','p30'),('WSS144','p30'),('WSS145','p30'),('WSS152','p30'),('WSS155','p30'),('WSS159','p30'),('WSS164','p30'),('WSS167','p30'),('WSS171','p30'),('WSS174','p30'),('WSS178','p30'),('WSS18','p30'),('WSS182','p30'),('WSS187','p30'),('WSS189','p30'),('WSS197','p30'),('WSS200','p30'),('WSS205','p30'),('WSS206','p30'),('WSS208','p30'),('WSS218','p30'),('WSS219','p30'),('WSS222','p30'),('WSS226','p30'),('WSS229','p30'),('WSS232','p30'),('WSS235','p30'),('WSS241','p30'),('WSS243','p30'),('WSS244','p30'),('WSS251','p30'),('WSS252','p30'),('WSS260','p30'),('WSS263','p30'),('WSS264','p30'),('WSS267','p30'),('WSS269','p30'),('WSS27','p30'),('WSS270','p30'),('WSS283','p30'),('WSS289','p30'),('WSS292','p30'),('WSS294','p30'),('WSS33','p30'),('WSS35','p30'),('WSS36','p30'),('WSS4','p30'),('WSS41','p30'),('WSS43','p30'),('WSS51','p30'),('WSS54','p30'),('WSS61','p30'),('WSS62','p30'),('WSS64','p30'),('WSS66','p30'),('WSS72','p30'),('WSS82','p30'),('WSS84','p30'),('WSS87','p30'),('WSS88','p30'),('WSS9','p30'),('WSS94','p30'),('WSS97','p30'),('WSS1','p4'),('WSS104','p4'),('WSS108','p4'),('WSS117','p4'),('WSS119','p4'),('WSS120','p4'),('WSS122','p4'),('WSS125','p4'),('WSS126','p4'),('WSS130','p4'),('WSS131','p4'),('WSS135','p4'),('WSS14','p4'),('WSS145','p4'),('WSS148','p4'),('WSS149','p4'),('WSS15','p4'),('WSS150','p4'),('WSS157','p4'),('WSS158','p4'),('WSS160','p4'),('WSS161','p4'),('WSS162','p4'),('WSS166','p4'),('WSS167','p4'),('WSS174','p4'),('WSS178','p4'),('WSS184','p4'),('WSS187','p4'),('WSS2','p4'),('WSS201','p4'),('WSS202','p4'),('WSS212','p4'),('WSS215','p4'),('WSS229','p4'),('WSS230','p4'),('WSS238','p4'),('WSS240','p4'),('WSS241','p4'),('WSS244','p4'),('WSS245','p4'),('WSS247','p4'),('WSS253','p4'),('WSS260','p4'),('WSS272','p4'),('WSS273','p4'),('WSS274','p4'),('WSS276','p4'),('WSS278','p4'),('WSS279','p4'),('WSS287','p4'),('WSS288','p4'),('WSS292','p4'),('WSS294','p4'),('WSS296','p4'),('WSS297','p4'),('WSS31','p4'),('WSS33','p4'),('WSS42','p4'),('WSS43','p4'),('WSS46','p4'),('WSS51','p4'),('WSS53','p4'),('WSS6','p4'),('WSS63','p4'),('WSS66','p4'),('WSS67','p4'),('WSS68','p4'),('WSS77','p4'),('WSS78','p4'),('WSS80','p4'),('WSS85','p4'),('WSS94','p4'),('WSS99','p4'),('WSS102','p5'),('WSS103','p5'),('WSS104','p5'),('WSS106','p5'),('WSS107','p5'),('WSS110','p5'),('WSS111','p5'),('WSS113','p5'),('WSS115','p5'),('WSS116','p5'),('WSS117','p5'),('WSS121','p5'),('WSS122','p5'),('WSS123','p5'),('WSS130','p5'),('WSS131','p5'),('WSS140','p5'),('WSS142','p5'),('WSS145','p5'),('WSS15','p5'),('WSS150','p5'),('WSS152','p5'),('WSS153','p5'),('WSS154','p5'),('WSS156','p5'),('WSS168','p5'),('WSS17','p5'),('WSS175','p5'),('WSS177','p5'),('WSS183','p5'),('WSS185','p5'),('WSS186','p5'),('WSS188','p5'),('WSS19','p5'),('WSS190','p5'),('WSS192','p5'),('WSS196','p5'),('WSS198','p5'),('WSS20','p5'),('WSS201','p5'),('WSS203','p5'),('WSS204','p5'),('WSS216','p5'),('WSS22','p5'),('WSS222','p5'),('WSS228','p5'),('WSS233','p5'),('WSS235','p5'),('WSS240','p5'),('WSS242','p5'),('WSS246','p5'),('WSS25','p5'),('WSS262','p5'),('WSS267','p5'),('WSS275','p5'),('WSS277','p5'),('WSS28','p5'),('WSS285','p5'),('WSS293','p5'),('WSS294','p5'),('WSS298','p5'),('WSS300','p5'),('WSS33','p5'),('WSS37','p5'),('WSS43','p5'),('WSS44','p5'),('WSS49','p5'),('WSS51','p5'),('WSS62','p5'),('WSS76','p5'),('WSS78','p5'),('WSS85','p5'),('WSS94','p5'),('WSS96','p5'),('WSS97','p5'),('WSS1','p6'),('WSS101','p6'),('WSS102','p6'),('WSS103','p6'),('WSS105','p6'),('WSS106','p6'),('WSS107','p6'),('WSS115','p6'),('WSS118','p6'),('WSS125','p6'),('WSS126','p6'),('WSS131','p6'),('WSS133','p6'),('WSS134','p6'),('WSS142','p6'),('WSS144','p6'),('WSS152','p6'),('WSS162','p6'),('WSS17','p6'),('WSS177','p6'),('WSS18','p6'),('WSS180','p6'),('WSS191','p6'),('WSS197','p6'),('WSS20','p6'),('WSS203','p6'),('WSS216','p6'),('WSS22','p6'),('WSS220','p6'),('WSS221','p6'),('WSS223','p6'),('WSS226','p6'),('WSS233','p6'),('WSS236','p6'),('WSS239','p6'),('WSS242','p6'),('WSS243','p6'),('WSS246','p6'),('WSS254','p6'),('WSS255','p6'),('WSS256','p6'),('WSS260','p6'),('WSS261','p6'),('WSS266','p6'),('WSS267','p6'),('WSS268','p6'),('WSS270','p6'),('WSS278','p6'),('WSS280','p6'),('WSS294','p6'),('WSS298','p6'),('WSS33','p6'),('WSS34','p6'),('WSS38','p6'),('WSS40','p6'),('WSS41','p6'),('WSS48','p6'),('WSS50','p6'),('WSS54','p6'),('WSS56','p6'),('WSS57','p6'),('WSS61','p6'),('WSS62','p6'),('WSS66','p6'),('WSS70','p6'),('WSS71','p6'),('WSS78','p6'),('WSS8','p6'),('WSS86','p6'),('WSS89','p6'),('WSS92','p6'),('WSS95','p6'),('WSS97','p6'),('WSS98','p6'),('WSS11','p7'),('WSS114','p7'),('WSS118','p7'),('WSS12','p7'),('WSS121','p7'),('WSS123','p7'),('WSS124','p7'),('WSS126','p7'),('WSS131','p7'),('WSS138','p7'),('WSS146','p7'),('WSS151','p7'),('WSS155','p7'),('WSS157','p7'),('WSS16','p7'),('WSS161','p7'),('WSS162','p7'),('WSS165','p7'),('WSS172','p7'),('WSS174','p7'),('WSS179','p7'),('WSS181','p7'),('WSS182','p7'),('WSS187','p7'),('WSS19','p7'),('WSS191','p7'),('WSS193','p7'),('WSS2','p7'),('WSS210','p7'),('WSS219','p7'),('WSS225','p7'),('WSS231','p7'),('WSS232','p7'),('WSS237','p7'),('WSS239','p7'),('WSS24','p7'),('WSS247','p7'),('WSS25','p7'),('WSS252','p7'),('WSS257','p7'),('WSS258','p7'),('WSS259','p7'),('WSS262','p7'),('WSS263','p7'),('WSS271','p7'),('WSS279','p7'),('WSS284','p7'),('WSS292','p7'),('WSS295','p7'),('WSS300','p7'),('WSS33','p7'),('WSS49','p7'),('WSS55','p7'),('WSS56','p7'),('WSS57','p7'),('WSS59','p7'),('WSS6','p7'),('WSS60','p7'),('WSS61','p7'),('WSS64','p7'),('WSS66','p7'),('WSS67','p7'),('WSS7','p7'),('WSS71','p7'),('WSS73','p7'),('WSS74','p7'),('WSS77','p7'),('WSS88','p7'),('WSS90','p7'),('WSS92','p7'),('WSS94','p7'),('WSS96','p7'),('WSS98','p7'),('WSS107','p8'),('WSS11','p8'),('WSS12','p8'),('WSS124','p8'),('WSS131','p8'),('WSS134','p8'),('WSS138','p8'),('WSS14','p8'),('WSS140','p8'),('WSS145','p8'),('WSS148','p8'),('WSS150','p8'),('WSS151','p8'),('WSS154','p8'),('WSS156','p8'),('WSS157','p8'),('WSS161','p8'),('WSS162','p8'),('WSS163','p8'),('WSS164','p8'),('WSS168','p8'),('WSS170','p8'),('WSS171','p8'),('WSS174','p8'),('WSS182','p8'),('WSS185','p8'),('WSS187','p8'),('WSS192','p8'),('WSS193','p8'),('WSS194','p8'),('WSS195','p8'),('WSS2','p8'),('WSS205','p8'),('WSS217','p8'),('WSS219','p8'),('WSS220','p8'),('WSS221','p8'),('WSS222','p8'),('WSS227','p8'),('WSS229','p8'),('WSS230','p8'),('WSS231','p8'),('WSS233','p8'),('WSS239','p8'),('WSS249','p8'),('WSS250','p8'),('WSS251','p8'),('WSS253','p8'),('WSS254','p8'),('WSS257','p8'),('WSS258','p8'),('WSS26','p8'),('WSS261','p8'),('WSS266','p8'),('WSS269','p8'),('WSS273','p8'),('WSS275','p8'),('WSS280','p8'),('WSS281','p8'),('WSS285','p8'),('WSS29','p8'),('WSS299','p8'),('WSS30','p8'),('WSS300','p8'),('WSS39','p8'),('WSS43','p8'),('WSS45','p8'),('WSS48','p8'),('WSS51','p8'),('WSS52','p8'),('WSS57','p8'),('WSS64','p8'),('WSS65','p8'),('WSS7','p8'),('WSS74','p8'),('WSS76','p8'),('WSS81','p8'),('WSS82','p8'),('WSS84','p8'),('WSS9','p8'),('WSS91','p8'),('WSS98','p8'),('WSS1','p9'),('WSS105','p9'),('WSS108','p9'),('WSS112','p9'),('WSS116','p9'),('WSS119','p9'),('WSS12','p9'),('WSS120','p9'),('WSS124','p9'),('WSS125','p9'),('WSS128','p9'),('WSS129','p9'),('WSS137','p9'),('WSS138','p9'),('WSS140','p9'),('WSS141','p9'),('WSS142','p9'),('WSS144','p9'),('WSS145','p9'),('WSS148','p9'),('WSS151','p9'),('WSS152','p9'),('WSS157','p9'),('WSS158','p9'),('WSS160','p9'),('WSS162','p9'),('WSS169','p9'),('WSS17','p9'),('WSS174','p9'),('WSS176','p9'),('WSS178','p9'),('WSS187','p9'),('WSS188','p9'),('WSS189','p9'),('WSS190','p9'),('WSS193','p9'),('WSS195','p9'),('WSS209','p9'),('WSS21','p9'),('WSS213','p9'),('WSS215','p9'),('WSS217','p9'),('WSS218','p9'),('WSS220','p9'),('WSS221','p9'),('WSS224','p9'),('WSS227','p9'),('WSS234','p9'),('WSS24','p9'),('WSS240','p9'),('WSS245','p9'),('WSS27','p9'),('WSS275','p9'),('WSS276','p9'),('WSS278','p9'),('WSS295','p9'),('WSS30','p9'),('WSS34','p9'),('WSS37','p9'),('WSS40','p9'),('WSS42','p9'),('WSS52','p9'),('WSS67','p9'),('WSS74','p9'),('WSS83','p9'),('WSS86','p9'),('WSS88','p9'),('WSS92','p9'),('WSS95','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS35'),(1,1,'WSS36'),(2,1,'WSS23'),(2,2,'WSS268'),(2,3,'WSS89'),(3,1,'WSS284'),(3,2,'WSS19'),(4,1,'WSS107'),(4,2,'WSS5'),(5,1,'WSS288'),(5,2,'WSS18'),(5,3,'WSS101'),(6,1,'WSS14'),(6,2,'WSS41'),(6,3,'WSS261'),(7,1,'WSS264'),(7,1,'WSS268'),(7,2,'WSS7'),(8,1,'WSS275'),(8,2,'WSS40'),(8,3,'WSS295'),(9,1,'WSS29'),(9,2,'WSS101'),(9,3,'WSS292'),(10,1,'WSS222'),(10,2,'WSS290'),(10,3,'WSS295'),(11,1,'WSS46'),(11,2,'WSS15'),(11,3,'WSS103'),(12,1,'WSS11'),(12,2,'WSS27'),(12,3,'WSS20'),(13,1,'WSS14'),(13,2,'WSS13'),(13,3,'WSS275'),(14,1,'WSS101'),(14,2,'WSS38'),(14,3,'WSS25'),(15,1,'WSS103'),(15,2,'WSS287'),(15,3,'WSS286'),(16,1,'WSS14'),(16,2,'WSS284'),(16,3,'WSS106'),(17,1,'WSS95'),(17,2,'WSS285'),(18,1,'WSS169'),(18,2,'WSS165'),(18,3,'WSS262'),(19,1,'WSS27'),(19,1,'WSS46'),(19,2,'WSS31'),(20,1,'WSS17'),(20,1,'WSS49'),(21,1,'WSS89'),(21,2,'WSS130'),(22,1,'WSS296'),(22,2,'WSS101'),(22,2,'WSS14'),(23,1,'WSS298'),(23,2,'WSS268'),(23,3,'WSS261'),(24,1,'WSS215'),(24,1,'WSS228'),(25,1,'WSS21'),(25,1,'WSS56'),(26,1,'WSS14'),(26,2,'WSS29'),(26,3,'WSS264'),(27,1,'WSS172'),(27,2,'WSS39'),(28,1,'WSS14'),(28,1,'WSS21'),(28,2,'WSS31'),(29,1,'WSS90'),(29,2,'WSS48'),(30,1,'WSS14'),(30,1,'WSS8'),(30,2,'WSS47'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-07-06 19:58:41
