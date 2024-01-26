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
INSERT INTO `initialgoalparameter` VALUES (1,'I','p1'),(8,'I','p1'),(9,'G','p1'),(10,'G','p1'),(11,'I','p1'),(15,'I','p1'),(16,'I','p1'),(27,'I','p1'),(4,'G','p10'),(5,'I','p10'),(6,'I','p10'),(10,'G','p10'),(14,'I','p10'),(17,'G','p10'),(19,'I','p10'),(23,'I','p10'),(24,'I','p10'),(25,'I','p10'),(26,'I','p10'),(29,'G','p10'),(2,'I','p11'),(4,'I','p11'),(5,'I','p11'),(6,'G','p11'),(7,'I','p11'),(8,'G','p11'),(9,'I','p11'),(11,'G','p11'),(16,'G','p11'),(17,'I','p11'),(18,'G','p11'),(19,'I','p11'),(20,'I','p11'),(21,'G','p11'),(26,'I','p11'),(27,'I','p11'),(28,'G','p11'),(30,'I','p11'),(2,'I','p12'),(3,'G','p12'),(4,'I','p12'),(6,'I','p12'),(9,'I','p12'),(12,'I','p12'),(17,'I','p12'),(20,'I','p12'),(24,'G','p12'),(25,'I','p12'),(27,'G','p12'),(28,'I','p12'),(1,'G','p13'),(5,'G','p13'),(6,'G','p13'),(7,'I','p13'),(8,'G','p13'),(9,'G','p13'),(13,'I','p13'),(22,'I','p13'),(26,'G','p13'),(27,'G','p13'),(30,'I','p13'),(3,'G','p14'),(4,'I','p14'),(7,'G','p14'),(8,'I','p14'),(10,'G','p14'),(12,'I','p14'),(15,'G','p14'),(22,'I','p14'),(24,'G','p14'),(26,'I','p14'),(28,'I','p14'),(29,'G','p14'),(30,'I','p14'),(4,'I','p15'),(5,'G','p15'),(8,'I','p15'),(14,'G','p15'),(15,'I','p15'),(17,'I','p15'),(19,'I','p15'),(24,'I','p15'),(25,'I','p15'),(27,'G','p15'),(28,'I','p15'),(30,'I','p15'),(5,'I','p16'),(6,'G','p16'),(7,'G','p16'),(8,'I','p16'),(10,'I','p16'),(11,'I','p16'),(13,'I','p16'),(14,'G','p16'),(16,'I','p16'),(20,'I','p16'),(21,'I','p16'),(23,'I','p16'),(26,'I','p16'),(6,'I','p17'),(7,'I','p17'),(10,'I','p17'),(11,'I','p17'),(18,'G','p17'),(19,'I','p17'),(20,'G','p17'),(22,'I','p17'),(24,'I','p17'),(28,'I','p17'),(1,'I','p18'),(2,'G','p18'),(3,'I','p18'),(4,'G','p18'),(11,'I','p18'),(12,'I','p18'),(13,'G','p18'),(14,'I','p18'),(15,'I','p18'),(16,'I','p18'),(18,'I','p18'),(19,'I','p18'),(22,'G','p18'),(3,'I','p19'),(6,'I','p19'),(8,'I','p19'),(10,'I','p19'),(12,'I','p19'),(16,'I','p19'),(17,'I','p19'),(20,'I','p19'),(21,'G','p19'),(24,'I','p19'),(25,'I','p19'),(27,'I','p19'),(1,'I','p2'),(2,'G','p2'),(3,'G','p2'),(7,'I','p2'),(10,'I','p2'),(13,'G','p2'),(21,'I','p2'),(23,'G','p2'),(25,'I','p2'),(30,'G','p2'),(5,'I','p20'),(7,'I','p20'),(9,'I','p20'),(10,'I','p20'),(11,'G','p20'),(12,'I','p20'),(13,'I','p20'),(14,'I','p20'),(15,'I','p20'),(17,'G','p20'),(18,'I','p20'),(19,'G','p20'),(20,'I','p20'),(23,'I','p20'),(26,'G','p20'),(30,'G','p20'),(1,'I','p21'),(3,'I','p21'),(10,'I','p21'),(13,'I','p21'),(15,'G','p21'),(18,'I','p21'),(19,'I','p21'),(20,'G','p21'),(21,'G','p21'),(22,'I','p21'),(26,'I','p21'),(29,'I','p21'),(1,'I','p22'),(5,'I','p22'),(6,'I','p22'),(7,'I','p22'),(8,'G','p22'),(9,'I','p22'),(10,'I','p22'),(12,'I','p22'),(14,'I','p22'),(19,'I','p22'),(29,'I','p22'),(2,'G','p23'),(3,'I','p23'),(4,'I','p23'),(5,'G','p23'),(6,'G','p23'),(7,'I','p23'),(13,'I','p23'),(14,'I','p23'),(16,'I','p23'),(18,'I','p23'),(20,'I','p23'),(26,'I','p23'),(2,'I','p24'),(6,'I','p24'),(11,'G','p24'),(13,'I','p24'),(24,'I','p24'),(26,'I','p24'),(27,'G','p24'),(29,'G','p24'),(30,'I','p24'),(3,'I','p25'),(4,'I','p25'),(8,'G','p25'),(9,'G','p25'),(15,'G','p25'),(16,'G','p25'),(17,'G','p25'),(22,'G','p25'),(23,'I','p25'),(24,'G','p25'),(25,'I','p25'),(26,'I','p25'),(29,'G','p25'),(1,'I','p26'),(3,'I','p26'),(4,'G','p26'),(13,'I','p26'),(16,'I','p26'),(17,'I','p26'),(18,'I','p26'),(19,'G','p26'),(23,'I','p26'),(24,'G','p26'),(28,'G','p26'),(29,'I','p26'),(30,'G','p26'),(1,'I','p27'),(2,'I','p27'),(3,'I','p27'),(4,'I','p27'),(5,'I','p27'),(6,'I','p27'),(8,'I','p27'),(14,'I','p27'),(16,'G','p27'),(18,'I','p27'),(20,'G','p27'),(21,'I','p27'),(22,'I','p27'),(27,'I','p27'),(30,'G','p27'),(1,'I','p28'),(2,'I','p28'),(3,'G','p28'),(9,'G','p28'),(11,'I','p28'),(12,'I','p28'),(15,'I','p28'),(16,'G','p28'),(17,'I','p28'),(19,'G','p28'),(20,'I','p28'),(21,'I','p28'),(22,'I','p28'),(23,'G','p28'),(25,'G','p28'),(27,'I','p28'),(28,'I','p28'),(2,'I','p29'),(7,'G','p29'),(9,'I','p29'),(12,'G','p29'),(14,'G','p29'),(15,'G','p29'),(16,'I','p29'),(17,'I','p29'),(19,'G','p29'),(21,'I','p29'),(22,'G','p29'),(25,'I','p29'),(26,'G','p29'),(27,'I','p29'),(30,'I','p29'),(2,'G','p3'),(9,'I','p3'),(11,'I','p3'),(13,'I','p3'),(18,'I','p3'),(20,'I','p3'),(23,'I','p3'),(28,'G','p3'),(29,'I','p3'),(1,'G','p30'),(5,'I','p30'),(7,'G','p30'),(8,'I','p30'),(9,'I','p30'),(13,'G','p30'),(14,'I','p30'),(19,'I','p30'),(21,'I','p30'),(24,'I','p30'),(25,'G','p30'),(27,'I','p30'),(29,'I','p30'),(11,'G','p4'),(12,'G','p4'),(22,'I','p4'),(23,'I','p4'),(28,'I','p4'),(2,'I','p5'),(5,'I','p5'),(7,'I','p5'),(11,'I','p5'),(12,'G','p5'),(14,'I','p5'),(15,'I','p5'),(16,'I','p5'),(18,'G','p5'),(21,'I','p5'),(22,'I','p5'),(23,'G','p5'),(24,'I','p5'),(25,'G','p5'),(28,'I','p5'),(29,'I','p5'),(30,'I','p5'),(2,'I','p6'),(10,'G','p6'),(15,'I','p6'),(17,'G','p6'),(23,'G','p6'),(25,'G','p6'),(28,'I','p6'),(3,'I','p7'),(10,'I','p7'),(11,'I','p7'),(13,'G','p7'),(17,'I','p7'),(18,'G','p7'),(22,'G','p7'),(25,'I','p7'),(30,'I','p7'),(1,'G','p8'),(4,'I','p8'),(5,'G','p8'),(8,'I','p8'),(12,'I','p8'),(14,'G','p8'),(15,'I','p8'),(18,'I','p8'),(20,'G','p8'),(21,'I','p8'),(26,'G','p8'),(28,'G','p8'),(29,'I','p8'),(1,'G','p9'),(4,'G','p9'),(6,'I','p9'),(9,'I','p9'),(12,'G','p9'),(21,'G','p9'),(23,'I','p9'),(24,'I','p9'),(27,'I','p9'),(29,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS121','p1'),('WSS152','p1'),('WSS188','p1'),('WSS219','p1'),('WSS230','p1'),('WSS243','p1'),('WSS253','p1'),('WSS261','p1'),('WSS3','p1'),('WSS32','p1'),('WSS6','p1'),('WSS64','p1'),('WSS72','p1'),('WSS92','p1'),('WSS10','p10'),('WSS111','p10'),('WSS129','p10'),('WSS130','p10'),('WSS205','p10'),('WSS216','p10'),('WSS224','p10'),('WSS23','p10'),('WSS238','p10'),('WSS245','p10'),('WSS263','p10'),('WSS27','p10'),('WSS28','p10'),('WSS280','p10'),('WSS289','p10'),('WSS39','p10'),('WSS47','p10'),('WSS50','p10'),('WSS54','p10'),('WSS8','p10'),('WSS89','p10'),('WSS95','p10'),('WSS101','p11'),('WSS110','p11'),('WSS114','p11'),('WSS131','p11'),('WSS138','p11'),('WSS150','p11'),('WSS158','p11'),('WSS178','p11'),('WSS2','p11'),('WSS210','p11'),('WSS227','p11'),('WSS274','p11'),('WSS277','p11'),('WSS295','p11'),('WSS298','p11'),('WSS49','p11'),('WSS65','p11'),('WSS70','p11'),('WSS135','p12'),('WSS143','p12'),('WSS168','p12'),('WSS187','p12'),('WSS206','p12'),('WSS219','p12'),('WSS220','p12'),('WSS233','p12'),('WSS236','p12'),('WSS246','p12'),('WSS26','p12'),('WSS27','p12'),('WSS35','p12'),('WSS44','p12'),('WSS64','p12'),('WSS65','p12'),('WSS68','p12'),('WSS73','p12'),('WSS75','p12'),('WSS97','p12'),('WSS103','p13'),('WSS125','p13'),('WSS154','p13'),('WSS155','p13'),('WSS159','p13'),('WSS163','p13'),('WSS176','p13'),('WSS197','p13'),('WSS248','p13'),('WSS253','p13'),('WSS257','p13'),('WSS266','p13'),('WSS272','p13'),('WSS283','p13'),('WSS29','p13'),('WSS67','p13'),('WSS74','p13'),('WSS81','p13'),('WSS107','p14'),('WSS141','p14'),('WSS144','p14'),('WSS150','p14'),('WSS158','p14'),('WSS166','p14'),('WSS168','p14'),('WSS176','p14'),('WSS207','p14'),('WSS213','p14'),('WSS215','p14'),('WSS221','p14'),('WSS237','p14'),('WSS256','p14'),('WSS267','p14'),('WSS287','p14'),('WSS288','p14'),('WSS5','p14'),('WSS58','p14'),('WSS100','p15'),('WSS110','p15'),('WSS128','p15'),('WSS151','p15'),('WSS16','p15'),('WSS169','p15'),('WSS17','p15'),('WSS18','p15'),('WSS194','p15'),('WSS2','p15'),('WSS21','p15'),('WSS211','p15'),('WSS225','p15'),('WSS235','p15'),('WSS244','p15'),('WSS248','p15'),('WSS250','p15'),('WSS28','p15'),('WSS30','p15'),('WSS55','p15'),('WSS59','p15'),('WSS70','p15'),('WSS77','p15'),('WSS78','p15'),('WSS86','p15'),('WSS91','p15'),('WSS10','p16'),('WSS114','p16'),('WSS133','p16'),('WSS138','p16'),('WSS14','p16'),('WSS147','p16'),('WSS152','p16'),('WSS167','p16'),('WSS177','p16'),('WSS184','p16'),('WSS186','p16'),('WSS188','p16'),('WSS189','p16'),('WSS195','p16'),('WSS20','p16'),('WSS202','p16'),('WSS217','p16'),('WSS260','p16'),('WSS270','p16'),('WSS285','p16'),('WSS299','p16'),('WSS32','p16'),('WSS67','p16'),('WSS71','p16'),('WSS78','p16'),('WSS90','p16'),('WSS108','p17'),('WSS124','p17'),('WSS132','p17'),('WSS165','p17'),('WSS186','p17'),('WSS195','p17'),('WSS20','p17'),('WSS223','p17'),('WSS232','p17'),('WSS234','p17'),('WSS239','p17'),('WSS52','p17'),('WSS59','p17'),('WSS7','p17'),('WSS113','p18'),('WSS12','p18'),('WSS128','p18'),('WSS140','p18'),('WSS154','p18'),('WSS17','p18'),('WSS229','p18'),('WSS24','p18'),('WSS262','p18'),('WSS286','p18'),('WSS295','p18'),('WSS4','p18'),('WSS41','p18'),('WSS5','p18'),('WSS69','p18'),('WSS81','p18'),('WSS93','p18'),('WSS116','p19'),('WSS130','p19'),('WSS148','p19'),('WSS167','p19'),('WSS191','p19'),('WSS200','p19'),('WSS216','p19'),('WSS242','p19'),('WSS258','p19'),('WSS265','p19'),('WSS280','p19'),('WSS51','p19'),('WSS54','p19'),('WSS109','p2'),('WSS133','p2'),('WSS15','p2'),('WSS178','p2'),('WSS197','p2'),('WSS254','p2'),('WSS281','p2'),('WSS288','p2'),('WSS63','p2'),('WSS75','p2'),('WSS83','p2'),('WSS98','p2'),('WSS1','p20'),('WSS107','p20'),('WSS123','p20'),('WSS136','p20'),('WSS139','p20'),('WSS160','p20'),('WSS172','p20'),('WSS194','p20'),('WSS222','p20'),('WSS226','p20'),('WSS231','p20'),('WSS257','p20'),('WSS268','p20'),('WSS287','p20'),('WSS290','p20'),('WSS6','p20'),('WSS77','p20'),('WSS118','p21'),('WSS126','p21'),('WSS162','p21'),('WSS187','p21'),('WSS19','p21'),('WSS230','p21'),('WSS252','p21'),('WSS255','p21'),('WSS258','p21'),('WSS269','p21'),('WSS270','p21'),('WSS272','p21'),('WSS42','p21'),('WSS43','p21'),('WSS46','p21'),('WSS7','p21'),('WSS99','p21'),('WSS101','p22'),('WSS122','p22'),('WSS15','p22'),('WSS173','p22'),('WSS174','p22'),('WSS193','p22'),('WSS203','p22'),('WSS204','p22'),('WSS210','p22'),('WSS218','p22'),('WSS22','p22'),('WSS235','p22'),('WSS254','p22'),('WSS271','p22'),('WSS273','p22'),('WSS39','p22'),('WSS76','p22'),('WSS94','p22'),('WSS100','p23'),('WSS126','p23'),('WSS127','p23'),('WSS151','p23'),('WSS171','p23'),('WSS179','p23'),('WSS199','p23'),('WSS207','p23'),('WSS208','p23'),('WSS212','p23'),('WSS218','p23'),('WSS236','p23'),('WSS255','p23'),('WSS275','p23'),('WSS291','p23'),('WSS3','p23'),('WSS30','p23'),('WSS46','p23'),('WSS53','p23'),('WSS57','p23'),('WSS62','p23'),('WSS66','p23'),('WSS102','p24'),('WSS108','p24'),('WSS112','p24'),('WSS115','p24'),('WSS144','p24'),('WSS164','p24'),('WSS171','p24'),('WSS174','p24'),('WSS196','p24'),('WSS198','p24'),('WSS228','p24'),('WSS240','p24'),('WSS266','p24'),('WSS276','p24'),('WSS285','p24'),('WSS290','p24'),('WSS45','p24'),('WSS48','p24'),('WSS62','p24'),('WSS92','p24'),('WSS106','p25'),('WSS156','p25'),('WSS182','p25'),('WSS185','p25'),('WSS19','p25'),('WSS209','p25'),('WSS220','p25'),('WSS221','p25'),('WSS222','p25'),('WSS284','p25'),('WSS294','p25'),('WSS94','p25'),('WSS1','p26'),('WSS125','p26'),('WSS137','p26'),('WSS141','p26'),('WSS147','p26'),('WSS148','p26'),('WSS149','p26'),('WSS165','p26'),('WSS184','p26'),('WSS201','p26'),('WSS215','p26'),('WSS217','p26'),('WSS233','p26'),('WSS245','p26'),('WSS247','p26'),('WSS25','p26'),('WSS251','p26'),('WSS274','p26'),('WSS277','p26'),('WSS282','p26'),('WSS37','p26'),('WSS52','p26'),('WSS61','p26'),('WSS72','p26'),('WSS74','p26'),('WSS88','p26'),('WSS11','p27'),('WSS12','p27'),('WSS120','p27'),('WSS135','p27'),('WSS201','p27'),('WSS213','p27'),('WSS232','p27'),('WSS242','p27'),('WSS273','p27'),('WSS286','p27'),('WSS297','p27'),('WSS300','p27'),('WSS36','p27'),('WSS38','p27'),('WSS40','p27'),('WSS80','p27'),('WSS112','p28'),('WSS117','p28'),('WSS118','p28'),('WSS153','p28'),('WSS156','p28'),('WSS157','p28'),('WSS161','p28'),('WSS163','p28'),('WSS175','p28'),('WSS179','p28'),('WSS181','p28'),('WSS190','p28'),('WSS21','p28'),('WSS224','p28'),('WSS227','p28'),('WSS228','p28'),('WSS229','p28'),('WSS249','p28'),('WSS25','p28'),('WSS256','p28'),('WSS260','p28'),('WSS262','p28'),('WSS269','p28'),('WSS276','p28'),('WSS278','p28'),('WSS282','p28'),('WSS29','p28'),('WSS293','p28'),('WSS298','p28'),('WSS58','p28'),('WSS60','p28'),('WSS69','p28'),('WSS91','p28'),('WSS98','p28'),('WSS104','p29'),('WSS105','p29'),('WSS119','p29'),('WSS132','p29'),('WSS134','p29'),('WSS136','p29'),('WSS160','p29'),('WSS177','p29'),('WSS191','p29'),('WSS198','p29'),('WSS212','p29'),('WSS261','p29'),('WSS264','p29'),('WSS292','p29'),('WSS296','p29'),('WSS31','p29'),('WSS40','p29'),('WSS47','p29'),('WSS86','p29'),('WSS9','p29'),('WSS90','p29'),('WSS96','p29'),('WSS105','p3'),('WSS124','p3'),('WSS145','p3'),('WSS155','p3'),('WSS182','p3'),('WSS199','p3'),('WSS200','p3'),('WSS208','p3'),('WSS214','p3'),('WSS22','p3'),('WSS23','p3'),('WSS239','p3'),('WSS247','p3'),('WSS271','p3'),('WSS275','p3'),('WSS279','p3'),('WSS289','p3'),('WSS291','p3'),('WSS35','p3'),('WSS43','p3'),('WSS44','p3'),('WSS51','p3'),('WSS55','p3'),('WSS73','p3'),('WSS79','p3'),('WSS8','p3'),('WSS82','p3'),('WSS85','p3'),('WSS87','p3'),('WSS95','p3'),('WSS102','p30'),('WSS120','p30'),('WSS134','p30'),('WSS139','p30'),('WSS142','p30'),('WSS146','p30'),('WSS170','p30'),('WSS183','p30'),('WSS206','p30'),('WSS209','p30'),('WSS238','p30'),('WSS251','p30'),('WSS296','p30'),('WSS297','p30'),('WSS4','p30'),('WSS49','p30'),('WSS50','p30'),('WSS56','p30'),('WSS71','p30'),('WSS79','p30'),('WSS80','p30'),('WSS96','p30'),('WSS11','p4'),('WSS111','p4'),('WSS115','p4'),('WSS13','p4'),('WSS157','p4'),('WSS16','p4'),('WSS189','p4'),('WSS204','p4'),('WSS231','p4'),('WSS244','p4'),('WSS250','p4'),('WSS252','p4'),('WSS264','p4'),('WSS265','p4'),('WSS279','p4'),('WSS293','p4'),('WSS33','p4'),('WSS38','p4'),('WSS53','p4'),('WSS57','p4'),('WSS85','p4'),('WSS9','p4'),('WSS93','p4'),('WSS99','p4'),('WSS117','p5'),('WSS145','p5'),('WSS153','p5'),('WSS162','p5'),('WSS180','p5'),('WSS203','p5'),('WSS211','p5'),('WSS223','p5'),('WSS226','p5'),('WSS240','p5'),('WSS294','p5'),('WSS31','p5'),('WSS61','p5'),('WSS66','p5'),('WSS82','p5'),('WSS84','p5'),('WSS106','p6'),('WSS121','p6'),('WSS122','p6'),('WSS127','p6'),('WSS149','p6'),('WSS159','p6'),('WSS166','p6'),('WSS172','p6'),('WSS173','p6'),('WSS175','p6'),('WSS193','p6'),('WSS205','p6'),('WSS24','p6'),('WSS259','p6'),('WSS283','p6'),('WSS33','p6'),('WSS36','p6'),('WSS45','p6'),('WSS48','p6'),('WSS68','p6'),('WSS83','p6'),('WSS88','p6'),('WSS89','p6'),('WSS104','p7'),('WSS129','p7'),('WSS13','p7'),('WSS131','p7'),('WSS14','p7'),('WSS164','p7'),('WSS180','p7'),('WSS181','p7'),('WSS214','p7'),('WSS263','p7'),('WSS278','p7'),('WSS281','p7'),('WSS284','p7'),('WSS299','p7'),('WSS56','p7'),('WSS60','p7'),('WSS87','p7'),('WSS109','p8'),('WSS140','p8'),('WSS142','p8'),('WSS143','p8'),('WSS169','p8'),('WSS170','p8'),('WSS18','p8'),('WSS185','p8'),('WSS192','p8'),('WSS202','p8'),('WSS225','p8'),('WSS243','p8'),('WSS268','p8'),('WSS300','p8'),('WSS41','p8'),('WSS42','p8'),('WSS76','p8'),('WSS113','p9'),('WSS123','p9'),('WSS137','p9'),('WSS161','p9'),('WSS190','p9'),('WSS192','p9'),('WSS196','p9'),('WSS241','p9'),('WSS246','p9'),('WSS292','p9'),('WSS34','p9'),('WSS63','p9'),('WSS84','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS113','p1'),('WSS115','p1'),('WSS116','p1'),('WSS154','p1'),('WSS155','p1'),('WSS161','p1'),('WSS164','p1'),('WSS182','p1'),('WSS183','p1'),('WSS19','p1'),('WSS196','p1'),('WSS204','p1'),('WSS212','p1'),('WSS225','p1'),('WSS226','p1'),('WSS227','p1'),('WSS238','p1'),('WSS240','p1'),('WSS25','p1'),('WSS257','p1'),('WSS26','p1'),('WSS261','p1'),('WSS264','p1'),('WSS271','p1'),('WSS286','p1'),('WSS287','p1'),('WSS29','p1'),('WSS31','p1'),('WSS36','p1'),('WSS38','p1'),('WSS54','p1'),('WSS59','p1'),('WSS83','p1'),('WSS86','p1'),('WSS97','p1'),('WSS11','p10'),('WSS114','p10'),('WSS121','p10'),('WSS129','p10'),('WSS14','p10'),('WSS143','p10'),('WSS153','p10'),('WSS155','p10'),('WSS157','p10'),('WSS159','p10'),('WSS16','p10'),('WSS162','p10'),('WSS17','p10'),('WSS173','p10'),('WSS179','p10'),('WSS184','p10'),('WSS186','p10'),('WSS189','p10'),('WSS191','p10'),('WSS196','p10'),('WSS20','p10'),('WSS200','p10'),('WSS206','p10'),('WSS219','p10'),('WSS224','p10'),('WSS232','p10'),('WSS233','p10'),('WSS237','p10'),('WSS247','p10'),('WSS274','p10'),('WSS275','p10'),('WSS295','p10'),('WSS300','p10'),('WSS45','p10'),('WSS51','p10'),('WSS55','p10'),('WSS56','p10'),('WSS58','p10'),('WSS62','p10'),('WSS63','p10'),('WSS84','p10'),('WSS87','p10'),('WSS9','p10'),('WSS98','p10'),('WSS104','p11'),('WSS115','p11'),('WSS134','p11'),('WSS139','p11'),('WSS147','p11'),('WSS15','p11'),('WSS150','p11'),('WSS170','p11'),('WSS193','p11'),('WSS207','p11'),('WSS208','p11'),('WSS212','p11'),('WSS223','p11'),('WSS224','p11'),('WSS225','p11'),('WSS228','p11'),('WSS247','p11'),('WSS25','p11'),('WSS251','p11'),('WSS255','p11'),('WSS259','p11'),('WSS266','p11'),('WSS268','p11'),('WSS284','p11'),('WSS29','p11'),('WSS293','p11'),('WSS294','p11'),('WSS296','p11'),('WSS297','p11'),('WSS30','p11'),('WSS34','p11'),('WSS36','p11'),('WSS4','p11'),('WSS58','p11'),('WSS70','p11'),('WSS72','p11'),('WSS80','p11'),('WSS82','p11'),('WSS86','p11'),('WSS93','p11'),('WSS95','p11'),('WSS105','p12'),('WSS114','p12'),('WSS14','p12'),('WSS146','p12'),('WSS149','p12'),('WSS157','p12'),('WSS184','p12'),('WSS202','p12'),('WSS204','p12'),('WSS216','p12'),('WSS217','p12'),('WSS235','p12'),('WSS237','p12'),('WSS248','p12'),('WSS250','p12'),('WSS255','p12'),('WSS275','p12'),('WSS288','p12'),('WSS298','p12'),('WSS299','p12'),('WSS38','p12'),('WSS39','p12'),('WSS42','p12'),('WSS5','p12'),('WSS58','p12'),('WSS59','p12'),('WSS60','p12'),('WSS7','p12'),('WSS78','p12'),('WSS83','p12'),('WSS86','p12'),('WSS87','p12'),('WSS95','p12'),('WSS99','p12'),('WSS101','p13'),('WSS102','p13'),('WSS110','p13'),('WSS12','p13'),('WSS130','p13'),('WSS136','p13'),('WSS148','p13'),('WSS164','p13'),('WSS176','p13'),('WSS2','p13'),('WSS205','p13'),('WSS213','p13'),('WSS225','p13'),('WSS24','p13'),('WSS244','p13'),('WSS254','p13'),('WSS260','p13'),('WSS267','p13'),('WSS269','p13'),('WSS272','p13'),('WSS280','p13'),('WSS283','p13'),('WSS290','p13'),('WSS292','p13'),('WSS295','p13'),('WSS297','p13'),('WSS30','p13'),('WSS33','p13'),('WSS37','p13'),('WSS40','p13'),('WSS46','p13'),('WSS47','p13'),('WSS52','p13'),('WSS71','p13'),('WSS72','p13'),('WSS73','p13'),('WSS77','p13'),('WSS79','p13'),('WSS81','p13'),('WSS89','p13'),('WSS103','p14'),('WSS108','p14'),('WSS113','p14'),('WSS118','p14'),('WSS128','p14'),('WSS132','p14'),('WSS145','p14'),('WSS148','p14'),('WSS163','p14'),('WSS17','p14'),('WSS181','p14'),('WSS187','p14'),('WSS19','p14'),('WSS20','p14'),('WSS201','p14'),('WSS22','p14'),('WSS226','p14'),('WSS229','p14'),('WSS234','p14'),('WSS245','p14'),('WSS253','p14'),('WSS255','p14'),('WSS265','p14'),('WSS270','p14'),('WSS271','p14'),('WSS287','p14'),('WSS32','p14'),('WSS36','p14'),('WSS37','p14'),('WSS38','p14'),('WSS46','p14'),('WSS64','p14'),('WSS78','p14'),('WSS79','p14'),('WSS85','p14'),('WSS86','p14'),('WSS88','p14'),('WSS90','p14'),('WSS96','p14'),('WSS100','p15'),('WSS103','p15'),('WSS11','p15'),('WSS117','p15'),('WSS121','p15'),('WSS130','p15'),('WSS136','p15'),('WSS154','p15'),('WSS156','p15'),('WSS169','p15'),('WSS173','p15'),('WSS183','p15'),('WSS187','p15'),('WSS19','p15'),('WSS200','p15'),('WSS203','p15'),('WSS220','p15'),('WSS228','p15'),('WSS229','p15'),('WSS230','p15'),('WSS248','p15'),('WSS252','p15'),('WSS255','p15'),('WSS269','p15'),('WSS27','p15'),('WSS271','p15'),('WSS272','p15'),('WSS273','p15'),('WSS277','p15'),('WSS282','p15'),('WSS285','p15'),('WSS288','p15'),('WSS290','p15'),('WSS292','p15'),('WSS32','p15'),('WSS34','p15'),('WSS37','p15'),('WSS50','p15'),('WSS51','p15'),('WSS62','p15'),('WSS64','p15'),('WSS65','p15'),('WSS66','p15'),('WSS7','p15'),('WSS75','p15'),('WSS83','p15'),('WSS94','p15'),('WSS108','p16'),('WSS117','p16'),('WSS119','p16'),('WSS127','p16'),('WSS13','p16'),('WSS139','p16'),('WSS140','p16'),('WSS160','p16'),('WSS172','p16'),('WSS174','p16'),('WSS175','p16'),('WSS176','p16'),('WSS179','p16'),('WSS18','p16'),('WSS184','p16'),('WSS188','p16'),('WSS191','p16'),('WSS192','p16'),('WSS195','p16'),('WSS199','p16'),('WSS217','p16'),('WSS225','p16'),('WSS239','p16'),('WSS249','p16'),('WSS253','p16'),('WSS267','p16'),('WSS270','p16'),('WSS276','p16'),('WSS277','p16'),('WSS287','p16'),('WSS3','p16'),('WSS39','p16'),('WSS43','p16'),('WSS48','p16'),('WSS49','p16'),('WSS55','p16'),('WSS61','p16'),('WSS84','p16'),('WSS92','p16'),('WSS93','p16'),('WSS98','p16'),('WSS1','p17'),('WSS10','p17'),('WSS105','p17'),('WSS113','p17'),('WSS114','p17'),('WSS118','p17'),('WSS126','p17'),('WSS127','p17'),('WSS130','p17'),('WSS134','p17'),('WSS145','p17'),('WSS150','p17'),('WSS156','p17'),('WSS165','p17'),('WSS168','p17'),('WSS170','p17'),('WSS174','p17'),('WSS180','p17'),('WSS185','p17'),('WSS187','p17'),('WSS192','p17'),('WSS20','p17'),('WSS200','p17'),('WSS201','p17'),('WSS207','p17'),('WSS212','p17'),('WSS229','p17'),('WSS258','p17'),('WSS264','p17'),('WSS273','p17'),('WSS279','p17'),('WSS284','p17'),('WSS292','p17'),('WSS40','p17'),('WSS50','p17'),('WSS55','p17'),('WSS57','p17'),('WSS65','p17'),('WSS7','p17'),('WSS95','p17'),('WSS12','p18'),('WSS132','p18'),('WSS142','p18'),('WSS154','p18'),('WSS156','p18'),('WSS16','p18'),('WSS165','p18'),('WSS167','p18'),('WSS182','p18'),('WSS185','p18'),('WSS186','p18'),('WSS205','p18'),('WSS211','p18'),('WSS216','p18'),('WSS219','p18'),('WSS22','p18'),('WSS231','p18'),('WSS237','p18'),('WSS242','p18'),('WSS243','p18'),('WSS279','p18'),('WSS288','p18'),('WSS290','p18'),('WSS295','p18'),('WSS299','p18'),('WSS31','p18'),('WSS4','p18'),('WSS41','p18'),('WSS53','p18'),('WSS55','p18'),('WSS61','p18'),('WSS81','p18'),('WSS88','p18'),('WSS99','p18'),('WSS102','p19'),('WSS117','p19'),('WSS118','p19'),('WSS123','p19'),('WSS138','p19'),('WSS139','p19'),('WSS151','p19'),('WSS155','p19'),('WSS162','p19'),('WSS171','p19'),('WSS174','p19'),('WSS19','p19'),('WSS190','p19'),('WSS197','p19'),('WSS205','p19'),('WSS208','p19'),('WSS215','p19'),('WSS22','p19'),('WSS223','p19'),('WSS230','p19'),('WSS231','p19'),('WSS259','p19'),('WSS26','p19'),('WSS266','p19'),('WSS293','p19'),('WSS294','p19'),('WSS296','p19'),('WSS300','p19'),('WSS33','p19'),('WSS35','p19'),('WSS59','p19'),('WSS66','p19'),('WSS79','p19'),('WSS81','p19'),('WSS89','p19'),('WSS9','p19'),('WSS92','p19'),('WSS93','p19'),('WSS96','p19'),('WSS112','p2'),('WSS122','p2'),('WSS137','p2'),('WSS141','p2'),('WSS145','p2'),('WSS146','p2'),('WSS152','p2'),('WSS156','p2'),('WSS174','p2'),('WSS183','p2'),('WSS205','p2'),('WSS236','p2'),('WSS241','p2'),('WSS253','p2'),('WSS263','p2'),('WSS274','p2'),('WSS277','p2'),('WSS280','p2'),('WSS286','p2'),('WSS289','p2'),('WSS290','p2'),('WSS293','p2'),('WSS294','p2'),('WSS40','p2'),('WSS51','p2'),('WSS53','p2'),('WSS65','p2'),('WSS68','p2'),('WSS73','p2'),('WSS74','p2'),('WSS98','p2'),('WSS107','p20'),('WSS110','p20'),('WSS126','p20'),('WSS128','p20'),('WSS134','p20'),('WSS139','p20'),('WSS152','p20'),('WSS171','p20'),('WSS176','p20'),('WSS197','p20'),('WSS199','p20'),('WSS206','p20'),('WSS224','p20'),('WSS235','p20'),('WSS244','p20'),('WSS257','p20'),('WSS259','p20'),('WSS261','p20'),('WSS264','p20'),('WSS280','p20'),('WSS281','p20'),('WSS284','p20'),('WSS299','p20'),('WSS40','p20'),('WSS41','p20'),('WSS52','p20'),('WSS6','p20'),('WSS61','p20'),('WSS68','p20'),('WSS70','p20'),('WSS76','p20'),('WSS89','p20'),('WSS101','p21'),('WSS125','p21'),('WSS126','p21'),('WSS128','p21'),('WSS135','p21'),('WSS141','p21'),('WSS148','p21'),('WSS149','p21'),('WSS155','p21'),('WSS177','p21'),('WSS18','p21'),('WSS188','p21'),('WSS193','p21'),('WSS194','p21'),('WSS198','p21'),('WSS202','p21'),('WSS234','p21'),('WSS236','p21'),('WSS256','p21'),('WSS26','p21'),('WSS274','p21'),('WSS276','p21'),('WSS28','p21'),('WSS282','p21'),('WSS29','p21'),('WSS30','p21'),('WSS51','p21'),('WSS56','p21'),('WSS57','p21'),('WSS69','p21'),('WSS72','p21'),('WSS83','p21'),('WSS88','p21'),('WSS96','p21'),('WSS106','p22'),('WSS111','p22'),('WSS119','p22'),('WSS124','p22'),('WSS131','p22'),('WSS132','p22'),('WSS14','p22'),('WSS141','p22'),('WSS147','p22'),('WSS154','p22'),('WSS162','p22'),('WSS168','p22'),('WSS172','p22'),('WSS175','p22'),('WSS177','p22'),('WSS178','p22'),('WSS179','p22'),('WSS180','p22'),('WSS188','p22'),('WSS192','p22'),('WSS199','p22'),('WSS200','p22'),('WSS210','p22'),('WSS214','p22'),('WSS232','p22'),('WSS243','p22'),('WSS249','p22'),('WSS250','p22'),('WSS262','p22'),('WSS265','p22'),('WSS273','p22'),('WSS275','p22'),('WSS281','p22'),('WSS3','p22'),('WSS31','p22'),('WSS53','p22'),('WSS54','p22'),('WSS6','p22'),('WSS67','p22'),('WSS68','p22'),('WSS82','p22'),('WSS91','p22'),('WSS97','p22'),('WSS10','p23'),('WSS100','p23'),('WSS108','p23'),('WSS125','p23'),('WSS128','p23'),('WSS137','p23'),('WSS144','p23'),('WSS152','p23'),('WSS163','p23'),('WSS166','p23'),('WSS186','p23'),('WSS193','p23'),('WSS194','p23'),('WSS206','p23'),('WSS207','p23'),('WSS208','p23'),('WSS209','p23'),('WSS218','p23'),('WSS219','p23'),('WSS222','p23'),('WSS231','p23'),('WSS232','p23'),('WSS233','p23'),('WSS254','p23'),('WSS256','p23'),('WSS260','p23'),('WSS263','p23'),('WSS278','p23'),('WSS28','p23'),('WSS287','p23'),('WSS3','p23'),('WSS34','p23'),('WSS59','p23'),('WSS61','p23'),('WSS62','p23'),('WSS75','p23'),('WSS76','p23'),('WSS10','p24'),('WSS101','p24'),('WSS107','p24'),('WSS109','p24'),('WSS116','p24'),('WSS120','p24'),('WSS14','p24'),('WSS15','p24'),('WSS158','p24'),('WSS17','p24'),('WSS18','p24'),('WSS181','p24'),('WSS191','p24'),('WSS195','p24'),('WSS198','p24'),('WSS208','p24'),('WSS21','p24'),('WSS213','p24'),('WSS220','p24'),('WSS222','p24'),('WSS223','p24'),('WSS230','p24'),('WSS241','p24'),('WSS250','p24'),('WSS257','p24'),('WSS258','p24'),('WSS266','p24'),('WSS27','p24'),('WSS291','p24'),('WSS299','p24'),('WSS41','p24'),('WSS46','p24'),('WSS47','p24'),('WSS50','p24'),('WSS67','p24'),('WSS81','p24'),('WSS89','p24'),('WSS104','p25'),('WSS110','p25'),('WSS124','p25'),('WSS129','p25'),('WSS13','p25'),('WSS133','p25'),('WSS142','p25'),('WSS144','p25'),('WSS158','p25'),('WSS161','p25'),('WSS165','p25'),('WSS167','p25'),('WSS169','p25'),('WSS171','p25'),('WSS175','p25'),('WSS178','p25'),('WSS182','p25'),('WSS186','p25'),('WSS187','p25'),('WSS189','p25'),('WSS196','p25'),('WSS21','p25'),('WSS214','p25'),('WSS218','p25'),('WSS221','p25'),('WSS228','p25'),('WSS235','p25'),('WSS239','p25'),('WSS242','p25'),('WSS245','p25'),('WSS260','p25'),('WSS273','p25'),('WSS296','p25'),('WSS298','p25'),('WSS300','p25'),('WSS31','p25'),('WSS32','p25'),('WSS42','p25'),('WSS44','p25'),('WSS66','p25'),('WSS77','p25'),('WSS80','p25'),('WSS88','p25'),('WSS102','p26'),('WSS104','p26'),('WSS111','p26'),('WSS113','p26'),('WSS116','p26'),('WSS119','p26'),('WSS121','p26'),('WSS123','p26'),('WSS133','p26'),('WSS136','p26'),('WSS138','p26'),('WSS151','p26'),('WSS159','p26'),('WSS170','p26'),('WSS178','p26'),('WSS182','p26'),('WSS203','p26'),('WSS209','p26'),('WSS21','p26'),('WSS214','p26'),('WSS215','p26'),('WSS221','p26'),('WSS222','p26'),('WSS223','p26'),('WSS232','p26'),('WSS297','p26'),('WSS300','p26'),('WSS37','p26'),('WSS39','p26'),('WSS60','p26'),('WSS74','p26'),('WSS82','p26'),('WSS84','p26'),('WSS85','p26'),('WSS92','p26'),('WSS95','p26'),('WSS98','p26'),('WSS109','p27'),('WSS11','p27'),('WSS110','p27'),('WSS12','p27'),('WSS124','p27'),('WSS129','p27'),('WSS131','p27'),('WSS157','p27'),('WSS163','p27'),('WSS177','p27'),('WSS197','p27'),('WSS218','p27'),('WSS237','p27'),('WSS238','p27'),('WSS239','p27'),('WSS245','p27'),('WSS246','p27'),('WSS247','p27'),('WSS25','p27'),('WSS265','p27'),('WSS69','p27'),('WSS71','p27'),('WSS93','p27'),('WSS94','p27'),('WSS106','p28'),('WSS118','p28'),('WSS13','p28'),('WSS131','p28'),('WSS133','p28'),('WSS141','p28'),('WSS148','p28'),('WSS15','p28'),('WSS158','p28'),('WSS16','p28'),('WSS179','p28'),('WSS180','p28'),('WSS191','p28'),('WSS193','p28'),('WSS204','p28'),('WSS206','p28'),('WSS209','p28'),('WSS210','p28'),('WSS215','p28'),('WSS220','p28'),('WSS226','p28'),('WSS23','p28'),('WSS230','p28'),('WSS24','p28'),('WSS246','p28'),('WSS260','p28'),('WSS262','p28'),('WSS263','p28'),('WSS265','p28'),('WSS27','p28'),('WSS272','p28'),('WSS284','p28'),('WSS35','p28'),('WSS45','p28'),('WSS54','p28'),('WSS63','p28'),('WSS71','p28'),('WSS79','p28'),('WSS8','p28'),('WSS84','p28'),('WSS91','p28'),('WSS99','p28'),('WSS107','p29'),('WSS109','p29'),('WSS11','p29'),('WSS111','p29'),('WSS112','p29'),('WSS115','p29'),('WSS121','p29'),('WSS122','p29'),('WSS143','p29'),('WSS147','p29'),('WSS151','p29'),('WSS160','p29'),('WSS164','p29'),('WSS167','p29'),('WSS168','p29'),('WSS17','p29'),('WSS195','p29'),('WSS198','p29'),('WSS199','p29'),('WSS2','p29'),('WSS201','p29'),('WSS213','p29'),('WSS216','p29'),('WSS221','p29'),('WSS23','p29'),('WSS234','p29'),('WSS239','p29'),('WSS244','p29'),('WSS251','p29'),('WSS253','p29'),('WSS262','p29'),('WSS267','p29'),('WSS27','p29'),('WSS278','p29'),('WSS291','p29'),('WSS293','p29'),('WSS33','p29'),('WSS47','p29'),('WSS48','p29'),('WSS5','p29'),('WSS52','p29'),('WSS53','p29'),('WSS56','p29'),('WSS57','p29'),('WSS67','p29'),('WSS72','p29'),('WSS8','p29'),('WSS90','p29'),('WSS94','p29'),('WSS97','p29'),('WSS1','p3'),('WSS112','p3'),('WSS140','p3'),('WSS143','p3'),('WSS144','p3'),('WSS147','p3'),('WSS166','p3'),('WSS170','p3'),('WSS185','p3'),('WSS202','p3'),('WSS210','p3'),('WSS213','p3'),('WSS229','p3'),('WSS236','p3'),('WSS240','p3'),('WSS243','p3'),('WSS251','p3'),('WSS252','p3'),('WSS258','p3'),('WSS268','p3'),('WSS270','p3'),('WSS283','p3'),('WSS291','p3'),('WSS3','p3'),('WSS36','p3'),('WSS43','p3'),('WSS45','p3'),('WSS58','p3'),('WSS6','p3'),('WSS64','p3'),('WSS73','p3'),('WSS76','p3'),('WSS99','p3'),('WSS10','p30'),('WSS102','p30'),('WSS104','p30'),('WSS107','p30'),('WSS115','p30'),('WSS123','p30'),('WSS142','p30'),('WSS144','p30'),('WSS146','p30'),('WSS163','p30'),('WSS164','p30'),('WSS173','p30'),('WSS185','p30'),('WSS189','p30'),('WSS204','p30'),('WSS214','p30'),('WSS222','p30'),('WSS224','p30'),('WSS238','p30'),('WSS243','p30'),('WSS244','p30'),('WSS246','p30'),('WSS262','p30'),('WSS276','p30'),('WSS281','p30'),('WSS283','p30'),('WSS39','p30'),('WSS48','p30'),('WSS57','p30'),('WSS60','p30'),('WSS68','p30'),('WSS70','p30'),('WSS80','p30'),('WSS91','p30'),('WSS1','p4'),('WSS120','p4'),('WSS153','p4'),('WSS157','p4'),('WSS159','p4'),('WSS16','p4'),('WSS161','p4'),('WSS172','p4'),('WSS178','p4'),('WSS190','p4'),('WSS192','p4'),('WSS197','p4'),('WSS198','p4'),('WSS211','p4'),('WSS217','p4'),('WSS24','p4'),('WSS245','p4'),('WSS252','p4'),('WSS261','p4'),('WSS266','p4'),('WSS275','p4'),('WSS280','p4'),('WSS285','p4'),('WSS289','p4'),('WSS292','p4'),('WSS296','p4'),('WSS35','p4'),('WSS42','p4'),('WSS44','p4'),('WSS7','p4'),('WSS74','p4'),('WSS77','p4'),('WSS8','p4'),('WSS80','p4'),('WSS85','p4'),('WSS9','p4'),('WSS90','p4'),('WSS91','p4'),('WSS92','p4'),('WSS108','p5'),('WSS111','p5'),('WSS117','p5'),('WSS12','p5'),('WSS122','p5'),('WSS125','p5'),('WSS130','p5'),('WSS132','p5'),('WSS137','p5'),('WSS138','p5'),('WSS145','p5'),('WSS149','p5'),('WSS160','p5'),('WSS172','p5'),('WSS184','p5'),('WSS2','p5'),('WSS201','p5'),('WSS22','p5'),('WSS220','p5'),('WSS227','p5'),('WSS234','p5'),('WSS240','p5'),('WSS247','p5'),('WSS259','p5'),('WSS263','p5'),('WSS268','p5'),('WSS274','p5'),('WSS277','p5'),('WSS278','p5'),('WSS279','p5'),('WSS28','p5'),('WSS34','p5'),('WSS43','p5'),('WSS44','p5'),('WSS46','p5'),('WSS49','p5'),('WSS5','p5'),('WSS6','p5'),('WSS69','p5'),('WSS78','p5'),('WSS96','p5'),('WSS100','p6'),('WSS103','p6'),('WSS112','p6'),('WSS119','p6'),('WSS122','p6'),('WSS124','p6'),('WSS134','p6'),('WSS159','p6'),('WSS169','p6'),('WSS181','p6'),('WSS194','p6'),('WSS195','p6'),('WSS2','p6'),('WSS20','p6'),('WSS203','p6'),('WSS209','p6'),('WSS218','p6'),('WSS227','p6'),('WSS242','p6'),('WSS250','p6'),('WSS252','p6'),('WSS270','p6'),('WSS276','p6'),('WSS282','p6'),('WSS285','p6'),('WSS286','p6'),('WSS288','p6'),('WSS289','p6'),('WSS291','p6'),('WSS298','p6'),('WSS63','p6'),('WSS64','p6'),('WSS70','p6'),('WSS71','p6'),('WSS73','p6'),('WSS74','p6'),('WSS90','p6'),('WSS97','p6'),('WSS100','p7'),('WSS120','p7'),('WSS125','p7'),('WSS135','p7'),('WSS138','p7'),('WSS149','p7'),('WSS166','p7'),('WSS167','p7'),('WSS173','p7'),('WSS176','p7'),('WSS181','p7'),('WSS202','p7'),('WSS211','p7'),('WSS212','p7'),('WSS217','p7'),('WSS221','p7'),('WSS233','p7'),('WSS248','p7'),('WSS258','p7'),('WSS272','p7'),('WSS282','p7'),('WSS283','p7'),('WSS285','p7'),('WSS29','p7'),('WSS298','p7'),('WSS30','p7'),('WSS43','p7'),('WSS62','p7'),('WSS65','p7'),('WSS75','p7'),('WSS77','p7'),('WSS87','p7'),('WSS9','p7'),('WSS1','p8'),('WSS101','p8'),('WSS103','p8'),('WSS105','p8'),('WSS129','p8'),('WSS140','p8'),('WSS142','p8'),('WSS146','p8'),('WSS15','p8'),('WSS150','p8'),('WSS152','p8'),('WSS153','p8'),('WSS160','p8'),('WSS165','p8'),('WSS166','p8'),('WSS180','p8'),('WSS189','p8'),('WSS194','p8'),('WSS207','p8'),('WSS210','p8'),('WSS251','p8'),('WSS254','p8'),('WSS26','p8'),('WSS269','p8'),('WSS278','p8'),('WSS279','p8'),('WSS294','p8'),('WSS297','p8'),('WSS33','p8'),('WSS4','p8'),('WSS41','p8'),('WSS47','p8'),('WSS5','p8'),('WSS52','p8'),('WSS54','p8'),('WSS63','p8'),('WSS67','p8'),('WSS8','p8'),('WSS82','p8'),('WSS105','p9'),('WSS106','p9'),('WSS109','p9'),('WSS114','p9'),('WSS123','p9'),('WSS127','p9'),('WSS135','p9'),('WSS136','p9'),('WSS137','p9'),('WSS140','p9'),('WSS143','p9'),('WSS168','p9'),('WSS169','p9'),('WSS171','p9'),('WSS177','p9'),('WSS18','p9'),('WSS183','p9'),('WSS190','p9'),('WSS21','p9'),('WSS211','p9'),('WSS216','p9'),('WSS219','p9'),('WSS231','p9'),('WSS233','p9'),('WSS236','p9'),('WSS24','p9'),('WSS240','p9'),('WSS248','p9'),('WSS249','p9'),('WSS254','p9'),('WSS264','p9'),('WSS268','p9'),('WSS281','p9'),('WSS286','p9'),('WSS289','p9'),('WSS4','p9'),('WSS42','p9'),('WSS44','p9'),('WSS48','p9'),('WSS49','p9'),('WSS50','p9'),('WSS56','p9'),('WSS60','p9'),('WSS66','p9'),('WSS69','p9'),('WSS75','p9'),('WSS76','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS65'),(1,2,'WSS148'),(1,3,'WSS84'),(1,4,'WSS60'),(2,1,'WSS145'),(2,2,'WSS144'),(2,2,'WSS147'),(3,1,'WSS195'),(3,2,'WSS172'),(3,3,'WSS14'),(4,1,'WSS19'),(4,2,'WSS22'),(4,3,'WSS187'),(5,1,'WSS146'),(5,2,'WSS59'),(5,3,'WSS8'),(6,1,'WSS137'),(6,2,'WSS199'),(6,3,'WSS162'),(7,1,'WSS183'),(7,2,'WSS91'),(7,3,'WSS109'),(7,3,'WSS196'),(8,1,'WSS144'),(8,2,'WSS174'),(8,2,'WSS70'),(9,1,'WSS62'),(9,2,'WSS135'),(9,3,'WSS143'),(10,1,'WSS64'),(10,2,'WSS159'),(10,3,'WSS176'),(11,1,'WSS143'),(11,2,'WSS159'),(11,3,'WSS184'),(12,1,'WSS134'),(12,2,'WSS63'),(12,3,'WSS23'),(13,1,'WSS73'),(13,2,'WSS161'),(13,3,'WSS198'),(14,1,'WSS179'),(14,2,'WSS147'),(15,1,'WSS59'),(15,2,'WSS140'),(15,3,'WSS3'),(16,1,'WSS27'),(16,2,'WSS135'),(17,1,'WSS89'),(17,2,'WSS106'),(17,3,'WSS63'),(18,1,'WSS18'),(18,2,'WSS175'),(18,3,'WSS138'),(19,1,'WSS86'),(19,2,'WSS23'),(19,3,'WSS109'),(19,4,'WSS151'),(20,1,'WSS92'),(20,1,'WSS97'),(20,2,'WSS14'),(21,1,'WSS69'),(21,1,'WSS87'),(21,2,'WSS192'),(22,1,'WSS51'),(22,2,'WSS105'),(22,3,'WSS83'),(23,1,'WSS18'),(23,2,'WSS60'),(23,3,'WSS81'),(24,1,'WSS2'),(24,2,'WSS18'),(24,2,'WSS56'),(25,1,'WSS33'),(25,2,'WSS14'),(25,3,'WSS179'),(26,1,'WSS48'),(26,1,'WSS85'),(26,2,'WSS192'),(27,1,'WSS51'),(27,2,'WSS4'),(27,3,'WSS10'),(28,1,'WSS14'),(28,2,'WSS106'),(28,3,'WSS28'),(28,4,'WSS195'),(29,1,'WSS121'),(29,2,'WSS85'),(29,3,'WSS26'),(30,1,'WSS64'),(30,2,'WSS9'),(30,3,'WSS107'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-30  7:57:09
