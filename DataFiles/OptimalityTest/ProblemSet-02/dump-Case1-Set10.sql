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
INSERT INTO `initialgoalparameter` VALUES (2,'I','p1'),(4,'G','p1'),(5,'G','p1'),(6,'I','p1'),(8,'G','p1'),(10,'G','p1'),(12,'I','p1'),(13,'G','p1'),(14,'I','p1'),(19,'I','p1'),(22,'G','p1'),(23,'I','p1'),(25,'G','p1'),(26,'I','p1'),(27,'G','p1'),(28,'I','p1'),(29,'I','p1'),(30,'I','p1'),(3,'I','p10'),(4,'G','p10'),(6,'G','p10'),(7,'I','p10'),(8,'I','p10'),(10,'I','p10'),(11,'G','p10'),(12,'G','p10'),(13,'I','p10'),(14,'G','p10'),(15,'I','p10'),(16,'G','p10'),(17,'G','p10'),(18,'G','p10'),(19,'G','p10'),(20,'I','p10'),(21,'G','p10'),(25,'I','p10'),(30,'G','p10'),(1,'I','p11'),(2,'I','p11'),(3,'G','p11'),(4,'I','p11'),(5,'G','p11'),(8,'I','p11'),(9,'G','p11'),(11,'I','p11'),(15,'G','p11'),(17,'G','p11'),(19,'I','p11'),(21,'I','p11'),(22,'I','p11'),(25,'I','p11'),(26,'I','p11'),(27,'I','p11'),(28,'I','p11'),(30,'G','p11'),(1,'I','p12'),(2,'I','p12'),(5,'I','p12'),(11,'I','p12'),(18,'G','p12'),(19,'G','p12'),(21,'G','p12'),(24,'I','p12'),(29,'G','p12'),(1,'G','p13'),(2,'I','p13'),(3,'I','p13'),(4,'I','p13'),(5,'G','p13'),(6,'I','p13'),(7,'G','p13'),(8,'I','p13'),(9,'G','p13'),(12,'I','p13'),(13,'I','p13'),(18,'I','p13'),(21,'I','p13'),(25,'G','p13'),(30,'I','p13'),(1,'I','p14'),(9,'I','p14'),(10,'G','p14'),(11,'G','p14'),(12,'G','p14'),(14,'G','p14'),(16,'I','p14'),(21,'I','p14'),(23,'I','p14'),(25,'G','p14'),(26,'I','p14'),(27,'I','p14'),(29,'I','p14'),(1,'I','p15'),(2,'G','p15'),(3,'G','p15'),(4,'G','p15'),(6,'G','p15'),(10,'I','p15'),(12,'I','p15'),(14,'I','p15'),(15,'G','p15'),(16,'G','p15'),(18,'I','p15'),(21,'G','p15'),(23,'G','p15'),(28,'G','p15'),(29,'I','p15'),(2,'I','p16'),(4,'I','p16'),(6,'I','p16'),(7,'I','p16'),(12,'G','p16'),(17,'I','p16'),(19,'I','p16'),(20,'I','p16'),(24,'I','p16'),(27,'I','p16'),(28,'I','p16'),(30,'I','p16'),(5,'G','p17'),(10,'I','p17'),(11,'I','p17'),(12,'I','p17'),(13,'G','p17'),(14,'G','p17'),(16,'G','p17'),(17,'I','p17'),(20,'G','p17'),(21,'G','p17'),(22,'G','p17'),(26,'I','p17'),(28,'G','p17'),(30,'I','p17'),(1,'G','p18'),(4,'I','p18'),(6,'G','p18'),(9,'I','p18'),(10,'I','p18'),(11,'G','p18'),(13,'I','p18'),(14,'I','p18'),(16,'I','p18'),(17,'I','p18'),(20,'I','p18'),(22,'G','p18'),(23,'I','p18'),(24,'I','p18'),(25,'G','p18'),(26,'I','p18'),(29,'I','p18'),(1,'I','p19'),(2,'G','p19'),(7,'I','p19'),(8,'G','p19'),(9,'I','p19'),(11,'I','p19'),(12,'I','p19'),(15,'I','p19'),(16,'I','p19'),(17,'I','p19'),(18,'I','p19'),(19,'I','p19'),(20,'I','p19'),(24,'I','p19'),(25,'I','p19'),(26,'G','p19'),(27,'G','p19'),(29,'I','p19'),(6,'I','p2'),(8,'I','p2'),(11,'G','p2'),(14,'I','p2'),(15,'G','p2'),(16,'G','p2'),(17,'I','p2'),(19,'G','p2'),(23,'G','p2'),(24,'G','p2'),(27,'I','p2'),(1,'G','p20'),(2,'G','p20'),(4,'I','p20'),(5,'G','p20'),(6,'I','p20'),(7,'I','p20'),(9,'I','p20'),(14,'G','p20'),(16,'I','p20'),(17,'I','p20'),(18,'G','p20'),(19,'I','p20'),(20,'I','p20'),(21,'I','p20'),(22,'I','p20'),(23,'I','p20'),(26,'I','p20'),(4,'G','p21'),(6,'I','p21'),(10,'G','p21'),(13,'I','p21'),(14,'I','p21'),(15,'I','p21'),(19,'I','p21'),(20,'G','p21'),(23,'I','p21'),(27,'G','p21'),(29,'I','p21'),(30,'I','p21'),(3,'G','p22'),(4,'G','p22'),(5,'I','p22'),(8,'I','p22'),(10,'I','p22'),(11,'I','p22'),(12,'G','p22'),(13,'G','p22'),(14,'I','p22'),(15,'G','p22'),(18,'G','p22'),(20,'I','p22'),(23,'G','p22'),(25,'I','p22'),(26,'G','p22'),(27,'I','p22'),(29,'I','p22'),(1,'I','p23'),(4,'I','p23'),(5,'G','p23'),(8,'I','p23'),(9,'G','p23'),(11,'I','p23'),(12,'I','p23'),(13,'I','p23'),(15,'I','p23'),(22,'I','p23'),(23,'I','p23'),(24,'I','p23'),(27,'G','p23'),(28,'I','p23'),(1,'G','p24'),(3,'I','p24'),(7,'G','p24'),(8,'G','p24'),(12,'I','p24'),(15,'I','p24'),(16,'I','p24'),(17,'G','p24'),(18,'I','p24'),(20,'G','p24'),(21,'I','p24'),(22,'I','p24'),(24,'G','p24'),(26,'G','p24'),(6,'G','p25'),(7,'G','p25'),(10,'G','p25'),(11,'I','p25'),(12,'G','p25'),(13,'G','p25'),(15,'I','p25'),(19,'I','p25'),(21,'G','p25'),(26,'I','p25'),(28,'G','p25'),(29,'G','p25'),(30,'I','p25'),(1,'G','p26'),(2,'I','p26'),(3,'I','p26'),(4,'I','p26'),(5,'I','p26'),(12,'G','p26'),(18,'I','p26'),(20,'I','p26'),(21,'I','p26'),(24,'G','p26'),(27,'I','p26'),(28,'G','p26'),(1,'I','p27'),(2,'G','p27'),(3,'I','p27'),(7,'G','p27'),(15,'G','p27'),(16,'I','p27'),(17,'I','p27'),(18,'G','p27'),(21,'G','p27'),(22,'I','p27'),(23,'G','p27'),(25,'I','p27'),(26,'G','p27'),(28,'I','p27'),(29,'G','p27'),(4,'G','p28'),(5,'I','p28'),(7,'I','p28'),(8,'G','p28'),(9,'G','p28'),(13,'I','p28'),(16,'I','p28'),(17,'G','p28'),(24,'I','p28'),(26,'G','p28'),(6,'I','p29'),(7,'I','p29'),(18,'G','p29'),(20,'I','p29'),(21,'I','p29'),(22,'G','p29'),(23,'I','p29'),(24,'G','p29'),(25,'G','p29'),(28,'G','p29'),(29,'I','p29'),(30,'G','p29'),(3,'I','p3'),(6,'G','p3'),(8,'I','p3'),(9,'I','p3'),(14,'G','p3'),(15,'G','p3'),(17,'G','p3'),(19,'I','p3'),(22,'I','p3'),(23,'I','p3'),(25,'I','p3'),(27,'G','p3'),(30,'G','p3'),(2,'G','p30'),(5,'I','p30'),(8,'G','p30'),(9,'I','p30'),(13,'G','p30'),(21,'I','p30'),(22,'G','p30'),(26,'I','p30'),(27,'I','p30'),(28,'I','p30'),(30,'G','p30'),(3,'I','p4'),(5,'I','p4'),(7,'I','p4'),(8,'G','p4'),(9,'G','p4'),(10,'G','p4'),(11,'G','p4'),(14,'G','p4'),(17,'I','p4'),(22,'G','p4'),(23,'G','p4'),(26,'G','p4'),(28,'I','p4'),(29,'G','p4'),(3,'G','p5'),(5,'I','p5'),(6,'G','p5'),(7,'G','p5'),(8,'I','p5'),(9,'I','p5'),(11,'G','p5'),(16,'I','p5'),(23,'G','p5'),(27,'I','p5'),(30,'G','p5'),(1,'I','p6'),(2,'I','p6'),(3,'I','p6'),(4,'I','p6'),(5,'I','p6'),(7,'I','p6'),(10,'I','p6'),(13,'I','p6'),(14,'I','p6'),(17,'G','p6'),(18,'I','p6'),(19,'G','p6'),(24,'I','p6'),(29,'G','p6'),(1,'G','p7'),(3,'G','p7'),(10,'G','p7'),(11,'I','p7'),(13,'G','p7'),(15,'I','p7'),(16,'G','p7'),(18,'I','p7'),(20,'G','p7'),(22,'I','p7'),(24,'G','p7'),(25,'I','p7'),(30,'I','p7'),(2,'G','p8'),(6,'I','p8'),(9,'I','p8'),(10,'I','p8'),(13,'I','p8'),(14,'I','p8'),(19,'G','p8'),(20,'G','p8'),(24,'G','p8'),(25,'G','p8'),(28,'G','p8'),(29,'G','p8'),(30,'I','p8'),(2,'I','p9'),(3,'G','p9'),(7,'G','p9'),(9,'G','p9'),(10,'I','p9'),(12,'I','p9'),(15,'I','p9'),(16,'G','p9'),(18,'I','p9'),(19,'G','p9'),(20,'G','p9'),(22,'I','p9'),(24,'I','p9'),(25,'I','p9'),(27,'G','p9'),(28,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS102','p1'),('WSS115','p1'),('WSS116','p1'),('WSS12','p1'),('WSS121','p1'),('WSS136','p1'),('WSS161','p1'),('WSS166','p1'),('WSS170','p1'),('WSS185','p1'),('WSS186','p1'),('WSS20','p1'),('WSS212','p1'),('WSS215','p1'),('WSS220','p1'),('WSS225','p1'),('WSS266','p1'),('WSS280','p1'),('WSS288','p1'),('WSS291','p1'),('WSS30','p1'),('WSS300','p1'),('WSS5','p1'),('WSS9','p1'),('WSS99','p1'),('WSS11','p10'),('WSS136','p10'),('WSS15','p10'),('WSS153','p10'),('WSS172','p10'),('WSS173','p10'),('WSS236','p10'),('WSS252','p10'),('WSS281','p10'),('WSS292','p10'),('WSS38','p10'),('WSS60','p10'),('WSS76','p10'),('WSS8','p10'),('WSS101','p11'),('WSS129','p11'),('WSS141','p11'),('WSS174','p11'),('WSS221','p11'),('WSS231','p11'),('WSS245','p11'),('WSS267','p11'),('WSS285','p11'),('WSS293','p11'),('WSS294','p11'),('WSS42','p11'),('WSS53','p11'),('WSS56','p11'),('WSS59','p11'),('WSS66','p11'),('WSS77','p11'),('WSS94','p11'),('WSS123','p12'),('WSS148','p12'),('WSS182','p12'),('WSS183','p12'),('WSS205','p12'),('WSS23','p12'),('WSS235','p12'),('WSS242','p12'),('WSS249','p12'),('WSS262','p12'),('WSS283','p12'),('WSS293','p12'),('WSS4','p12'),('WSS58','p12'),('WSS118','p13'),('WSS122','p13'),('WSS123','p13'),('WSS135','p13'),('WSS138','p13'),('WSS156','p13'),('WSS189','p13'),('WSS208','p13'),('WSS21','p13'),('WSS230','p13'),('WSS27','p13'),('WSS295','p13'),('WSS30','p13'),('WSS31','p13'),('WSS37','p13'),('WSS46','p13'),('WSS92','p13'),('WSS106','p14'),('WSS140','p14'),('WSS146','p14'),('WSS169','p14'),('WSS18','p14'),('WSS190','p14'),('WSS194','p14'),('WSS234','p14'),('WSS24','p14'),('WSS251','p14'),('WSS256','p14'),('WSS258','p14'),('WSS263','p14'),('WSS275','p14'),('WSS28','p14'),('WSS290','p14'),('WSS3','p14'),('WSS36','p14'),('WSS46','p14'),('WSS47','p14'),('WSS49','p14'),('WSS51','p14'),('WSS69','p14'),('WSS86','p14'),('WSS11','p15'),('WSS113','p15'),('WSS130','p15'),('WSS134','p15'),('WSS137','p15'),('WSS152','p15'),('WSS154','p15'),('WSS161','p15'),('WSS163','p15'),('WSS17','p15'),('WSS174','p15'),('WSS175','p15'),('WSS187','p15'),('WSS199','p15'),('WSS244','p15'),('WSS248','p15'),('WSS259','p15'),('WSS264','p15'),('WSS265','p15'),('WSS268','p15'),('WSS288','p15'),('WSS299','p15'),('WSS32','p15'),('WSS61','p15'),('WSS65','p15'),('WSS67','p15'),('WSS91','p15'),('WSS116','p16'),('WSS137','p16'),('WSS146','p16'),('WSS155','p16'),('WSS16','p16'),('WSS179','p16'),('WSS192','p16'),('WSS203','p16'),('WSS216','p16'),('WSS222','p16'),('WSS240','p16'),('WSS255','p16'),('WSS26','p16'),('WSS274','p16'),('WSS287','p16'),('WSS32','p16'),('WSS54','p16'),('WSS70','p16'),('WSS71','p16'),('WSS77','p16'),('WSS101','p17'),('WSS12','p17'),('WSS120','p17'),('WSS131','p17'),('WSS14','p17'),('WSS151','p17'),('WSS154','p17'),('WSS159','p17'),('WSS168','p17'),('WSS18','p17'),('WSS201','p17'),('WSS205','p17'),('WSS214','p17'),('WSS219','p17'),('WSS237','p17'),('WSS238','p17'),('WSS252','p17'),('WSS253','p17'),('WSS274','p17'),('WSS295','p17'),('WSS33','p17'),('WSS47','p17'),('WSS68','p17'),('WSS75','p17'),('WSS80','p17'),('WSS81','p17'),('WSS84','p17'),('WSS99','p17'),('WSS1','p18'),('WSS10','p18'),('WSS103','p18'),('WSS125','p18'),('WSS139','p18'),('WSS147','p18'),('WSS149','p18'),('WSS165','p18'),('WSS195','p18'),('WSS212','p18'),('WSS230','p18'),('WSS244','p18'),('WSS249','p18'),('WSS257','p18'),('WSS262','p18'),('WSS270','p18'),('WSS273','p18'),('WSS33','p18'),('WSS58','p18'),('WSS63','p18'),('WSS64','p18'),('WSS78','p18'),('WSS85','p18'),('WSS100','p19'),('WSS104','p19'),('WSS112','p19'),('WSS114','p19'),('WSS125','p19'),('WSS134','p19'),('WSS160','p19'),('WSS2','p19'),('WSS213','p19'),('WSS225','p19'),('WSS227','p19'),('WSS228','p19'),('WSS25','p19'),('WSS277','p19'),('WSS280','p19'),('WSS36','p19'),('WSS37','p19'),('WSS87','p19'),('WSS143','p2'),('WSS19','p2'),('WSS194','p2'),('WSS195','p2'),('WSS206','p2'),('WSS238','p2'),('WSS265','p2'),('WSS273','p2'),('WSS276','p2'),('WSS297','p2'),('WSS45','p2'),('WSS55','p2'),('WSS103','p20'),('WSS104','p20'),('WSS110','p20'),('WSS120','p20'),('WSS128','p20'),('WSS145','p20'),('WSS163','p20'),('WSS164','p20'),('WSS167','p20'),('WSS198','p20'),('WSS254','p20'),('WSS256','p20'),('WSS259','p20'),('WSS296','p20'),('WSS59','p20'),('WSS70','p20'),('WSS73','p20'),('WSS105','p21'),('WSS109','p21'),('WSS127','p21'),('WSS149','p21'),('WSS153','p21'),('WSS155','p21'),('WSS158','p21'),('WSS162','p21'),('WSS164','p21'),('WSS170','p21'),('WSS183','p21'),('WSS221','p21'),('WSS241','p21'),('WSS251','p21'),('WSS270','p21'),('WSS286','p21'),('WSS29','p21'),('WSS41','p21'),('WSS64','p21'),('WSS106','p22'),('WSS124','p22'),('WSS129','p22'),('WSS150','p22'),('WSS157','p22'),('WSS160','p22'),('WSS176','p22'),('WSS181','p22'),('WSS185','p22'),('WSS20','p22'),('WSS216','p22'),('WSS254','p22'),('WSS257','p22'),('WSS276','p22'),('WSS281','p22'),('WSS290','p22'),('WSS3','p22'),('WSS42','p22'),('WSS43','p22'),('WSS49','p22'),('WSS57','p22'),('WSS61','p22'),('WSS74','p22'),('WSS86','p22'),('WSS91','p22'),('WSS108','p23'),('WSS132','p23'),('WSS197','p23'),('WSS202','p23'),('WSS206','p23'),('WSS219','p23'),('WSS23','p23'),('WSS237','p23'),('WSS245','p23'),('WSS264','p23'),('WSS269','p23'),('WSS27','p23'),('WSS297','p23'),('WSS50','p23'),('WSS65','p23'),('WSS92','p23'),('WSS98','p23'),('WSS131','p24'),('WSS14','p24'),('WSS140','p24'),('WSS200','p24'),('WSS209','p24'),('WSS210','p24'),('WSS228','p24'),('WSS229','p24'),('WSS239','p24'),('WSS243','p24'),('WSS289','p24'),('WSS291','p24'),('WSS74','p24'),('WSS90','p24'),('WSS95','p24'),('WSS107','p25'),('WSS119','p25'),('WSS138','p25'),('WSS142','p25'),('WSS172','p25'),('WSS178','p25'),('WSS184','p25'),('WSS192','p25'),('WSS198','p25'),('WSS202','p25'),('WSS215','p25'),('WSS218','p25'),('WSS220','p25'),('WSS224','p25'),('WSS233','p25'),('WSS239','p25'),('WSS269','p25'),('WSS277','p25'),('WSS38','p25'),('WSS54','p25'),('WSS6','p25'),('WSS62','p25'),('WSS67','p25'),('WSS78','p25'),('WSS93','p25'),('WSS94','p25'),('WSS122','p26'),('WSS13','p26'),('WSS132','p26'),('WSS133','p26'),('WSS156','p26'),('WSS157','p26'),('WSS168','p26'),('WSS176','p26'),('WSS180','p26'),('WSS182','p26'),('WSS187','p26'),('WSS191','p26'),('WSS199','p26'),('WSS207','p26'),('WSS227','p26'),('WSS250','p26'),('WSS263','p26'),('WSS282','p26'),('WSS287','p26'),('WSS298','p26'),('WSS52','p26'),('WSS55','p26'),('WSS69','p26'),('WSS72','p26'),('WSS82','p26'),('WSS83','p26'),('WSS89','p26'),('WSS98','p26'),('WSS105','p27'),('WSS111','p27'),('WSS112','p27'),('WSS117','p27'),('WSS130','p27'),('WSS141','p27'),('WSS16','p27'),('WSS165','p27'),('WSS175','p27'),('WSS177','p27'),('WSS188','p27'),('WSS2','p27'),('WSS201','p27'),('WSS243','p27'),('WSS247','p27'),('WSS292','p27'),('WSS40','p27'),('WSS41','p27'),('WSS5','p27'),('WSS52','p27'),('WSS85','p27'),('WSS114','p28'),('WSS117','p28'),('WSS159','p28'),('WSS197','p28'),('WSS207','p28'),('WSS22','p28'),('WSS223','p28'),('WSS272','p28'),('WSS275','p28'),('WSS279','p28'),('WSS282','p28'),('WSS283','p28'),('WSS39','p28'),('WSS89','p28'),('WSS90','p28'),('WSS1','p29'),('WSS121','p29'),('WSS124','p29'),('WSS13','p29'),('WSS133','p29'),('WSS158','p29'),('WSS17','p29'),('WSS177','p29'),('WSS180','p29'),('WSS196','p29'),('WSS203','p29'),('WSS217','p29'),('WSS226','p29'),('WSS260','p29'),('WSS294','p29'),('WSS34','p29'),('WSS35','p29'),('WSS43','p29'),('WSS63','p29'),('WSS71','p29'),('WSS128','p3'),('WSS142','p3'),('WSS209','p3'),('WSS217','p3'),('WSS24','p3'),('WSS26','p3'),('WSS279','p3'),('WSS284','p3'),('WSS289','p3'),('WSS296','p3'),('WSS4','p3'),('WSS48','p3'),('WSS79','p3'),('WSS8','p3'),('WSS88','p3'),('WSS119','p30'),('WSS126','p30'),('WSS143','p30'),('WSS148','p30'),('WSS210','p30'),('WSS213','p30'),('WSS222','p30'),('WSS224','p30'),('WSS226','p30'),('WSS246','p30'),('WSS261','p30'),('WSS272','p30'),('WSS39','p30'),('WSS44','p30'),('WSS51','p30'),('WSS7','p30'),('WSS82','p30'),('WSS88','p30'),('WSS107','p4'),('WSS108','p4'),('WSS111','p4'),('WSS113','p4'),('WSS118','p4'),('WSS184','p4'),('WSS188','p4'),('WSS19','p4'),('WSS190','p4'),('WSS196','p4'),('WSS223','p4'),('WSS232','p4'),('WSS233','p4'),('WSS236','p4'),('WSS242','p4'),('WSS25','p4'),('WSS255','p4'),('WSS260','p4'),('WSS271','p4'),('WSS278','p4'),('WSS28','p4'),('WSS286','p4'),('WSS50','p4'),('WSS57','p4'),('WSS6','p4'),('WSS73','p4'),('WSS96','p4'),('WSS97','p4'),('WSS102','p5'),('WSS110','p5'),('WSS127','p5'),('WSS139','p5'),('WSS171','p5'),('WSS181','p5'),('WSS204','p5'),('WSS232','p5'),('WSS234','p5'),('WSS246','p5'),('WSS267','p5'),('WSS40','p5'),('WSS56','p5'),('WSS62','p5'),('WSS75','p5'),('WSS9','p5'),('WSS109','p6'),('WSS126','p6'),('WSS152','p6'),('WSS169','p6'),('WSS191','p6'),('WSS193','p6'),('WSS218','p6'),('WSS29','p6'),('WSS298','p6'),('WSS35','p6'),('WSS45','p6'),('WSS60','p6'),('WSS7','p6'),('WSS84','p6'),('WSS96','p6'),('WSS10','p7'),('WSS100','p7'),('WSS144','p7'),('WSS145','p7'),('WSS167','p7'),('WSS193','p7'),('WSS214','p7'),('WSS231','p7'),('WSS240','p7'),('WSS261','p7'),('WSS299','p7'),('WSS68','p7'),('WSS83','p7'),('WSS144','p8'),('WSS147','p8'),('WSS171','p8'),('WSS173','p8'),('WSS186','p8'),('WSS200','p8'),('WSS208','p8'),('WSS250','p8'),('WSS253','p8'),('WSS258','p8'),('WSS31','p8'),('WSS48','p8'),('WSS53','p8'),('WSS66','p8'),('WSS72','p8'),('WSS76','p8'),('WSS79','p8'),('WSS95','p8'),('WSS97','p8'),('WSS115','p9'),('WSS135','p9'),('WSS15','p9'),('WSS150','p9'),('WSS151','p9'),('WSS162','p9'),('WSS166','p9'),('WSS204','p9'),('WSS21','p9'),('WSS211','p9'),('WSS22','p9'),('WSS229','p9'),('WSS235','p9'),('WSS241','p9'),('WSS248','p9'),('WSS266','p9'),('WSS268','p9'),('WSS271','p9'),('WSS278','p9'),('WSS285','p9'),('WSS44','p9'),('WSS80','p9'),('WSS81','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS101','p1'),('WSS11','p1'),('WSS111','p1'),('WSS117','p1'),('WSS118','p1'),('WSS129','p1'),('WSS13','p1'),('WSS132','p1'),('WSS136','p1'),('WSS14','p1'),('WSS141','p1'),('WSS148','p1'),('WSS15','p1'),('WSS154','p1'),('WSS174','p1'),('WSS175','p1'),('WSS19','p1'),('WSS191','p1'),('WSS194','p1'),('WSS196','p1'),('WSS197','p1'),('WSS204','p1'),('WSS215','p1'),('WSS22','p1'),('WSS220','p1'),('WSS223','p1'),('WSS23','p1'),('WSS234','p1'),('WSS237','p1'),('WSS239','p1'),('WSS244','p1'),('WSS245','p1'),('WSS247','p1'),('WSS248','p1'),('WSS249','p1'),('WSS250','p1'),('WSS254','p1'),('WSS255','p1'),('WSS256','p1'),('WSS261','p1'),('WSS266','p1'),('WSS268','p1'),('WSS270','p1'),('WSS274','p1'),('WSS277','p1'),('WSS281','p1'),('WSS283','p1'),('WSS29','p1'),('WSS290','p1'),('WSS300','p1'),('WSS35','p1'),('WSS38','p1'),('WSS41','p1'),('WSS46','p1'),('WSS49','p1'),('WSS51','p1'),('WSS57','p1'),('WSS59','p1'),('WSS60','p1'),('WSS61','p1'),('WSS63','p1'),('WSS64','p1'),('WSS65','p1'),('WSS71','p1'),('WSS72','p1'),('WSS74','p1'),('WSS8','p1'),('WSS81','p1'),('WSS90','p1'),('WSS92','p1'),('WSS93','p1'),('WSS99','p1'),('WSS102','p10'),('WSS105','p10'),('WSS108','p10'),('WSS110','p10'),('WSS113','p10'),('WSS114','p10'),('WSS12','p10'),('WSS120','p10'),('WSS127','p10'),('WSS128','p10'),('WSS138','p10'),('WSS145','p10'),('WSS15','p10'),('WSS153','p10'),('WSS160','p10'),('WSS17','p10'),('WSS174','p10'),('WSS175','p10'),('WSS177','p10'),('WSS178','p10'),('WSS18','p10'),('WSS184','p10'),('WSS189','p10'),('WSS19','p10'),('WSS198','p10'),('WSS2','p10'),('WSS202','p10'),('WSS205','p10'),('WSS206','p10'),('WSS210','p10'),('WSS211','p10'),('WSS215','p10'),('WSS221','p10'),('WSS222','p10'),('WSS224','p10'),('WSS227','p10'),('WSS229','p10'),('WSS238','p10'),('WSS239','p10'),('WSS240','p10'),('WSS242','p10'),('WSS247','p10'),('WSS248','p10'),('WSS250','p10'),('WSS254','p10'),('WSS261','p10'),('WSS267','p10'),('WSS27','p10'),('WSS271','p10'),('WSS273','p10'),('WSS287','p10'),('WSS289','p10'),('WSS291','p10'),('WSS293','p10'),('WSS3','p10'),('WSS45','p10'),('WSS47','p10'),('WSS49','p10'),('WSS50','p10'),('WSS55','p10'),('WSS64','p10'),('WSS65','p10'),('WSS68','p10'),('WSS70','p10'),('WSS71','p10'),('WSS74','p10'),('WSS78','p10'),('WSS84','p10'),('WSS105','p11'),('WSS112','p11'),('WSS114','p11'),('WSS12','p11'),('WSS126','p11'),('WSS131','p11'),('WSS134','p11'),('WSS135','p11'),('WSS157','p11'),('WSS159','p11'),('WSS166','p11'),('WSS18','p11'),('WSS180','p11'),('WSS185','p11'),('WSS187','p11'),('WSS190','p11'),('WSS194','p11'),('WSS196','p11'),('WSS198','p11'),('WSS20','p11'),('WSS204','p11'),('WSS206','p11'),('WSS210','p11'),('WSS211','p11'),('WSS216','p11'),('WSS219','p11'),('WSS221','p11'),('WSS231','p11'),('WSS233','p11'),('WSS237','p11'),('WSS244','p11'),('WSS250','p11'),('WSS255','p11'),('WSS256','p11'),('WSS259','p11'),('WSS261','p11'),('WSS270','p11'),('WSS271','p11'),('WSS273','p11'),('WSS275','p11'),('WSS28','p11'),('WSS288','p11'),('WSS289','p11'),('WSS295','p11'),('WSS296','p11'),('WSS31','p11'),('WSS34','p11'),('WSS38','p11'),('WSS41','p11'),('WSS45','p11'),('WSS48','p11'),('WSS49','p11'),('WSS50','p11'),('WSS56','p11'),('WSS57','p11'),('WSS59','p11'),('WSS6','p11'),('WSS60','p11'),('WSS63','p11'),('WSS67','p11'),('WSS70','p11'),('WSS73','p11'),('WSS82','p11'),('WSS94','p11'),('WSS96','p11'),('WSS98','p11'),('WSS100','p12'),('WSS106','p12'),('WSS109','p12'),('WSS11','p12'),('WSS110','p12'),('WSS112','p12'),('WSS118','p12'),('WSS12','p12'),('WSS121','p12'),('WSS123','p12'),('WSS127','p12'),('WSS130','p12'),('WSS132','p12'),('WSS141','p12'),('WSS145','p12'),('WSS150','p12'),('WSS151','p12'),('WSS152','p12'),('WSS154','p12'),('WSS155','p12'),('WSS157','p12'),('WSS158','p12'),('WSS162','p12'),('WSS168','p12'),('WSS17','p12'),('WSS171','p12'),('WSS185','p12'),('WSS186','p12'),('WSS190','p12'),('WSS197','p12'),('WSS2','p12'),('WSS20','p12'),('WSS201','p12'),('WSS205','p12'),('WSS209','p12'),('WSS210','p12'),('WSS211','p12'),('WSS212','p12'),('WSS215','p12'),('WSS22','p12'),('WSS229','p12'),('WSS232','p12'),('WSS235','p12'),('WSS24','p12'),('WSS245','p12'),('WSS256','p12'),('WSS260','p12'),('WSS267','p12'),('WSS270','p12'),('WSS272','p12'),('WSS273','p12'),('WSS275','p12'),('WSS277','p12'),('WSS279','p12'),('WSS280','p12'),('WSS286','p12'),('WSS288','p12'),('WSS290','p12'),('WSS33','p12'),('WSS35','p12'),('WSS39','p12'),('WSS4','p12'),('WSS43','p12'),('WSS45','p12'),('WSS46','p12'),('WSS50','p12'),('WSS51','p12'),('WSS68','p12'),('WSS74','p12'),('WSS78','p12'),('WSS79','p12'),('WSS80','p12'),('WSS82','p12'),('WSS83','p12'),('WSS84','p12'),('WSS88','p12'),('WSS9','p12'),('WSS91','p12'),('WSS92','p12'),('WSS95','p12'),('WSS97','p12'),('WSS98','p12'),('WSS100','p13'),('WSS106','p13'),('WSS107','p13'),('WSS112','p13'),('WSS116','p13'),('WSS120','p13'),('WSS123','p13'),('WSS128','p13'),('WSS135','p13'),('WSS138','p13'),('WSS142','p13'),('WSS153','p13'),('WSS154','p13'),('WSS16','p13'),('WSS160','p13'),('WSS172','p13'),('WSS180','p13'),('WSS188','p13'),('WSS189','p13'),('WSS19','p13'),('WSS195','p13'),('WSS196','p13'),('WSS2','p13'),('WSS201','p13'),('WSS203','p13'),('WSS205','p13'),('WSS209','p13'),('WSS21','p13'),('WSS213','p13'),('WSS215','p13'),('WSS217','p13'),('WSS223','p13'),('WSS228','p13'),('WSS230','p13'),('WSS231','p13'),('WSS233','p13'),('WSS237','p13'),('WSS24','p13'),('WSS241','p13'),('WSS242','p13'),('WSS245','p13'),('WSS251','p13'),('WSS252','p13'),('WSS258','p13'),('WSS26','p13'),('WSS263','p13'),('WSS265','p13'),('WSS266','p13'),('WSS276','p13'),('WSS279','p13'),('WSS283','p13'),('WSS287','p13'),('WSS288','p13'),('WSS29','p13'),('WSS297','p13'),('WSS30','p13'),('WSS300','p13'),('WSS31','p13'),('WSS32','p13'),('WSS48','p13'),('WSS51','p13'),('WSS57','p13'),('WSS58','p13'),('WSS67','p13'),('WSS68','p13'),('WSS72','p13'),('WSS75','p13'),('WSS76','p13'),('WSS86','p13'),('WSS94','p13'),('WSS10','p14'),('WSS103','p14'),('WSS112','p14'),('WSS118','p14'),('WSS119','p14'),('WSS121','p14'),('WSS122','p14'),('WSS123','p14'),('WSS125','p14'),('WSS126','p14'),('WSS131','p14'),('WSS132','p14'),('WSS144','p14'),('WSS146','p14'),('WSS151','p14'),('WSS152','p14'),('WSS156','p14'),('WSS163','p14'),('WSS168','p14'),('WSS170','p14'),('WSS172','p14'),('WSS176','p14'),('WSS186','p14'),('WSS187','p14'),('WSS190','p14'),('WSS192','p14'),('WSS196','p14'),('WSS199','p14'),('WSS20','p14'),('WSS200','p14'),('WSS214','p14'),('WSS217','p14'),('WSS22','p14'),('WSS220','p14'),('WSS224','p14'),('WSS225','p14'),('WSS232','p14'),('WSS239','p14'),('WSS242','p14'),('WSS243','p14'),('WSS25','p14'),('WSS252','p14'),('WSS255','p14'),('WSS259','p14'),('WSS264','p14'),('WSS268','p14'),('WSS269','p14'),('WSS272','p14'),('WSS276','p14'),('WSS289','p14'),('WSS293','p14'),('WSS299','p14'),('WSS39','p14'),('WSS41','p14'),('WSS44','p14'),('WSS5','p14'),('WSS55','p14'),('WSS61','p14'),('WSS64','p14'),('WSS67','p14'),('WSS7','p14'),('WSS77','p14'),('WSS83','p14'),('WSS87','p14'),('WSS101','p15'),('WSS103','p15'),('WSS11','p15'),('WSS113','p15'),('WSS115','p15'),('WSS116','p15'),('WSS120','p15'),('WSS131','p15'),('WSS132','p15'),('WSS135','p15'),('WSS136','p15'),('WSS140','p15'),('WSS141','p15'),('WSS143','p15'),('WSS149','p15'),('WSS152','p15'),('WSS158','p15'),('WSS16','p15'),('WSS166','p15'),('WSS167','p15'),('WSS17','p15'),('WSS171','p15'),('WSS173','p15'),('WSS177','p15'),('WSS179','p15'),('WSS197','p15'),('WSS199','p15'),('WSS2','p15'),('WSS200','p15'),('WSS201','p15'),('WSS206','p15'),('WSS208','p15'),('WSS211','p15'),('WSS212','p15'),('WSS213','p15'),('WSS214','p15'),('WSS215','p15'),('WSS223','p15'),('WSS224','p15'),('WSS227','p15'),('WSS23','p15'),('WSS230','p15'),('WSS231','p15'),('WSS232','p15'),('WSS235','p15'),('WSS236','p15'),('WSS240','p15'),('WSS242','p15'),('WSS243','p15'),('WSS245','p15'),('WSS246','p15'),('WSS248','p15'),('WSS251','p15'),('WSS253','p15'),('WSS258','p15'),('WSS261','p15'),('WSS264','p15'),('WSS273','p15'),('WSS274','p15'),('WSS282','p15'),('WSS284','p15'),('WSS289','p15'),('WSS29','p15'),('WSS291','p15'),('WSS296','p15'),('WSS297','p15'),('WSS30','p15'),('WSS37','p15'),('WSS40','p15'),('WSS41','p15'),('WSS42','p15'),('WSS43','p15'),('WSS44','p15'),('WSS50','p15'),('WSS52','p15'),('WSS62','p15'),('WSS65','p15'),('WSS66','p15'),('WSS67','p15'),('WSS72','p15'),('WSS75','p15'),('WSS83','p15'),('WSS85','p15'),('WSS87','p15'),('WSS9','p15'),('WSS92','p15'),('WSS99','p15'),('WSS10','p16'),('WSS107','p16'),('WSS108','p16'),('WSS110','p16'),('WSS113','p16'),('WSS115','p16'),('WSS121','p16'),('WSS122','p16'),('WSS127','p16'),('WSS133','p16'),('WSS135','p16'),('WSS139','p16'),('WSS144','p16'),('WSS148','p16'),('WSS156','p16'),('WSS158','p16'),('WSS160','p16'),('WSS166','p16'),('WSS169','p16'),('WSS17','p16'),('WSS177','p16'),('WSS178','p16'),('WSS182','p16'),('WSS183','p16'),('WSS187','p16'),('WSS189','p16'),('WSS191','p16'),('WSS192','p16'),('WSS193','p16'),('WSS195','p16'),('WSS198','p16'),('WSS200','p16'),('WSS203','p16'),('WSS206','p16'),('WSS217','p16'),('WSS218','p16'),('WSS222','p16'),('WSS224','p16'),('WSS225','p16'),('WSS23','p16'),('WSS230','p16'),('WSS231','p16'),('WSS235','p16'),('WSS240','p16'),('WSS249','p16'),('WSS258','p16'),('WSS264','p16'),('WSS276','p16'),('WSS288','p16'),('WSS289','p16'),('WSS293','p16'),('WSS299','p16'),('WSS32','p16'),('WSS34','p16'),('WSS39','p16'),('WSS4','p16'),('WSS41','p16'),('WSS47','p16'),('WSS51','p16'),('WSS55','p16'),('WSS58','p16'),('WSS59','p16'),('WSS65','p16'),('WSS69','p16'),('WSS70','p16'),('WSS73','p16'),('WSS74','p16'),('WSS78','p16'),('WSS80','p16'),('WSS82','p16'),('WSS86','p16'),('WSS9','p16'),('WSS90','p16'),('WSS93','p16'),('WSS94','p16'),('WSS96','p16'),('WSS97','p16'),('WSS100','p17'),('WSS107','p17'),('WSS108','p17'),('WSS113','p17'),('WSS114','p17'),('WSS129','p17'),('WSS133','p17'),('WSS137','p17'),('WSS140','p17'),('WSS145','p17'),('WSS148','p17'),('WSS157','p17'),('WSS162','p17'),('WSS165','p17'),('WSS173','p17'),('WSS174','p17'),('WSS179','p17'),('WSS180','p17'),('WSS188','p17'),('WSS192','p17'),('WSS196','p17'),('WSS199','p17'),('WSS2','p17'),('WSS202','p17'),('WSS203','p17'),('WSS208','p17'),('WSS209','p17'),('WSS218','p17'),('WSS22','p17'),('WSS221','p17'),('WSS223','p17'),('WSS225','p17'),('WSS226','p17'),('WSS227','p17'),('WSS232','p17'),('WSS236','p17'),('WSS238','p17'),('WSS239','p17'),('WSS24','p17'),('WSS243','p17'),('WSS249','p17'),('WSS253','p17'),('WSS259','p17'),('WSS26','p17'),('WSS261','p17'),('WSS263','p17'),('WSS267','p17'),('WSS277','p17'),('WSS279','p17'),('WSS280','p17'),('WSS284','p17'),('WSS288','p17'),('WSS290','p17'),('WSS298','p17'),('WSS299','p17'),('WSS300','p17'),('WSS33','p17'),('WSS38','p17'),('WSS43','p17'),('WSS5','p17'),('WSS55','p17'),('WSS6','p17'),('WSS68','p17'),('WSS70','p17'),('WSS76','p17'),('WSS85','p17'),('WSS86','p17'),('WSS88','p17'),('WSS9','p17'),('WSS103','p18'),('WSS108','p18'),('WSS111','p18'),('WSS113','p18'),('WSS116','p18'),('WSS119','p18'),('WSS12','p18'),('WSS124','p18'),('WSS130','p18'),('WSS131','p18'),('WSS132','p18'),('WSS136','p18'),('WSS14','p18'),('WSS143','p18'),('WSS145','p18'),('WSS146','p18'),('WSS15','p18'),('WSS155','p18'),('WSS165','p18'),('WSS166','p18'),('WSS167','p18'),('WSS179','p18'),('WSS182','p18'),('WSS188','p18'),('WSS194','p18'),('WSS197','p18'),('WSS199','p18'),('WSS2','p18'),('WSS20','p18'),('WSS200','p18'),('WSS201','p18'),('WSS202','p18'),('WSS216','p18'),('WSS222','p18'),('WSS226','p18'),('WSS228','p18'),('WSS234','p18'),('WSS240','p18'),('WSS241','p18'),('WSS245','p18'),('WSS246','p18'),('WSS248','p18'),('WSS254','p18'),('WSS255','p18'),('WSS265','p18'),('WSS267','p18'),('WSS27','p18'),('WSS275','p18'),('WSS280','p18'),('WSS281','p18'),('WSS285','p18'),('WSS3','p18'),('WSS300','p18'),('WSS32','p18'),('WSS33','p18'),('WSS37','p18'),('WSS4','p18'),('WSS46','p18'),('WSS48','p18'),('WSS52','p18'),('WSS53','p18'),('WSS59','p18'),('WSS75','p18'),('WSS76','p18'),('WSS81','p18'),('WSS83','p18'),('WSS84','p18'),('WSS87','p18'),('WSS89','p18'),('WSS9','p18'),('WSS92','p18'),('WSS93','p18'),('WSS98','p18'),('WSS104','p19'),('WSS107','p19'),('WSS111','p19'),('WSS116','p19'),('WSS117','p19'),('WSS122','p19'),('WSS13','p19'),('WSS130','p19'),('WSS133','p19'),('WSS137','p19'),('WSS139','p19'),('WSS141','p19'),('WSS145','p19'),('WSS158','p19'),('WSS159','p19'),('WSS163','p19'),('WSS164','p19'),('WSS165','p19'),('WSS168','p19'),('WSS17','p19'),('WSS173','p19'),('WSS179','p19'),('WSS186','p19'),('WSS190','p19'),('WSS191','p19'),('WSS193','p19'),('WSS202','p19'),('WSS204','p19'),('WSS211','p19'),('WSS220','p19'),('WSS222','p19'),('WSS228','p19'),('WSS23','p19'),('WSS230','p19'),('WSS235','p19'),('WSS238','p19'),('WSS247','p19'),('WSS25','p19'),('WSS256','p19'),('WSS258','p19'),('WSS259','p19'),('WSS261','p19'),('WSS265','p19'),('WSS268','p19'),('WSS269','p19'),('WSS278','p19'),('WSS280','p19'),('WSS282','p19'),('WSS286','p19'),('WSS29','p19'),('WSS294','p19'),('WSS297','p19'),('WSS298','p19'),('WSS35','p19'),('WSS36','p19'),('WSS4','p19'),('WSS40','p19'),('WSS42','p19'),('WSS45','p19'),('WSS5','p19'),('WSS52','p19'),('WSS53','p19'),('WSS54','p19'),('WSS60','p19'),('WSS7','p19'),('WSS71','p19'),('WSS74','p19'),('WSS75','p19'),('WSS80','p19'),('WSS85','p19'),('WSS9','p19'),('WSS97','p19'),('WSS98','p19'),('WSS102','p2'),('WSS104','p2'),('WSS105','p2'),('WSS107','p2'),('WSS117','p2'),('WSS118','p2'),('WSS122','p2'),('WSS124','p2'),('WSS125','p2'),('WSS132','p2'),('WSS134','p2'),('WSS139','p2'),('WSS140','p2'),('WSS143','p2'),('WSS146','p2'),('WSS147','p2'),('WSS169','p2'),('WSS171','p2'),('WSS174','p2'),('WSS180','p2'),('WSS187','p2'),('WSS189','p2'),('WSS19','p2'),('WSS193','p2'),('WSS195','p2'),('WSS198','p2'),('WSS199','p2'),('WSS206','p2'),('WSS210','p2'),('WSS213','p2'),('WSS220','p2'),('WSS221','p2'),('WSS223','p2'),('WSS226','p2'),('WSS228','p2'),('WSS229','p2'),('WSS231','p2'),('WSS239','p2'),('WSS240','p2'),('WSS241','p2'),('WSS244','p2'),('WSS246','p2'),('WSS249','p2'),('WSS254','p2'),('WSS256','p2'),('WSS26','p2'),('WSS263','p2'),('WSS267','p2'),('WSS268','p2'),('WSS27','p2'),('WSS271','p2'),('WSS273','p2'),('WSS276','p2'),('WSS277','p2'),('WSS278','p2'),('WSS285','p2'),('WSS286','p2'),('WSS287','p2'),('WSS292','p2'),('WSS294','p2'),('WSS295','p2'),('WSS296','p2'),('WSS299','p2'),('WSS3','p2'),('WSS42','p2'),('WSS48','p2'),('WSS50','p2'),('WSS52','p2'),('WSS53','p2'),('WSS56','p2'),('WSS64','p2'),('WSS78','p2'),('WSS8','p2'),('WSS82','p2'),('WSS86','p2'),('WSS88','p2'),('WSS99','p2'),('WSS10','p20'),('WSS101','p20'),('WSS11','p20'),('WSS113','p20'),('WSS115','p20'),('WSS117','p20'),('WSS120','p20'),('WSS131','p20'),('WSS137','p20'),('WSS139','p20'),('WSS14','p20'),('WSS142','p20'),('WSS144','p20'),('WSS146','p20'),('WSS147','p20'),('WSS15','p20'),('WSS155','p20'),('WSS157','p20'),('WSS158','p20'),('WSS161','p20'),('WSS162','p20'),('WSS164','p20'),('WSS165','p20'),('WSS167','p20'),('WSS174','p20'),('WSS182','p20'),('WSS191','p20'),('WSS195','p20'),('WSS196','p20'),('WSS207','p20'),('WSS208','p20'),('WSS21','p20'),('WSS213','p20'),('WSS218','p20'),('WSS221','p20'),('WSS227','p20'),('WSS243','p20'),('WSS245','p20'),('WSS250','p20'),('WSS255','p20'),('WSS257','p20'),('WSS258','p20'),('WSS268','p20'),('WSS271','p20'),('WSS272','p20'),('WSS274','p20'),('WSS275','p20'),('WSS276','p20'),('WSS278','p20'),('WSS283','p20'),('WSS290','p20'),('WSS292','p20'),('WSS299','p20'),('WSS3','p20'),('WSS33','p20'),('WSS34','p20'),('WSS39','p20'),('WSS4','p20'),('WSS42','p20'),('WSS48','p20'),('WSS57','p20'),('WSS6','p20'),('WSS66','p20'),('WSS70','p20'),('WSS71','p20'),('WSS72','p20'),('WSS74','p20'),('WSS77','p20'),('WSS78','p20'),('WSS81','p20'),('WSS83','p20'),('WSS87','p20'),('WSS91','p20'),('WSS102','p21'),('WSS103','p21'),('WSS105','p21'),('WSS106','p21'),('WSS120','p21'),('WSS124','p21'),('WSS128','p21'),('WSS132','p21'),('WSS135','p21'),('WSS14','p21'),('WSS145','p21'),('WSS149','p21'),('WSS159','p21'),('WSS160','p21'),('WSS163','p21'),('WSS164','p21'),('WSS170','p21'),('WSS171','p21'),('WSS174','p21'),('WSS181','p21'),('WSS188','p21'),('WSS189','p21'),('WSS193','p21'),('WSS208','p21'),('WSS211','p21'),('WSS219','p21'),('WSS225','p21'),('WSS226','p21'),('WSS231','p21'),('WSS239','p21'),('WSS24','p21'),('WSS241','p21'),('WSS244','p21'),('WSS246','p21'),('WSS247','p21'),('WSS25','p21'),('WSS253','p21'),('WSS255','p21'),('WSS259','p21'),('WSS260','p21'),('WSS265','p21'),('WSS270','p21'),('WSS272','p21'),('WSS273','p21'),('WSS276','p21'),('WSS285','p21'),('WSS291','p21'),('WSS292','p21'),('WSS293','p21'),('WSS296','p21'),('WSS297','p21'),('WSS3','p21'),('WSS300','p21'),('WSS31','p21'),('WSS43','p21'),('WSS54','p21'),('WSS56','p21'),('WSS58','p21'),('WSS63','p21'),('WSS67','p21'),('WSS69','p21'),('WSS71','p21'),('WSS83','p21'),('WSS84','p21'),('WSS89','p21'),('WSS90','p21'),('WSS102','p22'),('WSS110','p22'),('WSS125','p22'),('WSS127','p22'),('WSS129','p22'),('WSS13','p22'),('WSS130','p22'),('WSS137','p22'),('WSS144','p22'),('WSS150','p22'),('WSS157','p22'),('WSS158','p22'),('WSS160','p22'),('WSS169','p22'),('WSS170','p22'),('WSS175','p22'),('WSS179','p22'),('WSS181','p22'),('WSS182','p22'),('WSS184','p22'),('WSS185','p22'),('WSS186','p22'),('WSS2','p22'),('WSS207','p22'),('WSS209','p22'),('WSS213','p22'),('WSS214','p22'),('WSS216','p22'),('WSS223','p22'),('WSS226','p22'),('WSS233','p22'),('WSS235','p22'),('WSS237','p22'),('WSS242','p22'),('WSS244','p22'),('WSS251','p22'),('WSS252','p22'),('WSS255','p22'),('WSS264','p22'),('WSS272','p22'),('WSS277','p22'),('WSS287','p22'),('WSS289','p22'),('WSS293','p22'),('WSS295','p22'),('WSS298','p22'),('WSS30','p22'),('WSS32','p22'),('WSS36','p22'),('WSS40','p22'),('WSS43','p22'),('WSS48','p22'),('WSS5','p22'),('WSS52','p22'),('WSS55','p22'),('WSS57','p22'),('WSS58','p22'),('WSS59','p22'),('WSS66','p22'),('WSS68','p22'),('WSS7','p22'),('WSS72','p22'),('WSS75','p22'),('WSS81','p22'),('WSS86','p22'),('WSS90','p22'),('WSS94','p22'),('WSS95','p22'),('WSS98','p22'),('WSS1','p23'),('WSS10','p23'),('WSS102','p23'),('WSS108','p23'),('WSS111','p23'),('WSS112','p23'),('WSS118','p23'),('WSS121','p23'),('WSS125','p23'),('WSS13','p23'),('WSS134','p23'),('WSS145','p23'),('WSS147','p23'),('WSS149','p23'),('WSS151','p23'),('WSS156','p23'),('WSS161','p23'),('WSS165','p23'),('WSS166','p23'),('WSS169','p23'),('WSS178','p23'),('WSS180','p23'),('WSS182','p23'),('WSS189','p23'),('WSS192','p23'),('WSS20','p23'),('WSS201','p23'),('WSS202','p23'),('WSS204','p23'),('WSS207','p23'),('WSS213','p23'),('WSS217','p23'),('WSS218','p23'),('WSS219','p23'),('WSS225','p23'),('WSS233','p23'),('WSS236','p23'),('WSS24','p23'),('WSS242','p23'),('WSS243','p23'),('WSS246','p23'),('WSS25','p23'),('WSS250','p23'),('WSS253','p23'),('WSS256','p23'),('WSS259','p23'),('WSS265','p23'),('WSS271','p23'),('WSS278','p23'),('WSS279','p23'),('WSS286','p23'),('WSS290','p23'),('WSS295','p23'),('WSS300','p23'),('WSS38','p23'),('WSS42','p23'),('WSS46','p23'),('WSS53','p23'),('WSS60','p23'),('WSS61','p23'),('WSS63','p23'),('WSS68','p23'),('WSS72','p23'),('WSS73','p23'),('WSS76','p23'),('WSS81','p23'),('WSS84','p23'),('WSS90','p23'),('WSS97','p23'),('WSS104','p24'),('WSS114','p24'),('WSS116','p24'),('WSS119','p24'),('WSS12','p24'),('WSS13','p24'),('WSS130','p24'),('WSS136','p24'),('WSS139','p24'),('WSS149','p24'),('WSS15','p24'),('WSS153','p24'),('WSS16','p24'),('WSS164','p24'),('WSS166','p24'),('WSS167','p24'),('WSS177','p24'),('WSS178','p24'),('WSS18','p24'),('WSS187','p24'),('WSS192','p24'),('WSS193','p24'),('WSS198','p24'),('WSS207','p24'),('WSS210','p24'),('WSS214','p24'),('WSS216','p24'),('WSS238','p24'),('WSS239','p24'),('WSS240','p24'),('WSS250','p24'),('WSS257','p24'),('WSS26','p24'),('WSS260','p24'),('WSS263','p24'),('WSS27','p24'),('WSS276','p24'),('WSS281','p24'),('WSS287','p24'),('WSS290','p24'),('WSS291','p24'),('WSS30','p24'),('WSS33','p24'),('WSS34','p24'),('WSS35','p24'),('WSS39','p24'),('WSS4','p24'),('WSS46','p24'),('WSS47','p24'),('WSS5','p24'),('WSS57','p24'),('WSS60','p24'),('WSS62','p24'),('WSS66','p24'),('WSS7','p24'),('WSS80','p24'),('WSS87','p24'),('WSS89','p24'),('WSS91','p24'),('WSS93','p24'),('WSS94','p24'),('WSS95','p24'),('WSS96','p24'),('WSS98','p24'),('WSS100','p25'),('WSS101','p25'),('WSS104','p25'),('WSS108','p25'),('WSS109','p25'),('WSS119','p25'),('WSS12','p25'),('WSS122','p25'),('WSS123','p25'),('WSS134','p25'),('WSS136','p25'),('WSS14','p25'),('WSS140','p25'),('WSS141','p25'),('WSS147','p25'),('WSS148','p25'),('WSS153','p25'),('WSS160','p25'),('WSS161','p25'),('WSS171','p25'),('WSS172','p25'),('WSS178','p25'),('WSS183','p25'),('WSS184','p25'),('WSS186','p25'),('WSS188','p25'),('WSS191','p25'),('WSS192','p25'),('WSS193','p25'),('WSS194','p25'),('WSS205','p25'),('WSS206','p25'),('WSS208','p25'),('WSS212','p25'),('WSS214','p25'),('WSS234','p25'),('WSS245','p25'),('WSS255','p25'),('WSS257','p25'),('WSS258','p25'),('WSS262','p25'),('WSS263','p25'),('WSS270','p25'),('WSS272','p25'),('WSS278','p25'),('WSS279','p25'),('WSS282','p25'),('WSS283','p25'),('WSS284','p25'),('WSS286','p25'),('WSS290','p25'),('WSS292','p25'),('WSS31','p25'),('WSS34','p25'),('WSS36','p25'),('WSS38','p25'),('WSS45','p25'),('WSS46','p25'),('WSS48','p25'),('WSS52','p25'),('WSS53','p25'),('WSS58','p25'),('WSS63','p25'),('WSS75','p25'),('WSS78','p25'),('WSS80','p25'),('WSS87','p25'),('WSS95','p25'),('WSS97','p25'),('WSS1','p26'),('WSS105','p26'),('WSS110','p26'),('WSS115','p26'),('WSS125','p26'),('WSS129','p26'),('WSS134','p26'),('WSS138','p26'),('WSS147','p26'),('WSS148','p26'),('WSS149','p26'),('WSS152','p26'),('WSS153','p26'),('WSS156','p26'),('WSS159','p26'),('WSS16','p26'),('WSS162','p26'),('WSS169','p26'),('WSS172','p26'),('WSS176','p26'),('WSS182','p26'),('WSS184','p26'),('WSS186','p26'),('WSS190','p26'),('WSS194','p26'),('WSS197','p26'),('WSS2','p26'),('WSS20','p26'),('WSS202','p26'),('WSS203','p26'),('WSS204','p26'),('WSS205','p26'),('WSS21','p26'),('WSS219','p26'),('WSS220','p26'),('WSS228','p26'),('WSS231','p26'),('WSS243','p26'),('WSS244','p26'),('WSS247','p26'),('WSS252','p26'),('WSS254','p26'),('WSS257','p26'),('WSS260','p26'),('WSS262','p26'),('WSS266','p26'),('WSS271','p26'),('WSS274','p26'),('WSS278','p26'),('WSS282','p26'),('WSS285','p26'),('WSS29','p26'),('WSS291','p26'),('WSS296','p26'),('WSS298','p26'),('WSS299','p26'),('WSS4','p26'),('WSS40','p26'),('WSS52','p26'),('WSS66','p26'),('WSS7','p26'),('WSS73','p26'),('WSS75','p26'),('WSS76','p26'),('WSS79','p26'),('WSS88','p26'),('WSS91','p26'),('WSS99','p26'),('WSS1','p27'),('WSS10','p27'),('WSS104','p27'),('WSS107','p27'),('WSS112','p27'),('WSS113','p27'),('WSS115','p27'),('WSS125','p27'),('WSS126','p27'),('WSS13','p27'),('WSS134','p27'),('WSS139','p27'),('WSS141','p27'),('WSS143','p27'),('WSS144','p27'),('WSS151','p27'),('WSS152','p27'),('WSS157','p27'),('WSS16','p27'),('WSS161','p27'),('WSS17','p27'),('WSS170','p27'),('WSS175','p27'),('WSS176','p27'),('WSS179','p27'),('WSS18','p27'),('WSS183','p27'),('WSS185','p27'),('WSS195','p27'),('WSS199','p27'),('WSS207','p27'),('WSS21','p27'),('WSS218','p27'),('WSS219','p27'),('WSS22','p27'),('WSS240','p27'),('WSS243','p27'),('WSS246','p27'),('WSS252','p27'),('WSS256','p27'),('WSS262','p27'),('WSS265','p27'),('WSS266','p27'),('WSS273','p27'),('WSS28','p27'),('WSS280','p27'),('WSS297','p27'),('WSS298','p27'),('WSS30','p27'),('WSS36','p27'),('WSS37','p27'),('WSS43','p27'),('WSS46','p27'),('WSS47','p27'),('WSS53','p27'),('WSS54','p27'),('WSS56','p27'),('WSS6','p27'),('WSS61','p27'),('WSS67','p27'),('WSS7','p27'),('WSS73','p27'),('WSS77','p27'),('WSS79','p27'),('WSS8','p27'),('WSS80','p27'),('WSS81','p27'),('WSS84','p27'),('WSS85','p27'),('WSS9','p27'),('WSS91','p27'),('WSS1','p28'),('WSS100','p28'),('WSS108','p28'),('WSS115','p28'),('WSS117','p28'),('WSS121','p28'),('WSS124','p28'),('WSS137','p28'),('WSS142','p28'),('WSS148','p28'),('WSS15','p28'),('WSS150','p28'),('WSS151','p28'),('WSS159','p28'),('WSS162','p28'),('WSS163','p28'),('WSS164','p28'),('WSS165','p28'),('WSS18','p28'),('WSS184','p28'),('WSS185','p28'),('WSS19','p28'),('WSS202','p28'),('WSS217','p28'),('WSS222','p28'),('WSS223','p28'),('WSS225','p28'),('WSS227','p28'),('WSS228','p28'),('WSS229','p28'),('WSS237','p28'),('WSS245','p28'),('WSS246','p28'),('WSS247','p28'),('WSS248','p28'),('WSS254','p28'),('WSS262','p28'),('WSS263','p28'),('WSS28','p28'),('WSS281','p28'),('WSS282','p28'),('WSS285','p28'),('WSS286','p28'),('WSS287','p28'),('WSS294','p28'),('WSS295','p28'),('WSS296','p28'),('WSS300','p28'),('WSS39','p28'),('WSS40','p28'),('WSS47','p28'),('WSS54','p28'),('WSS56','p28'),('WSS61','p28'),('WSS65','p28'),('WSS71','p28'),('WSS73','p28'),('WSS76','p28'),('WSS8','p28'),('WSS83','p28'),('WSS85','p28'),('WSS89','p28'),('WSS92','p28'),('WSS96','p28'),('WSS101','p29'),('WSS121','p29'),('WSS123','p29'),('WSS124','p29'),('WSS125','p29'),('WSS126','p29'),('WSS127','p29'),('WSS128','p29'),('WSS13','p29'),('WSS135','p29'),('WSS136','p29'),('WSS137','p29'),('WSS138','p29'),('WSS14','p29'),('WSS140','p29'),('WSS144','p29'),('WSS15','p29'),('WSS157','p29'),('WSS158','p29'),('WSS166','p29'),('WSS167','p29'),('WSS172','p29'),('WSS173','p29'),('WSS181','p29'),('WSS183','p29'),('WSS184','p29'),('WSS188','p29'),('WSS189','p29'),('WSS191','p29'),('WSS192','p29'),('WSS196','p29'),('WSS20','p29'),('WSS203','p29'),('WSS204','p29'),('WSS205','p29'),('WSS207','p29'),('WSS208','p29'),('WSS215','p29'),('WSS220','p29'),('WSS221','p29'),('WSS226','p29'),('WSS23','p29'),('WSS230','p29'),('WSS232','p29'),('WSS241','p29'),('WSS251','p29'),('WSS252','p29'),('WSS262','p29'),('WSS263','p29'),('WSS268','p29'),('WSS279','p29'),('WSS28','p29'),('WSS280','p29'),('WSS283','p29'),('WSS284','p29'),('WSS286','p29'),('WSS288','p29'),('WSS291','p29'),('WSS299','p29'),('WSS31','p29'),('WSS35','p29'),('WSS44','p29'),('WSS48','p29'),('WSS49','p29'),('WSS53','p29'),('WSS59','p29'),('WSS6','p29'),('WSS61','p29'),('WSS65','p29'),('WSS66','p29'),('WSS74','p29'),('WSS77','p29'),('WSS8','p29'),('WSS82','p29'),('WSS86','p29'),('WSS93','p29'),('WSS94','p29'),('WSS95','p29'),('WSS96','p29'),('WSS97','p29'),('WSS100','p3'),('WSS104','p3'),('WSS109','p3'),('WSS11','p3'),('WSS113','p3'),('WSS124','p3'),('WSS126','p3'),('WSS129','p3'),('WSS142','p3'),('WSS144','p3'),('WSS149','p3'),('WSS150','p3'),('WSS152','p3'),('WSS154','p3'),('WSS155','p3'),('WSS16','p3'),('WSS161','p3'),('WSS163','p3'),('WSS169','p3'),('WSS176','p3'),('WSS177','p3'),('WSS181','p3'),('WSS182','p3'),('WSS183','p3'),('WSS185','p3'),('WSS186','p3'),('WSS208','p3'),('WSS21','p3'),('WSS211','p3'),('WSS217','p3'),('WSS22','p3'),('WSS224','p3'),('WSS226','p3'),('WSS232','p3'),('WSS244','p3'),('WSS248','p3'),('WSS257','p3'),('WSS264','p3'),('WSS267','p3'),('WSS271','p3'),('WSS275','p3'),('WSS281','p3'),('WSS282','p3'),('WSS284','p3'),('WSS29','p3'),('WSS292','p3'),('WSS31','p3'),('WSS37','p3'),('WSS41','p3'),('WSS53','p3'),('WSS54','p3'),('WSS62','p3'),('WSS63','p3'),('WSS64','p3'),('WSS70','p3'),('WSS71','p3'),('WSS74','p3'),('WSS80','p3'),('WSS86','p3'),('WSS91','p3'),('WSS94','p3'),('WSS95','p3'),('WSS96','p3'),('WSS100','p30'),('WSS109','p30'),('WSS110','p30'),('WSS115','p30'),('WSS118','p30'),('WSS123','p30'),('WSS129','p30'),('WSS132','p30'),('WSS133','p30'),('WSS138','p30'),('WSS139','p30'),('WSS14','p30'),('WSS143','p30'),('WSS147','p30'),('WSS151','p30'),('WSS154','p30'),('WSS159','p30'),('WSS162','p30'),('WSS166','p30'),('WSS167','p30'),('WSS168','p30'),('WSS170','p30'),('WSS171','p30'),('WSS176','p30'),('WSS179','p30'),('WSS180','p30'),('WSS181','p30'),('WSS183','p30'),('WSS187','p30'),('WSS188','p30'),('WSS194','p30'),('WSS199','p30'),('WSS209','p30'),('WSS212','p30'),('WSS216','p30'),('WSS218','p30'),('WSS234','p30'),('WSS235','p30'),('WSS236','p30'),('WSS237','p30'),('WSS241','p30'),('WSS246','p30'),('WSS250','p30'),('WSS253','p30'),('WSS257','p30'),('WSS261','p30'),('WSS270','p30'),('WSS279','p30'),('WSS284','p30'),('WSS285','p30'),('WSS29','p30'),('WSS292','p30'),('WSS293','p30'),('WSS295','p30'),('WSS299','p30'),('WSS30','p30'),('WSS35','p30'),('WSS38','p30'),('WSS49','p30'),('WSS50','p30'),('WSS55','p30'),('WSS59','p30'),('WSS62','p30'),('WSS76','p30'),('WSS8','p30'),('WSS84','p30'),('WSS87','p30'),('WSS88','p30'),('WSS93','p30'),('WSS99','p30'),('WSS1','p4'),('WSS100','p4'),('WSS101','p4'),('WSS105','p4'),('WSS106','p4'),('WSS107','p4'),('WSS109','p4'),('WSS117','p4'),('WSS124','p4'),('WSS127','p4'),('WSS133','p4'),('WSS148','p4'),('WSS150','p4'),('WSS153','p4'),('WSS155','p4'),('WSS156','p4'),('WSS158','p4'),('WSS159','p4'),('WSS174','p4'),('WSS176','p4'),('WSS181','p4'),('WSS184','p4'),('WSS197','p4'),('WSS198','p4'),('WSS201','p4'),('WSS204','p4'),('WSS21','p4'),('WSS212','p4'),('WSS215','p4'),('WSS22','p4'),('WSS223','p4'),('WSS236','p4'),('WSS237','p4'),('WSS239','p4'),('WSS242','p4'),('WSS247','p4'),('WSS248','p4'),('WSS256','p4'),('WSS259','p4'),('WSS26','p4'),('WSS261','p4'),('WSS262','p4'),('WSS272','p4'),('WSS277','p4'),('WSS28','p4'),('WSS280','p4'),('WSS284','p4'),('WSS285','p4'),('WSS287','p4'),('WSS295','p4'),('WSS3','p4'),('WSS31','p4'),('WSS34','p4'),('WSS36','p4'),('WSS38','p4'),('WSS4','p4'),('WSS40','p4'),('WSS41','p4'),('WSS44','p4'),('WSS6','p4'),('WSS61','p4'),('WSS62','p4'),('WSS76','p4'),('WSS77','p4'),('WSS79','p4'),('WSS90','p4'),('WSS93','p4'),('WSS95','p4'),('WSS99','p4'),('WSS10','p5'),('WSS102','p5'),('WSS106','p5'),('WSS119','p5'),('WSS128','p5'),('WSS129','p5'),('WSS130','p5'),('WSS139','p5'),('WSS144','p5'),('WSS146','p5'),('WSS151','p5'),('WSS153','p5'),('WSS155','p5'),('WSS156','p5'),('WSS161','p5'),('WSS164','p5'),('WSS170','p5'),('WSS175','p5'),('WSS18','p5'),('WSS185','p5'),('WSS187','p5'),('WSS19','p5'),('WSS190','p5'),('WSS194','p5'),('WSS20','p5'),('WSS203','p5'),('WSS207','p5'),('WSS209','p5'),('WSS21','p5'),('WSS212','p5'),('WSS217','p5'),('WSS221','p5'),('WSS23','p5'),('WSS235','p5'),('WSS236','p5'),('WSS237','p5'),('WSS241','p5'),('WSS253','p5'),('WSS269','p5'),('WSS274','p5'),('WSS275','p5'),('WSS279','p5'),('WSS281','p5'),('WSS286','p5'),('WSS29','p5'),('WSS294','p5'),('WSS295','p5'),('WSS32','p5'),('WSS36','p5'),('WSS40','p5'),('WSS5','p5'),('WSS55','p5'),('WSS67','p5'),('WSS79','p5'),('WSS80','p5'),('WSS81','p5'),('WSS88','p5'),('WSS89','p5'),('WSS96','p5'),('WSS97','p5'),('WSS1','p6'),('WSS101','p6'),('WSS109','p6'),('WSS114','p6'),('WSS117','p6'),('WSS120','p6'),('WSS128','p6'),('WSS134','p6'),('WSS135','p6'),('WSS137','p6'),('WSS14','p6'),('WSS143','p6'),('WSS147','p6'),('WSS148','p6'),('WSS15','p6'),('WSS16','p6'),('WSS165','p6'),('WSS17','p6'),('WSS171','p6'),('WSS172','p6'),('WSS175','p6'),('WSS182','p6'),('WSS19','p6'),('WSS192','p6'),('WSS193','p6'),('WSS200','p6'),('WSS203','p6'),('WSS205','p6'),('WSS211','p6'),('WSS215','p6'),('WSS220','p6'),('WSS222','p6'),('WSS228','p6'),('WSS233','p6'),('WSS236','p6'),('WSS243','p6'),('WSS249','p6'),('WSS251','p6'),('WSS26','p6'),('WSS262','p6'),('WSS264','p6'),('WSS265','p6'),('WSS266','p6'),('WSS268','p6'),('WSS269','p6'),('WSS27','p6'),('WSS270','p6'),('WSS274','p6'),('WSS277','p6'),('WSS287','p6'),('WSS291','p6'),('WSS294','p6'),('WSS297','p6'),('WSS37','p6'),('WSS39','p6'),('WSS41','p6'),('WSS44','p6'),('WSS47','p6'),('WSS50','p6'),('WSS6','p6'),('WSS62','p6'),('WSS63','p6'),('WSS64','p6'),('WSS69','p6'),('WSS70','p6'),('WSS84','p6'),('WSS85','p6'),('WSS91','p6'),('WSS95','p6'),('WSS99','p6'),('WSS101','p7'),('WSS102','p7'),('WSS11','p7'),('WSS110','p7'),('WSS112','p7'),('WSS114','p7'),('WSS116','p7'),('WSS118','p7'),('WSS119','p7'),('WSS12','p7'),('WSS122','p7'),('WSS125','p7'),('WSS128','p7'),('WSS129','p7'),('WSS130','p7'),('WSS133','p7'),('WSS138','p7'),('WSS141','p7'),('WSS142','p7'),('WSS146','p7'),('WSS150','p7'),('WSS155','p7'),('WSS16','p7'),('WSS161','p7'),('WSS163','p7'),('WSS170','p7'),('WSS176','p7'),('WSS178','p7'),('WSS18','p7'),('WSS184','p7'),('WSS198','p7'),('WSS199','p7'),('WSS201','p7'),('WSS204','p7'),('WSS208','p7'),('WSS209','p7'),('WSS210','p7'),('WSS212','p7'),('WSS214','p7'),('WSS216','p7'),('WSS22','p7'),('WSS220','p7'),('WSS222','p7'),('WSS226','p7'),('WSS229','p7'),('WSS23','p7'),('WSS234','p7'),('WSS240','p7'),('WSS249','p7'),('WSS25','p7'),('WSS258','p7'),('WSS260','p7'),('WSS262','p7'),('WSS27','p7'),('WSS28','p7'),('WSS285','p7'),('WSS289','p7'),('WSS293','p7'),('WSS3','p7'),('WSS300','p7'),('WSS39','p7'),('WSS5','p7'),('WSS51','p7'),('WSS56','p7'),('WSS57','p7'),('WSS62','p7'),('WSS65','p7'),('WSS68','p7'),('WSS69','p7'),('WSS7','p7'),('WSS73','p7'),('WSS77','p7'),('WSS79','p7'),('WSS8','p7'),('WSS86','p7'),('WSS87','p7'),('WSS89','p7'),('WSS92','p7'),('WSS93','p7'),('WSS98','p7'),('WSS99','p7'),('WSS103','p8'),('WSS106','p8'),('WSS108','p8'),('WSS109','p8'),('WSS119','p8'),('WSS126','p8'),('WSS131','p8'),('WSS133','p8'),('WSS136','p8'),('WSS138','p8'),('WSS142','p8'),('WSS143','p8'),('WSS156','p8'),('WSS157','p8'),('WSS163','p8'),('WSS164','p8'),('WSS168','p8'),('WSS174','p8'),('WSS177','p8'),('WSS180','p8'),('WSS181','p8'),('WSS183','p8'),('WSS19','p8'),('WSS194','p8'),('WSS197','p8'),('WSS200','p8'),('WSS202','p8'),('WSS206','p8'),('WSS210','p8'),('WSS218','p8'),('WSS222','p8'),('WSS224','p8'),('WSS227','p8'),('WSS229','p8'),('WSS231','p8'),('WSS233','p8'),('WSS24','p8'),('WSS242','p8'),('WSS251','p8'),('WSS259','p8'),('WSS263','p8'),('WSS266','p8'),('WSS267','p8'),('WSS268','p8'),('WSS269','p8'),('WSS272','p8'),('WSS275','p8'),('WSS28','p8'),('WSS284','p8'),('WSS289','p8'),('WSS292','p8'),('WSS294','p8'),('WSS297','p8'),('WSS30','p8'),('WSS32','p8'),('WSS33','p8'),('WSS34','p8'),('WSS38','p8'),('WSS42','p8'),('WSS43','p8'),('WSS44','p8'),('WSS45','p8'),('WSS46','p8'),('WSS47','p8'),('WSS49','p8'),('WSS55','p8'),('WSS56','p8'),('WSS6','p8'),('WSS65','p8'),('WSS68','p8'),('WSS69','p8'),('WSS70','p8'),('WSS75','p8'),('WSS82','p8'),('WSS92','p8'),('WSS1','p9'),('WSS103','p9'),('WSS104','p9'),('WSS107','p9'),('WSS109','p9'),('WSS11','p9'),('WSS110','p9'),('WSS111','p9'),('WSS114','p9'),('WSS116','p9'),('WSS117','p9'),('WSS118','p9'),('WSS122','p9'),('WSS124','p9'),('WSS127','p9'),('WSS13','p9'),('WSS140','p9'),('WSS151','p9'),('WSS152','p9'),('WSS156','p9'),('WSS159','p9'),('WSS160','p9'),('WSS167','p9'),('WSS168','p9'),('WSS169','p9'),('WSS173','p9'),('WSS175','p9'),('WSS177','p9'),('WSS178','p9'),('WSS189','p9'),('WSS195','p9'),('WSS197','p9'),('WSS210','p9'),('WSS216','p9'),('WSS219','p9'),('WSS225','p9'),('WSS229','p9'),('WSS230','p9'),('WSS232','p9'),('WSS234','p9'),('WSS238','p9'),('WSS24','p9'),('WSS249','p9'),('WSS251','p9'),('WSS260','p9'),('WSS265','p9'),('WSS269','p9'),('WSS273','p9'),('WSS274','p9'),('WSS275','p9'),('WSS278','p9'),('WSS28','p9'),('WSS280','p9'),('WSS281','p9'),('WSS282','p9'),('WSS288','p9'),('WSS291','p9'),('WSS292','p9'),('WSS293','p9'),('WSS294','p9'),('WSS296','p9'),('WSS298','p9'),('WSS3','p9'),('WSS32','p9'),('WSS37','p9'),('WSS40','p9'),('WSS42','p9'),('WSS44','p9'),('WSS49','p9'),('WSS51','p9'),('WSS57','p9'),('WSS62','p9'),('WSS63','p9'),('WSS66','p9'),('WSS69','p9'),('WSS71','p9'),('WSS72','p9'),('WSS77','p9'),('WSS78','p9'),('WSS85','p9'),('WSS88','p9'),('WSS89','p9'),('WSS9','p9'),('WSS97','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS23'),(1,2,'WSS4'),(1,3,'WSS282'),(2,1,'WSS41'),(2,2,'WSS102'),(2,3,'WSS44'),(3,1,'WSS103'),(3,1,'WSS291'),(3,2,'WSS37'),(4,1,'WSS239'),(4,2,'WSS291'),(5,1,'WSS191'),(5,2,'WSS124'),(6,1,'WSS35'),(6,2,'WSS296'),(6,2,'WSS48'),(7,1,'WSS127'),(7,2,'WSS159'),(8,1,'WSS197'),(8,1,'WSS286'),(9,1,'WSS131'),(9,2,'WSS133'),(10,1,'WSS17'),(10,1,'WSS276'),(10,2,'WSS256'),(11,1,'WSS24'),(11,2,'WSS103'),(11,2,'WSS288'),(12,1,'WSS278'),(12,2,'WSS34'),(12,3,'WSS11'),(13,1,'WSS101'),(13,2,'WSS282'),(13,3,'WSS280'),(14,1,'WSS43'),(14,2,'WSS1'),(14,3,'WSS297'),(15,1,'WSS147'),(15,1,'WSS78'),(16,1,'WSS200'),(16,2,'WSS223'),(17,1,'WSS104'),(17,2,'WSS49'),(17,3,'WSS101'),(18,1,'WSS286'),(18,2,'WSS282'),(18,3,'WSS48'),(19,1,'WSS238'),(19,2,'WSS237'),(19,3,'WSS298'),(20,1,'WSS126'),(20,2,'WSS181'),(21,1,'WSS270'),(21,2,'WSS36'),(22,1,'WSS118'),(22,1,'WSS294'),(23,1,'WSS225'),(23,2,'WSS147'),(24,1,'WSS204'),(24,2,'WSS79'),(25,1,'WSS48'),(25,2,'WSS270'),(25,3,'WSS44'),(26,1,'WSS23'),(26,2,'WSS4'),(26,3,'WSS40'),(27,1,'WSS221'),(27,1,'WSS239'),(28,1,'WSS15'),(28,2,'WSS45'),(29,1,'WSS293'),(29,1,'WSS35'),(30,1,'WSS225'),(30,1,'WSS293'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-29  9:48:36
