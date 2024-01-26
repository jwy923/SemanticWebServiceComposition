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
INSERT INTO `initialgoalparameter` VALUES (1,'G','p1'),(3,'G','p1'),(6,'I','p1'),(8,'G','p1'),(9,'I','p1'),(10,'I','p1'),(11,'G','p1'),(18,'G','p1'),(20,'I','p1'),(21,'I','p1'),(22,'G','p1'),(24,'I','p1'),(26,'G','p1'),(27,'I','p1'),(29,'I','p1'),(30,'G','p1'),(1,'G','p10'),(2,'I','p10'),(3,'I','p10'),(5,'G','p10'),(7,'G','p10'),(8,'G','p10'),(10,'I','p10'),(12,'I','p10'),(13,'I','p10'),(14,'G','p10'),(15,'G','p10'),(16,'G','p10'),(19,'I','p10'),(20,'I','p10'),(21,'G','p10'),(22,'G','p10'),(23,'G','p10'),(26,'I','p10'),(27,'I','p10'),(30,'I','p10'),(5,'I','p11'),(6,'I','p11'),(8,'I','p11'),(9,'I','p11'),(10,'G','p11'),(11,'I','p11'),(13,'I','p11'),(16,'I','p11'),(18,'I','p11'),(19,'G','p11'),(21,'G','p11'),(24,'G','p11'),(25,'G','p11'),(26,'I','p11'),(28,'G','p11'),(1,'G','p12'),(6,'G','p12'),(9,'I','p12'),(13,'I','p12'),(14,'G','p12'),(17,'I','p12'),(18,'G','p12'),(21,'I','p12'),(23,'G','p12'),(24,'G','p12'),(25,'I','p12'),(27,'I','p12'),(30,'G','p12'),(3,'I','p13'),(4,'G','p13'),(7,'G','p13'),(10,'I','p13'),(11,'G','p13'),(12,'G','p13'),(19,'I','p13'),(20,'I','p13'),(2,'G','p14'),(5,'G','p14'),(6,'G','p14'),(7,'I','p14'),(9,'I','p14'),(11,'I','p14'),(12,'G','p14'),(16,'I','p14'),(22,'G','p14'),(23,'I','p14'),(26,'I','p14'),(29,'I','p14'),(30,'G','p14'),(1,'I','p15'),(2,'I','p15'),(4,'G','p15'),(6,'G','p15'),(7,'I','p15'),(9,'G','p15'),(10,'I','p15'),(11,'I','p15'),(15,'I','p15'),(16,'I','p15'),(17,'I','p15'),(18,'I','p15'),(24,'I','p15'),(26,'G','p15'),(28,'G','p15'),(30,'I','p15'),(1,'G','p16'),(7,'I','p16'),(10,'I','p16'),(12,'I','p16'),(13,'I','p16'),(18,'I','p16'),(19,'I','p16'),(20,'I','p16'),(25,'G','p16'),(1,'I','p17'),(7,'G','p17'),(8,'G','p17'),(9,'G','p17'),(10,'G','p17'),(14,'I','p17'),(16,'I','p17'),(17,'I','p17'),(19,'I','p17'),(21,'I','p17'),(22,'G','p17'),(24,'G','p17'),(25,'I','p17'),(27,'G','p17'),(29,'I','p17'),(6,'I','p18'),(13,'G','p18'),(15,'G','p18'),(17,'I','p18'),(18,'G','p18'),(20,'I','p18'),(21,'G','p18'),(22,'I','p18'),(23,'G','p18'),(24,'I','p18'),(25,'I','p18'),(29,'G','p18'),(4,'G','p19'),(5,'I','p19'),(11,'I','p19'),(12,'I','p19'),(14,'I','p19'),(15,'I','p19'),(18,'I','p19'),(19,'I','p19'),(20,'G','p19'),(21,'I','p19'),(23,'G','p19'),(25,'I','p19'),(26,'I','p19'),(27,'G','p19'),(28,'G','p19'),(29,'I','p19'),(30,'G','p19'),(2,'G','p2'),(3,'G','p2'),(5,'I','p2'),(14,'I','p2'),(15,'G','p2'),(17,'I','p2'),(18,'I','p2'),(19,'I','p2'),(20,'G','p2'),(21,'I','p2'),(22,'I','p2'),(23,'I','p2'),(24,'I','p2'),(27,'G','p2'),(28,'I','p2'),(29,'G','p2'),(2,'I','p20'),(3,'G','p20'),(4,'I','p20'),(7,'I','p20'),(9,'I','p20'),(10,'I','p20'),(16,'G','p20'),(17,'G','p20'),(20,'I','p20'),(22,'I','p20'),(23,'I','p20'),(24,'I','p20'),(25,'I','p20'),(26,'G','p20'),(28,'G','p20'),(1,'I','p21'),(2,'I','p21'),(3,'I','p21'),(4,'I','p21'),(8,'I','p21'),(13,'G','p21'),(16,'I','p21'),(18,'I','p21'),(21,'G','p21'),(22,'G','p21'),(24,'I','p21'),(30,'G','p21'),(1,'I','p22'),(5,'G','p22'),(6,'I','p22'),(7,'G','p22'),(8,'I','p22'),(9,'I','p22'),(10,'G','p22'),(15,'G','p22'),(16,'G','p22'),(20,'I','p22'),(22,'G','p22'),(2,'I','p23'),(3,'I','p23'),(8,'G','p23'),(9,'G','p23'),(11,'G','p23'),(13,'I','p23'),(14,'I','p23'),(15,'G','p23'),(16,'G','p23'),(17,'G','p23'),(18,'I','p23'),(22,'I','p23'),(23,'I','p23'),(24,'G','p23'),(25,'I','p23'),(28,'I','p23'),(30,'I','p23'),(1,'I','p24'),(2,'I','p24'),(3,'I','p24'),(4,'G','p24'),(6,'G','p24'),(7,'G','p24'),(8,'I','p24'),(9,'G','p24'),(11,'G','p24'),(13,'G','p24'),(15,'I','p24'),(1,'G','p25'),(2,'I','p25'),(5,'I','p25'),(6,'I','p25'),(7,'I','p25'),(8,'I','p25'),(12,'I','p25'),(13,'I','p25'),(14,'G','p25'),(15,'I','p25'),(16,'I','p25'),(19,'G','p25'),(21,'G','p25'),(22,'I','p25'),(24,'G','p25'),(25,'G','p25'),(26,'I','p25'),(27,'G','p25'),(28,'I','p25'),(30,'I','p25'),(2,'I','p26'),(6,'I','p26'),(8,'I','p26'),(11,'I','p26'),(12,'G','p26'),(17,'I','p26'),(19,'I','p26'),(20,'G','p26'),(22,'I','p26'),(23,'I','p26'),(27,'G','p26'),(28,'I','p26'),(29,'I','p26'),(30,'G','p26'),(3,'I','p27'),(4,'I','p27'),(7,'G','p27'),(10,'I','p27'),(11,'I','p27'),(12,'I','p27'),(14,'G','p27'),(19,'G','p27'),(21,'I','p27'),(23,'G','p27'),(29,'G','p27'),(1,'I','p28'),(4,'I','p28'),(7,'I','p28'),(14,'G','p28'),(16,'I','p28'),(17,'G','p28'),(18,'G','p28'),(20,'G','p28'),(21,'I','p28'),(22,'I','p28'),(26,'G','p28'),(28,'I','p28'),(29,'I','p28'),(30,'I','p28'),(1,'G','p29'),(2,'G','p29'),(3,'I','p29'),(4,'I','p29'),(5,'G','p29'),(6,'G','p29'),(10,'G','p29'),(11,'I','p29'),(16,'G','p29'),(20,'I','p29'),(25,'G','p29'),(28,'I','p29'),(2,'G','p3'),(3,'G','p3'),(4,'I','p3'),(8,'I','p3'),(9,'I','p3'),(11,'G','p3'),(12,'I','p3'),(13,'I','p3'),(14,'I','p3'),(18,'I','p3'),(19,'G','p3'),(24,'I','p3'),(26,'I','p3'),(28,'G','p3'),(29,'G','p3'),(30,'I','p3'),(5,'I','p30'),(7,'I','p30'),(8,'G','p30'),(9,'G','p30'),(13,'G','p30'),(14,'I','p30'),(15,'I','p30'),(17,'G','p30'),(19,'I','p30'),(27,'G','p30'),(29,'I','p30'),(30,'I','p30'),(1,'I','p4'),(2,'G','p4'),(3,'G','p4'),(4,'I','p4'),(5,'I','p4'),(8,'I','p4'),(10,'G','p4'),(12,'G','p4'),(14,'I','p4'),(15,'I','p4'),(17,'G','p4'),(20,'G','p4'),(24,'I','p4'),(25,'I','p4'),(27,'I','p4'),(28,'I','p4'),(29,'G','p4'),(3,'G','p5'),(4,'G','p5'),(5,'G','p5'),(6,'I','p5'),(10,'I','p5'),(11,'I','p5'),(12,'G','p5'),(13,'G','p5'),(15,'I','p5'),(16,'G','p5'),(19,'G','p5'),(21,'I','p5'),(27,'I','p5'),(1,'I','p6'),(6,'G','p6'),(9,'I','p6'),(12,'I','p6'),(17,'G','p6'),(18,'G','p6'),(23,'I','p6'),(25,'I','p6'),(26,'I','p6'),(27,'I','p6'),(29,'I','p6'),(3,'I','p7'),(4,'G','p7'),(5,'I','p7'),(9,'G','p7'),(13,'G','p7'),(14,'G','p7'),(15,'G','p7'),(16,'I','p7'),(23,'I','p7'),(24,'G','p7'),(25,'G','p7'),(26,'G','p7'),(27,'I','p7'),(28,'I','p7'),(30,'I','p7'),(4,'I','p8'),(5,'G','p8'),(6,'I','p8'),(8,'G','p8'),(10,'G','p8'),(11,'G','p8'),(12,'I','p8'),(13,'I','p8'),(14,'I','p8'),(17,'I','p8'),(23,'G','p8'),(26,'I','p8'),(27,'I','p8'),(29,'G','p8'),(2,'G','p9'),(5,'I','p9'),(7,'I','p9'),(12,'G','p9'),(15,'I','p9'),(17,'I','p9'),(18,'G','p9'),(19,'G','p9'),(20,'G','p9'),(21,'G','p9'),(22,'I','p9'),(23,'I','p9'),(25,'G','p9'),(26,'G','p9'),(28,'G','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS102','p1'),('WSS106','p1'),('WSS121','p1'),('WSS126','p1'),('WSS127','p1'),('WSS143','p1'),('WSS150','p1'),('WSS166','p1'),('WSS192','p1'),('WSS199','p1'),('WSS205','p1'),('WSS213','p1'),('WSS226','p1'),('WSS228','p1'),('WSS23','p1'),('WSS242','p1'),('WSS250','p1'),('WSS286','p1'),('WSS31','p1'),('WSS39','p1'),('WSS46','p1'),('WSS75','p1'),('WSS79','p1'),('WSS83','p1'),('WSS84','p1'),('WSS88','p1'),('WSS9','p1'),('WSS10','p10'),('WSS103','p10'),('WSS108','p10'),('WSS111','p10'),('WSS133','p10'),('WSS136','p10'),('WSS137','p10'),('WSS151','p10'),('WSS160','p10'),('WSS162','p10'),('WSS163','p10'),('WSS167','p10'),('WSS171','p10'),('WSS183','p10'),('WSS187','p10'),('WSS199','p10'),('WSS200','p10'),('WSS212','p10'),('WSS220','p10'),('WSS221','p10'),('WSS222','p10'),('WSS259','p10'),('WSS274','p10'),('WSS295','p10'),('WSS30','p10'),('WSS36','p10'),('WSS62','p10'),('WSS73','p10'),('WSS96','p10'),('WSS97','p10'),('WSS118','p11'),('WSS120','p11'),('WSS130','p11'),('WSS131','p11'),('WSS145','p11'),('WSS159','p11'),('WSS164','p11'),('WSS230','p11'),('WSS249','p11'),('WSS252','p11'),('WSS253','p11'),('WSS271','p11'),('WSS283','p11'),('WSS33','p11'),('WSS40','p11'),('WSS86','p11'),('WSS89','p11'),('WSS93','p11'),('WSS98','p11'),('WSS103','p12'),('WSS114','p12'),('WSS115','p12'),('WSS155','p12'),('WSS207','p12'),('WSS216','p12'),('WSS223','p12'),('WSS236','p12'),('WSS240','p12'),('WSS244','p12'),('WSS250','p12'),('WSS269','p12'),('WSS272','p12'),('WSS276','p12'),('WSS28','p12'),('WSS44','p12'),('WSS52','p12'),('WSS54','p12'),('WSS55','p12'),('WSS61','p12'),('WSS67','p12'),('WSS110','p13'),('WSS115','p13'),('WSS116','p13'),('WSS119','p13'),('WSS181','p13'),('WSS223','p13'),('WSS245','p13'),('WSS270','p13'),('WSS272','p13'),('WSS288','p13'),('WSS289','p13'),('WSS29','p13'),('WSS290','p13'),('WSS297','p13'),('WSS51','p13'),('WSS53','p13'),('WSS6','p13'),('WSS78','p13'),('WSS12','p14'),('WSS13','p14'),('WSS134','p14'),('WSS139','p14'),('WSS141','p14'),('WSS15','p14'),('WSS157','p14'),('WSS176','p14'),('WSS179','p14'),('WSS211','p14'),('WSS22','p14'),('WSS225','p14'),('WSS244','p14'),('WSS255','p14'),('WSS267','p14'),('WSS284','p14'),('WSS288','p14'),('WSS291','p14'),('WSS295','p14'),('WSS34','p14'),('WSS35','p14'),('WSS68','p14'),('WSS72','p14'),('WSS78','p14'),('WSS95','p14'),('WSS112','p15'),('WSS141','p15'),('WSS175','p15'),('WSS177','p15'),('WSS185','p15'),('WSS203','p15'),('WSS216','p15'),('WSS234','p15'),('WSS239','p15'),('WSS247','p15'),('WSS261','p15'),('WSS291','p15'),('WSS296','p15'),('WSS45','p15'),('WSS50','p15'),('WSS58','p15'),('WSS82','p15'),('WSS101','p16'),('WSS125','p16'),('WSS157','p16'),('WSS167','p16'),('WSS168','p16'),('WSS19','p16'),('WSS2','p16'),('WSS205','p16'),('WSS210','p16'),('WSS235','p16'),('WSS25','p16'),('WSS257','p16'),('WSS282','p16'),('WSS286','p16'),('WSS33','p16'),('WSS37','p16'),('WSS40','p16'),('WSS59','p16'),('WSS69','p16'),('WSS97','p16'),('WSS114','p17'),('WSS118','p17'),('WSS122','p17'),('WSS132','p17'),('WSS154','p17'),('WSS16','p17'),('WSS182','p17'),('WSS186','p17'),('WSS200','p17'),('WSS236','p17'),('WSS237','p17'),('WSS257','p17'),('WSS269','p17'),('WSS31','p17'),('WSS77','p17'),('WSS85','p17'),('WSS87','p17'),('WSS91','p17'),('WSS109','p18'),('WSS117','p18'),('WSS142','p18'),('WSS166','p18'),('WSS173','p18'),('WSS191','p18'),('WSS198','p18'),('WSS214','p18'),('WSS218','p18'),('WSS224','p18'),('WSS225','p18'),('WSS229','p18'),('WSS232','p18'),('WSS242','p18'),('WSS243','p18'),('WSS246','p18'),('WSS26','p18'),('WSS268','p18'),('WSS275','p18'),('WSS285','p18'),('WSS41','p18'),('WSS5','p18'),('WSS51','p18'),('WSS79','p18'),('WSS92','p18'),('WSS1','p19'),('WSS122','p19'),('WSS133','p19'),('WSS137','p19'),('WSS178','p19'),('WSS190','p19'),('WSS195','p19'),('WSS204','p19'),('WSS226','p19'),('WSS264','p19'),('WSS273','p19'),('WSS287','p19'),('WSS296','p19'),('WSS43','p19'),('WSS47','p19'),('WSS60','p19'),('WSS94','p19'),('WSS95','p19'),('WSS180','p2'),('WSS206','p2'),('WSS209','p2'),('WSS48','p2'),('WSS53','p2'),('WSS102','p20'),('WSS110','p20'),('WSS111','p20'),('WSS120','p20'),('WSS126','p20'),('WSS164','p20'),('WSS181','p20'),('WSS233','p20'),('WSS243','p20'),('WSS27','p20'),('WSS279','p20'),('WSS38','p20'),('WSS41','p20'),('WSS42','p20'),('WSS43','p20'),('WSS61','p20'),('WSS76','p20'),('WSS84','p20'),('WSS10','p21'),('WSS147','p21'),('WSS152','p21'),('WSS156','p21'),('WSS165','p21'),('WSS187','p21'),('WSS188','p21'),('WSS20','p21'),('WSS212','p21'),('WSS237','p21'),('WSS256','p21'),('WSS262','p21'),('WSS28','p21'),('WSS292','p21'),('WSS293','p21'),('WSS294','p21'),('WSS45','p21'),('WSS5','p21'),('WSS59','p21'),('WSS63','p21'),('WSS74','p21'),('WSS81','p21'),('WSS90','p21'),('WSS101','p22'),('WSS117','p22'),('WSS125','p22'),('WSS127','p22'),('WSS136','p22'),('WSS147','p22'),('WSS197','p22'),('WSS215','p22'),('WSS22','p22'),('WSS239','p22'),('WSS255','p22'),('WSS275','p22'),('WSS277','p22'),('WSS56','p22'),('WSS73','p22'),('WSS131','p23'),('WSS14','p23'),('WSS153','p23'),('WSS160','p23'),('WSS177','p23'),('WSS183','p23'),('WSS202','p23'),('WSS208','p23'),('WSS214','p23'),('WSS217','p23'),('WSS248','p23'),('WSS267','p23'),('WSS273','p23'),('WSS281','p23'),('WSS284','p23'),('WSS69','p23'),('WSS71','p23'),('WSS113','p24'),('WSS124','p24'),('WSS129','p24'),('WSS146','p24'),('WSS148','p24'),('WSS149','p24'),('WSS162','p24'),('WSS180','p24'),('WSS19','p24'),('WSS193','p24'),('WSS194','p24'),('WSS198','p24'),('WSS201','p24'),('WSS224','p24'),('WSS232','p24'),('WSS238','p24'),('WSS247','p24'),('WSS271','p24'),('WSS64','p24'),('WSS67','p24'),('WSS68','p24'),('WSS70','p24'),('WSS80','p24'),('WSS98','p24'),('WSS11','p25'),('WSS13','p25'),('WSS156','p25'),('WSS184','p25'),('WSS192','p25'),('WSS196','p25'),('WSS219','p25'),('WSS274','p25'),('WSS294','p25'),('WSS298','p25'),('WSS52','p25'),('WSS71','p25'),('WSS75','p25'),('WSS99','p25'),('WSS109','p26'),('WSS113','p26'),('WSS139','p26'),('WSS159','p26'),('WSS163','p26'),('WSS168','p26'),('WSS172','p26'),('WSS173','p26'),('WSS221','p26'),('WSS24','p26'),('WSS254','p26'),('WSS276','p26'),('WSS297','p26'),('WSS300','p26'),('WSS49','p26'),('WSS56','p26'),('WSS63','p26'),('WSS105','p27'),('WSS135','p27'),('WSS144','p27'),('WSS170','p27'),('WSS174','p27'),('WSS179','p27'),('WSS184','p27'),('WSS189','p27'),('WSS202','p27'),('WSS25','p27'),('WSS252','p27'),('WSS265','p27'),('WSS268','p27'),('WSS280','p27'),('WSS287','p27'),('WSS289','p27'),('WSS3','p27'),('WSS32','p27'),('WSS46','p27'),('WSS83','p27'),('WSS92','p27'),('WSS100','p28'),('WSS119','p28'),('WSS121','p28'),('WSS144','p28'),('WSS149','p28'),('WSS161','p28'),('WSS169','p28'),('WSS186','p28'),('WSS209','p28'),('WSS222','p28'),('WSS251','p28'),('WSS261','p28'),('WSS66','p28'),('WSS77','p28'),('WSS80','p28'),('WSS104','p29'),('WSS105','p29'),('WSS11','p29'),('WSS116','p29'),('WSS123','p29'),('WSS124','p29'),('WSS143','p29'),('WSS154','p29'),('WSS18','p29'),('WSS191','p29'),('WSS201','p29'),('WSS218','p29'),('WSS24','p29'),('WSS245','p29'),('WSS253','p29'),('WSS258','p29'),('WSS259','p29'),('WSS278','p29'),('WSS283','p29'),('WSS290','p29'),('WSS299','p29'),('WSS6','p29'),('WSS60','p29'),('WSS7','p29'),('WSS70','p29'),('WSS74','p29'),('WSS8','p29'),('WSS82','p29'),('WSS9','p29'),('WSS93','p29'),('WSS146','p3'),('WSS16','p3'),('WSS165','p3'),('WSS174','p3'),('WSS182','p3'),('WSS193','p3'),('WSS194','p3'),('WSS197','p3'),('WSS2','p3'),('WSS229','p3'),('WSS249','p3'),('WSS26','p3'),('WSS264','p3'),('WSS279','p3'),('WSS293','p3'),('WSS298','p3'),('WSS47','p3'),('WSS7','p3'),('WSS91','p3'),('WSS104','p30'),('WSS108','p30'),('WSS14','p30'),('WSS15','p30'),('WSS161','p30'),('WSS169','p30'),('WSS172','p30'),('WSS176','p30'),('WSS188','p30'),('WSS195','p30'),('WSS21','p30'),('WSS215','p30'),('WSS230','p30'),('WSS260','p30'),('WSS27','p30'),('WSS270','p30'),('WSS278','p30'),('WSS281','p30'),('WSS37','p30'),('WSS57','p30'),('WSS72','p30'),('WSS8','p30'),('WSS81','p30'),('WSS87','p30'),('WSS96','p30'),('WSS99','p30'),('WSS130','p4'),('WSS142','p4'),('WSS152','p4'),('WSS158','p4'),('WSS175','p4'),('WSS210','p4'),('WSS231','p4'),('WSS256','p4'),('WSS38','p4'),('WSS55','p4'),('WSS57','p4'),('WSS65','p4'),('WSS86','p4'),('WSS90','p4'),('WSS100','p5'),('WSS107','p5'),('WSS17','p5'),('WSS185','p5'),('WSS207','p5'),('WSS231','p5'),('WSS238','p5'),('WSS248','p5'),('WSS280','p5'),('WSS29','p5'),('WSS3','p5'),('WSS30','p5'),('WSS32','p5'),('WSS36','p5'),('WSS42','p5'),('WSS49','p5'),('WSS50','p5'),('WSS58','p5'),('WSS85','p5'),('WSS1','p6'),('WSS106','p6'),('WSS107','p6'),('WSS135','p6'),('WSS138','p6'),('WSS140','p6'),('WSS178','p6'),('WSS196','p6'),('WSS20','p6'),('WSS227','p6'),('WSS233','p6'),('WSS265','p6'),('WSS266','p6'),('WSS300','p6'),('WSS34','p6'),('WSS44','p6'),('WSS54','p6'),('WSS112','p7'),('WSS129','p7'),('WSS132','p7'),('WSS148','p7'),('WSS153','p7'),('WSS155','p7'),('WSS170','p7'),('WSS171','p7'),('WSS18','p7'),('WSS213','p7'),('WSS217','p7'),('WSS219','p7'),('WSS228','p7'),('WSS23','p7'),('WSS246','p7'),('WSS260','p7'),('WSS262','p7'),('WSS277','p7'),('WSS299','p7'),('WSS35','p7'),('WSS4','p7'),('WSS62','p7'),('WSS65','p7'),('WSS94','p7'),('WSS123','p8'),('WSS128','p8'),('WSS134','p8'),('WSS145','p8'),('WSS17','p8'),('WSS190','p8'),('WSS203','p8'),('WSS206','p8'),('WSS208','p8'),('WSS21','p8'),('WSS220','p8'),('WSS227','p8'),('WSS234','p8'),('WSS251','p8'),('WSS254','p8'),('WSS263','p8'),('WSS282','p8'),('WSS88','p8'),('WSS12','p9'),('WSS138','p9'),('WSS140','p9'),('WSS158','p9'),('WSS189','p9'),('WSS240','p9'),('WSS241','p9'),('WSS258','p9'),('WSS263','p9'),('WSS285','p9'),('WSS292','p9'),('WSS4','p9'),('WSS48','p9'),('WSS64','p9'),('WSS89','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS10','p1'),('WSS103','p1'),('WSS105','p1'),('WSS111','p1'),('WSS113','p1'),('WSS117','p1'),('WSS119','p1'),('WSS120','p1'),('WSS121','p1'),('WSS123','p1'),('WSS128','p1'),('WSS13','p1'),('WSS130','p1'),('WSS131','p1'),('WSS132','p1'),('WSS143','p1'),('WSS152','p1'),('WSS153','p1'),('WSS154','p1'),('WSS157','p1'),('WSS159','p1'),('WSS16','p1'),('WSS161','p1'),('WSS162','p1'),('WSS163','p1'),('WSS166','p1'),('WSS167','p1'),('WSS168','p1'),('WSS171','p1'),('WSS173','p1'),('WSS18','p1'),('WSS180','p1'),('WSS185','p1'),('WSS188','p1'),('WSS189','p1'),('WSS191','p1'),('WSS199','p1'),('WSS204','p1'),('WSS206','p1'),('WSS209','p1'),('WSS218','p1'),('WSS224','p1'),('WSS225','p1'),('WSS227','p1'),('WSS23','p1'),('WSS231','p1'),('WSS233','p1'),('WSS238','p1'),('WSS239','p1'),('WSS240','p1'),('WSS249','p1'),('WSS251','p1'),('WSS253','p1'),('WSS259','p1'),('WSS264','p1'),('WSS270','p1'),('WSS277','p1'),('WSS281','p1'),('WSS284','p1'),('WSS287','p1'),('WSS289','p1'),('WSS292','p1'),('WSS293','p1'),('WSS297','p1'),('WSS298','p1'),('WSS35','p1'),('WSS37','p1'),('WSS4','p1'),('WSS40','p1'),('WSS46','p1'),('WSS48','p1'),('WSS52','p1'),('WSS58','p1'),('WSS71','p1'),('WSS76','p1'),('WSS8','p1'),('WSS82','p1'),('WSS86','p1'),('WSS88','p1'),('WSS9','p1'),('WSS10','p10'),('WSS102','p10'),('WSS103','p10'),('WSS107','p10'),('WSS11','p10'),('WSS111','p10'),('WSS115','p10'),('WSS116','p10'),('WSS117','p10'),('WSS119','p10'),('WSS122','p10'),('WSS125','p10'),('WSS128','p10'),('WSS130','p10'),('WSS132','p10'),('WSS136','p10'),('WSS140','p10'),('WSS142','p10'),('WSS144','p10'),('WSS15','p10'),('WSS158','p10'),('WSS160','p10'),('WSS164','p10'),('WSS17','p10'),('WSS174','p10'),('WSS177','p10'),('WSS179','p10'),('WSS18','p10'),('WSS187','p10'),('WSS188','p10'),('WSS190','p10'),('WSS192','p10'),('WSS196','p10'),('WSS207','p10'),('WSS208','p10'),('WSS210','p10'),('WSS214','p10'),('WSS216','p10'),('WSS22','p10'),('WSS225','p10'),('WSS230','p10'),('WSS24','p10'),('WSS243','p10'),('WSS244','p10'),('WSS246','p10'),('WSS247','p10'),('WSS253','p10'),('WSS255','p10'),('WSS256','p10'),('WSS257','p10'),('WSS261','p10'),('WSS263','p10'),('WSS275','p10'),('WSS290','p10'),('WSS299','p10'),('WSS300','p10'),('WSS32','p10'),('WSS37','p10'),('WSS39','p10'),('WSS4','p10'),('WSS41','p10'),('WSS44','p10'),('WSS47','p10'),('WSS53','p10'),('WSS57','p10'),('WSS6','p10'),('WSS61','p10'),('WSS62','p10'),('WSS66','p10'),('WSS69','p10'),('WSS70','p10'),('WSS71','p10'),('WSS73','p10'),('WSS75','p10'),('WSS76','p10'),('WSS77','p10'),('WSS78','p10'),('WSS79','p10'),('WSS85','p10'),('WSS88','p10'),('WSS89','p10'),('WSS9','p10'),('WSS92','p10'),('WSS94','p10'),('WSS99','p10'),('WSS106','p11'),('WSS107','p11'),('WSS11','p11'),('WSS115','p11'),('WSS119','p11'),('WSS121','p11'),('WSS124','p11'),('WSS126','p11'),('WSS134','p11'),('WSS135','p11'),('WSS14','p11'),('WSS141','p11'),('WSS144','p11'),('WSS146','p11'),('WSS148','p11'),('WSS158','p11'),('WSS162','p11'),('WSS163','p11'),('WSS165','p11'),('WSS167','p11'),('WSS172','p11'),('WSS181','p11'),('WSS182','p11'),('WSS193','p11'),('WSS195','p11'),('WSS201','p11'),('WSS204','p11'),('WSS210','p11'),('WSS212','p11'),('WSS219','p11'),('WSS223','p11'),('WSS231','p11'),('WSS236','p11'),('WSS239','p11'),('WSS24','p11'),('WSS241','p11'),('WSS25','p11'),('WSS252','p11'),('WSS259','p11'),('WSS261','p11'),('WSS262','p11'),('WSS265','p11'),('WSS267','p11'),('WSS268','p11'),('WSS269','p11'),('WSS27','p11'),('WSS273','p11'),('WSS274','p11'),('WSS278','p11'),('WSS281','p11'),('WSS282','p11'),('WSS287','p11'),('WSS292','p11'),('WSS294','p11'),('WSS295','p11'),('WSS296','p11'),('WSS299','p11'),('WSS3','p11'),('WSS39','p11'),('WSS4','p11'),('WSS50','p11'),('WSS53','p11'),('WSS57','p11'),('WSS58','p11'),('WSS59','p11'),('WSS67','p11'),('WSS7','p11'),('WSS71','p11'),('WSS79','p11'),('WSS8','p11'),('WSS84','p11'),('WSS85','p11'),('WSS89','p11'),('WSS94','p11'),('WSS100','p12'),('WSS105','p12'),('WSS112','p12'),('WSS114','p12'),('WSS116','p12'),('WSS118','p12'),('WSS123','p12'),('WSS131','p12'),('WSS133','p12'),('WSS136','p12'),('WSS138','p12'),('WSS14','p12'),('WSS140','p12'),('WSS143','p12'),('WSS148','p12'),('WSS156','p12'),('WSS159','p12'),('WSS166','p12'),('WSS17','p12'),('WSS170','p12'),('WSS172','p12'),('WSS173','p12'),('WSS174','p12'),('WSS189','p12'),('WSS193','p12'),('WSS198','p12'),('WSS199','p12'),('WSS200','p12'),('WSS205','p12'),('WSS208','p12'),('WSS213','p12'),('WSS222','p12'),('WSS224','p12'),('WSS23','p12'),('WSS231','p12'),('WSS237','p12'),('WSS238','p12'),('WSS24','p12'),('WSS240','p12'),('WSS243','p12'),('WSS245','p12'),('WSS247','p12'),('WSS256','p12'),('WSS261','p12'),('WSS268','p12'),('WSS269','p12'),('WSS271','p12'),('WSS275','p12'),('WSS276','p12'),('WSS279','p12'),('WSS293','p12'),('WSS298','p12'),('WSS299','p12'),('WSS32','p12'),('WSS38','p12'),('WSS39','p12'),('WSS4','p12'),('WSS44','p12'),('WSS46','p12'),('WSS48','p12'),('WSS50','p12'),('WSS51','p12'),('WSS60','p12'),('WSS64','p12'),('WSS69','p12'),('WSS70','p12'),('WSS74','p12'),('WSS76','p12'),('WSS80','p12'),('WSS85','p12'),('WSS9','p12'),('WSS93','p12'),('WSS97','p12'),('WSS98','p12'),('WSS99','p12'),('WSS106','p13'),('WSS108','p13'),('WSS113','p13'),('WSS118','p13'),('WSS119','p13'),('WSS12','p13'),('WSS126','p13'),('WSS128','p13'),('WSS129','p13'),('WSS130','p13'),('WSS138','p13'),('WSS139','p13'),('WSS141','p13'),('WSS142','p13'),('WSS143','p13'),('WSS147','p13'),('WSS15','p13'),('WSS16','p13'),('WSS163','p13'),('WSS167','p13'),('WSS169','p13'),('WSS178','p13'),('WSS181','p13'),('WSS182','p13'),('WSS184','p13'),('WSS185','p13'),('WSS187','p13'),('WSS202','p13'),('WSS210','p13'),('WSS213','p13'),('WSS214','p13'),('WSS217','p13'),('WSS220','p13'),('WSS222','p13'),('WSS232','p13'),('WSS234','p13'),('WSS235','p13'),('WSS236','p13'),('WSS239','p13'),('WSS241','p13'),('WSS245','p13'),('WSS247','p13'),('WSS254','p13'),('WSS255','p13'),('WSS262','p13'),('WSS265','p13'),('WSS268','p13'),('WSS270','p13'),('WSS274','p13'),('WSS28','p13'),('WSS281','p13'),('WSS283','p13'),('WSS285','p13'),('WSS288','p13'),('WSS292','p13'),('WSS296','p13'),('WSS42','p13'),('WSS43','p13'),('WSS44','p13'),('WSS49','p13'),('WSS5','p13'),('WSS53','p13'),('WSS54','p13'),('WSS58','p13'),('WSS61','p13'),('WSS62','p13'),('WSS67','p13'),('WSS7','p13'),('WSS71','p13'),('WSS84','p13'),('WSS86','p13'),('WSS90','p13'),('WSS92','p13'),('WSS94','p13'),('WSS96','p13'),('WSS97','p13'),('WSS98','p13'),('WSS10','p14'),('WSS101','p14'),('WSS102','p14'),('WSS103','p14'),('WSS108','p14'),('WSS112','p14'),('WSS115','p14'),('WSS119','p14'),('WSS121','p14'),('WSS122','p14'),('WSS135','p14'),('WSS136','p14'),('WSS137','p14'),('WSS146','p14'),('WSS147','p14'),('WSS15','p14'),('WSS151','p14'),('WSS160','p14'),('WSS163','p14'),('WSS18','p14'),('WSS186','p14'),('WSS19','p14'),('WSS192','p14'),('WSS194','p14'),('WSS20','p14'),('WSS206','p14'),('WSS209','p14'),('WSS224','p14'),('WSS227','p14'),('WSS240','p14'),('WSS246','p14'),('WSS250','p14'),('WSS255','p14'),('WSS260','p14'),('WSS266','p14'),('WSS269','p14'),('WSS273','p14'),('WSS274','p14'),('WSS276','p14'),('WSS288','p14'),('WSS29','p14'),('WSS293','p14'),('WSS30','p14'),('WSS300','p14'),('WSS31','p14'),('WSS33','p14'),('WSS35','p14'),('WSS38','p14'),('WSS42','p14'),('WSS45','p14'),('WSS50','p14'),('WSS54','p14'),('WSS55','p14'),('WSS58','p14'),('WSS60','p14'),('WSS62','p14'),('WSS63','p14'),('WSS65','p14'),('WSS67','p14'),('WSS76','p14'),('WSS8','p14'),('WSS80','p14'),('WSS83','p14'),('WSS86','p14'),('WSS93','p14'),('WSS103','p15'),('WSS106','p15'),('WSS108','p15'),('WSS111','p15'),('WSS12','p15'),('WSS121','p15'),('WSS122','p15'),('WSS126','p15'),('WSS129','p15'),('WSS13','p15'),('WSS131','p15'),('WSS132','p15'),('WSS134','p15'),('WSS136','p15'),('WSS138','p15'),('WSS141','p15'),('WSS146','p15'),('WSS153','p15'),('WSS161','p15'),('WSS166','p15'),('WSS167','p15'),('WSS17','p15'),('WSS174','p15'),('WSS178','p15'),('WSS179','p15'),('WSS180','p15'),('WSS185','p15'),('WSS190','p15'),('WSS2','p15'),('WSS206','p15'),('WSS21','p15'),('WSS211','p15'),('WSS218','p15'),('WSS22','p15'),('WSS220','p15'),('WSS226','p15'),('WSS228','p15'),('WSS229','p15'),('WSS230','p15'),('WSS231','p15'),('WSS240','p15'),('WSS243','p15'),('WSS244','p15'),('WSS250','p15'),('WSS251','p15'),('WSS253','p15'),('WSS254','p15'),('WSS26','p15'),('WSS263','p15'),('WSS27','p15'),('WSS272','p15'),('WSS273','p15'),('WSS274','p15'),('WSS275','p15'),('WSS281','p15'),('WSS289','p15'),('WSS29','p15'),('WSS290','p15'),('WSS296','p15'),('WSS298','p15'),('WSS299','p15'),('WSS31','p15'),('WSS33','p15'),('WSS36','p15'),('WSS37','p15'),('WSS38','p15'),('WSS40','p15'),('WSS43','p15'),('WSS45','p15'),('WSS50','p15'),('WSS56','p15'),('WSS60','p15'),('WSS63','p15'),('WSS73','p15'),('WSS75','p15'),('WSS82','p15'),('WSS86','p15'),('WSS90','p15'),('WSS93','p15'),('WSS1','p16'),('WSS103','p16'),('WSS116','p16'),('WSS118','p16'),('WSS129','p16'),('WSS139','p16'),('WSS141','p16'),('WSS147','p16'),('WSS155','p16'),('WSS157','p16'),('WSS162','p16'),('WSS164','p16'),('WSS169','p16'),('WSS178','p16'),('WSS179','p16'),('WSS180','p16'),('WSS181','p16'),('WSS183','p16'),('WSS184','p16'),('WSS189','p16'),('WSS191','p16'),('WSS195','p16'),('WSS196','p16'),('WSS199','p16'),('WSS200','p16'),('WSS201','p16'),('WSS210','p16'),('WSS211','p16'),('WSS213','p16'),('WSS214','p16'),('WSS218','p16'),('WSS219','p16'),('WSS224','p16'),('WSS227','p16'),('WSS228','p16'),('WSS233','p16'),('WSS235','p16'),('WSS239','p16'),('WSS242','p16'),('WSS244','p16'),('WSS248','p16'),('WSS249','p16'),('WSS251','p16'),('WSS256','p16'),('WSS266','p16'),('WSS272','p16'),('WSS277','p16'),('WSS282','p16'),('WSS284','p16'),('WSS297','p16'),('WSS299','p16'),('WSS300','p16'),('WSS41','p16'),('WSS42','p16'),('WSS43','p16'),('WSS45','p16'),('WSS5','p16'),('WSS50','p16'),('WSS51','p16'),('WSS55','p16'),('WSS59','p16'),('WSS63','p16'),('WSS65','p16'),('WSS67','p16'),('WSS72','p16'),('WSS73','p16'),('WSS76','p16'),('WSS83','p16'),('WSS84','p16'),('WSS85','p16'),('WSS87','p16'),('WSS89','p16'),('WSS91','p16'),('WSS93','p16'),('WSS96','p16'),('WSS98','p16'),('WSS1','p17'),('WSS100','p17'),('WSS102','p17'),('WSS106','p17'),('WSS114','p17'),('WSS118','p17'),('WSS123','p17'),('WSS131','p17'),('WSS134','p17'),('WSS138','p17'),('WSS142','p17'),('WSS145','p17'),('WSS149','p17'),('WSS150','p17'),('WSS152','p17'),('WSS157','p17'),('WSS159','p17'),('WSS162','p17'),('WSS172','p17'),('WSS173','p17'),('WSS175','p17'),('WSS177','p17'),('WSS182','p17'),('WSS184','p17'),('WSS186','p17'),('WSS189','p17'),('WSS19','p17'),('WSS191','p17'),('WSS198','p17'),('WSS20','p17'),('WSS204','p17'),('WSS207','p17'),('WSS209','p17'),('WSS21','p17'),('WSS217','p17'),('WSS219','p17'),('WSS22','p17'),('WSS221','p17'),('WSS223','p17'),('WSS232','p17'),('WSS239','p17'),('WSS240','p17'),('WSS241','p17'),('WSS245','p17'),('WSS252','p17'),('WSS253','p17'),('WSS256','p17'),('WSS258','p17'),('WSS26','p17'),('WSS271','p17'),('WSS272','p17'),('WSS273','p17'),('WSS275','p17'),('WSS277','p17'),('WSS278','p17'),('WSS279','p17'),('WSS281','p17'),('WSS285','p17'),('WSS296','p17'),('WSS30','p17'),('WSS300','p17'),('WSS32','p17'),('WSS33','p17'),('WSS34','p17'),('WSS35','p17'),('WSS41','p17'),('WSS45','p17'),('WSS47','p17'),('WSS51','p17'),('WSS52','p17'),('WSS53','p17'),('WSS57','p17'),('WSS60','p17'),('WSS62','p17'),('WSS64','p17'),('WSS66','p17'),('WSS68','p17'),('WSS72','p17'),('WSS74','p17'),('WSS75','p17'),('WSS77','p17'),('WSS82','p17'),('WSS84','p17'),('WSS91','p17'),('WSS95','p17'),('WSS98','p17'),('WSS104','p18'),('WSS109','p18'),('WSS110','p18'),('WSS112','p18'),('WSS114','p18'),('WSS117','p18'),('WSS120','p18'),('WSS127','p18'),('WSS134','p18'),('WSS140','p18'),('WSS141','p18'),('WSS143','p18'),('WSS146','p18'),('WSS148','p18'),('WSS149','p18'),('WSS150','p18'),('WSS151','p18'),('WSS157','p18'),('WSS160','p18'),('WSS164','p18'),('WSS170','p18'),('WSS171','p18'),('WSS189','p18'),('WSS192','p18'),('WSS204','p18'),('WSS207','p18'),('WSS208','p18'),('WSS211','p18'),('WSS228','p18'),('WSS231','p18'),('WSS232','p18'),('WSS233','p18'),('WSS238','p18'),('WSS248','p18'),('WSS249','p18'),('WSS25','p18'),('WSS250','p18'),('WSS252','p18'),('WSS258','p18'),('WSS263','p18'),('WSS265','p18'),('WSS268','p18'),('WSS276','p18'),('WSS277','p18'),('WSS282','p18'),('WSS283','p18'),('WSS290','p18'),('WSS293','p18'),('WSS3','p18'),('WSS300','p18'),('WSS34','p18'),('WSS37','p18'),('WSS44','p18'),('WSS5','p18'),('WSS53','p18'),('WSS57','p18'),('WSS6','p18'),('WSS7','p18'),('WSS74','p18'),('WSS75','p18'),('WSS79','p18'),('WSS81','p18'),('WSS82','p18'),('WSS90','p18'),('WSS96','p18'),('WSS101','p19'),('WSS104','p19'),('WSS11','p19'),('WSS112','p19'),('WSS13','p19'),('WSS130','p19'),('WSS132','p19'),('WSS133','p19'),('WSS138','p19'),('WSS14','p19'),('WSS143','p19'),('WSS145','p19'),('WSS15','p19'),('WSS150','p19'),('WSS152','p19'),('WSS153','p19'),('WSS156','p19'),('WSS157','p19'),('WSS161','p19'),('WSS165','p19'),('WSS177','p19'),('WSS179','p19'),('WSS181','p19'),('WSS182','p19'),('WSS194','p19'),('WSS195','p19'),('WSS197','p19'),('WSS2','p19'),('WSS201','p19'),('WSS215','p19'),('WSS216','p19'),('WSS219','p19'),('WSS225','p19'),('WSS228','p19'),('WSS23','p19'),('WSS232','p19'),('WSS236','p19'),('WSS237','p19'),('WSS238','p19'),('WSS24','p19'),('WSS242','p19'),('WSS243','p19'),('WSS244','p19'),('WSS246','p19'),('WSS247','p19'),('WSS249','p19'),('WSS25','p19'),('WSS256','p19'),('WSS258','p19'),('WSS26','p19'),('WSS260','p19'),('WSS262','p19'),('WSS269','p19'),('WSS271','p19'),('WSS274','p19'),('WSS279','p19'),('WSS280','p19'),('WSS281','p19'),('WSS282','p19'),('WSS285','p19'),('WSS298','p19'),('WSS3','p19'),('WSS32','p19'),('WSS39','p19'),('WSS40','p19'),('WSS43','p19'),('WSS44','p19'),('WSS45','p19'),('WSS49','p19'),('WSS53','p19'),('WSS56','p19'),('WSS65','p19'),('WSS70','p19'),('WSS75','p19'),('WSS79','p19'),('WSS81','p19'),('WSS84','p19'),('WSS86','p19'),('WSS87','p19'),('WSS89','p19'),('WSS92','p19'),('WSS98','p19'),('WSS99','p19'),('WSS102','p2'),('WSS108','p2'),('WSS109','p2'),('WSS115','p2'),('WSS116','p2'),('WSS117','p2'),('WSS118','p2'),('WSS123','p2'),('WSS129','p2'),('WSS147','p2'),('WSS148','p2'),('WSS162','p2'),('WSS164','p2'),('WSS169','p2'),('WSS172','p2'),('WSS18','p2'),('WSS183','p2'),('WSS187','p2'),('WSS188','p2'),('WSS19','p2'),('WSS190','p2'),('WSS195','p2'),('WSS2','p2'),('WSS206','p2'),('WSS208','p2'),('WSS211','p2'),('WSS212','p2'),('WSS213','p2'),('WSS221','p2'),('WSS222','p2'),('WSS229','p2'),('WSS230','p2'),('WSS231','p2'),('WSS236','p2'),('WSS239','p2'),('WSS24','p2'),('WSS241','p2'),('WSS242','p2'),('WSS252','p2'),('WSS254','p2'),('WSS260','p2'),('WSS266','p2'),('WSS269','p2'),('WSS272','p2'),('WSS275','p2'),('WSS279','p2'),('WSS28','p2'),('WSS280','p2'),('WSS287','p2'),('WSS292','p2'),('WSS294','p2'),('WSS295','p2'),('WSS3','p2'),('WSS30','p2'),('WSS31','p2'),('WSS32','p2'),('WSS41','p2'),('WSS44','p2'),('WSS47','p2'),('WSS49','p2'),('WSS5','p2'),('WSS50','p2'),('WSS54','p2'),('WSS55','p2'),('WSS76','p2'),('WSS77','p2'),('WSS78','p2'),('WSS79','p2'),('WSS8','p2'),('WSS80','p2'),('WSS99','p2'),('WSS100','p20'),('WSS103','p20'),('WSS11','p20'),('WSS110','p20'),('WSS113','p20'),('WSS125','p20'),('WSS137','p20'),('WSS141','p20'),('WSS143','p20'),('WSS145','p20'),('WSS15','p20'),('WSS161','p20'),('WSS163','p20'),('WSS170','p20'),('WSS176','p20'),('WSS177','p20'),('WSS18','p20'),('WSS185','p20'),('WSS186','p20'),('WSS188','p20'),('WSS190','p20'),('WSS197','p20'),('WSS204','p20'),('WSS207','p20'),('WSS212','p20'),('WSS217','p20'),('WSS220','p20'),('WSS222','p20'),('WSS225','p20'),('WSS226','p20'),('WSS236','p20'),('WSS250','p20'),('WSS258','p20'),('WSS259','p20'),('WSS266','p20'),('WSS267','p20'),('WSS274','p20'),('WSS276','p20'),('WSS28','p20'),('WSS284','p20'),('WSS294','p20'),('WSS3','p20'),('WSS40','p20'),('WSS42','p20'),('WSS46','p20'),('WSS49','p20'),('WSS51','p20'),('WSS52','p20'),('WSS55','p20'),('WSS56','p20'),('WSS65','p20'),('WSS69','p20'),('WSS7','p20'),('WSS70','p20'),('WSS83','p20'),('WSS86','p20'),('WSS87','p20'),('WSS89','p20'),('WSS9','p20'),('WSS97','p20'),('WSS99','p20'),('WSS101','p21'),('WSS109','p21'),('WSS114','p21'),('WSS118','p21'),('WSS119','p21'),('WSS126','p21'),('WSS13','p21'),('WSS130','p21'),('WSS139','p21'),('WSS144','p21'),('WSS151','p21'),('WSS155','p21'),('WSS159','p21'),('WSS162','p21'),('WSS169','p21'),('WSS171','p21'),('WSS177','p21'),('WSS185','p21'),('WSS188','p21'),('WSS189','p21'),('WSS191','p21'),('WSS193','p21'),('WSS194','p21'),('WSS196','p21'),('WSS198','p21'),('WSS200','p21'),('WSS205','p21'),('WSS210','p21'),('WSS214','p21'),('WSS219','p21'),('WSS224','p21'),('WSS227','p21'),('WSS230','p21'),('WSS237','p21'),('WSS244','p21'),('WSS245','p21'),('WSS246','p21'),('WSS247','p21'),('WSS252','p21'),('WSS254','p21'),('WSS263','p21'),('WSS267','p21'),('WSS268','p21'),('WSS27','p21'),('WSS270','p21'),('WSS277','p21'),('WSS286','p21'),('WSS29','p21'),('WSS290','p21'),('WSS291','p21'),('WSS293','p21'),('WSS294','p21'),('WSS295','p21'),('WSS297','p21'),('WSS35','p21'),('WSS36','p21'),('WSS43','p21'),('WSS47','p21'),('WSS49','p21'),('WSS53','p21'),('WSS57','p21'),('WSS62','p21'),('WSS64','p21'),('WSS66','p21'),('WSS68','p21'),('WSS70','p21'),('WSS71','p21'),('WSS8','p21'),('WSS80','p21'),('WSS88','p21'),('WSS89','p21'),('WSS90','p21'),('WSS92','p21'),('WSS101','p22'),('WSS105','p22'),('WSS108','p22'),('WSS110','p22'),('WSS119','p22'),('WSS12','p22'),('WSS120','p22'),('WSS124','p22'),('WSS128','p22'),('WSS132','p22'),('WSS134','p22'),('WSS137','p22'),('WSS150','p22'),('WSS155','p22'),('WSS161','p22'),('WSS165','p22'),('WSS167','p22'),('WSS168','p22'),('WSS183','p22'),('WSS184','p22'),('WSS19','p22'),('WSS190','p22'),('WSS194','p22'),('WSS198','p22'),('WSS199','p22'),('WSS2','p22'),('WSS20','p22'),('WSS205','p22'),('WSS207','p22'),('WSS208','p22'),('WSS215','p22'),('WSS217','p22'),('WSS223','p22'),('WSS226','p22'),('WSS227','p22'),('WSS229','p22'),('WSS24','p22'),('WSS241','p22'),('WSS242','p22'),('WSS246','p22'),('WSS249','p22'),('WSS251','p22'),('WSS259','p22'),('WSS261','p22'),('WSS265','p22'),('WSS272','p22'),('WSS276','p22'),('WSS277','p22'),('WSS280','p22'),('WSS284','p22'),('WSS287','p22'),('WSS289','p22'),('WSS294','p22'),('WSS30','p22'),('WSS31','p22'),('WSS36','p22'),('WSS37','p22'),('WSS4','p22'),('WSS41','p22'),('WSS48','p22'),('WSS55','p22'),('WSS63','p22'),('WSS64','p22'),('WSS66','p22'),('WSS67','p22'),('WSS7','p22'),('WSS77','p22'),('WSS78','p22'),('WSS85','p22'),('WSS86','p22'),('WSS90','p22'),('WSS92','p22'),('WSS10','p23'),('WSS104','p23'),('WSS105','p23'),('WSS106','p23'),('WSS11','p23'),('WSS115','p23'),('WSS122','p23'),('WSS124','p23'),('WSS131','p23'),('WSS133','p23'),('WSS134','p23'),('WSS138','p23'),('WSS142','p23'),('WSS155','p23'),('WSS156','p23'),('WSS157','p23'),('WSS161','p23'),('WSS165','p23'),('WSS166','p23'),('WSS17','p23'),('WSS170','p23'),('WSS171','p23'),('WSS173','p23'),('WSS176','p23'),('WSS182','p23'),('WSS197','p23'),('WSS201','p23'),('WSS202','p23'),('WSS21','p23'),('WSS214','p23'),('WSS217','p23'),('WSS219','p23'),('WSS22','p23'),('WSS221','p23'),('WSS222','p23'),('WSS226','p23'),('WSS228','p23'),('WSS230','p23'),('WSS234','p23'),('WSS238','p23'),('WSS242','p23'),('WSS248','p23'),('WSS252','p23'),('WSS257','p23'),('WSS259','p23'),('WSS26','p23'),('WSS263','p23'),('WSS269','p23'),('WSS27','p23'),('WSS270','p23'),('WSS273','p23'),('WSS278','p23'),('WSS29','p23'),('WSS290','p23'),('WSS298','p23'),('WSS3','p23'),('WSS30','p23'),('WSS32','p23'),('WSS34','p23'),('WSS38','p23'),('WSS40','p23'),('WSS44','p23'),('WSS50','p23'),('WSS56','p23'),('WSS65','p23'),('WSS70','p23'),('WSS71','p23'),('WSS73','p23'),('WSS82','p23'),('WSS84','p23'),('WSS88','p23'),('WSS90','p23'),('WSS97','p23'),('WSS100','p24'),('WSS104','p24'),('WSS120','p24'),('WSS127','p24'),('WSS139','p24'),('WSS141','p24'),('WSS145','p24'),('WSS146','p24'),('WSS150','p24'),('WSS151','p24'),('WSS152','p24'),('WSS156','p24'),('WSS163','p24'),('WSS167','p24'),('WSS174','p24'),('WSS175','p24'),('WSS180','p24'),('WSS186','p24'),('WSS19','p24'),('WSS192','p24'),('WSS197','p24'),('WSS20','p24'),('WSS203','p24'),('WSS206','p24'),('WSS208','p24'),('WSS210','p24'),('WSS213','p24'),('WSS216','p24'),('WSS223','p24'),('WSS225','p24'),('WSS228','p24'),('WSS229','p24'),('WSS231','p24'),('WSS232','p24'),('WSS235','p24'),('WSS236','p24'),('WSS241','p24'),('WSS244','p24'),('WSS246','p24'),('WSS256','p24'),('WSS261','p24'),('WSS266','p24'),('WSS271','p24'),('WSS276','p24'),('WSS279','p24'),('WSS28','p24'),('WSS286','p24'),('WSS288','p24'),('WSS290','p24'),('WSS291','p24'),('WSS292','p24'),('WSS294','p24'),('WSS297','p24'),('WSS31','p24'),('WSS35','p24'),('WSS36','p24'),('WSS39','p24'),('WSS40','p24'),('WSS42','p24'),('WSS46','p24'),('WSS47','p24'),('WSS52','p24'),('WSS59','p24'),('WSS61','p24'),('WSS64','p24'),('WSS73','p24'),('WSS78','p24'),('WSS81','p24'),('WSS88','p24'),('WSS104','p25'),('WSS111','p25'),('WSS112','p25'),('WSS113','p25'),('WSS116','p25'),('WSS125','p25'),('WSS13','p25'),('WSS148','p25'),('WSS149','p25'),('WSS152','p25'),('WSS154','p25'),('WSS158','p25'),('WSS164','p25'),('WSS166','p25'),('WSS168','p25'),('WSS173','p25'),('WSS174','p25'),('WSS176','p25'),('WSS178','p25'),('WSS182','p25'),('WSS187','p25'),('WSS188','p25'),('WSS192','p25'),('WSS196','p25'),('WSS203','p25'),('WSS204','p25'),('WSS206','p25'),('WSS207','p25'),('WSS21','p25'),('WSS215','p25'),('WSS216','p25'),('WSS217','p25'),('WSS218','p25'),('WSS220','p25'),('WSS223','p25'),('WSS226','p25'),('WSS229','p25'),('WSS234','p25'),('WSS235','p25'),('WSS237','p25'),('WSS240','p25'),('WSS244','p25'),('WSS248','p25'),('WSS249','p25'),('WSS250','p25'),('WSS252','p25'),('WSS264','p25'),('WSS267','p25'),('WSS270','p25'),('WSS271','p25'),('WSS272','p25'),('WSS275','p25'),('WSS284','p25'),('WSS294','p25'),('WSS297','p25'),('WSS300','p25'),('WSS31','p25'),('WSS43','p25'),('WSS47','p25'),('WSS49','p25'),('WSS56','p25'),('WSS57','p25'),('WSS63','p25'),('WSS64','p25'),('WSS65','p25'),('WSS66','p25'),('WSS67','p25'),('WSS69','p25'),('WSS72','p25'),('WSS79','p25'),('WSS83','p25'),('WSS91','p25'),('WSS95','p25'),('WSS96','p25'),('WSS98','p25'),('WSS10','p26'),('WSS104','p26'),('WSS105','p26'),('WSS110','p26'),('WSS117','p26'),('WSS129','p26'),('WSS135','p26'),('WSS137','p26'),('WSS140','p26'),('WSS143','p26'),('WSS158','p26'),('WSS16','p26'),('WSS160','p26'),('WSS164','p26'),('WSS177','p26'),('WSS179','p26'),('WSS183','p26'),('WSS184','p26'),('WSS192','p26'),('WSS193','p26'),('WSS195','p26'),('WSS200','p26'),('WSS207','p26'),('WSS22','p26'),('WSS220','p26'),('WSS229','p26'),('WSS230','p26'),('WSS235','p26'),('WSS240','p26'),('WSS242','p26'),('WSS245','p26'),('WSS252','p26'),('WSS262','p26'),('WSS264','p26'),('WSS268','p26'),('WSS270','p26'),('WSS271','p26'),('WSS284','p26'),('WSS288','p26'),('WSS289','p26'),('WSS29','p26'),('WSS299','p26'),('WSS33','p26'),('WSS39','p26'),('WSS42','p26'),('WSS46','p26'),('WSS48','p26'),('WSS51','p26'),('WSS55','p26'),('WSS57','p26'),('WSS60','p26'),('WSS61','p26'),('WSS63','p26'),('WSS64','p26'),('WSS72','p26'),('WSS77','p26'),('WSS78','p26'),('WSS81','p26'),('WSS85','p26'),('WSS91','p26'),('WSS93','p26'),('WSS94','p26'),('WSS95','p26'),('WSS96','p26'),('WSS101','p27'),('WSS109','p27'),('WSS110','p27'),('WSS115','p27'),('WSS116','p27'),('WSS121','p27'),('WSS122','p27'),('WSS13','p27'),('WSS132','p27'),('WSS14','p27'),('WSS145','p27'),('WSS164','p27'),('WSS169','p27'),('WSS17','p27'),('WSS18','p27'),('WSS185','p27'),('WSS19','p27'),('WSS190','p27'),('WSS198','p27'),('WSS199','p27'),('WSS202','p27'),('WSS204','p27'),('WSS213','p27'),('WSS216','p27'),('WSS226','p27'),('WSS227','p27'),('WSS232','p27'),('WSS233','p27'),('WSS237','p27'),('WSS238','p27'),('WSS26','p27'),('WSS260','p27'),('WSS262','p27'),('WSS266','p27'),('WSS272','p27'),('WSS273','p27'),('WSS280','p27'),('WSS283','p27'),('WSS286','p27'),('WSS29','p27'),('WSS291','p27'),('WSS295','p27'),('WSS296','p27'),('WSS34','p27'),('WSS36','p27'),('WSS37','p27'),('WSS46','p27'),('WSS52','p27'),('WSS58','p27'),('WSS63','p27'),('WSS68','p27'),('WSS7','p27'),('WSS83','p27'),('WSS87','p27'),('WSS9','p27'),('WSS97','p27'),('WSS1','p28'),('WSS10','p28'),('WSS102','p28'),('WSS103','p28'),('WSS11','p28'),('WSS111','p28'),('WSS112','p28'),('WSS114','p28'),('WSS117','p28'),('WSS120','p28'),('WSS122','p28'),('WSS124','p28'),('WSS126','p28'),('WSS139','p28'),('WSS140','p28'),('WSS143','p28'),('WSS144','p28'),('WSS148','p28'),('WSS149','p28'),('WSS151','p28'),('WSS153','p28'),('WSS154','p28'),('WSS157','p28'),('WSS158','p28'),('WSS160','p28'),('WSS167','p28'),('WSS168','p28'),('WSS17','p28'),('WSS170','p28'),('WSS171','p28'),('WSS175','p28'),('WSS18','p28'),('WSS184','p28'),('WSS186','p28'),('WSS187','p28'),('WSS196','p28'),('WSS200','p28'),('WSS201','p28'),('WSS205','p28'),('WSS211','p28'),('WSS215','p28'),('WSS218','p28'),('WSS222','p28'),('WSS229','p28'),('WSS237','p28'),('WSS238','p28'),('WSS243','p28'),('WSS247','p28'),('WSS248','p28'),('WSS250','p28'),('WSS255','p28'),('WSS257','p28'),('WSS260','p28'),('WSS268','p28'),('WSS278','p28'),('WSS283','p28'),('WSS289','p28'),('WSS290','p28'),('WSS298','p28'),('WSS32','p28'),('WSS40','p28'),('WSS50','p28'),('WSS53','p28'),('WSS62','p28'),('WSS64','p28'),('WSS68','p28'),('WSS69','p28'),('WSS74','p28'),('WSS78','p28'),('WSS79','p28'),('WSS81','p28'),('WSS89','p28'),('WSS98','p28'),('WSS10','p29'),('WSS109','p29'),('WSS123','p29'),('WSS125','p29'),('WSS131','p29'),('WSS139','p29'),('WSS147','p29'),('WSS149','p29'),('WSS153','p29'),('WSS155','p29'),('WSS164','p29'),('WSS165','p29'),('WSS17','p29'),('WSS171','p29'),('WSS172','p29'),('WSS176','p29'),('WSS177','p29'),('WSS178','p29'),('WSS179','p29'),('WSS180','p29'),('WSS181','p29'),('WSS189','p29'),('WSS190','p29'),('WSS199','p29'),('WSS2','p29'),('WSS20','p29'),('WSS201','p29'),('WSS202','p29'),('WSS203','p29'),('WSS207','p29'),('WSS211','p29'),('WSS215','p29'),('WSS216','p29'),('WSS221','p29'),('WSS223','p29'),('WSS232','p29'),('WSS235','p29'),('WSS244','p29'),('WSS250','p29'),('WSS260','p29'),('WSS262','p29'),('WSS269','p29'),('WSS271','p29'),('WSS28','p29'),('WSS286','p29'),('WSS296','p29'),('WSS30','p29'),('WSS39','p29'),('WSS45','p29'),('WSS48','p29'),('WSS49','p29'),('WSS5','p29'),('WSS56','p29'),('WSS57','p29'),('WSS59','p29'),('WSS6','p29'),('WSS60','p29'),('WSS63','p29'),('WSS69','p29'),('WSS72','p29'),('WSS92','p29'),('WSS97','p29'),('WSS99','p29'),('WSS100','p3'),('WSS105','p3'),('WSS107','p3'),('WSS114','p3'),('WSS12','p3'),('WSS121','p3'),('WSS122','p3'),('WSS124','p3'),('WSS127','p3'),('WSS130','p3'),('WSS132','p3'),('WSS135','p3'),('WSS137','p3'),('WSS14','p3'),('WSS142','p3'),('WSS144','p3'),('WSS145','p3'),('WSS147','p3'),('WSS148','p3'),('WSS149','p3'),('WSS150','p3'),('WSS154','p3'),('WSS156','p3'),('WSS16','p3'),('WSS163','p3'),('WSS169','p3'),('WSS183','p3'),('WSS187','p3'),('WSS194','p3'),('WSS197','p3'),('WSS198','p3'),('WSS202','p3'),('WSS210','p3'),('WSS220','p3'),('WSS23','p3'),('WSS231','p3'),('WSS232','p3'),('WSS235','p3'),('WSS24','p3'),('WSS246','p3'),('WSS248','p3'),('WSS257','p3'),('WSS261','p3'),('WSS263','p3'),('WSS265','p3'),('WSS271','p3'),('WSS272','p3'),('WSS274','p3'),('WSS275','p3'),('WSS280','p3'),('WSS291','p3'),('WSS295','p3'),('WSS30','p3'),('WSS33','p3'),('WSS34','p3'),('WSS38','p3'),('WSS39','p3'),('WSS4','p3'),('WSS41','p3'),('WSS5','p3'),('WSS51','p3'),('WSS60','p3'),('WSS62','p3'),('WSS65','p3'),('WSS71','p3'),('WSS72','p3'),('WSS75','p3'),('WSS80','p3'),('WSS87','p3'),('WSS88','p3'),('WSS89','p3'),('WSS9','p3'),('WSS92','p3'),('WSS94','p3'),('WSS95','p3'),('WSS104','p30'),('WSS109','p30'),('WSS11','p30'),('WSS116','p30'),('WSS127','p30'),('WSS15','p30'),('WSS150','p30'),('WSS155','p30'),('WSS160','p30'),('WSS163','p30'),('WSS165','p30'),('WSS168','p30'),('WSS172','p30'),('WSS174','p30'),('WSS178','p30'),('WSS18','p30'),('WSS180','p30'),('WSS186','p30'),('WSS188','p30'),('WSS189','p30'),('WSS193','p30'),('WSS197','p30'),('WSS201','p30'),('WSS203','p30'),('WSS204','p30'),('WSS212','p30'),('WSS218','p30'),('WSS221','p30'),('WSS224','p30'),('WSS226','p30'),('WSS234','p30'),('WSS243','p30'),('WSS246','p30'),('WSS25','p30'),('WSS254','p30'),('WSS255','p30'),('WSS264','p30'),('WSS265','p30'),('WSS267','p30'),('WSS277','p30'),('WSS278','p30'),('WSS279','p30'),('WSS280','p30'),('WSS286','p30'),('WSS29','p30'),('WSS297','p30'),('WSS30','p30'),('WSS300','p30'),('WSS46','p30'),('WSS47','p30'),('WSS54','p30'),('WSS59','p30'),('WSS62','p30'),('WSS68','p30'),('WSS72','p30'),('WSS76','p30'),('WSS90','p30'),('WSS91','p30'),('WSS94','p30'),('WSS1','p4'),('WSS100','p4'),('WSS106','p4'),('WSS107','p4'),('WSS109','p4'),('WSS110','p4'),('WSS111','p4'),('WSS113','p4'),('WSS116','p4'),('WSS118','p4'),('WSS120','p4'),('WSS128','p4'),('WSS133','p4'),('WSS137','p4'),('WSS14','p4'),('WSS140','p4'),('WSS153','p4'),('WSS156','p4'),('WSS157','p4'),('WSS158','p4'),('WSS16','p4'),('WSS161','p4'),('WSS162','p4'),('WSS165','p4'),('WSS168','p4'),('WSS170','p4'),('WSS173','p4'),('WSS175','p4'),('WSS176','p4'),('WSS178','p4'),('WSS190','p4'),('WSS192','p4'),('WSS203','p4'),('WSS205','p4'),('WSS213','p4'),('WSS217','p4'),('WSS22','p4'),('WSS223','p4'),('WSS229','p4'),('WSS234','p4'),('WSS239','p4'),('WSS247','p4'),('WSS253','p4'),('WSS257','p4'),('WSS258','p4'),('WSS26','p4'),('WSS264','p4'),('WSS27','p4'),('WSS273','p4'),('WSS279','p4'),('WSS281','p4'),('WSS284','p4'),('WSS285','p4'),('WSS286','p4'),('WSS295','p4'),('WSS298','p4'),('WSS299','p4'),('WSS33','p4'),('WSS34','p4'),('WSS41','p4'),('WSS42','p4'),('WSS51','p4'),('WSS54','p4'),('WSS58','p4'),('WSS68','p4'),('WSS69','p4'),('WSS78','p4'),('WSS84','p4'),('WSS85','p4'),('WSS96','p4'),('WSS12','p5'),('WSS126','p5'),('WSS127','p5'),('WSS128','p5'),('WSS13','p5'),('WSS133','p5'),('WSS135','p5'),('WSS136','p5'),('WSS141','p5'),('WSS144','p5'),('WSS150','p5'),('WSS16','p5'),('WSS168','p5'),('WSS170','p5'),('WSS179','p5'),('WSS183','p5'),('WSS185','p5'),('WSS197','p5'),('WSS214','p5'),('WSS216','p5'),('WSS230','p5'),('WSS237','p5'),('WSS243','p5'),('WSS245','p5'),('WSS25','p5'),('WSS251','p5'),('WSS259','p5'),('WSS262','p5'),('WSS264','p5'),('WSS265','p5'),('WSS278','p5'),('WSS287','p5'),('WSS292','p5'),('WSS293','p5'),('WSS32','p5'),('WSS35','p5'),('WSS36','p5'),('WSS4','p5'),('WSS48','p5'),('WSS49','p5'),('WSS74','p5'),('WSS77','p5'),('WSS83','p5'),('WSS85','p5'),('WSS100','p6'),('WSS101','p6'),('WSS106','p6'),('WSS113','p6'),('WSS114','p6'),('WSS115','p6'),('WSS12','p6'),('WSS124','p6'),('WSS125','p6'),('WSS126','p6'),('WSS127','p6'),('WSS128','p6'),('WSS133','p6'),('WSS135','p6'),('WSS136','p6'),('WSS142','p6'),('WSS145','p6'),('WSS146','p6'),('WSS15','p6'),('WSS154','p6'),('WSS167','p6'),('WSS169','p6'),('WSS171','p6'),('WSS172','p6'),('WSS175','p6'),('WSS177','p6'),('WSS183','p6'),('WSS184','p6'),('WSS188','p6'),('WSS19','p6'),('WSS191','p6'),('WSS193','p6'),('WSS195','p6'),('WSS198','p6'),('WSS202','p6'),('WSS206','p6'),('WSS208','p6'),('WSS21','p6'),('WSS212','p6'),('WSS216','p6'),('WSS219','p6'),('WSS220','p6'),('WSS226','p6'),('WSS234','p6'),('WSS241','p6'),('WSS243','p6'),('WSS248','p6'),('WSS253','p6'),('WSS257','p6'),('WSS26','p6'),('WSS265','p6'),('WSS27','p6'),('WSS270','p6'),('WSS276','p6'),('WSS278','p6'),('WSS279','p6'),('WSS282','p6'),('WSS283','p6'),('WSS285','p6'),('WSS290','p6'),('WSS291','p6'),('WSS295','p6'),('WSS298','p6'),('WSS35','p6'),('WSS36','p6'),('WSS37','p6'),('WSS52','p6'),('WSS54','p6'),('WSS61','p6'),('WSS67','p6'),('WSS68','p6'),('WSS69','p6'),('WSS7','p6'),('WSS73','p6'),('WSS74','p6'),('WSS76','p6'),('WSS77','p6'),('WSS8','p6'),('WSS81','p6'),('WSS84','p6'),('WSS87','p6'),('WSS88','p6'),('WSS93','p6'),('WSS95','p6'),('WSS97','p6'),('WSS1','p7'),('WSS101','p7'),('WSS105','p7'),('WSS108','p7'),('WSS111','p7'),('WSS117','p7'),('WSS119','p7'),('WSS123','p7'),('WSS132','p7'),('WSS134','p7'),('WSS136','p7'),('WSS144','p7'),('WSS146','p7'),('WSS147','p7'),('WSS148','p7'),('WSS15','p7'),('WSS154','p7'),('WSS159','p7'),('WSS160','p7'),('WSS162','p7'),('WSS169','p7'),('WSS170','p7'),('WSS173','p7'),('WSS175','p7'),('WSS181','p7'),('WSS182','p7'),('WSS185','p7'),('WSS186','p7'),('WSS187','p7'),('WSS195','p7'),('WSS21','p7'),('WSS211','p7'),('WSS212','p7'),('WSS214','p7'),('WSS215','p7'),('WSS221','p7'),('WSS224','p7'),('WSS228','p7'),('WSS247','p7'),('WSS249','p7'),('WSS255','p7'),('WSS256','p7'),('WSS257','p7'),('WSS261','p7'),('WSS263','p7'),('WSS269','p7'),('WSS280','p7'),('WSS282','p7'),('WSS283','p7'),('WSS285','p7'),('WSS286','p7'),('WSS288','p7'),('WSS291','p7'),('WSS297','p7'),('WSS3','p7'),('WSS300','p7'),('WSS31','p7'),('WSS35','p7'),('WSS45','p7'),('WSS47','p7'),('WSS48','p7'),('WSS56','p7'),('WSS58','p7'),('WSS59','p7'),('WSS6','p7'),('WSS66','p7'),('WSS70','p7'),('WSS71','p7'),('WSS72','p7'),('WSS74','p7'),('WSS75','p7'),('WSS79','p7'),('WSS8','p7'),('WSS80','p7'),('WSS95','p7'),('WSS99','p7'),('WSS1','p8'),('WSS102','p8'),('WSS106','p8'),('WSS118','p8'),('WSS12','p8'),('WSS120','p8'),('WSS124','p8'),('WSS127','p8'),('WSS129','p8'),('WSS130','p8'),('WSS131','p8'),('WSS135','p8'),('WSS136','p8'),('WSS138','p8'),('WSS139','p8'),('WSS140','p8'),('WSS149','p8'),('WSS152','p8'),('WSS154','p8'),('WSS155','p8'),('WSS158','p8'),('WSS159','p8'),('WSS16','p8'),('WSS166','p8'),('WSS172','p8'),('WSS174','p8'),('WSS176','p8'),('WSS183','p8'),('WSS192','p8'),('WSS196','p8'),('WSS197','p8'),('WSS2','p8'),('WSS200','p8'),('WSS202','p8'),('WSS209','p8'),('WSS21','p8'),('WSS217','p8'),('WSS218','p8'),('WSS22','p8'),('WSS220','p8'),('WSS222','p8'),('WSS224','p8'),('WSS23','p8'),('WSS233','p8'),('WSS234','p8'),('WSS24','p8'),('WSS241','p8'),('WSS242','p8'),('WSS249','p8'),('WSS261','p8'),('WSS266','p8'),('WSS28','p8'),('WSS280','p8'),('WSS282','p8'),('WSS283','p8'),('WSS292','p8'),('WSS293','p8'),('WSS31','p8'),('WSS34','p8'),('WSS36','p8'),('WSS38','p8'),('WSS42','p8'),('WSS43','p8'),('WSS52','p8'),('WSS55','p8'),('WSS6','p8'),('WSS67','p8'),('WSS7','p8'),('WSS73','p8'),('WSS82','p8'),('WSS83','p8'),('WSS9','p8'),('WSS91','p8'),('WSS95','p8'),('WSS96','p8'),('WSS101','p9'),('WSS107','p9'),('WSS113','p9'),('WSS121','p9'),('WSS122','p9'),('WSS124','p9'),('WSS129','p9'),('WSS133','p9'),('WSS134','p9'),('WSS135','p9'),('WSS152','p9'),('WSS153','p9'),('WSS154','p9'),('WSS159','p9'),('WSS160','p9'),('WSS161','p9'),('WSS165','p9'),('WSS168','p9'),('WSS174','p9'),('WSS175','p9'),('WSS176','p9'),('WSS191','p9'),('WSS194','p9'),('WSS20','p9'),('WSS203','p9'),('WSS206','p9'),('WSS209','p9'),('WSS212','p9'),('WSS218','p9'),('WSS227','p9'),('WSS228','p9'),('WSS23','p9'),('WSS242','p9'),('WSS245','p9'),('WSS251','p9'),('WSS253','p9'),('WSS255','p9'),('WSS257','p9'),('WSS258','p9'),('WSS262','p9'),('WSS268','p9'),('WSS270','p9'),('WSS273','p9'),('WSS276','p9'),('WSS278','p9'),('WSS282','p9'),('WSS287','p9'),('WSS288','p9'),('WSS291','p9'),('WSS292','p9'),('WSS293','p9'),('WSS295','p9'),('WSS296','p9'),('WSS297','p9'),('WSS33','p9'),('WSS46','p9'),('WSS5','p9'),('WSS52','p9'),('WSS56','p9'),('WSS58','p9'),('WSS59','p9'),('WSS61','p9'),('WSS66','p9'),('WSS73','p9'),('WSS81','p9'),('WSS86','p9'),('WSS87','p9'),('WSS92','p9'),('WSS96','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS282'),(1,2,'WSS33'),(1,3,'WSS106'),(2,1,'WSS105'),(2,2,'WSS27'),(2,3,'WSS103'),(3,1,'WSS283'),(3,1,'WSS44'),(3,2,'WSS30'),(4,1,'WSS81'),(4,2,'WSS264'),(5,1,'WSS255'),(5,1,'WSS275'),(5,2,'WSS173'),(6,1,'WSS284'),(6,2,'WSS245'),(6,2,'WSS26'),(7,1,'WSS222'),(7,2,'WSS43'),(7,2,'WSS7'),(8,1,'WSS105'),(8,2,'WSS246'),(8,2,'WSS295'),(9,1,'WSS260'),(9,2,'WSS240'),(10,1,'WSS101'),(10,2,'WSS37'),(10,2,'WSS45'),(11,1,'WSS289'),(11,2,'WSS230'),(12,1,'WSS106'),(12,1,'WSS152'),(13,1,'WSS246'),(13,2,'WSS291'),(14,1,'WSS29'),(14,1,'WSS6'),(14,2,'WSS39'),(15,1,'WSS9'),(15,2,'WSS297'),(15,3,'WSS32'),(16,1,'WSS44'),(16,1,'WSS6'),(16,2,'WSS36'),(17,1,'WSS12'),(17,2,'WSS298'),(17,2,'WSS7'),(18,1,'WSS288'),(18,2,'WSS29'),(18,3,'WSS283'),(19,1,'WSS21'),(19,2,'WSS279'),(20,1,'WSS290'),(20,2,'WSS102'),(20,2,'WSS262'),(21,1,'WSS156'),(21,1,'WSS184'),(22,1,'WSS246'),(22,2,'WSS101'),(22,3,'WSS43'),(23,1,'WSS206'),(23,1,'WSS295'),(24,1,'WSS185'),(24,2,'WSS32'),(25,1,'WSS14'),(25,2,'WSS249'),(26,1,'WSS24'),(26,2,'WSS20'),(26,3,'WSS48'),(27,1,'WSS22'),(27,2,'WSS43'),(27,3,'WSS106'),(28,1,'WSS191'),(28,1,'WSS264'),(29,1,'WSS10'),(29,2,'WSS240'),(29,3,'WSS256'),(30,1,'WSS106'),(30,1,'WSS38'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-07-05 23:27:43
