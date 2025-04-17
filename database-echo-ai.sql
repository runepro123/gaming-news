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
INSERT INTO `activations` VALUES (1,1,'7cq0sHuij9RDEcaoAUAuac18AOUDzDEm',1,'2024-08-09 11:03:35','2024-08-09 11:03:35','2024-08-09 11:03:35');
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
INSERT INTO `announcements` VALUES (1,'Announcement 1','Cyber Monday: Save big on the Creative Cloud All Apps plan for individuals through 2 Dec',0,NULL,NULL,0,1,'2024-08-09 18:03:57',NULL,1,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(2,'Announcement 2','Students and teachers save a massive 71% on Creative Cloud All Apps',0,NULL,NULL,0,1,'2024-08-09 18:03:57',NULL,1,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(3,'Announcement 3','Black Friday and Cyber Monday 2023 Deals for Motion Designers, grab it now!',0,NULL,NULL,0,1,'2024-08-09 18:03:57',NULL,1,'2024-08-09 11:03:57','2024-08-09 11:03:57');
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
INSERT INTO `categories` VALUES (1,'Neural Networks',0,'Quibusdam incidunt ratione consequuntur dolorem. Consectetur aut alias incidunt amet reprehenderit cupiditate vero. Nobis tempore in magnam consequatur at voluptas est.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-08-09 11:03:47','2024-08-09 11:03:47'),(2,'Natural Language Processing',0,'Velit qui officia cumque est est numquam. Accusamus autem qui aut facere qui voluptas blanditiis. Eius et consequatur ut velit impedit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:03:47','2024-08-09 11:03:47'),(3,'Machine Learning',0,'Officia eos sequi ab est aut. Harum qui accusantium ratione cumque necessitatibus. Architecto qui ex consequatur consequatur voluptatibus ab. Ut quaerat voluptatem doloribus.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:03:47','2024-08-09 11:03:47'),(4,'Deep Learning',0,'Commodi aut corrupti dolorem quis consequatur non veniam. Rem iusto nemo voluptas rerum aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:03:47','2024-08-09 11:03:47'),(5,'Reinforcement Learning',0,'Et quo esse excepturi non ratione dicta. Quia alias enim ut sed. Velit dolorum quia odio ipsum ipsa nihil. Omnis omnis qui non.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:03:47','2024-08-09 11:03:47'),(6,'Computer Vision',0,'Dolorem distinctio quia earum exercitationem et necessitatibus. Est soluta consequatur deleniti. Officia debitis illo ducimus placeat et. Distinctio ratione et et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:03:47','2024-08-09 11:03:47'),(7,'Ethics in AI',0,'Temporibus illo temporibus a quasi. Eum qui architecto reprehenderit expedita maxime voluptatem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:03:47','2024-08-09 11:03:47'),(8,'Robotics',0,'Quis rerum reprehenderit reprehenderit soluta impedit expedita temporibus. Enim rerum a provident aliquam omnis fuga rerum. Eligendi dolorem asperiores eum alias.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:03:47','2024-08-09 11:03:47'),(9,'AI in Healthcare',0,'Voluptates non est qui numquam. Delectus quae aut est nisi sit. Nulla sit asperiores porro animi quis aliquid architecto. Magnam tempora cupiditate voluptas fuga. Accusamus enim fugiat eveniet.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:03:47','2024-08-09 11:03:47'),(10,'AI in Finance',0,'Velit voluptatem qui non enim ex doloribus. Accusantium eum repellat reprehenderit asperiores saepe ut. Enim atque quasi iste.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:03:47','2024-08-09 11:03:47');
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
INSERT INTO `contacts` VALUES (1,'London Ratke','beaulah55@example.net','1-240-808-7573','40942 Smitham Corner\nConsuelomouth, LA 35668','Adipisci blanditiis id facere animi.','Qui qui iusto et ut consequatur dolorem. Aliquid adipisci dolore ipsum cum est adipisci aut. Quisquam ipsum odit debitis veritatis beatae. Fuga velit fuga aut doloremque deserunt molestias adipisci. Ut voluptas saepe odit assumenda quo et. Accusamus quidem itaque ex iusto labore quod veniam. Quia quis et aliquid inventore voluptas cumque esse. Hic laborum sint minima repudiandae ducimus voluptatum. Repudiandae atque consequuntur similique facilis doloremque. Rerum ea sapiente architecto.',NULL,'unread','2024-08-09 11:03:35','2024-08-09 11:03:35'),(2,'Gladyce Nienow','john.robel@example.com','678-332-9563','57255 Bruce Avenue\nPort Darren, WV 36246','Blanditiis iure error sunt possimus.','Eius doloribus consectetur fugit unde est alias. Ratione autem repellat nostrum quis vel. Recusandae tempore aut deleniti id. Molestias omnis quidem suscipit eos maxime. Beatae nemo ab ad numquam aut illum cum voluptatibus. Qui sed mollitia qui dicta quasi provident optio esse. Et eveniet aut ipsum eos dolore. Omnis ullam optio eveniet omnis nemo non non quos. Aut omnis aut nulla. Quod voluptas est minima libero dignissimos quis. Cupiditate ut provident iusto iusto sed et.',NULL,'read','2024-08-09 11:03:35','2024-08-09 11:03:35'),(3,'Randi Jenkins MD','myah63@example.net','216-208-8071','43840 O\'Conner Cove Suite 416\nHalvorsonton, ME 18921-2314','Est et aut sit iusto earum provident inventore.','Aperiam rerum hic vel repudiandae nisi. Ut qui ea reprehenderit quod. Et libero natus qui aliquam culpa nemo voluptas. Laborum quis unde iure ea quae in. Impedit qui delectus in sed qui quaerat. Enim dolores nemo quae esse. Quis sit rem est ea voluptatem. Ea nesciunt atque ut eum mollitia nesciunt excepturi. Consequatur in sit dolorum eveniet eos sit consequatur.',NULL,'unread','2024-08-09 11:03:35','2024-08-09 11:03:35'),(4,'Miss Gisselle Jacobson II','stan87@example.net','726.943.3990','155 Claudine Spurs\nSouth Reinamouth, NM 81905','Commodi quasi omnis assumenda et.','Et ad dolores natus voluptates veniam. Vel qui expedita laudantium ut aliquid. Molestiae deserunt quod facilis omnis est et sed. Rerum dolores sit est eveniet nulla tempora placeat. Corrupti eos ad est impedit adipisci rem harum. Possimus sequi minima eos minus laudantium eveniet sequi. Optio facilis rerum dignissimos nam omnis dolores reprehenderit. Ullam incidunt eius laborum et ab.',NULL,'read','2024-08-09 11:03:35','2024-08-09 11:03:35'),(5,'Geovany Lowe DDS','nikki71@example.net','1-480-400-2655','145 Reichert Highway\nNew Krystel, MD 45950-6706','Et animi aliquid consequuntur odit.','Labore fugiat qui eos nam eaque qui. Perferendis impedit autem velit expedita. Tempore provident sequi ipsa dignissimos. Aut quia architecto numquam dolorum tempore ad odit. Qui reiciendis sunt consequuntur fugiat dolore porro maiores sapiente. Iste qui iusto accusamus nam. Beatae porro ut reprehenderit suscipit tenetur.',NULL,'read','2024-08-09 11:03:35','2024-08-09 11:03:35'),(6,'Garrison Langworth','kayley37@example.org','+1.732.625.8159','6489 Felicita Fort\nArmstrongberg, TX 03023','Quo laboriosam aut illo quo dolore non.','Perspiciatis tempora sunt dignissimos atque tempore a maiores. Tempore dignissimos itaque sunt error consectetur ut. Blanditiis explicabo rem eaque quos et quis. In at accusantium amet quod facere animi. Reiciendis minus consequatur dicta doloribus omnis commodi modi. Nesciunt impedit aut voluptas facere est autem. Ut dolor doloremque odio et nulla qui qui est. Repellat magnam dolorum soluta voluptatem. Quia voluptatum reprehenderit molestiae rerum.',NULL,'read','2024-08-09 11:03:35','2024-08-09 11:03:35'),(7,'Prof. Robyn Boyer','rice.jillian@example.org','(240) 905-8961','15838 Dayton Hill Suite 665\nWatsicafort, AL 10851','Quia mollitia unde non eius at incidunt amet.','Voluptatum dolor at enim odio id neque. Dolores sint quibusdam consequuntur est magnam culpa. Delectus quisquam laboriosam ipsum est officiis officiis. Atque a dolores maxime aut enim harum. Iste aspernatur blanditiis minus. Rerum dolorem architecto vel iusto quis. Maxime dolor omnis ratione qui quo magni nemo. Quo ratione magnam dolor libero et. Itaque autem qui ex vero. Sit tenetur culpa vel.',NULL,'unread','2024-08-09 11:03:35','2024-08-09 11:03:35'),(8,'Prof. Alejandrin Shields','davis.tina@example.org','(478) 313-0416','424 Glover Terrace Suite 873\nNew Christyland, NE 71057','Quia et a dolor magnam omnis eius aspernatur.','Enim magnam reiciendis saepe aspernatur sit. Modi at unde magni rerum non laboriosam. Eius aut rem ut totam delectus modi nam in. A et qui vitae sed officiis illo. Dolorem vitae autem exercitationem vero odit autem ea. In non aperiam molestias amet enim placeat molestiae ab. Aspernatur repudiandae perspiciatis corporis eligendi aliquid laudantium eligendi. Unde numquam ad sit qui harum iure dolorum natus.',NULL,'unread','2024-08-09 11:03:35','2024-08-09 11:03:35'),(9,'Dane Hill','israel.tremblay@example.com','+1-312-977-2326','73867 Eusebio Knolls Suite 930\nAndreanneport, NC 64270','Corrupti qui inventore ut quaerat.','Ut repudiandae voluptas inventore deleniti. Qui illum possimus animi quidem. Deserunt omnis voluptas officiis quam est ipsum dolore laboriosam. Culpa dolorum in illum sunt minus qui. Velit quos illo consectetur adipisci quia. Illo nam tempore consequatur voluptas beatae. Porro atque omnis velit laudantium et eius placeat. Nesciunt est eum dolorem ad. Repellat aut nesciunt omnis velit. Officia aut qui est omnis voluptatem eius. Porro iusto vel quia alias tempore ad possimus.',NULL,'read','2024-08-09 11:03:35','2024-08-09 11:03:35'),(10,'Alana Beer','caitlyn.wehner@example.net','+1 (361) 613-3095','732 Kulas Grove\nTitostad, NE 18539-2041','Eum magni expedita cum quisquam.','Quia officiis id est provident. Adipisci ipsam delectus molestiae voluptas consequatur itaque soluta. Et quis rem voluptatem tenetur voluptates. Asperiores accusamus autem blanditiis est dolore. Et velit velit magni quae minima dicta nobis. At officia cum blanditiis nihil in. Voluptas enim ipsam ut ut non cumque odio. Id nobis sunt quibusdam. Ducimus qui quae sequi. Quia debitis iste adipisci ad itaque. Labore debitis fuga et.',NULL,'read','2024-08-09 11:03:35','2024-08-09 11:03:35');
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
INSERT INTO `fob_comments` VALUES (1,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',4,'http://localhost','Valentina Hammes IV','harvey.nora@oberbrunner.biz','https://friendsofbotble.com','This is really helpful, thank you!','approved','232.74.18.23','Mozilla/5.0 (X11; Linux x86_64; rv:6.0) Gecko/20231118 Firefox/36.0','2024-07-10 13:37:33','2024-08-09 11:03:57'),(2,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',11,'http://localhost','Alia Emmerich','oschulist@moen.com','https://friendsofbotble.com','I found this article to be quite informative.','approved','182.8.101.187','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 5.01; Trident/5.0)','2024-07-22 19:17:27','2024-08-09 11:03:57'),(3,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',2,'http://localhost','Marcelina DuBuque','zsmitham@hotmail.com','https://friendsofbotble.com','Wow, I never knew about this before!','approved','95.67.107.192','Mozilla/5.0 (Windows; U; Windows NT 6.2) AppleWebKit/534.8.1 (KHTML, like Gecko) Version/5.0.1 Safari/534.8.1','2024-07-21 11:19:53','2024-08-09 11:03:57'),(4,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',19,'http://localhost','Prof. Turner Denesik','tswaniawski@yahoo.com','https://friendsofbotble.com','Great job on explaining such a complex topic.','approved','185.109.137.8','Mozilla/5.0 (X11; Linux x86_64; rv:6.0) Gecko/20100629 Firefox/37.0','2024-08-08 12:29:15','2024-08-09 11:03:57'),(5,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',10,'http://localhost','Tom Johnston','senger.cleora@gmail.com','https://friendsofbotble.com','I have a question about the third paragraph.','approved','61.231.131.150','Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20160131 Firefox/35.0','2024-07-26 04:05:40','2024-08-09 11:03:57'),(6,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',15,'http://localhost','Sharon Becker','zboyer@borer.com','https://friendsofbotble.com','This article changed my perspective entirely.','approved','34.155.5.66','Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 4.0; Trident/4.1)','2024-07-24 14:06:01','2024-08-09 11:03:57'),(7,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',19,'http://localhost','Lydia Shields IV','ljohnston@gmail.com','https://friendsofbotble.com','I appreciate the effort you put into this.','approved','192.0.33.147','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_4 rv:6.0; en-US) AppleWebKit/533.38.6 (KHTML, like Gecko) Version/5.0.1 Safari/533.38.6','2024-07-24 01:33:52','2024-08-09 11:03:57'),(8,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',15,'http://localhost','Mrs. Abbey Moen IV','alessia85@yahoo.com','https://friendsofbotble.com','This is exactly what I was looking for, thank you!','approved','80.193.92.137','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_2 rv:3.0; en-US) AppleWebKit/533.28.4 (KHTML, like Gecko) Version/4.0.3 Safari/533.28.4','2024-07-15 02:18:46','2024-08-09 11:03:57'),(9,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',17,'http://localhost','Naomie Herman','ostrosin@rice.com','https://friendsofbotble.com','I disagree with some points mentioned here, though.','approved','189.51.79.121','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_2 rv:3.0) Gecko/20201208 Firefox/35.0','2024-07-11 08:54:44','2024-08-09 11:03:57'),(10,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',18,'http://localhost','Price Walker','csatterfield@yahoo.com','https://friendsofbotble.com','Could you provide more examples to illustrate your point?','approved','35.169.1.98','Opera/8.95 (X11; Linux i686; nl-NL) Presto/2.8.177 Version/10.00','2024-07-23 19:00:21','2024-08-09 11:03:57'),(11,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',15,'http://localhost','Prof. Darien Metz I','seamus.fadel@hotmail.com','https://friendsofbotble.com','I wish there were more articles like this out there.','approved','207.100.94.41','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.2; Trident/4.1)','2024-07-30 01:09:45','2024-08-09 11:03:57'),(12,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',10,'http://localhost','Alvina Beer','kassulke.gertrude@gmail.com','https://friendsofbotble.com','I\'m bookmarking this for future reference.','approved','134.156.46.200','Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 4.0; Trident/3.0)','2024-07-28 07:12:39','2024-08-09 11:03:57'),(13,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',18,'http://localhost','Albin Zieme','arely.ziemann@lesch.org','https://friendsofbotble.com','I\'ve shared this with my friends, they loved it!','approved','94.212.234.46','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_9) AppleWebKit/5350 (KHTML, like Gecko) Chrome/38.0.808.0 Mobile Safari/5350','2024-07-29 17:26:48','2024-08-09 11:03:57'),(14,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',13,'http://localhost','Selena Spinka','ila.wolf@haley.com','https://friendsofbotble.com','This article is a must-read for everyone interested in the topic.','approved','146.245.180.80','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_9) AppleWebKit/534.2 (KHTML, like Gecko) Chrome/98.0.4639.95 Safari/534.2 Edg/98.01034.26','2024-07-28 01:10:18','2024-08-09 11:03:57'),(15,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',6,'http://localhost','Joanne Upton DDS','morar.kenya@yahoo.com','https://friendsofbotble.com','Thank you for shedding light on this important issue.','approved','254.222.130.202','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_1 rv:4.0) Gecko/20170525 Firefox/37.0','2024-07-10 15:46:33','2024-08-09 11:03:57'),(16,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',14,'http://localhost','Saige Lowe','sipes.alden@hotmail.com','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article.','approved','82.20.145.218','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.0; Trident/4.1)','2024-07-11 03:04:14','2024-08-09 11:03:57'),(17,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',13,'http://localhost','Stacey Schmidt','xlarkin@barton.com','https://friendsofbotble.com','I\'m blown away by the insights shared in this article.','approved','25.116.255.134','Mozilla/5.0 (Windows NT 5.2) AppleWebKit/5352 (KHTML, like Gecko) Chrome/36.0.855.0 Mobile Safari/5352','2024-07-19 20:37:17','2024-08-09 11:03:57'),(18,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',6,'http://localhost','Kevon Heaney','wjaskolski@yahoo.com','https://friendsofbotble.com','This article tackles a complex topic with clarity.','approved','16.15.8.138','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_1) AppleWebKit/536.1 (KHTML, like Gecko) Chrome/87.0.4840.30 Safari/536.1 Edg/87.01013.23','2024-07-22 13:41:32','2024-08-09 11:03:57'),(19,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',3,'http://localhost','Jordon Fadel','al50@sauer.com','https://friendsofbotble.com','I\'m going to reflect on the ideas presented in this article.','approved','217.207.113.17','Opera/8.41 (X11; Linux x86_64; nl-NL) Presto/2.11.285 Version/11.00','2024-08-09 07:11:43','2024-08-09 11:03:57'),(20,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',6,'http://localhost','Derek Heaney','bnikolaus@gmail.com','https://friendsofbotble.com','The author\'s passion for the subject shines through in this article.','approved','28.235.107.100','Mozilla/5.0 (iPhone; CPU iPhone OS 8_0_2 like Mac OS X; nl-NL) AppleWebKit/535.40.4 (KHTML, like Gecko) Version/3.0.5 Mobile/8B111 Safari/6535.40.4','2024-08-01 12:32:01','2024-08-09 11:03:57'),(21,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',11,'http://localhost','Rickie Rath','douglas.ismael@gmail.com','https://friendsofbotble.com','This article challenged my preconceptions in a thought-provoking way.','approved','248.166.71.155','Opera/9.85 (Windows NT 5.0; nl-NL) Presto/2.9.236 Version/11.00','2024-07-13 13:49:58','2024-08-09 11:03:57'),(22,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',1,'http://localhost','Mrs. Jessica Metz DVM','frieda.dubuque@yahoo.com','https://friendsofbotble.com','I\'ve added this article to my reading list, it\'s worth revisiting.','approved','69.107.76.135','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_6 rv:3.0; sl-SI) AppleWebKit/535.2.3 (KHTML, like Gecko) Version/5.0.1 Safari/535.2.3','2024-07-18 11:36:52','2024-08-09 11:03:57'),(23,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',18,'http://localhost','Dr. Khalil Dach II','rau.bruce@yahoo.com','https://friendsofbotble.com','This article offers practical advice that I can apply in real life.','approved','27.194.42.51','Mozilla/5.0 (iPhone; CPU iPhone OS 13_1 like Mac OS X) AppleWebKit/535.0 (KHTML, like Gecko) Version/15.0 EdgiOS/92.01073.90 Mobile/15E148 Safari/535.0','2024-07-23 23:16:46','2024-08-09 11:03:57'),(24,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',15,'http://localhost','Dr. Quinn Torphy DDS','maxine80@hotmail.com','https://friendsofbotble.com','I\'m going to recommend this article to my study group.','approved','117.183.104.72','Mozilla/5.0 (Windows; U; Windows NT 5.0) AppleWebKit/533.17.1 (KHTML, like Gecko) Version/5.0.1 Safari/533.17.1','2024-08-08 12:33:13','2024-08-09 11:03:57'),(25,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',18,'http://localhost','Wiley Reinger','katrine.hahn@hotmail.com','https://friendsofbotble.com','The examples provided really helped me understand the concept better.','approved','57.67.58.154','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_5) AppleWebKit/5321 (KHTML, like Gecko) Chrome/39.0.859.0 Mobile Safari/5321','2024-07-27 21:00:28','2024-08-09 11:03:57'),(26,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',19,'http://localhost','Elise Heathcote','jordy71@sanford.com','https://friendsofbotble.com','I resonate with the ideas presented here.','approved','222.254.104.195','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/531.1 (KHTML, like Gecko) Chrome/92.0.4197.66 Safari/531.1 Edg/92.01072.41','2024-07-27 04:53:58','2024-08-09 11:03:57'),(27,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',2,'http://localhost','Lia Halvorson','rickie01@jacobi.com','https://friendsofbotble.com','This article made me think critically about the topic.','approved','114.225.112.190','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5362 (KHTML, like Gecko) Chrome/39.0.824.0 Mobile Safari/5362','2024-07-27 12:31:39','2024-08-09 11:03:57'),(28,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',18,'http://localhost','Prof. Deja Hettinger','ignacio.collins@gmail.com','https://friendsofbotble.com','I\'ll definitely come back to this article for reference.','approved','113.102.153.162','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_8) AppleWebKit/5341 (KHTML, like Gecko) Chrome/40.0.891.0 Mobile Safari/5341','2024-07-12 08:19:30','2024-08-09 11:03:57'),(29,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',10,'http://localhost','Florine Monahan','kutch.frederic@hotmail.com','https://friendsofbotble.com','I\'ve shared this on social media, it\'s too good not to share.','approved','33.253.97.31','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_7 rv:5.0) Gecko/20240808 Firefox/36.0','2024-07-27 00:57:24','2024-08-09 11:03:57'),(30,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',2,'http://localhost','Heath Borer DDS','delia.murazik@conroy.com','https://friendsofbotble.com','This article presents a balanced view on a controversial topic.','approved','22.231.148.224','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_1) AppleWebKit/5312 (KHTML, like Gecko) Chrome/36.0.896.0 Mobile Safari/5312','2024-08-02 12:19:59','2024-08-09 11:03:57'),(31,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',14,'http://localhost','Prof. Mellie Hettinger','pmccullough@yahoo.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s a gem.','approved','138.66.158.116','Mozilla/5.0 (Windows NT 6.2; en-US; rv:1.9.1.20) Gecko/20140522 Firefox/35.0','2024-07-22 22:05:22','2024-08-09 11:03:57'),(32,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',19,'http://localhost','Tyrique Powlowski','emiliano.heidenreich@yahoo.com','https://friendsofbotble.com','I\'ve been struggling with this, your article helped a lot.','approved','209.193.1.20','Mozilla/5.0 (iPhone; CPU iPhone OS 13_0 like Mac OS X) AppleWebKit/536.1 (KHTML, like Gecko) Version/15.0 EdgiOS/99.01053.30 Mobile/15E148 Safari/536.1','2024-07-23 20:19:32','2024-08-09 11:03:57'),(33,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',13,'http://localhost','Weldon Cormier','kailyn56@yahoo.com','https://friendsofbotble.com','I\'ve learned something new today, thanks to this article.','approved','210.48.146.92','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_8 rv:4.0) Gecko/20101130 Firefox/36.0','2024-08-01 13:56:31','2024-08-09 11:03:57'),(34,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',11,'http://localhost','Barton Sporer','romaguera.kellen@hotmail.com','https://friendsofbotble.com','Kudos to the author for a well-researched piece.','approved','156.183.217.111','Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X; nl-NL) AppleWebKit/532.46.5 (KHTML, like Gecko) Version/4.0.5 Mobile/8B116 Safari/6532.46.5','2024-07-13 20:24:41','2024-08-09 11:03:57'),(35,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',2,'http://localhost','Prof. Abbey Adams','buck03@gmail.com','https://friendsofbotble.com','I\'m impressed by the depth of knowledge demonstrated here.','approved','67.238.76.136','Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_2 like Mac OS X; nl-NL) AppleWebKit/534.44.7 (KHTML, like Gecko) Version/3.0.5 Mobile/8B119 Safari/6534.44.7','2024-07-21 06:45:06','2024-08-09 11:03:57'),(36,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',14,'http://localhost','Donato Konopelski','roger38@gusikowski.org','https://friendsofbotble.com','This article challenged my assumptions in a good way.','approved','122.126.75.45','Mozilla/5.0 (X11; Linux i686) AppleWebKit/531.1 (KHTML, like Gecko) Chrome/86.0.4683.35 Safari/531.1 EdgA/86.01082.14','2024-07-10 12:50:33','2024-08-09 11:03:57'),(37,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',13,'http://localhost','Jammie Larkin PhD','kody06@yahoo.com','https://friendsofbotble.com','I\'ve shared this with my colleagues, it\'s worth discussing.','approved','116.63.14.211','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 5.2; Trident/5.0)','2024-07-18 10:25:25','2024-08-09 11:03:57'),(38,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',15,'http://localhost','Claud Reichert PhD','homenick.francesco@gmail.com','https://friendsofbotble.com','The information presented here is very valuable.','approved','71.161.91.95','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_9 rv:3.0) Gecko/20201220 Firefox/36.0','2024-08-03 07:30:10','2024-08-09 11:03:57'),(39,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',12,'http://localhost','Daphney Hodkiewicz','lockman.orion@batz.biz','https://friendsofbotble.com','You have a talent for explaining complex topics clearly.','approved','156.88.111.88','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 5.2; Trident/4.1)','2024-07-12 20:55:32','2024-08-09 11:03:57'),(40,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',7,'http://localhost','Prof. Mekhi Shields','wolson@hotmail.com','https://friendsofbotble.com','I\'m inspired to learn more about this after reading your article.','approved','239.93.82.150','Mozilla/5.0 (compatible; MSIE 8.0; Windows 98; Win 9x 4.90; Trident/5.1)','2024-07-23 15:12:58','2024-08-09 11:03:57'),(41,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',12,'http://localhost','Candelario Nader','zola.ernser@franecki.com','https://friendsofbotble.com','This article deserves wider recognition.','approved','241.31.201.19','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_3) AppleWebKit/5352 (KHTML, like Gecko) Chrome/38.0.825.0 Mobile Safari/5352','2024-07-10 21:02:46','2024-08-09 11:03:57'),(42,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',1,'http://localhost','Ms. Roselyn Lehner','istreich@haag.com','https://friendsofbotble.com','I\'m grateful for the insights shared in this piece.','approved','212.62.178.69','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_6) AppleWebKit/5360 (KHTML, like Gecko) Chrome/36.0.832.0 Mobile Safari/5360','2024-08-04 09:47:01','2024-08-09 11:03:57'),(43,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',1,'http://localhost','Mr. Ansel Rice','minnie25@gmail.com','https://friendsofbotble.com','The author presents a balanced view on a controversial topic.','approved','218.145.21.187','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/531.2 (KHTML, like Gecko) Chrome/93.0.4146.78 Safari/531.2 Edg/93.01091.51','2024-07-20 16:39:41','2024-08-09 11:03:57'),(44,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',2,'http://localhost','Madalyn McLaughlin','hollis.pfeffer@leuschke.net','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s','approved','186.88.56.202','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0 rv:3.0; nl-NL) AppleWebKit/535.29.2 (KHTML, like Gecko) Version/5.0.5 Safari/535.29.2','2024-07-29 04:16:07','2024-08-09 11:03:57'),(45,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',15,'http://localhost','Ms. Ericka Bruen I','gottlieb.cassandra@will.net','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article. It\'s incredibly insightful and provides a comprehensive overview of the subject matter. I appreciate the effort put into researching and writing this piece. It\'s truly eye-opening and has given me a new perspective. Thank you for sharing your knowledge with us!','approved','40.235.223.168','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.2 (KHTML, like Gecko) Chrome/88.0.4010.95 Safari/534.2 Edg/88.01088.65','2024-08-02 15:52:52','2024-08-09 11:03:57'),(46,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',5,'http://localhost','Prof. Ana Conn IV','wgleason@gulgowski.biz','https://friendsofbotble.com','This article is a masterpiece! It dives deep into the topic and offers valuable insights that are both thought-provoking and enlightening. The author\'s expertise is evident throughout, making it a compelling read from start to finish. I\'ll definitely be coming back to this for reference in the future.','approved','27.60.184.116','Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20141126 Firefox/36.0','2024-07-12 23:23:51','2024-08-09 11:03:57'),(47,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',18,'http://localhost','Mrs. Ruth Stokes MD','obailey@bode.info','https://friendsofbotble.com','I\'m amazed by the depth of analysis in this article. It covers a wide range of aspects related to the topic, providing a comprehensive understanding. The clarity of explanation is commendable, making complex concepts easy to grasp. This article has enriched my understanding and sparked further curiosity. Kudos to the author!','approved','28.108.189.157','Mozilla/5.0 (iPhone; CPU iPhone OS 7_2_1 like Mac OS X; en-US) AppleWebKit/534.17.5 (KHTML, like Gecko) Version/3.0.5 Mobile/8B111 Safari/6534.17.5','2024-07-17 20:19:27','2024-08-09 11:03:57');
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
INSERT INTO `galleries` VALUES (1,'Perfect','Dolores veritatis explicabo praesentium libero. Saepe aperiam et architecto. Sunt et debitis delectus aut velit est.',0,0,'main/news/1.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(2,'New Day','Reprehenderit eius eligendi et aut quia aperiam. Esse minima quo blanditiis nisi non quae. Est adipisci velit delectus eligendi consequatur sed.',0,0,'main/news/2.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(3,'Happy Day','Omnis quia voluptates quae quas aut. Quia et ut qui est voluptas similique ut. Reprehenderit dolorum molestiae ad consequuntur veritatis.',0,0,'main/news/3.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(4,'Nature','Ut qui iste ut. Accusamus animi veniam minus quidem omnis minus error. Ipsa ipsa eos blanditiis vel aut nesciunt.',0,0,'main/news/4.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(5,'Morning','Voluptatem autem sequi est maiores minus tenetur. Deserunt sit ea atque id dolor aut sit. Minus autem eaque culpa expedita aspernatur.',0,0,'main/news/5.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(6,'Sunset','Reiciendis culpa quibusdam quia deleniti. Non perspiciatis veniam sunt placeat est similique illum. Sapiente reiciendis cum accusantium.',0,0,'main/news/6.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(7,'Ocean Views','Est assumenda deleniti veritatis possimus vitae ut ut id. Itaque vel dolores non ut debitis. Dolores libero aut perferendis rerum.',0,0,'main/news/7.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(8,'Adventure Time','Voluptatum sunt voluptatem iure amet. Temporibus error est quis et eaque. Magnam dolorum sed iure expedita qui ullam aspernatur.',0,0,'main/news/8.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(9,'City Lights','Et veritatis et quisquam. Doloremque laborum unde omnis fuga. In cum ullam explicabo odio.',0,0,'main/news/9.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(10,'Dreamscape','Atque sapiente tempora rem occaecati in id. Porro qui dicta omnis similique dolorem omnis.',0,0,'main/news/10.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(11,'Enchanted Forest','Ut quia harum officiis atque. Natus suscipit corporis quas quidem. Aperiam cumque inventore aut et quos. Tenetur rerum quo recusandae et.',0,0,'main/news/11.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(12,'Golden Hour','Fuga incidunt praesentium quis autem. Non laboriosam quaerat blanditiis repellendus consequatur quia.',0,0,'main/news/12.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(13,'Serenity','Odio error debitis vel dolor alias et. Dolorem ea autem dolor accusamus est animi. Et ducimus natus quaerat in ullam voluptatem.',0,0,'main/news/13.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(14,'Eternal Beauty','Eum et est rem sit sit. Et dolorem quaerat adipisci sed repellat ratione consequuntur.',0,0,'main/news/14.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(15,'Moonlight Magic','Dolore sit est dolorem iusto voluptatem ab. Quia aut impedit ut impedit. Odit ut id nulla et non quas vitae.',0,0,'main/news/15.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(16,'Starry Night','Dicta quidem et ut sint. Quis dolorem omnis necessitatibus odit eligendi adipisci. Id numquam totam consequatur corrupti sapiente quae.',0,0,'main/news/16.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(17,'Hidden Gems','Et ducimus dolorem provident optio facere et ea. Occaecati ratione est culpa. Quia deleniti odio enim quae neque labore ut quisquam.',0,0,'main/news/17.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(18,'Tranquil Waters','Quam dolores et in. Enim facilis neque delectus recusandae. Omnis provident enim officiis accusamus aut.',0,0,'main/news/18.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(19,'Urban Escape','Eligendi quia molestiae neque voluptatem nulla fuga. Dolorem aut maxime excepturi vel omnis amet praesentium.',0,0,'main/news/19.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(20,'Twilight Zone','Ea expedita voluptatem facilis. Quo nobis in et et est sit non. Officia aut tempora impedit autem nihil rerum repudiandae.',0,0,'main/news/20.jpg',1,'published','2024-08-09 11:03:56','2024-08-09 11:03:56');
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
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(2,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(3,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(4,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(5,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(6,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(7,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',7,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(8,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',8,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(9,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',9,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(10,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',10,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(11,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',11,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(12,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',12,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(13,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',13,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(14,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',14,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(15,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',15,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(16,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',16,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(17,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',17,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(18,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',18,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(19,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',19,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56'),(20,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',20,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:03:56','2024-08-09 11:03:56');
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
INSERT INTO `language_meta` VALUES (1,'en_US','b44461d156020096b12467a213b4968d',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','ea035e55673b01904f04cb84d3c0170f',1,'Botble\\Menu\\Models\\Menu');
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
INSERT INTO `media_files` VALUES (1,0,'about-1','about-1',2,'image/png',8467,'main/general/about-1.png','[]','2024-08-09 11:03:33','2024-08-09 11:03:33',NULL,'public'),(2,0,'about-2','about-2',2,'image/png',8467,'main/general/about-2.png','[]','2024-08-09 11:03:33','2024-08-09 11:03:33',NULL,'public'),(3,0,'about-video-1','about-video-1',2,'image/png',20777,'main/general/about-video-1.png','[]','2024-08-09 11:03:33','2024-08-09 11:03:33',NULL,'public'),(4,0,'ads-banner','ads-banner',2,'image/png',75705,'main/general/ads-banner.png','[]','2024-08-09 11:03:33','2024-08-09 11:03:33',NULL,'public'),(5,0,'app-downloads','app-downloads',2,'image/png',7092,'main/general/app-downloads.png','[]','2024-08-09 11:03:33','2024-08-09 11:03:33',NULL,'public'),(6,0,'blog-3','blog-3',2,'image/png',5919,'main/general/blog-3.png','[]','2024-08-09 11:03:34','2024-08-09 11:03:34',NULL,'public'),(7,0,'blog-4','blog-4',2,'image/png',5919,'main/general/blog-4.png','[]','2024-08-09 11:03:34','2024-08-09 11:03:34',NULL,'public'),(8,0,'blog-5','blog-5',2,'image/png',8614,'main/general/blog-5.png','[]','2024-08-09 11:03:34','2024-08-09 11:03:34',NULL,'public'),(9,0,'blog-shape-image','blog-shape-image',2,'image/png',1182,'main/general/blog-shape-image.png','[]','2024-08-09 11:03:34','2024-08-09 11:03:34',NULL,'public'),(10,0,'favicon','favicon',2,'image/png',693,'main/general/favicon.png','[]','2024-08-09 11:03:34','2024-08-09 11:03:34',NULL,'public'),(11,0,'logo-dark','logo-dark',2,'image/png',2098,'main/general/logo-dark.png','[]','2024-08-09 11:03:34','2024-08-09 11:03:34',NULL,'public'),(12,0,'logo','logo',2,'image/png',2593,'main/general/logo.png','[]','2024-08-09 11:03:34','2024-08-09 11:03:34',NULL,'public'),(13,0,'newsletter-image','newsletter-image',2,'image/png',22929,'main/general/newsletter-image.png','[]','2024-08-09 11:03:34','2024-08-09 11:03:34',NULL,'public'),(14,0,'newsletter-popup','newsletter-popup',2,'image/png',24175,'main/general/newsletter-popup.png','[]','2024-08-09 11:03:35','2024-08-09 11:03:35',NULL,'public'),(15,0,'signature','signature',2,'image/png',2197,'main/general/signature.png','[]','2024-08-09 11:03:35','2024-08-09 11:03:35',NULL,'public'),(16,0,'1','1',3,'image/png',9803,'main/members/1.png','[]','2024-08-09 11:03:35','2024-08-09 11:03:35',NULL,'public'),(17,0,'2','2',3,'image/png',9803,'main/members/2.png','[]','2024-08-09 11:03:35','2024-08-09 11:03:35',NULL,'public'),(18,0,'3','3',3,'image/png',9803,'main/members/3.png','[]','2024-08-09 11:03:36','2024-08-09 11:03:36',NULL,'public'),(19,0,'4','4',3,'image/png',9803,'main/members/4.png','[]','2024-08-09 11:03:36','2024-08-09 11:03:36',NULL,'public'),(20,0,'5','5',3,'image/png',9803,'main/members/5.png','[]','2024-08-09 11:03:36','2024-08-09 11:03:36',NULL,'public'),(21,0,'6','6',3,'image/png',9803,'main/members/6.png','[]','2024-08-09 11:03:36','2024-08-09 11:03:36',NULL,'public'),(22,0,'7','7',3,'image/png',9803,'main/members/7.png','[]','2024-08-09 11:03:36','2024-08-09 11:03:36',NULL,'public'),(23,0,'8','8',3,'image/png',9803,'main/members/8.png','[]','2024-08-09 11:03:36','2024-08-09 11:03:36',NULL,'public'),(24,0,'1','1',4,'image/jpeg',33268,'main/news/1.jpg','[]','2024-08-09 11:03:39','2024-08-09 11:03:39',NULL,'public'),(25,0,'10','10',4,'image/jpeg',33268,'main/news/10.jpg','[]','2024-08-09 11:03:39','2024-08-09 11:03:39',NULL,'public'),(26,0,'11','11',4,'image/jpeg',33268,'main/news/11.jpg','[]','2024-08-09 11:03:39','2024-08-09 11:03:39',NULL,'public'),(27,0,'12','12',4,'image/jpeg',33268,'main/news/12.jpg','[]','2024-08-09 11:03:40','2024-08-09 11:03:40',NULL,'public'),(28,0,'13','13',4,'image/jpeg',33268,'main/news/13.jpg','[]','2024-08-09 11:03:40','2024-08-09 11:03:40',NULL,'public'),(29,0,'14','14',4,'image/jpeg',33268,'main/news/14.jpg','[]','2024-08-09 11:03:41','2024-08-09 11:03:41',NULL,'public'),(30,0,'15','15',4,'image/jpeg',33268,'main/news/15.jpg','[]','2024-08-09 11:03:41','2024-08-09 11:03:41',NULL,'public'),(31,0,'16','16',4,'image/jpeg',33268,'main/news/16.jpg','[]','2024-08-09 11:03:42','2024-08-09 11:03:42',NULL,'public'),(32,0,'17','17',4,'image/jpeg',33268,'main/news/17.jpg','[]','2024-08-09 11:03:42','2024-08-09 11:03:42',NULL,'public'),(33,0,'18','18',4,'image/jpeg',33268,'main/news/18.jpg','[]','2024-08-09 11:03:42','2024-08-09 11:03:42',NULL,'public'),(34,0,'19','19',4,'image/jpeg',33268,'main/news/19.jpg','[]','2024-08-09 11:03:43','2024-08-09 11:03:43',NULL,'public'),(35,0,'2','2',4,'image/jpeg',33268,'main/news/2.jpg','[]','2024-08-09 11:03:43','2024-08-09 11:03:43',NULL,'public'),(36,0,'20','20',4,'image/jpeg',33268,'main/news/20.jpg','[]','2024-08-09 11:03:44','2024-08-09 11:03:44',NULL,'public'),(37,0,'3','3',4,'image/jpeg',33268,'main/news/3.jpg','[]','2024-08-09 11:03:44','2024-08-09 11:03:44',NULL,'public'),(38,0,'4','4',4,'image/jpeg',33268,'main/news/4.jpg','[]','2024-08-09 11:03:45','2024-08-09 11:03:45',NULL,'public'),(39,0,'5','5',4,'image/jpeg',33268,'main/news/5.jpg','[]','2024-08-09 11:03:45','2024-08-09 11:03:45',NULL,'public'),(40,0,'6','6',4,'image/jpeg',33268,'main/news/6.jpg','[]','2024-08-09 11:03:46','2024-08-09 11:03:46',NULL,'public'),(41,0,'7','7',4,'image/jpeg',33268,'main/news/7.jpg','[]','2024-08-09 11:03:46','2024-08-09 11:03:46',NULL,'public'),(42,0,'8','8',4,'image/jpeg',33268,'main/news/8.jpg','[]','2024-08-09 11:03:47','2024-08-09 11:03:47',NULL,'public'),(43,0,'9','9',4,'image/jpeg',33268,'main/news/9.jpg','[]','2024-08-09 11:03:47','2024-08-09 11:03:47',NULL,'public'),(44,0,'audio','audio',5,'audio/mpeg',239584,'main/audio/audio.mp3','[]','2024-08-09 11:03:47','2024-08-09 11:03:47',NULL,'public'),(45,0,'1','1',7,'image/jpeg',33268,'ai/news/1.jpg','[]','2024-08-09 11:03:48','2024-08-09 11:03:48',NULL,'public'),(46,0,'10','10',7,'image/jpeg',33268,'ai/news/10.jpg','[]','2024-08-09 11:03:48','2024-08-09 11:03:48',NULL,'public'),(47,0,'11','11',7,'image/jpeg',33268,'ai/news/11.jpg','[]','2024-08-09 11:03:48','2024-08-09 11:03:48',NULL,'public'),(48,0,'12','12',7,'image/jpeg',33268,'ai/news/12.jpg','[]','2024-08-09 11:03:49','2024-08-09 11:03:49',NULL,'public'),(49,0,'13','13',7,'image/jpeg',33268,'ai/news/13.jpg','[]','2024-08-09 11:03:49','2024-08-09 11:03:49',NULL,'public'),(50,0,'14','14',7,'image/jpeg',33268,'ai/news/14.jpg','[]','2024-08-09 11:03:50','2024-08-09 11:03:50',NULL,'public'),(51,0,'15','15',7,'image/jpeg',33268,'ai/news/15.jpg','[]','2024-08-09 11:03:50','2024-08-09 11:03:50',NULL,'public'),(52,0,'16','16',7,'image/jpeg',33268,'ai/news/16.jpg','[]','2024-08-09 11:03:50','2024-08-09 11:03:50',NULL,'public'),(53,0,'17','17',7,'image/jpeg',33268,'ai/news/17.jpg','[]','2024-08-09 11:03:51','2024-08-09 11:03:51',NULL,'public'),(54,0,'18','18',7,'image/jpeg',33268,'ai/news/18.jpg','[]','2024-08-09 11:03:51','2024-08-09 11:03:51',NULL,'public'),(55,0,'19','19',7,'image/jpeg',33268,'ai/news/19.jpg','[]','2024-08-09 11:03:52','2024-08-09 11:03:52',NULL,'public'),(56,0,'2','2',7,'image/jpeg',33268,'ai/news/2.jpg','[]','2024-08-09 11:03:52','2024-08-09 11:03:52',NULL,'public'),(57,0,'20','20',7,'image/jpeg',33268,'ai/news/20.jpg','[]','2024-08-09 11:03:52','2024-08-09 11:03:52',NULL,'public'),(58,0,'3','3',7,'image/jpeg',33268,'ai/news/3.jpg','[]','2024-08-09 11:03:53','2024-08-09 11:03:53',NULL,'public'),(59,0,'4','4',7,'image/jpeg',33268,'ai/news/4.jpg','[]','2024-08-09 11:03:53','2024-08-09 11:03:53',NULL,'public'),(60,0,'5','5',7,'image/jpeg',33268,'ai/news/5.jpg','[]','2024-08-09 11:03:54','2024-08-09 11:03:54',NULL,'public'),(61,0,'6','6',7,'image/jpeg',33268,'ai/news/6.jpg','[]','2024-08-09 11:03:54','2024-08-09 11:03:54',NULL,'public'),(62,0,'7','7',7,'image/jpeg',33268,'ai/news/7.jpg','[]','2024-08-09 11:03:54','2024-08-09 11:03:54',NULL,'public'),(63,0,'8','8',7,'image/jpeg',33268,'ai/news/8.jpg','[]','2024-08-09 11:03:55','2024-08-09 11:03:55',NULL,'public'),(64,0,'9','9',7,'image/jpeg',33268,'ai/news/9.jpg','[]','2024-08-09 11:03:55','2024-08-09 11:03:55',NULL,'public'),(65,0,'favicon','favicon',8,'image/png',1943,'ai/general/favicon.png','[]','2024-08-09 11:03:56','2024-08-09 11:03:56',NULL,'public'),(66,0,'logo-dark','logo-dark',8,'image/png',2036,'ai/general/logo-dark.png','[]','2024-08-09 11:03:56','2024-08-09 11:03:56',NULL,'public'),(67,0,'logo','logo',8,'image/png',2618,'ai/general/logo.png','[]','2024-08-09 11:03:56','2024-08-09 11:03:56',NULL,'public'),(68,0,'breadcrumb','breadcrumb',9,'image/png',109184,'main/backgrounds/breadcrumb.png','[]','2024-08-09 11:03:56','2024-08-09 11:03:56',NULL,'public'),(69,0,'newsletter-bg','newsletter-bg',9,'image/png',15427,'main/backgrounds/newsletter-bg.png','[]','2024-08-09 11:03:56','2024-08-09 11:03:56',NULL,'public'),(70,0,'1','1',10,'image/png',1455,'main/blog-categories/1.png','[]','2024-08-09 11:03:57','2024-08-09 11:03:57',NULL,'public'),(71,0,'2','2',10,'image/png',1455,'main/blog-categories/2.png','[]','2024-08-09 11:03:57','2024-08-09 11:03:57',NULL,'public'),(72,0,'3','3',10,'image/png',1455,'main/blog-categories/3.png','[]','2024-08-09 11:03:57','2024-08-09 11:03:57',NULL,'public'),(73,0,'4','4',10,'image/png',1455,'main/blog-categories/4.png','[]','2024-08-09 11:03:57','2024-08-09 11:03:57',NULL,'public'),(74,0,'5','5',10,'image/png',1455,'main/blog-categories/5.png','[]','2024-08-09 11:03:57','2024-08-09 11:03:57',NULL,'public'),(75,0,'breaking-news-icon','breaking-news-icon',11,'image/png',1133,'main/icons/breaking-news-icon.png','[]','2024-08-09 11:03:57','2024-08-09 11:03:57',NULL,'public');
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
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-08-09 11:03:33','2024-08-09 11:03:33',NULL),(2,0,'general',NULL,'general',1,'2024-08-09 11:03:33','2024-08-09 11:03:33',NULL),(3,0,'members',NULL,'members',1,'2024-08-09 11:03:35','2024-08-09 11:03:35',NULL),(4,0,'news',NULL,'news',1,'2024-08-09 11:03:39','2024-08-09 11:03:39',NULL),(5,0,'audio',NULL,'audio',1,'2024-08-09 11:03:47','2024-08-09 11:03:47',NULL),(6,0,'ai',NULL,'ai',0,'2024-08-09 11:03:47','2024-08-09 11:03:47',NULL),(7,0,'news',NULL,'news',6,'2024-08-09 11:03:47','2024-08-09 11:03:47',NULL),(8,0,'general',NULL,'general',6,'2024-08-09 11:03:56','2024-08-09 11:03:56',NULL),(9,0,'backgrounds',NULL,'backgrounds',1,'2024-08-09 11:03:56','2024-08-09 11:03:56',NULL),(10,0,'blog-categories',NULL,'blog-categories',1,'2024-08-09 11:03:57','2024-08-09 11:03:57',NULL),(11,0,'icons',NULL,'icons',1,'2024-08-09 11:03:57','2024-08-09 11:03:57',NULL);
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
INSERT INTO `members` VALUES (1,'John','Smith','I\'ve got to go after that.',NULL,'member@archielite.com','$2y$12$DL5faEnLUKWAyXM1SBuzfOrsGfrLK0rNM1VQeOjOc.DrB5SVs3x2m',16,'1996-10-23','(520) 438-2193','2024-08-09 18:03:36',NULL,NULL,'2024-08-09 11:03:37','2024-08-09 11:03:37','published'),(2,'Giovanny','Sipes','Hi, I’m Giovanny Sipes, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'joey.douglas@christiansen.com','$2y$12$cCmYXTwy1EipM1tvGOFkgeHDrgLWLop17CiIiN2UOKaZRFubppXBi',17,'2007-09-29','+1 (831) 719-3119','2024-08-09 18:03:36',NULL,NULL,'2024-08-09 11:03:37','2024-08-09 11:03:37','published'),(3,'Opal','Fadel','Hi, I’m Opal Fadel, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'carolanne40@yahoo.com','$2y$12$lm2ebQaqSXOwMoW1lBIv.eWqUUcpR.JINZ9vWRWLm1ANIcFdh1CEK',18,'1976-01-19','(320) 900-7898','2024-08-09 18:03:36',NULL,NULL,'2024-08-09 11:03:37','2024-08-09 11:03:37','published'),(4,'Alyson','Emard','Hi, I’m Alyson Emard, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'garnett99@gmail.com','$2y$12$rRgv0mrIpLk04Y5ViwU8CuNPa6JJkcacJ0/NbjA8qONSyhOMtgLkm',19,'2006-12-01','+1-918-624-7004','2024-08-09 18:03:36',NULL,NULL,'2024-08-09 11:03:37','2024-08-09 11:03:37','published'),(5,'Terrance','Senger','Hi, I’m Terrance Senger, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'sigrid.bailey@schultz.com','$2y$12$wpwHIMjNbptTmsCHJtFxQedCTxiiWgN6eldYE.z/s15GXdmXiiF4C',20,'1971-11-15','910.364.0617','2024-08-09 18:03:36',NULL,NULL,'2024-08-09 11:03:38','2024-08-09 11:03:38','published'),(6,'Alverta','Terry','Hi, I’m Alverta Terry, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'bernier.jordy@kihn.biz','$2y$12$i4TNNsLPukGcerAQ5a6KMu1OSh0.gfwgAN/VUqK32.wr6FW7LLgoG',21,'1988-04-18','(262) 513-3687','2024-08-09 18:03:36',NULL,NULL,'2024-08-09 11:03:38','2024-08-09 11:03:38','published'),(7,'Jamey','Weber','Hi, I’m Jamey Weber, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'bbergnaum@damore.net','$2y$12$dFu4N4j4cOFCSl9pex5Q5eXcMHIb5CKpW9NzU5lcPt.KCCEp9Y2Oy',22,'1970-05-13','+17122566397','2024-08-09 18:03:36',NULL,NULL,'2024-08-09 11:03:38','2024-08-09 11:03:38','published'),(8,'Abel','Boehm','Hi, I’m Abel Boehm, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'alize.carroll@gleichner.com','$2y$12$ZBkyp.g3YrA6FlVxMCClSe0rFKqp6oqIS9V0URnF0bkr8qLUx.u.e',23,'2009-10-14','+17576491901','2024-08-09 18:03:36',NULL,NULL,'2024-08-09 11:03:39','2024-08-09 11:03:39','published');
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-08-09 11:03:57','2024-08-09 11:03:57');
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
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(2,1,1,NULL,NULL,'https://echo-sports.archielite.com',NULL,0,'Home Sports',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(3,1,1,NULL,NULL,'https://echo-travel.archielite.com',NULL,0,'Home Travel',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(4,1,1,NULL,NULL,'https://echo-ai.archielite.com',NULL,0,'Home AI',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(5,1,1,NULL,NULL,'https://echo-politics.archielite.com',NULL,0,'Home Politics',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(6,1,1,NULL,NULL,'https://echo-food.archielite.com',NULL,0,'Home Food',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(7,1,1,NULL,NULL,'https://echo-photography.archielite.com',NULL,0,'Home Photography',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(8,1,1,NULL,NULL,'https://echo.archielite.com',NULL,0,'Home News',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(9,1,1,NULL,NULL,'https://echo-fashion.archielite.com',NULL,0,'Home Fashion',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(10,1,1,NULL,NULL,'https://echo-technology.archielite.com',NULL,0,'Home Technology',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(11,1,1,NULL,NULL,'https://echo-gaming.archielite.com',NULL,0,'Home Gaming',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(12,1,0,NULL,NULL,'/',NULL,0,'Pages',NULL,'_self',1,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(13,1,12,NULL,NULL,'/about-us',NULL,0,'About',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(14,1,12,NULL,NULL,'/author/smith',NULL,0,'Author',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(15,1,12,NULL,NULL,'/team',NULL,0,'Team',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(16,1,12,NULL,NULL,'/error-page',NULL,0,'Error Page',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(17,1,0,NULL,NULL,'/blog',NULL,0,'Blog',NULL,'_self',1,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(18,1,17,NULL,NULL,'/blog?style=card',NULL,0,'Blog Card',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(19,1,17,NULL,NULL,'/blog?style=list',NULL,0,'Blog List',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(20,1,17,NULL,NULL,'/blog?style=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(21,1,17,NULL,NULL,'/blog?style=mixed',NULL,0,'Blog Mixed',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(22,1,0,1,'Botble\\Blog\\Models\\Post','/blog/understanding-neural-networks',NULL,0,'Post',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57'),(23,1,0,NULL,NULL,'contact',NULL,0,'Contact',NULL,'_self',0,'2024-08-09 11:03:57','2024-08-09 11:03:57');
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
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-08-09 11:03:57','2024-08-09 11:03:57');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'title','[\"Sr. Manager\"]',1,'Botble\\Member\\Models\\Member','2024-08-09 11:03:37','2024-08-09 11:03:37'),(2,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',1,'Botble\\Member\\Models\\Member','2024-08-09 11:03:37','2024-08-09 11:03:37'),(3,'title','[\"Sr. Manager\"]',2,'Botble\\Member\\Models\\Member','2024-08-09 11:03:37','2024-08-09 11:03:37'),(4,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',2,'Botble\\Member\\Models\\Member','2024-08-09 11:03:37','2024-08-09 11:03:37'),(5,'title','[\"Chef Editor\"]',3,'Botble\\Member\\Models\\Member','2024-08-09 11:03:37','2024-08-09 11:03:37'),(6,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',3,'Botble\\Member\\Models\\Member','2024-08-09 11:03:37','2024-08-09 11:03:37'),(7,'title','[\"Chef Marketing Officer\"]',4,'Botble\\Member\\Models\\Member','2024-08-09 11:03:37','2024-08-09 11:03:37'),(8,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',4,'Botble\\Member\\Models\\Member','2024-08-09 11:03:37','2024-08-09 11:03:37'),(9,'title','[\"Creative Director\"]',5,'Botble\\Member\\Models\\Member','2024-08-09 11:03:38','2024-08-09 11:03:38'),(10,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',5,'Botble\\Member\\Models\\Member','2024-08-09 11:03:38','2024-08-09 11:03:38'),(11,'title','[\"Sr. Manager\"]',6,'Botble\\Member\\Models\\Member','2024-08-09 11:03:38','2024-08-09 11:03:38'),(12,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',6,'Botble\\Member\\Models\\Member','2024-08-09 11:03:38','2024-08-09 11:03:38'),(13,'title','[\"Chef Editor\"]',7,'Botble\\Member\\Models\\Member','2024-08-09 11:03:38','2024-08-09 11:03:38'),(14,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',7,'Botble\\Member\\Models\\Member','2024-08-09 11:03:38','2024-08-09 11:03:38'),(15,'title','[\"Marketing Director\"]',8,'Botble\\Member\\Models\\Member','2024-08-09 11:03:39','2024-08-09 11:03:39'),(16,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',8,'Botble\\Member\\Models\\Member','2024-08-09 11:03:39','2024-08-09 11:03:39'),(17,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',2,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56'),(18,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',3,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56'),(19,'audio','[\"main\\/audio\\/audio.mp3\"]',4,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56'),(20,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',5,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56'),(21,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',6,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56'),(22,'audio','[\"main\\/audio\\/audio.mp3\"]',7,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56'),(23,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',8,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56'),(24,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',9,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56'),(25,'audio','[\"main\\/audio\\/audio.mp3\"]',10,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56'),(26,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',11,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56'),(27,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',12,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56'),(28,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',14,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56'),(29,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',15,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56'),(30,'audio','[\"main\\/audio\\/audio.mp3\"]',16,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56'),(31,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',17,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56'),(32,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',18,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56'),(33,'audio','[\"main\\/audio\\/audio.mp3\"]',19,'Botble\\Blog\\Models\\Post','2024-08-09 11:03:56','2024-08-09 11:03:56');
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
INSERT INTO `pages` VALUES (1,'Homepage','<div>[blog-posts style=\"style-14\" limit=\"7\" text_color=\"rgb(0, 0, 0)\" background_color=\"rgb(255, 255, 255)\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-15\" category_ids=\"3,4,6,7\" title=\"Latest Updates\" limit=\"4\" title_align=\"center\" text_color=\"transparent\" background_color=\"rgb(159, 104, 245)\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-13\" title=\"Trending News\" limit=\"6\" title_align=\"start\" text_color=\"transparent\" background_color=\"transparent\" sidebar=\"custom_sidebar_1\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-4\" title=\"Editor\'s Picks\" limit=\"4\" title_align=\"center\" text_color=\"#ffffff\" background_color=\"rgb(159, 104, 245)\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-2\" category_ids=\"1,4,6,7\" title=\"AI for Business\" limit=\"6\" title_align=\"start\" text_color=\"transparent\" background_color=\"transparent\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-6\" title=\"Popular Of the Weeks\" limit=\"4\" title_align=\"start\" text_color=\"rgb(0, 0, 0)\" background_color=\"rgb(242, 242, 242)\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-16\" category_ids=\"2,5,7\" title=\"AI for Business\" limit=\"3\" title_align=\"start\" text_color=\"transparent\" background_color=\"transparent\"][/blog-posts]</div><div>[app-downloads title=\"Download Our Apps For Stay Update\" subtitle=\"Easy to update latest news, aily podcast and everything in your hand\" platform_google_label=\"Play Store\" platform_google_icon=\"ti ti-brand-google-play\" platform_google_url=\"https://play.google.com/\" platform_apple_label=\"Apple Store\" platform_apple_icon=\"ti ti-brand-apple\" platform_apple_url=\"https://www.apple.com/app-store/\" image=\"main/general/app-downloads.png\" background_color=\"#9f68f5\"][/app-downloads]</div>',1,NULL,'homepage',NULL,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(2,'About us','<div>[about-us title=\"Know our Publication Media & Vision.\" subtitle=\"Bring To The Table Win-Win Survival Strategies To Ensure Proactive Domination. At The End Of The Day Going.\" description=\"Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the over holistic world view of disruptive innovation via workplace diversity and Bring to the table win-win survival strategies to ensure proactive fin domination. At the end of the day, going forward, a new normal.\" staff_name=\"Raihawly Williamson\" staff_description=\"CEO, Echo Publishing Inc.\" staff_signature=\"main/general/signature.png\" first_image=\"main/general/about-1.png\" second_image=\"main/general/about-2.png\"][/about-us]</div><div>[intro-video image=\"main/general/about-video-1.png\" video_url=\"https://www.youtube.com/watch?v=Y1t6rjWYNro\" play_icon=\"ti ti-player-play-filled\"][/intro-video]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(3,'Contact','<div>[contact-form title=\"General Customer Care & Technical Support\" description=\"We’re here to assist you with any questions or technical issues you may have. Please fill out the form below, and our dedicated team will respond promptly to ensure you have a seamless experience with us.\" button_label=\"Send Message\" button_icon=\"ti ti-arrow-right\" quantity=\"3\" title_1=\"Location\" description_1=\"The Business Centre132, New York 12401. United States\" icon_1=\"ti ti-map-pin\" url_1=\"\" open_in_new_tab_1=\"yes\" title_2=\"Email Address\" description_2=\"info@yourmail.com\" icon_2=\"ti ti-mail\" url_2=\"mailto:info@yourmail.com\" open_in_new_tab_2=\"yes\" title_3=\"Phone\" description_3=\"(00) 123 456 789 99\" icon_3=\"ti ti-phone\" url_3=\"tel:(00) 123 456 789 99\" open_in_new_tab_3=\"yes\"  address=\"Fortis Downtown Resort\"][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(4,'Blog','---',1,NULL,'full-width',NULL,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(5,'Team','<div>[members title=\"Meet Our Professional Team\" member_ids=\"1,2,3,4,5,6,7,8\"][/members]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(7,'Terms Of Use','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(8,'Privacy Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(9,'Advertise','<h3>Random Content</h3><p>This is a random content that will be displayed on the page.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:03:56','2024-08-09 11:03:56'),(10,'FAQ','<h3>Random Content</h3><p>This is a random content that will be displayed on the page.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:03:56','2024-08-09 11:03:56');
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
INSERT INTO `post_categories` VALUES (8,1),(5,1),(9,2),(5,2),(9,3),(8,3),(1,4),(5,4),(6,5),(10,5),(2,6),(9,6),(5,7),(1,8),(4,8),(1,9),(3,9),(1,10),(9,10),(6,11),(1,12),(5,13),(4,13),(1,14),(6,14),(6,15),(8,15),(5,16),(3,16),(1,17),(3,17),(9,18),(4,18),(6,19),(7,19);
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
INSERT INTO `post_tags` VALUES (5,1),(6,1),(4,1),(7,2),(2,2),(6,2),(3,3),(1,3),(9,4),(6,4),(4,5),(8,5),(6,6),(2,6),(1,7),(9,7),(2,7),(9,8),(10,8),(8,9),(2,9),(6,9),(5,10),(8,10),(4,10),(8,11),(7,11),(10,11),(3,12),(1,12),(10,13),(4,13),(7,13),(3,14),(10,14),(2,14),(4,15),(5,15),(7,15),(7,16),(2,16),(3,16),(7,17),(2,17),(1,18),(8,18),(4,18),(8,19),(3,19),(1,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Understanding Neural Networks','Explore the inner workings of neural networks and their applications in artificial intelligence. From feedforward to recurrent models, dive deep into the fundamentals of this powerful technology.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',4,'Botble\\Member\\Models\\Member',1,'ai/news/1.jpg',555,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(2,'Natural Language Processing Essentials','Discover the fascinating world of natural language processing (NLP) and its role in AI. Learn about techniques like sentiment analysis, named entity recognition, and language generation, and their real-world applications.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',6,'Botble\\Member\\Models\\Member',1,'ai/news/2.jpg',1064,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(3,'Introduction to Machine Learning Algorithms','Get started with machine learning algorithms, from classic models like linear regression to advanced techniques like support vector machines and random forests. Learn how to apply these algorithms to solve real-world problems.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',4,'Botble\\Member\\Models\\Member',1,'ai/news/3.jpg',1584,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(4,'The Rise of Deep Learning','Witness the rise of deep learning and its impact on artificial intelligence. From image recognition to speech synthesis, explore the groundbreaking advancements made possible by deep neural networks.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',1,'Botble\\Member\\Models\\Member',1,'ai/news/4.jpg',2219,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(5,'Reinforcement Learning Basics','Delve into the world of reinforcement learning and its role in training intelligent agents. Learn about reward functions, policy gradients, and value iteration, and see how these concepts are applied in autonomous systems.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',3,'Botble\\Member\\Models\\Member',1,'ai/news/5.jpg',1361,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(6,'Computer Vision Applications in AI','Discover the exciting field of computer vision and its applications in artificial intelligence. From object detection to image segmentation, explore the algorithms and techniques used to analyze and interpret visual data.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',4,'Botble\\Member\\Models\\Member',1,'ai/news/6.jpg',821,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(7,'Ethical Considerations in AI Development','Examine the ethical implications of AI development and deployment. From bias in algorithms to concerns about privacy and security, explore the complex issues surrounding the responsible use of artificial intelligence.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',8,'Botble\\Member\\Models\\Member',1,'ai/news/7.jpg',689,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(8,'Robotics and AI: The Future of Automation','Explore the intersection of robotics and artificial intelligence and its potential to revolutionize industries. From autonomous vehicles to smart manufacturing, discover how AI-powered robots are reshaping the way we work and live.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',7,'Botble\\Member\\Models\\Member',1,'ai/news/8.jpg',525,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(9,'AI in Healthcare: Transforming Medicine','Learn about the transformative impact of artificial intelligence on healthcare. From medical imaging to drug discovery, explore how AI is revolutionizing diagnosis, treatment, and patient care.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',5,'Botble\\Member\\Models\\Member',1,'ai/news/9.jpg',1993,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(10,'AI in Finance: Revolutionizing the Industry','Discover how artificial intelligence is revolutionizing the finance industry. From algorithmic trading to risk management, explore the applications of AI in banking, insurance, and investment management.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',3,'Botble\\Member\\Models\\Member',1,'ai/news/10.jpg',1806,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(11,'Exploring Generative Adversarial Networks (GANs)','Dive into the world of generative adversarial networks (GANs) and their applications in AI. Learn how GANs are used to generate realistic images, videos, and text, and explore their potential for creative applications.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',8,'Botble\\Member\\Models\\Member',0,'ai/news/11.jpg',214,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(12,'The Future of AI: Trends and Predictions','Explore the future of artificial intelligence and emerging trends in the field. From explainable AI to AI ethics, delve into the challenges and opportunities that lie ahead as AI continues to evolve and transform industries.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',1,'Botble\\Member\\Models\\Member',0,'ai/news/12.jpg',461,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(13,'AI-Powered Personal Assistants: Beyond Siri and Alexa','Discover the latest advancements in AI-powered personal assistants and virtual agents. From natural language understanding to context-aware recommendations, explore how these technologies are revolutionizing the way we interact with computers and devices.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',5,'Botble\\Member\\Models\\Member',0,'ai/news/13.jpg',1408,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(14,'AI for Social Good: Addressing Global Challenges','Learn about the role of artificial intelligence in addressing global challenges and promoting social good. From disaster response to healthcare access, explore how AI is being used to tackle some of the world\'s most pressing issues and create positive change.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',8,'Botble\\Member\\Models\\Member',0,'ai/news/14.jpg',1293,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(15,'The Ethics of AI: Bias, Fairness, and Accountability','Examine the ethical considerations surrounding the development and deployment of artificial intelligence. From algorithmic bias to data privacy, explore the principles and practices that ensure AI is developed and used responsibly.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',5,'Botble\\Member\\Models\\Member',0,'ai/news/15.jpg',1099,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(16,'Advancements in AI Hardware: GPUs, TPUs, and Beyond','Explore the latest advancements in AI hardware and accelerators, from graphics processing units (GPUs) to tensor processing units (TPUs). Learn how these specialized chips are powering the next generation of AI applications and driving innovation in the field.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',5,'Botble\\Member\\Models\\Member',0,'ai/news/16.jpg',1370,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(17,'AI in Education: Personalized Learning and Adaptive Assessments','Discover how artificial intelligence is transforming education through personalized learning and adaptive assessments. From intelligent tutoring systems to automated grading, explore how AI is revolutionizing teaching and learning in classrooms around the world.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',1,'Botble\\Member\\Models\\Member',0,'ai/news/17.jpg',1488,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(18,'AI in Agriculture: Precision Farming and Crop Monitoring','Learn about the applications of artificial intelligence in agriculture and farming. From precision farming to crop monitoring, explore how AI-powered technologies are optimizing agricultural processes and improving crop yields.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',4,'Botble\\Member\\Models\\Member',0,'ai/news/18.jpg',1414,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56'),(19,'AI in Transportation: Autonomous Vehicles and Traffic Management','Explore the role of artificial intelligence in transportation and mobility. From self-driving cars to intelligent traffic management systems, discover how AI is revolutionizing the way we move people and goods.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',7,'Botble\\Member\\Models\\Member',0,'ai/news/19.jpg',862,NULL,'2024-08-09 11:03:56','2024-08-09 11:03:56');
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"fob-comment.index\":true,\"fob-comment.comments.index\":true,\"fob-comment.comments.edit\":true,\"fob-comment.comments.destroy\":true,\"fob-comment.comments.reply\":true,\"fob-comment.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-08-09 11:03:35','2024-08-09 11:03:35');
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
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-08-09 11:03:57'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"ai-writer\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"fob-comment\",\"gallery\",\"member\",\"newsletter\",\"note\",\"request-log\",\"rss-feed\",\"social-login\",\"translation\"]',NULL,'2024-08-09 11:03:57'),(4,'ai_writer_proxy_enable','0',NULL,'2024-08-09 11:03:57'),(5,'ai_writer_proxy_protocol',NULL,NULL,'2024-08-09 11:03:57'),(6,'ai_writer_proxy_ip',NULL,NULL,'2024-08-09 11:03:57'),(7,'ai_writer_proxy_port',NULL,NULL,'2024-08-09 11:03:57'),(8,'ai_writer_proxy_username',NULL,NULL,'2024-08-09 11:03:57'),(9,'ai_writer_proxy_password',NULL,NULL,'2024-08-09 11:03:57'),(10,'ai_writer_prompt_template','[{\"title\":\"Product Content\",\"content\":\"You will be a marketer. I will give the information of the product, you will write an introductory article about that product, the article requires google seo standards and is highly persuasive to increase the rate of users closing orders.\\nParameters product:\"},{\"title\":\"Post Content\",\"content\":\"You will be a marketer. Articles about:\"}]',NULL,'2024-08-09 11:03:57'),(11,'ai_writer_openai_key',NULL,NULL,'2024-08-09 11:03:57'),(12,'ai_writer_openai_temperature','1',NULL,'2024-08-09 11:03:57'),(13,'ai_writer_openai_max_tokens','2000',NULL,'2024-08-09 11:03:57'),(14,'ai_writer_openai_frequency_penalty','0',NULL,'2024-08-09 11:03:57'),(15,'ai_writer_openai_presence_penalty','0',NULL,'2024-08-09 11:03:57'),(16,'ai_writer_openai_models','[\"gpt-3.5-turbo\"]',NULL,'2024-08-09 11:03:57'),(17,'ai_writer_openai_default_model','gpt-3.5-turbo',NULL,'2024-08-09 11:03:57'),(18,'ai_writer_spin_template','[]',NULL,'2024-08-09 11:03:57'),(21,'language_hide_default','1',NULL,'2024-08-09 11:03:57'),(22,'language_switcher_display','dropdown',NULL,'2024-08-09 11:03:57'),(23,'language_display','all',NULL,'2024-08-09 11:03:57'),(24,'language_hide_languages','[]',NULL,'2024-08-09 11:03:57'),(25,'media_random_hash','77b83725f88a16db2dd843c4be7f0ee7',NULL,'2024-08-09 11:03:57'),(26,'theme','echo-ai',NULL,'2024-08-09 11:03:57'),(27,'show_admin_bar','1',NULL,'2024-08-09 11:03:57'),(28,'admin_favicon','main/general/favicon.png',NULL,'2024-08-09 11:03:57'),(29,'admin_logo','main/general/logo-dark.png',NULL,'2024-08-09 11:03:57'),(30,'permalink-botble-blog-models-post','blog',NULL,'2024-08-09 11:03:57'),(31,'permalink-botble-blog-models-category','blog',NULL,'2024-08-09 11:03:57'),(32,'theme-echo-ai-site_name','Echo - AI',NULL,'2024-08-09 11:03:57'),(33,'theme-echo-ai-site_title','News & Magazine Laravel Script.',NULL,'2024-08-09 11:03:57'),(34,'theme-echo-ai-seo_description','Echo is a modern, clean, and professional Laravel script that is suitable for news, magazine, blog, and any kind of website.',NULL,'2024-08-09 11:03:57'),(35,'theme-echo-ai-homepage_id','1',NULL,'2024-08-09 11:03:57'),(36,'theme-echo-ai-logo','ai/general/logo.png',NULL,'2024-08-09 11:03:57'),(37,'theme-echo-ai-logo_dark','ai/general/logo-dark.png',NULL,'2024-08-09 11:03:57'),(38,'theme-echo-ai-favicon','ai/general/favicon.png',NULL,'2024-08-09 11:03:57'),(39,'theme-echo-ai-blog_page_id','4',NULL,'2024-08-09 11:03:57'),(40,'theme-echo-ai-primary_font','Inter',NULL,'2024-08-09 11:03:57'),(41,'theme-echo-ai-heading_font','Jost',NULL,'2024-08-09 11:03:57'),(42,'theme-echo-ai-theme_style','auto',NULL,'2024-08-09 11:03:57'),(43,'theme-echo-ai-secondary_color','#181823',NULL,'2024-08-09 11:03:57'),(44,'theme-echo-ai-breadcrumb_background_image','main/backgrounds/breadcrumb.png',NULL,'2024-08-09 11:03:57'),(45,'theme-echo-ai-breadcrumb_background_color','transparent',NULL,'2024-08-09 11:03:57'),(46,'theme-echo-ai-breadcrumb_text_color','',NULL,'2024-08-09 11:03:57'),(47,'theme-echo-ai-blog_author_style','avatar_start',NULL,'2024-08-09 11:03:57'),(48,'theme-echo-ai-blog_description_style','normal',NULL,'2024-08-09 11:03:57'),(49,'theme-echo-ai-copyright','©%Y Archi Elite JSC. All Rights Reserved.',NULL,'2024-08-09 11:03:57'),(50,'theme-echo-ai-language_switcher_enabled','1',NULL,'2024-08-09 11:03:57'),(51,'theme-echo-ai-newsletter_popup_enable','1',NULL,'2024-08-09 11:03:57'),(52,'theme-echo-ai-newsletter_popup_image','main/general/newsletter-popup.png',NULL,'2024-08-09 11:03:57'),(53,'theme-echo-ai-newsletter_popup_title','Let’s join our newsletter!',NULL,'2024-08-09 11:03:57'),(54,'theme-echo-ai-newsletter_popup_subtitle','Weekly Updates',NULL,'2024-08-09 11:03:57'),(55,'theme-echo-ai-newsletter_popup_description','Do not worry we don’t spam!',NULL,'2024-08-09 11:03:57'),(56,'theme-echo-ai-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,'2024-08-09 11:03:57'),(57,'theme-echo-ai-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,'2024-08-09 11:03:57'),(58,'theme-echo-ai-primary_color','#7817F2',NULL,'2024-08-09 11:03:57'),(59,'announcement_max_width','1390',NULL,NULL),(60,'announcement_text_color','#fefefe',NULL,NULL),(61,'announcement_background_color','#7817F2',NULL,NULL),(62,'announcement_text_alignment','center',NULL,NULL),(63,'announcement_dismissible','1',NULL,NULL),(64,'announcement_font_size','14',NULL,NULL),(65,'announcement_font_size_unit','px',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'smith',1,'Botble\\Member\\Models\\Member','author','2024-08-09 11:03:39','2024-08-09 11:03:58'),(2,'sipes',2,'Botble\\Member\\Models\\Member','author','2024-08-09 11:03:39','2024-08-09 11:03:58'),(3,'fadel',3,'Botble\\Member\\Models\\Member','author','2024-08-09 11:03:39','2024-08-09 11:03:58'),(4,'emard',4,'Botble\\Member\\Models\\Member','author','2024-08-09 11:03:39','2024-08-09 11:03:58'),(5,'senger',5,'Botble\\Member\\Models\\Member','author','2024-08-09 11:03:39','2024-08-09 11:03:58'),(6,'terry',6,'Botble\\Member\\Models\\Member','author','2024-08-09 11:03:39','2024-08-09 11:03:58'),(7,'weber',7,'Botble\\Member\\Models\\Member','author','2024-08-09 11:03:39','2024-08-09 11:03:58'),(8,'boehm',8,'Botble\\Member\\Models\\Member','author','2024-08-09 11:03:39','2024-08-09 11:03:58'),(9,'neural-networks',1,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:03:47','2024-08-09 11:03:56'),(10,'natural-language-processing',2,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:03:47','2024-08-09 11:03:56'),(11,'machine-learning',3,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:03:47','2024-08-09 11:03:56'),(12,'deep-learning',4,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:03:47','2024-08-09 11:03:56'),(13,'reinforcement-learning',5,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:03:47','2024-08-09 11:03:56'),(14,'computer-vision',6,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:03:47','2024-08-09 11:03:56'),(15,'ethics-in-ai',7,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:03:47','2024-08-09 11:03:56'),(16,'robotics',8,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:03:47','2024-08-09 11:03:56'),(17,'ai-in-healthcare',9,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:03:47','2024-08-09 11:03:56'),(18,'ai-in-finance',10,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:03:47','2024-08-09 11:03:56'),(19,'artificial-intelligence',1,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:03:47','2024-08-09 11:03:47'),(20,'machine-learning',2,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:03:47','2024-08-09 11:03:47'),(21,'deep-learning',3,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:03:47','2024-08-09 11:03:47'),(22,'neural-networks',4,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:03:47','2024-08-09 11:03:47'),(23,'natural-language-processing',5,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:03:47','2024-08-09 11:03:47'),(24,'computer-vision',6,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:03:47','2024-08-09 11:03:47'),(25,'reinforcement-learning',7,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:03:47','2024-08-09 11:03:47'),(26,'robotics',8,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:03:47','2024-08-09 11:03:47'),(27,'healthcare-ai',9,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:03:47','2024-08-09 11:03:47'),(28,'finance-ai',10,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:03:47','2024-08-09 11:03:47'),(29,'understanding-neural-networks',1,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(30,'natural-language-processing-essentials',2,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(31,'introduction-to-machine-learning-algorithms',3,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(32,'the-rise-of-deep-learning',4,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(33,'reinforcement-learning-basics',5,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(34,'computer-vision-applications-in-ai',6,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(35,'ethical-considerations-in-ai-development',7,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(36,'robotics-and-ai-the-future-of-automation',8,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(37,'ai-in-healthcare-transforming-medicine',9,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(38,'ai-in-finance-revolutionizing-the-industry',10,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(39,'exploring-generative-adversarial-networks-gans',11,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(40,'the-future-of-ai-trends-and-predictions',12,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(41,'ai-powered-personal-assistants-beyond-siri-and-alexa',13,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(42,'ai-for-social-good-addressing-global-challenges',14,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(43,'the-ethics-of-ai-bias-fairness-and-accountability',15,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(44,'advancements-in-ai-hardware-gpus-tpus-and-beyond',16,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(45,'ai-in-education-personalized-learning-and-adaptive-assessments',17,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(46,'ai-in-agriculture-precision-farming-and-crop-monitoring',18,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(47,'ai-in-transportation-autonomous-vehicles-and-traffic-management',19,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:03:56','2024-08-09 11:03:56'),(48,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(49,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(50,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(51,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(52,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(53,'sunset',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(54,'ocean-views',7,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(55,'adventure-time',8,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(56,'city-lights',9,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(57,'dreamscape',10,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(58,'enchanted-forest',11,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(59,'golden-hour',12,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(60,'serenity',13,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(61,'eternal-beauty',14,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(62,'moonlight-magic',15,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(63,'starry-night',16,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(64,'hidden-gems',17,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(65,'tranquil-waters',18,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(66,'urban-escape',19,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(67,'twilight-zone',20,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:03:56','2024-08-09 11:03:56'),(68,'homepage',1,'Botble\\Page\\Models\\Page','','2024-08-09 11:03:56','2024-08-09 11:03:56'),(69,'about-us',2,'Botble\\Page\\Models\\Page','','2024-08-09 11:03:56','2024-08-09 11:03:56'),(70,'contact',3,'Botble\\Page\\Models\\Page','','2024-08-09 11:03:56','2024-08-09 11:03:56'),(71,'blog',4,'Botble\\Page\\Models\\Page','','2024-08-09 11:03:56','2024-08-09 11:03:56'),(72,'team',5,'Botble\\Page\\Models\\Page','','2024-08-09 11:03:56','2024-08-09 11:03:56'),(73,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2024-08-09 11:03:56','2024-08-09 11:03:56'),(74,'terms-of-use',7,'Botble\\Page\\Models\\Page','','2024-08-09 11:03:56','2024-08-09 11:03:56'),(75,'privacy-policy',8,'Botble\\Page\\Models\\Page','','2024-08-09 11:03:56','2024-08-09 11:03:56'),(76,'advertise',9,'Botble\\Page\\Models\\Page','','2024-08-09 11:03:56','2024-08-09 11:03:56'),(77,'faq',10,'Botble\\Page\\Models\\Page','','2024-08-09 11:03:56','2024-08-09 11:03:56');
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
INSERT INTO `tags` VALUES (1,'Artificial Intelligence',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:03:47','2024-08-09 11:03:47'),(2,'Machine Learning',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:03:47','2024-08-09 11:03:47'),(3,'Deep Learning',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:03:47','2024-08-09 11:03:47'),(4,'Neural Networks',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:03:47','2024-08-09 11:03:47'),(5,'Natural Language Processing',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:03:47','2024-08-09 11:03:47'),(6,'Computer Vision',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:03:47','2024-08-09 11:03:47'),(7,'Reinforcement Learning',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:03:47','2024-08-09 11:03:47'),(8,'Robotics',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:03:47','2024-08-09 11:03:47'),(9,'Healthcare AI',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:03:47','2024-08-09 11:03:47'),(10,'Finance AI',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:03:47','2024-08-09 11:03:47');
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
INSERT INTO `users` VALUES (1,'nyasia.zemlak@mclaughlin.org',NULL,'$2y$12$/Srzi5TRG0YZMM01DziN/uNtjvnQPBfjL48X97QipVr/zuwEwQ2se',NULL,'2024-08-09 11:03:35','2024-08-09 11:03:35','Damian','Bernier','admin',NULL,1,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'BlogPostsWidget','menu_sidebar','echo-ai',1,'{\"type\":\"recent\",\"category_ids\":[1,2,3],\"limit\":3}','2024-08-09 11:03:57','2024-08-09 11:03:57'),(2,'SocialLinksWidget','menu_sidebar','echo-ai',2,'[]','2024-08-09 11:03:57','2024-08-09 11:03:57'),(3,'BlogCategoriesWidget','primary_sidebar','echo-ai',1,'{\"title\":\"Popular Categories\",\"id\":\"BlogCategoriesWidget\",\"enable_lazy_loading\":\"yes\",\"quantity\":\"5\",\"category_id_1\":\"1\",\"background_image_1\":\"main\\/blog-categories\\/1.png\",\"background_color_1\":\"rgb(174 81 43)\",\"category_id_2\":\"2\",\"background_image_2\":\"main\\/blog-categories\\/2.png\",\"background_color_2\":\"rgb(102 64 165)\",\"category_id_3\":\"3\",\"background_image_3\":\"main\\/blog-categories\\/3.png\",\"background_color_3\":\"rgb(85 163 168)\",\"category_id_4\":\"4\",\"background_image_4\":\"main\\/blog-categories\\/4.png\",\"background_color_4\":\"rgb(83 39 21)\",\"category_id_5\":\"5\",\"background_image_5\":\"main\\/blog-categories\\/5.png\",\"background_color_5\":\"rgb(85 163 168)\"}','2024-08-09 11:03:57','2024-08-09 11:03:57'),(4,'BlogPostsWidget','primary_sidebar','echo-ai',2,'{\"type\":\"popular\",\"card_style\":\"default-card\",\"shape\":\"square\",\"category_ids\":[1,3,4],\"title\":\"Top Story\",\"limit\":4,\"enable_lazy_loading\":\"yes\"}','2024-08-09 11:03:57','2024-08-09 11:03:57'),(5,'FollowUsWidget','primary_sidebar','echo-ai',3,'{\"id\":\"FollowUsWidget\",\"items\":[[{\"key\":\"title\",\"value\":\"20K Fans\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"title\",\"value\":\"10K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"title\",\"value\":\"50K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/instagram.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/linkedin.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/pinterest.com\"}],[{\"key\":\"title\",\"value\":\"04K Subscribers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"}]]}','2024-08-09 11:03:57','2024-08-09 11:03:57'),(6,'BlogPostsWidget','custom_sidebar_1','echo-ai',1,'{\"type\":\"recent\",\"category_ids\":[1,2,3],\"title\":\"Most Read\",\"limit\":5,\"enable_lazy_loading\":\"yes\"}','2024-08-09 11:03:57','2024-08-09 11:03:57'),(7,'BlogPostsWidget','custom_sidebar_2','echo-ai',1,'{\"type\":\"recent\",\"style\":\"default-card\",\"shape\":\"square\",\"category_ids\":[3,6],\"title\":\"Top Story\",\"limit\":4}','2024-08-09 11:03:57','2024-08-09 11:03:57'),(8,'BlogPostsWidget','custom_sidebar_2','echo-ai',2,'{\"type\":\"popular\",\"style\":\"orderly-card\",\"shape\":\"square\",\"category_ids\":[1,5,6],\"title\":\"Top Reviews\",\"limit\":3}','2024-08-09 11:03:57','2024-08-09 11:03:57'),(9,'FollowUsWidget','custom_sidebar_2','echo-ai',3,'{\"id\":\"FollowUsWidget\",\"items\":[[{\"key\":\"title\",\"value\":\"20K Fans\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"title\",\"value\":\"10K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"title\",\"value\":\"50K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/instagram.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/linkedin.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/pinterest.com\"}],[{\"key\":\"title\",\"value\":\"04K Subscribers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"}]]}','2024-08-09 11:03:57','2024-08-09 11:03:57'),(10,'NewsletterWidget','custom_sidebar_2','echo-ai',4,'{\"id\":\"NewsletterWidget\",\"title\":\"Newsletter\",\"description\":\"Stay Tuned With Updates\",\"image\":\"main\\/general\\/newsletter-image.png\"}','2024-08-09 11:03:57','2024-08-09 11:03:57'),(11,'BannerAdsWidget','custom_sidebar_2','echo-ai',5,'{\"ad_image\":\"main\\/general\\/ads-banner.png\",\"ad_link\":\"https:\\/\\/google.com\"}','2024-08-09 11:03:57','2024-08-09 11:03:57'),(12,'SiteInformationWidget','footer_sidebar','echo-ai',1,'{\"id\":\"SiteInformationWidget\",\"title\":\"Get In Touch\",\"email\":\"Info@Demomail.Com\",\"hotline\":\"(00) 236 123 456 88\",\"address\":\"255 Sheet, New Avanew, NY\"}','2024-08-09 11:03:57','2024-08-09 11:03:57'),(13,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','echo-ai',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Most Popular\",\"style\":\"2-column\",\"items\":[[{\"key\":\"label\",\"value\":\"Neural Networks\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/neural-networks\"}],[{\"key\":\"label\",\"value\":\"Natural Language Processing\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/natural-language-processing\"}],[{\"key\":\"label\",\"value\":\"Machine Learning\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/machine-learning\"}],[{\"key\":\"label\",\"value\":\"Deep Learning\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/deep-learning\"}],[{\"key\":\"label\",\"value\":\"Reinforcement Learning\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/reinforcement-learning\"}]]}','2024-08-09 11:03:57','2024-08-09 11:03:57'),(14,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','echo-ai',3,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Help\",\"items\":[[{\"key\":\"label\",\"value\":\"About\"},{\"key\":\"url\",\"value\":\"about-us\"}],[{\"key\":\"label\",\"value\":\"Terms of Use\"},{\"key\":\"url\",\"value\":\"terms-of-use\"}],[{\"key\":\"label\",\"value\":\"Advertise\"},{\"key\":\"url\",\"value\":\"advertise\"}],[{\"key\":\"label\",\"value\":\"Privacy Policy\"},{\"key\":\"url\",\"value\":\"privacy-policy\"}],[{\"key\":\"label\",\"value\":\"FAQ\"},{\"key\":\"url\",\"value\":\"faq\"}]]}','2024-08-09 11:03:57','2024-08-09 11:03:57'),(15,'NewsletterWidget','footer_sidebar','echo-ai',4,'{\"id\":\"NewsletterWidget\",\"title\":\"Newsletter\",\"description\":\"Register now to get latest updates on promotion & coupons.\"}','2024-08-09 11:03:57','2024-08-09 11:03:57'),(16,'ActionButtonsWidget','header_top_left_sidebar','echo-ai',1,'{\"id\":\"ActionButtonsWidget\",\"enable_search_button\":true,\"enable_toggle_side_menu_button\":true,\"enable_dark_light_switcher_button\":false,\"alignment\":\"start\"}','2024-08-09 11:03:57','2024-08-09 11:03:57'),(17,'ActionButtonsWidget','header_top_right_sidebar','echo-ai',1,'{\"id\":\"ActionButtonsWidget\",\"enable_dark_light_switcher_button\":true,\"enable_search_button\":false,\"enable_toggle_side_menu_button\":false,\"alignment\":\"end\"}','2024-08-09 11:03:57','2024-08-09 11:03:57'),(18,'SocialLinksWidget','header_top_right_sidebar','echo-ai',2,'[]','2024-08-09 11:03:57','2024-08-09 11:03:57'),(19,'ActionButtonsWidget','header_top_right_sidebar','echo-ai',3,'{\"id\":\"ActionButtonsWidget\",\"enable_dark_light_switcher_button\":false,\"enable_search_button\":false,\"enable_toggle_side_menu_button\":false,\"form_newsletter_button_label\":\"Subscribe\",\"alignment\":\"end\"}','2024-08-09 11:03:57','2024-08-09 11:03:57');
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

-- Dump completed on 2024-08-10  1:03:58
