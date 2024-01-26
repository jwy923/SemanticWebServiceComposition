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
INSERT INTO `initialgoalparameter` VALUES (1,'I','p1'),(2,'I','p1'),(4,'I','p1'),(8,'G','p1'),(9,'I','p1'),(10,'G','p1'),(12,'I','p1'),(13,'G','p1'),(14,'I','p1'),(16,'I','p1'),(17,'I','p1'),(18,'I','p1'),(20,'I','p1'),(23,'I','p1'),(24,'G','p1'),(27,'I','p1'),(28,'G','p1'),(29,'I','p1'),(30,'G','p1'),(1,'G','p10'),(3,'I','p10'),(6,'I','p10'),(8,'G','p10'),(14,'I','p10'),(15,'I','p10'),(16,'I','p10'),(18,'G','p10'),(19,'G','p10'),(21,'I','p10'),(3,'I','p11'),(4,'I','p11'),(8,'I','p11'),(10,'I','p11'),(12,'G','p11'),(19,'I','p11'),(20,'G','p11'),(21,'G','p11'),(22,'I','p11'),(23,'G','p11'),(26,'G','p11'),(27,'G','p11'),(29,'I','p11'),(30,'I','p11'),(6,'I','p12'),(8,'G','p12'),(9,'I','p12'),(11,'I','p12'),(14,'I','p12'),(16,'I','p12'),(19,'I','p12'),(21,'G','p12'),(24,'I','p12'),(25,'I','p12'),(27,'I','p12'),(29,'I','p12'),(30,'G','p12'),(1,'G','p13'),(5,'I','p13'),(9,'I','p13'),(15,'I','p13'),(16,'I','p13'),(17,'G','p13'),(18,'G','p13'),(22,'I','p13'),(23,'I','p13'),(24,'I','p13'),(25,'I','p13'),(26,'I','p13'),(27,'G','p13'),(2,'I','p14'),(3,'I','p14'),(5,'I','p14'),(6,'G','p14'),(7,'G','p14'),(13,'I','p14'),(14,'G','p14'),(16,'G','p14'),(19,'G','p14'),(20,'I','p14'),(21,'I','p14'),(23,'I','p14'),(24,'I','p14'),(27,'G','p14'),(30,'I','p14'),(1,'I','p15'),(2,'G','p15'),(4,'I','p15'),(5,'I','p15'),(6,'I','p15'),(7,'I','p15'),(10,'G','p15'),(14,'I','p15'),(19,'G','p15'),(20,'G','p15'),(23,'I','p15'),(25,'G','p15'),(27,'I','p15'),(28,'I','p15'),(29,'I','p15'),(30,'I','p15'),(2,'I','p16'),(3,'G','p16'),(4,'G','p16'),(9,'G','p16'),(10,'G','p16'),(11,'G','p16'),(12,'I','p16'),(14,'I','p16'),(28,'I','p16'),(30,'G','p16'),(2,'I','p17'),(5,'I','p17'),(6,'I','p17'),(10,'I','p17'),(11,'I','p17'),(12,'I','p17'),(13,'G','p17'),(14,'G','p17'),(17,'G','p17'),(18,'I','p17'),(23,'I','p17'),(26,'I','p17'),(28,'G','p17'),(29,'G','p17'),(1,'G','p18'),(2,'I','p18'),(3,'I','p18'),(7,'G','p18'),(10,'G','p18'),(15,'I','p18'),(17,'I','p18'),(24,'I','p18'),(1,'I','p19'),(6,'G','p19'),(12,'I','p19'),(13,'I','p19'),(15,'G','p19'),(17,'I','p19'),(19,'I','p19'),(20,'I','p19'),(21,'G','p19'),(28,'G','p19'),(29,'I','p19'),(30,'G','p19'),(4,'G','p2'),(5,'I','p2'),(7,'I','p2'),(10,'I','p2'),(12,'I','p2'),(13,'I','p2'),(14,'I','p2'),(15,'I','p2'),(20,'G','p2'),(24,'I','p2'),(25,'I','p2'),(26,'G','p2'),(1,'G','p20'),(3,'I','p20'),(4,'I','p20'),(6,'I','p20'),(8,'I','p20'),(9,'G','p20'),(10,'I','p20'),(11,'G','p20'),(15,'I','p20'),(16,'I','p20'),(17,'I','p20'),(20,'I','p20'),(22,'G','p20'),(24,'I','p20'),(25,'I','p20'),(26,'G','p20'),(27,'G','p20'),(29,'I','p20'),(1,'I','p21'),(2,'I','p21'),(3,'I','p21'),(5,'G','p21'),(6,'G','p21'),(8,'G','p21'),(11,'G','p21'),(12,'G','p21'),(13,'I','p21'),(14,'I','p21'),(16,'G','p21'),(17,'I','p21'),(18,'I','p21'),(19,'I','p21'),(22,'I','p21'),(23,'G','p21'),(24,'I','p21'),(25,'G','p21'),(26,'I','p21'),(27,'I','p21'),(28,'I','p21'),(3,'G','p22'),(6,'G','p22'),(7,'I','p22'),(9,'G','p22'),(10,'I','p22'),(11,'I','p22'),(16,'G','p22'),(19,'I','p22'),(21,'G','p22'),(25,'G','p22'),(26,'G','p22'),(28,'I','p22'),(29,'G','p22'),(2,'G','p23'),(3,'G','p23'),(4,'G','p23'),(5,'I','p23'),(8,'I','p23'),(10,'I','p23'),(11,'I','p23'),(20,'G','p23'),(22,'G','p23'),(24,'I','p23'),(25,'G','p23'),(26,'G','p23'),(28,'I','p23'),(30,'G','p23'),(1,'I','p24'),(4,'I','p24'),(5,'I','p24'),(6,'I','p24'),(7,'G','p24'),(9,'I','p24'),(10,'I','p24'),(11,'G','p24'),(12,'G','p24'),(21,'G','p24'),(22,'I','p24'),(23,'G','p24'),(27,'I','p24'),(28,'G','p24'),(29,'G','p24'),(2,'G','p25'),(3,'G','p25'),(6,'I','p25'),(7,'G','p25'),(9,'I','p25'),(11,'I','p25'),(16,'I','p25'),(19,'G','p25'),(21,'I','p25'),(22,'G','p25'),(23,'G','p25'),(25,'I','p25'),(26,'I','p25'),(27,'I','p25'),(29,'G','p25'),(2,'G','p26'),(4,'G','p26'),(5,'G','p26'),(8,'I','p26'),(13,'I','p26'),(14,'I','p26'),(15,'G','p26'),(17,'I','p26'),(18,'I','p26'),(19,'G','p26'),(20,'G','p26'),(25,'I','p26'),(26,'I','p26'),(27,'G','p26'),(30,'I','p26'),(2,'I','p27'),(3,'G','p27'),(4,'G','p27'),(8,'I','p27'),(9,'G','p27'),(13,'G','p27'),(14,'G','p27'),(15,'I','p27'),(17,'G','p27'),(18,'G','p27'),(20,'G','p27'),(21,'I','p27'),(22,'I','p27'),(23,'I','p27'),(26,'I','p27'),(2,'G','p28'),(5,'G','p28'),(7,'G','p28'),(12,'I','p28'),(13,'I','p28'),(17,'I','p28'),(18,'G','p28'),(21,'I','p28'),(23,'G','p28'),(24,'G','p28'),(26,'I','p28'),(29,'G','p28'),(1,'I','p29'),(2,'I','p29'),(3,'G','p29'),(4,'I','p29'),(5,'G','p29'),(7,'I','p29'),(8,'I','p29'),(15,'G','p29'),(16,'G','p29'),(18,'I','p29'),(19,'I','p29'),(21,'I','p29'),(25,'I','p29'),(7,'I','p3'),(8,'I','p3'),(9,'I','p3'),(10,'G','p3'),(11,'G','p3'),(12,'I','p3'),(13,'G','p3'),(14,'G','p3'),(17,'I','p3'),(18,'I','p3'),(19,'I','p3'),(20,'I','p3'),(22,'I','p3'),(29,'I','p3'),(30,'I','p3'),(1,'I','p30'),(4,'I','p30'),(6,'G','p30'),(7,'I','p30'),(8,'G','p30'),(12,'G','p30'),(13,'G','p30'),(15,'I','p30'),(16,'I','p30'),(17,'G','p30'),(18,'I','p30'),(22,'G','p30'),(23,'G','p30'),(25,'I','p30'),(26,'I','p30'),(27,'G','p30'),(28,'I','p30'),(29,'G','p30'),(1,'I','p4'),(8,'I','p4'),(9,'I','p4'),(11,'I','p4'),(12,'I','p4'),(15,'G','p4'),(16,'I','p4'),(17,'G','p4'),(18,'G','p4'),(22,'G','p4'),(25,'G','p4'),(28,'G','p4'),(29,'I','p4'),(4,'I','p5'),(6,'I','p5'),(13,'I','p5'),(15,'G','p5'),(16,'G','p5'),(18,'I','p5'),(21,'I','p5'),(24,'G','p5'),(27,'I','p5'),(28,'G','p5'),(30,'I','p5'),(1,'G','p6'),(3,'I','p6'),(5,'G','p6'),(7,'G','p6'),(9,'G','p6'),(11,'I','p6'),(12,'G','p6'),(13,'I','p6'),(15,'G','p6'),(19,'G','p6'),(20,'I','p6'),(22,'I','p6'),(23,'I','p6'),(25,'G','p6'),(26,'G','p6'),(30,'I','p6'),(1,'G','p7'),(4,'G','p7'),(5,'G','p7'),(6,'G','p7'),(9,'I','p7'),(11,'I','p7'),(13,'G','p7'),(14,'G','p7'),(16,'G','p7'),(19,'I','p7'),(20,'I','p7'),(21,'I','p7'),(22,'I','p7'),(24,'G','p7'),(28,'I','p7'),(5,'I','p8'),(7,'I','p8'),(10,'I','p8'),(11,'G','p8'),(12,'G','p8'),(14,'G','p8'),(15,'I','p8'),(20,'I','p8'),(22,'G','p8'),(24,'G','p8'),(30,'G','p8'),(2,'G','p9'),(3,'I','p9'),(7,'I','p9'),(8,'G','p9'),(9,'G','p9'),(10,'G','p9'),(17,'G','p9'),(18,'G','p9'),(21,'G','p9'),(23,'I','p9'),(24,'G','p9'),(27,'I','p9'),(28,'I','p9'),(30,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS115','p1'),('WSS127','p1'),('WSS129','p1'),('WSS158','p1'),('WSS17','p1'),('WSS187','p1'),('WSS194','p1'),('WSS221','p1'),('WSS228','p1'),('WSS27','p1'),('WSS284','p1'),('WSS290','p1'),('WSS45','p1'),('WSS52','p1'),('WSS62','p1'),('WSS68','p1'),('WSS126','p10'),('WSS149','p10'),('WSS157','p10'),('WSS183','p10'),('WSS190','p10'),('WSS193','p10'),('WSS207','p10'),('WSS210','p10'),('WSS212','p10'),('WSS231','p10'),('WSS246','p10'),('WSS25','p10'),('WSS260','p10'),('WSS268','p10'),('WSS274','p10'),('WSS276','p10'),('WSS283','p10'),('WSS289','p10'),('WSS33','p10'),('WSS52','p10'),('WSS71','p10'),('WSS121','p11'),('WSS124','p11'),('WSS145','p11'),('WSS161','p11'),('WSS162','p11'),('WSS175','p11'),('WSS207','p11'),('WSS225','p11'),('WSS232','p11'),('WSS254','p11'),('WSS285','p11'),('WSS290','p11'),('WSS5','p11'),('WSS74','p11'),('WSS91','p11'),('WSS94','p11'),('WSS95','p11'),('WSS103','p12'),('WSS111','p12'),('WSS119','p12'),('WSS120','p12'),('WSS143','p12'),('WSS159','p12'),('WSS165','p12'),('WSS191','p12'),('WSS204','p12'),('WSS215','p12'),('WSS219','p12'),('WSS225','p12'),('WSS248','p12'),('WSS27','p12'),('WSS280','p12'),('WSS292','p12'),('WSS297','p12'),('WSS30','p12'),('WSS40','p12'),('WSS44','p12'),('WSS74','p12'),('WSS89','p12'),('WSS93','p12'),('WSS100','p13'),('WSS105','p13'),('WSS118','p13'),('WSS140','p13'),('WSS146','p13'),('WSS156','p13'),('WSS184','p13'),('WSS185','p13'),('WSS2','p13'),('WSS201','p13'),('WSS21','p13'),('WSS211','p13'),('WSS220','p13'),('WSS229','p13'),('WSS232','p13'),('WSS279','p13'),('WSS56','p13'),('WSS62','p13'),('WSS63','p13'),('WSS73','p13'),('WSS97','p13'),('WSS104','p14'),('WSS11','p14'),('WSS116','p14'),('WSS127','p14'),('WSS143','p14'),('WSS153','p14'),('WSS16','p14'),('WSS163','p14'),('WSS166','p14'),('WSS171','p14'),('WSS186','p14'),('WSS200','p14'),('WSS213','p14'),('WSS215','p14'),('WSS239','p14'),('WSS252','p14'),('WSS261','p14'),('WSS264','p14'),('WSS271','p14'),('WSS287','p14'),('WSS296','p14'),('WSS4','p14'),('WSS47','p14'),('WSS49','p14'),('WSS98','p14'),('WSS104','p15'),('WSS125','p15'),('WSS14','p15'),('WSS148','p15'),('WSS153','p15'),('WSS160','p15'),('WSS162','p15'),('WSS180','p15'),('WSS181','p15'),('WSS2','p15'),('WSS203','p15'),('WSS238','p15'),('WSS253','p15'),('WSS291','p15'),('WSS298','p15'),('WSS38','p15'),('WSS60','p15'),('WSS66','p15'),('WSS75','p15'),('WSS112','p16'),('WSS119','p16'),('WSS123','p16'),('WSS134','p16'),('WSS165','p16'),('WSS182','p16'),('WSS188','p16'),('WSS198','p16'),('WSS209','p16'),('WSS217','p16'),('WSS245','p16'),('WSS254','p16'),('WSS269','p16'),('WSS271','p16'),('WSS282','p16'),('WSS295','p16'),('WSS299','p16'),('WSS33','p16'),('WSS36','p16'),('WSS4','p16'),('WSS45','p16'),('WSS57','p16'),('WSS70','p16'),('WSS84','p16'),('WSS1','p17'),('WSS10','p17'),('WSS110','p17'),('WSS111','p17'),('WSS13','p17'),('WSS131','p17'),('WSS144','p17'),('WSS145','p17'),('WSS151','p17'),('WSS155','p17'),('WSS19','p17'),('WSS195','p17'),('WSS205','p17'),('WSS212','p17'),('WSS249','p17'),('WSS251','p17'),('WSS266','p17'),('WSS283','p17'),('WSS298','p17'),('WSS34','p17'),('WSS36','p17'),('WSS48','p17'),('WSS63','p17'),('WSS76','p17'),('WSS79','p17'),('WSS83','p17'),('WSS93','p17'),('WSS96','p17'),('WSS98','p17'),('WSS137','p18'),('WSS141','p18'),('WSS147','p18'),('WSS177','p18'),('WSS179','p18'),('WSS226','p18'),('WSS233','p18'),('WSS255','p18'),('WSS263','p18'),('WSS268','p18'),('WSS279','p18'),('WSS286','p18'),('WSS293','p18'),('WSS297','p18'),('WSS38','p18'),('WSS5','p18'),('WSS57','p18'),('WSS81','p18'),('WSS100','p19'),('WSS102','p19'),('WSS139','p19'),('WSS141','p19'),('WSS161','p19'),('WSS184','p19'),('WSS193','p19'),('WSS213','p19'),('WSS22','p19'),('WSS220','p19'),('WSS227','p19'),('WSS236','p19'),('WSS237','p19'),('WSS257','p19'),('WSS288','p19'),('WSS29','p19'),('WSS295','p19'),('WSS46','p19'),('WSS76','p19'),('WSS82','p19'),('WSS87','p19'),('WSS103','p2'),('WSS105','p2'),('WSS109','p2'),('WSS112','p2'),('WSS113','p2'),('WSS118','p2'),('WSS16','p2'),('WSS164','p2'),('WSS175','p2'),('WSS194','p2'),('WSS208','p2'),('WSS233','p2'),('WSS262','p2'),('WSS272','p2'),('WSS278','p2'),('WSS284','p2'),('WSS46','p2'),('WSS6','p2'),('WSS87','p2'),('WSS94','p2'),('WSS122','p20'),('WSS131','p20'),('WSS136','p20'),('WSS155','p20'),('WSS172','p20'),('WSS196','p20'),('WSS206','p20'),('WSS218','p20'),('WSS230','p20'),('WSS235','p20'),('WSS245','p20'),('WSS274','p20'),('WSS42','p20'),('WSS55','p20'),('WSS61','p20'),('WSS90','p20'),('WSS114','p21'),('WSS121','p21'),('WSS147','p21'),('WSS177','p21'),('WSS18','p21'),('WSS199','p21'),('WSS202','p21'),('WSS210','p21'),('WSS218','p21'),('WSS23','p21'),('WSS263','p21'),('WSS280','p21'),('WSS31','p21'),('WSS32','p21'),('WSS65','p21'),('WSS122','p22'),('WSS134','p22'),('WSS137','p22'),('WSS151','p22'),('WSS168','p22'),('WSS189','p22'),('WSS190','p22'),('WSS192','p22'),('WSS198','p22'),('WSS227','p22'),('WSS23','p22'),('WSS259','p22'),('WSS269','p22'),('WSS28','p22'),('WSS285','p22'),('WSS3','p22'),('WSS37','p22'),('WSS43','p22'),('WSS50','p22'),('WSS72','p22'),('WSS82','p22'),('WSS85','p22'),('WSS9','p22'),('WSS10','p23'),('WSS133','p23'),('WSS163','p23'),('WSS168','p23'),('WSS169','p23'),('WSS19','p23'),('WSS230','p23'),('WSS231','p23'),('WSS238','p23'),('WSS250','p23'),('WSS253','p23'),('WSS265','p23'),('WSS275','p23'),('WSS291','p23'),('WSS32','p23'),('WSS42','p23'),('WSS49','p23'),('WSS6','p23'),('WSS95','p23'),('WSS138','p24'),('WSS149','p24'),('WSS150','p24'),('WSS174','p24'),('WSS222','p24'),('WSS244','p24'),('WSS260','p24'),('WSS266','p24'),('WSS287','p24'),('WSS300','p24'),('WSS67','p24'),('WSS77','p24'),('WSS8','p24'),('WSS97','p24'),('WSS110','p25'),('WSS129','p25'),('WSS130','p25'),('WSS139','p25'),('WSS185','p25'),('WSS214','p25'),('WSS234','p25'),('WSS243','p25'),('WSS244','p25'),('WSS246','p25'),('WSS247','p25'),('WSS255','p25'),('WSS26','p25'),('WSS261','p25'),('WSS270','p25'),('WSS273','p25'),('WSS294','p25'),('WSS35','p25'),('WSS58','p25'),('WSS67','p25'),('WSS7','p25'),('WSS90','p25'),('WSS102','p26'),('WSS107','p26'),('WSS11','p26'),('WSS113','p26'),('WSS117','p26'),('WSS167','p26'),('WSS201','p26'),('WSS208','p26'),('WSS211','p26'),('WSS240','p26'),('WSS242','p26'),('WSS296','p26'),('WSS31','p26'),('WSS39','p26'),('WSS51','p26'),('WSS80','p26'),('WSS92','p26'),('WSS99','p26'),('WSS101','p27'),('WSS12','p27'),('WSS152','p27'),('WSS167','p27'),('WSS17','p27'),('WSS18','p27'),('WSS191','p27'),('WSS236','p27'),('WSS241','p27'),('WSS282','p27'),('WSS288','p27'),('WSS289','p27'),('WSS292','p27'),('WSS30','p27'),('WSS47','p27'),('WSS51','p27'),('WSS7','p27'),('WSS70','p27'),('WSS73','p27'),('WSS78','p27'),('WSS108','p28'),('WSS148','p28'),('WSS15','p28'),('WSS170','p28'),('WSS176','p28'),('WSS186','p28'),('WSS197','p28'),('WSS20','p28'),('WSS216','p28'),('WSS221','p28'),('WSS24','p28'),('WSS240','p28'),('WSS272','p28'),('WSS273','p28'),('WSS300','p28'),('WSS34','p28'),('WSS69','p28'),('WSS75','p28'),('WSS109','p29'),('WSS114','p29'),('WSS124','p29'),('WSS128','p29'),('WSS132','p29'),('WSS146','p29'),('WSS166','p29'),('WSS192','p29'),('WSS214','p29'),('WSS224','p29'),('WSS239','p29'),('WSS24','p29'),('WSS241','p29'),('WSS247','p29'),('WSS25','p29'),('WSS50','p29'),('WSS55','p29'),('WSS59','p29'),('WSS69','p29'),('WSS78','p29'),('WSS83','p29'),('WSS12','p3'),('WSS132','p3'),('WSS135','p3'),('WSS136','p3'),('WSS138','p3'),('WSS14','p3'),('WSS156','p3'),('WSS160','p3'),('WSS164','p3'),('WSS169','p3'),('WSS176','p3'),('WSS180','p3'),('WSS197','p3'),('WSS203','p3'),('WSS223','p3'),('WSS229','p3'),('WSS256','p3'),('WSS265','p3'),('WSS3','p3'),('WSS39','p3'),('WSS48','p3'),('WSS65','p3'),('WSS66','p3'),('WSS72','p3'),('WSS79','p3'),('WSS85','p3'),('WSS106','p30'),('WSS128','p30'),('WSS15','p30'),('WSS171','p30'),('WSS172','p30'),('WSS181','p30'),('WSS183','p30'),('WSS200','p30'),('WSS209','p30'),('WSS22','p30'),('WSS235','p30'),('WSS237','p30'),('WSS252','p30'),('WSS281','p30'),('WSS286','p30'),('WSS299','p30'),('WSS43','p30'),('WSS53','p30'),('WSS58','p30'),('WSS64','p30'),('WSS77','p30'),('WSS86','p30'),('WSS106','p4'),('WSS108','p4'),('WSS117','p4'),('WSS130','p4'),('WSS135','p4'),('WSS154','p4'),('WSS187','p4'),('WSS204','p4'),('WSS205','p4'),('WSS21','p4'),('WSS242','p4'),('WSS257','p4'),('WSS259','p4'),('WSS270','p4'),('WSS275','p4'),('WSS278','p4'),('WSS37','p4'),('WSS41','p4'),('WSS61','p4'),('WSS64','p4'),('WSS89','p4'),('WSS101','p5'),('WSS107','p5'),('WSS116','p5'),('WSS125','p5'),('WSS133','p5'),('WSS142','p5'),('WSS154','p5'),('WSS173','p5'),('WSS248','p5'),('WSS251','p5'),('WSS256','p5'),('WSS281','p5'),('WSS29','p5'),('WSS35','p5'),('WSS41','p5'),('WSS59','p5'),('WSS68','p5'),('WSS88','p5'),('WSS99','p5'),('WSS1','p6'),('WSS115','p6'),('WSS123','p6'),('WSS150','p6'),('WSS152','p6'),('WSS157','p6'),('WSS158','p6'),('WSS199','p6'),('WSS202','p6'),('WSS216','p6'),('WSS222','p6'),('WSS224','p6'),('WSS277','p6'),('WSS54','p6'),('WSS84','p6'),('WSS9','p6'),('WSS120','p7'),('WSS13','p7'),('WSS173','p7'),('WSS174','p7'),('WSS178','p7'),('WSS179','p7'),('WSS195','p7'),('WSS206','p7'),('WSS243','p7'),('WSS258','p7'),('WSS267','p7'),('WSS276','p7'),('WSS277','p7'),('WSS28','p7'),('WSS293','p7'),('WSS44','p7'),('WSS53','p7'),('WSS56','p7'),('WSS60','p7'),('WSS86','p7'),('WSS88','p7'),('WSS92','p7'),('WSS126','p8'),('WSS140','p8'),('WSS196','p8'),('WSS223','p8'),('WSS258','p8'),('WSS294','p8'),('WSS54','p8'),('WSS71','p8'),('WSS80','p8'),('WSS144','p9'),('WSS159','p9'),('WSS170','p9'),('WSS178','p9'),('WSS189','p9'),('WSS20','p9'),('WSS219','p9'),('WSS234','p9'),('WSS249','p9'),('WSS250','p9'),('WSS26','p9'),('WSS262','p9'),('WSS264','p9'),('WSS267','p9'),('WSS8','p9'),('WSS81','p9'),('WSS91','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS11','p1'),('WSS114','p1'),('WSS119','p1'),('WSS124','p1'),('WSS125','p1'),('WSS131','p1'),('WSS135','p1'),('WSS143','p1'),('WSS15','p1'),('WSS155','p1'),('WSS157','p1'),('WSS16','p1'),('WSS161','p1'),('WSS162','p1'),('WSS173','p1'),('WSS18','p1'),('WSS182','p1'),('WSS183','p1'),('WSS19','p1'),('WSS196','p1'),('WSS2','p1'),('WSS205','p1'),('WSS207','p1'),('WSS215','p1'),('WSS216','p1'),('WSS222','p1'),('WSS223','p1'),('WSS227','p1'),('WSS229','p1'),('WSS230','p1'),('WSS231','p1'),('WSS233','p1'),('WSS235','p1'),('WSS238','p1'),('WSS240','p1'),('WSS246','p1'),('WSS247','p1'),('WSS250','p1'),('WSS26','p1'),('WSS261','p1'),('WSS262','p1'),('WSS263','p1'),('WSS266','p1'),('WSS275','p1'),('WSS289','p1'),('WSS29','p1'),('WSS290','p1'),('WSS293','p1'),('WSS300','p1'),('WSS31','p1'),('WSS36','p1'),('WSS37','p1'),('WSS39','p1'),('WSS45','p1'),('WSS51','p1'),('WSS53','p1'),('WSS66','p1'),('WSS69','p1'),('WSS7','p1'),('WSS74','p1'),('WSS75','p1'),('WSS76','p1'),('WSS77','p1'),('WSS78','p1'),('WSS79','p1'),('WSS82','p1'),('WSS83','p1'),('WSS87','p1'),('WSS94','p1'),('WSS99','p1'),('WSS1','p10'),('WSS103','p10'),('WSS106','p10'),('WSS108','p10'),('WSS119','p10'),('WSS122','p10'),('WSS130','p10'),('WSS131','p10'),('WSS135','p10'),('WSS136','p10'),('WSS14','p10'),('WSS140','p10'),('WSS141','p10'),('WSS142','p10'),('WSS143','p10'),('WSS147','p10'),('WSS15','p10'),('WSS152','p10'),('WSS162','p10'),('WSS169','p10'),('WSS17','p10'),('WSS171','p10'),('WSS172','p10'),('WSS173','p10'),('WSS175','p10'),('WSS178','p10'),('WSS186','p10'),('WSS191','p10'),('WSS194','p10'),('WSS195','p10'),('WSS203','p10'),('WSS205','p10'),('WSS206','p10'),('WSS21','p10'),('WSS212','p10'),('WSS214','p10'),('WSS215','p10'),('WSS218','p10'),('WSS223','p10'),('WSS226','p10'),('WSS227','p10'),('WSS228','p10'),('WSS239','p10'),('WSS24','p10'),('WSS242','p10'),('WSS243','p10'),('WSS247','p10'),('WSS250','p10'),('WSS257','p10'),('WSS258','p10'),('WSS26','p10'),('WSS265','p10'),('WSS268','p10'),('WSS269','p10'),('WSS27','p10'),('WSS281','p10'),('WSS290','p10'),('WSS298','p10'),('WSS30','p10'),('WSS4','p10'),('WSS40','p10'),('WSS46','p10'),('WSS52','p10'),('WSS53','p10'),('WSS59','p10'),('WSS6','p10'),('WSS62','p10'),('WSS64','p10'),('WSS65','p10'),('WSS74','p10'),('WSS78','p10'),('WSS8','p10'),('WSS80','p10'),('WSS81','p10'),('WSS82','p10'),('WSS83','p10'),('WSS90','p10'),('WSS94','p10'),('WSS95','p10'),('WSS1','p11'),('WSS102','p11'),('WSS103','p11'),('WSS104','p11'),('WSS112','p11'),('WSS115','p11'),('WSS118','p11'),('WSS122','p11'),('WSS127','p11'),('WSS130','p11'),('WSS133','p11'),('WSS138','p11'),('WSS139','p11'),('WSS140','p11'),('WSS142','p11'),('WSS144','p11'),('WSS153','p11'),('WSS154','p11'),('WSS156','p11'),('WSS158','p11'),('WSS166','p11'),('WSS170','p11'),('WSS180','p11'),('WSS181','p11'),('WSS185','p11'),('WSS188','p11'),('WSS189','p11'),('WSS197','p11'),('WSS2','p11'),('WSS203','p11'),('WSS205','p11'),('WSS21','p11'),('WSS211','p11'),('WSS219','p11'),('WSS221','p11'),('WSS222','p11'),('WSS226','p11'),('WSS23','p11'),('WSS233','p11'),('WSS235','p11'),('WSS246','p11'),('WSS251','p11'),('WSS253','p11'),('WSS256','p11'),('WSS267','p11'),('WSS276','p11'),('WSS284','p11'),('WSS295','p11'),('WSS296','p11'),('WSS298','p11'),('WSS32','p11'),('WSS33','p11'),('WSS36','p11'),('WSS38','p11'),('WSS39','p11'),('WSS40','p11'),('WSS47','p11'),('WSS48','p11'),('WSS49','p11'),('WSS5','p11'),('WSS57','p11'),('WSS67','p11'),('WSS70','p11'),('WSS71','p11'),('WSS73','p11'),('WSS74','p11'),('WSS77','p11'),('WSS84','p11'),('WSS87','p11'),('WSS88','p11'),('WSS10','p12'),('WSS102','p12'),('WSS103','p12'),('WSS104','p12'),('WSS105','p12'),('WSS106','p12'),('WSS107','p12'),('WSS110','p12'),('WSS118','p12'),('WSS124','p12'),('WSS129','p12'),('WSS13','p12'),('WSS138','p12'),('WSS139','p12'),('WSS143','p12'),('WSS151','p12'),('WSS158','p12'),('WSS161','p12'),('WSS165','p12'),('WSS169','p12'),('WSS17','p12'),('WSS171','p12'),('WSS172','p12'),('WSS179','p12'),('WSS182','p12'),('WSS185','p12'),('WSS186','p12'),('WSS188','p12'),('WSS197','p12'),('WSS2','p12'),('WSS20','p12'),('WSS201','p12'),('WSS202','p12'),('WSS21','p12'),('WSS212','p12'),('WSS214','p12'),('WSS216','p12'),('WSS217','p12'),('WSS22','p12'),('WSS225','p12'),('WSS228','p12'),('WSS237','p12'),('WSS239','p12'),('WSS240','p12'),('WSS241','p12'),('WSS248','p12'),('WSS27','p12'),('WSS270','p12'),('WSS273','p12'),('WSS280','p12'),('WSS282','p12'),('WSS288','p12'),('WSS295','p12'),('WSS298','p12'),('WSS299','p12'),('WSS39','p12'),('WSS40','p12'),('WSS42','p12'),('WSS5','p12'),('WSS50','p12'),('WSS51','p12'),('WSS54','p12'),('WSS55','p12'),('WSS59','p12'),('WSS64','p12'),('WSS65','p12'),('WSS68','p12'),('WSS69','p12'),('WSS70','p12'),('WSS72','p12'),('WSS78','p12'),('WSS81','p12'),('WSS82','p12'),('WSS85','p12'),('WSS88','p12'),('WSS89','p12'),('WSS90','p12'),('WSS98','p12'),('WSS99','p12'),('WSS100','p13'),('WSS106','p13'),('WSS110','p13'),('WSS115','p13'),('WSS117','p13'),('WSS118','p13'),('WSS119','p13'),('WSS12','p13'),('WSS121','p13'),('WSS129','p13'),('WSS13','p13'),('WSS133','p13'),('WSS137','p13'),('WSS138','p13'),('WSS14','p13'),('WSS163','p13'),('WSS166','p13'),('WSS167','p13'),('WSS168','p13'),('WSS170','p13'),('WSS176','p13'),('WSS191','p13'),('WSS192','p13'),('WSS193','p13'),('WSS194','p13'),('WSS20','p13'),('WSS201','p13'),('WSS203','p13'),('WSS205','p13'),('WSS209','p13'),('WSS217','p13'),('WSS220','p13'),('WSS223','p13'),('WSS227','p13'),('WSS233','p13'),('WSS234','p13'),('WSS236','p13'),('WSS244','p13'),('WSS25','p13'),('WSS254','p13'),('WSS261','p13'),('WSS266','p13'),('WSS272','p13'),('WSS282','p13'),('WSS285','p13'),('WSS286','p13'),('WSS287','p13'),('WSS289','p13'),('WSS295','p13'),('WSS298','p13'),('WSS299','p13'),('WSS31','p13'),('WSS34','p13'),('WSS38','p13'),('WSS39','p13'),('WSS4','p13'),('WSS43','p13'),('WSS44','p13'),('WSS46','p13'),('WSS50','p13'),('WSS58','p13'),('WSS6','p13'),('WSS66','p13'),('WSS67','p13'),('WSS69','p13'),('WSS7','p13'),('WSS73','p13'),('WSS75','p13'),('WSS76','p13'),('WSS77','p13'),('WSS78','p13'),('WSS80','p13'),('WSS96','p13'),('WSS10','p14'),('WSS109','p14'),('WSS113','p14'),('WSS117','p14'),('WSS118','p14'),('WSS121','p14'),('WSS125','p14'),('WSS127','p14'),('WSS129','p14'),('WSS13','p14'),('WSS132','p14'),('WSS135','p14'),('WSS137','p14'),('WSS148','p14'),('WSS152','p14'),('WSS153','p14'),('WSS166','p14'),('WSS167','p14'),('WSS168','p14'),('WSS17','p14'),('WSS170','p14'),('WSS181','p14'),('WSS183','p14'),('WSS190','p14'),('WSS191','p14'),('WSS192','p14'),('WSS196','p14'),('WSS2','p14'),('WSS205','p14'),('WSS206','p14'),('WSS21','p14'),('WSS211','p14'),('WSS213','p14'),('WSS215','p14'),('WSS219','p14'),('WSS221','p14'),('WSS229','p14'),('WSS234','p14'),('WSS237','p14'),('WSS251','p14'),('WSS252','p14'),('WSS262','p14'),('WSS269','p14'),('WSS270','p14'),('WSS274','p14'),('WSS279','p14'),('WSS28','p14'),('WSS283','p14'),('WSS284','p14'),('WSS29','p14'),('WSS290','p14'),('WSS292','p14'),('WSS35','p14'),('WSS36','p14'),('WSS38','p14'),('WSS43','p14'),('WSS49','p14'),('WSS57','p14'),('WSS61','p14'),('WSS62','p14'),('WSS63','p14'),('WSS64','p14'),('WSS66','p14'),('WSS73','p14'),('WSS77','p14'),('WSS86','p14'),('WSS88','p14'),('WSS99','p14'),('WSS100','p15'),('WSS104','p15'),('WSS105','p15'),('WSS109','p15'),('WSS111','p15'),('WSS115','p15'),('WSS129','p15'),('WSS136','p15'),('WSS139','p15'),('WSS143','p15'),('WSS147','p15'),('WSS152','p15'),('WSS155','p15'),('WSS16','p15'),('WSS160','p15'),('WSS164','p15'),('WSS167','p15'),('WSS17','p15'),('WSS174','p15'),('WSS176','p15'),('WSS18','p15'),('WSS180','p15'),('WSS183','p15'),('WSS188','p15'),('WSS189','p15'),('WSS190','p15'),('WSS191','p15'),('WSS20','p15'),('WSS202','p15'),('WSS204','p15'),('WSS206','p15'),('WSS207','p15'),('WSS21','p15'),('WSS210','p15'),('WSS219','p15'),('WSS221','p15'),('WSS224','p15'),('WSS229','p15'),('WSS236','p15'),('WSS239','p15'),('WSS24','p15'),('WSS245','p15'),('WSS247','p15'),('WSS25','p15'),('WSS253','p15'),('WSS255','p15'),('WSS256','p15'),('WSS258','p15'),('WSS260','p15'),('WSS262','p15'),('WSS266','p15'),('WSS269','p15'),('WSS271','p15'),('WSS272','p15'),('WSS281','p15'),('WSS283','p15'),('WSS285','p15'),('WSS298','p15'),('WSS299','p15'),('WSS34','p15'),('WSS37','p15'),('WSS45','p15'),('WSS46','p15'),('WSS48','p15'),('WSS51','p15'),('WSS54','p15'),('WSS55','p15'),('WSS57','p15'),('WSS59','p15'),('WSS6','p15'),('WSS67','p15'),('WSS71','p15'),('WSS75','p15'),('WSS80','p15'),('WSS84','p15'),('WSS9','p15'),('WSS92','p15'),('WSS98','p15'),('WSS1','p16'),('WSS104','p16'),('WSS105','p16'),('WSS109','p16'),('WSS12','p16'),('WSS123','p16'),('WSS125','p16'),('WSS126','p16'),('WSS130','p16'),('WSS136','p16'),('WSS141','p16'),('WSS143','p16'),('WSS15','p16'),('WSS153','p16'),('WSS162','p16'),('WSS164','p16'),('WSS171','p16'),('WSS187','p16'),('WSS188','p16'),('WSS189','p16'),('WSS190','p16'),('WSS193','p16'),('WSS194','p16'),('WSS195','p16'),('WSS20','p16'),('WSS206','p16'),('WSS207','p16'),('WSS21','p16'),('WSS218','p16'),('WSS239','p16'),('WSS24','p16'),('WSS245','p16'),('WSS25','p16'),('WSS252','p16'),('WSS253','p16'),('WSS256','p16'),('WSS258','p16'),('WSS260','p16'),('WSS265','p16'),('WSS268','p16'),('WSS274','p16'),('WSS277','p16'),('WSS28','p16'),('WSS286','p16'),('WSS287','p16'),('WSS295','p16'),('WSS296','p16'),('WSS299','p16'),('WSS32','p16'),('WSS33','p16'),('WSS34','p16'),('WSS36','p16'),('WSS38','p16'),('WSS43','p16'),('WSS45','p16'),('WSS47','p16'),('WSS5','p16'),('WSS51','p16'),('WSS58','p16'),('WSS61','p16'),('WSS63','p16'),('WSS64','p16'),('WSS7','p16'),('WSS75','p16'),('WSS76','p16'),('WSS77','p16'),('WSS8','p16'),('WSS80','p16'),('WSS81','p16'),('WSS83','p16'),('WSS84','p16'),('WSS86','p16'),('WSS88','p16'),('WSS97','p16'),('WSS98','p16'),('WSS1','p17'),('WSS107','p17'),('WSS109','p17'),('WSS112','p17'),('WSS116','p17'),('WSS122','p17'),('WSS124','p17'),('WSS125','p17'),('WSS128','p17'),('WSS131','p17'),('WSS134','p17'),('WSS135','p17'),('WSS141','p17'),('WSS143','p17'),('WSS151','p17'),('WSS152','p17'),('WSS158','p17'),('WSS159','p17'),('WSS160','p17'),('WSS162','p17'),('WSS164','p17'),('WSS165','p17'),('WSS168','p17'),('WSS17','p17'),('WSS177','p17'),('WSS180','p17'),('WSS182','p17'),('WSS184','p17'),('WSS189','p17'),('WSS19','p17'),('WSS195','p17'),('WSS196','p17'),('WSS199','p17'),('WSS203','p17'),('WSS208','p17'),('WSS21','p17'),('WSS211','p17'),('WSS215','p17'),('WSS217','p17'),('WSS218','p17'),('WSS220','p17'),('WSS231','p17'),('WSS232','p17'),('WSS235','p17'),('WSS238','p17'),('WSS240','p17'),('WSS253','p17'),('WSS257','p17'),('WSS262','p17'),('WSS283','p17'),('WSS29','p17'),('WSS291','p17'),('WSS298','p17'),('WSS31','p17'),('WSS32','p17'),('WSS33','p17'),('WSS34','p17'),('WSS4','p17'),('WSS42','p17'),('WSS45','p17'),('WSS49','p17'),('WSS50','p17'),('WSS58','p17'),('WSS66','p17'),('WSS67','p17'),('WSS68','p17'),('WSS70','p17'),('WSS71','p17'),('WSS72','p17'),('WSS83','p17'),('WSS88','p17'),('WSS90','p17'),('WSS10','p18'),('WSS101','p18'),('WSS104','p18'),('WSS111','p18'),('WSS112','p18'),('WSS117','p18'),('WSS120','p18'),('WSS128','p18'),('WSS131','p18'),('WSS135','p18'),('WSS138','p18'),('WSS141','p18'),('WSS143','p18'),('WSS144','p18'),('WSS149','p18'),('WSS156','p18'),('WSS16','p18'),('WSS163','p18'),('WSS172','p18'),('WSS176','p18'),('WSS180','p18'),('WSS181','p18'),('WSS191','p18'),('WSS196','p18'),('WSS197','p18'),('WSS2','p18'),('WSS209','p18'),('WSS212','p18'),('WSS213','p18'),('WSS216','p18'),('WSS225','p18'),('WSS228','p18'),('WSS231','p18'),('WSS232','p18'),('WSS241','p18'),('WSS246','p18'),('WSS247','p18'),('WSS252','p18'),('WSS254','p18'),('WSS259','p18'),('WSS263','p18'),('WSS267','p18'),('WSS270','p18'),('WSS272','p18'),('WSS273','p18'),('WSS276','p18'),('WSS28','p18'),('WSS281','p18'),('WSS286','p18'),('WSS289','p18'),('WSS293','p18'),('WSS294','p18'),('WSS295','p18'),('WSS3','p18'),('WSS300','p18'),('WSS33','p18'),('WSS36','p18'),('WSS45','p18'),('WSS46','p18'),('WSS52','p18'),('WSS56','p18'),('WSS62','p18'),('WSS64','p18'),('WSS66','p18'),('WSS76','p18'),('WSS77','p18'),('WSS82','p18'),('WSS85','p18'),('WSS91','p18'),('WSS94','p18'),('WSS96','p18'),('WSS1','p19'),('WSS101','p19'),('WSS102','p19'),('WSS107','p19'),('WSS11','p19'),('WSS111','p19'),('WSS114','p19'),('WSS119','p19'),('WSS120','p19'),('WSS121','p19'),('WSS129','p19'),('WSS132','p19'),('WSS133','p19'),('WSS137','p19'),('WSS140','p19'),('WSS142','p19'),('WSS143','p19'),('WSS149','p19'),('WSS153','p19'),('WSS161','p19'),('WSS165','p19'),('WSS167','p19'),('WSS174','p19'),('WSS179','p19'),('WSS19','p19'),('WSS196','p19'),('WSS199','p19'),('WSS2','p19'),('WSS202','p19'),('WSS212','p19'),('WSS238','p19'),('WSS243','p19'),('WSS246','p19'),('WSS247','p19'),('WSS25','p19'),('WSS252','p19'),('WSS256','p19'),('WSS263','p19'),('WSS271','p19'),('WSS279','p19'),('WSS280','p19'),('WSS29','p19'),('WSS290','p19'),('WSS31','p19'),('WSS32','p19'),('WSS35','p19'),('WSS39','p19'),('WSS42','p19'),('WSS43','p19'),('WSS45','p19'),('WSS47','p19'),('WSS52','p19'),('WSS53','p19'),('WSS54','p19'),('WSS57','p19'),('WSS59','p19'),('WSS63','p19'),('WSS64','p19'),('WSS70','p19'),('WSS71','p19'),('WSS73','p19'),('WSS80','p19'),('WSS87','p19'),('WSS91','p19'),('WSS96','p19'),('WSS101','p2'),('WSS103','p2'),('WSS108','p2'),('WSS109','p2'),('WSS110','p2'),('WSS115','p2'),('WSS130','p2'),('WSS134','p2'),('WSS145','p2'),('WSS15','p2'),('WSS151','p2'),('WSS152','p2'),('WSS153','p2'),('WSS162','p2'),('WSS164','p2'),('WSS165','p2'),('WSS168','p2'),('WSS170','p2'),('WSS173','p2'),('WSS174','p2'),('WSS179','p2'),('WSS183','p2'),('WSS187','p2'),('WSS193','p2'),('WSS20','p2'),('WSS200','p2'),('WSS208','p2'),('WSS214','p2'),('WSS220','p2'),('WSS23','p2'),('WSS234','p2'),('WSS24','p2'),('WSS240','p2'),('WSS241','p2'),('WSS242','p2'),('WSS244','p2'),('WSS246','p2'),('WSS249','p2'),('WSS252','p2'),('WSS258','p2'),('WSS259','p2'),('WSS271','p2'),('WSS277','p2'),('WSS28','p2'),('WSS281','p2'),('WSS282','p2'),('WSS285','p2'),('WSS289','p2'),('WSS293','p2'),('WSS296','p2'),('WSS297','p2'),('WSS3','p2'),('WSS31','p2'),('WSS36','p2'),('WSS4','p2'),('WSS44','p2'),('WSS47','p2'),('WSS48','p2'),('WSS52','p2'),('WSS54','p2'),('WSS62','p2'),('WSS69','p2'),('WSS7','p2'),('WSS72','p2'),('WSS76','p2'),('WSS81','p2'),('WSS82','p2'),('WSS88','p2'),('WSS89','p2'),('WSS93','p2'),('WSS94','p2'),('WSS95','p2'),('WSS97','p2'),('WSS101','p20'),('WSS103','p20'),('WSS113','p20'),('WSS114','p20'),('WSS119','p20'),('WSS123','p20'),('WSS134','p20'),('WSS139','p20'),('WSS146','p20'),('WSS154','p20'),('WSS155','p20'),('WSS156','p20'),('WSS157','p20'),('WSS159','p20'),('WSS166','p20'),('WSS168','p20'),('WSS171','p20'),('WSS172','p20'),('WSS174','p20'),('WSS177','p20'),('WSS179','p20'),('WSS18','p20'),('WSS181','p20'),('WSS188','p20'),('WSS19','p20'),('WSS191','p20'),('WSS192','p20'),('WSS193','p20'),('WSS20','p20'),('WSS201','p20'),('WSS204','p20'),('WSS207','p20'),('WSS210','p20'),('WSS220','p20'),('WSS225','p20'),('WSS227','p20'),('WSS229','p20'),('WSS230','p20'),('WSS238','p20'),('WSS241','p20'),('WSS243','p20'),('WSS245','p20'),('WSS256','p20'),('WSS258','p20'),('WSS263','p20'),('WSS264','p20'),('WSS265','p20'),('WSS267','p20'),('WSS272','p20'),('WSS273','p20'),('WSS275','p20'),('WSS276','p20'),('WSS279','p20'),('WSS283','p20'),('WSS287','p20'),('WSS288','p20'),('WSS290','p20'),('WSS291','p20'),('WSS295','p20'),('WSS30','p20'),('WSS300','p20'),('WSS31','p20'),('WSS32','p20'),('WSS34','p20'),('WSS40','p20'),('WSS44','p20'),('WSS51','p20'),('WSS54','p20'),('WSS55','p20'),('WSS56','p20'),('WSS60','p20'),('WSS63','p20'),('WSS70','p20'),('WSS73','p20'),('WSS74','p20'),('WSS75','p20'),('WSS81','p20'),('WSS85','p20'),('WSS89','p20'),('WSS9','p20'),('WSS93','p20'),('WSS97','p20'),('WSS100','p21'),('WSS102','p21'),('WSS103','p21'),('WSS105','p21'),('WSS116','p21'),('WSS12','p21'),('WSS120','p21'),('WSS123','p21'),('WSS127','p21'),('WSS132','p21'),('WSS133','p21'),('WSS135','p21'),('WSS138','p21'),('WSS139','p21'),('WSS15','p21'),('WSS154','p21'),('WSS156','p21'),('WSS159','p21'),('WSS162','p21'),('WSS164','p21'),('WSS170','p21'),('WSS173','p21'),('WSS178','p21'),('WSS194','p21'),('WSS196','p21'),('WSS2','p21'),('WSS20','p21'),('WSS200','p21'),('WSS203','p21'),('WSS209','p21'),('WSS21','p21'),('WSS210','p21'),('WSS212','p21'),('WSS217','p21'),('WSS22','p21'),('WSS220','p21'),('WSS224','p21'),('WSS237','p21'),('WSS241','p21'),('WSS242','p21'),('WSS249','p21'),('WSS251','p21'),('WSS252','p21'),('WSS254','p21'),('WSS255','p21'),('WSS264','p21'),('WSS265','p21'),('WSS268','p21'),('WSS27','p21'),('WSS270','p21'),('WSS271','p21'),('WSS275','p21'),('WSS280','p21'),('WSS294','p21'),('WSS296','p21'),('WSS3','p21'),('WSS30','p21'),('WSS300','p21'),('WSS31','p21'),('WSS35','p21'),('WSS36','p21'),('WSS41','p21'),('WSS50','p21'),('WSS52','p21'),('WSS55','p21'),('WSS57','p21'),('WSS59','p21'),('WSS60','p21'),('WSS61','p21'),('WSS65','p21'),('WSS66','p21'),('WSS76','p21'),('WSS79','p21'),('WSS85','p21'),('WSS92','p21'),('WSS93','p21'),('WSS107','p22'),('WSS127','p22'),('WSS134','p22'),('WSS136','p22'),('WSS146','p22'),('WSS147','p22'),('WSS148','p22'),('WSS149','p22'),('WSS150','p22'),('WSS157','p22'),('WSS16','p22'),('WSS161','p22'),('WSS163','p22'),('WSS168','p22'),('WSS169','p22'),('WSS174','p22'),('WSS175','p22'),('WSS18','p22'),('WSS180','p22'),('WSS187','p22'),('WSS189','p22'),('WSS190','p22'),('WSS198','p22'),('WSS201','p22'),('WSS208','p22'),('WSS210','p22'),('WSS212','p22'),('WSS214','p22'),('WSS219','p22'),('WSS221','p22'),('WSS224','p22'),('WSS226','p22'),('WSS227','p22'),('WSS232','p22'),('WSS242','p22'),('WSS244','p22'),('WSS246','p22'),('WSS249','p22'),('WSS250','p22'),('WSS258','p22'),('WSS259','p22'),('WSS26','p22'),('WSS262','p22'),('WSS265','p22'),('WSS266','p22'),('WSS27','p22'),('WSS271','p22'),('WSS274','p22'),('WSS276','p22'),('WSS277','p22'),('WSS289','p22'),('WSS290','p22'),('WSS293','p22'),('WSS297','p22'),('WSS3','p22'),('WSS42','p22'),('WSS50','p22'),('WSS6','p22'),('WSS60','p22'),('WSS65','p22'),('WSS8','p22'),('WSS84','p22'),('WSS86','p22'),('WSS88','p22'),('WSS97','p22'),('WSS99','p22'),('WSS100','p23'),('WSS101','p23'),('WSS102','p23'),('WSS107','p23'),('WSS110','p23'),('WSS114','p23'),('WSS120','p23'),('WSS122','p23'),('WSS125','p23'),('WSS126','p23'),('WSS129','p23'),('WSS134','p23'),('WSS136','p23'),('WSS138','p23'),('WSS139','p23'),('WSS145','p23'),('WSS147','p23'),('WSS149','p23'),('WSS15','p23'),('WSS150','p23'),('WSS151','p23'),('WSS152','p23'),('WSS156','p23'),('WSS159','p23'),('WSS162','p23'),('WSS166','p23'),('WSS172','p23'),('WSS177','p23'),('WSS178','p23'),('WSS179','p23'),('WSS183','p23'),('WSS185','p23'),('WSS186','p23'),('WSS190','p23'),('WSS192','p23'),('WSS198','p23'),('WSS199','p23'),('WSS201','p23'),('WSS207','p23'),('WSS208','p23'),('WSS214','p23'),('WSS215','p23'),('WSS218','p23'),('WSS222','p23'),('WSS225','p23'),('WSS237','p23'),('WSS242','p23'),('WSS243','p23'),('WSS244','p23'),('WSS249','p23'),('WSS264','p23'),('WSS266','p23'),('WSS272','p23'),('WSS273','p23'),('WSS280','p23'),('WSS283','p23'),('WSS284','p23'),('WSS290','p23'),('WSS291','p23'),('WSS293','p23'),('WSS30','p23'),('WSS31','p23'),('WSS32','p23'),('WSS42','p23'),('WSS43','p23'),('WSS44','p23'),('WSS45','p23'),('WSS49','p23'),('WSS50','p23'),('WSS69','p23'),('WSS71','p23'),('WSS84','p23'),('WSS87','p23'),('WSS90','p23'),('WSS92','p23'),('WSS94','p23'),('WSS99','p23'),('WSS100','p24'),('WSS112','p24'),('WSS121','p24'),('WSS122','p24'),('WSS123','p24'),('WSS128','p24'),('WSS130','p24'),('WSS138','p24'),('WSS144','p24'),('WSS145','p24'),('WSS149','p24'),('WSS156','p24'),('WSS163','p24'),('WSS17','p24'),('WSS171','p24'),('WSS178','p24'),('WSS186','p24'),('WSS187','p24'),('WSS192','p24'),('WSS193','p24'),('WSS195','p24'),('WSS205','p24'),('WSS212','p24'),('WSS214','p24'),('WSS215','p24'),('WSS22','p24'),('WSS221','p24'),('WSS225','p24'),('WSS233','p24'),('WSS235','p24'),('WSS236','p24'),('WSS239','p24'),('WSS241','p24'),('WSS247','p24'),('WSS250','p24'),('WSS251','p24'),('WSS252','p24'),('WSS254','p24'),('WSS257','p24'),('WSS259','p24'),('WSS26','p24'),('WSS261','p24'),('WSS266','p24'),('WSS272','p24'),('WSS278','p24'),('WSS279','p24'),('WSS280','p24'),('WSS282','p24'),('WSS283','p24'),('WSS286','p24'),('WSS292','p24'),('WSS293','p24'),('WSS295','p24'),('WSS30','p24'),('WSS37','p24'),('WSS38','p24'),('WSS39','p24'),('WSS41','p24'),('WSS52','p24'),('WSS53','p24'),('WSS56','p24'),('WSS57','p24'),('WSS58','p24'),('WSS60','p24'),('WSS68','p24'),('WSS69','p24'),('WSS7','p24'),('WSS72','p24'),('WSS79','p24'),('WSS84','p24'),('WSS87','p24'),('WSS9','p24'),('WSS91','p24'),('WSS96','p24'),('WSS101','p25'),('WSS102','p25'),('WSS108','p25'),('WSS111','p25'),('WSS114','p25'),('WSS115','p25'),('WSS116','p25'),('WSS122','p25'),('WSS127','p25'),('WSS128','p25'),('WSS134','p25'),('WSS136','p25'),('WSS14','p25'),('WSS142','p25'),('WSS145','p25'),('WSS150','p25'),('WSS151','p25'),('WSS152','p25'),('WSS154','p25'),('WSS157','p25'),('WSS16','p25'),('WSS163','p25'),('WSS164','p25'),('WSS173','p25'),('WSS176','p25'),('WSS179','p25'),('WSS182','p25'),('WSS197','p25'),('WSS199','p25'),('WSS206','p25'),('WSS207','p25'),('WSS214','p25'),('WSS217','p25'),('WSS22','p25'),('WSS222','p25'),('WSS233','p25'),('WSS238','p25'),('WSS239','p25'),('WSS246','p25'),('WSS248','p25'),('WSS256','p25'),('WSS259','p25'),('WSS26','p25'),('WSS260','p25'),('WSS270','p25'),('WSS271','p25'),('WSS273','p25'),('WSS277','p25'),('WSS279','p25'),('WSS280','p25'),('WSS281','p25'),('WSS283','p25'),('WSS288','p25'),('WSS289','p25'),('WSS291','p25'),('WSS292','p25'),('WSS294','p25'),('WSS297','p25'),('WSS3','p25'),('WSS300','p25'),('WSS33','p25'),('WSS35','p25'),('WSS4','p25'),('WSS40','p25'),('WSS42','p25'),('WSS47','p25'),('WSS48','p25'),('WSS51','p25'),('WSS52','p25'),('WSS54','p25'),('WSS65','p25'),('WSS66','p25'),('WSS7','p25'),('WSS71','p25'),('WSS77','p25'),('WSS79','p25'),('WSS80','p25'),('WSS88','p25'),('WSS96','p25'),('WSS99','p25'),('WSS108','p26'),('WSS111','p26'),('WSS117','p26'),('WSS118','p26'),('WSS123','p26'),('WSS126','p26'),('WSS127','p26'),('WSS136','p26'),('WSS138','p26'),('WSS14','p26'),('WSS140','p26'),('WSS145','p26'),('WSS146','p26'),('WSS16','p26'),('WSS160','p26'),('WSS162','p26'),('WSS168','p26'),('WSS170','p26'),('WSS175','p26'),('WSS184','p26'),('WSS188','p26'),('WSS198','p26'),('WSS201','p26'),('WSS209','p26'),('WSS211','p26'),('WSS215','p26'),('WSS217','p26'),('WSS223','p26'),('WSS230','p26'),('WSS231','p26'),('WSS233','p26'),('WSS234','p26'),('WSS247','p26'),('WSS249','p26'),('WSS25','p26'),('WSS260','p26'),('WSS261','p26'),('WSS268','p26'),('WSS27','p26'),('WSS276','p26'),('WSS28','p26'),('WSS288','p26'),('WSS292','p26'),('WSS297','p26'),('WSS33','p26'),('WSS37','p26'),('WSS41','p26'),('WSS43','p26'),('WSS45','p26'),('WSS46','p26'),('WSS48','p26'),('WSS49','p26'),('WSS53','p26'),('WSS61','p26'),('WSS63','p26'),('WSS70','p26'),('WSS79','p26'),('WSS9','p26'),('WSS91','p26'),('WSS92','p26'),('WSS93','p26'),('WSS94','p26'),('WSS95','p26'),('WSS108','p27'),('WSS109','p27'),('WSS114','p27'),('WSS117','p27'),('WSS13','p27'),('WSS137','p27'),('WSS142','p27'),('WSS148','p27'),('WSS150','p27'),('WSS154','p27'),('WSS158','p27'),('WSS16','p27'),('WSS167','p27'),('WSS168','p27'),('WSS175','p27'),('WSS180','p27'),('WSS183','p27'),('WSS19','p27'),('WSS197','p27'),('WSS198','p27'),('WSS208','p27'),('WSS210','p27'),('WSS216','p27'),('WSS218','p27'),('WSS220','p27'),('WSS229','p27'),('WSS23','p27'),('WSS234','p27'),('WSS236','p27'),('WSS240','p27'),('WSS249','p27'),('WSS250','p27'),('WSS255','p27'),('WSS267','p27'),('WSS269','p27'),('WSS270','p27'),('WSS274','p27'),('WSS283','p27'),('WSS284','p27'),('WSS285','p27'),('WSS286','p27'),('WSS291','p27'),('WSS293','p27'),('WSS294','p27'),('WSS297','p27'),('WSS38','p27'),('WSS4','p27'),('WSS46','p27'),('WSS55','p27'),('WSS60','p27'),('WSS74','p27'),('WSS75','p27'),('WSS77','p27'),('WSS84','p27'),('WSS85','p27'),('WSS9','p27'),('WSS97','p27'),('WSS98','p27'),('WSS104','p28'),('WSS118','p28'),('WSS119','p28'),('WSS122','p28'),('WSS125','p28'),('WSS126','p28'),('WSS133','p28'),('WSS137','p28'),('WSS140','p28'),('WSS147','p28'),('WSS148','p28'),('WSS152','p28'),('WSS153','p28'),('WSS155','p28'),('WSS16','p28'),('WSS161','p28'),('WSS181','p28'),('WSS186','p28'),('WSS189','p28'),('WSS190','p28'),('WSS194','p28'),('WSS200','p28'),('WSS206','p28'),('WSS209','p28'),('WSS211','p28'),('WSS218','p28'),('WSS222','p28'),('WSS224','p28'),('WSS228','p28'),('WSS232','p28'),('WSS236','p28'),('WSS244','p28'),('WSS245','p28'),('WSS274','p28'),('WSS276','p28'),('WSS278','p28'),('WSS28','p28'),('WSS282','p28'),('WSS284','p28'),('WSS289','p28'),('WSS291','p28'),('WSS30','p28'),('WSS32','p28'),('WSS41','p28'),('WSS44','p28'),('WSS47','p28'),('WSS5','p28'),('WSS53','p28'),('WSS58','p28'),('WSS62','p28'),('WSS67','p28'),('WSS68','p28'),('WSS70','p28'),('WSS75','p28'),('WSS78','p28'),('WSS90','p28'),('WSS93','p28'),('WSS95','p28'),('WSS98','p28'),('WSS10','p29'),('WSS102','p29'),('WSS106','p29'),('WSS11','p29'),('WSS110','p29'),('WSS112','p29'),('WSS114','p29'),('WSS115','p29'),('WSS116','p29'),('WSS117','p29'),('WSS121','p29'),('WSS123','p29'),('WSS124','p29'),('WSS127','p29'),('WSS131','p29'),('WSS14','p29'),('WSS141','p29'),('WSS142','p29'),('WSS146','p29'),('WSS154','p29'),('WSS169','p29'),('WSS174','p29'),('WSS175','p29'),('WSS176','p29'),('WSS178','p29'),('WSS179','p29'),('WSS19','p29'),('WSS191','p29'),('WSS192','p29'),('WSS200','p29'),('WSS202','p29'),('WSS211','p29'),('WSS216','p29'),('WSS22','p29'),('WSS220','p29'),('WSS228','p29'),('WSS235','p29'),('WSS236','p29'),('WSS238','p29'),('WSS240','p29'),('WSS244','p29'),('WSS250','p29'),('WSS251','p29'),('WSS255','p29'),('WSS257','p29'),('WSS26','p29'),('WSS260','p29'),('WSS261','p29'),('WSS266','p29'),('WSS267','p29'),('WSS276','p29'),('WSS278','p29'),('WSS280','p29'),('WSS282','p29'),('WSS285','p29'),('WSS287','p29'),('WSS29','p29'),('WSS294','p29'),('WSS296','p29'),('WSS33','p29'),('WSS34','p29'),('WSS37','p29'),('WSS41','p29'),('WSS43','p29'),('WSS5','p29'),('WSS50','p29'),('WSS54','p29'),('WSS56','p29'),('WSS59','p29'),('WSS60','p29'),('WSS71','p29'),('WSS82','p29'),('WSS83','p29'),('WSS86','p29'),('WSS87','p29'),('WSS89','p29'),('WSS92','p29'),('WSS96','p29'),('WSS10','p3'),('WSS100','p3'),('WSS11','p3'),('WSS110','p3'),('WSS113','p3'),('WSS115','p3'),('WSS12','p3'),('WSS120','p3'),('WSS121','p3'),('WSS123','p3'),('WSS13','p3'),('WSS142','p3'),('WSS154','p3'),('WSS155','p3'),('WSS161','p3'),('WSS164','p3'),('WSS165','p3'),('WSS166','p3'),('WSS167','p3'),('WSS169','p3'),('WSS17','p3'),('WSS171','p3'),('WSS176','p3'),('WSS178','p3'),('WSS179','p3'),('WSS186','p3'),('WSS188','p3'),('WSS19','p3'),('WSS190','p3'),('WSS194','p3'),('WSS196','p3'),('WSS199','p3'),('WSS200','p3'),('WSS202','p3'),('WSS205','p3'),('WSS206','p3'),('WSS218','p3'),('WSS219','p3'),('WSS228','p3'),('WSS23','p3'),('WSS230','p3'),('WSS232','p3'),('WSS234','p3'),('WSS248','p3'),('WSS253','p3'),('WSS259','p3'),('WSS260','p3'),('WSS262','p3'),('WSS264','p3'),('WSS269','p3'),('WSS270','p3'),('WSS281','p3'),('WSS286','p3'),('WSS29','p3'),('WSS292','p3'),('WSS294','p3'),('WSS296','p3'),('WSS299','p3'),('WSS3','p3'),('WSS32','p3'),('WSS40','p3'),('WSS41','p3'),('WSS43','p3'),('WSS47','p3'),('WSS49','p3'),('WSS5','p3'),('WSS56','p3'),('WSS72','p3'),('WSS8','p3'),('WSS86','p3'),('WSS87','p3'),('WSS95','p3'),('WSS116','p30'),('WSS129','p30'),('WSS132','p30'),('WSS146','p30'),('WSS147','p30'),('WSS149','p30'),('WSS151','p30'),('WSS155','p30'),('WSS156','p30'),('WSS173','p30'),('WSS18','p30'),('WSS181','p30'),('WSS182','p30'),('WSS185','p30'),('WSS187','p30'),('WSS192','p30'),('WSS193','p30'),('WSS200','p30'),('WSS204','p30'),('WSS210','p30'),('WSS217','p30'),('WSS218','p30'),('WSS22','p30'),('WSS221','p30'),('WSS23','p30'),('WSS233','p30'),('WSS234','p30'),('WSS235','p30'),('WSS237','p30'),('WSS240','p30'),('WSS241','p30'),('WSS242','p30'),('WSS245','p30'),('WSS248','p30'),('WSS250','p30'),('WSS251','p30'),('WSS254','p30'),('WSS260','p30'),('WSS261','p30'),('WSS262','p30'),('WSS263','p30'),('WSS265','p30'),('WSS27','p30'),('WSS270','p30'),('WSS277','p30'),('WSS287','p30'),('WSS288','p30'),('WSS292','p30'),('WSS295','p30'),('WSS298','p30'),('WSS299','p30'),('WSS30','p30'),('WSS34','p30'),('WSS37','p30'),('WSS40','p30'),('WSS48','p30'),('WSS57','p30'),('WSS58','p30'),('WSS59','p30'),('WSS6','p30'),('WSS61','p30'),('WSS65','p30'),('WSS68','p30'),('WSS71','p30'),('WSS78','p30'),('WSS80','p30'),('WSS9','p30'),('WSS91','p30'),('WSS97','p30'),('WSS98','p30'),('WSS103','p4'),('WSS105','p4'),('WSS112','p4'),('WSS116','p4'),('WSS12','p4'),('WSS120','p4'),('WSS126','p4'),('WSS130','p4'),('WSS134','p4'),('WSS137','p4'),('WSS144','p4'),('WSS148','p4'),('WSS150','p4'),('WSS155','p4'),('WSS156','p4'),('WSS157','p4'),('WSS159','p4'),('WSS161','p4'),('WSS163','p4'),('WSS17','p4'),('WSS170','p4'),('WSS175','p4'),('WSS176','p4'),('WSS178','p4'),('WSS183','p4'),('WSS185','p4'),('WSS187','p4'),('WSS192','p4'),('WSS195','p4'),('WSS198','p4'),('WSS2','p4'),('WSS210','p4'),('WSS217','p4'),('WSS221','p4'),('WSS222','p4'),('WSS223','p4'),('WSS226','p4'),('WSS229','p4'),('WSS23','p4'),('WSS230','p4'),('WSS24','p4'),('WSS243','p4'),('WSS244','p4'),('WSS245','p4'),('WSS263','p4'),('WSS267','p4'),('WSS274','p4'),('WSS275','p4'),('WSS284','p4'),('WSS287','p4'),('WSS29','p4'),('WSS291','p4'),('WSS294','p4'),('WSS30','p4'),('WSS300','p4'),('WSS35','p4'),('WSS42','p4'),('WSS48','p4'),('WSS54','p4'),('WSS61','p4'),('WSS65','p4'),('WSS73','p4'),('WSS75','p4'),('WSS83','p4'),('WSS86','p4'),('WSS91','p4'),('WSS92','p4'),('WSS94','p4'),('WSS95','p4'),('WSS104','p5'),('WSS11','p5'),('WSS117','p5'),('WSS118','p5'),('WSS126','p5'),('WSS131','p5'),('WSS132','p5'),('WSS140','p5'),('WSS145','p5'),('WSS148','p5'),('WSS153','p5'),('WSS160','p5'),('WSS163','p5'),('WSS165','p5'),('WSS173','p5'),('WSS175','p5'),('WSS177','p5'),('WSS18','p5'),('WSS181','p5'),('WSS184','p5'),('WSS186','p5'),('WSS197','p5'),('WSS200','p5'),('WSS202','p5'),('WSS204','p5'),('WSS208','p5'),('WSS213','p5'),('WSS216','p5'),('WSS221','p5'),('WSS232','p5'),('WSS237','p5'),('WSS24','p5'),('WSS242','p5'),('WSS248','p5'),('WSS249','p5'),('WSS253','p5'),('WSS256','p5'),('WSS257','p5'),('WSS26','p5'),('WSS261','p5'),('WSS265','p5'),('WSS266','p5'),('WSS267','p5'),('WSS274','p5'),('WSS275','p5'),('WSS28','p5'),('WSS280','p5'),('WSS284','p5'),('WSS286','p5'),('WSS289','p5'),('WSS29','p5'),('WSS292','p5'),('WSS294','p5'),('WSS297','p5'),('WSS37','p5'),('WSS41','p5'),('WSS5','p5'),('WSS53','p5'),('WSS6','p5'),('WSS63','p5'),('WSS67','p5'),('WSS69','p5'),('WSS7','p5'),('WSS74','p5'),('WSS79','p5'),('WSS8','p5'),('WSS85','p5'),('WSS89','p5'),('WSS95','p5'),('WSS1','p6'),('WSS100','p6'),('WSS103','p6'),('WSS11','p6'),('WSS110','p6'),('WSS112','p6'),('WSS116','p6'),('WSS124','p6'),('WSS125','p6'),('WSS128','p6'),('WSS13','p6'),('WSS132','p6'),('WSS133','p6'),('WSS136','p6'),('WSS140','p6'),('WSS147','p6'),('WSS151','p6'),('WSS158','p6'),('WSS160','p6'),('WSS166','p6'),('WSS169','p6'),('WSS170','p6'),('WSS171','p6'),('WSS175','p6'),('WSS176','p6'),('WSS178','p6'),('WSS184','p6'),('WSS185','p6'),('WSS193','p6'),('WSS195','p6'),('WSS207','p6'),('WSS212','p6'),('WSS219','p6'),('WSS223','p6'),('WSS224','p6'),('WSS226','p6'),('WSS227','p6'),('WSS229','p6'),('WSS230','p6'),('WSS231','p6'),('WSS234','p6'),('WSS243','p6'),('WSS244','p6'),('WSS253','p6'),('WSS258','p6'),('WSS263','p6'),('WSS268','p6'),('WSS269','p6'),('WSS273','p6'),('WSS275','p6'),('WSS276','p6'),('WSS278','p6'),('WSS279','p6'),('WSS288','p6'),('WSS290','p6'),('WSS34','p6'),('WSS37','p6'),('WSS4','p6'),('WSS49','p6'),('WSS50','p6'),('WSS55','p6'),('WSS56','p6'),('WSS6','p6'),('WSS62','p6'),('WSS66','p6'),('WSS68','p6'),('WSS72','p6'),('WSS73','p6'),('WSS78','p6'),('WSS83','p6'),('WSS10','p7'),('WSS101','p7'),('WSS105','p7'),('WSS108','p7'),('WSS111','p7'),('WSS12','p7'),('WSS128','p7'),('WSS13','p7'),('WSS133','p7'),('WSS137','p7'),('WSS14','p7'),('WSS141','p7'),('WSS147','p7'),('WSS150','p7'),('WSS153','p7'),('WSS157','p7'),('WSS158','p7'),('WSS160','p7'),('WSS166','p7'),('WSS172','p7'),('WSS180','p7'),('WSS184','p7'),('WSS186','p7'),('WSS199','p7'),('WSS203','p7'),('WSS204','p7'),('WSS211','p7'),('WSS213','p7'),('WSS216','p7'),('WSS225','p7'),('WSS227','p7'),('WSS229','p7'),('WSS231','p7'),('WSS236','p7'),('WSS237','p7'),('WSS24','p7'),('WSS243','p7'),('WSS248','p7'),('WSS251','p7'),('WSS255','p7'),('WSS260','p7'),('WSS264','p7'),('WSS269','p7'),('WSS273','p7'),('WSS278','p7'),('WSS279','p7'),('WSS285','p7'),('WSS296','p7'),('WSS297','p7'),('WSS299','p7'),('WSS35','p7'),('WSS41','p7'),('WSS46','p7'),('WSS48','p7'),('WSS49','p7'),('WSS5','p7'),('WSS55','p7'),('WSS61','p7'),('WSS62','p7'),('WSS63','p7'),('WSS67','p7'),('WSS7','p7'),('WSS72','p7'),('WSS74','p7'),('WSS8','p7'),('WSS82','p7'),('WSS96','p7'),('WSS97','p7'),('WSS98','p7'),('WSS102','p8'),('WSS105','p8'),('WSS108','p8'),('WSS113','p8'),('WSS114','p8'),('WSS117','p8'),('WSS118','p8'),('WSS121','p8'),('WSS126','p8'),('WSS13','p8'),('WSS134','p8'),('WSS135','p8'),('WSS139','p8'),('WSS141','p8'),('WSS144','p8'),('WSS145','p8'),('WSS146','p8'),('WSS149','p8'),('WSS15','p8'),('WSS157','p8'),('WSS158','p8'),('WSS185','p8'),('WSS188','p8'),('WSS191','p8'),('WSS198','p8'),('WSS199','p8'),('WSS20','p8'),('WSS204','p8'),('WSS205','p8'),('WSS209','p8'),('WSS211','p8'),('WSS219','p8'),('WSS22','p8'),('WSS222','p8'),('WSS224','p8'),('WSS228','p8'),('WSS23','p8'),('WSS232','p8'),('WSS237','p8'),('WSS239','p8'),('WSS240','p8'),('WSS242','p8'),('WSS247','p8'),('WSS252','p8'),('WSS253','p8'),('WSS257','p8'),('WSS261','p8'),('WSS265','p8'),('WSS267','p8'),('WSS27','p8'),('WSS278','p8'),('WSS279','p8'),('WSS284','p8'),('WSS285','p8'),('WSS287','p8'),('WSS288','p8'),('WSS3','p8'),('WSS33','p8'),('WSS40','p8'),('WSS60','p8'),('WSS68','p8'),('WSS76','p8'),('WSS79','p8'),('WSS8','p8'),('WSS80','p8'),('WSS81','p8'),('WSS85','p8'),('WSS89','p8'),('WSS90','p8'),('WSS100','p9'),('WSS106','p9'),('WSS107','p9'),('WSS109','p9'),('WSS116','p9'),('WSS119','p9'),('WSS123','p9'),('WSS131','p9'),('WSS14','p9'),('WSS141','p9'),('WSS146','p9'),('WSS148','p9'),('WSS154','p9'),('WSS160','p9'),('WSS165','p9'),('WSS167','p9'),('WSS169','p9'),('WSS172','p9'),('WSS177','p9'),('WSS187','p9'),('WSS189','p9'),('WSS195','p9'),('WSS197','p9'),('WSS198','p9'),('WSS199','p9'),('WSS201','p9'),('WSS202','p9'),('WSS203','p9'),('WSS204','p9'),('WSS207','p9'),('WSS208','p9'),('WSS225','p9'),('WSS226','p9'),('WSS238','p9'),('WSS239','p9'),('WSS241','p9'),('WSS245','p9'),('WSS248','p9'),('WSS25','p9'),('WSS250','p9'),('WSS255','p9'),('WSS259','p9'),('WSS263','p9'),('WSS272','p9'),('WSS275','p9'),('WSS277','p9'),('WSS278','p9'),('WSS282','p9'),('WSS285','p9'),('WSS286','p9'),('WSS288','p9'),('WSS292','p9'),('WSS293','p9'),('WSS296','p9'),('WSS300','p9'),('WSS35','p9'),('WSS38','p9'),('WSS44','p9'),('WSS47','p9'),('WSS51','p9'),('WSS58','p9'),('WSS6','p9'),('WSS64','p9'),('WSS70','p9'),('WSS78','p9'),('WSS79','p9'),('WSS86','p9'),('WSS90','p9'),('WSS94','p9'),('WSS95','p9'),('WSS97','p9'),('WSS99','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS254'),(1,2,'WSS274'),(1,2,'WSS278'),(2,1,'WSS23'),(2,1,'WSS283'),(3,1,'WSS99'),(3,2,'WSS96'),(4,1,'WSS212'),(4,1,'WSS64'),(5,1,'WSS203'),(5,2,'WSS103'),(5,2,'WSS214'),(6,1,'WSS26'),(6,1,'WSS42'),(6,2,'WSS17'),(7,1,'WSS24'),(7,2,'WSS34'),(7,3,'WSS32'),(8,1,'WSS47'),(8,2,'WSS9'),(8,3,'WSS31'),(9,1,'WSS103'),(9,2,'WSS28'),(9,3,'WSS35'),(10,1,'WSS266'),(10,2,'WSS225'),(11,1,'WSS287'),(11,1,'WSS34'),(11,2,'WSS285'),(12,1,'WSS277'),(12,2,'WSS274'),(13,1,'WSS169'),(13,2,'WSS197'),(14,1,'WSS217'),(14,2,'WSS80'),(14,3,'WSS190'),(15,1,'WSS172'),(15,2,'WSS28'),(15,3,'WSS30'),(16,1,'WSS194'),(16,2,'WSS46'),(17,1,'WSS152'),(17,2,'WSS97'),(18,1,'WSS34'),(18,1,'WSS41'),(18,2,'WSS45'),(19,1,'WSS293'),(19,2,'WSS15'),(20,1,'WSS48'),(20,2,'WSS23'),(20,3,'WSS284'),(21,1,'WSS279'),(21,2,'WSS115'),(22,1,'WSS297'),(22,2,'WSS18'),(22,2,'WSS234'),(23,1,'WSS288'),(23,2,'WSS279'),(24,1,'WSS279'),(24,1,'WSS283'),(24,2,'WSS254'),(25,1,'WSS101'),(25,1,'WSS25'),(25,2,'WSS296'),(26,1,'WSS18'),(26,2,'WSS257'),(27,1,'WSS49'),(27,2,'WSS294'),(27,3,'WSS191'),(28,1,'WSS178'),(28,1,'WSS228'),(29,1,'WSS299'),(29,2,'WSS258'),(29,3,'WSS101'),(30,1,'WSS254'),(30,2,'WSS274'),(30,2,'WSS278'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-27 16:26:04
