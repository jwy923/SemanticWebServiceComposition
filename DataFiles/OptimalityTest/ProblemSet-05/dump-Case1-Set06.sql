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
INSERT INTO `initialgoalparameter` VALUES (9,'G','p1'),(22,'I','p1'),(24,'I','p1'),(25,'G','p1'),(29,'I','p1'),(1,'I','p10'),(3,'I','p10'),(4,'I','p10'),(8,'I','p10'),(9,'I','p10'),(13,'I','p10'),(16,'I','p10'),(17,'G','p10'),(18,'I','p10'),(19,'I','p10'),(23,'I','p10'),(27,'I','p10'),(30,'I','p10'),(5,'G','p11'),(6,'I','p11'),(7,'I','p11'),(8,'G','p11'),(9,'I','p11'),(11,'I','p11'),(12,'I','p11'),(13,'G','p11'),(15,'I','p11'),(17,'I','p11'),(18,'I','p11'),(19,'G','p11'),(20,'I','p11'),(25,'I','p11'),(30,'I','p11'),(3,'G','p12'),(6,'G','p12'),(18,'I','p12'),(19,'I','p12'),(21,'G','p12'),(22,'I','p12'),(23,'G','p12'),(25,'I','p12'),(26,'G','p12'),(27,'G','p12'),(9,'I','p13'),(11,'I','p13'),(13,'I','p13'),(16,'G','p13'),(18,'G','p13'),(19,'I','p13'),(21,'I','p13'),(23,'G','p13'),(24,'I','p13'),(29,'G','p13'),(30,'I','p13'),(1,'I','p14'),(2,'I','p14'),(3,'I','p14'),(4,'I','p14'),(7,'I','p14'),(8,'I','p14'),(11,'G','p14'),(12,'I','p14'),(13,'G','p14'),(16,'G','p14'),(17,'G','p14'),(22,'I','p14'),(26,'I','p14'),(27,'I','p14'),(28,'I','p14'),(2,'I','p15'),(5,'I','p15'),(7,'I','p15'),(8,'G','p15'),(10,'G','p15'),(11,'I','p15'),(12,'G','p15'),(14,'I','p15'),(18,'G','p15'),(20,'I','p15'),(23,'I','p15'),(29,'G','p15'),(30,'I','p15'),(3,'I','p16'),(4,'I','p16'),(5,'I','p16'),(10,'I','p16'),(12,'I','p16'),(15,'G','p16'),(16,'G','p16'),(26,'I','p16'),(27,'I','p16'),(28,'I','p16'),(30,'I','p16'),(2,'G','p17'),(5,'G','p17'),(6,'G','p17'),(7,'I','p17'),(11,'I','p17'),(12,'I','p17'),(17,'I','p17'),(18,'G','p17'),(20,'I','p17'),(22,'I','p17'),(23,'G','p17'),(24,'I','p17'),(25,'G','p17'),(26,'I','p17'),(30,'I','p17'),(1,'I','p18'),(2,'G','p18'),(5,'I','p18'),(6,'I','p18'),(8,'I','p18'),(11,'G','p18'),(13,'I','p18'),(15,'G','p18'),(16,'I','p18'),(20,'I','p18'),(24,'G','p18'),(28,'I','p18'),(29,'I','p18'),(30,'G','p18'),(3,'I','p19'),(5,'I','p19'),(8,'I','p19'),(10,'I','p19'),(11,'I','p19'),(12,'G','p19'),(13,'I','p19'),(14,'G','p19'),(17,'G','p19'),(20,'G','p19'),(22,'G','p19'),(25,'G','p19'),(26,'G','p19'),(28,'G','p19'),(29,'I','p19'),(1,'G','p2'),(4,'I','p2'),(5,'I','p2'),(8,'G','p2'),(10,'G','p2'),(16,'I','p2'),(17,'G','p2'),(28,'G','p2'),(29,'I','p2'),(2,'I','p20'),(9,'I','p20'),(10,'I','p20'),(11,'I','p20'),(14,'I','p20'),(16,'I','p20'),(18,'I','p20'),(19,'I','p20'),(20,'G','p20'),(21,'G','p20'),(22,'G','p20'),(25,'I','p20'),(26,'I','p20'),(30,'I','p20'),(1,'G','p21'),(2,'I','p21'),(3,'I','p21'),(4,'I','p21'),(5,'I','p21'),(6,'I','p21'),(7,'I','p21'),(9,'G','p21'),(10,'I','p21'),(12,'I','p21'),(15,'I','p21'),(16,'I','p21'),(19,'G','p21'),(21,'I','p21'),(22,'I','p21'),(23,'I','p21'),(24,'G','p21'),(26,'I','p21'),(3,'I','p22'),(4,'G','p22'),(6,'G','p22'),(7,'G','p22'),(11,'G','p22'),(18,'I','p22'),(21,'G','p22'),(23,'I','p22'),(25,'I','p22'),(27,'I','p22'),(4,'I','p23'),(5,'I','p23'),(6,'I','p23'),(9,'G','p23'),(12,'I','p23'),(13,'I','p23'),(14,'I','p23'),(17,'I','p23'),(18,'I','p23'),(21,'I','p23'),(23,'I','p23'),(27,'I','p23'),(28,'G','p23'),(29,'I','p23'),(4,'G','p24'),(7,'I','p24'),(8,'I','p24'),(10,'G','p24'),(12,'I','p24'),(13,'G','p24'),(17,'I','p24'),(19,'I','p24'),(20,'I','p24'),(21,'I','p24'),(22,'I','p24'),(2,'I','p25'),(4,'I','p25'),(17,'I','p25'),(21,'I','p25'),(24,'I','p25'),(27,'I','p25'),(30,'G','p25'),(2,'G','p26'),(3,'I','p26'),(12,'G','p26'),(13,'I','p26'),(14,'G','p26'),(15,'I','p26'),(16,'G','p26'),(18,'I','p26'),(19,'I','p26'),(20,'I','p26'),(21,'I','p26'),(24,'I','p26'),(27,'G','p26'),(30,'G','p26'),(4,'G','p27'),(7,'G','p27'),(13,'I','p27'),(14,'I','p27'),(15,'I','p27'),(20,'G','p27'),(23,'G','p27'),(25,'I','p27'),(27,'I','p27'),(28,'G','p27'),(29,'G','p27'),(1,'I','p28'),(2,'I','p28'),(6,'G','p28'),(9,'I','p28'),(10,'I','p28'),(11,'I','p28'),(15,'I','p28'),(17,'I','p28'),(21,'G','p28'),(24,'I','p28'),(25,'I','p28'),(27,'G','p28'),(29,'I','p28'),(1,'G','p29'),(2,'I','p29'),(4,'G','p29'),(10,'G','p29'),(14,'I','p29'),(20,'I','p29'),(24,'I','p29'),(26,'G','p29'),(27,'G','p29'),(28,'I','p29'),(29,'I','p29'),(1,'I','p3'),(6,'I','p3'),(7,'I','p3'),(8,'G','p3'),(14,'I','p3'),(24,'G','p3'),(26,'G','p3'),(27,'I','p3'),(28,'I','p3'),(29,'I','p3'),(2,'I','p30'),(3,'G','p30'),(5,'G','p30'),(6,'I','p30'),(8,'I','p30'),(14,'I','p30'),(16,'I','p30'),(19,'G','p30'),(20,'I','p30'),(22,'I','p30'),(24,'G','p30'),(5,'I','p4'),(7,'G','p4'),(8,'I','p4'),(11,'I','p4'),(15,'I','p4'),(16,'I','p4'),(17,'I','p4'),(22,'G','p4'),(23,'I','p4'),(25,'I','p4'),(26,'I','p4'),(29,'G','p4'),(30,'I','p4'),(1,'G','p5'),(5,'G','p5'),(8,'I','p5'),(10,'I','p5'),(15,'G','p5'),(17,'I','p5'),(20,'G','p5'),(23,'I','p5'),(24,'I','p5'),(28,'I','p5'),(1,'I','p6'),(2,'G','p6'),(6,'I','p6'),(9,'I','p6'),(10,'I','p6'),(13,'G','p6'),(14,'G','p6'),(15,'I','p6'),(18,'G','p6'),(19,'I','p6'),(28,'I','p6'),(1,'I','p7'),(3,'G','p7'),(9,'I','p7'),(14,'G','p7'),(15,'I','p7'),(18,'I','p7'),(19,'I','p7'),(28,'I','p7'),(1,'I','p8'),(3,'I','p8'),(7,'I','p8'),(9,'I','p8'),(12,'I','p8'),(13,'I','p8'),(16,'I','p8'),(21,'I','p8'),(22,'I','p8'),(23,'I','p8'),(25,'G','p8'),(26,'I','p8'),(30,'G','p8'),(3,'G','p9'),(4,'I','p9'),(6,'I','p9'),(7,'G','p9'),(9,'G','p9'),(10,'I','p9'),(11,'G','p9'),(12,'G','p9'),(14,'I','p9'),(15,'G','p9'),(19,'G','p9'),(21,'I','p9'),(22,'G','p9'),(25,'I','p9'),(26,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS102','p1'),('WSS105','p1'),('WSS112','p1'),('WSS125','p1'),('WSS139','p1'),('WSS167','p1'),('WSS169','p1'),('WSS178','p1'),('WSS195','p1'),('WSS53','p1'),('WSS61','p1'),('WSS109','p10'),('WSS113','p10'),('WSS128','p10'),('WSS14','p10'),('WSS149','p10'),('WSS154','p10'),('WSS180','p10'),('WSS3','p10'),('WSS64','p10'),('WSS92','p10'),('WSS94','p10'),('WSS125','p11'),('WSS129','p11'),('WSS138','p11'),('WSS148','p11'),('WSS189','p11'),('WSS59','p11'),('WSS60','p11'),('WSS120','p12'),('WSS133','p12'),('WSS138','p12'),('WSS144','p12'),('WSS147','p12'),('WSS164','p12'),('WSS17','p12'),('WSS175','p12'),('WSS180','p12'),('WSS37','p12'),('WSS47','p12'),('WSS57','p12'),('WSS58','p12'),('WSS78','p12'),('WSS8','p12'),('WSS88','p12'),('WSS90','p12'),('WSS96','p12'),('WSS112','p13'),('WSS126','p13'),('WSS131','p13'),('WSS173','p13'),('WSS174','p13'),('WSS177','p13'),('WSS18','p13'),('WSS190','p13'),('WSS192','p13'),('WSS196','p13'),('WSS199','p13'),('WSS28','p13'),('WSS39','p13'),('WSS54','p13'),('WSS65','p13'),('WSS89','p13'),('WSS93','p13'),('WSS98','p13'),('WSS101','p14'),('WSS109','p14'),('WSS117','p14'),('WSS118','p14'),('WSS19','p14'),('WSS21','p14'),('WSS35','p14'),('WSS44','p14'),('WSS50','p14'),('WSS65','p14'),('WSS72','p14'),('WSS107','p15'),('WSS13','p15'),('WSS131','p15'),('WSS135','p15'),('WSS161','p15'),('WSS187','p15'),('WSS23','p15'),('WSS30','p15'),('WSS40','p15'),('WSS49','p15'),('WSS78','p15'),('WSS82','p15'),('WSS97','p15'),('WSS11','p16'),('WSS110','p16'),('WSS12','p16'),('WSS122','p16'),('WSS137','p16'),('WSS141','p16'),('WSS158','p16'),('WSS17','p16'),('WSS200','p16'),('WSS27','p16'),('WSS35','p16'),('WSS41','p16'),('WSS46','p16'),('WSS115','p17'),('WSS132','p17'),('WSS140','p17'),('WSS152','p17'),('WSS155','p17'),('WSS162','p17'),('WSS20','p17'),('WSS4','p17'),('WSS47','p17'),('WSS64','p17'),('WSS83','p17'),('WSS88','p17'),('WSS100','p18'),('WSS114','p18'),('WSS122','p18'),('WSS130','p18'),('WSS137','p18'),('WSS145','p18'),('WSS150','p18'),('WSS161','p18'),('WSS166','p18'),('WSS174','p18'),('WSS183','p18'),('WSS186','p18'),('WSS39','p18'),('WSS42','p18'),('WSS50','p18'),('WSS59','p18'),('WSS62','p18'),('WSS68','p18'),('WSS73','p18'),('WSS82','p18'),('WSS10','p19'),('WSS102','p19'),('WSS110','p19'),('WSS134','p19'),('WSS141','p19'),('WSS153','p19'),('WSS173','p19'),('WSS24','p19'),('WSS32','p19'),('WSS36','p19'),('WSS42','p19'),('WSS80','p19'),('WSS85','p19'),('WSS108','p2'),('WSS116','p2'),('WSS181','p2'),('WSS187','p2'),('WSS34','p2'),('WSS38','p2'),('WSS43','p2'),('WSS67','p2'),('WSS90','p2'),('WSS1','p20'),('WSS108','p20'),('WSS127','p20'),('WSS151','p20'),('WSS162','p20'),('WSS164','p20'),('WSS184','p20'),('WSS188','p20'),('WSS193','p20'),('WSS197','p20'),('WSS25','p20'),('WSS52','p20'),('WSS67','p20'),('WSS79','p20'),('WSS103','p21'),('WSS115','p21'),('WSS12','p21'),('WSS139','p21'),('WSS142','p21'),('WSS156','p21'),('WSS157','p21'),('WSS169','p21'),('WSS182','p21'),('WSS2','p21'),('WSS3','p21'),('WSS51','p21'),('WSS75','p21'),('WSS83','p21'),('WSS85','p21'),('WSS9','p21'),('WSS91','p21'),('WSS113','p22'),('WSS117','p22'),('WSS123','p22'),('WSS126','p22'),('WSS158','p22'),('WSS172','p22'),('WSS18','p22'),('WSS181','p22'),('WSS185','p22'),('WSS189','p22'),('WSS192','p22'),('WSS26','p22'),('WSS6','p22'),('WSS71','p22'),('WSS92','p22'),('WSS11','p23'),('WSS114','p23'),('WSS119','p23'),('WSS121','p23'),('WSS16','p23'),('WSS166','p23'),('WSS168','p23'),('WSS171','p23'),('WSS198','p23'),('WSS22','p23'),('WSS63','p23'),('WSS72','p23'),('WSS77','p23'),('WSS89','p23'),('WSS91','p23'),('WSS120','p24'),('WSS121','p24'),('WSS128','p24'),('WSS13','p24'),('WSS179','p24'),('WSS188','p24'),('WSS19','p24'),('WSS195','p24'),('WSS198','p24'),('WSS40','p24'),('WSS80','p24'),('WSS99','p24'),('WSS100','p25'),('WSS124','p25'),('WSS136','p25'),('WSS140','p25'),('WSS153','p25'),('WSS155','p25'),('WSS160','p25'),('WSS197','p25'),('WSS199','p25'),('WSS200','p25'),('WSS29','p25'),('WSS31','p25'),('WSS32','p25'),('WSS44','p25'),('WSS52','p25'),('WSS7','p25'),('WSS87','p25'),('WSS106','p26'),('WSS119','p26'),('WSS147','p26'),('WSS157','p26'),('WSS171','p26'),('WSS179','p26'),('WSS183','p26'),('WSS22','p26'),('WSS33','p26'),('WSS6','p26'),('WSS99','p26'),('WSS111','p27'),('WSS146','p27'),('WSS150','p27'),('WSS16','p27'),('WSS172','p27'),('WSS182','p27'),('WSS184','p27'),('WSS193','p27'),('WSS29','p27'),('WSS66','p27'),('WSS69','p27'),('WSS74','p27'),('WSS76','p27'),('WSS97','p27'),('WSS104','p28'),('WSS156','p28'),('WSS41','p28'),('WSS53','p28'),('WSS81','p28'),('WSS9','p28'),('WSS96','p28'),('WSS103','p29'),('WSS104','p29'),('WSS105','p29'),('WSS124','p29'),('WSS134','p29'),('WSS14','p29'),('WSS143','p29'),('WSS145','p29'),('WSS15','p29'),('WSS151','p29'),('WSS159','p29'),('WSS176','p29'),('WSS191','p29'),('WSS194','p29'),('WSS26','p29'),('WSS43','p29'),('WSS55','p29'),('WSS56','p29'),('WSS57','p29'),('WSS77','p29'),('WSS94','p29'),('WSS101','p3'),('WSS106','p3'),('WSS107','p3'),('WSS133','p3'),('WSS149','p3'),('WSS168','p3'),('WSS30','p3'),('WSS34','p3'),('WSS69','p3'),('WSS7','p3'),('WSS132','p30'),('WSS144','p30'),('WSS15','p30'),('WSS154','p30'),('WSS170','p30'),('WSS175','p30'),('WSS177','p30'),('WSS31','p30'),('WSS45','p30'),('WSS48','p30'),('WSS51','p30'),('WSS74','p30'),('WSS76','p30'),('WSS81','p30'),('WSS123','p4'),('WSS127','p4'),('WSS129','p4'),('WSS148','p4'),('WSS165','p4'),('WSS33','p4'),('WSS49','p4'),('WSS55','p4'),('WSS60','p4'),('WSS62','p4'),('WSS71','p4'),('WSS75','p4'),('WSS86','p4'),('WSS87','p4'),('WSS118','p5'),('WSS130','p5'),('WSS135','p5'),('WSS136','p5'),('WSS159','p5'),('WSS163','p5'),('WSS170','p5'),('WSS54','p5'),('WSS68','p5'),('WSS84','p5'),('WSS98','p5'),('WSS143','p6'),('WSS152','p6'),('WSS163','p6'),('WSS178','p6'),('WSS186','p6'),('WSS190','p6'),('WSS24','p6'),('WSS70','p6'),('WSS79','p6'),('WSS93','p6'),('WSS95','p6'),('WSS1','p7'),('WSS160','p7'),('WSS167','p7'),('WSS191','p7'),('WSS196','p7'),('WSS28','p7'),('WSS38','p7'),('WSS45','p7'),('WSS5','p7'),('WSS58','p7'),('WSS70','p7'),('WSS86','p7'),('WSS95','p7'),('WSS111','p8'),('WSS116','p8'),('WSS194','p8'),('WSS2','p8'),('WSS21','p8'),('WSS36','p8'),('WSS4','p8'),('WSS5','p8'),('WSS61','p8'),('WSS63','p8'),('WSS8','p8'),('WSS84','p8'),('WSS10','p9'),('WSS142','p9'),('WSS146','p9'),('WSS165','p9'),('WSS176','p9'),('WSS185','p9'),('WSS20','p9'),('WSS23','p9'),('WSS25','p9'),('WSS27','p9'),('WSS37','p9'),('WSS48','p9'),('WSS66','p9'),('WSS73','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS1','p1'),('WSS102','p1'),('WSS115','p1'),('WSS119','p1'),('WSS132','p1'),('WSS14','p1'),('WSS142','p1'),('WSS149','p1'),('WSS160','p1'),('WSS166','p1'),('WSS183','p1'),('WSS186','p1'),('WSS188','p1'),('WSS189','p1'),('WSS191','p1'),('WSS3','p1'),('WSS33','p1'),('WSS4','p1'),('WSS50','p1'),('WSS58','p1'),('WSS59','p1'),('WSS67','p1'),('WSS71','p1'),('WSS79','p1'),('WSS80','p1'),('WSS81','p1'),('WSS82','p1'),('WSS103','p10'),('WSS113','p10'),('WSS114','p10'),('WSS123','p10'),('WSS127','p10'),('WSS128','p10'),('WSS131','p10'),('WSS136','p10'),('WSS145','p10'),('WSS15','p10'),('WSS150','p10'),('WSS156','p10'),('WSS162','p10'),('WSS167','p10'),('WSS169','p10'),('WSS17','p10'),('WSS173','p10'),('WSS176','p10'),('WSS187','p10'),('WSS190','p10'),('WSS196','p10'),('WSS198','p10'),('WSS2','p10'),('WSS24','p10'),('WSS30','p10'),('WSS32','p10'),('WSS33','p10'),('WSS40','p10'),('WSS44','p10'),('WSS53','p10'),('WSS57','p10'),('WSS58','p10'),('WSS61','p10'),('WSS62','p10'),('WSS73','p10'),('WSS76','p10'),('WSS81','p10'),('WSS86','p10'),('WSS94','p10'),('WSS10','p11'),('WSS110','p11'),('WSS117','p11'),('WSS13','p11'),('WSS134','p11'),('WSS135','p11'),('WSS138','p11'),('WSS139','p11'),('WSS147','p11'),('WSS152','p11'),('WSS157','p11'),('WSS159','p11'),('WSS169','p11'),('WSS176','p11'),('WSS178','p11'),('WSS181','p11'),('WSS183','p11'),('WSS184','p11'),('WSS187','p11'),('WSS189','p11'),('WSS193','p11'),('WSS199','p11'),('WSS3','p11'),('WSS30','p11'),('WSS32','p11'),('WSS33','p11'),('WSS39','p11'),('WSS47','p11'),('WSS51','p11'),('WSS52','p11'),('WSS60','p11'),('WSS64','p11'),('WSS65','p11'),('WSS66','p11'),('WSS75','p11'),('WSS78','p11'),('WSS79','p11'),('WSS80','p11'),('WSS85','p11'),('WSS87','p11'),('WSS90','p11'),('WSS95','p11'),('WSS97','p11'),('WSS98','p11'),('WSS1','p12'),('WSS114','p12'),('WSS119','p12'),('WSS120','p12'),('WSS121','p12'),('WSS125','p12'),('WSS13','p12'),('WSS133','p12'),('WSS148','p12'),('WSS157','p12'),('WSS158','p12'),('WSS168','p12'),('WSS169','p12'),('WSS178','p12'),('WSS199','p12'),('WSS2','p12'),('WSS25','p12'),('WSS37','p12'),('WSS46','p12'),('WSS49','p12'),('WSS50','p12'),('WSS52','p12'),('WSS55','p12'),('WSS67','p12'),('WSS77','p12'),('WSS8','p12'),('WSS89','p12'),('WSS91','p12'),('WSS100','p13'),('WSS115','p13'),('WSS118','p13'),('WSS120','p13'),('WSS126','p13'),('WSS128','p13'),('WSS139','p13'),('WSS14','p13'),('WSS142','p13'),('WSS147','p13'),('WSS151','p13'),('WSS16','p13'),('WSS163','p13'),('WSS166','p13'),('WSS167','p13'),('WSS171','p13'),('WSS174','p13'),('WSS176','p13'),('WSS177','p13'),('WSS179','p13'),('WSS18','p13'),('WSS186','p13'),('WSS194','p13'),('WSS197','p13'),('WSS27','p13'),('WSS28','p13'),('WSS35','p13'),('WSS59','p13'),('WSS60','p13'),('WSS61','p13'),('WSS62','p13'),('WSS63','p13'),('WSS70','p13'),('WSS73','p13'),('WSS79','p13'),('WSS8','p13'),('WSS9','p13'),('WSS92','p13'),('WSS102','p14'),('WSS117','p14'),('WSS120','p14'),('WSS121','p14'),('WSS133','p14'),('WSS135','p14'),('WSS138','p14'),('WSS141','p14'),('WSS158','p14'),('WSS16','p14'),('WSS166','p14'),('WSS170','p14'),('WSS171','p14'),('WSS172','p14'),('WSS175','p14'),('WSS178','p14'),('WSS182','p14'),('WSS185','p14'),('WSS195','p14'),('WSS199','p14'),('WSS200','p14'),('WSS36','p14'),('WSS40','p14'),('WSS43','p14'),('WSS54','p14'),('WSS57','p14'),('WSS58','p14'),('WSS61','p14'),('WSS62','p14'),('WSS66','p14'),('WSS7','p14'),('WSS97','p14'),('WSS100','p15'),('WSS105','p15'),('WSS109','p15'),('WSS114','p15'),('WSS12','p15'),('WSS122','p15'),('WSS129','p15'),('WSS137','p15'),('WSS140','p15'),('WSS149','p15'),('WSS156','p15'),('WSS162','p15'),('WSS165','p15'),('WSS17','p15'),('WSS171','p15'),('WSS175','p15'),('WSS179','p15'),('WSS185','p15'),('WSS192','p15'),('WSS22','p15'),('WSS26','p15'),('WSS27','p15'),('WSS31','p15'),('WSS32','p15'),('WSS33','p15'),('WSS43','p15'),('WSS45','p15'),('WSS46','p15'),('WSS50','p15'),('WSS55','p15'),('WSS56','p15'),('WSS64','p15'),('WSS66','p15'),('WSS68','p15'),('WSS70','p15'),('WSS72','p15'),('WSS73','p15'),('WSS8','p15'),('WSS80','p15'),('WSS82','p15'),('WSS1','p16'),('WSS101','p16'),('WSS102','p16'),('WSS104','p16'),('WSS118','p16'),('WSS146','p16'),('WSS154','p16'),('WSS156','p16'),('WSS159','p16'),('WSS168','p16'),('WSS169','p16'),('WSS172','p16'),('WSS174','p16'),('WSS179','p16'),('WSS181','p16'),('WSS194','p16'),('WSS196','p16'),('WSS198','p16'),('WSS199','p16'),('WSS21','p16'),('WSS23','p16'),('WSS29','p16'),('WSS32','p16'),('WSS38','p16'),('WSS52','p16'),('WSS89','p16'),('WSS9','p16'),('WSS97','p16'),('WSS106','p17'),('WSS107','p17'),('WSS108','p17'),('WSS113','p17'),('WSS13','p17'),('WSS131','p17'),('WSS137','p17'),('WSS143','p17'),('WSS147','p17'),('WSS150','p17'),('WSS152','p17'),('WSS153','p17'),('WSS155','p17'),('WSS163','p17'),('WSS164','p17'),('WSS168','p17'),('WSS169','p17'),('WSS170','p17'),('WSS192','p17'),('WSS193','p17'),('WSS28','p17'),('WSS29','p17'),('WSS30','p17'),('WSS31','p17'),('WSS37','p17'),('WSS51','p17'),('WSS60','p17'),('WSS63','p17'),('WSS83','p17'),('WSS90','p17'),('WSS95','p17'),('WSS98','p17'),('WSS99','p17'),('WSS103','p18'),('WSS106','p18'),('WSS111','p18'),('WSS115','p18'),('WSS130','p18'),('WSS132','p18'),('WSS140','p18'),('WSS147','p18'),('WSS148','p18'),('WSS160','p18'),('WSS171','p18'),('WSS172','p18'),('WSS18','p18'),('WSS26','p18'),('WSS28','p18'),('WSS32','p18'),('WSS36','p18'),('WSS45','p18'),('WSS6','p18'),('WSS61','p18'),('WSS8','p18'),('WSS80','p18'),('WSS81','p18'),('WSS84','p18'),('WSS86','p18'),('WSS90','p18'),('WSS92','p18'),('WSS1','p19'),('WSS104','p19'),('WSS11','p19'),('WSS111','p19'),('WSS115','p19'),('WSS116','p19'),('WSS123','p19'),('WSS124','p19'),('WSS129','p19'),('WSS149','p19'),('WSS151','p19'),('WSS159','p19'),('WSS164','p19'),('WSS168','p19'),('WSS175','p19'),('WSS180','p19'),('WSS181','p19'),('WSS19','p19'),('WSS190','p19'),('WSS192','p19'),('WSS193','p19'),('WSS195','p19'),('WSS198','p19'),('WSS20','p19'),('WSS200','p19'),('WSS21','p19'),('WSS23','p19'),('WSS39','p19'),('WSS42','p19'),('WSS43','p19'),('WSS5','p19'),('WSS53','p19'),('WSS56','p19'),('WSS63','p19'),('WSS71','p19'),('WSS72','p19'),('WSS74','p19'),('WSS78','p19'),('WSS94','p19'),('WSS96','p19'),('WSS98','p19'),('WSS102','p2'),('WSS105','p2'),('WSS112','p2'),('WSS12','p2'),('WSS124','p2'),('WSS125','p2'),('WSS126','p2'),('WSS129','p2'),('WSS130','p2'),('WSS132','p2'),('WSS135','p2'),('WSS136','p2'),('WSS144','p2'),('WSS146','p2'),('WSS147','p2'),('WSS15','p2'),('WSS16','p2'),('WSS167','p2'),('WSS173','p2'),('WSS174','p2'),('WSS177','p2'),('WSS180','p2'),('WSS181','p2'),('WSS182','p2'),('WSS183','p2'),('WSS189','p2'),('WSS191','p2'),('WSS199','p2'),('WSS3','p2'),('WSS36','p2'),('WSS41','p2'),('WSS48','p2'),('WSS51','p2'),('WSS57','p2'),('WSS6','p2'),('WSS77','p2'),('WSS79','p2'),('WSS85','p2'),('WSS86','p2'),('WSS91','p2'),('WSS106','p20'),('WSS108','p20'),('WSS118','p20'),('WSS119','p20'),('WSS125','p20'),('WSS133','p20'),('WSS138','p20'),('WSS139','p20'),('WSS160','p20'),('WSS161','p20'),('WSS163','p20'),('WSS167','p20'),('WSS171','p20'),('WSS173','p20'),('WSS182','p20'),('WSS22','p20'),('WSS25','p20'),('WSS34','p20'),('WSS45','p20'),('WSS53','p20'),('WSS54','p20'),('WSS56','p20'),('WSS6','p20'),('WSS65','p20'),('WSS68','p20'),('WSS69','p20'),('WSS71','p20'),('WSS8','p20'),('WSS83','p20'),('WSS86','p20'),('WSS88','p20'),('WSS91','p20'),('WSS96','p20'),('WSS98','p20'),('WSS103','p21'),('WSS106','p21'),('WSS109','p21'),('WSS113','p21'),('WSS120','p21'),('WSS130','p21'),('WSS14','p21'),('WSS149','p21'),('WSS153','p21'),('WSS16','p21'),('WSS160','p21'),('WSS161','p21'),('WSS174','p21'),('WSS177','p21'),('WSS187','p21'),('WSS19','p21'),('WSS194','p21'),('WSS22','p21'),('WSS27','p21'),('WSS3','p21'),('WSS35','p21'),('WSS36','p21'),('WSS41','p21'),('WSS42','p21'),('WSS44','p21'),('WSS47','p21'),('WSS51','p21'),('WSS54','p21'),('WSS59','p21'),('WSS6','p21'),('WSS60','p21'),('WSS64','p21'),('WSS67','p21'),('WSS78','p21'),('WSS82','p21'),('WSS89','p21'),('WSS99','p21'),('WSS10','p22'),('WSS100','p22'),('WSS104','p22'),('WSS107','p22'),('WSS108','p22'),('WSS11','p22'),('WSS121','p22'),('WSS122','p22'),('WSS128','p22'),('WSS140','p22'),('WSS143','p22'),('WSS147','p22'),('WSS148','p22'),('WSS152','p22'),('WSS153','p22'),('WSS155','p22'),('WSS163','p22'),('WSS164','p22'),('WSS169','p22'),('WSS176','p22'),('WSS178','p22'),('WSS18','p22'),('WSS183','p22'),('WSS191','p22'),('WSS198','p22'),('WSS21','p22'),('WSS27','p22'),('WSS32','p22'),('WSS47','p22'),('WSS48','p22'),('WSS52','p22'),('WSS64','p22'),('WSS69','p22'),('WSS72','p22'),('WSS76','p22'),('WSS85','p22'),('WSS88','p22'),('WSS9','p22'),('WSS92','p22'),('WSS93','p22'),('WSS95','p22'),('WSS109','p23'),('WSS112','p23'),('WSS116','p23'),('WSS119','p23'),('WSS12','p23'),('WSS13','p23'),('WSS130','p23'),('WSS142','p23'),('WSS146','p23'),('WSS156','p23'),('WSS158','p23'),('WSS160','p23'),('WSS163','p23'),('WSS164','p23'),('WSS167','p23'),('WSS17','p23'),('WSS184','p23'),('WSS186','p23'),('WSS188','p23'),('WSS189','p23'),('WSS20','p23'),('WSS200','p23'),('WSS24','p23'),('WSS28','p23'),('WSS35','p23'),('WSS43','p23'),('WSS44','p23'),('WSS46','p23'),('WSS48','p23'),('WSS49','p23'),('WSS54','p23'),('WSS57','p23'),('WSS59','p23'),('WSS65','p23'),('WSS66','p23'),('WSS68','p23'),('WSS71','p23'),('WSS84','p23'),('WSS9','p23'),('WSS91','p23'),('WSS92','p23'),('WSS99','p23'),('WSS101','p24'),('WSS105','p24'),('WSS113','p24'),('WSS122','p24'),('WSS124','p24'),('WSS126','p24'),('WSS13','p24'),('WSS133','p24'),('WSS144','p24'),('WSS148','p24'),('WSS151','p24'),('WSS153','p24'),('WSS155','p24'),('WSS165','p24'),('WSS166','p24'),('WSS180','p24'),('WSS182','p24'),('WSS187','p24'),('WSS195','p24'),('WSS20','p24'),('WSS200','p24'),('WSS21','p24'),('WSS23','p24'),('WSS25','p24'),('WSS27','p24'),('WSS39','p24'),('WSS42','p24'),('WSS47','p24'),('WSS5','p24'),('WSS55','p24'),('WSS57','p24'),('WSS58','p24'),('WSS60','p24'),('WSS63','p24'),('WSS66','p24'),('WSS68','p24'),('WSS69','p24'),('WSS77','p24'),('WSS81','p24'),('WSS83','p24'),('WSS9','p24'),('WSS90','p24'),('WSS91','p24'),('WSS94','p24'),('WSS98','p24'),('WSS99','p24'),('WSS101','p25'),('WSS102','p25'),('WSS104','p25'),('WSS107','p25'),('WSS109','p25'),('WSS110','p25'),('WSS116','p25'),('WSS13','p25'),('WSS134','p25'),('WSS136','p25'),('WSS140','p25'),('WSS144','p25'),('WSS145','p25'),('WSS154','p25'),('WSS16','p25'),('WSS170','p25'),('WSS173','p25'),('WSS177','p25'),('WSS180','p25'),('WSS184','p25'),('WSS190','p25'),('WSS195','p25'),('WSS24','p25'),('WSS25','p25'),('WSS31','p25'),('WSS34','p25'),('WSS38','p25'),('WSS39','p25'),('WSS4','p25'),('WSS40','p25'),('WSS41','p25'),('WSS45','p25'),('WSS7','p25'),('WSS90','p25'),('WSS93','p25'),('WSS96','p25'),('WSS99','p25'),('WSS105','p26'),('WSS106','p26'),('WSS109','p26'),('WSS118','p26'),('WSS125','p26'),('WSS131','p26'),('WSS133','p26'),('WSS134','p26'),('WSS141','p26'),('WSS142','p26'),('WSS17','p26'),('WSS175','p26'),('WSS178','p26'),('WSS187','p26'),('WSS192','p26'),('WSS194','p26'),('WSS196','p26'),('WSS22','p26'),('WSS26','p26'),('WSS34','p26'),('WSS35','p26'),('WSS40','p26'),('WSS43','p26'),('WSS46','p26'),('WSS50','p26'),('WSS73','p26'),('WSS74','p26'),('WSS75','p26'),('WSS88','p26'),('WSS93','p26'),('WSS100','p27'),('WSS107','p27'),('WSS110','p27'),('WSS115','p27'),('WSS116','p27'),('WSS117','p27'),('WSS120','p27'),('WSS137','p27'),('WSS141','p27'),('WSS143','p27'),('WSS144','p27'),('WSS145','p27'),('WSS149','p27'),('WSS15','p27'),('WSS154','p27'),('WSS159','p27'),('WSS162','p27'),('WSS170','p27'),('WSS172','p27'),('WSS185','p27'),('WSS189','p27'),('WSS191','p27'),('WSS196','p27'),('WSS2','p27'),('WSS38','p27'),('WSS39','p27'),('WSS42','p27'),('WSS44','p27'),('WSS47','p27'),('WSS49','p27'),('WSS55','p27'),('WSS56','p27'),('WSS57','p27'),('WSS59','p27'),('WSS61','p27'),('WSS69','p27'),('WSS7','p27'),('WSS76','p27'),('WSS77','p27'),('WSS87','p27'),('WSS89','p27'),('WSS101','p28'),('WSS105','p28'),('WSS109','p28'),('WSS11','p28'),('WSS114','p28'),('WSS115','p28'),('WSS134','p28'),('WSS141','p28'),('WSS151','p28'),('WSS152','p28'),('WSS157','p28'),('WSS17','p28'),('WSS170','p28'),('WSS172','p28'),('WSS174','p28'),('WSS18','p28'),('WSS188','p28'),('WSS19','p28'),('WSS197','p28'),('WSS20','p28'),('WSS26','p28'),('WSS34','p28'),('WSS41','p28'),('WSS47','p28'),('WSS53','p28'),('WSS58','p28'),('WSS61','p28'),('WSS63','p28'),('WSS69','p28'),('WSS7','p28'),('WSS72','p28'),('WSS76','p28'),('WSS94','p28'),('WSS95','p28'),('WSS100','p29'),('WSS105','p29'),('WSS108','p29'),('WSS116','p29'),('WSS122','p29'),('WSS127','p29'),('WSS129','p29'),('WSS138','p29'),('WSS140','p29'),('WSS148','p29'),('WSS154','p29'),('WSS155','p29'),('WSS157','p29'),('WSS163','p29'),('WSS165','p29'),('WSS179','p29'),('WSS185','p29'),('WSS186','p29'),('WSS187','p29'),('WSS188','p29'),('WSS19','p29'),('WSS191','p29'),('WSS35','p29'),('WSS37','p29'),('WSS4','p29'),('WSS48','p29'),('WSS54','p29'),('WSS55','p29'),('WSS56','p29'),('WSS65','p29'),('WSS70','p29'),('WSS77','p29'),('WSS78','p29'),('WSS83','p29'),('WSS84','p29'),('WSS89','p29'),('WSS92','p29'),('WSS100','p3'),('WSS102','p3'),('WSS104','p3'),('WSS108','p3'),('WSS134','p3'),('WSS139','p3'),('WSS141','p3'),('WSS144','p3'),('WSS148','p3'),('WSS154','p3'),('WSS156','p3'),('WSS161','p3'),('WSS164','p3'),('WSS165','p3'),('WSS167','p3'),('WSS168','p3'),('WSS181','p3'),('WSS183','p3'),('WSS19','p3'),('WSS190','p3'),('WSS20','p3'),('WSS200','p3'),('WSS22','p3'),('WSS33','p3'),('WSS37','p3'),('WSS4','p3'),('WSS6','p3'),('WSS63','p3'),('WSS73','p3'),('WSS75','p3'),('WSS86','p3'),('WSS87','p3'),('WSS97','p3'),('WSS103','p30'),('WSS107','p30'),('WSS112','p30'),('WSS12','p30'),('WSS121','p30'),('WSS122','p30'),('WSS123','p30'),('WSS127','p30'),('WSS132','p30'),('WSS138','p30'),('WSS14','p30'),('WSS146','p30'),('WSS168','p30'),('WSS171','p30'),('WSS181','p30'),('WSS184','p30'),('WSS190','p30'),('WSS2','p30'),('WSS200','p30'),('WSS21','p30'),('WSS29','p30'),('WSS31','p30'),('WSS35','p30'),('WSS36','p30'),('WSS37','p30'),('WSS38','p30'),('WSS41','p30'),('WSS6','p30'),('WSS7','p30'),('WSS73','p30'),('WSS78','p30'),('WSS85','p30'),('WSS87','p30'),('WSS95','p30'),('WSS96','p30'),('WSS104','p4'),('WSS110','p4'),('WSS112','p4'),('WSS119','p4'),('WSS122','p4'),('WSS123','p4'),('WSS127','p4'),('WSS131','p4'),('WSS135','p4'),('WSS137','p4'),('WSS143','p4'),('WSS15','p4'),('WSS151','p4'),('WSS152','p4'),('WSS153','p4'),('WSS161','p4'),('WSS17','p4'),('WSS170','p4'),('WSS180','p4'),('WSS182','p4'),('WSS193','p4'),('WSS195','p4'),('WSS198','p4'),('WSS199','p4'),('WSS21','p4'),('WSS24','p4'),('WSS28','p4'),('WSS4','p4'),('WSS40','p4'),('WSS44','p4'),('WSS49','p4'),('WSS50','p4'),('WSS52','p4'),('WSS67','p4'),('WSS68','p4'),('WSS70','p4'),('WSS72','p4'),('WSS74','p4'),('WSS81','p4'),('WSS82','p4'),('WSS83','p4'),('WSS84','p4'),('WSS93','p4'),('WSS1','p5'),('WSS101','p5'),('WSS110','p5'),('WSS118','p5'),('WSS124','p5'),('WSS126','p5'),('WSS127','p5'),('WSS128','p5'),('WSS129','p5'),('WSS131','p5'),('WSS132','p5'),('WSS137','p5'),('WSS139','p5'),('WSS14','p5'),('WSS145','p5'),('WSS15','p5'),('WSS155','p5'),('WSS165','p5'),('WSS180','p5'),('WSS182','p5'),('WSS183','p5'),('WSS190','p5'),('WSS192','p5'),('WSS194','p5'),('WSS3','p5'),('WSS34','p5'),('WSS4','p5'),('WSS50','p5'),('WSS52','p5'),('WSS53','p5'),('WSS55','p5'),('WSS65','p5'),('WSS69','p5'),('WSS70','p5'),('WSS74','p5'),('WSS75','p5'),('WSS77','p5'),('WSS79','p5'),('WSS82','p5'),('WSS85','p5'),('WSS87','p5'),('WSS88','p5'),('WSS92','p5'),('WSS97','p5'),('WSS101','p6'),('WSS103','p6'),('WSS111','p6'),('WSS117','p6'),('WSS12','p6'),('WSS123','p6'),('WSS124','p6'),('WSS126','p6'),('WSS128','p6'),('WSS130','p6'),('WSS135','p6'),('WSS139','p6'),('WSS143','p6'),('WSS15','p6'),('WSS150','p6'),('WSS155','p6'),('WSS159','p6'),('WSS165','p6'),('WSS173','p6'),('WSS177','p6'),('WSS184','p6'),('WSS185','p6'),('WSS198','p6'),('WSS2','p6'),('WSS23','p6'),('WSS24','p6'),('WSS26','p6'),('WSS29','p6'),('WSS31','p6'),('WSS38','p6'),('WSS49','p6'),('WSS53','p6'),('WSS64','p6'),('WSS65','p6'),('WSS72','p6'),('WSS10','p7'),('WSS103','p7'),('WSS107','p7'),('WSS11','p7'),('WSS111','p7'),('WSS120','p7'),('WSS123','p7'),('WSS133','p7'),('WSS142','p7'),('WSS144','p7'),('WSS150','p7'),('WSS164','p7'),('WSS166','p7'),('WSS189','p7'),('WSS19','p7'),('WSS192','p7'),('WSS196','p7'),('WSS197','p7'),('WSS2','p7'),('WSS22','p7'),('WSS24','p7'),('WSS27','p7'),('WSS30','p7'),('WSS36','p7'),('WSS37','p7'),('WSS38','p7'),('WSS46','p7'),('WSS5','p7'),('WSS74','p7'),('WSS75','p7'),('WSS82','p7'),('WSS88','p7'),('WSS89','p7'),('WSS91','p7'),('WSS106','p8'),('WSS11','p8'),('WSS110','p8'),('WSS111','p8'),('WSS113','p8'),('WSS121','p8'),('WSS125','p8'),('WSS128','p8'),('WSS130','p8'),('WSS136','p8'),('WSS145','p8'),('WSS150','p8'),('WSS157','p8'),('WSS158','p8'),('WSS162','p8'),('WSS173','p8'),('WSS175','p8'),('WSS176','p8'),('WSS188','p8'),('WSS191','p8'),('WSS193','p8'),('WSS195','p8'),('WSS197','p8'),('WSS25','p8'),('WSS33','p8'),('WSS34','p8'),('WSS39','p8'),('WSS45','p8'),('WSS46','p8'),('WSS48','p8'),('WSS49','p8'),('WSS5','p8'),('WSS51','p8'),('WSS56','p8'),('WSS58','p8'),('WSS64','p8'),('WSS70','p8'),('WSS74','p8'),('WSS81','p8'),('WSS9','p8'),('WSS93','p8'),('WSS10','p9'),('WSS114','p9'),('WSS116','p9'),('WSS119','p9'),('WSS125','p9'),('WSS126','p9'),('WSS127','p9'),('WSS131','p9'),('WSS134','p9'),('WSS138','p9'),('WSS140','p9'),('WSS145','p9'),('WSS150','p9'),('WSS152','p9'),('WSS156','p9'),('WSS159','p9'),('WSS16','p9'),('WSS161','p9'),('WSS162','p9'),('WSS174','p9'),('WSS176','p9'),('WSS178','p9'),('WSS179','p9'),('WSS18','p9'),('WSS185','p9'),('WSS186','p9'),('WSS188','p9'),('WSS197','p9'),('WSS20','p9'),('WSS23','p9'),('WSS25','p9'),('WSS28','p9'),('WSS29','p9'),('WSS30','p9'),('WSS42','p9'),('WSS43','p9'),('WSS45','p9'),('WSS51','p9'),('WSS59','p9'),('WSS60','p9'),('WSS62','p9'),('WSS66','p9'),('WSS68','p9'),('WSS7','p9'),('WSS76','p9'),('WSS85','p9'),('WSS86','p9'),('WSS88','p9'),('WSS93','p9'),('WSS96','p9'),('WSS97','p9'),('WSS99','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS19'),(1,2,'WSS21'),(2,1,'WSS52'),(2,2,'WSS109'),(3,1,'WSS155'),(4,1,'WSS184'),(4,1,'WSS193'),(5,1,'WSS187'),(5,1,'WSS94'),(6,1,'WSS189'),(6,2,'WSS93'),(7,1,'WSS4'),(7,2,'WSS156'),(8,1,'WSS139'),(9,1,'WSS8'),(9,2,'WSS17'),(10,1,'WSS176'),(10,2,'WSS169'),(11,1,'WSS3'),(12,1,'WSS20'),(12,1,'WSS81'),(13,1,'WSS65'),(13,2,'WSS94'),(14,1,'WSS82'),(14,2,'WSS153'),(15,1,'WSS95'),(16,1,'WSS149'),(16,2,'WSS196'),(17,1,'WSS111'),(17,2,'WSS46'),(18,1,'WSS104'),(18,2,'WSS83'),(19,1,'WSS192'),(19,2,'WSS77'),(20,1,'WSS137'),(20,2,'WSS76'),(21,1,'WSS167'),(21,1,'WSS93'),(22,1,'WSS17'),(22,1,'WSS177'),(22,2,'WSS107'),(23,1,'WSS11'),(23,1,'WSS91'),(24,1,'WSS165'),(24,2,'WSS132'),(25,1,'WSS167'),(25,1,'WSS84'),(26,1,'WSS177'),(26,2,'WSS95'),(26,3,'WSS182'),(27,1,'WSS149'),(28,1,'WSS86'),(28,2,'WSS90'),(29,1,'WSS105'),(29,2,'WSS17'),(30,1,'WSS63'),(30,2,'WSS28'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-07-06 19:51:56
