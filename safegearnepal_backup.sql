-- MySQL dump 10.13  Distrib 9.4.0, for macos15.4 (arm64)
--
-- Host: localhost    Database: safegearnepal_db
-- ------------------------------------------------------
-- Server version	8.2.0

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
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add tender',7,'add_tender'),(26,'Can change tender',7,'change_tender'),(27,'Can delete tender',7,'delete_tender'),(28,'Can view tender',7,'view_tender'),(29,'Can add product image',8,'add_productimage'),(30,'Can change product image',8,'change_productimage'),(31,'Can delete product image',8,'delete_productimage'),(32,'Can view product image',8,'view_productimage'),(33,'Can add supplier',9,'add_supplier'),(34,'Can change supplier',9,'change_supplier'),(35,'Can delete supplier',9,'delete_supplier'),(36,'Can view supplier',9,'view_supplier'),(37,'Can add product',10,'add_product'),(38,'Can change product',10,'change_product'),(39,'Can delete product',10,'delete_product'),(40,'Can view product',10,'view_product'),(41,'Can add inquiry',11,'add_inquiry'),(42,'Can change inquiry',11,'change_inquiry'),(43,'Can delete inquiry',11,'delete_inquiry'),(44,'Can view inquiry',11,'view_inquiry'),(45,'Can add category',12,'add_category'),(46,'Can change category',12,'change_category'),(47,'Can delete category',12,'delete_category'),(48,'Can view category',12,'view_category');
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
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1000000$1jDPx2jzocqOOAHETlB6y0$mNTR3bqtaKWJDrrAoys2HBsD/VTXEFO0/Ecy/mS85u0=','2025-11-22 05:09:22.875986',1,'safegearnepal','','','safegearnepal@gmail.com',1,1,'2025-11-22 04:52:46.334863');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-11-25 16:50:31.999092','1','jamdagni safety india co.',1,'[{\"added\": {}}]',9,1),(2,'2025-11-25 17:03:09.736983','1','Plastic Labour Helmet',1,'[{\"added\": {}}]',10,1),(3,'2025-11-25 17:05:44.545562','1','Image for Plastic Labour Helmet',1,'[{\"added\": {}}]',8,1),(4,'2025-11-25 17:06:16.747595','1','Plastic Labour Helmet',2,'[{\"changed\": {\"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"product image\", \"object\": \"Image for Plastic Labour Helmet\", \"fields\": [\"Image\"]}}]',10,1),(5,'2025-11-28 05:06:00.804319','2','Solar Road Studs with shank',1,'[{\"added\": {}}]',10,1),(6,'2025-11-28 05:07:13.529075','2','Solar Road Studs with shank',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',10,1),(7,'2025-11-29 15:05:21.893937','1','Helmet',1,'[{\"added\": {}}]',12,1),(8,'2025-11-29 15:05:30.054407','2','Cone',1,'[{\"added\": {}}]',12,1),(9,'2025-11-29 15:05:45.026072','3','Barrier',1,'[{\"added\": {}}]',12,1),(10,'2025-11-29 15:06:26.914894','4','Speed Breaker',1,'[{\"added\": {}}]',12,1),(11,'2025-11-29 15:06:42.315277','5','Batton Light',1,'[{\"added\": {}}]',12,1),(12,'2025-11-29 15:06:51.547795','6','Convex Mirror',1,'[{\"added\": {}}]',12,1),(13,'2025-11-29 15:07:10.358139','7','Gloves',1,'[{\"added\": {}}]',12,1),(14,'2025-11-29 15:08:10.982583','8','Road Stud',1,'[{\"added\": {}}]',12,1),(15,'2025-11-29 15:08:23.397314','9','Gum Boot',1,'[{\"added\": {}}]',12,1),(16,'2025-11-29 15:16:37.069249','1','jamdagni safety india co.',1,'[{\"added\": {}}]',9,1),(17,'2025-11-29 15:18:13.004390','1','Plastic Labour Helmet',1,'[{\"added\": {}}]',10,1),(18,'2025-12-01 14:49:51.347157','10','Traffice Cone',1,'[{\"added\": {}}]',12,1),(19,'2025-12-01 14:49:58.624281','10','Traffice Cone',3,'',12,1),(20,'2025-12-01 14:53:39.825545','2','Solar Road Studs with shank',1,'[{\"added\": {}}]',10,1),(21,'2025-12-01 14:57:29.419509','3','Rubber Speed Breaker',1,'[{\"added\": {}}]',10,1),(22,'2025-12-01 14:57:32.649556','3','Rubber Speed Breaker',2,'[]',10,1),(23,'2025-12-01 15:00:20.761704','4','Rechargable Batton Light',1,'[{\"added\": {}}]',10,1);
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
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'products','category'),(11,'products','inquiry'),(10,'products','product'),(8,'products','productimage'),(9,'products','supplier'),(7,'products','tender'),(6,'sessions','session');
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
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-11-22 04:49:49.910908'),(2,'auth','0001_initial','2025-11-22 04:49:50.040358'),(3,'admin','0001_initial','2025-11-22 04:49:50.078557'),(4,'admin','0002_logentry_remove_auto_add','2025-11-22 04:49:50.082419'),(5,'admin','0003_logentry_add_action_flag_choices','2025-11-22 04:49:50.086376'),(6,'contenttypes','0002_remove_content_type_name','2025-11-22 04:49:50.127052'),(7,'auth','0002_alter_permission_name_max_length','2025-11-22 04:49:50.144485'),(8,'auth','0003_alter_user_email_max_length','2025-11-22 04:49:50.158582'),(9,'auth','0004_alter_user_username_opts','2025-11-22 04:49:50.163168'),(10,'auth','0005_alter_user_last_login_null','2025-11-22 04:49:50.180710'),(11,'auth','0006_require_contenttypes_0002','2025-11-22 04:49:50.181314'),(12,'auth','0007_alter_validators_add_error_messages','2025-11-22 04:49:50.184980'),(13,'auth','0008_alter_user_username_max_length','2025-11-22 04:49:50.205738'),(14,'auth','0009_alter_user_last_name_max_length','2025-11-22 04:49:50.229080'),(15,'auth','0010_alter_group_name_max_length','2025-11-22 04:49:50.240950'),(16,'auth','0011_update_proxy_permissions','2025-11-22 04:49:50.245249'),(17,'auth','0012_alter_user_first_name_max_length','2025-11-22 04:49:50.265483'),(18,'sessions','0001_initial','2025-11-22 04:49:50.277043'),(20,'products','0002_category_delete_productimage','2025-11-26 03:34:39.248511'),(21,'products','0003_productimage','2025-11-28 04:51:05.916953'),(22,'products','0001_initial','2025-11-29 14:59:24.769875'),(23,'products','0002_remove_product_supplier_remove_product_landed_cost_and_more','2025-12-01 15:09:40.010612');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ut1uo5uc5tzm4rmoprx82eyzo0434awf','.eJxVjEEOwiAQRe_C2pAytAy6dN8zkBkYpGpKUtqV8e7apAvd_vfef6lA21rC1mQJU1IXZdTpd2OKD5l3kO4036qOdV6XifWu6IM2PdYkz-vh_h0UauVbxwEcoiMeEBjJimXkzNyTZ5LkvVjquuwRXA8RpY_nBC5HA8YAilPvD_dqOC4:1vMfsA:Dc5K8Tjhts9i08CLgMGK6hfKHR-Mh6hbuFwvhBaLuJ4','2025-12-06 05:09:22.878464');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_category`
--

DROP TABLE IF EXISTS `products_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_category`
--

LOCK TABLES `products_category` WRITE;
/*!40000 ALTER TABLE `products_category` DISABLE KEYS */;
INSERT INTO `products_category` VALUES (1,'Helmet','helmet'),(2,'Cone','cone'),(3,'Barrier','barrier'),(4,'Speed Breaker','speed-breaker'),(5,'Batton Light','batton-light'),(6,'Convex Mirror','convex-mirror'),(7,'Gloves','gloves'),(8,'Road Stud','road-stud'),(9,'Gum Boot','gum-boot');
/*!40000 ALTER TABLE `products_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_inquiry`
--

DROP TABLE IF EXISTS `products_inquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_inquiry` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_inquiry_product_id_6a16875a_fk_products_product_id` (`product_id`),
  CONSTRAINT `products_inquiry_product_id_6a16875a_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_inquiry`
--

LOCK TABLES `products_inquiry` WRITE;
/*!40000 ALTER TABLE `products_inquiry` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_inquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_product`
--

DROP TABLE IF EXISTS `products_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_npr` decimal(10,2) NOT NULL,
  `stock` int unsigned NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specs` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `products_product_category_id_9b594869_fk_products_category_id` (`category_id`),
  CONSTRAINT `products_product_category_id_9b594869_fk_products_category_id` FOREIGN KEY (`category_id`) REFERENCES `products_category` (`id`),
  CONSTRAINT `products_product_chk_1` CHECK ((`stock` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_product`
--

LOCK TABLES `products_product` WRITE;
/*!40000 ALTER TABLE `products_product` DISABLE KEYS */;
INSERT INTO `products_product` VALUES (1,'Plastic Labour Helmet','plastic-safety-labour-helmet',130.00,6000,'products/plastic_labour_helmet_EzwBzTB.webp','Shell material: Typically high-density polyethylene (HDPE) or sometimes polycarbonate for high-end models.\r\nSuspension: An 8-point suspension is common for better stability and impact distribution.\r\nHead size adjustment: A buckle or ratchet system that allows adjustment for head circumferences between 54-62 cm.\r\nChin strap: A chin strap is included for a secure fit.\r\nWeight: Approximately 330g to 350g, depending on the suspension system.\r\nVentilation: Available with or without ventilation holes, depending on the model.\r\nColor: Often available in various colors, with yellow being a common example.','2025-11-29 15:18:13.002337',1),(2,'Solar Road Studs with shank','solar-road-studs',700.00,100,'products/solarroadstudwithshank.jpeg','Material: High-impact ABS or polycarbonate plastic for durability.Reflector: High-visibility acrylic or PMMA material, welded to the base.Dimensions: Typically around \\(100\\text{\\ mm}\\) x \\(90\\text{\\ mm}\\).Height: Between \\(16\\text{\\ mm}\\) and \\(20\\text{\\ mm}\\).','2025-12-01 14:53:39.824267',8),(3,'Rubber Speed Breaker','rubber-speed-breaker',1350.00,200,'products/rubber-speed-breaker.webp','Common dimensions range from \\(500\\text{\\ mm}\\times 410\\text{\\ mm}\\times 75\\text{\\ mm}\\) to \\(500\\text{\\ mm}\\times 350\\text{\\ mm}\\times 50\\text{\\ mm}\\), made from durable rubber blends with a hardness of Shore A 65–75. Key features include high load capacity (up to 30 metric tons), temperature resistance (\\(-40^{\\circ }C\\text{\\ to\\ }+70^{\\circ }C\\)), and visibility aids like yellow and black coloring and integrated reflectors.','2025-12-01 14:57:29.418564',4),(4,'Rechargable Batton Light','batton-light',1600.00,100,'products/rechargable_batton_light.jpg','Power Consumption: Ranges from low wattage (e.g., 4W for compact home use) to higher wattage (e.g., 36W-60W for industrial or commercial use).\r\nLight Output: Measured in lumens (lm), this varies significantly with wattage, typically ranging from a few hundred lumens for small portable lights to over 3000 lm for commercial-grade fittings.\r\nLight Color (CCT): Often cool white (around 5700K–6500K) for functional lighting, though some models offer tri-colour options (warm, cool, daylight) via a switch.\r\nBattery Type: High-performance rechargeable batteries, typically lithium-ion (Li-ion) or lithium iron phosphate (LiFePO4), known for their high energy density and cycle life.\r\nBackup/Runtime: The duration the light operates on battery power during an outage, commonly between 4 to 6 hours for home use and potentially longer for industrial emergency models (over 5 hours).\r\nCharging Time: The time required to fully recharge the battery when connected to main power, often around 6 to 8 hours.\r\nInput Voltage: Typically 220–240V AC for models designed to be wired into a main power supply.','2025-12-01 15:00:20.759967',5);
/*!40000 ALTER TABLE `products_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_productimage`
--

DROP TABLE IF EXISTS `products_productimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_productimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_productimage_product_id_e747596a_fk_products_product_id` (`product_id`),
  CONSTRAINT `products_productimage_product_id_e747596a_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_productimage`
--

LOCK TABLES `products_productimage` WRITE;
/*!40000 ALTER TABLE `products_productimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_productimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_tender`
--

DROP TABLE IF EXISTS `products_tender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_tender` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_tender`
--

LOCK TABLES `products_tender` WRITE;
/*!40000 ALTER TABLE `products_tender` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_tender` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-01 22:28:15
