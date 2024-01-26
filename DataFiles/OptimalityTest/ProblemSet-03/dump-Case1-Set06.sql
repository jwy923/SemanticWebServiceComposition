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
INSERT INTO `initialgoalparameter` VALUES (3,'I','p1'),(6,'I','p1'),(9,'I','p1'),(12,'I','p1'),(13,'G','p1'),(14,'I','p1'),(15,'I','p1'),(16,'I','p1'),(22,'I','p1'),(24,'I','p1'),(25,'I','p1'),(29,'I','p1'),(30,'I','p1'),(4,'G','p10'),(5,'I','p10'),(7,'I','p10'),(10,'I','p10'),(14,'G','p10'),(15,'G','p10'),(21,'G','p10'),(29,'I','p10'),(2,'I','p11'),(3,'G','p11'),(5,'I','p11'),(6,'I','p11'),(8,'I','p11'),(9,'I','p11'),(10,'G','p11'),(11,'I','p11'),(17,'I','p11'),(20,'I','p11'),(29,'I','p11'),(3,'I','p12'),(8,'G','p12'),(9,'I','p12'),(15,'I','p12'),(16,'I','p12'),(18,'I','p12'),(20,'I','p12'),(21,'I','p12'),(24,'I','p12'),(25,'I','p12'),(27,'I','p12'),(29,'I','p12'),(3,'I','p13'),(4,'I','p13'),(11,'I','p13'),(14,'G','p13'),(16,'G','p13'),(17,'G','p13'),(19,'I','p13'),(22,'I','p13'),(25,'G','p13'),(27,'I','p13'),(2,'G','p14'),(3,'G','p14'),(6,'I','p14'),(7,'G','p14'),(8,'I','p14'),(15,'I','p14'),(18,'I','p14'),(24,'I','p14'),(26,'G','p14'),(27,'I','p14'),(1,'I','p15'),(2,'G','p15'),(3,'I','p15'),(4,'G','p15'),(10,'I','p15'),(12,'G','p15'),(13,'I','p15'),(14,'I','p15'),(15,'G','p15'),(19,'I','p15'),(20,'G','p15'),(24,'G','p15'),(26,'I','p15'),(28,'G','p15'),(29,'I','p15'),(1,'I','p16'),(2,'I','p16'),(3,'G','p16'),(10,'I','p16'),(11,'I','p16'),(16,'I','p16'),(19,'G','p16'),(21,'I','p16'),(22,'I','p16'),(23,'I','p16'),(25,'I','p16'),(26,'G','p16'),(28,'G','p16'),(1,'G','p17'),(2,'I','p17'),(7,'I','p17'),(8,'I','p17'),(9,'I','p17'),(10,'G','p17'),(12,'I','p17'),(15,'I','p17'),(18,'G','p17'),(20,'I','p17'),(23,'G','p17'),(24,'I','p17'),(26,'I','p17'),(29,'G','p17'),(6,'I','p18'),(8,'I','p18'),(9,'I','p18'),(10,'G','p18'),(12,'G','p18'),(16,'G','p18'),(18,'I','p18'),(21,'G','p18'),(24,'G','p18'),(27,'G','p18'),(1,'G','p19'),(6,'I','p19'),(7,'I','p19'),(10,'I','p19'),(11,'G','p19'),(12,'I','p19'),(16,'G','p19'),(18,'I','p19'),(19,'G','p19'),(20,'I','p19'),(22,'I','p19'),(24,'I','p19'),(25,'I','p19'),(1,'I','p2'),(2,'G','p2'),(3,'G','p2'),(5,'I','p2'),(6,'G','p2'),(7,'G','p2'),(9,'G','p2'),(15,'I','p2'),(21,'I','p2'),(22,'I','p2'),(26,'I','p2'),(28,'I','p2'),(5,'I','p20'),(6,'I','p20'),(7,'I','p20'),(8,'I','p20'),(9,'G','p20'),(13,'I','p20'),(14,'I','p20'),(17,'I','p20'),(23,'I','p20'),(24,'I','p20'),(26,'I','p20'),(28,'I','p20'),(29,'I','p20'),(30,'I','p20'),(1,'I','p21'),(4,'G','p21'),(5,'I','p21'),(8,'I','p21'),(14,'I','p21'),(16,'I','p21'),(17,'I','p21'),(18,'G','p21'),(21,'I','p21'),(23,'I','p21'),(25,'G','p21'),(27,'I','p21'),(29,'G','p21'),(30,'G','p21'),(1,'G','p22'),(5,'I','p22'),(7,'I','p22'),(11,'G','p22'),(12,'G','p22'),(13,'G','p22'),(14,'I','p22'),(15,'I','p22'),(17,'I','p22'),(18,'G','p22'),(20,'I','p22'),(22,'G','p22'),(27,'G','p22'),(28,'I','p22'),(1,'I','p23'),(2,'I','p23'),(3,'I','p23'),(4,'I','p23'),(6,'I','p23'),(8,'G','p23'),(9,'G','p23'),(10,'I','p23'),(12,'I','p23'),(13,'I','p23'),(22,'I','p23'),(23,'I','p23'),(26,'G','p23'),(30,'I','p23'),(4,'G','p24'),(6,'G','p24'),(7,'G','p24'),(9,'I','p24'),(11,'I','p24'),(17,'I','p24'),(19,'G','p24'),(21,'G','p24'),(22,'I','p24'),(26,'I','p24'),(30,'I','p24'),(2,'I','p25'),(3,'I','p25'),(5,'I','p25'),(8,'G','p25'),(11,'I','p25'),(13,'I','p25'),(19,'I','p25'),(20,'I','p25'),(21,'I','p25'),(22,'G','p25'),(26,'G','p25'),(27,'I','p25'),(28,'G','p25'),(30,'G','p25'),(1,'I','p26'),(4,'I','p26'),(5,'G','p26'),(7,'I','p26'),(12,'I','p26'),(13,'G','p26'),(14,'I','p26'),(16,'I','p26'),(17,'G','p26'),(23,'I','p26'),(24,'G','p26'),(25,'G','p26'),(28,'I','p26'),(30,'I','p26'),(2,'G','p27'),(3,'I','p27'),(7,'I','p27'),(12,'I','p27'),(13,'G','p27'),(16,'I','p27'),(17,'I','p27'),(18,'I','p27'),(23,'G','p27'),(24,'I','p27'),(28,'G','p27'),(29,'I','p27'),(30,'I','p27'),(6,'G','p28'),(7,'I','p28'),(8,'I','p28'),(9,'I','p28'),(11,'I','p28'),(13,'I','p28'),(14,'I','p28'),(15,'I','p28'),(16,'I','p28'),(19,'I','p28'),(20,'G','p28'),(23,'I','p28'),(25,'G','p28'),(28,'I','p28'),(29,'G','p28'),(30,'I','p28'),(1,'I','p29'),(6,'I','p29'),(10,'I','p29'),(15,'I','p29'),(20,'G','p29'),(21,'I','p29'),(23,'G','p29'),(25,'I','p29'),(27,'G','p29'),(28,'I','p29'),(2,'I','p3'),(5,'I','p3'),(13,'I','p3'),(14,'G','p3'),(16,'G','p3'),(19,'I','p3'),(22,'G','p3'),(23,'I','p3'),(24,'I','p3'),(25,'I','p3'),(30,'G','p3'),(1,'I','p30'),(4,'I','p30'),(5,'G','p30'),(11,'G','p30'),(13,'I','p30'),(17,'G','p30'),(19,'G','p30'),(20,'I','p30'),(25,'I','p30'),(27,'G','p30'),(30,'G','p30'),(2,'I','p4'),(4,'I','p4'),(5,'G','p4'),(10,'I','p4'),(12,'I','p4'),(17,'I','p4'),(18,'I','p4'),(19,'I','p4'),(27,'I','p4'),(9,'G','p5'),(10,'I','p5'),(11,'I','p5'),(15,'G','p5'),(18,'G','p5'),(21,'I','p5'),(22,'G','p5'),(1,'G','p6'),(4,'I','p6'),(8,'G','p6'),(17,'G','p6'),(18,'I','p6'),(19,'I','p6'),(20,'G','p6'),(26,'I','p6'),(27,'I','p6'),(4,'I','p7'),(8,'I','p7'),(11,'I','p7'),(12,'G','p7'),(14,'G','p7'),(15,'G','p7'),(18,'I','p7'),(19,'I','p7'),(20,'I','p7'),(21,'I','p7'),(23,'G','p7'),(24,'G','p7'),(26,'I','p7'),(27,'I','p7'),(28,'I','p7'),(29,'I','p7'),(2,'I','p8'),(3,'I','p8'),(4,'I','p8'),(5,'G','p8'),(7,'G','p8'),(9,'I','p8'),(10,'G','p8'),(11,'G','p8'),(12,'I','p8'),(14,'I','p8'),(21,'G','p8'),(25,'I','p8'),(6,'G','p9'),(13,'I','p9'),(16,'I','p9'),(17,'I','p9'),(22,'I','p9'),(23,'I','p9'),(26,'I','p9'),(28,'I','p9'),(29,'G','p9'),(30,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS10','p1'),('WSS131','p1'),('WSS136','p1'),('WSS150','p1'),('WSS165','p1'),('WSS189','p1'),('WSS194','p1'),('WSS198','p1'),('WSS4','p1'),('WSS41','p1'),('WSS45','p1'),('WSS61','p1'),('WSS64','p1'),('WSS73','p1'),('WSS106','p10'),('WSS13','p10'),('WSS147','p10'),('WSS161','p10'),('WSS166','p10'),('WSS176','p10'),('WSS182','p10'),('WSS184','p10'),('WSS20','p10'),('WSS28','p10'),('WSS47','p10'),('WSS58','p10'),('WSS78','p10'),('WSS88','p10'),('WSS101','p11'),('WSS103','p11'),('WSS11','p11'),('WSS130','p11'),('WSS138','p11'),('WSS139','p11'),('WSS140','p11'),('WSS17','p11'),('WSS179','p11'),('WSS184','p11'),('WSS35','p11'),('WSS54','p11'),('WSS92','p11'),('WSS93','p11'),('WSS117','p12'),('WSS143','p12'),('WSS18','p12'),('WSS182','p12'),('WSS23','p12'),('WSS41','p12'),('WSS49','p12'),('WSS50','p12'),('WSS63','p12'),('WSS90','p12'),('WSS95','p12'),('WSS108','p13'),('WSS117','p13'),('WSS129','p13'),('WSS158','p13'),('WSS169','p13'),('WSS179','p13'),('WSS185','p13'),('WSS193','p13'),('WSS58','p13'),('WSS6','p13'),('WSS60','p13'),('WSS68','p13'),('WSS70','p13'),('WSS71','p13'),('WSS121','p14'),('WSS124','p14'),('WSS132','p14'),('WSS145','p14'),('WSS146','p14'),('WSS171','p14'),('WSS195','p14'),('WSS33','p14'),('WSS52','p14'),('WSS69','p14'),('WSS70','p14'),('WSS85','p14'),('WSS97','p14'),('WSS102','p15'),('WSS143','p15'),('WSS149','p15'),('WSS175','p15'),('WSS178','p15'),('WSS18','p15'),('WSS186','p15'),('WSS29','p15'),('WSS36','p15'),('WSS53','p15'),('WSS56','p15'),('WSS67','p15'),('WSS98','p15'),('WSS131','p16'),('WSS188','p16'),('WSS23','p16'),('WSS7','p16'),('WSS71','p16'),('WSS91','p16'),('WSS110','p17'),('WSS111','p17'),('WSS128','p17'),('WSS146','p17'),('WSS148','p17'),('WSS151','p17'),('WSS175','p17'),('WSS61','p17'),('WSS72','p17'),('WSS77','p17'),('WSS8','p17'),('WSS113','p18'),('WSS115','p18'),('WSS118','p18'),('WSS132','p18'),('WSS141','p18'),('WSS158','p18'),('WSS167','p18'),('WSS170','p18'),('WSS176','p18'),('WSS30','p18'),('WSS42','p18'),('WSS7','p18'),('WSS88','p18'),('WSS114','p19'),('WSS115','p19'),('WSS118','p19'),('WSS119','p19'),('WSS122','p19'),('WSS129','p19'),('WSS133','p19'),('WSS149','p19'),('WSS156','p19'),('WSS169','p19'),('WSS191','p19'),('WSS27','p19'),('WSS40','p19'),('WSS74','p19'),('WSS76','p19'),('WSS80','p19'),('WSS109','p2'),('WSS116','p2'),('WSS123','p2'),('WSS138','p2'),('WSS139','p2'),('WSS180','p2'),('WSS186','p2'),('WSS191','p2'),('WSS46','p2'),('WSS5','p2'),('WSS64','p2'),('WSS96','p2'),('WSS1','p20'),('WSS113','p20'),('WSS128','p20'),('WSS153','p20'),('WSS154','p20'),('WSS156','p20'),('WSS164','p20'),('WSS166','p20'),('WSS167','p20'),('WSS57','p20'),('WSS69','p20'),('WSS75','p20'),('WSS79','p20'),('WSS100','p21'),('WSS110','p21'),('WSS121','p21'),('WSS13','p21'),('WSS14','p21'),('WSS144','p21'),('WSS148','p21'),('WSS160','p21'),('WSS181','p21'),('WSS199','p21'),('WSS22','p21'),('WSS38','p21'),('WSS4','p21'),('WSS55','p21'),('WSS73','p21'),('WSS96','p21'),('WSS98','p21'),('WSS106','p22'),('WSS123','p22'),('WSS16','p22'),('WSS174','p22'),('WSS188','p22'),('WSS192','p22'),('WSS193','p22'),('WSS24','p22'),('WSS25','p22'),('WSS26','p22'),('WSS27','p22'),('WSS60','p22'),('WSS68','p22'),('WSS82','p22'),('WSS94','p22'),('WSS112','p23'),('WSS116','p23'),('WSS120','p23'),('WSS141','p23'),('WSS162','p23'),('WSS163','p23'),('WSS183','p23'),('WSS187','p23'),('WSS5','p23'),('WSS59','p23'),('WSS65','p23'),('WSS79','p23'),('WSS105','p24'),('WSS108','p24'),('WSS11','p24'),('WSS125','p24'),('WSS130','p24'),('WSS135','p24'),('WSS16','p24'),('WSS17','p24'),('WSS2','p24'),('WSS3','p24'),('WSS30','p24'),('WSS31','p24'),('WSS44','p24'),('WSS48','p24'),('WSS51','p24'),('WSS66','p24'),('WSS9','p24'),('WSS90','p24'),('WSS97','p24'),('WSS1','p25'),('WSS100','p25'),('WSS119','p25'),('WSS12','p25'),('WSS120','p25'),('WSS134','p25'),('WSS135','p25'),('WSS140','p25'),('WSS145','p25'),('WSS160','p25'),('WSS168','p25'),('WSS177','p25'),('WSS198','p25'),('WSS21','p25'),('WSS35','p25'),('WSS37','p25'),('WSS62','p25'),('WSS63','p25'),('WSS8','p25'),('WSS82','p25'),('WSS109','p26'),('WSS14','p26'),('WSS142','p26'),('WSS15','p26'),('WSS151','p26'),('WSS163','p26'),('WSS171','p26'),('WSS81','p26'),('WSS86','p26'),('WSS10','p27'),('WSS107','p27'),('WSS137','p27'),('WSS177','p27'),('WSS185','p27'),('WSS19','p27'),('WSS200','p27'),('WSS37','p27'),('WSS47','p27'),('WSS65','p27'),('WSS80','p27'),('WSS89','p27'),('WSS104','p28'),('WSS15','p28'),('WSS157','p28'),('WSS190','p28'),('WSS199','p28'),('WSS20','p28'),('WSS43','p28'),('WSS84','p28'),('WSS93','p28'),('WSS103','p29'),('WSS107','p29'),('WSS114','p29'),('WSS133','p29'),('WSS153','p29'),('WSS154','p29'),('WSS181','p29'),('WSS2','p29'),('WSS39','p29'),('WSS46','p29'),('WSS49','p29'),('WSS77','p29'),('WSS89','p29'),('WSS91','p29'),('WSS104','p3'),('WSS126','p3'),('WSS142','p3'),('WSS150','p3'),('WSS195','p3'),('WSS196','p3'),('WSS31','p3'),('WSS39','p3'),('WSS51','p3'),('WSS52','p3'),('WSS56','p3'),('WSS6','p3'),('WSS66','p3'),('WSS85','p3'),('WSS94','p3'),('WSS127','p30'),('WSS136','p30'),('WSS147','p30'),('WSS161','p30'),('WSS170','p30'),('WSS174','p30'),('WSS180','p30'),('WSS183','p30'),('WSS189','p30'),('WSS25','p30'),('WSS26','p30'),('WSS44','p30'),('WSS48','p30'),('WSS81','p30'),('WSS83','p30'),('WSS84','p30'),('WSS122','p4'),('WSS125','p4'),('WSS137','p4'),('WSS152','p4'),('WSS172','p4'),('WSS173','p4'),('WSS178','p4'),('WSS200','p4'),('WSS22','p4'),('WSS34','p4'),('WSS40','p4'),('WSS72','p4'),('WSS76','p4'),('WSS78','p4'),('WSS101','p5'),('WSS105','p5'),('WSS124','p5'),('WSS134','p5'),('WSS155','p5'),('WSS173','p5'),('WSS28','p5'),('WSS29','p5'),('WSS34','p5'),('WSS74','p5'),('WSS83','p5'),('WSS87','p5'),('WSS92','p5'),('WSS159','p6'),('WSS168','p6'),('WSS197','p6'),('WSS24','p6'),('WSS38','p6'),('WSS45','p6'),('WSS54','p6'),('WSS57','p6'),('WSS62','p6'),('WSS86','p6'),('WSS87','p6'),('WSS9','p6'),('WSS111','p7'),('WSS12','p7'),('WSS144','p7'),('WSS152','p7'),('WSS155','p7'),('WSS187','p7'),('WSS190','p7'),('WSS192','p7'),('WSS196','p7'),('WSS3','p7'),('WSS32','p7'),('WSS36','p7'),('WSS59','p7'),('WSS99','p7'),('WSS102','p8'),('WSS112','p8'),('WSS127','p8'),('WSS172','p8'),('WSS19','p8'),('WSS194','p8'),('WSS197','p8'),('WSS33','p8'),('WSS42','p8'),('WSS53','p8'),('WSS67','p8'),('WSS95','p8'),('WSS99','p8'),('WSS157','p9'),('WSS159','p9'),('WSS162','p9'),('WSS164','p9'),('WSS165','p9'),('WSS21','p9'),('WSS32','p9'),('WSS43','p9'),('WSS75','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS100','p1'),('WSS111','p1'),('WSS120','p1'),('WSS125','p1'),('WSS128','p1'),('WSS133','p1'),('WSS138','p1'),('WSS144','p1'),('WSS146','p1'),('WSS15','p1'),('WSS150','p1'),('WSS152','p1'),('WSS159','p1'),('WSS163','p1'),('WSS19','p1'),('WSS190','p1'),('WSS197','p1'),('WSS23','p1'),('WSS25','p1'),('WSS31','p1'),('WSS41','p1'),('WSS49','p1'),('WSS52','p1'),('WSS57','p1'),('WSS58','p1'),('WSS62','p1'),('WSS65','p1'),('WSS75','p1'),('WSS8','p1'),('WSS95','p1'),('WSS96','p1'),('WSS99','p1'),('WSS10','p10'),('WSS103','p10'),('WSS104','p10'),('WSS120','p10'),('WSS128','p10'),('WSS135','p10'),('WSS138','p10'),('WSS140','p10'),('WSS143','p10'),('WSS15','p10'),('WSS156','p10'),('WSS157','p10'),('WSS161','p10'),('WSS165','p10'),('WSS168','p10'),('WSS177','p10'),('WSS184','p10'),('WSS195','p10'),('WSS199','p10'),('WSS22','p10'),('WSS24','p10'),('WSS28','p10'),('WSS35','p10'),('WSS36','p10'),('WSS43','p10'),('WSS47','p10'),('WSS48','p10'),('WSS55','p10'),('WSS57','p10'),('WSS58','p10'),('WSS59','p10'),('WSS7','p10'),('WSS78','p10'),('WSS79','p10'),('WSS92','p10'),('WSS93','p10'),('WSS95','p10'),('WSS106','p11'),('WSS11','p11'),('WSS12','p11'),('WSS13','p11'),('WSS130','p11'),('WSS132','p11'),('WSS15','p11'),('WSS158','p11'),('WSS160','p11'),('WSS167','p11'),('WSS17','p11'),('WSS171','p11'),('WSS172','p11'),('WSS18','p11'),('WSS19','p11'),('WSS193','p11'),('WSS195','p11'),('WSS196','p11'),('WSS23','p11'),('WSS33','p11'),('WSS34','p11'),('WSS38','p11'),('WSS4','p11'),('WSS42','p11'),('WSS50','p11'),('WSS56','p11'),('WSS6','p11'),('WSS62','p11'),('WSS66','p11'),('WSS67','p11'),('WSS68','p11'),('WSS72','p11'),('WSS83','p11'),('WSS9','p11'),('WSS99','p11'),('WSS102','p12'),('WSS106','p12'),('WSS110','p12'),('WSS112','p12'),('WSS115','p12'),('WSS118','p12'),('WSS119','p12'),('WSS123','p12'),('WSS13','p12'),('WSS135','p12'),('WSS138','p12'),('WSS141','p12'),('WSS166','p12'),('WSS169','p12'),('WSS171','p12'),('WSS173','p12'),('WSS176','p12'),('WSS191','p12'),('WSS192','p12'),('WSS199','p12'),('WSS200','p12'),('WSS25','p12'),('WSS28','p12'),('WSS36','p12'),('WSS38','p12'),('WSS39','p12'),('WSS41','p12'),('WSS43','p12'),('WSS5','p12'),('WSS58','p12'),('WSS62','p12'),('WSS69','p12'),('WSS74','p12'),('WSS79','p12'),('WSS80','p12'),('WSS88','p12'),('WSS9','p12'),('WSS99','p12'),('WSS105','p13'),('WSS128','p13'),('WSS129','p13'),('WSS134','p13'),('WSS135','p13'),('WSS136','p13'),('WSS147','p13'),('WSS161','p13'),('WSS163','p13'),('WSS165','p13'),('WSS174','p13'),('WSS18','p13'),('WSS184','p13'),('WSS19','p13'),('WSS200','p13'),('WSS22','p13'),('WSS24','p13'),('WSS25','p13'),('WSS26','p13'),('WSS30','p13'),('WSS39','p13'),('WSS4','p13'),('WSS41','p13'),('WSS49','p13'),('WSS71','p13'),('WSS74','p13'),('WSS78','p13'),('WSS82','p13'),('WSS83','p13'),('WSS84','p13'),('WSS96','p13'),('WSS103','p14'),('WSS107','p14'),('WSS110','p14'),('WSS111','p14'),('WSS119','p14'),('WSS122','p14'),('WSS125','p14'),('WSS128','p14'),('WSS134','p14'),('WSS136','p14'),('WSS140','p14'),('WSS145','p14'),('WSS147','p14'),('WSS151','p14'),('WSS157','p14'),('WSS160','p14'),('WSS166','p14'),('WSS168','p14'),('WSS169','p14'),('WSS171','p14'),('WSS176','p14'),('WSS180','p14'),('WSS181','p14'),('WSS182','p14'),('WSS188','p14'),('WSS191','p14'),('WSS192','p14'),('WSS193','p14'),('WSS197','p14'),('WSS20','p14'),('WSS26','p14'),('WSS28','p14'),('WSS30','p14'),('WSS32','p14'),('WSS34','p14'),('WSS36','p14'),('WSS45','p14'),('WSS51','p14'),('WSS56','p14'),('WSS60','p14'),('WSS61','p14'),('WSS64','p14'),('WSS65','p14'),('WSS67','p14'),('WSS76','p14'),('WSS84','p14'),('WSS85','p14'),('WSS90','p14'),('WSS100','p15'),('WSS102','p15'),('WSS103','p15'),('WSS11','p15'),('WSS153','p15'),('WSS155','p15'),('WSS168','p15'),('WSS170','p15'),('WSS174','p15'),('WSS177','p15'),('WSS182','p15'),('WSS186','p15'),('WSS195','p15'),('WSS22','p15'),('WSS24','p15'),('WSS3','p15'),('WSS30','p15'),('WSS32','p15'),('WSS34','p15'),('WSS50','p15'),('WSS53','p15'),('WSS6','p15'),('WSS70','p15'),('WSS74','p15'),('WSS75','p15'),('WSS87','p15'),('WSS88','p15'),('WSS92','p15'),('WSS98','p15'),('WSS1','p16'),('WSS100','p16'),('WSS105','p16'),('WSS11','p16'),('WSS111','p16'),('WSS131','p16'),('WSS139','p16'),('WSS14','p16'),('WSS143','p16'),('WSS145','p16'),('WSS147','p16'),('WSS148','p16'),('WSS150','p16'),('WSS152','p16'),('WSS156','p16'),('WSS158','p16'),('WSS169','p16'),('WSS181','p16'),('WSS196','p16'),('WSS198','p16'),('WSS22','p16'),('WSS28','p16'),('WSS29','p16'),('WSS41','p16'),('WSS43','p16'),('WSS44','p16'),('WSS46','p16'),('WSS47','p16'),('WSS55','p16'),('WSS60','p16'),('WSS61','p16'),('WSS73','p16'),('WSS77','p16'),('WSS8','p16'),('WSS84','p16'),('WSS88','p16'),('WSS95','p16'),('WSS99','p16'),('WSS101','p17'),('WSS102','p17'),('WSS107','p17'),('WSS109','p17'),('WSS117','p17'),('WSS120','p17'),('WSS121','p17'),('WSS137','p17'),('WSS145','p17'),('WSS146','p17'),('WSS154','p17'),('WSS156','p17'),('WSS157','p17'),('WSS169','p17'),('WSS171','p17'),('WSS176','p17'),('WSS177','p17'),('WSS179','p17'),('WSS182','p17'),('WSS184','p17'),('WSS192','p17'),('WSS194','p17'),('WSS196','p17'),('WSS2','p17'),('WSS22','p17'),('WSS23','p17'),('WSS24','p17'),('WSS42','p17'),('WSS46','p17'),('WSS52','p17'),('WSS58','p17'),('WSS65','p17'),('WSS72','p17'),('WSS77','p17'),('WSS79','p17'),('WSS85','p17'),('WSS90','p17'),('WSS96','p17'),('WSS99','p17'),('WSS1','p18'),('WSS102','p18'),('WSS104','p18'),('WSS108','p18'),('WSS112','p18'),('WSS113','p18'),('WSS121','p18'),('WSS127','p18'),('WSS132','p18'),('WSS138','p18'),('WSS142','p18'),('WSS143','p18'),('WSS144','p18'),('WSS153','p18'),('WSS154','p18'),('WSS160','p18'),('WSS161','p18'),('WSS17','p18'),('WSS180','p18'),('WSS187','p18'),('WSS197','p18'),('WSS21','p18'),('WSS26','p18'),('WSS38','p18'),('WSS43','p18'),('WSS46','p18'),('WSS54','p18'),('WSS58','p18'),('WSS7','p18'),('WSS72','p18'),('WSS81','p18'),('WSS85','p18'),('WSS94','p18'),('WSS107','p19'),('WSS119','p19'),('WSS126','p19'),('WSS127','p19'),('WSS13','p19'),('WSS130','p19'),('WSS135','p19'),('WSS144','p19'),('WSS146','p19'),('WSS15','p19'),('WSS150','p19'),('WSS152','p19'),('WSS159','p19'),('WSS162','p19'),('WSS182','p19'),('WSS185','p19'),('WSS186','p19'),('WSS187','p19'),('WSS190','p19'),('WSS197','p19'),('WSS198','p19'),('WSS20','p19'),('WSS23','p19'),('WSS3','p19'),('WSS36','p19'),('WSS40','p19'),('WSS47','p19'),('WSS5','p19'),('WSS60','p19'),('WSS64','p19'),('WSS66','p19'),('WSS67','p19'),('WSS69','p19'),('WSS70','p19'),('WSS73','p19'),('WSS93','p19'),('WSS95','p19'),('WSS109','p2'),('WSS112','p2'),('WSS113','p2'),('WSS117','p2'),('WSS125','p2'),('WSS133','p2'),('WSS134','p2'),('WSS138','p2'),('WSS139','p2'),('WSS14','p2'),('WSS140','p2'),('WSS147','p2'),('WSS15','p2'),('WSS155','p2'),('WSS162','p2'),('WSS164','p2'),('WSS166','p2'),('WSS167','p2'),('WSS172','p2'),('WSS173','p2'),('WSS175','p2'),('WSS178','p2'),('WSS179','p2'),('WSS188','p2'),('WSS190','p2'),('WSS195','p2'),('WSS20','p2'),('WSS200','p2'),('WSS27','p2'),('WSS3','p2'),('WSS31','p2'),('WSS37','p2'),('WSS42','p2'),('WSS43','p2'),('WSS44','p2'),('WSS45','p2'),('WSS48','p2'),('WSS6','p2'),('WSS61','p2'),('WSS62','p2'),('WSS63','p2'),('WSS64','p2'),('WSS68','p2'),('WSS75','p2'),('WSS76','p2'),('WSS79','p2'),('WSS8','p2'),('WSS83','p2'),('WSS86','p2'),('WSS91','p2'),('WSS98','p2'),('WSS100','p20'),('WSS102','p20'),('WSS105','p20'),('WSS107','p20'),('WSS108','p20'),('WSS111','p20'),('WSS113','p20'),('WSS115','p20'),('WSS121','p20'),('WSS122','p20'),('WSS125','p20'),('WSS128','p20'),('WSS135','p20'),('WSS140','p20'),('WSS141','p20'),('WSS145','p20'),('WSS147','p20'),('WSS151','p20'),('WSS154','p20'),('WSS157','p20'),('WSS164','p20'),('WSS167','p20'),('WSS171','p20'),('WSS172','p20'),('WSS175','p20'),('WSS176','p20'),('WSS177','p20'),('WSS19','p20'),('WSS194','p20'),('WSS198','p20'),('WSS20','p20'),('WSS21','p20'),('WSS27','p20'),('WSS29','p20'),('WSS41','p20'),('WSS48','p20'),('WSS5','p20'),('WSS52','p20'),('WSS65','p20'),('WSS73','p20'),('WSS81','p20'),('WSS82','p20'),('WSS85','p20'),('WSS86','p20'),('WSS87','p20'),('WSS89','p20'),('WSS91','p20'),('WSS100','p21'),('WSS113','p21'),('WSS115','p21'),('WSS116','p21'),('WSS124','p21'),('WSS129','p21'),('WSS130','p21'),('WSS131','p21'),('WSS133','p21'),('WSS137','p21'),('WSS145','p21'),('WSS148','p21'),('WSS149','p21'),('WSS15','p21'),('WSS16','p21'),('WSS160','p21'),('WSS161','p21'),('WSS168','p21'),('WSS174','p21'),('WSS180','p21'),('WSS181','p21'),('WSS186','p21'),('WSS191','p21'),('WSS24','p21'),('WSS31','p21'),('WSS32','p21'),('WSS40','p21'),('WSS48','p21'),('WSS49','p21'),('WSS51','p21'),('WSS56','p21'),('WSS61','p21'),('WSS66','p21'),('WSS71','p21'),('WSS8','p21'),('WSS80','p21'),('WSS88','p21'),('WSS97','p21'),('WSS108','p22'),('WSS109','p22'),('WSS11','p22'),('WSS12','p22'),('WSS120','p22'),('WSS122','p22'),('WSS126','p22'),('WSS130','p22'),('WSS133','p22'),('WSS137','p22'),('WSS138','p22'),('WSS14','p22'),('WSS145','p22'),('WSS146','p22'),('WSS149','p22'),('WSS154','p22'),('WSS158','p22'),('WSS159','p22'),('WSS17','p22'),('WSS186','p22'),('WSS193','p22'),('WSS199','p22'),('WSS2','p22'),('WSS20','p22'),('WSS23','p22'),('WSS28','p22'),('WSS31','p22'),('WSS34','p22'),('WSS38','p22'),('WSS50','p22'),('WSS52','p22'),('WSS53','p22'),('WSS55','p22'),('WSS62','p22'),('WSS84','p22'),('WSS86','p22'),('WSS96','p22'),('WSS106','p23'),('WSS114','p23'),('WSS115','p23'),('WSS116','p23'),('WSS118','p23'),('WSS123','p23'),('WSS132','p23'),('WSS135','p23'),('WSS136','p23'),('WSS137','p23'),('WSS148','p23'),('WSS151','p23'),('WSS159','p23'),('WSS16','p23'),('WSS164','p23'),('WSS166','p23'),('WSS17','p23'),('WSS170','p23'),('WSS173','p23'),('WSS185','p23'),('WSS189','p23'),('WSS191','p23'),('WSS194','p23'),('WSS196','p23'),('WSS198','p23'),('WSS26','p23'),('WSS30','p23'),('WSS31','p23'),('WSS32','p23'),('WSS33','p23'),('WSS5','p23'),('WSS51','p23'),('WSS54','p23'),('WSS59','p23'),('WSS60','p23'),('WSS63','p23'),('WSS68','p23'),('WSS72','p23'),('WSS73','p23'),('WSS74','p23'),('WSS82','p23'),('WSS83','p23'),('WSS89','p23'),('WSS91','p23'),('WSS93','p23'),('WSS97','p23'),('WSS104','p24'),('WSS106','p24'),('WSS110','p24'),('WSS115','p24'),('WSS118','p24'),('WSS124','p24'),('WSS133','p24'),('WSS134','p24'),('WSS139','p24'),('WSS143','p24'),('WSS152','p24'),('WSS155','p24'),('WSS156','p24'),('WSS158','p24'),('WSS162','p24'),('WSS172','p24'),('WSS177','p24'),('WSS179','p24'),('WSS180','p24'),('WSS183','p24'),('WSS185','p24'),('WSS188','p24'),('WSS26','p24'),('WSS27','p24'),('WSS28','p24'),('WSS29','p24'),('WSS40','p24'),('WSS47','p24'),('WSS49','p24'),('WSS5','p24'),('WSS68','p24'),('WSS75','p24'),('WSS78','p24'),('WSS80','p24'),('WSS82','p24'),('WSS83','p24'),('WSS9','p24'),('WSS95','p24'),('WSS112','p25'),('WSS114','p25'),('WSS116','p25'),('WSS119','p25'),('WSS125','p25'),('WSS126','p25'),('WSS129','p25'),('WSS134','p25'),('WSS136','p25'),('WSS155','p25'),('WSS161','p25'),('WSS165','p25'),('WSS175','p25'),('WSS179','p25'),('WSS189','p25'),('WSS190','p25'),('WSS20','p25'),('WSS200','p25'),('WSS39','p25'),('WSS44','p25'),('WSS56','p25'),('WSS70','p25'),('WSS71','p25'),('WSS77','p25'),('WSS87','p25'),('WSS89','p25'),('WSS9','p25'),('WSS92','p25'),('WSS101','p26'),('WSS104','p26'),('WSS107','p26'),('WSS108','p26'),('WSS110','p26'),('WSS111','p26'),('WSS114','p26'),('WSS117','p26'),('WSS12','p26'),('WSS123','p26'),('WSS126','p26'),('WSS132','p26'),('WSS139','p26'),('WSS148','p26'),('WSS150','p26'),('WSS156','p26'),('WSS161','p26'),('WSS164','p26'),('WSS165','p26'),('WSS174','p26'),('WSS175','p26'),('WSS177','p26'),('WSS183','p26'),('WSS19','p26'),('WSS191','p26'),('WSS194','p26'),('WSS199','p26'),('WSS25','p26'),('WSS35','p26'),('WSS38','p26'),('WSS39','p26'),('WSS45','p26'),('WSS55','p26'),('WSS59','p26'),('WSS69','p26'),('WSS86','p26'),('WSS91','p26'),('WSS98','p26'),('WSS103','p27'),('WSS11','p27'),('WSS113','p27'),('WSS116','p27'),('WSS117','p27'),('WSS126','p27'),('WSS129','p27'),('WSS133','p27'),('WSS141','p27'),('WSS148','p27'),('WSS152','p27'),('WSS153','p27'),('WSS170','p27'),('WSS175','p27'),('WSS178','p27'),('WSS180','p27'),('WSS192','p27'),('WSS198','p27'),('WSS2','p27'),('WSS26','p27'),('WSS33','p27'),('WSS34','p27'),('WSS37','p27'),('WSS4','p27'),('WSS40','p27'),('WSS42','p27'),('WSS44','p27'),('WSS52','p27'),('WSS56','p27'),('WSS58','p27'),('WSS6','p27'),('WSS66','p27'),('WSS73','p27'),('WSS78','p27'),('WSS80','p27'),('WSS81','p27'),('WSS84','p27'),('WSS104','p28'),('WSS106','p28'),('WSS120','p28'),('WSS129','p28'),('WSS13','p28'),('WSS130','p28'),('WSS131','p28'),('WSS137','p28'),('WSS14','p28'),('WSS146','p28'),('WSS149','p28'),('WSS168','p28'),('WSS170','p28'),('WSS173','p28'),('WSS189','p28'),('WSS190','p28'),('WSS196','p28'),('WSS199','p28'),('WSS21','p28'),('WSS29','p28'),('WSS33','p28'),('WSS35','p28'),('WSS42','p28'),('WSS45','p28'),('WSS46','p28'),('WSS47','p28'),('WSS54','p28'),('WSS59','p28'),('WSS64','p28'),('WSS76','p28'),('WSS88','p28'),('WSS93','p28'),('WSS1','p29'),('WSS101','p29'),('WSS103','p29'),('WSS108','p29'),('WSS11','p29'),('WSS114','p29'),('WSS123','p29'),('WSS144','p29'),('WSS158','p29'),('WSS16','p29'),('WSS163','p29'),('WSS165','p29'),('WSS174','p29'),('WSS178','p29'),('WSS188','p29'),('WSS189','p29'),('WSS197','p29'),('WSS21','p29'),('WSS23','p29'),('WSS48','p29'),('WSS50','p29'),('WSS53','p29'),('WSS60','p29'),('WSS74','p29'),('WSS85','p29'),('WSS92','p29'),('WSS94','p29'),('WSS98','p29'),('WSS101','p3'),('WSS109','p3'),('WSS114','p3'),('WSS118','p3'),('WSS121','p3'),('WSS122','p3'),('WSS127','p3'),('WSS134','p3'),('WSS14','p3'),('WSS147','p3'),('WSS148','p3'),('WSS150','p3'),('WSS153','p3'),('WSS157','p3'),('WSS160','p3'),('WSS167','p3'),('WSS173','p3'),('WSS18','p3'),('WSS181','p3'),('WSS182','p3'),('WSS183','p3'),('WSS21','p3'),('WSS25','p3'),('WSS30','p3'),('WSS39','p3'),('WSS41','p3'),('WSS49','p3'),('WSS5','p3'),('WSS51','p3'),('WSS52','p3'),('WSS53','p3'),('WSS63','p3'),('WSS7','p3'),('WSS70','p3'),('WSS71','p3'),('WSS72','p3'),('WSS80','p3'),('WSS81','p3'),('WSS83','p3'),('WSS85','p3'),('WSS86','p3'),('WSS89','p3'),('WSS9','p3'),('WSS10','p30'),('WSS105','p30'),('WSS106','p30'),('WSS113','p30'),('WSS119','p30'),('WSS121','p30'),('WSS124','p30'),('WSS127','p30'),('WSS144','p30'),('WSS155','p30'),('WSS17','p30'),('WSS176','p30'),('WSS180','p30'),('WSS185','p30'),('WSS186','p30'),('WSS187','p30'),('WSS199','p30'),('WSS2','p30'),('WSS21','p30'),('WSS22','p30'),('WSS29','p30'),('WSS33','p30'),('WSS36','p30'),('WSS4','p30'),('WSS50','p30'),('WSS51','p30'),('WSS53','p30'),('WSS55','p30'),('WSS64','p30'),('WSS72','p30'),('WSS97','p30'),('WSS110','p4'),('WSS118','p4'),('WSS127','p4'),('WSS128','p4'),('WSS13','p4'),('WSS136','p4'),('WSS137','p4'),('WSS142','p4'),('WSS154','p4'),('WSS16','p4'),('WSS162','p4'),('WSS163','p4'),('WSS164','p4'),('WSS173','p4'),('WSS18','p4'),('WSS184','p4'),('WSS197','p4'),('WSS3','p4'),('WSS31','p4'),('WSS33','p4'),('WSS37','p4'),('WSS42','p4'),('WSS44','p4'),('WSS54','p4'),('WSS55','p4'),('WSS62','p4'),('WSS67','p4'),('WSS68','p4'),('WSS76','p4'),('WSS79','p4'),('WSS88','p4'),('WSS91','p4'),('WSS97','p4'),('WSS1','p5'),('WSS101','p5'),('WSS115','p5'),('WSS12','p5'),('WSS141','p5'),('WSS146','p5'),('WSS150','p5'),('WSS159','p5'),('WSS162','p5'),('WSS163','p5'),('WSS168','p5'),('WSS169','p5'),('WSS178','p5'),('WSS183','p5'),('WSS184','p5'),('WSS185','p5'),('WSS193','p5'),('WSS37','p5'),('WSS44','p5'),('WSS54','p5'),('WSS57','p5'),('WSS6','p5'),('WSS60','p5'),('WSS61','p5'),('WSS63','p5'),('WSS69','p5'),('WSS73','p5'),('WSS75','p5'),('WSS79','p5'),('WSS84','p5'),('WSS86','p5'),('WSS9','p5'),('WSS94','p5'),('WSS95','p5'),('WSS97','p5'),('WSS101','p6'),('WSS109','p6'),('WSS111','p6'),('WSS118','p6'),('WSS119','p6'),('WSS122','p6'),('WSS131','p6'),('WSS141','p6'),('WSS142','p6'),('WSS144','p6'),('WSS149','p6'),('WSS156','p6'),('WSS159','p6'),('WSS167','p6'),('WSS175','p6'),('WSS181','p6'),('WSS182','p6'),('WSS187','p6'),('WSS189','p6'),('WSS191','p6'),('WSS192','p6'),('WSS2','p6'),('WSS27','p6'),('WSS37','p6'),('WSS45','p6'),('WSS54','p6'),('WSS57','p6'),('WSS59','p6'),('WSS66','p6'),('WSS76','p6'),('WSS87','p6'),('WSS93','p6'),('WSS94','p6'),('WSS98','p6'),('WSS10','p7'),('WSS100','p7'),('WSS107','p7'),('WSS112','p7'),('WSS114','p7'),('WSS121','p7'),('WSS122','p7'),('WSS130','p7'),('WSS136','p7'),('WSS142','p7'),('WSS143','p7'),('WSS151','p7'),('WSS153','p7'),('WSS16','p7'),('WSS163','p7'),('WSS171','p7'),('WSS179','p7'),('WSS181','p7'),('WSS192','p7'),('WSS193','p7'),('WSS24','p7'),('WSS35','p7'),('WSS38','p7'),('WSS45','p7'),('WSS46','p7'),('WSS57','p7'),('WSS67','p7'),('WSS7','p7'),('WSS71','p7'),('WSS74','p7'),('WSS92','p7'),('WSS94','p7'),('WSS10','p8'),('WSS124','p8'),('WSS129','p8'),('WSS131','p8'),('WSS141','p8'),('WSS143','p8'),('WSS149','p8'),('WSS151','p8'),('WSS155','p8'),('WSS164','p8'),('WSS166','p8'),('WSS17','p8'),('WSS170','p8'),('WSS172','p8'),('WSS174','p8'),('WSS186','p8'),('WSS187','p8'),('WSS19','p8'),('WSS195','p8'),('WSS196','p8'),('WSS200','p8'),('WSS27','p8'),('WSS3','p8'),('WSS30','p8'),('WSS32','p8'),('WSS35','p8'),('WSS37','p8'),('WSS48','p8'),('WSS51','p8'),('WSS53','p8'),('WSS59','p8'),('WSS61','p8'),('WSS63','p8'),('WSS65','p8'),('WSS69','p8'),('WSS70','p8'),('WSS77','p8'),('WSS80','p8'),('WSS89','p8'),('WSS91','p8'),('WSS1','p9'),('WSS102','p9'),('WSS108','p9'),('WSS109','p9'),('WSS112','p9'),('WSS116','p9'),('WSS123','p9'),('WSS127','p9'),('WSS131','p9'),('WSS132','p9'),('WSS139','p9'),('WSS14','p9'),('WSS140','p9'),('WSS149','p9'),('WSS169','p9'),('WSS170','p9'),('WSS172','p9'),('WSS176','p9'),('WSS185','p9'),('WSS188','p9'),('WSS194','p9'),('WSS198','p9'),('WSS32','p9'),('WSS39','p9'),('WSS40','p9'),('WSS47','p9'),('WSS50','p9'),('WSS57','p9'),('WSS66','p9'),('WSS75','p9'),('WSS78','p9'),('WSS8','p9'),('WSS81','p9'),('WSS89','p9'),('WSS90','p9'),('WSS92','p9'),('WSS96','p9'),('WSS98','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS1'),(2,1,'WSS182'),(2,1,'WSS197'),(3,1,'WSS53'),(3,2,'WSS12'),(4,1,'WSS106'),(4,2,'WSS27'),(5,1,'WSS167'),(5,2,'WSS174'),(6,1,'WSS10'),(6,1,'WSS92'),(7,1,'WSS96'),(7,2,'WSS15'),(8,1,'WSS107'),(8,2,'WSS11'),(9,1,'WSS109'),(9,1,'WSS170'),(10,1,'WSS184'),(10,2,'WSS102'),(11,1,'WSS188'),(11,2,'WSS106'),(12,1,'WSS52'),(12,1,'WSS81'),(13,1,'WSS129'),(13,2,'WSS50'),(14,1,'WSS16'),(14,2,'WSS182'),(15,1,'WSS200'),(15,2,'WSS170'),(16,1,'WSS109'),(16,1,'WSS16'),(17,1,'WSS10'),(17,2,'WSS187'),(18,1,'WSS96'),(18,2,'WSS101'),(19,1,'WSS188'),(19,2,'WSS174'),(20,1,'WSS147'),(20,2,'WSS62'),(21,1,'WSS130'),(22,1,'WSS171'),(22,2,'WSS182'),(23,1,'WSS132'),(24,1,'WSS105'),(24,2,'WSS199'),(24,3,'WSS10'),(25,1,'WSS107'),(26,1,'WSS184'),(26,2,'WSS177'),(27,1,'WSS116'),(28,1,'WSS174'),(28,2,'WSS164'),(29,1,'WSS106'),(29,2,'WSS12'),(30,1,'WSS19'),(30,2,'WSS109'),(30,3,'WSS11'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-30  7:51:39
