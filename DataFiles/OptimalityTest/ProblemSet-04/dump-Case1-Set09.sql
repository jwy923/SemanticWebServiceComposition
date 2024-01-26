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
INSERT INTO `initialgoalparameter` VALUES (4,'I','p1'),(5,'G','p1'),(8,'I','p1'),(14,'I','p1'),(16,'I','p1'),(19,'G','p1'),(20,'I','p1'),(21,'I','p1'),(22,'I','p1'),(23,'I','p1'),(27,'I','p1'),(28,'G','p1'),(2,'I','p10'),(4,'G','p10'),(7,'I','p10'),(14,'I','p10'),(15,'I','p10'),(17,'I','p10'),(18,'G','p10'),(21,'I','p10'),(23,'G','p10'),(25,'I','p10'),(30,'G','p10'),(2,'G','p11'),(6,'G','p11'),(7,'I','p11'),(8,'G','p11'),(11,'I','p11'),(12,'G','p11'),(13,'I','p11'),(17,'I','p11'),(19,'I','p11'),(21,'G','p11'),(22,'I','p11'),(23,'I','p11'),(24,'I','p11'),(27,'I','p11'),(29,'G','p11'),(30,'G','p11'),(7,'I','p12'),(9,'G','p12'),(11,'I','p12'),(16,'I','p12'),(18,'I','p12'),(22,'I','p12'),(25,'I','p12'),(26,'G','p12'),(30,'G','p12'),(1,'G','p13'),(2,'G','p13'),(4,'I','p13'),(5,'I','p13'),(8,'I','p13'),(9,'I','p13'),(13,'I','p13'),(16,'G','p13'),(19,'I','p13'),(20,'I','p13'),(21,'G','p13'),(23,'G','p13'),(27,'I','p13'),(28,'I','p13'),(2,'I','p14'),(3,'G','p14'),(5,'I','p14'),(7,'I','p14'),(9,'G','p14'),(10,'I','p14'),(14,'I','p14'),(16,'I','p14'),(17,'I','p14'),(18,'G','p14'),(22,'G','p14'),(23,'G','p14'),(26,'I','p14'),(29,'I','p14'),(2,'I','p15'),(4,'G','p15'),(7,'I','p15'),(8,'I','p15'),(12,'I','p15'),(13,'I','p15'),(17,'G','p15'),(20,'G','p15'),(23,'I','p15'),(25,'G','p15'),(28,'I','p15'),(1,'I','p16'),(2,'I','p16'),(5,'I','p16'),(8,'G','p16'),(10,'I','p16'),(11,'I','p16'),(14,'G','p16'),(16,'G','p16'),(21,'I','p16'),(23,'I','p16'),(24,'I','p16'),(28,'G','p16'),(3,'I','p17'),(5,'I','p17'),(8,'I','p17'),(12,'I','p17'),(15,'I','p17'),(16,'I','p17'),(19,'G','p17'),(20,'G','p17'),(21,'I','p17'),(23,'I','p17'),(24,'G','p17'),(27,'I','p17'),(29,'I','p17'),(30,'I','p17'),(2,'G','p18'),(3,'G','p18'),(12,'I','p18'),(15,'I','p18'),(17,'G','p18'),(19,'G','p18'),(20,'G','p18'),(21,'I','p18'),(22,'G','p18'),(24,'I','p18'),(25,'I','p18'),(26,'I','p18'),(27,'G','p18'),(1,'I','p19'),(3,'I','p19'),(4,'I','p19'),(7,'I','p19'),(10,'G','p19'),(14,'G','p19'),(15,'G','p19'),(17,'I','p19'),(20,'I','p19'),(25,'I','p19'),(26,'G','p19'),(29,'G','p19'),(4,'I','p2'),(7,'I','p2'),(8,'I','p2'),(11,'G','p2'),(13,'G','p2'),(18,'I','p2'),(20,'I','p2'),(23,'I','p2'),(25,'G','p2'),(27,'I','p2'),(28,'I','p2'),(29,'I','p2'),(1,'I','p20'),(4,'I','p20'),(6,'G','p20'),(9,'I','p20'),(10,'I','p20'),(15,'I','p20'),(18,'I','p20'),(21,'G','p20'),(22,'I','p20'),(27,'I','p20'),(29,'G','p20'),(1,'I','p21'),(5,'I','p21'),(7,'I','p21'),(8,'G','p21'),(11,'G','p21'),(12,'G','p21'),(14,'I','p21'),(15,'I','p21'),(16,'I','p21'),(21,'I','p21'),(22,'G','p21'),(24,'G','p21'),(26,'I','p21'),(28,'I','p21'),(30,'I','p21'),(1,'G','p22'),(7,'G','p22'),(12,'G','p22'),(13,'G','p22'),(15,'I','p22'),(17,'G','p22'),(27,'G','p22'),(29,'I','p22'),(30,'I','p22'),(3,'I','p23'),(5,'G','p23'),(6,'I','p23'),(7,'G','p23'),(9,'G','p23'),(12,'I','p23'),(13,'I','p23'),(16,'I','p23'),(19,'I','p23'),(21,'I','p23'),(22,'I','p23'),(25,'G','p23'),(4,'G','p24'),(5,'I','p24'),(6,'I','p24'),(8,'G','p24'),(9,'I','p24'),(10,'I','p24'),(13,'I','p24'),(14,'G','p24'),(15,'G','p24'),(16,'G','p24'),(17,'G','p24'),(18,'I','p24'),(24,'I','p24'),(1,'I','p25'),(3,'I','p25'),(6,'G','p25'),(10,'G','p25'),(14,'G','p25'),(15,'G','p25'),(20,'I','p25'),(25,'G','p25'),(27,'G','p25'),(30,'I','p25'),(4,'I','p26'),(7,'G','p26'),(18,'G','p26'),(23,'I','p26'),(24,'I','p26'),(29,'I','p26'),(30,'G','p26'),(3,'I','p27'),(4,'I','p27'),(5,'G','p27'),(7,'G','p27'),(9,'I','p27'),(10,'I','p27'),(12,'I','p27'),(13,'G','p27'),(19,'I','p27'),(28,'I','p27'),(29,'I','p27'),(30,'I','p27'),(6,'I','p28'),(12,'G','p28'),(13,'I','p28'),(17,'I','p28'),(18,'G','p28'),(19,'I','p28'),(22,'I','p28'),(24,'I','p28'),(26,'I','p28'),(28,'I','p28'),(29,'I','p28'),(2,'I','p29'),(5,'I','p29'),(9,'I','p29'),(10,'I','p29'),(11,'I','p29'),(14,'I','p29'),(20,'G','p29'),(24,'I','p29'),(26,'G','p29'),(27,'I','p29'),(1,'G','p3'),(3,'I','p3'),(5,'G','p3'),(9,'I','p3'),(10,'G','p3'),(11,'G','p3'),(12,'I','p3'),(14,'I','p3'),(16,'I','p3'),(19,'G','p3'),(20,'I','p3'),(23,'G','p3'),(29,'I','p3'),(1,'G','p30'),(2,'I','p30'),(3,'I','p30'),(6,'I','p30'),(10,'I','p30'),(11,'I','p30'),(13,'I','p30'),(17,'I','p30'),(18,'I','p30'),(19,'I','p30'),(22,'I','p30'),(25,'I','p30'),(27,'G','p30'),(28,'G','p30'),(2,'G','p4'),(3,'G','p4'),(5,'I','p4'),(6,'I','p4'),(8,'I','p4'),(18,'I','p4'),(25,'I','p4'),(26,'I','p4'),(28,'G','p4'),(30,'I','p4'),(1,'I','p5'),(3,'I','p5'),(6,'I','p5'),(8,'I','p5'),(10,'I','p5'),(12,'I','p5'),(15,'I','p5'),(18,'I','p5'),(20,'I','p5'),(21,'I','p5'),(22,'I','p5'),(26,'G','p5'),(27,'I','p5'),(28,'I','p5'),(1,'I','p6'),(9,'G','p6'),(10,'G','p6'),(11,'I','p6'),(14,'I','p6'),(15,'I','p6'),(16,'I','p6'),(18,'I','p6'),(19,'I','p6'),(20,'I','p6'),(23,'I','p6'),(24,'I','p6'),(26,'I','p6'),(3,'G','p7'),(4,'I','p7'),(6,'I','p7'),(9,'I','p7'),(11,'I','p7'),(13,'G','p7'),(17,'I','p7'),(19,'I','p7'),(21,'G','p7'),(22,'G','p7'),(25,'I','p7'),(30,'I','p7'),(2,'I','p8'),(6,'I','p8'),(9,'I','p8'),(11,'I','p8'),(12,'I','p8'),(13,'I','p8'),(14,'I','p8'),(24,'G','p8'),(25,'I','p8'),(26,'I','p8'),(28,'I','p8'),(30,'I','p8'),(1,'I','p9'),(2,'I','p9'),(4,'G','p9'),(6,'G','p9'),(8,'I','p9'),(11,'G','p9'),(15,'G','p9'),(16,'G','p9'),(17,'I','p9'),(24,'G','p9'),(26,'I','p9'),(29,'G','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS116','p1'),('WSS130','p1'),('WSS134','p1'),('WSS136','p1'),('WSS137','p1'),('WSS142','p1'),('WSS148','p1'),('WSS18','p1'),('WSS184','p1'),('WSS206','p1'),('WSS22','p1'),('WSS235','p1'),('WSS236','p1'),('WSS252','p1'),('WSS274','p1'),('WSS52','p1'),('WSS56','p1'),('WSS62','p1'),('WSS78','p1'),('WSS8','p1'),('WSS95','p1'),('WSS111','p10'),('WSS114','p10'),('WSS124','p10'),('WSS156','p10'),('WSS167','p10'),('WSS175','p10'),('WSS2','p10'),('WSS200','p10'),('WSS219','p10'),('WSS233','p10'),('WSS234','p10'),('WSS241','p10'),('WSS250','p10'),('WSS253','p10'),('WSS261','p10'),('WSS280','p10'),('WSS29','p10'),('WSS294','p10'),('WSS299','p10'),('WSS34','p10'),('WSS42','p10'),('WSS7','p10'),('WSS72','p10'),('WSS77','p10'),('WSS108','p11'),('WSS126','p11'),('WSS129','p11'),('WSS153','p11'),('WSS16','p11'),('WSS160','p11'),('WSS176','p11'),('WSS179','p11'),('WSS2','p11'),('WSS222','p11'),('WSS243','p11'),('WSS246','p11'),('WSS281','p11'),('WSS295','p11'),('WSS298','p11'),('WSS299','p11'),('WSS42','p11'),('WSS43','p11'),('WSS58','p11'),('WSS72','p11'),('WSS85','p11'),('WSS14','p12'),('WSS144','p12'),('WSS147','p12'),('WSS158','p12'),('WSS190','p12'),('WSS207','p12'),('WSS225','p12'),('WSS27','p12'),('WSS300','p12'),('WSS54','p12'),('WSS87','p12'),('WSS161','p13'),('WSS162','p13'),('WSS168','p13'),('WSS177','p13'),('WSS19','p13'),('WSS200','p13'),('WSS202','p13'),('WSS226','p13'),('WSS227','p13'),('WSS235','p13'),('WSS242','p13'),('WSS48','p13'),('WSS60','p13'),('WSS100','p14'),('WSS103','p14'),('WSS127','p14'),('WSS133','p14'),('WSS172','p14'),('WSS211','p14'),('WSS215','p14'),('WSS222','p14'),('WSS229','p14'),('WSS231','p14'),('WSS240','p14'),('WSS245','p14'),('WSS25','p14'),('WSS263','p14'),('WSS275','p14'),('WSS277','p14'),('WSS37','p14'),('WSS5','p14'),('WSS6','p14'),('WSS64','p14'),('WSS67','p14'),('WSS76','p14'),('WSS82','p14'),('WSS105','p15'),('WSS125','p15'),('WSS128','p15'),('WSS15','p15'),('WSS207','p15'),('WSS212','p15'),('WSS229','p15'),('WSS239','p15'),('WSS264','p15'),('WSS295','p15'),('WSS54','p15'),('WSS77','p15'),('WSS83','p15'),('WSS92','p15'),('WSS117','p16'),('WSS131','p16'),('WSS153','p16'),('WSS154','p16'),('WSS169','p16'),('WSS178','p16'),('WSS185','p16'),('WSS187','p16'),('WSS195','p16'),('WSS208','p16'),('WSS209','p16'),('WSS210','p16'),('WSS216','p16'),('WSS223','p16'),('WSS228','p16'),('WSS244','p16'),('WSS265','p16'),('WSS267','p16'),('WSS27','p16'),('WSS273','p16'),('WSS276','p16'),('WSS289','p16'),('WSS57','p16'),('WSS66','p16'),('WSS70','p16'),('WSS91','p16'),('WSS98','p16'),('WSS106','p17'),('WSS132','p17'),('WSS184','p17'),('WSS198','p17'),('WSS221','p17'),('WSS224','p17'),('WSS248','p17'),('WSS255','p17'),('WSS259','p17'),('WSS269','p17'),('WSS270','p17'),('WSS279','p17'),('WSS285','p17'),('WSS53','p17'),('WSS59','p17'),('WSS69','p17'),('WSS79','p17'),('WSS103','p18'),('WSS121','p18'),('WSS136','p18'),('WSS149','p18'),('WSS151','p18'),('WSS152','p18'),('WSS164','p18'),('WSS174','p18'),('WSS18','p18'),('WSS181','p18'),('WSS202','p18'),('WSS228','p18'),('WSS238','p18'),('WSS24','p18'),('WSS249','p18'),('WSS257','p18'),('WSS286','p18'),('WSS32','p18'),('WSS9','p18'),('WSS92','p18'),('WSS112','p19'),('WSS117','p19'),('WSS141','p19'),('WSS154','p19'),('WSS162','p19'),('WSS170','p19'),('WSS194','p19'),('WSS201','p19'),('WSS226','p19'),('WSS25','p19'),('WSS271','p19'),('WSS283','p19'),('WSS293','p19'),('WSS46','p19'),('WSS55','p19'),('WSS63','p19'),('WSS71','p19'),('WSS78','p19'),('WSS81','p19'),('WSS90','p19'),('WSS93','p19'),('WSS104','p2'),('WSS108','p2'),('WSS13','p2'),('WSS134','p2'),('WSS150','p2'),('WSS165','p2'),('WSS171','p2'),('WSS172','p2'),('WSS189','p2'),('WSS192','p2'),('WSS23','p2'),('WSS249','p2'),('WSS254','p2'),('WSS26','p2'),('WSS292','p2'),('WSS33','p2'),('WSS86','p2'),('WSS89','p2'),('WSS120','p20'),('WSS124','p20'),('WSS13','p20'),('WSS166','p20'),('WSS171','p20'),('WSS233','p20'),('WSS234','p20'),('WSS237','p20'),('WSS247','p20'),('WSS273','p20'),('WSS278','p20'),('WSS282','p20'),('WSS288','p20'),('WSS39','p20'),('WSS47','p20'),('WSS51','p20'),('WSS76','p20'),('WSS109','p21'),('WSS113','p21'),('WSS132','p21'),('WSS146','p21'),('WSS15','p21'),('WSS173','p21'),('WSS180','p21'),('WSS188','p21'),('WSS191','p21'),('WSS205','p21'),('WSS218','p21'),('WSS230','p21'),('WSS266','p21'),('WSS267','p21'),('WSS282','p21'),('WSS292','p21'),('WSS296','p21'),('WSS36','p21'),('WSS38','p21'),('WSS41','p21'),('WSS67','p21'),('WSS69','p21'),('WSS98','p21'),('WSS116','p22'),('WSS122','p22'),('WSS138','p22'),('WSS144','p22'),('WSS178','p22'),('WSS199','p22'),('WSS216','p22'),('WSS227','p22'),('WSS237','p22'),('WSS277','p22'),('WSS287','p22'),('WSS296','p22'),('WSS83','p22'),('WSS94','p22'),('WSS115','p23'),('WSS138','p23'),('WSS145','p23'),('WSS183','p23'),('WSS205','p23'),('WSS219','p23'),('WSS221','p23'),('WSS245','p23'),('WSS26','p23'),('WSS28','p23'),('WSS284','p23'),('WSS3','p23'),('WSS30','p23'),('WSS31','p23'),('WSS39','p23'),('WSS44','p23'),('WSS49','p23'),('WSS101','p24'),('WSS107','p24'),('WSS140','p24'),('WSS159','p24'),('WSS167','p24'),('WSS170','p24'),('WSS180','p24'),('WSS185','p24'),('WSS189','p24'),('WSS20','p24'),('WSS220','p24'),('WSS242','p24'),('WSS272','p24'),('WSS276','p24'),('WSS280','p24'),('WSS281','p24'),('WSS284','p24'),('WSS286','p24'),('WSS294','p24'),('WSS297','p24'),('WSS33','p24'),('WSS4','p24'),('WSS40','p24'),('WSS45','p24'),('WSS75','p24'),('WSS80','p24'),('WSS86','p24'),('WSS1','p25'),('WSS122','p25'),('WSS123','p25'),('WSS165','p25'),('WSS182','p25'),('WSS193','p25'),('WSS203','p25'),('WSS204','p25'),('WSS220','p25'),('WSS224','p25'),('WSS265','p25'),('WSS290','p25'),('WSS32','p25'),('WSS37','p25'),('WSS43','p25'),('WSS88','p25'),('WSS10','p26'),('WSS121','p26'),('WSS127','p26'),('WSS130','p26'),('WSS159','p26'),('WSS187','p26'),('WSS194','p26'),('WSS196','p26'),('WSS250','p26'),('WSS274','p26'),('WSS30','p26'),('WSS50','p26'),('WSS55','p26'),('WSS61','p26'),('WSS63','p26'),('WSS71','p26'),('WSS81','p26'),('WSS1','p27'),('WSS101','p27'),('WSS102','p27'),('WSS106','p27'),('WSS110','p27'),('WSS119','p27'),('WSS139','p27'),('WSS146','p27'),('WSS177','p27'),('WSS203','p27'),('WSS21','p27'),('WSS213','p27'),('WSS256','p27'),('WSS262','p27'),('WSS264','p27'),('WSS271','p27'),('WSS34','p27'),('WSS35','p27'),('WSS75','p27'),('WSS95','p27'),('WSS11','p28'),('WSS148','p28'),('WSS151','p28'),('WSS16','p28'),('WSS198','p28'),('WSS225','p28'),('WSS232','p28'),('WSS236','p28'),('WSS246','p28'),('WSS254','p28'),('WSS258','p28'),('WSS263','p28'),('WSS291','p28'),('WSS297','p28'),('WSS41','p28'),('WSS65','p28'),('WSS85','p28'),('WSS94','p28'),('WSS96','p28'),('WSS131','p29'),('WSS133','p29'),('WSS141','p29'),('WSS163','p29'),('WSS181','p29'),('WSS186','p29'),('WSS188','p29'),('WSS209','p29'),('WSS211','p29'),('WSS212','p29'),('WSS241','p29'),('WSS251','p29'),('WSS255','p29'),('WSS275','p29'),('WSS285','p29'),('WSS298','p29'),('WSS47','p29'),('WSS48','p29'),('WSS53','p29'),('WSS7','p29'),('WSS91','p29'),('WSS10','p3'),('WSS112','p3'),('WSS120','p3'),('WSS125','p3'),('WSS163','p3'),('WSS173','p3'),('WSS176','p3'),('WSS183','p3'),('WSS196','p3'),('WSS248','p3'),('WSS260','p3'),('WSS269','p3'),('WSS278','p3'),('WSS28','p3'),('WSS29','p3'),('WSS4','p3'),('WSS44','p3'),('WSS46','p3'),('WSS99','p3'),('WSS160','p30'),('WSS17','p30'),('WSS182','p30'),('WSS230','p30'),('WSS243','p30'),('WSS252','p30'),('WSS257','p30'),('WSS279','p30'),('WSS283','p30'),('WSS40','p30'),('WSS60','p30'),('WSS65','p30'),('WSS68','p30'),('WSS74','p30'),('WSS88','p30'),('WSS90','p30'),('WSS115','p4'),('WSS118','p4'),('WSS168','p4'),('WSS186','p4'),('WSS214','p4'),('WSS239','p4'),('WSS288','p4'),('WSS52','p4'),('WSS57','p4'),('WSS58','p4'),('WSS82','p4'),('WSS84','p4'),('WSS97','p4'),('WSS11','p5'),('WSS118','p5'),('WSS119','p5'),('WSS150','p5'),('WSS152','p5'),('WSS156','p5'),('WSS174','p5'),('WSS191','p5'),('WSS192','p5'),('WSS208','p5'),('WSS22','p5'),('WSS244','p5'),('WSS253','p5'),('WSS262','p5'),('WSS272','p5'),('WSS66','p5'),('WSS68','p5'),('WSS9','p5'),('WSS107','p6'),('WSS109','p6'),('WSS114','p6'),('WSS137','p6'),('WSS139','p6'),('WSS143','p6'),('WSS155','p6'),('WSS17','p6'),('WSS19','p6'),('WSS197','p6'),('WSS206','p6'),('WSS214','p6'),('WSS217','p6'),('WSS223','p6'),('WSS256','p6'),('WSS268','p6'),('WSS290','p6'),('WSS31','p6'),('WSS35','p6'),('WSS6','p6'),('WSS61','p6'),('WSS79','p6'),('WSS80','p6'),('WSS89','p6'),('WSS99','p6'),('WSS12','p7'),('WSS123','p7'),('WSS126','p7'),('WSS128','p7'),('WSS129','p7'),('WSS14','p7'),('WSS157','p7'),('WSS161','p7'),('WSS166','p7'),('WSS193','p7'),('WSS195','p7'),('WSS204','p7'),('WSS21','p7'),('WSS240','p7'),('WSS251','p7'),('WSS258','p7'),('WSS291','p7'),('WSS293','p7'),('WSS38','p7'),('WSS51','p7'),('WSS56','p7'),('WSS59','p7'),('WSS62','p7'),('WSS73','p7'),('WSS100','p8'),('WSS104','p8'),('WSS135','p8'),('WSS143','p8'),('WSS147','p8'),('WSS158','p8'),('WSS164','p8'),('WSS175','p8'),('WSS190','p8'),('WSS197','p8'),('WSS199','p8'),('WSS201','p8'),('WSS213','p8'),('WSS218','p8'),('WSS231','p8'),('WSS24','p8'),('WSS259','p8'),('WSS260','p8'),('WSS261','p8'),('WSS270','p8'),('WSS289','p8'),('WSS5','p8'),('WSS70','p8'),('WSS8','p8'),('WSS84','p8'),('WSS96','p8'),('WSS105','p9'),('WSS111','p9'),('WSS113','p9'),('WSS12','p9'),('WSS135','p9'),('WSS140','p9'),('WSS142','p9'),('WSS149','p9'),('WSS155','p9'),('WSS169','p9'),('WSS179','p9'),('WSS210','p9'),('WSS215','p9'),('WSS217','p9'),('WSS23','p9'),('WSS238','p9'),('WSS266','p9'),('WSS268','p9'),('WSS287','p9'),('WSS3','p9'),('WSS300','p9'),('WSS36','p9'),('WSS45','p9'),('WSS49','p9'),('WSS64','p9'),('WSS73','p9'),('WSS87','p9'),('WSS97','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS114','p1'),('WSS128','p1'),('WSS135','p1'),('WSS139','p1'),('WSS144','p1'),('WSS161','p1'),('WSS166','p1'),('WSS173','p1'),('WSS188','p1'),('WSS210','p1'),('WSS216','p1'),('WSS217','p1'),('WSS236','p1'),('WSS239','p1'),('WSS25','p1'),('WSS250','p1'),('WSS259','p1'),('WSS262','p1'),('WSS264','p1'),('WSS267','p1'),('WSS270','p1'),('WSS271','p1'),('WSS274','p1'),('WSS279','p1'),('WSS31','p1'),('WSS35','p1'),('WSS4','p1'),('WSS47','p1'),('WSS5','p1'),('WSS57','p1'),('WSS59','p1'),('WSS6','p1'),('WSS75','p1'),('WSS8','p1'),('WSS87','p1'),('WSS94','p1'),('WSS104','p10'),('WSS110','p10'),('WSS119','p10'),('WSS123','p10'),('WSS133','p10'),('WSS14','p10'),('WSS147','p10'),('WSS155','p10'),('WSS158','p10'),('WSS165','p10'),('WSS176','p10'),('WSS179','p10'),('WSS183','p10'),('WSS202','p10'),('WSS204','p10'),('WSS206','p10'),('WSS211','p10'),('WSS217','p10'),('WSS220','p10'),('WSS239','p10'),('WSS243','p10'),('WSS247','p10'),('WSS255','p10'),('WSS264','p10'),('WSS270','p10'),('WSS288','p10'),('WSS295','p10'),('WSS299','p10'),('WSS34','p10'),('WSS36','p10'),('WSS37','p10'),('WSS38','p10'),('WSS44','p10'),('WSS52','p10'),('WSS66','p10'),('WSS72','p10'),('WSS73','p10'),('WSS82','p10'),('WSS92','p10'),('WSS105','p11'),('WSS106','p11'),('WSS108','p11'),('WSS137','p11'),('WSS140','p11'),('WSS143','p11'),('WSS15','p11'),('WSS152','p11'),('WSS153','p11'),('WSS156','p11'),('WSS160','p11'),('WSS176','p11'),('WSS179','p11'),('WSS182','p11'),('WSS189','p11'),('WSS192','p11'),('WSS213','p11'),('WSS233','p11'),('WSS24','p11'),('WSS245','p11'),('WSS253','p11'),('WSS256','p11'),('WSS257','p11'),('WSS4','p11'),('WSS50','p11'),('WSS51','p11'),('WSS64','p11'),('WSS79','p11'),('WSS8','p11'),('WSS90','p11'),('WSS96','p11'),('WSS102','p12'),('WSS105','p12'),('WSS106','p12'),('WSS116','p12'),('WSS118','p12'),('WSS129','p12'),('WSS131','p12'),('WSS136','p12'),('WSS143','p12'),('WSS150','p12'),('WSS162','p12'),('WSS17','p12'),('WSS171','p12'),('WSS173','p12'),('WSS177','p12'),('WSS180','p12'),('WSS188','p12'),('WSS192','p12'),('WSS195','p12'),('WSS203','p12'),('WSS228','p12'),('WSS229','p12'),('WSS23','p12'),('WSS234','p12'),('WSS235','p12'),('WSS239','p12'),('WSS244','p12'),('WSS260','p12'),('WSS263','p12'),('WSS265','p12'),('WSS278','p12'),('WSS288','p12'),('WSS35','p12'),('WSS43','p12'),('WSS48','p12'),('WSS54','p12'),('WSS62','p12'),('WSS73','p12'),('WSS74','p12'),('WSS79','p12'),('WSS93','p12'),('WSS103','p13'),('WSS121','p13'),('WSS122','p13'),('WSS136','p13'),('WSS140','p13'),('WSS143','p13'),('WSS145','p13'),('WSS15','p13'),('WSS153','p13'),('WSS163','p13'),('WSS167','p13'),('WSS174','p13'),('WSS178','p13'),('WSS184','p13'),('WSS19','p13'),('WSS192','p13'),('WSS195','p13'),('WSS196','p13'),('WSS198','p13'),('WSS20','p13'),('WSS216','p13'),('WSS227','p13'),('WSS233','p13'),('WSS242','p13'),('WSS247','p13'),('WSS251','p13'),('WSS254','p13'),('WSS268','p13'),('WSS272','p13'),('WSS275','p13'),('WSS283','p13'),('WSS287','p13'),('WSS295','p13'),('WSS297','p13'),('WSS33','p13'),('WSS36','p13'),('WSS39','p13'),('WSS46','p13'),('WSS70','p13'),('WSS86','p13'),('WSS90','p13'),('WSS101','p14'),('WSS112','p14'),('WSS122','p14'),('WSS133','p14'),('WSS138','p14'),('WSS142','p14'),('WSS148','p14'),('WSS149','p14'),('WSS162','p14'),('WSS164','p14'),('WSS167','p14'),('WSS168','p14'),('WSS171','p14'),('WSS175','p14'),('WSS182','p14'),('WSS183','p14'),('WSS2','p14'),('WSS201','p14'),('WSS205','p14'),('WSS206','p14'),('WSS213','p14'),('WSS215','p14'),('WSS219','p14'),('WSS223','p14'),('WSS23','p14'),('WSS233','p14'),('WSS235','p14'),('WSS242','p14'),('WSS260','p14'),('WSS261','p14'),('WSS263','p14'),('WSS283','p14'),('WSS284','p14'),('WSS34','p14'),('WSS58','p14'),('WSS68','p14'),('WSS70','p14'),('WSS74','p14'),('WSS8','p14'),('WSS91','p14'),('WSS93','p14'),('WSS98','p14'),('WSS112','p15'),('WSS115','p15'),('WSS125','p15'),('WSS128','p15'),('WSS132','p15'),('WSS133','p15'),('WSS137','p15'),('WSS14','p15'),('WSS149','p15'),('WSS151','p15'),('WSS154','p15'),('WSS16','p15'),('WSS169','p15'),('WSS175','p15'),('WSS183','p15'),('WSS190','p15'),('WSS2','p15'),('WSS208','p15'),('WSS210','p15'),('WSS215','p15'),('WSS23','p15'),('WSS232','p15'),('WSS241','p15'),('WSS259','p15'),('WSS262','p15'),('WSS266','p15'),('WSS269','p15'),('WSS272','p15'),('WSS28','p15'),('WSS292','p15'),('WSS296','p15'),('WSS298','p15'),('WSS35','p15'),('WSS49','p15'),('WSS52','p15'),('WSS65','p15'),('WSS67','p15'),('WSS76','p15'),('WSS77','p15'),('WSS81','p15'),('WSS83','p15'),('WSS86','p15'),('WSS93','p15'),('WSS97','p15'),('WSS11','p16'),('WSS112','p16'),('WSS120','p16'),('WSS122','p16'),('WSS124','p16'),('WSS129','p16'),('WSS130','p16'),('WSS136','p16'),('WSS178','p16'),('WSS194','p16'),('WSS200','p16'),('WSS208','p16'),('WSS214','p16'),('WSS225','p16'),('WSS226','p16'),('WSS227','p16'),('WSS244','p16'),('WSS264','p16'),('WSS265','p16'),('WSS274','p16'),('WSS275','p16'),('WSS295','p16'),('WSS296','p16'),('WSS300','p16'),('WSS34','p16'),('WSS36','p16'),('WSS39','p16'),('WSS55','p16'),('WSS68','p16'),('WSS76','p16'),('WSS82','p16'),('WSS84','p16'),('WSS10','p17'),('WSS102','p17'),('WSS108','p17'),('WSS109','p17'),('WSS113','p17'),('WSS12','p17'),('WSS125','p17'),('WSS127','p17'),('WSS144','p17'),('WSS146','p17'),('WSS163','p17'),('WSS164','p17'),('WSS185','p17'),('WSS188','p17'),('WSS191','p17'),('WSS201','p17'),('WSS21','p17'),('WSS223','p17'),('WSS230','p17'),('WSS248','p17'),('WSS268','p17'),('WSS271','p17'),('WSS277','p17'),('WSS28','p17'),('WSS281','p17'),('WSS285','p17'),('WSS297','p17'),('WSS299','p17'),('WSS33','p17'),('WSS34','p17'),('WSS39','p17'),('WSS50','p17'),('WSS53','p17'),('WSS57','p17'),('WSS58','p17'),('WSS60','p17'),('WSS67','p17'),('WSS71','p17'),('WSS78','p17'),('WSS9','p17'),('WSS98','p17'),('WSS111','p18'),('WSS113','p18'),('WSS118','p18'),('WSS123','p18'),('WSS143','p18'),('WSS177','p18'),('WSS189','p18'),('WSS20','p18'),('WSS205','p18'),('WSS218','p18'),('WSS219','p18'),('WSS230','p18'),('WSS239','p18'),('WSS240','p18'),('WSS262','p18'),('WSS264','p18'),('WSS266','p18'),('WSS27','p18'),('WSS276','p18'),('WSS279','p18'),('WSS30','p18'),('WSS300','p18'),('WSS41','p18'),('WSS43','p18'),('WSS48','p18'),('WSS51','p18'),('WSS7','p18'),('WSS72','p18'),('WSS75','p18'),('WSS79','p18'),('WSS80','p18'),('WSS82','p18'),('WSS92','p18'),('WSS94','p18'),('WSS1','p19'),('WSS10','p19'),('WSS109','p19'),('WSS117','p19'),('WSS119','p19'),('WSS121','p19'),('WSS126','p19'),('WSS127','p19'),('WSS130','p19'),('WSS137','p19'),('WSS138','p19'),('WSS142','p19'),('WSS145','p19'),('WSS149','p19'),('WSS154','p19'),('WSS162','p19'),('WSS163','p19'),('WSS165','p19'),('WSS178','p19'),('WSS193','p19'),('WSS197','p19'),('WSS205','p19'),('WSS208','p19'),('WSS222','p19'),('WSS223','p19'),('WSS224','p19'),('WSS230','p19'),('WSS233','p19'),('WSS252','p19'),('WSS261','p19'),('WSS29','p19'),('WSS290','p19'),('WSS293','p19'),('WSS297','p19'),('WSS37','p19'),('WSS42','p19'),('WSS48','p19'),('WSS66','p19'),('WSS77','p19'),('WSS84','p19'),('WSS85','p19'),('WSS95','p19'),('WSS99','p19'),('WSS100','p2'),('WSS11','p2'),('WSS14','p2'),('WSS160','p2'),('WSS164','p2'),('WSS178','p2'),('WSS179','p2'),('WSS180','p2'),('WSS182','p2'),('WSS196','p2'),('WSS227','p2'),('WSS24','p2'),('WSS25','p2'),('WSS257','p2'),('WSS26','p2'),('WSS269','p2'),('WSS279','p2'),('WSS28','p2'),('WSS280','p2'),('WSS282','p2'),('WSS284','p2'),('WSS285','p2'),('WSS286','p2'),('WSS289','p2'),('WSS291','p2'),('WSS31','p2'),('WSS45','p2'),('WSS60','p2'),('WSS61','p2'),('WSS69','p2'),('WSS73','p2'),('WSS92','p2'),('WSS99','p2'),('WSS115','p20'),('WSS116','p20'),('WSS12','p20'),('WSS120','p20'),('WSS125','p20'),('WSS126','p20'),('WSS13','p20'),('WSS137','p20'),('WSS139','p20'),('WSS155','p20'),('WSS156','p20'),('WSS16','p20'),('WSS167','p20'),('WSS169','p20'),('WSS181','p20'),('WSS19','p20'),('WSS198','p20'),('WSS214','p20'),('WSS228','p20'),('WSS231','p20'),('WSS236','p20'),('WSS240','p20'),('WSS247','p20'),('WSS26','p20'),('WSS261','p20'),('WSS266','p20'),('WSS268','p20'),('WSS278','p20'),('WSS29','p20'),('WSS3','p20'),('WSS47','p20'),('WSS50','p20'),('WSS66','p20'),('WSS72','p20'),('WSS74','p20'),('WSS78','p20'),('WSS85','p20'),('WSS91','p20'),('WSS93','p20'),('WSS96','p20'),('WSS97','p20'),('WSS101','p21'),('WSS12','p21'),('WSS120','p21'),('WSS122','p21'),('WSS133','p21'),('WSS136','p21'),('WSS146','p21'),('WSS147','p21'),('WSS152','p21'),('WSS154','p21'),('WSS185','p21'),('WSS190','p21'),('WSS193','p21'),('WSS196','p21'),('WSS209','p21'),('WSS212','p21'),('WSS214','p21'),('WSS222','p21'),('WSS242','p21'),('WSS244','p21'),('WSS257','p21'),('WSS258','p21'),('WSS26','p21'),('WSS277','p21'),('WSS285','p21'),('WSS286','p21'),('WSS289','p21'),('WSS292','p21'),('WSS295','p21'),('WSS42','p21'),('WSS62','p21'),('WSS68','p21'),('WSS69','p21'),('WSS70','p21'),('WSS71','p21'),('WSS72','p21'),('WSS74','p21'),('WSS76','p21'),('WSS78','p21'),('WSS84','p21'),('WSS89','p21'),('WSS96','p21'),('WSS102','p22'),('WSS103','p22'),('WSS106','p22'),('WSS109','p22'),('WSS113','p22'),('WSS121','p22'),('WSS158','p22'),('WSS172','p22'),('WSS174','p22'),('WSS180','p22'),('WSS186','p22'),('WSS193','p22'),('WSS196','p22'),('WSS218','p22'),('WSS225','p22'),('WSS231','p22'),('WSS232','p22'),('WSS24','p22'),('WSS263','p22'),('WSS291','p22'),('WSS30','p22'),('WSS61','p22'),('WSS63','p22'),('WSS7','p22'),('WSS8','p22'),('WSS83','p22'),('WSS88','p22'),('WSS95','p22'),('WSS96','p22'),('WSS116','p23'),('WSS13','p23'),('WSS135','p23'),('WSS138','p23'),('WSS141','p23'),('WSS15','p23'),('WSS152','p23'),('WSS154','p23'),('WSS158','p23'),('WSS161','p23'),('WSS167','p23'),('WSS177','p23'),('WSS180','p23'),('WSS186','p23'),('WSS187','p23'),('WSS199','p23'),('WSS219','p23'),('WSS226','p23'),('WSS227','p23'),('WSS240','p23'),('WSS244','p23'),('WSS249','p23'),('WSS255','p23'),('WSS29','p23'),('WSS296','p23'),('WSS39','p23'),('WSS49','p23'),('WSS56','p23'),('WSS60','p23'),('WSS7','p23'),('WSS87','p23'),('WSS89','p23'),('WSS90','p23'),('WSS98','p23'),('WSS108','p24'),('WSS126','p24'),('WSS129','p24'),('WSS141','p24'),('WSS159','p24'),('WSS164','p24'),('WSS170','p24'),('WSS172','p24'),('WSS176','p24'),('WSS18','p24'),('WSS188','p24'),('WSS194','p24'),('WSS195','p24'),('WSS209','p24'),('WSS210','p24'),('WSS212','p24'),('WSS215','p24'),('WSS216','p24'),('WSS220','p24'),('WSS237','p24'),('WSS24','p24'),('WSS246','p24'),('WSS250','p24'),('WSS260','p24'),('WSS261','p24'),('WSS271','p24'),('WSS277','p24'),('WSS281','p24'),('WSS282','p24'),('WSS286','p24'),('WSS298','p24'),('WSS4','p24'),('WSS40','p24'),('WSS57','p24'),('WSS6','p24'),('WSS81','p24'),('WSS9','p24'),('WSS92','p24'),('WSS101','p25'),('WSS104','p25'),('WSS123','p25'),('WSS132','p25'),('WSS14','p25'),('WSS146','p25'),('WSS151','p25'),('WSS157','p25'),('WSS16','p25'),('WSS160','p25'),('WSS17','p25'),('WSS175','p25'),('WSS185','p25'),('WSS195','p25'),('WSS197','p25'),('WSS204','p25'),('WSS211','p25'),('WSS22','p25'),('WSS222','p25'),('WSS25','p25'),('WSS26','p25'),('WSS297','p25'),('WSS31','p25'),('WSS36','p25'),('WSS46','p25'),('WSS5','p25'),('WSS52','p25'),('WSS53','p25'),('WSS54','p25'),('WSS58','p25'),('WSS59','p25'),('WSS6','p25'),('WSS80','p25'),('WSS90','p25'),('WSS97','p25'),('WSS111','p26'),('WSS124','p26'),('WSS131','p26'),('WSS155','p26'),('WSS163','p26'),('WSS172','p26'),('WSS181','p26'),('WSS183','p26'),('WSS199','p26'),('WSS200','p26'),('WSS202','p26'),('WSS205','p26'),('WSS208','p26'),('WSS209','p26'),('WSS221','p26'),('WSS225','p26'),('WSS234','p26'),('WSS236','p26'),('WSS237','p26'),('WSS238','p26'),('WSS245','p26'),('WSS249','p26'),('WSS252','p26'),('WSS254','p26'),('WSS257','p26'),('WSS259','p26'),('WSS271','p26'),('WSS276','p26'),('WSS283','p26'),('WSS285','p26'),('WSS294','p26'),('WSS38','p26'),('WSS43','p26'),('WSS47','p26'),('WSS5','p26'),('WSS51','p26'),('WSS55','p26'),('WSS75','p26'),('WSS86','p26'),('WSS89','p26'),('WSS1','p27'),('WSS103','p27'),('WSS111','p27'),('WSS114','p27'),('WSS121','p27'),('WSS123','p27'),('WSS134','p27'),('WSS142','p27'),('WSS17','p27'),('WSS173','p27'),('WSS175','p27'),('WSS18','p27'),('WSS2','p27'),('WSS201','p27'),('WSS21','p27'),('WSS218','p27'),('WSS228','p27'),('WSS229','p27'),('WSS23','p27'),('WSS238','p27'),('WSS241','p27'),('WSS246','p27'),('WSS252','p27'),('WSS260','p27'),('WSS274','p27'),('WSS28','p27'),('WSS280','p27'),('WSS282','p27'),('WSS287','p27'),('WSS290','p27'),('WSS293','p27'),('WSS3','p27'),('WSS31','p27'),('WSS38','p27'),('WSS40','p27'),('WSS41','p27'),('WSS43','p27'),('WSS95','p27'),('WSS103','p28'),('WSS104','p28'),('WSS105','p28'),('WSS110','p28'),('WSS113','p28'),('WSS128','p28'),('WSS139','p28'),('WSS145','p28'),('WSS147','p28'),('WSS152','p28'),('WSS156','p28'),('WSS159','p28'),('WSS168','p28'),('WSS171','p28'),('WSS192','p28'),('WSS225','p28'),('WSS237','p28'),('WSS255','p28'),('WSS267','p28'),('WSS281','p28'),('WSS29','p28'),('WSS291','p28'),('WSS32','p28'),('WSS41','p28'),('WSS44','p28'),('WSS45','p28'),('WSS49','p28'),('WSS56','p28'),('WSS65','p28'),('WSS69','p28'),('WSS80','p28'),('WSS81','p28'),('WSS88','p28'),('WSS9','p28'),('WSS91','p28'),('WSS97','p28'),('WSS1','p29'),('WSS10','p29'),('WSS100','p29'),('WSS102','p29'),('WSS107','p29'),('WSS109','p29'),('WSS116','p29'),('WSS117','p29'),('WSS118','p29'),('WSS12','p29'),('WSS140','p29'),('WSS150','p29'),('WSS151','p29'),('WSS166','p29'),('WSS170','p29'),('WSS189','p29'),('WSS20','p29'),('WSS211','p29'),('WSS221','p29'),('WSS222','p29'),('WSS226','p29'),('WSS231','p29'),('WSS249','p29'),('WSS253','p29'),('WSS270','p29'),('WSS273','p29'),('WSS276','p29'),('WSS279','p29'),('WSS280','p29'),('WSS288','p29'),('WSS37','p29'),('WSS40','p29'),('WSS47','p29'),('WSS63','p29'),('WSS65','p29'),('WSS70','p29'),('WSS83','p29'),('WSS106','p3'),('WSS107','p3'),('WSS13','p3'),('WSS130','p3'),('WSS132','p3'),('WSS141','p3'),('WSS151','p3'),('WSS169','p3'),('WSS170','p3'),('WSS174','p3'),('WSS193','p3'),('WSS197','p3'),('WSS198','p3'),('WSS204','p3'),('WSS206','p3'),('WSS207','p3'),('WSS21','p3'),('WSS212','p3'),('WSS220','p3'),('WSS224','p3'),('WSS248','p3'),('WSS253','p3'),('WSS272','p3'),('WSS275','p3'),('WSS281','p3'),('WSS288','p3'),('WSS289','p3'),('WSS296','p3'),('WSS35','p3'),('WSS45','p3'),('WSS6','p3'),('WSS64','p3'),('WSS86','p3'),('WSS88','p3'),('WSS110','p30'),('WSS114','p30'),('WSS117','p30'),('WSS129','p30'),('WSS134','p30'),('WSS148','p30'),('WSS156','p30'),('WSS159','p30'),('WSS166','p30'),('WSS187','p30'),('WSS19','p30'),('WSS191','p30'),('WSS194','p30'),('WSS206','p30'),('WSS22','p30'),('WSS224','p30'),('WSS226','p30'),('WSS245','p30'),('WSS251','p30'),('WSS27','p30'),('WSS280','p30'),('WSS282','p30'),('WSS283','p30'),('WSS292','p30'),('WSS294','p30'),('WSS298','p30'),('WSS299','p30'),('WSS3','p30'),('WSS300','p30'),('WSS42','p30'),('WSS49','p30'),('WSS53','p30'),('WSS55','p30'),('WSS58','p30'),('WSS63','p30'),('WSS66','p30'),('WSS67','p30'),('WSS87','p30'),('WSS89','p30'),('WSS94','p30'),('WSS95','p30'),('WSS100','p4'),('WSS111','p4'),('WSS125','p4'),('WSS131','p4'),('WSS153','p4'),('WSS155','p4'),('WSS160','p4'),('WSS165','p4'),('WSS168','p4'),('WSS18','p4'),('WSS181','p4'),('WSS184','p4'),('WSS186','p4'),('WSS187','p4'),('WSS19','p4'),('WSS191','p4'),('WSS201','p4'),('WSS213','p4'),('WSS220','p4'),('WSS221','p4'),('WSS224','p4'),('WSS232','p4'),('WSS234','p4'),('WSS236','p4'),('WSS241','p4'),('WSS243','p4'),('WSS246','p4'),('WSS248','p4'),('WSS249','p4'),('WSS250','p4'),('WSS251','p4'),('WSS258','p4'),('WSS268','p4'),('WSS27','p4'),('WSS272','p4'),('WSS273','p4'),('WSS274','p4'),('WSS275','p4'),('WSS276','p4'),('WSS299','p4'),('WSS30','p4'),('WSS37','p4'),('WSS41','p4'),('WSS48','p4'),('WSS53','p4'),('WSS59','p4'),('WSS62','p4'),('WSS63','p4'),('WSS68','p4'),('WSS77','p4'),('WSS85','p4'),('WSS127','p5'),('WSS130','p5'),('WSS141','p5'),('WSS153','p5'),('WSS158','p5'),('WSS159','p5'),('WSS161','p5'),('WSS166','p5'),('WSS170','p5'),('WSS177','p5'),('WSS179','p5'),('WSS186','p5'),('WSS20','p5'),('WSS209','p5'),('WSS21','p5'),('WSS213','p5'),('WSS216','p5'),('WSS219','p5'),('WSS232','p5'),('WSS253','p5'),('WSS267','p5'),('WSS278','p5'),('WSS284','p5'),('WSS33','p5'),('WSS38','p5'),('WSS42','p5'),('WSS62','p5'),('WSS69','p5'),('WSS78','p5'),('WSS85','p5'),('WSS99','p5'),('WSS1','p6'),('WSS107','p6'),('WSS108','p6'),('WSS126','p6'),('WSS128','p6'),('WSS132','p6'),('WSS139','p6'),('WSS140','p6'),('WSS144','p6'),('WSS145','p6'),('WSS148','p6'),('WSS15','p6'),('WSS150','p6'),('WSS157','p6'),('WSS171','p6'),('WSS172','p6'),('WSS176','p6'),('WSS182','p6'),('WSS184','p6'),('WSS194','p6'),('WSS199','p6'),('WSS203','p6'),('WSS207','p6'),('WSS211','p6'),('WSS217','p6'),('WSS228','p6'),('WSS229','p6'),('WSS234','p6'),('WSS235','p6'),('WSS240','p6'),('WSS248','p6'),('WSS250','p6'),('WSS251','p6'),('WSS259','p6'),('WSS266','p6'),('WSS287','p6'),('WSS293','p6'),('WSS294','p6'),('WSS298','p6'),('WSS45','p6'),('WSS60','p6'),('WSS64','p6'),('WSS83','p6'),('WSS91','p6'),('WSS98','p6'),('WSS99','p6'),('WSS10','p7'),('WSS100','p7'),('WSS104','p7'),('WSS11','p7'),('WSS112','p7'),('WSS115','p7'),('WSS13','p7'),('WSS131','p7'),('WSS134','p7'),('WSS135','p7'),('WSS146','p7'),('WSS16','p7'),('WSS169','p7'),('WSS17','p7'),('WSS184','p7'),('WSS189','p7'),('WSS191','p7'),('WSS2','p7'),('WSS204','p7'),('WSS207','p7'),('WSS238','p7'),('WSS243','p7'),('WSS245','p7'),('WSS246','p7'),('WSS256','p7'),('WSS267','p7'),('WSS273','p7'),('WSS277','p7'),('WSS278','p7'),('WSS291','p7'),('WSS44','p7'),('WSS50','p7'),('WSS56','p7'),('WSS67','p7'),('WSS76','p7'),('WSS77','p7'),('WSS107','p8'),('WSS110','p8'),('WSS117','p8'),('WSS119','p8'),('WSS127','p8'),('WSS134','p8'),('WSS135','p8'),('WSS144','p8'),('WSS147','p8'),('WSS162','p8'),('WSS165','p8'),('WSS181','p8'),('WSS187','p8'),('WSS190','p8'),('WSS198','p8'),('WSS200','p8'),('WSS202','p8'),('WSS210','p8'),('WSS212','p8'),('WSS214','p8'),('WSS237','p8'),('WSS243','p8'),('WSS247','p8'),('WSS252','p8'),('WSS258','p8'),('WSS265','p8'),('WSS269','p8'),('WSS289','p8'),('WSS290','p8'),('WSS300','p8'),('WSS32','p8'),('WSS33','p8'),('WSS46','p8'),('WSS5','p8'),('WSS59','p8'),('WSS61','p8'),('WSS65','p8'),('WSS71','p8'),('WSS84','p8'),('WSS87','p8'),('WSS88','p8'),('WSS101','p9'),('WSS115','p9'),('WSS119','p9'),('WSS120','p9'),('WSS148','p9'),('WSS149','p9'),('WSS161','p9'),('WSS168','p9'),('WSS174','p9'),('WSS18','p9'),('WSS217','p9'),('WSS22','p9'),('WSS221','p9'),('WSS230','p9'),('WSS231','p9'),('WSS235','p9'),('WSS238','p9'),('WSS25','p9'),('WSS254','p9'),('WSS256','p9'),('WSS262','p9'),('WSS269','p9'),('WSS284','p9'),('WSS287','p9'),('WSS293','p9'),('WSS294','p9'),('WSS3','p9'),('WSS32','p9'),('WSS40','p9'),('WSS44','p9'),('WSS54','p9'),('WSS55','p9'),('WSS61','p9'),('WSS64','p9'),('WSS71','p9'),('WSS75','p9'),('WSS81','p9'),('WSS82','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS43'),(1,2,'WSS89'),(1,3,'WSS41'),(2,1,'WSS107'),(2,2,'WSS24'),(2,3,'WSS83'),(3,1,'WSS12'),(3,1,'WSS152'),(3,2,'WSS71'),(4,1,'WSS179'),(4,2,'WSS80'),(4,3,'WSS50'),(5,1,'WSS77'),(5,2,'WSS188'),(5,3,'WSS89'),(6,1,'WSS43'),(6,2,'WSS97'),(7,1,'WSS104'),(7,1,'WSS46'),(8,1,'WSS170'),(8,2,'WSS87'),(8,3,'WSS99'),(9,1,'WSS185'),(9,2,'WSS174'),(9,2,'WSS24'),(10,1,'WSS181'),(10,2,'WSS26'),(10,3,'WSS185'),(10,4,'WSS13'),(11,1,'WSS74'),(11,2,'WSS83'),(11,3,'WSS160'),(12,1,'WSS100'),(12,2,'WSS11'),(12,3,'WSS26'),(13,1,'WSS11'),(13,2,'WSS100'),(13,3,'WSS26'),(14,1,'WSS91'),(14,2,'WSS188'),(14,3,'WSS195'),(14,4,'WSS100'),(15,1,'WSS8'),(15,2,'WSS145'),(15,3,'WSS164'),(16,1,'WSS165'),(16,2,'WSS22'),(16,3,'WSS162'),(17,1,'WSS87'),(17,2,'WSS150'),(18,1,'WSS156'),(18,2,'WSS99'),(18,3,'WSS10'),(19,1,'WSS94'),(19,2,'WSS90'),(19,3,'WSS92'),(20,1,'WSS165'),(20,2,'WSS95'),(20,3,'WSS3'),(21,1,'WSS166'),(21,2,'WSS90'),(22,1,'WSS39'),(22,2,'WSS44'),(23,1,'WSS109'),(23,1,'WSS83'),(23,2,'WSS12'),(24,1,'WSS189'),(24,2,'WSS197'),(24,3,'WSS167'),(25,1,'WSS77'),(25,2,'WSS173'),(26,1,'WSS115'),(26,2,'WSS67'),(27,1,'WSS181'),(27,1,'WSS56'),(28,1,'WSS176'),(28,1,'WSS180'),(28,2,'WSS177'),(29,1,'WSS77'),(29,2,'WSS104'),(29,2,'WSS185'),(30,1,'WSS179'),(30,1,'WSS95'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-07-05 23:26:05
