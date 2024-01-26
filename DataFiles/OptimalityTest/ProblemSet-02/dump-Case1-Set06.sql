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
INSERT INTO `initialgoalparameter` VALUES (3,'I','p1'),(5,'G','p1'),(7,'I','p1'),(8,'I','p1'),(10,'I','p1'),(14,'I','p1'),(15,'G','p1'),(16,'I','p1'),(17,'I','p1'),(18,'I','p1'),(19,'I','p1'),(20,'I','p1'),(23,'G','p1'),(24,'G','p1'),(25,'I','p1'),(27,'G','p1'),(29,'I','p1'),(2,'G','p10'),(3,'G','p10'),(5,'G','p10'),(6,'G','p10'),(8,'I','p10'),(10,'I','p10'),(11,'I','p10'),(12,'G','p10'),(16,'I','p10'),(19,'G','p10'),(20,'I','p10'),(25,'I','p10'),(26,'I','p10'),(29,'I','p10'),(6,'I','p11'),(9,'I','p11'),(15,'I','p11'),(21,'I','p11'),(24,'G','p11'),(26,'I','p11'),(27,'I','p11'),(7,'I','p12'),(10,'G','p12'),(11,'I','p12'),(13,'G','p12'),(15,'I','p12'),(18,'I','p12'),(21,'G','p12'),(24,'I','p12'),(29,'I','p12'),(2,'I','p13'),(3,'G','p13'),(4,'I','p13'),(9,'I','p13'),(15,'I','p13'),(20,'I','p13'),(21,'I','p13'),(25,'I','p13'),(26,'I','p13'),(29,'I','p13'),(2,'I','p14'),(4,'I','p14'),(9,'G','p14'),(12,'I','p14'),(13,'I','p14'),(14,'I','p14'),(16,'I','p14'),(17,'G','p14'),(21,'I','p14'),(24,'I','p14'),(26,'G','p14'),(1,'G','p15'),(4,'I','p15'),(6,'I','p15'),(7,'G','p15'),(8,'I','p15'),(10,'G','p15'),(11,'G','p15'),(12,'I','p15'),(14,'I','p15'),(15,'I','p15'),(17,'I','p15'),(19,'G','p15'),(20,'G','p15'),(21,'I','p15'),(24,'G','p15'),(30,'I','p15'),(4,'G','p16'),(7,'G','p16'),(8,'I','p16'),(16,'I','p16'),(22,'I','p16'),(24,'I','p16'),(25,'G','p16'),(27,'I','p16'),(28,'I','p16'),(30,'I','p16'),(1,'I','p17'),(5,'I','p17'),(11,'I','p17'),(14,'I','p17'),(16,'I','p17'),(17,'I','p17'),(18,'I','p17'),(21,'G','p17'),(23,'G','p17'),(26,'I','p17'),(29,'G','p17'),(30,'I','p17'),(7,'G','p18'),(10,'I','p18'),(12,'G','p18'),(16,'G','p18'),(17,'I','p18'),(18,'G','p18'),(19,'G','p18'),(20,'I','p18'),(22,'I','p18'),(23,'I','p18'),(29,'I','p18'),(1,'I','p19'),(2,'I','p19'),(3,'G','p19'),(12,'I','p19'),(14,'G','p19'),(21,'G','p19'),(22,'G','p19'),(26,'I','p19'),(27,'G','p19'),(30,'G','p19'),(6,'I','p2'),(7,'I','p2'),(11,'G','p2'),(13,'G','p2'),(14,'G','p2'),(16,'I','p2'),(19,'I','p2'),(21,'I','p2'),(22,'I','p2'),(24,'I','p2'),(28,'G','p2'),(30,'I','p2'),(1,'I','p20'),(3,'I','p20'),(5,'I','p20'),(7,'I','p20'),(10,'I','p20'),(15,'I','p20'),(19,'I','p20'),(22,'G','p20'),(24,'I','p20'),(26,'I','p20'),(28,'G','p20'),(29,'I','p20'),(30,'I','p20'),(3,'I','p21'),(8,'G','p21'),(9,'I','p21'),(10,'G','p21'),(11,'I','p21'),(12,'I','p21'),(13,'I','p21'),(14,'G','p21'),(15,'I','p21'),(20,'I','p21'),(22,'I','p21'),(27,'G','p21'),(28,'I','p21'),(29,'G','p21'),(2,'G','p22'),(3,'I','p22'),(8,'I','p22'),(10,'I','p22'),(12,'I','p22'),(13,'I','p22'),(15,'G','p22'),(18,'I','p22'),(23,'I','p22'),(25,'G','p22'),(27,'I','p22'),(3,'G','p23'),(4,'I','p23'),(5,'G','p23'),(6,'I','p23'),(8,'I','p23'),(10,'I','p23'),(11,'G','p23'),(13,'I','p23'),(15,'G','p23'),(17,'I','p23'),(18,'G','p23'),(20,'I','p23'),(23,'I','p23'),(24,'I','p23'),(26,'G','p23'),(2,'G','p24'),(5,'I','p24'),(9,'G','p24'),(10,'G','p24'),(20,'I','p24'),(21,'I','p24'),(25,'G','p24'),(27,'G','p24'),(28,'I','p24'),(30,'I','p24'),(2,'I','p25'),(4,'I','p25'),(5,'I','p25'),(6,'I','p25'),(11,'I','p25'),(12,'G','p25'),(14,'G','p25'),(17,'G','p25'),(19,'I','p25'),(22,'G','p25'),(23,'I','p25'),(25,'I','p25'),(26,'I','p25'),(1,'I','p26'),(2,'G','p26'),(3,'I','p26'),(4,'I','p26'),(6,'I','p26'),(7,'I','p26'),(12,'I','p26'),(13,'I','p26'),(17,'I','p26'),(29,'I','p26'),(1,'I','p27'),(2,'I','p27'),(5,'G','p27'),(8,'G','p27'),(9,'G','p27'),(18,'G','p27'),(22,'I','p27'),(27,'I','p27'),(28,'G','p27'),(1,'G','p28'),(4,'G','p28'),(5,'I','p28'),(8,'I','p28'),(12,'G','p28'),(17,'G','p28'),(18,'I','p28'),(19,'I','p28'),(20,'G','p28'),(23,'I','p28'),(28,'I','p28'),(29,'I','p28'),(3,'I','p29'),(11,'I','p29'),(13,'G','p29'),(14,'I','p29'),(16,'G','p29'),(18,'I','p29'),(23,'I','p29'),(26,'G','p29'),(27,'I','p29'),(28,'G','p29'),(30,'I','p29'),(1,'I','p3'),(2,'I','p3'),(6,'G','p3'),(7,'I','p3'),(11,'I','p3'),(13,'I','p3'),(14,'I','p3'),(18,'G','p3'),(21,'I','p3'),(23,'I','p3'),(25,'I','p3'),(26,'I','p3'),(27,'I','p3'),(28,'I','p3'),(30,'G','p3'),(1,'I','p30'),(4,'G','p30'),(5,'I','p30'),(7,'I','p30'),(8,'G','p30'),(9,'I','p30'),(16,'G','p30'),(17,'I','p30'),(18,'I','p30'),(19,'I','p30'),(20,'G','p30'),(22,'I','p30'),(24,'G','p30'),(25,'I','p30'),(30,'G','p30'),(1,'I','p4'),(7,'I','p4'),(9,'I','p4'),(10,'I','p4'),(11,'G','p4'),(13,'G','p4'),(16,'G','p4'),(17,'G','p4'),(19,'G','p4'),(20,'I','p4'),(22,'I','p4'),(23,'I','p4'),(25,'I','p4'),(27,'I','p4'),(28,'I','p4'),(1,'G','p5'),(2,'I','p5'),(4,'I','p5'),(6,'I','p5'),(8,'I','p5'),(9,'I','p5'),(11,'I','p5'),(18,'I','p5'),(19,'I','p5'),(22,'G','p5'),(23,'G','p5'),(25,'I','p5'),(29,'G','p5'),(3,'I','p6'),(4,'G','p6'),(5,'I','p6'),(9,'I','p6'),(10,'I','p6'),(12,'I','p6'),(15,'G','p6'),(29,'G','p6'),(30,'I','p6'),(5,'I','p7'),(6,'I','p7'),(9,'G','p7'),(13,'I','p7'),(14,'I','p7'),(15,'I','p7'),(16,'I','p7'),(19,'I','p7'),(23,'G','p7'),(24,'I','p7'),(27,'I','p7'),(28,'I','p7'),(2,'I','p8'),(4,'I','p8'),(6,'G','p8'),(7,'G','p8'),(8,'G','p8'),(12,'I','p8'),(13,'I','p8'),(15,'I','p8'),(17,'I','p8'),(21,'I','p8'),(22,'I','p8'),(30,'G','p8'),(1,'G','p9'),(3,'I','p9'),(6,'G','p9'),(9,'I','p9'),(14,'I','p9'),(16,'I','p9'),(20,'G','p9'),(21,'G','p9'),(24,'I','p9'),(25,'G','p9'),(26,'G','p9'),(28,'I','p9');
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
INSERT INTO `inputparameter` VALUES ('WSS109','p1'),('WSS125','p1'),('WSS137','p1'),('WSS152','p1'),('WSS159','p1'),('WSS167','p1'),('WSS174','p1'),('WSS183','p1'),('WSS20','p1'),('WSS3','p1'),('WSS66','p1'),('WSS68','p1'),('WSS78','p1'),('WSS90','p1'),('WSS96','p1'),('WSS136','p10'),('WSS14','p10'),('WSS155','p10'),('WSS158','p10'),('WSS170','p10'),('WSS30','p10'),('WSS47','p10'),('WSS7','p10'),('WSS73','p10'),('WSS102','p11'),('WSS109','p11'),('WSS112','p11'),('WSS120','p11'),('WSS127','p11'),('WSS139','p11'),('WSS154','p11'),('WSS156','p11'),('WSS179','p11'),('WSS195','p11'),('WSS27','p11'),('WSS33','p11'),('WSS36','p11'),('WSS39','p11'),('WSS42','p11'),('WSS58','p11'),('WSS74','p11'),('WSS90','p11'),('WSS93','p11'),('WSS103','p12'),('WSS104','p12'),('WSS108','p12'),('WSS12','p12'),('WSS121','p12'),('WSS130','p12'),('WSS149','p12'),('WSS15','p12'),('WSS171','p12'),('WSS182','p12'),('WSS187','p12'),('WSS19','p12'),('WSS191','p12'),('WSS50','p12'),('WSS59','p12'),('WSS66','p12'),('WSS78','p12'),('WSS8','p12'),('WSS82','p12'),('WSS87','p12'),('WSS94','p12'),('WSS106','p13'),('WSS111','p13'),('WSS131','p13'),('WSS133','p13'),('WSS143','p13'),('WSS147','p13'),('WSS149','p13'),('WSS181','p13'),('WSS35','p13'),('WSS51','p13'),('WSS64','p13'),('WSS82','p13'),('WSS93','p13'),('WSS123','p14'),('WSS14','p14'),('WSS168','p14'),('WSS17','p14'),('WSS170','p14'),('WSS192','p14'),('WSS28','p14'),('WSS3','p14'),('WSS46','p14'),('WSS51','p14'),('WSS62','p14'),('WSS92','p14'),('WSS136','p15'),('WSS141','p15'),('WSS153','p15'),('WSS161','p15'),('WSS176','p15'),('WSS185','p15'),('WSS186','p15'),('WSS22','p15'),('WSS43','p15'),('WSS47','p15'),('WSS65','p15'),('WSS79','p15'),('WSS81','p15'),('WSS101','p16'),('WSS114','p16'),('WSS116','p16'),('WSS117','p16'),('WSS130','p16'),('WSS160','p16'),('WSS38','p16'),('WSS45','p16'),('WSS52','p16'),('WSS80','p16'),('WSS98','p16'),('WSS103','p17'),('WSS113','p17'),('WSS117','p17'),('WSS135','p17'),('WSS139','p17'),('WSS145','p17'),('WSS158','p17'),('WSS171','p17'),('WSS180','p17'),('WSS194','p17'),('WSS21','p17'),('WSS41','p17'),('WSS43','p17'),('WSS59','p17'),('WSS67','p17'),('WSS69','p17'),('WSS80','p17'),('WSS81','p17'),('WSS95','p17'),('WSS98','p17'),('WSS11','p18'),('WSS113','p18'),('WSS124','p18'),('WSS142','p18'),('WSS15','p18'),('WSS17','p18'),('WSS178','p18'),('WSS191','p18'),('WSS194','p18'),('WSS37','p18'),('WSS44','p18'),('WSS54','p18'),('WSS61','p18'),('WSS97','p18'),('WSS160','p19'),('WSS166','p19'),('WSS200','p19'),('WSS21','p19'),('WSS22','p19'),('WSS23','p19'),('WSS70','p19'),('WSS86','p19'),('WSS118','p2'),('WSS119','p2'),('WSS126','p2'),('WSS134','p2'),('WSS146','p2'),('WSS151','p2'),('WSS156','p2'),('WSS179','p2'),('WSS184','p2'),('WSS193','p2'),('WSS24','p2'),('WSS26','p2'),('WSS37','p2'),('WSS39','p2'),('WSS48','p2'),('WSS9','p2'),('WSS107','p20'),('WSS115','p20'),('WSS116','p20'),('WSS132','p20'),('WSS137','p20'),('WSS140','p20'),('WSS153','p20'),('WSS172','p20'),('WSS186','p20'),('WSS23','p20'),('WSS27','p20'),('WSS28','p20'),('WSS32','p20'),('WSS69','p20'),('WSS1','p21'),('WSS122','p21'),('WSS131','p21'),('WSS197','p21'),('WSS57','p21'),('WSS75','p21'),('WSS100','p22'),('WSS110','p22'),('WSS132','p22'),('WSS144','p22'),('WSS155','p22'),('WSS189','p22'),('WSS26','p22'),('WSS31','p22'),('WSS63','p22'),('WSS91','p22'),('WSS112','p23'),('WSS129','p23'),('WSS135','p23'),('WSS146','p23'),('WSS151','p23'),('WSS177','p23'),('WSS181','p23'),('WSS185','p23'),('WSS49','p23'),('WSS55','p23'),('WSS72','p23'),('WSS10','p24'),('WSS104','p24'),('WSS121','p24'),('WSS128','p24'),('WSS161','p24'),('WSS164','p24'),('WSS190','p24'),('WSS199','p24'),('WSS41','p24'),('WSS6','p24'),('WSS60','p24'),('WSS76','p24'),('WSS9','p24'),('WSS1','p25'),('WSS100','p25'),('WSS148','p25'),('WSS173','p25'),('WSS55','p25'),('WSS56','p25'),('WSS83','p25'),('WSS85','p25'),('WSS105','p26'),('WSS107','p26'),('WSS123','p26'),('WSS129','p26'),('WSS166','p26'),('WSS169','p26'),('WSS177','p26'),('WSS184','p26'),('WSS199','p26'),('WSS25','p26'),('WSS33','p26'),('WSS38','p26'),('WSS57','p26'),('WSS6','p26'),('WSS108','p27'),('WSS12','p27'),('WSS133','p27'),('WSS138','p27'),('WSS162','p27'),('WSS173','p27'),('WSS2','p27'),('WSS40','p27'),('WSS54','p27'),('WSS58','p27'),('WSS8','p27'),('WSS83','p27'),('WSS84','p27'),('WSS88','p27'),('WSS96','p27'),('WSS99','p27'),('WSS110','p28'),('WSS119','p28'),('WSS140','p28'),('WSS147','p28'),('WSS152','p28'),('WSS163','p28'),('WSS167','p28'),('WSS183','p28'),('WSS200','p28'),('WSS4','p28'),('WSS5','p28'),('WSS53','p28'),('WSS68','p28'),('WSS7','p28'),('WSS89','p28'),('WSS124','p29'),('WSS125','p29'),('WSS13','p29'),('WSS142','p29'),('WSS178','p29'),('WSS25','p29'),('WSS49','p29'),('WSS53','p29'),('WSS79','p29'),('WSS86','p29'),('WSS101','p3'),('WSS115','p3'),('WSS145','p3'),('WSS150','p3'),('WSS176','p3'),('WSS188','p3'),('WSS29','p3'),('WSS34','p3'),('WSS42','p3'),('WSS44','p3'),('WSS46','p3'),('WSS138','p30'),('WSS172','p30'),('WSS196','p30'),('WSS198','p30'),('WSS24','p30'),('WSS34','p30'),('WSS71','p30'),('WSS105','p4'),('WSS111','p4'),('WSS16','p4'),('WSS165','p4'),('WSS180','p4'),('WSS182','p4'),('WSS30','p4'),('WSS48','p4'),('WSS56','p4'),('WSS70','p4'),('WSS71','p4'),('WSS76','p4'),('WSS85','p4'),('WSS88','p4'),('WSS106','p5'),('WSS134','p5'),('WSS143','p5'),('WSS162','p5'),('WSS163','p5'),('WSS187','p5'),('WSS193','p5'),('WSS196','p5'),('WSS198','p5'),('WSS29','p5'),('WSS5','p5'),('WSS50','p5'),('WSS52','p5'),('WSS74','p5'),('WSS94','p5'),('WSS126','p6'),('WSS164','p6'),('WSS18','p6'),('WSS188','p6'),('WSS20','p6'),('WSS65','p6'),('WSS75','p6'),('WSS102','p7'),('WSS120','p7'),('WSS144','p7'),('WSS148','p7'),('WSS157','p7'),('WSS159','p7'),('WSS165','p7'),('WSS168','p7'),('WSS174','p7'),('WSS189','p7'),('WSS36','p7'),('WSS40','p7'),('WSS45','p7'),('WSS63','p7'),('WSS87','p7'),('WSS89','p7'),('WSS10','p8'),('WSS114','p8'),('WSS118','p8'),('WSS122','p8'),('WSS141','p8'),('WSS150','p8'),('WSS154','p8'),('WSS169','p8'),('WSS175','p8'),('WSS18','p8'),('WSS190','p8'),('WSS192','p8'),('WSS195','p8'),('WSS197','p8'),('WSS31','p8'),('WSS61','p8'),('WSS72','p8'),('WSS73','p8'),('WSS77','p8'),('WSS84','p8'),('WSS91','p8'),('WSS99','p8'),('WSS11','p9'),('WSS127','p9'),('WSS13','p9'),('WSS157','p9'),('WSS16','p9'),('WSS2','p9'),('WSS32','p9'),('WSS62','p9'),('WSS64','p9'),('WSS67','p9'),('WSS77','p9'),('WSS95','p9'),('WSS97','p9');
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
INSERT INTO `outputparameter` VALUES ('WSS111','p1'),('WSS118','p1'),('WSS122','p1'),('WSS130','p1'),('WSS132','p1'),('WSS134','p1'),('WSS135','p1'),('WSS140','p1'),('WSS146','p1'),('WSS15','p1'),('WSS152','p1'),('WSS155','p1'),('WSS161','p1'),('WSS164','p1'),('WSS170','p1'),('WSS173','p1'),('WSS184','p1'),('WSS191','p1'),('WSS197','p1'),('WSS2','p1'),('WSS3','p1'),('WSS31','p1'),('WSS34','p1'),('WSS35','p1'),('WSS47','p1'),('WSS48','p1'),('WSS50','p1'),('WSS53','p1'),('WSS60','p1'),('WSS61','p1'),('WSS71','p1'),('WSS74','p1'),('WSS76','p1'),('WSS9','p1'),('WSS93','p1'),('WSS99','p1'),('WSS100','p10'),('WSS106','p10'),('WSS107','p10'),('WSS112','p10'),('WSS117','p10'),('WSS121','p10'),('WSS14','p10'),('WSS145','p10'),('WSS148','p10'),('WSS154','p10'),('WSS158','p10'),('WSS162','p10'),('WSS164','p10'),('WSS172','p10'),('WSS173','p10'),('WSS181','p10'),('WSS188','p10'),('WSS22','p10'),('WSS26','p10'),('WSS29','p10'),('WSS30','p10'),('WSS4','p10'),('WSS45','p10'),('WSS48','p10'),('WSS55','p10'),('WSS64','p10'),('WSS71','p10'),('WSS75','p10'),('WSS81','p10'),('WSS85','p10'),('WSS88','p10'),('WSS91','p10'),('WSS97','p10'),('WSS102','p11'),('WSS104','p11'),('WSS105','p11'),('WSS107','p11'),('WSS112','p11'),('WSS118','p11'),('WSS121','p11'),('WSS123','p11'),('WSS126','p11'),('WSS128','p11'),('WSS133','p11'),('WSS136','p11'),('WSS142','p11'),('WSS145','p11'),('WSS147','p11'),('WSS150','p11'),('WSS151','p11'),('WSS152','p11'),('WSS153','p11'),('WSS156','p11'),('WSS162','p11'),('WSS165','p11'),('WSS168','p11'),('WSS170','p11'),('WSS172','p11'),('WSS181','p11'),('WSS187','p11'),('WSS188','p11'),('WSS191','p11'),('WSS194','p11'),('WSS199','p11'),('WSS20','p11'),('WSS3','p11'),('WSS44','p11'),('WSS45','p11'),('WSS46','p11'),('WSS50','p11'),('WSS52','p11'),('WSS67','p11'),('WSS7','p11'),('WSS74','p11'),('WSS87','p11'),('WSS91','p11'),('WSS10','p12'),('WSS105','p12'),('WSS108','p12'),('WSS109','p12'),('WSS111','p12'),('WSS12','p12'),('WSS126','p12'),('WSS13','p12'),('WSS130','p12'),('WSS136','p12'),('WSS141','p12'),('WSS146','p12'),('WSS148','p12'),('WSS15','p12'),('WSS151','p12'),('WSS154','p12'),('WSS159','p12'),('WSS16','p12'),('WSS168','p12'),('WSS17','p12'),('WSS170','p12'),('WSS178','p12'),('WSS179','p12'),('WSS184','p12'),('WSS186','p12'),('WSS193','p12'),('WSS196','p12'),('WSS20','p12'),('WSS38','p12'),('WSS41','p12'),('WSS52','p12'),('WSS54','p12'),('WSS61','p12'),('WSS72','p12'),('WSS75','p12'),('WSS97','p12'),('WSS98','p12'),('WSS107','p13'),('WSS117','p13'),('WSS121','p13'),('WSS123','p13'),('WSS125','p13'),('WSS134','p13'),('WSS135','p13'),('WSS14','p13'),('WSS145','p13'),('WSS161','p13'),('WSS163','p13'),('WSS168','p13'),('WSS169','p13'),('WSS173','p13'),('WSS178','p13'),('WSS197','p13'),('WSS2','p13'),('WSS21','p13'),('WSS23','p13'),('WSS25','p13'),('WSS28','p13'),('WSS32','p13'),('WSS38','p13'),('WSS43','p13'),('WSS67','p13'),('WSS7','p13'),('WSS74','p13'),('WSS76','p13'),('WSS77','p13'),('WSS84','p13'),('WSS86','p13'),('WSS9','p13'),('WSS95','p13'),('WSS129','p14'),('WSS138','p14'),('WSS146','p14'),('WSS156','p14'),('WSS158','p14'),('WSS159','p14'),('WSS160','p14'),('WSS162','p14'),('WSS168','p14'),('WSS183','p14'),('WSS185','p14'),('WSS186','p14'),('WSS188','p14'),('WSS19','p14'),('WSS20','p14'),('WSS200','p14'),('WSS29','p14'),('WSS31','p14'),('WSS33','p14'),('WSS37','p14'),('WSS4','p14'),('WSS51','p14'),('WSS57','p14'),('WSS64','p14'),('WSS68','p14'),('WSS70','p14'),('WSS74','p14'),('WSS79','p14'),('WSS82','p14'),('WSS89','p14'),('WSS90','p14'),('WSS92','p14'),('WSS98','p14'),('WSS102','p15'),('WSS106','p15'),('WSS107','p15'),('WSS108','p15'),('WSS111','p15'),('WSS112','p15'),('WSS124','p15'),('WSS125','p15'),('WSS131','p15'),('WSS134','p15'),('WSS138','p15'),('WSS146','p15'),('WSS15','p15'),('WSS156','p15'),('WSS157','p15'),('WSS165','p15'),('WSS170','p15'),('WSS176','p15'),('WSS190','p15'),('WSS193','p15'),('WSS22','p15'),('WSS25','p15'),('WSS26','p15'),('WSS32','p15'),('WSS40','p15'),('WSS42','p15'),('WSS43','p15'),('WSS5','p15'),('WSS52','p15'),('WSS56','p15'),('WSS57','p15'),('WSS59','p15'),('WSS62','p15'),('WSS64','p15'),('WSS72','p15'),('WSS77','p15'),('WSS8','p15'),('WSS81','p15'),('WSS89','p15'),('WSS93','p15'),('WSS11','p16'),('WSS110','p16'),('WSS126','p16'),('WSS128','p16'),('WSS132','p16'),('WSS141','p16'),('WSS145','p16'),('WSS148','p16'),('WSS152','p16'),('WSS153','p16'),('WSS170','p16'),('WSS174','p16'),('WSS176','p16'),('WSS181','p16'),('WSS187','p16'),('WSS194','p16'),('WSS195','p16'),('WSS196','p16'),('WSS197','p16'),('WSS22','p16'),('WSS24','p16'),('WSS27','p16'),('WSS28','p16'),('WSS36','p16'),('WSS42','p16'),('WSS43','p16'),('WSS53','p16'),('WSS55','p16'),('WSS65','p16'),('WSS66','p16'),('WSS7','p16'),('WSS98','p16'),('WSS99','p16'),('WSS101','p17'),('WSS103','p17'),('WSS105','p17'),('WSS11','p17'),('WSS115','p17'),('WSS118','p17'),('WSS127','p17'),('WSS138','p17'),('WSS141','p17'),('WSS143','p17'),('WSS152','p17'),('WSS154','p17'),('WSS155','p17'),('WSS161','p17'),('WSS163','p17'),('WSS166','p17'),('WSS167','p17'),('WSS169','p17'),('WSS173','p17'),('WSS179','p17'),('WSS18','p17'),('WSS185','p17'),('WSS21','p17'),('WSS28','p17'),('WSS3','p17'),('WSS34','p17'),('WSS36','p17'),('WSS42','p17'),('WSS44','p17'),('WSS45','p17'),('WSS48','p17'),('WSS49','p17'),('WSS51','p17'),('WSS56','p17'),('WSS59','p17'),('WSS6','p17'),('WSS76','p17'),('WSS81','p17'),('WSS82','p17'),('WSS84','p17'),('WSS87','p17'),('WSS91','p17'),('WSS98','p17'),('WSS100','p18'),('WSS102','p18'),('WSS125','p18'),('WSS129','p18'),('WSS130','p18'),('WSS131','p18'),('WSS133','p18'),('WSS141','p18'),('WSS145','p18'),('WSS151','p18'),('WSS16','p18'),('WSS177','p18'),('WSS178','p18'),('WSS180','p18'),('WSS195','p18'),('WSS200','p18'),('WSS33','p18'),('WSS40','p18'),('WSS41','p18'),('WSS44','p18'),('WSS62','p18'),('WSS69','p18'),('WSS76','p18'),('WSS78','p18'),('WSS82','p18'),('WSS88','p18'),('WSS92','p18'),('WSS1','p19'),('WSS109','p19'),('WSS112','p19'),('WSS113','p19'),('WSS115','p19'),('WSS12','p19'),('WSS120','p19'),('WSS133','p19'),('WSS14','p19'),('WSS142','p19'),('WSS143','p19'),('WSS144','p19'),('WSS147','p19'),('WSS150','p19'),('WSS154','p19'),('WSS161','p19'),('WSS166','p19'),('WSS185','p19'),('WSS186','p19'),('WSS2','p19'),('WSS21','p19'),('WSS34','p19'),('WSS37','p19'),('WSS4','p19'),('WSS48','p19'),('WSS51','p19'),('WSS54','p19'),('WSS63','p19'),('WSS64','p19'),('WSS69','p19'),('WSS77','p19'),('WSS86','p19'),('WSS95','p19'),('WSS10','p2'),('WSS101','p2'),('WSS108','p2'),('WSS109','p2'),('WSS119','p2'),('WSS121','p2'),('WSS122','p2'),('WSS128','p2'),('WSS139','p2'),('WSS14','p2'),('WSS141','p2'),('WSS145','p2'),('WSS150','p2'),('WSS151','p2'),('WSS165','p2'),('WSS167','p2'),('WSS174','p2'),('WSS181','p2'),('WSS182','p2'),('WSS186','p2'),('WSS192','p2'),('WSS199','p2'),('WSS200','p2'),('WSS27','p2'),('WSS46','p2'),('WSS47','p2'),('WSS49','p2'),('WSS50','p2'),('WSS55','p2'),('WSS57','p2'),('WSS59','p2'),('WSS80','p2'),('WSS84','p2'),('WSS85','p2'),('WSS88','p2'),('WSS91','p2'),('WSS92','p2'),('WSS93','p2'),('WSS101','p20'),('WSS108','p20'),('WSS110','p20'),('WSS113','p20'),('WSS114','p20'),('WSS12','p20'),('WSS124','p20'),('WSS131','p20'),('WSS135','p20'),('WSS139','p20'),('WSS149','p20'),('WSS173','p20'),('WSS177','p20'),('WSS183','p20'),('WSS24','p20'),('WSS27','p20'),('WSS36','p20'),('WSS39','p20'),('WSS4','p20'),('WSS40','p20'),('WSS41','p20'),('WSS51','p20'),('WSS52','p20'),('WSS58','p20'),('WSS60','p20'),('WSS62','p20'),('WSS65','p20'),('WSS73','p20'),('WSS83','p20'),('WSS89','p20'),('WSS90','p20'),('WSS92','p20'),('WSS95','p20'),('WSS96','p20'),('WSS97','p20'),('WSS99','p20'),('WSS11','p21'),('WSS112','p21'),('WSS115','p21'),('WSS116','p21'),('WSS117','p21'),('WSS119','p21'),('WSS12','p21'),('WSS123','p21'),('WSS125','p21'),('WSS135','p21'),('WSS137','p21'),('WSS139','p21'),('WSS142','p21'),('WSS149','p21'),('WSS153','p21'),('WSS157','p21'),('WSS165','p21'),('WSS175','p21'),('WSS177','p21'),('WSS182','p21'),('WSS20','p21'),('WSS25','p21'),('WSS27','p21'),('WSS29','p21'),('WSS36','p21'),('WSS37','p21'),('WSS40','p21'),('WSS49','p21'),('WSS50','p21'),('WSS58','p21'),('WSS6','p21'),('WSS66','p21'),('WSS69','p21'),('WSS96','p21'),('WSS98','p21'),('WSS102','p22'),('WSS104','p22'),('WSS105','p22'),('WSS106','p22'),('WSS113','p22'),('WSS117','p22'),('WSS123','p22'),('WSS127','p22'),('WSS129','p22'),('WSS13','p22'),('WSS143','p22'),('WSS150','p22'),('WSS152','p22'),('WSS163','p22'),('WSS166','p22'),('WSS169','p22'),('WSS17','p22'),('WSS170','p22'),('WSS171','p22'),('WSS172','p22'),('WSS181','p22'),('WSS187','p22'),('WSS191','p22'),('WSS2','p22'),('WSS26','p22'),('WSS27','p22'),('WSS3','p22'),('WSS30','p22'),('WSS33','p22'),('WSS37','p22'),('WSS40','p22'),('WSS41','p22'),('WSS43','p22'),('WSS44','p22'),('WSS55','p22'),('WSS56','p22'),('WSS62','p22'),('WSS68','p22'),('WSS70','p22'),('WSS75','p22'),('WSS80','p22'),('WSS83','p22'),('WSS94','p22'),('WSS1','p23'),('WSS10','p23'),('WSS104','p23'),('WSS118','p23'),('WSS127','p23'),('WSS132','p23'),('WSS140','p23'),('WSS143','p23'),('WSS146','p23'),('WSS147','p23'),('WSS149','p23'),('WSS153','p23'),('WSS166','p23'),('WSS17','p23'),('WSS171','p23'),('WSS177','p23'),('WSS180','p23'),('WSS182','p23'),('WSS184','p23'),('WSS185','p23'),('WSS186','p23'),('WSS189','p23'),('WSS19','p23'),('WSS194','p23'),('WSS20','p23'),('WSS24','p23'),('WSS30','p23'),('WSS31','p23'),('WSS32','p23'),('WSS54','p23'),('WSS56','p23'),('WSS57','p23'),('WSS58','p23'),('WSS67','p23'),('WSS7','p23'),('WSS75','p23'),('WSS81','p23'),('WSS82','p23'),('WSS85','p23'),('WSS87','p23'),('WSS9','p23'),('WSS97','p23'),('WSS1','p24'),('WSS10','p24'),('WSS101','p24'),('WSS102','p24'),('WSS11','p24'),('WSS124','p24'),('WSS128','p24'),('WSS13','p24'),('WSS133','p24'),('WSS136','p24'),('WSS148','p24'),('WSS149','p24'),('WSS155','p24'),('WSS156','p24'),('WSS157','p24'),('WSS164','p24'),('WSS167','p24'),('WSS175','p24'),('WSS180','p24'),('WSS182','p24'),('WSS183','p24'),('WSS194','p24'),('WSS196','p24'),('WSS199','p24'),('WSS26','p24'),('WSS31','p24'),('WSS34','p24'),('WSS6','p24'),('WSS63','p24'),('WSS66','p24'),('WSS71','p24'),('WSS74','p24'),('WSS8','p24'),('WSS86','p24'),('WSS88','p24'),('WSS89','p24'),('WSS108','p25'),('WSS110','p25'),('WSS116','p25'),('WSS120','p25'),('WSS122','p25'),('WSS123','p25'),('WSS137','p25'),('WSS151','p25'),('WSS159','p25'),('WSS163','p25'),('WSS165','p25'),('WSS166','p25'),('WSS168','p25'),('WSS176','p25'),('WSS179','p25'),('WSS18','p25'),('WSS180','p25'),('WSS183','p25'),('WSS189','p25'),('WSS192','p25'),('WSS2','p25'),('WSS27','p25'),('WSS28','p25'),('WSS30','p25'),('WSS34','p25'),('WSS5','p25'),('WSS51','p25'),('WSS60','p25'),('WSS63','p25'),('WSS72','p25'),('WSS79','p25'),('WSS86','p25'),('WSS124','p26'),('WSS128','p26'),('WSS150','p26'),('WSS159','p26'),('WSS178','p26'),('WSS18','p26'),('WSS182','p26'),('WSS188','p26'),('WSS189','p26'),('WSS190','p26'),('WSS191','p26'),('WSS192','p26'),('WSS195','p26'),('WSS31','p26'),('WSS35','p26'),('WSS44','p26'),('WSS46','p26'),('WSS50','p26'),('WSS51','p26'),('WSS56','p26'),('WSS6','p26'),('WSS63','p26'),('WSS76','p26'),('WSS78','p26'),('WSS84','p26'),('WSS87','p26'),('WSS88','p26'),('WSS104','p27'),('WSS106','p27'),('WSS11','p27'),('WSS114','p27'),('WSS120','p27'),('WSS125','p27'),('WSS138','p27'),('WSS140','p27'),('WSS16','p27'),('WSS160','p27'),('WSS174','p27'),('WSS175','p27'),('WSS18','p27'),('WSS181','p27'),('WSS183','p27'),('WSS190','p27'),('WSS193','p27'),('WSS20','p27'),('WSS23','p27'),('WSS37','p27'),('WSS46','p27'),('WSS5','p27'),('WSS60','p27'),('WSS62','p27'),('WSS65','p27'),('WSS66','p27'),('WSS70','p27'),('WSS72','p27'),('WSS83','p27'),('WSS87','p27'),('WSS92','p27'),('WSS94','p27'),('WSS95','p27'),('WSS98','p27'),('WSS104','p28'),('WSS105','p28'),('WSS119','p28'),('WSS121','p28'),('WSS122','p28'),('WSS132','p28'),('WSS133','p28'),('WSS137','p28'),('WSS143','p28'),('WSS157','p28'),('WSS165','p28'),('WSS168','p28'),('WSS169','p28'),('WSS175','p28'),('WSS18','p28'),('WSS187','p28'),('WSS19','p28'),('WSS191','p28'),('WSS198','p28'),('WSS200','p28'),('WSS22','p28'),('WSS25','p28'),('WSS32','p28'),('WSS33','p28'),('WSS35','p28'),('WSS47','p28'),('WSS53','p28'),('WSS57','p28'),('WSS61','p28'),('WSS65','p28'),('WSS67','p28'),('WSS69','p28'),('WSS80','p28'),('WSS83','p28'),('WSS93','p28'),('WSS103','p29'),('WSS11','p29'),('WSS110','p29'),('WSS111','p29'),('WSS119','p29'),('WSS128','p29'),('WSS131','p29'),('WSS134','p29'),('WSS135','p29'),('WSS139','p29'),('WSS152','p29'),('WSS160','p29'),('WSS164','p29'),('WSS17','p29'),('WSS179','p29'),('WSS182','p29'),('WSS185','p29'),('WSS23','p29'),('WSS28','p29'),('WSS33','p29'),('WSS38','p29'),('WSS39','p29'),('WSS44','p29'),('WSS48','p29'),('WSS54','p29'),('WSS55','p29'),('WSS59','p29'),('WSS61','p29'),('WSS77','p29'),('WSS79','p29'),('WSS82','p29'),('WSS86','p29'),('WSS87','p29'),('WSS91','p29'),('WSS97','p29'),('WSS99','p29'),('WSS10','p3'),('WSS103','p3'),('WSS108','p3'),('WSS113','p3'),('WSS114','p3'),('WSS115','p3'),('WSS12','p3'),('WSS122','p3'),('WSS129','p3'),('WSS130','p3'),('WSS136','p3'),('WSS137','p3'),('WSS143','p3'),('WSS146','p3'),('WSS15','p3'),('WSS164','p3'),('WSS171','p3'),('WSS178','p3'),('WSS186','p3'),('WSS190','p3'),('WSS194','p3'),('WSS196','p3'),('WSS199','p3'),('WSS24','p3'),('WSS29','p3'),('WSS30','p3'),('WSS42','p3'),('WSS45','p3'),('WSS49','p3'),('WSS66','p3'),('WSS73','p3'),('WSS77','p3'),('WSS8','p3'),('WSS89','p3'),('WSS93','p3'),('WSS95','p3'),('WSS100','p30'),('WSS106','p30'),('WSS110','p30'),('WSS114','p30'),('WSS132','p30'),('WSS134','p30'),('WSS138','p30'),('WSS139','p30'),('WSS140','p30'),('WSS144','p30'),('WSS158','p30'),('WSS161','p30'),('WSS17','p30'),('WSS172','p30'),('WSS179','p30'),('WSS187','p30'),('WSS19','p30'),('WSS191','p30'),('WSS198','p30'),('WSS2','p30'),('WSS200','p30'),('WSS23','p30'),('WSS24','p30'),('WSS3','p30'),('WSS36','p30'),('WSS39','p30'),('WSS49','p30'),('WSS52','p30'),('WSS67','p30'),('WSS78','p30'),('WSS79','p30'),('WSS80','p30'),('WSS83','p30'),('WSS85','p30'),('WSS93','p30'),('WSS96','p30'),('WSS1','p4'),('WSS100','p4'),('WSS109','p4'),('WSS114','p4'),('WSS118','p4'),('WSS119','p4'),('WSS120','p4'),('WSS122','p4'),('WSS124','p4'),('WSS125','p4'),('WSS130','p4'),('WSS136','p4'),('WSS144','p4'),('WSS147','p4'),('WSS157','p4'),('WSS180','p4'),('WSS184','p4'),('WSS190','p4'),('WSS192','p4'),('WSS199','p4'),('WSS30','p4'),('WSS35','p4'),('WSS38','p4'),('WSS43','p4'),('WSS45','p4'),('WSS6','p4'),('WSS68','p4'),('WSS69','p4'),('WSS7','p4'),('WSS75','p4'),('WSS76','p4'),('WSS8','p4'),('WSS85','p4'),('WSS9','p4'),('WSS95','p4'),('WSS100','p5'),('WSS104','p5'),('WSS107','p5'),('WSS113','p5'),('WSS114','p5'),('WSS115','p5'),('WSS117','p5'),('WSS127','p5'),('WSS13','p5'),('WSS132','p5'),('WSS137','p5'),('WSS150','p5'),('WSS151','p5'),('WSS153','p5'),('WSS162','p5'),('WSS166','p5'),('WSS171','p5'),('WSS174','p5'),('WSS175','p5'),('WSS180','p5'),('WSS183','p5'),('WSS188','p5'),('WSS19','p5'),('WSS198','p5'),('WSS199','p5'),('WSS21','p5'),('WSS29','p5'),('WSS33','p5'),('WSS37','p5'),('WSS53','p5'),('WSS54','p5'),('WSS6','p5'),('WSS61','p5'),('WSS68','p5'),('WSS70','p5'),('WSS75','p5'),('WSS81','p5'),('WSS92','p5'),('WSS96','p5'),('WSS1','p6'),('WSS101','p6'),('WSS102','p6'),('WSS106','p6'),('WSS111','p6'),('WSS113','p6'),('WSS120','p6'),('WSS121','p6'),('WSS124','p6'),('WSS131','p6'),('WSS139','p6'),('WSS140','p6'),('WSS147','p6'),('WSS148','p6'),('WSS156','p6'),('WSS160','p6'),('WSS172','p6'),('WSS174','p6'),('WSS177','p6'),('WSS179','p6'),('WSS19','p6'),('WSS190','p6'),('WSS192','p6'),('WSS193','p6'),('WSS194','p6'),('WSS197','p6'),('WSS198','p6'),('WSS4','p6'),('WSS42','p6'),('WSS50','p6'),('WSS54','p6'),('WSS58','p6'),('WSS60','p6'),('WSS66','p6'),('WSS70','p6'),('WSS73','p6'),('WSS74','p6'),('WSS78','p6'),('WSS79','p6'),('WSS80','p6'),('WSS81','p6'),('WSS85','p6'),('WSS90','p6'),('WSS94','p6'),('WSS96','p6'),('WSS1','p7'),('WSS101','p7'),('WSS103','p7'),('WSS116','p7'),('WSS117','p7'),('WSS12','p7'),('WSS127','p7'),('WSS129','p7'),('WSS133','p7'),('WSS142','p7'),('WSS153','p7'),('WSS16','p7'),('WSS160','p7'),('WSS161','p7'),('WSS162','p7'),('WSS163','p7'),('WSS164','p7'),('WSS174','p7'),('WSS184','p7'),('WSS185','p7'),('WSS187','p7'),('WSS198','p7'),('WSS23','p7'),('WSS35','p7'),('WSS36','p7'),('WSS40','p7'),('WSS46','p7'),('WSS64','p7'),('WSS65','p7'),('WSS67','p7'),('WSS7','p7'),('WSS72','p7'),('WSS73','p7'),('WSS80','p7'),('WSS90','p7'),('WSS10','p8'),('WSS100','p8'),('WSS107','p8'),('WSS109','p8'),('WSS111','p8'),('WSS116','p8'),('WSS126','p8'),('WSS127','p8'),('WSS129','p8'),('WSS13','p8'),('WSS131','p8'),('WSS141','p8'),('WSS142','p8'),('WSS144','p8'),('WSS149','p8'),('WSS155','p8'),('WSS157','p8'),('WSS159','p8'),('WSS16','p8'),('WSS163','p8'),('WSS171','p8'),('WSS175','p8'),('WSS176','p8'),('WSS177','p8'),('WSS193','p8'),('WSS195','p8'),('WSS198','p8'),('WSS21','p8'),('WSS22','p8'),('WSS23','p8'),('WSS25','p8'),('WSS35','p8'),('WSS38','p8'),('WSS39','p8'),('WSS43','p8'),('WSS47','p8'),('WSS5','p8'),('WSS57','p8'),('WSS60','p8'),('WSS61','p8'),('WSS64','p8'),('WSS68','p8'),('WSS69','p8'),('WSS70','p8'),('WSS72','p8'),('WSS73','p8'),('WSS78','p8'),('WSS9','p8'),('WSS94','p8'),('WSS103','p9'),('WSS116','p9'),('WSS118','p9'),('WSS120','p9'),('WSS13','p9'),('WSS130','p9'),('WSS136','p9'),('WSS137','p9'),('WSS14','p9'),('WSS140','p9'),('WSS144','p9'),('WSS154','p9'),('WSS158','p9'),('WSS162','p9'),('WSS167','p9'),('WSS169','p9'),('WSS17','p9'),('WSS171','p9'),('WSS178','p9'),('WSS188','p9'),('WSS189','p9'),('WSS193','p9'),('WSS197','p9'),('WSS200','p9'),('WSS26','p9'),('WSS28','p9'),('WSS3','p9'),('WSS32','p9'),('WSS34','p9'),('WSS39','p9'),('WSS41','p9'),('WSS47','p9'),('WSS5','p9'),('WSS56','p9'),('WSS59','p9'),('WSS84','p9'),('WSS89','p9'),('WSS90','p9'),('WSS97','p9');
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
INSERT INTO `result` VALUES (1,1,'WSS24'),(1,2,'WSS19'),(2,1,'WSS93'),(2,2,'WSS86'),(3,1,'WSS28'),(3,2,'WSS14'),(4,1,'WSS197'),(4,2,'WSS13'),(5,1,'WSS198'),(5,2,'WSS94'),(6,1,'WSS198'),(6,2,'WSS102'),(7,1,'WSS199'),(7,2,'WSS103'),(8,1,'WSS73'),(8,2,'WSS79'),(9,1,'WSS183'),(9,2,'WSS189'),(10,1,'WSS195'),(11,1,'WSS67'),(12,1,'WSS74'),(12,2,'WSS91'),(13,1,'WSS26'),(13,2,'WSS88'),(14,1,'WSS109'),(14,2,'WSS103'),(15,1,'WSS172'),(15,2,'WSS102'),(16,1,'WSS17'),(16,2,'WSS181'),(17,1,'WSS13'),(17,2,'WSS16'),(18,1,'WSS195'),(18,1,'WSS99'),(19,1,'WSS189'),(19,1,'WSS94'),(20,1,'WSS21'),(20,2,'WSS79'),(21,1,'WSS25'),(21,2,'WSS107'),(22,1,'WSS166'),(22,2,'WSS190'),(23,1,'WSS158'),(23,2,'WSS108'),(24,1,'WSS100'),(24,2,'WSS17'),(25,1,'WSS141'),(25,2,'WSS64'),(26,1,'WSS96'),(26,2,'WSS92'),(26,3,'WSS187'),(27,1,'WSS197'),(27,2,'WSS19'),(28,1,'WSS165'),(28,2,'WSS171'),(29,1,'WSS187'),(29,2,'WSS83'),(30,1,'WSS186'),(30,1,'WSS26'),(1031,1,'ICP006'),(1031,1,'ICP110'),(1031,1,'ICP311'),(1031,2,'ICP500'),(1035,1,'ICP386'),(1035,2,'ICP466'),(1133,1,'ICP103'),(1133,2,'ICP341'),(1133,3,'ICP395'),(1136,1,'ICP110'),(1136,2,'ICP710'),(1141,1,'ICP311'),(1141,2,'ICP422'),(1288,1,'ICP001'),(1288,2,'ICP110'),(1291,1,'ICP110'),(1291,2,'ICP720'),(1293,1,'ICP110'),(1293,1,'ICP311'),(1293,2,'ICP500'),(1296,1,'ICP006'),(1296,1,'ICP103'),(1296,1,'ICP110'),(1296,1,'ICP311'),(1296,1,'ICP313'),(1296,2,'ICP341'),(1296,2,'ICP500'),(1296,3,'ICP395'),(1325,1,'ICP110'),(1325,2,'ICP680'),(1355,1,'ICP110'),(1355,2,'ICP469'),(1406,1,'ICP110'),(1435,1,'ICP006'),(1435,1,'ICP110'),(1435,1,'ICP311'),(1435,2,'ICP500'),(1509,1,'ICP001'),(1509,1,'ICP006'),(1509,2,'ICP002'),(1509,2,'ICP110'),(1509,3,'ICP311'),(1509,4,'ICP500'),(1572,1,'ICP103'),(1572,1,'ICP110'),(1572,1,'ICP386'),(1572,2,'ICP341'),(1572,2,'ICP395'),(1572,2,'ICP466'),(1572,2,'ICP620'),(1572,2,'ICP720'),(1572,3,'ICP445'),(1583,1,'ICP386'),(1583,2,'ICP466'),(1607,1,'ICP301'),(1607,1,'ICP341'),(1607,1,'ICP386'),(1607,2,'ICP481'),(1620,1,'ICP006'),(1620,1,'ICP110'),(1620,1,'ICP311'),(1620,2,'ICP500'),(1646,1,'ICP006'),(1646,1,'ICP110'),(1646,1,'ICP311'),(1646,2,'ICP469'),(1646,2,'ICP500'),(1733,1,'ICP311'),(1733,2,'ICP422'),(1797,1,'ICP386'),(1797,2,'ICP466'),(1851,1,'ICP003'),(1851,1,'ICP311'),(1851,2,'ICP313'),(1851,3,'ICP486'),(1981,1,'ICP110'),(1981,1,'ICP311'),(1981,2,'ICP500'),(2015,1,'ICP006'),(2015,1,'ICP110'),(2015,1,'ICP311'),(2015,2,'ICP500'),(2026,1,'ICP386'),(2026,2,'ICP466'),(2114,1,'ICP341'),(2114,2,'ICP395'),(2114,3,'ICP445'),(2280,1,'ICP103'),(2280,1,'ICP386'),(2280,2,'ICP341'),(2280,2,'ICP395'),(2280,2,'ICP466'),(2280,3,'ICP495'),(2317,1,'ICP313'),(2317,1,'ICP341'),(2317,1,'ICP680'),(2317,2,'ICP395'),(2317,3,'ICP445'),(2474,1,'ICP003'),(2474,1,'ICP311'),(2474,2,'ICP313'),(2474,3,'ICP486'),(2565,1,'ICP313'),(2565,1,'ICP341'),(2565,2,'ICP395'),(2565,3,'ICP445'),(2598,1,'ICP006'),(2598,1,'ICP110'),(2598,1,'ICP311'),(2598,1,'ICP313'),(2598,1,'ICP331'),(2598,2,'ICP500'),(2610,1,'ICP003'),(2610,1,'ICP311'),(2610,2,'ICP313'),(2610,3,'ICP486'),(2659,1,'ICP006'),(2659,1,'ICP110'),(2659,1,'ICP311'),(2659,2,'ICP469'),(2659,2,'ICP500'),(2675,1,'ICP386'),(2675,2,'ICP466'),(2711,1,'ICP103'),(2711,1,'ICP386'),(2711,2,'ICP341'),(2711,3,'ICP481'),(2779,1,'ICP003'),(2779,1,'ICP311'),(2779,2,'ICP313'),(2779,3,'ICP486'),(2985,1,'ICP103'),(3021,1,'ICP006'),(3021,1,'ICP110'),(3021,1,'ICP302'),(3021,2,'ICP500'),(3075,1,'ICP006'),(3075,1,'ICP110'),(3075,1,'ICP311'),(3075,2,'ICP500'),(3226,1,'ICP110'),(3226,2,'ICP818'),(3286,1,'ICP006'),(3286,1,'ICP110'),(3286,1,'ICP311'),(3286,2,'ICP500'),(3357,1,'ICP006'),(3357,1,'ICP110'),(3357,1,'ICP311'),(3357,2,'ICP500'),(3667,1,'ICP103'),(3667,1,'ICP301'),(3667,1,'ICP386'),(3667,2,'ICP341'),(3667,3,'ICP481'),(3668,1,'ICP103'),(3668,1,'ICP301'),(3668,1,'ICP386'),(3668,2,'ICP341'),(3668,3,'ICP481'),(3705,1,'ICP103'),(3705,1,'ICP301'),(3705,1,'ICP386'),(3705,2,'ICP341'),(3705,3,'ICP481'),(3718,1,'ICP001'),(3718,2,'ICP002'),(3718,2,'ICP110'),(3718,3,'ICP311'),(3718,4,'ICP819'),(3877,1,'ICP386'),(3948,1,'ICP006'),(3948,1,'ICP110'),(3948,1,'ICP311'),(3948,2,'ICP500'),(3969,1,'ICP301'),(3969,1,'ICP341'),(3969,1,'ICP386'),(3969,2,'ICP481'),(3971,1,'ICP386'),(3971,2,'ICP466'),(4112,1,'ICP006'),(4112,1,'ICP110'),(4112,1,'ICP311'),(4112,2,'ICP469'),(4112,2,'ICP500'),(4178,1,'ICP002'),(4178,1,'ICP110'),(4178,2,'ICP311'),(4178,3,'ICP819'),(4281,1,'ICP110'),(4281,2,'ICP469'),(4296,1,'ICP006'),(4296,1,'ICP110'),(4296,1,'ICP311'),(4296,2,'ICP469'),(4296,2,'ICP500'),(4375,1,'ICP003'),(4375,1,'ICP311'),(4375,2,'ICP313'),(4375,3,'ICP486'),(4589,1,'ICP006'),(4589,1,'ICP110'),(4589,1,'ICP311'),(4589,2,'ICP469'),(4589,2,'ICP500'),(4607,1,'ICP006'),(4607,1,'ICP110'),(4607,1,'ICP302'),(4607,2,'ICP500'),(4747,1,'ICP311'),(4747,1,'ICP313'),(4747,2,'ICP486'),(4775,1,'ICP110'),(4775,2,'ICP500'),(4934,1,'ICP103'),(4934,2,'ICP341'),(4978,1,'ICP103'),(4980,1,'ICP006'),(4980,1,'ICP110'),(4980,1,'ICP311'),(4980,2,'ICP469'),(4980,2,'ICP500'),(4980,2,'ICP720'),(4980,3,'ICP740'),(5049,1,'ICP006'),(5049,1,'ICP110'),(5049,1,'ICP311'),(5049,2,'ICP500'),(5417,1,'ICP301'),(5417,1,'ICP341'),(5417,1,'ICP386'),(5417,2,'ICP481'),(5448,1,'ICP386'),(5448,2,'ICP466'),(5450,1,'ICP103'),(5450,1,'ICP110'),(5450,1,'ICP386'),(5450,1,'ICP817'),(5450,2,'ICP341'),(5450,2,'ICP395'),(5450,2,'ICP466'),(5450,2,'ICP620'),(5450,2,'ICP720'),(5450,3,'ICP445'),(5450,3,'ICP815'),(5461,1,'ICP002'),(5461,1,'ICP006'),(5461,1,'ICP110'),(5461,1,'ICP302'),(5461,2,'ICP500'),(5461,2,'ICP720'),(5461,3,'ICP740'),(5472,1,'ICP110'),(5472,2,'ICP818'),(5497,1,'ICP103'),(5497,2,'ICP341'),(5569,1,'ICP386'),(5569,2,'ICP466'),(5571,1,'ICP103'),(5571,2,'ICP810'),(5757,1,'ICP386'),(5757,2,'ICP466'),(5779,1,'ICP006'),(5779,1,'ICP110'),(5779,1,'ICP302'),(5779,2,'ICP500'),(5814,1,'ICP006'),(5814,1,'ICP110'),(5814,1,'ICP311'),(5814,2,'ICP500'),(5897,1,'ICP110'),(5897,2,'ICP710'),(5966,1,'ICP103'),(5966,1,'ICP301'),(5966,1,'ICP386'),(5966,2,'ICP341'),(5966,3,'ICP481'),(6032,1,'ICP386'),(6032,2,'ICP466'),(6279,1,'ICP006'),(6279,1,'ICP110'),(6279,1,'ICP311'),(6279,2,'ICP469'),(6279,2,'ICP500'),(6294,1,'ICP006'),(6294,1,'ICP110'),(6294,1,'ICP311'),(6294,2,'ICP500'),(6325,1,'ICP002'),(6325,2,'ICP003'),(6363,1,'ICP006'),(6363,1,'ICP110'),(6363,1,'ICP311'),(6363,2,'ICP469'),(6363,2,'ICP500'),(6437,1,'ICP103'),(6437,1,'ICP301'),(6437,1,'ICP386'),(6437,2,'ICP341'),(6437,3,'ICP481'),(6533,1,'ICP006'),(6533,1,'ICP110'),(6533,1,'ICP311'),(6533,2,'ICP469'),(6533,2,'ICP500'),(6574,1,'ICP002'),(6574,1,'ICP110'),(6574,2,'ICP311'),(6574,3,'ICP819'),(6604,1,'ICP103'),(6604,1,'ICP386'),(6604,2,'ICP341'),(6604,3,'ICP481'),(6679,1,'ICP003'),(6679,1,'ICP311'),(6679,2,'ICP313'),(6679,3,'ICP486'),(6692,1,'ICP103'),(6692,1,'ICP386'),(6692,1,'ICP465'),(6692,2,'ICP341'),(6692,3,'ICP481'),(6874,1,'ICP467'),(6898,1,'ICP103'),(6898,1,'ICP386'),(6898,2,'ICP341'),(6898,3,'ICP481'),(6922,1,'ICP313'),(6922,1,'ICP341'),(6922,2,'ICP395'),(6974,1,'ICP110'),(6974,2,'ICP469'),(7056,1,'ICP006'),(7056,1,'ICP110'),(7056,1,'ICP311'),(7056,1,'ICP341'),(7056,2,'ICP395'),(7056,2,'ICP500'),(7056,2,'ICP720'),(7056,3,'ICP445'),(7056,3,'ICP740'),(7107,1,'ICP311'),(7107,1,'ICP313'),(7107,2,'ICP486'),(7159,1,'ICP311'),(7159,2,'ICP422'),(7196,1,'ICP103'),(7196,2,'ICP341'),(7196,2,'ICP395'),(7196,3,'ICP495'),(7227,1,'ICP103'),(7227,1,'ICP110'),(7227,1,'ICP301'),(7227,1,'ICP311'),(7227,1,'ICP386'),(7227,2,'ICP341'),(7227,2,'ICP500'),(7227,3,'ICP481'),(7297,1,'ICP386'),(7297,2,'ICP466'),(7326,1,'ICP006'),(7326,1,'ICP110'),(7326,1,'ICP311'),(7326,2,'ICP500'),(7398,1,'ICP002'),(7398,1,'ICP006'),(7398,1,'ICP103'),(7398,1,'ICP110'),(7398,2,'ICP311'),(7398,2,'ICP720'),(7398,2,'ICP810'),(7398,3,'ICP500'),(7398,3,'ICP819'),(7398,4,'ICP740'),(7420,1,'ICP006'),(7420,1,'ICP311'),(7420,2,'ICP500'),(7484,1,'ICP006'),(7484,1,'ICP110'),(7484,1,'ICP311'),(7484,2,'ICP469'),(7484,2,'ICP500'),(7515,1,'ICP006'),(7515,1,'ICP110'),(7515,1,'ICP311'),(7515,2,'ICP469'),(7515,2,'ICP500'),(7593,1,'ICP301'),(7593,1,'ICP341'),(7593,1,'ICP386'),(7593,2,'ICP481'),(7645,1,'ICP001'),(7645,1,'ICP006'),(7645,2,'ICP002'),(7645,2,'ICP110'),(7645,3,'ICP311'),(7645,4,'ICP500'),(7720,1,'ICP006'),(7720,1,'ICP311'),(7720,1,'ICP720'),(7720,2,'ICP500'),(7720,3,'ICP740'),(7769,1,'ICP103'),(7769,2,'ICP341'),(7797,1,'ICP006'),(7797,1,'ICP110'),(7797,1,'ICP302'),(7797,2,'ICP500'),(7797,2,'ICP720'),(7817,1,'ICP006'),(7817,1,'ICP311'),(7817,2,'ICP500'),(7821,1,'ICP006'),(7821,1,'ICP110'),(7821,1,'ICP311'),(7821,2,'ICP500'),(7831,1,'ICP006'),(7831,1,'ICP311'),(7831,2,'ICP500'),(7832,1,'ICP006'),(7832,1,'ICP110'),(7832,1,'ICP311'),(7832,2,'ICP500'),(8030,1,'ICP386'),(8030,2,'ICP466'),(8062,1,'ICP006'),(8062,1,'ICP110'),(8062,1,'ICP311'),(8062,2,'ICP500'),(8155,1,'ICP006'),(8155,1,'ICP110'),(8155,1,'ICP311'),(8155,2,'ICP469'),(8155,2,'ICP500'),(8306,1,'ICP006'),(8306,1,'ICP110'),(8306,1,'ICP311'),(8306,2,'ICP500'),(8509,1,'ICP467'),(8527,1,'ICP110'),(8527,2,'ICP500'),(8628,1,'ICP103'),(8628,1,'ICP301'),(8628,1,'ICP386'),(8628,2,'ICP341'),(8628,3,'ICP481'),(8647,1,'ICP103'),(8647,2,'ICP341'),(8688,1,'ICP103'),(8688,1,'ICP301'),(8688,1,'ICP386'),(8688,2,'ICP341'),(8688,3,'ICP481'),(8877,1,'ICP386'),(8877,2,'ICP466'),(8889,1,'ICP110'),(8889,2,'ICP620'),(8941,1,'ICP103'),(8941,2,'ICP341'),(8941,2,'ICP395'),(8941,3,'ICP495'),(8952,1,'ICP103'),(8952,1,'ICP386'),(8952,2,'ICP341'),(8952,3,'ICP481'),(8959,1,'ICP103'),(8959,2,'ICP341'),(9050,1,'ICP006'),(9050,1,'ICP110'),(9050,1,'ICP311'),(9050,2,'ICP500'),(9076,1,'ICP004'),(9076,2,'ICP005'),(9076,3,'ICP331'),(9117,1,'ICP110'),(9117,2,'ICP469'),(9185,1,'ICP341'),(9185,2,'ICP395'),(9185,3,'ICP445'),(9249,1,'ICP006'),(9249,1,'ICP110'),(9249,1,'ICP311'),(9249,2,'ICP500'),(9249,2,'ICP720'),(9306,1,'ICP006'),(9306,1,'ICP110'),(9306,1,'ICP302'),(9306,2,'ICP500'),(9325,1,'ICP386'),(9422,1,'ICP110'),(9422,2,'ICP469'),(9451,1,'ICP006'),(9451,1,'ICP110'),(9451,1,'ICP311'),(9451,1,'ICP341'),(9451,2,'ICP395'),(9451,2,'ICP500'),(9451,2,'ICP720'),(9451,3,'ICP445'),(9451,3,'ICP740'),(9524,1,'ICP001'),(9524,1,'ICP006'),(9524,2,'ICP002'),(9524,2,'ICP110'),(9524,3,'ICP311'),(9524,4,'ICP500'),(9784,1,'ICP110'),(9784,2,'ICP469'),(9797,1,'ICP103'),(9797,2,'ICP341'),(9812,1,'ICP311'),(9812,1,'ICP313'),(9812,2,'ICP486'),(9814,1,'ICP006'),(9814,1,'ICP110'),(9814,1,'ICP311'),(9814,2,'ICP500'),(9868,1,'ICP006'),(9868,1,'ICP110'),(9868,1,'ICP311'),(9868,2,'ICP500'),(9968,1,'ICP103'),(9968,1,'ICP301'),(9968,1,'ICP386'),(9968,2,'ICP341'),(9968,3,'ICP481'),(9978,1,'ICP311'),(9978,1,'ICP313'),(9978,2,'ICP486'),(111174351,1,'ICP001'),(111174351,2,'ICP002'),(111174351,3,'ICP003'),(111174351,3,'ICP311'),(111174351,4,'ICP313'),(111174351,5,'ICP486'),(112793854,1,'ICP006'),(112793854,1,'ICP110'),(112793854,1,'ICP311'),(112793854,2,'ICP500'),(125202274,1,'ICP001'),(125202274,1,'ICP103'),(125202274,2,'ICP301'),(125202274,2,'ICP341'),(125202274,2,'ICP386'),(125202274,3,'ICP481'),(137852438,1,'ICP006'),(137852438,1,'ICP110'),(137852438,1,'ICP311'),(137852438,2,'ICP500'),(141922012,1,'ICP002'),(141922012,2,'ICP003'),(141922012,2,'ICP311'),(141922012,3,'ICP313'),(141922012,4,'ICP486'),(164821430,1,'ICP001'),(164821430,2,'ICP002'),(164821430,3,'ICP003'),(164821430,3,'ICP311'),(164821430,4,'ICP313'),(164821430,5,'ICP486'),(166203121,1,'ICP001'),(166203121,1,'ICP006'),(166203121,1,'ICP200'),(166203121,2,'ICP002'),(166203121,2,'ICP110'),(166203121,2,'ICP720'),(166203121,3,'ICP311'),(166203121,4,'ICP500'),(166203121,4,'ICP819'),(166203121,5,'ICP740'),(178957047,1,'ICP110'),(178957047,2,'ICP469'),(192081592,1,'ICP006'),(192081592,1,'ICP200'),(192081592,1,'ICP311'),(192081592,2,'ICP500'),(192081592,2,'ICP720'),(192081592,3,'ICP740'),(196046272,1,'ICP002'),(196046272,1,'ICP006'),(196046272,1,'ICP110'),(196046272,2,'ICP311'),(196046272,2,'ICP469'),(196046272,3,'ICP500'),(222936116,1,'ICP006'),(222936116,1,'ICP200'),(222936116,1,'ICP311'),(222936116,2,'ICP500'),(222936116,2,'ICP720'),(222936116,2,'ICP819'),(222936116,3,'ICP740'),(258370250,1,'ICP006'),(258370250,1,'ICP200'),(258370250,1,'ICP311'),(258370250,2,'ICP500'),(258370250,2,'ICP720'),(258370250,2,'ICP818'),(258370250,2,'ICP819'),(258370250,3,'ICP740'),(285611992,1,'ICP006'),(285611992,1,'ICP110'),(285611992,1,'ICP200'),(285611992,1,'ICP311'),(285611992,2,'ICP500'),(285611992,2,'ICP720'),(285611992,3,'ICP740'),(287034437,1,'ICP006'),(287034437,1,'ICP200'),(287034437,1,'ICP311'),(287034437,2,'ICP500'),(287034437,2,'ICP720'),(287034437,2,'ICP819'),(287034437,3,'ICP740'),(291687847,1,'ICP006'),(291687847,1,'ICP200'),(291687847,1,'ICP311'),(291687847,2,'ICP500'),(291687847,2,'ICP720'),(291687847,2,'ICP819'),(291687847,3,'ICP740'),(292870227,1,'ICP001'),(292870227,1,'ICP006'),(292870227,1,'ICP720'),(292870227,2,'ICP002'),(292870227,2,'ICP110'),(292870227,3,'ICP311'),(292870227,4,'ICP500'),(292870227,5,'ICP740'),(316379525,1,'ICP110'),(316379525,1,'ICP311'),(316379525,2,'ICP361'),(316379525,3,'ICP461'),(324432052,1,'ICP001'),(324432052,2,'ICP002'),(324432052,3,'ICP003'),(324432052,3,'ICP311'),(324432052,4,'ICP313'),(324432052,5,'ICP486'),(348444351,1,'ICP311'),(348444351,1,'ICP313'),(348444351,2,'ICP486'),(356640298,1,'ICP469'),(356640298,1,'ICP818'),(356640298,2,'ICP660'),(362849335,1,'ICP006'),(362849335,1,'ICP200'),(362849335,1,'ICP311'),(362849335,2,'ICP500'),(362849335,2,'ICP720'),(362849335,2,'ICP818'),(362849335,3,'ICP740'),(370058038,1,'ICP006'),(370058038,1,'ICP110'),(370058038,1,'ICP311'),(370058038,2,'ICP469'),(370058038,2,'ICP500'),(410309476,1,'ICP001'),(410309476,1,'ICP006'),(410309476,1,'ICP200'),(410309476,2,'ICP002'),(410309476,2,'ICP720'),(410309476,3,'ICP311'),(410309476,4,'ICP500'),(410309476,4,'ICP819'),(410309476,5,'ICP740'),(411681300,1,'ICP006'),(411681300,1,'ICP200'),(411681300,1,'ICP311'),(411681300,2,'ICP500'),(411681300,2,'ICP720'),(411681300,2,'ICP819'),(411681300,3,'ICP740'),(413889315,1,'ICP002'),(413889315,2,'ICP003'),(413889315,2,'ICP311'),(413889315,3,'ICP313'),(413889315,4,'ICP486'),(435075950,1,'ICP002'),(435075950,1,'ICP006'),(435075950,1,'ICP110'),(435075950,1,'ICP720'),(435075950,2,'ICP311'),(435075950,3,'ICP500'),(435075950,4,'ICP740'),(442506203,1,'ICP006'),(442506203,1,'ICP110'),(442506203,1,'ICP311'),(442506203,2,'ICP469'),(442506203,2,'ICP500'),(448741355,1,'ICP001'),(448741355,2,'ICP002'),(448741355,3,'ICP003'),(448741355,3,'ICP311'),(448741355,4,'ICP313'),(448741355,5,'ICP486'),(452470039,1,'ICP006'),(452470039,1,'ICP110'),(452470039,1,'ICP311'),(452470039,2,'ICP500'),(495404878,1,'ICP006'),(495404878,1,'ICP110'),(495404878,1,'ICP200'),(495404878,1,'ICP302'),(495404878,2,'ICP500'),(495404878,2,'ICP720'),(495404878,3,'ICP740'),(496776246,1,'ICP103'),(496776246,2,'ICP341'),(496776246,3,'ICP403'),(497270695,1,'ICP001'),(497270695,1,'ICP103'),(497270695,2,'ICP301'),(497270695,2,'ICP341'),(497270695,2,'ICP386'),(497270695,3,'ICP481'),(506023024,1,'ICP680'),(516484914,1,'ICP006'),(516484914,1,'ICP200'),(516484914,1,'ICP311'),(516484914,2,'ICP500'),(516484914,2,'ICP720'),(516484914,3,'ICP740'),(524497078,1,'ICP006'),(524497078,1,'ICP200'),(524497078,1,'ICP311'),(524497078,2,'ICP500'),(524497078,2,'ICP720'),(524497078,2,'ICP819'),(524497078,3,'ICP740'),(532135187,1,'ICP200'),(532135187,2,'ICP720'),(532135187,3,'ICP811'),(532135187,4,'ICP813'),(561361210,1,'ICP006'),(561361210,1,'ICP200'),(561361210,1,'ICP311'),(561361210,2,'ICP500'),(561361210,2,'ICP720'),(561361210,2,'ICP819'),(561361210,3,'ICP740'),(578460210,1,'ICP110'),(578460210,2,'ICP469'),(601145152,1,'ICP006'),(601145152,1,'ICP200'),(601145152,1,'ICP311'),(601145152,2,'ICP500'),(601145152,2,'ICP720'),(601145152,2,'ICP819'),(601145152,3,'ICP740'),(630767823,1,'ICP006'),(630767823,1,'ICP200'),(630767823,1,'ICP311'),(630767823,2,'ICP500'),(630767823,2,'ICP720'),(630767823,2,'ICP819'),(630767823,3,'ICP740'),(658685554,1,'ICP006'),(658685554,1,'ICP200'),(658685554,1,'ICP311'),(658685554,2,'ICP500'),(658685554,2,'ICP720'),(658685554,3,'ICP740'),(659691843,1,'ICP006'),(659691843,1,'ICP200'),(659691843,1,'ICP311'),(659691843,2,'ICP500'),(659691843,2,'ICP720'),(659691843,3,'ICP740'),(664758087,1,'ICP006'),(664758087,1,'ICP200'),(664758087,1,'ICP311'),(664758087,2,'ICP500'),(664758087,2,'ICP720'),(664758087,2,'ICP819'),(664758087,3,'ICP740'),(669457938,1,'ICP006'),(669457938,1,'ICP200'),(669457938,1,'ICP311'),(669457938,2,'ICP500'),(669457938,2,'ICP720'),(669457938,3,'ICP740'),(683869712,1,'ICP006'),(683869712,1,'ICP200'),(683869712,1,'ICP311'),(683869712,2,'ICP500'),(683869712,2,'ICP720'),(683869712,2,'ICP819'),(683869712,3,'ICP740'),(716407017,1,'ICP006'),(716407017,1,'ICP110'),(716407017,1,'ICP311'),(716407017,1,'ICP720'),(716407017,2,'ICP500'),(716407017,2,'ICP811'),(716407017,3,'ICP813'),(726508464,1,'ICP006'),(726508464,1,'ICP110'),(726508464,1,'ICP311'),(726508464,2,'ICP469'),(726508464,2,'ICP500'),(739074091,1,'ICP006'),(739074091,1,'ICP200'),(739074091,1,'ICP311'),(739074091,2,'ICP500'),(739074091,2,'ICP720'),(739074091,3,'ICP740'),(739546796,1,'ICP006'),(739546796,1,'ICP200'),(739546796,1,'ICP311'),(739546796,2,'ICP500'),(739546796,2,'ICP720'),(739546796,3,'ICP740'),(742695516,1,'ICP001'),(742695516,2,'ICP110'),(742695516,2,'ICP302'),(742695516,3,'ICP500'),(749479466,1,'ICP103'),(749479466,1,'ICP301'),(749479466,1,'ICP386'),(749479466,2,'ICP341'),(749479466,3,'ICP481'),(759784803,1,'ICP001'),(759784803,1,'ICP006'),(759784803,2,'ICP110'),(759784803,2,'ICP302'),(759784803,3,'ICP500'),(784019298,1,'ICP001'),(784019298,1,'ICP103'),(784019298,2,'ICP301'),(784019298,2,'ICP341'),(784019298,2,'ICP386'),(784019298,3,'ICP481'),(809869431,1,'ICP006'),(809869431,1,'ICP110'),(809869431,1,'ICP311'),(809869431,2,'ICP500'),(833064024,1,'ICP001'),(833064024,1,'ICP006'),(833064024,1,'ICP720'),(833064024,2,'ICP002'),(833064024,2,'ICP110'),(833064024,3,'ICP311'),(833064024,4,'ICP500'),(833064024,5,'ICP740'),(882961008,1,'ICP006'),(882961008,1,'ICP110'),(882961008,1,'ICP311'),(882961008,2,'ICP500'),(916025637,1,'ICP001'),(916025637,2,'ICP110'),(916025637,3,'ICP469'),(960676621,1,'ICP006'),(960676621,1,'ICP200'),(960676621,1,'ICP311'),(960676621,2,'ICP500'),(960676621,2,'ICP720'),(960676621,3,'ICP740'),(971245096,1,'ICP006'),(971245096,1,'ICP110'),(971245096,1,'ICP311'),(971245096,2,'ICP469'),(971245096,2,'ICP500');
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

-- Dump completed on 2023-06-29  9:42:38
