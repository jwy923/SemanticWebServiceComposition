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
INSERT INTO `initialgoalparameter` VALUES (5,'G','p1'),(10,'G','p1'),(11,'G','p1'),(14,'G','p1'),(15,'G','p1'),(20,'I','p1'),(22,'G','p1'),(23,'I','p1'),(25,'I','p1'),(30,'I','p1'),(3,'I','p10'),(4,'G','p10'),(5,'I','p10'),(12,'G','p10'),(14,'I','p10'),(16,'I','p10'),(19,'G','p10'),(20,'G','p10'),(22,'I','p10'),(24,'G','p10'),(25,'G','p10'),(26,'I','p10'),(27,'I','p10'),(29,'I','p10'),(2,'I','p11'),(10,'I','p11'),(13,'I','p11'),(14,'I','p11'),(15,'I','p11'),(16,'I','p11'),(18,'I','p11'),(20,'I','p11'),(21,'G','p11'),(22,'I','p11'),(24,'I','p11'),(2,'I','p12'),(3,'I','p12'),(4,'I','p12'),(7,'I','p12'),(8,'I','p12'),(9,'G','p12'),(13,'I','p12'),(16,'I','p12'),(17,'G','p12'),(21,'I','p12'),(22,'I','p12'),(23,'I','p12'),(27,'G','p12'),(1,'G','p13'),(7,'I','p13'),(8,'I','p13'),(9,'G','p13'),(10,'I','p13'),(11,'G','p13'),(22,'I','p13'),(23,'I','p13'),(28,'I','p13'),(1,'I','p14'),(2,'I','p14'),(4,'G','p14'),(11,'I','p14'),(12,'I','p14'),(14,'I','p14'),(19,'I','p14'),(20,'I','p14'),(21,'I','p14'),(25,'G','p14'),(26,'I','p14'),(27,'I','p14'),(28,'I','p14'),(30,'G','p14'),(1,'I','p15'),(2,'I','p15'),(3,'G','p15'),(6,'I','p15'),(11,'I','p15'),(12,'I','p15'),(13,'I','p15'),(16,'I','p15'),(25,'I','p15'),(26,'G','p15'),(30,'I','p15'),(6,'I','p16'),(11,'G','p16'),(14,'G','p16'),(17,'G','p16'),(18,'G','p16'),(19,'I','p16'),(22,'I','p16'),(27,'G','p16'),(1,'I','p17'),(4,'I','p17'),(8,'G','p17'),(9,'I','p17'),(11,'I','p17'),(13,'I','p17'),(16,'G','p17'),(17,'I','p17'),(19,'I','p17'),(23,'G','p17'),(24,'I','p17'),(27,'G','p17'),(30,'G','p17'),(1,'I','p18'),(4,'G','p18'),(7,'G','p18'),(8,'I','p18'),(11,'I','p18'),(12,'I','p18'),(18,'G','p18'),(24,'I','p18'),(29,'I','p18'),(2,'G','p19'),(6,'I','p19'),(7,'G','p19'),(9,'I','p19'),(10,'I','p19'),(11,'I','p19'),(15,'I','p19'),(17,'I','p19'),(19,'G','p19'),(21,'G','p19'),(23,'I','p19'),(25,'I','p19'),(26,'I','p19'),(27,'I','p19'),(28,'I','p19'),(29,'I','p19'),(1,'G','p2'),(3,'I','p2'),(4,'I','p2'),(5,'I','p2'),(6,'I','p2'),(12,'I','p2'),(13,'G','p2'),(16,'I','p2'),(18,'G','p2'),(21,'I','p2'),(24,'G','p2'),(3,'I','p20'),(11,'I','p20'),(12,'G','p20'),(15,'I','p20'),(17,'I','p20'),(18,'I','p20'),(20,'I','p20'),(25,'I','p20'),(27,'I','p20'),(28,'I','p20'),(29,'I','p20'),(1,'I','p21'),(2,'I','p21'),(4,'I','p21'),(6,'G','p21'),(7,'I','p21'),(13,'I','p21'),(15,'G','p21'),(19,'I','p21'),(23,'I','p21'),(28,'I','p21'),(6,'I','p22'),(8,'I','p22'),(9,'I','p22'),(10,'I','p22'),(11,'I','p22'),(12,'I','p22'),(14,'I','p22'),(15,'G','p22'),(16,'G','p22'),(17,'G','p22'),(25,'I','p22'),(28,'I','p22'),(29,'I','p22'),(30,'I','p22'),(4,'I','p23'),(5,'I','p23'),(7,'G','p23'),(9,'G','p23'),(14,'G','p23'),(18,'I','p23'),(20,'G','p23'),(21,'I','p23'),(22,'I','p23'),(26,'I','p23'),(2,'I','p24'),(3,'I','p24'),(5,'I','p24'),(7,'I','p24'),(8,'G','p24'),(9,'I','p24'),(15,'I','p24'),(17,'I','p24'),(18,'G','p24'),(20,'G','p24'),(22,'G','p24'),(24,'I','p24'),(25,'I','p24'),(28,'I','p24'),(29,'I','p24'),(3,'G','p25'),(5,'I','p25'),(8,'I','p25'),(9,'G','p25'),(13,'G','p25'),(21,'G','p25'),(22,'I','p25'),(25,'G','p25'),(26,'I','p25'),(28,'G','p25'),(29,'G','p25'),(30,'I','p25'),(3,'I','p26'),(4,'I','p26'),(7,'I','p26'),(12,'I','p26'),(14,'I','p26'),(17,'I','p26'),(18,'I','p26'),(19,'G','p26'),(25,'G','p26'),(30,'I','p26'),(1,'G','p27'),(5,'G','p27'),(6,'G','p27'),(7,'I','p27'),(14,'I','p27'),(17,'I','p27'),(22,'I','p27'),(24,'G','p27'),(4,'G','p28'),(5,'I','p28'),(7,'I','p28'),(12,'G','p28'),(13,'I','p28'),(14,'G','p28'),(15,'I','p28'),(16,'I','p28'),(17,'G','p28'),(18,'I','p28'),(19,'I','p28'),(20,'I','p28'),(24,'I','p28'),(26,'G','p28'),(27,'I','p28'),(30,'I','p28'),(2,'G','p29'),(11,'G','p29'),(13,'G','p29'),(16,'G','p29'),(20,'I','p29'),(22,'G','p29'),(24,'I','p29'),(26,'G','p29'),(27,'G','p29'),(28,'G','p29'),(29,'G','p29'),(3,'G','p3'),(5,'I','p3'),(8,'I','p3'),(9,'I','p3'),(10,'G','p3'),(12,'G','p3'),(17,'I','p3'),(19,'G','p3'),(20,'I','p3'),(24,'G','p3'),(27,'I','p3'),(2,'G','p30'),(3,'I','p30'),(7,'I','p30'),(8,'I','p30'),(13,'I','p30'),(15,'I','p30'),(16,'G','p30'),(19,'I','p30'),(23,'G','p30'),(25,'I','p30'),(26,'I','p30'),(29,'I','p30'),(30,'G','p30'),(1,'G','p4'),(2,'I','p4'),(4,'I','p4'),(6,'G','p4'),(8,'G','p4'),(10,'G','p4'),(12,'I','p4'),(13,'G','p4'),(16,'I','p4'),(18,'I','p4'),(20,'G','p4'),(21,'I','p4'),(23,'G','p4'),(25,'I','p4'),(27,'I','p4'),(1,'I','p5'),(2,'G','p5'),(3,'G','p5'),(6,'I','p5'),(10,'I','p5'),(13,'I','p5'),(16,'I','p5'),(18,'I','p5'),(21,'I','p5'),(22,'G','p5'),(23,'I','p5'),(26,'I','p5'),(28,'I','p5'),(30,'I','p5'),(2,'I','p6'),(4,'I','p6'),(5,'G','p6'),(6,'I','p6'),(9,'I','p6'),(10,'I','p6'),(15,'I','p6'),(19,'I','p6'),(21,'G','p6'),(23,'I','p6'),(24,'I','p6'),(26,'G','p6'),(29,'I','p6'),(30,'G','p6'),(1,'I','p7'),(3,'I','p7'),(5,'I','p7'),(6,'I','p7'),(8,'G','p7'),(9,'I','p7'),(10,'G','p7'),(11,'I','p7'),(12,'I','p7'),(14,'I','p7'),(17,'I','p7'),(18,'I','p7'),(20,'I','p7'),(23,'I','p7'),(28,'G','p7'),(29,'G','p7'),(6,'G','p8'),(7,'G','p8'),(8,'I','p8'),(9,'I','p8'),(10,'I','p8'),(14,'I','p8'),(15,'I','p8'),(21,'I','p8'),(23,'G','p8'),(24,'I','p8'),(28,'G','p8'),(29,'G','p8'),(1,'I','p9'),(5,'G','p9'),(10,'I','p9'),(15,'G','p9'),(19,'I','p9'),(21,'I','p9'),(26,'I','p9'),(27,'I','p9'),(30,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS17','p1'),('WSS178','p1'),('WSS195','p1'),('WSS20','p1'),('WSS22','p1'),('WSS240','p1'),('WSS253','p1'),('WSS261','p1'),('WSS289','p1'),('WSS293','p1'),('WSS298','p1'),('WSS34','p1'),('WSS38','p1'),('WSS63','p1'),('WSS70','p1'),('WSS72','p1'),('WSS74','p1'),('WSS110','p10'),('WSS138','p10'),('WSS145','p10'),('WSS170','p10'),('WSS186','p10'),('WSS189','p10'),('WSS210','p10'),('WSS218','p10'),('WSS231','p10'),('WSS232','p10'),('WSS239','p10'),('WSS271','p10'),('WSS284','p10'),('WSS65','p10'),('WSS79','p10'),('WSS90','p10'),('WSS99','p10'),('WSS105','p11'),('WSS119','p11'),('WSS130','p11'),('WSS135','p11'),('WSS143','p11'),('WSS154','p11'),('WSS16','p11'),('WSS169','p11'),('WSS184','p11'),('WSS189','p11'),('WSS209','p11'),('WSS222','p11'),('WSS242','p11'),('WSS249','p11'),('WSS253','p11'),('WSS276','p11'),('WSS283','p11'),('WSS292','p11'),('WSS299','p11'),('WSS44','p11'),('WSS49','p11'),('WSS80','p11'),('WSS83','p11'),('WSS102','p12'),('WSS125','p12'),('WSS19','p12'),('WSS214','p12'),('WSS221','p12'),('WSS233','p12'),('WSS26','p12'),('WSS274','p12'),('WSS28','p12'),('WSS7','p12'),('WSS84','p12'),('WSS93','p12'),('WSS100','p13'),('WSS112','p13'),('WSS120','p13'),('WSS137','p13'),('WSS159','p13'),('WSS170','p13'),('WSS197','p13'),('WSS2','p13'),('WSS202','p13'),('WSS213','p13'),('WSS216','p13'),('WSS218','p13'),('WSS231','p13'),('WSS238','p13'),('WSS264','p13'),('WSS273','p13'),('WSS87','p13'),('WSS108','p14'),('WSS11','p14'),('WSS126','p14'),('WSS13','p14'),('WSS138','p14'),('WSS172','p14'),('WSS2','p14'),('WSS201','p14'),('WSS223','p14'),('WSS227','p14'),('WSS251','p14'),('WSS42','p14'),('WSS47','p14'),('WSS51','p14'),('WSS9','p14'),('WSS94','p14'),('WSS114','p15'),('WSS127','p15'),('WSS136','p15'),('WSS144','p15'),('WSS149','p15'),('WSS150','p15'),('WSS182','p15'),('WSS194','p15'),('WSS212','p15'),('WSS24','p15'),('WSS241','p15'),('WSS247','p15'),('WSS248','p15'),('WSS255','p15'),('WSS256','p15'),('WSS32','p15'),('WSS4','p15'),('WSS41','p15'),('WSS52','p15'),('WSS56','p15'),('WSS77','p15'),('WSS79','p15'),('WSS80','p15'),('WSS104','p16'),('WSS117','p16'),('WSS158','p16'),('WSS164','p16'),('WSS173','p16'),('WSS179','p16'),('WSS205','p16'),('WSS208','p16'),('WSS213','p16'),('WSS242','p16'),('WSS247','p16'),('WSS25','p16'),('WSS258','p16'),('WSS263','p16'),('WSS285','p16'),('WSS37','p16'),('WSS57','p16'),('WSS9','p16'),('WSS102','p17'),('WSS107','p17'),('WSS121','p17'),('WSS124','p17'),('WSS131','p17'),('WSS139','p17'),('WSS144','p17'),('WSS155','p17'),('WSS163','p17'),('WSS198','p17'),('WSS204','p17'),('WSS215','p17'),('WSS216','p17'),('WSS229','p17'),('WSS239','p17'),('WSS256','p17'),('WSS259','p17'),('WSS280','p17'),('WSS281','p17'),('WSS282','p17'),('WSS292','p17'),('WSS35','p17'),('WSS36','p17'),('WSS46','p17'),('WSS6','p17'),('WSS7','p17'),('WSS82','p17'),('WSS109','p18'),('WSS135','p18'),('WSS151','p18'),('WSS153','p18'),('WSS157','p18'),('WSS168','p18'),('WSS209','p18'),('WSS219','p18'),('WSS225','p18'),('WSS232','p18'),('WSS233','p18'),('WSS254','p18'),('WSS262','p18'),('WSS265','p18'),('WSS269','p18'),('WSS273','p18'),('WSS275','p18'),('WSS297','p18'),('WSS35','p18'),('WSS48','p18'),('WSS5','p18'),('WSS76','p18'),('WSS82','p18'),('WSS97','p18'),('WSS99','p18'),('WSS118','p19'),('WSS120','p19'),('WSS161','p19'),('WSS172','p19'),('WSS175','p19'),('WSS177','p19'),('WSS202','p19'),('WSS212','p19'),('WSS236','p19'),('WSS238','p19'),('WSS260','p19'),('WSS283','p19'),('WSS29','p19'),('WSS3','p19'),('WSS4','p19'),('WSS50','p19'),('WSS59','p19'),('WSS62','p19'),('WSS70','p19'),('WSS84','p19'),('WSS91','p19'),('WSS12','p2'),('WSS130','p2'),('WSS185','p2'),('WSS194','p2'),('WSS207','p2'),('WSS217','p2'),('WSS230','p2'),('WSS243','p2'),('WSS40','p2'),('WSS5','p2'),('WSS53','p2'),('WSS60','p2'),('WSS65','p2'),('WSS103','p20'),('WSS115','p20'),('WSS116','p20'),('WSS117','p20'),('WSS132','p20'),('WSS137','p20'),('WSS143','p20'),('WSS149','p20'),('WSS15','p20'),('WSS153','p20'),('WSS167','p20'),('WSS173','p20'),('WSS180','p20'),('WSS199','p20'),('WSS21','p20'),('WSS26','p20'),('WSS267','p20'),('WSS280','p20'),('WSS33','p20'),('WSS49','p20'),('WSS74','p20'),('WSS90','p20'),('WSS133','p21'),('WSS134','p21'),('WSS142','p21'),('WSS147','p21'),('WSS155','p21'),('WSS161','p21'),('WSS165','p21'),('WSS186','p21'),('WSS192','p21'),('WSS23','p21'),('WSS268','p21'),('WSS271','p21'),('WSS272','p21'),('WSS295','p21'),('WSS297','p21'),('WSS54','p21'),('WSS58','p21'),('WSS106','p22'),('WSS118','p22'),('WSS141','p22'),('WSS188','p22'),('WSS196','p22'),('WSS208','p22'),('WSS21','p22'),('WSS221','p22'),('WSS222','p22'),('WSS244','p22'),('WSS249','p22'),('WSS251','p22'),('WSS265','p22'),('WSS277','p22'),('WSS286','p22'),('WSS300','p22'),('WSS44','p22'),('WSS58','p22'),('WSS85','p22'),('WSS88','p22'),('WSS123','p23'),('WSS129','p23'),('WSS13','p23'),('WSS146','p23'),('WSS154','p23'),('WSS162','p23'),('WSS166','p23'),('WSS181','p23'),('WSS183','p23'),('WSS191','p23'),('WSS235','p23'),('WSS261','p23'),('WSS262','p23'),('WSS274','p23'),('WSS296','p23'),('WSS37','p23'),('WSS45','p23'),('WSS59','p23'),('WSS78','p23'),('WSS89','p23'),('WSS96','p23'),('WSS110','p24'),('WSS116','p24'),('WSS122','p24'),('WSS136','p24'),('WSS151','p24'),('WSS207','p24'),('WSS226','p24'),('WSS229','p24'),('WSS23','p24'),('WSS241','p24'),('WSS245','p24'),('WSS267','p24'),('WSS270','p24'),('WSS284','p24'),('WSS288','p24'),('WSS29','p24'),('WSS294','p24'),('WSS41','p24'),('WSS50','p24'),('WSS53','p24'),('WSS56','p24'),('WSS61','p24'),('WSS75','p24'),('WSS78','p24'),('WSS86','p24'),('WSS95','p24'),('WSS98','p24'),('WSS121','p25'),('WSS124','p25'),('WSS206','p25'),('WSS211','p25'),('WSS225','p25'),('WSS25','p25'),('WSS257','p25'),('WSS266','p25'),('WSS288','p25'),('WSS30','p25'),('WSS38','p25'),('WSS43','p25'),('WSS71','p25'),('WSS87','p25'),('WSS94','p25'),('WSS113','p26'),('WSS122','p26'),('WSS142','p26'),('WSS164','p26'),('WSS169','p26'),('WSS214','p26'),('WSS248','p26'),('WSS263','p26'),('WSS62','p26'),('WSS67','p26'),('WSS71','p26'),('WSS75','p26'),('WSS88','p26'),('WSS1','p27'),('WSS101','p27'),('WSS150','p27'),('WSS171','p27'),('WSS174','p27'),('WSS199','p27'),('WSS224','p27'),('WSS234','p27'),('WSS235','p27'),('WSS236','p27'),('WSS237','p27'),('WSS246','p27'),('WSS252','p27'),('WSS258','p27'),('WSS279','p27'),('WSS28','p27'),('WSS285','p27'),('WSS296','p27'),('WSS40','p27'),('WSS42','p27'),('WSS61','p27'),('WSS92','p27'),('WSS98','p27'),('WSS103','p28'),('WSS160','p28'),('WSS162','p28'),('WSS171','p28'),('WSS177','p28'),('WSS179','p28'),('WSS193','p28'),('WSS206','p28'),('WSS220','p28'),('WSS237','p28'),('WSS24','p28'),('WSS245','p28'),('WSS246','p28'),('WSS255','p28'),('WSS260','p28'),('WSS27','p28'),('WSS270','p28'),('WSS276','p28'),('WSS286','p28'),('WSS291','p28'),('WSS43','p28'),('WSS64','p28'),('WSS8','p28'),('WSS91','p28'),('WSS92','p28'),('WSS10','p29'),('WSS104','p29'),('WSS115','p29'),('WSS156','p29'),('WSS160','p29'),('WSS165','p29'),('WSS17','p29'),('WSS175','p29'),('WSS181','p29'),('WSS219','p29'),('WSS230','p29'),('WSS281','p29'),('WSS287','p29'),('WSS291','p29'),('WSS39','p29'),('WSS45','p29'),('WSS47','p29'),('WSS51','p29'),('WSS68','p29'),('WSS85','p29'),('WSS10','p3'),('WSS105','p3'),('WSS106','p3'),('WSS127','p3'),('WSS131','p3'),('WSS139','p3'),('WSS185','p3'),('WSS19','p3'),('WSS20','p3'),('WSS234','p3'),('WSS266','p3'),('WSS269','p3'),('WSS278','p3'),('WSS295','p3'),('WSS3','p3'),('WSS39','p3'),('WSS67','p3'),('WSS72','p3'),('WSS73','p3'),('WSS77','p3'),('WSS93','p3'),('WSS95','p3'),('WSS96','p3'),('WSS12','p30'),('WSS132','p30'),('WSS133','p30'),('WSS148','p30'),('WSS152','p30'),('WSS166','p30'),('WSS180','p30'),('WSS187','p30'),('WSS190','p30'),('WSS200','p30'),('WSS205','p30'),('WSS223','p30'),('WSS264','p30'),('WSS268','p30'),('WSS275','p30'),('WSS287','p30'),('WSS300','p30'),('WSS6','p30'),('WSS97','p30'),('WSS100','p4'),('WSS11','p4'),('WSS112','p4'),('WSS148','p4'),('WSS157','p4'),('WSS159','p4'),('WSS190','p4'),('WSS195','p4'),('WSS196','p4'),('WSS197','p4'),('WSS217','p4'),('WSS224','p4'),('WSS282','p4'),('WSS290','p4'),('WSS293','p4'),('WSS299','p4'),('WSS32','p4'),('WSS33','p4'),('WSS55','p4'),('WSS66','p4'),('WSS81','p4'),('WSS89','p4'),('WSS109','p5'),('WSS111','p5'),('WSS113','p5'),('WSS123','p5'),('WSS14','p5'),('WSS145','p5'),('WSS15','p5'),('WSS158','p5'),('WSS163','p5'),('WSS176','p5'),('WSS178','p5'),('WSS187','p5'),('WSS188','p5'),('WSS191','p5'),('WSS257','p5'),('WSS259','p5'),('WSS277','p5'),('WSS290','p5'),('WSS294','p5'),('WSS31','p5'),('WSS57','p5'),('WSS73','p5'),('WSS8','p5'),('WSS1','p6'),('WSS114','p6'),('WSS125','p6'),('WSS128','p6'),('WSS140','p6'),('WSS141','p6'),('WSS16','p6'),('WSS193','p6'),('WSS215','p6'),('WSS240','p6'),('WSS250','p6'),('WSS27','p6'),('WSS272','p6'),('WSS278','p6'),('WSS31','p6'),('WSS64','p6'),('WSS69','p6'),('WSS101','p7'),('WSS126','p7'),('WSS134','p7'),('WSS146','p7'),('WSS168','p7'),('WSS174','p7'),('WSS18','p7'),('WSS183','p7'),('WSS201','p7'),('WSS203','p7'),('WSS22','p7'),('WSS226','p7'),('WSS243','p7'),('WSS279','p7'),('WSS298','p7'),('WSS30','p7'),('WSS34','p7'),('WSS48','p7'),('WSS55','p7'),('WSS68','p7'),('WSS76','p7'),('WSS81','p7'),('WSS108','p8'),('WSS119','p8'),('WSS147','p8'),('WSS156','p8'),('WSS18','p8'),('WSS182','p8'),('WSS184','p8'),('WSS204','p8'),('WSS211','p8'),('WSS228','p8'),('WSS250','p8'),('WSS252','p8'),('WSS54','p8'),('WSS69','p8'),('WSS86','p8'),('WSS111','p9'),('WSS129','p9'),('WSS152','p9'),('WSS167','p9'),('WSS192','p9'),('WSS200','p9'),('WSS203','p9'),('WSS220','p9'),('WSS227','p9'),('WSS244','p9'),('WSS254','p9'),('WSS289','p9'),('WSS36','p9'),('WSS52','p9'),('WSS60','p9'),('WSS63','p9'),('WSS66','p9'),('WSS83','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS101','p1'),('WSS103','p1'),('WSS112','p1'),('WSS114','p1'),('WSS12','p1'),('WSS123','p1'),('WSS126','p1'),('WSS142','p1'),('WSS147','p1'),('WSS159','p1'),('WSS166','p1'),('WSS180','p1'),('WSS184','p1'),('WSS185','p1'),('WSS2','p1'),('WSS200','p1'),('WSS204','p1'),('WSS209','p1'),('WSS216','p1'),('WSS223','p1'),('WSS233','p1'),('WSS234','p1'),('WSS24','p1'),('WSS247','p1'),('WSS27','p1'),('WSS270','p1'),('WSS277','p1'),('WSS295','p1'),('WSS298','p1'),('WSS38','p1'),('WSS41','p1'),('WSS49','p1'),('WSS56','p1'),('WSS57','p1'),('WSS63','p1'),('WSS69','p1'),('WSS83','p1'),('WSS92','p1'),('WSS94','p1'),('WSS107','p10'),('WSS11','p10'),('WSS110','p10'),('WSS153','p10'),('WSS168','p10'),('WSS169','p10'),('WSS17','p10'),('WSS171','p10'),('WSS177','p10'),('WSS179','p10'),('WSS183','p10'),('WSS195','p10'),('WSS20','p10'),('WSS201','p10'),('WSS214','p10'),('WSS215','p10'),('WSS22','p10'),('WSS24','p10'),('WSS249','p10'),('WSS25','p10'),('WSS252','p10'),('WSS269','p10'),('WSS273','p10'),('WSS276','p10'),('WSS279','p10'),('WSS282','p10'),('WSS289','p10'),('WSS290','p10'),('WSS292','p10'),('WSS297','p10'),('WSS3','p10'),('WSS32','p10'),('WSS45','p10'),('WSS46','p10'),('WSS52','p10'),('WSS56','p10'),('WSS59','p10'),('WSS60','p10'),('WSS67','p10'),('WSS77','p10'),('WSS81','p10'),('WSS82','p10'),('WSS101','p11'),('WSS113','p11'),('WSS116','p11'),('WSS12','p11'),('WSS121','p11'),('WSS123','p11'),('WSS126','p11'),('WSS13','p11'),('WSS132','p11'),('WSS141','p11'),('WSS145','p11'),('WSS150','p11'),('WSS151','p11'),('WSS16','p11'),('WSS168','p11'),('WSS173','p11'),('WSS175','p11'),('WSS179','p11'),('WSS181','p11'),('WSS193','p11'),('WSS219','p11'),('WSS220','p11'),('WSS221','p11'),('WSS230','p11'),('WSS234','p11'),('WSS235','p11'),('WSS237','p11'),('WSS242','p11'),('WSS250','p11'),('WSS278','p11'),('WSS287','p11'),('WSS34','p11'),('WSS40','p11'),('WSS44','p11'),('WSS49','p11'),('WSS70','p11'),('WSS76','p11'),('WSS79','p11'),('WSS8','p11'),('WSS86','p11'),('WSS89','p11'),('WSS94','p11'),('WSS13','p12'),('WSS134','p12'),('WSS136','p12'),('WSS157','p12'),('WSS159','p12'),('WSS164','p12'),('WSS180','p12'),('WSS198','p12'),('WSS201','p12'),('WSS202','p12'),('WSS204','p12'),('WSS205','p12'),('WSS208','p12'),('WSS218','p12'),('WSS232','p12'),('WSS240','p12'),('WSS248','p12'),('WSS257','p12'),('WSS262','p12'),('WSS268','p12'),('WSS270','p12'),('WSS277','p12'),('WSS280','p12'),('WSS285','p12'),('WSS292','p12'),('WSS39','p12'),('WSS5','p12'),('WSS54','p12'),('WSS62','p12'),('WSS65','p12'),('WSS66','p12'),('WSS70','p12'),('WSS71','p12'),('WSS73','p12'),('WSS82','p12'),('WSS9','p12'),('WSS102','p13'),('WSS103','p13'),('WSS111','p13'),('WSS122','p13'),('WSS126','p13'),('WSS127','p13'),('WSS130','p13'),('WSS143','p13'),('WSS15','p13'),('WSS151','p13'),('WSS158','p13'),('WSS16','p13'),('WSS176','p13'),('WSS181','p13'),('WSS182','p13'),('WSS189','p13'),('WSS192','p13'),('WSS220','p13'),('WSS23','p13'),('WSS235','p13'),('WSS241','p13'),('WSS243','p13'),('WSS25','p13'),('WSS252','p13'),('WSS260','p13'),('WSS271','p13'),('WSS272','p13'),('WSS273','p13'),('WSS279','p13'),('WSS286','p13'),('WSS287','p13'),('WSS29','p13'),('WSS294','p13'),('WSS299','p13'),('WSS35','p13'),('WSS42','p13'),('WSS45','p13'),('WSS61','p13'),('WSS64','p13'),('WSS119','p14'),('WSS120','p14'),('WSS13','p14'),('WSS133','p14'),('WSS139','p14'),('WSS14','p14'),('WSS143','p14'),('WSS145','p14'),('WSS146','p14'),('WSS153','p14'),('WSS154','p14'),('WSS155','p14'),('WSS166','p14'),('WSS170','p14'),('WSS174','p14'),('WSS19','p14'),('WSS192','p14'),('WSS202','p14'),('WSS22','p14'),('WSS232','p14'),('WSS252','p14'),('WSS253','p14'),('WSS261','p14'),('WSS262','p14'),('WSS270','p14'),('WSS28','p14'),('WSS281','p14'),('WSS289','p14'),('WSS49','p14'),('WSS5','p14'),('WSS56','p14'),('WSS66','p14'),('WSS70','p14'),('WSS78','p14'),('WSS84','p14'),('WSS85','p14'),('WSS86','p14'),('WSS88','p14'),('WSS93','p14'),('WSS10','p15'),('WSS100','p15'),('WSS108','p15'),('WSS113','p15'),('WSS118','p15'),('WSS121','p15'),('WSS124','p15'),('WSS128','p15'),('WSS129','p15'),('WSS131','p15'),('WSS140','p15'),('WSS144','p15'),('WSS158','p15'),('WSS173','p15'),('WSS185','p15'),('WSS187','p15'),('WSS19','p15'),('WSS192','p15'),('WSS195','p15'),('WSS199','p15'),('WSS212','p15'),('WSS214','p15'),('WSS221','p15'),('WSS229','p15'),('WSS236','p15'),('WSS240','p15'),('WSS241','p15'),('WSS256','p15'),('WSS259','p15'),('WSS260','p15'),('WSS264','p15'),('WSS271','p15'),('WSS274','p15'),('WSS278','p15'),('WSS280','p15'),('WSS282','p15'),('WSS299','p15'),('WSS31','p15'),('WSS36','p15'),('WSS42','p15'),('WSS50','p15'),('WSS51','p15'),('WSS55','p15'),('WSS68','p15'),('WSS74','p15'),('WSS79','p15'),('WSS82','p15'),('WSS91','p15'),('WSS102','p16'),('WSS116','p16'),('WSS127','p16'),('WSS132','p16'),('WSS140','p16'),('WSS146','p16'),('WSS15','p16'),('WSS165','p16'),('WSS195','p16'),('WSS196','p16'),('WSS199','p16'),('WSS207','p16'),('WSS216','p16'),('WSS220','p16'),('WSS23','p16'),('WSS239','p16'),('WSS248','p16'),('WSS250','p16'),('WSS255','p16'),('WSS257','p16'),('WSS272','p16'),('WSS298','p16'),('WSS300','p16'),('WSS38','p16'),('WSS39','p16'),('WSS59','p16'),('WSS63','p16'),('WSS67','p16'),('WSS77','p16'),('WSS79','p16'),('WSS84','p16'),('WSS95','p16'),('WSS102','p17'),('WSS106','p17'),('WSS109','p17'),('WSS111','p17'),('WSS112','p17'),('WSS130','p17'),('WSS133','p17'),('WSS136','p17'),('WSS142','p17'),('WSS143','p17'),('WSS145','p17'),('WSS148','p17'),('WSS157','p17'),('WSS159','p17'),('WSS172','p17'),('WSS183','p17'),('WSS184','p17'),('WSS188','p17'),('WSS198','p17'),('WSS199','p17'),('WSS213','p17'),('WSS222','p17'),('WSS224','p17'),('WSS230','p17'),('WSS242','p17'),('WSS248','p17'),('WSS249','p17'),('WSS268','p17'),('WSS270','p17'),('WSS274','p17'),('WSS28','p17'),('WSS30','p17'),('WSS32','p17'),('WSS40','p17'),('WSS56','p17'),('WSS6','p17'),('WSS66','p17'),('WSS67','p17'),('WSS68','p17'),('WSS69','p17'),('WSS8','p17'),('WSS80','p17'),('WSS83','p17'),('WSS104','p18'),('WSS107','p18'),('WSS109','p18'),('WSS114','p18'),('WSS122','p18'),('WSS13','p18'),('WSS142','p18'),('WSS150','p18'),('WSS151','p18'),('WSS152','p18'),('WSS154','p18'),('WSS163','p18'),('WSS165','p18'),('WSS174','p18'),('WSS206','p18'),('WSS210','p18'),('WSS211','p18'),('WSS212','p18'),('WSS217','p18'),('WSS224','p18'),('WSS232','p18'),('WSS245','p18'),('WSS247','p18'),('WSS248','p18'),('WSS249','p18'),('WSS25','p18'),('WSS26','p18'),('WSS263','p18'),('WSS27','p18'),('WSS30','p18'),('WSS42','p18'),('WSS58','p18'),('WSS7','p18'),('WSS73','p18'),('WSS92','p18'),('WSS98','p18'),('WSS115','p19'),('WSS124','p19'),('WSS136','p19'),('WSS148','p19'),('WSS156','p19'),('WSS171','p19'),('WSS204','p19'),('WSS210','p19'),('WSS227','p19'),('WSS238','p19'),('WSS244','p19'),('WSS278','p19'),('WSS285','p19'),('WSS298','p19'),('WSS31','p19'),('WSS43','p19'),('WSS52','p19'),('WSS64','p19'),('WSS7','p19'),('WSS70','p19'),('WSS72','p19'),('WSS73','p19'),('WSS80','p19'),('WSS81','p19'),('WSS83','p19'),('WSS86','p19'),('WSS89','p19'),('WSS96','p19'),('WSS98','p19'),('WSS1','p2'),('WSS101','p2'),('WSS108','p2'),('WSS112','p2'),('WSS118','p2'),('WSS134','p2'),('WSS138','p2'),('WSS160','p2'),('WSS168','p2'),('WSS170','p2'),('WSS172','p2'),('WSS177','p2'),('WSS187','p2'),('WSS19','p2'),('WSS194','p2'),('WSS197','p2'),('WSS204','p2'),('WSS225','p2'),('WSS228','p2'),('WSS233','p2'),('WSS24','p2'),('WSS244','p2'),('WSS258','p2'),('WSS262','p2'),('WSS265','p2'),('WSS266','p2'),('WSS275','p2'),('WSS285','p2'),('WSS3','p2'),('WSS300','p2'),('WSS32','p2'),('WSS36','p2'),('WSS43','p2'),('WSS5','p2'),('WSS60','p2'),('WSS61','p2'),('WSS74','p2'),('WSS76','p2'),('WSS87','p2'),('WSS10','p20'),('WSS113','p20'),('WSS114','p20'),('WSS123','p20'),('WSS136','p20'),('WSS138','p20'),('WSS15','p20'),('WSS153','p20'),('WSS158','p20'),('WSS176','p20'),('WSS186','p20'),('WSS191','p20'),('WSS196','p20'),('WSS20','p20'),('WSS211','p20'),('WSS218','p20'),('WSS226','p20'),('WSS235','p20'),('WSS237','p20'),('WSS239','p20'),('WSS241','p20'),('WSS243','p20'),('WSS251','p20'),('WSS252','p20'),('WSS269','p20'),('WSS274','p20'),('WSS276','p20'),('WSS280','p20'),('WSS281','p20'),('WSS294','p20'),('WSS4','p20'),('WSS43','p20'),('WSS45','p20'),('WSS63','p20'),('WSS64','p20'),('WSS74','p20'),('WSS75','p20'),('WSS77','p20'),('WSS98','p20'),('WSS102','p21'),('WSS103','p21'),('WSS110','p21'),('WSS120','p21'),('WSS137','p21'),('WSS140','p21'),('WSS161','p21'),('WSS164','p21'),('WSS165','p21'),('WSS166','p21'),('WSS169','p21'),('WSS178','p21'),('WSS195','p21'),('WSS200','p21'),('WSS206','p21'),('WSS219','p21'),('WSS22','p21'),('WSS226','p21'),('WSS229','p21'),('WSS24','p21'),('WSS242','p21'),('WSS253','p21'),('WSS255','p21'),('WSS265','p21'),('WSS273','p21'),('WSS282','p21'),('WSS290','p21'),('WSS293','p21'),('WSS3','p21'),('WSS35','p21'),('WSS40','p21'),('WSS41','p21'),('WSS46','p21'),('WSS62','p21'),('WSS7','p21'),('WSS71','p21'),('WSS8','p21'),('WSS86','p21'),('WSS100','p22'),('WSS105','p22'),('WSS111','p22'),('WSS112','p22'),('WSS122','p22'),('WSS144','p22'),('WSS145','p22'),('WSS155','p22'),('WSS162','p22'),('WSS167','p22'),('WSS188','p22'),('WSS203','p22'),('WSS207','p22'),('WSS210','p22'),('WSS216','p22'),('WSS229','p22'),('WSS232','p22'),('WSS234','p22'),('WSS256','p22'),('WSS263','p22'),('WSS266','p22'),('WSS276','p22'),('WSS279','p22'),('WSS283','p22'),('WSS284','p22'),('WSS285','p22'),('WSS287','p22'),('WSS289','p22'),('WSS300','p22'),('WSS33','p22'),('WSS34','p22'),('WSS39','p22'),('WSS43','p22'),('WSS50','p22'),('WSS53','p22'),('WSS58','p22'),('WSS59','p22'),('WSS69','p22'),('WSS7','p22'),('WSS91','p22'),('WSS95','p22'),('WSS1','p23'),('WSS10','p23'),('WSS108','p23'),('WSS12','p23'),('WSS134','p23'),('WSS138','p23'),('WSS14','p23'),('WSS142','p23'),('WSS156','p23'),('WSS164','p23'),('WSS171','p23'),('WSS177','p23'),('WSS18','p23'),('WSS180','p23'),('WSS190','p23'),('WSS197','p23'),('WSS2','p23'),('WSS202','p23'),('WSS225','p23'),('WSS25','p23'),('WSS254','p23'),('WSS259','p23'),('WSS268','p23'),('WSS292','p23'),('WSS33','p23'),('WSS37','p23'),('WSS49','p23'),('WSS51','p23'),('WSS53','p23'),('WSS87','p23'),('WSS105','p24'),('WSS128','p24'),('WSS131','p24'),('WSS14','p24'),('WSS148','p24'),('WSS154','p24'),('WSS156','p24'),('WSS158','p24'),('WSS163','p24'),('WSS167','p24'),('WSS169','p24'),('WSS17','p24'),('WSS170','p24'),('WSS173','p24'),('WSS181','p24'),('WSS198','p24'),('WSS199','p24'),('WSS201','p24'),('WSS219','p24'),('WSS223','p24'),('WSS244','p24'),('WSS247','p24'),('WSS261','p24'),('WSS271','p24'),('WSS283','p24'),('WSS293','p24'),('WSS295','p24'),('WSS54','p24'),('WSS71','p24'),('WSS75','p24'),('WSS84','p24'),('WSS88','p24'),('WSS91','p24'),('WSS92','p24'),('WSS101','p25'),('WSS106','p25'),('WSS110','p25'),('WSS117','p25'),('WSS125','p25'),('WSS130','p25'),('WSS137','p25'),('WSS144','p25'),('WSS149','p25'),('WSS162','p25'),('WSS167','p25'),('WSS181','p25'),('WSS186','p25'),('WSS190','p25'),('WSS193','p25'),('WSS209','p25'),('WSS21','p25'),('WSS215','p25'),('WSS217','p25'),('WSS220','p25'),('WSS231','p25'),('WSS233','p25'),('WSS238','p25'),('WSS245','p25'),('WSS257','p25'),('WSS259','p25'),('WSS269','p25'),('WSS275','p25'),('WSS278','p25'),('WSS284','p25'),('WSS288','p25'),('WSS294','p25'),('WSS297','p25'),('WSS299','p25'),('WSS52','p25'),('WSS76','p25'),('WSS79','p25'),('WSS90','p25'),('WSS91','p25'),('WSS96','p25'),('WSS99','p25'),('WSS100','p26'),('WSS105','p26'),('WSS118','p26'),('WSS127','p26'),('WSS132','p26'),('WSS135','p26'),('WSS147','p26'),('WSS150','p26'),('WSS161','p26'),('WSS17','p26'),('WSS175','p26'),('WSS189','p26'),('WSS191','p26'),('WSS20','p26'),('WSS208','p26'),('WSS21','p26'),('WSS213','p26'),('WSS221','p26'),('WSS226','p26'),('WSS236','p26'),('WSS239','p26'),('WSS246','p26'),('WSS27','p26'),('WSS36','p26'),('WSS38','p26'),('WSS44','p26'),('WSS45','p26'),('WSS47','p26'),('WSS50','p26'),('WSS53','p26'),('WSS60','p26'),('WSS63','p26'),('WSS76','p26'),('WSS80','p26'),('WSS93','p26'),('WSS10','p27'),('WSS115','p27'),('WSS120','p27'),('WSS127','p27'),('WSS132','p27'),('WSS137','p27'),('WSS148','p27'),('WSS149','p27'),('WSS152','p27'),('WSS16','p27'),('WSS160','p27'),('WSS168','p27'),('WSS173','p27'),('WSS18','p27'),('WSS193','p27'),('WSS206','p27'),('WSS213','p27'),('WSS222','p27'),('WSS228','p27'),('WSS231','p27'),('WSS234','p27'),('WSS242','p27'),('WSS258','p27'),('WSS26','p27'),('WSS263','p27'),('WSS272','p27'),('WSS275','p27'),('WSS276','p27'),('WSS286','p27'),('WSS29','p27'),('WSS291','p27'),('WSS296','p27'),('WSS35','p27'),('WSS41','p27'),('WSS55','p27'),('WSS6','p27'),('WSS61','p27'),('WSS78','p27'),('WSS9','p27'),('WSS95','p27'),('WSS97','p27'),('WSS99','p27'),('WSS107','p28'),('WSS11','p28'),('WSS111','p28'),('WSS118','p28'),('WSS122','p28'),('WSS133','p28'),('WSS135','p28'),('WSS139','p28'),('WSS147','p28'),('WSS15','p28'),('WSS152','p28'),('WSS161','p28'),('WSS166','p28'),('WSS174','p28'),('WSS18','p28'),('WSS185','p28'),('WSS189','p28'),('WSS197','p28'),('WSS201','p28'),('WSS205','p28'),('WSS212','p28'),('WSS227','p28'),('WSS23','p28'),('WSS233','p28'),('WSS243','p28'),('WSS245','p28'),('WSS258','p28'),('WSS265','p28'),('WSS29','p28'),('WSS300','p28'),('WSS38','p28'),('WSS41','p28'),('WSS44','p28'),('WSS52','p28'),('WSS53','p28'),('WSS8','p28'),('WSS84','p28'),('WSS85','p28'),('WSS95','p28'),('WSS103','p29'),('WSS12','p29'),('WSS121','p29'),('WSS134','p29'),('WSS135','p29'),('WSS139','p29'),('WSS14','p29'),('WSS143','p29'),('WSS150','p29'),('WSS157','p29'),('WSS165','p29'),('WSS169','p29'),('WSS172','p29'),('WSS179','p29'),('WSS190','p29'),('WSS205','p29'),('WSS207','p29'),('WSS221','p29'),('WSS231','p29'),('WSS236','p29'),('WSS238','p29'),('WSS240','p29'),('WSS251','p29'),('WSS4','p29'),('WSS48','p29'),('WSS55','p29'),('WSS58','p29'),('WSS65','p29'),('WSS72','p29'),('WSS82','p29'),('WSS89','p29'),('WSS9','p29'),('WSS104','p3'),('WSS109','p3'),('WSS119','p3'),('WSS139','p3'),('WSS141','p3'),('WSS159','p3'),('WSS164','p3'),('WSS182','p3'),('WSS208','p3'),('WSS211','p3'),('WSS215','p3'),('WSS218','p3'),('WSS225','p3'),('WSS237','p3'),('WSS245','p3'),('WSS246','p3'),('WSS250','p3'),('WSS254','p3'),('WSS266','p3'),('WSS27','p3'),('WSS283','p3'),('WSS284','p3'),('WSS288','p3'),('WSS290','p3'),('WSS296','p3'),('WSS299','p3'),('WSS57','p3'),('WSS58','p3'),('WSS68','p3'),('WSS72','p3'),('WSS85','p3'),('WSS106','p30'),('WSS115','p30'),('WSS124','p30'),('WSS126','p30'),('WSS135','p30'),('WSS141','p30'),('WSS146','p30'),('WSS153','p30'),('WSS161','p30'),('WSS175','p30'),('WSS184','p30'),('WSS194','p30'),('WSS203','p30'),('WSS23','p30'),('WSS249','p30'),('WSS250','p30'),('WSS257','p30'),('WSS269','p30'),('WSS277','p30'),('WSS291','p30'),('WSS293','p30'),('WSS295','p30'),('WSS298','p30'),('WSS40','p30'),('WSS46','p30'),('WSS47','p30'),('WSS51','p30'),('WSS96','p30'),('WSS1','p4'),('WSS114','p4'),('WSS128','p4'),('WSS131','p4'),('WSS138','p4'),('WSS147','p4'),('WSS162','p4'),('WSS163','p4'),('WSS17','p4'),('WSS172','p4'),('WSS174','p4'),('WSS178','p4'),('WSS182','p4'),('WSS188','p4'),('WSS209','p4'),('WSS214','p4'),('WSS222','p4'),('WSS224','p4'),('WSS226','p4'),('WSS230','p4'),('WSS258','p4'),('WSS261','p4'),('WSS263','p4'),('WSS265','p4'),('WSS267','p4'),('WSS275','p4'),('WSS290','p4'),('WSS291','p4'),('WSS293','p4'),('WSS33','p4'),('WSS36','p4'),('WSS37','p4'),('WSS42','p4'),('WSS48','p4'),('WSS64','p4'),('WSS67','p4'),('WSS69','p4'),('WSS80','p4'),('WSS81','p4'),('WSS88','p4'),('WSS90','p4'),('WSS94','p4'),('WSS99','p4'),('WSS124','p5'),('WSS129','p5'),('WSS131','p5'),('WSS140','p5'),('WSS149','p5'),('WSS16','p5'),('WSS163','p5'),('WSS175','p5'),('WSS180','p5'),('WSS185','p5'),('WSS194','p5'),('WSS196','p5'),('WSS216','p5'),('WSS223','p5'),('WSS230','p5'),('WSS246','p5'),('WSS255','p5'),('WSS268','p5'),('WSS284','p5'),('WSS287','p5'),('WSS29','p5'),('WSS296','p5'),('WSS297','p5'),('WSS46','p5'),('WSS5','p5'),('WSS54','p5'),('WSS60','p5'),('WSS61','p5'),('WSS71','p5'),('WSS94','p5'),('WSS104','p6'),('WSS106','p6'),('WSS11','p6'),('WSS110','p6'),('WSS117','p6'),('WSS128','p6'),('WSS130','p6'),('WSS141','p6'),('WSS167','p6'),('WSS187','p6'),('WSS188','p6'),('WSS189','p6'),('WSS19','p6'),('WSS198','p6'),('WSS2','p6'),('WSS206','p6'),('WSS21','p6'),('WSS218','p6'),('WSS219','p6'),('WSS235','p6'),('WSS237','p6'),('WSS246','p6'),('WSS253','p6'),('WSS260','p6'),('WSS264','p6'),('WSS273','p6'),('WSS28','p6'),('WSS280','p6'),('WSS286','p6'),('WSS288','p6'),('WSS294','p6'),('WSS31','p6'),('WSS33','p6'),('WSS34','p6'),('WSS44','p6'),('WSS47','p6'),('WSS48','p6'),('WSS55','p6'),('WSS57','p6'),('WSS59','p6'),('WSS6','p6'),('WSS62','p6'),('WSS77','p6'),('WSS81','p6'),('WSS98','p6'),('WSS1','p7'),('WSS107','p7'),('WSS108','p7'),('WSS125','p7'),('WSS129','p7'),('WSS133','p7'),('WSS146','p7'),('WSS171','p7'),('WSS177','p7'),('WSS200','p7'),('WSS203','p7'),('WSS207','p7'),('WSS217','p7'),('WSS224','p7'),('WSS227','p7'),('WSS239','p7'),('WSS241','p7'),('WSS247','p7'),('WSS266','p7'),('WSS28','p7'),('WSS281','p7'),('WSS282','p7'),('WSS295','p7'),('WSS296','p7'),('WSS297','p7'),('WSS30','p7'),('WSS31','p7'),('WSS37','p7'),('WSS4','p7'),('WSS57','p7'),('WSS65','p7'),('WSS74','p7'),('WSS75','p7'),('WSS78','p7'),('WSS87','p7'),('WSS88','p7'),('WSS89','p7'),('WSS90','p7'),('WSS96','p7'),('WSS97','p7'),('WSS100','p8'),('WSS104','p8'),('WSS105','p8'),('WSS113','p8'),('WSS116','p8'),('WSS117','p8'),('WSS119','p8'),('WSS120','p8'),('WSS123','p8'),('WSS125','p8'),('WSS155','p8'),('WSS157','p8'),('WSS160','p8'),('WSS178','p8'),('WSS182','p8'),('WSS184','p8'),('WSS186','p8'),('WSS21','p8'),('WSS212','p8'),('WSS222','p8'),('WSS223','p8'),('WSS228','p8'),('WSS236','p8'),('WSS240','p8'),('WSS254','p8'),('WSS26','p8'),('WSS260','p8'),('WSS261','p8'),('WSS264','p8'),('WSS267','p8'),('WSS271','p8'),('WSS288','p8'),('WSS3','p8'),('WSS48','p8'),('WSS50','p8'),('WSS54','p8'),('WSS73','p8'),('WSS78','p8'),('WSS85','p8'),('WSS9','p8'),('WSS93','p8'),('WSS97','p8'),('WSS116','p9'),('WSS125','p9'),('WSS156','p9'),('WSS160','p9'),('WSS176','p9'),('WSS178','p9'),('WSS18','p9'),('WSS186','p9'),('WSS187','p9'),('WSS190','p9'),('WSS191','p9'),('WSS192','p9'),('WSS193','p9'),('WSS200','p9'),('WSS202','p9'),('WSS203','p9'),('WSS209','p9'),('WSS210','p9'),('WSS213','p9'),('WSS215','p9'),('WSS217','p9'),('WSS227','p9'),('WSS231','p9'),('WSS243','p9'),('WSS244','p9'),('WSS254','p9'),('WSS256','p9'),('WSS262','p9'),('WSS267','p9'),('WSS279','p9'),('WSS286','p9'),('WSS6','p9'),('WSS66','p9'),('WSS68','p9'),('WSS83','p9'),('WSS90','p9'),('WSS99','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS103'),(1,2,'WSS27'),(1,2,'WSS68'),(2,1,'WSS18'),(2,1,'WSS96'),(3,1,'WSS163'),(3,2,'WSS194'),(3,3,'WSS186'),(3,4,'WSS98'),(4,1,'WSS193'),(4,2,'WSS160'),(4,3,'WSS13'),(5,1,'WSS51'),(5,1,'WSS82'),(5,2,'WSS9'),(6,1,'WSS85'),(6,2,'WSS13'),(6,2,'WSS4'),(7,1,'WSS19'),(7,2,'WSS109'),(7,3,'WSS25'),(8,1,'WSS188'),(8,2,'WSS103'),(8,3,'WSS199'),(9,1,'WSS6'),(9,2,'WSS88'),(10,1,'WSS62'),(10,2,'WSS185'),(10,3,'WSS21'),(11,1,'WSS102'),(11,2,'WSS184'),(11,3,'WSS147'),(12,1,'WSS18'),(12,2,'WSS172'),(12,3,'WSS15'),(13,1,'WSS17'),(13,2,'WSS65'),(13,3,'WSS28'),(14,1,'WSS94'),(14,2,'WSS20'),(14,3,'WSS174'),(15,1,'WSS142'),(15,2,'WSS163'),(15,3,'WSS26'),(16,1,'WSS104'),(16,2,'WSS101'),(16,3,'WSS196'),(17,1,'WSS98'),(17,2,'WSS23'),(17,2,'WSS88'),(18,1,'WSS133'),(18,1,'WSS34'),(18,2,'WSS144'),(19,1,'WSS183'),(19,2,'WSS45'),(19,2,'WSS73'),(20,1,'WSS142'),(20,2,'WSS155'),(20,3,'WSS106'),(21,1,'WSS188'),(21,1,'WSS200'),(21,2,'WSS186'),(22,1,'WSS64'),(22,2,'WSS191'),(22,2,'WSS96'),(22,3,'WSS99'),(23,1,'WSS161'),(23,2,'WSS140'),(23,2,'WSS186'),(24,1,'WSS28'),(24,2,'WSS23'),(24,3,'WSS12'),(24,4,'WSS22'),(25,1,'WSS144'),(25,2,'WSS169'),(25,3,'WSS99'),(26,1,'WSS86'),(26,2,'WSS106'),(27,1,'WSS94'),(27,2,'WSS20'),(27,2,'WSS27'),(28,1,'WSS13'),(28,2,'WSS168'),(28,2,'WSS81'),(29,1,'WSS13'),(29,2,'WSS89'),(29,3,'WSS18'),(30,1,'WSS166'),(30,2,'WSS17'),(30,3,'WSS18'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-07-06 19:56:55
