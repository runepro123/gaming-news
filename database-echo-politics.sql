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
INSERT INTO `activations` VALUES (1,1,'CjJkk58nR9veEAL6EtQ1Qx5wzxtUYOan',1,'2024-08-09 11:06:05','2024-08-09 11:06:05','2024-08-09 11:06:05');
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
INSERT INTO `announcements` VALUES (1,'Announcement 1','Cyber Monday: Save big on the Creative Cloud All Apps plan for individuals through 2 Dec',0,NULL,NULL,0,1,'2024-08-09 18:06:32',NULL,1,'2024-08-09 11:06:32','2024-08-09 11:06:32'),(2,'Announcement 2','Students and teachers save a massive 71% on Creative Cloud All Apps',0,NULL,NULL,0,1,'2024-08-09 18:06:32',NULL,1,'2024-08-09 11:06:32','2024-08-09 11:06:32'),(3,'Announcement 3','Black Friday and Cyber Monday 2023 Deals for Motion Designers, grab it now!',0,NULL,NULL,0,1,'2024-08-09 18:06:32',NULL,1,'2024-08-09 11:06:32','2024-08-09 11:06:32');
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
INSERT INTO `categories` VALUES (1,'Political Systems',0,'Assumenda magni magnam numquam neque itaque. Dolorem voluptas rerum quidem. Error ipsam quia est nisi.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-08-09 11:06:20','2024-08-09 11:06:20'),(2,'Media and Politics',0,'Deserunt aperiam officiis sed qui. Eum similique non corporis aspernatur nihil sequi.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:20','2024-08-09 11:06:20'),(3,'Elections and Campaigns',0,'Expedita sequi ipsam aut aperiam. Tenetur beatae similique eaque fuga. Consectetur aut ratione natus nam fugiat.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:20','2024-08-09 11:06:20'),(4,'Political Ideologies',0,'Voluptas minus sapiente mollitia reprehenderit. Quos iusto doloremque nisi omnis. Quam quod quia cum quis accusantium. Pariatur culpa assumenda nostrum et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:20','2024-08-09 11:06:20'),(5,'International Relations',0,'Necessitatibus quasi ut illum eius et ut similique. Ipsa aut rerum quia. Nemo ducimus beatae enim eum sunt. Excepturi deserunt quibusdam est et adipisci recusandae dolor earum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:20','2024-08-09 11:06:20'),(6,'Political Economy',0,'Officia nihil non corrupti voluptates. Aut tenetur voluptas quidem sint sit voluptas recusandae. Sequi qui officia repellat.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:20','2024-08-09 11:06:20'),(7,'Political Leadership',0,'Consequuntur minima ut iste quasi quod. Sint ad ab dolorem aperiam et excepturi aperiam et. Eos fuga quibusdam iste iste unde. Veniam sequi quo nobis. Quia velit quo exercitationem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:20','2024-08-09 11:06:20'),(8,'Political Ethics',0,'Voluptatem ut quam voluptatem illum aut nisi placeat. Ut molestiae distinctio nulla optio itaque. Sint voluptatem nesciunt odio recusandae.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:20','2024-08-09 11:06:20'),(9,'Human Rights',0,'Et quia necessitatibus quam maxime. Eius ad aut perspiciatis unde impedit. Officia corrupti quidem consequatur aperiam est nihil atque.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:20','2024-08-09 11:06:20'),(10,'Political Polarization',0,'Officia vero distinctio illo dolores similique voluptas. Doloribus laudantium sunt laborum sint rerum id aut aut. Excepturi consequatur voluptates aut quae quis est.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:20','2024-08-09 11:06:20');
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
INSERT INTO `contacts` VALUES (1,'Macie Bradtke','kirlin.eldridge@example.com','1-929-508-2731','490 Rolfson Ville Apt. 760\nRomagueraview, DE 82179-7674','Incidunt est consectetur non repudiandae.','Magni est cupiditate optio sit officia. Dolor occaecati consequatur quisquam dolorum ratione voluptatum qui rerum. Qui ratione delectus nobis. Id alias rerum natus numquam voluptas. Et illum molestias qui voluptas quo temporibus. Suscipit et veritatis sint eum corrupti. Dolorem maxime eius nobis libero et sunt consequatur. Accusantium praesentium animi rerum omnis aut accusamus voluptatem saepe. Eius in distinctio nam ipsa.',NULL,'read','2024-08-09 11:06:05','2024-08-09 11:06:05'),(2,'Prof. Nat Ankunding III','viola.crooks@example.org','484.568.5737','67287 Abernathy Mountain Suite 153\nQuigleyview, NJ 40395','Quos temporibus quisquam autem ut.','Pariatur et saepe cupiditate eum eius quis ut voluptatem. Omnis sequi libero id enim fugit. Reprehenderit ab unde fuga aut soluta. Tempora aut omnis aut aut impedit eos. Ipsum repellendus et quia nihil. Quia nostrum voluptatem impedit. Expedita labore dolorem aut provident qui. Officia nobis labore et voluptas sunt rerum quia sunt. Ea laborum esse provident. Id iure dignissimos vel officia. Et in quidem qui. Repudiandae aut ut voluptatem maxime consequuntur fugit.',NULL,'read','2024-08-09 11:06:05','2024-08-09 11:06:05'),(3,'Dr. Alexie Schoen Jr.','elena.king@example.com','440.348.9878','17953 Hamill Shore Apt. 128\nWest Helenebury, IL 24325','Quidem nesciunt quae nihil.','Quasi dolor eaque perferendis ipsa ad est. Consectetur perferendis molestiae iusto excepturi sint. Aspernatur sint vel ut ut ut. Fuga nesciunt tempora facere ducimus perspiciatis aut quia autem. Vel delectus ut et suscipit et. Repellendus expedita amet ut quae repudiandae aut. Quis dolorem dolor aliquid sunt voluptates vel vitae. Provident id repudiandae corporis at nemo.',NULL,'unread','2024-08-09 11:06:05','2024-08-09 11:06:05'),(4,'Foster Gislason','sarah.hirthe@example.org','640.224.7245','222 Lavern Square Apt. 788\nZboncakmouth, NM 84525','Velit hic earum itaque voluptates.','Repellat repellendus sunt enim est a assumenda pariatur. Provident quia voluptas tempora ut. Iure ab eos sit nihil eos cumque excepturi. Optio placeat incidunt qui minima omnis animi recusandae. Expedita doloribus molestiae explicabo incidunt et. Id et occaecati qui et pariatur accusantium. Est doloremque quia non id id ex aspernatur. Rerum aut dolore nisi sint adipisci illo doloribus.',NULL,'unread','2024-08-09 11:06:05','2024-08-09 11:06:05'),(5,'Ricky Johns III','weston.baumbach@example.com','1-614-475-3976','611 Parker Forks Apt. 101\nLake Rosamond, NC 31431','Vitae aut pariatur doloremque quia.','Est non quo voluptas consequatur quo ut sed. Dolores voluptatem nesciunt labore autem velit et cum. Similique nam error soluta sapiente adipisci in rerum. Architecto occaecati et vitae placeat possimus et esse. Et tempora illum ratione at perferendis qui sed. Perspiciatis non sapiente quo aut voluptates quo.',NULL,'unread','2024-08-09 11:06:05','2024-08-09 11:06:05'),(6,'Devin Larson','quigley.jaime@example.com','+1-715-694-7047','28525 Ward Glen Apt. 291\nConsidineville, OR 89933','Voluptatibus aliquid sed quia.','Quo accusamus a sint laudantium facere. Id magni numquam esse ut quas ipsam quaerat aut. Sequi accusamus accusantium harum. Earum reprehenderit est ab qui. Quia minus tempore voluptas aut consequuntur. Expedita ipsam libero nam at. Ipsum delectus nisi qui magni. Quia dolores repellendus non voluptatem repellat ut quis. Rerum numquam aut quas accusantium nostrum occaecati quas. Qui odio asperiores impedit explicabo aperiam. Quidem temporibus illum et enim totam consequatur itaque sint.',NULL,'read','2024-08-09 11:06:05','2024-08-09 11:06:05'),(7,'Aryanna Crooks','kiley51@example.com','+1-281-637-9382','9920 Sam Ville Suite 297\nSouth Caylaview, OH 88908','Harum sapiente cum ab.','Ratione corporis enim asperiores aspernatur. Quidem vitae voluptatem reiciendis dolore ipsam optio natus et. Enim praesentium minus iusto. Exercitationem excepturi qui accusantium doloremque. Odit ut corrupti sint occaecati et odit eveniet. Quia tenetur odio fugiat quia suscipit qui. Assumenda voluptatem corrupti doloribus voluptatem nihil vel delectus. Sapiente alias voluptatibus rerum consequatur.',NULL,'unread','2024-08-09 11:06:05','2024-08-09 11:06:05'),(8,'Dr. Darwin Quigley','murray.weimann@example.org','785.985.3547','6507 Earnestine Club Apt. 179\nGrimesside, NY 98287','Deserunt voluptatem dolore ab debitis facilis et.','Ut sint voluptas dolores sequi exercitationem dolorem. Velit occaecati dignissimos corrupti nisi et dolor est et. Quaerat quibusdam expedita distinctio exercitationem vel cum illo. Error provident quia sapiente. Consequatur similique quod fuga ullam consequatur nisi. Aliquid ut et beatae voluptas aut. Minus ratione adipisci modi. Aut sint ea aliquid laboriosam aliquam. Laborum unde et labore nihil rerum molestiae magni. Accusamus quam minus voluptatem aliquam ipsum minima voluptatem.',NULL,'unread','2024-08-09 11:06:05','2024-08-09 11:06:05'),(9,'Stevie Koss','walker33@example.org','1-430-858-1319','5993 Kutch Islands Apt. 999\nOrtizshire, MI 93755-0993','Dolorem porro similique numquam.','Aperiam labore commodi possimus autem enim ipsum. Debitis nostrum non quo eos aliquid natus. Recusandae architecto ut doloremque minima nostrum eum. Cum amet est et incidunt modi nostrum. Ea perferendis et repellat nisi libero. Dolor porro blanditiis similique et saepe sed. Ad dignissimos dignissimos eos nemo. Cumque quod facere molestias adipisci.',NULL,'unread','2024-08-09 11:06:05','2024-08-09 11:06:05'),(10,'Emilie O\'Connell','kailee09@example.org','+1-309-313-9774','6233 Loma Forest Suite 570\nSouth Jayport, OK 16165-2753','Deleniti aut enim fuga qui tempora.','Officia quam nostrum voluptatum qui incidunt id doloribus temporibus. Voluptatem est laboriosam natus. Qui adipisci soluta rem fugiat autem blanditiis quis qui. Incidunt recusandae aut molestiae. Nam et similique accusantium. Voluptatibus consequuntur provident natus explicabo adipisci ipsum tempora. Ullam sequi laboriosam eligendi necessitatibus corrupti est ipsam. Dolores cupiditate in voluptatum quis natus similique consequuntur.',NULL,'unread','2024-08-09 11:06:05','2024-08-09 11:06:05');
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
INSERT INTO `fob_comments` VALUES (1,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',13,'http://localhost','Edna Nikolaus','freida59@bogan.org','https://friendsofbotble.com','This is really helpful, thank you!','approved','175.80.176.177','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_4) AppleWebKit/5340 (KHTML, like Gecko) Chrome/39.0.834.0 Mobile Safari/5340','2024-07-12 20:55:32','2024-08-09 11:06:33'),(2,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',16,'http://localhost','Mrs. Jammie Pfeffer','weimann.elroy@walker.com','https://friendsofbotble.com','I found this article to be quite informative.','approved','192.221.13.88','Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X; nl-NL) AppleWebKit/533.20.7 (KHTML, like Gecko) Version/3.0.5 Mobile/8B119 Safari/6533.20.7','2024-07-30 21:05:25','2024-08-09 11:06:33'),(3,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',19,'http://localhost','Dr. Garth Haag II','renee.nicolas@hotmail.com','https://friendsofbotble.com','Wow, I never knew about this before!','approved','26.161.208.65','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_4) AppleWebKit/5331 (KHTML, like Gecko) Chrome/40.0.846.0 Mobile Safari/5331','2024-07-25 04:01:18','2024-08-09 11:06:33'),(4,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',11,'http://localhost','Edmund Monahan V','leif.dooley@yahoo.com','https://friendsofbotble.com','Great job on explaining such a complex topic.','approved','245.188.146.188','Opera/8.99 (X11; Linux i686; sl-SI) Presto/2.12.210 Version/10.00','2024-07-09 21:07:55','2024-08-09 11:06:33'),(5,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',10,'http://localhost','Velva Kub','liana06@gmail.com','https://friendsofbotble.com','I have a question about the third paragraph.','approved','3.223.51.22','Mozilla/5.0 (Windows NT 4.0) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/92.0.4146.82 Safari/532.1 Edg/92.01106.94','2024-07-17 19:30:36','2024-08-09 11:06:33'),(6,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',8,'http://localhost','Dr. Jettie Hauck','bcollier@hotmail.com','https://friendsofbotble.com','This article changed my perspective entirely.','approved','241.93.202.151','Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20130706 Firefox/37.0','2024-08-02 09:37:53','2024-08-09 11:06:33'),(7,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',14,'http://localhost','Miss Hailie Graham','adamore@yahoo.com','https://friendsofbotble.com','I appreciate the effort you put into this.','approved','48.78.202.245','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_1) AppleWebKit/536.0 (KHTML, like Gecko) Chrome/97.0.4329.38 Safari/536.0 Edg/97.01008.98','2024-07-26 14:38:54','2024-08-09 11:06:33'),(8,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',12,'http://localhost','Leon Bahringer','ike02@oreilly.com','https://friendsofbotble.com','This is exactly what I was looking for, thank you!','approved','140.26.163.96','Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 6.0; Trident/4.1)','2024-07-19 23:33:25','2024-08-09 11:06:33'),(9,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',20,'http://localhost','Audrey Kunde','armstrong.fernando@yahoo.com','https://friendsofbotble.com','I disagree with some points mentioned here, though.','approved','58.57.24.36','Mozilla/5.0 (iPhone; CPU iPhone OS 8_2_2 like Mac OS X; sl-SI) AppleWebKit/535.4.1 (KHTML, like Gecko) Version/4.0.5 Mobile/8B118 Safari/6535.4.1','2024-07-27 16:02:43','2024-08-09 11:06:33'),(10,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',1,'http://localhost','Prof. Alex Swift PhD','skyla49@haag.com','https://friendsofbotble.com','Could you provide more examples to illustrate your point?','approved','204.28.64.174','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_3 rv:5.0; nl-NL) AppleWebKit/533.8.1 (KHTML, like Gecko) Version/5.1 Safari/533.8.1','2024-07-26 22:04:48','2024-08-09 11:06:33'),(11,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',17,'http://localhost','Harmon Ullrich','jakayla17@mckenzie.com','https://friendsofbotble.com','I wish there were more articles like this out there.','approved','42.19.109.52','Mozilla/5.0 (compatible; MSIE 9.0; Windows 98; Win 9x 4.90; Trident/3.1)','2024-07-16 22:23:08','2024-08-09 11:06:33'),(12,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',3,'http://localhost','Rita Kutch','satterfield.alisa@hotmail.com','https://friendsofbotble.com','I\'m bookmarking this for future reference.','approved','101.91.160.184','Mozilla/5.0 (Windows; U; Windows NT 5.0) AppleWebKit/532.48.3 (KHTML, like Gecko) Version/5.0.2 Safari/532.48.3','2024-08-03 20:16:36','2024-08-09 11:06:33'),(13,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',13,'http://localhost','Danika Mohr DVM','tony.beahan@walker.info','https://friendsofbotble.com','I\'ve shared this with my friends, they loved it!','approved','25.142.162.249','Mozilla/5.0 (X11; Linux i686) AppleWebKit/5340 (KHTML, like Gecko) Chrome/40.0.840.0 Mobile Safari/5340','2024-07-13 11:27:18','2024-08-09 11:06:33'),(14,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',18,'http://localhost','Prof. Erich Becker','palma16@dietrich.com','https://friendsofbotble.com','This article is a must-read for everyone interested in the topic.','approved','61.210.225.34','Opera/8.72 (X11; Linux x86_64; nl-NL) Presto/2.11.178 Version/10.00','2024-08-06 13:36:10','2024-08-09 11:06:33'),(15,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',2,'http://localhost','Nina Cummings','nbauch@gmail.com','https://friendsofbotble.com','Thank you for shedding light on this important issue.','approved','193.152.126.82','Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20170308 Firefox/35.0','2024-07-12 13:48:23','2024-08-09 11:06:33'),(16,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',19,'http://localhost','Orval Jacobi','qjacobson@yahoo.com','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article.','approved','239.233.146.37','Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.2; Trident/4.0)','2024-08-04 03:16:03','2024-08-09 11:06:33'),(17,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',2,'http://localhost','Darion Kuhlman','nicolas.carter@gmail.com','https://friendsofbotble.com','I\'m blown away by the insights shared in this article.','approved','98.152.34.201','Opera/9.23 (Windows NT 5.01; sl-SI) Presto/2.11.288 Version/10.00','2024-07-24 12:52:45','2024-08-09 11:06:33'),(18,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',14,'http://localhost','Katlynn Runte III','lyda.parker@gmail.com','https://friendsofbotble.com','This article tackles a complex topic with clarity.','approved','218.200.61.45','Mozilla/5.0 (compatible; MSIE 8.0; Windows 95; Trident/5.0)','2024-07-23 10:05:45','2024-08-09 11:06:33'),(19,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',5,'http://localhost','Jordon Hirthe','ptorp@goldner.com','https://friendsofbotble.com','I\'m going to reflect on the ideas presented in this article.','approved','148.231.130.198','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_0 rv:6.0) Gecko/20191220 Firefox/35.0','2024-07-23 05:11:06','2024-08-09 11:06:33'),(20,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',17,'http://localhost','Vincenzo Barton','jerde.demond@donnelly.com','https://friendsofbotble.com','The author\'s passion for the subject shines through in this article.','approved','208.194.103.142','Mozilla/5.0 (X11; Linux i686) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/89.0.4081.20 Safari/532.1 EdgA/89.01055.73','2024-07-23 10:25:02','2024-08-09 11:06:33'),(21,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',11,'http://localhost','Dr. Jalon Bednar','yolanda.cruickshank@champlin.com','https://friendsofbotble.com','This article challenged my preconceptions in a thought-provoking way.','approved','142.220.104.182','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_5) AppleWebKit/5320 (KHTML, like Gecko) Chrome/38.0.884.0 Mobile Safari/5320','2024-07-20 07:18:50','2024-08-09 11:06:33'),(22,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',5,'http://localhost','Dakota Hettinger','llynch@little.com','https://friendsofbotble.com','I\'ve added this article to my reading list, it\'s worth revisiting.','approved','171.7.33.61','Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.2; Trident/4.1)','2024-08-06 03:07:19','2024-08-09 11:06:33'),(23,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',7,'http://localhost','Jovani Pagac','kwest@yahoo.com','https://friendsofbotble.com','This article offers practical advice that I can apply in real life.','approved','252.42.148.90','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7) AppleWebKit/535.0 (KHTML, like Gecko) Chrome/79.0.4718.74 Safari/535.0 Edg/79.01140.33','2024-07-11 01:55:23','2024-08-09 11:06:33'),(24,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',8,'http://localhost','Priscilla Ebert DVM','lula.herzog@nicolas.com','https://friendsofbotble.com','I\'m going to recommend this article to my study group.','approved','175.231.15.63','Opera/8.89 (X11; Linux x86_64; nl-NL) Presto/2.12.174 Version/12.00','2024-07-25 11:21:58','2024-08-09 11:06:33'),(25,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',13,'http://localhost','Prof. Ryder VonRueden Sr.','romaguera.gerard@hotmail.com','https://friendsofbotble.com','The examples provided really helped me understand the concept better.','approved','94.203.166.223','Mozilla/5.0 (Windows 98; Win 9x 4.90; sl-SI; rv:1.9.0.20) Gecko/20160407 Firefox/36.0','2024-07-10 03:46:56','2024-08-09 11:06:33'),(26,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',15,'http://localhost','Maxie Blick','wilfred34@bayer.org','https://friendsofbotble.com','I resonate with the ideas presented here.','approved','216.78.204.51','Mozilla/5.0 (compatible; MSIE 9.0; Windows 98; Win 9x 4.90; Trident/4.0)','2024-07-13 01:05:52','2024-08-09 11:06:33'),(27,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',2,'http://localhost','Jennyfer Kessler Jr.','weber.carlos@bartell.com','https://friendsofbotble.com','This article made me think critically about the topic.','approved','231.209.188.204','Mozilla/5.0 (X11; Linux i686) AppleWebKit/534.0 (KHTML, like Gecko) Chrome/84.0.4319.48 Safari/534.0 EdgA/84.01089.32','2024-07-10 02:09:58','2024-08-09 11:06:33'),(28,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',10,'http://localhost','Lelah Mitchell','bziemann@gmail.com','https://friendsofbotble.com','I\'ll definitely come back to this article for reference.','approved','254.101.123.72','Opera/9.46 (Windows 98; nl-NL) Presto/2.10.294 Version/10.00','2024-07-29 00:05:00','2024-08-09 11:06:33'),(29,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',14,'http://localhost','Cletus Dietrich','hartmann.lauretta@pollich.info','https://friendsofbotble.com','I\'ve shared this on social media, it\'s too good not to share.','approved','85.190.176.16','Mozilla/5.0 (compatible; MSIE 11.0; Windows 98; Win 9x 4.90; Trident/4.0)','2024-07-17 13:09:32','2024-08-09 11:06:33'),(30,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',20,'http://localhost','Ms. Minnie Haley DDS','tyshawn.christiansen@gmail.com','https://friendsofbotble.com','This article presents a balanced view on a controversial topic.','approved','19.170.255.68','Mozilla/5.0 (Windows CE) AppleWebKit/531.1 (KHTML, like Gecko) Chrome/87.0.4270.64 Safari/531.1 Edg/87.01001.84','2024-08-04 05:26:55','2024-08-09 11:06:33'),(31,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',10,'http://localhost','Friedrich Dach','daphnee22@gmail.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s a gem.','approved','7.11.185.252','Mozilla/5.0 (Windows; U; Windows NT 6.2) AppleWebKit/533.30.6 (KHTML, like Gecko) Version/4.1 Safari/533.30.6','2024-07-17 04:54:35','2024-08-09 11:06:33'),(32,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',13,'http://localhost','Lillian White','mandy.abernathy@yahoo.com','https://friendsofbotble.com','I\'ve been struggling with this, your article helped a lot.','approved','164.213.98.160','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_1) AppleWebKit/5311 (KHTML, like Gecko) Chrome/37.0.814.0 Mobile Safari/5311','2024-07-12 21:55:04','2024-08-09 11:06:33'),(33,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',19,'http://localhost','Lisette Stokes','valentin52@considine.net','https://friendsofbotble.com','I\'ve learned something new today, thanks to this article.','approved','210.137.142.90','Mozilla/5.0 (Windows 95) AppleWebKit/5311 (KHTML, like Gecko) Chrome/40.0.891.0 Mobile Safari/5311','2024-07-28 17:05:18','2024-08-09 11:06:33'),(34,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',11,'http://localhost','Kathleen Reilly','rippin.joesph@stark.info','https://friendsofbotble.com','Kudos to the author for a well-researched piece.','approved','109.93.74.134','Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.1; Trident/4.0)','2024-08-01 11:55:39','2024-08-09 11:06:33'),(35,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',9,'http://localhost','Mrs. Pauline Senger','cristina.goldner@yahoo.com','https://friendsofbotble.com','I\'m impressed by the depth of knowledge demonstrated here.','approved','54.90.189.235','Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20220417 Firefox/35.0','2024-07-28 12:38:18','2024-08-09 11:06:33'),(36,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',15,'http://localhost','Mrs. Cayla Lemke','nmoore@kub.com','https://friendsofbotble.com','This article challenged my assumptions in a good way.','approved','107.86.84.18','Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20220130 Firefox/36.0','2024-08-07 11:00:26','2024-08-09 11:06:33'),(37,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',7,'http://localhost','Dr. Else Koepp Sr.','tiana.rodriguez@gmail.com','https://friendsofbotble.com','I\'ve shared this with my colleagues, it\'s worth discussing.','approved','96.246.178.106','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5311 (KHTML, like Gecko) Chrome/37.0.824.0 Mobile Safari/5311','2024-08-04 22:09:38','2024-08-09 11:06:33'),(38,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',15,'http://localhost','Amya Torp','demario70@kassulke.com','https://friendsofbotble.com','The information presented here is very valuable.','approved','111.144.41.206','Mozilla/5.0 (X11; Linux i686) AppleWebKit/5342 (KHTML, like Gecko) Chrome/39.0.847.0 Mobile Safari/5342','2024-08-01 14:33:47','2024-08-09 11:06:33'),(39,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',19,'http://localhost','Destiney O\'Keefe','ortiz.nedra@gmail.com','https://friendsofbotble.com','You have a talent for explaining complex topics clearly.','approved','155.219.62.126','Mozilla/5.0 (Windows; U; Windows NT 5.1) AppleWebKit/531.28.1 (KHTML, like Gecko) Version/4.0.3 Safari/531.28.1','2024-07-21 08:59:59','2024-08-09 11:06:33'),(40,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',4,'http://localhost','Bonita Senger','lkris@hotmail.com','https://friendsofbotble.com','I\'m inspired to learn more about this after reading your article.','approved','119.185.106.127','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_1 rv:3.0) Gecko/20180922 Firefox/35.0','2024-08-01 15:50:39','2024-08-09 11:06:33'),(41,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',5,'http://localhost','Prof. Newell Auer','alexis94@hotmail.com','https://friendsofbotble.com','This article deserves wider recognition.','approved','240.255.88.119','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_7) AppleWebKit/5310 (KHTML, like Gecko) Chrome/38.0.821.0 Mobile Safari/5310','2024-07-17 21:39:46','2024-08-09 11:06:33'),(42,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',11,'http://localhost','Ian Schuster I','gerda66@collins.org','https://friendsofbotble.com','I\'m grateful for the insights shared in this piece.','approved','11.144.152.42','Mozilla/5.0 (Windows NT 5.2; en-US; rv:1.9.0.20) Gecko/20201208 Firefox/37.0','2024-07-10 22:49:40','2024-08-09 11:06:33'),(43,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',15,'http://localhost','Leif Weimann','qreichert@luettgen.com','https://friendsofbotble.com','The author presents a balanced view on a controversial topic.','approved','4.148.221.65','Opera/9.91 (Windows NT 5.2; en-US) Presto/2.10.245 Version/11.00','2024-07-16 06:28:12','2024-08-09 11:06:33'),(44,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',19,'http://localhost','Jayda Kovacek','ybrekke@mckenzie.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s','approved','129.151.46.38','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5310 (KHTML, like Gecko) Chrome/38.0.882.0 Mobile Safari/5310','2024-07-25 02:46:11','2024-08-09 11:06:33'),(45,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',15,'http://localhost','Sharon Denesik','ona42@bogisich.com','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article. It\'s incredibly insightful and provides a comprehensive overview of the subject matter. I appreciate the effort put into researching and writing this piece. It\'s truly eye-opening and has given me a new perspective. Thank you for sharing your knowledge with us!','approved','216.35.66.87','Opera/9.22 (Windows 98; Win 9x 4.90; nl-NL) Presto/2.11.185 Version/11.00','2024-08-04 06:02:43','2024-08-09 11:06:33'),(46,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',6,'http://localhost','Mrs. Yvonne Rosenbaum','osinski.alberta@bechtelar.info','https://friendsofbotble.com','This article is a masterpiece! It dives deep into the topic and offers valuable insights that are both thought-provoking and enlightening. The author\'s expertise is evident throughout, making it a compelling read from start to finish. I\'ll definitely be coming back to this for reference in the future.','approved','197.55.182.77','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5331 (KHTML, like Gecko) Chrome/37.0.886.0 Mobile Safari/5331','2024-07-12 17:08:22','2024-08-09 11:06:33'),(47,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',11,'http://localhost','Prof. Geo Carroll','reilly.soledad@tremblay.com','https://friendsofbotble.com','I\'m amazed by the depth of analysis in this article. It covers a wide range of aspects related to the topic, providing a comprehensive understanding. The clarity of explanation is commendable, making complex concepts easy to grasp. This article has enriched my understanding and sparked further curiosity. Kudos to the author!','approved','33.218.10.23','Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 6.1; Trident/4.1)','2024-07-10 00:22:49','2024-08-09 11:06:33');
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
INSERT INTO `galleries` VALUES (1,'Perfect','Ducimus itaque numquam ex rerum non. Qui aliquid numquam rerum. Minus ipsam veniam officiis soluta voluptas nam.',0,0,'main/news/1.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(2,'New Day','Ex et id nemo vel facere. Culpa facere aut perferendis. Enim est recusandae sint labore ipsam exercitationem sit voluptas.',0,0,'main/news/2.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(3,'Happy Day','Eaque earum id distinctio est excepturi. Commodi odit omnis ad exercitationem repellendus. Exercitationem qui qui ut itaque illum quisquam rerum.',0,0,'main/news/3.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(4,'Nature','Est doloribus facilis nesciunt. Amet modi corrupti repudiandae modi. Ut nihil aut ullam quo et eveniet.',0,0,'main/news/4.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(5,'Morning','In perspiciatis odit qui voluptas voluptas aliquam libero. Culpa dolorem non voluptas rerum iusto reprehenderit. Unde sit numquam temporibus dolor.',0,0,'main/news/5.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(6,'Sunset','Veniam natus maiores harum impedit architecto occaecati. Aut sint aut dolor aliquam. Consequatur quia fuga sint vel.',0,0,'main/news/6.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(7,'Ocean Views','Velit eveniet modi libero est ab nisi. Enim similique in aperiam nihil nulla. Nisi qui vero optio. Sunt qui ipsam nostrum aut hic.',0,0,'main/news/7.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(8,'Adventure Time','Reiciendis quo vitae sit corporis vero. Doloribus amet minus rerum quis similique. Nisi ut et quod quibusdam at. Vero et explicabo sapiente enim.',0,0,'main/news/8.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(9,'City Lights','Sed consequatur est ea et amet voluptates aut. Qui quod ut voluptas officia est vitae numquam sed.',0,0,'main/news/9.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(10,'Dreamscape','Ut quia sint alias ipsa eveniet deleniti. Id est sed illo id aliquam nisi. Qui aut assumenda eum. Impedit veritatis quia voluptatem.',0,0,'main/news/10.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(11,'Enchanted Forest','Quos dolore eveniet libero rerum alias sunt. Blanditiis voluptatem dicta ut sequi similique eius. Dicta officia nihil sunt voluptatum quos est sit.',0,0,'main/news/11.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(12,'Golden Hour','Eius quo vel ipsa dolore asperiores. Qui nisi quis voluptatem cupiditate nihil ad alias. Dolor quaerat sit quia quis.',0,0,'main/news/12.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(13,'Serenity','Ad sequi dolores nulla enim inventore. Repellat modi sunt autem et iure.',0,0,'main/news/13.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(14,'Eternal Beauty','Quis et qui qui. Iusto similique aut delectus optio ducimus adipisci necessitatibus. Natus voluptate ipsum provident a rerum.',0,0,'main/news/14.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(15,'Moonlight Magic','In sint aut et unde quo nostrum soluta sunt. Repellendus voluptatem voluptatem neque tenetur. A quia veniam inventore.',0,0,'main/news/15.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(16,'Starry Night','Voluptatum autem incidunt sed nobis sed. Nemo nihil ab aut hic. Aliquid repellat deserunt et repellendus quia odit.',0,0,'main/news/16.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(17,'Hidden Gems','Vel aut est optio eaque. Praesentium et odit nesciunt et. Deleniti non rerum et delectus ducimus cumque.',0,0,'main/news/17.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(18,'Tranquil Waters','Totam sint qui et expedita animi. Et magni iure tenetur omnis ipsa doloremque sed molestiae. Facilis quasi modi ad quo delectus veniam.',0,0,'main/news/18.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(19,'Urban Escape','Officia voluptas quia fuga sequi quaerat porro. Iure dolorum deserunt sint sit voluptatum. Nulla sapiente quaerat exercitationem culpa sed eos.',0,0,'main/news/19.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(20,'Twilight Zone','Quia maxime velit minus fuga doloremque optio. Eligendi et quos non accusantium a. Repudiandae facilis quo ipsum dolor.',0,0,'main/news/20.jpg',1,'published','2024-08-09 11:06:31','2024-08-09 11:06:31');
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
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(2,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(3,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(4,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(5,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(6,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(7,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',7,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(8,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',8,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(9,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',9,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(10,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',10,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(11,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',11,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(12,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',12,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(13,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',13,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(14,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',14,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(15,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',15,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(16,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',16,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(17,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',17,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(18,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',18,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(19,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',19,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31'),(20,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',20,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:31','2024-08-09 11:06:31');
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
INSERT INTO `language_meta` VALUES (1,'en_US','27d9927314e280bb87a950d33c94b615',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','15f4582c393e6b6aafc4f611d1ccbb3b',1,'Botble\\Menu\\Models\\Menu');
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'about-1','about-1',2,'image/png',8467,'main/general/about-1.png','[]','2024-08-09 11:06:01','2024-08-09 11:06:01',NULL,'public'),(2,0,'about-2','about-2',2,'image/png',8467,'main/general/about-2.png','[]','2024-08-09 11:06:01','2024-08-09 11:06:01',NULL,'public'),(3,0,'about-video-1','about-video-1',2,'image/png',20777,'main/general/about-video-1.png','[]','2024-08-09 11:06:02','2024-08-09 11:06:02',NULL,'public'),(4,0,'ads-banner','ads-banner',2,'image/png',75705,'main/general/ads-banner.png','[]','2024-08-09 11:06:02','2024-08-09 11:06:02',NULL,'public'),(5,0,'app-downloads','app-downloads',2,'image/png',7092,'main/general/app-downloads.png','[]','2024-08-09 11:06:02','2024-08-09 11:06:02',NULL,'public'),(6,0,'blog-3','blog-3',2,'image/png',5919,'main/general/blog-3.png','[]','2024-08-09 11:06:03','2024-08-09 11:06:03',NULL,'public'),(7,0,'blog-4','blog-4',2,'image/png',5919,'main/general/blog-4.png','[]','2024-08-09 11:06:03','2024-08-09 11:06:03',NULL,'public'),(8,0,'blog-5','blog-5',2,'image/png',8614,'main/general/blog-5.png','[]','2024-08-09 11:06:03','2024-08-09 11:06:03',NULL,'public'),(9,0,'blog-shape-image','blog-shape-image',2,'image/png',1182,'main/general/blog-shape-image.png','[]','2024-08-09 11:06:03','2024-08-09 11:06:03',NULL,'public'),(10,0,'favicon','favicon',2,'image/png',693,'main/general/favicon.png','[]','2024-08-09 11:06:03','2024-08-09 11:06:03',NULL,'public'),(11,0,'logo-dark','logo-dark',2,'image/png',2098,'main/general/logo-dark.png','[]','2024-08-09 11:06:03','2024-08-09 11:06:03',NULL,'public'),(12,0,'logo','logo',2,'image/png',2593,'main/general/logo.png','[]','2024-08-09 11:06:03','2024-08-09 11:06:03',NULL,'public'),(13,0,'newsletter-image','newsletter-image',2,'image/png',22929,'main/general/newsletter-image.png','[]','2024-08-09 11:06:04','2024-08-09 11:06:04',NULL,'public'),(14,0,'newsletter-popup','newsletter-popup',2,'image/png',24175,'main/general/newsletter-popup.png','[]','2024-08-09 11:06:04','2024-08-09 11:06:04',NULL,'public'),(15,0,'signature','signature',2,'image/png',2197,'main/general/signature.png','[]','2024-08-09 11:06:04','2024-08-09 11:06:04',NULL,'public'),(16,0,'1','1',3,'image/png',9803,'main/members/1.png','[]','2024-08-09 11:06:05','2024-08-09 11:06:05',NULL,'public'),(17,0,'2','2',3,'image/png',9803,'main/members/2.png','[]','2024-08-09 11:06:05','2024-08-09 11:06:05',NULL,'public'),(18,0,'3','3',3,'image/png',9803,'main/members/3.png','[]','2024-08-09 11:06:05','2024-08-09 11:06:05',NULL,'public'),(19,0,'4','4',3,'image/png',9803,'main/members/4.png','[]','2024-08-09 11:06:05','2024-08-09 11:06:05',NULL,'public'),(20,0,'5','5',3,'image/png',9803,'main/members/5.png','[]','2024-08-09 11:06:06','2024-08-09 11:06:06',NULL,'public'),(21,0,'6','6',3,'image/png',9803,'main/members/6.png','[]','2024-08-09 11:06:06','2024-08-09 11:06:06',NULL,'public'),(22,0,'7','7',3,'image/png',9803,'main/members/7.png','[]','2024-08-09 11:06:06','2024-08-09 11:06:06',NULL,'public'),(23,0,'8','8',3,'image/png',9803,'main/members/8.png','[]','2024-08-09 11:06:06','2024-08-09 11:06:06',NULL,'public'),(24,0,'1','1',4,'image/jpeg',33268,'main/news/1.jpg','[]','2024-08-09 11:06:09','2024-08-09 11:06:09',NULL,'public'),(25,0,'10','10',4,'image/jpeg',33268,'main/news/10.jpg','[]','2024-08-09 11:06:10','2024-08-09 11:06:10',NULL,'public'),(26,0,'11','11',4,'image/jpeg',33268,'main/news/11.jpg','[]','2024-08-09 11:06:10','2024-08-09 11:06:10',NULL,'public'),(27,0,'12','12',4,'image/jpeg',33268,'main/news/12.jpg','[]','2024-08-09 11:06:11','2024-08-09 11:06:11',NULL,'public'),(28,0,'13','13',4,'image/jpeg',33268,'main/news/13.jpg','[]','2024-08-09 11:06:11','2024-08-09 11:06:11',NULL,'public'),(29,0,'14','14',4,'image/jpeg',33268,'main/news/14.jpg','[]','2024-08-09 11:06:12','2024-08-09 11:06:12',NULL,'public'),(30,0,'15','15',4,'image/jpeg',33268,'main/news/15.jpg','[]','2024-08-09 11:06:12','2024-08-09 11:06:12',NULL,'public'),(31,0,'16','16',4,'image/jpeg',33268,'main/news/16.jpg','[]','2024-08-09 11:06:13','2024-08-09 11:06:13',NULL,'public'),(32,0,'17','17',4,'image/jpeg',33268,'main/news/17.jpg','[]','2024-08-09 11:06:13','2024-08-09 11:06:13',NULL,'public'),(33,0,'18','18',4,'image/jpeg',33268,'main/news/18.jpg','[]','2024-08-09 11:06:14','2024-08-09 11:06:14',NULL,'public'),(34,0,'19','19',4,'image/jpeg',33268,'main/news/19.jpg','[]','2024-08-09 11:06:15','2024-08-09 11:06:15',NULL,'public'),(35,0,'2','2',4,'image/jpeg',33268,'main/news/2.jpg','[]','2024-08-09 11:06:15','2024-08-09 11:06:15',NULL,'public'),(36,0,'20','20',4,'image/jpeg',33268,'main/news/20.jpg','[]','2024-08-09 11:06:16','2024-08-09 11:06:16',NULL,'public'),(37,0,'3','3',4,'image/jpeg',33268,'main/news/3.jpg','[]','2024-08-09 11:06:16','2024-08-09 11:06:16',NULL,'public'),(38,0,'4','4',4,'image/jpeg',33268,'main/news/4.jpg','[]','2024-08-09 11:06:17','2024-08-09 11:06:17',NULL,'public'),(39,0,'5','5',4,'image/jpeg',33268,'main/news/5.jpg','[]','2024-08-09 11:06:17','2024-08-09 11:06:17',NULL,'public'),(40,0,'6','6',4,'image/jpeg',33268,'main/news/6.jpg','[]','2024-08-09 11:06:18','2024-08-09 11:06:18',NULL,'public'),(41,0,'7','7',4,'image/jpeg',33268,'main/news/7.jpg','[]','2024-08-09 11:06:18','2024-08-09 11:06:18',NULL,'public'),(42,0,'8','8',4,'image/jpeg',33268,'main/news/8.jpg','[]','2024-08-09 11:06:19','2024-08-09 11:06:19',NULL,'public'),(43,0,'9','9',4,'image/jpeg',33268,'main/news/9.jpg','[]','2024-08-09 11:06:19','2024-08-09 11:06:19',NULL,'public'),(44,0,'audio','audio',5,'audio/mpeg',239584,'main/audio/audio.mp3','[]','2024-08-09 11:06:20','2024-08-09 11:06:20',NULL,'public'),(45,0,'1','1',7,'image/jpeg',33268,'politics/news/1.jpg','[]','2024-08-09 11:06:20','2024-08-09 11:06:20',NULL,'public'),(46,0,'10','10',7,'image/jpeg',33268,'politics/news/10.jpg','[]','2024-08-09 11:06:21','2024-08-09 11:06:21',NULL,'public'),(47,0,'11','11',7,'image/jpeg',33268,'politics/news/11.jpg','[]','2024-08-09 11:06:21','2024-08-09 11:06:21',NULL,'public'),(48,0,'12','12',7,'image/jpeg',33268,'politics/news/12.jpg','[]','2024-08-09 11:06:22','2024-08-09 11:06:22',NULL,'public'),(49,0,'13','13',7,'image/jpeg',33268,'politics/news/13.jpg','[]','2024-08-09 11:06:22','2024-08-09 11:06:22',NULL,'public'),(50,0,'14','14',7,'image/jpeg',33268,'politics/news/14.jpg','[]','2024-08-09 11:06:23','2024-08-09 11:06:23',NULL,'public'),(51,0,'15','15',7,'image/jpeg',33268,'politics/news/15.jpg','[]','2024-08-09 11:06:23','2024-08-09 11:06:23',NULL,'public'),(52,0,'16','16',7,'image/jpeg',33268,'politics/news/16.jpg','[]','2024-08-09 11:06:24','2024-08-09 11:06:24',NULL,'public'),(53,0,'17','17',7,'image/jpeg',33268,'politics/news/17.jpg','[]','2024-08-09 11:06:24','2024-08-09 11:06:24',NULL,'public'),(54,0,'18','18',7,'image/jpeg',33268,'politics/news/18.jpg','[]','2024-08-09 11:06:25','2024-08-09 11:06:25',NULL,'public'),(55,0,'19','19',7,'image/jpeg',33268,'politics/news/19.jpg','[]','2024-08-09 11:06:25','2024-08-09 11:06:25',NULL,'public'),(56,0,'2','2',7,'image/jpeg',33268,'politics/news/2.jpg','[]','2024-08-09 11:06:26','2024-08-09 11:06:26',NULL,'public'),(57,0,'20','20',7,'image/jpeg',33268,'politics/news/20.jpg','[]','2024-08-09 11:06:26','2024-08-09 11:06:26',NULL,'public'),(58,0,'3','3',7,'image/jpeg',33268,'politics/news/3.jpg','[]','2024-08-09 11:06:27','2024-08-09 11:06:27',NULL,'public'),(59,0,'4','4',7,'image/jpeg',33268,'politics/news/4.jpg','[]','2024-08-09 11:06:27','2024-08-09 11:06:27',NULL,'public'),(60,0,'5','5',7,'image/jpeg',33268,'politics/news/5.jpg','[]','2024-08-09 11:06:28','2024-08-09 11:06:28',NULL,'public'),(61,0,'6','6',7,'image/jpeg',33268,'politics/news/6.jpg','[]','2024-08-09 11:06:28','2024-08-09 11:06:28',NULL,'public'),(62,0,'7','7',7,'image/jpeg',33268,'politics/news/7.jpg','[]','2024-08-09 11:06:29','2024-08-09 11:06:29',NULL,'public'),(63,0,'8','8',7,'image/jpeg',33268,'politics/news/8.jpg','[]','2024-08-09 11:06:29','2024-08-09 11:06:29',NULL,'public'),(64,0,'9','9',7,'image/jpeg',33268,'politics/news/9.jpg','[]','2024-08-09 11:06:30','2024-08-09 11:06:30',NULL,'public'),(65,0,'blog-category-bg','blog-category-bg',8,'image/png',1616,'politics/backgrounds/blog-category-bg.png','[]','2024-08-09 11:06:31','2024-08-09 11:06:31',NULL,'public'),(66,0,'slider-bg','slider-bg',8,'image/png',26471,'politics/backgrounds/slider-bg.png','[]','2024-08-09 11:06:31','2024-08-09 11:06:31',NULL,'public'),(67,0,'favicon','favicon',9,'image/png',1948,'politics/general/favicon.png','[]','2024-08-09 11:06:31','2024-08-09 11:06:31',NULL,'public'),(68,0,'logo','logo',9,'image/png',1973,'politics/general/logo.png','[]','2024-08-09 11:06:31','2024-08-09 11:06:31',NULL,'public'),(69,0,'newsletter-image','newsletter-image',9,'image/png',17903,'politics/general/newsletter-image.png','[]','2024-08-09 11:06:32','2024-08-09 11:06:32',NULL,'public'),(70,0,'breadcrumb','breadcrumb',10,'image/png',109184,'main/backgrounds/breadcrumb.png','[]','2024-08-09 11:06:32','2024-08-09 11:06:32',NULL,'public'),(71,0,'newsletter-bg','newsletter-bg',10,'image/png',15427,'main/backgrounds/newsletter-bg.png','[]','2024-08-09 11:06:32','2024-08-09 11:06:32',NULL,'public'),(72,0,'1','1',11,'image/png',1455,'main/blog-categories/1.png','[]','2024-08-09 11:06:32','2024-08-09 11:06:32',NULL,'public'),(73,0,'2','2',11,'image/png',1455,'main/blog-categories/2.png','[]','2024-08-09 11:06:32','2024-08-09 11:06:32',NULL,'public'),(74,0,'3','3',11,'image/png',1455,'main/blog-categories/3.png','[]','2024-08-09 11:06:33','2024-08-09 11:06:33',NULL,'public'),(75,0,'4','4',11,'image/png',1455,'main/blog-categories/4.png','[]','2024-08-09 11:06:33','2024-08-09 11:06:33',NULL,'public'),(76,0,'5','5',11,'image/png',1455,'main/blog-categories/5.png','[]','2024-08-09 11:06:33','2024-08-09 11:06:33',NULL,'public'),(77,0,'breaking-news-icon','breaking-news-icon',12,'image/png',1133,'main/icons/breaking-news-icon.png','[]','2024-08-09 11:06:33','2024-08-09 11:06:33',NULL,'public');
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
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-08-09 11:06:01','2024-08-09 11:06:01',NULL),(2,0,'general',NULL,'general',1,'2024-08-09 11:06:01','2024-08-09 11:06:01',NULL),(3,0,'members',NULL,'members',1,'2024-08-09 11:06:05','2024-08-09 11:06:05',NULL),(4,0,'news',NULL,'news',1,'2024-08-09 11:06:09','2024-08-09 11:06:09',NULL),(5,0,'audio',NULL,'audio',1,'2024-08-09 11:06:20','2024-08-09 11:06:20',NULL),(6,0,'politics',NULL,'politics',0,'2024-08-09 11:06:20','2024-08-09 11:06:20',NULL),(7,0,'news',NULL,'news',6,'2024-08-09 11:06:20','2024-08-09 11:06:20',NULL),(8,0,'backgrounds',NULL,'backgrounds',6,'2024-08-09 11:06:31','2024-08-09 11:06:31',NULL),(9,0,'general',NULL,'general',6,'2024-08-09 11:06:31','2024-08-09 11:06:31',NULL),(10,0,'backgrounds',NULL,'backgrounds',1,'2024-08-09 11:06:32','2024-08-09 11:06:32',NULL),(11,0,'blog-categories',NULL,'blog-categories',1,'2024-08-09 11:06:32','2024-08-09 11:06:32',NULL),(12,0,'icons',NULL,'icons',1,'2024-08-09 11:06:33','2024-08-09 11:06:33',NULL);
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
INSERT INTO `members` VALUES (1,'John','Smith','Be off, or I\'ll have you.',NULL,'member@archielite.com','$2y$12$jXtZ0dRqRu.iocLDB6ZQMODXHnZ2ADp48..hpN/8behKZuulqcn66',16,'2016-04-03','1-681-965-2716','2024-08-09 18:06:07',NULL,NULL,'2024-08-09 11:06:07','2024-08-09 11:06:07','published'),(2,'Kay','Gusikowski','Hi, I’m Kay Gusikowski, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'xjakubowski@yahoo.com','$2y$12$DL.6Xf9GDFosmRMcKwmoDukqOEbpC4XMlGoy7dEknq4neAxwBhcu6',17,'2012-03-05','928.565.1051','2024-08-09 18:06:07',NULL,NULL,'2024-08-09 11:06:07','2024-08-09 11:06:07','published'),(3,'Delmer','Conroy','Hi, I’m Delmer Conroy, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'oren.ferry@kautzer.info','$2y$12$9AJnsfr2bmka3tCrypBa.OD2GBWs8GDKWp.1xiF/12IfiPzupCzDO',18,'2008-12-28','+1 (820) 527-8680','2024-08-09 18:06:07',NULL,NULL,'2024-08-09 11:06:07','2024-08-09 11:06:07','published'),(4,'Melvina','Lubowitz','Hi, I’m Melvina Lubowitz, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'herman59@leffler.com','$2y$12$eN3MUluiWRwG411LdBDuJ.vdzJbTw7L3rgSxB.2l/u43aYjjDorR.',19,'2011-03-24','+19784348093','2024-08-09 18:06:07',NULL,NULL,'2024-08-09 11:06:08','2024-08-09 11:06:08','published'),(5,'Pamela','Labadie','Hi, I’m Pamela Labadie, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'giovanny.mohr@beahan.com','$2y$12$CXPnQICi3810EV7nJxjLX.l80n6U3aqJls/4GxFDiMClsPCfh4eKq',20,'1991-07-27','(212) 743-2368','2024-08-09 18:06:07',NULL,NULL,'2024-08-09 11:06:08','2024-08-09 11:06:08','published'),(6,'Braxton','Hintz','Hi, I’m Braxton Hintz, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'mbreitenberg@gmail.com','$2y$12$lcMWbKg6nRT4OGgc3jg1xeJGVD1Iai8gt9GWjsYLgajAXfhXHReba',21,'2019-11-20','828-485-0033','2024-08-09 18:06:07',NULL,NULL,'2024-08-09 11:06:08','2024-08-09 11:06:08','published'),(7,'Holly','Russel','Hi, I’m Holly Russel, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'opfeffer@hill.biz','$2y$12$0lvTT6p.MJ77wC1JoDA.p./nggWXgFLILBwgXcsRkngNSsJAfEoK.',22,'1987-12-02','859-605-1544','2024-08-09 18:06:07',NULL,NULL,'2024-08-09 11:06:09','2024-08-09 11:06:09','published'),(8,'Landen','Schneider','Hi, I’m Landen Schneider, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'jhuel@gmail.com','$2y$12$5SE7VI7gRHgzjQp4LDuLyeDw5oIBQjgzbXn06ntr3.5KofukOc6cK',23,'1976-05-18','+1-207-543-8796','2024-08-09 18:06:07',NULL,NULL,'2024-08-09 11:06:09','2024-08-09 11:06:09','published');
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-08-09 11:06:33','2024-08-09 11:06:33');
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
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(2,1,1,NULL,NULL,'https://echo-sports.archielite.com',NULL,0,'Home Sports',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(3,1,1,NULL,NULL,'https://echo-travel.archielite.com',NULL,0,'Home Travel',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(4,1,1,NULL,NULL,'https://echo-ai.archielite.com',NULL,0,'Home AI',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(5,1,1,NULL,NULL,'https://echo-politics.archielite.com',NULL,0,'Home Politics',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(6,1,1,NULL,NULL,'https://echo-food.archielite.com',NULL,0,'Home Food',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(7,1,1,NULL,NULL,'https://echo-photography.archielite.com',NULL,0,'Home Photography',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(8,1,1,NULL,NULL,'https://echo.archielite.com',NULL,0,'Home News',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(9,1,1,NULL,NULL,'https://echo-fashion.archielite.com',NULL,0,'Home Fashion',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(10,1,1,NULL,NULL,'https://echo-technology.archielite.com',NULL,0,'Home Technology',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(11,1,1,NULL,NULL,'https://echo-gaming.archielite.com',NULL,0,'Home Gaming',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(12,1,0,NULL,NULL,'/',NULL,0,'Pages',NULL,'_self',1,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(13,1,12,NULL,NULL,'/about-us',NULL,0,'About',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(14,1,12,NULL,NULL,'/author/smith',NULL,0,'Author',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(15,1,12,NULL,NULL,'/team',NULL,0,'Team',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(16,1,12,NULL,NULL,'/error-page',NULL,0,'Error Page',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(17,1,0,NULL,NULL,'/blog',NULL,0,'Blog',NULL,'_self',1,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(18,1,17,NULL,NULL,'/blog?style=card',NULL,0,'Blog Card',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(19,1,17,NULL,NULL,'/blog?style=list',NULL,0,'Blog List',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(20,1,17,NULL,NULL,'/blog?style=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(21,1,17,NULL,NULL,'/blog?style=mixed',NULL,0,'Blog Mixed',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(22,1,0,1,'Botble\\Blog\\Models\\Post','/blog/navigating-political-landscapes-understanding-the-dynamics-of-global-alliances',NULL,0,'Post',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33'),(23,1,0,NULL,NULL,'contact',NULL,0,'Contact',NULL,'_self',0,'2024-08-09 11:06:33','2024-08-09 11:06:33');
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
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-08-09 11:06:33','2024-08-09 11:06:33');
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
INSERT INTO `meta_boxes` VALUES (1,'title','[\"Chef Editor\"]',1,'Botble\\Member\\Models\\Member','2024-08-09 11:06:07','2024-08-09 11:06:07'),(2,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',1,'Botble\\Member\\Models\\Member','2024-08-09 11:06:07','2024-08-09 11:06:07'),(3,'title','[\"Creative Director\"]',2,'Botble\\Member\\Models\\Member','2024-08-09 11:06:07','2024-08-09 11:06:07'),(4,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',2,'Botble\\Member\\Models\\Member','2024-08-09 11:06:07','2024-08-09 11:06:07'),(5,'title','[\"Sr. Manager\"]',3,'Botble\\Member\\Models\\Member','2024-08-09 11:06:07','2024-08-09 11:06:07'),(6,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',3,'Botble\\Member\\Models\\Member','2024-08-09 11:06:07','2024-08-09 11:06:07'),(7,'title','[\"Sr. Manager\"]',4,'Botble\\Member\\Models\\Member','2024-08-09 11:06:08','2024-08-09 11:06:08'),(8,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',4,'Botble\\Member\\Models\\Member','2024-08-09 11:06:08','2024-08-09 11:06:08'),(9,'title','[\"Creative Director\"]',5,'Botble\\Member\\Models\\Member','2024-08-09 11:06:08','2024-08-09 11:06:08'),(10,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',5,'Botble\\Member\\Models\\Member','2024-08-09 11:06:08','2024-08-09 11:06:08'),(11,'title','[\"Creative Director\"]',6,'Botble\\Member\\Models\\Member','2024-08-09 11:06:08','2024-08-09 11:06:08'),(12,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',6,'Botble\\Member\\Models\\Member','2024-08-09 11:06:08','2024-08-09 11:06:08'),(13,'title','[\"Marketing Director\"]',7,'Botble\\Member\\Models\\Member','2024-08-09 11:06:09','2024-08-09 11:06:09'),(14,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',7,'Botble\\Member\\Models\\Member','2024-08-09 11:06:09','2024-08-09 11:06:09'),(15,'title','[\"Chef Editor\"]',8,'Botble\\Member\\Models\\Member','2024-08-09 11:06:09','2024-08-09 11:06:09'),(16,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',8,'Botble\\Member\\Models\\Member','2024-08-09 11:06:09','2024-08-09 11:06:09'),(17,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',2,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:30','2024-08-09 11:06:30'),(18,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',3,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:30','2024-08-09 11:06:30'),(19,'audio','[\"main\\/audio\\/audio.mp3\"]',4,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:30','2024-08-09 11:06:30'),(20,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',5,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:30','2024-08-09 11:06:30'),(21,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',6,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:30','2024-08-09 11:06:30'),(22,'audio','[\"main\\/audio\\/audio.mp3\"]',7,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:30','2024-08-09 11:06:30'),(23,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',8,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:30','2024-08-09 11:06:30'),(24,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',9,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:30','2024-08-09 11:06:30'),(25,'audio','[\"main\\/audio\\/audio.mp3\"]',10,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:30','2024-08-09 11:06:30'),(26,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',11,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:30','2024-08-09 11:06:30'),(27,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',12,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:31','2024-08-09 11:06:31'),(28,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',14,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:31','2024-08-09 11:06:31'),(29,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',15,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:31','2024-08-09 11:06:31'),(30,'audio','[\"main\\/audio\\/audio.mp3\"]',16,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:31','2024-08-09 11:06:31'),(31,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',17,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:31','2024-08-09 11:06:31'),(32,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',18,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:31','2024-08-09 11:06:31'),(33,'audio','[\"main\\/audio\\/audio.mp3\"]',19,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:31','2024-08-09 11:06:31'),(34,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',20,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:31','2024-08-09 11:06:31');
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
INSERT INTO `pages` VALUES (1,'Homepage','<div>[blog-posts style=\"style-1\" limit=\"5\" text_color=\"#000000\" background_color=\"#fdf2ff\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-6\" category_ids=\"1,2,5\" title=\"EDITOR\'S PICKS\" limit=\"3\" title_align=\"start\" text_color=\"transparent\" background_color=\"transparent\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-5\" title=\"Features\" limit=\"8\" title_align=\"start\" text_color=\"transparent\" background_color=\"#FDF2FF\" sidebar=\"custom_sidebar_1\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-9\" limit=\"6\" text_color=\"transparent\" background_color=\"transparent\" background_image=\"politics/backgrounds/slider-bg.png\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-12\" title=\"Features\" limit=\"6\" title_align=\"start\" text_color=\"transparent\" background_color=\"transparent\" sidebar=\"custom_sidebar_2\"][/blog-posts]</div><div>[app-downloads title=\"Download Our Apps For Stay Update\" subtitle=\"Easy to update latest news, aily podcast and everything in your hand\" platform_google_label=\"Play Store\" platform_google_icon=\"ti ti-brand-google-play\" platform_google_url=\"https://play.google.com/\" platform_apple_label=\"Apple Store\" platform_apple_icon=\"ti ti-brand-apple\" platform_apple_url=\"https://www.apple.com/app-store/\" image=\"main/general/app-downloads.png\" background_color=\"#47164F\"][/app-downloads]</div>',1,NULL,'homepage',NULL,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(2,'About us','<div>[about-us title=\"Know our Publication Media & Vision.\" subtitle=\"Bring To The Table Win-Win Survival Strategies To Ensure Proactive Domination. At The End Of The Day Going.\" description=\"Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the over holistic world view of disruptive innovation via workplace diversity and Bring to the table win-win survival strategies to ensure proactive fin domination. At the end of the day, going forward, a new normal.\" staff_name=\"Raihawly Williamson\" staff_description=\"CEO, Echo Publishing Inc.\" staff_signature=\"main/general/signature.png\" first_image=\"main/general/about-1.png\" second_image=\"main/general/about-2.png\"][/about-us]</div><div>[intro-video image=\"main/general/about-video-1.png\" video_url=\"https://www.youtube.com/watch?v=Y1t6rjWYNro\" play_icon=\"ti ti-player-play-filled\"][/intro-video]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(3,'Contact','<div>[contact-form title=\"General Customer Care & Technical Support\" description=\"We’re here to assist you with any questions or technical issues you may have. Please fill out the form below, and our dedicated team will respond promptly to ensure you have a seamless experience with us.\" button_label=\"Send Message\" button_icon=\"ti ti-arrow-right\" quantity=\"3\" title_1=\"Location\" description_1=\"The Business Centre132, New York 12401. United States\" icon_1=\"ti ti-map-pin\" url_1=\"\" open_in_new_tab_1=\"yes\" title_2=\"Email Address\" description_2=\"info@yourmail.com\" icon_2=\"ti ti-mail\" url_2=\"mailto:info@yourmail.com\" open_in_new_tab_2=\"yes\" title_3=\"Phone\" description_3=\"(00) 123 456 789 99\" icon_3=\"ti ti-phone\" url_3=\"tel:(00) 123 456 789 99\" open_in_new_tab_3=\"yes\"  address=\"Fortis Downtown Resort\"][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(4,'Blog','---',1,NULL,'full-width',NULL,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(5,'Team','<div>[members title=\"Meet Our Professional Team\" member_ids=\"1,2,3,4,5,6,7,8\"][/members]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(7,'Terms Of Use','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(8,'Privacy Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(9,'Advertise','<h3>Random Content</h3><p>This is a random content that will be displayed on the page.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:06:31','2024-08-09 11:06:31'),(10,'FAQ','<h3>Random Content</h3><p>This is a random content that will be displayed on the page.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:06:31','2024-08-09 11:06:31');
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
INSERT INTO `post_categories` VALUES (3,1),(5,1),(2,2),(6,2),(6,3),(8,3),(7,4),(3,4),(10,5),(5,5),(3,6),(2,6),(9,7),(10,7),(3,8),(7,8),(1,9),(3,9),(5,10),(10,10),(2,11),(3,11),(10,12),(9,12),(6,13),(7,13),(4,14),(7,14),(8,15),(10,16),(3,16),(2,17),(4,17),(9,18),(2,18),(1,19),(9,19),(5,20),(1,20);
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
INSERT INTO `post_tags` VALUES (1,1),(2,1),(8,1),(8,2),(9,2),(4,2),(2,3),(9,3),(1,3),(6,4),(5,4),(3,5),(9,5),(2,5),(9,6),(3,6),(7,6),(1,7),(3,7),(10,7),(2,8),(9,8),(4,8),(8,9),(1,9),(4,9),(1,10),(8,10),(2,11),(3,11),(10,12),(2,12),(8,12),(6,13),(7,13),(5,13),(2,14),(8,15),(7,15),(2,15),(7,16),(9,16),(2,16),(6,17),(7,17),(2,18),(5,18),(1,19),(7,19),(4,19),(4,20),(3,20);
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
INSERT INTO `posts` VALUES (1,'Navigating Political Landscapes: Understanding the Dynamics of Global Alliances','Explore the intricate web of international relations and the impact of global alliances on political landscapes. Delve into the nuances that shape diplomatic strategies and geopolitical shifts.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',5,'Botble\\Member\\Models\\Member',1,'politics/news/1.jpg',948,NULL,'2024-08-09 11:06:30','2024-08-09 11:06:30'),(2,'The Evolution of Political Discourse: A Historical Perspective','Trace the evolution of political discourse through the ages, examining how communication styles, rhetoric, and public engagement have shaped the political narrative.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',4,'Botble\\Member\\Models\\Member',1,'politics/news/2.jpg',703,NULL,'2024-08-09 11:06:30','2024-08-09 11:06:30'),(3,'Beyond Borders: Exploring the Role of Supranational Organizations in Modern Politics','Investigate the influence of supranational organizations on contemporary politics, analyzing their role in addressing global challenges and fostering cooperation among nations.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',7,'Botble\\Member\\Models\\Member',1,'politics/news/3.jpg',1897,NULL,'2024-08-09 11:06:30','2024-08-09 11:06:30'),(4,'From the Streets to Social Media: The Power of Activism in Shaping Political Movements','Uncover the ways in which activism, both offline and online, plays a pivotal role in shaping political movements and influencing policy decisions.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',8,'Botble\\Member\\Models\\Member',1,'politics/news/4.jpg',2437,NULL,'2024-08-09 11:06:30','2024-08-09 11:06:30'),(5,'Populism and Democracy: Navigating the Thin Line','Examine the complexities surrounding populism and its impact on democratic institutions, analyzing the challenges posed by charismatic leaders and their populist agendas.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',6,'Botble\\Member\\Models\\Member',1,'politics/news/5.jpg',843,NULL,'2024-08-09 11:06:30','2024-08-09 11:06:30'),(6,'Climate Change Policy: Bridging the Gap Between Science and Politics','Evaluate the intersection of science and politics in the formulation of climate change policies, exploring the challenges and opportunities for global environmental governance.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',1,'Botble\\Member\\Models\\Member',1,'politics/news/6.jpg',530,NULL,'2024-08-09 11:06:30','2024-08-09 11:06:30'),(7,'Identity Politics: Understanding the Role of Social Identities in Political Discourse','Delve into the dynamics of identity politics, exploring how social identities shape political narratives, policies, and the overall political landscape.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',3,'Botble\\Member\\Models\\Member',1,'politics/news/7.jpg',2257,NULL,'2024-08-09 11:06:30','2024-08-09 11:06:30'),(8,'The Role of Technology in Modern Politics: Navigating the Digital Age','Investigate the impact of technology on political processes, examining how social media, artificial intelligence, and data analytics influence political campaigns and governance.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',5,'Botble\\Member\\Models\\Member',1,'politics/news/8.jpg',1277,NULL,'2024-08-09 11:06:30','2024-08-09 11:06:30'),(9,'Global Economic Policies: Balancing Growth and Equality','Analyze the challenges of crafting economic policies that promote both growth and equality on a global scale, exploring the tensions between competing economic ideologies.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',7,'Botble\\Member\\Models\\Member',1,'politics/news/9.jpg',1678,NULL,'2024-08-09 11:06:30','2024-08-09 11:06:30'),(10,'The Power of Diplomacy: Case Studies in Successful International Relations','Explore successful instances of diplomatic efforts, analyzing the strategies and negotiations that led to positive outcomes in resolving international conflicts.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',4,'Botble\\Member\\Models\\Member',1,'politics/news/10.jpg',743,NULL,'2024-08-09 11:06:30','2024-08-09 11:06:30'),(11,'Media\'s Role in Politics: Shaping Public Opinion and Influencing Elections','Examine the influence of media on political processes, analyzing how the media shapes public opinion, frames political discourse, and impacts electoral outcomes.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',5,'Botble\\Member\\Models\\Member',0,'politics/news/11.jpg',1295,NULL,'2024-08-09 11:06:30','2024-08-09 11:06:30'),(12,'Human Rights in Contemporary Politics: Struggles, Progress, and Challenges','Investigate the current state of human rights in the political arena, exploring both progress and challenges in the global effort to protect and promote human rights.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',4,'Botble\\Member\\Models\\Member',0,'politics/news/12.jpg',1901,NULL,'2024-08-09 11:06:30','2024-08-09 11:06:30'),(13,'Nationalism vs. Globalism: A Balancing Act in Modern Governance','Delve into the tensions between nationalism and globalism, analyzing how leaders navigate the balance between prioritizing national interests and participating in global cooperation.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',7,'Botble\\Member\\Models\\Member',0,'politics/news/13.jpg',2427,NULL,'2024-08-09 11:06:31','2024-08-09 11:06:31'),(14,'The Role of Non-Governmental Organizations (NGOs) in Shaping Political Agendas','Explore the impact of NGOs on political agendas, examining how these organizations influence policy-making and advocate for social and environmental issues.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',5,'Botble\\Member\\Models\\Member',0,'politics/news/14.jpg',500,NULL,'2024-08-09 11:06:31','2024-08-09 11:06:31'),(15,'Post-Pandemic Politics: Resilience, Recovery, and the New Normal','Analyze the political implications of the post-pandemic era, exploring how governments worldwide are addressing the challenges of recovery, public health, and economic stability.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',1,'Botble\\Member\\Models\\Member',0,'politics/news/15.jpg',2295,NULL,'2024-08-09 11:06:31','2024-08-09 11:06:31'),(16,'Cybersecurity in Politics: Safeguarding Democracies in the Digital Age','Examine the increasing importance of cybersecurity in political landscapes, analyzing the threats posed by cyberattacks and the measures taken to secure electoral systems and government institutions.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',3,'Botble\\Member\\Models\\Member',0,'politics/news/16.jpg',1809,NULL,'2024-08-09 11:06:31','2024-08-09 11:06:31'),(17,'Political Polarization: Understanding Divides and Building Bridges','Investigate the root causes of political polarization, exploring strategies to bridge ideological divides and foster constructive dialogue in a polarized political climate.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',5,'Botble\\Member\\Models\\Member',0,'politics/news/17.jpg',1658,NULL,'2024-08-09 11:06:31','2024-08-09 11:06:31'),(18,'Feminism in Politics: Progress, Challenges, and the Fight for Equality','Examine the intersection of feminism and politics, analyzing the progress made in achieving gender equality and the ongoing challenges faced by women in political spheres.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',2,'Botble\\Member\\Models\\Member',0,'politics/news/18.jpg',1535,NULL,'2024-08-09 11:06:31','2024-08-09 11:06:31'),(19,'The Ethics of Political Leadership: Navigating Moral Dilemmas in Public Service','Explore the ethical challenges faced by political leaders, examining how moral dilemmas impact decision-making and public trust in government.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',1,'Botble\\Member\\Models\\Member',0,'politics/news/19.jpg',372,NULL,'2024-08-09 11:06:31','2024-08-09 11:06:31'),(20,'Disinformation and Democracy: Countering the Threats to Information Integrity','Investigate the dangers of disinformation in democratic processes, exploring strategies to counteract false narratives, promote media literacy, and safeguard the integrity of information in politics.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',2,'Botble\\Member\\Models\\Member',0,'politics/news/20.jpg',1695,NULL,'2024-08-09 11:06:31','2024-08-09 11:06:31');
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"fob-comment.index\":true,\"fob-comment.comments.index\":true,\"fob-comment.comments.edit\":true,\"fob-comment.comments.destroy\":true,\"fob-comment.comments.reply\":true,\"fob-comment.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-08-09 11:06:05','2024-08-09 11:06:05');
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
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-08-09 11:06:32'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"ai-writer\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"fob-comment\",\"gallery\",\"member\",\"newsletter\",\"note\",\"request-log\",\"rss-feed\",\"social-login\",\"translation\"]',NULL,'2024-08-09 11:06:32'),(4,'ai_writer_proxy_enable','0',NULL,'2024-08-09 11:06:32'),(5,'ai_writer_proxy_protocol',NULL,NULL,'2024-08-09 11:06:32'),(6,'ai_writer_proxy_ip',NULL,NULL,'2024-08-09 11:06:32'),(7,'ai_writer_proxy_port',NULL,NULL,'2024-08-09 11:06:32'),(8,'ai_writer_proxy_username',NULL,NULL,'2024-08-09 11:06:32'),(9,'ai_writer_proxy_password',NULL,NULL,'2024-08-09 11:06:32'),(10,'ai_writer_prompt_template','[{\"title\":\"Product Content\",\"content\":\"You will be a marketer. I will give the information of the product, you will write an introductory article about that product, the article requires google seo standards and is highly persuasive to increase the rate of users closing orders.\\nParameters product:\"},{\"title\":\"Post Content\",\"content\":\"You will be a marketer. Articles about:\"}]',NULL,'2024-08-09 11:06:32'),(11,'ai_writer_openai_key',NULL,NULL,'2024-08-09 11:06:32'),(12,'ai_writer_openai_temperature','1',NULL,'2024-08-09 11:06:32'),(13,'ai_writer_openai_max_tokens','2000',NULL,'2024-08-09 11:06:32'),(14,'ai_writer_openai_frequency_penalty','0',NULL,'2024-08-09 11:06:32'),(15,'ai_writer_openai_presence_penalty','0',NULL,'2024-08-09 11:06:32'),(16,'ai_writer_openai_models','[\"gpt-3.5-turbo\"]',NULL,'2024-08-09 11:06:32'),(17,'ai_writer_openai_default_model','gpt-3.5-turbo',NULL,'2024-08-09 11:06:32'),(18,'ai_writer_spin_template','[]',NULL,'2024-08-09 11:06:32'),(21,'language_hide_default','1',NULL,'2024-08-09 11:06:32'),(22,'language_switcher_display','dropdown',NULL,'2024-08-09 11:06:32'),(23,'language_display','all',NULL,'2024-08-09 11:06:32'),(24,'language_hide_languages','[]',NULL,'2024-08-09 11:06:32'),(25,'media_random_hash','3e79effdf1f8fb56b7bd6395b84e2f9c',NULL,'2024-08-09 11:06:32'),(26,'theme','echo-politics',NULL,'2024-08-09 11:06:32'),(27,'show_admin_bar','1',NULL,'2024-08-09 11:06:32'),(28,'admin_favicon','main/general/favicon.png',NULL,'2024-08-09 11:06:32'),(29,'admin_logo','main/general/logo-dark.png',NULL,'2024-08-09 11:06:32'),(30,'permalink-botble-blog-models-post','blog',NULL,'2024-08-09 11:06:32'),(31,'permalink-botble-blog-models-category','blog',NULL,'2024-08-09 11:06:32'),(32,'theme-echo-politics-site_name','Echo - Politics',NULL,'2024-08-09 11:06:32'),(33,'theme-echo-politics-site_title','News & Magazine Laravel Script.',NULL,'2024-08-09 11:06:32'),(34,'theme-echo-politics-seo_description','Echo is a modern, clean, and professional Laravel script that is suitable for news, magazine, blog, and any kind of website.',NULL,'2024-08-09 11:06:32'),(35,'theme-echo-politics-homepage_id','1',NULL,'2024-08-09 11:06:32'),(36,'theme-echo-politics-logo','politics/general/logo.png',NULL,'2024-08-09 11:06:32'),(37,'theme-echo-politics-logo_dark','politics/general/logo.png',NULL,'2024-08-09 11:06:32'),(38,'theme-echo-politics-favicon','politics/general/favicon.png',NULL,'2024-08-09 11:06:32'),(39,'theme-echo-politics-blog_page_id','4',NULL,'2024-08-09 11:06:32'),(40,'theme-echo-politics-primary_font','Inter',NULL,'2024-08-09 11:06:32'),(41,'theme-echo-politics-heading_font','DM Sans',NULL,'2024-08-09 11:06:32'),(42,'theme-echo-politics-theme_style','auto',NULL,'2024-08-09 11:06:32'),(43,'theme-echo-politics-secondary_color','#47164F',NULL,'2024-08-09 11:06:32'),(44,'theme-echo-politics-breadcrumb_background_image','main/backgrounds/breadcrumb.png',NULL,'2024-08-09 11:06:32'),(45,'theme-echo-politics-breadcrumb_background_color','transparent',NULL,'2024-08-09 11:06:32'),(46,'theme-echo-politics-breadcrumb_text_color','',NULL,'2024-08-09 11:06:32'),(47,'theme-echo-politics-blog_author_style','avatar_start',NULL,'2024-08-09 11:06:32'),(48,'theme-echo-politics-blog_description_style','normal',NULL,'2024-08-09 11:06:32'),(49,'theme-echo-politics-copyright','©%Y Archi Elite JSC. All Rights Reserved.',NULL,'2024-08-09 11:06:32'),(50,'theme-echo-politics-language_switcher_enabled','1',NULL,'2024-08-09 11:06:32'),(51,'theme-echo-politics-newsletter_popup_enable','1',NULL,'2024-08-09 11:06:32'),(52,'theme-echo-politics-newsletter_popup_image','main/general/newsletter-popup.png',NULL,'2024-08-09 11:06:32'),(53,'theme-echo-politics-newsletter_popup_title','Let’s join our newsletter!',NULL,'2024-08-09 11:06:32'),(54,'theme-echo-politics-newsletter_popup_subtitle','Weekly Updates',NULL,'2024-08-09 11:06:32'),(55,'theme-echo-politics-newsletter_popup_description','Do not worry we don’t spam!',NULL,'2024-08-09 11:06:32'),(56,'theme-echo-politics-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,'2024-08-09 11:06:32'),(57,'theme-echo-politics-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,'2024-08-09 11:06:32'),(58,'theme-echo-politics-primary_color','#ff390e',NULL,'2024-08-09 11:06:32'),(59,'announcement_max_width','1390',NULL,NULL),(60,'announcement_text_color','#fefefe',NULL,NULL),(61,'announcement_background_color','#ff390e',NULL,NULL),(62,'announcement_text_alignment','center',NULL,NULL),(63,'announcement_dismissible','1',NULL,NULL),(64,'announcement_font_size','14',NULL,NULL),(65,'announcement_font_size_unit','px',NULL,NULL);
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
INSERT INTO `slugs` VALUES (1,'smith',1,'Botble\\Member\\Models\\Member','author','2024-08-09 11:06:09','2024-08-09 11:06:33'),(2,'gusikowski',2,'Botble\\Member\\Models\\Member','author','2024-08-09 11:06:09','2024-08-09 11:06:33'),(3,'conroy',3,'Botble\\Member\\Models\\Member','author','2024-08-09 11:06:09','2024-08-09 11:06:33'),(4,'lubowitz',4,'Botble\\Member\\Models\\Member','author','2024-08-09 11:06:09','2024-08-09 11:06:33'),(5,'labadie',5,'Botble\\Member\\Models\\Member','author','2024-08-09 11:06:09','2024-08-09 11:06:33'),(6,'hintz',6,'Botble\\Member\\Models\\Member','author','2024-08-09 11:06:09','2024-08-09 11:06:33'),(7,'russel',7,'Botble\\Member\\Models\\Member','author','2024-08-09 11:06:09','2024-08-09 11:06:33'),(8,'schneider',8,'Botble\\Member\\Models\\Member','author','2024-08-09 11:06:09','2024-08-09 11:06:33'),(9,'political-systems',1,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:20','2024-08-09 11:06:31'),(10,'media-and-politics',2,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:20','2024-08-09 11:06:31'),(11,'elections-and-campaigns',3,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:20','2024-08-09 11:06:31'),(12,'political-ideologies',4,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:20','2024-08-09 11:06:31'),(13,'international-relations',5,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:20','2024-08-09 11:06:31'),(14,'political-economy',6,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:20','2024-08-09 11:06:31'),(15,'political-leadership',7,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:20','2024-08-09 11:06:31'),(16,'political-ethics',8,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:20','2024-08-09 11:06:31'),(17,'human-rights',9,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:20','2024-08-09 11:06:31'),(18,'political-polarization',10,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:20','2024-08-09 11:06:31'),(19,'politics',1,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:20','2024-08-09 11:06:20'),(20,'political-science',2,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:20','2024-08-09 11:06:20'),(21,'elections',3,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:20','2024-08-09 11:06:20'),(22,'government',4,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:20','2024-08-09 11:06:20'),(23,'democracy',5,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:20','2024-08-09 11:06:20'),(24,'international-relations',6,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:20','2024-08-09 11:06:20'),(25,'media',7,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:20','2024-08-09 11:06:20'),(26,'policy',8,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:20','2024-08-09 11:06:20'),(27,'political-theory',9,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:20','2024-08-09 11:06:20'),(28,'public-opinion',10,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:20','2024-08-09 11:06:20'),(29,'navigating-political-landscapes-understanding-the-dynamics-of-global-alliances',1,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:30','2024-08-09 11:06:31'),(30,'the-evolution-of-political-discourse-a-historical-perspective',2,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:30','2024-08-09 11:06:31'),(31,'beyond-borders-exploring-the-role-of-supranational-organizations-in-modern-politics',3,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:30','2024-08-09 11:06:31'),(32,'from-the-streets-to-social-media-the-power-of-activism-in-shaping-political-movements',4,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:30','2024-08-09 11:06:31'),(33,'populism-and-democracy-navigating-the-thin-line',5,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:30','2024-08-09 11:06:31'),(34,'climate-change-policy-bridging-the-gap-between-science-and-politics',6,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:30','2024-08-09 11:06:31'),(35,'identity-politics-understanding-the-role-of-social-identities-in-political-discourse',7,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:30','2024-08-09 11:06:31'),(36,'the-role-of-technology-in-modern-politics-navigating-the-digital-age',8,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:30','2024-08-09 11:06:31'),(37,'global-economic-policies-balancing-growth-and-equality',9,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:30','2024-08-09 11:06:31'),(38,'the-power-of-diplomacy-case-studies-in-successful-international-relations',10,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:30','2024-08-09 11:06:31'),(39,'medias-role-in-politics-shaping-public-opinion-and-influencing-elections',11,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:30','2024-08-09 11:06:31'),(40,'human-rights-in-contemporary-politics-struggles-progress-and-challenges',12,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:31','2024-08-09 11:06:31'),(41,'nationalism-vs-globalism-a-balancing-act-in-modern-governance',13,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:31','2024-08-09 11:06:31'),(42,'the-role-of-non-governmental-organizations-ngos-in-shaping-political-agendas',14,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:31','2024-08-09 11:06:31'),(43,'post-pandemic-politics-resilience-recovery-and-the-new-normal',15,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:31','2024-08-09 11:06:31'),(44,'cybersecurity-in-politics-safeguarding-democracies-in-the-digital-age',16,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:31','2024-08-09 11:06:31'),(45,'political-polarization-understanding-divides-and-building-bridges',17,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:31','2024-08-09 11:06:31'),(46,'feminism-in-politics-progress-challenges-and-the-fight-for-equality',18,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:31','2024-08-09 11:06:31'),(47,'the-ethics-of-political-leadership-navigating-moral-dilemmas-in-public-service',19,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:31','2024-08-09 11:06:31'),(48,'disinformation-and-democracy-countering-the-threats-to-information-integrity',20,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:31','2024-08-09 11:06:31'),(49,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(50,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(51,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(52,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(53,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(54,'sunset',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(55,'ocean-views',7,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(56,'adventure-time',8,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(57,'city-lights',9,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(58,'dreamscape',10,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(59,'enchanted-forest',11,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(60,'golden-hour',12,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(61,'serenity',13,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(62,'eternal-beauty',14,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(63,'moonlight-magic',15,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(64,'starry-night',16,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(65,'hidden-gems',17,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(66,'tranquil-waters',18,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(67,'urban-escape',19,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(68,'twilight-zone',20,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:31','2024-08-09 11:06:31'),(69,'homepage',1,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:31','2024-08-09 11:06:31'),(70,'about-us',2,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:31','2024-08-09 11:06:31'),(71,'contact',3,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:31','2024-08-09 11:06:31'),(72,'blog',4,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:31','2024-08-09 11:06:31'),(73,'team',5,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:31','2024-08-09 11:06:31'),(74,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:31','2024-08-09 11:06:31'),(75,'terms-of-use',7,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:31','2024-08-09 11:06:31'),(76,'privacy-policy',8,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:31','2024-08-09 11:06:31'),(77,'advertise',9,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:31','2024-08-09 11:06:31'),(78,'faq',10,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:31','2024-08-09 11:06:31');
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
INSERT INTO `tags` VALUES (1,'Politics',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:20','2024-08-09 11:06:20'),(2,'Political Science',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:20','2024-08-09 11:06:20'),(3,'Elections',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:20','2024-08-09 11:06:20'),(4,'Government',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:20','2024-08-09 11:06:20'),(5,'Democracy',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:20','2024-08-09 11:06:20'),(6,'International Relations',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:20','2024-08-09 11:06:20'),(7,'Media',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:20','2024-08-09 11:06:20'),(8,'Policy',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:20','2024-08-09 11:06:20'),(9,'Political Theory',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:20','2024-08-09 11:06:20'),(10,'Public Opinion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:20','2024-08-09 11:06:20');
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
INSERT INTO `users` VALUES (1,'jefferey96@dicki.info',NULL,'$2y$12$w3IOg3NZswu9LCOTTDi8sOVUZxs5dxyqVTuQlZLmSaMlfJneqodYK',NULL,'2024-08-09 11:06:05','2024-08-09 11:06:05','Kaitlin','Nikolaus','admin',NULL,1,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'BlogPostsWidget','menu_sidebar','echo-politics',1,'{\"type\":\"recent\",\"category_ids\":[1,2,3],\"limit\":3}','2024-08-09 11:06:33','2024-08-09 11:06:33'),(2,'SocialLinksWidget','menu_sidebar','echo-politics',2,'[]','2024-08-09 11:06:33','2024-08-09 11:06:33'),(3,'BlogCategoriesWidget','primary_sidebar','echo-politics',1,'{\"title\":\"Popular Categories\",\"id\":\"BlogCategoriesWidget\",\"enable_lazy_loading\":\"yes\",\"quantity\":\"5\",\"category_id_1\":\"1\",\"background_image_1\":\"main\\/blog-categories\\/1.png\",\"background_color_1\":\"rgb(174 81 43)\",\"category_id_2\":\"2\",\"background_image_2\":\"main\\/blog-categories\\/2.png\",\"background_color_2\":\"rgb(102 64 165)\",\"category_id_3\":\"3\",\"background_image_3\":\"main\\/blog-categories\\/3.png\",\"background_color_3\":\"rgb(85 163 168)\",\"category_id_4\":\"4\",\"background_image_4\":\"main\\/blog-categories\\/4.png\",\"background_color_4\":\"rgb(83 39 21)\",\"category_id_5\":\"5\",\"background_image_5\":\"main\\/blog-categories\\/5.png\",\"background_color_5\":\"rgb(85 163 168)\"}','2024-08-09 11:06:33','2024-08-09 11:06:33'),(4,'BlogPostsWidget','primary_sidebar','echo-politics',2,'{\"type\":\"popular\",\"card_style\":\"default-card\",\"shape\":\"square\",\"category_ids\":[1,3,4],\"title\":\"Top Story\",\"limit\":4,\"enable_lazy_loading\":\"yes\"}','2024-08-09 11:06:33','2024-08-09 11:06:33'),(5,'FollowUsWidget','primary_sidebar','echo-politics',3,'{\"id\":\"FollowUsWidget\",\"items\":[[{\"key\":\"title\",\"value\":\"20K Fans\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"title\",\"value\":\"10K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"title\",\"value\":\"50K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/instagram.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/linkedin.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/pinterest.com\"}],[{\"key\":\"title\",\"value\":\"04K Subscribers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"}]]}','2024-08-09 11:06:33','2024-08-09 11:06:33'),(6,'FollowUsWidget','custom_sidebar_1','echo-politics',1,'{\"id\":\"FollowUsWidget\",\"items\":[[{\"key\":\"title\",\"value\":\"20K Fans\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"title\",\"value\":\"10K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"title\",\"value\":\"50K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/instagram.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/linkedin.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/pinterest.com\"}],[{\"key\":\"title\",\"value\":\"04K Subscribers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"}]]}','2024-08-09 11:06:33','2024-08-09 11:06:33'),(7,'BlogPostsWidget','custom_sidebar_1','echo-politics',2,'{\"id\":\"BlogPostsWidget\",\"title\":\"Popular Now\",\"style\":\"default-card\",\"shape\":\"circle\",\"category_ids\":[1,2,3],\"enable_lazy_loading\":\"yes\"}','2024-08-09 11:06:33','2024-08-09 11:06:33'),(8,'GalleriesWidget','custom_sidebar_1','echo-politics',3,'{\"id\":\"GalleriesWidget\",\"title\":\"Gallery\",\"limit\":4}','2024-08-09 11:06:33','2024-08-09 11:06:33'),(9,'BlogCategoriesWidget','custom_sidebar_2','echo-politics',1,'{\"title\":\"Hot Categories\",\"id\":\"BlogCategoriesWidget\",\"quantity\":\"5\",\"category_id_1\":\"1\",\"background_image_1\":\"politics\\/backgrounds\\/blog-category-bg.png\",\"background_color_1\":\"rgb(174 81 43)\",\"category_id_2\":\"2\",\"background_image_2\":\"politics\\/backgrounds\\/blog-category-bg.png\",\"background_color_2\":\"rgb(102 64 165)\",\"category_id_3\":\"3\",\"background_image_3\":\"politics\\/backgrounds\\/blog-category-bg.png\",\"background_color_3\":\"rgb(85 163 168)\",\"category_id_4\":\"4\",\"background_image_4\":\"politics\\/backgrounds\\/blog-category-bg.png\",\"background_color_4\":\"rgb(83 39 21)\",\"category_id_5\":\"5\",\"background_image_5\":\"politics\\/backgrounds\\/blog-category-bg.png\",\"background_color_5\":\"rgb(85 163 168)\",\"enable_lazy_loading\":\"yes\"}','2024-08-09 11:06:33','2024-08-09 11:06:33'),(10,'NewsletterWidget','custom_sidebar_2','echo-politics',2,'{\"id\":\"NewsletterWidget\",\"title\":\"Stay Tuned With Updates\",\"image\":\"politics\\/general\\/newsletter-image.png\"}','2024-08-09 11:06:33','2024-08-09 11:06:33'),(11,'SiteInformationWidget','footer_sidebar','echo-politics',1,'{\"id\":\"SiteInformationWidget\",\"title\":\"Get In Touch\",\"email\":\"Info@Demomail.Com\",\"hotline\":\"(00) 236 123 456 88\",\"address\":\"255 Sheet, New Avanew, NY\"}','2024-08-09 11:06:33','2024-08-09 11:06:33'),(12,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','echo-politics',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Most Popular\",\"style\":\"2-column\",\"items\":[[{\"key\":\"label\",\"value\":\"Political Systems\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/political-systems\"}],[{\"key\":\"label\",\"value\":\"Media and Politics\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/media-and-politics\"}],[{\"key\":\"label\",\"value\":\"Elections and Campaigns\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/elections-and-campaigns\"}],[{\"key\":\"label\",\"value\":\"Political Ideologies\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/political-ideologies\"}],[{\"key\":\"label\",\"value\":\"International Relations\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/international-relations\"}]]}','2024-08-09 11:06:33','2024-08-09 11:06:33'),(13,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','echo-politics',3,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Help\",\"items\":[[{\"key\":\"label\",\"value\":\"About\"},{\"key\":\"url\",\"value\":\"about-us\"}],[{\"key\":\"label\",\"value\":\"Terms of Use\"},{\"key\":\"url\",\"value\":\"terms-of-use\"}],[{\"key\":\"label\",\"value\":\"Advertise\"},{\"key\":\"url\",\"value\":\"advertise\"}],[{\"key\":\"label\",\"value\":\"Privacy Policy\"},{\"key\":\"url\",\"value\":\"privacy-policy\"}],[{\"key\":\"label\",\"value\":\"FAQ\"},{\"key\":\"url\",\"value\":\"faq\"}]]}','2024-08-09 11:06:33','2024-08-09 11:06:33'),(14,'NewsletterWidget','footer_sidebar','echo-politics',4,'{\"id\":\"NewsletterWidget\",\"title\":\"Newsletter\",\"description\":\"Register now to get latest updates on promotion & coupons.\"}','2024-08-09 11:06:33','2024-08-09 11:06:33'),(15,'ActionButtonsWidget','header_sidebar','echo-politics',0,'{\"enable_dark_light_switcher_button\":true,\"enable_search_button\":true,\"enable_toggle_side_menu_button\":true,\"alignment\":\"end\"}','2024-08-09 11:06:33','2024-08-09 11:06:33');
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

-- Dump completed on 2024-08-10  1:06:34
