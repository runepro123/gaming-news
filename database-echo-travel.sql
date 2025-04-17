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
INSERT INTO `activations` VALUES (1,1,'vaACJQjXrjaC60oufwjMXQYsIWzBIjt5',1,'2024-08-09 11:07:50','2024-08-09 11:07:50','2024-08-09 11:07:50');
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
INSERT INTO `announcements` VALUES (1,'Announcement 1','Cyber Monday: Save big on the Creative Cloud All Apps plan for individuals through 2 Dec',0,NULL,NULL,0,1,'2024-08-09 18:08:19',NULL,1,'2024-08-09 11:08:19','2024-08-09 11:08:19'),(2,'Announcement 2','Students and teachers save a massive 71% on Creative Cloud All Apps',0,NULL,NULL,0,1,'2024-08-09 18:08:19',NULL,1,'2024-08-09 11:08:19','2024-08-09 11:08:19'),(3,'Announcement 3','Black Friday and Cyber Monday 2023 Deals for Motion Designers, grab it now!',0,NULL,NULL,0,1,'2024-08-09 18:08:19',NULL,1,'2024-08-09 11:08:19','2024-08-09 11:08:19');
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
INSERT INTO `categories` VALUES (1,'Adventure Destinations',0,'Atque in enim animi enim dolorem et. Ducimus rerum minima explicabo sed dicta. Veritatis necessitatibus eius voluptate nemo veritatis veritatis. Sequi magnam labore iste voluptatem omnis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-08-09 11:08:08','2024-08-09 11:08:08'),(2,'Cultural Experiences',0,'Eum corrupti eius fuga. Et distinctio dolore eaque iusto enim laborum. Molestiae sequi tenetur nemo saepe. Animi ut illo atque.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:08:08','2024-08-09 11:08:08'),(3,'Luxury Retreats',0,'Nostrum ipsam qui sunt debitis non voluptatem. Impedit et sunt sed.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:08:08','2024-08-09 11:08:08'),(4,'Off-the-Beaten-Path',0,'Enim minima atque eos aut sunt temporibus. Incidunt explicabo enim aspernatur. Eius et explicabo totam veritatis provident.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:08:08','2024-08-09 11:08:08'),(5,'Family-Friendly Getaways',0,'Sunt sequi sunt esse eveniet voluptas dicta rerum. Omnis porro maxime quod beatae. Explicabo a qui quia sunt ut nulla esse.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:08:08','2024-08-09 11:08:08'),(6,'Solo Travel Adventures',0,'Suscipit corrupti molestiae ut. Ipsam alias sed sed placeat sed corporis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:08:08','2024-08-09 11:08:08'),(7,'Budget Travel Tips',0,'Eos tempora sit autem quasi repellat. Nostrum voluptate vitae corporis est velit et ea. Et aut commodi quia maxime. Magni delectus unde autem quo eos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:08:08','2024-08-09 11:08:08'),(8,'Food and Culinary Tours',0,'Laudantium quaerat et minima eos. Molestiae consectetur consequatur cumque quia et. Et itaque molestias est.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:08:08','2024-08-09 11:08:08'),(9,'Outdoor Adventures',0,'Qui perspiciatis cum itaque qui. Et sunt animi totam ducimus qui illo quia. Voluptatem assumenda porro vel totam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:08:08','2024-08-09 11:08:08'),(10,'Historical Landmarks',0,'Unde impedit animi quis. Quod consequatur harum mollitia at et totam et. Qui dolore blanditiis et sed ut qui voluptas.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:08:08','2024-08-09 11:08:08');
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
INSERT INTO `contacts` VALUES (1,'Ms. Taya Kreiger','haleigh93@example.org','+1-339-341-6902','342 Koch Valleys\nDahliaton, MA 66906-3073','Veniam est aut fugiat cumque omnis ad.','Fugit ipsa neque deleniti nostrum vero. Sed cumque fugit consequuntur veniam. Fugit culpa alias itaque corporis commodi. Itaque temporibus eos molestias neque quia laudantium a. Non accusantium officia porro odit iusto. Et sapiente velit eius et quibusdam. Iure ullam pariatur est. Nobis quia autem et laborum perferendis. Velit voluptatem nihil culpa ullam. Ut est labore non et. Est aut non et dolore saepe commodi aspernatur. Tenetur sequi consequatur illo deserunt et qui iusto possimus.',NULL,'unread','2024-08-09 11:07:50','2024-08-09 11:07:50'),(2,'Everette Gleason I','jeffery.schuster@example.org','(248) 750-6394','524 Boehm Motorway\nNicolasside, AK 89105','Autem veritatis voluptatem voluptates neque.','Qui sed et voluptas asperiores. Ullam quod corporis sed ut. Non repellat id beatae laudantium sint. Id ut consequatur eius. Eum sit voluptatem magnam magni. Incidunt ut perspiciatis quae eum nihil in. Sint occaecati quas inventore molestias voluptate velit rerum. Aperiam nisi distinctio explicabo eos autem rerum. Incidunt sed ad animi quas. Minima et velit architecto omnis ipsam ullam accusamus.',NULL,'read','2024-08-09 11:07:50','2024-08-09 11:07:50'),(3,'Daija Dietrich','mberge@example.com','1-347-483-2198','7388 Beier Springs\nRaphaellefort, CA 46970','Libero vitae autem eaque consequuntur.','Voluptatum soluta repudiandae nemo minus assumenda iure officia. Nihil eveniet reprehenderit sed velit quisquam. Et quaerat maxime nulla vel. Ut pariatur eos porro suscipit in sed sed. Excepturi qui quia culpa illo facilis illum. Dolorum sapiente ab consectetur vero quam ullam aperiam autem. Suscipit reprehenderit soluta facere dolorem explicabo tenetur.',NULL,'unread','2024-08-09 11:07:50','2024-08-09 11:07:50'),(4,'Dr. Rey Lueilwitz III','will.destini@example.net','262.523.1673','7059 Jacobson Parkway Apt. 485\nLake Wernerhaven, NH 34862-0567','Quo repellat non impedit.','Qui animi culpa non sapiente sit vel. Sed sapiente corrupti eos est et quam. Similique expedita exercitationem voluptatem porro ullam officiis. Provident reiciendis quidem et id facilis aut sit. Qui dolorem aliquam quibusdam minima quia expedita fugit. Soluta molestiae corporis ipsam non ducimus itaque voluptatem rerum.',NULL,'read','2024-08-09 11:07:50','2024-08-09 11:07:50'),(5,'Nelda Thiel','hane.francis@example.com','774-788-3234','96292 Crooks Inlet\nProsaccoshire, ME 92137-9878','Rem similique qui sed aut esse.','Dolor iste neque iusto voluptas odit. Est quia veritatis provident blanditiis. Enim magnam dolore pariatur harum rerum. Nobis quas nesciunt ipsum nihil quia molestiae voluptates. Non non consequuntur recusandae qui aut. Ut sequi vero architecto similique doloribus tempora eligendi fugiat. Dolor explicabo exercitationem deserunt sint. Aperiam qui eum et placeat. Error corporis omnis aliquam saepe doloribus.',NULL,'unread','2024-08-09 11:07:50','2024-08-09 11:07:50'),(6,'Leonora Ledner','kunde.marco@example.org','678.275.8063','77598 Krystel Keys\nPort Dorcasville, AL 84974-3152','Voluptate nihil et aperiam dolores voluptatibus.','Est quia consequatur ullam rerum accusantium minus officiis in. Sit soluta quae impedit earum. Vero labore ut mollitia. Explicabo aut provident eaque praesentium ipsum aut ad. Fugiat quae et non ullam neque in commodi rerum. Est officiis non velit nostrum architecto rerum excepturi. Nobis sit voluptatum nihil voluptas totam dolorem quia. Fugit veritatis qui id neque ea sed. Enim quo ut cupiditate nesciunt.',NULL,'read','2024-08-09 11:07:50','2024-08-09 11:07:50'),(7,'Prof. Jessy Gleason Jr.','patricia13@example.com','435-452-2972','4644 Kaya Center Apt. 123\nLake Marcberg, CT 26006','Consectetur occaecati sunt quas molestias.','Autem qui consequatur possimus quod consectetur magnam. Magnam occaecati quaerat qui vel magni eveniet. Voluptas cum omnis quos rerum qui tenetur. Ea ea quam sed ipsum nesciunt labore. Quam modi voluptatem voluptatem repellat. Architecto iure repudiandae molestias praesentium consequatur. Ab voluptatem exercitationem et fugiat ut nesciunt et. Enim sunt in qui veritatis laudantium voluptatum unde. Sunt sapiente animi at sequi.',NULL,'read','2024-08-09 11:07:50','2024-08-09 11:07:50'),(8,'Lauren Padberg','rosalia15@example.com','478-620-4790','155 Deron Stravenue\nNorth Francesco, AZ 81060-4444','Doloribus aut velit voluptatem at.','Id minus voluptatibus autem. Consequatur suscipit qui illum et eum voluptatem. Est quae eveniet sint vero dolor. In aut tempore perspiciatis molestiae magni rerum ut est. Et veniam et exercitationem voluptatem consectetur et dolores. Sed magni dolorem ea quaerat possimus eos laborum. Officia autem et ut et autem dolorum qui ratione. Sint dolore ut voluptates explicabo.',NULL,'unread','2024-08-09 11:07:50','2024-08-09 11:07:50'),(9,'Angus Schowalter','upadberg@example.org','1-458-585-3130','5767 Ledner Underpass\nHarveytown, WY 58682','Sapiente possimus tempora inventore maxime.','Et hic et vel incidunt illum. Qui dolorum ea explicabo eos. Quaerat possimus et quisquam rerum aspernatur. Ut porro ab alias fuga ut atque. Repellat esse asperiores optio. Fugit voluptatem ut quidem quos dolor. Et saepe fugit eos doloremque et qui voluptatem vel. Et voluptatum nostrum ratione maiores. Dolor accusantium perferendis ratione nihil sit voluptatem tenetur dolore. Omnis aliquid natus libero culpa. Alias nulla dicta recusandae aut quae ipsa dolores.',NULL,'read','2024-08-09 11:07:50','2024-08-09 11:07:50'),(10,'Cortney Roberts','johns.nedra@example.org','531.845.4392','815 Bogisich Junctions Apt. 439\nLake Corbinchester, HI 50736-9738','Non dolor et aut laborum.','Minima nemo est qui itaque tempora dolores voluptas. Iure ad facilis eos possimus molestias dignissimos dolores impedit. Nisi praesentium ad perspiciatis. Repellendus corporis inventore nihil ullam quisquam et. A aut saepe magni quibusdam molestias. Mollitia nihil accusamus eos non et est et velit. Unde hic culpa ducimus quo consectetur. Ea culpa qui et ratione eligendi culpa. Possimus magnam ducimus aut vero. Laborum laudantium voluptas voluptate aliquid nemo rerum quam.',NULL,'read','2024-08-09 11:07:50','2024-08-09 11:07:50');
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
INSERT INTO `fob_comments` VALUES (1,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',16,'http://localhost','Ms. Lesly Kohler','kole42@gmail.com','https://friendsofbotble.com','This is really helpful, thank you!','approved','50.18.19.90','Mozilla/5.0 (compatible; MSIE 8.0; Windows 98; Win 9x 4.90; Trident/4.0)','2024-07-13 02:47:51','2024-08-09 11:08:20'),(2,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',20,'http://localhost','Veronica Schroeder','pmurphy@gmail.com','https://friendsofbotble.com','I found this article to be quite informative.','approved','205.162.220.109','Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5361 (KHTML, like Gecko) Chrome/38.0.813.0 Mobile Safari/5361','2024-08-08 11:44:23','2024-08-09 11:08:20'),(3,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',15,'http://localhost','Prof. Franz Christiansen PhD','chilpert@hotmail.com','https://friendsofbotble.com','Wow, I never knew about this before!','approved','125.179.49.53','Mozilla/5.0 (X11; Linux i686) AppleWebKit/5312 (KHTML, like Gecko) Chrome/40.0.849.0 Mobile Safari/5312','2024-07-30 19:00:06','2024-08-09 11:08:20'),(4,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',20,'http://localhost','Juanita O\'Connell','darrick57@carroll.com','https://friendsofbotble.com','Great job on explaining such a complex topic.','approved','73.163.46.133','Mozilla/5.0 (Windows NT 6.1; sl-SI; rv:1.9.0.20) Gecko/20150725 Firefox/37.0','2024-08-02 09:53:38','2024-08-09 11:08:20'),(5,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',12,'http://localhost','Cheyenne Franecki','destini20@marks.com','https://friendsofbotble.com','I have a question about the third paragraph.','approved','244.112.134.52','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_8) AppleWebKit/5350 (KHTML, like Gecko) Chrome/37.0.835.0 Mobile Safari/5350','2024-07-18 03:56:21','2024-08-09 11:08:20'),(6,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',11,'http://localhost','Gabriel Skiles','haag.elta@mayert.com','https://friendsofbotble.com','This article changed my perspective entirely.','approved','40.60.230.147','Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20230127 Firefox/37.0','2024-07-14 15:41:03','2024-08-09 11:08:20'),(7,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',15,'http://localhost','Ernie Hirthe V','estel.hegmann@quigley.net','https://friendsofbotble.com','I appreciate the effort you put into this.','approved','234.68.248.96','Mozilla/5.0 (iPad; CPU OS 8_0_2 like Mac OS X; en-US) AppleWebKit/534.47.3 (KHTML, like Gecko) Version/3.0.5 Mobile/8B118 Safari/6534.47.3','2024-07-21 10:02:37','2024-08-09 11:08:20'),(8,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',4,'http://localhost','Beaulah Ritchie','zena56@torphy.info','https://friendsofbotble.com','This is exactly what I was looking for, thank you!','approved','54.132.199.188','Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.2 (KHTML, like Gecko) Chrome/98.0.4314.86 Safari/537.2 EdgA/98.01042.23','2024-07-26 21:26:55','2024-08-09 11:08:20'),(9,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',20,'http://localhost','Prof. Lois O\'Connell','hessel.candido@koss.com','https://friendsofbotble.com','I disagree with some points mentioned here, though.','approved','151.114.93.98','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/87.0.4830.32 Safari/537.1 EdgA/87.01047.7','2024-07-17 06:09:47','2024-08-09 11:08:20'),(10,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',7,'http://localhost','Prof. Norbert Heaney Jr.','ansel.crona@lakin.com','https://friendsofbotble.com','Could you provide more examples to illustrate your point?','approved','18.235.216.120','Mozilla/5.0 (Windows NT 4.0; nl-NL; rv:1.9.1.20) Gecko/20110918 Firefox/35.0','2024-07-12 09:34:24','2024-08-09 11:08:20'),(11,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',3,'http://localhost','Brenna Gleason I','constantin04@gmail.com','https://friendsofbotble.com','I wish there were more articles like this out there.','approved','245.166.37.124','Mozilla/5.0 (iPhone; CPU iPhone OS 8_2_2 like Mac OS X; sl-SI) AppleWebKit/533.16.2 (KHTML, like Gecko) Version/3.0.5 Mobile/8B114 Safari/6533.16.2','2024-07-17 16:30:59','2024-08-09 11:08:20'),(12,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',19,'http://localhost','Dr. Isabella Flatley I','moen.marian@hotmail.com','https://friendsofbotble.com','I\'m bookmarking this for future reference.','approved','61.134.15.171','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_1) AppleWebKit/533.1 (KHTML, like Gecko) Chrome/86.0.4592.71 Safari/533.1 Edg/86.01065.55','2024-08-05 03:48:28','2024-08-09 11:08:20'),(13,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',1,'http://localhost','Miss Magnolia Champlin','brogahn@hotmail.com','https://friendsofbotble.com','I\'ve shared this with my friends, they loved it!','approved','137.228.165.216','Opera/9.95 (Windows 98; nl-NL) Presto/2.8.354 Version/11.00','2024-07-31 19:32:33','2024-08-09 11:08:20'),(14,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',2,'http://localhost','Amira Heaney V','conner.jaskolski@yahoo.com','https://friendsofbotble.com','This article is a must-read for everyone interested in the topic.','approved','75.246.50.101','Mozilla/5.0 (X11; Linux x86_64; rv:6.0) Gecko/20170223 Firefox/37.0','2024-07-21 14:16:34','2024-08-09 11:08:20'),(15,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',11,'http://localhost','Mr. Jaylan Bernier II','weber.bessie@murray.com','https://friendsofbotble.com','Thank you for shedding light on this important issue.','approved','162.4.207.65','Mozilla/5.0 (X11; Linux i686) AppleWebKit/5331 (KHTML, like Gecko) Chrome/38.0.895.0 Mobile Safari/5331','2024-07-19 09:04:11','2024-08-09 11:08:20'),(16,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',8,'http://localhost','Dr. Charley Runolfsson','pkreiger@hotmail.com','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article.','approved','88.136.58.57','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_1) AppleWebKit/537.0 (KHTML, like Gecko) Chrome/92.0.4032.71 Safari/537.0 Edg/92.01067.11','2024-07-19 05:00:05','2024-08-09 11:08:20'),(17,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',9,'http://localhost','Burdette Nader','edwardo03@deckow.com','https://friendsofbotble.com','I\'m blown away by the insights shared in this article.','approved','170.86.23.134','Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/533.2 (KHTML, like Gecko) Version/15.0 EdgiOS/86.01057.74 Mobile/15E148 Safari/533.2','2024-08-04 05:02:02','2024-08-09 11:08:20'),(18,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',6,'http://localhost','Juston Marquardt','alfreda71@yahoo.com','https://friendsofbotble.com','This article tackles a complex topic with clarity.','approved','21.30.114.146','Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.0; Trident/5.0)','2024-07-30 20:11:31','2024-08-09 11:08:20'),(19,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',8,'http://localhost','Antonetta Gaylord','ahill@gmail.com','https://friendsofbotble.com','I\'m going to reflect on the ideas presented in this article.','approved','126.46.20.240','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_8) AppleWebKit/535.0 (KHTML, like Gecko) Chrome/98.0.4191.95 Safari/535.0 Edg/98.01136.42','2024-07-18 20:00:07','2024-08-09 11:08:20'),(20,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',13,'http://localhost','Mack Tremblay','vemmerich@hotmail.com','https://friendsofbotble.com','The author\'s passion for the subject shines through in this article.','approved','108.40.155.118','Opera/9.76 (Windows NT 5.1; nl-NL) Presto/2.10.342 Version/10.00','2024-07-21 07:52:28','2024-08-09 11:08:20'),(21,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',20,'http://localhost','Mr. Ali Lockman','violette.lesch@gmail.com','https://friendsofbotble.com','This article challenged my preconceptions in a thought-provoking way.','approved','21.65.17.144','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 5.1; Trident/3.1)','2024-08-03 08:37:44','2024-08-09 11:08:20'),(22,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',2,'http://localhost','Nat Corwin','gchamplin@yahoo.com','https://friendsofbotble.com','I\'ve added this article to my reading list, it\'s worth revisiting.','approved','173.85.75.41','Mozilla/5.0 (Windows NT 5.2; sl-SI; rv:1.9.0.20) Gecko/20170920 Firefox/35.0','2024-07-14 22:42:06','2024-08-09 11:08:20'),(23,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',10,'http://localhost','Mervin Rodriguez','stephania.harber@yahoo.com','https://friendsofbotble.com','This article offers practical advice that I can apply in real life.','approved','147.25.87.206','Opera/9.87 (Windows NT 4.0; sl-SI) Presto/2.12.176 Version/12.00','2024-07-15 18:36:02','2024-08-09 11:08:20'),(24,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',11,'http://localhost','Mr. Raoul Lindgren','xmitchell@hotmail.com','https://friendsofbotble.com','I\'m going to recommend this article to my study group.','approved','184.97.7.131','Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20180601 Firefox/37.0','2024-08-01 10:28:33','2024-08-09 11:08:20'),(25,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',6,'http://localhost','Kari Connelly III','aletha.streich@skiles.biz','https://friendsofbotble.com','The examples provided really helped me understand the concept better.','approved','143.190.28.131','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_1 rv:2.0) Gecko/20160802 Firefox/36.0','2024-07-11 19:27:14','2024-08-09 11:08:20'),(26,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',6,'http://localhost','Constance Leannon','cory19@hotmail.com','https://friendsofbotble.com','I resonate with the ideas presented here.','approved','51.150.208.253','Mozilla/5.0 (Windows 98) AppleWebKit/5311 (KHTML, like Gecko) Chrome/40.0.872.0 Mobile Safari/5311','2024-07-13 11:26:14','2024-08-09 11:08:20'),(27,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',6,'http://localhost','Hope Kiehn','rolfson.alana@yahoo.com','https://friendsofbotble.com','This article made me think critically about the topic.','approved','10.203.220.75','Opera/9.50 (X11; Linux x86_64; en-US) Presto/2.10.342 Version/10.00','2024-07-28 20:26:58','2024-08-09 11:08:20'),(28,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',8,'http://localhost','Loyal Kuphal','rylan.goyette@treutel.com','https://friendsofbotble.com','I\'ll definitely come back to this article for reference.','approved','106.193.3.182','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_1) AppleWebKit/537.0 (KHTML, like Gecko) Chrome/93.0.4601.76 Safari/537.0 Edg/93.01087.91','2024-07-11 12:19:51','2024-08-09 11:08:20'),(29,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',1,'http://localhost','Skyla Weber','ispinka@medhurst.net','https://friendsofbotble.com','I\'ve shared this on social media, it\'s too good not to share.','approved','121.54.183.246','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6 rv:5.0; sl-SI) AppleWebKit/533.21.7 (KHTML, like Gecko) Version/4.1 Safari/533.21.7','2024-08-07 23:03:02','2024-08-09 11:08:20'),(30,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',18,'http://localhost','Miss Yolanda Tillman IV','shyanne.watsica@hartmann.net','https://friendsofbotble.com','This article presents a balanced view on a controversial topic.','approved','121.64.99.212','Mozilla/5.0 (X11; Linux i686) AppleWebKit/5360 (KHTML, like Gecko) Chrome/40.0.883.0 Mobile Safari/5360','2024-07-18 21:26:45','2024-08-09 11:08:20'),(31,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',16,'http://localhost','Mr. Mathias Howe IV','herman.breanna@hotmail.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s a gem.','approved','196.56.122.223','Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/533.1 (KHTML, like Gecko) Version/15.0 EdgiOS/89.01041.17 Mobile/15E148 Safari/533.1','2024-07-13 05:27:37','2024-08-09 11:08:20'),(32,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',20,'http://localhost','Prof. Oswaldo Moen','bbeier@kohler.com','https://friendsofbotble.com','I\'ve been struggling with this, your article helped a lot.','approved','98.122.207.123','Opera/9.63 (X11; Linux i686; nl-NL) Presto/2.11.193 Version/12.00','2024-07-16 00:59:55','2024-08-09 11:08:20'),(33,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',18,'http://localhost','Aaliyah Lowe','alice91@schultz.com','https://friendsofbotble.com','I\'ve learned something new today, thanks to this article.','approved','36.178.188.133','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_3) AppleWebKit/537.2 (KHTML, like Gecko) Chrome/79.0.4812.84 Safari/537.2 Edg/79.01100.65','2024-07-29 10:52:57','2024-08-09 11:08:20'),(34,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',15,'http://localhost','Adrain Mosciski','shannon45@veum.biz','https://friendsofbotble.com','Kudos to the author for a well-researched piece.','approved','21.102.118.202','Opera/9.34 (Windows NT 5.2; nl-NL) Presto/2.12.231 Version/10.00','2024-07-16 21:40:31','2024-08-09 11:08:20'),(35,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',17,'http://localhost','Oscar Koepp','kariane.wisoky@hahn.com','https://friendsofbotble.com','I\'m impressed by the depth of knowledge demonstrated here.','approved','62.76.71.89','Opera/9.75 (Windows CE; en-US) Presto/2.8.318 Version/11.00','2024-07-10 22:04:57','2024-08-09 11:08:20'),(36,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',2,'http://localhost','Quinn Kuhic','tillman.estella@oconnell.com','https://friendsofbotble.com','This article challenged my assumptions in a good way.','approved','239.28.97.45','Mozilla/5.0 (X11; Linux i686) AppleWebKit/5310 (KHTML, like Gecko) Chrome/36.0.827.0 Mobile Safari/5310','2024-07-30 15:48:24','2024-08-09 11:08:20'),(37,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',6,'http://localhost','Miss Layla Morissette II','bnikolaus@feest.org','https://friendsofbotble.com','I\'ve shared this with my colleagues, it\'s worth discussing.','approved','156.83.39.13','Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5352 (KHTML, like Gecko) Chrome/36.0.819.0 Mobile Safari/5352','2024-07-20 08:36:55','2024-08-09 11:08:20'),(38,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',13,'http://localhost','Sibyl Oberbrunner','rschiller@gmail.com','https://friendsofbotble.com','The information presented here is very valuable.','approved','98.222.21.70','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 5.1; Trident/4.0)','2024-07-14 15:30:15','2024-08-09 11:08:20'),(39,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',17,'http://localhost','Walter Flatley','floy17@gmail.com','https://friendsofbotble.com','You have a talent for explaining complex topics clearly.','approved','120.117.160.131','Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20161008 Firefox/35.0','2024-07-14 04:27:46','2024-08-09 11:08:20'),(40,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',11,'http://localhost','Bill Russel','monahan.benjamin@gmail.com','https://friendsofbotble.com','I\'m inspired to learn more about this after reading your article.','approved','213.207.237.185','Mozilla/5.0 (Windows; U; Windows NT 5.1) AppleWebKit/532.35.6 (KHTML, like Gecko) Version/4.0 Safari/532.35.6','2024-07-24 23:21:16','2024-08-09 11:08:20'),(41,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',20,'http://localhost','Guy Smith','isabell89@block.com','https://friendsofbotble.com','This article deserves wider recognition.','approved','88.35.115.137','Opera/8.37 (Windows NT 5.1; sl-SI) Presto/2.10.215 Version/12.00','2024-07-27 23:41:40','2024-08-09 11:08:20'),(42,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',8,'http://localhost','Abraham Herman','wilburn95@borer.com','https://friendsofbotble.com','I\'m grateful for the insights shared in this piece.','approved','210.95.91.128','Mozilla/5.0 (iPhone; CPU iPhone OS 14_1 like Mac OS X) AppleWebKit/535.1 (KHTML, like Gecko) Version/15.0 EdgiOS/86.01076.9 Mobile/15E148 Safari/535.1','2024-07-14 21:14:06','2024-08-09 11:08:20'),(43,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',4,'http://localhost','Leda Gleichner IV','philpert@hotmail.com','https://friendsofbotble.com','The author presents a balanced view on a controversial topic.','approved','16.20.221.32','Mozilla/5.0 (iPad; CPU OS 8_2_2 like Mac OS X; en-US) AppleWebKit/532.18.2 (KHTML, like Gecko) Version/3.0.5 Mobile/8B113 Safari/6532.18.2','2024-07-10 03:15:22','2024-08-09 11:08:20'),(44,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',14,'http://localhost','Mac Hansen','xmills@yahoo.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s','approved','57.7.189.55','Opera/9.63 (Windows NT 6.2; en-US) Presto/2.12.203 Version/11.00','2024-07-09 16:40:03','2024-08-09 11:08:20'),(45,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',11,'http://localhost','Prof. Murl Legros','johns.zoie@feeney.com','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article. It\'s incredibly insightful and provides a comprehensive overview of the subject matter. I appreciate the effort put into researching and writing this piece. It\'s truly eye-opening and has given me a new perspective. Thank you for sharing your knowledge with us!','approved','48.155.18.230','Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.1)','2024-07-22 19:24:30','2024-08-09 11:08:20'),(46,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',11,'http://localhost','Dr. Eldred Altenwerth II','russel.lizeth@abshire.info','https://friendsofbotble.com','This article is a masterpiece! It dives deep into the topic and offers valuable insights that are both thought-provoking and enlightening. The author\'s expertise is evident throughout, making it a compelling read from start to finish. I\'ll definitely be coming back to this for reference in the future.','approved','200.52.253.121','Mozilla/5.0 (X11; Linux i686) AppleWebKit/5310 (KHTML, like Gecko) Chrome/40.0.805.0 Mobile Safari/5310','2024-08-03 08:05:13','2024-08-09 11:08:20'),(47,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',18,'http://localhost','Reuben Robel','ruthie37@mclaughlin.com','https://friendsofbotble.com','I\'m amazed by the depth of analysis in this article. It covers a wide range of aspects related to the topic, providing a comprehensive understanding. The clarity of explanation is commendable, making complex concepts easy to grasp. This article has enriched my understanding and sparked further curiosity. Kudos to the author!','approved','176.222.90.97','Opera/9.74 (X11; Linux x86_64; sl-SI) Presto/2.12.283 Version/12.00','2024-07-15 09:49:36','2024-08-09 11:08:20');
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
INSERT INTO `galleries` VALUES (1,'Perfect','Eos eveniet dignissimos laborum quia. Vero possimus reiciendis provident ut deserunt.',0,0,'main/news/1.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(2,'New Day','Reiciendis suscipit et et tempore vel quia est. Laborum consequatur repellat fuga minima dolores. A ut eveniet eaque. In adipisci ut aut est.',0,0,'main/news/2.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(3,'Happy Day','Quo molestiae praesentium natus reiciendis totam quia. Inventore reiciendis iure est ut ut saepe.',0,0,'main/news/3.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(4,'Nature','Eligendi magnam expedita aliquid illum. Quo voluptatum quae ducimus occaecati velit.',0,0,'main/news/4.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(5,'Morning','Repellendus vitae non pariatur aut facere quae quia. Ex harum pariatur beatae est. Veniam et expedita ullam quia amet qui.',0,0,'main/news/5.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(6,'Sunset','Esse nostrum labore autem earum totam et animi. Voluptatum incidunt quia maxime dolor id tempore. Et est labore animi reprehenderit occaecati quos.',0,0,'main/news/6.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(7,'Ocean Views','Ut sint sequi eligendi fuga ratione explicabo molestiae. Ab sed ut quia qui est. Itaque totam reprehenderit maxime possimus.',0,0,'main/news/7.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(8,'Adventure Time','Laborum recusandae sequi asperiores consequatur ut in. Sit vel architecto perferendis necessitatibus quia. Modi sint dolore accusantium vel dolores.',0,0,'main/news/8.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(9,'City Lights','Aliquam aliquid corrupti perspiciatis. Facere tempore nihil ut harum adipisci ea.',0,0,'main/news/9.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(10,'Dreamscape','Vitae debitis dolores est saepe dolor. Nulla tempore delectus porro ut. Amet a quia voluptas fugit aliquid tempora tempora.',0,0,'main/news/10.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(11,'Enchanted Forest','Delectus et maxime eum cum eius nam explicabo tempora. Quod ab eum perferendis officia voluptas. Rerum aut reprehenderit dolores quas beatae quam id.',0,0,'main/news/11.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(12,'Golden Hour','Id reiciendis provident voluptas cupiditate est blanditiis quia. Culpa ut quia sit ipsa necessitatibus alias. Voluptatem magni quia vel qui.',0,0,'main/news/12.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(13,'Serenity','Enim similique non ut. Sed impedit sed pariatur aut eveniet iste.',0,0,'main/news/13.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(14,'Eternal Beauty','Non et architecto aut. Quibusdam deleniti eius quia cum est voluptatibus. Illo incidunt placeat facere quis. Cupiditate sit dolorum dolorem.',0,0,'main/news/14.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(15,'Moonlight Magic','Atque incidunt sit nemo nesciunt quia explicabo. Maiores non libero quia dolores. At commodi accusamus minus voluptas modi explicabo.',0,0,'main/news/15.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(16,'Starry Night','Laborum qui et nobis. Ex et sunt consequatur facere labore sunt. Aut quam qui porro ut optio.',0,0,'main/news/16.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(17,'Hidden Gems','Pariatur voluptas hic tempore. Et eum modi quis. Est et omnis facere est explicabo consequatur.',0,0,'main/news/17.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(18,'Tranquil Waters','Voluptatem necessitatibus et voluptatum magnam. Pariatur et hic corporis.',0,0,'main/news/18.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(19,'Urban Escape','Aliquid rerum non quia et. Dolores esse voluptatem libero placeat est. Vel sed hic consequatur qui. Repellat earum asperiores sunt architecto.',0,0,'main/news/19.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(20,'Twilight Zone','Aliquid sed tenetur eum. Quaerat non officiis magnam ut consequuntur culpa. Ut officiis quia hic ut et. Sit vero ut quasi magni rem.',0,0,'main/news/20.jpg',1,'published','2024-08-09 11:08:17','2024-08-09 11:08:17');
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
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(2,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(3,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(4,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(5,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(6,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(7,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',7,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(8,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',8,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(9,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',9,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(10,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',10,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(11,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',11,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(12,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',12,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(13,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',13,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(14,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',14,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(15,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',15,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(16,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',16,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(17,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',17,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(18,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',18,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(19,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',19,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17'),(20,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',20,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:08:17','2024-08-09 11:08:17');
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
INSERT INTO `language_meta` VALUES (1,'en_US','d43b6fe446b8146c1172280e4df5fe2e',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','a6b6e9f21afabf9de1c984b793b5e50c',1,'Botble\\Menu\\Models\\Menu');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'about-1','about-1',2,'image/png',8467,'main/general/about-1.png','[]','2024-08-09 11:07:47','2024-08-09 11:07:47',NULL,'public'),(2,0,'about-2','about-2',2,'image/png',8467,'main/general/about-2.png','[]','2024-08-09 11:07:47','2024-08-09 11:07:47',NULL,'public'),(3,0,'about-video-1','about-video-1',2,'image/png',20777,'main/general/about-video-1.png','[]','2024-08-09 11:07:47','2024-08-09 11:07:47',NULL,'public'),(4,0,'ads-banner','ads-banner',2,'image/png',75705,'main/general/ads-banner.png','[]','2024-08-09 11:07:48','2024-08-09 11:07:48',NULL,'public'),(5,0,'app-downloads','app-downloads',2,'image/png',7092,'main/general/app-downloads.png','[]','2024-08-09 11:07:48','2024-08-09 11:07:48',NULL,'public'),(6,0,'blog-3','blog-3',2,'image/png',5919,'main/general/blog-3.png','[]','2024-08-09 11:07:48','2024-08-09 11:07:48',NULL,'public'),(7,0,'blog-4','blog-4',2,'image/png',5919,'main/general/blog-4.png','[]','2024-08-09 11:07:48','2024-08-09 11:07:48',NULL,'public'),(8,0,'blog-5','blog-5',2,'image/png',8614,'main/general/blog-5.png','[]','2024-08-09 11:07:48','2024-08-09 11:07:48',NULL,'public'),(9,0,'blog-shape-image','blog-shape-image',2,'image/png',1182,'main/general/blog-shape-image.png','[]','2024-08-09 11:07:49','2024-08-09 11:07:49',NULL,'public'),(10,0,'favicon','favicon',2,'image/png',693,'main/general/favicon.png','[]','2024-08-09 11:07:49','2024-08-09 11:07:49',NULL,'public'),(11,0,'logo-dark','logo-dark',2,'image/png',2098,'main/general/logo-dark.png','[]','2024-08-09 11:07:49','2024-08-09 11:07:49',NULL,'public'),(12,0,'logo','logo',2,'image/png',2593,'main/general/logo.png','[]','2024-08-09 11:07:49','2024-08-09 11:07:49',NULL,'public'),(13,0,'newsletter-image','newsletter-image',2,'image/png',22929,'main/general/newsletter-image.png','[]','2024-08-09 11:07:49','2024-08-09 11:07:49',NULL,'public'),(14,0,'newsletter-popup','newsletter-popup',2,'image/png',24175,'main/general/newsletter-popup.png','[]','2024-08-09 11:07:49','2024-08-09 11:07:49',NULL,'public'),(15,0,'signature','signature',2,'image/png',2197,'main/general/signature.png','[]','2024-08-09 11:07:49','2024-08-09 11:07:49',NULL,'public'),(16,0,'1','1',3,'image/png',9803,'main/members/1.png','[]','2024-08-09 11:07:50','2024-08-09 11:07:50',NULL,'public'),(17,0,'2','2',3,'image/png',9803,'main/members/2.png','[]','2024-08-09 11:07:50','2024-08-09 11:07:50',NULL,'public'),(18,0,'3','3',3,'image/png',9803,'main/members/3.png','[]','2024-08-09 11:07:50','2024-08-09 11:07:50',NULL,'public'),(19,0,'4','4',3,'image/png',9803,'main/members/4.png','[]','2024-08-09 11:07:50','2024-08-09 11:07:50',NULL,'public'),(20,0,'5','5',3,'image/png',9803,'main/members/5.png','[]','2024-08-09 11:07:51','2024-08-09 11:07:51',NULL,'public'),(21,0,'6','6',3,'image/png',9803,'main/members/6.png','[]','2024-08-09 11:07:51','2024-08-09 11:07:51',NULL,'public'),(22,0,'7','7',3,'image/png',9803,'main/members/7.png','[]','2024-08-09 11:07:51','2024-08-09 11:07:51',NULL,'public'),(23,0,'8','8',3,'image/png',9803,'main/members/8.png','[]','2024-08-09 11:07:51','2024-08-09 11:07:51',NULL,'public'),(24,0,'1','1',4,'image/jpeg',33268,'main/news/1.jpg','[]','2024-08-09 11:07:54','2024-08-09 11:07:54',NULL,'public'),(25,0,'10','10',4,'image/jpeg',33268,'main/news/10.jpg','[]','2024-08-09 11:07:54','2024-08-09 11:07:54',NULL,'public'),(26,0,'11','11',4,'image/jpeg',33268,'main/news/11.jpg','[]','2024-08-09 11:07:55','2024-08-09 11:07:55',NULL,'public'),(27,0,'12','12',4,'image/jpeg',33268,'main/news/12.jpg','[]','2024-08-09 11:07:55','2024-08-09 11:07:55',NULL,'public'),(28,0,'13','13',4,'image/jpeg',33268,'main/news/13.jpg','[]','2024-08-09 11:07:55','2024-08-09 11:07:55',NULL,'public'),(29,0,'14','14',4,'image/jpeg',33268,'main/news/14.jpg','[]','2024-08-09 11:07:56','2024-08-09 11:07:56',NULL,'public'),(30,0,'15','15',4,'image/jpeg',33268,'main/news/15.jpg','[]','2024-08-09 11:07:56','2024-08-09 11:07:56',NULL,'public'),(31,0,'16','16',4,'image/jpeg',33268,'main/news/16.jpg','[]','2024-08-09 11:07:57','2024-08-09 11:07:57',NULL,'public'),(32,0,'17','17',4,'image/jpeg',33268,'main/news/17.jpg','[]','2024-08-09 11:07:57','2024-08-09 11:07:57',NULL,'public'),(33,0,'18','18',4,'image/jpeg',33268,'main/news/18.jpg','[]','2024-08-09 11:07:58','2024-08-09 11:07:58',NULL,'public'),(34,0,'19','19',4,'image/jpeg',33268,'main/news/19.jpg','[]','2024-08-09 11:07:58','2024-08-09 11:07:58',NULL,'public'),(35,0,'2','2',4,'image/jpeg',33268,'main/news/2.jpg','[]','2024-08-09 11:07:58','2024-08-09 11:07:58',NULL,'public'),(36,0,'20','20',4,'image/jpeg',33268,'main/news/20.jpg','[]','2024-08-09 11:07:59','2024-08-09 11:07:59',NULL,'public'),(37,0,'3','3',4,'image/jpeg',33268,'main/news/3.jpg','[]','2024-08-09 11:07:59','2024-08-09 11:07:59',NULL,'public'),(38,0,'4','4',4,'image/jpeg',33268,'main/news/4.jpg','[]','2024-08-09 11:08:00','2024-08-09 11:08:00',NULL,'public'),(39,0,'5','5',4,'image/jpeg',33268,'main/news/5.jpg','[]','2024-08-09 11:08:00','2024-08-09 11:08:00',NULL,'public'),(40,0,'6','6',4,'image/jpeg',33268,'main/news/6.jpg','[]','2024-08-09 11:08:00','2024-08-09 11:08:00',NULL,'public'),(41,0,'7','7',4,'image/jpeg',33268,'main/news/7.jpg','[]','2024-08-09 11:08:01','2024-08-09 11:08:01',NULL,'public'),(42,0,'8','8',4,'image/jpeg',33268,'main/news/8.jpg','[]','2024-08-09 11:08:02','2024-08-09 11:08:02',NULL,'public'),(43,0,'9','9',4,'image/jpeg',33268,'main/news/9.jpg','[]','2024-08-09 11:08:02','2024-08-09 11:08:02',NULL,'public'),(44,0,'audio','audio',5,'audio/mpeg',239584,'main/audio/audio.mp3','[]','2024-08-09 11:08:03','2024-08-09 11:08:03',NULL,'public'),(45,0,'1','1',7,'image/jpeg',33268,'travel/blog-categories/1.jpg','[]','2024-08-09 11:08:03','2024-08-09 11:08:03',NULL,'public'),(46,0,'10','10',7,'image/jpeg',33268,'travel/blog-categories/10.jpg','[]','2024-08-09 11:08:03','2024-08-09 11:08:03',NULL,'public'),(47,0,'2','2',7,'image/jpeg',33268,'travel/blog-categories/2.jpg','[]','2024-08-09 11:08:04','2024-08-09 11:08:04',NULL,'public'),(48,0,'3','3',7,'image/jpeg',33268,'travel/blog-categories/3.jpg','[]','2024-08-09 11:08:04','2024-08-09 11:08:04',NULL,'public'),(49,0,'4','4',7,'image/jpeg',33268,'travel/blog-categories/4.jpg','[]','2024-08-09 11:08:05','2024-08-09 11:08:05',NULL,'public'),(50,0,'5','5',7,'image/jpeg',33268,'travel/blog-categories/5.jpg','[]','2024-08-09 11:08:05','2024-08-09 11:08:05',NULL,'public'),(51,0,'6','6',7,'image/jpeg',33268,'travel/blog-categories/6.jpg','[]','2024-08-09 11:08:06','2024-08-09 11:08:06',NULL,'public'),(52,0,'7','7',7,'image/jpeg',33268,'travel/blog-categories/7.jpg','[]','2024-08-09 11:08:06','2024-08-09 11:08:06',NULL,'public'),(53,0,'8','8',7,'image/jpeg',33268,'travel/blog-categories/8.jpg','[]','2024-08-09 11:08:07','2024-08-09 11:08:07',NULL,'public'),(54,0,'9','9',7,'image/jpeg',33268,'travel/blog-categories/9.jpg','[]','2024-08-09 11:08:07','2024-08-09 11:08:07',NULL,'public'),(55,0,'1','1',8,'image/jpeg',33268,'travel/news/1.jpg','[]','2024-08-09 11:08:08','2024-08-09 11:08:08',NULL,'public'),(56,0,'10','10',8,'image/jpeg',33268,'travel/news/10.jpg','[]','2024-08-09 11:08:09','2024-08-09 11:08:09',NULL,'public'),(57,0,'11','11',8,'image/jpeg',33268,'travel/news/11.jpg','[]','2024-08-09 11:08:09','2024-08-09 11:08:09',NULL,'public'),(58,0,'12','12',8,'image/jpeg',33268,'travel/news/12.jpg','[]','2024-08-09 11:08:10','2024-08-09 11:08:10',NULL,'public'),(59,0,'13','13',8,'image/jpeg',33268,'travel/news/13.jpg','[]','2024-08-09 11:08:10','2024-08-09 11:08:10',NULL,'public'),(60,0,'14','14',8,'image/jpeg',33268,'travel/news/14.jpg','[]','2024-08-09 11:08:10','2024-08-09 11:08:10',NULL,'public'),(61,0,'15','15',8,'image/jpeg',33268,'travel/news/15.jpg','[]','2024-08-09 11:08:11','2024-08-09 11:08:11',NULL,'public'),(62,0,'16','16',8,'image/jpeg',33268,'travel/news/16.jpg','[]','2024-08-09 11:08:11','2024-08-09 11:08:11',NULL,'public'),(63,0,'17','17',8,'image/jpeg',33268,'travel/news/17.jpg','[]','2024-08-09 11:08:12','2024-08-09 11:08:12',NULL,'public'),(64,0,'18','18',8,'image/jpeg',33268,'travel/news/18.jpg','[]','2024-08-09 11:08:12','2024-08-09 11:08:12',NULL,'public'),(65,0,'19','19',8,'image/jpeg',33268,'travel/news/19.jpg','[]','2024-08-09 11:08:13','2024-08-09 11:08:13',NULL,'public'),(66,0,'2','2',8,'image/jpeg',33268,'travel/news/2.jpg','[]','2024-08-09 11:08:13','2024-08-09 11:08:13',NULL,'public'),(67,0,'20','20',8,'image/jpeg',33268,'travel/news/20.jpg','[]','2024-08-09 11:08:14','2024-08-09 11:08:14',NULL,'public'),(68,0,'3','3',8,'image/jpeg',33268,'travel/news/3.jpg','[]','2024-08-09 11:08:14','2024-08-09 11:08:14',NULL,'public'),(69,0,'4','4',8,'image/jpeg',33268,'travel/news/4.jpg','[]','2024-08-09 11:08:14','2024-08-09 11:08:14',NULL,'public'),(70,0,'5','5',8,'image/jpeg',33268,'travel/news/5.jpg','[]','2024-08-09 11:08:15','2024-08-09 11:08:15',NULL,'public'),(71,0,'6','6',8,'image/jpeg',33268,'travel/news/6.jpg','[]','2024-08-09 11:08:15','2024-08-09 11:08:15',NULL,'public'),(72,0,'7','7',8,'image/jpeg',33268,'travel/news/7.jpg','[]','2024-08-09 11:08:16','2024-08-09 11:08:16',NULL,'public'),(73,0,'8','8',8,'image/jpeg',33268,'travel/news/8.jpg','[]','2024-08-09 11:08:16','2024-08-09 11:08:16',NULL,'public'),(74,0,'9','9',8,'image/jpeg',33268,'travel/news/9.jpg','[]','2024-08-09 11:08:17','2024-08-09 11:08:17',NULL,'public'),(79,0,'hero-video-1','hero-video-1',10,'video/mp4',16756392,'travel/videos/hero-video-1.mp4','[]','2024-08-09 11:08:18','2024-08-09 11:08:18',NULL,'public'),(80,0,'hero-video-2','hero-video-2',10,'video/mp4',12952095,'travel/videos/hero-video-2.mp4','[]','2024-08-09 11:08:18','2024-08-09 11:08:18',NULL,'public'),(81,0,'hero-video-3','hero-video-3',10,'video/mp4',5886797,'travel/videos/hero-video-3.mp4','[]','2024-08-09 11:08:18','2024-08-09 11:08:18',NULL,'public'),(82,0,'latest-news-bg','latest-news-bg',11,'image/png',130585,'travel/backgrounds/latest-news-bg.png','[]','2024-08-09 11:08:18','2024-08-09 11:08:18',NULL,'public'),(83,0,'newsletter-bg','newsletter-bg',11,'image/png',33683,'travel/backgrounds/newsletter-bg.png','[]','2024-08-09 11:08:18','2024-08-09 11:08:18',NULL,'public'),(84,0,'favicon','favicon',9,'image/png',2691,'travel/general/favicon.png','[]','2024-08-09 11:08:18','2024-08-09 11:08:18',NULL,'public'),(85,0,'logo','logo',9,'image/png',1671,'travel/general/logo.png','[]','2024-08-09 11:08:18','2024-08-09 11:08:18',NULL,'public'),(86,0,'thumb1','thumb1',9,'image/png',4455,'travel/general/thumb1.png','[]','2024-08-09 11:08:18','2024-08-09 11:08:18',NULL,'public'),(87,0,'thumb2','thumb2',9,'image/png',4455,'travel/general/thumb2.png','[]','2024-08-09 11:08:18','2024-08-09 11:08:18',NULL,'public'),(88,0,'breadcrumb','breadcrumb',12,'image/png',109184,'main/backgrounds/breadcrumb.png','[]','2024-08-09 11:08:18','2024-08-09 11:08:18',NULL,'public'),(89,0,'newsletter-bg','newsletter-bg',12,'image/png',15427,'main/backgrounds/newsletter-bg.png','[]','2024-08-09 11:08:19','2024-08-09 11:08:19',NULL,'public'),(90,0,'1','1',13,'image/png',1455,'main/blog-categories/1.png','[]','2024-08-09 11:08:19','2024-08-09 11:08:19',NULL,'public'),(91,0,'2','2',13,'image/png',1455,'main/blog-categories/2.png','[]','2024-08-09 11:08:19','2024-08-09 11:08:19',NULL,'public'),(92,0,'3','3',13,'image/png',1455,'main/blog-categories/3.png','[]','2024-08-09 11:08:19','2024-08-09 11:08:19',NULL,'public'),(93,0,'4','4',13,'image/png',1455,'main/blog-categories/4.png','[]','2024-08-09 11:08:19','2024-08-09 11:08:19',NULL,'public'),(94,0,'5','5',13,'image/png',1455,'main/blog-categories/5.png','[]','2024-08-09 11:08:19','2024-08-09 11:08:19',NULL,'public'),(95,0,'breaking-news-icon','breaking-news-icon',14,'image/png',1133,'main/icons/breaking-news-icon.png','[]','2024-08-09 11:08:19','2024-08-09 11:08:19',NULL,'public');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-08-09 11:07:47','2024-08-09 11:07:47',NULL),(2,0,'general',NULL,'general',1,'2024-08-09 11:07:47','2024-08-09 11:07:47',NULL),(3,0,'members',NULL,'members',1,'2024-08-09 11:07:50','2024-08-09 11:07:50',NULL),(4,0,'news',NULL,'news',1,'2024-08-09 11:07:54','2024-08-09 11:07:54',NULL),(5,0,'audio',NULL,'audio',1,'2024-08-09 11:08:03','2024-08-09 11:08:03',NULL),(6,0,'travel',NULL,'travel',0,'2024-08-09 11:08:03','2024-08-09 11:08:03',NULL),(7,0,'blog-categories',NULL,'blog-categories',6,'2024-08-09 11:08:03','2024-08-09 11:08:03',NULL),(8,0,'news',NULL,'news',6,'2024-08-09 11:08:08','2024-08-09 11:08:08',NULL),(9,0,'general',NULL,'general',6,'2024-08-09 11:08:17','2024-08-09 11:08:17',NULL),(10,0,'videos',NULL,'videos',6,'2024-08-09 11:08:18','2024-08-09 11:08:18',NULL),(11,0,'backgrounds',NULL,'backgrounds',6,'2024-08-09 11:08:18','2024-08-09 11:08:18',NULL),(12,0,'backgrounds',NULL,'backgrounds',1,'2024-08-09 11:08:18','2024-08-09 11:08:18',NULL),(13,0,'blog-categories',NULL,'blog-categories',1,'2024-08-09 11:08:19','2024-08-09 11:08:19',NULL),(14,0,'icons',NULL,'icons',1,'2024-08-09 11:08:19','2024-08-09 11:08:19',NULL);
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
INSERT INTO `members` VALUES (1,'John','Smith','I\'m not used to queer things.',NULL,'member@archielite.com','$2y$12$wVirY8AQUkMLWELj4ys1Ou2hA42mSc7X4ayT0HY/vAlda9LGiL2Pq',16,'2008-01-22','(361) 792-3931','2024-08-09 18:07:51',NULL,NULL,'2024-08-09 11:07:52','2024-08-09 11:07:52','published'),(2,'Macy','Larkin','Hi, I’m Macy Larkin, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'lakin.triston@thiel.info','$2y$12$BTJ0PD3F8.V6mmRbRuVbVuDBNqD8gkwntlW2iCxQA.nWFT0iOHKEu',17,'1986-10-04','+1-828-626-9064','2024-08-09 18:07:51',NULL,NULL,'2024-08-09 11:07:52','2024-08-09 11:07:52','published'),(3,'Brandyn','D\'Amore','Hi, I’m Brandyn D\'Amore, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'mario39@gmail.com','$2y$12$1nfmvdIv3U/EQtaEIiTtKO41Jmx33jWhtAfPj81aTrQEF0Jb6v6mO',18,'2003-06-06','309-461-5624','2024-08-09 18:07:51',NULL,NULL,'2024-08-09 11:07:52','2024-08-09 11:07:52','published'),(4,'Joan','Considine','Hi, I’m Joan Considine, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'janelle.koss@gmail.com','$2y$12$Wsf9vOmGvLKvSousUSKfZuV7QtHDZdSEqLSFBxsq5JsO7ynSWqN7y',19,'2007-12-20','507.324.6839','2024-08-09 18:07:51',NULL,NULL,'2024-08-09 11:07:52','2024-08-09 11:07:52','published'),(5,'Efren','Hane','Hi, I’m Efren Hane, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'gwintheiser@kuhic.info','$2y$12$av2ou1VIduamcqkjJtFVNOR3uuMQvemscsw3ofZuViY64gH545qz.',20,'2001-07-02','820.531.6825','2024-08-09 18:07:51',NULL,NULL,'2024-08-09 11:07:53','2024-08-09 11:07:53','published'),(6,'Sasha','Bernier','Hi, I’m Sasha Bernier, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'cummings.willard@satterfield.com','$2y$12$tOqDV6w8JRDBMkdrxxv1uucmn/OOy67D4oroFoVHJLsaKrxwRs3jC',21,'1999-11-11','+1 (830) 980-2624','2024-08-09 18:07:51',NULL,NULL,'2024-08-09 11:07:53','2024-08-09 11:07:53','published'),(7,'Maiya','Christiansen','Hi, I’m Maiya Christiansen, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'spencer.macie@wunsch.com','$2y$12$P7PxelM2Z.Oo/qBOe24e6eddu6X1YJ.y7OsVDsY8MyA8aUdqlU0xa',22,'1977-04-24','270.482.9081','2024-08-09 18:07:51',NULL,NULL,'2024-08-09 11:07:53','2024-08-09 11:07:53','published'),(8,'Vena','Wiza','Hi, I’m Vena Wiza, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'iquigley@gmail.com','$2y$12$G5iXATk.nkWYetRpScAB3O3080ee.PfRSVc7CMmS4e2zKYQeHIPA2',23,'2016-07-09','(734) 838-5943','2024-08-09 18:07:51',NULL,NULL,'2024-08-09 11:07:53','2024-08-09 11:07:53','published');
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-08-09 11:08:19','2024-08-09 11:08:19');
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
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-08-09 11:08:19','2024-08-09 11:08:19'),(2,1,1,NULL,NULL,'https://echo-sports.archielite.com',NULL,0,'Home Sports',NULL,'_self',0,'2024-08-09 11:08:19','2024-08-09 11:08:19'),(3,1,1,NULL,NULL,'https://echo-travel.archielite.com',NULL,0,'Home Travel',NULL,'_self',0,'2024-08-09 11:08:19','2024-08-09 11:08:19'),(4,1,1,NULL,NULL,'https://echo-ai.archielite.com',NULL,0,'Home AI',NULL,'_self',0,'2024-08-09 11:08:19','2024-08-09 11:08:19'),(5,1,1,NULL,NULL,'https://echo-politics.archielite.com',NULL,0,'Home Politics',NULL,'_self',0,'2024-08-09 11:08:19','2024-08-09 11:08:19'),(6,1,1,NULL,NULL,'https://echo-food.archielite.com',NULL,0,'Home Food',NULL,'_self',0,'2024-08-09 11:08:19','2024-08-09 11:08:19'),(7,1,1,NULL,NULL,'https://echo-photography.archielite.com',NULL,0,'Home Photography',NULL,'_self',0,'2024-08-09 11:08:20','2024-08-09 11:08:20'),(8,1,1,NULL,NULL,'https://echo.archielite.com',NULL,0,'Home News',NULL,'_self',0,'2024-08-09 11:08:20','2024-08-09 11:08:20'),(9,1,1,NULL,NULL,'https://echo-fashion.archielite.com',NULL,0,'Home Fashion',NULL,'_self',0,'2024-08-09 11:08:20','2024-08-09 11:08:20'),(10,1,1,NULL,NULL,'https://echo-technology.archielite.com',NULL,0,'Home Technology',NULL,'_self',0,'2024-08-09 11:08:20','2024-08-09 11:08:20'),(11,1,1,NULL,NULL,'https://echo-gaming.archielite.com',NULL,0,'Home Gaming',NULL,'_self',0,'2024-08-09 11:08:20','2024-08-09 11:08:20'),(12,1,0,NULL,NULL,'/',NULL,0,'Pages',NULL,'_self',1,'2024-08-09 11:08:20','2024-08-09 11:08:20'),(13,1,12,NULL,NULL,'/about-us',NULL,0,'About',NULL,'_self',0,'2024-08-09 11:08:20','2024-08-09 11:08:20'),(14,1,12,NULL,NULL,'/author/smith',NULL,0,'Author',NULL,'_self',0,'2024-08-09 11:08:20','2024-08-09 11:08:20'),(15,1,12,NULL,NULL,'/team',NULL,0,'Team',NULL,'_self',0,'2024-08-09 11:08:20','2024-08-09 11:08:20'),(16,1,12,NULL,NULL,'/error-page',NULL,0,'Error Page',NULL,'_self',0,'2024-08-09 11:08:20','2024-08-09 11:08:20'),(17,1,0,NULL,NULL,'/blog',NULL,0,'Blog',NULL,'_self',1,'2024-08-09 11:08:20','2024-08-09 11:08:20'),(18,1,17,NULL,NULL,'/blog?style=card',NULL,0,'Blog Card',NULL,'_self',0,'2024-08-09 11:08:20','2024-08-09 11:08:20'),(19,1,17,NULL,NULL,'/blog?style=list',NULL,0,'Blog List',NULL,'_self',0,'2024-08-09 11:08:20','2024-08-09 11:08:20'),(20,1,17,NULL,NULL,'/blog?style=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-08-09 11:08:20','2024-08-09 11:08:20'),(21,1,17,NULL,NULL,'/blog?style=mixed',NULL,0,'Blog Mixed',NULL,'_self',0,'2024-08-09 11:08:20','2024-08-09 11:08:20'),(22,1,0,1,'Botble\\Blog\\Models\\Post','/blog/exploring-the-enchanting-streets-of-paris',NULL,0,'Post',NULL,'_self',0,'2024-08-09 11:08:20','2024-08-09 11:08:20'),(23,1,0,NULL,NULL,'contact',NULL,0,'Contact',NULL,'_self',0,'2024-08-09 11:08:20','2024-08-09 11:08:20');
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
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-08-09 11:08:19','2024-08-09 11:08:19');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'title','[\"Marketing Director\"]',1,'Botble\\Member\\Models\\Member','2024-08-09 11:07:52','2024-08-09 11:07:52'),(2,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',1,'Botble\\Member\\Models\\Member','2024-08-09 11:07:52','2024-08-09 11:07:52'),(3,'title','[\"Sr. Manager\"]',2,'Botble\\Member\\Models\\Member','2024-08-09 11:07:52','2024-08-09 11:07:52'),(4,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',2,'Botble\\Member\\Models\\Member','2024-08-09 11:07:52','2024-08-09 11:07:52'),(5,'title','[\"Creative Director\"]',3,'Botble\\Member\\Models\\Member','2024-08-09 11:07:52','2024-08-09 11:07:52'),(6,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',3,'Botble\\Member\\Models\\Member','2024-08-09 11:07:52','2024-08-09 11:07:52'),(7,'title','[\"Chef Editor\"]',4,'Botble\\Member\\Models\\Member','2024-08-09 11:07:52','2024-08-09 11:07:52'),(8,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',4,'Botble\\Member\\Models\\Member','2024-08-09 11:07:52','2024-08-09 11:07:52'),(9,'title','[\"Chef Editor\"]',5,'Botble\\Member\\Models\\Member','2024-08-09 11:07:53','2024-08-09 11:07:53'),(10,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',5,'Botble\\Member\\Models\\Member','2024-08-09 11:07:53','2024-08-09 11:07:53'),(11,'title','[\"Chef Editor\"]',6,'Botble\\Member\\Models\\Member','2024-08-09 11:07:53','2024-08-09 11:07:53'),(12,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',6,'Botble\\Member\\Models\\Member','2024-08-09 11:07:53','2024-08-09 11:07:53'),(13,'title','[\"Sr. Manager\"]',7,'Botble\\Member\\Models\\Member','2024-08-09 11:07:53','2024-08-09 11:07:53'),(14,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',7,'Botble\\Member\\Models\\Member','2024-08-09 11:07:53','2024-08-09 11:07:53'),(15,'title','[\"Chef Editor\"]',8,'Botble\\Member\\Models\\Member','2024-08-09 11:07:53','2024-08-09 11:07:53'),(16,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',8,'Botble\\Member\\Models\\Member','2024-08-09 11:07:53','2024-08-09 11:07:53'),(17,'image','[\"travel\\/blog-categories\\/1.jpg\"]',1,'Botble\\Blog\\Models\\Category','2024-08-09 11:08:08','2024-08-09 11:08:08'),(18,'image','[\"travel\\/blog-categories\\/2.jpg\"]',2,'Botble\\Blog\\Models\\Category','2024-08-09 11:08:08','2024-08-09 11:08:08'),(19,'image','[\"travel\\/blog-categories\\/3.jpg\"]',3,'Botble\\Blog\\Models\\Category','2024-08-09 11:08:08','2024-08-09 11:08:08'),(20,'image','[\"travel\\/blog-categories\\/4.jpg\"]',4,'Botble\\Blog\\Models\\Category','2024-08-09 11:08:08','2024-08-09 11:08:08'),(21,'image','[\"travel\\/blog-categories\\/5.jpg\"]',5,'Botble\\Blog\\Models\\Category','2024-08-09 11:08:08','2024-08-09 11:08:08'),(22,'image','[\"travel\\/blog-categories\\/6.jpg\"]',6,'Botble\\Blog\\Models\\Category','2024-08-09 11:08:08','2024-08-09 11:08:08'),(23,'image','[\"travel\\/blog-categories\\/7.jpg\"]',7,'Botble\\Blog\\Models\\Category','2024-08-09 11:08:08','2024-08-09 11:08:08'),(24,'image','[\"travel\\/blog-categories\\/8.jpg\"]',8,'Botble\\Blog\\Models\\Category','2024-08-09 11:08:08','2024-08-09 11:08:08'),(25,'image','[\"travel\\/blog-categories\\/9.jpg\"]',9,'Botble\\Blog\\Models\\Category','2024-08-09 11:08:08','2024-08-09 11:08:08'),(26,'image','[\"travel\\/blog-categories\\/10.jpg\"]',10,'Botble\\Blog\\Models\\Category','2024-08-09 11:08:08','2024-08-09 11:08:08'),(27,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',2,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(28,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',3,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(29,'audio','[\"main\\/audio\\/audio.mp3\"]',4,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(30,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',5,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(31,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',6,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(32,'audio','[\"main\\/audio\\/audio.mp3\"]',7,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(33,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',8,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(34,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',9,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(35,'audio','[\"main\\/audio\\/audio.mp3\"]',10,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(36,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',11,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(37,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',12,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(38,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',14,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(39,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',15,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(40,'audio','[\"main\\/audio\\/audio.mp3\"]',16,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(41,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',17,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(42,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',18,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(43,'audio','[\"main\\/audio\\/audio.mp3\"]',19,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17'),(44,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',20,'Botble\\Blog\\Models\\Post','2024-08-09 11:08:17','2024-08-09 11:08:17');
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
INSERT INTO `pages` VALUES (1,'Homepage','<div>[hero-slider quantity=\"3\" title_1=\"Explore the Indonesia \" media_1=\"travel/videos/hero-video-1.mp4\" thumb_1=\"travel/general/thumb1.png\" button_url_1=\"/\" button_label_1=\"Read more\" title_2=\"Explore the Nepal\" media_2=\"travel/videos/hero-video-2.mp4\" thumb_2=\"travel/general/thumb2.png\" button_url_2=\"/\" button_label_2=\"Read more\" title_3=\"Explore the India\" media_3=\"travel/videos/hero-video-3.mp4\" thumb_3=\"travel/general/thumb1.png\" button_url_3=\"/\" button_label_3=\"Read more\"][/hero-slider]</div><div>[blog-categories enable_lazy_loading=\"yes\" style=\"style-3\" category_ids=\"2,3,5,7\" number_of_post_per_category=\"3\" title_align=\"start\" text_color=\"rgb(255, 255, 255)\" background_color=\"transparent\" background_image=\"travel/backgrounds/latest-news-bg.png\"][/blog-categories]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-12\" limit=\"6\" title_align=\"start\" text_color=\"transparent\" background_color=\"transparent\" sidebar=\"custom_sidebar_1\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-4\" title=\"Editor\'s Picks\" limit=\"4\" title_align=\"start\" text_color=\"#ffffff\" background_color=\"#714707\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-5\" title=\"Popular Story\" limit=\"6\" title_align=\"start\" text_color=\"transparent\" background_color=\"transparent\"][/blog-posts]</div><div>[newsletter title=\"Subscribe to Newsletter\" button_label=\"subscribe\" text_color=\"rgb(255, 255, 255)\" background_color=\"transparent\" background_image=\"travel/backgrounds/newsletter-bg.png\"][/newsletter]</div><div>[gallery limit=\"5\" text_color=\"#fff\" background_color=\"#181823\"][/gallery]</div>',1,NULL,'homepage',NULL,'published','2024-08-09 11:08:17','2024-08-09 11:08:18'),(2,'About us','<div>[about-us title=\"Know our Publication Media & Vision.\" subtitle=\"Bring To The Table Win-Win Survival Strategies To Ensure Proactive Domination. At The End Of The Day Going.\" description=\"Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the over holistic world view of disruptive innovation via workplace diversity and Bring to the table win-win survival strategies to ensure proactive fin domination. At the end of the day, going forward, a new normal.\" staff_name=\"Raihawly Williamson\" staff_description=\"CEO, Echo Publishing Inc.\" staff_signature=\"main/general/signature.png\" first_image=\"main/general/about-1.png\" second_image=\"main/general/about-2.png\"][/about-us]</div><div>[intro-video image=\"main/general/about-video-1.png\" video_url=\"https://www.youtube.com/watch?v=Y1t6rjWYNro\" play_icon=\"ti ti-player-play-filled\"][/intro-video]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(3,'Contact','<div>[contact-form title=\"General Customer Care & Technical Support\" description=\"We’re here to assist you with any questions or technical issues you may have. Please fill out the form below, and our dedicated team will respond promptly to ensure you have a seamless experience with us.\" button_label=\"Send Message\" button_icon=\"ti ti-arrow-right\" quantity=\"3\" title_1=\"Location\" description_1=\"The Business Centre132, New York 12401. United States\" icon_1=\"ti ti-map-pin\" url_1=\"\" open_in_new_tab_1=\"yes\" title_2=\"Email Address\" description_2=\"info@yourmail.com\" icon_2=\"ti ti-mail\" url_2=\"mailto:info@yourmail.com\" open_in_new_tab_2=\"yes\" title_3=\"Phone\" description_3=\"(00) 123 456 789 99\" icon_3=\"ti ti-phone\" url_3=\"tel:(00) 123 456 789 99\" open_in_new_tab_3=\"yes\"  address=\"Fortis Downtown Resort\"][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(4,'Blog','---',1,NULL,'full-width',NULL,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(5,'Team','<div>[members title=\"Meet Our Professional Team\" member_ids=\"1,2,3,4,5,6,7,8\"][/members]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(7,'Terms Of Use','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(8,'Privacy Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(9,'Advertise','<h3>Random Content</h3><p>This is a random content that will be displayed on the page.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:08:17','2024-08-09 11:08:17'),(10,'FAQ','<h3>Random Content</h3><p>This is a random content that will be displayed on the page.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:08:17','2024-08-09 11:08:17');
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
INSERT INTO `post_categories` VALUES (10,1),(9,1),(6,2),(4,2),(3,3),(4,4),(1,4),(8,5),(3,5),(2,6),(7,6),(10,7),(4,7),(7,8),(5,8),(7,9),(4,9),(8,10),(5,10),(7,11),(3,11),(3,12),(5,12),(5,13),(7,13),(2,14),(3,14),(9,15),(7,15),(10,16),(7,16),(7,17),(1,17),(3,18),(10,18),(5,19),(6,19),(6,20);
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
INSERT INTO `post_tags` VALUES (3,1),(8,1),(9,1),(8,2),(9,2),(5,2),(8,3),(1,3),(5,3),(9,4),(10,4),(8,4),(8,5),(3,5),(10,5),(9,6),(6,6),(10,7),(4,7),(10,8),(1,8),(2,8),(10,9),(9,9),(6,9),(3,10),(8,10),(4,11),(10,11),(6,11),(3,12),(9,12),(4,13),(5,14),(7,14),(4,14),(1,15),(6,15),(5,15),(5,16),(7,16),(2,16),(9,17),(2,17),(10,18),(8,18),(7,18),(7,19),(4,19),(3,19),(10,20),(9,20);
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
INSERT INTO `posts` VALUES (1,'Exploring the Enchanting Streets of Paris','Stroll along the cobbled streets of Paris, where every corner reveals a new enchantment. From the iconic Eiffel Tower to the charming Montmartre, immerse yourself in the romance and beauty of the City of Light.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',5,'Botble\\Member\\Models\\Member',1,'travel/news/1.jpg',2300,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(2,'Discovering the Wonders of Ancient Rome','Step back in time and explore the ancient wonders of Rome. From the grandeur of the Colosseum to the awe-inspiring ruins of the Roman Forum, experience the rich history and culture of the Eternal City.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',6,'Botble\\Member\\Models\\Member',1,'travel/news/2.jpg',1152,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(3,'Adventures in the Serengeti: A Safari Experience','Embark on a safari adventure in the vast plains of the Serengeti. Witness the majestic herds of wildebeest and zebras, as well as the elusive predators like lions and cheetahs, in their natural habitat.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',1,'Botble\\Member\\Models\\Member',1,'travel/news/3.jpg',1388,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(4,'Journeying Through the Land of Fire and Ice: Iceland','Experience the otherworldly landscapes of Iceland, where fire and ice collide in a symphony of natural wonders. From the cascading waterfalls of Gullfoss to the steaming geysers of Geysir, every moment is a revelation.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',8,'Botble\\Member\\Models\\Member',1,'travel/news/4.jpg',1537,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(5,'Island Paradise: Exploring the Maldives','Escape to the idyllic paradise of the Maldives, where crystal-clear waters and white sandy beaches await. Dive into the vibrant coral reefs, relax in luxurious overwater bungalows, and soak up the sun in this tropical haven.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',6,'Botble\\Member\\Models\\Member',1,'travel/news/5.jpg',161,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(6,'The Majesty of Machu Picchu: Ancient Ruins in the Andes','Trek through the rugged Andes Mountains to discover the ancient Inca citadel of Machu Picchu. Perched high above the clouds, this UNESCO World Heritage Site offers breathtaking views and a glimpse into a bygone civilization.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',7,'Botble\\Member\\Models\\Member',1,'travel/news/6.jpg',2055,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(7,'Cruising the Fjords of Norway: A Journey Through Nature','Set sail on a voyage through the stunning fjords of Norway, where towering cliffs and cascading waterfalls create a dramatic backdrop. From the picturesque villages of Flam to the icy beauty of Sognefjord, each fjord offers a new adventure.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',4,'Botble\\Member\\Models\\Member',1,'travel/news/7.jpg',1068,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(8,'Trekking the Inca Trail to the Lost City of Choquequirao','Embark on a challenging trek along the Inca Trail to discover the hidden ruins of Choquequirao. Tucked away in the Peruvian Andes, this ancient city rivals Machu Picchu in grandeur and offers a more remote and rewarding experience.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',5,'Botble\\Member\\Models\\Member',1,'travel/news/8.jpg',864,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(9,'Sailing the Greek Islands: Sun, Sea, and Ancient Ruins','Set sail on a yacht to explore the enchanting Greek Islands, where azure waters and whitewashed villages await. Discover ancient ruins on islands like Delos and Rhodes, and relax on secluded beaches in this Mediterranean paradise.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',2,'Botble\\Member\\Models\\Member',1,'travel/news/9.jpg',908,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(10,'City of Contrasts: Exploring Tokyo, Japan','Experience the vibrant energy and rich culture of Tokyo, where tradition and modernity coexist in perfect harmony. From the bustling streets of Shibuya to the serene gardens of Meiji Shrine, Tokyo offers a captivating blend of old and new.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',5,'Botble\\Member\\Models\\Member',1,'travel/news/10.jpg',2122,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(11,'Safari Adventure in Kruger National Park, South Africa','Embark on a safari adventure in Kruger National Park, one of Africa\'s largest game reserves. Encounter the \"Big Five\" – lions, elephants, buffaloes, leopards, and rhinos – as well as a diverse array of wildlife in their natural habitat.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',5,'Botble\\Member\\Models\\Member',0,'travel/news/11.jpg',366,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(12,'The Magic of Marrakech: Exploring the Red City','Immerse yourself in the exotic sights and sounds of Marrakech, where ancient history meets bustling markets and vibrant street life. Explore the labyrinthine alleyways of the Medina, visit the iconic Koutoubia Mosque, and experience the magic of Djemaa el-Fna square.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',8,'Botble\\Member\\Models\\Member',0,'travel/news/12.jpg',2373,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(13,'Trekking to Everest Base Camp: A Himalayan Adventure','Embark on the ultimate trekking adventure to Everest Base Camp, where towering peaks and breathtaking vistas await. Journey through remote mountain villages, cross suspension bridges over rushing rivers, and experience the awe-inspiring beauty of the Himalayas.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',6,'Botble\\Member\\Models\\Member',0,'travel/news/13.jpg',1097,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(14,'Cultural Odyssey in Kyoto, Japan: Temples, Tea, and Tradition','Discover the cultural heart of Japan in Kyoto, where ancient temples, traditional tea houses, and serene gardens await. Explore historic sites like Kinkaku-ji and Fushimi Inari Shrine, and immerse yourself in the timeless beauty of this historic city.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',4,'Botble\\Member\\Models\\Member',0,'travel/news/14.jpg',1084,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(15,'Paradise Found: Relaxing in the Seychelles','Escape to the pristine beaches and turquoise waters of the Seychelles, where luxury resorts and untouched nature await. Snorkel among colorful coral reefs, hike through lush rainforests, and unwind on some of the world\'s most beautiful beaches.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',4,'Botble\\Member\\Models\\Member',0,'travel/news/15.jpg',1070,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(16,'A Taste of Tuscany: Exploring Italy\'s Wine Country','Indulge in the culinary delights and scenic beauty of Tuscany, Italy\'s famed wine country. Explore charming hilltop towns like Montepulciano and San Gimignano, sample world-renowned wines in picturesque vineyards, and savor the flavors of Italian cuisine.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',1,'Botble\\Member\\Models\\Member',0,'travel/news/16.jpg',1012,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(17,'Adventure in the Amazon Rainforest: Exploring the Jungle','Embark on a thrilling adventure into the heart of the Amazon rainforest, where exotic wildlife and lush vegetation await. Cruise along winding rivers, trek through dense jungle trails, and immerse yourself in the sights and sounds of one of the world\'s most biodiverse ecosystems.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',6,'Botble\\Member\\Models\\Member',0,'travel/news/17.jpg',304,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(18,'The Magic of Venice: Exploring Italy\'s Floating City','Discover the timeless beauty and romantic allure of Venice, the \"City of Canals.\" Cruise along the Grand Canal in a gondola, wander through narrow alleyways lined with historic palaces, and marvel at iconic landmarks like St. Mark\'s Basilica and the Rialto Bridge.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',4,'Botble\\Member\\Models\\Member',0,'travel/news/18.jpg',1215,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(19,'Chasing the Northern Lights: Aurora Hunting in Iceland','Embark on an unforgettable adventure to witness the spectacular Northern Lights in Iceland. Journey to remote locations far from city lights, where the dancing colors of the aurora borealis illuminate the night sky in a breathtaking display.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',2,'Botble\\Member\\Models\\Member',0,'travel/news/19.jpg',382,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17'),(20,'Savoring the Flavors of Provence: Culinary Delights in France','Indulge in the culinary delights of Provence, where fresh ingredients and vibrant flavors reign supreme. Explore bustling markets, sample local specialties like ratatouille and bouillabaisse, and savor the world-renowned wines of this picturesque region.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',6,'Botble\\Member\\Models\\Member',0,'travel/news/20.jpg',2181,NULL,'2024-08-09 11:08:17','2024-08-09 11:08:17');
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"fob-comment.index\":true,\"fob-comment.comments.index\":true,\"fob-comment.comments.edit\":true,\"fob-comment.comments.destroy\":true,\"fob-comment.comments.reply\":true,\"fob-comment.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-08-09 11:07:50','2024-08-09 11:07:50');
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-08-09 11:08:19'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"ai-writer\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"fob-comment\",\"gallery\",\"member\",\"newsletter\",\"note\",\"request-log\",\"rss-feed\",\"social-login\",\"translation\"]',NULL,'2024-08-09 11:08:19'),(4,'ai_writer_proxy_enable','0',NULL,'2024-08-09 11:08:19'),(5,'ai_writer_proxy_protocol',NULL,NULL,'2024-08-09 11:08:19'),(6,'ai_writer_proxy_ip',NULL,NULL,'2024-08-09 11:08:19'),(7,'ai_writer_proxy_port',NULL,NULL,'2024-08-09 11:08:19'),(8,'ai_writer_proxy_username',NULL,NULL,'2024-08-09 11:08:19'),(9,'ai_writer_proxy_password',NULL,NULL,'2024-08-09 11:08:19'),(10,'ai_writer_prompt_template','[{\"title\":\"Product Content\",\"content\":\"You will be a marketer. I will give the information of the product, you will write an introductory article about that product, the article requires google seo standards and is highly persuasive to increase the rate of users closing orders.\\nParameters product:\"},{\"title\":\"Post Content\",\"content\":\"You will be a marketer. Articles about:\"}]',NULL,'2024-08-09 11:08:19'),(11,'ai_writer_openai_key',NULL,NULL,'2024-08-09 11:08:19'),(12,'ai_writer_openai_temperature','1',NULL,'2024-08-09 11:08:19'),(13,'ai_writer_openai_max_tokens','2000',NULL,'2024-08-09 11:08:19'),(14,'ai_writer_openai_frequency_penalty','0',NULL,'2024-08-09 11:08:19'),(15,'ai_writer_openai_presence_penalty','0',NULL,'2024-08-09 11:08:19'),(16,'ai_writer_openai_models','[\"gpt-3.5-turbo\"]',NULL,'2024-08-09 11:08:19'),(17,'ai_writer_openai_default_model','gpt-3.5-turbo',NULL,'2024-08-09 11:08:19'),(18,'ai_writer_spin_template','[]',NULL,'2024-08-09 11:08:19'),(21,'language_hide_default','1',NULL,'2024-08-09 11:08:19'),(22,'language_switcher_display','dropdown',NULL,'2024-08-09 11:08:19'),(23,'language_display','all',NULL,'2024-08-09 11:08:19'),(24,'language_hide_languages','[]',NULL,'2024-08-09 11:08:19'),(25,'media_random_hash','83e19338b4e33b52f9097b8c83061f31',NULL,'2024-08-09 11:08:19'),(26,'theme','echo-travel',NULL,'2024-08-09 11:08:19'),(27,'show_admin_bar','1',NULL,'2024-08-09 11:08:19'),(28,'admin_favicon','main/general/favicon.png',NULL,'2024-08-09 11:08:19'),(29,'admin_logo','main/general/logo-dark.png',NULL,'2024-08-09 11:08:19'),(30,'permalink-botble-blog-models-post','blog',NULL,'2024-08-09 11:08:19'),(31,'permalink-botble-blog-models-category','blog',NULL,'2024-08-09 11:08:19'),(32,'theme-echo-travel-site_name','Echo - Travel',NULL,'2024-08-09 11:08:19'),(33,'theme-echo-travel-site_title','News & Magazine Laravel Script.',NULL,'2024-08-09 11:08:19'),(34,'theme-echo-travel-seo_description','Echo is a modern, clean, and professional Laravel script that is suitable for news, magazine, blog, and any kind of website.',NULL,'2024-08-09 11:08:19'),(35,'theme-echo-travel-homepage_id','1',NULL,'2024-08-09 11:08:19'),(36,'theme-echo-travel-logo','travel/general/logo.png',NULL,'2024-08-09 11:08:19'),(37,'theme-echo-travel-logo_dark','travel/general/logo.png',NULL,'2024-08-09 11:08:19'),(38,'theme-echo-travel-favicon','travel/general/favicon.png',NULL,'2024-08-09 11:08:19'),(39,'theme-echo-travel-blog_page_id','4',NULL,'2024-08-09 11:08:19'),(40,'theme-echo-travel-primary_font','Inter',NULL,'2024-08-09 11:08:19'),(41,'theme-echo-travel-heading_font','DM Sans',NULL,'2024-08-09 11:08:19'),(42,'theme-echo-travel-theme_style','auto',NULL,'2024-08-09 11:08:19'),(43,'theme-echo-travel-secondary_color','#714707',NULL,'2024-08-09 11:08:19'),(44,'theme-echo-travel-breadcrumb_background_image','main/backgrounds/breadcrumb.png',NULL,'2024-08-09 11:08:19'),(45,'theme-echo-travel-breadcrumb_background_color','transparent',NULL,'2024-08-09 11:08:19'),(46,'theme-echo-travel-breadcrumb_text_color','',NULL,'2024-08-09 11:08:19'),(47,'theme-echo-travel-blog_author_style','avatar_start',NULL,'2024-08-09 11:08:19'),(48,'theme-echo-travel-blog_description_style','normal',NULL,'2024-08-09 11:08:19'),(49,'theme-echo-travel-copyright','©%Y Archi Elite JSC. All Rights Reserved.',NULL,'2024-08-09 11:08:19'),(50,'theme-echo-travel-language_switcher_enabled','1',NULL,'2024-08-09 11:08:19'),(51,'theme-echo-travel-newsletter_popup_enable','1',NULL,'2024-08-09 11:08:19'),(52,'theme-echo-travel-newsletter_popup_image','main/general/newsletter-popup.png',NULL,'2024-08-09 11:08:19'),(53,'theme-echo-travel-newsletter_popup_title','Let’s join our newsletter!',NULL,'2024-08-09 11:08:19'),(54,'theme-echo-travel-newsletter_popup_subtitle','Weekly Updates',NULL,'2024-08-09 11:08:19'),(55,'theme-echo-travel-newsletter_popup_description','Do not worry we don’t spam!',NULL,'2024-08-09 11:08:19'),(56,'theme-echo-travel-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,'2024-08-09 11:08:19'),(57,'theme-echo-travel-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,'2024-08-09 11:08:19'),(58,'theme-echo-travel-primary_color','#FFCC48',NULL,'2024-08-09 11:08:19'),(59,'announcement_max_width','1390',NULL,NULL),(60,'announcement_text_color','#000000',NULL,NULL),(61,'announcement_background_color','#FFCC48',NULL,NULL),(62,'announcement_text_alignment','center',NULL,NULL),(63,'announcement_dismissible','1',NULL,NULL),(64,'announcement_font_size','14',NULL,NULL),(65,'announcement_font_size_unit','px',NULL,NULL);
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
INSERT INTO `slugs` VALUES (1,'smith',1,'Botble\\Member\\Models\\Member','author','2024-08-09 11:07:53','2024-08-09 11:08:20'),(2,'larkin',2,'Botble\\Member\\Models\\Member','author','2024-08-09 11:07:53','2024-08-09 11:08:20'),(3,'damore',3,'Botble\\Member\\Models\\Member','author','2024-08-09 11:07:53','2024-08-09 11:08:20'),(4,'considine',4,'Botble\\Member\\Models\\Member','author','2024-08-09 11:07:53','2024-08-09 11:08:20'),(5,'hane',5,'Botble\\Member\\Models\\Member','author','2024-08-09 11:07:53','2024-08-09 11:08:20'),(6,'bernier',6,'Botble\\Member\\Models\\Member','author','2024-08-09 11:07:53','2024-08-09 11:08:20'),(7,'christiansen',7,'Botble\\Member\\Models\\Member','author','2024-08-09 11:07:53','2024-08-09 11:08:20'),(8,'wiza',8,'Botble\\Member\\Models\\Member','author','2024-08-09 11:07:53','2024-08-09 11:08:20'),(9,'adventure-destinations',1,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:08:08','2024-08-09 11:08:17'),(10,'cultural-experiences',2,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:08:08','2024-08-09 11:08:17'),(11,'luxury-retreats',3,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:08:08','2024-08-09 11:08:17'),(12,'off-the-beaten-path',4,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:08:08','2024-08-09 11:08:17'),(13,'family-friendly-getaways',5,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:08:08','2024-08-09 11:08:17'),(14,'solo-travel-adventures',6,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:08:08','2024-08-09 11:08:17'),(15,'budget-travel-tips',7,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:08:08','2024-08-09 11:08:17'),(16,'food-and-culinary-tours',8,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:08:08','2024-08-09 11:08:17'),(17,'outdoor-adventures',9,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:08:08','2024-08-09 11:08:17'),(18,'historical-landmarks',10,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:08:08','2024-08-09 11:08:17'),(19,'beach',1,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:08:08','2024-08-09 11:08:08'),(20,'adventure',2,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:08:08','2024-08-09 11:08:08'),(21,'culture',3,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:08:08','2024-08-09 11:08:08'),(22,'food',4,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:08:08','2024-08-09 11:08:08'),(23,'nature',5,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:08:08','2024-08-09 11:08:08'),(24,'history',6,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:08:08','2024-08-09 11:08:08'),(25,'city',7,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:08:08','2024-08-09 11:08:08'),(26,'hiking',8,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:08:08','2024-08-09 11:08:08'),(27,'sightseeing',9,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:08:08','2024-08-09 11:08:08'),(28,'shopping',10,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:08:08','2024-08-09 11:08:08'),(29,'exploring-the-enchanting-streets-of-paris',1,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(30,'discovering-the-wonders-of-ancient-rome',2,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(31,'adventures-in-the-serengeti-a-safari-experience',3,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(32,'journeying-through-the-land-of-fire-and-ice-iceland',4,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(33,'island-paradise-exploring-the-maldives',5,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(34,'the-majesty-of-machu-picchu-ancient-ruins-in-the-andes',6,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(35,'cruising-the-fjords-of-norway-a-journey-through-nature',7,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(36,'trekking-the-inca-trail-to-the-lost-city-of-choquequirao',8,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(37,'sailing-the-greek-islands-sun-sea-and-ancient-ruins',9,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(38,'city-of-contrasts-exploring-tokyo-japan',10,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(39,'safari-adventure-in-kruger-national-park-south-africa',11,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(40,'the-magic-of-marrakech-exploring-the-red-city',12,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(41,'trekking-to-everest-base-camp-a-himalayan-adventure',13,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(42,'cultural-odyssey-in-kyoto-japan-temples-tea-and-tradition',14,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(43,'paradise-found-relaxing-in-the-seychelles',15,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(44,'a-taste-of-tuscany-exploring-italys-wine-country',16,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(45,'adventure-in-the-amazon-rainforest-exploring-the-jungle',17,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(46,'the-magic-of-venice-exploring-italys-floating-city',18,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(47,'chasing-the-northern-lights-aurora-hunting-in-iceland',19,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(48,'savoring-the-flavors-of-provence-culinary-delights-in-france',20,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:08:17','2024-08-09 11:08:17'),(49,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(50,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(51,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(52,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(53,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(54,'sunset',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(55,'ocean-views',7,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(56,'adventure-time',8,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(57,'city-lights',9,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(58,'dreamscape',10,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(59,'enchanted-forest',11,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(60,'golden-hour',12,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(61,'serenity',13,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(62,'eternal-beauty',14,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(63,'moonlight-magic',15,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(64,'starry-night',16,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(65,'hidden-gems',17,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(66,'tranquil-waters',18,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(67,'urban-escape',19,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(68,'twilight-zone',20,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:08:17','2024-08-09 11:08:17'),(69,'homepage',1,'Botble\\Page\\Models\\Page','','2024-08-09 11:08:17','2024-08-09 11:08:17'),(70,'about-us',2,'Botble\\Page\\Models\\Page','','2024-08-09 11:08:17','2024-08-09 11:08:17'),(71,'contact',3,'Botble\\Page\\Models\\Page','','2024-08-09 11:08:17','2024-08-09 11:08:17'),(72,'blog',4,'Botble\\Page\\Models\\Page','','2024-08-09 11:08:17','2024-08-09 11:08:17'),(73,'team',5,'Botble\\Page\\Models\\Page','','2024-08-09 11:08:17','2024-08-09 11:08:17'),(74,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2024-08-09 11:08:17','2024-08-09 11:08:17'),(75,'terms-of-use',7,'Botble\\Page\\Models\\Page','','2024-08-09 11:08:17','2024-08-09 11:08:17'),(76,'privacy-policy',8,'Botble\\Page\\Models\\Page','','2024-08-09 11:08:17','2024-08-09 11:08:17'),(77,'advertise',9,'Botble\\Page\\Models\\Page','','2024-08-09 11:08:17','2024-08-09 11:08:17'),(78,'faq',10,'Botble\\Page\\Models\\Page','','2024-08-09 11:08:17','2024-08-09 11:08:17');
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
INSERT INTO `tags` VALUES (1,'Beach',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:08:08','2024-08-09 11:08:08'),(2,'Adventure',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:08:08','2024-08-09 11:08:08'),(3,'Culture',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:08:08','2024-08-09 11:08:08'),(4,'Food',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:08:08','2024-08-09 11:08:08'),(5,'Nature',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:08:08','2024-08-09 11:08:08'),(6,'History',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:08:08','2024-08-09 11:08:08'),(7,'City',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:08:08','2024-08-09 11:08:08'),(8,'Hiking',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:08:08','2024-08-09 11:08:08'),(9,'Sightseeing',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:08:08','2024-08-09 11:08:08'),(10,'Shopping',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:08:08','2024-08-09 11:08:08');
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
INSERT INTO `users` VALUES (1,'acarter@schowalter.com',NULL,'$2y$12$5M0X9Q73qAKHAqBAS8Q4PeabizOw7XbURrnEDRsRcxJU8UVcw6Ge6',NULL,'2024-08-09 11:07:50','2024-08-09 11:07:50','Lonnie','Schmeler','admin',NULL,1,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'BlogPostsWidget','menu_sidebar','echo-travel',1,'{\"type\":\"recent\",\"category_ids\":[1,2,3],\"limit\":3}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(2,'SocialLinksWidget','menu_sidebar','echo-travel',2,'[]','2024-08-09 11:08:19','2024-08-09 11:08:19'),(3,'BlogCategoriesWidget','primary_sidebar','echo-travel',1,'{\"title\":\"Popular Categories\",\"id\":\"BlogCategoriesWidget\",\"enable_lazy_loading\":\"yes\",\"quantity\":\"5\",\"category_id_1\":\"1\",\"background_image_1\":\"main\\/blog-categories\\/1.png\",\"background_color_1\":\"rgb(174 81 43)\",\"category_id_2\":\"2\",\"background_image_2\":\"main\\/blog-categories\\/2.png\",\"background_color_2\":\"rgb(102 64 165)\",\"category_id_3\":\"3\",\"background_image_3\":\"main\\/blog-categories\\/3.png\",\"background_color_3\":\"rgb(85 163 168)\",\"category_id_4\":\"4\",\"background_image_4\":\"main\\/blog-categories\\/4.png\",\"background_color_4\":\"rgb(83 39 21)\",\"category_id_5\":\"5\",\"background_image_5\":\"main\\/blog-categories\\/5.png\",\"background_color_5\":\"rgb(85 163 168)\"}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(4,'BlogPostsWidget','primary_sidebar','echo-travel',2,'{\"type\":\"popular\",\"card_style\":\"default-card\",\"shape\":\"square\",\"category_ids\":[1,3,4],\"title\":\"Top Story\",\"limit\":4,\"enable_lazy_loading\":\"yes\"}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(5,'FollowUsWidget','primary_sidebar','echo-travel',3,'{\"id\":\"FollowUsWidget\",\"items\":[[{\"key\":\"title\",\"value\":\"20K Fans\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"title\",\"value\":\"10K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"title\",\"value\":\"50K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/instagram.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/linkedin.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/pinterest.com\"}],[{\"key\":\"title\",\"value\":\"04K Subscribers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"}]]}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(6,'MembersWidget','custom_sidebar_1','echo-travel',1,'{\"id\":\"MembersWidget\",\"member_ids\":[1]}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(7,'FollowUsWidget','custom_sidebar_1','echo-travel',2,'{\"id\":\"FollowUsWidget\",\"items\":[[{\"key\":\"title\",\"value\":\"20K Fans\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"title\",\"value\":\"10K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"title\",\"value\":\"50K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/instagram.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/linkedin.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/pinterest.com\"}],[{\"key\":\"title\",\"value\":\"04K Subscribers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"}]]}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(8,'BlogPostsWidget','custom_sidebar_1','echo-travel',3,'{\"id\":\"BlogPostsWidget\",\"title\":\"Top Story\",\"style\":\"default-card\",\"shape\":\"square\",\"limit\":4,\"category_ids\":[2,3],\"enable_lazy_loading\":\"yes\"}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(9,'MembersWidget','custom_sidebar_1','echo-travel',4,'{\"id\":\"MembersWidget\",\"title\":\"Featured Authors\",\"member_ids\":[2,4,5,6]}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(10,'BlogPostsWidget','custom_sidebar_2','echo-travel',1,'{\"type\":\"recent\",\"style\":\"default-card\",\"shape\":\"square\",\"category_ids\":[3,6],\"title\":\"Top Story\",\"limit\":4}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(11,'BlogPostsWidget','custom_sidebar_2','echo-travel',2,'{\"type\":\"popular\",\"style\":\"orderly-card\",\"shape\":\"square\",\"category_ids\":[1,5,6],\"title\":\"Top Reviews\",\"limit\":3}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(12,'FollowUsWidget','custom_sidebar_2','echo-travel',3,'{\"id\":\"FollowUsWidget\",\"items\":[[{\"key\":\"title\",\"value\":\"20K Fans\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"title\",\"value\":\"10K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"title\",\"value\":\"50K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/instagram.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/linkedin.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/pinterest.com\"}],[{\"key\":\"title\",\"value\":\"04K Subscribers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"}]]}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(13,'NewsletterWidget','custom_sidebar_2','echo-travel',4,'{\"id\":\"NewsletterWidget\",\"title\":\"Newsletter\",\"description\":\"Stay Tuned With Updates\",\"image\":\"main\\/general\\/newsletter-image.png\"}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(14,'BannerAdsWidget','custom_sidebar_2','echo-travel',5,'{\"ad_image\":\"main\\/general\\/ads-banner.png\",\"ad_link\":\"https:\\/\\/google.com\"}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(15,'SiteInformationWidget','footer_sidebar','echo-travel',1,'{\"id\":\"SiteInformationWidget\",\"title\":\"Get In Touch\",\"email\":\"Info@Demomail.Com\",\"hotline\":\"(00) 236 123 456 88\",\"address\":\"255 Sheet, New Avanew, NY\"}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(16,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','echo-travel',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Most Popular\",\"style\":\"2-column\",\"items\":[[{\"key\":\"label\",\"value\":\"Adventure Destinations\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/adventure-destinations\"}],[{\"key\":\"label\",\"value\":\"Cultural Experiences\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/cultural-experiences\"}],[{\"key\":\"label\",\"value\":\"Luxury Retreats\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/luxury-retreats\"}],[{\"key\":\"label\",\"value\":\"Off-the-Beaten-Path\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/off-the-beaten-path\"}],[{\"key\":\"label\",\"value\":\"Family-Friendly Getaways\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/family-friendly-getaways\"}]]}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(17,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','echo-travel',3,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Help\",\"items\":[[{\"key\":\"label\",\"value\":\"About\"},{\"key\":\"url\",\"value\":\"about-us\"}],[{\"key\":\"label\",\"value\":\"Terms of Use\"},{\"key\":\"url\",\"value\":\"terms-of-use\"}],[{\"key\":\"label\",\"value\":\"Advertise\"},{\"key\":\"url\",\"value\":\"advertise\"}],[{\"key\":\"label\",\"value\":\"Privacy Policy\"},{\"key\":\"url\",\"value\":\"privacy-policy\"}],[{\"key\":\"label\",\"value\":\"FAQ\"},{\"key\":\"url\",\"value\":\"faq\"}]]}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(18,'NewsletterWidget','footer_sidebar','echo-travel',4,'{\"id\":\"NewsletterWidget\",\"title\":\"Newsletter\",\"description\":\"Register now to get latest updates on promotion & coupons.\"}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(19,'ActionButtonsWidget','header_sidebar','echo-travel',1,'{\"id\":\"ActionButtonsWidget\",\"enable_toggle_side_menu_button\":false,\"alignment\":\"end\"}','2024-08-09 11:08:19','2024-08-09 11:08:19'),(20,'SocialLinksWidget','above_footer_sidebar','echo-travel',1,'[]','2024-08-09 11:08:19','2024-08-09 11:08:19');
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

-- Dump completed on 2024-08-10  1:08:20
