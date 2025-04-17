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
INSERT INTO `activations` VALUES (1,1,'8eR6xxE2HJiJI4Zut09pRexiU16avN1o',1,'2024-08-09 11:04:32','2024-08-09 11:04:32','2024-08-09 11:04:32');
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
INSERT INTO `announcements` VALUES (1,'Announcement 1','Cyber Monday: Save big on the Creative Cloud All Apps plan for individuals through 2 Dec',0,NULL,NULL,0,1,'2024-08-09 18:04:55',NULL,1,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(2,'Announcement 2','Students and teachers save a massive 71% on Creative Cloud All Apps',0,NULL,NULL,0,1,'2024-08-09 18:04:55',NULL,1,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(3,'Announcement 3','Black Friday and Cyber Monday 2023 Deals for Motion Designers, grab it now!',0,NULL,NULL,0,1,'2024-08-09 18:04:55',NULL,1,'2024-08-09 11:04:55','2024-08-09 11:04:55');
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
INSERT INTO `categories` VALUES (1,'Global Cuisine',0,'Vel ratione autem rerum exercitationem. Illo qui fugit earum doloremque. Sunt ducimus quo magnam omnis autem cupiditate sit rerum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-08-09 11:04:44','2024-08-09 11:04:44'),(2,'Farm-to-Table Dining',0,'Et nisi doloribus illum eveniet iusto et esse. Nesciunt voluptatem cupiditate esse aut. Corporis et quam quos facere.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:04:44','2024-08-09 11:04:44'),(3,'Food Presentation',0,'Neque quia quae fuga eligendi cum nobis magnam. Suscipit fugiat fugit minima dolorum ut. Tenetur vel molestias veniam ipsa iure. Vel cupiditate sit ut quaerat minima quidem accusantium.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:04:44','2024-08-09 11:04:44'),(4,'Healthy Eating',0,'Sint quo sunt itaque esse. Ut aut a illo eum. Ut earum non qui dolor mollitia in laborum maiores.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:04:44','2024-08-09 11:04:44'),(5,'Street Food',0,'Illum et ab dolore est eaque ea aut sed. Et cupiditate sit alias. Delectus reiciendis labore voluptatem perspiciatis qui corrupti. Officia aliquid culpa inventore quos et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:04:44','2024-08-09 11:04:44'),(6,'Artisanal Food',0,'Ducimus consequatur in sit doloribus sit cum aperiam. Quo pariatur est est accusamus. Beatae voluptate quam voluptas asperiores ad exercitationem reiciendis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:04:44','2024-08-09 11:04:44'),(7,'Wine Tasting',0,'Officia et quos voluptas. Iste voluptatem ducimus quam debitis rerum. Aut nostrum qui ut quam quia accusantium ratione. Eligendi aliquid dolores quo nostrum minima necessitatibus in.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:04:44','2024-08-09 11:04:44'),(8,'Cocktail Culture',0,'Eligendi pariatur modi sit minima. Porro id corrupti occaecati. Ad vel alias impedit quia. Odit accusamus reprehenderit suscipit placeat architecto molestiae quia.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:04:44','2024-08-09 11:04:44'),(9,'Plant-Based Cuisine',0,'Delectus tempora vel ea quisquam fugiat quas incidunt. Consequatur aut quaerat vel expedita suscipit. Dolor assumenda assumenda impedit debitis dolores. Quia quae et eligendi porro quasi.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:04:44','2024-08-09 11:04:44'),(10,'Dining Etiquette',0,'Neque dolores qui nesciunt minima. Repellat est fuga distinctio ad inventore quos. Unde qui consectetur deserunt nemo voluptatibus dignissimos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:04:44','2024-08-09 11:04:44');
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
INSERT INTO `contacts` VALUES (1,'Barney Buckridge','amiya01@example.com','410-412-3427','185 Ralph Square\nReicherttown, AR 61193-4802','Doloribus ex possimus quas dolore reiciendis.','Fuga fuga atque iusto voluptatibus. Est recusandae delectus natus dolores sed est tempore. Culpa tempora aut rerum expedita. Molestiae explicabo eligendi debitis dolorum qui. Pariatur dignissimos qui reprehenderit ea rerum magni. Ratione repellendus cumque illo incidunt maxime accusamus. Inventore minus tenetur quo ullam ipsa totam expedita. Ut quia et vel tempore.',NULL,'unread','2024-08-09 11:04:32','2024-08-09 11:04:32'),(2,'Prof. Kay Bauch Jr.','dhermann@example.net','+1 (951) 871-2182','851 Hyatt Glen Suite 698\nPort Aprilmouth, AL 91253-3616','Esse velit rerum dolor sed.','Saepe pariatur inventore sed nemo porro. Velit repellat pariatur quia suscipit assumenda. Eos incidunt quibusdam est fugiat ut omnis voluptas. Et eveniet quo molestiae quo et. Autem et harum fugiat et voluptatem ea ut sed. Placeat voluptatem dignissimos eius neque rem assumenda sint doloremque. Ea fugiat ipsa amet est vitae ullam corrupti. Voluptatem vitae totam accusantium blanditiis omnis modi a.',NULL,'read','2024-08-09 11:04:32','2024-08-09 11:04:32'),(3,'Carson Marquardt','brock.hartmann@example.com','(458) 405-6362','5596 Schumm Ferry\nEast Quinton, TN 57642','Voluptas quo fuga incidunt velit aut.','Nemo occaecati esse nostrum. Quae fuga rerum veritatis quasi. Sunt maiores repudiandae illum ut enim reprehenderit. Fuga et et autem alias commodi harum dolores. Labore assumenda dolores ut doloremque fugit suscipit. Culpa et omnis pariatur qui. Et cumque sunt sequi officiis nesciunt. Atque quia voluptas ut repellat. Animi non modi rerum assumenda et sequi. Rerum numquam nostrum natus nisi fugiat qui. Provident quas et deserunt et rerum optio deserunt temporibus.',NULL,'read','2024-08-09 11:04:32','2024-08-09 11:04:32'),(4,'Prof. Harmony Schulist','plangosh@example.net','+19087882639','4282 Marlee Station\nEstelleland, WI 09884','Quia eveniet placeat velit.','Laborum eos hic officiis qui. Quo amet enim exercitationem adipisci. Quaerat itaque sequi voluptatem iure dolore blanditiis dolorem. Nostrum reiciendis ducimus quo esse et et aliquid. Ullam ea aut consequuntur. Nihil officiis et sint atque et. Occaecati aut delectus veritatis. Voluptatem ut nihil enim error aut. Vel error reprehenderit neque omnis nihil ut asperiores ut. Et aperiam nobis sunt voluptas debitis eos qui.',NULL,'read','2024-08-09 11:04:32','2024-08-09 11:04:32'),(5,'Darren Walsh','anderson.una@example.net','+1 (803) 777-2157','22303 Bridget Cliffs\nCornellview, OH 59322-6826','Qui tempora debitis aut sunt harum et ad.','Et ratione ipsum quod suscipit. Placeat dignissimos aut est beatae et. Et harum hic quod in. Culpa et suscipit dolorem ad ut. Et ut molestiae eum dolorem molestias sed. Et est quae ut cumque ex mollitia. Vero dolor earum architecto quaerat. Fuga omnis recusandae ea omnis adipisci atque voluptate temporibus. Autem eum unde molestiae distinctio. Qui perspiciatis quia exercitationem sit. Cumque ex quis aperiam. Sint sunt qui nihil.',NULL,'unread','2024-08-09 11:04:32','2024-08-09 11:04:32'),(6,'Tessie Purdy','gerlach.maye@example.net','+1-620-362-4993','6818 Tate Crescent\nFritschhaven, CO 66359-0783','Illum in consequatur illo eos.','Error veritatis illum nulla ratione aliquid. Vel dolore quia ipsum rerum ex. Quo praesentium sit ut in. Tenetur quaerat in dolorum nulla dolorem. Mollitia impedit nisi soluta ipsa. Dolores repellendus commodi quo nostrum non eum. Labore quos facere in quis eligendi. Consequatur qui et assumenda quia recusandae aut dicta. Quod consequatur occaecati et possimus iste veniam modi. Nemo id cumque aut beatae et. Occaecati esse aut qui voluptas magni.',NULL,'read','2024-08-09 11:04:32','2024-08-09 11:04:32'),(7,'Francisco Schmitt Jr.','zhills@example.net','+12404661499','4842 Scarlett Highway\nMarianneton, NV 86454-7554','Ducimus ea non alias sed fugiat.','Eveniet voluptas adipisci consequuntur quis. Aut ad reiciendis saepe. Tempora quo aperiam et aut quo. Similique ducimus libero quae et aut magni quia. Dolorem sunt eos suscipit sunt ea. In distinctio quisquam dolorem laudantium deserunt neque. Qui facere consequatur adipisci reprehenderit dolor tenetur similique. Illo ut minima quis ducimus. Consequatur quia vitae voluptatum et expedita sit provident. Quidem perspiciatis aut quis et voluptatibus qui quaerat.',NULL,'read','2024-08-09 11:04:32','2024-08-09 11:04:32'),(8,'Stewart Kautzer','kihn.cassie@example.org','281.992.6486','41898 Heidenreich Shores\nMaritzaview, UT 44969-0983','Dolores autem voluptatum possimus vel.','Ut necessitatibus sit odit sit. Eos earum ex ex ipsam. Dolor consequatur magnam ducimus est reiciendis voluptates. Ut accusamus laudantium fugit aspernatur officia dignissimos. Omnis odit veritatis officia. Sit consequuntur tenetur accusantium dolore corporis rerum sit. Explicabo aperiam veritatis optio id. Sit in dolores vero assumenda.',NULL,'unread','2024-08-09 11:04:32','2024-08-09 11:04:32'),(9,'Haylee Rippin','wolf.hattie@example.net','339-318-7266','2350 Konopelski Haven Suite 966\nKrisberg, IL 53863','Velit ut aut et veniam deleniti ut.','Quia enim harum laborum id. Omnis qui nihil accusamus veritatis sunt rerum. Expedita nulla modi id earum dicta possimus nisi. Est omnis exercitationem minima ut nemo itaque maxime eum. Molestiae aliquid saepe soluta impedit et voluptates voluptatem voluptas. Est quia optio est dolores. Dolore voluptatum explicabo dolorum esse dignissimos officia ut.',NULL,'read','2024-08-09 11:04:32','2024-08-09 11:04:32'),(10,'Bernardo Walker MD','loyal.lubowitz@example.org','1-531-228-6035','11691 Kemmer Tunnel Apt. 300\nMarlonchester, KY 72618','Et nesciunt quo dolor dolor non dolore aut.','Ratione veniam dicta reprehenderit ut sint. Numquam rerum ea voluptatem non. Perspiciatis laudantium maxime sint veritatis et repudiandae. Impedit asperiores quibusdam ipsa ducimus at aut praesentium asperiores. Tempore aut veniam pariatur quos numquam. Magni voluptatum sed dolores amet a enim itaque. Quia tempora tenetur esse dolor adipisci.',NULL,'read','2024-08-09 11:04:32','2024-08-09 11:04:32');
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
INSERT INTO `fob_comments` VALUES (1,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',6,'http://localhost','Jamal Hauck','urban81@bruen.org','https://friendsofbotble.com','This is really helpful, thank you!','approved','30.154.122.197','Opera/9.10 (Windows 98; sl-SI) Presto/2.9.275 Version/10.00','2024-07-15 10:53:41','2024-08-09 11:04:55'),(2,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',15,'http://localhost','Fletcher Senger','pfeffer.beverly@zboncak.com','https://friendsofbotble.com','I found this article to be quite informative.','approved','19.3.47.3','Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 6.0; Trident/4.0)','2024-07-25 10:30:22','2024-08-09 11:04:55'),(3,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',2,'http://localhost','Cristal Kling','ralph.bauch@torphy.com','https://friendsofbotble.com','Wow, I never knew about this before!','approved','6.19.252.153','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2 like Mac OS X) AppleWebKit/535.2 (KHTML, like Gecko) Version/15.0 EdgiOS/91.01084.18 Mobile/15E148 Safari/535.2','2024-08-07 10:06:39','2024-08-09 11:04:55'),(4,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',16,'http://localhost','Van Ebert','qdickinson@kuhic.com','https://friendsofbotble.com','Great job on explaining such a complex topic.','approved','168.57.99.213','Opera/9.61 (Windows CE; sl-SI) Presto/2.9.178 Version/11.00','2024-08-02 17:23:16','2024-08-09 11:04:55'),(5,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',15,'http://localhost','Mrs. Ellen Gerlach DVM','sylvester.hammes@funk.biz','https://friendsofbotble.com','I have a question about the third paragraph.','approved','132.45.47.170','Opera/8.72 (X11; Linux i686; en-US) Presto/2.8.347 Version/12.00','2024-07-12 00:03:13','2024-08-09 11:04:55'),(6,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',19,'http://localhost','Sherwood Beahan','yvonne99@hotmail.com','https://friendsofbotble.com','This article changed my perspective entirely.','approved','110.117.69.192','Mozilla/5.0 (compatible; MSIE 7.0; Windows CE; Trident/3.0)','2024-07-17 00:20:22','2024-08-09 11:04:55'),(7,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',2,'http://localhost','Mrs. Kirstin Howe','wilderman.bertrand@little.com','https://friendsofbotble.com','I appreciate the effort you put into this.','approved','175.251.222.226','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_7 rv:6.0; sl-SI) AppleWebKit/534.7.1 (KHTML, like Gecko) Version/5.0 Safari/534.7.1','2024-07-10 03:31:23','2024-08-09 11:04:55'),(8,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',14,'http://localhost','Elvera Beatty','llockman@bins.com','https://friendsofbotble.com','This is exactly what I was looking for, thank you!','approved','50.58.62.215','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/79.0.4461.33 Safari/532.2 EdgA/79.01042.82','2024-07-17 11:22:10','2024-08-09 11:04:55'),(9,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',2,'http://localhost','Cristal Stiedemann','xward@murazik.com','https://friendsofbotble.com','I disagree with some points mentioned here, though.','approved','5.78.112.56','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4 rv:3.0) Gecko/20181005 Firefox/36.0','2024-08-01 20:55:30','2024-08-09 11:04:55'),(10,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',5,'http://localhost','Magdalena Rath MD','mayert.jaleel@hotmail.com','https://friendsofbotble.com','Could you provide more examples to illustrate your point?','approved','79.128.252.71','Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X; sl-SI) AppleWebKit/532.9.1 (KHTML, like Gecko) Version/4.0.5 Mobile/8B119 Safari/6532.9.1','2024-08-05 22:29:22','2024-08-09 11:04:55'),(11,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',14,'http://localhost','Miss Kendra Berge DVM','efeest@leuschke.com','https://friendsofbotble.com','I wish there were more articles like this out there.','approved','231.91.122.222','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4 rv:6.0; sl-SI) AppleWebKit/532.17.1 (KHTML, like Gecko) Version/5.0.3 Safari/532.17.1','2024-07-25 10:57:51','2024-08-09 11:04:55'),(12,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',8,'http://localhost','Cielo Olson V','gharber@hodkiewicz.com','https://friendsofbotble.com','I\'m bookmarking this for future reference.','approved','194.0.240.144','Mozilla/5.0 (Windows NT 5.2; nl-NL; rv:1.9.1.20) Gecko/20170203 Firefox/37.0','2024-08-04 12:59:42','2024-08-09 11:04:55'),(13,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',12,'http://localhost','Kaela Hamill','xzieme@veum.org','https://friendsofbotble.com','I\'ve shared this with my friends, they loved it!','approved','17.250.87.65','Mozilla/5.0 (iPad; CPU OS 7_0_2 like Mac OS X; sl-SI) AppleWebKit/533.46.5 (KHTML, like Gecko) Version/4.0.5 Mobile/8B111 Safari/6533.46.5','2024-07-11 07:45:08','2024-08-09 11:04:55'),(14,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',6,'http://localhost','Milo Mayer','qschinner@hane.org','https://friendsofbotble.com','This article is a must-read for everyone interested in the topic.','approved','14.11.66.150','Opera/8.47 (X11; Linux x86_64; nl-NL) Presto/2.12.229 Version/11.00','2024-07-12 15:25:56','2024-08-09 11:04:55'),(15,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',9,'http://localhost','Chelsea Bartell','lavada.boehm@corkery.com','https://friendsofbotble.com','Thank you for shedding light on this important issue.','approved','173.97.128.45','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_0 rv:5.0; sl-SI) AppleWebKit/534.15.7 (KHTML, like Gecko) Version/5.1 Safari/534.15.7','2024-08-01 22:48:48','2024-08-09 11:04:55'),(16,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',7,'http://localhost','Tiffany Rempel','zlowe@yahoo.com','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article.','approved','240.91.53.173','Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20240212 Firefox/35.0','2024-07-29 10:19:39','2024-08-09 11:04:55'),(17,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',6,'http://localhost','Ruthie Muller','irwin.zemlak@hotmail.com','https://friendsofbotble.com','I\'m blown away by the insights shared in this article.','approved','184.249.198.86','Mozilla/5.0 (compatible; MSIE 10.0; Windows 98; Win 9x 4.90; Trident/5.0)','2024-08-07 07:40:52','2024-08-09 11:04:55'),(18,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',13,'http://localhost','Katelynn Rice','otorphy@hotmail.com','https://friendsofbotble.com','This article tackles a complex topic with clarity.','approved','29.94.57.247','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7 rv:2.0; en-US) AppleWebKit/532.11.6 (KHTML, like Gecko) Version/4.1 Safari/532.11.6','2024-07-23 07:27:53','2024-08-09 11:04:55'),(19,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',12,'http://localhost','Delaney Hettinger','mable42@leannon.com','https://friendsofbotble.com','I\'m going to reflect on the ideas presented in this article.','approved','213.217.6.238','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 5.01; Trident/4.0)','2024-08-07 00:58:16','2024-08-09 11:04:55'),(20,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',19,'http://localhost','Velma Mayert','paolo.fay@dibbert.com','https://friendsofbotble.com','The author\'s passion for the subject shines through in this article.','approved','193.36.91.229','Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.1; Trident/3.1)','2024-08-06 07:13:13','2024-08-09 11:04:55'),(21,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',9,'http://localhost','Prof. Karli Casper','lankunding@blanda.org','https://friendsofbotble.com','This article challenged my preconceptions in a thought-provoking way.','approved','250.181.33.80','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_3) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/85.0.4365.74 Safari/532.1 Edg/85.01093.29','2024-07-26 11:57:01','2024-08-09 11:04:55'),(22,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',16,'http://localhost','Olin Heller','myron.yundt@howe.com','https://friendsofbotble.com','I\'ve added this article to my reading list, it\'s worth revisiting.','approved','250.23.108.220','Mozilla/5.0 (Windows NT 5.01) AppleWebKit/5312 (KHTML, like Gecko) Chrome/38.0.893.0 Mobile Safari/5312','2024-07-15 17:30:41','2024-08-09 11:04:55'),(23,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',15,'http://localhost','Destiney Ullrich Jr.','stracke.harrison@gmail.com','https://friendsofbotble.com','This article offers practical advice that I can apply in real life.','approved','166.68.111.81','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_0 rv:2.0; nl-NL) AppleWebKit/532.43.3 (KHTML, like Gecko) Version/5.0.5 Safari/532.43.3','2024-07-25 18:09:07','2024-08-09 11:04:55'),(24,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',3,'http://localhost','Hubert Jones','gschmidt@yahoo.com','https://friendsofbotble.com','I\'m going to recommend this article to my study group.','approved','195.251.162.73','Opera/8.89 (Windows NT 5.0; en-US) Presto/2.11.340 Version/12.00','2024-07-31 03:01:51','2024-08-09 11:04:55'),(25,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',12,'http://localhost','Miss Gia Rempel','freddy.conroy@gmail.com','https://friendsofbotble.com','The examples provided really helped me understand the concept better.','approved','180.123.226.217','Opera/9.72 (X11; Linux x86_64; en-US) Presto/2.10.231 Version/12.00','2024-07-10 10:08:29','2024-08-09 11:04:55'),(26,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',7,'http://localhost','Mr. Owen Kovacek MD','berniece30@rogahn.com','https://friendsofbotble.com','I resonate with the ideas presented here.','approved','231.188.80.252','Mozilla/5.0 (compatible; MSIE 9.0; Windows 95; Trident/5.0)','2024-07-30 23:23:27','2024-08-09 11:04:55'),(27,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',1,'http://localhost','Graham Ortiz','madisen76@yahoo.com','https://friendsofbotble.com','This article made me think critically about the topic.','approved','1.227.143.225','Opera/8.66 (Windows NT 5.2; sl-SI) Presto/2.8.238 Version/10.00','2024-07-11 23:52:30','2024-08-09 11:04:55'),(28,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',11,'http://localhost','Dr. Christian Braun V','itzel.veum@mann.info','https://friendsofbotble.com','I\'ll definitely come back to this article for reference.','approved','148.238.64.54','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/533.2 (KHTML, like Gecko) Chrome/92.0.4309.42 Safari/533.2 EdgA/92.01039.16','2024-08-05 02:03:03','2024-08-09 11:04:55'),(29,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',14,'http://localhost','Prof. Ilene VonRueden DVM','leila90@yahoo.com','https://friendsofbotble.com','I\'ve shared this on social media, it\'s too good not to share.','approved','122.113.232.38','Mozilla/5.0 (Windows; U; Windows NT 6.0) AppleWebKit/534.10.7 (KHTML, like Gecko) Version/5.0.5 Safari/534.10.7','2024-07-16 14:56:55','2024-08-09 11:04:55'),(30,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',3,'http://localhost','Dr. Lynn Batz I','horace39@beahan.com','https://friendsofbotble.com','This article presents a balanced view on a controversial topic.','approved','107.62.32.125','Opera/9.71 (X11; Linux i686; nl-NL) Presto/2.11.264 Version/11.00','2024-08-07 02:26:35','2024-08-09 11:04:55'),(31,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',9,'http://localhost','Morris Howe','jadon71@kassulke.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s a gem.','approved','66.208.62.247','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_1) AppleWebKit/5361 (KHTML, like Gecko) Chrome/37.0.883.0 Mobile Safari/5361','2024-07-11 03:51:22','2024-08-09 11:04:55'),(32,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',14,'http://localhost','Charlie Beier','tmacejkovic@kemmer.com','https://friendsofbotble.com','I\'ve been struggling with this, your article helped a lot.','approved','231.183.146.112','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_0 rv:4.0; sl-SI) AppleWebKit/533.18.6 (KHTML, like Gecko) Version/5.1 Safari/533.18.6','2024-07-16 14:55:55','2024-08-09 11:04:55'),(33,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',14,'http://localhost','Percival Koelpin','merle.bartoletti@quigley.com','https://friendsofbotble.com','I\'ve learned something new today, thanks to this article.','approved','128.33.243.246','Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 4.0; Trident/3.0)','2024-07-14 08:14:54','2024-08-09 11:04:55'),(34,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',12,'http://localhost','D\'angelo Ernser DDS','roger39@luettgen.biz','https://friendsofbotble.com','Kudos to the author for a well-researched piece.','approved','10.237.219.59','Mozilla/5.0 (iPhone; CPU iPhone OS 15_1 like Mac OS X) AppleWebKit/535.0 (KHTML, like Gecko) Version/15.0 EdgiOS/98.01126.48 Mobile/15E148 Safari/535.0','2024-07-11 03:44:40','2024-08-09 11:04:55'),(35,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',20,'http://localhost','Eryn Conn','isaac56@abshire.org','https://friendsofbotble.com','I\'m impressed by the depth of knowledge demonstrated here.','approved','245.95.2.225','Mozilla/5.0 (Windows NT 6.0) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/90.0.4608.11 Safari/537.1 Edg/90.01071.14','2024-07-26 11:35:54','2024-08-09 11:04:55'),(36,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',20,'http://localhost','Prof. Ulises Dickinson II','alize55@gmail.com','https://friendsofbotble.com','This article challenged my assumptions in a good way.','approved','83.8.248.172','Opera/9.16 (X11; Linux x86_64; nl-NL) Presto/2.9.270 Version/12.00','2024-07-28 02:03:20','2024-08-09 11:04:55'),(37,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',11,'http://localhost','Rhianna Ritchie','parisian.carlotta@collier.com','https://friendsofbotble.com','I\'ve shared this with my colleagues, it\'s worth discussing.','approved','219.123.73.174','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_2) AppleWebKit/535.0 (KHTML, like Gecko) Chrome/81.0.4325.27 Safari/535.0 Edg/81.01042.13','2024-07-12 19:23:16','2024-08-09 11:04:55'),(38,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',7,'http://localhost','Ms. Zena Mohr MD','dolly.wiza@gmail.com','https://friendsofbotble.com','The information presented here is very valuable.','approved','93.10.4.232','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_3 rv:2.0; nl-NL) AppleWebKit/535.33.6 (KHTML, like Gecko) Version/5.0.5 Safari/535.33.6','2024-08-07 17:49:07','2024-08-09 11:04:55'),(39,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',12,'http://localhost','Dedric Green','daniel.ruben@mosciski.com','https://friendsofbotble.com','You have a talent for explaining complex topics clearly.','approved','254.214.151.207','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.1)','2024-07-23 13:57:34','2024-08-09 11:04:55'),(40,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',16,'http://localhost','Natalia Nitzsche','yost.roy@yahoo.com','https://friendsofbotble.com','I\'m inspired to learn more about this after reading your article.','approved','1.240.77.169','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_8 rv:2.0; en-US) AppleWebKit/533.39.4 (KHTML, like Gecko) Version/4.0 Safari/533.39.4','2024-07-26 19:04:29','2024-08-09 11:04:55'),(41,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',1,'http://localhost','Miss Elena Mertz IV','fae.cassin@hotmail.com','https://friendsofbotble.com','This article deserves wider recognition.','approved','165.70.67.25','Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20190911 Firefox/35.0','2024-07-21 22:10:16','2024-08-09 11:04:55'),(42,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',7,'http://localhost','Angelica Hessel','zion.stanton@turner.biz','https://friendsofbotble.com','I\'m grateful for the insights shared in this piece.','approved','68.57.158.117','Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 4.0; Trident/4.1)','2024-07-12 03:59:02','2024-08-09 11:04:55'),(43,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',14,'http://localhost','Prof. Chelsey Bradtke MD','abe31@hotmail.com','https://friendsofbotble.com','The author presents a balanced view on a controversial topic.','approved','112.50.237.31','Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5351 (KHTML, like Gecko) Chrome/36.0.879.0 Mobile Safari/5351','2024-07-16 04:48:03','2024-08-09 11:04:55'),(44,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',10,'http://localhost','Hudson Boyer','vmacejkovic@hotmail.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s','approved','180.226.7.8','Opera/8.29 (X11; Linux i686; nl-NL) Presto/2.9.330 Version/11.00','2024-08-03 15:21:15','2024-08-09 11:04:55'),(45,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',4,'http://localhost','Kamille Anderson','abelardo08@keebler.biz','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article. It\'s incredibly insightful and provides a comprehensive overview of the subject matter. I appreciate the effort put into researching and writing this piece. It\'s truly eye-opening and has given me a new perspective. Thank you for sharing your knowledge with us!','approved','57.215.12.213','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_2 rv:3.0) Gecko/20240326 Firefox/36.0','2024-07-13 10:56:12','2024-08-09 11:04:55'),(46,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',2,'http://localhost','Kenyatta Rowe','roselyn.hoppe@wehner.biz','https://friendsofbotble.com','This article is a masterpiece! It dives deep into the topic and offers valuable insights that are both thought-provoking and enlightening. The author\'s expertise is evident throughout, making it a compelling read from start to finish. I\'ll definitely be coming back to this for reference in the future.','approved','163.10.112.100','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_8 rv:6.0) Gecko/20230219 Firefox/35.0','2024-08-01 16:28:02','2024-08-09 11:04:55'),(47,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',13,'http://localhost','Gussie Howell','ferry.rolando@hotmail.com','https://friendsofbotble.com','I\'m amazed by the depth of analysis in this article. It covers a wide range of aspects related to the topic, providing a comprehensive understanding. The clarity of explanation is commendable, making complex concepts easy to grasp. This article has enriched my understanding and sparked further curiosity. Kudos to the author!','approved','44.226.159.254','Opera/9.63 (Windows 98; Win 9x 4.90; en-US) Presto/2.12.355 Version/12.00','2024-07-11 08:18:15','2024-08-09 11:04:55');
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
INSERT INTO `galleries` VALUES (1,'Perfect','Qui at minima sed temporibus quasi molestiae. Sunt ullam illo nihil qui accusantium beatae. Quisquam earum voluptatem id dolores.',0,0,'main/news/1.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(2,'New Day','Libero est animi ratione fugit. Sit expedita dolore sit illum velit rerum atque. Vel dolore natus exercitationem amet assumenda.',0,0,'main/news/2.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(3,'Happy Day','Explicabo veniam asperiores nam est. Ut rerum consequatur voluptatum unde voluptas. Aperiam facere qui sit iste omnis.',0,0,'main/news/3.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(4,'Nature','Voluptatem labore adipisci sint iusto dignissimos. Et debitis cupiditate iste eveniet exercitationem.',0,0,'main/news/4.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(5,'Morning','Aut nihil quas perferendis enim et. Incidunt quia occaecati at eos deleniti architecto. Eum iure iure alias sit sint. Et exercitationem et qui omnis.',0,0,'main/news/5.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(6,'Sunset','Accusantium eos deleniti nisi fugit. Ullam aut ab fugiat nulla et et. Voluptatem quis pariatur quod a delectus corporis dolore.',0,0,'main/news/6.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(7,'Ocean Views','Ea repellendus quia voluptas in. Veritatis iusto rem quo quaerat. Id autem voluptatem aut quae. A aut molestias nemo beatae quia et sit.',0,0,'main/news/7.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(8,'Adventure Time','Unde qui quis sunt molestiae. Est quia et consequatur veniam. Est accusamus sint eos voluptatem.',0,0,'main/news/8.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(9,'City Lights','In eaque voluptatem magni maxime nam eum quo. Reiciendis sint sed adipisci qui eveniet ut. Ut blanditiis ut officiis quia sequi.',0,0,'main/news/9.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(10,'Dreamscape','Sint blanditiis et dolores non delectus. Pariatur quo deleniti et optio doloremque voluptas accusantium.',0,0,'main/news/10.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(11,'Enchanted Forest','Voluptates voluptatem praesentium ab eos. Consequatur cupiditate dignissimos perferendis nobis.',0,0,'main/news/11.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(12,'Golden Hour','Id et quaerat quidem expedita. Deserunt rerum et suscipit. Odit est voluptas autem.',0,0,'main/news/12.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(13,'Serenity','Nesciunt dolores distinctio temporibus maxime. Enim corporis nulla voluptas. Assumenda laboriosam ullam reiciendis.',0,0,'main/news/13.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(14,'Eternal Beauty','Repellendus eligendi ut sunt enim. Hic modi tenetur ut et ullam error. Est ut rerum commodi. Ut qui velit fuga.',0,0,'main/news/14.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(15,'Moonlight Magic','Voluptas sit aut reiciendis nihil porro eum autem. Maxime et ex aperiam vero porro veritatis iste.',0,0,'main/news/15.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(16,'Starry Night','Eveniet maxime quaerat voluptas dolores hic. Dignissimos quae ut eum vel. Nihil consequatur exercitationem nihil.',0,0,'main/news/16.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(17,'Hidden Gems','Dolores eum quibusdam animi inventore explicabo ipsa. Iure molestiae et ipsam et assumenda ex ratione. Corrupti nam nemo accusamus.',0,0,'main/news/17.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(18,'Tranquil Waters','Rerum aut impedit est repellendus consequatur est vel. Nostrum deserunt iure deleniti omnis. Est et ratione et.',0,0,'main/news/18.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(19,'Urban Escape','Temporibus quidem voluptas voluptatibus. Voluptas voluptatem voluptatem ea ut ut. Asperiores sed quia quam aliquam.',0,0,'main/news/19.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(20,'Twilight Zone','Quibusdam sit cupiditate sit est. Quia sunt alias molestiae quibusdam. Dolore eius nisi aut quia ut consectetur adipisci tempora.',0,0,'main/news/20.jpg',1,'published','2024-08-09 11:04:53','2024-08-09 11:04:53');
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
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(2,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(3,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(4,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(5,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(6,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(7,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',7,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(8,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',8,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(9,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',9,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(10,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',10,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(11,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',11,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(12,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',12,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(13,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',13,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(14,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',14,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(15,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',15,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(16,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',16,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(17,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',17,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(18,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',18,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(19,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',19,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53'),(20,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',20,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:04:53','2024-08-09 11:04:53');
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
INSERT INTO `language_meta` VALUES (1,'en_US','8cc88fc9d2526dc6f25c20428c2d5de8',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','6d88ded90502bfeb43bde8708408853d',1,'Botble\\Menu\\Models\\Menu');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'about-1','about-1',2,'image/png',8467,'main/general/about-1.png','[]','2024-08-09 11:04:29','2024-08-09 11:04:29',NULL,'public'),(2,0,'about-2','about-2',2,'image/png',8467,'main/general/about-2.png','[]','2024-08-09 11:04:29','2024-08-09 11:04:29',NULL,'public'),(3,0,'about-video-1','about-video-1',2,'image/png',20777,'main/general/about-video-1.png','[]','2024-08-09 11:04:29','2024-08-09 11:04:29',NULL,'public'),(4,0,'ads-banner','ads-banner',2,'image/png',75705,'main/general/ads-banner.png','[]','2024-08-09 11:04:30','2024-08-09 11:04:30',NULL,'public'),(5,0,'app-downloads','app-downloads',2,'image/png',7092,'main/general/app-downloads.png','[]','2024-08-09 11:04:30','2024-08-09 11:04:30',NULL,'public'),(6,0,'blog-3','blog-3',2,'image/png',5919,'main/general/blog-3.png','[]','2024-08-09 11:04:30','2024-08-09 11:04:30',NULL,'public'),(7,0,'blog-4','blog-4',2,'image/png',5919,'main/general/blog-4.png','[]','2024-08-09 11:04:30','2024-08-09 11:04:30',NULL,'public'),(8,0,'blog-5','blog-5',2,'image/png',8614,'main/general/blog-5.png','[]','2024-08-09 11:04:30','2024-08-09 11:04:30',NULL,'public'),(9,0,'blog-shape-image','blog-shape-image',2,'image/png',1182,'main/general/blog-shape-image.png','[]','2024-08-09 11:04:30','2024-08-09 11:04:30',NULL,'public'),(10,0,'favicon','favicon',2,'image/png',693,'main/general/favicon.png','[]','2024-08-09 11:04:30','2024-08-09 11:04:30',NULL,'public'),(11,0,'logo-dark','logo-dark',2,'image/png',2098,'main/general/logo-dark.png','[]','2024-08-09 11:04:30','2024-08-09 11:04:30',NULL,'public'),(12,0,'logo','logo',2,'image/png',2593,'main/general/logo.png','[]','2024-08-09 11:04:31','2024-08-09 11:04:31',NULL,'public'),(13,0,'newsletter-image','newsletter-image',2,'image/png',22929,'main/general/newsletter-image.png','[]','2024-08-09 11:04:31','2024-08-09 11:04:31',NULL,'public'),(14,0,'newsletter-popup','newsletter-popup',2,'image/png',24175,'main/general/newsletter-popup.png','[]','2024-08-09 11:04:31','2024-08-09 11:04:31',NULL,'public'),(15,0,'signature','signature',2,'image/png',2197,'main/general/signature.png','[]','2024-08-09 11:04:31','2024-08-09 11:04:31',NULL,'public'),(16,0,'1','1',3,'image/png',9803,'main/members/1.png','[]','2024-08-09 11:04:32','2024-08-09 11:04:32',NULL,'public'),(17,0,'2','2',3,'image/png',9803,'main/members/2.png','[]','2024-08-09 11:04:32','2024-08-09 11:04:32',NULL,'public'),(18,0,'3','3',3,'image/png',9803,'main/members/3.png','[]','2024-08-09 11:04:32','2024-08-09 11:04:32',NULL,'public'),(19,0,'4','4',3,'image/png',9803,'main/members/4.png','[]','2024-08-09 11:04:32','2024-08-09 11:04:32',NULL,'public'),(20,0,'5','5',3,'image/png',9803,'main/members/5.png','[]','2024-08-09 11:04:32','2024-08-09 11:04:32',NULL,'public'),(21,0,'6','6',3,'image/png',9803,'main/members/6.png','[]','2024-08-09 11:04:32','2024-08-09 11:04:32',NULL,'public'),(22,0,'7','7',3,'image/png',9803,'main/members/7.png','[]','2024-08-09 11:04:33','2024-08-09 11:04:33',NULL,'public'),(23,0,'8','8',3,'image/png',9803,'main/members/8.png','[]','2024-08-09 11:04:33','2024-08-09 11:04:33',NULL,'public'),(24,0,'1','1',4,'image/jpeg',33268,'main/news/1.jpg','[]','2024-08-09 11:04:36','2024-08-09 11:04:36',NULL,'public'),(25,0,'10','10',4,'image/jpeg',33268,'main/news/10.jpg','[]','2024-08-09 11:04:36','2024-08-09 11:04:36',NULL,'public'),(26,0,'11','11',4,'image/jpeg',33268,'main/news/11.jpg','[]','2024-08-09 11:04:37','2024-08-09 11:04:37',NULL,'public'),(27,0,'12','12',4,'image/jpeg',33268,'main/news/12.jpg','[]','2024-08-09 11:04:37','2024-08-09 11:04:37',NULL,'public'),(28,0,'13','13',4,'image/jpeg',33268,'main/news/13.jpg','[]','2024-08-09 11:04:37','2024-08-09 11:04:37',NULL,'public'),(29,0,'14','14',4,'image/jpeg',33268,'main/news/14.jpg','[]','2024-08-09 11:04:38','2024-08-09 11:04:38',NULL,'public'),(30,0,'15','15',4,'image/jpeg',33268,'main/news/15.jpg','[]','2024-08-09 11:04:38','2024-08-09 11:04:38',NULL,'public'),(31,0,'16','16',4,'image/jpeg',33268,'main/news/16.jpg','[]','2024-08-09 11:04:39','2024-08-09 11:04:39',NULL,'public'),(32,0,'17','17',4,'image/jpeg',33268,'main/news/17.jpg','[]','2024-08-09 11:04:39','2024-08-09 11:04:39',NULL,'public'),(33,0,'18','18',4,'image/jpeg',33268,'main/news/18.jpg','[]','2024-08-09 11:04:40','2024-08-09 11:04:40',NULL,'public'),(34,0,'19','19',4,'image/jpeg',33268,'main/news/19.jpg','[]','2024-08-09 11:04:40','2024-08-09 11:04:40',NULL,'public'),(35,0,'2','2',4,'image/jpeg',33268,'main/news/2.jpg','[]','2024-08-09 11:04:40','2024-08-09 11:04:40',NULL,'public'),(36,0,'20','20',4,'image/jpeg',33268,'main/news/20.jpg','[]','2024-08-09 11:04:41','2024-08-09 11:04:41',NULL,'public'),(37,0,'3','3',4,'image/jpeg',33268,'main/news/3.jpg','[]','2024-08-09 11:04:41','2024-08-09 11:04:41',NULL,'public'),(38,0,'4','4',4,'image/jpeg',33268,'main/news/4.jpg','[]','2024-08-09 11:04:42','2024-08-09 11:04:42',NULL,'public'),(39,0,'5','5',4,'image/jpeg',33268,'main/news/5.jpg','[]','2024-08-09 11:04:42','2024-08-09 11:04:42',NULL,'public'),(40,0,'6','6',4,'image/jpeg',33268,'main/news/6.jpg','[]','2024-08-09 11:04:42','2024-08-09 11:04:42',NULL,'public'),(41,0,'7','7',4,'image/jpeg',33268,'main/news/7.jpg','[]','2024-08-09 11:04:43','2024-08-09 11:04:43',NULL,'public'),(42,0,'8','8',4,'image/jpeg',33268,'main/news/8.jpg','[]','2024-08-09 11:04:43','2024-08-09 11:04:43',NULL,'public'),(43,0,'9','9',4,'image/jpeg',33268,'main/news/9.jpg','[]','2024-08-09 11:04:44','2024-08-09 11:04:44',NULL,'public'),(44,0,'audio','audio',5,'audio/mpeg',239584,'main/audio/audio.mp3','[]','2024-08-09 11:04:44','2024-08-09 11:04:44',NULL,'public'),(45,0,'1','1',7,'image/jpeg',33268,'food/news/1.jpg','[]','2024-08-09 11:04:44','2024-08-09 11:04:44',NULL,'public'),(46,0,'10','10',7,'image/jpeg',33268,'food/news/10.jpg','[]','2024-08-09 11:04:45','2024-08-09 11:04:45',NULL,'public'),(47,0,'11','11',7,'image/jpeg',33268,'food/news/11.jpg','[]','2024-08-09 11:04:45','2024-08-09 11:04:45',NULL,'public'),(48,0,'12','12',7,'image/jpeg',33268,'food/news/12.jpg','[]','2024-08-09 11:04:46','2024-08-09 11:04:46',NULL,'public'),(49,0,'13','13',7,'image/jpeg',33268,'food/news/13.jpg','[]','2024-08-09 11:04:46','2024-08-09 11:04:46',NULL,'public'),(50,0,'14','14',7,'image/jpeg',33268,'food/news/14.jpg','[]','2024-08-09 11:04:46','2024-08-09 11:04:46',NULL,'public'),(51,0,'15','15',7,'image/jpeg',33268,'food/news/15.jpg','[]','2024-08-09 11:04:47','2024-08-09 11:04:47',NULL,'public'),(52,0,'16','16',7,'image/jpeg',33268,'food/news/16.jpg','[]','2024-08-09 11:04:47','2024-08-09 11:04:47',NULL,'public'),(53,0,'17','17',7,'image/jpeg',33268,'food/news/17.jpg','[]','2024-08-09 11:04:48','2024-08-09 11:04:48',NULL,'public'),(54,0,'18','18',7,'image/jpeg',33268,'food/news/18.jpg','[]','2024-08-09 11:04:48','2024-08-09 11:04:48',NULL,'public'),(55,0,'19','19',7,'image/jpeg',33268,'food/news/19.jpg','[]','2024-08-09 11:04:49','2024-08-09 11:04:49',NULL,'public'),(56,0,'2','2',7,'image/jpeg',33268,'food/news/2.jpg','[]','2024-08-09 11:04:49','2024-08-09 11:04:49',NULL,'public'),(57,0,'20','20',7,'image/jpeg',33268,'food/news/20.jpg','[]','2024-08-09 11:04:50','2024-08-09 11:04:50',NULL,'public'),(58,0,'3','3',7,'image/jpeg',33268,'food/news/3.jpg','[]','2024-08-09 11:04:50','2024-08-09 11:04:50',NULL,'public'),(59,0,'4','4',7,'image/jpeg',33268,'food/news/4.jpg','[]','2024-08-09 11:04:50','2024-08-09 11:04:50',NULL,'public'),(60,0,'5','5',7,'image/jpeg',33268,'food/news/5.jpg','[]','2024-08-09 11:04:51','2024-08-09 11:04:51',NULL,'public'),(61,0,'6','6',7,'image/jpeg',33268,'food/news/6.jpg','[]','2024-08-09 11:04:51','2024-08-09 11:04:51',NULL,'public'),(62,0,'7','7',7,'image/jpeg',33268,'food/news/7.jpg','[]','2024-08-09 11:04:52','2024-08-09 11:04:52',NULL,'public'),(63,0,'8','8',7,'image/jpeg',33268,'food/news/8.jpg','[]','2024-08-09 11:04:52','2024-08-09 11:04:52',NULL,'public'),(64,0,'9','9',7,'image/jpeg',33268,'food/news/9.jpg','[]','2024-08-09 11:04:53','2024-08-09 11:04:53',NULL,'public'),(65,0,'follow-us-bg','follow-us-bg',8,'image/png',28118,'food/backgrounds/follow-us-bg.png','[]','2024-08-09 11:04:53','2024-08-09 11:04:53',NULL,'public'),(66,0,'favicon','favicon',9,'image/png',1949,'food/general/favicon.png','[]','2024-08-09 11:04:54','2024-08-09 11:04:54',NULL,'public'),(67,0,'logo-dark','logo-dark',9,'image/png',2073,'food/general/logo-dark.png','[]','2024-08-09 11:04:54','2024-08-09 11:04:54',NULL,'public'),(68,0,'logo','logo',9,'image/png',2552,'food/general/logo.png','[]','2024-08-09 11:04:54','2024-08-09 11:04:54',NULL,'public'),(69,0,'breadcrumb','breadcrumb',10,'image/png',109184,'main/backgrounds/breadcrumb.png','[]','2024-08-09 11:04:54','2024-08-09 11:04:54',NULL,'public'),(70,0,'newsletter-bg','newsletter-bg',10,'image/png',15427,'main/backgrounds/newsletter-bg.png','[]','2024-08-09 11:04:54','2024-08-09 11:04:54',NULL,'public'),(71,0,'1','1',11,'image/png',1455,'main/blog-categories/1.png','[]','2024-08-09 11:04:55','2024-08-09 11:04:55',NULL,'public'),(72,0,'2','2',11,'image/png',1455,'main/blog-categories/2.png','[]','2024-08-09 11:04:55','2024-08-09 11:04:55',NULL,'public'),(73,0,'3','3',11,'image/png',1455,'main/blog-categories/3.png','[]','2024-08-09 11:04:55','2024-08-09 11:04:55',NULL,'public'),(74,0,'4','4',11,'image/png',1455,'main/blog-categories/4.png','[]','2024-08-09 11:04:55','2024-08-09 11:04:55',NULL,'public'),(75,0,'5','5',11,'image/png',1455,'main/blog-categories/5.png','[]','2024-08-09 11:04:55','2024-08-09 11:04:55',NULL,'public'),(76,0,'breaking-news-icon','breaking-news-icon',12,'image/png',1133,'main/icons/breaking-news-icon.png','[]','2024-08-09 11:04:55','2024-08-09 11:04:55',NULL,'public');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-08-09 11:04:29','2024-08-09 11:04:29',NULL),(2,0,'general',NULL,'general',1,'2024-08-09 11:04:29','2024-08-09 11:04:29',NULL),(3,0,'members',NULL,'members',1,'2024-08-09 11:04:32','2024-08-09 11:04:32',NULL),(4,0,'news',NULL,'news',1,'2024-08-09 11:04:35','2024-08-09 11:04:35',NULL),(5,0,'audio',NULL,'audio',1,'2024-08-09 11:04:44','2024-08-09 11:04:44',NULL),(6,0,'food',NULL,'food',0,'2024-08-09 11:04:44','2024-08-09 11:04:44',NULL),(7,0,'news',NULL,'news',6,'2024-08-09 11:04:44','2024-08-09 11:04:44',NULL),(8,0,'backgrounds',NULL,'backgrounds',6,'2024-08-09 11:04:53','2024-08-09 11:04:53',NULL),(9,0,'general',NULL,'general',6,'2024-08-09 11:04:54','2024-08-09 11:04:54',NULL),(10,0,'backgrounds',NULL,'backgrounds',1,'2024-08-09 11:04:54','2024-08-09 11:04:54',NULL),(11,0,'blog-categories',NULL,'blog-categories',1,'2024-08-09 11:04:55','2024-08-09 11:04:55',NULL),(12,0,'icons',NULL,'icons',1,'2024-08-09 11:04:55','2024-08-09 11:04:55',NULL);
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
INSERT INTO `members` VALUES (1,'John','Smith','Alice quite jumped; but she.',NULL,'member@archielite.com','$2y$12$EebcOGs9W1iV0.z0IQvO2uDvyO6atthKIS.4Ts9nGfzN9PEkNjE6.',16,'1986-11-15','+1 (763) 795-2154','2024-08-09 18:04:33',NULL,NULL,'2024-08-09 11:04:33','2024-08-09 11:04:33','published'),(2,'Rosamond','Hane','Hi, I’m Rosamond Hane, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'lwaters@smitham.org','$2y$12$zThIrDVDwZQJu28dAZSA0.zl/YZe9MQ3r9bXgQzDkEbAO1w7N9dym',17,'1972-05-12','1-228-414-0195','2024-08-09 18:04:33',NULL,NULL,'2024-08-09 11:04:33','2024-08-09 11:04:33','published'),(3,'Arvel','Lebsack','Hi, I’m Arvel Lebsack, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'hkovacek@hotmail.com','$2y$12$/8EunoCsuxxqwxnaixq6a.P/GcH5gOF3xmNwE1cXFZg.OLeWRGnuW',18,'2012-02-07','1-743-472-4889','2024-08-09 18:04:33',NULL,NULL,'2024-08-09 11:04:34','2024-08-09 11:04:34','published'),(4,'Robbie','Hudson','Hi, I’m Robbie Hudson, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'qbrown@hotmail.com','$2y$12$bX/KmUuvvjghgjuO2ByIGuj.hV30C4oMHXAGrNQqjmQgK50KEdCdS',19,'2012-12-03','909.520.5484','2024-08-09 18:04:33',NULL,NULL,'2024-08-09 11:04:34','2024-08-09 11:04:34','published'),(5,'Jabari','Carroll','Hi, I’m Jabari Carroll, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'burdette.abshire@braun.com','$2y$12$ID/Y0SKWSIst83QKEn03reY0zOTqvj/O3azxJBVRzvNA35c40U..i',20,'1970-01-31','(830) 776-3264','2024-08-09 18:04:33',NULL,NULL,'2024-08-09 11:04:34','2024-08-09 11:04:34','published'),(6,'Darion','Lind','Hi, I’m Darion Lind, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'ibeatty@hotmail.com','$2y$12$Aja82XZ.6tmeH1eg1ViaGelqAtlsj9nJbcwOIgZtl4MGHJKBIriJi',21,'2022-09-20','603.675.4104','2024-08-09 18:04:33',NULL,NULL,'2024-08-09 11:04:35','2024-08-09 11:04:35','published'),(7,'Fern','Dickens','Hi, I’m Fern Dickens, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'magnolia61@daugherty.com','$2y$12$4cr8rf.AfJTGZRNRmz/BC.fNK7VeklXDm6qdan.C5imMXL5YEVsf6',22,'2014-10-04','+1.872.539.2970','2024-08-09 18:04:33',NULL,NULL,'2024-08-09 11:04:35','2024-08-09 11:04:35','published'),(8,'Ardith','Hilpert','Hi, I’m Ardith Hilpert, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'molly73@gmail.com','$2y$12$lq1yVYXsTjEKQ4fOmGqbBOwxNwmudJmEP4nmIie.riGttoelYKkUe',23,'1987-03-06','541.844.3089','2024-08-09 18:04:33',NULL,NULL,'2024-08-09 11:04:35','2024-08-09 11:04:35','published');
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-08-09 11:04:55','2024-08-09 11:04:55');
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
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(2,1,1,NULL,NULL,'https://echo-sports.archielite.com',NULL,0,'Home Sports',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(3,1,1,NULL,NULL,'https://echo-travel.archielite.com',NULL,0,'Home Travel',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(4,1,1,NULL,NULL,'https://echo-ai.archielite.com',NULL,0,'Home AI',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(5,1,1,NULL,NULL,'https://echo-politics.archielite.com',NULL,0,'Home Politics',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(6,1,1,NULL,NULL,'https://echo-food.archielite.com',NULL,0,'Home Food',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(7,1,1,NULL,NULL,'https://echo-photography.archielite.com',NULL,0,'Home Photography',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(8,1,1,NULL,NULL,'https://echo.archielite.com',NULL,0,'Home News',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(9,1,1,NULL,NULL,'https://echo-fashion.archielite.com',NULL,0,'Home Fashion',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(10,1,1,NULL,NULL,'https://echo-technology.archielite.com',NULL,0,'Home Technology',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(11,1,1,NULL,NULL,'https://echo-gaming.archielite.com',NULL,0,'Home Gaming',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(12,1,0,NULL,NULL,'/',NULL,0,'Pages',NULL,'_self',1,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(13,1,12,NULL,NULL,'/about-us',NULL,0,'About',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(14,1,12,NULL,NULL,'/author/smith',NULL,0,'Author',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(15,1,12,NULL,NULL,'/team',NULL,0,'Team',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(16,1,12,NULL,NULL,'/error-page',NULL,0,'Error Page',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(17,1,0,NULL,NULL,'/blog',NULL,0,'Blog',NULL,'_self',1,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(18,1,17,NULL,NULL,'/blog?style=card',NULL,0,'Blog Card',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(19,1,17,NULL,NULL,'/blog?style=list',NULL,0,'Blog List',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(20,1,17,NULL,NULL,'/blog?style=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(21,1,17,NULL,NULL,'/blog?style=mixed',NULL,0,'Blog Mixed',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(22,1,0,1,'Botble\\Blog\\Models\\Post','/blog/exploring-global-cuisine-a-culinary-journey',NULL,0,'Post',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55'),(23,1,0,NULL,NULL,'contact',NULL,0,'Contact',NULL,'_self',0,'2024-08-09 11:04:55','2024-08-09 11:04:55');
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
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-08-09 11:04:55','2024-08-09 11:04:55');
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
INSERT INTO `meta_boxes` VALUES (1,'title','[\"Chef Editor\"]',1,'Botble\\Member\\Models\\Member','2024-08-09 11:04:33','2024-08-09 11:04:33'),(2,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',1,'Botble\\Member\\Models\\Member','2024-08-09 11:04:33','2024-08-09 11:04:33'),(3,'title','[\"Chef Marketing Officer\"]',2,'Botble\\Member\\Models\\Member','2024-08-09 11:04:33','2024-08-09 11:04:33'),(4,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',2,'Botble\\Member\\Models\\Member','2024-08-09 11:04:33','2024-08-09 11:04:33'),(5,'title','[\"Chef Marketing Officer\"]',3,'Botble\\Member\\Models\\Member','2024-08-09 11:04:34','2024-08-09 11:04:34'),(6,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',3,'Botble\\Member\\Models\\Member','2024-08-09 11:04:34','2024-08-09 11:04:34'),(7,'title','[\"Marketing Director\"]',4,'Botble\\Member\\Models\\Member','2024-08-09 11:04:34','2024-08-09 11:04:34'),(8,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',4,'Botble\\Member\\Models\\Member','2024-08-09 11:04:34','2024-08-09 11:04:34'),(9,'title','[\"Chef Marketing Officer\"]',5,'Botble\\Member\\Models\\Member','2024-08-09 11:04:34','2024-08-09 11:04:34'),(10,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',5,'Botble\\Member\\Models\\Member','2024-08-09 11:04:34','2024-08-09 11:04:34'),(11,'title','[\"Marketing Director\"]',6,'Botble\\Member\\Models\\Member','2024-08-09 11:04:35','2024-08-09 11:04:35'),(12,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',6,'Botble\\Member\\Models\\Member','2024-08-09 11:04:35','2024-08-09 11:04:35'),(13,'title','[\"Creative Director\"]',7,'Botble\\Member\\Models\\Member','2024-08-09 11:04:35','2024-08-09 11:04:35'),(14,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',7,'Botble\\Member\\Models\\Member','2024-08-09 11:04:35','2024-08-09 11:04:35'),(15,'title','[\"Creative Director\"]',8,'Botble\\Member\\Models\\Member','2024-08-09 11:04:35','2024-08-09 11:04:35'),(16,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',8,'Botble\\Member\\Models\\Member','2024-08-09 11:04:35','2024-08-09 11:04:35'),(17,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',2,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(18,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',3,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(19,'audio','[\"main\\/audio\\/audio.mp3\"]',4,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(20,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',5,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(21,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',6,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(22,'audio','[\"main\\/audio\\/audio.mp3\"]',7,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(23,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',8,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(24,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',9,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(25,'audio','[\"main\\/audio\\/audio.mp3\"]',10,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(26,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',11,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(27,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',12,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(28,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',14,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(29,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',15,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(30,'audio','[\"main\\/audio\\/audio.mp3\"]',16,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(31,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',17,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(32,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',18,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(33,'audio','[\"main\\/audio\\/audio.mp3\"]',19,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53'),(34,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',20,'Botble\\Blog\\Models\\Post','2024-08-09 11:04:53','2024-08-09 11:04:53');
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
INSERT INTO `pages` VALUES (1,'Homepage','<div>[blog-posts style=\"style-7\" limit=\"6\" text_color=\"transparent\" background_color=\"transparent\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-10\" limit=\"1\" text_color=\"transparent\" background_color=\"transparent\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-6\" category_ids=\"3,6,7\" title=\"Our Newest Recipes\" limit=\"6\" title_align=\"center\" text_color=\"transparent\" background_color=\"transparent\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-4\" title=\"Food Reviews\" limit=\"5\" title_align=\"start\" text_color=\"transparent\" background_color=\"transparent\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-6\" category_ids=\"2,4,6\" title=\"Perfect For Your Home\" limit=\"3\" title_align=\"center\" text_color=\"transparent\" background_color=\"transparent\"][/blog-posts]</div><div>[newsletter title=\"What’s More Echo Food Blog\" subtitle=\"Our best tips for eating thoughtfully and living joyfully, right to your inbox.\" button_label=\"Subscribe\" text_color=\"rgb(255, 255, 255)\" background_color=\"rgb(0, 56, 17)\"][/newsletter]</div><div>[follow-us title=\"Join Our Community\" subtitle=\"Follow us @echo_food\" text_color=\"#181823\" background_color=\"transparent\" background_image=\"food/backgrounds/follow-us-bg.png\" quantity=\"6\" title_1=\"Facebook\" icon_1=\"ti ti-brand-facebook\" url_1=\"/facebook\" title_2=\"Twitter\" icon_2=\"ti ti-brand-x\" title_3=\"Youtube\" icon_3=\"ti ti-brand-youtube\" url_3=\"/\" title_4=\"Linkedin\" icon_4=\"ti ti-brand-linkedin\" url_4=\"https://www.linkedin.com/\" title_5=\"Instagram\" icon_5=\"ti ti-brand-instagram\" url_5=\"https://www.instagram.com/\" title_6=\"Pinterest\" icon_6=\"ti ti-brand-pinterest\" url_6=\"https://www.pinterest.com/\"][/follow-us]</div>',1,NULL,'homepage',NULL,'published','2024-08-09 11:04:53','2024-08-09 11:04:54'),(2,'About us','<div>[about-us title=\"Know our Publication Media & Vision.\" subtitle=\"Bring To The Table Win-Win Survival Strategies To Ensure Proactive Domination. At The End Of The Day Going.\" description=\"Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the over holistic world view of disruptive innovation via workplace diversity and Bring to the table win-win survival strategies to ensure proactive fin domination. At the end of the day, going forward, a new normal.\" staff_name=\"Raihawly Williamson\" staff_description=\"CEO, Echo Publishing Inc.\" staff_signature=\"main/general/signature.png\" first_image=\"main/general/about-1.png\" second_image=\"main/general/about-2.png\"][/about-us]</div><div>[intro-video image=\"main/general/about-video-1.png\" video_url=\"https://www.youtube.com/watch?v=Y1t6rjWYNro\" play_icon=\"ti ti-player-play-filled\"][/intro-video]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(3,'Contact','<div>[contact-form title=\"General Customer Care & Technical Support\" description=\"We’re here to assist you with any questions or technical issues you may have. Please fill out the form below, and our dedicated team will respond promptly to ensure you have a seamless experience with us.\" button_label=\"Send Message\" button_icon=\"ti ti-arrow-right\" quantity=\"3\" title_1=\"Location\" description_1=\"The Business Centre132, New York 12401. United States\" icon_1=\"ti ti-map-pin\" url_1=\"\" open_in_new_tab_1=\"yes\" title_2=\"Email Address\" description_2=\"info@yourmail.com\" icon_2=\"ti ti-mail\" url_2=\"mailto:info@yourmail.com\" open_in_new_tab_2=\"yes\" title_3=\"Phone\" description_3=\"(00) 123 456 789 99\" icon_3=\"ti ti-phone\" url_3=\"tel:(00) 123 456 789 99\" open_in_new_tab_3=\"yes\"  address=\"Fortis Downtown Resort\"][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(4,'Blog','---',1,NULL,'full-width',NULL,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(5,'Team','<div>[members title=\"Meet Our Professional Team\" member_ids=\"1,2,3,4,5,6,7,8\"][/members]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(7,'Terms Of Use','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(8,'Privacy Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(9,'Advertise','<h3>Random Content</h3><p>This is a random content that will be displayed on the page.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:04:53','2024-08-09 11:04:53'),(10,'FAQ','<h3>Random Content</h3><p>This is a random content that will be displayed on the page.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:04:53','2024-08-09 11:04:53');
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
INSERT INTO `post_categories` VALUES (8,1),(4,1),(4,2),(8,2),(6,3),(10,3),(6,4),(8,4),(2,5),(8,5),(5,6),(4,6),(2,7),(4,7),(10,8),(7,8),(6,9),(7,9),(4,10),(1,10),(1,11),(4,11),(2,12),(1,12),(1,13),(4,13),(6,14),(4,14),(6,15),(1,15),(8,16),(10,16),(6,17),(1,17),(10,18),(3,18),(4,19),(3,19),(6,20);
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
INSERT INTO `post_tags` VALUES (10,1),(9,1),(8,1),(2,2),(6,2),(7,2),(7,3),(5,3),(4,3),(1,4),(3,4),(5,5),(4,5),(6,5),(4,6),(3,6),(5,6),(6,7),(7,7),(3,7),(8,8),(6,8),(3,8),(6,9),(3,9),(5,9),(2,10),(10,10),(5,10),(2,11),(6,11),(1,11),(3,12),(2,12),(1,13),(9,13),(2,13),(8,14),(3,14),(4,15),(6,15),(8,15),(9,16),(1,16),(2,16),(2,17),(6,17),(8,17),(10,18),(5,18),(6,18),(7,19),(9,19),(7,20),(1,20);
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
INSERT INTO `posts` VALUES (1,'Exploring Global Cuisine: A Culinary Journey','Embark on a culinary adventure around the world and discover the diverse flavors of global cuisine. From spicy curries in India to savory sushi in Japan, explore the rich culinary traditions that define different cultures.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',3,'Botble\\Member\\Models\\Member',1,'food/news/1.jpg',240,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(2,'Farm-to-Table Dining: Celebrating Local Ingredients','Experience the farm-to-table movement and savor the flavors of locally sourced ingredients. From organic vegetables to grass-fed meats, discover the freshness and quality of farm-fresh dining at restaurants committed to sustainability.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',3,'Botble\\Member\\Models\\Member',1,'food/news/2.jpg',1154,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(3,'The Art of Food Presentation: Elevating Dining Experiences','Explore the art of food presentation and its impact on dining experiences. From intricate plating techniques to creative garnishes, discover how chefs transform dishes into works of art that delight the senses and tantalize the palate.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',1,'Botble\\Member\\Models\\Member',1,'food/news/3.jpg',849,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(4,'Healthy Eating Habits: Nourishing the Body and Mind','Learn about the importance of healthy eating habits and their impact on overall well-being. From balanced meals to mindful eating practices, discover how nutrition plays a crucial role in promoting physical and mental health.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',2,'Botble\\Member\\Models\\Member',1,'food/news/4.jpg',1932,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(5,'Street Food Delights: Exploring Culinary Gems','Embark on a street food adventure and explore the vibrant flavors of local culinary gems. From bustling food markets to roadside stalls, discover the authentic dishes and unique flavors that define street food culture around the world.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',4,'Botble\\Member\\Models\\Member',1,'food/news/5.jpg',244,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(6,'Artisanal Food and Craftsmanship: Honoring Tradition','Celebrate artisanal food and craftsmanship and savor the quality and authenticity of handcrafted products. From artisanal cheeses to small-batch chocolates, explore the dedication and passion behind artisanal food production.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',2,'Botble\\Member\\Models\\Member',1,'food/news/6.jpg',2363,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(7,'Wine Tasting and Pairing: An Introduction to Oenology','Embark on a journey into the world of wine tasting and pairing and discover the art and science of oenology. From the basics of wine appreciation to the principles of food and wine pairing, explore the sensory delights of the vineyard.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',2,'Botble\\Member\\Models\\Member',1,'food/news/7.jpg',536,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(8,'Cocktail Culture: Crafting the Perfect Drink','Explore the world of cocktail culture and learn how to craft the perfect drink. From classic cocktails to modern mixology, discover the techniques and ingredients that go into creating signature drinks that delight the palate and enliven the senses.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',7,'Botble\\Member\\Models\\Member',1,'food/news/8.jpg',1695,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(9,'The Rise of Plant-Based Cuisine: Embracing Veganism','Discover the rise of plant-based cuisine and the growing popularity of veganism. From plant-based burgers to dairy-free desserts, explore the creative and delicious ways chefs are reimagining classic dishes with plant-based ingredients.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',8,'Botble\\Member\\Models\\Member',1,'food/news/9.jpg',2271,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(10,'Dining Etiquette: Navigating Social Conventions','Learn the art of dining etiquette and navigate social conventions with grace and confidence. From table manners to formal dining protocols, discover the rules and traditions that govern dining etiquette in different cultures around the world.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',5,'Botble\\Member\\Models\\Member',1,'food/news/10.jpg',1573,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(11,'The Art of Baking: Mastering the Pastry Kitchen','Embark on a journey into the art of baking and master the pastry kitchen. From flaky croissants to decadent cakes, explore the techniques and recipes that elevate baking from a hobby to a culinary art form.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',3,'Botble\\Member\\Models\\Member',0,'food/news/11.jpg',706,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(12,'Sustainable Dining Practices: Promoting Environmental Responsibility','Discover the importance of sustainable dining practices and their role in promoting environmental responsibility. From reducing food waste to supporting local farmers, explore the ways restaurants and consumers can make a positive impact on the planet through sustainable food choices.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',8,'Botble\\Member\\Models\\Member',0,'food/news/12.jpg',2029,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(13,'The Joy of Home Cooking: Creating Memorable Meals','Celebrate the joy of home cooking and discover the satisfaction of creating memorable meals from scratch. From family recipes to experimental dishes, explore the creativity and comfort of cooking at home with love and care.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',7,'Botble\\Member\\Models\\Member',0,'food/news/13.jpg',2413,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(14,'Gourmet Getaways: Culinary Travel Adventures','Embark on a gourmet getaway and indulge in culinary travel adventures around the world. From food and wine tours to cooking classes, discover the delicious delights and cultural experiences that await in destinations known for their gastronomic offerings.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',7,'Botble\\Member\\Models\\Member',0,'food/news/14.jpg',1702,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(15,'Food Photography: Capturing Culinary Moments','Explore the art of food photography and learn how to capture culinary moments with style and flair. From lighting techniques to composition tips, discover the secrets to creating stunning images that showcase the beauty and deliciousness of food.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',4,'Botble\\Member\\Models\\Member',0,'food/news/15.jpg',382,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(16,'The Art of Tea: Exploring Tea Culture','Discover the art of tea and explore the rich traditions of tea culture around the world. From Chinese tea ceremonies to Japanese matcha rituals, explore the history, rituals, and health benefits of tea drinking.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',4,'Botble\\Member\\Models\\Member',0,'food/news/16.jpg',1566,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(17,'Gastronomy and Culture: Exploring Culinary Traditions','Explore the intersection of gastronomy and culture and discover the culinary traditions that define different societies. From traditional recipes to festive celebrations, explore how food reflects the cultural identity and heritage of communities around the world.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',7,'Botble\\Member\\Models\\Member',0,'food/news/17.jpg',2461,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(18,'The Craft Beer Revolution: Exploring Breweries','Experience the craft beer revolution and explore the vibrant world of microbreweries and brewpubs. From hoppy IPAs to rich stouts, discover the diversity and creativity of craft beer and the passionate brewers behind each brew.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',4,'Botble\\Member\\Models\\Member',0,'food/news/18.jpg',2358,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(19,'The Art of Hospitality: Creating Memorable Dining Experiences','Learn the art of hospitality and discover the secrets to creating memorable dining experiences. From attentive service to personalized touches, explore the principles and practices that elevate restaurants from ordinary to extraordinary.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',4,'Botble\\Member\\Models\\Member',0,'food/news/19.jpg',1486,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53'),(20,'Food Trends and Innovations: Exploring Culinary Creativity','Stay up-to-date with the latest food trends and innovations shaping the culinary world. From fusion cuisine to food trucks, explore the creativity and diversity of the modern food scene and the chefs pushing the boundaries of culinary convention.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',3,'Botble\\Member\\Models\\Member',0,'food/news/20.jpg',1144,NULL,'2024-08-09 11:04:53','2024-08-09 11:04:53');
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"fob-comment.index\":true,\"fob-comment.comments.index\":true,\"fob-comment.comments.edit\":true,\"fob-comment.comments.destroy\":true,\"fob-comment.comments.reply\":true,\"fob-comment.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-08-09 11:04:32','2024-08-09 11:04:32');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-08-09 11:04:55'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"ai-writer\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"fob-comment\",\"gallery\",\"member\",\"newsletter\",\"note\",\"request-log\",\"rss-feed\",\"social-login\",\"translation\"]',NULL,'2024-08-09 11:04:55'),(4,'ai_writer_proxy_enable','0',NULL,'2024-08-09 11:04:55'),(5,'ai_writer_proxy_protocol',NULL,NULL,'2024-08-09 11:04:55'),(6,'ai_writer_proxy_ip',NULL,NULL,'2024-08-09 11:04:55'),(7,'ai_writer_proxy_port',NULL,NULL,'2024-08-09 11:04:55'),(8,'ai_writer_proxy_username',NULL,NULL,'2024-08-09 11:04:55'),(9,'ai_writer_proxy_password',NULL,NULL,'2024-08-09 11:04:55'),(10,'ai_writer_prompt_template','[{\"title\":\"Product Content\",\"content\":\"You will be a marketer. I will give the information of the product, you will write an introductory article about that product, the article requires google seo standards and is highly persuasive to increase the rate of users closing orders.\\nParameters product:\"},{\"title\":\"Post Content\",\"content\":\"You will be a marketer. Articles about:\"}]',NULL,'2024-08-09 11:04:55'),(11,'ai_writer_openai_key',NULL,NULL,'2024-08-09 11:04:55'),(12,'ai_writer_openai_temperature','1',NULL,'2024-08-09 11:04:55'),(13,'ai_writer_openai_max_tokens','2000',NULL,'2024-08-09 11:04:55'),(14,'ai_writer_openai_frequency_penalty','0',NULL,'2024-08-09 11:04:55'),(15,'ai_writer_openai_presence_penalty','0',NULL,'2024-08-09 11:04:55'),(16,'ai_writer_openai_models','[\"gpt-3.5-turbo\"]',NULL,'2024-08-09 11:04:55'),(17,'ai_writer_openai_default_model','gpt-3.5-turbo',NULL,'2024-08-09 11:04:55'),(18,'ai_writer_spin_template','[]',NULL,'2024-08-09 11:04:55'),(21,'language_hide_default','1',NULL,'2024-08-09 11:04:55'),(22,'language_switcher_display','dropdown',NULL,'2024-08-09 11:04:55'),(23,'language_display','all',NULL,'2024-08-09 11:04:55'),(24,'language_hide_languages','[]',NULL,'2024-08-09 11:04:55'),(25,'media_random_hash','8cfcc2383cb61ad33ee445adab3a721c',NULL,'2024-08-09 11:04:55'),(26,'theme','echo-food',NULL,'2024-08-09 11:04:55'),(27,'show_admin_bar','1',NULL,'2024-08-09 11:04:55'),(28,'admin_favicon','main/general/favicon.png',NULL,'2024-08-09 11:04:55'),(29,'admin_logo','main/general/logo-dark.png',NULL,'2024-08-09 11:04:55'),(30,'permalink-botble-blog-models-post','blog',NULL,'2024-08-09 11:04:55'),(31,'permalink-botble-blog-models-category','blog',NULL,'2024-08-09 11:04:55'),(32,'theme-echo-food-site_name','Echo - Food',NULL,'2024-08-09 11:04:55'),(33,'theme-echo-food-site_title','News & Magazine Laravel Script.',NULL,'2024-08-09 11:04:55'),(34,'theme-echo-food-seo_description','Echo is a modern, clean, and professional Laravel script that is suitable for news, magazine, blog, and any kind of website.',NULL,'2024-08-09 11:04:55'),(35,'theme-echo-food-homepage_id','1',NULL,'2024-08-09 11:04:55'),(36,'theme-echo-food-logo','food/general/logo.png',NULL,'2024-08-09 11:04:55'),(37,'theme-echo-food-logo_dark','food/general/logo-dark.png',NULL,'2024-08-09 11:04:55'),(38,'theme-echo-food-favicon','food/general/favicon.png',NULL,'2024-08-09 11:04:55'),(39,'theme-echo-food-blog_page_id','4',NULL,'2024-08-09 11:04:55'),(40,'theme-echo-food-primary_font','Inter',NULL,'2024-08-09 11:04:55'),(41,'theme-echo-food-heading_font','Bona Nova',NULL,'2024-08-09 11:04:55'),(42,'theme-echo-food-theme_style','auto',NULL,'2024-08-09 11:04:55'),(43,'theme-echo-food-secondary_color','#003811',NULL,'2024-08-09 11:04:55'),(44,'theme-echo-food-breadcrumb_background_image','main/backgrounds/breadcrumb.png',NULL,'2024-08-09 11:04:55'),(45,'theme-echo-food-breadcrumb_background_color','transparent',NULL,'2024-08-09 11:04:55'),(46,'theme-echo-food-breadcrumb_text_color','',NULL,'2024-08-09 11:04:55'),(47,'theme-echo-food-blog_author_style','avatar_start',NULL,'2024-08-09 11:04:55'),(48,'theme-echo-food-blog_description_style','normal',NULL,'2024-08-09 11:04:55'),(49,'theme-echo-food-copyright','©%Y Archi Elite JSC. All Rights Reserved.',NULL,'2024-08-09 11:04:55'),(50,'theme-echo-food-language_switcher_enabled','1',NULL,'2024-08-09 11:04:55'),(51,'theme-echo-food-newsletter_popup_enable','1',NULL,'2024-08-09 11:04:55'),(52,'theme-echo-food-newsletter_popup_image','main/general/newsletter-popup.png',NULL,'2024-08-09 11:04:55'),(53,'theme-echo-food-newsletter_popup_title','Let’s join our newsletter!',NULL,'2024-08-09 11:04:55'),(54,'theme-echo-food-newsletter_popup_subtitle','Weekly Updates',NULL,'2024-08-09 11:04:55'),(55,'theme-echo-food-newsletter_popup_description','Do not worry we don’t spam!',NULL,'2024-08-09 11:04:55'),(56,'theme-echo-food-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,'2024-08-09 11:04:55'),(57,'theme-echo-food-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,'2024-08-09 11:04:55'),(58,'theme-echo-food-primary_color','#F5D253',NULL,'2024-08-09 11:04:55'),(59,'theme-echo-food-tertiary_color','#FF9A82',NULL,'2024-08-09 11:04:55'),(60,'theme-echo-food-footer_background_color','#003811',NULL,'2024-08-09 11:04:55'),(61,'theme-echo-food-footer_heading_color','#ffffff',NULL,'2024-08-09 11:04:55'),(62,'announcement_max_width','1390',NULL,NULL),(63,'announcement_text_color','#000000',NULL,NULL),(64,'announcement_background_color','#F5D253',NULL,NULL),(65,'announcement_text_alignment','center',NULL,NULL),(66,'announcement_dismissible','1',NULL,NULL),(67,'announcement_font_size','14',NULL,NULL),(68,'announcement_font_size_unit','px',NULL,NULL);
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
INSERT INTO `slugs` VALUES (1,'smith',1,'Botble\\Member\\Models\\Member','author','2024-08-09 11:04:35','2024-08-09 11:04:56'),(2,'hane',2,'Botble\\Member\\Models\\Member','author','2024-08-09 11:04:35','2024-08-09 11:04:56'),(3,'lebsack',3,'Botble\\Member\\Models\\Member','author','2024-08-09 11:04:35','2024-08-09 11:04:56'),(4,'hudson',4,'Botble\\Member\\Models\\Member','author','2024-08-09 11:04:35','2024-08-09 11:04:56'),(5,'carroll',5,'Botble\\Member\\Models\\Member','author','2024-08-09 11:04:35','2024-08-09 11:04:56'),(6,'lind',6,'Botble\\Member\\Models\\Member','author','2024-08-09 11:04:35','2024-08-09 11:04:56'),(7,'dickens',7,'Botble\\Member\\Models\\Member','author','2024-08-09 11:04:35','2024-08-09 11:04:56'),(8,'hilpert',8,'Botble\\Member\\Models\\Member','author','2024-08-09 11:04:35','2024-08-09 11:04:56'),(9,'global-cuisine',1,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:04:44','2024-08-09 11:04:53'),(10,'farm-to-table-dining',2,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:04:44','2024-08-09 11:04:53'),(11,'food-presentation',3,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:04:44','2024-08-09 11:04:53'),(12,'healthy-eating',4,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:04:44','2024-08-09 11:04:53'),(13,'street-food',5,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:04:44','2024-08-09 11:04:53'),(14,'artisanal-food',6,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:04:44','2024-08-09 11:04:53'),(15,'wine-tasting',7,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:04:44','2024-08-09 11:04:53'),(16,'cocktail-culture',8,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:04:44','2024-08-09 11:04:53'),(17,'plant-based-cuisine',9,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:04:44','2024-08-09 11:04:53'),(18,'dining-etiquette',10,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:04:44','2024-08-09 11:04:53'),(19,'food',1,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:04:44','2024-08-09 11:04:44'),(20,'cooking',2,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:04:44','2024-08-09 11:04:44'),(21,'cuisine',3,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:04:44','2024-08-09 11:04:44'),(22,'restaurant',4,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:04:44','2024-08-09 11:04:44'),(23,'gastronomy',5,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:04:44','2024-08-09 11:04:44'),(24,'wine',6,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:04:44','2024-08-09 11:04:44'),(25,'cocktails',7,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:04:44','2024-08-09 11:04:44'),(26,'healthy-eating',8,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:04:44','2024-08-09 11:04:44'),(27,'vegan',9,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:04:44','2024-08-09 11:04:44'),(28,'baking',10,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:04:44','2024-08-09 11:04:44'),(29,'exploring-global-cuisine-a-culinary-journey',1,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(30,'farm-to-table-dining-celebrating-local-ingredients',2,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(31,'the-art-of-food-presentation-elevating-dining-experiences',3,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(32,'healthy-eating-habits-nourishing-the-body-and-mind',4,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(33,'street-food-delights-exploring-culinary-gems',5,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(34,'artisanal-food-and-craftsmanship-honoring-tradition',6,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(35,'wine-tasting-and-pairing-an-introduction-to-oenology',7,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(36,'cocktail-culture-crafting-the-perfect-drink',8,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(37,'the-rise-of-plant-based-cuisine-embracing-veganism',9,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(38,'dining-etiquette-navigating-social-conventions',10,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(39,'the-art-of-baking-mastering-the-pastry-kitchen',11,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(40,'sustainable-dining-practices-promoting-environmental-responsibility',12,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(41,'the-joy-of-home-cooking-creating-memorable-meals',13,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(42,'gourmet-getaways-culinary-travel-adventures',14,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(43,'food-photography-capturing-culinary-moments',15,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(44,'the-art-of-tea-exploring-tea-culture',16,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(45,'gastronomy-and-culture-exploring-culinary-traditions',17,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(46,'the-craft-beer-revolution-exploring-breweries',18,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(47,'the-art-of-hospitality-creating-memorable-dining-experiences',19,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(48,'food-trends-and-innovations-exploring-culinary-creativity',20,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:04:53','2024-08-09 11:04:53'),(49,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(50,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(51,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(52,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(53,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(54,'sunset',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(55,'ocean-views',7,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(56,'adventure-time',8,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(57,'city-lights',9,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(58,'dreamscape',10,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(59,'enchanted-forest',11,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(60,'golden-hour',12,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(61,'serenity',13,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(62,'eternal-beauty',14,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(63,'moonlight-magic',15,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(64,'starry-night',16,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(65,'hidden-gems',17,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(66,'tranquil-waters',18,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(67,'urban-escape',19,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(68,'twilight-zone',20,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:04:53','2024-08-09 11:04:53'),(69,'homepage',1,'Botble\\Page\\Models\\Page','','2024-08-09 11:04:53','2024-08-09 11:04:53'),(70,'about-us',2,'Botble\\Page\\Models\\Page','','2024-08-09 11:04:53','2024-08-09 11:04:53'),(71,'contact',3,'Botble\\Page\\Models\\Page','','2024-08-09 11:04:53','2024-08-09 11:04:53'),(72,'blog',4,'Botble\\Page\\Models\\Page','','2024-08-09 11:04:53','2024-08-09 11:04:53'),(73,'team',5,'Botble\\Page\\Models\\Page','','2024-08-09 11:04:53','2024-08-09 11:04:53'),(74,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2024-08-09 11:04:53','2024-08-09 11:04:53'),(75,'terms-of-use',7,'Botble\\Page\\Models\\Page','','2024-08-09 11:04:53','2024-08-09 11:04:53'),(76,'privacy-policy',8,'Botble\\Page\\Models\\Page','','2024-08-09 11:04:53','2024-08-09 11:04:53'),(77,'advertise',9,'Botble\\Page\\Models\\Page','','2024-08-09 11:04:53','2024-08-09 11:04:53'),(78,'faq',10,'Botble\\Page\\Models\\Page','','2024-08-09 11:04:53','2024-08-09 11:04:53');
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
INSERT INTO `tags` VALUES (1,'Food',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:04:44','2024-08-09 11:04:44'),(2,'Cooking',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:04:44','2024-08-09 11:04:44'),(3,'Cuisine',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:04:44','2024-08-09 11:04:44'),(4,'Restaurant',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:04:44','2024-08-09 11:04:44'),(5,'Gastronomy',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:04:44','2024-08-09 11:04:44'),(6,'Wine',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:04:44','2024-08-09 11:04:44'),(7,'Cocktails',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:04:44','2024-08-09 11:04:44'),(8,'Healthy Eating',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:04:44','2024-08-09 11:04:44'),(9,'Vegan',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:04:44','2024-08-09 11:04:44'),(10,'Baking',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:04:44','2024-08-09 11:04:44');
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
INSERT INTO `users` VALUES (1,'lind.nella@wisozk.info',NULL,'$2y$12$y15jFDxjzijrwv4cg4p3Q.2Sku7YRklikXE1GQuxNbC4VMUCaMZe.',NULL,'2024-08-09 11:04:32','2024-08-09 11:04:32','Trisha','Breitenberg','admin',NULL,1,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'BlogPostsWidget','menu_sidebar','echo-food',1,'{\"type\":\"recent\",\"category_ids\":[1,2,3],\"limit\":3}','2024-08-09 11:04:55','2024-08-09 11:04:55'),(2,'SocialLinksWidget','menu_sidebar','echo-food',2,'[]','2024-08-09 11:04:55','2024-08-09 11:04:55'),(3,'BlogCategoriesWidget','primary_sidebar','echo-food',1,'{\"title\":\"Popular Categories\",\"id\":\"BlogCategoriesWidget\",\"enable_lazy_loading\":\"yes\",\"quantity\":\"5\",\"category_id_1\":\"1\",\"background_image_1\":\"main\\/blog-categories\\/1.png\",\"background_color_1\":\"rgb(174 81 43)\",\"category_id_2\":\"2\",\"background_image_2\":\"main\\/blog-categories\\/2.png\",\"background_color_2\":\"rgb(102 64 165)\",\"category_id_3\":\"3\",\"background_image_3\":\"main\\/blog-categories\\/3.png\",\"background_color_3\":\"rgb(85 163 168)\",\"category_id_4\":\"4\",\"background_image_4\":\"main\\/blog-categories\\/4.png\",\"background_color_4\":\"rgb(83 39 21)\",\"category_id_5\":\"5\",\"background_image_5\":\"main\\/blog-categories\\/5.png\",\"background_color_5\":\"rgb(85 163 168)\"}','2024-08-09 11:04:55','2024-08-09 11:04:55'),(4,'BlogPostsWidget','primary_sidebar','echo-food',2,'{\"type\":\"popular\",\"card_style\":\"default-card\",\"shape\":\"square\",\"category_ids\":[1,3,4],\"title\":\"Top Story\",\"limit\":4,\"enable_lazy_loading\":\"yes\"}','2024-08-09 11:04:55','2024-08-09 11:04:55'),(5,'FollowUsWidget','primary_sidebar','echo-food',3,'{\"id\":\"FollowUsWidget\",\"items\":[[{\"key\":\"title\",\"value\":\"20K Fans\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"title\",\"value\":\"10K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"title\",\"value\":\"50K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/instagram.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/linkedin.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/pinterest.com\"}],[{\"key\":\"title\",\"value\":\"04K Subscribers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"}]]}','2024-08-09 11:04:55','2024-08-09 11:04:55'),(6,'ActionButtonsWidget','header_top_left_sidebar','echo-food',1,'{\"id\":\"ActionButtonsWidget\",\"enable_search_button\":true,\"enable_toggle_side_menu_button\":true,\"enable_dark_light_switcher_button\":false,\"alignment\":\"start\"}','2024-08-09 11:04:55','2024-08-09 11:04:55'),(7,'ActionButtonsWidget','header_top_right_sidebar','echo-food',1,'{\"id\":\"ActionButtonsWidget\",\"enable_dark_light_switcher_button\":true,\"enable_search_button\":false,\"enable_toggle_side_menu_button\":false,\"alignment\":\"end\"}','2024-08-09 11:04:55','2024-08-09 11:04:55'),(8,'SocialLinksWidget','header_top_right_sidebar','echo-food',2,'[]','2024-08-09 11:04:55','2024-08-09 11:04:55'),(9,'ActionButtonsWidget','header_top_right_sidebar','echo-food',3,'{\"id\":\"ActionButtonsWidget\",\"enable_dark_light_switcher_button\":false,\"enable_search_button\":false,\"enable_toggle_side_menu_button\":false,\"form_newsletter_button_label\":\"Subscribe\",\"alignment\":\"end\"}','2024-08-09 11:04:55','2024-08-09 11:04:55'),(10,'BlogPostsWidget','custom_sidebar_2','echo-food',1,'{\"type\":\"recent\",\"style\":\"default-card\",\"shape\":\"square\",\"category_ids\":[3,6],\"title\":\"Top Story\",\"limit\":4}','2024-08-09 11:04:55','2024-08-09 11:04:55'),(11,'BlogPostsWidget','custom_sidebar_2','echo-food',2,'{\"type\":\"popular\",\"style\":\"orderly-card\",\"shape\":\"square\",\"category_ids\":[1,5,6],\"title\":\"Top Reviews\",\"limit\":3}','2024-08-09 11:04:55','2024-08-09 11:04:55'),(12,'FollowUsWidget','custom_sidebar_2','echo-food',3,'{\"id\":\"FollowUsWidget\",\"items\":[[{\"key\":\"title\",\"value\":\"20K Fans\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"title\",\"value\":\"10K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"title\",\"value\":\"50K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/instagram.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/linkedin.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/pinterest.com\"}],[{\"key\":\"title\",\"value\":\"04K Subscribers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"}]]}','2024-08-09 11:04:55','2024-08-09 11:04:55'),(13,'NewsletterWidget','custom_sidebar_2','echo-food',4,'{\"id\":\"NewsletterWidget\",\"title\":\"Newsletter\",\"description\":\"Stay Tuned With Updates\",\"image\":\"main\\/general\\/newsletter-image.png\"}','2024-08-09 11:04:55','2024-08-09 11:04:55'),(14,'BannerAdsWidget','custom_sidebar_2','echo-food',5,'{\"ad_image\":\"main\\/general\\/ads-banner.png\",\"ad_link\":\"https:\\/\\/google.com\"}','2024-08-09 11:04:55','2024-08-09 11:04:55'),(15,'SiteInformationWidget','footer_sidebar','echo-food',4,'{\"id\":\"SiteInformationWidget\",\"title\":\"Get In Touch\",\"email\":\"Info@Demomail.Com\",\"hotline\":\"(00) 236 123 456 88\",\"address\":\"255 Sheet, New Avanew, NY\"}','2024-08-09 11:04:55','2024-08-09 11:04:55'),(16,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','echo-food',1,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Most Popular\",\"style\":\"2-column\",\"items\":[[{\"key\":\"label\",\"value\":\"Business\"},{\"key\":\"url\",\"value\":\"\\/business\"}],[{\"key\":\"label\",\"value\":\"Life Style\"},{\"key\":\"url\",\"value\":\"\\/life-style\"}],[{\"key\":\"label\",\"value\":\"Fashion\"},{\"key\":\"url\",\"value\":\"fashion\"}],[{\"key\":\"label\",\"value\":\"Travels\"},{\"key\":\"url\",\"value\":\"travels\"}],[{\"key\":\"label\",\"value\":\"Sports\"},{\"key\":\"url\",\"value\":\"sports\"}]]}','2024-08-09 11:04:55','2024-08-09 11:04:55'),(17,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','echo-food',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Help\",\"items\":[[{\"key\":\"label\",\"value\":\"About\"},{\"key\":\"url\",\"value\":\"about-us\"}],[{\"key\":\"label\",\"value\":\"Terms of Use\"},{\"key\":\"url\",\"value\":\"terms-of-use\"}],[{\"key\":\"label\",\"value\":\"Advertise\"},{\"key\":\"url\",\"value\":\"advertise\"}],[{\"key\":\"label\",\"value\":\"Privacy Policy\"},{\"key\":\"url\",\"value\":\"privacy-policy\"}],[{\"key\":\"label\",\"value\":\"FAQ\"},{\"key\":\"url\",\"value\":\"faq\"}]]}','2024-08-09 11:04:55','2024-08-09 11:04:55'),(18,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','echo-food',3,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"About Us\",\"items\":[[{\"key\":\"label\",\"value\":\"Global Cuisine\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/global-cuisine\"}],[{\"key\":\"label\",\"value\":\"Farm-to-Table Dining\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/farm-to-table-dining\"}],[{\"key\":\"label\",\"value\":\"Food Presentation\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/food-presentation\"}],[{\"key\":\"label\",\"value\":\"Healthy Eating\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/healthy-eating\"}],[{\"key\":\"label\",\"value\":\"Street Food\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/street-food\"}]]}','2024-08-09 11:04:55','2024-08-09 11:04:55');
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

-- Dump completed on 2024-08-10  1:04:56
