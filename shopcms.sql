-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: testing
-- ------------------------------------------------------
-- Server version	8.0.37

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
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add brand',7,'add_brand'),(26,'Can change brand',7,'change_brand'),(27,'Can delete brand',7,'delete_brand'),(28,'Can view brand',7,'view_brand'),(29,'Can add buyers',8,'add_buyers'),(30,'Can change buyers',8,'change_buyers'),(31,'Can delete buyers',8,'delete_buyers'),(32,'Can view buyers',8,'view_buyers'),(33,'Can add category',9,'add_category'),(34,'Can change category',9,'change_category'),(35,'Can delete category',9,'delete_category'),(36,'Can view category',9,'view_category'),(37,'Can add items',10,'add_items'),(38,'Can change items',10,'change_items'),(39,'Can delete items',10,'delete_items'),(40,'Can view items',10,'view_items');
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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$JyhGffqezjxdzqv3nsZ0Ga$bbmv/RR78vLO/j0a6djC+PRkAi8scQA4QdgnWlPVNE0=','2024-06-28 15:32:23.660139',1,'admin','','','',1,1,'2024-06-28 15:32:03.311231');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-06-28 15:33:44.549620','1','Samsung',1,'[{\"added\": {}}]',7,1),(2,'2024-06-28 15:33:46.879463','2','Realme',1,'[{\"added\": {}}]',7,1),(3,'2024-06-28 15:33:52.895315','3','Oneplus',1,'[{\"added\": {}}]',7,1),(4,'2024-06-28 15:33:55.071261','4','Acer',1,'[{\"added\": {}}]',7,1),(5,'2024-06-28 15:34:11.180191','5','Asus',1,'[{\"added\": {}}]',7,1),(6,'2024-06-28 15:34:15.874517','6','Dell',1,'[{\"added\": {}}]',7,1),(7,'2024-06-28 15:34:33.104356','7','Logitech',1,'[{\"added\": {}}]',7,1),(8,'2024-06-28 15:34:53.041879','1','Phone',1,'[{\"added\": {}}]',9,1),(9,'2024-06-28 15:34:58.256680','2','Phone',1,'[{\"added\": {}}]',9,1),(10,'2024-06-28 15:35:02.480740','3','Phone',1,'[{\"added\": {}}]',9,1),(11,'2024-06-28 15:35:11.857375','4','Laptop',1,'[{\"added\": {}}]',9,1),(12,'2024-06-28 15:35:21.575560','5','Laptop',1,'[{\"added\": {}}]',9,1),(13,'2024-06-28 15:35:27.807254','6','Laptop',1,'[{\"added\": {}}]',9,1),(14,'2024-06-28 15:37:41.634152','6','Laptop',3,'',9,1),(15,'2024-06-28 15:37:41.636660','5','Laptop',3,'',9,1),(16,'2024-06-28 15:37:41.640170','4','Laptop',3,'',9,1),(17,'2024-06-28 15:37:41.642170','3','Phone',3,'',9,1),(18,'2024-06-28 15:37:41.644164','2','Phone',3,'',9,1),(19,'2024-06-28 15:37:41.647167','1','Phone',3,'',9,1),(20,'2024-06-28 15:41:21.420710','7','Phone',1,'[{\"added\": {}}]',9,1),(21,'2024-06-28 15:41:24.971649','8','Laptop',1,'[{\"added\": {}}]',9,1),(22,'2024-06-28 15:41:29.772372','9','Monitor',1,'[{\"added\": {}}]',9,1),(23,'2024-06-28 15:41:35.366141','10','Mouse',1,'[{\"added\": {}}]',9,1),(24,'2024-06-28 15:41:43.250560','7','Logitech',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',7,1),(25,'2024-06-28 15:41:49.654619','6','Dell',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',7,1),(26,'2024-06-28 15:41:53.326140','5','Asus',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',7,1),(27,'2024-06-28 15:41:55.338736','5','Asus',2,'[]',7,1),(28,'2024-06-28 15:41:58.729515','4','Acer',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',7,1),(29,'2024-06-28 15:42:01.111716','1','Samsung',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',7,1),(30,'2024-06-28 15:42:03.822901','2','Realme',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',7,1),(31,'2024-06-28 15:42:06.287308','3','Oneplus',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',7,1),(32,'2024-06-28 15:57:14.489986','1','John Smith | test@mail.com | ok',1,'[{\"added\": {}}]',8,1),(33,'2024-06-28 15:57:43.826996','2','Rathod Singh | singh@rathod.com | ok',1,'[{\"added\": {}}]',8,1),(34,'2024-06-28 15:58:31.850517','3','Vinod Kumar | kumar@vinod.com | ok',1,'[{\"added\": {}}]',8,1),(35,'2024-06-28 15:59:13.660750','b46af34e-4de6-45c0-b721-200227cb31e9','Acer EK220Q',1,'[{\"added\": {}}]',10,1),(36,'2024-06-28 16:01:55.658905','2','Rathod Singh | singh@rathod.com',2,'[{\"changed\": {\"fields\": [\"Phone\"]}}]',8,1),(37,'2024-06-28 16:02:13.049383','1','John Smith | test@mail.com',2,'[{\"changed\": {\"fields\": [\"Address\"]}}]',8,1),(38,'2024-06-28 16:46:35.671882','b102dc9d-5060-43ae-b2ec-b07298744733','realme NARZO 70 5G',1,'[{\"added\": {}}]',10,1),(39,'2024-06-28 16:47:16.399043','b1167afc-df0e-4721-904c-68f773ea92fe','SAMSUNG GALAXY S23 FE 5G',1,'[{\"added\": {}}]',10,1),(40,'2024-06-28 16:48:29.171421','e90acb7d-c4ba-461c-aa03-c50009587dad','OnePlus Nord 3 5G',1,'[{\"added\": {}}]',10,1),(41,'2024-06-28 16:49:27.670164','f7432ec9-ae39-4f82-ad9a-bbcdf249ba43','ASUS Vivobook 15 OLED (2023)',1,'[{\"added\": {}}]',10,1),(42,'2024-06-28 16:52:33.347413','851e7ac3-fd57-4188-9116-5a21f6f74841','Logitech B170',1,'[{\"added\": {}}]',10,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'shop','brand'),(8,'shop','buyers'),(9,'shop','category'),(10,'shop','items');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-06-28 15:30:36.720753'),(2,'auth','0001_initial','2024-06-28 15:30:37.257313'),(3,'admin','0001_initial','2024-06-28 15:30:37.379471'),(4,'admin','0002_logentry_remove_auto_add','2024-06-28 15:30:37.384921'),(5,'admin','0003_logentry_add_action_flag_choices','2024-06-28 15:30:37.393900'),(6,'contenttypes','0002_remove_content_type_name','2024-06-28 15:30:37.466797'),(7,'auth','0002_alter_permission_name_max_length','2024-06-28 15:30:37.520873'),(8,'auth','0003_alter_user_email_max_length','2024-06-28 15:30:37.544095'),(9,'auth','0004_alter_user_username_opts','2024-06-28 15:30:37.551114'),(10,'auth','0005_alter_user_last_login_null','2024-06-28 15:30:37.628434'),(11,'auth','0006_require_contenttypes_0002','2024-06-28 15:30:37.631083'),(12,'auth','0007_alter_validators_add_error_messages','2024-06-28 15:30:37.637240'),(13,'auth','0008_alter_user_username_max_length','2024-06-28 15:30:37.744317'),(14,'auth','0009_alter_user_last_name_max_length','2024-06-28 15:30:37.809281'),(15,'auth','0010_alter_group_name_max_length','2024-06-28 15:30:37.825627'),(16,'auth','0011_update_proxy_permissions','2024-06-28 15:30:37.835621'),(17,'auth','0012_alter_user_first_name_max_length','2024-06-28 15:30:37.892228'),(18,'sessions','0001_initial','2024-06-28 15:30:37.929868'),(19,'shop','0001_initial','2024-06-28 15:30:38.122090'),(20,'shop','0002_remove_category_brand','2024-06-28 15:37:17.704452'),(21,'shop','0003_brand_type','2024-06-28 15:39:45.518933'),(22,'shop','0004_rename_type_brand_category','2024-06-28 15:40:47.467285');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('8ffkud5v22a68ly3wkkhosvtx8q9ijsf','.eJxVjE0OwiAYBe_C2hAQUsCle89A-P6kamhS2lXj3bVJF7p9M_M2lcu61Lx2nvNI6qKsOv1uUPDJbQf0KO0-aZzaMo-gd0UftOvbRPy6Hu7fQS29fuuzhcDJI8aBiBjESUzOQgkcDYhnNlhMdNZLEgzAISQmgeQdwkCs3h8X7TmZ:1sNDaJ:d1iL_V6mDaoUZyLu2hrfSEliwC6s15pWAPyveP2t0VE','2024-07-12 15:32:23.663141');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_brand`
--

DROP TABLE IF EXISTS `shop_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_brand` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_brand_category_id_fe84ae9d_fk_shop_category_id` (`category_id`),
  CONSTRAINT `shop_brand_category_id_fe84ae9d_fk_shop_category_id` FOREIGN KEY (`category_id`) REFERENCES `shop_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_brand`
--

LOCK TABLES `shop_brand` WRITE;
/*!40000 ALTER TABLE `shop_brand` DISABLE KEYS */;
INSERT INTO `shop_brand` VALUES (1,'Samsung',7),(2,'Realme',7),(3,'Oneplus',7),(4,'Acer',9),(5,'Asus',8),(6,'Dell',8),(7,'Logitech',10);
/*!40000 ALTER TABLE `shop_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_buyers`
--

DROP TABLE IF EXISTS `shop_buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_buyers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` longtext NOT NULL,
  `note` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_buyers`
--

LOCK TABLES `shop_buyers` WRITE;
/*!40000 ALTER TABLE `shop_buyers` DISABLE KEYS */;
INSERT INTO `shop_buyers` VALUES (1,'John','Smith','test@mail.com','9090909090','Gujarat','ok'),(2,'Rathod','Singh','singh@rathod.com','8989898989','Bihar','ok'),(3,'Vinod','Kumar','kumar@vinod.com','8945789687','Delhi','ok');
/*!40000 ALTER TABLE `shop_buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_category`
--

DROP TABLE IF EXISTS `shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_category`
--

LOCK TABLES `shop_category` WRITE;
/*!40000 ALTER TABLE `shop_category` DISABLE KEYS */;
INSERT INTO `shop_category` VALUES (7,'Phone'),(8,'Laptop'),(9,'Monitor'),(10,'Mouse');
/*!40000 ALTER TABLE `shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_items`
--

DROP TABLE IF EXISTS `shop_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_items` (
  `id` char(32) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `brand_name_id` bigint DEFAULT NULL,
  `buyer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_items_brand_name_id_2cabb9f4_fk_shop_brand_id` (`brand_name_id`),
  KEY `shop_items_buyer_id_3e9b194e_fk_shop_buyers_id` (`buyer_id`),
  CONSTRAINT `shop_items_brand_name_id_2cabb9f4_fk_shop_brand_id` FOREIGN KEY (`brand_name_id`) REFERENCES `shop_brand` (`id`),
  CONSTRAINT `shop_items_buyer_id_3e9b194e_fk_shop_buyers_id` FOREIGN KEY (`buyer_id`) REFERENCES `shop_buyers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_items`
--

LOCK TABLES `shop_items` WRITE;
/*!40000 ALTER TABLE `shop_items` DISABLE KEYS */;
INSERT INTO `shop_items` VALUES ('851e7ac3fd57418891165a21f6f74841','Logitech B170','2.4 GHz with USB Nano Receiver\r\nOptical Tracking\r\n12-Months Battery Life',899.00,7,NULL),('b102dc9d506043aeb2ecb07298744733','realme NARZO 70 5G','Forest Green, 6GB RAM, 128GB Storage\r\nDimensity 7050 5G Chipset',19999.00,2,NULL),('b1167afcdf0e4721904c68f773ea92fe','SAMSUNG GALAXY S23 FE 5G','PURPLE 128 GB STORAGE) (8 GB RAM)\r\nVisit the Samsung Store',79999.00,1,3),('b46af34e4de645c0b721200227cb31e9','Acer EK220Q','54.61 cm (21.5\") Full HD 1920x1080 Pixels VA Panel LCD Monitor with LED Back Light I 1 MS VRB I 100 Hz Refresh Rate I 250 Nits I HDMI',7999.00,4,2),('e90acb7dc4ba461caa03c50009587dad','OnePlus Nord 3 5G','(Tempest Gray, 8GB RAM, 128GB Storage)',33999.00,3,NULL),('f7432ec9ae394f82ad9abbcdf249ba43','ASUS Vivobook 15 OLED (2023)','MD Ryzen 5 7530U\r\n15.6\" (39.62 cm) FHD OLED\r\n16GB/512GB SSD/Windows 11',81990.00,5,NULL);
/*!40000 ALTER TABLE `shop_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-29 11:12:32
