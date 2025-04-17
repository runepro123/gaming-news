-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: archielite_echo
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'ZztLhFEPF9wT9wA230XaHkTy4SM2HMEB',1,'2024-08-09 11:05:34','2024-08-09 11:05:34','2024-08-09 11:05:34');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Cyber Monday: Save big on the Creative Cloud All Apps plan for individuals through 2 Dec',0,NULL,NULL,0,1,'2024-08-09 18:05:56',NULL,1,'2024-08-09 11:05:56','2024-08-09 11:05:56'),(2,'Announcement 2','Students and teachers save a massive 71% on Creative Cloud All Apps',0,NULL,NULL,0,1,'2024-08-09 18:05:56',NULL,1,'2024-08-09 11:05:56','2024-08-09 11:05:56'),(3,'Announcement 3','Black Friday and Cyber Monday 2023 Deals for Motion Designers, grab it now!',0,NULL,NULL,0,1,'2024-08-09 18:05:56',NULL,1,'2024-08-09 11:05:56','2024-08-09 11:05:56');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Big Cats',0,'Atque nam ex ducimus ipsa sit. Quae ut eos unde aut quia error recusandae. Cupiditate quasi aliquam consequatur saepe placeat consequatur. Ut deleniti rem est unde.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-08-09 11:05:46','2024-08-09 11:05:46'),(2,'Marine Life',0,'Illum aut aut sunt consequuntur est ad. Veritatis quo voluptatem quaerat odio fugiat. Nobis assumenda doloribus veritatis ea eius est praesentium. Iure et et eum ipsum aut quidem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:05:46','2024-08-09 11:05:46'),(3,'Birds',0,'Quo quam inventore beatae optio necessitatibus. Doloribus et quibusdam nulla tenetur optio nihil voluptatem. Animi et maiores quo voluptas ipsa minima.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:05:46','2024-08-09 11:05:46'),(4,'Primates',0,'Sint numquam natus dignissimos deleniti qui architecto sit. Iste ut reprehenderit libero aut. Eos corporis quia sed vel temporibus ab a voluptas.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:05:46','2024-08-09 11:05:46'),(5,'Reptiles',0,'Eum occaecati eos esse suscipit ut laudantium eum. Molestiae vel voluptatibus sequi molestiae voluptatem praesentium perferendis. Ex possimus totam vel nemo.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:05:46','2024-08-09 11:05:46'),(6,'Amphibians',0,'Neque sunt cum sed pariatur. Quo maxime laudantium voluptatem esse. Excepturi hic ab inventore totam cum ipsum iusto. Iste distinctio eos quis quos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:05:46','2024-08-09 11:05:46'),(7,'Insects',0,'Consequatur consectetur accusantium commodi dolor est ut. Est voluptas quia tempora sequi. Reprehenderit eius beatae possimus corporis nobis. Quos magni fugit accusamus eos impedit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:05:46','2024-08-09 11:05:46'),(8,'Endangered Species',0,'Dolores sint quisquam debitis sunt quia sapiente praesentium dolorem. Sapiente tempore sunt animi fugit. Quaerat aut aut consequatur quia in odit omnis. Occaecati deserunt sint nisi ad magnam nam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:05:46','2024-08-09 11:05:46'),(9,'Wildlife Conservation',0,'Aut mollitia voluptates fugiat optio sequi et. Non dicta sequi exercitationem quasi et minus quod. Id mollitia in sit dolor quaerat assumenda hic.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:05:46','2024-08-09 11:05:46'),(10,'Animal Behavior',0,'Iste est quisquam non dolorem voluptate. Asperiores sit soluta laboriosam quis voluptatem minus. Exercitationem rerum quidem ut minus. Qui voluptatem ullam illo at in. Fugiat ut fugit aut quos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:05:46','2024-08-09 11:05:46');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Tyson Beahan','marilyne02@example.org','551.474.9255','968 Jerde Plaza Apt. 010\nLake Breana, VA 44192','Aut sunt commodi nihil id quaerat est ducimus.','Culpa vel modi vero ut id mollitia eos. Sint autem deleniti consequatur quis rem quia. Magni et voluptatibus et. Omnis architecto in doloremque voluptatem. Ut voluptate accusamus esse unde quae perspiciatis sed ducimus. Aut quasi suscipit sint. Voluptate accusamus rerum nobis voluptas et ut quis. Est eaque id itaque quis voluptates sint molestias. Nihil placeat qui reprehenderit sint asperiores libero quia. Dignissimos eos voluptatem et et. Voluptas voluptatum eum maxime ut nisi inventore.',NULL,'read','2024-08-09 11:05:34','2024-08-09 11:05:34'),(2,'Dahlia Heaney','dayna.nienow@example.net','872.674.8485','850 Gleichner Plaza Apt. 715\nNorth Alvera, SD 68665','Repudiandae qui quia natus tempore et autem.','Nostrum dolore non ut a cum similique quisquam. Ut et aut aliquam ad totam eius aut doloribus. Libero amet reiciendis dolorum tempora rerum occaecati et. Et omnis qui explicabo. Esse placeat ut et labore libero labore. Nihil sit aut odio aut. Atque labore rerum possimus nam. Eaque sed iste possimus id ducimus corporis ipsum.',NULL,'unread','2024-08-09 11:05:34','2024-08-09 11:05:34'),(3,'Dr. Melvina Haag V','johnson.birdie@example.net','702-403-6279','341 Nia Mountain Suite 057\nMustafaland, ME 31259','Qui id odit aspernatur velit.','Nobis nobis natus voluptatem rerum ullam sit corporis commodi. Animi quo fugiat laborum voluptatem laboriosam praesentium. Repellat sed aut deleniti provident voluptatum. Nulla qui laborum ab voluptate et occaecati modi. Dolorem qui illum impedit. Natus pariatur quidem voluptatem dolor sapiente et assumenda. Voluptatem omnis est porro dolorem corrupti laborum. Quisquam officiis hic quaerat hic enim voluptatem est.',NULL,'read','2024-08-09 11:05:34','2024-08-09 11:05:34'),(4,'Caesar Jaskolski','zsteuber@example.net','1-940-650-8720','77866 Ruecker Corners Apt. 528\nNew Esteban, FL 82456-2723','Nisi autem nisi error et velit dignissimos.','Corrupti corporis praesentium esse et eaque omnis saepe. Doloremque a placeat voluptatem aliquid. Illo ullam sed suscipit omnis est perspiciatis. Sint dignissimos alias illum quae corrupti nulla. Aut voluptas voluptatem quis et mollitia. In cumque culpa quibusdam aut. Sit nobis aut libero quod sit. Temporibus autem voluptatibus molestiae enim earum voluptas architecto illo.',NULL,'read','2024-08-09 11:05:34','2024-08-09 11:05:34'),(5,'Wava Wuckert','beau64@example.com','+1-830-657-9571','433 Montana Stream\nLake Kariport, ND 64696','Eum mollitia ab harum rem.','Enim nesciunt quia dolores eum eum dolorum. Dolore aut quia quia odio aspernatur. Consequatur voluptates eius accusamus necessitatibus ipsa. Consequatur inventore unde vero voluptates officia. Nostrum blanditiis provident nemo ea aut in. Ab totam a qui facilis. Voluptatibus repellat ea natus ad sed ratione dolorem rem. Minus ea enim et tempora fuga dolore et. Beatae alias tenetur provident ipsa iste dolor.',NULL,'read','2024-08-09 11:05:34','2024-08-09 11:05:34'),(6,'Paris Dare DDS','vallie43@example.org','1-870-751-9019','8656 Howell Corner\nEast Brandon, IL 20602','Deserunt commodi totam animi quisquam.','Sit molestiae ut ratione maiores tenetur. Qui sit non dignissimos doloremque quia et. Quo dolorem sequi culpa deserunt animi non iusto. Nemo repellendus maiores molestiae aut. Vero debitis sit quia atque tempora enim dolores. Quo consectetur exercitationem ut delectus nemo culpa. Reprehenderit commodi aut quasi esse necessitatibus non.',NULL,'read','2024-08-09 11:05:34','2024-08-09 11:05:34'),(7,'Lora Kuphal','karen27@example.net','559.646.3838','48137 Keon Row Suite 574\nMaxineville, AK 31864','Expedita tenetur quas tempore ipsum.','Tenetur ut voluptatum sed dolorem dicta. Sint omnis dolore et aspernatur ut. Possimus labore consequatur quidem quidem iste. Laborum sint nostrum quia praesentium a. Unde quam harum ducimus reiciendis harum. Ipsa quibusdam iste labore ipsam. Magnam minima eaque harum laborum autem amet. Unde necessitatibus rem animi consequatur excepturi earum sed. Rerum quia voluptatem nisi numquam ullam soluta.',NULL,'read','2024-08-09 11:05:34','2024-08-09 11:05:34'),(8,'Asa Armstrong','jerrod27@example.net','678-526-4415','966 Cristal Knoll\nNew Zella, NE 31543-0496','Et asperiores cumque et ab.','Vero eaque autem id dolorem consequatur sint. Qui error quia est maxime. Et repellat numquam eligendi omnis est autem et natus. Sapiente sint at tenetur aliquid. Voluptatem occaecati libero repudiandae aliquid aut voluptatum. Facere sit aperiam sit voluptates architecto nulla et est. Enim veniam voluptas delectus nulla. Dolores cum animi nostrum molestiae magni quia. Et aut qui occaecati vel. Quis earum quia adipisci id magni perferendis quia.',NULL,'read','2024-08-09 11:05:34','2024-08-09 11:05:34'),(9,'Dr. Kianna Leffler Sr.','baby.wolff@example.net','608.687.7069','143 Abbigail Glens Suite 008\nShemarside, NJ 57339','Sunt beatae sit eos aliquid quas quia tempore.','Iusto sit et cupiditate labore voluptatem quibusdam beatae. Maiores aut impedit et in et commodi. Et dicta dolor enim totam placeat modi. Eos voluptas quos ea rerum. Nesciunt qui sed ut aut repellendus sed quisquam. Adipisci hic est tempore nihil. Sed et commodi nisi minima dolor. Fugit magni et blanditiis ea. Asperiores voluptas error quas inventore tempora.',NULL,'unread','2024-08-09 11:05:34','2024-08-09 11:05:34'),(10,'Maya Hickle I','claudine35@example.org','(973) 568-8546','308 Prohaska Ways Suite 931\nChristiansenberg, ME 10605-8363','Minima et omnis in consequatur voluptatibus.','Quas nostrum quia laboriosam eos voluptas. Qui unde dicta facilis omnis aut et nostrum qui. Officiis alias cupiditate est nobis amet eaque iure. Culpa quis sequi ipsa cum non. Dolores reprehenderit asperiores ullam atque minus. Debitis qui debitis voluptate repellendus et quia suscipit. Facere sit velit dignissimos. Quisquam et voluptates quia est libero animi repellendus. Expedita animi minus ex aliquid voluptas unde.',NULL,'unread','2024-08-09 11:05:34','2024-08-09 11:05:34');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fob_comments`
--

DROP TABLE IF EXISTS `fob_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fob_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reply_to` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fob_comments_author_type_author_id_index` (`author_type`,`author_id`),
  KEY `fob_comments_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `fob_comments_reply_to_index` (`reply_to`),
  KEY `fob_comments_reference_url_index` (`reference_url`),
  KEY `fob_comments_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fob_comments`
--

