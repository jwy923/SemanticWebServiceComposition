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
INSERT INTO `initialgoalparameter` VALUES (2,'I','p1'),(4,'I','p1'),(5,'G','p1'),(6,'I','p1'),(9,'G','p1'),(10,'I','p1'),(11,'G','p1'),(13,'G','p1'),(15,'I','p1'),(20,'I','p1'),(22,'G','p1'),(27,'I','p1'),(29,'G','p1'),(3,'I','p10'),(7,'G','p10'),(10,'I','p10'),(12,'G','p10'),(13,'I','p10'),(14,'I','p10'),(16,'G','p10'),(18,'I','p10'),(19,'I','p10'),(20,'I','p10'),(23,'I','p10'),(26,'I','p10'),(27,'G','p10'),(28,'I','p10'),(30,'I','p10'),(3,'G','p11'),(4,'I','p11'),(5,'I','p11'),(6,'G','p11'),(8,'I','p11'),(9,'I','p11'),(10,'G','p11'),(11,'I','p11'),(12,'I','p11'),(14,'I','p11'),(17,'I','p11'),(18,'I','p11'),(21,'I','p11'),(22,'G','p11'),(25,'G','p11'),(29,'I','p11'),(1,'G','p12'),(2,'I','p12'),(3,'I','p12'),(5,'I','p12'),(6,'I','p12'),(10,'G','p12'),(11,'G','p12'),(13,'I','p12'),(14,'G','p12'),(17,'I','p12'),(18,'G','p12'),(24,'I','p12'),(26,'I','p12'),(29,'I','p12'),(30,'I','p12'),(1,'G','p13'),(2,'G','p13'),(5,'I','p13'),(7,'I','p13'),(9,'I','p13'),(13,'I','p13'),(15,'I','p13'),(18,'I','p13'),(22,'I','p13'),(25,'I','p13'),(30,'I','p13'),(4,'I','p14'),(6,'G','p14'),(8,'G','p14'),(9,'G','p14'),(12,'I','p14'),(13,'I','p14'),(15,'I','p14'),(21,'G','p14'),(24,'G','p14'),(26,'G','p14'),(27,'G','p14'),(28,'I','p14'),(29,'I','p14'),(30,'G','p14'),(1,'I','p15'),(4,'G','p15'),(5,'G','p15'),(7,'I','p15'),(10,'I','p15'),(12,'G','p15'),(15,'I','p15'),(18,'I','p15'),(20,'G','p15'),(23,'G','p15'),(24,'I','p15'),(26,'G','p15'),(27,'I','p15'),(28,'I','p15'),(29,'G','p15'),(30,'I','p15'),(2,'I','p16'),(3,'G','p16'),(4,'G','p16'),(6,'G','p16'),(7,'I','p16'),(9,'G','p16'),(11,'I','p16'),(13,'I','p16'),(14,'I','p16'),(15,'G','p16'),(16,'I','p16'),(17,'G','p16'),(18,'I','p16'),(19,'G','p16'),(23,'I','p16'),(24,'I','p16'),(27,'G','p16'),(30,'G','p16'),(1,'G','p17'),(2,'G','p17'),(3,'G','p17'),(4,'G','p17'),(6,'I','p17'),(7,'G','p17'),(9,'I','p17'),(10,'G','p17'),(12,'G','p17'),(13,'G','p17'),(14,'G','p17'),(16,'I','p17'),(18,'G','p17'),(19,'I','p17'),(20,'G','p17'),(21,'G','p17'),(22,'I','p17'),(28,'I','p17'),(29,'G','p17'),(30,'I','p17'),(7,'I','p18'),(11,'G','p18'),(13,'G','p18'),(16,'G','p18'),(18,'G','p18'),(20,'G','p18'),(21,'I','p18'),(22,'I','p18'),(24,'I','p18'),(25,'I','p18'),(26,'I','p18'),(27,'I','p18'),(28,'I','p18'),(5,'I','p19'),(7,'G','p19'),(10,'G','p19'),(11,'I','p19'),(13,'G','p19'),(14,'I','p19'),(15,'G','p19'),(17,'I','p19'),(19,'G','p19'),(20,'I','p19'),(21,'G','p19'),(27,'I','p19'),(1,'G','p2'),(2,'G','p2'),(3,'I','p2'),(4,'G','p2'),(5,'I','p2'),(13,'I','p2'),(14,'I','p2'),(15,'G','p2'),(17,'I','p2'),(19,'I','p2'),(20,'I','p2'),(22,'G','p2'),(23,'I','p2'),(25,'I','p2'),(26,'I','p2'),(27,'G','p2'),(28,'G','p2'),(29,'G','p2'),(1,'G','p20'),(3,'I','p20'),(5,'I','p20'),(8,'I','p20'),(15,'G','p20'),(19,'I','p20'),(23,'G','p20'),(24,'I','p20'),(25,'I','p20'),(26,'G','p20'),(28,'G','p20'),(29,'I','p20'),(1,'I','p21'),(9,'I','p21'),(15,'I','p21'),(16,'I','p21'),(19,'G','p21'),(21,'I','p21'),(22,'I','p21'),(24,'I','p21'),(25,'G','p21'),(26,'I','p21'),(28,'G','p21'),(29,'I','p21'),(30,'I','p21'),(4,'I','p22'),(6,'G','p22'),(8,'G','p22'),(9,'I','p22'),(16,'G','p22'),(19,'I','p22'),(22,'G','p22'),(24,'G','p22'),(1,'I','p23'),(3,'I','p23'),(4,'G','p23'),(6,'I','p23'),(7,'G','p23'),(10,'I','p23'),(11,'I','p23'),(15,'I','p23'),(17,'G','p23'),(18,'G','p23'),(19,'I','p23'),(21,'I','p23'),(22,'I','p23'),(26,'G','p23'),(29,'I','p23'),(30,'G','p23'),(1,'I','p24'),(2,'I','p24'),(5,'G','p24'),(8,'G','p24'),(9,'I','p24'),(10,'I','p24'),(11,'I','p24'),(12,'G','p24'),(13,'G','p24'),(14,'G','p24'),(15,'G','p24'),(16,'I','p24'),(17,'I','p24'),(19,'I','p24'),(21,'I','p24'),(22,'I','p24'),(23,'I','p24'),(26,'I','p24'),(1,'I','p25'),(2,'I','p25'),(7,'I','p25'),(8,'G','p25'),(12,'I','p25'),(13,'I','p25'),(14,'G','p25'),(18,'I','p25'),(20,'G','p25'),(22,'G','p25'),(25,'G','p25'),(30,'I','p25'),(3,'I','p26'),(6,'G','p26'),(8,'G','p26'),(10,'I','p26'),(11,'I','p26'),(16,'G','p26'),(18,'I','p26'),(23,'I','p26'),(26,'I','p26'),(28,'G','p26'),(1,'I','p27'),(4,'I','p27'),(5,'G','p27'),(6,'I','p27'),(7,'G','p27'),(8,'I','p27'),(9,'I','p27'),(10,'G','p27'),(11,'I','p27'),(13,'G','p27'),(14,'G','p27'),(15,'I','p27'),(17,'G','p27'),(20,'I','p27'),(23,'I','p27'),(24,'G','p27'),(25,'G','p27'),(26,'G','p27'),(27,'I','p27'),(29,'G','p27'),(30,'G','p27'),(2,'I','p28'),(7,'I','p28'),(8,'I','p28'),(9,'G','p28'),(11,'G','p28'),(12,'G','p28'),(15,'I','p28'),(20,'I','p28'),(22,'I','p28'),(25,'G','p28'),(28,'I','p28'),(1,'I','p29'),(2,'I','p29'),(3,'G','p29'),(5,'G','p29'),(6,'I','p29'),(7,'I','p29'),(11,'I','p29'),(12,'I','p29'),(17,'G','p29'),(20,'I','p29'),(23,'G','p29'),(24,'I','p29'),(25,'I','p29'),(26,'I','p29'),(28,'I','p29'),(29,'I','p29'),(1,'G','p3'),(5,'I','p3'),(8,'I','p3'),(12,'I','p3'),(16,'I','p3'),(19,'I','p3'),(21,'G','p3'),(22,'G','p3'),(23,'G','p3'),(24,'I','p3'),(27,'I','p3'),(28,'G','p3'),(30,'I','p3'),(1,'I','p30'),(2,'G','p30'),(3,'G','p30'),(7,'G','p30'),(8,'I','p30'),(9,'G','p30'),(11,'G','p30'),(12,'I','p30'),(14,'I','p30'),(16,'I','p30'),(17,'G','p30'),(18,'G','p30'),(19,'G','p30'),(20,'G','p30'),(21,'G','p30'),(23,'G','p30'),(25,'I','p30'),(27,'I','p30'),(28,'I','p30'),(30,'G','p30'),(2,'G','p4'),(6,'G','p4'),(7,'I','p4'),(14,'I','p4'),(16,'I','p4'),(17,'G','p4'),(20,'I','p4'),(21,'G','p4'),(24,'G','p4'),(25,'I','p4'),(3,'I','p5'),(4,'G','p5'),(16,'G','p5'),(18,'G','p5'),(21,'I','p5'),(27,'I','p5'),(3,'I','p6'),(4,'I','p6'),(5,'I','p6'),(6,'I','p6'),(8,'I','p6'),(10,'I','p6'),(12,'G','p6'),(13,'I','p6'),(14,'I','p6'),(16,'I','p6'),(17,'I','p6'),(20,'G','p6'),(23,'I','p6'),(24,'G','p6'),(25,'I','p6'),(27,'G','p6'),(29,'G','p6'),(30,'G','p6'),(4,'I','p7'),(5,'G','p7'),(8,'I','p7'),(14,'G','p7'),(19,'G','p7'),(21,'I','p7'),(23,'I','p7'),(24,'G','p7'),(26,'G','p7'),(27,'G','p7'),(28,'G','p7'),(2,'G','p8'),(3,'G','p8'),(4,'I','p8'),(8,'G','p8'),(9,'G','p8'),(10,'G','p8'),(12,'I','p8'),(16,'G','p8'),(17,'I','p8'),(18,'I','p8'),(21,'I','p8'),(23,'G','p8'),(25,'G','p8'),(2,'I','p9'),(6,'I','p9'),(9,'I','p9'),(10,'I','p9'),(11,'G','p9'),(12,'I','p9'),(15,'G','p9'),(17,'I','p9'),(19,'G','p9'),(22,'I','p9'),(29,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS107','p1'),('WSS111','p1'),('WSS112','p1'),('WSS144','p1'),('WSS151','p1'),('WSS157','p1'),('WSS174','p1'),('WSS180','p1'),('WSS187','p1'),('WSS190','p1'),('WSS192','p1'),('WSS193','p1'),('WSS194','p1'),('WSS197','p1'),('WSS206','p1'),('WSS208','p1'),('WSS211','p1'),('WSS222','p1'),('WSS259','p1'),('WSS269','p1'),('WSS30','p1'),('WSS36','p1'),('WSS47','p1'),('WSS67','p1'),('WSS76','p1'),('WSS89','p1'),('WSS90','p1'),('WSS99','p1'),('WSS102','p10'),('WSS127','p10'),('WSS133','p10'),('WSS14','p10'),('WSS152','p10'),('WSS159','p10'),('WSS160','p10'),('WSS161','p10'),('WSS163','p10'),('WSS210','p10'),('WSS218','p10'),('WSS22','p10'),('WSS226','p10'),('WSS227','p10'),('WSS229','p10'),('WSS235','p10'),('WSS241','p10'),('WSS245','p10'),('WSS42','p10'),('WSS44','p10'),('WSS78','p10'),('WSS79','p10'),('WSS84','p10'),('WSS85','p10'),('WSS104','p11'),('WSS113','p11'),('WSS126','p11'),('WSS141','p11'),('WSS156','p11'),('WSS188','p11'),('WSS201','p11'),('WSS204','p11'),('WSS205','p11'),('WSS23','p11'),('WSS239','p11'),('WSS24','p11'),('WSS246','p11'),('WSS292','p11'),('WSS32','p11'),('WSS34','p11'),('WSS56','p11'),('WSS71','p11'),('WSS75','p11'),('WSS8','p11'),('WSS83','p11'),('WSS95','p11'),('WSS10','p12'),('WSS100','p12'),('WSS126','p12'),('WSS13','p12'),('WSS134','p12'),('WSS179','p12'),('WSS181','p12'),('WSS191','p12'),('WSS195','p12'),('WSS2','p12'),('WSS208','p12'),('WSS224','p12'),('WSS25','p12'),('WSS260','p12'),('WSS268','p12'),('WSS271','p12'),('WSS293','p12'),('WSS52','p12'),('WSS55','p12'),('WSS65','p12'),('WSS66','p12'),('WSS8','p12'),('WSS80','p12'),('WSS82','p12'),('WSS97','p12'),('WSS114','p13'),('WSS136','p13'),('WSS180','p13'),('WSS189','p13'),('WSS192','p13'),('WSS216','p13'),('WSS217','p13'),('WSS253','p13'),('WSS256','p13'),('WSS258','p13'),('WSS270','p13'),('WSS271','p13'),('WSS290','p13'),('WSS291','p13'),('WSS293','p13'),('WSS40','p13'),('WSS41','p13'),('WSS56','p13'),('WSS6','p13'),('WSS84','p13'),('WSS86','p13'),('WSS91','p13'),('WSS12','p14'),('WSS158','p14'),('WSS165','p14'),('WSS185','p14'),('WSS198','p14'),('WSS200','p14'),('WSS205','p14'),('WSS232','p14'),('WSS240','p14'),('WSS276','p14'),('WSS295','p14'),('WSS39','p14'),('WSS46','p14'),('WSS75','p14'),('WSS1','p15'),('WSS168','p15'),('WSS171','p15'),('WSS184','p15'),('WSS186','p15'),('WSS248','p15'),('WSS266','p15'),('WSS276','p15'),('WSS289','p15'),('WSS296','p15'),('WSS31','p15'),('WSS64','p15'),('WSS68','p15'),('WSS112','p16'),('WSS127','p16'),('WSS164','p16'),('WSS17','p16'),('WSS173','p16'),('WSS177','p16'),('WSS241','p16'),('WSS32','p16'),('WSS37','p16'),('WSS48','p16'),('WSS54','p16'),('WSS62','p16'),('WSS7','p16'),('WSS74','p16'),('WSS95','p16'),('WSS107','p17'),('WSS108','p17'),('WSS116','p17'),('WSS12','p17'),('WSS120','p17'),('WSS124','p17'),('WSS134','p17'),('WSS139','p17'),('WSS236','p17'),('WSS252','p17'),('WSS260','p17'),('WSS262','p17'),('WSS267','p17'),('WSS279','p17'),('WSS291','p17'),('WSS45','p17'),('WSS53','p17'),('WSS111','p18'),('WSS122','p18'),('WSS131','p18'),('WSS185','p18'),('WSS202','p18'),('WSS203','p18'),('WSS214','p18'),('WSS22','p18'),('WSS228','p18'),('WSS237','p18'),('WSS245','p18'),('WSS273','p18'),('WSS281','p18'),('WSS285','p18'),('WSS296','p18'),('WSS43','p18'),('WSS62','p18'),('WSS70','p18'),('WSS82','p18'),('WSS92','p18'),('WSS109','p19'),('WSS132','p19'),('WSS135','p19'),('WSS164','p19'),('WSS169','p19'),('WSS233','p19'),('WSS257','p19'),('WSS261','p19'),('WSS38','p19'),('WSS60','p19'),('WSS63','p19'),('WSS73','p19'),('WSS106','p2'),('WSS118','p2'),('WSS124','p2'),('WSS140','p2'),('WSS142','p2'),('WSS157','p2'),('WSS166','p2'),('WSS167','p2'),('WSS207','p2'),('WSS209','p2'),('WSS251','p2'),('WSS254','p2'),('WSS277','p2'),('WSS290','p2'),('WSS30','p2'),('WSS34','p2'),('WSS39','p2'),('WSS5','p2'),('WSS61','p2'),('WSS86','p2'),('WSS94','p2'),('WSS96','p2'),('WSS102','p20'),('WSS103','p20'),('WSS132','p20'),('WSS146','p20'),('WSS154','p20'),('WSS16','p20'),('WSS169','p20'),('WSS18','p20'),('WSS207','p20'),('WSS220','p20'),('WSS221','p20'),('WSS230','p20'),('WSS234','p20'),('WSS238','p20'),('WSS253','p20'),('WSS269','p20'),('WSS288','p20'),('WSS42','p20'),('WSS59','p20'),('WSS81','p20'),('WSS89','p20'),('WSS93','p20'),('WSS114','p21'),('WSS131','p21'),('WSS137','p21'),('WSS156','p21'),('WSS20','p21'),('WSS249','p21'),('WSS288','p21'),('WSS29','p21'),('WSS292','p21'),('WSS298','p21'),('WSS44','p21'),('WSS45','p21'),('WSS51','p21'),('WSS9','p21'),('WSS94','p21'),('WSS101','p22'),('WSS128','p22'),('WSS14','p22'),('WSS155','p22'),('WSS162','p22'),('WSS176','p22'),('WSS184','p22'),('WSS19','p22'),('WSS223','p22'),('WSS258','p22'),('WSS263','p22'),('WSS264','p22'),('WSS27','p22'),('WSS46','p22'),('WSS83','p22'),('WSS88','p22'),('WSS9','p22'),('WSS105','p23'),('WSS137','p23'),('WSS165','p23'),('WSS179','p23'),('WSS196','p23'),('WSS211','p23'),('WSS213','p23'),('WSS254','p23'),('WSS262','p23'),('WSS264','p23'),('WSS274','p23'),('WSS29','p23'),('WSS7','p23'),('WSS1','p24'),('WSS110','p24'),('WSS113','p24'),('WSS145','p24'),('WSS150','p24'),('WSS153','p24'),('WSS154','p24'),('WSS161','p24'),('WSS163','p24'),('WSS194','p24'),('WSS2','p24'),('WSS210','p24'),('WSS235','p24'),('WSS244','p24'),('WSS247','p24'),('WSS25','p24'),('WSS26','p24'),('WSS278','p24'),('WSS287','p24'),('WSS294','p24'),('WSS43','p24'),('WSS72','p24'),('WSS76','p24'),('WSS91','p24'),('WSS93','p24'),('WSS11','p25'),('WSS122','p25'),('WSS123','p25'),('WSS147','p25'),('WSS148','p25'),('WSS152','p25'),('WSS170','p25'),('WSS172','p25'),('WSS177','p25'),('WSS182','p25'),('WSS209','p25'),('WSS21','p25'),('WSS212','p25'),('WSS217','p25'),('WSS225','p25'),('WSS23','p25'),('WSS24','p25'),('WSS266','p25'),('WSS267','p25'),('WSS28','p25'),('WSS280','p25'),('WSS299','p25'),('WSS300','p25'),('WSS33','p25'),('WSS35','p25'),('WSS36','p25'),('WSS57','p25'),('WSS59','p25'),('WSS6','p25'),('WSS121','p26'),('WSS125','p26'),('WSS130','p26'),('WSS138','p26'),('WSS143','p26'),('WSS147','p26'),('WSS17','p26'),('WSS174','p26'),('WSS182','p26'),('WSS183','p26'),('WSS193','p26'),('WSS21','p26'),('WSS216','p26'),('WSS219','p26'),('WSS226','p26'),('WSS231','p26'),('WSS242','p26'),('WSS248','p26'),('WSS268','p26'),('WSS285','p26'),('WSS287','p26'),('WSS41','p26'),('WSS50','p26'),('WSS68','p26'),('WSS69','p26'),('WSS72','p26'),('WSS79','p26'),('WSS80','p26'),('WSS81','p26'),('WSS10','p27'),('WSS100','p27'),('WSS116','p27'),('WSS117','p27'),('WSS119','p27'),('WSS129','p27'),('WSS146','p27'),('WSS148','p27'),('WSS15','p27'),('WSS159','p27'),('WSS16','p27'),('WSS204','p27'),('WSS214','p27'),('WSS249','p27'),('WSS289','p27'),('WSS37','p27'),('WSS4','p27'),('WSS54','p27'),('WSS77','p27'),('WSS96','p27'),('WSS104','p28'),('WSS136','p28'),('WSS151','p28'),('WSS168','p28'),('WSS170','p28'),('WSS175','p28'),('WSS178','p28'),('WSS187','p28'),('WSS203','p28'),('WSS219','p28'),('WSS250','p28'),('WSS270','p28'),('WSS272','p28'),('WSS286','p28'),('WSS297','p28'),('WSS55','p28'),('WSS58','p28'),('WSS66','p28'),('WSS73','p28'),('WSS98','p28'),('WSS99','p28'),('WSS105','p29'),('WSS110','p29'),('WSS13','p29'),('WSS140','p29'),('WSS143','p29'),('WSS160','p29'),('WSS171','p29'),('WSS181','p29'),('WSS191','p29'),('WSS224','p29'),('WSS234','p29'),('WSS255','p29'),('WSS261','p29'),('WSS263','p29'),('WSS265','p29'),('WSS298','p29'),('WSS53','p29'),('WSS63','p29'),('WSS88','p29'),('WSS123','p3'),('WSS155','p3'),('WSS188','p3'),('WSS197','p3'),('WSS20','p3'),('WSS220','p3'),('WSS221','p3'),('WSS223','p3'),('WSS233','p3'),('WSS238','p3'),('WSS243','p3'),('WSS251','p3'),('WSS252','p3'),('WSS278','p3'),('WSS279','p3'),('WSS294','p3'),('WSS31','p3'),('WSS40','p3'),('WSS47','p3'),('WSS65','p3'),('WSS67','p3'),('WSS87','p3'),('WSS92','p3'),('WSS153','p30'),('WSS215','p30'),('WSS227','p30'),('WSS244','p30'),('WSS247','p30'),('WSS284','p30'),('WSS3','p30'),('WSS52','p30'),('WSS64','p30'),('WSS77','p30'),('WSS78','p30'),('WSS103','p4'),('WSS106','p4'),('WSS108','p4'),('WSS120','p4'),('WSS129','p4'),('WSS149','p4'),('WSS162','p4'),('WSS199','p4'),('WSS201','p4'),('WSS229','p4'),('WSS236','p4'),('WSS237','p4'),('WSS246','p4'),('WSS273','p4'),('WSS275','p4'),('WSS281','p4'),('WSS282','p4'),('WSS33','p4'),('WSS35','p4'),('WSS48','p4'),('WSS49','p4'),('WSS57','p4'),('WSS60','p4'),('WSS70','p4'),('WSS74','p4'),('WSS85','p4'),('WSS90','p4'),('WSS115','p5'),('WSS119','p5'),('WSS158','p5'),('WSS175','p5'),('WSS183','p5'),('WSS186','p5'),('WSS19','p5'),('WSS200','p5'),('WSS218','p5'),('WSS225','p5'),('WSS228','p5'),('WSS231','p5'),('WSS250','p5'),('WSS275','p5'),('WSS280','p5'),('WSS4','p5'),('WSS49','p5'),('WSS50','p5'),('WSS11','p6'),('WSS115','p6'),('WSS138','p6'),('WSS141','p6'),('WSS142','p6'),('WSS144','p6'),('WSS150','p6'),('WSS189','p6'),('WSS190','p6'),('WSS212','p6'),('WSS243','p6'),('WSS255','p6'),('WSS257','p6'),('WSS283','p6'),('WSS286','p6'),('WSS3','p6'),('WSS38','p6'),('WSS5','p6'),('WSS98','p6'),('WSS118','p7'),('WSS128','p7'),('WSS130','p7'),('WSS145','p7'),('WSS166','p7'),('WSS167','p7'),('WSS18','p7'),('WSS198','p7'),('WSS202','p7'),('WSS230','p7'),('WSS240','p7'),('WSS259','p7'),('WSS265','p7'),('WSS283','p7'),('WSS297','p7'),('WSS300','p7'),('WSS51','p7'),('WSS69','p7'),('WSS87','p7'),('WSS97','p7'),('WSS109','p8'),('WSS117','p8'),('WSS121','p8'),('WSS133','p8'),('WSS139','p8'),('WSS149','p8'),('WSS15','p8'),('WSS172','p8'),('WSS173','p8'),('WSS176','p8'),('WSS195','p8'),('WSS213','p8'),('WSS239','p8'),('WSS27','p8'),('WSS272','p8'),('WSS274','p8'),('WSS277','p8'),('WSS284','p8'),('WSS58','p8'),('WSS61','p8'),('WSS71','p8'),('WSS135','p9'),('WSS178','p9'),('WSS196','p9'),('WSS199','p9'),('WSS206','p9'),('WSS215','p9'),('WSS222','p9'),('WSS242','p9'),('WSS256','p9'),('WSS26','p9'),('WSS28','p9'),('WSS295','p9'),('WSS299','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS100','p1'),('WSS101','p1'),('WSS102','p1'),('WSS111','p1'),('WSS116','p1'),('WSS118','p1'),('WSS120','p1'),('WSS122','p1'),('WSS133','p1'),('WSS134','p1'),('WSS137','p1'),('WSS139','p1'),('WSS14','p1'),('WSS140','p1'),('WSS142','p1'),('WSS143','p1'),('WSS147','p1'),('WSS150','p1'),('WSS164','p1'),('WSS167','p1'),('WSS176','p1'),('WSS179','p1'),('WSS18','p1'),('WSS181','p1'),('WSS184','p1'),('WSS189','p1'),('WSS19','p1'),('WSS195','p1'),('WSS198','p1'),('WSS2','p1'),('WSS203','p1'),('WSS209','p1'),('WSS222','p1'),('WSS223','p1'),('WSS225','p1'),('WSS227','p1'),('WSS231','p1'),('WSS235','p1'),('WSS25','p1'),('WSS251','p1'),('WSS261','p1'),('WSS27','p1'),('WSS270','p1'),('WSS273','p1'),('WSS274','p1'),('WSS278','p1'),('WSS286','p1'),('WSS289','p1'),('WSS294','p1'),('WSS298','p1'),('WSS3','p1'),('WSS34','p1'),('WSS37','p1'),('WSS38','p1'),('WSS40','p1'),('WSS57','p1'),('WSS65','p1'),('WSS68','p1'),('WSS71','p1'),('WSS75','p1'),('WSS80','p1'),('WSS84','p1'),('WSS86','p1'),('WSS88','p1'),('WSS89','p1'),('WSS95','p1'),('WSS100','p10'),('WSS102','p10'),('WSS104','p10'),('WSS107','p10'),('WSS110','p10'),('WSS116','p10'),('WSS121','p10'),('WSS134','p10'),('WSS136','p10'),('WSS143','p10'),('WSS144','p10'),('WSS145','p10'),('WSS147','p10'),('WSS152','p10'),('WSS158','p10'),('WSS159','p10'),('WSS161','p10'),('WSS164','p10'),('WSS165','p10'),('WSS167','p10'),('WSS169','p10'),('WSS177','p10'),('WSS180','p10'),('WSS186','p10'),('WSS189','p10'),('WSS194','p10'),('WSS22','p10'),('WSS220','p10'),('WSS221','p10'),('WSS226','p10'),('WSS245','p10'),('WSS248','p10'),('WSS251','p10'),('WSS255','p10'),('WSS257','p10'),('WSS258','p10'),('WSS260','p10'),('WSS262','p10'),('WSS269','p10'),('WSS276','p10'),('WSS285','p10'),('WSS34','p10'),('WSS36','p10'),('WSS38','p10'),('WSS40','p10'),('WSS42','p10'),('WSS45','p10'),('WSS47','p10'),('WSS54','p10'),('WSS55','p10'),('WSS57','p10'),('WSS58','p10'),('WSS64','p10'),('WSS65','p10'),('WSS67','p10'),('WSS68','p10'),('WSS69','p10'),('WSS73','p10'),('WSS74','p10'),('WSS76','p10'),('WSS79','p10'),('WSS82','p10'),('WSS86','p10'),('WSS87','p10'),('WSS90','p10'),('WSS91','p10'),('WSS106','p11'),('WSS108','p11'),('WSS115','p11'),('WSS116','p11'),('WSS123','p11'),('WSS125','p11'),('WSS126','p11'),('WSS128','p11'),('WSS131','p11'),('WSS145','p11'),('WSS149','p11'),('WSS16','p11'),('WSS164','p11'),('WSS168','p11'),('WSS17','p11'),('WSS181','p11'),('WSS20','p11'),('WSS202','p11'),('WSS204','p11'),('WSS209','p11'),('WSS211','p11'),('WSS218','p11'),('WSS219','p11'),('WSS221','p11'),('WSS222','p11'),('WSS231','p11'),('WSS236','p11'),('WSS243','p11'),('WSS245','p11'),('WSS25','p11'),('WSS253','p11'),('WSS27','p11'),('WSS270','p11'),('WSS278','p11'),('WSS28','p11'),('WSS285','p11'),('WSS29','p11'),('WSS294','p11'),('WSS298','p11'),('WSS30','p11'),('WSS31','p11'),('WSS37','p11'),('WSS40','p11'),('WSS46','p11'),('WSS5','p11'),('WSS50','p11'),('WSS51','p11'),('WSS54','p11'),('WSS57','p11'),('WSS63','p11'),('WSS64','p11'),('WSS68','p11'),('WSS70','p11'),('WSS71','p11'),('WSS75','p11'),('WSS76','p11'),('WSS78','p11'),('WSS88','p11'),('WSS89','p11'),('WSS9','p11'),('WSS91','p11'),('WSS94','p11'),('WSS97','p11'),('WSS1','p12'),('WSS100','p12'),('WSS104','p12'),('WSS106','p12'),('WSS108','p12'),('WSS11','p12'),('WSS122','p12'),('WSS123','p12'),('WSS124','p12'),('WSS130','p12'),('WSS137','p12'),('WSS142','p12'),('WSS143','p12'),('WSS153','p12'),('WSS154','p12'),('WSS161','p12'),('WSS167','p12'),('WSS169','p12'),('WSS178','p12'),('WSS179','p12'),('WSS18','p12'),('WSS189','p12'),('WSS190','p12'),('WSS193','p12'),('WSS2','p12'),('WSS205','p12'),('WSS206','p12'),('WSS207','p12'),('WSS217','p12'),('WSS22','p12'),('WSS225','p12'),('WSS226','p12'),('WSS24','p12'),('WSS242','p12'),('WSS243','p12'),('WSS250','p12'),('WSS26','p12'),('WSS263','p12'),('WSS264','p12'),('WSS273','p12'),('WSS278','p12'),('WSS285','p12'),('WSS289','p12'),('WSS295','p12'),('WSS30','p12'),('WSS300','p12'),('WSS33','p12'),('WSS34','p12'),('WSS36','p12'),('WSS38','p12'),('WSS4','p12'),('WSS41','p12'),('WSS43','p12'),('WSS44','p12'),('WSS50','p12'),('WSS53','p12'),('WSS61','p12'),('WSS63','p12'),('WSS65','p12'),('WSS7','p12'),('WSS70','p12'),('WSS71','p12'),('WSS74','p12'),('WSS77','p12'),('WSS80','p12'),('WSS83','p12'),('WSS85','p12'),('WSS93','p12'),('WSS94','p12'),('WSS96','p12'),('WSS97','p12'),('WSS98','p12'),('WSS99','p12'),('WSS113','p13'),('WSS117','p13'),('WSS125','p13'),('WSS13','p13'),('WSS133','p13'),('WSS134','p13'),('WSS137','p13'),('WSS140','p13'),('WSS147','p13'),('WSS15','p13'),('WSS151','p13'),('WSS160','p13'),('WSS162','p13'),('WSS164','p13'),('WSS17','p13'),('WSS173','p13'),('WSS174','p13'),('WSS175','p13'),('WSS176','p13'),('WSS183','p13'),('WSS185','p13'),('WSS186','p13'),('WSS191','p13'),('WSS194','p13'),('WSS195','p13'),('WSS196','p13'),('WSS197','p13'),('WSS208','p13'),('WSS212','p13'),('WSS214','p13'),('WSS217','p13'),('WSS219','p13'),('WSS222','p13'),('WSS225','p13'),('WSS229','p13'),('WSS232','p13'),('WSS238','p13'),('WSS24','p13'),('WSS244','p13'),('WSS246','p13'),('WSS247','p13'),('WSS253','p13'),('WSS254','p13'),('WSS257','p13'),('WSS259','p13'),('WSS262','p13'),('WSS263','p13'),('WSS266','p13'),('WSS273','p13'),('WSS279','p13'),('WSS283','p13'),('WSS290','p13'),('WSS291','p13'),('WSS297','p13'),('WSS298','p13'),('WSS3','p13'),('WSS30','p13'),('WSS37','p13'),('WSS42','p13'),('WSS45','p13'),('WSS59','p13'),('WSS61','p13'),('WSS64','p13'),('WSS68','p13'),('WSS75','p13'),('WSS79','p13'),('WSS80','p13'),('WSS93','p13'),('WSS94','p13'),('WSS96','p13'),('WSS98','p13'),('WSS1','p14'),('WSS100','p14'),('WSS101','p14'),('WSS102','p14'),('WSS107','p14'),('WSS109','p14'),('WSS114','p14'),('WSS119','p14'),('WSS127','p14'),('WSS13','p14'),('WSS134','p14'),('WSS138','p14'),('WSS14','p14'),('WSS150','p14'),('WSS152','p14'),('WSS156','p14'),('WSS16','p14'),('WSS162','p14'),('WSS164','p14'),('WSS171','p14'),('WSS176','p14'),('WSS179','p14'),('WSS181','p14'),('WSS182','p14'),('WSS184','p14'),('WSS190','p14'),('WSS192','p14'),('WSS193','p14'),('WSS194','p14'),('WSS195','p14'),('WSS200','p14'),('WSS203','p14'),('WSS207','p14'),('WSS212','p14'),('WSS216','p14'),('WSS221','p14'),('WSS233','p14'),('WSS24','p14'),('WSS250','p14'),('WSS253','p14'),('WSS26','p14'),('WSS263','p14'),('WSS264','p14'),('WSS275','p14'),('WSS279','p14'),('WSS281','p14'),('WSS285','p14'),('WSS291','p14'),('WSS33','p14'),('WSS34','p14'),('WSS39','p14'),('WSS41','p14'),('WSS43','p14'),('WSS45','p14'),('WSS48','p14'),('WSS51','p14'),('WSS59','p14'),('WSS64','p14'),('WSS69','p14'),('WSS70','p14'),('WSS75','p14'),('WSS87','p14'),('WSS88','p14'),('WSS92','p14'),('WSS95','p14'),('WSS97','p14'),('WSS1','p15'),('WSS103','p15'),('WSS107','p15'),('WSS108','p15'),('WSS11','p15'),('WSS112','p15'),('WSS113','p15'),('WSS116','p15'),('WSS117','p15'),('WSS122','p15'),('WSS128','p15'),('WSS129','p15'),('WSS130','p15'),('WSS136','p15'),('WSS138','p15'),('WSS140','p15'),('WSS145','p15'),('WSS149','p15'),('WSS151','p15'),('WSS153','p15'),('WSS160','p15'),('WSS161','p15'),('WSS162','p15'),('WSS175','p15'),('WSS176','p15'),('WSS18','p15'),('WSS188','p15'),('WSS189','p15'),('WSS191','p15'),('WSS200','p15'),('WSS201','p15'),('WSS202','p15'),('WSS204','p15'),('WSS206','p15'),('WSS212','p15'),('WSS213','p15'),('WSS215','p15'),('WSS219','p15'),('WSS223','p15'),('WSS224','p15'),('WSS226','p15'),('WSS229','p15'),('WSS235','p15'),('WSS241','p15'),('WSS249','p15'),('WSS252','p15'),('WSS253','p15'),('WSS257','p15'),('WSS260','p15'),('WSS264','p15'),('WSS268','p15'),('WSS273','p15'),('WSS274','p15'),('WSS275','p15'),('WSS282','p15'),('WSS286','p15'),('WSS289','p15'),('WSS29','p15'),('WSS293','p15'),('WSS294','p15'),('WSS296','p15'),('WSS299','p15'),('WSS3','p15'),('WSS31','p15'),('WSS39','p15'),('WSS4','p15'),('WSS46','p15'),('WSS49','p15'),('WSS56','p15'),('WSS58','p15'),('WSS61','p15'),('WSS65','p15'),('WSS67','p15'),('WSS73','p15'),('WSS77','p15'),('WSS84','p15'),('WSS87','p15'),('WSS9','p15'),('WSS91','p15'),('WSS92','p15'),('WSS98','p15'),('WSS101','p16'),('WSS105','p16'),('WSS108','p16'),('WSS111','p16'),('WSS117','p16'),('WSS127','p16'),('WSS137','p16'),('WSS14','p16'),('WSS140','p16'),('WSS152','p16'),('WSS153','p16'),('WSS154','p16'),('WSS158','p16'),('WSS160','p16'),('WSS163','p16'),('WSS165','p16'),('WSS168','p16'),('WSS17','p16'),('WSS172','p16'),('WSS174','p16'),('WSS18','p16'),('WSS181','p16'),('WSS182','p16'),('WSS187','p16'),('WSS188','p16'),('WSS19','p16'),('WSS195','p16'),('WSS197','p16'),('WSS198','p16'),('WSS204','p16'),('WSS208','p16'),('WSS211','p16'),('WSS226','p16'),('WSS228','p16'),('WSS230','p16'),('WSS232','p16'),('WSS234','p16'),('WSS237','p16'),('WSS238','p16'),('WSS241','p16'),('WSS243','p16'),('WSS256','p16'),('WSS257','p16'),('WSS258','p16'),('WSS265','p16'),('WSS267','p16'),('WSS269','p16'),('WSS272','p16'),('WSS273','p16'),('WSS275','p16'),('WSS276','p16'),('WSS279','p16'),('WSS282','p16'),('WSS289','p16'),('WSS29','p16'),('WSS293','p16'),('WSS294','p16'),('WSS30','p16'),('WSS300','p16'),('WSS33','p16'),('WSS4','p16'),('WSS43','p16'),('WSS48','p16'),('WSS5','p16'),('WSS52','p16'),('WSS53','p16'),('WSS56','p16'),('WSS60','p16'),('WSS66','p16'),('WSS67','p16'),('WSS69','p16'),('WSS70','p16'),('WSS74','p16'),('WSS76','p16'),('WSS8','p16'),('WSS81','p16'),('WSS83','p16'),('WSS93','p16'),('WSS105','p17'),('WSS107','p17'),('WSS109','p17'),('WSS110','p17'),('WSS116','p17'),('WSS119','p17'),('WSS121','p17'),('WSS122','p17'),('WSS127','p17'),('WSS13','p17'),('WSS132','p17'),('WSS135','p17'),('WSS138','p17'),('WSS149','p17'),('WSS163','p17'),('WSS166','p17'),('WSS167','p17'),('WSS170','p17'),('WSS171','p17'),('WSS172','p17'),('WSS175','p17'),('WSS180','p17'),('WSS183','p17'),('WSS188','p17'),('WSS199','p17'),('WSS200','p17'),('WSS201','p17'),('WSS209','p17'),('WSS229','p17'),('WSS234','p17'),('WSS237','p17'),('WSS241','p17'),('WSS242','p17'),('WSS267','p17'),('WSS269','p17'),('WSS271','p17'),('WSS272','p17'),('WSS274','p17'),('WSS282','p17'),('WSS284','p17'),('WSS287','p17'),('WSS291','p17'),('WSS297','p17'),('WSS35','p17'),('WSS37','p17'),('WSS41','p17'),('WSS47','p17'),('WSS5','p17'),('WSS56','p17'),('WSS61','p17'),('WSS62','p17'),('WSS64','p17'),('WSS66','p17'),('WSS67','p17'),('WSS69','p17'),('WSS7','p17'),('WSS74','p17'),('WSS78','p17'),('WSS8','p17'),('WSS85','p17'),('WSS88','p17'),('WSS92','p17'),('WSS101','p18'),('WSS105','p18'),('WSS110','p18'),('WSS111','p18'),('WSS113','p18'),('WSS118','p18'),('WSS121','p18'),('WSS123','p18'),('WSS125','p18'),('WSS130','p18'),('WSS131','p18'),('WSS132','p18'),('WSS138','p18'),('WSS143','p18'),('WSS144','p18'),('WSS147','p18'),('WSS149','p18'),('WSS15','p18'),('WSS150','p18'),('WSS155','p18'),('WSS159','p18'),('WSS16','p18'),('WSS167','p18'),('WSS171','p18'),('WSS172','p18'),('WSS177','p18'),('WSS180','p18'),('WSS184','p18'),('WSS186','p18'),('WSS187','p18'),('WSS20','p18'),('WSS213','p18'),('WSS223','p18'),('WSS225','p18'),('WSS227','p18'),('WSS228','p18'),('WSS229','p18'),('WSS23','p18'),('WSS233','p18'),('WSS24','p18'),('WSS249','p18'),('WSS256','p18'),('WSS259','p18'),('WSS262','p18'),('WSS264','p18'),('WSS27','p18'),('WSS276','p18'),('WSS277','p18'),('WSS28','p18'),('WSS280','p18'),('WSS286','p18'),('WSS297','p18'),('WSS298','p18'),('WSS299','p18'),('WSS4','p18'),('WSS40','p18'),('WSS42','p18'),('WSS51','p18'),('WSS6','p18'),('WSS63','p18'),('WSS67','p18'),('WSS75','p18'),('WSS76','p18'),('WSS78','p18'),('WSS82','p18'),('WSS86','p18'),('WSS87','p18'),('WSS92','p18'),('WSS93','p18'),('WSS97','p18'),('WSS1','p19'),('WSS116','p19'),('WSS126','p19'),('WSS128','p19'),('WSS129','p19'),('WSS132','p19'),('WSS134','p19'),('WSS142','p19'),('WSS143','p19'),('WSS146','p19'),('WSS148','p19'),('WSS151','p19'),('WSS156','p19'),('WSS157','p19'),('WSS159','p19'),('WSS164','p19'),('WSS166','p19'),('WSS171','p19'),('WSS174','p19'),('WSS176','p19'),('WSS178','p19'),('WSS181','p19'),('WSS187','p19'),('WSS202','p19'),('WSS205','p19'),('WSS21','p19'),('WSS213','p19'),('WSS215','p19'),('WSS216','p19'),('WSS22','p19'),('WSS222','p19'),('WSS223','p19'),('WSS224','p19'),('WSS225','p19'),('WSS228','p19'),('WSS232','p19'),('WSS239','p19'),('WSS241','p19'),('WSS242','p19'),('WSS246','p19'),('WSS249','p19'),('WSS253','p19'),('WSS254','p19'),('WSS257','p19'),('WSS259','p19'),('WSS260','p19'),('WSS267','p19'),('WSS270','p19'),('WSS274','p19'),('WSS277','p19'),('WSS284','p19'),('WSS293','p19'),('WSS295','p19'),('WSS296','p19'),('WSS3','p19'),('WSS300','p19'),('WSS38','p19'),('WSS47','p19'),('WSS50','p19'),('WSS53','p19'),('WSS60','p19'),('WSS63','p19'),('WSS66','p19'),('WSS7','p19'),('WSS72','p19'),('WSS79','p19'),('WSS81','p19'),('WSS84','p19'),('WSS89','p19'),('WSS94','p19'),('WSS95','p19'),('WSS100','p2'),('WSS102','p2'),('WSS104','p2'),('WSS112','p2'),('WSS114','p2'),('WSS117','p2'),('WSS118','p2'),('WSS127','p2'),('WSS130','p2'),('WSS131','p2'),('WSS133','p2'),('WSS136','p2'),('WSS138','p2'),('WSS142','p2'),('WSS143','p2'),('WSS144','p2'),('WSS148','p2'),('WSS150','p2'),('WSS156','p2'),('WSS157','p2'),('WSS160','p2'),('WSS173','p2'),('WSS177','p2'),('WSS178','p2'),('WSS179','p2'),('WSS182','p2'),('WSS198','p2'),('WSS199','p2'),('WSS2','p2'),('WSS200','p2'),('WSS209','p2'),('WSS211','p2'),('WSS212','p2'),('WSS215','p2'),('WSS217','p2'),('WSS223','p2'),('WSS226','p2'),('WSS23','p2'),('WSS232','p2'),('WSS235','p2'),('WSS236','p2'),('WSS240','p2'),('WSS244','p2'),('WSS245','p2'),('WSS247','p2'),('WSS248','p2'),('WSS249','p2'),('WSS259','p2'),('WSS263','p2'),('WSS272','p2'),('WSS28','p2'),('WSS288','p2'),('WSS290','p2'),('WSS299','p2'),('WSS3','p2'),('WSS30','p2'),('WSS300','p2'),('WSS32','p2'),('WSS35','p2'),('WSS36','p2'),('WSS37','p2'),('WSS38','p2'),('WSS42','p2'),('WSS45','p2'),('WSS46','p2'),('WSS48','p2'),('WSS49','p2'),('WSS51','p2'),('WSS52','p2'),('WSS54','p2'),('WSS55','p2'),('WSS58','p2'),('WSS61','p2'),('WSS69','p2'),('WSS84','p2'),('WSS9','p2'),('WSS95','p2'),('WSS11','p20'),('WSS112','p20'),('WSS113','p20'),('WSS115','p20'),('WSS119','p20'),('WSS122','p20'),('WSS124','p20'),('WSS134','p20'),('WSS135','p20'),('WSS148','p20'),('WSS153','p20'),('WSS157','p20'),('WSS158','p20'),('WSS160','p20'),('WSS165','p20'),('WSS170','p20'),('WSS183','p20'),('WSS187','p20'),('WSS188','p20'),('WSS191','p20'),('WSS200','p20'),('WSS205','p20'),('WSS21','p20'),('WSS211','p20'),('WSS214','p20'),('WSS215','p20'),('WSS22','p20'),('WSS220','p20'),('WSS224','p20'),('WSS238','p20'),('WSS242','p20'),('WSS243','p20'),('WSS246','p20'),('WSS247','p20'),('WSS248','p20'),('WSS25','p20'),('WSS252','p20'),('WSS255','p20'),('WSS258','p20'),('WSS263','p20'),('WSS269','p20'),('WSS270','p20'),('WSS273','p20'),('WSS285','p20'),('WSS288','p20'),('WSS292','p20'),('WSS296','p20'),('WSS297','p20'),('WSS299','p20'),('WSS300','p20'),('WSS35','p20'),('WSS37','p20'),('WSS39','p20'),('WSS44','p20'),('WSS54','p20'),('WSS55','p20'),('WSS57','p20'),('WSS59','p20'),('WSS62','p20'),('WSS72','p20'),('WSS73','p20'),('WSS8','p20'),('WSS83','p20'),('WSS90','p20'),('WSS96','p20'),('WSS97','p20'),('WSS105','p21'),('WSS129','p21'),('WSS130','p21'),('WSS134','p21'),('WSS146','p21'),('WSS147','p21'),('WSS154','p21'),('WSS157','p21'),('WSS159','p21'),('WSS160','p21'),('WSS166','p21'),('WSS17','p21'),('WSS171','p21'),('WSS176','p21'),('WSS182','p21'),('WSS188','p21'),('WSS19','p21'),('WSS190','p21'),('WSS192','p21'),('WSS2','p21'),('WSS200','p21'),('WSS201','p21'),('WSS202','p21'),('WSS203','p21'),('WSS207','p21'),('WSS210','p21'),('WSS214','p21'),('WSS216','p21'),('WSS226','p21'),('WSS227','p21'),('WSS234','p21'),('WSS241','p21'),('WSS248','p21'),('WSS25','p21'),('WSS261','p21'),('WSS262','p21'),('WSS265','p21'),('WSS270','p21'),('WSS274','p21'),('WSS276','p21'),('WSS279','p21'),('WSS282','p21'),('WSS286','p21'),('WSS288','p21'),('WSS292','p21'),('WSS31','p21'),('WSS32','p21'),('WSS33','p21'),('WSS34','p21'),('WSS38','p21'),('WSS40','p21'),('WSS42','p21'),('WSS49','p21'),('WSS50','p21'),('WSS56','p21'),('WSS6','p21'),('WSS65','p21'),('WSS69','p21'),('WSS77','p21'),('WSS81','p21'),('WSS83','p21'),('WSS86','p21'),('WSS88','p21'),('WSS91','p21'),('WSS97','p21'),('WSS1','p22'),('WSS103','p22'),('WSS109','p22'),('WSS112','p22'),('WSS119','p22'),('WSS12','p22'),('WSS120','p22'),('WSS127','p22'),('WSS128','p22'),('WSS136','p22'),('WSS149','p22'),('WSS15','p22'),('WSS156','p22'),('WSS16','p22'),('WSS165','p22'),('WSS167','p22'),('WSS168','p22'),('WSS170','p22'),('WSS172','p22'),('WSS190','p22'),('WSS191','p22'),('WSS196','p22'),('WSS20','p22'),('WSS205','p22'),('WSS210','p22'),('WSS214','p22'),('WSS217','p22'),('WSS222','p22'),('WSS225','p22'),('WSS229','p22'),('WSS232','p22'),('WSS235','p22'),('WSS236','p22'),('WSS237','p22'),('WSS239','p22'),('WSS242','p22'),('WSS245','p22'),('WSS246','p22'),('WSS250','p22'),('WSS251','p22'),('WSS260','p22'),('WSS264','p22'),('WSS266','p22'),('WSS268','p22'),('WSS27','p22'),('WSS271','p22'),('WSS277','p22'),('WSS278','p22'),('WSS28','p22'),('WSS280','p22'),('WSS281','p22'),('WSS283','p22'),('WSS287','p22'),('WSS43','p22'),('WSS44','p22'),('WSS45','p22'),('WSS47','p22'),('WSS51','p22'),('WSS53','p22'),('WSS54','p22'),('WSS61','p22'),('WSS72','p22'),('WSS73','p22'),('WSS76','p22'),('WSS77','p22'),('WSS80','p22'),('WSS90','p22'),('WSS95','p22'),('WSS97','p22'),('WSS99','p22'),('WSS100','p23'),('WSS102','p23'),('WSS109','p23'),('WSS110','p23'),('WSS111','p23'),('WSS115','p23'),('WSS117','p23'),('WSS12','p23'),('WSS120','p23'),('WSS122','p23'),('WSS129','p23'),('WSS136','p23'),('WSS139','p23'),('WSS141','p23'),('WSS144','p23'),('WSS148','p23'),('WSS150','p23'),('WSS152','p23'),('WSS155','p23'),('WSS161','p23'),('WSS164','p23'),('WSS167','p23'),('WSS17','p23'),('WSS170','p23'),('WSS171','p23'),('WSS173','p23'),('WSS179','p23'),('WSS185','p23'),('WSS186','p23'),('WSS187','p23'),('WSS190','p23'),('WSS192','p23'),('WSS194','p23'),('WSS195','p23'),('WSS196','p23'),('WSS20','p23'),('WSS203','p23'),('WSS206','p23'),('WSS207','p23'),('WSS21','p23'),('WSS213','p23'),('WSS215','p23'),('WSS22','p23'),('WSS226','p23'),('WSS227','p23'),('WSS231','p23'),('WSS237','p23'),('WSS239','p23'),('WSS242','p23'),('WSS244','p23'),('WSS245','p23'),('WSS247','p23'),('WSS26','p23'),('WSS266','p23'),('WSS268','p23'),('WSS272','p23'),('WSS275','p23'),('WSS28','p23'),('WSS280','p23'),('WSS288','p23'),('WSS29','p23'),('WSS295','p23'),('WSS36','p23'),('WSS37','p23'),('WSS41','p23'),('WSS43','p23'),('WSS47','p23'),('WSS53','p23'),('WSS55','p23'),('WSS6','p23'),('WSS60','p23'),('WSS62','p23'),('WSS66','p23'),('WSS7','p23'),('WSS70','p23'),('WSS75','p23'),('WSS8','p23'),('WSS81','p23'),('WSS82','p23'),('WSS87','p23'),('WSS97','p23'),('WSS10','p24'),('WSS101','p24'),('WSS102','p24'),('WSS105','p24'),('WSS108','p24'),('WSS110','p24'),('WSS112','p24'),('WSS113','p24'),('WSS117','p24'),('WSS12','p24'),('WSS120','p24'),('WSS124','p24'),('WSS126','p24'),('WSS129','p24'),('WSS135','p24'),('WSS148','p24'),('WSS154','p24'),('WSS156','p24'),('WSS16','p24'),('WSS169','p24'),('WSS175','p24'),('WSS177','p24'),('WSS179','p24'),('WSS180','p24'),('WSS184','p24'),('WSS188','p24'),('WSS191','p24'),('WSS193','p24'),('WSS194','p24'),('WSS196','p24'),('WSS198','p24'),('WSS201','p24'),('WSS202','p24'),('WSS205','p24'),('WSS207','p24'),('WSS210','p24'),('WSS216','p24'),('WSS226','p24'),('WSS228','p24'),('WSS229','p24'),('WSS23','p24'),('WSS231','p24'),('WSS232','p24'),('WSS236','p24'),('WSS240','p24'),('WSS248','p24'),('WSS250','p24'),('WSS254','p24'),('WSS259','p24'),('WSS26','p24'),('WSS261','p24'),('WSS264','p24'),('WSS267','p24'),('WSS268','p24'),('WSS271','p24'),('WSS277','p24'),('WSS280','p24'),('WSS281','p24'),('WSS283','p24'),('WSS289','p24'),('WSS296','p24'),('WSS299','p24'),('WSS31','p24'),('WSS4','p24'),('WSS41','p24'),('WSS58','p24'),('WSS59','p24'),('WSS67','p24'),('WSS68','p24'),('WSS7','p24'),('WSS70','p24'),('WSS74','p24'),('WSS78','p24'),('WSS80','p24'),('WSS81','p24'),('WSS83','p24'),('WSS85','p24'),('WSS94','p24'),('WSS95','p24'),('WSS99','p24'),('WSS10','p25'),('WSS100','p25'),('WSS109','p25'),('WSS11','p25'),('WSS110','p25'),('WSS111','p25'),('WSS118','p25'),('WSS122','p25'),('WSS124','p25'),('WSS127','p25'),('WSS130','p25'),('WSS132','p25'),('WSS135','p25'),('WSS136','p25'),('WSS139','p25'),('WSS145','p25'),('WSS150','p25'),('WSS152','p25'),('WSS155','p25'),('WSS158','p25'),('WSS16','p25'),('WSS169','p25'),('WSS173','p25'),('WSS176','p25'),('WSS177','p25'),('WSS178','p25'),('WSS18','p25'),('WSS182','p25'),('WSS183','p25'),('WSS187','p25'),('WSS189','p25'),('WSS190','p25'),('WSS192','p25'),('WSS195','p25'),('WSS197','p25'),('WSS199','p25'),('WSS2','p25'),('WSS203','p25'),('WSS206','p25'),('WSS207','p25'),('WSS208','p25'),('WSS209','p25'),('WSS214','p25'),('WSS216','p25'),('WSS217','p25'),('WSS218','p25'),('WSS220','p25'),('WSS231','p25'),('WSS233','p25'),('WSS239','p25'),('WSS241','p25'),('WSS255','p25'),('WSS256','p25'),('WSS258','p25'),('WSS261','p25'),('WSS262','p25'),('WSS265','p25'),('WSS268','p25'),('WSS271','p25'),('WSS274','p25'),('WSS275','p25'),('WSS278','p25'),('WSS282','p25'),('WSS283','p25'),('WSS286','p25'),('WSS287','p25'),('WSS288','p25'),('WSS29','p25'),('WSS290','p25'),('WSS292','p25'),('WSS299','p25'),('WSS36','p25'),('WSS44','p25'),('WSS46','p25'),('WSS48','p25'),('WSS52','p25'),('WSS57','p25'),('WSS62','p25'),('WSS7','p25'),('WSS71','p25'),('WSS72','p25'),('WSS77','p25'),('WSS79','p25'),('WSS80','p25'),('WSS9','p25'),('WSS10','p26'),('WSS104','p26'),('WSS108','p26'),('WSS11','p26'),('WSS113','p26'),('WSS119','p26'),('WSS124','p26'),('WSS130','p26'),('WSS140','p26'),('WSS144','p26'),('WSS145','p26'),('WSS154','p26'),('WSS160','p26'),('WSS163','p26'),('WSS165','p26'),('WSS166','p26'),('WSS167','p26'),('WSS168','p26'),('WSS173','p26'),('WSS174','p26'),('WSS175','p26'),('WSS179','p26'),('WSS182','p26'),('WSS183','p26'),('WSS193','p26'),('WSS196','p26'),('WSS203','p26'),('WSS21','p26'),('WSS223','p26'),('WSS23','p26'),('WSS234','p26'),('WSS236','p26'),('WSS237','p26'),('WSS238','p26'),('WSS240','p26'),('WSS243','p26'),('WSS245','p26'),('WSS247','p26'),('WSS259','p26'),('WSS26','p26'),('WSS266','p26'),('WSS271','p26'),('WSS273','p26'),('WSS275','p26'),('WSS280','p26'),('WSS284','p26'),('WSS288','p26'),('WSS289','p26'),('WSS29','p26'),('WSS290','p26'),('WSS295','p26'),('WSS3','p26'),('WSS32','p26'),('WSS39','p26'),('WSS4','p26'),('WSS46','p26'),('WSS53','p26'),('WSS62','p26'),('WSS68','p26'),('WSS85','p26'),('WSS86','p26'),('WSS88','p26'),('WSS89','p26'),('WSS9','p26'),('WSS91','p26'),('WSS93','p26'),('WSS94','p26'),('WSS99','p26'),('WSS10','p27'),('WSS100','p27'),('WSS103','p27'),('WSS106','p27'),('WSS109','p27'),('WSS114','p27'),('WSS120','p27'),('WSS121','p27'),('WSS126','p27'),('WSS129','p27'),('WSS139','p27'),('WSS144','p27'),('WSS148','p27'),('WSS15','p27'),('WSS155','p27'),('WSS157','p27'),('WSS158','p27'),('WSS161','p27'),('WSS162','p27'),('WSS170','p27'),('WSS174','p27'),('WSS175','p27'),('WSS180','p27'),('WSS185','p27'),('WSS186','p27'),('WSS187','p27'),('WSS19','p27'),('WSS191','p27'),('WSS195','p27'),('WSS196','p27'),('WSS197','p27'),('WSS198','p27'),('WSS204','p27'),('WSS208','p27'),('WSS21','p27'),('WSS210','p27'),('WSS211','p27'),('WSS212','p27'),('WSS217','p27'),('WSS218','p27'),('WSS219','p27'),('WSS221','p27'),('WSS222','p27'),('WSS228','p27'),('WSS229','p27'),('WSS23','p27'),('WSS236','p27'),('WSS238','p27'),('WSS239','p27'),('WSS246','p27'),('WSS248','p27'),('WSS25','p27'),('WSS251','p27'),('WSS259','p27'),('WSS263','p27'),('WSS265','p27'),('WSS267','p27'),('WSS291','p27'),('WSS294','p27'),('WSS299','p27'),('WSS30','p27'),('WSS35','p27'),('WSS38','p27'),('WSS47','p27'),('WSS49','p27'),('WSS5','p27'),('WSS54','p27'),('WSS6','p27'),('WSS62','p27'),('WSS63','p27'),('WSS65','p27'),('WSS76','p27'),('WSS78','p27'),('WSS79','p27'),('WSS86','p27'),('WSS98','p27'),('WSS99','p27'),('WSS103','p28'),('WSS105','p28'),('WSS106','p28'),('WSS108','p28'),('WSS111','p28'),('WSS114','p28'),('WSS12','p28'),('WSS126','p28'),('WSS134','p28'),('WSS137','p28'),('WSS139','p28'),('WSS149','p28'),('WSS153','p28'),('WSS164','p28'),('WSS166','p28'),('WSS168','p28'),('WSS173','p28'),('WSS175','p28'),('WSS181','p28'),('WSS183','p28'),('WSS184','p28'),('WSS188','p28'),('WSS19','p28'),('WSS190','p28'),('WSS199','p28'),('WSS206','p28'),('WSS21','p28'),('WSS211','p28'),('WSS227','p28'),('WSS23','p28'),('WSS230','p28'),('WSS234','p28'),('WSS235','p28'),('WSS248','p28'),('WSS252','p28'),('WSS253','p28'),('WSS256','p28'),('WSS260','p28'),('WSS266','p28'),('WSS28','p28'),('WSS280','p28'),('WSS288','p28'),('WSS290','p28'),('WSS291','p28'),('WSS293','p28'),('WSS294','p28'),('WSS295','p28'),('WSS296','p28'),('WSS298','p28'),('WSS32','p28'),('WSS40','p28'),('WSS46','p28'),('WSS52','p28'),('WSS55','p28'),('WSS58','p28'),('WSS6','p28'),('WSS65','p28'),('WSS7','p28'),('WSS70','p28'),('WSS72','p28'),('WSS73','p28'),('WSS76','p28'),('WSS77','p28'),('WSS78','p28'),('WSS79','p28'),('WSS8','p28'),('WSS80','p28'),('WSS81','p28'),('WSS85','p28'),('WSS86','p28'),('WSS92','p28'),('WSS10','p29'),('WSS101','p29'),('WSS106','p29'),('WSS121','p29'),('WSS127','p29'),('WSS13','p29'),('WSS132','p29'),('WSS143','p29'),('WSS146','p29'),('WSS15','p29'),('WSS155','p29'),('WSS163','p29'),('WSS166','p29'),('WSS169','p29'),('WSS17','p29'),('WSS172','p29'),('WSS173','p29'),('WSS18','p29'),('WSS193','p29'),('WSS20','p29'),('WSS208','p29'),('WSS209','p29'),('WSS215','p29'),('WSS220','p29'),('WSS230','p29'),('WSS237','p29'),('WSS24','p29'),('WSS243','p29'),('WSS246','p29'),('WSS252','p29'),('WSS254','p29'),('WSS258','p29'),('WSS260','p29'),('WSS261','p29'),('WSS262','p29'),('WSS264','p29'),('WSS268','p29'),('WSS269','p29'),('WSS276','p29'),('WSS278','p29'),('WSS286','p29'),('WSS287','p29'),('WSS292','p29'),('WSS293','p29'),('WSS298','p29'),('WSS30','p29'),('WSS33','p29'),('WSS44','p29'),('WSS50','p29'),('WSS51','p29'),('WSS56','p29'),('WSS6','p29'),('WSS63','p29'),('WSS66','p29'),('WSS73','p29'),('WSS82','p29'),('WSS89','p29'),('WSS99','p29'),('WSS104','p3'),('WSS105','p3'),('WSS114','p3'),('WSS117','p3'),('WSS124','p3'),('WSS125','p3'),('WSS13','p3'),('WSS132','p3'),('WSS14','p3'),('WSS141','p3'),('WSS149','p3'),('WSS152','p3'),('WSS166','p3'),('WSS169','p3'),('WSS172','p3'),('WSS177','p3'),('WSS18','p3'),('WSS195','p3'),('WSS198','p3'),('WSS199','p3'),('WSS204','p3'),('WSS206','p3'),('WSS209','p3'),('WSS213','p3'),('WSS214','p3'),('WSS215','p3'),('WSS217','p3'),('WSS218','p3'),('WSS230','p3'),('WSS233','p3'),('WSS237','p3'),('WSS238','p3'),('WSS248','p3'),('WSS252','p3'),('WSS254','p3'),('WSS256','p3'),('WSS258','p3'),('WSS263','p3'),('WSS267','p3'),('WSS268','p3'),('WSS271','p3'),('WSS272','p3'),('WSS275','p3'),('WSS277','p3'),('WSS281','p3'),('WSS283','p3'),('WSS287','p3'),('WSS296','p3'),('WSS297','p3'),('WSS298','p3'),('WSS300','p3'),('WSS32','p3'),('WSS36','p3'),('WSS39','p3'),('WSS4','p3'),('WSS49','p3'),('WSS5','p3'),('WSS55','p3'),('WSS56','p3'),('WSS57','p3'),('WSS59','p3'),('WSS72','p3'),('WSS75','p3'),('WSS8','p3'),('WSS84','p3'),('WSS88','p3'),('WSS89','p3'),('WSS9','p3'),('WSS91','p3'),('WSS93','p3'),('WSS98','p3'),('WSS107','p30'),('WSS108','p30'),('WSS11','p30'),('WSS118','p30'),('WSS120','p30'),('WSS123','p30'),('WSS125','p30'),('WSS127','p30'),('WSS128','p30'),('WSS136','p30'),('WSS138','p30'),('WSS14','p30'),('WSS15','p30'),('WSS150','p30'),('WSS161','p30'),('WSS174','p30'),('WSS177','p30'),('WSS178','p30'),('WSS184','p30'),('WSS192','p30'),('WSS194','p30'),('WSS2','p30'),('WSS200','p30'),('WSS203','p30'),('WSS204','p30'),('WSS206','p30'),('WSS21','p30'),('WSS210','p30'),('WSS211','p30'),('WSS213','p30'),('WSS218','p30'),('WSS219','p30'),('WSS220','p30'),('WSS221','p30'),('WSS224','p30'),('WSS228','p30'),('WSS230','p30'),('WSS234','p30'),('WSS24','p30'),('WSS240','p30'),('WSS242','p30'),('WSS245','p30'),('WSS250','p30'),('WSS265','p30'),('WSS277','p30'),('WSS279','p30'),('WSS280','p30'),('WSS283','p30'),('WSS286','p30'),('WSS287','p30'),('WSS290','p30'),('WSS292','p30'),('WSS35','p30'),('WSS36','p30'),('WSS38','p30'),('WSS39','p30'),('WSS42','p30'),('WSS44','p30'),('WSS5','p30'),('WSS55','p30'),('WSS57','p30'),('WSS60','p30'),('WSS64','p30'),('WSS68','p30'),('WSS70','p30'),('WSS71','p30'),('WSS78','p30'),('WSS82','p30'),('WSS84','p30'),('WSS85','p30'),('WSS90','p30'),('WSS92','p30'),('WSS10','p4'),('WSS101','p4'),('WSS105','p4'),('WSS107','p4'),('WSS109','p4'),('WSS115','p4'),('WSS117','p4'),('WSS119','p4'),('WSS120','p4'),('WSS122','p4'),('WSS123','p4'),('WSS13','p4'),('WSS130','p4'),('WSS131','p4'),('WSS133','p4'),('WSS135','p4'),('WSS141','p4'),('WSS144','p4'),('WSS146','p4'),('WSS151','p4'),('WSS158','p4'),('WSS159','p4'),('WSS172','p4'),('WSS174','p4'),('WSS180','p4'),('WSS183','p4'),('WSS190','p4'),('WSS193','p4'),('WSS197','p4'),('WSS207','p4'),('WSS209','p4'),('WSS21','p4'),('WSS213','p4'),('WSS216','p4'),('WSS218','p4'),('WSS220','p4'),('WSS222','p4'),('WSS224','p4'),('WSS225','p4'),('WSS227','p4'),('WSS230','p4'),('WSS231','p4'),('WSS233','p4'),('WSS236','p4'),('WSS240','p4'),('WSS249','p4'),('WSS250','p4'),('WSS256','p4'),('WSS257','p4'),('WSS264','p4'),('WSS265','p4'),('WSS266','p4'),('WSS270','p4'),('WSS277','p4'),('WSS28','p4'),('WSS284','p4'),('WSS29','p4'),('WSS293','p4'),('WSS294','p4'),('WSS296','p4'),('WSS297','p4'),('WSS31','p4'),('WSS32','p4'),('WSS34','p4'),('WSS43','p4'),('WSS46','p4'),('WSS50','p4'),('WSS51','p4'),('WSS52','p4'),('WSS53','p4'),('WSS55','p4'),('WSS56','p4'),('WSS57','p4'),('WSS63','p4'),('WSS73','p4'),('WSS78','p4'),('WSS85','p4'),('WSS96','p4'),('WSS99','p4'),('WSS102','p5'),('WSS103','p5'),('WSS107','p5'),('WSS11','p5'),('WSS110','p5'),('WSS112','p5'),('WSS114','p5'),('WSS115','p5'),('WSS116','p5'),('WSS123','p5'),('WSS133','p5'),('WSS135','p5'),('WSS14','p5'),('WSS142','p5'),('WSS143','p5'),('WSS147','p5'),('WSS15','p5'),('WSS151','p5'),('WSS152','p5'),('WSS153','p5'),('WSS155','p5'),('WSS175','p5'),('WSS178','p5'),('WSS18','p5'),('WSS180','p5'),('WSS182','p5'),('WSS184','p5'),('WSS186','p5'),('WSS191','p5'),('WSS197','p5'),('WSS201','p5'),('WSS202','p5'),('WSS207','p5'),('WSS208','p5'),('WSS212','p5'),('WSS214','p5'),('WSS216','p5'),('WSS22','p5'),('WSS220','p5'),('WSS223','p5'),('WSS228','p5'),('WSS230','p5'),('WSS233','p5'),('WSS234','p5'),('WSS235','p5'),('WSS239','p5'),('WSS249','p5'),('WSS256','p5'),('WSS261','p5'),('WSS271','p5'),('WSS276','p5'),('WSS278','p5'),('WSS281','p5'),('WSS286','p5'),('WSS295','p5'),('WSS297','p5'),('WSS299','p5'),('WSS3','p5'),('WSS300','p5'),('WSS32','p5'),('WSS33','p5'),('WSS45','p5'),('WSS48','p5'),('WSS51','p5'),('WSS66','p5'),('WSS69','p5'),('WSS77','p5'),('WSS79','p5'),('WSS80','p5'),('WSS81','p5'),('WSS82','p5'),('WSS83','p5'),('WSS84','p5'),('WSS85','p5'),('WSS88','p5'),('WSS9','p5'),('WSS90','p5'),('WSS91','p5'),('WSS94','p5'),('WSS10','p6'),('WSS103','p6'),('WSS111','p6'),('WSS112','p6'),('WSS116','p6'),('WSS12','p6'),('WSS124','p6'),('WSS125','p6'),('WSS133','p6'),('WSS135','p6'),('WSS139','p6'),('WSS140','p6'),('WSS142','p6'),('WSS146','p6'),('WSS151','p6'),('WSS153','p6'),('WSS156','p6'),('WSS159','p6'),('WSS162','p6'),('WSS163','p6'),('WSS171','p6'),('WSS184','p6'),('WSS185','p6'),('WSS187','p6'),('WSS189','p6'),('WSS191','p6'),('WSS192','p6'),('WSS193','p6'),('WSS194','p6'),('WSS201','p6'),('WSS205','p6'),('WSS210','p6'),('WSS225','p6'),('WSS23','p6'),('WSS235','p6'),('WSS239','p6'),('WSS243','p6'),('WSS247','p6'),('WSS25','p6'),('WSS254','p6'),('WSS255','p6'),('WSS26','p6'),('WSS269','p6'),('WSS27','p6'),('WSS278','p6'),('WSS279','p6'),('WSS281','p6'),('WSS292','p6'),('WSS31','p6'),('WSS34','p6'),('WSS39','p6'),('WSS41','p6'),('WSS45','p6'),('WSS49','p6'),('WSS5','p6'),('WSS50','p6'),('WSS60','p6'),('WSS61','p6'),('WSS63','p6'),('WSS66','p6'),('WSS67','p6'),('WSS8','p6'),('WSS87','p6'),('WSS89','p6'),('WSS9','p6'),('WSS90','p6'),('WSS93','p6'),('WSS95','p6'),('WSS96','p6'),('WSS98','p6'),('WSS1','p7'),('WSS104','p7'),('WSS111','p7'),('WSS114','p7'),('WSS118','p7'),('WSS12','p7'),('WSS125','p7'),('WSS131','p7'),('WSS138','p7'),('WSS141','p7'),('WSS146','p7'),('WSS148','p7'),('WSS151','p7'),('WSS156','p7'),('WSS162','p7'),('WSS163','p7'),('WSS170','p7'),('WSS177','p7'),('WSS178','p7'),('WSS181','p7'),('WSS19','p7'),('WSS192','p7'),('WSS198','p7'),('WSS199','p7'),('WSS20','p7'),('WSS204','p7'),('WSS205','p7'),('WSS206','p7'),('WSS219','p7'),('WSS222','p7'),('WSS232','p7'),('WSS235','p7'),('WSS24','p7'),('WSS244','p7'),('WSS246','p7'),('WSS247','p7'),('WSS254','p7'),('WSS255','p7'),('WSS265','p7'),('WSS267','p7'),('WSS269','p7'),('WSS27','p7'),('WSS285','p7'),('WSS287','p7'),('WSS290','p7'),('WSS292','p7'),('WSS295','p7'),('WSS300','p7'),('WSS35','p7'),('WSS40','p7'),('WSS41','p7'),('WSS42','p7'),('WSS44','p7'),('WSS45','p7'),('WSS48','p7'),('WSS49','p7'),('WSS54','p7'),('WSS60','p7'),('WSS65','p7'),('WSS69','p7'),('WSS71','p7'),('WSS74','p7'),('WSS75','p7'),('WSS82','p7'),('WSS91','p7'),('WSS98','p7'),('WSS102','p8'),('WSS104','p8'),('WSS107','p8'),('WSS109','p8'),('WSS115','p8'),('WSS118','p8'),('WSS12','p8'),('WSS121','p8'),('WSS123','p8'),('WSS132','p8'),('WSS137','p8'),('WSS141','p8'),('WSS145','p8'),('WSS146','p8'),('WSS153','p8'),('WSS154','p8'),('WSS155','p8'),('WSS156','p8'),('WSS157','p8'),('WSS158','p8'),('WSS159','p8'),('WSS16','p8'),('WSS165','p8'),('WSS186','p8'),('WSS188','p8'),('WSS194','p8'),('WSS197','p8'),('WSS198','p8'),('WSS199','p8'),('WSS20','p8'),('WSS203','p8'),('WSS208','p8'),('WSS210','p8'),('WSS219','p8'),('WSS22','p8'),('WSS221','p8'),('WSS227','p8'),('WSS231','p8'),('WSS233','p8'),('WSS234','p8'),('WSS238','p8'),('WSS240','p8'),('WSS241','p8'),('WSS242','p8'),('WSS243','p8'),('WSS249','p8'),('WSS25','p8'),('WSS250','p8'),('WSS251','p8'),('WSS253','p8'),('WSS254','p8'),('WSS255','p8'),('WSS263','p8'),('WSS268','p8'),('WSS272','p8'),('WSS281','p8'),('WSS288','p8'),('WSS289','p8'),('WSS291','p8'),('WSS293','p8'),('WSS295','p8'),('WSS296','p8'),('WSS3','p8'),('WSS31','p8'),('WSS43','p8'),('WSS5','p8'),('WSS59','p8'),('WSS60','p8'),('WSS62','p8'),('WSS64','p8'),('WSS77','p8'),('WSS84','p8'),('WSS87','p8'),('WSS89','p8'),('WSS94','p8'),('WSS96','p8'),('WSS99','p8'),('WSS1','p9'),('WSS11','p9'),('WSS110','p9'),('WSS114','p9'),('WSS119','p9'),('WSS120','p9'),('WSS125','p9'),('WSS126','p9'),('WSS129','p9'),('WSS137','p9'),('WSS140','p9'),('WSS141','p9'),('WSS142','p9'),('WSS144','p9'),('WSS145','p9'),('WSS146','p9'),('WSS158','p9'),('WSS159','p9'),('WSS160','p9'),('WSS165','p9'),('WSS168','p9'),('WSS169','p9'),('WSS171','p9'),('WSS172','p9'),('WSS176','p9'),('WSS185','p9'),('WSS189','p9'),('WSS196','p9'),('WSS2','p9'),('WSS200','p9'),('WSS201','p9'),('WSS202','p9'),('WSS211','p9'),('WSS213','p9'),('WSS214','p9'),('WSS215','p9'),('WSS216','p9'),('WSS217','p9'),('WSS220','p9'),('WSS221','p9'),('WSS224','p9'),('WSS227','p9'),('WSS239','p9'),('WSS240','p9'),('WSS241','p9'),('WSS244','p9'),('WSS25','p9'),('WSS251','p9'),('WSS252','p9'),('WSS256','p9'),('WSS258','p9'),('WSS272','p9'),('WSS274','p9'),('WSS276','p9'),('WSS279','p9'),('WSS281','p9'),('WSS282','p9'),('WSS32','p9'),('WSS36','p9'),('WSS39','p9'),('WSS44','p9'),('WSS50','p9'),('WSS52','p9'),('WSS56','p9'),('WSS58','p9'),('WSS60','p9'),('WSS62','p9'),('WSS72','p9'),('WSS74','p9'),('WSS8','p9'),('WSS83','p9'),('WSS90','p9'),('WSS98','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS254'),(1,1,'WSS262'),(2,1,'WSS31'),(2,2,'WSS193'),(2,3,'WSS236'),(3,1,'WSS255'),(3,2,'WSS141'),(4,1,'WSS300'),(4,2,'WSS216'),(5,1,'WSS183'),(5,2,'WSS254'),(6,1,'WSS34'),(6,1,'WSS39'),(6,2,'WSS102'),(7,1,'WSS101'),(7,1,'WSS103'),(7,2,'WSS48'),(8,1,'WSS297'),(8,2,'WSS2'),(8,3,'WSS31'),(9,1,'WSS79'),(9,2,'WSS161'),(10,1,'WSS20'),(10,2,'WSS287'),(11,1,'WSS299'),(11,2,'WSS44'),(11,3,'WSS34'),(12,1,'WSS143'),(12,2,'WSS44'),(13,1,'WSS290'),(13,2,'WSS100'),(13,3,'WSS48'),(14,1,'WSS39'),(14,2,'WSS27'),(14,3,'WSS47'),(15,1,'WSS121'),(15,2,'WSS88'),(16,1,'WSS191'),(16,1,'WSS32'),(16,2,'WSS25'),(17,1,'WSS274'),(17,1,'WSS298'),(17,2,'WSS284'),(18,1,'WSS201'),(18,2,'WSS212'),(19,1,'WSS235'),(19,2,'WSS27'),(19,3,'WSS102'),(20,1,'WSS26'),(20,2,'WSS258'),(20,3,'WSS239'),(21,1,'WSS177'),(21,1,'WSS296'),(22,1,'WSS117'),(22,2,'WSS167'),(23,1,'WSS137'),(23,2,'WSS63'),(24,1,'WSS102'),(24,2,'WSS245'),(24,3,'WSS38'),(25,1,'WSS220'),(25,2,'WSS276'),(26,1,'WSS285'),(26,2,'WSS299'),(26,2,'WSS33'),(27,1,'WSS292'),(27,2,'WSS250'),(28,1,'WSS166'),(28,1,'WSS223'),(29,1,'WSS43'),(29,2,'WSS14'),(29,3,'WSS245'),(30,1,'WSS104'),(30,1,'WSS237'),(30,2,'WSS40'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-30  7:58:46
