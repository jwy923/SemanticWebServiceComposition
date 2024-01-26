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
INSERT INTO `initialgoalparameter` VALUES (1,'G','p1'),(3,'I','p1'),(8,'I','p1'),(9,'I','p1'),(10,'I','p1'),(14,'I','p1'),(19,'G','p1'),(22,'I','p1'),(24,'I','p1'),(25,'G','p1'),(28,'I','p1'),(2,'I','p10'),(4,'G','p10'),(5,'I','p10'),(6,'I','p10'),(9,'I','p10'),(13,'I','p10'),(14,'I','p10'),(15,'I','p10'),(19,'I','p10'),(20,'I','p10'),(21,'I','p10'),(23,'I','p10'),(26,'G','p10'),(30,'G','p10'),(4,'I','p11'),(5,'I','p11'),(8,'G','p11'),(10,'I','p11'),(11,'I','p11'),(14,'G','p11'),(15,'I','p11'),(16,'I','p11'),(21,'I','p11'),(22,'I','p11'),(27,'G','p11'),(2,'I','p12'),(3,'G','p12'),(5,'I','p12'),(8,'G','p12'),(10,'G','p12'),(12,'I','p12'),(13,'I','p12'),(14,'I','p12'),(15,'I','p12'),(17,'G','p12'),(19,'I','p12'),(29,'I','p12'),(30,'I','p12'),(1,'I','p13'),(2,'G','p13'),(4,'G','p13'),(6,'I','p13'),(9,'G','p13'),(12,'G','p13'),(13,'I','p13'),(14,'I','p13'),(19,'I','p13'),(20,'G','p13'),(23,'I','p13'),(27,'I','p13'),(1,'I','p14'),(2,'G','p14'),(4,'I','p14'),(5,'I','p14'),(6,'I','p14'),(7,'I','p14'),(8,'I','p14'),(11,'I','p14'),(12,'G','p14'),(18,'I','p14'),(19,'I','p14'),(21,'G','p14'),(23,'G','p14'),(25,'I','p14'),(27,'I','p14'),(29,'I','p14'),(30,'G','p14'),(1,'I','p15'),(7,'G','p15'),(8,'I','p15'),(10,'I','p15'),(12,'I','p15'),(13,'I','p15'),(16,'I','p15'),(18,'I','p15'),(20,'I','p15'),(22,'G','p15'),(26,'I','p15'),(28,'G','p15'),(29,'I','p15'),(2,'I','p16'),(3,'G','p16'),(4,'I','p16'),(7,'I','p16'),(11,'G','p16'),(13,'I','p16'),(15,'I','p16'),(16,'G','p16'),(17,'I','p16'),(19,'I','p16'),(22,'G','p16'),(24,'I','p16'),(1,'G','p17'),(2,'I','p17'),(4,'I','p17'),(7,'G','p17'),(9,'I','p17'),(10,'G','p17'),(16,'I','p17'),(18,'G','p17'),(20,'I','p17'),(24,'G','p17'),(25,'I','p17'),(28,'G','p17'),(30,'I','p17'),(2,'G','p18'),(4,'I','p18'),(5,'G','p18'),(8,'G','p18'),(11,'G','p18'),(15,'I','p18'),(16,'I','p18'),(17,'I','p18'),(18,'G','p18'),(21,'G','p18'),(23,'I','p18'),(26,'I','p18'),(27,'I','p18'),(28,'I','p18'),(29,'G','p18'),(3,'I','p19'),(4,'I','p19'),(5,'I','p19'),(7,'I','p19'),(8,'G','p19'),(14,'G','p19'),(15,'G','p19'),(16,'I','p19'),(18,'I','p19'),(23,'G','p19'),(28,'I','p19'),(29,'I','p19'),(30,'I','p19'),(1,'I','p2'),(2,'G','p2'),(5,'G','p2'),(7,'I','p2'),(9,'I','p2'),(10,'I','p2'),(12,'G','p2'),(13,'G','p2'),(15,'G','p2'),(21,'I','p2'),(23,'I','p2'),(25,'I','p2'),(26,'I','p2'),(27,'G','p2'),(30,'I','p2'),(3,'I','p20'),(5,'I','p20'),(9,'G','p20'),(11,'G','p20'),(17,'G','p20'),(19,'G','p20'),(20,'G','p20'),(21,'I','p20'),(23,'I','p20'),(25,'G','p20'),(26,'I','p20'),(1,'I','p21'),(3,'I','p21'),(6,'G','p21'),(8,'I','p21'),(9,'G','p21'),(18,'I','p21'),(20,'I','p21'),(23,'I','p21'),(24,'I','p21'),(28,'I','p21'),(29,'G','p21'),(6,'I','p22'),(8,'I','p22'),(12,'I','p22'),(17,'I','p22'),(18,'I','p22'),(19,'G','p22'),(22,'I','p22'),(24,'I','p22'),(26,'I','p22'),(28,'I','p22'),(30,'I','p22'),(4,'I','p23'),(10,'I','p23'),(11,'I','p23'),(12,'I','p23'),(13,'G','p23'),(15,'I','p23'),(16,'I','p23'),(21,'I','p23'),(24,'G','p23'),(25,'G','p23'),(27,'I','p23'),(28,'I','p23'),(29,'G','p23'),(30,'G','p23'),(6,'G','p24'),(7,'I','p24'),(9,'I','p24'),(12,'I','p24'),(14,'I','p24'),(18,'G','p24'),(22,'I','p24'),(23,'I','p24'),(24,'I','p24'),(25,'I','p24'),(26,'G','p24'),(29,'I','p24'),(30,'I','p24'),(6,'I','p25'),(7,'G','p25'),(13,'I','p25'),(14,'I','p25'),(17,'G','p25'),(22,'I','p25'),(25,'I','p25'),(3,'G','p26'),(6,'I','p26'),(11,'I','p26'),(15,'G','p26'),(20,'I','p26'),(22,'I','p26'),(24,'I','p26'),(27,'I','p26'),(5,'I','p27'),(7,'I','p27'),(8,'I','p27'),(9,'I','p27'),(14,'G','p27'),(15,'I','p27'),(16,'G','p27'),(19,'I','p27'),(20,'I','p27'),(22,'I','p27'),(23,'G','p27'),(24,'I','p27'),(26,'I','p27'),(27,'G','p27'),(29,'I','p27'),(30,'G','p27'),(1,'I','p28'),(2,'I','p28'),(14,'G','p28'),(16,'G','p28'),(17,'I','p28'),(20,'I','p28'),(26,'I','p28'),(28,'G','p28'),(1,'G','p29'),(8,'I','p29'),(10,'G','p29'),(11,'G','p29'),(12,'I','p29'),(13,'G','p29'),(15,'G','p29'),(17,'I','p29'),(18,'G','p29'),(22,'G','p29'),(25,'I','p29'),(1,'G','p3'),(3,'G','p3'),(4,'G','p3'),(9,'I','p3'),(10,'G','p3'),(11,'I','p3'),(12,'G','p3'),(14,'I','p3'),(16,'I','p3'),(18,'I','p3'),(19,'I','p3'),(20,'G','p3'),(21,'I','p3'),(23,'I','p3'),(25,'I','p3'),(26,'G','p3'),(27,'I','p3'),(28,'I','p3'),(29,'G','p3'),(30,'I','p3'),(4,'I','p30'),(5,'I','p30'),(9,'G','p30'),(12,'I','p30'),(13,'I','p30'),(15,'I','p30'),(19,'G','p30'),(20,'I','p30'),(21,'I','p30'),(22,'G','p30'),(26,'I','p30'),(29,'I','p30'),(3,'I','p4'),(4,'G','p4'),(5,'G','p4'),(6,'I','p4'),(7,'I','p4'),(10,'I','p4'),(14,'I','p4'),(16,'G','p4'),(28,'I','p4'),(29,'I','p4'),(30,'I','p4'),(1,'I','p5'),(2,'I','p5'),(3,'I','p5'),(11,'I','p5'),(13,'G','p5'),(16,'I','p5'),(18,'I','p5'),(19,'I','p5'),(24,'G','p5'),(25,'G','p5'),(27,'I','p5'),(28,'G','p5'),(2,'I','p6'),(3,'I','p6'),(6,'G','p6'),(12,'I','p6'),(17,'G','p6'),(20,'G','p6'),(24,'G','p6'),(25,'I','p6'),(27,'I','p6'),(1,'I','p7'),(2,'I','p7'),(3,'I','p7'),(6,'I','p7'),(7,'G','p7'),(9,'I','p7'),(11,'I','p7'),(17,'I','p7'),(21,'G','p7'),(26,'G','p7'),(27,'G','p7'),(6,'G','p8'),(7,'I','p8'),(10,'I','p8'),(11,'I','p8'),(17,'I','p8'),(21,'I','p8'),(5,'G','p9'),(8,'I','p9'),(10,'I','p9'),(13,'I','p9'),(17,'I','p9'),(18,'I','p9'),(21,'G','p9'),(22,'I','p9'),(23,'G','p9'),(24,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS1','p1'),('WSS121','p1'),('WSS131','p1'),('WSS144','p1'),('WSS170','p1'),('WSS173','p1'),('WSS211','p1'),('WSS229','p1'),('WSS233','p1'),('WSS261','p1'),('WSS37','p1'),('WSS39','p1'),('WSS45','p1'),('WSS52','p1'),('WSS58','p1'),('WSS83','p1'),('WSS84','p1'),('WSS108','p10'),('WSS156','p10'),('WSS159','p10'),('WSS164','p10'),('WSS171','p10'),('WSS174','p10'),('WSS202','p10'),('WSS224','p10'),('WSS227','p10'),('WSS238','p10'),('WSS261','p10'),('WSS279','p10'),('WSS290','p10'),('WSS300','p10'),('WSS34','p10'),('WSS41','p10'),('WSS47','p10'),('WSS60','p10'),('WSS64','p10'),('WSS73','p10'),('WSS75','p10'),('WSS89','p10'),('WSS105','p11'),('WSS118','p11'),('WSS129','p11'),('WSS139','p11'),('WSS147','p11'),('WSS154','p11'),('WSS157','p11'),('WSS177','p11'),('WSS190','p11'),('WSS200','p11'),('WSS205','p11'),('WSS222','p11'),('WSS234','p11'),('WSS243','p11'),('WSS246','p11'),('WSS284','p11'),('WSS294','p11'),('WSS63','p11'),('WSS77','p11'),('WSS8','p11'),('WSS87','p11'),('WSS88','p11'),('WSS109','p12'),('WSS112','p12'),('WSS114','p12'),('WSS141','p12'),('WSS18','p12'),('WSS191','p12'),('WSS231','p12'),('WSS232','p12'),('WSS237','p12'),('WSS238','p12'),('WSS259','p12'),('WSS278','p12'),('WSS285','p12'),('WSS289','p12'),('WSS39','p12'),('WSS4','p12'),('WSS61','p12'),('WSS62','p12'),('WSS67','p12'),('WSS76','p12'),('WSS97','p12'),('WSS99','p12'),('WSS102','p13'),('WSS110','p13'),('WSS12','p13'),('WSS133','p13'),('WSS137','p13'),('WSS163','p13'),('WSS182','p13'),('WSS187','p13'),('WSS193','p13'),('WSS195','p13'),('WSS22','p13'),('WSS262','p13'),('WSS266','p13'),('WSS275','p13'),('WSS62','p13'),('WSS64','p13'),('WSS82','p13'),('WSS91','p13'),('WSS100','p14'),('WSS112','p14'),('WSS127','p14'),('WSS14','p14'),('WSS141','p14'),('WSS148','p14'),('WSS152','p14'),('WSS168','p14'),('WSS172','p14'),('WSS224','p14'),('WSS239','p14'),('WSS247','p14'),('WSS248','p14'),('WSS254','p14'),('WSS265','p14'),('WSS269','p14'),('WSS281','p14'),('WSS35','p14'),('WSS57','p14'),('WSS60','p14'),('WSS81','p14'),('WSS96','p14'),('WSS111','p15'),('WSS129','p15'),('WSS14','p15'),('WSS142','p15'),('WSS166','p15'),('WSS17','p15'),('WSS170','p15'),('WSS176','p15'),('WSS178','p15'),('WSS197','p15'),('WSS208','p15'),('WSS215','p15'),('WSS216','p15'),('WSS228','p15'),('WSS229','p15'),('WSS243','p15'),('WSS248','p15'),('WSS250','p15'),('WSS253','p15'),('WSS266','p15'),('WSS276','p15'),('WSS278','p15'),('WSS282','p15'),('WSS286','p15'),('WSS300','p15'),('WSS56','p15'),('WSS76','p15'),('WSS90','p15'),('WSS93','p15'),('WSS104','p16'),('WSS120','p16'),('WSS13','p16'),('WSS145','p16'),('WSS157','p16'),('WSS19','p16'),('WSS202','p16'),('WSS213','p16'),('WSS22','p16'),('WSS226','p16'),('WSS271','p16'),('WSS30','p16'),('WSS38','p16'),('WSS42','p16'),('WSS52','p16'),('WSS78','p16'),('WSS81','p16'),('WSS85','p16'),('WSS98','p16'),('WSS10','p17'),('WSS121','p17'),('WSS130','p17'),('WSS159','p17'),('WSS187','p17'),('WSS211','p17'),('WSS218','p17'),('WSS235','p17'),('WSS264','p17'),('WSS289','p17'),('WSS296','p17'),('WSS3','p17'),('WSS41','p17'),('WSS46','p17'),('WSS48','p17'),('WSS86','p17'),('WSS117','p18'),('WSS122','p18'),('WSS135','p18'),('WSS139','p18'),('WSS147','p18'),('WSS148','p18'),('WSS149','p18'),('WSS15','p18'),('WSS150','p18'),('WSS151','p18'),('WSS160','p18'),('WSS172','p18'),('WSS186','p18'),('WSS188','p18'),('WSS192','p18'),('WSS200','p18'),('WSS221','p18'),('WSS239','p18'),('WSS259','p18'),('WSS26','p18'),('WSS267','p18'),('WSS295','p18'),('WSS32','p18'),('WSS50','p18'),('WSS63','p18'),('WSS68','p18'),('WSS100','p19'),('WSS116','p19'),('WSS12','p19'),('WSS138','p19'),('WSS149','p19'),('WSS163','p19'),('WSS169','p19'),('WSS189','p19'),('WSS196','p19'),('WSS217','p19'),('WSS230','p19'),('WSS240','p19'),('WSS242','p19'),('WSS255','p19'),('WSS260','p19'),('WSS291','p19'),('WSS293','p19'),('WSS47','p19'),('WSS53','p19'),('WSS65','p19'),('WSS105','p2'),('WSS109','p2'),('WSS122','p2'),('WSS161','p2'),('WSS162','p2'),('WSS175','p2'),('WSS188','p2'),('WSS196','p2'),('WSS21','p2'),('WSS237','p2'),('WSS257','p2'),('WSS273','p2'),('WSS277','p2'),('WSS281','p2'),('WSS283','p2'),('WSS40','p2'),('WSS56','p2'),('WSS98','p2'),('WSS145','p20'),('WSS165','p20'),('WSS166','p20'),('WSS171','p20'),('WSS181','p20'),('WSS198','p20'),('WSS264','p20'),('WSS27','p20'),('WSS277','p20'),('WSS28','p20'),('WSS29','p20'),('WSS290','p20'),('WSS298','p20'),('WSS33','p20'),('WSS36','p20'),('WSS55','p20'),('WSS74','p20'),('WSS99','p20'),('WSS114','p21'),('WSS155','p21'),('WSS156','p21'),('WSS158','p21'),('WSS16','p21'),('WSS198','p21'),('WSS214','p21'),('WSS218','p21'),('WSS236','p21'),('WSS242','p21'),('WSS246','p21'),('WSS252','p21'),('WSS286','p21'),('WSS54','p21'),('WSS9','p21'),('WSS92','p21'),('WSS111','p22'),('WSS119','p22'),('WSS130','p22'),('WSS155','p22'),('WSS167','p22'),('WSS204','p22'),('WSS209','p22'),('WSS236','p22'),('WSS244','p22'),('WSS255','p22'),('WSS273','p22'),('WSS274','p22'),('WSS283','p22'),('WSS58','p22'),('WSS67','p22'),('WSS69','p22'),('WSS71','p22'),('WSS73','p22'),('WSS79','p22'),('WSS80','p22'),('WSS87','p22'),('WSS90','p22'),('WSS94','p22'),('WSS96','p22'),('WSS120','p23'),('WSS152','p23'),('WSS153','p23'),('WSS154','p23'),('WSS175','p23'),('WSS183','p23'),('WSS185','p23'),('WSS203','p23'),('WSS24','p23'),('WSS240','p23'),('WSS245','p23'),('WSS276','p23'),('WSS279','p23'),('WSS287','p23'),('WSS295','p23'),('WSS33','p23'),('WSS55','p23'),('WSS66','p23'),('WSS68','p23'),('WSS78','p23'),('WSS89','p23'),('WSS153','p24'),('WSS192','p24'),('WSS193','p24'),('WSS195','p24'),('WSS207','p24'),('WSS225','p24'),('WSS25','p24'),('WSS251','p24'),('WSS254','p24'),('WSS256','p24'),('WSS294','p24'),('WSS40','p24'),('WSS46','p24'),('WSS5','p24'),('WSS50','p24'),('WSS57','p24'),('WSS82','p24'),('WSS85','p24'),('WSS9','p24'),('WSS101','p25'),('WSS128','p25'),('WSS132','p25'),('WSS136','p25'),('WSS169','p25'),('WSS2','p25'),('WSS21','p25'),('WSS214','p25'),('WSS227','p25'),('WSS228','p25'),('WSS297','p25'),('WSS53','p25'),('WSS59','p25'),('WSS7','p25'),('WSS126','p26'),('WSS140','p26'),('WSS143','p26'),('WSS180','p26'),('WSS181','p26'),('WSS190','p26'),('WSS199','p26'),('WSS20','p26'),('WSS209','p26'),('WSS24','p26'),('WSS280','p26'),('WSS292','p26'),('WSS66','p26'),('WSS115','p27'),('WSS128','p27'),('WSS134','p27'),('WSS162','p27'),('WSS174','p27'),('WSS215','p27'),('WSS219','p27'),('WSS223','p27'),('WSS272','p27'),('WSS298','p27'),('WSS299','p27'),('WSS51','p27'),('WSS61','p27'),('WSS70','p27'),('WSS8','p27'),('WSS1','p28'),('WSS113','p28'),('WSS117','p28'),('WSS136','p28'),('WSS137','p28'),('WSS146','p28'),('WSS178','p28'),('WSS186','p28'),('WSS203','p28'),('WSS23','p28'),('WSS233','p28'),('WSS241','p28'),('WSS249','p28'),('WSS268','p28'),('WSS284','p28'),('WSS285','p28'),('WSS38','p28'),('WSS4','p28'),('WSS54','p28'),('WSS6','p28'),('WSS72','p28'),('WSS88','p28'),('WSS106','p29'),('WSS116','p29'),('WSS133','p29'),('WSS180','p29'),('WSS185','p29'),('WSS217','p29'),('WSS230','p29'),('WSS244','p29'),('WSS247','p29'),('WSS253','p29'),('WSS26','p29'),('WSS265','p29'),('WSS28','p29'),('WSS280','p29'),('WSS31','p29'),('WSS37','p29'),('WSS44','p29'),('WSS74','p29'),('WSS77','p29'),('WSS91','p29'),('WSS10','p3'),('WSS107','p3'),('WSS11','p3'),('WSS113','p3'),('WSS125','p3'),('WSS131','p3'),('WSS142','p3'),('WSS15','p3'),('WSS151','p3'),('WSS161','p3'),('WSS184','p3'),('WSS194','p3'),('WSS212','p3'),('WSS225','p3'),('WSS25','p3'),('WSS263','p3'),('WSS270','p3'),('WSS288','p3'),('WSS29','p3'),('WSS43','p3'),('WSS59','p3'),('WSS6','p3'),('WSS70','p3'),('WSS72','p3'),('WSS101','p30'),('WSS115','p30'),('WSS124','p30'),('WSS125','p30'),('WSS126','p30'),('WSS134','p30'),('WSS135','p30'),('WSS158','p30'),('WSS167','p30'),('WSS191','p30'),('WSS20','p30'),('WSS201','p30'),('WSS206','p30'),('WSS207','p30'),('WSS216','p30'),('WSS223','p30'),('WSS249','p30'),('WSS256','p30'),('WSS32','p30'),('WSS49','p30'),('WSS51','p30'),('WSS119','p4'),('WSS143','p4'),('WSS144','p4'),('WSS17','p4'),('WSS173','p4'),('WSS176','p4'),('WSS201','p4'),('WSS212','p4'),('WSS220','p4'),('WSS226','p4'),('WSS245','p4'),('WSS257','p4'),('WSS262','p4'),('WSS293','p4'),('WSS3','p4'),('WSS30','p4'),('WSS35','p4'),('WSS43','p4'),('WSS69','p4'),('WSS83','p4'),('WSS86','p4'),('WSS93','p4'),('WSS106','p5'),('WSS189','p5'),('WSS206','p5'),('WSS235','p5'),('WSS250','p5'),('WSS251','p5'),('WSS258','p5'),('WSS287','p5'),('WSS297','p5'),('WSS36','p5'),('WSS45','p5'),('WSS79','p5'),('WSS80','p5'),('WSS103','p6'),('WSS123','p6'),('WSS150','p6'),('WSS2','p6'),('WSS210','p6'),('WSS221','p6'),('WSS267','p6'),('WSS274','p6'),('WSS282','p6'),('WSS288','p6'),('WSS34','p6'),('WSS84','p6'),('WSS92','p6'),('WSS97','p6'),('WSS102','p7'),('WSS103','p7'),('WSS108','p7'),('WSS138','p7'),('WSS146','p7'),('WSS164','p7'),('WSS168','p7'),('WSS177','p7'),('WSS19','p7'),('WSS194','p7'),('WSS210','p7'),('WSS222','p7'),('WSS241','p7'),('WSS258','p7'),('WSS260','p7'),('WSS268','p7'),('WSS275','p7'),('WSS291','p7'),('WSS292','p7'),('WSS31','p7'),('WSS44','p7'),('WSS7','p7'),('WSS71','p7'),('WSS95','p7'),('WSS104','p8'),('WSS11','p8'),('WSS110','p8'),('WSS127','p8'),('WSS13','p8'),('WSS132','p8'),('WSS140','p8'),('WSS16','p8'),('WSS160','p8'),('WSS179','p8'),('WSS18','p8'),('WSS182','p8'),('WSS183','p8'),('WSS199','p8'),('WSS208','p8'),('WSS213','p8'),('WSS219','p8'),('WSS231','p8'),('WSS270','p8'),('WSS271','p8'),('WSS272','p8'),('WSS299','p8'),('WSS42','p8'),('WSS94','p8'),('WSS107','p9'),('WSS118','p9'),('WSS124','p9'),('WSS179','p9'),('WSS184','p9'),('WSS197','p9'),('WSS204','p9'),('WSS205','p9'),('WSS220','p9'),('WSS232','p9'),('WSS234','p9'),('WSS252','p9'),('WSS263','p9'),('WSS269','p9'),('WSS27','p9'),('WSS49','p9'),('WSS5','p9'),('WSS65','p9'),('WSS75','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS116','p1'),('WSS128','p1'),('WSS143','p1'),('WSS144','p1'),('WSS148','p1'),('WSS153','p1'),('WSS167','p1'),('WSS189','p1'),('WSS192','p1'),('WSS198','p1'),('WSS202','p1'),('WSS23','p1'),('WSS231','p1'),('WSS236','p1'),('WSS238','p1'),('WSS241','p1'),('WSS244','p1'),('WSS253','p1'),('WSS255','p1'),('WSS257','p1'),('WSS260','p1'),('WSS27','p1'),('WSS274','p1'),('WSS277','p1'),('WSS284','p1'),('WSS287','p1'),('WSS290','p1'),('WSS38','p1'),('WSS44','p1'),('WSS49','p1'),('WSS79','p1'),('WSS89','p1'),('WSS9','p1'),('WSS94','p1'),('WSS98','p1'),('WSS102','p10'),('WSS111','p10'),('WSS117','p10'),('WSS119','p10'),('WSS123','p10'),('WSS125','p10'),('WSS127','p10'),('WSS155','p10'),('WSS158','p10'),('WSS188','p10'),('WSS195','p10'),('WSS198','p10'),('WSS205','p10'),('WSS21','p10'),('WSS213','p10'),('WSS214','p10'),('WSS217','p10'),('WSS221','p10'),('WSS23','p10'),('WSS238','p10'),('WSS245','p10'),('WSS254','p10'),('WSS26','p10'),('WSS261','p10'),('WSS264','p10'),('WSS267','p10'),('WSS268','p10'),('WSS278','p10'),('WSS282','p10'),('WSS284','p10'),('WSS291','p10'),('WSS293','p10'),('WSS298','p10'),('WSS3','p10'),('WSS32','p10'),('WSS33','p10'),('WSS59','p10'),('WSS63','p10'),('WSS67','p10'),('WSS75','p10'),('WSS83','p10'),('WSS86','p10'),('WSS1','p11'),('WSS135','p11'),('WSS137','p11'),('WSS141','p11'),('WSS16','p11'),('WSS172','p11'),('WSS178','p11'),('WSS179','p11'),('WSS188','p11'),('WSS19','p11'),('WSS193','p11'),('WSS20','p11'),('WSS221','p11'),('WSS224','p11'),('WSS225','p11'),('WSS236','p11'),('WSS243','p11'),('WSS244','p11'),('WSS248','p11'),('WSS249','p11'),('WSS260','p11'),('WSS261','p11'),('WSS273','p11'),('WSS275','p11'),('WSS286','p11'),('WSS291','p11'),('WSS47','p11'),('WSS5','p11'),('WSS54','p11'),('WSS56','p11'),('WSS62','p11'),('WSS66','p11'),('WSS7','p11'),('WSS74','p11'),('WSS84','p11'),('WSS85','p11'),('WSS98','p11'),('WSS10','p12'),('WSS103','p12'),('WSS106','p12'),('WSS116','p12'),('WSS118','p12'),('WSS14','p12'),('WSS151','p12'),('WSS164','p12'),('WSS169','p12'),('WSS179','p12'),('WSS186','p12'),('WSS191','p12'),('WSS193','p12'),('WSS194','p12'),('WSS200','p12'),('WSS214','p12'),('WSS22','p12'),('WSS224','p12'),('WSS229','p12'),('WSS23','p12'),('WSS231','p12'),('WSS233','p12'),('WSS237','p12'),('WSS245','p12'),('WSS262','p12'),('WSS269','p12'),('WSS272','p12'),('WSS273','p12'),('WSS276','p12'),('WSS277','p12'),('WSS286','p12'),('WSS287','p12'),('WSS288','p12'),('WSS298','p12'),('WSS39','p12'),('WSS41','p12'),('WSS49','p12'),('WSS61','p12'),('WSS72','p12'),('WSS75','p12'),('WSS76','p12'),('WSS87','p12'),('WSS88','p12'),('WSS93','p12'),('WSS95','p12'),('WSS99','p12'),('WSS105','p13'),('WSS11','p13'),('WSS110','p13'),('WSS114','p13'),('WSS116','p13'),('WSS117','p13'),('WSS121','p13'),('WSS131','p13'),('WSS146','p13'),('WSS149','p13'),('WSS155','p13'),('WSS157','p13'),('WSS162','p13'),('WSS167','p13'),('WSS181','p13'),('WSS188','p13'),('WSS199','p13'),('WSS204','p13'),('WSS215','p13'),('WSS216','p13'),('WSS22','p13'),('WSS228','p13'),('WSS230','p13'),('WSS235','p13'),('WSS248','p13'),('WSS249','p13'),('WSS26','p13'),('WSS263','p13'),('WSS269','p13'),('WSS291','p13'),('WSS41','p13'),('WSS5','p13'),('WSS60','p13'),('WSS78','p13'),('WSS81','p13'),('WSS94','p13'),('WSS1','p14'),('WSS102','p14'),('WSS105','p14'),('WSS107','p14'),('WSS142','p14'),('WSS150','p14'),('WSS162','p14'),('WSS164','p14'),('WSS18','p14'),('WSS185','p14'),('WSS208','p14'),('WSS211','p14'),('WSS218','p14'),('WSS219','p14'),('WSS222','p14'),('WSS225','p14'),('WSS226','p14'),('WSS233','p14'),('WSS242','p14'),('WSS244','p14'),('WSS253','p14'),('WSS254','p14'),('WSS266','p14'),('WSS28','p14'),('WSS283','p14'),('WSS284','p14'),('WSS289','p14'),('WSS29','p14'),('WSS300','p14'),('WSS33','p14'),('WSS34','p14'),('WSS36','p14'),('WSS42','p14'),('WSS53','p14'),('WSS68','p14'),('WSS7','p14'),('WSS103','p15'),('WSS111','p15'),('WSS118','p15'),('WSS127','p15'),('WSS135','p15'),('WSS140','p15'),('WSS148','p15'),('WSS15','p15'),('WSS155','p15'),('WSS156','p15'),('WSS166','p15'),('WSS167','p15'),('WSS168','p15'),('WSS179','p15'),('WSS180','p15'),('WSS186','p15'),('WSS187','p15'),('WSS2','p15'),('WSS207','p15'),('WSS208','p15'),('WSS227','p15'),('WSS229','p15'),('WSS232','p15'),('WSS241','p15'),('WSS252','p15'),('WSS263','p15'),('WSS267','p15'),('WSS272','p15'),('WSS275','p15'),('WSS28','p15'),('WSS31','p15'),('WSS39','p15'),('WSS46','p15'),('WSS51','p15'),('WSS58','p15'),('WSS66','p15'),('WSS71','p15'),('WSS86','p15'),('WSS118','p16'),('WSS120','p16'),('WSS130','p16'),('WSS135','p16'),('WSS138','p16'),('WSS139','p16'),('WSS154','p16'),('WSS157','p16'),('WSS158','p16'),('WSS159','p16'),('WSS161','p16'),('WSS169','p16'),('WSS187','p16'),('WSS194','p16'),('WSS200','p16'),('WSS201','p16'),('WSS213','p16'),('WSS22','p16'),('WSS221','p16'),('WSS223','p16'),('WSS247','p16'),('WSS281','p16'),('WSS283','p16'),('WSS285','p16'),('WSS288','p16'),('WSS291','p16'),('WSS3','p16'),('WSS30','p16'),('WSS51','p16'),('WSS6','p16'),('WSS60','p16'),('WSS68','p16'),('WSS77','p16'),('WSS81','p16'),('WSS85','p16'),('WSS87','p16'),('WSS98','p16'),('WSS125','p17'),('WSS127','p17'),('WSS132','p17'),('WSS134','p17'),('WSS136','p17'),('WSS147','p17'),('WSS15','p17'),('WSS150','p17'),('WSS153','p17'),('WSS177','p17'),('WSS183','p17'),('WSS199','p17'),('WSS210','p17'),('WSS232','p17'),('WSS234','p17'),('WSS235','p17'),('WSS247','p17'),('WSS25','p17'),('WSS251','p17'),('WSS256','p17'),('WSS265','p17'),('WSS282','p17'),('WSS289','p17'),('WSS300','p17'),('WSS35','p17'),('WSS42','p17'),('WSS52','p17'),('WSS79','p17'),('WSS87','p17'),('WSS93','p17'),('WSS96','p17'),('WSS99','p17'),('WSS10','p18'),('WSS107','p18'),('WSS109','p18'),('WSS124','p18'),('WSS142','p18'),('WSS156','p18'),('WSS163','p18'),('WSS170','p18'),('WSS173','p18'),('WSS193','p18'),('WSS215','p18'),('WSS217','p18'),('WSS219','p18'),('WSS22','p18'),('WSS252','p18'),('WSS259','p18'),('WSS265','p18'),('WSS280','p18'),('WSS286','p18'),('WSS288','p18'),('WSS32','p18'),('WSS35','p18'),('WSS36','p18'),('WSS38','p18'),('WSS44','p18'),('WSS46','p18'),('WSS53','p18'),('WSS67','p18'),('WSS74','p18'),('WSS75','p18'),('WSS92','p18'),('WSS97','p18'),('WSS103','p19'),('WSS109','p19'),('WSS121','p19'),('WSS125','p19'),('WSS126','p19'),('WSS135','p19'),('WSS136','p19'),('WSS144','p19'),('WSS145','p19'),('WSS146','p19'),('WSS147','p19'),('WSS153','p19'),('WSS160','p19'),('WSS165','p19'),('WSS168','p19'),('WSS172','p19'),('WSS173','p19'),('WSS182','p19'),('WSS197','p19'),('WSS2','p19'),('WSS235','p19'),('WSS237','p19'),('WSS254','p19'),('WSS279','p19'),('WSS281','p19'),('WSS295','p19'),('WSS297','p19'),('WSS5','p19'),('WSS54','p19'),('WSS57','p19'),('WSS66','p19'),('WSS67','p19'),('WSS68','p19'),('WSS72','p19'),('WSS75','p19'),('WSS79','p19'),('WSS10','p2'),('WSS11','p2'),('WSS112','p2'),('WSS115','p2'),('WSS124','p2'),('WSS134','p2'),('WSS147','p2'),('WSS149','p2'),('WSS152','p2'),('WSS158','p2'),('WSS161','p2'),('WSS166','p2'),('WSS172','p2'),('WSS184','p2'),('WSS186','p2'),('WSS199','p2'),('WSS203','p2'),('WSS21','p2'),('WSS221','p2'),('WSS228','p2'),('WSS238','p2'),('WSS242','p2'),('WSS243','p2'),('WSS246','p2'),('WSS255','p2'),('WSS257','p2'),('WSS259','p2'),('WSS264','p2'),('WSS276','p2'),('WSS28','p2'),('WSS280','p2'),('WSS287','p2'),('WSS293','p2'),('WSS33','p2'),('WSS37','p2'),('WSS40','p2'),('WSS42','p2'),('WSS43','p2'),('WSS44','p2'),('WSS5','p2'),('WSS57','p2'),('WSS7','p2'),('WSS72','p2'),('WSS74','p2'),('WSS77','p2'),('WSS8','p2'),('WSS82','p2'),('WSS106','p20'),('WSS11','p20'),('WSS112','p20'),('WSS114','p20'),('WSS115','p20'),('WSS117','p20'),('WSS12','p20'),('WSS120','p20'),('WSS126','p20'),('WSS128','p20'),('WSS131','p20'),('WSS137','p20'),('WSS146','p20'),('WSS168','p20'),('WSS183','p20'),('WSS184','p20'),('WSS19','p20'),('WSS192','p20'),('WSS199','p20'),('WSS207','p20'),('WSS212','p20'),('WSS225','p20'),('WSS230','p20'),('WSS231','p20'),('WSS233','p20'),('WSS237','p20'),('WSS24','p20'),('WSS262','p20'),('WSS264','p20'),('WSS265','p20'),('WSS267','p20'),('WSS270','p20'),('WSS289','p20'),('WSS292','p20'),('WSS295','p20'),('WSS30','p20'),('WSS48','p20'),('WSS49','p20'),('WSS76','p20'),('WSS86','p20'),('WSS89','p20'),('WSS9','p20'),('WSS112','p21'),('WSS113','p21'),('WSS133','p21'),('WSS151','p21'),('WSS174','p21'),('WSS185','p21'),('WSS193','p21'),('WSS208','p21'),('WSS209','p21'),('WSS216','p21'),('WSS226','p21'),('WSS251','p21'),('WSS255','p21'),('WSS266','p21'),('WSS271','p21'),('WSS3','p21'),('WSS35','p21'),('WSS40','p21'),('WSS45','p21'),('WSS64','p21'),('WSS65','p21'),('WSS7','p21'),('WSS72','p21'),('WSS76','p21'),('WSS83','p21'),('WSS88','p21'),('WSS104','p22'),('WSS105','p22'),('WSS108','p22'),('WSS111','p22'),('WSS122','p22'),('WSS123','p22'),('WSS13','p22'),('WSS132','p22'),('WSS153','p22'),('WSS156','p22'),('WSS161','p22'),('WSS163','p22'),('WSS17','p22'),('WSS184','p22'),('WSS186','p22'),('WSS191','p22'),('WSS195','p22'),('WSS201','p22'),('WSS202','p22'),('WSS207','p22'),('WSS21','p22'),('WSS215','p22'),('WSS223','p22'),('WSS231','p22'),('WSS235','p22'),('WSS241','p22'),('WSS242','p22'),('WSS25','p22'),('WSS252','p22'),('WSS274','p22'),('WSS277','p22'),('WSS29','p22'),('WSS292','p22'),('WSS298','p22'),('WSS31','p22'),('WSS38','p22'),('WSS52','p22'),('WSS58','p22'),('WSS64','p22'),('WSS73','p22'),('WSS89','p22'),('WSS101','p23'),('WSS104','p23'),('WSS132','p23'),('WSS140','p23'),('WSS141','p23'),('WSS143','p23'),('WSS152','p23'),('WSS155','p23'),('WSS156','p23'),('WSS16','p23'),('WSS160','p23'),('WSS175','p23'),('WSS187','p23'),('WSS20','p23'),('WSS204','p23'),('WSS210','p23'),('WSS211','p23'),('WSS212','p23'),('WSS217','p23'),('WSS232','p23'),('WSS240','p23'),('WSS254','p23'),('WSS256','p23'),('WSS260','p23'),('WSS264','p23'),('WSS266','p23'),('WSS28','p23'),('WSS293','p23'),('WSS30','p23'),('WSS44','p23'),('WSS52','p23'),('WSS56','p23'),('WSS6','p23'),('WSS78','p23'),('WSS80','p23'),('WSS85','p23'),('WSS92','p23'),('WSS93','p23'),('WSS104','p24'),('WSS109','p24'),('WSS11','p24'),('WSS110','p24'),('WSS139','p24'),('WSS14','p24'),('WSS141','p24'),('WSS169','p24'),('WSS17','p24'),('WSS176','p24'),('WSS195','p24'),('WSS205','p24'),('WSS209','p24'),('WSS210','p24'),('WSS248','p24'),('WSS25','p24'),('WSS26','p24'),('WSS269','p24'),('WSS278','p24'),('WSS284','p24'),('WSS288','p24'),('WSS292','p24'),('WSS297','p24'),('WSS299','p24'),('WSS4','p24'),('WSS43','p24'),('WSS46','p24'),('WSS48','p24'),('WSS57','p24'),('WSS93','p24'),('WSS97','p24'),('WSS99','p24'),('WSS1','p25'),('WSS100','p25'),('WSS122','p25'),('WSS123','p25'),('WSS138','p25'),('WSS151','p25'),('WSS152','p25'),('WSS159','p25'),('WSS164','p25'),('WSS165','p25'),('WSS169','p25'),('WSS176','p25'),('WSS18','p25'),('WSS19','p25'),('WSS2','p25'),('WSS20','p25'),('WSS202','p25'),('WSS209','p25'),('WSS210','p25'),('WSS211','p25'),('WSS23','p25'),('WSS236','p25'),('WSS250','p25'),('WSS259','p25'),('WSS267','p25'),('WSS270','p25'),('WSS281','p25'),('WSS295','p25'),('WSS296','p25'),('WSS31','p25'),('WSS38','p25'),('WSS41','p25'),('WSS49','p25'),('WSS55','p25'),('WSS62','p25'),('WSS68','p25'),('WSS70','p25'),('WSS73','p25'),('WSS80','p25'),('WSS106','p26'),('WSS115','p26'),('WSS126','p26'),('WSS134','p26'),('WSS140','p26'),('WSS144','p26'),('WSS146','p26'),('WSS154','p26'),('WSS162','p26'),('WSS174','p26'),('WSS189','p26'),('WSS196','p26'),('WSS206','p26'),('WSS213','p26'),('WSS220','p26'),('WSS238','p26'),('WSS246','p26'),('WSS255','p26'),('WSS271','p26'),('WSS279','p26'),('WSS282','p26'),('WSS283','p26'),('WSS290','p26'),('WSS296','p26'),('WSS299','p26'),('WSS37','p26'),('WSS43','p26'),('WSS48','p26'),('WSS50','p26'),('WSS51','p26'),('WSS60','p26'),('WSS67','p26'),('WSS71','p26'),('WSS78','p26'),('WSS9','p26'),('WSS92','p26'),('WSS109','p27'),('WSS119','p27'),('WSS129','p27'),('WSS130','p27'),('WSS134','p27'),('WSS137','p27'),('WSS145','p27'),('WSS150','p27'),('WSS16','p27'),('WSS165','p27'),('WSS187','p27'),('WSS190','p27'),('WSS192','p27'),('WSS194','p27'),('WSS200','p27'),('WSS205','p27'),('WSS219','p27'),('WSS225','p27'),('WSS227','p27'),('WSS232','p27'),('WSS234','p27'),('WSS239','p27'),('WSS257','p27'),('WSS268','p27'),('WSS269','p27'),('WSS279','p27'),('WSS285','p27'),('WSS297','p27'),('WSS299','p27'),('WSS41','p27'),('WSS45','p27'),('WSS55','p27'),('WSS64','p27'),('WSS69','p27'),('WSS74','p27'),('WSS76','p27'),('WSS83','p27'),('WSS84','p27'),('WSS85','p27'),('WSS90','p27'),('WSS91','p27'),('WSS97','p27'),('WSS10','p28'),('WSS102','p28'),('WSS114','p28'),('WSS121','p28'),('WSS149','p28'),('WSS160','p28'),('WSS171','p28'),('WSS178','p28'),('WSS18','p28'),('WSS185','p28'),('WSS189','p28'),('WSS2','p28'),('WSS223','p28'),('WSS228','p28'),('WSS246','p28'),('WSS249','p28'),('WSS256','p28'),('WSS258','p28'),('WSS261','p28'),('WSS265','p28'),('WSS266','p28'),('WSS280','p28'),('WSS283','p28'),('WSS31','p28'),('WSS32','p28'),('WSS34','p28'),('WSS37','p28'),('WSS43','p28'),('WSS45','p28'),('WSS6','p28'),('WSS84','p28'),('WSS88','p28'),('WSS101','p29'),('WSS102','p29'),('WSS103','p29'),('WSS13','p29'),('WSS131','p29'),('WSS132','p29'),('WSS166','p29'),('WSS17','p29'),('WSS170','p29'),('WSS172','p29'),('WSS180','p29'),('WSS190','p29'),('WSS204','p29'),('WSS211','p29'),('WSS218','p29'),('WSS220','p29'),('WSS240','p29'),('WSS243','p29'),('WSS245','p29'),('WSS263','p29'),('WSS27','p29'),('WSS272','p29'),('WSS275','p29'),('WSS282','p29'),('WSS29','p29'),('WSS290','p29'),('WSS294','p29'),('WSS33','p29'),('WSS50','p29'),('WSS51','p29'),('WSS58','p29'),('WSS69','p29'),('WSS70','p29'),('WSS77','p29'),('WSS78','p29'),('WSS80','p29'),('WSS87','p29'),('WSS94','p29'),('WSS99','p29'),('WSS100','p3'),('WSS101','p3'),('WSS12','p3'),('WSS123','p3'),('WSS124','p3'),('WSS128','p3'),('WSS13','p3'),('WSS131','p3'),('WSS157','p3'),('WSS165','p3'),('WSS171','p3'),('WSS179','p3'),('WSS181','p3'),('WSS203','p3'),('WSS206','p3'),('WSS209','p3'),('WSS219','p3'),('WSS230','p3'),('WSS233','p3'),('WSS236','p3'),('WSS239','p3'),('WSS244','p3'),('WSS256','p3'),('WSS258','p3'),('WSS268','p3'),('WSS278','p3'),('WSS290','p3'),('WSS35','p3'),('WSS37','p3'),('WSS39','p3'),('WSS4','p3'),('WSS42','p3'),('WSS53','p3'),('WSS57','p3'),('WSS62','p3'),('WSS64','p3'),('WSS70','p3'),('WSS80','p3'),('WSS82','p3'),('WSS83','p3'),('WSS9','p3'),('WSS104','p30'),('WSS107','p30'),('WSS108','p30'),('WSS12','p30'),('WSS120','p30'),('WSS125','p30'),('WSS133','p30'),('WSS136','p30'),('WSS145','p30'),('WSS148','p30'),('WSS154','p30'),('WSS157','p30'),('WSS158','p30'),('WSS161','p30'),('WSS175','p30'),('WSS177','p30'),('WSS184','p30'),('WSS196','p30'),('WSS200','p30'),('WSS212','p30'),('WSS216','p30'),('WSS218','p30'),('WSS224','p30'),('WSS227','p30'),('WSS229','p30'),('WSS230','p30'),('WSS234','p30'),('WSS242','p30'),('WSS250','p30'),('WSS252','p30'),('WSS258','p30'),('WSS276','p30'),('WSS281','p30'),('WSS294','p30'),('WSS296','p30'),('WSS298','p30'),('WSS47','p30'),('WSS59','p30'),('WSS60','p30'),('WSS61','p30'),('WSS63','p30'),('WSS66','p30'),('WSS8','p30'),('WSS84','p30'),('WSS90','p30'),('WSS95','p30'),('WSS96','p30'),('WSS106','p4'),('WSS112','p4'),('WSS118','p4'),('WSS122','p4'),('WSS142','p4'),('WSS144','p4'),('WSS151','p4'),('WSS16','p4'),('WSS160','p4'),('WSS174','p4'),('WSS176','p4'),('WSS181','p4'),('WSS182','p4'),('WSS190','p4'),('WSS191','p4'),('WSS195','p4'),('WSS198','p4'),('WSS20','p4'),('WSS212','p4'),('WSS223','p4'),('WSS228','p4'),('WSS239','p4'),('WSS240','p4'),('WSS246','p4'),('WSS258','p4'),('WSS27','p4'),('WSS273','p4'),('WSS276','p4'),('WSS292','p4'),('WSS294','p4'),('WSS300','p4'),('WSS39','p4'),('WSS50','p4'),('WSS61','p4'),('WSS71','p4'),('WSS97','p4'),('WSS1','p5'),('WSS127','p5'),('WSS130','p5'),('WSS139','p5'),('WSS140','p5'),('WSS145','p5'),('WSS15','p5'),('WSS152','p5'),('WSS171','p5'),('WSS173','p5'),('WSS177','p5'),('WSS178','p5'),('WSS182','p5'),('WSS183','p5'),('WSS188','p5'),('WSS196','p5'),('WSS203','p5'),('WSS204','p5'),('WSS205','p5'),('WSS216','p5'),('WSS224','p5'),('WSS237','p5'),('WSS24','p5'),('WSS26','p5'),('WSS263','p5'),('WSS270','p5'),('WSS273','p5'),('WSS280','p5'),('WSS285','p5'),('WSS29','p5'),('WSS4','p5'),('WSS54','p5'),('WSS55','p5'),('WSS65','p5'),('WSS8','p5'),('WSS86','p5'),('WSS96','p5'),('WSS101','p6'),('WSS110','p6'),('WSS12','p6'),('WSS126','p6'),('WSS138','p6'),('WSS162','p6'),('WSS17','p6'),('WSS175','p6'),('WSS18','p6'),('WSS182','p6'),('WSS197','p6'),('WSS201','p6'),('WSS203','p6'),('WSS214','p6'),('WSS215','p6'),('WSS217','p6'),('WSS24','p6'),('WSS240','p6'),('WSS243','p6'),('WSS247','p6'),('WSS248','p6'),('WSS261','p6'),('WSS27','p6'),('WSS286','p6'),('WSS287','p6'),('WSS296','p6'),('WSS3','p6'),('WSS32','p6'),('WSS36','p6'),('WSS4','p6'),('WSS54','p6'),('WSS56','p6'),('WSS59','p6'),('WSS63','p6'),('WSS65','p6'),('WSS69','p6'),('WSS77','p6'),('WSS79','p6'),('WSS81','p6'),('WSS91','p6'),('WSS94','p6'),('WSS105','p7'),('WSS113','p7'),('WSS115','p7'),('WSS119','p7'),('WSS124','p7'),('WSS137','p7'),('WSS141','p7'),('WSS159','p7'),('WSS167','p7'),('WSS174','p7'),('WSS180','p7'),('WSS206','p7'),('WSS208','p7'),('WSS222','p7'),('WSS234','p7'),('WSS239','p7'),('WSS245','p7'),('WSS260','p7'),('WSS270','p7'),('WSS271','p7'),('WSS272','p7'),('WSS34','p7'),('WSS40','p7'),('WSS47','p7'),('WSS52','p7'),('WSS6','p7'),('WSS61','p7'),('WSS63','p7'),('WSS73','p7'),('WSS81','p7'),('WSS82','p7'),('WSS95','p7'),('WSS96','p7'),('WSS108','p8'),('WSS113','p8'),('WSS117','p8'),('WSS121','p8'),('WSS122','p8'),('WSS129','p8'),('WSS13','p8'),('WSS133','p8'),('WSS136','p8'),('WSS148','p8'),('WSS149','p8'),('WSS150','p8'),('WSS163','p8'),('WSS170','p8'),('WSS176','p8'),('WSS196','p8'),('WSS197','p8'),('WSS21','p8'),('WSS226','p8'),('WSS227','p8'),('WSS24','p8'),('WSS251','p8'),('WSS262','p8'),('WSS268','p8'),('WSS285','p8'),('WSS289','p8'),('WSS34','p8'),('WSS46','p8'),('WSS48','p8'),('WSS50','p8'),('WSS53','p8'),('WSS56','p8'),('WSS58','p8'),('WSS8','p8'),('WSS89','p8'),('WSS91','p8'),('WSS92','p8'),('WSS95','p8'),('WSS100','p9'),('WSS108','p9'),('WSS111','p9'),('WSS114','p9'),('WSS119','p9'),('WSS129','p9'),('WSS133','p9'),('WSS14','p9'),('WSS143','p9'),('WSS147','p9'),('WSS15','p9'),('WSS159','p9'),('WSS164','p9'),('WSS166','p9'),('WSS170','p9'),('WSS181','p9'),('WSS189','p9'),('WSS191','p9'),('WSS194','p9'),('WSS206','p9'),('WSS207','p9'),('WSS218','p9'),('WSS220','p9'),('WSS222','p9'),('WSS226','p9'),('WSS247','p9'),('WSS249','p9'),('WSS25','p9'),('WSS250','p9'),('WSS253','p9'),('WSS274','p9'),('WSS295','p9'),('WSS297','p9'),('WSS36','p9'),('WSS40','p9'),('WSS45','p9'),('WSS55','p9'),('WSS59','p9'),('WSS62','p9'),('WSS65','p9'),('WSS70','p9'),('WSS90','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS107'),(1,2,'WSS14'),(1,3,'WSS28'),(2,1,'WSS78'),(2,2,'WSS84'),(2,3,'WSS6'),(3,1,'WSS195'),(3,2,'WSS126'),(3,3,'WSS87'),(4,1,'WSS75'),(4,1,'WSS93'),(4,2,'WSS188'),(5,1,'WSS99'),(5,2,'WSS104'),(5,3,'WSS95'),(6,1,'WSS100'),(6,2,'WSS97'),(6,3,'WSS191'),(7,1,'WSS20'),(7,2,'WSS13'),(7,3,'WSS15'),(8,1,'WSS187'),(8,1,'WSS98'),(8,2,'WSS179'),(9,1,'WSS180'),(9,2,'WSS87'),(9,3,'WSS190'),(10,1,'WSS114'),(10,2,'WSS15'),(10,3,'WSS103'),(11,1,'WSS13'),(11,2,'WSS99'),(11,3,'WSS191'),(12,1,'WSS102'),(12,2,'WSS183'),(12,3,'WSS177'),(12,4,'WSS20'),(13,1,'WSS108'),(13,2,'WSS177'),(14,1,'WSS199'),(14,2,'WSS186'),(14,3,'WSS71'),(15,1,'WSS58'),(15,2,'WSS138'),(15,3,'WSS197'),(16,1,'WSS166'),(16,2,'WSS73'),(16,3,'WSS181'),(17,1,'WSS10'),(17,2,'WSS3'),(17,3,'WSS88'),(18,1,'WSS198'),(18,1,'WSS20'),(18,2,'WSS109'),(19,1,'WSS88'),(19,2,'WSS109'),(19,3,'WSS200'),(20,1,'WSS177'),(20,1,'WSS187'),(21,1,'WSS15'),(21,2,'WSS76'),(21,3,'WSS189'),(21,4,'WSS168'),(22,1,'WSS195'),(22,2,'WSS160'),(22,3,'WSS167'),(23,1,'WSS109'),(23,2,'WSS18'),(23,3,'WSS114'),(24,1,'WSS83'),(24,2,'WSS20'),(24,3,'WSS22'),(25,1,'WSS91'),(25,2,'WSS186'),(25,3,'WSS166'),(26,1,'WSS168'),(26,2,'WSS22'),(26,3,'WSS104'),(27,1,'WSS42'),(27,2,'WSS26'),(27,3,'WSS28'),(28,1,'WSS52'),(28,2,'WSS179'),(28,3,'WSS166'),(29,1,'WSS97'),(29,2,'WSS145'),(29,3,'WSS185'),(30,1,'WSS194'),(30,2,'WSS62'),(30,3,'WSS167'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-29  9:47:06