LOCK TABLES `fob_comments` WRITE;
/*!40000 ALTER TABLE `fob_comments` DISABLE KEYS */;
INSERT INTO `fob_comments` VALUES (1,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',20,'http://localhost','Jaylen Kuhic','schmidt.layne@rice.com','https://friendsofbotble.com','This is really helpful, thank you!','approved','75.126.53.72','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 5.01; Trident/5.0)','2024-08-09 07:10:49','2024-08-09 11:05:57'),(2,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',12,'http://localhost','Josh Bailey','ogaylord@hotmail.com','https://friendsofbotble.com','I found this article to be quite informative.','approved','92.46.188.101','Mozilla/5.0 (iPhone; CPU iPhone OS 7_2_1 like Mac OS X; sl-SI) AppleWebKit/532.14.6 (KHTML, like Gecko) Version/3.0.5 Mobile/8B111 Safari/6532.14.6','2024-07-21 09:13:31','2024-08-09 11:05:57'),(3,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',6,'http://localhost','Dr. Nelle Hansen','stanford32@gmail.com','https://friendsofbotble.com','Wow, I never knew about this before!','approved','176.126.247.152','Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20240423 Firefox/35.0','2024-07-31 21:53:23','2024-08-09 11:05:57'),(4,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',6,'http://localhost','Madelyn Batz','whills@hotmail.com','https://friendsofbotble.com','Great job on explaining such a complex topic.','approved','64.66.145.83','Mozilla/5.0 (Windows NT 6.2) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/82.0.4177.15 Safari/532.1 Edg/82.01110.15','2024-07-31 11:20:07','2024-08-09 11:05:57'),(5,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',16,'http://localhost','Jarret Balistreri','misty77@gmail.com','https://friendsofbotble.com','I have a question about the third paragraph.','approved','113.29.13.107','Mozilla/5.0 (compatible; MSIE 5.0; Windows 95; Trident/4.0)','2024-07-27 10:39:47','2024-08-09 11:05:57'),(6,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',17,'http://localhost','Breana Leffler','lgrimes@hotmail.com','https://friendsofbotble.com','This article changed my perspective entirely.','approved','67.242.179.129','Opera/8.75 (Windows NT 5.2; en-US) Presto/2.12.315 Version/11.00','2024-07-11 08:05:31','2024-08-09 11:05:57'),(7,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',14,'http://localhost','Myles Carroll','april.hammes@hotmail.com','https://friendsofbotble.com','I appreciate the effort you put into this.','approved','137.88.105.196','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5311 (KHTML, like Gecko) Chrome/36.0.899.0 Mobile Safari/5311','2024-07-13 15:14:41','2024-08-09 11:05:57'),(8,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',16,'http://localhost','Ms. Otilia Crooks II','modesto.rosenbaum@yahoo.com','https://friendsofbotble.com','This is exactly what I was looking for, thank you!','approved','156.67.241.253','Opera/9.84 (X11; Linux i686; en-US) Presto/2.11.277 Version/10.00','2024-07-30 05:56:05','2024-08-09 11:05:57'),(9,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',19,'http://localhost','Prof. Clement Treutel PhD','grimes.remington@green.org','https://friendsofbotble.com','I disagree with some points mentioned here, though.','approved','113.115.96.128','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 5.01; Trident/5.1)','2024-07-23 21:24:00','2024-08-09 11:05:57'),(10,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',14,'http://localhost','Trycia Hill','zkertzmann@gmail.com','https://friendsofbotble.com','Could you provide more examples to illustrate your point?','approved','24.238.0.28','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5312 (KHTML, like Gecko) Chrome/40.0.854.0 Mobile Safari/5312','2024-08-08 05:45:54','2024-08-09 11:05:57'),(11,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',2,'http://localhost','Kamren Hayes','spencer.russel@hills.info','https://friendsofbotble.com','I wish there were more articles like this out there.','approved','102.141.58.180','Mozilla/5.0 (Windows 98; en-US; rv:1.9.1.20) Gecko/20180615 Firefox/35.0','2024-07-11 10:46:02','2024-08-09 11:05:57'),(12,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',11,'http://localhost','Alisa Goyette Jr.','marquardt.keara@yahoo.com','https://friendsofbotble.com','I\'m bookmarking this for future reference.','approved','44.98.205.247','Mozilla/5.0 (Windows NT 5.0) AppleWebKit/536.1 (KHTML, like Gecko) Chrome/90.0.4772.47 Safari/536.1 Edg/90.01058.7','2024-07-23 20:44:58','2024-08-09 11:05:57'),(13,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',7,'http://localhost','Mrs. Cordie Fritsch','vandervort.wade@gmail.com','https://friendsofbotble.com','I\'ve shared this with my friends, they loved it!','approved','233.138.162.99','Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 5.0; Trident/3.1)','2024-07-10 02:06:47','2024-08-09 11:05:57'),(14,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',16,'http://localhost','Eusebio Dietrich','bell59@buckridge.com','https://friendsofbotble.com','This article is a must-read for everyone interested in the topic.','approved','94.160.37.109','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_3) AppleWebKit/5361 (KHTML, like Gecko) Chrome/38.0.816.0 Mobile Safari/5361','2024-07-22 17:00:16','2024-08-09 11:05:57'),(15,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',16,'http://localhost','Mrs. Mabelle Steuber III','stamm.mia@ryan.com','https://friendsofbotble.com','Thank you for shedding light on this important issue.','approved','2.187.129.231','Opera/9.78 (Windows CE; sl-SI) Presto/2.8.307 Version/12.00','2024-07-21 18:25:55','2024-08-09 11:05:57'),(16,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',12,'http://localhost','Obie Rogahn','dlubowitz@jerde.info','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article.','approved','163.174.221.255','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_1) AppleWebKit/5321 (KHTML, like Gecko) Chrome/37.0.809.0 Mobile Safari/5321','2024-07-25 19:32:41','2024-08-09 11:05:57'),(17,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',17,'http://localhost','Jayde Schneider','dkoelpin@hotmail.com','https://friendsofbotble.com','I\'m blown away by the insights shared in this article.','approved','52.47.131.71','Mozilla/5.0 (Windows NT 4.0; sl-SI; rv:1.9.2.20) Gecko/20230608 Firefox/37.0','2024-07-16 09:11:48','2024-08-09 11:05:57'),(18,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',6,'http://localhost','Lauren Haley Sr.','qmccullough@murazik.org','https://friendsofbotble.com','This article tackles a complex topic with clarity.','approved','59.121.32.28','Mozilla/5.0 (X11; Linux i686) AppleWebKit/534.2 (KHTML, like Gecko) Chrome/90.0.4469.53 Safari/534.2 EdgA/90.01060.37','2024-08-04 22:58:04','2024-08-09 11:05:57'),(19,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',17,'http://localhost','Miss Haylie Luettgen','leopold44@stamm.com','https://friendsofbotble.com','I\'m going to reflect on the ideas presented in this article.','approved','239.235.188.87','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 5.0; Trident/5.1)','2024-07-19 08:46:01','2024-08-09 11:05:57'),(20,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',8,'http://localhost','Newell Leffler','leonor.schulist@nienow.com','https://friendsofbotble.com','The author\'s passion for the subject shines through in this article.','approved','82.121.195.89','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_1 rv:4.0; nl-NL) AppleWebKit/533.18.7 (KHTML, like Gecko) Version/4.1 Safari/533.18.7','2024-07-28 17:53:32','2024-08-09 11:05:57'),(21,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',3,'http://localhost','Lelah Rosenbaum','pearline.nikolaus@prosacco.com','https://friendsofbotble.com','This article challenged my preconceptions in a thought-provoking way.','approved','54.115.161.166','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.0 (KHTML, like Gecko) Chrome/91.0.4157.91 Safari/537.0 EdgA/91.01076.47','2024-07-30 15:03:12','2024-08-09 11:05:57'),(22,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',16,'http://localhost','Hester Wolff','orlo.cormier@crooks.info','https://friendsofbotble.com','I\'ve added this article to my reading list, it\'s worth revisiting.','approved','137.27.33.2','Mozilla/5.0 (X11; Linux i686) AppleWebKit/5361 (KHTML, like Gecko) Chrome/38.0.814.0 Mobile Safari/5361','2024-08-04 01:28:22','2024-08-09 11:05:57'),(23,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',7,'http://localhost','Katelyn Koss','neva.watsica@reichert.net','https://friendsofbotble.com','This article offers practical advice that I can apply in real life.','approved','5.130.164.68','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_7 rv:4.0) Gecko/20180728 Firefox/36.0','2024-07-27 14:55:49','2024-08-09 11:05:57'),(24,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',6,'http://localhost','Richmond Bashirian','herzog.eusebio@yahoo.com','https://friendsofbotble.com','I\'m going to recommend this article to my study group.','approved','2.19.114.205','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_6) AppleWebKit/534.2 (KHTML, like Gecko) Chrome/97.0.4765.86 Safari/534.2 Edg/97.01140.65','2024-07-15 20:35:50','2024-08-09 11:05:57'),(25,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',8,'http://localhost','Marlee Hudson','jacynthe97@toy.com','https://friendsofbotble.com','The examples provided really helped me understand the concept better.','approved','183.12.124.180','Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/5352 (KHTML, like Gecko) Chrome/40.0.838.0 Mobile Safari/5352','2024-07-20 00:50:37','2024-08-09 11:05:57'),(26,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',12,'http://localhost','Trenton Feest','qbrakus@gmail.com','https://friendsofbotble.com','I resonate with the ideas presented here.','approved','99.211.159.248','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_1) AppleWebKit/5341 (KHTML, like Gecko) Chrome/40.0.828.0 Mobile Safari/5341','2024-07-30 21:07:18','2024-08-09 11:05:57'),(27,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',18,'http://localhost','Mrs. Tabitha Gorczany Jr.','carissa.ruecker@halvorson.info','https://friendsofbotble.com','This article made me think critically about the topic.','approved','12.11.105.188','Opera/9.99 (Windows NT 5.1; nl-NL) Presto/2.12.305 Version/10.00','2024-07-14 07:32:58','2024-08-09 11:05:57'),(28,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',17,'http://localhost','Dr. Chadrick Spencer III','melvina76@yahoo.com','https://friendsofbotble.com','I\'ll definitely come back to this article for reference.','approved','154.89.134.16','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/4.0)','2024-07-09 17:40:07','2024-08-09 11:05:57'),(29,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',15,'http://localhost','Wiley Feeney','tyler44@hotmail.com','https://friendsofbotble.com','I\'ve shared this on social media, it\'s too good not to share.','approved','233.215.5.129','Mozilla/5.0 (Windows NT 6.2; sl-SI; rv:1.9.2.20) Gecko/20100603 Firefox/35.0','2024-07-24 21:10:58','2024-08-09 11:05:57'),(30,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',4,'http://localhost','Dayana Mann IV','aliza.mcglynn@brekke.com','https://friendsofbotble.com','This article presents a balanced view on a controversial topic.','approved','181.139.81.69','Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0)','2024-07-21 11:27:20','2024-08-09 11:05:57'),(31,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',19,'http://localhost','Jerel Denesik','chaz43@hotmail.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s a gem.','approved','87.72.238.121','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_6) AppleWebKit/5330 (KHTML, like Gecko) Chrome/38.0.893.0 Mobile Safari/5330','2024-08-04 14:29:42','2024-08-09 11:05:57'),(32,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',18,'http://localhost','Dr. Tommie Murphy Jr.','destinee.gorczany@kautzer.com','https://friendsofbotble.com','I\'ve been struggling with this, your article helped a lot.','approved','75.155.45.238','Mozilla/5.0 (compatible; MSIE 7.0; Windows 98; Win 9x 4.90; Trident/3.0)','2024-07-10 14:31:52','2024-08-09 11:05:57'),(33,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',12,'http://localhost','Garnett Cole Jr.','gregg.jaskolski@yahoo.com','https://friendsofbotble.com','I\'ve learned something new today, thanks to this article.','approved','42.115.44.197','Mozilla/5.0 (Windows 95; sl-SI; rv:1.9.0.20) Gecko/20130524 Firefox/37.0','2024-08-08 05:01:57','2024-08-09 11:05:57'),(34,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',6,'http://localhost','Aaron Hayes','aufderhar.deonte@williamson.com','https://friendsofbotble.com','Kudos to the author for a well-researched piece.','approved','98.79.106.127','Opera/9.18 (Windows NT 6.0; nl-NL) Presto/2.8.298 Version/12.00','2024-07-19 08:06:48','2024-08-09 11:05:57'),(35,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',3,'http://localhost','Nina Renner','fleta.mckenzie@langworth.com','https://friendsofbotble.com','I\'m impressed by the depth of knowledge demonstrated here.','approved','55.255.212.126','Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_2 like Mac OS X; en-US) AppleWebKit/534.29.6 (KHTML, like Gecko) Version/3.0.5 Mobile/8B111 Safari/6534.29.6','2024-07-15 17:20:06','2024-08-09 11:05:57'),(36,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',15,'http://localhost','Ms. Katharina Treutel','mariam64@gmail.com','https://friendsofbotble.com','This article challenged my assumptions in a good way.','approved','90.210.36.1','Mozilla/5.0 (compatible; MSIE 7.0; Windows 98; Win 9x 4.90; Trident/5.1)','2024-08-02 17:26:40','2024-08-09 11:05:57'),(37,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',19,'http://localhost','Pete Shields','wbashirian@brakus.com','https://friendsofbotble.com','I\'ve shared this with my colleagues, it\'s worth discussing.','approved','244.108.207.118','Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/534.2 (KHTML, like Gecko) Version/15.0 EdgiOS/79.01065.88 Mobile/15E148 Safari/534.2','2024-07-22 11:50:48','2024-08-09 11:05:57'),(38,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',18,'http://localhost','Dr. Braxton Heller','dan.homenick@gmail.com','https://friendsofbotble.com','The information presented here is very valuable.','approved','69.43.201.171','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_8) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/88.0.4447.36 Safari/532.1 Edg/88.01024.51','2024-07-23 13:21:15','2024-08-09 11:05:57'),(39,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',8,'http://localhost','Fatima Runolfsson PhD','kihn.mossie@carroll.com','https://friendsofbotble.com','You have a talent for explaining complex topics clearly.','approved','254.215.218.6','Opera/9.91 (X11; Linux x86_64; en-US) Presto/2.12.168 Version/12.00','2024-07-11 17:35:12','2024-08-09 11:05:57'),(40,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',7,'http://localhost','Wendy Schulist','bayer.mayra@blick.com','https://friendsofbotble.com','I\'m inspired to learn more about this after reading your article.','approved','180.126.172.64','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_4 rv:5.0) Gecko/20190321 Firefox/35.0','2024-07-17 02:56:42','2024-08-09 11:05:57'),(41,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',9,'http://localhost','Bobby Barton','nya81@gmail.com','https://friendsofbotble.com','This article deserves wider recognition.','approved','153.239.84.33','Opera/9.42 (X11; Linux x86_64; nl-NL) Presto/2.11.325 Version/11.00','2024-07-22 16:58:35','2024-08-09 11:05:57'),(42,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',10,'http://localhost','Hilton Beatty','lynn66@hotmail.com','https://friendsofbotble.com','I\'m grateful for the insights shared in this piece.','approved','115.14.52.157','Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20130610 Firefox/35.0','2024-07-30 19:01:31','2024-08-09 11:05:57'),(43,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',3,'http://localhost','Dr. Mollie Veum II','nola.turner@yahoo.com','https://friendsofbotble.com','The author presents a balanced view on a controversial topic.','approved','72.181.51.127','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_7) AppleWebKit/5311 (KHTML, like Gecko) Chrome/37.0.853.0 Mobile Safari/5311','2024-07-10 23:18:56','2024-08-09 11:05:57'),(44,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',12,'http://localhost','Kieran Dibbert','williamson.diana@gorczany.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s','approved','185.32.230.112','Opera/8.32 (X11; Linux i686; nl-NL) Presto/2.10.337 Version/11.00','2024-07-31 06:51:59','2024-08-09 11:05:57'),(45,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',13,'http://localhost','Jakob Powlowski','kreiger.skylar@yahoo.com','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article. It\'s incredibly insightful and provides a comprehensive overview of the subject matter. I appreciate the effort put into researching and writing this piece. It\'s truly eye-opening and has given me a new perspective. Thank you for sharing your knowledge with us!','approved','66.93.167.141','Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20201001 Firefox/37.0','2024-07-21 12:17:20','2024-08-09 11:05:57'),(46,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',5,'http://localhost','Prof. Corrine Altenwerth','donnelly.darby@ebert.com','https://friendsofbotble.com','This article is a masterpiece! It dives deep into the topic and offers valuable insights that are both thought-provoking and enlightening. The author\'s expertise is evident throughout, making it a compelling read from start to finish. I\'ll definitely be coming back to this for reference in the future.','approved','95.67.37.179','Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/532.2 (KHTML, like Gecko) Version/15.0 EdgiOS/93.01114.97 Mobile/15E148 Safari/532.2','2024-07-23 11:35:49','2024-08-09 11:05:58'),(47,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',10,'http://localhost','Edgar Nader','lschultz@yahoo.com','https://friendsofbotble.com','I\'m amazed by the depth of analysis in this article. It covers a wide range of aspects related to the topic, providing a comprehensive understanding. The clarity of explanation is commendable, making complex concepts easy to grasp. This article has enriched my understanding and sparked further curiosity. Kudos to the author!','approved','210.230.22.134','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_4 rv:4.0; sl-SI) AppleWebKit/531.22.6 (KHTML, like Gecko) Version/5.0.5 Safari/531.22.6','2024-07-17 16:59:25','2024-08-09 11:05:58');
/*!40000 ALTER TABLE `fob_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','Sunt asperiores cum cupiditate. Eos soluta odio dolorem provident error voluptatem distinctio.',0,0,'main/news/1.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(2,'New Day','Impedit unde quaerat ullam sed. Sunt soluta cum qui magni suscipit assumenda. Nesciunt nemo placeat animi magnam dolore recusandae.',0,0,'main/news/2.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(3,'Happy Day','Neque et quas nobis perferendis occaecati et. Modi blanditiis sed eligendi nesciunt odit mollitia. Aliquam deserunt facilis illo ad ducimus velit.',0,0,'main/news/3.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(4,'Nature','Dolore quas sequi cum consequatur sit. Ipsum quisquam et mollitia ab fugit. Sed qui aut dolores accusantium quos.',0,0,'main/news/4.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(5,'Morning','Quis rerum vero incidunt ab. Pariatur magni assumenda consequatur laborum atque voluptas. Et eligendi doloremque dolores iusto.',0,0,'main/news/5.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(6,'Sunset','Et non illum iusto incidunt eligendi expedita. Ex accusamus vel sit modi. Tempora voluptatem aut repudiandae asperiores.',0,0,'main/news/6.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(7,'Ocean Views','Sed et natus veritatis tenetur facilis sed. Sint voluptas ut nihil et. Et sed aut ducimus et et qui est vitae.',0,0,'main/news/7.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(8,'Adventure Time','Minus itaque reiciendis ea est asperiores ullam iste. Non aut distinctio facilis fuga libero. Non hic minus consequatur qui.',0,0,'main/news/8.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(9,'City Lights','Omnis dolorum doloribus iste vitae. Commodi sint eum corporis sapiente. Aut ut molestiae dolor ea quis.',0,0,'main/news/9.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(10,'Dreamscape','Dolorem ut temporibus cupiditate ut. Doloribus consequatur ipsa pariatur unde deserunt et. Unde facilis delectus consequatur id.',0,0,'main/news/10.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(11,'Enchanted Forest','Et aliquid ratione nobis velit quam sit qui. Est vel et facere at at rerum sed. Ut aut ipsa quo.',0,0,'main/news/11.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(12,'Golden Hour','Eos odit cupiditate quam et. A fugiat totam quisquam rerum et rerum sed. Omnis sed sint quaerat et. Rerum ad excepturi quidem.',0,0,'main/news/12.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(13,'Serenity','Molestias ducimus est enim pariatur. Voluptatem quos iure nemo aut soluta et. Nesciunt sint minima tenetur aspernatur.',0,0,'main/news/13.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(14,'Eternal Beauty','Praesentium voluptatem assumenda ut voluptatem provident quis. Omnis a omnis nesciunt assumenda nisi iusto. Eaque sint eius omnis.',0,0,'main/news/14.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(15,'Moonlight Magic','Et facere et illo. Eveniet nihil autem blanditiis quis aliquid et ut. Sunt saepe et ut dolor placeat.',0,0,'main/news/15.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(16,'Starry Night','Officiis nobis nihil libero molestiae in. Sed facilis nisi qui natus doloribus rerum aut aperiam. Quod quia ipsam voluptatum eligendi.',0,0,'main/news/16.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(17,'Hidden Gems','Ipsum laborum corporis odit tempora aperiam quidem non consectetur. Sint ut doloremque quisquam necessitatibus tempore porro.',0,0,'main/news/17.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(18,'Tranquil Waters','Eius doloribus eaque omnis ab. Debitis dolorem occaecati omnis fugit sunt. Ut ut animi voluptates dolores doloribus molestiae.',0,0,'main/news/18.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(19,'Urban Escape','Architecto totam voluptas iusto maxime nulla officiis. Recusandae et dolores reiciendis rem. Aliquid enim placeat corporis.',0,0,'main/news/19.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(20,'Twilight Zone','Amet aut voluptatem non sit id rerum. Voluptatem eligendi cum molestiae quaerat est.',0,0,'main/news/20.jpg',1,'published','2024-08-09 11:05:56','2024-08-09 11:05:56');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(2,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(3,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(4,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(5,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(6,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(7,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',7,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(8,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',8,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(9,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',9,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(10,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',10,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(11,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',11,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(12,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',12,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(13,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',13,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(14,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',14,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(15,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',15,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(16,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',16,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(17,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',17,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(18,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',18,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(19,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',19,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56'),(20,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',20,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:05:56','2024-08-09 11:05:56');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','7f2536d3988281921af300d820a0ca69',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','167c59461f46b455fc510fdb44b415e5',1,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'about-1','about-1',2,'image/png',8467,'main/general/about-1.png','[]','2024-08-09 11:05:31','2024-08-09 11:05:31',NULL,'public'),(2,0,'about-2','about-2',2,'image/png',8467,'main/general/about-2.png','[]','2024-08-09 11:05:31','2024-08-09 11:05:31',NULL,'public'),(3,0,'about-video-1','about-video-1',2,'image/png',20777,'main/general/about-video-1.png','[]','2024-08-09 11:05:31','2024-08-09 11:05:31',NULL,'public'),(4,0,'ads-banner','ads-banner',2,'image/png',75705,'main/general/ads-banner.png','[]','2024-08-09 11:05:32','2024-08-09 11:05:32',NULL,'public'),(5,0,'app-downloads','app-downloads',2,'image/png',7092,'main/general/app-downloads.png','[]','2024-08-09 11:05:32','2024-08-09 11:05:32',NULL,'public'),(6,0,'blog-3','blog-3',2,'image/png',5919,'main/general/blog-3.png','[]','2024-08-09 11:05:32','2024-08-09 11:05:32',NULL,'public'),(7,0,'blog-4','blog-4',2,'image/png',5919,'main/general/blog-4.png','[]','2024-08-09 11:05:32','2024-08-09 11:05:32',NULL,'public'),(8,0,'blog-5','blog-5',2,'image/png',8614,'main/general/blog-5.png','[]','2024-08-09 11:05:32','2024-08-09 11:05:32',NULL,'public'),(9,0,'blog-shape-image','blog-shape-image',2,'image/png',1182,'main/general/blog-shape-image.png','[]','2024-08-09 11:05:33','2024-08-09 11:05:33',NULL,'public'),(10,0,'favicon','favicon',2,'image/png',693,'main/general/favicon.png','[]','2024-08-09 11:05:33','2024-08-09 11:05:33',NULL,'public'),(11,0,'logo-dark','logo-dark',2,'image/png',2098,'main/general/logo-dark.png','[]','2024-08-09 11:05:33','2024-08-09 11:05:33',NULL,'public'),(12,0,'logo','logo',2,'image/png',2593,'main/general/logo.png','[]','2024-08-09 11:05:33','2024-08-09 11:05:33',NULL,'public'),(13,0,'newsletter-image','newsletter-image',2,'image/png',22929,'main/general/newsletter-image.png','[]','2024-08-09 11:05:33','2024-08-09 11:05:33',NULL,'public'),(14,0,'newsletter-popup','newsletter-popup',2,'image/png',24175,'main/general/newsletter-popup.png','[]','2024-08-09 11:05:33','2024-08-09 11:05:33',NULL,'public'),(15,0,'signature','signature',2,'image/png',2197,'main/general/signature.png','[]','2024-08-09 11:05:33','2024-08-09 11:05:33',NULL,'public'),(16,0,'1','1',3,'image/png',9803,'main/members/1.png','[]','2024-08-09 11:05:34','2024-08-09 11:05:34',NULL,'public'),(17,0,'2','2',3,'image/png',9803,'main/members/2.png','[]','2024-08-09 11:05:34','2024-08-09 11:05:34',NULL,'public'),(18,0,'3','3',3,'image/png',9803,'main/members/3.png','[]','2024-08-09 11:05:34','2024-08-09 11:05:34',NULL,'public'),(19,0,'4','4',3,'image/png',9803,'main/members/4.png','[]','2024-08-09 11:05:35','2024-08-09 11:05:35',NULL,'public'),(20,0,'5','5',3,'image/png',9803,'main/members/5.png','[]','2024-08-09 11:05:35','2024-08-09 11:05:35',NULL,'public'),(21,0,'6','6',3,'image/png',9803,'main/members/6.png','[]','2024-08-09 11:05:35','2024-08-09 11:05:35',NULL,'public'),(22,0,'7','7',3,'image/png',9803,'main/members/7.png','[]','2024-08-09 11:05:35','2024-08-09 11:05:35',NULL,'public'),(23,0,'8','8',3,'image/png',9803,'main/members/8.png','[]','2024-08-09 11:05:35','2024-08-09 11:05:35',NULL,'public'),(24,0,'1','1',4,'image/jpeg',33268,'main/news/1.jpg','[]','2024-08-09 11:05:38','2024-08-09 11:05:38',NULL,'public'),(25,0,'10','10',4,'image/jpeg',33268,'main/news/10.jpg','[]','2024-08-09 11:05:38','2024-08-09 11:05:38',NULL,'public'),(26,0,'11','11',4,'image/jpeg',33268,'main/news/11.jpg','[]','2024-08-09 11:05:39','2024-08-09 11:05:39',NULL,'public'),(27,0,'12','12',4,'image/jpeg',33268,'main/news/12.jpg','[]','2024-08-09 11:05:39','2024-08-09 11:05:39',NULL,'public'),(28,0,'13','13',4,'image/jpeg',33268,'main/news/13.jpg','[]','2024-08-09 11:05:40','2024-08-09 11:05:40',NULL,'public'),(29,0,'14','14',4,'image/jpeg',33268,'main/news/14.jpg','[]','2024-08-09 11:05:40','2024-08-09 11:05:40',NULL,'public'),(30,0,'15','15',4,'image/jpeg',33268,'main/news/15.jpg','[]','2024-08-09 11:05:40','2024-08-09 11:05:40',NULL,'public'),(31,0,'16','16',4,'image/jpeg',33268,'main/news/16.jpg','[]','2024-08-09 11:05:41','2024-08-09 11:05:41',NULL,'public'),(32,0,'17','17',4,'image/jpeg',33268,'main/news/17.jpg','[]','2024-08-09 11:05:41','2024-08-09 11:05:41',NULL,'public'),(33,0,'18','18',4,'image/jpeg',33268,'main/news/18.jpg','[]','2024-08-09 11:05:42','2024-08-09 11:05:42',NULL,'public'),(34,0,'19','19',4,'image/jpeg',33268,'main/news/19.jpg','[]','2024-08-09 11:05:42','2024-08-09 11:05:42',NULL,'public'),(35,0,'2','2',4,'image/jpeg',33268,'main/news/2.jpg','[]','2024-08-09 11:05:43','2024-08-09 11:05:43',NULL,'public'),(36,0,'20','20',4,'image/jpeg',33268,'main/news/20.jpg','[]','2024-08-09 11:05:43','2024-08-09 11:05:43',NULL,'public'),(37,0,'3','3',4,'image/jpeg',33268,'main/news/3.jpg','[]','2024-08-09 11:05:43','2024-08-09 11:05:43',NULL,'public'),(38,0,'4','4',4,'image/jpeg',33268,'main/news/4.jpg','[]','2024-08-09 11:05:44','2024-08-09 11:05:44',NULL,'public'),(39,0,'5','5',4,'image/jpeg',33268,'main/news/5.jpg','[]','2024-08-09 11:05:44','2024-08-09 11:05:44',NULL,'public'),(40,0,'6','6',4,'image/jpeg',33268,'main/news/6.jpg','[]','2024-08-09 11:05:45','2024-08-09 11:05:45',NULL,'public'),(41,0,'7','7',4,'image/jpeg',33268,'main/news/7.jpg','[]','2024-08-09 11:05:45','2024-08-09 11:05:45',NULL,'public'),(42,0,'8','8',4,'image/jpeg',33268,'main/news/8.jpg','[]','2024-08-09 11:05:46','2024-08-09 11:05:46',NULL,'public'),(43,0,'9','9',4,'image/jpeg',33268,'main/news/9.jpg','[]','2024-08-09 11:05:46','2024-08-09 11:05:46',NULL,'public'),(44,0,'audio','audio',5,'audio/mpeg',239584,'main/audio/audio.mp3','[]','2024-08-09 11:05:46','2024-08-09 11:05:46',NULL,'public'),(45,0,'1','1',7,'image/jpeg',33268,'photography/news/1.jpg','[]','2024-08-09 11:05:47','2024-08-09 11:05:47',NULL,'public'),(46,0,'10','10',7,'image/jpeg',33268,'photography/news/10.jpg','[]','2024-08-09 11:05:47','2024-08-09 11:05:47',NULL,'public'),(47,0,'11','11',7,'image/jpeg',33268,'photography/news/11.jpg','[]','2024-08-09 11:05:48','2024-08-09 11:05:48',NULL,'public'),(48,0,'12','12',7,'image/jpeg',33268,'photography/news/12.jpg','[]','2024-08-09 11:05:48','2024-08-09 11:05:48',NULL,'public'),(49,0,'13','13',7,'image/jpeg',33268,'photography/news/13.jpg','[]','2024-08-09 11:05:48','2024-08-09 11:05:48',NULL,'public'),(50,0,'14','14',7,'image/jpeg',33268,'photography/news/14.jpg','[]','2024-08-09 11:05:49','2024-08-09 11:05:49',NULL,'public'),(51,0,'15','15',7,'image/jpeg',33268,'photography/news/15.jpg','[]','2024-08-09 11:05:49','2024-08-09 11:05:49',NULL,'public'),(52,0,'16','16',7,'image/jpeg',33268,'photography/news/16.jpg','[]','2024-08-09 11:05:50','2024-08-09 11:05:50',NULL,'public'),(53,0,'17','17',7,'image/jpeg',33268,'photography/news/17.jpg','[]','2024-08-09 11:05:50','2024-08-09 11:05:50',NULL,'public'),(54,0,'18','18',7,'image/jpeg',33268,'photography/news/18.jpg','[]','2024-08-09 11:05:51','2024-08-09 11:05:51',NULL,'public'),(55,0,'19','19',7,'image/jpeg',33268,'photography/news/19.jpg','[]','2024-08-09 11:05:51','2024-08-09 11:05:51',NULL,'public'),(56,0,'2','2',7,'image/jpeg',33268,'photography/news/2.jpg','[]','2024-08-09 11:05:51','2024-08-09 11:05:51',NULL,'public'),(57,0,'20','20',7,'image/jpeg',33268,'photography/news/20.jpg','[]','2024-08-09 11:05:52','2024-08-09 11:05:52',NULL,'public'),(58,0,'3','3',7,'image/jpeg',33268,'photography/news/3.jpg','[]','2024-08-09 11:05:52','2024-08-09 11:05:52',NULL,'public'),(59,0,'4','4',7,'image/jpeg',33268,'photography/news/4.jpg','[]','2024-08-09 11:05:53','2024-08-09 11:05:53',NULL,'public'),(60,0,'5','5',7,'image/jpeg',33268,'photography/news/5.jpg','[]','2024-08-09 11:05:53','2024-08-09 11:05:53',NULL,'public'),(61,0,'6','6',7,'image/jpeg',33268,'photography/news/6.jpg','[]','2024-08-09 11:05:54','2024-08-09 11:05:54',NULL,'public'),(62,0,'7','7',7,'image/jpeg',33268,'photography/news/7.jpg','[]','2024-08-09 11:05:54','2024-08-09 11:05:54',NULL,'public'),(63,0,'8','8',7,'image/jpeg',33268,'photography/news/8.jpg','[]','2024-08-09 11:05:54','2024-08-09 11:05:54',NULL,'public'),(64,0,'9','9',7,'image/jpeg',33268,'photography/news/9.jpg','[]','2024-08-09 11:05:55','2024-08-09 11:05:55',NULL,'public'),(65,0,'favicon','favicon',8,'image/png',1908,'photography/general/favicon.png','[]','2024-08-09 11:05:56','2024-08-09 11:05:56',NULL,'public'),(66,0,'logo-dark','logo-dark',8,'image/png',2558,'photography/general/logo-dark.png','[]','2024-08-09 11:05:56','2024-08-09 11:05:56',NULL,'public'),(67,0,'logo','logo',8,'image/png',2459,'photography/general/logo.png','[]','2024-08-09 11:05:56','2024-08-09 11:05:56',NULL,'public'),(68,0,'breadcrumb','breadcrumb',9,'image/png',109184,'main/backgrounds/breadcrumb.png','[]','2024-08-09 11:05:56','2024-08-09 11:05:56',NULL,'public'),(69,0,'newsletter-bg','newsletter-bg',9,'image/png',15427,'main/backgrounds/newsletter-bg.png','[]','2024-08-09 11:05:56','2024-08-09 11:05:56',NULL,'public'),(70,0,'1','1',10,'image/png',1455,'main/blog-categories/1.png','[]','2024-08-09 11:05:57','2024-08-09 11:05:57',NULL,'public'),(71,0,'2','2',10,'image/png',1455,'main/blog-categories/2.png','[]','2024-08-09 11:05:57','2024-08-09 11:05:57',NULL,'public'),(72,0,'3','3',10,'image/png',1455,'main/blog-categories/3.png','[]','2024-08-09 11:05:57','2024-08-09 11:05:57',NULL,'public'),(73,0,'4','4',10,'image/png',1455,'main/blog-categories/4.png','[]','2024-08-09 11:05:57','2024-08-09 11:05:57',NULL,'public'),(74,0,'5','5',10,'image/png',1455,'main/blog-categories/5.png','[]','2024-08-09 11:05:57','2024-08-09 11:05:57',NULL,'public'),(75,0,'breaking-news-icon','breaking-news-icon',11,'image/png',1133,'main/icons/breaking-news-icon.png','[]','2024-08-09 11:05:57','2024-08-09 11:05:57',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-08-09 11:05:31','2024-08-09 11:05:31',NULL),(2,0,'general',NULL,'general',1,'2024-08-09 11:05:31','2024-08-09 11:05:31',NULL),(3,0,'members',NULL,'members',1,'2024-08-09 11:05:34','2024-08-09 11:05:34',NULL),(4,0,'news',NULL,'news',1,'2024-08-09 11:05:38','2024-08-09 11:05:38',NULL),(5,0,'audio',NULL,'audio',1,'2024-08-09 11:05:46','2024-08-09 11:05:46',NULL),(6,0,'photography',NULL,'photography',0,'2024-08-09 11:05:47','2024-08-09 11:05:47',NULL),(7,0,'news',NULL,'news',6,'2024-08-09 11:05:47','2024-08-09 11:05:47',NULL),(8,0,'general',NULL,'general',6,'2024-08-09 11:05:56','2024-08-09 11:05:56',NULL),(9,0,'backgrounds',NULL,'backgrounds',1,'2024-08-09 11:05:56','2024-08-09 11:05:56',NULL),(10,0,'blog-categories',NULL,'blog-categories',1,'2024-08-09 11:05:57','2024-08-09 11:05:57',NULL),(11,0,'icons',NULL,'icons',1,'2024-08-09 11:05:57','2024-08-09 11:05:57',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_activity_logs`
--

DROP TABLE IF EXISTS `member_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_activity_logs_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_activity_logs`
--

LOCK TABLES `member_activity_logs` WRITE;
/*!40000 ALTER TABLE `member_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_password_resets`
--

DROP TABLE IF EXISTS `member_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `member_password_resets_email_index` (`email`),
  KEY `member_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_password_resets`
--

LOCK TABLES `member_password_resets` WRITE;
/*!40000 ALTER TABLE `member_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'John','Smith','Mock Turtle: \'nine the next.',NULL,'member@archielite.com','$2y$12$5KxxRvo9qJLZyXke98r6FucC2gzBPx7n7F09C85bVaPxtkkICwSKK',16,'1984-12-05','+1-772-391-0367','2024-08-09 18:05:35',NULL,NULL,'2024-08-09 11:05:36','2024-08-09 11:05:36','published'),(2,'Jaclyn','Wisoky','Hi, I’m Jaclyn Wisoky, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'rachel.zieme@conn.biz','$2y$12$lg145yMKHxU8xicvlbr.T.sofEiGDRVbDCuWs3mhw7sniLX3btnDK',17,'1976-08-12','+1 (864) 353-9679','2024-08-09 18:05:35',NULL,NULL,'2024-08-09 11:05:36','2024-08-09 11:05:36','published'),(3,'Jany','Bogan','Hi, I’m Jany Bogan, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'bernier.brielle@gmail.com','$2y$12$.qghbJfoDoRUEll4EmizoutecKvsVYYUVWwki/BUhHwS4alhkpspK',18,'2004-01-24','+19548286387','2024-08-09 18:05:35',NULL,NULL,'2024-08-09 11:05:36','2024-08-09 11:05:36','published'),(4,'Stan','Muller','Hi, I’m Stan Muller, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'mcclure.sigurd@kuhlman.com','$2y$12$6Uhr.DvvpgDTKaIMZ0jSGOuIPNWm5BiWBWtmD57IPTDE8GhDNjeiO',19,'1999-11-18','(607) 982-3933','2024-08-09 18:05:35',NULL,NULL,'2024-08-09 11:05:37','2024-08-09 11:05:37','published'),(5,'Green','Predovic','Hi, I’m Green Predovic, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'schneider.leda@yahoo.com','$2y$12$Aqzk/spzS1WYD1719tDhC.FFkpP.YTfiLkImcVzF/U3WiXZKzqPU6',20,'2003-02-07','+1.689.525.0840','2024-08-09 18:05:35',NULL,NULL,'2024-08-09 11:05:37','2024-08-09 11:05:37','published'),(6,'Geraldine','Langworth','Hi, I’m Geraldine Langworth, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'bettie24@kris.com','$2y$12$tdJSRN6E7brH1GxbTEASTeXipKfvLJRa76gI2hblF7ZaBbBCxm73C',21,'1972-10-13','+1 (385) 612-1881','2024-08-09 18:05:35',NULL,NULL,'2024-08-09 11:05:37','2024-08-09 11:05:37','published'),(7,'Jaden','Morar','Hi, I’m Jaden Morar, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'bogisich.bernie@yahoo.com','$2y$12$KoLA0QyVf6mwqCgiNXnAJOcXr/HHtkD02t3ExSf/k8pPTrOOPGLMW',22,'1978-08-07','747-517-0452','2024-08-09 18:05:35',NULL,NULL,'2024-08-09 11:05:37','2024-08-09 11:05:37','published'),(8,'Emelia','Bechtelar','Hi, I’m Emelia Bechtelar, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'gusikowski.neoma@goodwin.biz','$2y$12$LOpzCOBLNrQ4.HuQ.RW1HeEqCrAcDglMaXW2v35hBti6m.7qfkwny',23,'1981-01-07','575-891-0404','2024-08-09 18:05:35',NULL,NULL,'2024-08-09 11:05:38','2024-08-09 11:05:38','published');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-08-09 11:05:57','2024-08-09 11:05:57');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(2,1,1,NULL,NULL,'https://echo-sports.archielite.com',NULL,0,'Home Sports',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(3,1,1,NULL,NULL,'https://echo-travel.archielite.com',NULL,0,'Home Travel',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(4,1,1,NULL,NULL,'https://echo-ai.archielite.com',NULL,0,'Home AI',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(5,1,1,NULL,NULL,'https://echo-politics.archielite.com',NULL,0,'Home Politics',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(6,1,1,NULL,NULL,'https://echo-food.archielite.com',NULL,0,'Home Food',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(7,1,1,NULL,NULL,'https://echo-photography.archielite.com',NULL,0,'Home Photography',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(8,1,1,NULL,NULL,'https://echo.archielite.com',NULL,0,'Home News',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(9,1,1,NULL,NULL,'https://echo-fashion.archielite.com',NULL,0,'Home Fashion',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(10,1,1,NULL,NULL,'https://echo-technology.archielite.com',NULL,0,'Home Technology',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(11,1,1,NULL,NULL,'https://echo-gaming.archielite.com',NULL,0,'Home Gaming',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(12,1,0,NULL,NULL,'/',NULL,0,'Pages',NULL,'_self',1,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(13,1,12,NULL,NULL,'/about-us',NULL,0,'About',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(14,1,12,NULL,NULL,'/author/smith',NULL,0,'Author',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(15,1,12,NULL,NULL,'/team',NULL,0,'Team',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(16,1,12,NULL,NULL,'/error-page',NULL,0,'Error Page',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(17,1,0,NULL,NULL,'/blog',NULL,0,'Blog',NULL,'_self',1,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(18,1,17,NULL,NULL,'/blog?style=card',NULL,0,'Blog Card',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(19,1,17,NULL,NULL,'/blog?style=list',NULL,0,'Blog List',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(20,1,17,NULL,NULL,'/blog?style=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(21,1,17,NULL,NULL,'/blog?style=mixed',NULL,0,'Blog Mixed',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(22,1,0,1,'Botble\\Blog\\Models\\Post','/blog/the-majestic-tiger-king-of-the-jungle',NULL,0,'Post',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57'),(23,1,0,NULL,NULL,'contact',NULL,0,'Contact',NULL,'_self',0,'2024-08-09 11:05:57','2024-08-09 11:05:57');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-08-09 11:05:57','2024-08-09 11:05:57');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'title','[\"Chef Marketing Officer\"]',1,'Botble\\Member\\Models\\Member','2024-08-09 11:05:36','2024-08-09 11:05:36'),(2,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',1,'Botble\\Member\\Models\\Member','2024-08-09 11:05:36','2024-08-09 11:05:36'),(3,'title','[\"Creative Director\"]',2,'Botble\\Member\\Models\\Member','2024-08-09 11:05:36','2024-08-09 11:05:36'),(4,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',2,'Botble\\Member\\Models\\Member','2024-08-09 11:05:36','2024-08-09 11:05:36'),(5,'title','[\"Chef Marketing Officer\"]',3,'Botble\\Member\\Models\\Member','2024-08-09 11:05:36','2024-08-09 11:05:36'),(6,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',3,'Botble\\Member\\Models\\Member','2024-08-09 11:05:36','2024-08-09 11:05:36'),(7,'title','[\"Chef Marketing Officer\"]',4,'Botble\\Member\\Models\\Member','2024-08-09 11:05:37','2024-08-09 11:05:37'),(8,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',4,'Botble\\Member\\Models\\Member','2024-08-09 11:05:37','2024-08-09 11:05:37'),(9,'title','[\"Marketing Director\"]',5,'Botble\\Member\\Models\\Member','2024-08-09 11:05:37','2024-08-09 11:05:37'),(10,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',5,'Botble\\Member\\Models\\Member','2024-08-09 11:05:37','2024-08-09 11:05:37'),(11,'title','[\"Sr. Manager\"]',6,'Botble\\Member\\Models\\Member','2024-08-09 11:05:37','2024-08-09 11:05:37'),(12,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',6,'Botble\\Member\\Models\\Member','2024-08-09 11:05:37','2024-08-09 11:05:37'),(13,'title','[\"Sr. Manager\"]',7,'Botble\\Member\\Models\\Member','2024-08-09 11:05:37','2024-08-09 11:05:37'),(14,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',7,'Botble\\Member\\Models\\Member','2024-08-09 11:05:37','2024-08-09 11:05:37'),(15,'title','[\"Creative Director\"]',8,'Botble\\Member\\Models\\Member','2024-08-09 11:05:38','2024-08-09 11:05:38'),(16,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',8,'Botble\\Member\\Models\\Member','2024-08-09 11:05:38','2024-08-09 11:05:38'),(17,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',2,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(18,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',3,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(19,'audio','[\"main\\/audio\\/audio.mp3\"]',4,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(20,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',5,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(21,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',6,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(22,'audio','[\"main\\/audio\\/audio.mp3\"]',7,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(23,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',8,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(24,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',9,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(25,'audio','[\"main\\/audio\\/audio.mp3\"]',10,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(26,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',11,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(27,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',12,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(28,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',14,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(29,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',15,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(30,'audio','[\"main\\/audio\\/audio.mp3\"]',16,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(31,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',17,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(32,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',18,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(33,'audio','[\"main\\/audio\\/audio.mp3\"]',19,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55'),(34,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',20,'Botble\\Blog\\Models\\Post','2024-08-09 11:05:55','2024-08-09 11:05:55');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2015_08_15_122343_create_notes_table',1),(8,'2016_05_28_112028_create_system_request_logs_table',1),(9,'2016_06_10_230148_create_acl_tables',1),(10,'2016_06_14_230857_create_menus_table',1),(11,'2016_06_17_091537_create_contacts_table',1),(12,'2016_06_28_221418_create_pages_table',1),(13,'2016_10_03_032336_create_languages_table',1),(14,'2016_10_05_074239_create_setting_table',1),(15,'2016_10_07_193005_create_translations_table',1),(16,'2016_10_13_150201_create_galleries_table',1),(17,'2016_11_28_032840_create_dashboard_widget_tables',1),(18,'2016_12_16_084601_create_widgets_table',1),(19,'2017_05_09_070343_create_media_tables',1),(20,'2017_10_04_140938_create_member_table',1),(21,'2017_10_24_154832_create_newsletter_table',1),(22,'2017_11_03_070450_create_slug_table',1),(23,'2019_01_05_053554_create_jobs_table',1),(24,'2019_08_19_000000_create_failed_jobs_table',1),(25,'2019_12_14_000001_create_personal_access_tokens_table',1),(26,'2020_11_18_150916_ads_create_ads_table',1),(27,'2021_02_16_092633_remove_default_value_for_author_type',1),(28,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(29,'2021_12_02_035301_add_ads_translations_table',1),(30,'2021_12_03_030600_create_blog_translations',1),(31,'2021_12_03_075608_create_page_translations',1),(32,'2021_12_03_082953_create_gallery_translations',1),(33,'2022_04_19_113923_add_index_to_table_posts',1),(34,'2022_04_20_100851_add_index_to_media_table',1),(35,'2022_04_20_101046_add_index_to_menu_table',1),(36,'2022_04_30_034048_create_gallery_meta_translations_table',1),(37,'2022_07_10_034813_move_lang_folder_to_root',1),(38,'2022_08_04_051940_add_missing_column_expires_at',1),(39,'2022_09_01_000001_create_admin_notifications_tables',1),(40,'2022_10_14_024629_drop_column_is_featured',1),(41,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(42,'2022_12_02_093615_update_slug_index_columns',1),(43,'2023_01_30_024431_add_alt_to_media_table',1),(44,'2023_02_16_042611_drop_table_password_resets',1),(45,'2023_04_17_062645_add_open_in_new_tab',1),(46,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(47,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(48,'2023_07_06_011444_create_slug_translations_table',1),(49,'2023_08_11_060908_create_announcements_table',1),(50,'2023_08_21_090810_make_page_content_nullable',1),(51,'2023_08_29_074620_make_column_author_id_nullable',1),(52,'2023_08_29_075308_make_column_user_id_nullable',1),(53,'2023_09_14_021936_update_index_for_slugs_table',1),(54,'2023_09_14_022423_add_index_for_language_table',1),(55,'2023_10_16_075332_add_status_column',1),(56,'2023_11_07_023805_add_tablet_mobile_image',1),(57,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',1),(58,'2023_11_14_033417_change_request_column_in_table_audit_histories',1),(59,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(60,'2023_12_12_105220_drop_translations_table',1),(61,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(62,'2024_01_16_050056_create_comments_table',1),(63,'2024_03_13_042350_migrate_newsletter_data',1),(64,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',1),(65,'2024_03_25_000001_update_captcha_settings',1),(66,'2024_03_25_000001_update_captcha_settings_for_contact',1),(67,'2024_03_25_000001_update_captcha_settings_for_newsletter',1),(68,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',1),(69,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(70,'2024_04_19_063914_create_custom_fields_table',1),(71,'2024_04_27_100730_improve_analytics_setting',1),(72,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(73,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(74,'2024_07_12_100000_change_random_hash_for_media',1),(75,'2024_07_30_091615_fix_order_column_in_categories_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_user_id_index` (`user_id`),
  KEY `notes_reference_id_index` (`reference_id`),
  KEY `notes_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[blog-posts style=\"style-17\" limit=\"4\" text_color=\"#000000\" background_color=\"transparent\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-6\" title=\"TIPS OF PHOTOGRAPHY\" limit=\"4\" title_align=\"start\" background_color=\"transparent\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-18\" title=\"COMMERCIAL PHOTOGRAPHY\" limit=\"4\" title_align=\"start\" text_color=\"transparent\" background_color=\"transparent\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-6\" title=\"COMMERCIAL PHOTOGRAPHY\" limit=\"6\" title_align=\"center\" background_color=\"transparent\"][/blog-posts]</div><div>[gallery title=\"FOLLOW US ON INSTAGRAM\" limit=\"6\" text_color=\"transparent\" background_color=\"transparent\"][/gallery]</div>',1,NULL,'homepage',NULL,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(2,'About us','<div>[about-us title=\"Know our Publication Media & Vision.\" subtitle=\"Bring To The Table Win-Win Survival Strategies To Ensure Proactive Domination. At The End Of The Day Going.\" description=\"Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the over holistic world view of disruptive innovation via workplace diversity and Bring to the table win-win survival strategies to ensure proactive fin domination. At the end of the day, going forward, a new normal.\" staff_name=\"Raihawly Williamson\" staff_description=\"CEO, Echo Publishing Inc.\" staff_signature=\"main/general/signature.png\" first_image=\"main/general/about-1.png\" second_image=\"main/general/about-2.png\"][/about-us]</div><div>[intro-video image=\"main/general/about-video-1.png\" video_url=\"https://www.youtube.com/watch?v=Y1t6rjWYNro\" play_icon=\"ti ti-player-play-filled\"][/intro-video]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(3,'Contact','<div>[contact-form title=\"General Customer Care & Technical Support\" description=\"We’re here to assist you with any questions or technical issues you may have. Please fill out the form below, and our dedicated team will respond promptly to ensure you have a seamless experience with us.\" button_label=\"Send Message\" button_icon=\"ti ti-arrow-right\" quantity=\"3\" title_1=\"Location\" description_1=\"The Business Centre132, New York 12401. United States\" icon_1=\"ti ti-map-pin\" url_1=\"\" open_in_new_tab_1=\"yes\" title_2=\"Email Address\" description_2=\"info@yourmail.com\" icon_2=\"ti ti-mail\" url_2=\"mailto:info@yourmail.com\" open_in_new_tab_2=\"yes\" title_3=\"Phone\" description_3=\"(00) 123 456 789 99\" icon_3=\"ti ti-phone\" url_3=\"tel:(00) 123 456 789 99\" open_in_new_tab_3=\"yes\"  address=\"Fortis Downtown Resort\"][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(4,'Blog','---',1,NULL,'full-width',NULL,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(5,'Team','<div>[members title=\"Meet Our Professional Team\" member_ids=\"1,2,3,4,5,6,7,8\"][/members]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(7,'Terms Of Use','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(8,'Privacy Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(9,'Advertise','<h3>Random Content</h3><p>This is a random content that will be displayed on the page.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:05:56','2024-08-09 11:05:56'),(10,'FAQ','<h3>Random Content</h3><p>This is a random content that will be displayed on the page.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:05:56','2024-08-09 11:05:56');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (8,1),(2,1),(2,2),(3,2),(2,3),(3,3),(10,4),(9,4),(9,5),(4,6),(9,7),(2,7),(6,8),(7,8),(6,9),(5,9),(7,10),(2,10),(6,11),(9,11),(6,12),(1,12),(9,13),(3,13),(1,14),(3,15),(5,15),(4,16),(6,16),(8,17),(9,17),(8,18),(5,18),(9,19),(2,19),(9,20),(8,20);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (10,1),(8,1),(5,1),(1,2),(4,2),(5,3),(10,3),(6,3),(6,4),(4,4),(8,4),(10,5),(5,5),(1,5),(6,6),(10,6),(8,7),(5,7),(3,7),(2,8),(3,8),(10,8),(9,9),(1,9),(6,9),(8,10),(6,10),(1,10),(6,11),(10,11),(4,12),(7,12),(1,12),(4,13),(8,13),(7,13),(4,14),(7,14),(1,15),(5,15),(7,15),(4,16),(9,16),(2,16),(6,17),(4,17),(1,17),(6,18),(10,18),(1,18),(10,19),(3,19),(5,19),(4,20),(6,20),(2,20);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'The Majestic Tiger: King of the Jungle','Explore the world of the majestic tiger, the largest cat species and the undisputed king of the jungle. Learn about its habitat, behavior, and conservation status, and discover what makes this iconic predator so awe-inspiring.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',3,'Botble\\Member\\Models\\Member',1,'photography/news/1.jpg',715,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(2,'The Great Migration: Africa\'s Spectacular Wildlife Event','Witness the spectacle of the great migration, one of the most incredible wildlife events on the planet. Follow millions of wildebeest, zebras, and other animals as they journey across the plains of East Africa in search of greener pastures, braving predators and treacherous river crossings along the way.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',7,'Botble\\Member\\Models\\Member',1,'photography/news/2.jpg',328,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(3,'The Enigmatic Giant Squid: Deep Sea Mystery','Dive into the depths of the ocean and discover the enigmatic giant squid, one of the most elusive and mysterious creatures of the deep sea. Learn about its anatomy, behavior, and the ongoing quest to unlock the secrets of this elusive cephalopod.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',1,'Botble\\Member\\Models\\Member',1,'photography/news/3.jpg',1513,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(4,'The Arctic\'s Polar Bears: Lords of the Frozen North','Venture into the frozen wilderness of the Arctic and encounter the polar bear, the world\'s largest land carnivore and the undisputed lord of the frozen north. Learn about its adaptations to life in the extreme cold, its hunting techniques, and the challenges it faces due to climate change.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',6,'Botble\\Member\\Models\\Member',1,'photography/news/4.jpg',1066,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(5,'The Graceful Humpback Whale: Gentle Giants of the Ocean','Set sail on a journey to encounter the graceful humpback whale, one of the largest and most iconic cetacean species. Learn about its migratory patterns, acrobatic displays, and the efforts to protect these gentle giants from threats such as whaling and habitat destruction.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',1,'Botble\\Member\\Models\\Member',1,'photography/news/5.jpg',645,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(6,'The Mighty Elephant: Icons of the African Savanna','Embark on a safari adventure to witness the mighty elephant, the largest land animal on Earth and a symbol of Africa\'s rich biodiversity. Learn about its social structure, communication methods, and the conservation efforts underway to protect these iconic pachyderms from poaching and habitat loss.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',5,'Botble\\Member\\Models\\Member',1,'photography/news/6.jpg',2334,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(7,'The Mysterious Axolotl: The Mexican Walking Fish','Discover the mysterious axolotl, a unique amphibian species native to Mexico and known for its regenerative abilities and neotenic features. Learn about its unusual biology, its cultural significance in Aztec mythology, and the conservation efforts aimed at saving this endangered species from extinction.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',7,'Botble\\Member\\Models\\Member',1,'photography/news/7.jpg',508,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(8,'The Cunning Arctic Fox: Master of Adaptation','Explore the Arctic tundra and encounter the cunning Arctic fox, a resourceful predator adapted to life in one of the harshest environments on Earth. Learn about its unique hunting strategies, its ability to survive in freezing temperatures, and the ecological role it plays in the Arctic ecosystem.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',3,'Botble\\Member\\Models\\Member',1,'photography/news/8.jpg',530,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(9,'The Colorful Coral Reef: Biodiversity Hotspot','Dive into the vibrant world of the coral reef, one of the most biodiverse ecosystems on the planet and home to a dazzling array of marine life. Learn about the coral polyps that build these underwater cities, the fish and invertebrates that inhabit them, and the threats facing coral reefs due to climate change and human activity.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',3,'Botble\\Member\\Models\\Member',1,'photography/news/9.jpg',1525,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(10,'The Agile Cheetah: Speed Demon of the Savannah','Experience the thrill of the chase with the agile cheetah, the fastest land animal on Earth and a masterful predator of the African savannah. Learn about its incredible speed, its hunting techniques, and the conservation efforts aimed at preserving this iconic big cat species.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',4,'Botble\\Member\\Models\\Member',1,'photography/news/10.jpg',1792,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(11,'The Stealthy Snow Leopard: Ghost of the Himalayas','Embark on a journey to the rugged mountains of Central Asia and encounter the elusive snow leopard, a stealthy predator adapted to life in some of the highest altitudes on Earth. Learn about its solitary nature, its hunting prowess, and the conservation challenges it faces due to habitat loss and poaching.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',8,'Botble\\Member\\Models\\Member',0,'photography/news/11.jpg',2452,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(12,'The Playful Dolphin: Acrobats of the Sea','Set sail on a marine adventure and encounter the playful dolphin, one of the most intelligent and charismatic marine mammals. Learn about its social behavior, its acrobatic displays, and the threats facing dolphins in the wild, from pollution to habitat degradation.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',2,'Botble\\Member\\Models\\Member',0,'photography/news/12.jpg',1611,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(13,'The Mischievous Red Panda: Guardian of the Bamboo Forest','Venture into the lush forests of the Eastern Himalayas and meet the mischievous red panda, a charismatic arboreal mammal known for its distinctive appearance and playful demeanor. Learn about its diet of bamboo, its unique adaptations, and the conservation efforts aimed at protecting this endangered species from extinction.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',7,'Botble\\Member\\Models\\Member',0,'photography/news/13.jpg',1625,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(14,'The Regal Lion: King of the African Savannah','Embark on a safari expedition to encounter the regal lion, the iconic apex predator of the African savannah and a symbol of strength and majesty. Learn about its social structure, its hunting techniques, and the conservation efforts underway to protect this iconic big cat species from extinction.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',1,'Botble\\Member\\Models\\Member',0,'photography/news/14.jpg',2135,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(15,'The Fascinating Octopus: Master of Camouflage','Dive into the ocean depths and discover the fascinating world of the octopus, a highly intelligent and adaptable cephalopod known for its remarkable abilities and intricate behavior. Learn about its camouflage tactics, its problem-solving skills, and the ongoing research aimed at unlocking the secrets of its mysterious intelligence.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',5,'Botble\\Member\\Models\\Member',0,'photography/news/15.jpg',200,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(16,'The Agile Orangutan: Guardians of the Rainforest','Journey into the rainforests of Borneo and Sumatra and encounter the agile orangutan, one of our closest relatives in the animal kingdom and a symbol of conservation. Learn about its arboreal lifestyle, its complex social structure, and the threats facing orangutans due to deforestation and the illegal wildlife trade.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',2,'Botble\\Member\\Models\\Member',0,'photography/news/16.jpg',598,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(17,'The Dazzling Hummingbird: Jewel of the Sky','Witness the dazzling beauty of the hummingbird, one of the smallest and most colorful birds in the world and a masterful aerial acrobat. Learn about its unique adaptations for hovering flight, its iridescent plumage, and the vital role it plays in pollination and ecosystem health.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',2,'Botble\\Member\\Models\\Member',0,'photography/news/17.jpg',160,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(18,'The Endearing Giant Panda: Icon of Conservation','Meet the endearing giant panda, a beloved symbol of conservation and biodiversity. Learn about its bamboo diet, its gentle demeanor, and the conservation efforts that have helped save this iconic bear species from the brink of extinction.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',2,'Botble\\Member\\Models\\Member',0,'photography/news/18.jpg',2379,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(19,'The Stealthy Jaguar: Lord of the Amazon Rainforest','Embark on a jungle adventure and encounter the stealthy jaguar, the largest cat species in the Americas and a top predator of the Amazon rainforest. Learn about its solitary lifestyle, its powerful hunting techniques, and the conservation challenges it faces due to habitat loss and human encroachment.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',6,'Botble\\Member\\Models\\Member',0,'photography/news/19.jpg',224,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55'),(20,'The Elegant Swan: Graceful Symbol of Beauty','Admire the elegance of the swan, a graceful waterfowl known for its beauty and poise. Learn about its courtship rituals, its migratory patterns, and the cultural significance of this iconic bird species in mythology and folklore.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',6,'Botble\\Member\\Models\\Member',0,'photography/news/20.jpg',278,NULL,'2024-08-09 11:05:55','2024-08-09 11:05:55');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"fob-comment.index\":true,\"fob-comment.comments.index\":true,\"fob-comment.comments.edit\":true,\"fob-comment.comments.destroy\":true,\"fob-comment.comments.reply\":true,\"fob-comment.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-08-09 11:05:34','2024-08-09 11:05:34');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-08-09 11:05:56'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"ai-writer\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"fob-comment\",\"gallery\",\"member\",\"newsletter\",\"note\",\"request-log\",\"rss-feed\",\"social-login\",\"translation\"]',NULL,'2024-08-09 11:05:56'),(4,'ai_writer_proxy_enable','0',NULL,'2024-08-09 11:05:56'),(5,'ai_writer_proxy_protocol',NULL,NULL,'2024-08-09 11:05:56'),(6,'ai_writer_proxy_ip',NULL,NULL,'2024-08-09 11:05:56'),(7,'ai_writer_proxy_port',NULL,NULL,'2024-08-09 11:05:56'),(8,'ai_writer_proxy_username',NULL,NULL,'2024-08-09 11:05:56'),(9,'ai_writer_proxy_password',NULL,NULL,'2024-08-09 11:05:56'),(10,'ai_writer_prompt_template','[{\"title\":\"Product Content\",\"content\":\"You will be a marketer. I will give the information of the product, you will write an introductory article about that product, the article requires google seo standards and is highly persuasive to increase the rate of users closing orders.\\nParameters product:\"},{\"title\":\"Post Content\",\"content\":\"You will be a marketer. Articles about:\"}]',NULL,'2024-08-09 11:05:56'),(11,'ai_writer_openai_key',NULL,NULL,'2024-08-09 11:05:56'),(12,'ai_writer_openai_temperature','1',NULL,'2024-08-09 11:05:56'),(13,'ai_writer_openai_max_tokens','2000',NULL,'2024-08-09 11:05:56'),(14,'ai_writer_openai_frequency_penalty','0',NULL,'2024-08-09 11:05:56'),(15,'ai_writer_openai_presence_penalty','0',NULL,'2024-08-09 11:05:56'),(16,'ai_writer_openai_models','[\"gpt-3.5-turbo\"]',NULL,'2024-08-09 11:05:56'),(17,'ai_writer_openai_default_model','gpt-3.5-turbo',NULL,'2024-08-09 11:05:56'),(18,'ai_writer_spin_template','[]',NULL,'2024-08-09 11:05:56'),(21,'language_hide_default','1',NULL,'2024-08-09 11:05:56'),(22,'language_switcher_display','dropdown',NULL,'2024-08-09 11:05:56'),(23,'language_display','all',NULL,'2024-08-09 11:05:56'),(24,'language_hide_languages','[]',NULL,'2024-08-09 11:05:56'),(25,'media_random_hash','145ebb4ecc8dc2da94ec687ee04ae5f6',NULL,'2024-08-09 11:05:56'),(26,'theme','echo-photography',NULL,'2024-08-09 11:05:56'),(27,'show_admin_bar','1',NULL,'2024-08-09 11:05:56'),(28,'admin_favicon','main/general/favicon.png',NULL,'2024-08-09 11:05:56'),(29,'admin_logo','main/general/logo-dark.png',NULL,'2024-08-09 11:05:56'),(30,'permalink-botble-blog-models-post','blog',NULL,'2024-08-09 11:05:56'),(31,'permalink-botble-blog-models-category','blog',NULL,'2024-08-09 11:05:56'),(32,'theme-echo-photography-site_name','Echo - Photography',NULL,'2024-08-09 11:05:56'),(33,'theme-echo-photography-site_title','News & Magazine Laravel Script.',NULL,'2024-08-09 11:05:56'),(34,'theme-echo-photography-seo_description','Echo is a modern, clean, and professional Laravel script that is suitable for news, magazine, blog, and any kind of website.',NULL,'2024-08-09 11:05:56'),(35,'theme-echo-photography-homepage_id','1',NULL,'2024-08-09 11:05:56'),(36,'theme-echo-photography-logo','photography/general/logo.png',NULL,'2024-08-09 11:05:56'),(37,'theme-echo-photography-logo_dark','photography/general/logo-dark.png',NULL,'2024-08-09 11:05:56'),(38,'theme-echo-photography-favicon','photography/general/favicon.png',NULL,'2024-08-09 11:05:56'),(39,'theme-echo-photography-blog_page_id','4',NULL,'2024-08-09 11:05:56'),(40,'theme-echo-photography-primary_font','DM Sans',NULL,'2024-08-09 11:05:56'),(41,'theme-echo-photography-heading_font','Bebas Neue',NULL,'2024-08-09 11:05:56'),(42,'theme-echo-photography-theme_style','auto',NULL,'2024-08-09 11:05:56'),(43,'theme-echo-photography-secondary_color','#060F18',NULL,'2024-08-09 11:05:56'),(44,'theme-echo-photography-breadcrumb_background_image','main/backgrounds/breadcrumb.png',NULL,'2024-08-09 11:05:56'),(45,'theme-echo-photography-breadcrumb_background_color','transparent',NULL,'2024-08-09 11:05:56'),(46,'theme-echo-photography-breadcrumb_text_color','',NULL,'2024-08-09 11:05:56'),(47,'theme-echo-photography-blog_author_style','avatar_start',NULL,'2024-08-09 11:05:56'),(48,'theme-echo-photography-blog_description_style','normal',NULL,'2024-08-09 11:05:56'),(49,'theme-echo-photography-copyright','©%Y Archi Elite JSC. All Rights Reserved.',NULL,'2024-08-09 11:05:56'),(50,'theme-echo-photography-language_switcher_enabled','1',NULL,'2024-08-09 11:05:56'),(51,'theme-echo-photography-newsletter_popup_enable','1',NULL,'2024-08-09 11:05:56'),(52,'theme-echo-photography-newsletter_popup_image','main/general/newsletter-popup.png',NULL,'2024-08-09 11:05:56'),(53,'theme-echo-photography-newsletter_popup_title','Let’s join our newsletter!',NULL,'2024-08-09 11:05:56'),(54,'theme-echo-photography-newsletter_popup_subtitle','Weekly Updates',NULL,'2024-08-09 11:05:56'),(55,'theme-echo-photography-newsletter_popup_description','Do not worry we don’t spam!',NULL,'2024-08-09 11:05:56'),(56,'theme-echo-photography-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,'2024-08-09 11:05:56'),(57,'theme-echo-photography-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,'2024-08-09 11:05:56'),(58,'theme-echo-photography-primary_color','#FF4962',NULL,'2024-08-09 11:05:56'),(59,'theme-echo-photography-footer_background_color','#060F18',NULL,'2024-08-09 11:05:56'),(60,'theme-echo-photography-gray_filter_image','1',NULL,'2024-08-09 11:05:56'),(61,'announcement_max_width','1390',NULL,NULL),(62,'announcement_text_color','#fefefe',NULL,NULL),(63,'announcement_background_color','#FF4962',NULL,NULL),(64,'announcement_text_alignment','center',NULL,NULL),(65,'announcement_dismissible','1',NULL,NULL),(66,'announcement_font_size','14',NULL,NULL),(67,'announcement_font_size_unit','px',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'smith',1,'Botble\\Member\\Models\\Member','author','2024-08-09 11:05:38','2024-08-09 11:05:58'),(2,'wisoky',2,'Botble\\Member\\Models\\Member','author','2024-08-09 11:05:38','2024-08-09 11:05:58'),(3,'bogan',3,'Botble\\Member\\Models\\Member','author','2024-08-09 11:05:38','2024-08-09 11:05:58'),(4,'muller',4,'Botble\\Member\\Models\\Member','author','2024-08-09 11:05:38','2024-08-09 11:05:58'),(5,'predovic',5,'Botble\\Member\\Models\\Member','author','2024-08-09 11:05:38','2024-08-09 11:05:58'),(6,'langworth',6,'Botble\\Member\\Models\\Member','author','2024-08-09 11:05:38','2024-08-09 11:05:58'),(7,'morar',7,'Botble\\Member\\Models\\Member','author','2024-08-09 11:05:38','2024-08-09 11:05:58'),(8,'bechtelar',8,'Botble\\Member\\Models\\Member','author','2024-08-09 11:05:38','2024-08-09 11:05:58'),(9,'big-cats',1,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:05:46','2024-08-09 11:05:56'),(10,'marine-life',2,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:05:46','2024-08-09 11:05:56'),(11,'birds',3,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:05:46','2024-08-09 11:05:56'),(12,'primates',4,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:05:46','2024-08-09 11:05:56'),(13,'reptiles',5,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:05:46','2024-08-09 11:05:56'),(14,'amphibians',6,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:05:46','2024-08-09 11:05:56'),(15,'insects',7,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:05:46','2024-08-09 11:05:56'),(16,'endangered-species',8,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:05:46','2024-08-09 11:05:56'),(17,'wildlife-conservation',9,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:05:46','2024-08-09 11:05:56'),(18,'animal-behavior',10,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:05:46','2024-08-09 11:05:56'),(19,'animals',1,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:05:47','2024-08-09 11:05:47'),(20,'wildlife',2,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:05:47','2024-08-09 11:05:47'),(21,'nature',3,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:05:47','2024-08-09 11:05:47'),(22,'biodiversity',4,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:05:47','2024-08-09 11:05:47'),(23,'conservation',5,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:05:47','2024-08-09 11:05:47'),(24,'zoology',6,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:05:47','2024-08-09 11:05:47'),(25,'ecology',7,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:05:47','2024-08-09 11:05:47'),(26,'endangered',8,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:05:47','2024-08-09 11:05:47'),(27,'habitat',9,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:05:47','2024-08-09 11:05:47'),(28,'animal-kingdom',10,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:05:47','2024-08-09 11:05:47'),(29,'the-majestic-tiger-king-of-the-jungle',1,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(30,'the-great-migration-africas-spectacular-wildlife-event',2,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(31,'the-enigmatic-giant-squid-deep-sea-mystery',3,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(32,'the-arctics-polar-bears-lords-of-the-frozen-north',4,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(33,'the-graceful-humpback-whale-gentle-giants-of-the-ocean',5,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(34,'the-mighty-elephant-icons-of-the-african-savanna',6,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(35,'the-mysterious-axolotl-the-mexican-walking-fish',7,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(36,'the-cunning-arctic-fox-master-of-adaptation',8,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(37,'the-colorful-coral-reef-biodiversity-hotspot',9,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(38,'the-agile-cheetah-speed-demon-of-the-savannah',10,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(39,'the-stealthy-snow-leopard-ghost-of-the-himalayas',11,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(40,'the-playful-dolphin-acrobats-of-the-sea',12,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(41,'the-mischievous-red-panda-guardian-of-the-bamboo-forest',13,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(42,'the-regal-lion-king-of-the-african-savannah',14,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(43,'the-fascinating-octopus-master-of-camouflage',15,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(44,'the-agile-orangutan-guardians-of-the-rainforest',16,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(45,'the-dazzling-hummingbird-jewel-of-the-sky',17,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(46,'the-endearing-giant-panda-icon-of-conservation',18,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(47,'the-stealthy-jaguar-lord-of-the-amazon-rainforest',19,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(48,'the-elegant-swan-graceful-symbol-of-beauty',20,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:05:55','2024-08-09 11:05:56'),(49,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(50,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(51,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(52,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(53,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(54,'sunset',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(55,'ocean-views',7,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(56,'adventure-time',8,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(57,'city-lights',9,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(58,'dreamscape',10,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(59,'enchanted-forest',11,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(60,'golden-hour',12,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(61,'serenity',13,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(62,'eternal-beauty',14,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(63,'moonlight-magic',15,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(64,'starry-night',16,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(65,'hidden-gems',17,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(66,'tranquil-waters',18,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(67,'urban-escape',19,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(68,'twilight-zone',20,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:05:56','2024-08-09 11:05:56'),(69,'homepage',1,'Botble\\Page\\Models\\Page','','2024-08-09 11:05:56','2024-08-09 11:05:56'),(70,'about-us',2,'Botble\\Page\\Models\\Page','','2024-08-09 11:05:56','2024-08-09 11:05:56'),(71,'contact',3,'Botble\\Page\\Models\\Page','','2024-08-09 11:05:56','2024-08-09 11:05:56'),(72,'blog',4,'Botble\\Page\\Models\\Page','','2024-08-09 11:05:56','2024-08-09 11:05:56'),(73,'team',5,'Botble\\Page\\Models\\Page','','2024-08-09 11:05:56','2024-08-09 11:05:56'),(74,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2024-08-09 11:05:56','2024-08-09 11:05:56'),(75,'terms-of-use',7,'Botble\\Page\\Models\\Page','','2024-08-09 11:05:56','2024-08-09 11:05:56'),(76,'privacy-policy',8,'Botble\\Page\\Models\\Page','','2024-08-09 11:05:56','2024-08-09 11:05:56'),(77,'advertise',9,'Botble\\Page\\Models\\Page','','2024-08-09 11:05:56','2024-08-09 11:05:56'),(78,'faq',10,'Botble\\Page\\Models\\Page','','2024-08-09 11:05:56','2024-08-09 11:05:56');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Animals',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:05:47','2024-08-09 11:05:47'),(2,'Wildlife',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:05:47','2024-08-09 11:05:47'),(3,'Nature',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:05:47','2024-08-09 11:05:47'),(4,'Biodiversity',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:05:47','2024-08-09 11:05:47'),(5,'Conservation',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:05:47','2024-08-09 11:05:47'),(6,'Zoology',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:05:47','2024-08-09 11:05:47'),(7,'Ecology',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:05:47','2024-08-09 11:05:47'),(8,'Endangered',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:05:47','2024-08-09 11:05:47'),(9,'Habitat',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:05:47','2024-08-09 11:05:47'),(10,'Animal Kingdom',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:05:47','2024-08-09 11:05:47');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ytorphy@rowe.com',NULL,'$2y$12$E2a2uFf4emruYjztDuG9h.m3neY5.iAb88zpCyHIus7j4KbhLLkwi',NULL,'2024-08-09 11:05:34','2024-08-09 11:05:34','Crystal','Barrows','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'BlogPostsWidget','menu_sidebar','echo-photography',1,'{\"type\":\"recent\",\"category_ids\":[1,2,3],\"limit\":3}','2024-08-09 11:05:57','2024-08-09 11:05:57'),(2,'SocialLinksWidget','menu_sidebar','echo-photography',2,'[]','2024-08-09 11:05:57','2024-08-09 11:05:57'),(3,'BlogCategoriesWidget','primary_sidebar','echo-photography',1,'{\"title\":\"Popular Categories\",\"id\":\"BlogCategoriesWidget\",\"enable_lazy_loading\":\"yes\",\"quantity\":\"5\",\"category_id_1\":\"1\",\"background_image_1\":\"main\\/blog-categories\\/1.png\",\"background_color_1\":\"rgb(174 81 43)\",\"category_id_2\":\"2\",\"background_image_2\":\"main\\/blog-categories\\/2.png\",\"background_color_2\":\"rgb(102 64 165)\",\"category_id_3\":\"3\",\"background_image_3\":\"main\\/blog-categories\\/3.png\",\"background_color_3\":\"rgb(85 163 168)\",\"category_id_4\":\"4\",\"background_image_4\":\"main\\/blog-categories\\/4.png\",\"background_color_4\":\"rgb(83 39 21)\",\"category_id_5\":\"5\",\"background_image_5\":\"main\\/blog-categories\\/5.png\",\"background_color_5\":\"rgb(85 163 168)\"}','2024-08-09 11:05:57','2024-08-09 11:05:57'),(4,'BlogPostsWidget','primary_sidebar','echo-photography',2,'{\"type\":\"popular\",\"card_style\":\"default-card\",\"shape\":\"square\",\"category_ids\":[1,3,4],\"title\":\"Top Story\",\"limit\":4,\"enable_lazy_loading\":\"yes\"}','2024-08-09 11:05:57','2024-08-09 11:05:57'),(5,'FollowUsWidget','primary_sidebar','echo-photography',3,'{\"id\":\"FollowUsWidget\",\"items\":[[{\"key\":\"title\",\"value\":\"20K Fans\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"title\",\"value\":\"10K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"title\",\"value\":\"50K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/instagram.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/linkedin.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/pinterest.com\"}],[{\"key\":\"title\",\"value\":\"04K Subscribers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"}]]}','2024-08-09 11:05:57','2024-08-09 11:05:57'),(6,'NewsletterWidget','above_footer_sidebar','echo-photography',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Get the gaming world News & Stories into your inbox\",\"description\":\"\"}','2024-08-09 11:05:57','2024-08-09 11:05:57'),(7,'BlogPostsWidget','custom_sidebar_2','echo-photography',1,'{\"type\":\"recent\",\"style\":\"default-card\",\"shape\":\"square\",\"category_ids\":[3,6],\"title\":\"Top Story\",\"limit\":4}','2024-08-09 11:05:57','2024-08-09 11:05:57'),(8,'BlogPostsWidget','custom_sidebar_2','echo-photography',2,'{\"type\":\"popular\",\"style\":\"orderly-card\",\"shape\":\"square\",\"category_ids\":[1,5,6],\"title\":\"Top Reviews\",\"limit\":3}','2024-08-09 11:05:57','2024-08-09 11:05:57'),(9,'FollowUsWidget','custom_sidebar_2','echo-photography',3,'{\"id\":\"FollowUsWidget\",\"items\":[[{\"key\":\"title\",\"value\":\"20K Fans\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"title\",\"value\":\"10K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"title\",\"value\":\"50K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/instagram.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/linkedin.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/pinterest.com\"}],[{\"key\":\"title\",\"value\":\"04K Subscribers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"}]]}','2024-08-09 11:05:57','2024-08-09 11:05:57'),(10,'NewsletterWidget','custom_sidebar_2','echo-photography',4,'{\"id\":\"NewsletterWidget\",\"title\":\"Newsletter\",\"description\":\"Stay Tuned With Updates\",\"image\":\"main\\/general\\/newsletter-image.png\"}','2024-08-09 11:05:57','2024-08-09 11:05:57'),(11,'BannerAdsWidget','custom_sidebar_2','echo-photography',5,'{\"ad_image\":\"main\\/general\\/ads-banner.png\",\"ad_link\":\"https:\\/\\/google.com\"}','2024-08-09 11:05:57','2024-08-09 11:05:57'),(12,'SocialLinksWidget','footer_sidebar','echo-photography',1,'[]','2024-08-09 11:05:57','2024-08-09 11:05:57'),(13,'ActionButtonsWidget','header_sidebar','echo-photography',1,'{\"id\":\"ActionButtonsWidget\",\"alignment\":\"end\"}','2024-08-09 11:05:57','2024-08-09 11:05:57');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-10  1:05:59
