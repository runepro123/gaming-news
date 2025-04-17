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
INSERT INTO `activations` VALUES (1,1,'C601bYK9TC4NAK00sx4A6R5mjr1xpujG',1,'2024-08-09 11:06:38','2024-08-09 11:06:38','2024-08-09 11:06:38');
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
INSERT INTO `announcements` VALUES (1,'Announcement 1','Cyber Monday: Save big on the Creative Cloud All Apps plan for individuals through 2 Dec',0,NULL,NULL,0,1,'2024-08-09 18:07:02',NULL,1,'2024-08-09 11:07:02','2024-08-09 11:07:02'),(2,'Announcement 2','Students and teachers save a massive 71% on Creative Cloud All Apps',0,NULL,NULL,0,1,'2024-08-09 18:07:02',NULL,1,'2024-08-09 11:07:02','2024-08-09 11:07:02'),(3,'Announcement 3','Black Friday and Cyber Monday 2023 Deals for Motion Designers, grab it now!',0,NULL,NULL,0,1,'2024-08-09 18:07:02',NULL,1,'2024-08-09 11:07:02','2024-08-09 11:07:02');
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
INSERT INTO `categories` VALUES (1,'Major League Madness',0,'Amet inventore et ut. Reiciendis et omnis accusantium qui omnis quo. Aut in dolorum labore voluptatem consectetur voluptatem repudiandae rem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-08-09 11:06:50','2024-08-09 11:06:50'),(2,'Hoops Hysteria',0,'Et sint consequuntur neque accusamus. Eligendi nemo amet odio repellat voluptatem. Deleniti laboriosam nobis ipsum quo tenetur voluptate doloribus quia. Vel quas ut assumenda in optio est quidem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:50','2024-08-09 11:06:50'),(3,'Football Frenzy',0,'Corrupti id facere eveniet enim. Distinctio assumenda id nam labore quibusdam nihil. Esse aut quisquam et. Tempora nemo et est ipsam corrupti tenetur. Aut quia consequatur mollitia.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:50','2024-08-09 11:06:50'),(4,'Goal Line Glory',0,'Corrupti eum modi officia et quis officia molestias. Consequatur qui harum reiciendis et culpa consequatur. Eos aliquam doloremque dolorem corporis vel. Sed unde asperiores rem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:50','2024-08-09 11:06:50'),(5,'Net Gains',0,'Et dolorum quis voluptas. Quidem assumenda ut nesciunt sed aliquam possimus id. Impedit ut aut beatae voluptatem delectus voluptatem excepturi. Qui rem debitis sapiente.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:50','2024-08-09 11:06:50'),(6,'On the Ice',0,'Aspernatur odit sunt voluptatibus rem ipsa. Vitae aut accusamus asperiores ut ullam dolorem maiores. Earum dolor labore sequi quia. Laboriosam non ducimus nulla ut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:50','2024-08-09 11:06:50'),(7,'Links and Greens',0,'Debitis nihil dicta possimus velit voluptatem recusandae. Voluptatibus voluptatem soluta eligendi recusandae assumenda. Esse cum accusamus necessitatibus dolor recusandae.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:50','2024-08-09 11:06:50'),(8,'Olympic Watch',0,'Perferendis animi aliquid dolor sit. Qui dolores repellat nisi delectus. Laudantium voluptas sequi consequuntur incidunt culpa quos autem. Ipsum et quod placeat qui doloribus perspiciatis recusandae.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:50','2024-08-09 11:06:50'),(9,'Racetrack Rundown',0,'Commodi voluptatibus at reprehenderit aliquam inventore dolore magni sunt. Animi molestias maiores sunt sapiente optio. Omnis qui quo dolor in voluptates rerum. Blanditiis ullam nihil dolores.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:50','2024-08-09 11:06:50'),(10,'Water World',0,'Voluptas cum asperiores aut quia aperiam ut. At quo et sint amet possimus deleniti. Ea accusamus quod molestiae velit. Itaque eos voluptatum in quia debitis nihil.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-09 11:06:50','2024-08-09 11:06:50');
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
INSERT INTO `contacts` VALUES (1,'Kian Greenholt','qleannon@example.org','+1 (251) 407-6762','61657 Ashley Coves Suite 030\nWalkerton, NH 04037','Dignissimos animi beatae quis.','Error ullam repellat modi doloribus perspiciatis voluptas numquam. Consequatur maiores quo assumenda. Exercitationem sint et et omnis possimus. Voluptates illo et alias voluptatibus officiis. Et eveniet vitae aut eum sapiente quis aperiam. Id impedit quisquam vel maiores voluptatibus. Quia reprehenderit aut suscipit velit.',NULL,'read','2024-08-09 11:06:38','2024-08-09 11:06:38'),(2,'Luz Schultz','zrutherford@example.org','+19852639876','56285 Manley Fall Apt. 477\nPort Wilhelm, NC 66563-7050','Rerum voluptatem pariatur rem sit ad.','In eos est eum est. Nostrum quia officiis quod recusandae mollitia error. Blanditiis animi omnis non minus et laboriosam. Perspiciatis quis officia accusamus et omnis nemo laboriosam. Ex asperiores dolor nesciunt eveniet vero velit et. Quo adipisci velit perspiciatis ab sed. Nulla voluptate nobis consequatur. Ea placeat perferendis odio quia. Est dolorem rerum harum unde. Voluptas voluptas praesentium laudantium qui consequatur nobis autem. Corrupti quibusdam qui itaque est ea ea.',NULL,'read','2024-08-09 11:06:38','2024-08-09 11:06:38'),(3,'Tamara Weissnat Jr.','friesen.kendall@example.net','+1.704.848.7509','9663 Tremaine Corner Suite 552\nPort Pearl, ME 02178-7928','Et ratione eaque id nesciunt neque a et.','Reprehenderit sunt delectus ut quis. Corporis nihil hic perferendis sed sed voluptates. Qui quia totam ab et amet sed quia. Id odio amet perferendis. Et deleniti dolores incidunt rerum laudantium quae aspernatur vitae. Illo error facilis sit aliquid error esse. Et quasi quia voluptatibus inventore occaecati. Culpa nostrum aut iure ratione ea.',NULL,'read','2024-08-09 11:06:38','2024-08-09 11:06:38'),(4,'Gerry Prohaska','cdeckow@example.com','+12145186412','8525 Rudy Alley\nIcietown, IA 60087','Neque voluptas odit ratione deleniti.','Sit labore quisquam recusandae. Aut commodi quaerat reiciendis iure similique hic quia. Corrupti earum cumque voluptate qui et. Sit dolor velit laborum rerum. Enim molestiae magnam aliquid soluta voluptatem et distinctio. Facere quod magnam ex omnis quod qui distinctio. Quibusdam itaque optio voluptas cupiditate dolores qui id. Eveniet reprehenderit iste optio. Sit consequatur totam assumenda illo est repellat saepe.',NULL,'unread','2024-08-09 11:06:38','2024-08-09 11:06:38'),(5,'Ada Kautzer','tgrant@example.org','1-701-722-1102','24977 Jenkins Course\nLake Garrett, NM 40853-3006','Sint quis qui non in.','Qui voluptates mollitia minus numquam optio voluptatem. Eos fugit doloremque quia dolor et. Et nulla reprehenderit quisquam quod minima autem id dolorum. Impedit totam et quia eum. Voluptatem vero natus repudiandae voluptatem esse sint. Ut dolores numquam ea maxime itaque. Velit natus deserunt corporis dolorum recusandae. Aut aut sequi vero. Sit aut est laborum corrupti provident quisquam ducimus. Iusto delectus aut non blanditiis tenetur eius nihil. Dolorum dolor doloribus est ea.',NULL,'unread','2024-08-09 11:06:38','2024-08-09 11:06:38'),(6,'Dulce Ankunding','terrence23@example.com','904-742-5202','76432 Cruickshank Stream\nWeissnatmouth, ID 92701','Pariatur tempore nihil dicta voluptas.','Excepturi enim sint porro ipsam et. Et quod et consequatur non deleniti molestias. Consequuntur fuga quia ad dignissimos est. Qui voluptatem nisi tenetur hic corporis nihil. Eveniet dolorum qui voluptatem quo. Error perspiciatis architecto ut reiciendis asperiores. Impedit aut inventore non qui. Reprehenderit quasi earum delectus. Id et nulla velit reprehenderit distinctio qui voluptate. Nemo maiores corporis architecto quia qui et explicabo.',NULL,'unread','2024-08-09 11:06:38','2024-08-09 11:06:38'),(7,'Alexandrine Gusikowski','crist.ned@example.com','(314) 635-6838','74236 Bridget Centers Apt. 724\nSouth Lilianaport, TN 06745-4411','Et nesciunt consectetur incidunt nemo neque quo.','Voluptatem unde aliquam optio non necessitatibus voluptatem itaque in. Est sit odit incidunt et adipisci qui porro. Error dolores sunt omnis quis tenetur. Sapiente veniam et ad recusandae nostrum qui dignissimos. Accusamus sint quia rem occaecati itaque iste totam. Mollitia voluptatem placeat expedita rerum. Similique vero architecto fugiat magni rerum omnis hic.',NULL,'unread','2024-08-09 11:06:38','2024-08-09 11:06:38'),(8,'Yesenia Kuhn','baumbach.lucile@example.net','(213) 334-3993','43266 Bartoletti Lodge\nNew Josiah, WV 22634','Non ea qui et unde autem qui non ullam.','Iure dolor ipsa totam commodi. Aut enim provident impedit aliquid consequatur. Corrupti ipsam modi maxime dolor enim qui. Voluptatibus dolor sed doloribus est fugiat voluptas. Illo delectus sint laudantium recusandae sint blanditiis. Sed quis voluptatibus tempore itaque dolorem autem occaecati. Cum rem dignissimos at consequuntur voluptatem culpa tenetur. Minus possimus quam illo et temporibus perferendis quo.',NULL,'unread','2024-08-09 11:06:38','2024-08-09 11:06:38'),(9,'Adriana Wilderman','pkling@example.com','(231) 502-5723','704 Mosciski Passage Apt. 170\nWest Heber, VT 42325','Quasi sit aspernatur ipsa nostrum quo at.','Et corrupti asperiores illum dolor. Nihil facere molestias ut nihil omnis. Itaque quia ea aspernatur praesentium tempora. Omnis voluptas aspernatur dolor accusamus inventore. Qui neque nisi atque dolor nihil quidem. Saepe quod eos inventore saepe adipisci optio officiis. Doloremque qui odit doloribus. Repellat harum ea id vitae inventore ut minima. Aut asperiores exercitationem fugit at molestiae praesentium. Voluptas atque tempore deserunt nemo. Rerum itaque quisquam iure voluptatem sunt sit.',NULL,'unread','2024-08-09 11:06:38','2024-08-09 11:06:38'),(10,'Dessie Kunze','noemie42@example.org','(208) 267-5354','3229 Berneice Crest Apt. 838\nEast Haltown, RI 66748','Ea earum vel voluptas.','Illum placeat est debitis. Modi cupiditate dolor facilis adipisci. Quos nisi aut non architecto aut cumque eligendi. Blanditiis non voluptatem id iste natus facere. Qui laudantium numquam assumenda exercitationem dolorem architecto. Neque libero ipsum nulla ab dolores harum. Debitis quam fugiat voluptatibus. Cupiditate ex quo velit pariatur sed. Et nam est quia non. Aut quae at quibusdam rerum accusamus aut.',NULL,'unread','2024-08-09 11:06:38','2024-08-09 11:06:38');
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
INSERT INTO `fob_comments` VALUES (1,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',8,'http://localhost','Dr. Dagmar Keebler','tillman44@trantow.org','https://friendsofbotble.com','This is really helpful, thank you!','approved','101.125.61.107','Mozilla/5.0 (compatible; MSIE 9.0; Windows 95; Trident/5.0)','2024-07-31 04:55:11','2024-08-09 11:07:03'),(2,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',4,'http://localhost','Casey Hintz','ihodkiewicz@hotmail.com','https://friendsofbotble.com','I found this article to be quite informative.','approved','32.77.163.110','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_6 rv:2.0) Gecko/20240502 Firefox/37.0','2024-07-25 03:53:49','2024-08-09 11:07:03'),(3,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',10,'http://localhost','Jailyn Haley I','valerie.tillman@vonrueden.net','https://friendsofbotble.com','Wow, I never knew about this before!','approved','28.180.213.175','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_3) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/79.0.4370.96 Safari/532.1 Edg/79.01005.67','2024-08-09 01:48:25','2024-08-09 11:07:03'),(4,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',14,'http://localhost','Mr. Rickie Moore','libbie71@gmail.com','https://friendsofbotble.com','Great job on explaining such a complex topic.','approved','134.79.143.241','Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X; nl-NL) AppleWebKit/532.42.3 (KHTML, like Gecko) Version/3.0.5 Mobile/8B115 Safari/6532.42.3','2024-07-17 18:38:43','2024-08-09 11:07:03'),(5,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',8,'http://localhost','Curt Armstrong MD','qhayes@ortiz.com','https://friendsofbotble.com','I have a question about the third paragraph.','approved','170.180.144.254','Mozilla/5.0 (iPad; CPU OS 8_2_1 like Mac OS X; sl-SI) AppleWebKit/535.23.3 (KHTML, like Gecko) Version/4.0.5 Mobile/8B119 Safari/6535.23.3','2024-08-08 12:49:01','2024-08-09 11:07:03'),(6,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',8,'http://localhost','Madalyn Feest','fmitchell@yahoo.com','https://friendsofbotble.com','This article changed my perspective entirely.','approved','229.230.232.0','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_0) AppleWebKit/5342 (KHTML, like Gecko) Chrome/37.0.873.0 Mobile Safari/5342','2024-07-27 04:00:51','2024-08-09 11:07:03'),(7,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',19,'http://localhost','Zoe Roob','thalia.kozey@leannon.com','https://friendsofbotble.com','I appreciate the effort you put into this.','approved','33.27.183.200','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_2 rv:2.0; nl-NL) AppleWebKit/532.43.4 (KHTML, like Gecko) Version/4.0.1 Safari/532.43.4','2024-07-10 10:11:30','2024-08-09 11:07:03'),(8,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',16,'http://localhost','Tianna Gleason','prudence.wolff@bartoletti.com','https://friendsofbotble.com','This is exactly what I was looking for, thank you!','approved','124.39.178.151','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_3) AppleWebKit/5341 (KHTML, like Gecko) Chrome/36.0.862.0 Mobile Safari/5341','2024-08-02 08:06:30','2024-08-09 11:07:03'),(9,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',5,'http://localhost','Aiyana Barrows','kiel05@gmail.com','https://friendsofbotble.com','I disagree with some points mentioned here, though.','approved','67.124.46.40','Opera/8.99 (X11; Linux i686; nl-NL) Presto/2.12.224 Version/10.00','2024-07-18 17:08:38','2024-08-09 11:07:03'),(10,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',4,'http://localhost','Dr. Juliet Vandervort V','qstracke@yahoo.com','https://friendsofbotble.com','Could you provide more examples to illustrate your point?','approved','251.8.177.32','Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/532.0 (KHTML, like Gecko) Version/15.0 EdgiOS/96.01072.5 Mobile/15E148 Safari/532.0','2024-07-31 15:46:14','2024-08-09 11:07:03'),(11,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',16,'http://localhost','Cara Bayer','bret.mosciski@sawayn.net','https://friendsofbotble.com','I wish there were more articles like this out there.','approved','28.65.86.52','Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/536.2 (KHTML, like Gecko) Version/15.0 EdgiOS/90.01146.16 Mobile/15E148 Safari/536.2','2024-07-19 08:22:49','2024-08-09 11:07:03'),(12,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',10,'http://localhost','Irwin Beatty','tharber@torphy.net','https://friendsofbotble.com','I\'m bookmarking this for future reference.','approved','116.127.36.28','Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 6.0; Trident/5.1)','2024-07-14 15:08:00','2024-08-09 11:07:03'),(13,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',6,'http://localhost','Laura Breitenberg','bmiller@yahoo.com','https://friendsofbotble.com','I\'ve shared this with my friends, they loved it!','approved','27.65.163.216','Mozilla/5.0 (X11; Linux i686) AppleWebKit/5310 (KHTML, like Gecko) Chrome/39.0.853.0 Mobile Safari/5310','2024-07-31 17:05:36','2024-08-09 11:07:03'),(14,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',15,'http://localhost','Ted Reilly','jovan.altenwerth@hotmail.com','https://friendsofbotble.com','This article is a must-read for everyone interested in the topic.','approved','133.217.148.43','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/99.0.4108.31 Safari/534.1 Edg/99.01062.16','2024-07-24 01:26:19','2024-08-09 11:07:03'),(15,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',12,'http://localhost','Mrs. Kenyatta Reilly V','monty.oberbrunner@hotmail.com','https://friendsofbotble.com','Thank you for shedding light on this important issue.','approved','242.45.250.209','Opera/8.27 (X11; Linux i686; en-US) Presto/2.12.171 Version/11.00','2024-08-09 04:46:39','2024-08-09 11:07:03'),(16,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',8,'http://localhost','Jeremy Klein','pemard@hotmail.com','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article.','approved','28.16.1.18','Opera/8.44 (X11; Linux i686; sl-SI) Presto/2.10.312 Version/12.00','2024-07-30 19:30:08','2024-08-09 11:07:03'),(17,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',20,'http://localhost','Therese Kohler DDS','howell.lyla@yahoo.com','https://friendsofbotble.com','I\'m blown away by the insights shared in this article.','approved','210.32.28.3','Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 6.1; Trident/4.1)','2024-07-31 01:11:07','2024-08-09 11:07:03'),(18,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',3,'http://localhost','Michele Romaguera','ikoss@mcdermott.com','https://friendsofbotble.com','This article tackles a complex topic with clarity.','approved','103.233.212.108','Opera/9.22 (X11; Linux i686; nl-NL) Presto/2.11.290 Version/10.00','2024-07-11 00:49:57','2024-08-09 11:07:03'),(19,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',12,'http://localhost','Lauretta Nitzsche','streich.dedrick@klein.org','https://friendsofbotble.com','I\'m going to reflect on the ideas presented in this article.','approved','231.82.239.111','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_4) AppleWebKit/5321 (KHTML, like Gecko) Chrome/36.0.803.0 Mobile Safari/5321','2024-07-13 04:19:48','2024-08-09 11:07:03'),(20,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',4,'http://localhost','Buck Lebsack','friesen.ernie@yahoo.com','https://friendsofbotble.com','The author\'s passion for the subject shines through in this article.','approved','227.201.215.137','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_1 rv:6.0) Gecko/20140827 Firefox/37.0','2024-07-19 21:17:20','2024-08-09 11:07:03'),(21,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',9,'http://localhost','Gisselle Davis','mathew02@yahoo.com','https://friendsofbotble.com','This article challenged my preconceptions in a thought-provoking way.','approved','86.139.154.253','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8 rv:2.0) Gecko/20100104 Firefox/37.0','2024-08-01 22:47:13','2024-08-09 11:07:03'),(22,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',13,'http://localhost','Maeve Gorczany','arianna.considine@hotmail.com','https://friendsofbotble.com','I\'ve added this article to my reading list, it\'s worth revisiting.','approved','206.246.29.40','Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.01; Trident/4.0)','2024-07-29 05:15:21','2024-08-09 11:07:03'),(23,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',18,'http://localhost','Dora Altenwerth','ternser@gmail.com','https://friendsofbotble.com','This article offers practical advice that I can apply in real life.','approved','143.103.191.176','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/5351 (KHTML, like Gecko) Chrome/36.0.820.0 Mobile Safari/5351','2024-07-21 16:53:44','2024-08-09 11:07:03'),(24,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',6,'http://localhost','Mohamed Barton','delphine84@lindgren.com','https://friendsofbotble.com','I\'m going to recommend this article to my study group.','approved','155.160.94.235','Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 5.1; Trident/5.1)','2024-07-24 20:29:42','2024-08-09 11:07:03'),(25,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',5,'http://localhost','Mrs. Rosalinda Rosenbaum','gtowne@waelchi.com','https://friendsofbotble.com','The examples provided really helped me understand the concept better.','approved','234.123.15.71','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_8) AppleWebKit/5310 (KHTML, like Gecko) Chrome/36.0.829.0 Mobile Safari/5310','2024-07-31 12:08:36','2024-08-09 11:07:03'),(26,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',3,'http://localhost','Brenda Prohaska','cfranecki@wilkinson.net','https://friendsofbotble.com','I resonate with the ideas presented here.','approved','121.81.62.185','Opera/8.20 (X11; Linux x86_64; nl-NL) Presto/2.11.227 Version/10.00','2024-07-27 10:12:11','2024-08-09 11:07:03'),(27,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',3,'http://localhost','William Parker','haylie.marquardt@hotmail.com','https://friendsofbotble.com','This article made me think critically about the topic.','approved','170.13.73.228','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/85.0.4435.59 Safari/535.1 EdgA/85.01067.5','2024-08-01 11:36:47','2024-08-09 11:07:03'),(28,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',10,'http://localhost','Lucas Reilly','leannon.brennan@wiegand.com','https://friendsofbotble.com','I\'ll definitely come back to this article for reference.','approved','115.230.23.201','Mozilla/5.0 (compatible; MSIE 6.0; Windows 98; Trident/4.0)','2024-07-29 09:50:20','2024-08-09 11:07:03'),(29,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',1,'http://localhost','Paula Little','nia.zulauf@hamill.com','https://friendsofbotble.com','I\'ve shared this on social media, it\'s too good not to share.','approved','8.204.5.95','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_5) AppleWebKit/5361 (KHTML, like Gecko) Chrome/38.0.866.0 Mobile Safari/5361','2024-07-09 17:55:41','2024-08-09 11:07:03'),(30,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',1,'http://localhost','Wyatt Lubowitz DDS','ischiller@gmail.com','https://friendsofbotble.com','This article presents a balanced view on a controversial topic.','approved','196.166.20.77','Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 6.0; Trident/4.0)','2024-07-20 10:30:53','2024-08-09 11:07:03'),(31,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',9,'http://localhost','Mrs. Dejah McKenzie IV','nella.ortiz@fritsch.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s a gem.','approved','108.221.178.2','Mozilla/5.0 (X11; Linux i686) AppleWebKit/534.2 (KHTML, like Gecko) Chrome/87.0.4439.30 Safari/534.2 EdgA/87.01075.67','2024-07-22 13:07:03','2024-08-09 11:07:03'),(32,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',9,'http://localhost','Candice Murray','narciso.jaskolski@abshire.biz','https://friendsofbotble.com','I\'ve been struggling with this, your article helped a lot.','approved','236.188.66.176','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_1 rv:3.0) Gecko/20231122 Firefox/37.0','2024-08-03 22:07:19','2024-08-09 11:07:03'),(33,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',15,'http://localhost','Ralph Treutel','hayes.violette@ohara.com','https://friendsofbotble.com','I\'ve learned something new today, thanks to this article.','approved','168.207.82.29','Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/531.3.5 (KHTML, like Gecko) Version/4.1 Safari/531.3.5','2024-07-27 01:51:21','2024-08-09 11:07:03'),(34,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',7,'http://localhost','Lorenza Nienow','xschaden@hotmail.com','https://friendsofbotble.com','Kudos to the author for a well-researched piece.','approved','125.86.110.142','Mozilla/5.0 (iPhone; CPU iPhone OS 13_0 like Mac OS X) AppleWebKit/531.1 (KHTML, like Gecko) Version/15.0 EdgiOS/94.01146.72 Mobile/15E148 Safari/531.1','2024-07-18 20:31:53','2024-08-09 11:07:03'),(35,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',18,'http://localhost','Tiana Huel','orpha87@ryan.biz','https://friendsofbotble.com','I\'m impressed by the depth of knowledge demonstrated here.','approved','123.101.162.29','Mozilla/5.0 (Windows NT 5.2) AppleWebKit/5311 (KHTML, like Gecko) Chrome/40.0.881.0 Mobile Safari/5311','2024-07-12 00:50:24','2024-08-09 11:07:03'),(36,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',16,'http://localhost','Liza Gorczany','franecki.amos@larkin.org','https://friendsofbotble.com','This article challenged my assumptions in a good way.','approved','136.59.112.234','Mozilla/5.0 (Windows; U; Windows NT 5.1) AppleWebKit/535.41.2 (KHTML, like Gecko) Version/4.1 Safari/535.41.2','2024-08-03 05:43:40','2024-08-09 11:07:03'),(37,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',4,'http://localhost','Miss Claire Yundt PhD','bell20@trantow.biz','https://friendsofbotble.com','I\'ve shared this with my colleagues, it\'s worth discussing.','approved','126.18.132.169','Opera/9.41 (X11; Linux i686; en-US) Presto/2.11.231 Version/11.00','2024-07-27 09:42:16','2024-08-09 11:07:03'),(38,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',4,'http://localhost','Miss Graciela Kohler III','cconnelly@yahoo.com','https://friendsofbotble.com','The information presented here is very valuable.','approved','107.23.14.42','Mozilla/5.0 (iPhone; CPU iPhone OS 7_2_2 like Mac OS X; en-US) AppleWebKit/531.14.6 (KHTML, like Gecko) Version/3.0.5 Mobile/8B116 Safari/6531.14.6','2024-07-17 00:05:47','2024-08-09 11:07:03'),(39,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',10,'http://localhost','Reece Schulist','ubailey@yahoo.com','https://friendsofbotble.com','You have a talent for explaining complex topics clearly.','approved','104.1.39.154','Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20160114 Firefox/35.0','2024-07-23 12:28:11','2024-08-09 11:07:03'),(40,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',9,'http://localhost','Erna Walsh','maximillian.cruickshank@hotmail.com','https://friendsofbotble.com','I\'m inspired to learn more about this after reading your article.','approved','19.147.156.26','Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/5312 (KHTML, like Gecko) Chrome/39.0.874.0 Mobile Safari/5312','2024-08-06 22:27:52','2024-08-09 11:07:03'),(41,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',12,'http://localhost','Janet Schulist','sienna.king@hotmail.com','https://friendsofbotble.com','This article deserves wider recognition.','approved','129.11.201.112','Mozilla/5.0 (iPhone; CPU iPhone OS 14_1 like Mac OS X) AppleWebKit/531.1 (KHTML, like Gecko) Version/15.0 EdgiOS/91.01117.17 Mobile/15E148 Safari/531.1','2024-07-23 10:07:10','2024-08-09 11:07:03'),(42,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',15,'http://localhost','Titus Haley','amelia.fay@goyette.com','https://friendsofbotble.com','I\'m grateful for the insights shared in this piece.','approved','170.99.1.182','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_4 rv:2.0) Gecko/20150416 Firefox/35.0','2024-07-20 00:11:40','2024-08-09 11:07:03'),(43,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',10,'http://localhost','Dr. Reynold Cummerata','quigley.hunter@gmail.com','https://friendsofbotble.com','The author presents a balanced view on a controversial topic.','approved','32.115.120.121','Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 6.2; Trident/3.0)','2024-07-25 18:27:53','2024-08-09 11:07:03'),(44,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',14,'http://localhost','Mrs. Carli Parker','nlittle@yahoo.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s','approved','83.101.42.220','Mozilla/5.0 (Windows 95) AppleWebKit/5322 (KHTML, like Gecko) Chrome/40.0.854.0 Mobile Safari/5322','2024-08-08 22:17:59','2024-08-09 11:07:03'),(45,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',1,'http://localhost','Prof. Dan Koelpin','qraynor@hotmail.com','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article. It\'s incredibly insightful and provides a comprehensive overview of the subject matter. I appreciate the effort put into researching and writing this piece. It\'s truly eye-opening and has given me a new perspective. Thank you for sharing your knowledge with us!','approved','247.122.155.175','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_9 rv:4.0; nl-NL) AppleWebKit/533.26.5 (KHTML, like Gecko) Version/4.1 Safari/533.26.5','2024-08-08 16:22:57','2024-08-09 11:07:03'),(46,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',6,'http://localhost','Aletha Smith','kenton.friesen@herzog.com','https://friendsofbotble.com','This article is a masterpiece! It dives deep into the topic and offers valuable insights that are both thought-provoking and enlightening. The author\'s expertise is evident throughout, making it a compelling read from start to finish. I\'ll definitely be coming back to this for reference in the future.','approved','132.24.2.101','Opera/9.71 (X11; Linux i686; nl-NL) Presto/2.12.258 Version/11.00','2024-07-12 11:50:56','2024-08-09 11:07:03'),(47,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',1,'http://localhost','Edwina Leuschke','okuneva.madeline@wiegand.com','https://friendsofbotble.com','I\'m amazed by the depth of analysis in this article. It covers a wide range of aspects related to the topic, providing a comprehensive understanding. The clarity of explanation is commendable, making complex concepts easy to grasp. This article has enriched my understanding and sparked further curiosity. Kudos to the author!','approved','92.134.179.133','Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X; nl-NL) AppleWebKit/535.38.4 (KHTML, like Gecko) Version/3.0.5 Mobile/8B112 Safari/6535.38.4','2024-08-02 20:07:11','2024-08-09 11:07:03');
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
INSERT INTO `galleries` VALUES (1,'Perfect','Alias quaerat est voluptate illo fugit quis voluptas minus. Dolor labore accusamus dolor.',0,0,'main/news/1.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(2,'New Day','Ullam eum quia amet nesciunt. Dolorum distinctio eius numquam non dolores vitae. Sequi ipsum quia nemo voluptatibus. Ut ut veniam nihil adipisci est.',0,0,'main/news/2.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(3,'Happy Day','Quia esse similique ad minus ut corrupti. In ut et consectetur. Quis placeat ipsa quis aperiam. Est consectetur soluta ex fugiat.',0,0,'main/news/3.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(4,'Nature','Distinctio quia sit a quo sed sit. Sit animi non consequatur possimus aperiam est similique. Eum beatae excepturi molestias aut.',0,0,'main/news/4.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(5,'Morning','Accusantium rerum ut sed nisi ipsam ad esse. Totam nihil et magni error voluptas. Et id necessitatibus commodi corporis ex expedita.',0,0,'main/news/5.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(6,'Sunset','Dignissimos recusandae unde sequi voluptates. Id sint aut nihil et sed. Fuga voluptates aut ut est fugiat temporibus.',0,0,'main/news/6.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(7,'Ocean Views','Nulla corporis molestiae architecto laudantium enim. Enim id perferendis eligendi quia voluptas illum.',0,0,'main/news/7.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(8,'Adventure Time','Necessitatibus dolorem facilis unde nulla voluptate eum. Labore delectus nesciunt ut minima eius. Tempore illo excepturi earum sint eum aut rerum.',0,0,'main/news/8.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(9,'City Lights','Quo modi omnis ipsam sint. Quod beatae quia culpa nihil culpa consequuntur. Placeat illo non fugiat eos vel eos.',0,0,'main/news/9.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(10,'Dreamscape','Est aut impedit adipisci pariatur dicta beatae quidem. Aut quisquam voluptatem omnis autem. Neque aspernatur aliquid ut iure iure.',0,0,'main/news/10.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(11,'Enchanted Forest','Quia delectus non commodi distinctio qui consequatur. Sequi facere quaerat voluptatem autem. Corporis consequatur atque perferendis et optio.',0,0,'main/news/11.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(12,'Golden Hour','Ullam sed cupiditate esse sed in hic voluptas. Illo autem corrupti eligendi ut porro aut. Officiis quia est eum perspiciatis ipsam nam.',0,0,'main/news/12.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(13,'Serenity','Dolorum modi voluptate exercitationem et nemo rerum. Provident voluptas id aut in eos. Modi accusamus maxime ut in repellendus aut.',0,0,'main/news/13.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(14,'Eternal Beauty','Nam voluptatibus odio cumque sint est. Qui odio quas doloribus amet et nisi. Commodi quos iusto nesciunt vero minus rem.',0,0,'main/news/14.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(15,'Moonlight Magic','Autem cum ut est explicabo vero ea saepe. Ut qui voluptas autem harum. Ut eaque sunt enim minima eaque.',0,0,'main/news/15.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(16,'Starry Night','Molestias quo soluta ratione omnis ut doloribus earum. Numquam perferendis ut tempora minus.',0,0,'main/news/16.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(17,'Hidden Gems','Qui dolorum non aliquid recusandae labore quaerat. Soluta aspernatur occaecati repellendus laborum recusandae ipsa. Qui quos iste sint.',0,0,'main/news/17.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(18,'Tranquil Waters','Et vel fugit recusandae neque neque expedita qui. Qui soluta molestias reprehenderit. Fugit assumenda quia est deserunt.',0,0,'main/news/18.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(19,'Urban Escape','Ut sequi et ex. Esse amet dignissimos fugit dolores voluptates amet omnis cumque.',0,0,'main/news/19.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58'),(20,'Twilight Zone','Autem dolor sunt et qui id qui fugiat quia. Rerum molestias nobis error. Voluptate et dolor nihil consequatur maxime quidem.',0,0,'main/news/20.jpg',1,'published','2024-08-09 11:06:58','2024-08-09 11:06:58');
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
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(2,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(3,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(4,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(5,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(6,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(7,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',7,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(8,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',8,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(9,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',9,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(10,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',10,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(11,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',11,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(12,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',12,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(13,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',13,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(14,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',14,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(15,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',15,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(16,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',16,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(17,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',17,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(18,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',18,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(19,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',19,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58'),(20,'[{\"img\":\"main\\/news\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/8.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/9.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/10.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/11.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/12.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/13.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/14.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/15.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/16.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/17.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/18.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/19.jpg\",\"description\":\"\"},{\"img\":\"main\\/news\\/20.jpg\",\"description\":\"\"}]',20,'Botble\\Gallery\\Models\\Gallery','2024-08-09 11:06:58','2024-08-09 11:06:58');
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
INSERT INTO `language_meta` VALUES (1,'en_US','89d0f93c325a3bfb06bfd10051efab88',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','a2f7d24a8fbb7475a60666dd5fa3141b',1,'Botble\\Menu\\Models\\Menu');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'about-1','about-1',2,'image/png',8467,'main/general/about-1.png','[]','2024-08-09 11:06:35','2024-08-09 11:06:35',NULL,'public'),(2,0,'about-2','about-2',2,'image/png',8467,'main/general/about-2.png','[]','2024-08-09 11:06:36','2024-08-09 11:06:36',NULL,'public'),(3,0,'about-video-1','about-video-1',2,'image/png',20777,'main/general/about-video-1.png','[]','2024-08-09 11:06:36','2024-08-09 11:06:36',NULL,'public'),(4,0,'ads-banner','ads-banner',2,'image/png',75705,'main/general/ads-banner.png','[]','2024-08-09 11:06:36','2024-08-09 11:06:36',NULL,'public'),(5,0,'app-downloads','app-downloads',2,'image/png',7092,'main/general/app-downloads.png','[]','2024-08-09 11:06:36','2024-08-09 11:06:36',NULL,'public'),(6,0,'blog-3','blog-3',2,'image/png',5919,'main/general/blog-3.png','[]','2024-08-09 11:06:36','2024-08-09 11:06:36',NULL,'public'),(7,0,'blog-4','blog-4',2,'image/png',5919,'main/general/blog-4.png','[]','2024-08-09 11:06:37','2024-08-09 11:06:37',NULL,'public'),(8,0,'blog-5','blog-5',2,'image/png',8614,'main/general/blog-5.png','[]','2024-08-09 11:06:37','2024-08-09 11:06:37',NULL,'public'),(9,0,'blog-shape-image','blog-shape-image',2,'image/png',1182,'main/general/blog-shape-image.png','[]','2024-08-09 11:06:37','2024-08-09 11:06:37',NULL,'public'),(10,0,'favicon','favicon',2,'image/png',693,'main/general/favicon.png','[]','2024-08-09 11:06:37','2024-08-09 11:06:37',NULL,'public'),(11,0,'logo-dark','logo-dark',2,'image/png',2098,'main/general/logo-dark.png','[]','2024-08-09 11:06:37','2024-08-09 11:06:37',NULL,'public'),(12,0,'logo','logo',2,'image/png',2593,'main/general/logo.png','[]','2024-08-09 11:06:37','2024-08-09 11:06:37',NULL,'public'),(13,0,'newsletter-image','newsletter-image',2,'image/png',22929,'main/general/newsletter-image.png','[]','2024-08-09 11:06:37','2024-08-09 11:06:37',NULL,'public'),(14,0,'newsletter-popup','newsletter-popup',2,'image/png',24175,'main/general/newsletter-popup.png','[]','2024-08-09 11:06:37','2024-08-09 11:06:37',NULL,'public'),(15,0,'signature','signature',2,'image/png',2197,'main/general/signature.png','[]','2024-08-09 11:06:38','2024-08-09 11:06:38',NULL,'public'),(16,0,'1','1',3,'image/png',9803,'main/members/1.png','[]','2024-08-09 11:06:38','2024-08-09 11:06:38',NULL,'public'),(17,0,'2','2',3,'image/png',9803,'main/members/2.png','[]','2024-08-09 11:06:38','2024-08-09 11:06:38',NULL,'public'),(18,0,'3','3',3,'image/png',9803,'main/members/3.png','[]','2024-08-09 11:06:38','2024-08-09 11:06:38',NULL,'public'),(19,0,'4','4',3,'image/png',9803,'main/members/4.png','[]','2024-08-09 11:06:39','2024-08-09 11:06:39',NULL,'public'),(20,0,'5','5',3,'image/png',9803,'main/members/5.png','[]','2024-08-09 11:06:39','2024-08-09 11:06:39',NULL,'public'),(21,0,'6','6',3,'image/png',9803,'main/members/6.png','[]','2024-08-09 11:06:39','2024-08-09 11:06:39',NULL,'public'),(22,0,'7','7',3,'image/png',9803,'main/members/7.png','[]','2024-08-09 11:06:39','2024-08-09 11:06:39',NULL,'public'),(23,0,'8','8',3,'image/png',9803,'main/members/8.png','[]','2024-08-09 11:06:39','2024-08-09 11:06:39',NULL,'public'),(24,0,'1','1',4,'image/jpeg',33268,'main/news/1.jpg','[]','2024-08-09 11:06:42','2024-08-09 11:06:42',NULL,'public'),(25,0,'10','10',4,'image/jpeg',33268,'main/news/10.jpg','[]','2024-08-09 11:06:42','2024-08-09 11:06:42',NULL,'public'),(26,0,'11','11',4,'image/jpeg',33268,'main/news/11.jpg','[]','2024-08-09 11:06:42','2024-08-09 11:06:42',NULL,'public'),(27,0,'12','12',4,'image/jpeg',33268,'main/news/12.jpg','[]','2024-08-09 11:06:43','2024-08-09 11:06:43',NULL,'public'),(28,0,'13','13',4,'image/jpeg',33268,'main/news/13.jpg','[]','2024-08-09 11:06:43','2024-08-09 11:06:43',NULL,'public'),(29,0,'14','14',4,'image/jpeg',33268,'main/news/14.jpg','[]','2024-08-09 11:06:44','2024-08-09 11:06:44',NULL,'public'),(30,0,'15','15',4,'image/jpeg',33268,'main/news/15.jpg','[]','2024-08-09 11:06:44','2024-08-09 11:06:44',NULL,'public'),(31,0,'16','16',4,'image/jpeg',33268,'main/news/16.jpg','[]','2024-08-09 11:06:44','2024-08-09 11:06:44',NULL,'public'),(32,0,'17','17',4,'image/jpeg',33268,'main/news/17.jpg','[]','2024-08-09 11:06:45','2024-08-09 11:06:45',NULL,'public'),(33,0,'18','18',4,'image/jpeg',33268,'main/news/18.jpg','[]','2024-08-09 11:06:45','2024-08-09 11:06:45',NULL,'public'),(34,0,'19','19',4,'image/jpeg',33268,'main/news/19.jpg','[]','2024-08-09 11:06:46','2024-08-09 11:06:46',NULL,'public'),(35,0,'2','2',4,'image/jpeg',33268,'main/news/2.jpg','[]','2024-08-09 11:06:46','2024-08-09 11:06:46',NULL,'public'),(36,0,'20','20',4,'image/jpeg',33268,'main/news/20.jpg','[]','2024-08-09 11:06:47','2024-08-09 11:06:47',NULL,'public'),(37,0,'3','3',4,'image/jpeg',33268,'main/news/3.jpg','[]','2024-08-09 11:06:47','2024-08-09 11:06:47',NULL,'public'),(38,0,'4','4',4,'image/jpeg',33268,'main/news/4.jpg','[]','2024-08-09 11:06:47','2024-08-09 11:06:47',NULL,'public'),(39,0,'5','5',4,'image/jpeg',33268,'main/news/5.jpg','[]','2024-08-09 11:06:48','2024-08-09 11:06:48',NULL,'public'),(40,0,'6','6',4,'image/jpeg',33268,'main/news/6.jpg','[]','2024-08-09 11:06:48','2024-08-09 11:06:48',NULL,'public'),(41,0,'7','7',4,'image/jpeg',33268,'main/news/7.jpg','[]','2024-08-09 11:06:49','2024-08-09 11:06:49',NULL,'public'),(42,0,'8','8',4,'image/jpeg',33268,'main/news/8.jpg','[]','2024-08-09 11:06:49','2024-08-09 11:06:49',NULL,'public'),(43,0,'9','9',4,'image/jpeg',33268,'main/news/9.jpg','[]','2024-08-09 11:06:49','2024-08-09 11:06:49',NULL,'public'),(44,0,'audio','audio',5,'audio/mpeg',239584,'main/audio/audio.mp3','[]','2024-08-09 11:06:50','2024-08-09 11:06:50',NULL,'public'),(45,0,'1','1',7,'image/jpeg',33268,'sports/news/1.jpg','[]','2024-08-09 11:06:50','2024-08-09 11:06:50',NULL,'public'),(46,0,'10','10',7,'image/jpeg',33268,'sports/news/10.jpg','[]','2024-08-09 11:06:50','2024-08-09 11:06:50',NULL,'public'),(47,0,'11','11',7,'image/jpeg',33268,'sports/news/11.jpg','[]','2024-08-09 11:06:51','2024-08-09 11:06:51',NULL,'public'),(48,0,'12','12',7,'image/jpeg',33268,'sports/news/12.jpg','[]','2024-08-09 11:06:51','2024-08-09 11:06:51',NULL,'public'),(49,0,'13','13',7,'image/jpeg',33268,'sports/news/13.jpg','[]','2024-08-09 11:06:52','2024-08-09 11:06:52',NULL,'public'),(50,0,'14','14',7,'image/jpeg',33268,'sports/news/14.jpg','[]','2024-08-09 11:06:52','2024-08-09 11:06:52',NULL,'public'),(51,0,'15','15',7,'image/jpeg',33268,'sports/news/15.jpg','[]','2024-08-09 11:06:52','2024-08-09 11:06:52',NULL,'public'),(52,0,'16','16',7,'image/jpeg',33268,'sports/news/16.jpg','[]','2024-08-09 11:06:53','2024-08-09 11:06:53',NULL,'public'),(53,0,'17','17',7,'image/jpeg',33268,'sports/news/17.jpg','[]','2024-08-09 11:06:53','2024-08-09 11:06:53',NULL,'public'),(54,0,'18','18',7,'image/jpeg',33268,'sports/news/18.jpg','[]','2024-08-09 11:06:54','2024-08-09 11:06:54',NULL,'public'),(55,0,'19','19',7,'image/jpeg',33268,'sports/news/19.jpg','[]','2024-08-09 11:06:54','2024-08-09 11:06:54',NULL,'public'),(56,0,'2','2',7,'image/jpeg',33268,'sports/news/2.jpg','[]','2024-08-09 11:06:55','2024-08-09 11:06:55',NULL,'public'),(57,0,'20','20',7,'image/jpeg',33268,'sports/news/20.jpg','[]','2024-08-09 11:06:55','2024-08-09 11:06:55',NULL,'public'),(58,0,'3','3',7,'image/jpeg',33268,'sports/news/3.jpg','[]','2024-08-09 11:06:55','2024-08-09 11:06:55',NULL,'public'),(59,0,'4','4',7,'image/jpeg',33268,'sports/news/4.jpg','[]','2024-08-09 11:06:56','2024-08-09 11:06:56',NULL,'public'),(60,0,'5','5',7,'image/jpeg',33268,'sports/news/5.jpg','[]','2024-08-09 11:06:56','2024-08-09 11:06:56',NULL,'public'),(61,0,'6','6',7,'image/jpeg',33268,'sports/news/6.jpg','[]','2024-08-09 11:06:57','2024-08-09 11:06:57',NULL,'public'),(62,0,'7','7',7,'image/jpeg',33268,'sports/news/7.jpg','[]','2024-08-09 11:06:57','2024-08-09 11:06:57',NULL,'public'),(63,0,'8','8',7,'image/jpeg',33268,'sports/news/8.jpg','[]','2024-08-09 11:06:58','2024-08-09 11:06:58',NULL,'public'),(64,0,'9','9',7,'image/jpeg',33268,'sports/news/9.jpg','[]','2024-08-09 11:06:58','2024-08-09 11:06:58',NULL,'public'),(65,0,'favicon','favicon',8,'image/png',1949,'sports/general/favicon.png','[]','2024-08-09 11:06:59','2024-08-09 11:06:59',NULL,'public'),(66,0,'logo-dark','logo-dark',8,'image/png',2579,'sports/general/logo-dark.png','[]','2024-08-09 11:06:59','2024-08-09 11:06:59',NULL,'public'),(67,0,'logo','logo',8,'image/png',1671,'sports/general/logo.png','[]','2024-08-09 11:06:59','2024-08-09 11:06:59',NULL,'public'),(68,0,'app-downloads-bg','app-downloads-bg',9,'image/png',84306,'sports/backgrounds/app-downloads-bg.png','[]','2024-08-09 11:06:59','2024-08-09 11:06:59',NULL,'public'),(69,0,'background-hero-banner','background-hero-banner',9,'image/png',73122,'sports/backgrounds/background-hero-banner.png','[]','2024-08-09 11:06:59','2024-08-09 11:06:59',NULL,'public'),(70,0,'footer-bg','footer-bg',9,'image/png',190064,'sports/backgrounds/footer-bg.png','[]','2024-08-09 11:07:00','2024-08-09 11:07:00',NULL,'public'),(71,0,'shape-top-news','shape-top-news',9,'image/png',11045,'sports/backgrounds/shape-top-news.png','[]','2024-08-09 11:07:00','2024-08-09 11:07:00',NULL,'public'),(72,0,'shape','shape',9,'image/png',1188,'sports/backgrounds/shape.png','[]','2024-08-09 11:07:01','2024-08-09 11:07:01',NULL,'public'),(73,0,'banner-image','banner-image',10,'image/png',22937,'sports/banner/banner-image.png','[]','2024-08-09 11:07:01','2024-08-09 11:07:01',NULL,'public'),(74,0,'breadcrumb','breadcrumb',11,'image/png',109184,'main/backgrounds/breadcrumb.png','[]','2024-08-09 11:07:01','2024-08-09 11:07:01',NULL,'public'),(75,0,'newsletter-bg','newsletter-bg',11,'image/png',15427,'main/backgrounds/newsletter-bg.png','[]','2024-08-09 11:07:01','2024-08-09 11:07:01',NULL,'public'),(76,0,'1','1',12,'image/png',1455,'main/blog-categories/1.png','[]','2024-08-09 11:07:02','2024-08-09 11:07:02',NULL,'public'),(77,0,'2','2',12,'image/png',1455,'main/blog-categories/2.png','[]','2024-08-09 11:07:02','2024-08-09 11:07:02',NULL,'public'),(78,0,'3','3',12,'image/png',1455,'main/blog-categories/3.png','[]','2024-08-09 11:07:02','2024-08-09 11:07:02',NULL,'public'),(79,0,'4','4',12,'image/png',1455,'main/blog-categories/4.png','[]','2024-08-09 11:07:02','2024-08-09 11:07:02',NULL,'public'),(80,0,'5','5',12,'image/png',1455,'main/blog-categories/5.png','[]','2024-08-09 11:07:02','2024-08-09 11:07:02',NULL,'public'),(81,0,'breaking-news-icon','breaking-news-icon',13,'image/png',1133,'main/icons/breaking-news-icon.png','[]','2024-08-09 11:07:03','2024-08-09 11:07:03',NULL,'public');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-08-09 11:06:35','2024-08-09 11:06:35',NULL),(2,0,'general',NULL,'general',1,'2024-08-09 11:06:35','2024-08-09 11:06:35',NULL),(3,0,'members',NULL,'members',1,'2024-08-09 11:06:38','2024-08-09 11:06:38',NULL),(4,0,'news',NULL,'news',1,'2024-08-09 11:06:41','2024-08-09 11:06:41',NULL),(5,0,'audio',NULL,'audio',1,'2024-08-09 11:06:50','2024-08-09 11:06:50',NULL),(6,0,'sports',NULL,'sports',0,'2024-08-09 11:06:50','2024-08-09 11:06:50',NULL),(7,0,'news',NULL,'news',6,'2024-08-09 11:06:50','2024-08-09 11:06:50',NULL),(8,0,'general',NULL,'general',6,'2024-08-09 11:06:59','2024-08-09 11:06:59',NULL),(9,0,'backgrounds',NULL,'backgrounds',6,'2024-08-09 11:06:59','2024-08-09 11:06:59',NULL),(10,0,'banner',NULL,'banner',6,'2024-08-09 11:07:01','2024-08-09 11:07:01',NULL),(11,0,'backgrounds',NULL,'backgrounds',1,'2024-08-09 11:07:01','2024-08-09 11:07:01',NULL),(12,0,'blog-categories',NULL,'blog-categories',1,'2024-08-09 11:07:02','2024-08-09 11:07:02',NULL),(13,0,'icons',NULL,'icons',1,'2024-08-09 11:07:03','2024-08-09 11:07:03',NULL);
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
INSERT INTO `members` VALUES (1,'John','Smith','White Rabbit: it was too.',NULL,'member@archielite.com','$2y$12$.5fHaQiNVrPrI9UJljvqPeiljBbxT9QVd3UFPBci/bHkD2hegVLg2',16,'1982-05-29','+1 (947) 684-6367','2024-08-09 18:06:39',NULL,NULL,'2024-08-09 11:06:40','2024-08-09 11:06:40','published'),(2,'Ephraim','Renner','Hi, I’m Ephraim Renner, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'keebler.mertie@runte.com','$2y$12$nTwKJWsfhqaMxivjRrW5CuTXijR5uKfRjEO0zn0AWpe5AQy0d7Qx.',17,'2003-12-24','(361) 996-7583','2024-08-09 18:06:39',NULL,NULL,'2024-08-09 11:06:40','2024-08-09 11:06:40','published'),(3,'Chasity','Von','Hi, I’m Chasity Von, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'hills.houston@pfannerstill.com','$2y$12$jy8Fi3V8NV58UtlOF8ru9O.iG4vx0r.4JO8N6aSW2Y5ZK4J8uSC3y',18,'2015-08-21','(925) 979-3365','2024-08-09 18:06:39',NULL,NULL,'2024-08-09 11:06:40','2024-08-09 11:06:40','published'),(4,'Gail','Maggio','Hi, I’m Gail Maggio, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'sawayn.ibrahim@glover.org','$2y$12$1IbNBGE/ChVnlUpNckzgfOEHkWUCoPWP7ORuapSJdzbvGIRBePrW2',19,'1970-10-05','469.660.5556','2024-08-09 18:06:39',NULL,NULL,'2024-08-09 11:06:40','2024-08-09 11:06:40','published'),(5,'Romaine','Nader','Hi, I’m Romaine Nader, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'ndibbert@yahoo.com','$2y$12$pGIIqnszT6EPDeTG3aT.PuUyusxCeUJui6rCdSxqD3Xtt2DXTEEPK',20,'2019-06-16','1-707-902-2803','2024-08-09 18:06:39',NULL,NULL,'2024-08-09 11:06:41','2024-08-09 11:06:41','published'),(6,'Madison','Eichmann','Hi, I’m Madison Eichmann, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'nelda51@anderson.org','$2y$12$/0htMEYljYlKDf/1BVTfpuxrwcpCVMZhGs3DcgjEjoWeqXgENV47y',21,'2007-01-02','+1.845.839.3406','2024-08-09 18:06:39',NULL,NULL,'2024-08-09 11:06:41','2024-08-09 11:06:41','published'),(7,'Lowell','Morar','Hi, I’m Lowell Morar, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'alvena47@bogan.com','$2y$12$OhmEZMjboH3HwQ7N9XYma.XprRHlg6c9xYiffpuS9lULmpU6iWB5q',22,'1977-09-02','+1.970.259.8343','2024-08-09 18:06:39',NULL,NULL,'2024-08-09 11:06:41','2024-08-09 11:06:41','published'),(8,'Rebeka','Hand','Hi, I’m Rebeka Hand, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'telly.klocko@bashirian.biz','$2y$12$6L3/j/Qb1r23IwB2Y0UZc.d2xaNgZ0ASoHoLOT7RqJwZZ16PK9Cdm',23,'1970-03-27','+1.562.379.4349','2024-08-09 18:06:39',NULL,NULL,'2024-08-09 11:06:41','2024-08-09 11:06:41','published');
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-08-09 11:07:03','2024-08-09 11:07:03');
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
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(2,1,1,NULL,NULL,'https://echo-sports.archielite.com',NULL,0,'Home Sports',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(3,1,1,NULL,NULL,'https://echo-travel.archielite.com',NULL,0,'Home Travel',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(4,1,1,NULL,NULL,'https://echo-ai.archielite.com',NULL,0,'Home AI',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(5,1,1,NULL,NULL,'https://echo-politics.archielite.com',NULL,0,'Home Politics',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(6,1,1,NULL,NULL,'https://echo-food.archielite.com',NULL,0,'Home Food',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(7,1,1,NULL,NULL,'https://echo-photography.archielite.com',NULL,0,'Home Photography',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(8,1,1,NULL,NULL,'https://echo.archielite.com',NULL,0,'Home News',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(9,1,1,NULL,NULL,'https://echo-fashion.archielite.com',NULL,0,'Home Fashion',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(10,1,1,NULL,NULL,'https://echo-technology.archielite.com',NULL,0,'Home Technology',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(11,1,1,NULL,NULL,'https://echo-gaming.archielite.com',NULL,0,'Home Gaming',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(12,1,0,NULL,NULL,'/',NULL,0,'Pages',NULL,'_self',1,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(13,1,12,NULL,NULL,'/about-us',NULL,0,'About',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(14,1,12,NULL,NULL,'/author/smith',NULL,0,'Author',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(15,1,12,NULL,NULL,'/team',NULL,0,'Team',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(16,1,12,NULL,NULL,'/error-page',NULL,0,'Error Page',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(17,1,0,NULL,NULL,'/blog',NULL,0,'Blog',NULL,'_self',1,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(18,1,17,NULL,NULL,'/blog?style=card',NULL,0,'Blog Card',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(19,1,17,NULL,NULL,'/blog?style=list',NULL,0,'Blog List',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(20,1,17,NULL,NULL,'/blog?style=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(21,1,17,NULL,NULL,'/blog?style=mixed',NULL,0,'Blog Mixed',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(22,1,0,1,'Botble\\Blog\\Models\\Post','/blog/the-thrilling-world-of-mountain-biking',NULL,0,'Post',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03'),(23,1,0,NULL,NULL,'contact',NULL,0,'Contact',NULL,'_self',0,'2024-08-09 11:07:03','2024-08-09 11:07:03');
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
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-08-09 11:07:03','2024-08-09 11:07:03');
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
INSERT INTO `meta_boxes` VALUES (1,'title','[\"Creative Director\"]',1,'Botble\\Member\\Models\\Member','2024-08-09 11:06:40','2024-08-09 11:06:40'),(2,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',1,'Botble\\Member\\Models\\Member','2024-08-09 11:06:40','2024-08-09 11:06:40'),(3,'title','[\"Marketing Director\"]',2,'Botble\\Member\\Models\\Member','2024-08-09 11:06:40','2024-08-09 11:06:40'),(4,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',2,'Botble\\Member\\Models\\Member','2024-08-09 11:06:40','2024-08-09 11:06:40'),(5,'title','[\"Marketing Director\"]',3,'Botble\\Member\\Models\\Member','2024-08-09 11:06:40','2024-08-09 11:06:40'),(6,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',3,'Botble\\Member\\Models\\Member','2024-08-09 11:06:40','2024-08-09 11:06:40'),(7,'title','[\"Creative Director\"]',4,'Botble\\Member\\Models\\Member','2024-08-09 11:06:40','2024-08-09 11:06:40'),(8,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',4,'Botble\\Member\\Models\\Member','2024-08-09 11:06:40','2024-08-09 11:06:40'),(9,'title','[\"Chef Marketing Officer\"]',5,'Botble\\Member\\Models\\Member','2024-08-09 11:06:41','2024-08-09 11:06:41'),(10,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',5,'Botble\\Member\\Models\\Member','2024-08-09 11:06:41','2024-08-09 11:06:41'),(11,'title','[\"Chef Editor\"]',6,'Botble\\Member\\Models\\Member','2024-08-09 11:06:41','2024-08-09 11:06:41'),(12,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',6,'Botble\\Member\\Models\\Member','2024-08-09 11:06:41','2024-08-09 11:06:41'),(13,'title','[\"Marketing Director\"]',7,'Botble\\Member\\Models\\Member','2024-08-09 11:06:41','2024-08-09 11:06:41'),(14,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',7,'Botble\\Member\\Models\\Member','2024-08-09 11:06:41','2024-08-09 11:06:41'),(15,'title','[\"Chef Editor\"]',8,'Botble\\Member\\Models\\Member','2024-08-09 11:06:41','2024-08-09 11:06:41'),(16,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',8,'Botble\\Member\\Models\\Member','2024-08-09 11:06:41','2024-08-09 11:06:41'),(17,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',2,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(18,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',3,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(19,'audio','[\"main\\/audio\\/audio.mp3\"]',4,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(20,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',5,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(21,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',6,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(22,'audio','[\"main\\/audio\\/audio.mp3\"]',7,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(23,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',8,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(24,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',9,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(25,'audio','[\"main\\/audio\\/audio.mp3\"]',10,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(26,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',11,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(27,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',12,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(28,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',14,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(29,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',15,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(30,'audio','[\"main\\/audio\\/audio.mp3\"]',16,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(31,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',17,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(32,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',18,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(33,'audio','[\"main\\/audio\\/audio.mp3\"]',19,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58'),(34,'video_url','[\"https:\\/\\/www.youtube.com\\/watch?v=yCh9OVLI0SU\"]',20,'Botble\\Blog\\Models\\Post','2024-08-09 11:06:58','2024-08-09 11:06:58');
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
INSERT INTO `pages` VALUES (1,'Homepage','<div>[hero-banner title=\"Sadio Mané moves from Bayern to Al Nassr\" subtitle=\"TOP STORES\" banner_image=\"sports/banner/banner-image.png\" url=\"/blog\" button_label=\"Read more\" shape_image_1=\"sports/backgrounds/shape.png\" shape_image_2=\"sports/backgrounds/shape-top-news.png\" background_image=\"sports/backgrounds/background-hero-banner.png\" background_color=\"transparent\" text_color=\"#ffffff\"][/hero-banner]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-2\" category_ids=\"1,3,4,6\" title=\"FEATURED STORIES\" limit=\"4\" title_align=\"start\" text_color=\"rgb(255, 255, 255)\" background_color=\"rgb(25, 1, 8)\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-6\" category_ids=\"3,5,7\" title=\"WEEKLY TRAINING\" limit=\"6\" title_align=\"center\" text_color=\"transparent\" background_color=\"transparent\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-4\" category_ids=\"3,6\" title=\"WATCH SHOWS\" limit=\"3\" title_align=\"start\" text_color=\"rgb(255, 255, 255)\" background_color=\"rgb(76, 9, 30)\"][/blog-posts]</div><div>[blog-posts enable_lazy_loading=\"yes\" style=\"style-5\" category_ids=\"2,5,7\" title=\"WEEKLY TRAINING\" limit=\"8\" title_align=\"center\" text_color=\"transparent\" background_color=\"transparent\"][/blog-posts]</div><div>[app-downloads title=\"Download Our Apps For Stay Update\" subtitle=\"Easy to update latest news, aily podcast and everything in your hand\" platform_google_label=\"Play Store\" platform_google_icon=\"ti ti-brand-google-play\" platform_google_url=\"https://play.google.com/\" platform_apple_label=\"Apple Store\" platform_apple_icon=\"ti ti-brand-apple\" platform_apple_url=\"https://www.apple.com/app-store/\" image=\"main/general/app-downloads.png\" background_image=\"sports/backgrounds/app-downloads-bg.png\"][/app-downloads]</div><div>[gallery limit=\"5\" text_color=\"#fff\" background_color=\"#181823\"][/gallery]</div>',1,NULL,'homepage',NULL,'published','2024-08-09 11:06:59','2024-08-09 11:07:01'),(2,'About us','<div>[about-us title=\"Know our Publication Media & Vision.\" subtitle=\"Bring To The Table Win-Win Survival Strategies To Ensure Proactive Domination. At The End Of The Day Going.\" description=\"Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the over holistic world view of disruptive innovation via workplace diversity and Bring to the table win-win survival strategies to ensure proactive fin domination. At the end of the day, going forward, a new normal.\" staff_name=\"Raihawly Williamson\" staff_description=\"CEO, Echo Publishing Inc.\" staff_signature=\"main/general/signature.png\" first_image=\"main/general/about-1.png\" second_image=\"main/general/about-2.png\"][/about-us]</div><div>[intro-video image=\"main/general/about-video-1.png\" video_url=\"https://www.youtube.com/watch?v=Y1t6rjWYNro\" play_icon=\"ti ti-player-play-filled\"][/intro-video]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:06:59','2024-08-09 11:06:59'),(3,'Contact','<div>[contact-form title=\"General Customer Care & Technical Support\" description=\"We’re here to assist you with any questions or technical issues you may have. Please fill out the form below, and our dedicated team will respond promptly to ensure you have a seamless experience with us.\" button_label=\"Send Message\" button_icon=\"ti ti-arrow-right\" quantity=\"3\" title_1=\"Location\" description_1=\"The Business Centre132, New York 12401. United States\" icon_1=\"ti ti-map-pin\" url_1=\"\" open_in_new_tab_1=\"yes\" title_2=\"Email Address\" description_2=\"info@yourmail.com\" icon_2=\"ti ti-mail\" url_2=\"mailto:info@yourmail.com\" open_in_new_tab_2=\"yes\" title_3=\"Phone\" description_3=\"(00) 123 456 789 99\" icon_3=\"ti ti-phone\" url_3=\"tel:(00) 123 456 789 99\" open_in_new_tab_3=\"yes\"  address=\"Fortis Downtown Resort\"][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:06:59','2024-08-09 11:06:59'),(4,'Blog','---',1,NULL,'full-width',NULL,'published','2024-08-09 11:06:59','2024-08-09 11:06:59'),(5,'Team','<div>[members title=\"Meet Our Professional Team\" member_ids=\"1,2,3,4,5,6,7,8\"][/members]</div>',1,NULL,'full-width',NULL,'published','2024-08-09 11:06:59','2024-08-09 11:06:59'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:06:59','2024-08-09 11:06:59'),(7,'Terms Of Use','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:06:59','2024-08-09 11:06:59'),(8,'Privacy Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:06:59','2024-08-09 11:06:59'),(9,'Advertise','<h3>Random Content</h3><p>This is a random content that will be displayed on the page.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:06:59','2024-08-09 11:06:59'),(10,'FAQ','<h3>Random Content</h3><p>This is a random content that will be displayed on the page.</p>',1,NULL,'default',NULL,'published','2024-08-09 11:06:59','2024-08-09 11:06:59');
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
INSERT INTO `post_categories` VALUES (3,1),(9,2),(8,2),(4,3),(3,3),(2,4),(6,5),(9,5),(4,6),(9,6),(5,7),(6,7),(9,8),(5,8),(2,9),(4,9),(2,10),(10,10),(1,11),(8,11),(7,12),(4,12),(4,13),(2,13),(2,14),(5,14),(2,15),(7,15),(10,16),(7,16),(1,17),(8,17),(1,18),(2,18),(5,19),(6,19),(5,20);
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
INSERT INTO `post_tags` VALUES (4,1),(3,1),(8,2),(3,2),(1,2),(3,3),(2,3),(5,3),(6,4),(1,4),(9,5),(8,5),(5,5),(9,6),(5,6),(2,6),(9,7),(3,7),(4,7),(9,8),(4,8),(2,8),(3,9),(9,9),(4,9),(1,10),(9,10),(2,10),(1,11),(5,11),(4,11),(5,12),(2,12),(1,12),(8,13),(9,13),(5,14),(2,14),(2,15),(4,15),(7,15),(4,16),(1,16),(3,17),(2,17),(8,17),(6,18),(1,18),(7,18),(9,19),(2,19),(2,20),(6,20);
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
INSERT INTO `posts` VALUES (1,'The Thrilling World of Mountain Biking','Dive into the adrenaline-fueled realm of mountain biking where riders conquer rugged terrains, challenging trails, and breathtaking landscapes. From downhill descents to technical climbs, every twist and turn promises an exhilarating adventure.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',5,'Botble\\Member\\Models\\Member',1,'sports/news/1.jpg',874,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(2,'Mastering the Art of Archery: Precision and Focus','Explore the ancient sport of archery, where skill, precision, and focus converge to hit the bullseye. From traditional bows to modern recurves, witness the mastery of archers as they draw, aim, and release with unparalleled accuracy.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',7,'Botble\\Member\\Models\\Member',1,'sports/news/2.jpg',1519,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(3,'The Graceful Dance of Figure Skating','Step onto the glistening ice and witness the elegance of figure skating. With every glide, jump, and spin, skaters mesmerize audiences with their artistry and athleticism, creating a symphony of movement on the frozen stage.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',5,'Botble\\Member\\Models\\Member',1,'sports/news/3.jpg',1889,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(4,'Sailing: Harnessing the Power of Wind and Water','Set sail on a journey across vast oceans and serene lakes, where sailors harness the power of wind and water. From navigating treacherous currents to riding the waves, each voyage offers a thrilling blend of challenge and tranquility.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',2,'Botble\\Member\\Models\\Member',1,'sports/news/4.jpg',1640,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(5,'The Intensity of Rugby: A Collision of Strength and Strategy','Experience the raw intensity of rugby, where players collide in a test of strength, speed, and strategy. From bone-crunching tackles to strategic plays, every moment on the field is a battle for dominance and victory.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',5,'Botble\\Member\\Models\\Member',1,'sports/news/5.jpg',400,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(6,'Unleashing the Fury: Inside the World of Mixed Martial Arts','Step into the octagon and witness the raw intensity of mixed martial arts. With disciplines ranging from Brazilian Jiu-Jitsu to Muay Thai, fighters showcase their skill and courage in a relentless pursuit of victory.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',2,'Botble\\Member\\Models\\Member',1,'sports/news/6.jpg',524,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(7,'Climbing to New Heights: The Sport of Rock Climbing','Ascend to breathtaking heights and conquer towering cliffs in the exhilarating sport of rock climbing. With each handhold and foothold, climbers push their limits, defying gravity and embracing the thrill of the climb.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',8,'Botble\\Member\\Models\\Member',1,'sports/news/7.jpg',715,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(8,'The Artistry of Gymnastics: Grace, Strength, and Precision','Marvel at the awe-inspiring athleticism of gymnastics, where grace, strength, and precision unite in a dazzling display of acrobatics. From gravity-defying flips to','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',7,'Botble\\Member\\Models\\Member',1,'sports/news/8.jpg',1366,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(9,'The Beauty of Tennis: A Game of Skill and Strategy','Enter the world of tennis, where players wield rackets with finesse and strategy. From powerful serves to delicate volleys, each match unfolds with suspense and excitement, showcasing the beauty of this beloved sport.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',7,'Botble\\Member\\Models\\Member',1,'sports/news/9.jpg',1449,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(10,'The Heart-Pounding Action of Boxing: Strength and Stamina','Step into the ring and feel the adrenaline rush of boxing, where fighters showcase their strength, speed, and stamina in a relentless pursuit of victory. From lightning-fast jabs to bone-crushing hooks, every punch packs a powerful punch.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',8,'Botble\\Member\\Models\\Member',1,'sports/news/10.jpg',2152,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(11,'The Spirit of Basketball: Skill, Teamwork, and Strategy','Experience the fast-paced excitement of basketball, where players dribble, pass, and shoot their way to victory. From buzzer-beating shots to jaw-dropping dunks, each game is a showcase of skill, teamwork, and strategy.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',3,'Botble\\Member\\Models\\Member',0,'sports/news/11.jpg',2035,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(12,'The Precision of Golf: A Test of Skill and Patience','Embark on a journey through the serene greens and rolling fairways of golf, where precision and patience are paramount. From long drives to delicate putts, each swing offers a test of skill and a chance for glory on the links.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',5,'Botble\\Member\\Models\\Member',0,'sports/news/12.jpg',126,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(13,'The Speed of Formula One Racing: Engineering Marvels on the Track','Witness the high-octane excitement of Formula One racing, where drivers push the limits of speed and precision in cutting-edge racing machines. From hairpin turns to blistering straightaways, each race is a showcase of engineering marvels and adrenaline-fueled action.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',1,'Botble\\Member\\Models\\Member',0,'sports/news/13.jpg',922,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(14,'The Majesty of Equestrian Sports: Grace and Power','Experience the timeless elegance of equestrian sports, where horse and rider move as one in a display of grace and power. From dressage to show jumping, each event showcases the bond between human and horse in a celebration of athleticism and beauty.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',3,'Botble\\Member\\Models\\Member',0,'sports/news/14.jpg',314,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(15,'The Excitement of Motorsports: Thrills and Spills','Buckle up for the adrenaline-fueled world of motorsports, where drivers race wheel-to-wheel in a quest for victory. From the roar of engines to the squeal of tires, each race is a heart-pounding spectacle of speed, skill, and strategy.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',4,'Botble\\Member\\Models\\Member',0,'sports/news/15.jpg',1888,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(16,'The Grit of Marathon Running: Endurance and Determination','Challenge your limits and test your endurance in the grueling sport of marathon running. From the starting line to the finish, every step is a testament to the human spirit, as runners push through pain and fatigue to cross the ultimate finish line.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',1,'Botble\\Member\\Models\\Member',0,'sports/news/16.jpg',2013,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(17,'The Majesty of Swimming: Graceful Strokes in the Water','Dive into the serene world of swimming, where graceful strokes propel athletes through the water with effortless ease. From freestyle to butterfly, each stroke is a symphony of motion, as swimmers chase records and glory in the pool.','<p>The title conveys a sense of confidence that the economy will weather the banking crisis without suffering severe damage. The term \"banking crisis\" likely refers to a situation where financial institutions face significant challenges, such as insolvency, liquidity problems, or other issues that could affect the stability of the financial sector.</p><div>[content-quote style=\"style-2\" quote=\"Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This\" author=\"Celine Dion\" description=\"Acknowledgment of Life’s Challenges: The quote recognizes that life can be unpredictable and present challenges, obstacles, and hardships that are beyond an individual’s control. It emphasizes that adversity is a natural part of the human experience.\" top_left_image=\"main/general/blog-shape-image.png\"][/content-quote]</div><h3>I love how relaxed and flowy this dress is and that it has really delicate</h3><p>Indulge in the epitome of comfort and style with our \"Relaxed and Flowy\" dress, a masterpiece of delicate design and effortless elegance. This dress offers the perfect blend of comfort and sophistication, allowing you to move gracefully through any occasion. Crafted with meticulous attention to detail, its delicate fabric and relaxed silhouette make it a wardrobe essential for those who appreciate both style and comfort. Whether you’re strolling through a garden party or enjoying a serene evening out, this dress will be your trusted companion. Discover the beauty of ease and elegance with this exquisite garment.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/3.jpg\" image_2=\"main/news/7.jpg\"][/content-image]</div><div>[content-capitalize text=\"Step into the world of tranquility and charm with our Relaxed and Flowy dress. Its effortless design is a testament to the beauty of simplicity. The gentle, delicate fabric cascades with every movement, creating a mesmerizing dance of fabric and form. This dress embraces you in a feeling of relaxation and freedom, making it perfect for those serene, carefree moments you cherish\"][/content-capitalize]</div><div>[content-capitalize blog_content=\"This dress has a captivating allure with its relaxed and flowy silhouette that exudes a sense of effortlessness. What truly sets it apart are the exquisite, delicate details that adorn the fabric. The dress strikes a harmonious balance between comfort and sophistication, making it a perfect choice for those who value both the ease of relaxed attire and the subtle, intricate beauty that these delicate features bring to the overall design.\"][/content-capitalize]</div><p>It encourages taking personal responsibility for one’s responses to life’s trials. Even when faced with difficult circumstances, individuals have the autonomy to choose their emotional and behavioral reactions.</p><br> </br><p>The subtle details and the relaxed fit come together to create an ensemble that effortlessly combines fashion and comfort. Whether you’re attending a summer soirée or savoring a quiet day by the beach, this dress will be your go-to choice for a look that is both relaxed and elegantly delicate. Elevate your style with this captivating dress that celebrates the beauty of flowy, effortless fashion.\"</p><br> </br><br> </br>','published',5,'Botble\\Member\\Models\\Member',0,'sports/news/17.jpg',388,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(18,'The Power of Weightlifting: Strength and Determination','Enter the world of weightlifting, where athletes push their bodies to the limit in a display of strength and determination. From the snatch to the clean and jerk, each lift is a test of power and technique, as lifters strive for personal bests and Olympic glory.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',4,'Botble\\Member\\Models\\Member',0,'sports/news/18.jpg',2119,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(19,'The Art of Taekwondo: Discipline and Precision','Discover the ancient martial art of Taekwondo, where discipline and precision are the keys to success. From powerful kicks to lightning-fast strikes, practitioners master the art of self-defense while cultivating inner strength and confidence.','<p>Our mission is to assist you in achieving better financial shape, not just for today, but for the long term. We believe that financial security and freedom are within reach for everyone, and we’re dedicated to providing the guidance and support you need to get there.</p><div>[content-quote author=\"Celine Dion\" quote=\"‘‘Life Imposes Things On You That You Can’t Control, But You Still Have The Choice Of How You’re Going To Live Through This.’’\"][/content-quote]</div><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/news/6.jpg\" image_2=\"main/news/2.jpg\"][/content-image]</div><h3>Better financial shape</h3><p>Our comprehensive range of financial services and expert guidance are designed to empower individuals, families, and businesses to make informed financial decisions. Whether you’re looking to manage debt, build savings, invest wisely, or plan for retirement, our team of seasoned financial professionals is committed to helping you reach your goals. We offer personalized financial assessments, tailored strategies, and cutting-edge tools to maximize your financial well-being. By partnering with us, you gain access to a wealth of knowledge and resources that can transform your financial future.</p><div>[content-listing-style style=\"style-1\" quantity=\"6\" item_1=\"Diverse Solutions Guidance.\" item_2=\"Professionals Assisting You.\" item_3=\"Tailored Strategies for Success.\" item_4=\"Informed Decisions with Technology.\" item_5=\"Health Assessments Provided.\" item_6=\"Strategies for Building Prosperity.\"][/content-listing-style]</div><p>Achieving financial stability and prosperity is a shared goal we all aspire to. At Echo, we understand the significance of being in better financial shape, and we are here to guide you on your journey.</p><br> </br><br> </br>','published',2,'Botble\\Member\\Models\\Member',0,'sports/news/19.jpg',2441,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58'),(20,'The Thrill of Surfing: Riding the Waves','Catch the wave of excitement in the thrilling sport of surfing, where riders carve through towering waves with skill and style. From longboards to shortboards, each ride is a dance with the ocean, as surfers harness the power of the sea in search of the perfect wave.','<p>Introducing the Asus ROG Ally, your ultimate gaming companion that won’t compromise your budget. Packed with the high-performance AMD Z1 processor, this gaming laptop redefines what’s possible in the sub-$600 price range. Whether you’re a casual gamer or a hardcore enthusiast, the Asus ROG Ally has you covered with its impressive hardware and affordability.</p><h3>Data Center Loading & Security</h3><p>The Asus ROG Ally: Unleash Gaming Power on a Budget! Starting at just $600, this gaming marvel is powered by the formidable AMD Z1 processor. Get ready for an immersive gaming experience that won’t break the bank, as the Asus ROG Ally combines affordability with cutting-edge technology to ensure you conquer virtual worlds like a true champion.</p><h3>Advance Features</h3><div>[content-listing-style number_of_columns=\"col-2\" quantity=\"6\" item_1=\"Affordable Gaming Power\" item_2=\"AMD Z1 Processor\" item_3=\"Stylish Design\" item_4=\"High-Refresh-Rate Display\" item_5=\"Expandable Storage and Memory\" item_6=\"Gaming Excellence on a Budget\"][/content-listing-style]</div><p>The Asus ROG Ally also offers ample storage and memory options to keep all your games and files within easy reach. You can expand and customize it to meet your specific needs, ensuring you’re always prepared for the latest gaming challenges.</p><br> </br><div>[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"main/general/blog-4.png\" image_2=\"main/general/blog-3.png\"][/content-image]</div><div>[content-image number_of_columns=\"col-1\" quantity=\"1\" image_1=\"main/general/blog-5.png\"][/content-image]</div><h3>Features & configurations</h3><div>[content-listing-style number_of_columns=\"col-1\" quantity=\"6\" item_1=\"350-mile range (the bar is 300 miles)\" item_2=\"Your smartphone can be your key to the vehicle\" item_3=\"Reverse charging, so your car can power your house during a power outage\" item_4=\"An impressive 0-60 time of around 3.6 seconds (I like performance)\" item_5=\"A solar panel roof to increase range and supply emergency power\" item_6=\"Convertible-like mode (which really opens the car up)\"][/content-listing-style]</div><p>Asus ROG Ally is your ticket to affordable gaming excellence. With a starting price of just $600, it’s a game-changer that will take your gaming adventures to the next level. Whether you’re a student, a professional, or just someone looking for a fantastic gaming experience without breaking the bank, the Asus ROG Ally with AMD Z1 is your ideal companion. Grab yours now and prepare to dominate the gaming world!</p><br> </br>','published',7,'Botble\\Member\\Models\\Member',0,'sports/news/20.jpg',1906,NULL,'2024-08-09 11:06:58','2024-08-09 11:06:58');
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"fob-comment.index\":true,\"fob-comment.comments.index\":true,\"fob-comment.comments.edit\":true,\"fob-comment.comments.destroy\":true,\"fob-comment.comments.reply\":true,\"fob-comment.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-08-09 11:06:38','2024-08-09 11:06:38');
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
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-08-09 11:07:02'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"ai-writer\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"fob-comment\",\"gallery\",\"member\",\"newsletter\",\"note\",\"request-log\",\"rss-feed\",\"social-login\",\"translation\"]',NULL,'2024-08-09 11:07:02'),(4,'ai_writer_proxy_enable','0',NULL,'2024-08-09 11:07:02'),(5,'ai_writer_proxy_protocol',NULL,NULL,'2024-08-09 11:07:02'),(6,'ai_writer_proxy_ip',NULL,NULL,'2024-08-09 11:07:02'),(7,'ai_writer_proxy_port',NULL,NULL,'2024-08-09 11:07:02'),(8,'ai_writer_proxy_username',NULL,NULL,'2024-08-09 11:07:02'),(9,'ai_writer_proxy_password',NULL,NULL,'2024-08-09 11:07:02'),(10,'ai_writer_prompt_template','[{\"title\":\"Product Content\",\"content\":\"You will be a marketer. I will give the information of the product, you will write an introductory article about that product, the article requires google seo standards and is highly persuasive to increase the rate of users closing orders.\\nParameters product:\"},{\"title\":\"Post Content\",\"content\":\"You will be a marketer. Articles about:\"}]',NULL,'2024-08-09 11:07:02'),(11,'ai_writer_openai_key',NULL,NULL,'2024-08-09 11:07:02'),(12,'ai_writer_openai_temperature','1',NULL,'2024-08-09 11:07:02'),(13,'ai_writer_openai_max_tokens','2000',NULL,'2024-08-09 11:07:02'),(14,'ai_writer_openai_frequency_penalty','0',NULL,'2024-08-09 11:07:02'),(15,'ai_writer_openai_presence_penalty','0',NULL,'2024-08-09 11:07:02'),(16,'ai_writer_openai_models','[\"gpt-3.5-turbo\"]',NULL,'2024-08-09 11:07:02'),(17,'ai_writer_openai_default_model','gpt-3.5-turbo',NULL,'2024-08-09 11:07:02'),(18,'ai_writer_spin_template','[]',NULL,'2024-08-09 11:07:02'),(21,'language_hide_default','1',NULL,'2024-08-09 11:07:02'),(22,'language_switcher_display','dropdown',NULL,'2024-08-09 11:07:02'),(23,'language_display','all',NULL,'2024-08-09 11:07:02'),(24,'language_hide_languages','[]',NULL,'2024-08-09 11:07:02'),(25,'media_random_hash','c5ed354879d5f19dfd7e7cfde8af4c2f',NULL,'2024-08-09 11:07:02'),(26,'theme','echo-sports',NULL,'2024-08-09 11:07:02'),(27,'show_admin_bar','1',NULL,'2024-08-09 11:07:02'),(28,'admin_favicon','main/general/favicon.png',NULL,'2024-08-09 11:07:02'),(29,'admin_logo','main/general/logo-dark.png',NULL,'2024-08-09 11:07:02'),(30,'permalink-botble-blog-models-post','blog',NULL,'2024-08-09 11:07:02'),(31,'permalink-botble-blog-models-category','blog',NULL,'2024-08-09 11:07:02'),(32,'theme-echo-sports-site_name','Echo - Sports',NULL,'2024-08-09 11:07:02'),(33,'theme-echo-sports-site_title','News & Magazine Laravel Script.',NULL,'2024-08-09 11:07:02'),(34,'theme-echo-sports-seo_description','Echo is a modern, clean, and professional Laravel script that is suitable for news, magazine, blog, and any kind of website.',NULL,'2024-08-09 11:07:02'),(35,'theme-echo-sports-homepage_id','1',NULL,'2024-08-09 11:07:02'),(36,'theme-echo-sports-logo','sports/general/logo.png',NULL,'2024-08-09 11:07:02'),(37,'theme-echo-sports-logo_dark','sports/general/logo-dark.png',NULL,'2024-08-09 11:07:02'),(38,'theme-echo-sports-favicon','sports/general/favicon.png',NULL,'2024-08-09 11:07:02'),(39,'theme-echo-sports-blog_page_id','4',NULL,'2024-08-09 11:07:02'),(40,'theme-echo-sports-primary_font','Inter',NULL,'2024-08-09 11:07:02'),(41,'theme-echo-sports-heading_font','Bebas Neue',NULL,'2024-08-09 11:07:02'),(42,'theme-echo-sports-theme_style','auto',NULL,'2024-08-09 11:07:02'),(43,'theme-echo-sports-secondary_color','#4C091E',NULL,'2024-08-09 11:07:02'),(44,'theme-echo-sports-breadcrumb_background_image','main/backgrounds/breadcrumb.png',NULL,'2024-08-09 11:07:02'),(45,'theme-echo-sports-breadcrumb_background_color','transparent',NULL,'2024-08-09 11:07:02'),(46,'theme-echo-sports-breadcrumb_text_color','',NULL,'2024-08-09 11:07:02'),(47,'theme-echo-sports-blog_author_style','avatar_start',NULL,'2024-08-09 11:07:02'),(48,'theme-echo-sports-blog_description_style','normal',NULL,'2024-08-09 11:07:02'),(49,'theme-echo-sports-copyright','©%Y Archi Elite JSC. All Rights Reserved.',NULL,'2024-08-09 11:07:02'),(50,'theme-echo-sports-language_switcher_enabled','1',NULL,'2024-08-09 11:07:02'),(51,'theme-echo-sports-newsletter_popup_enable','1',NULL,'2024-08-09 11:07:02'),(52,'theme-echo-sports-newsletter_popup_image','main/general/newsletter-popup.png',NULL,'2024-08-09 11:07:02'),(53,'theme-echo-sports-newsletter_popup_title','Let’s join our newsletter!',NULL,'2024-08-09 11:07:02'),(54,'theme-echo-sports-newsletter_popup_subtitle','Weekly Updates',NULL,'2024-08-09 11:07:02'),(55,'theme-echo-sports-newsletter_popup_description','Do not worry we don’t spam!',NULL,'2024-08-09 11:07:02'),(56,'theme-echo-sports-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,'2024-08-09 11:07:02'),(57,'theme-echo-sports-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,'2024-08-09 11:07:02'),(58,'theme-echo-sports-primary_color','#D5225B',NULL,'2024-08-09 11:07:02'),(59,'theme-echo-sports-header_text_color','#ffffff',NULL,'2024-08-09 11:07:02'),(60,'theme-echo-sports-text_color','#999',NULL,'2024-08-09 11:07:02'),(61,'theme-echo-sports-footer_background_image','sports/backgrounds/footer-bg.png',NULL,'2024-08-09 11:07:02'),(62,'announcement_max_width','1390',NULL,NULL),(63,'announcement_text_color','#fefefe',NULL,NULL),(64,'announcement_background_color','#D5225B',NULL,NULL),(65,'announcement_text_alignment','center',NULL,NULL),(66,'announcement_dismissible','1',NULL,NULL),(67,'announcement_font_size','14',NULL,NULL),(68,'announcement_font_size_unit','px',NULL,NULL);
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
INSERT INTO `slugs` VALUES (1,'smith',1,'Botble\\Member\\Models\\Member','author','2024-08-09 11:06:41','2024-08-09 11:07:04'),(2,'renner',2,'Botble\\Member\\Models\\Member','author','2024-08-09 11:06:41','2024-08-09 11:07:04'),(3,'von',3,'Botble\\Member\\Models\\Member','author','2024-08-09 11:06:41','2024-08-09 11:07:04'),(4,'maggio',4,'Botble\\Member\\Models\\Member','author','2024-08-09 11:06:41','2024-08-09 11:07:04'),(5,'nader',5,'Botble\\Member\\Models\\Member','author','2024-08-09 11:06:41','2024-08-09 11:07:04'),(6,'eichmann',6,'Botble\\Member\\Models\\Member','author','2024-08-09 11:06:41','2024-08-09 11:07:04'),(7,'morar',7,'Botble\\Member\\Models\\Member','author','2024-08-09 11:06:41','2024-08-09 11:07:04'),(8,'hand',8,'Botble\\Member\\Models\\Member','author','2024-08-09 11:06:41','2024-08-09 11:07:04'),(9,'major-league-madness',1,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:50','2024-08-09 11:06:59'),(10,'hoops-hysteria',2,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:50','2024-08-09 11:06:59'),(11,'football-frenzy',3,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:50','2024-08-09 11:06:59'),(12,'goal-line-glory',4,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:50','2024-08-09 11:06:59'),(13,'net-gains',5,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:50','2024-08-09 11:06:59'),(14,'on-the-ice',6,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:50','2024-08-09 11:06:59'),(15,'links-and-greens',7,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:50','2024-08-09 11:06:59'),(16,'olympic-watch',8,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:50','2024-08-09 11:06:59'),(17,'racetrack-rundown',9,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:50','2024-08-09 11:06:59'),(18,'water-world',10,'Botble\\Blog\\Models\\Category','blog','2024-08-09 11:06:50','2024-08-09 11:06:59'),(19,'football-news',1,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:50','2024-08-09 11:06:50'),(20,'basketball-updates',2,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:50','2024-08-09 11:06:50'),(21,'soccer-world',3,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:50','2024-08-09 11:06:50'),(22,'olympic-insider',4,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:50','2024-08-09 11:06:50'),(23,'baseball-buzz',5,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:50','2024-08-09 11:06:50'),(24,'hockey-highlights',6,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:50','2024-08-09 11:06:50'),(25,'tennis-talk',7,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:50','2024-08-09 11:06:50'),(26,'golf-glimpses',8,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:50','2024-08-09 11:06:50'),(27,'sports-recap',9,'Botble\\Blog\\Models\\Tag','tag','2024-08-09 11:06:50','2024-08-09 11:06:50'),(28,'the-thrilling-world-of-mountain-biking',1,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(29,'mastering-the-art-of-archery-precision-and-focus',2,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(30,'the-graceful-dance-of-figure-skating',3,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(31,'sailing-harnessing-the-power-of-wind-and-water',4,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(32,'the-intensity-of-rugby-a-collision-of-strength-and-strategy',5,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(33,'unleashing-the-fury-inside-the-world-of-mixed-martial-arts',6,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(34,'climbing-to-new-heights-the-sport-of-rock-climbing',7,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(35,'the-artistry-of-gymnastics-grace-strength-and-precision',8,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(36,'the-beauty-of-tennis-a-game-of-skill-and-strategy',9,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(37,'the-heart-pounding-action-of-boxing-strength-and-stamina',10,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(38,'the-spirit-of-basketball-skill-teamwork-and-strategy',11,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(39,'the-precision-of-golf-a-test-of-skill-and-patience',12,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(40,'the-speed-of-formula-one-racing-engineering-marvels-on-the-track',13,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(41,'the-majesty-of-equestrian-sports-grace-and-power',14,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(42,'the-excitement-of-motorsports-thrills-and-spills',15,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(43,'the-grit-of-marathon-running-endurance-and-determination',16,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(44,'the-majesty-of-swimming-graceful-strokes-in-the-water',17,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(45,'the-power-of-weightlifting-strength-and-determination',18,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(46,'the-art-of-taekwondo-discipline-and-precision',19,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(47,'the-thrill-of-surfing-riding-the-waves',20,'Botble\\Blog\\Models\\Post','blog','2024-08-09 11:06:58','2024-08-09 11:06:59'),(48,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(49,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(50,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(51,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(52,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(53,'sunset',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(54,'ocean-views',7,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(55,'adventure-time',8,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(56,'city-lights',9,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(57,'dreamscape',10,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(58,'enchanted-forest',11,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(59,'golden-hour',12,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(60,'serenity',13,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(61,'eternal-beauty',14,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(62,'moonlight-magic',15,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(63,'starry-night',16,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(64,'hidden-gems',17,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(65,'tranquil-waters',18,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(66,'urban-escape',19,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(67,'twilight-zone',20,'Botble\\Gallery\\Models\\Gallery','galleries','2024-08-09 11:06:58','2024-08-09 11:06:58'),(68,'homepage',1,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:59','2024-08-09 11:06:59'),(69,'about-us',2,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:59','2024-08-09 11:06:59'),(70,'contact',3,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:59','2024-08-09 11:06:59'),(71,'blog',4,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:59','2024-08-09 11:06:59'),(72,'team',5,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:59','2024-08-09 11:06:59'),(73,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:59','2024-08-09 11:06:59'),(74,'terms-of-use',7,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:59','2024-08-09 11:06:59'),(75,'privacy-policy',8,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:59','2024-08-09 11:06:59'),(76,'advertise',9,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:59','2024-08-09 11:06:59'),(77,'faq',10,'Botble\\Page\\Models\\Page','','2024-08-09 11:06:59','2024-08-09 11:06:59');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Football News',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:50','2024-08-09 11:06:50'),(2,'Basketball Updates',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:50','2024-08-09 11:06:50'),(3,'Soccer World',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:50','2024-08-09 11:06:50'),(4,'Olympic Insider',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:50','2024-08-09 11:06:50'),(5,'Baseball Buzz',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:50','2024-08-09 11:06:50'),(6,'Hockey Highlights',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:50','2024-08-09 11:06:50'),(7,'Tennis Talk',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:50','2024-08-09 11:06:50'),(8,'Golf Glimpses',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:50','2024-08-09 11:06:50'),(9,'Sports Recap',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-09 11:06:50','2024-08-09 11:06:50');
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
INSERT INTO `users` VALUES (1,'malika75@koss.com',NULL,'$2y$12$IgKKdwKGn7XDh7ogZLSIg.wAfbkAlkf1Nvtu7eLyuuReuVSC8ejSG',NULL,'2024-08-09 11:06:38','2024-08-09 11:06:38','Travon','Schmitt','admin',NULL,1,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'BlogPostsWidget','menu_sidebar','echo-sports',1,'{\"type\":\"recent\",\"category_ids\":[1,2,3],\"limit\":3}','2024-08-09 11:07:03','2024-08-09 11:07:03'),(2,'SocialLinksWidget','menu_sidebar','echo-sports',2,'[]','2024-08-09 11:07:03','2024-08-09 11:07:03'),(3,'BlogCategoriesWidget','primary_sidebar','echo-sports',1,'{\"title\":\"Popular Categories\",\"id\":\"BlogCategoriesWidget\",\"enable_lazy_loading\":\"yes\",\"quantity\":\"5\",\"category_id_1\":\"1\",\"background_image_1\":\"main\\/blog-categories\\/1.png\",\"background_color_1\":\"rgb(174 81 43)\",\"category_id_2\":\"2\",\"background_image_2\":\"main\\/blog-categories\\/2.png\",\"background_color_2\":\"rgb(102 64 165)\",\"category_id_3\":\"3\",\"background_image_3\":\"main\\/blog-categories\\/3.png\",\"background_color_3\":\"rgb(85 163 168)\",\"category_id_4\":\"4\",\"background_image_4\":\"main\\/blog-categories\\/4.png\",\"background_color_4\":\"rgb(83 39 21)\",\"category_id_5\":\"5\",\"background_image_5\":\"main\\/blog-categories\\/5.png\",\"background_color_5\":\"rgb(85 163 168)\"}','2024-08-09 11:07:03','2024-08-09 11:07:03'),(4,'BlogPostsWidget','primary_sidebar','echo-sports',2,'{\"type\":\"popular\",\"card_style\":\"default-card\",\"shape\":\"square\",\"category_ids\":[1,3,4],\"title\":\"Top Story\",\"limit\":4,\"enable_lazy_loading\":\"yes\"}','2024-08-09 11:07:03','2024-08-09 11:07:03'),(5,'FollowUsWidget','primary_sidebar','echo-sports',3,'{\"id\":\"FollowUsWidget\",\"items\":[[{\"key\":\"title\",\"value\":\"20K Fans\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"title\",\"value\":\"10K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"title\",\"value\":\"50K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/instagram.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/linkedin.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/pinterest.com\"}],[{\"key\":\"title\",\"value\":\"04K Subscribers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"}]]}','2024-08-09 11:07:03','2024-08-09 11:07:03'),(6,'NewsletterWidget','above_footer_sidebar','echo-sports',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Get the gaming world News & Stories into your inbox\",\"description\":\"By subscribing, you accepted the our Policy.\"}','2024-08-09 11:07:03','2024-08-09 11:07:03'),(7,'BlogPostsWidget','custom_sidebar_2','echo-sports',1,'{\"type\":\"recent\",\"style\":\"default-card\",\"shape\":\"square\",\"category_ids\":[3,6],\"title\":\"Top Story\",\"limit\":4}','2024-08-09 11:07:03','2024-08-09 11:07:03'),(8,'BlogPostsWidget','custom_sidebar_2','echo-sports',2,'{\"type\":\"popular\",\"style\":\"orderly-card\",\"shape\":\"square\",\"category_ids\":[1,5,6],\"title\":\"Top Reviews\",\"limit\":3}','2024-08-09 11:07:03','2024-08-09 11:07:03'),(9,'FollowUsWidget','custom_sidebar_2','echo-sports',3,'{\"id\":\"FollowUsWidget\",\"items\":[[{\"key\":\"title\",\"value\":\"20K Fans\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"title\",\"value\":\"10K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"title\",\"value\":\"50K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/instagram.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/linkedin.com\"}],[{\"key\":\"title\",\"value\":\"30K Followers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/pinterest.com\"}],[{\"key\":\"title\",\"value\":\"04K Subscribers\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"}]]}','2024-08-09 11:07:03','2024-08-09 11:07:03'),(10,'NewsletterWidget','custom_sidebar_2','echo-sports',4,'{\"id\":\"NewsletterWidget\",\"title\":\"Newsletter\",\"description\":\"Stay Tuned With Updates\",\"image\":\"main\\/general\\/newsletter-image.png\"}','2024-08-09 11:07:03','2024-08-09 11:07:03'),(11,'BannerAdsWidget','custom_sidebar_2','echo-sports',5,'{\"ad_image\":\"main\\/general\\/ads-banner.png\",\"ad_link\":\"https:\\/\\/google.com\"}','2024-08-09 11:07:03','2024-08-09 11:07:03'),(12,'SocialLinksWidget','footer_sidebar','echo-sports',1,'[]','2024-08-09 11:07:03','2024-08-09 11:07:03'),(13,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','echo-sports',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Most Popular\",\"items\":[[{\"key\":\"label\",\"value\":\"Major League Madness\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/major-league-madness\"}],[{\"key\":\"label\",\"value\":\"Hoops Hysteria\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/hoops-hysteria\"}],[{\"key\":\"label\",\"value\":\"Football Frenzy\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/football-frenzy\"}],[{\"key\":\"label\",\"value\":\"Goal Line Glory\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/goal-line-glory\"}],[{\"key\":\"label\",\"value\":\"Net Gains\"},{\"key\":\"url\",\"value\":\"http:\\/\\/localhost\\/blog\\/net-gains\"}]]}','2024-08-09 11:07:03','2024-08-09 11:07:03'),(14,'ActionButtonsWidget','header_sidebar','echo-sports',1,'{\"id\":\"ActionButtonsWidget\",\"alignment\":\"end\"}','2024-08-09 11:07:03','2024-08-09 11:07:03');
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

-- Dump completed on 2024-08-10  1:07:04
