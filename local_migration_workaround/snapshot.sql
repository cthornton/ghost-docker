-- MySQL dump 10.13  Distrib 8.0.23, for osx10.16 (x86_64)
--
-- Host: localhost    Database: local_ghost_blog
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actions` (
  `id` varchar(24) NOT NULL,
  `resource_id` varchar(24) DEFAULT NULL,
  `resource_type` varchar(50) NOT NULL,
  `actor_id` varchar(24) NOT NULL,
  `actor_type` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `context` text,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES ('604a9e1ac9b0f6bf8cfeabc2','604a9e1ac9b0f6bf8cfeabbf','post','1','user','added',NULL,'2021-03-11 14:47:54'),('604a9e21c9b0f6bf8cfeabc4','604a9e1ac9b0f6bf8cfeabbf','post','1','user','edited',NULL,'2021-03-11 14:48:01'),('604a9e2dc9b0f6bf8cfeabc6','604a9e1ac9b0f6bf8cfeabbf','post','1','user','edited',NULL,'2021-03-11 14:48:13'),('604a9e32c9b0f6bf8cfeabc8','604a9e1ac9b0f6bf8cfeabbf','post','1','user','edited',NULL,'2021-03-11 14:48:18'),('604a9e51c9b0f6bf8cfeabca','604a9e1ac9b0f6bf8cfeabbf','post','1','user','edited',NULL,'2021-03-11 14:48:49'),('604a9e57c9b0f6bf8cfeabcc','604a9e1ac9b0f6bf8cfeabbf','post','1','user','edited',NULL,'2021-03-11 14:48:55'),('604aa1b77136a9c40c97b92c','604a9e1ac9b0f6bf8cfeabbf','post','1','user','edited',NULL,'2021-03-11 15:03:19');
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_keys` (
  `id` varchar(24) NOT NULL,
  `type` varchar(50) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `role_id` varchar(24) DEFAULT NULL,
  `integration_id` varchar(24) DEFAULT NULL,
  `user_id` varchar(24) DEFAULT NULL,
  `last_seen_at` datetime DEFAULT NULL,
  `last_seen_version` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_keys_secret_unique` (`secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_keys`
--

LOCK TABLES `api_keys` WRITE;
/*!40000 ALTER TABLE `api_keys` DISABLE KEYS */;
INSERT INTO `api_keys` VALUES ('604a8e0b7bd272a2720d8954','admin','acb21ead4525d04ec6113b3dd86867b48675803509ad52195ba367132bfe4ce9','604a8e0a7bd272a2720d88f1','604a8e0b7bd272a2720d8953',NULL,NULL,NULL,'2021-03-11 21:39:23','1','2021-03-11 21:39:23','1'),('604a8e0b7bd272a2720d8956','admin','63deec80c14f45f2d890d28ac52d839379f3c5c0795c538f9f8d80233a5e8d17','604a8e0a7bd272a2720d88f2','604a8e0b7bd272a2720d8955',NULL,NULL,NULL,'2021-03-11 21:39:23','1','2021-03-11 21:39:23','1'),('604a8e0b7bd272a2720d8958','admin','517dc6d50652c28384c3453c90f00acef00a9438f66cbab3e479b717f2cf7034','604a8e0a7bd272a2720d88f3','604a8e0b7bd272a2720d8957',NULL,NULL,NULL,'2021-03-11 21:39:23','1','2021-03-11 21:39:23','1');
/*!40000 ALTER TABLE `api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brute`
--

DROP TABLE IF EXISTS `brute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brute` (
  `key` varchar(191) NOT NULL,
  `firstRequest` bigint NOT NULL,
  `lastRequest` bigint NOT NULL,
  `lifetime` bigint NOT NULL,
  `count` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brute`
--

LOCK TABLES `brute` WRITE;
/*!40000 ALTER TABLE `brute` DISABLE KEYS */;
INSERT INTO `brute` VALUES ('oHUubZQTM66eOWJCFaoi+8dO/eXPG5zwBOW8P5YAuKM=',1615502851370,1615502851370,1615506451373,1);
/*!40000 ALTER TABLE `brute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_batches`
--

DROP TABLE IF EXISTS `email_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_batches` (
  `id` varchar(24) NOT NULL,
  `email_id` varchar(24) NOT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email_batches_email_id_foreign` (`email_id`),
  CONSTRAINT `email_batches_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_batches`
--

LOCK TABLES `email_batches` WRITE;
/*!40000 ALTER TABLE `email_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_recipients`
--

DROP TABLE IF EXISTS `email_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_recipients` (
  `id` varchar(24) NOT NULL,
  `email_id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `batch_id` varchar(24) NOT NULL,
  `processed_at` datetime DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `opened_at` datetime DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `member_uuid` varchar(36) NOT NULL,
  `member_email` varchar(191) NOT NULL,
  `member_name` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_recipients_member_id_index` (`member_id`),
  KEY `email_recipients_batch_id_foreign` (`batch_id`),
  KEY `email_recipients_delivered_at_index` (`delivered_at`),
  KEY `email_recipients_opened_at_index` (`opened_at`),
  KEY `email_recipients_failed_at_index` (`failed_at`),
  KEY `email_recipients_email_id_member_email_index` (`email_id`,`member_email`),
  CONSTRAINT `email_recipients_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `email_batches` (`id`),
  CONSTRAINT `email_recipients_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_recipients`
--

LOCK TABLES `email_recipients` WRITE;
/*!40000 ALTER TABLE `email_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `recipient_filter` varchar(50) NOT NULL DEFAULT 'paid',
  `error` varchar(2000) DEFAULT NULL,
  `error_data` longtext,
  `email_count` int unsigned NOT NULL DEFAULT '0',
  `delivered_count` int unsigned NOT NULL DEFAULT '0',
  `opened_count` int unsigned NOT NULL DEFAULT '0',
  `failed_count` int unsigned NOT NULL DEFAULT '0',
  `subject` varchar(300) DEFAULT NULL,
  `from` varchar(2000) DEFAULT NULL,
  `reply_to` varchar(2000) DEFAULT NULL,
  `html` longtext,
  `plaintext` longtext,
  `track_opens` tinyint(1) NOT NULL DEFAULT '0',
  `submitted_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emails_post_id_unique` (`post_id`),
  KEY `emails_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrations`
--

DROP TABLE IF EXISTS `integrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `integrations` (
  `id` varchar(24) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'custom',
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `icon_image` varchar(2000) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `integrations_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrations`
--

LOCK TABLES `integrations` WRITE;
/*!40000 ALTER TABLE `integrations` DISABLE KEYS */;
INSERT INTO `integrations` VALUES ('604a8e0b7bd272a2720d8953','builtin','Zapier','zapier',NULL,'Built-in Zapier integration','2021-03-11 13:39:23','1','2021-03-11 13:39:23','1'),('604a8e0b7bd272a2720d8955','internal','Ghost Backup','ghost-backup',NULL,'Internal DB Backup integration','2021-03-11 13:39:23','1','2021-03-11 13:39:23','1'),('604a8e0b7bd272a2720d8957','internal','Ghost Scheduler','ghost-scheduler',NULL,'Internal Scheduler integration','2021-03-11 13:39:23','1','2021-03-11 13:39:23','1');
/*!40000 ALTER TABLE `integrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invites`
--

DROP TABLE IF EXISTS `invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invites` (
  `id` varchar(24) NOT NULL,
  `role_id` varchar(24) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `token` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `expires` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invites_token_unique` (`token`),
  UNIQUE KEY `invites_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invites`
--

LOCK TABLES `invites` WRITE;
/*!40000 ALTER TABLE `invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labels` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `labels_name_unique` (`name`),
  UNIQUE KEY `labels_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` varchar(24) NOT NULL,
  `uuid` varchar(36) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `note` varchar(2000) DEFAULT NULL,
  `geolocation` varchar(2000) DEFAULT NULL,
  `subscribed` tinyint(1) DEFAULT '1',
  `email_count` int unsigned NOT NULL DEFAULT '0',
  `email_opened_count` int unsigned NOT NULL DEFAULT '0',
  `email_open_rate` int unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'free',
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`),
  UNIQUE KEY `members_uuid_unique` (`uuid`),
  KEY `members_email_open_rate_index` (`email_open_rate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_email_change_events`
--

DROP TABLE IF EXISTS `members_email_change_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_email_change_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `to_email` varchar(191) NOT NULL,
  `from_email` varchar(191) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_email_change_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_email_change_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_email_change_events`
--

LOCK TABLES `members_email_change_events` WRITE;
/*!40000 ALTER TABLE `members_email_change_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_email_change_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_labels`
--

DROP TABLE IF EXISTS `members_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_labels` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `label_id` varchar(24) NOT NULL,
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `members_labels_member_id_foreign` (`member_id`),
  KEY `members_labels_label_id_foreign` (`label_id`),
  CONSTRAINT `members_labels_label_id_foreign` FOREIGN KEY (`label_id`) REFERENCES `labels` (`id`) ON DELETE CASCADE,
  CONSTRAINT `members_labels_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_labels`
--

LOCK TABLES `members_labels` WRITE;
/*!40000 ALTER TABLE `members_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_login_events`
--

DROP TABLE IF EXISTS `members_login_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_login_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_login_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_login_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_login_events`
--

LOCK TABLES `members_login_events` WRITE;
/*!40000 ALTER TABLE `members_login_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_login_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_paid_subscription_events`
--

DROP TABLE IF EXISTS `members_paid_subscription_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_paid_subscription_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `from_plan` varchar(255) DEFAULT NULL,
  `to_plan` varchar(255) DEFAULT NULL,
  `currency` varchar(191) NOT NULL,
  `source` varchar(50) NOT NULL,
  `mrr_delta` int NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_paid_subscription_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_paid_subscription_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_paid_subscription_events`
--

LOCK TABLES `members_paid_subscription_events` WRITE;
/*!40000 ALTER TABLE `members_paid_subscription_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_paid_subscription_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_payment_events`
--

DROP TABLE IF EXISTS `members_payment_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_payment_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `amount` int NOT NULL,
  `currency` varchar(191) NOT NULL,
  `source` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_payment_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_payment_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_payment_events`
--

LOCK TABLES `members_payment_events` WRITE;
/*!40000 ALTER TABLE `members_payment_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_payment_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_status_events`
--

DROP TABLE IF EXISTS `members_status_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_status_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `from_status` varchar(50) DEFAULT NULL,
  `to_status` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_status_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_status_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_status_events`
--

LOCK TABLES `members_status_events` WRITE;
/*!40000 ALTER TABLE `members_status_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_status_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_stripe_customers`
--

DROP TABLE IF EXISTS `members_stripe_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_stripe_customers` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_stripe_customers_customer_id_unique` (`customer_id`),
  KEY `members_stripe_customers_member_id_foreign` (`member_id`),
  CONSTRAINT `members_stripe_customers_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_stripe_customers`
--

LOCK TABLES `members_stripe_customers` WRITE;
/*!40000 ALTER TABLE `members_stripe_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_stripe_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_stripe_customers_subscriptions`
--

DROP TABLE IF EXISTS `members_stripe_customers_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_stripe_customers_subscriptions` (
  `id` varchar(24) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `subscription_id` varchar(255) NOT NULL,
  `plan_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `cancel_at_period_end` tinyint(1) NOT NULL DEFAULT '0',
  `cancellation_reason` varchar(500) DEFAULT NULL,
  `current_period_end` datetime NOT NULL,
  `start_date` datetime NOT NULL,
  `default_payment_card_last4` varchar(4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  `plan_nickname` varchar(50) NOT NULL,
  `plan_interval` varchar(50) NOT NULL,
  `plan_amount` int NOT NULL,
  `plan_currency` varchar(191) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_stripe_customers_subscriptions_subscription_id_unique` (`subscription_id`),
  KEY `members_stripe_customers_subscriptions_customer_id_foreign` (`customer_id`),
  CONSTRAINT `members_stripe_customers_subscriptions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `members_stripe_customers` (`customer_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_stripe_customers_subscriptions`
--

LOCK TABLES `members_stripe_customers_subscriptions` WRITE;
/*!40000 ALTER TABLE `members_stripe_customers_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_stripe_customers_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_subscribe_events`
--

DROP TABLE IF EXISTS `members_subscribe_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_subscribe_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `subscribed` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `source` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `members_subscribe_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_subscribe_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_subscribe_events`
--

LOCK TABLES `members_subscribe_events` WRITE;
/*!40000 ALTER TABLE `members_subscribe_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_subscribe_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `version` varchar(70) NOT NULL,
  `currentVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `migrations_name_version_unique` (`name`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'1-create-tables.js','init','3.42'),(2,'2-create-fixtures.js','init','3.42'),(3,'1-post-excerpt.js','1.3','3.42'),(4,'1-codeinjection-post.js','1.4','3.42'),(5,'1-og-twitter-post.js','1.5','3.42'),(6,'1-add-backup-client.js','1.7','3.42'),(7,'1-add-permissions-redirect.js','1.9','3.42'),(8,'1-custom-template-post.js','1.13','3.42'),(9,'2-theme-permissions.js','1.13','3.42'),(10,'1-add-webhooks-table.js','1.18','3.42'),(11,'1-webhook-permissions.js','1.19','3.42'),(12,'1-remove-settings-keys.js','1.20','3.42'),(13,'1-add-contributor-role.js','1.21','3.42'),(14,'1-multiple-authors-DDL.js','1.22','3.42'),(15,'1-multiple-authors-DML.js','1.22','3.42'),(16,'1-update-koenig-beta-html.js','1.25','3.42'),(17,'2-demo-post.js','1.25','3.42'),(18,'1-rename-amp-column.js','2.0','3.42'),(19,'2-update-posts.js','2.0','3.42'),(20,'3-remove-koenig-labs.js','2.0','3.42'),(21,'4-permalink-setting.js','2.0','3.42'),(22,'5-remove-demo-post.js','2.0','3.42'),(23,'6-replace-fixture-posts.js','2.0','3.42'),(24,'1-add-sessions-table.js','2.2','3.42'),(25,'2-add-integrations-and-api-key-tables.js','2.2','3.42'),(26,'3-insert-admin-integration-role.js','2.2','3.42'),(27,'4-insert-integration-and-api-key-permissions.js','2.2','3.42'),(28,'5-add-mobiledoc-revisions-table.js','2.2','3.42'),(29,'1-add-webhook-columns.js','2.3','3.42'),(30,'2-add-webhook-edit-permission.js','2.3','3.42'),(31,'1-add-webhook-permission-roles.js','2.6','3.42'),(32,'1-add-members-table.js','2.8','3.42'),(33,'1-remove-empty-strings.js','2.13','3.42'),(34,'1-add-actions-table.js','2.14','3.42'),(35,'2-add-actions-permissions.js','2.14','3.42'),(36,'1-add-type-column-to-integrations.js','2.15','3.42'),(37,'2-insert-zapier-integration.js','2.15','3.42'),(38,'1-add-members-perrmissions.js','2.16','3.42'),(39,'1-normalize-settings.js','2.17','3.42'),(40,'2-posts-add-canonical-url.js','2.17','3.42'),(41,'1-restore-settings-from-backup.js','2.18','3.42'),(42,'1-update-editor-permissions.js','2.21','3.42'),(43,'1-add-member-permissions-to-roles.js','2.22','3.42'),(44,'1-insert-ghost-db-backup-role.js','2.27','3.42'),(45,'2-insert-db-backup-integration.js','2.27','3.42'),(46,'3-add-subdirectory-to-relative-canonical-urls.js','2.27','3.42'),(47,'1-add-db-backup-content-permission.js','2.28','3.42'),(48,'2-add-db-backup-content-permission-to-roles.js','2.28','3.42'),(49,'3-insert-ghost-scheduler-role.js','2.28','3.42'),(50,'4-insert-scheduler-integration.js','2.28','3.42'),(51,'5-add-scheduler-permission-to-roles.js','2.28','3.42'),(52,'6-add-type-column.js','2.28','3.42'),(53,'7-populate-type-column.js','2.28','3.42'),(54,'8-remove-page-column.js','2.28','3.42'),(55,'1-add-post-page-column.js','2.29','3.42'),(56,'2-populate-post-page-column.js','2.29','3.42'),(57,'3-remove-page-type-column.js','2.29','3.42'),(58,'1-remove-name-and-password-from-members-table.js','2.31','3.42'),(59,'01-add-members-stripe-customers-table.js','2.32','3.42'),(60,'02-add-name-to-members-table.js','2.32','3.42'),(61,'01-correct-members-stripe-customers-table.js','2.33','3.42'),(62,'01-add-stripe-customers-subscriptions-table.js','2.34','3.42'),(63,'02-add-email-to-members-stripe-customers-table.js','2.34','3.42'),(64,'03-add-name-to-members-stripe-customers-table.js','2.34','3.42'),(65,'01-add-note-to-members-table.js','2.35','3.42'),(66,'01-add-self-signup-and-from address-to-members-settings.js','2.37','3.42'),(67,'01-remove-user-ghost-auth-columns.js','3.0','3.42'),(68,'02-drop-token-auth-tables.js','3.0','3.42'),(69,'03-drop-client-auth-tables.js','3.0','3.42'),(70,'04-add-posts-meta-table.js','3.0','3.42'),(71,'05-populate-posts-meta-table.js','3.0','3.42'),(72,'06-remove-posts-meta-columns.js','3.0','3.42'),(73,'07-add-posts-type-column.js','3.0','3.42'),(74,'08-populate-posts-type-column.js','3.0','3.42'),(75,'09-remove-posts-page-column.js','3.0','3.42'),(76,'10-remove-empty-strings.js','3.0','3.42'),(77,'11-update-posts-html.js','3.0','3.42'),(78,'12-populate-members-table-from-subscribers.js','3.0','3.42'),(79,'13-drop-subscribers-table.js','3.0','3.42'),(80,'14-remove-subscribers-flag.js','3.0','3.42'),(81,'01-add-send-email-when-published-to-posts.js','3.1','3.42'),(82,'02-add-email-subject-to-posts-meta.js','3.1','3.42'),(83,'03-add-email-preview-permissions.js','3.1','3.42'),(84,'04-add-subscribed-flag-to-members.js','3.1','3.42'),(85,'05-add-emails-table.js','3.1','3.42'),(86,'06-add-email-permissions.js','3.1','3.42'),(87,'07-add-uuid-field-to-members.js','3.1','3.42'),(88,'08-add-uuid-values-to-members.js','3.1','3.42'),(89,'09-add-further-email-permissions.js','3.1','3.42'),(90,'10-add-email-error-data-column.js','3.1','3.42'),(91,'01-add-cancel-at-period-end-to-subscriptions.js','3.2','3.42'),(92,'1-add-labels-table.js','3.6','3.42'),(93,'2-add-members-labels-table.js','3.6','3.42'),(94,'3-add-labels-permissions.js','3.6','3.42'),(95,'01-fix-incorrect-member-labels-foreign-keys.js','3.7','3.42'),(96,'01-add-geolocation-to-members.js','3.8','3.42'),(97,'01-add-member-sigin-url-permissions.js','3.9','3.42'),(98,'01-remove-broken-complimentary-plan-from-members-settings.js','3.11','3.42'),(99,'01-add-identity-permission.js','3.12','3.42'),(100,'02-remove-legacy-is-paid-flag-from-settings.js','3.12','3.42'),(101,'01-add-email-preview-permissions-to-roles.js','3.18','3.42'),(102,'02-add-members_stripe_connect-auth-permissions.js','3.18','3.42'),(103,'01-update-member-from-email-address.js','3.19','3.42'),(104,'01-removed-legacy-values-from-settings-table.js','3.22','3.42'),(105,'02-settings-key-renames.js','3.22','3.42'),(106,'03-add-group-and-flags-to-settings.js','3.22','3.42'),(107,'04-populate-settings-groups-and-flags.js','3.22','3.42'),(108,'05-migrate-members-subscription-settings.js','3.22','3.42'),(109,'06-migrate-stripe-connect-settings.js','3.22','3.42'),(110,'07-update-type-for-settings.js','3.22','3.42'),(111,'01-migrate-bulk-email-settings.js','3.23','3.42'),(112,'02-remove-bulk-email-settings.js','3.23','3.42'),(113,'03-update-portal-button-setting.js','3.23','3.42'),(114,'04-add-meta-columns-to-tags-table.js','3.23','3.42'),(115,'01-populate-group-for-new-portal-settings.js','3.24','3.42'),(116,'01-add-members-stripe-webhook-settings.js','3.25','3.42'),(117,'01-add-amp-gtag-id-setting.js','3.26','3.42'),(118,'01-remove-duplicate-subscriptions.js','3.29','3.42'),(119,'02-remove-duplicate-customers.js','3.29','3.42'),(120,'03-remove-orphaned-customers.js','3.29','3.42'),(121,'04-remove-orphaned-subscriptions.js','3.29','3.42'),(122,'05-add-member-constraints.js','3.29','3.42'),(123,'01-add-member-signin-url-permission-roles.js','3.30','3.42'),(124,'01-add-member-support-address-setting.js','3.32','3.42'),(125,'02-add-member-reply-address-setting.js','3.32','3.42'),(126,'03-add-routes-hash-setting.js','3.32','3.42'),(127,'01-add-email-recipients-tables.js','3.33','3.42'),(128,'01-add-tokens-table.js','3.34','3.42'),(129,'01-add-address-columns-to-emails-table.js','3.35','3.42'),(130,'01-add-snippets-table.js','3.36','3.42'),(131,'02-add-snippets-permissions.js','3.36','3.42'),(132,'01-update-portal-button-setting.js','3.37','3.42'),(133,'01-add-email-recipient-filter-column.js','3.38','3.42'),(134,'02-populate-email-recipient-filter-column.js','3.38','3.42'),(135,'03-add-recipient-filter-column.js','3.38','3.42'),(136,'04-populate-recipient-filter-column.js','3.38','3.42'),(137,'05-add-emails-track-opens-column.js','3.38','3.42'),(138,'06-add-newsletter-settings.js','3.38','3.42'),(139,'07-migrate-newsletter-settings-from-config.js','3.38','3.42'),(140,'08-repopulate-send-email-when-published-down-migration.js','3.38','3.42'),(141,'09-remove-send-email-when-published-column.js','3.38','3.42'),(142,'01-add-members-signup-redirect-settings.js','3.39','3.42'),(143,'02-add-user-id-to-api-keys-table.js','3.39','3.42'),(144,'03-add-email-track-opens-setting.js','3.39','3.42'),(145,'04-add-cancellation-reason-column.js','3.39','3.42'),(146,'05-remove-unused-columns-on-emails.js','3.39','3.42'),(147,'06-add-email-recipient-index.js','3.39','3.42'),(148,'07-add-email-recipients-event-timestamps.js','3.39','3.42'),(149,'08-add-email-stats-columns.js','3.39','3.42'),(150,'01-add-members-email-open-rate-column.js','3.40','3.42'),(151,'02-add members-email-aggregation-columns.js','3.40','3.42'),(152,'03-populate-members-email-counts.js','3.40','3.42'),(153,'01-add-firstpromoter-settings.js','3.41','3.42'),(154,'01-update-mobiledoc.js','4.0','4.0'),(155,'02-add-status-column-to-members.js','4.0','4.0'),(156,'03-populate-status-column-for-members.js','4.0','4.0'),(157,'04-drop-apps-related-tables.js','4.0','4.0'),(158,'05-add-members-subscribe-events-table.js','4.0','4.0'),(159,'06-populate-members-subscribe-events-table.js','4.0','4.0'),(160,'07-alter-unique-constraint-for-posts-slug.js','4.0','4.0'),(161,'08-add-members-login-events-table.js','4.0','4.0'),(162,'09-add-members-email-change-events-table.js','4.0','4.0'),(163,'10-add-members-status-events-table.js','4.0','4.0'),(164,'11-add-members-paid-subscription-events-table.js','4.0','4.0'),(165,'12-delete-apps-related-settings-keys.js','4.0','4.0'),(166,'13-add-members-payment-events-table.js','4.0','4.0'),(167,'14-remove-orphaned-stripe-records.js','4.0','4.0'),(168,'15-add-frontmatter-column-to-meta.js','4.0','4.0'),(169,'16-refactor-slack-setting.js','4.0','4.0'),(170,'17-populate-members-status-events-table.js','4.0','4.0'),(171,'18-transform-urls-absolute-to-transform-ready.js','4.0','4.0'),(172,'19-remove-labs-members-setting.js','4.0','4.0'),(173,'20-refactor-unsplash-setting.js','4.0','4.0'),(174,'21-sanitize-email-batches-provider-id.js','4.0','4.0'),(175,'22-solve-orphaned-webhooks.js','4.0','4.0'),(176,'23-regenerate-posts-html.js','4.0','4.0'),(177,'24-add-missing-email-permissions.js','4.0','4.0'),(178,'25-populate-members-paid-subscription-events-table.js','4.0','4.0'),(179,'26-add-cascade-on-delete.js','4.0','4.0'),(180,'27-add-primary-key-brute-migrations-lock.js','4.0','4.0'),(181,'28-add-webhook-intergrations-foreign-key.js','4.0','4.0'),(182,'29-fix-foreign-key-for-members-stripe-customers-subscriptions.js','4.0','4.0'),(183,'30-set-default-accent-color.js','4.0','4.0');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations_lock`
--

DROP TABLE IF EXISTS `migrations_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations_lock` (
  `lock_key` varchar(191) NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `acquired_at` datetime DEFAULT NULL,
  `released_at` datetime DEFAULT NULL,
  PRIMARY KEY (`lock_key`),
  UNIQUE KEY `migrations_lock_lock_key_unique` (`lock_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations_lock`
--

LOCK TABLES `migrations_lock` WRITE;
/*!40000 ALTER TABLE `migrations_lock` DISABLE KEYS */;
INSERT INTO `migrations_lock` VALUES ('km01',0,'2021-03-19 09:55:51','2021-03-19 09:55:52');
/*!40000 ALTER TABLE `migrations_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobiledoc_revisions`
--

DROP TABLE IF EXISTS `mobiledoc_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobiledoc_revisions` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `mobiledoc` longtext,
  `created_at_ts` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mobiledoc_revisions_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobiledoc_revisions`
--

LOCK TABLES `mobiledoc_revisions` WRITE;
/*!40000 ALTER TABLE `mobiledoc_revisions` DISABLE KEYS */;
INSERT INTO `mobiledoc_revisions` VALUES ('604a9e1ac9b0f6bf8cfeabc1','604a9e1ac9b0f6bf8cfeabbf','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[],\"markups\":[],\"sections\":[[1,\"p\",[[0,[],0,\"H\"]]]]}',1615502874939,'2021-03-11 14:47:54'),('604a9e21c9b0f6bf8cfeabc3','604a9e1ac9b0f6bf8cfeabbf','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[[\"image\",{\"imageSelector\":\"unsplash\"}]],\"markups\":[],\"sections\":[[1,\"p\",[[0,[],0,\"Hello World!\"]]],[10,0],[1,\"p\",[]]]}',1615502881217,'2021-03-11 14:48:01'),('604a9e2dc9b0f6bf8cfeabc5','604a9e1ac9b0f6bf8cfeabbf','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[[\"image\",{\"src\":\"https://images.unsplash.com/photo-1568162603664-fcd658421851?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMTc3M3wwfDF8c2VhcmNofDV8fGJlYXJ8ZW58MHx8fHwxNjE1NTAyODgx&ixlib=rb-1.2.1&q=80&w=2000\",\"width\":3832,\"height\":2848,\"caption\":\"Photo by <a href=\\\"https://unsplash.com/@binkabonka?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit\\\">Becca</a> / <a href=\\\"https://unsplash.com/?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit\\\">Unsplash</a>\",\"alt\":\"bear\",\"cardWidth\":\"full\"}]],\"markups\":[],\"sections\":[[1,\"p\",[[0,[],0,\"Hello World!\"]]],[10,0],[1,\"p\",[]]]}',1615502893500,'2021-03-11 14:48:13'),('604a9e32c9b0f6bf8cfeabc7','604a9e1ac9b0f6bf8cfeabbf','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[[\"image\",{\"src\":\"https://images.unsplash.com/photo-1568162603664-fcd658421851?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMTc3M3wwfDF8c2VhcmNofDV8fGJlYXJ8ZW58MHx8fHwxNjE1NTAyODgx&ixlib=rb-1.2.1&q=80&w=2000\",\"width\":3832,\"height\":2848,\"caption\":\"Photo by <a href=\\\"https://unsplash.com/@binkabonka?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit\\\">Becca</a> / <a href=\\\"https://unsplash.com/?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit\\\">Unsplash</a>\",\"alt\":\"bear\",\"cardWidth\":\"full\"}]],\"markups\":[],\"sections\":[[1,\"p\",[[0,[],0,\"Hello World!\"]]],[10,0],[1,\"p\",[]],[1,\"p\",[[0,[],0,\"Custom image:\"]]],[1,\"p\",[]],[1,\"p\",[]]]}',1615502898647,'2021-03-11 14:48:18'),('604a9e51c9b0f6bf8cfeabc9','604a9e1ac9b0f6bf8cfeabbf','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[[\"image\",{\"src\":\"https://images.unsplash.com/photo-1568162603664-fcd658421851?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMTc3M3wwfDF8c2VhcmNofDV8fGJlYXJ8ZW58MHx8fHwxNjE1NTAyODgx&ixlib=rb-1.2.1&q=80&w=2000\",\"width\":3832,\"height\":2848,\"caption\":\"Photo by <a href=\\\"https://unsplash.com/@binkabonka?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit\\\">Becca</a> / <a href=\\\"https://unsplash.com/?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit\\\">Unsplash</a>\",\"alt\":\"bear\",\"cardWidth\":\"full\"}],[\"image\",{}]],\"markups\":[],\"sections\":[[1,\"p\",[[0,[],0,\"Hello World!\"]]],[10,0],[1,\"p\",[]],[1,\"p\",[[0,[],0,\"Custom image:\"]]],[1,\"p\",[]],[10,1],[1,\"p\",[]]]}',1615502929026,'2021-03-11 14:48:49'),('604a9e57c9b0f6bf8cfeabcb','604a9e1ac9b0f6bf8cfeabbf','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[[\"image\",{\"src\":\"https://images.unsplash.com/photo-1568162603664-fcd658421851?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMTc3M3wwfDF8c2VhcmNofDV8fGJlYXJ8ZW58MHx8fHwxNjE1NTAyODgx&ixlib=rb-1.2.1&q=80&w=2000\",\"width\":3832,\"height\":2848,\"caption\":\"Photo by <a href=\\\"https://unsplash.com/@binkabonka?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit\\\">Becca</a> / <a href=\\\"https://unsplash.com/?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit\\\">Unsplash</a>\",\"alt\":\"bear\",\"cardWidth\":\"full\"}],[\"image\",{\"src\":null,\"width\":null,\"height\":null}]],\"markups\":[],\"sections\":[[1,\"p\",[[0,[],0,\"Hello World!\"]]],[10,0],[1,\"p\",[]],[1,\"p\",[[0,[],0,\"Custom image:\"]]],[1,\"p\",[]],[10,1],[1,\"p\",[]]]}',1615502935575,'2021-03-11 14:48:55'),('604aa1b77136a9c40c97b92b','604a9e1ac9b0f6bf8cfeabbf','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[[\"image\",{\"src\":\"https://images.unsplash.com/photo-1568162603664-fcd658421851?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMTc3M3wwfDF8c2VhcmNofDV8fGJlYXJ8ZW58MHx8fHwxNjE1NTAyODgx&ixlib=rb-1.2.1&q=80&w=2000\",\"width\":3832,\"height\":2848,\"caption\":\"Photo by <a href=\\\"https://unsplash.com/@binkabonka?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit\\\">Becca</a> / <a href=\\\"https://unsplash.com/?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit\\\">Unsplash</a>\",\"alt\":\"bear\",\"cardWidth\":\"full\"}],[\"image\",{\"src\":\"https://christhorntonsf-blog.sfo3.cdn.digitaloceanspaces.com/2021/03/treeber.jpeg\",\"width\":727,\"height\":960}]],\"markups\":[],\"sections\":[[1,\"p\",[[0,[],0,\"Hello World!\"]]],[10,0],[1,\"p\",[]],[1,\"p\",[[0,[],0,\"Custom image:\"]]],[1,\"p\",[]],[10,1],[1,\"p\",[]]]}',1615503799120,'2021-03-11 15:03:19');
/*!40000 ALTER TABLE `mobiledoc_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` varchar(24) NOT NULL,
  `name` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `action_type` varchar(50) NOT NULL,
  `object_id` varchar(24) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES ('604a8e0a7bd272a2720d88f4','Export database','db','exportContent',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88f5','Import database','db','importContent',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88f6','Delete all content','db','deleteAllContent',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88f7','Send mail','mail','send',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88f8','Browse notifications','notification','browse',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88f9','Add notifications','notification','add',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88fa','Delete notifications','notification','destroy',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88fb','Browse posts','post','browse',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88fc','Read posts','post','read',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88fd','Edit posts','post','edit',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88fe','Add posts','post','add',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88ff','Delete posts','post','destroy',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8900','Browse settings','setting','browse',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8901','Read settings','setting','read',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8902','Edit settings','setting','edit',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8903','Generate slugs','slug','generate',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8904','Browse tags','tag','browse',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8905','Read tags','tag','read',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8906','Edit tags','tag','edit',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8907','Add tags','tag','add',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8908','Delete tags','tag','destroy',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8909','Browse themes','theme','browse',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d890a','Edit themes','theme','edit',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d890b','Activate themes','theme','activate',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d890c','Upload themes','theme','add',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d890d','Download themes','theme','read',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d890e','Delete themes','theme','destroy',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d890f','Browse users','user','browse',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8910','Read users','user','read',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8911','Edit users','user','edit',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8912','Add users','user','add',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8913','Delete users','user','destroy',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8914','Assign a role','role','assign',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8915','Browse roles','role','browse',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8916','Browse invites','invite','browse',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8917','Read invites','invite','read',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8918','Edit invites','invite','edit',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8919','Add invites','invite','add',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d891a','Delete invites','invite','destroy',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d891b','Download redirects','redirect','download',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d891c','Upload redirects','redirect','upload',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d891d','Add webhooks','webhook','add',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d891e','Edit webhooks','webhook','edit',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d891f','Delete webhooks','webhook','destroy',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8920','Browse integrations','integration','browse',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8921','Read integrations','integration','read',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8922','Edit integrations','integration','edit',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8923','Add integrations','integration','add',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8924','Delete integrations','integration','destroy',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8925','Browse API keys','api_key','browse',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8926','Read API keys','api_key','read',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8927','Edit API keys','api_key','edit',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8928','Add API keys','api_key','add',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8929','Delete API keys','api_key','destroy',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d892a','Browse Actions','action','browse',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d892b','Browse Members','member','browse',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d892c','Read Members','member','read',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d892d','Edit Members','member','edit',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d892e','Add Members','member','add',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d892f','Delete Members','member','destroy',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8930','Publish posts','post','publish',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8931','Backup database','db','backupContent',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8932','Email preview','email_preview','read',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8933','Send test email','email_preview','sendTestEmail',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8934','Browse emails','email','browse',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8935','Read emails','email','read',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8936','Retry emails','email','retry',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8937','Browse labels','label','browse',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8938','Read labels','label','read',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8939','Edit labels','label','edit',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d893a','Add labels','label','add',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d893b','Delete labels','label','destroy',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d893c','Read member signin urls','member_signin_url','read',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d893d','Read identities','identity','read',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d893e','Auth Stripe Connect for Members','members_stripe_connect','auth',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d893f','Browse snippets','snippet','browse',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8940','Read snippets','snippet','read',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8941','Edit snippets','snippet','edit',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8942','Add snippets','snippet','add',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d8943','Delete snippets','snippet','destroy',NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_roles`
--

DROP TABLE IF EXISTS `permissions_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions_roles` (
  `id` varchar(24) NOT NULL,
  `role_id` varchar(24) NOT NULL,
  `permission_id` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_roles`
--

LOCK TABLES `permissions_roles` WRITE;
/*!40000 ALTER TABLE `permissions_roles` DISABLE KEYS */;
INSERT INTO `permissions_roles` VALUES ('604a8e0b7bd272a2720d8959','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d88f4'),('604a8e0b7bd272a2720d895a','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d88f5'),('604a8e0b7bd272a2720d895b','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d88f6'),('604a8e0b7bd272a2720d895c','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8931'),('604a8e0b7bd272a2720d895d','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d88f7'),('604a8e0b7bd272a2720d895e','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d88f8'),('604a8e0b7bd272a2720d895f','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d88f9'),('604a8e0b7bd272a2720d8960','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d88fa'),('604a8e0b7bd272a2720d8961','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d88fb'),('604a8e0b7bd272a2720d8962','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d88fc'),('604a8e0b7bd272a2720d8963','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d88fd'),('604a8e0b7bd272a2720d8964','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d88fe'),('604a8e0b7bd272a2720d8965','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d88ff'),('604a8e0b7bd272a2720d8966','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8930'),('604a8e0b7bd272a2720d8967','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8900'),('604a8e0b7bd272a2720d8968','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8901'),('604a8e0b7bd272a2720d8969','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8902'),('604a8e0b7bd272a2720d896a','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8903'),('604a8e0b7bd272a2720d896b','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8904'),('604a8e0b7bd272a2720d896c','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8905'),('604a8e0b7bd272a2720d896d','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8906'),('604a8e0b7bd272a2720d896e','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8907'),('604a8e0b7bd272a2720d896f','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8908'),('604a8e0b7bd272a2720d8970','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8909'),('604a8e0b7bd272a2720d8971','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d890a'),('604a8e0b7bd272a2720d8972','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d890b'),('604a8e0b7bd272a2720d8973','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d890c'),('604a8e0b7bd272a2720d8974','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d890d'),('604a8e0b7bd272a2720d8975','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d890e'),('604a8e0b7bd272a2720d8976','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d890f'),('604a8e0b7bd272a2720d8977','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8910'),('604a8e0b7bd272a2720d8978','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8911'),('604a8e0b7bd272a2720d8979','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8912'),('604a8e0b7bd272a2720d897a','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8913'),('604a8e0b7bd272a2720d897b','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8914'),('604a8e0b7bd272a2720d897c','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8915'),('604a8e0b7bd272a2720d897d','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8916'),('604a8e0b7bd272a2720d897e','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8917'),('604a8e0b7bd272a2720d897f','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8918'),('604a8e0b7bd272a2720d8980','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8919'),('604a8e0b7bd272a2720d8981','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d891a'),('604a8e0b7bd272a2720d8982','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d891b'),('604a8e0b7bd272a2720d8983','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d891c'),('604a8e0b7bd272a2720d8984','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d891d'),('604a8e0b7bd272a2720d8985','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d891e'),('604a8e0b7bd272a2720d8986','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d891f'),('604a8e0b7bd272a2720d8987','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8920'),('604a8e0b7bd272a2720d8988','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8921'),('604a8e0b7bd272a2720d8989','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8922'),('604a8e0b7bd272a2720d898a','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8923'),('604a8e0b7bd272a2720d898b','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8924'),('604a8e0b7bd272a2720d898c','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8925'),('604a8e0b7bd272a2720d898d','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8926'),('604a8e0b7bd272a2720d898e','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8927'),('604a8e0b7bd272a2720d898f','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8928'),('604a8e0b7bd272a2720d8990','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8929'),('604a8e0b7bd272a2720d8991','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d892a'),('604a8e0b7bd272a2720d8992','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d892b'),('604a8e0b7bd272a2720d8993','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d892c'),('604a8e0b7bd272a2720d8994','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d892d'),('604a8e0b7bd272a2720d8995','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d892e'),('604a8e0b7bd272a2720d8996','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d892f'),('604a8e0b7bd272a2720d8997','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8937'),('604a8e0b7bd272a2720d8998','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8938'),('604a8e0b7bd272a2720d8999','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8939'),('604a8e0b7bd272a2720d899a','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d893a'),('604a8e0b7bd272a2720d899b','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d893b'),('604a8e0b7bd272a2720d899c','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8932'),('604a8e0b7bd272a2720d899d','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8933'),('604a8e0b7bd272a2720d899e','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8934'),('604a8e0b7bd272a2720d899f','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8935'),('604a8e0b7bd272a2720d89a0','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8936'),('604a8e0b7bd272a2720d89a1','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d893c'),('604a8e0b7bd272a2720d89a2','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d893f'),('604a8e0b7bd272a2720d89a3','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8940'),('604a8e0b7bd272a2720d89a4','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8941'),('604a8e0b7bd272a2720d89a5','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8942'),('604a8e0b7bd272a2720d89a6','604a8e0a7bd272a2720d88ec','604a8e0a7bd272a2720d8943'),('604a8e0b7bd272a2720d89a7','604a8e0a7bd272a2720d88f2','604a8e0a7bd272a2720d88f4'),('604a8e0b7bd272a2720d89a8','604a8e0a7bd272a2720d88f2','604a8e0a7bd272a2720d88f5'),('604a8e0b7bd272a2720d89a9','604a8e0a7bd272a2720d88f2','604a8e0a7bd272a2720d88f6'),('604a8e0b7bd272a2720d89aa','604a8e0a7bd272a2720d88f2','604a8e0a7bd272a2720d8931'),('604a8e0b7bd272a2720d89ab','604a8e0a7bd272a2720d88f3','604a8e0a7bd272a2720d8930'),('604a8e0b7bd272a2720d89ac','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d88f7'),('604a8e0b7bd272a2720d89ad','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d88f8'),('604a8e0b7bd272a2720d89ae','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d88f9'),('604a8e0b7bd272a2720d89af','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d88fa'),('604a8e0b7bd272a2720d89b0','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d88fb'),('604a8e0b7bd272a2720d89b1','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d88fc'),('604a8e0b7bd272a2720d89b2','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d88fd'),('604a8e0b7bd272a2720d89b3','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d88fe'),('604a8e0b7bd272a2720d89b4','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d88ff'),('604a8e0b7bd272a2720d89b5','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8930'),('604a8e0b7bd272a2720d89b6','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8900'),('604a8e0b7bd272a2720d89b7','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8901'),('604a8e0b7bd272a2720d89b8','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8902'),('604a8e0b7bd272a2720d89b9','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8903'),('604a8e0b7bd272a2720d89ba','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8904'),('604a8e0b7bd272a2720d89bb','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8905'),('604a8e0b7bd272a2720d89bc','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8906'),('604a8e0b7bd272a2720d89bd','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8907'),('604a8e0b7bd272a2720d89be','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8908'),('604a8e0b7bd272a2720d89bf','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8909'),('604a8e0b7bd272a2720d89c0','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d890a'),('604a8e0b7bd272a2720d89c1','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d890b'),('604a8e0b7bd272a2720d89c2','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d890c'),('604a8e0b7bd272a2720d89c3','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d890d'),('604a8e0b7bd272a2720d89c4','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d890e'),('604a8e0b7bd272a2720d89c5','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d890f'),('604a8e0b7bd272a2720d89c6','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8910'),('604a8e0b7bd272a2720d89c7','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8911'),('604a8e0b7bd272a2720d89c8','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8912'),('604a8e0b7bd272a2720d89c9','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8913'),('604a8e0b7bd272a2720d89ca','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8914'),('604a8e0b7bd272a2720d89cb','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8915'),('604a8e0b7bd272a2720d89cc','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8916'),('604a8e0b7bd272a2720d89cd','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8917'),('604a8e0b7bd272a2720d89ce','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8918'),('604a8e0b7bd272a2720d89cf','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8919'),('604a8e0b7bd272a2720d89d0','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d891a'),('604a8e0b7bd272a2720d89d1','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d891b'),('604a8e0b7bd272a2720d89d2','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d891c'),('604a8e0b7bd272a2720d89d3','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d891d'),('604a8e0b7bd272a2720d89d4','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d891e'),('604a8e0b7bd272a2720d89d5','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d891f'),('604a8e0b7bd272a2720d89d6','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d892a'),('604a8e0b7bd272a2720d89d7','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d892b'),('604a8e0b7bd272a2720d89d8','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d892c'),('604a8e0b7bd272a2720d89d9','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d892d'),('604a8e0b7bd272a2720d89da','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d892e'),('604a8e0b7bd272a2720d89db','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d892f'),('604a8e0b7bd272a2720d89dc','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8937'),('604a8e0b7bd272a2720d89dd','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8938'),('604a8e0b7bd272a2720d89de','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8939'),('604a8e0b7bd272a2720d89df','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d893a'),('604a8e0b7bd272a2720d89e0','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d893b'),('604a8e0b7bd272a2720d89e1','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8932'),('604a8e0b7bd272a2720d89e2','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8933'),('604a8e0b7bd272a2720d89e3','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8934'),('604a8e0b7bd272a2720d89e4','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8935'),('604a8e0b7bd272a2720d89e5','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8936'),('604a8e0b7bd272a2720d89e6','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d893f'),('604a8e0b7bd272a2720d89e7','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8940'),('604a8e0b7bd272a2720d89e8','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8941'),('604a8e0b7bd272a2720d89e9','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8942'),('604a8e0b7bd272a2720d89ea','604a8e0a7bd272a2720d88f1','604a8e0a7bd272a2720d8943'),('604a8e0b7bd272a2720d89eb','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d88f8'),('604a8e0b7bd272a2720d89ec','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d88f9'),('604a8e0b7bd272a2720d89ed','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d88fa'),('604a8e0b7bd272a2720d89ee','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d88fb'),('604a8e0b7bd272a2720d89ef','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d88fc'),('604a8e0b7bd272a2720d89f0','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d88fd'),('604a8e0b7bd272a2720d89f1','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d88fe'),('604a8e0b7bd272a2720d89f2','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d88ff'),('604a8e0b7bd272a2720d89f3','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8930'),('604a8e0b7bd272a2720d89f4','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8900'),('604a8e0b7bd272a2720d89f5','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8901'),('604a8e0b7bd272a2720d89f6','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8903'),('604a8e0b7bd272a2720d89f7','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8904'),('604a8e0b7bd272a2720d89f8','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8905'),('604a8e0b7bd272a2720d89f9','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8906'),('604a8e0b7bd272a2720d89fa','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8907'),('604a8e0b7bd272a2720d89fb','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8908'),('604a8e0b7bd272a2720d89fc','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d890f'),('604a8e0b7bd272a2720d89fd','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8910'),('604a8e0b7bd272a2720d89fe','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8911'),('604a8e0b7bd272a2720d89ff','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8912'),('604a8e0b7bd272a2720d8a00','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8913'),('604a8e0b7bd272a2720d8a01','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8914'),('604a8e0b7bd272a2720d8a02','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8915'),('604a8e0b7bd272a2720d8a03','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8916'),('604a8e0b7bd272a2720d8a04','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8917'),('604a8e0b7bd272a2720d8a05','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8918'),('604a8e0b7bd272a2720d8a06','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8919'),('604a8e0b7bd272a2720d8a07','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d891a'),('604a8e0b7bd272a2720d8a08','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8909'),('604a8e0b7bd272a2720d8a09','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8932'),('604a8e0b7bd272a2720d8a0a','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8933'),('604a8e0b7bd272a2720d8a0b','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8934'),('604a8e0b7bd272a2720d8a0c','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8935'),('604a8e0b7bd272a2720d8a0d','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8936'),('604a8e0b7bd272a2720d8a0e','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d893f'),('604a8e0b7bd272a2720d8a0f','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8940'),('604a8e0b7bd272a2720d8a10','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8941'),('604a8e0b7bd272a2720d8a11','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8942'),('604a8e0b7bd272a2720d8a12','604a8e0a7bd272a2720d88ed','604a8e0a7bd272a2720d8943'),('604a8e0b7bd272a2720d8a13','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d88fb'),('604a8e0b7bd272a2720d8a14','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d88fc'),('604a8e0b7bd272a2720d8a15','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d88fe'),('604a8e0b7bd272a2720d8a16','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d8900'),('604a8e0b7bd272a2720d8a17','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d8901'),('604a8e0b7bd272a2720d8a18','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d8903'),('604a8e0b7bd272a2720d8a19','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d8904'),('604a8e0b7bd272a2720d8a1a','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d8905'),('604a8e0b7bd272a2720d8a1b','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d8907'),('604a8e0b7bd272a2720d8a1c','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d890f'),('604a8e0b7bd272a2720d8a1d','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d8910'),('604a8e0b7bd272a2720d8a1e','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d8915'),('604a8e0b7bd272a2720d8a1f','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d8909'),('604a8e0b7bd272a2720d8a20','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d8932'),('604a8e0b7bd272a2720d8a21','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d8935'),('604a8e0b7bd272a2720d8a22','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d893f'),('604a8e0b7bd272a2720d8a23','604a8e0a7bd272a2720d88ee','604a8e0a7bd272a2720d8940'),('604a8e0b7bd272a2720d8a24','604a8e0a7bd272a2720d88ef','604a8e0a7bd272a2720d88fb'),('604a8e0b7bd272a2720d8a25','604a8e0a7bd272a2720d88ef','604a8e0a7bd272a2720d88fc'),('604a8e0b7bd272a2720d8a26','604a8e0a7bd272a2720d88ef','604a8e0a7bd272a2720d88fe'),('604a8e0b7bd272a2720d8a27','604a8e0a7bd272a2720d88ef','604a8e0a7bd272a2720d8900'),('604a8e0b7bd272a2720d8a28','604a8e0a7bd272a2720d88ef','604a8e0a7bd272a2720d8901'),('604a8e0b7bd272a2720d8a29','604a8e0a7bd272a2720d88ef','604a8e0a7bd272a2720d8903'),('604a8e0b7bd272a2720d8a2a','604a8e0a7bd272a2720d88ef','604a8e0a7bd272a2720d8904'),('604a8e0b7bd272a2720d8a2b','604a8e0a7bd272a2720d88ef','604a8e0a7bd272a2720d8905'),('604a8e0b7bd272a2720d8a2c','604a8e0a7bd272a2720d88ef','604a8e0a7bd272a2720d890f'),('604a8e0b7bd272a2720d8a2d','604a8e0a7bd272a2720d88ef','604a8e0a7bd272a2720d8910'),('604a8e0b7bd272a2720d8a2e','604a8e0a7bd272a2720d88ef','604a8e0a7bd272a2720d8915'),('604a8e0b7bd272a2720d8a2f','604a8e0a7bd272a2720d88ef','604a8e0a7bd272a2720d8909'),('604a8e0b7bd272a2720d8a30','604a8e0a7bd272a2720d88ef','604a8e0a7bd272a2720d8932'),('604a8e0b7bd272a2720d8a31','604a8e0a7bd272a2720d88ef','604a8e0a7bd272a2720d8935'),('604a8e0b7bd272a2720d8a32','604a8e0a7bd272a2720d88ef','604a8e0a7bd272a2720d893f'),('604a8e0b7bd272a2720d8a33','604a8e0a7bd272a2720d88ef','604a8e0a7bd272a2720d8940');
/*!40000 ALTER TABLE `permissions_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_users`
--

DROP TABLE IF EXISTS `permissions_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions_users` (
  `id` varchar(24) NOT NULL,
  `user_id` varchar(24) NOT NULL,
  `permission_id` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_users`
--

LOCK TABLES `permissions_users` WRITE;
/*!40000 ALTER TABLE `permissions_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` varchar(24) NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `title` varchar(2000) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `mobiledoc` longtext,
  `html` longtext,
  `comment_id` varchar(50) DEFAULT NULL,
  `plaintext` longtext,
  `feature_image` varchar(2000) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT 'post',
  `status` varchar(50) NOT NULL DEFAULT 'draft',
  `locale` varchar(6) DEFAULT NULL,
  `visibility` varchar(50) NOT NULL DEFAULT 'public',
  `email_recipient_filter` varchar(50) NOT NULL DEFAULT 'none',
  `author_id` varchar(24) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `published_by` varchar(24) DEFAULT NULL,
  `custom_excerpt` varchar(2000) DEFAULT NULL,
  `codeinjection_head` text,
  `codeinjection_foot` text,
  `custom_template` varchar(100) DEFAULT NULL,
  `canonical_url` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_type_unique` (`slug`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES ('604a8e0b7bd272a2720d8945','1f77c296-625e-425e-a457-9a604ef3ab1e','Creating a custom theme','themes','{\"version\":\"0.3.1\",\"atoms\":[[\"soft-return\",\"\",{}]],\"cards\":[[\"image\",{\"src\":\"https://static.ghost.org/v3.0.0/images/theme-marketplace.png\",\"caption\":\"Anyone can write a completely custom Ghost theme with some solid knowledge of HTML and CSS\",\"alt\":\"Ghost theme marketplace screenshot\"}]],\"markups\":[[\"a\",[\"href\",\"https://ghost.org/marketplace/\"]],[\"code\"],[\"a\",[\"href\",\"https://github.com/TryGhost/Casper\"]],[\"a\",[\"href\",\"https://ghost.org/docs/themes/\"]],[\"a\",[\"href\",\"https://github.com/TryGhost/Starter/\"]],[\"strong\"],[\"a\",[\"href\",\"https://forum.ghost.org/c/themes\"]]],\"sections\":[[1,\"h2\",[[0,[],0,\"Ghost themes\"]]],[1,\"p\",[[0,[],0,\"Ghost comes with a default theme called Casper, which is designed to be a clean, readable publication layout and can be easily adapted for most purposes.\"]]],[1,\"p\",[[0,[],0,\"If you need something a little more customised, it\'s entirely possible to build on top of existing open source themes, or to build your own from scratch. Rather than giving you a few basic settings which act as a poor proxy for code, we just let you write code.\"]]],[1,\"h2\",[[0,[],0,\"Marketplace\"]]],[1,\"p\",[[0,[],0,\"There are a huge range of both free and premium pre-built themes which you can download from the \"],[0,[0],1,\"Ghost Theme Marketplace\"],[0,[],0,\":\"]]],[10,0],[1,\"h2\",[[0,[],0,\"Theme development\"]]],[1,\"p\",[[0,[],0,\"Ghost themes are written with a templating language called handlebars, which has a set of dynamic helpers to insert your data into template files. For example: \"],[0,[1],1,\"{{author.name}}\"],[0,[],0,\" outputs the name of the current author.\"]]],[1,\"p\",[[0,[],0,\"The best way to learn how to write your own Ghost theme is to have a look at \"],[0,[2],1,\"the source code for Casper\"],[0,[],0,\", which is heavily commented and should give you a sense of how everything fits together.\"],[1,[],0,0]]],[3,\"ul\",[[[0,[1],1,\"default.hbs\"],[0,[],0,\" is the main template file, all contexts will load inside this file unless specifically told to use a different template.\"]],[[0,[1],1,\"post.hbs\"],[0,[],0,\" is the file used in the context of viewing a post.\"]],[[0,[1],1,\"index.hbs\"],[0,[],0,\" is the file used in the context of viewing the home page.\"]],[[0,[],0,\"and so on\"]]]],[1,\"p\",[[0,[],0,\"We\'ve got \"],[0,[3],1,\"full and extensive theme documentation\"],[0,[],0,\" which outlines every template file, context and helper that you can use. You can also get started with our useful \"],[0,[4],1,\"starter theme\"],[0,[],0,\", which includes the most common foundations and components required to build your own theme.\"]]],[1,\"blockquote\",[[0,[],0,\"If you want to chat with other people making Ghost themes to get any advice or help, there\'s also a \"],[0,[5],1,\"themes\"],[0,[],0,\" section on our \"],[0,[6],1,\"public Ghost forum\"],[0,[],0,\".\"]]]],\"ghostVersion\":\"3.0\"}','<h2 id=\"ghost-themes\">Ghost themes</h2><p>Ghost comes with a default theme called Casper, which is designed to be a clean, readable publication layout and can be easily adapted for most purposes.</p><p>If you need something a little more customised, it\'s entirely possible to build on top of existing open source themes, or to build your own from scratch. Rather than giving you a few basic settings which act as a poor proxy for code, we just let you write code.</p><h2 id=\"marketplace\">Marketplace</h2><p>There are a huge range of both free and premium pre-built themes which you can download from the <a href=\"https://ghost.org/marketplace/\">Ghost Theme Marketplace</a>:</p><figure class=\"kg-card kg-image-card kg-card-hascaption\"><img src=\"https://static.ghost.org/v3.0.0/images/theme-marketplace.png\" class=\"kg-image\" alt=\"Ghost theme marketplace screenshot\" loading=\"lazy\"><figcaption>Anyone can write a completely custom Ghost theme with some solid knowledge of HTML and CSS</figcaption></figure><h2 id=\"theme-development\">Theme development</h2><p>Ghost themes are written with a templating language called handlebars, which has a set of dynamic helpers to insert your data into template files. For example: <code>{{author.name}}</code> outputs the name of the current author.</p><p>The best way to learn how to write your own Ghost theme is to have a look at <a href=\"https://github.com/TryGhost/Casper\">the source code for Casper</a>, which is heavily commented and should give you a sense of how everything fits together.<br></p><ul><li><code>default.hbs</code> is the main template file, all contexts will load inside this file unless specifically told to use a different template.</li><li><code>post.hbs</code> is the file used in the context of viewing a post.</li><li><code>index.hbs</code> is the file used in the context of viewing the home page.</li><li>and so on</li></ul><p>We\'ve got <a href=\"https://ghost.org/docs/themes/\">full and extensive theme documentation</a> which outlines every template file, context and helper that you can use. You can also get started with our useful <a href=\"https://github.com/TryGhost/Starter/\">starter theme</a>, which includes the most common foundations and components required to build your own theme.</p><blockquote>If you want to chat with other people making Ghost themes to get any advice or help, there\'s also a <strong>themes</strong> section on our <a href=\"https://forum.ghost.org/c/themes\">public Ghost forum</a>.</blockquote>','604a8e0b7bd272a2720d8945','Ghost themes\nGhost comes with a default theme called Casper, which is designed to be a clean,\nreadable publication layout and can be easily adapted for most purposes.\n\nIf you need something a little more customised, it\'s entirely possible to build\non top of existing open source themes, or to build your own from scratch. Rather\nthan giving you a few basic settings which act as a poor proxy for code, we just\nlet you write code.\n\nMarketplace\nThere are a huge range of both free and premium pre-built themes which you can\ndownload from the Ghost Theme Marketplace [https://ghost.org/marketplace/]:\n\nAnyone can write a completely custom Ghost theme with some solid knowledge of\nHTML and CSSTheme development\nGhost themes are written with a templating language called handlebars, which has\na set of dynamic helpers to insert your data into template files. For example: \n{{author.name}} outputs the name of the current author.\n\nThe best way to learn how to write your own Ghost theme is to have a look at \nthe\nsource code for Casper [https://github.com/TryGhost/Casper], which is heavily\ncommented and should give you a sense of how everything fits together.\n\n\n * default.hbs is the main template file, all contexts will load inside this\n   file unless specifically told to use a different template.\n * post.hbs is the file used in the context of viewing a post.\n * index.hbs is the file used in the context of viewing the home page.\n * and so on\n\nWe\'ve got full and extensive theme documentation\n[https://ghost.org/docs/themes/] which outlines every template file, context and\nhelper that you can use. You can also get started with our useful starter theme\n[https://github.com/TryGhost/Starter/], which includes the most common\nfoundations and components required to build your own theme.\n\n> If you want to chat with other people making Ghost themes to get any advice or\nhelp, there\'s also a themes section on our public Ghost forum\n[https://forum.ghost.org/c/themes].','https://static.ghost.org/v3.0.0/images/creating-a-custom-theme.png',0,'post','published',NULL,'public','none','5951f5fca366002ebd5dbef7','2021-03-11 13:39:23','1','2021-03-11 13:39:23','1','2021-03-11 13:39:23','1','Ghost comes with a beautiful default theme designed for publishers which can easily be adapted for most purposes, or you can build a custom theme to suit your needs.',NULL,NULL,NULL,NULL),('604a8e0b7bd272a2720d8947','bd7e3ea0-5aec-4d28-ba10-26a339dbc3f3','Apps & integrations','apps-integrations','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[[\"image\",{\"src\":\"https://static.ghost.org/v3.0.0/images/integrations-icons.png\",\"cardWidth\":\"full\"}],[\"markdown\",{\"markdown\":\"<script src=\\\"https://zapier.com/apps/embed/widget.js?services=Ghost&container=true&limit=8\\\"></script>\\n\"}],[\"image\",{\"src\":\"https://static.ghost.org/v3.0.0/images/integrations-and-webhooks-in-ghost.png\",\"alt\":\"Screenshot of custom integrations with webhooks in Ghost Admin\",\"cardWidth\":\"\"}]],\"markups\":[[\"a\",[\"href\",\"https://ghost.org/integrations/\"]],[\"a\",[\"href\",\"https://zapier.com\"]],[\"strong\"],[\"a\",[\"href\",\"https://ghost.org/docs/content-api/\"]],[\"a\",[\"href\",\"__GHOST_URL__/themes/\"]]],\"sections\":[[1,\"h2\",[[0,[],0,\"Work with your existing tools\"]]],[1,\"p\",[[0,[],0,\"It\'s possible to connect your Ghost site to hundreds of the most popular apps and tools using integrations that take no more than a few minutes to setup.\"]]],[1,\"p\",[[0,[],0,\"Whether you need to automate workflows, connect your email list, build a community or embed products from your ecommerce store, our \"],[0,[0],1,\"integrations library\"],[0,[],0,\" has got it all covered with hundreds of tutorials.\"]]],[10,0],[1,\"h2\",[[0,[],0,\"Zapier\"]]],[1,\"p\",[[0,[],0,\"On top of this, you can connect your Ghost site to more than 1,000 external services using the official integration with \"],[0,[1],1,\"Zapier\"],[0,[],0,\".\"]]],[1,\"p\",[[0,[],0,\"Zapier sets up automations with Triggers and Actions, which allows you to create and customise a wide range of connected applications.\"]]],[1,\"blockquote\",[[0,[2],1,\"Example\"],[0,[],0,\": When someone new subscribes to a newsletter on a Ghost site (Trigger) then the contact information is automatically pushed into MailChimp (Action).\"]]],[1,\"p\",[[0,[2],1,\"Here are the most popular Ghost<>Zapier automation templates:\"],[0,[],0,\" \"]]],[10,1],[1,\"h2\",[[0,[],0,\"Custom integrations\"]]],[1,\"p\",[[0,[],0,\"At the heart of Ghost sits a robust JSON API – designed to create, manage and retrieve content with ease. \"]]],[1,\"p\",[[0,[],0,\"It\'s possible to create custom Ghost integrations with dedicated API keys and webhooks from the Integrations page within Ghost Admin. \"]]],[10,2],[1,\"p\",[[0,[],0,\"Beyond that, the API allows you to build entirely custom publishing apps. You can send content from your favourite desktop editor, build a custom interface for handling editorial workflow or use Ghost as a full headless CMS with a custom front-end.\"]]],[1,\"p\",[[0,[],0,\"The Ghost API is \"],[0,[3],1,\"thoroughly documented\"],[0,[],0,\" and straightforward to work with for developers of almost any level. \"]]],[1,\"h2\",[[0,[],0,\"Final step: Themes\"]]],[1,\"p\",[[0,[],0,\"Alright, on to the last post in our welcome-series! If you\'re curious about creating your own Ghost theme from scratch, \"],[0,[4],1,\"find out how that works\"],[0,[],0,\".\"]]]],\"ghostVersion\":\"3.0\"}','<h2 id=\"work-with-your-existing-tools\">Work with your existing tools</h2><p>It\'s possible to connect your Ghost site to hundreds of the most popular apps and tools using integrations that take no more than a few minutes to setup.</p><p>Whether you need to automate workflows, connect your email list, build a community or embed products from your ecommerce store, our <a href=\"https://ghost.org/integrations/\">integrations library</a> has got it all covered with hundreds of tutorials.</p><figure class=\"kg-card kg-image-card kg-width-full\"><img src=\"https://static.ghost.org/v3.0.0/images/integrations-icons.png\" class=\"kg-image\" alt loading=\"lazy\"></figure><h2 id=\"zapier\">Zapier</h2><p>On top of this, you can connect your Ghost site to more than 1,000 external services using the official integration with <a href=\"https://zapier.com\">Zapier</a>.</p><p>Zapier sets up automations with Triggers and Actions, which allows you to create and customise a wide range of connected applications.</p><blockquote><strong>Example</strong>: When someone new subscribes to a newsletter on a Ghost site (Trigger) then the contact information is automatically pushed into MailChimp (Action).</blockquote><p><strong>Here are the most popular Ghost&lt;&gt;Zapier automation templates:</strong> </p><!--kg-card-begin: markdown--><script src=\"https://zapier.com/apps/embed/widget.js?services=Ghost&container=true&limit=8\"></script>\n<!--kg-card-end: markdown--><h2 id=\"custom-integrations\">Custom integrations</h2><p>At the heart of Ghost sits a robust JSON API – designed to create, manage and retrieve content with ease. </p><p>It\'s possible to create custom Ghost integrations with dedicated API keys and webhooks from the Integrations page within Ghost Admin. </p><figure class=\"kg-card kg-image-card\"><img src=\"https://static.ghost.org/v3.0.0/images/integrations-and-webhooks-in-ghost.png\" class=\"kg-image\" alt=\"Screenshot of custom integrations with webhooks in Ghost Admin\" loading=\"lazy\"></figure><p>Beyond that, the API allows you to build entirely custom publishing apps. You can send content from your favourite desktop editor, build a custom interface for handling editorial workflow or use Ghost as a full headless CMS with a custom front-end.</p><p>The Ghost API is <a href=\"https://ghost.org/docs/content-api/\">thoroughly documented</a> and straightforward to work with for developers of almost any level. </p><h2 id=\"final-step-themes\">Final step: Themes</h2><p>Alright, on to the last post in our welcome-series! If you\'re curious about creating your own Ghost theme from scratch, <a href=\"__GHOST_URL__/themes/\">find out how that works</a>.</p>','604a8e0b7bd272a2720d8947','Work with your existing tools\nIt\'s possible to connect your Ghost site to hundreds of the most popular apps\nand tools using integrations that take no more than a few minutes to setup.\n\nWhether you need to automate workflows, connect your email list, build a\ncommunity or embed products from your ecommerce store, our integrations library\n[https://ghost.org/integrations/] has got it all covered with hundreds of\ntutorials.\n\nZapier\nOn top of this, you can connect your Ghost site to more than 1,000 external\nservices using the official integration with Zapier [https://zapier.com].\n\nZapier sets up automations with Triggers and Actions, which allows you to create\nand customise a wide range of connected applications.\n\n> Example: When someone new subscribes to a newsletter on a Ghost site (Trigger)\nthen the contact information is automatically pushed into MailChimp (Action).\nHere are the most popular Ghost<>Zapier automation templates: \n\nCustom integrations\nAt the heart of Ghost sits a robust JSON API – designed to create, manage and\nretrieve content with ease. \n\nIt\'s possible to create custom Ghost integrations with dedicated API keys and\nwebhooks from the Integrations page within Ghost Admin. \n\nBeyond that, the API allows you to build entirely custom publishing apps. You\ncan send content from your favourite desktop editor, build a custom interface\nfor handling editorial workflow or use Ghost as a full headless CMS with a\ncustom front-end.\n\nThe Ghost API is thoroughly documented [https://ghost.org/docs/content-api/] and\nstraightforward to work with for developers of almost any level. \n\nFinal step: Themes\nAlright, on to the last post in our welcome-series! If you\'re curious about\ncreating your own Ghost theme from scratch, find out how that works\n[__GHOST_URL__/themes/].','https://static.ghost.org/v3.0.0/images/app-integrations.png',0,'post','published',NULL,'public','none','5951f5fca366002ebd5dbef7','2021-03-11 13:39:23','1','2021-03-11 13:39:23','1','2021-03-11 13:39:24','1','Work with all your favourite apps and tools or create your own custom integrations using the Ghost API.',NULL,NULL,NULL,NULL),('604a8e0b7bd272a2720d8949','03c206ab-11b9-42ed-81ea-31374c028218','Organising your content','organising-content','{\"version\":\"0.3.1\",\"atoms\":[[\"soft-return\",\"\",{}]],\"cards\":[],\"markups\":[[\"code\"],[\"em\"],[\"strong\"],[\"a\",[\"href\",\"https://ghost.org/docs/themes/\"]],[\"a\",[\"href\",\"http://yaml.org/spec/1.2/spec.html\",\"rel\",\"noreferrer nofollow noopener\"]],[\"a\",[\"href\",\"https://ghost.org/docs/themes/routing/\"]],[\"a\",[\"href\",\"__GHOST_URL__/apps-integrations/\"]]],\"sections\":[[1,\"h2\",[[0,[],0,\"Sensible tagging\"]]],[1,\"p\",[[0,[],0,\"You can think of tags like Gmail labels. By tagging posts with one or more keyword, you can organise articles into buckets of related content.\"]]],[1,\"p\",[[0,[],0,\"When you create content for your publication you can assign tags to help differentiate between categories of content. \"]]],[1,\"p\",[[0,[],0,\"For example you may tag some content with News and other content with Podcast, which would create two distinct categories of content listed on \"],[0,[0],1,\"/tag/news/\"],[0,[],0,\" and \"],[0,[0],1,\"/tag/podcast/\"],[0,[],0,\", respectively.\"]]],[1,\"p\",[[0,[],0,\"If you tag a post with both \"],[0,[0],1,\"News\"],[0,[],0,\" \"],[0,[1],1,\"and\"],[0,[],0,\" \"],[0,[0],1,\"Podcast\"],[0,[],0,\" - then it appears in both sections. Tag archives are like dedicated home-pages for each category of content that you have. They have their own pages, their own RSS feeds, and can support their own cover images and meta data.\"]]],[1,\"h3\",[[0,[],0,\"The primary tag\"]]],[1,\"p\",[[0,[],0,\"Inside the Ghost editor, you can drag and drop tags into a specific order. The first tag in the list is always given the most importance, and some themes will only display the primary tag (the first tag in the list) by default. \"]]],[1,\"blockquote\",[[0,[1,2],1,\"News\"],[0,[],1,\", Technology, Startup\"]]],[1,\"p\",[[0,[],0,\"So you can add the most important tag which you want to show up in your theme, but also add related tags which are less important.\"]]],[1,\"h3\",[[0,[],0,\"Private tags\"]]],[1,\"p\",[[0,[],0,\"Sometimes you may want to assign a post a specific tag, but you don\'t necessarily want that tag appearing in the theme or creating an archive page. In Ghost, hashtags are private and can be used for special styling.\"]]],[1,\"p\",[[0,[],0,\"For example, if you sometimes publish posts with video content - you might want your theme to adapt and get rid of the sidebar for these posts, to give more space for an embedded video to fill the screen. In this case, you could use private tags to tell your theme what to do.\"]]],[1,\"blockquote\",[[0,[1,2],1,\"News\"],[0,[],1,\", #video\"]]],[1,\"p\",[[0,[],0,\"Here, the theme would assign the post publicly displayed tags of News - but it would also keep a private record of the post being tagged with #video. In your theme, you could then look for private tags conditionally and give them special formatting. \"]]],[1,\"blockquote\",[[0,[1],0,\"You can find documentation for theme development techniques like this and many more over on Ghost\'s extensive \"],[0,[3],1,\"theme docs\"],[0,[],1,\".\"]]],[1,\"h2\",[[0,[],0,\"Dynamic routing\"]]],[1,\"p\",[[0,[],0,\"Dynamic routing gives you the ultimate freedom to build a custom publication to suit your needs. Routes are rules that map URL patterns to your content and templates. \"]]],[1,\"p\",[[0,[],0,\"You may not want content tagged with \"],[0,[0],1,\"News\"],[0,[],0,\" to exist on: \"],[0,[0],1,\"example.com/tag/news\"],[0,[],0,\". Instead, you want it to exist on \"],[0,[0],1,\"example.com/news\"],[0,[],0,\" .\"]]],[1,\"p\",[[0,[],0,\"In this case you can use dynamic routes to create customised collections of content on your site. It\'s also possible to use multiple templates in your theme to render each content type differently.\"]]],[1,\"p\",[[0,[],0,\"There are lots of use cases for dynamic routing with Ghost, here are a few common examples: \"]]],[3,\"ul\",[[[0,[],0,\"Setting a custom home page with its own template\"]],[[0,[],0,\"Having separate content hubs for blog and podcast, that render differently, and have custom RSS feeds to support two types of content\"]],[[0,[],0,\"Creating a founders column as a unique view, by filtering content created by specific authors\"]],[[0,[],0,\"Including dates in permalinks for your posts\"]],[[0,[],0,\"Setting posts to have a URL relative to their primary tag like \"],[0,[0],1,\"example.com/europe/story-title/\"],[1,[],0,0]]]],[1,\"blockquote\",[[0,[1],0,\"Dynamic routing can be configured in Ghost using \"],[0,[4],1,\"YAML\"],[0,[],0,\" files. Read our dynamic routing \"],[0,[5],1,\"documentation\"],[0,[],1,\" for further details.\"]]],[1,\"h2\",[[0,[],0,\"Next: Apps & Integrations\"]]],[1,\"p\",[[0,[],0,\"Work with all your favourite apps and tools using our \"],[0,[6],1,\"integrations\"],[0,[],0,\", or create your own custom integrations with webhooks.\"]]],[1,\"p\",[]]],\"ghostVersion\":\"3.0\"}','<h2 id=\"sensible-tagging\">Sensible tagging</h2><p>You can think of tags like Gmail labels. By tagging posts with one or more keyword, you can organise articles into buckets of related content.</p><p>When you create content for your publication you can assign tags to help differentiate between categories of content. </p><p>For example you may tag some content with News and other content with Podcast, which would create two distinct categories of content listed on <code>/tag/news/</code> and <code>/tag/podcast/</code>, respectively.</p><p>If you tag a post with both <code>News</code> <em>and</em> <code>Podcast</code> - then it appears in both sections. Tag archives are like dedicated home-pages for each category of content that you have. They have their own pages, their own RSS feeds, and can support their own cover images and meta data.</p><h3 id=\"the-primary-tag\">The primary tag</h3><p>Inside the Ghost editor, you can drag and drop tags into a specific order. The first tag in the list is always given the most importance, and some themes will only display the primary tag (the first tag in the list) by default. </p><blockquote><em><strong>News</strong>, Technology, Startup</em></blockquote><p>So you can add the most important tag which you want to show up in your theme, but also add related tags which are less important.</p><h3 id=\"private-tags\">Private tags</h3><p>Sometimes you may want to assign a post a specific tag, but you don\'t necessarily want that tag appearing in the theme or creating an archive page. In Ghost, hashtags are private and can be used for special styling.</p><p>For example, if you sometimes publish posts with video content - you might want your theme to adapt and get rid of the sidebar for these posts, to give more space for an embedded video to fill the screen. In this case, you could use private tags to tell your theme what to do.</p><blockquote><em><strong>News</strong>, #video</em></blockquote><p>Here, the theme would assign the post publicly displayed tags of News - but it would also keep a private record of the post being tagged with #video. In your theme, you could then look for private tags conditionally and give them special formatting. </p><blockquote><em>You can find documentation for theme development techniques like this and many more over on Ghost\'s extensive <a href=\"https://ghost.org/docs/themes/\">theme docs</a>.</em></blockquote><h2 id=\"dynamic-routing\">Dynamic routing</h2><p>Dynamic routing gives you the ultimate freedom to build a custom publication to suit your needs. Routes are rules that map URL patterns to your content and templates. </p><p>You may not want content tagged with <code>News</code> to exist on: <code>example.com/tag/news</code>. Instead, you want it to exist on <code>example.com/news</code> .</p><p>In this case you can use dynamic routes to create customised collections of content on your site. It\'s also possible to use multiple templates in your theme to render each content type differently.</p><p>There are lots of use cases for dynamic routing with Ghost, here are a few common examples: </p><ul><li>Setting a custom home page with its own template</li><li>Having separate content hubs for blog and podcast, that render differently, and have custom RSS feeds to support two types of content</li><li>Creating a founders column as a unique view, by filtering content created by specific authors</li><li>Including dates in permalinks for your posts</li><li>Setting posts to have a URL relative to their primary tag like <code>example.com/europe/story-title/</code><br></li></ul><blockquote><em>Dynamic routing can be configured in Ghost using <a href=\"http://yaml.org/spec/1.2/spec.html\" rel=\"noreferrer nofollow noopener\">YAML</a> files. Read our dynamic routing <a href=\"https://ghost.org/docs/themes/routing/\">documentation</a> for further details.</em></blockquote><h2 id=\"next-apps-integrations\">Next: Apps &amp; Integrations</h2><p>Work with all your favourite apps and tools using our <a href=\"__GHOST_URL__/apps-integrations/\">integrations</a>, or create your own custom integrations with webhooks.</p>','604a8e0b7bd272a2720d8949','Sensible tagging\nYou can think of tags like Gmail labels. By tagging posts with one or more\nkeyword, you can organise articles into buckets of related content.\n\nWhen you create content for your publication you can assign tags to help\ndifferentiate between categories of content. \n\nFor example you may tag some content with News and other content with Podcast,\nwhich would create two distinct categories of content listed on /tag/news/ and \n/tag/podcast/, respectively.\n\nIf you tag a post with both News and Podcast - then it appears in both sections.\nTag archives are like dedicated home-pages for each category of content that you\nhave. They have their own pages, their own RSS feeds, and can support their own\ncover images and meta data.\n\nThe primary tag\nInside the Ghost editor, you can drag and drop tags into a specific order. The\nfirst tag in the list is always given the most importance, and some themes will\nonly display the primary tag (the first tag in the list) by default. \n\n> News, Technology, Startup\nSo you can add the most important tag which you want to show up in your theme,\nbut also add related tags which are less important.\n\nPrivate tags\nSometimes you may want to assign a post a specific tag, but you don\'t\nnecessarily want that tag appearing in the theme or creating an archive page. In\nGhost, hashtags are private and can be used for special styling.\n\nFor example, if you sometimes publish posts with video content - you might want\nyour theme to adapt and get rid of the sidebar for these posts, to give more\nspace for an embedded video to fill the screen. In this case, you could use\nprivate tags to tell your theme what to do.\n\n> News, #video\nHere, the theme would assign the post publicly displayed tags of News - but it\nwould also keep a private record of the post being tagged with #video. In your\ntheme, you could then look for private tags conditionally and give them special\nformatting. \n\n> You can find documentation for theme development techniques like this and many\nmore over on Ghost\'s extensive theme docs [https://ghost.org/docs/themes/].\nDynamic routing\nDynamic routing gives you the ultimate freedom to build a custom publication to\nsuit your needs. Routes are rules that map URL patterns to your content and\ntemplates. \n\nYou may not want content tagged with News to exist on: example.com/tag/news.\nInstead, you want it to exist on example.com/news .\n\nIn this case you can use dynamic routes to create customised collections of\ncontent on your site. It\'s also possible to use multiple templates in your theme\nto render each content type differently.\n\nThere are lots of use cases for dynamic routing with Ghost, here are a few\ncommon examples: \n\n * Setting a custom home page with its own template\n * Having separate content hubs for blog and podcast, that render differently,\n   and have custom RSS feeds to support two types of content\n * Creating a founders column as a unique view, by filtering content created by\n   specific authors\n * Including dates in permalinks for your posts\n * Setting posts to have a URL relative to their primary tag like \n   example.com/europe/story-title/\n   \n\n> Dynamic routing can be configured in Ghost using YAML\n[http://yaml.org/spec/1.2/spec.html] files. Read our dynamic routing \ndocumentation [https://ghost.org/docs/themes/routing/] for further details.\nNext: Apps & Integrations\nWork with all your favourite apps and tools using our integrations\n[__GHOST_URL__/apps-integrations/], or create your own custom integrations with\nwebhooks.','https://static.ghost.org/v3.0.0/images/organising-your-content.png',0,'post','published',NULL,'public','none','5951f5fca366002ebd5dbef7','2021-03-11 13:39:23','1','2021-03-11 13:39:23','1','2021-03-11 13:39:25','1','Ghost has a flexible organisational taxonomy called tags and the ability to create custom site structures using dynamic routes.',NULL,NULL,NULL,NULL),('604a8e0b7bd272a2720d894b','346b1188-4e27-4d35-9e9b-bebfd1acd1ce','Managing admin settings','admin-settings','{\"version\":\"0.3.1\",\"atoms\":[[\"soft-return\",\"\",{}],[\"soft-return\",\"\",{}],[\"soft-return\",\"\",{}],[\"soft-return\",\"\",{}],[\"soft-return\",\"\",{}],[\"soft-return\",\"\",{}],[\"soft-return\",\"\",{}]],\"cards\":[[\"image\",{\"src\":\"https://static.ghost.org/v1.0.0/images/private.png\"}]],\"markups\":[[\"em\"],[\"strong\"],[\"a\",[\"href\",\"https://ghost.org/pricing/\"]],[\"a\",[\"href\",\"__GHOST_URL__/organising-content/\"]]],\"sections\":[[1,\"h2\",[[0,[],0,\"Make your site private\"]]],[1,\"p\",[[0,[],0,\"If you\'ve got a publication that you don\'t want the world to see yet because it\'s not ready to launch, you can hide your Ghost site behind a basic shared pass-phrase.\"]]],[1,\"p\",[[0,[],0,\"You can toggle this preference on at the bottom of Ghost\'s General Settings:\"]]],[10,0],[1,\"p\",[[0,[],0,\"Ghost will give you a short, randomly generated pass-phrase which you can share with anyone who needs access to the site while you\'re working on it. While this setting is enabled, all search engine optimisation features will be switched off to help keep your site under the radar.\"]]],[1,\"p\",[[0,[],0,\"Do remember though, this is \"],[0,[0],1,\"not\"],[0,[],0,\" secure authentication. You shouldn\'t rely on this feature for protecting important private data. It\'s just a simple, shared pass-phrase for some very basic privacy.\"]]],[1,\"h2\",[[0,[],0,\"Invite your team \"]]],[1,\"p\",[[0,[],0,\"Ghost has a number of different user roles for your team:\"]]],[1,\"p\",[[0,[1],1,\"Contributors\"],[1,[],0,0],[0,[],0,\"This is the base user level in Ghost. Contributors can create and edit their own draft posts, but they are unable to edit drafts of others or publish posts. Contributors are \"],[0,[1],1,\"untrusted\"],[0,[],0,\" users with the most basic access to your publication.\"]]],[1,\"p\",[[0,[1],1,\"Authors\"],[1,[],0,1],[0,[],0,\"Authors are the 2nd user level in Ghost. Authors can write, edit  and publish their own posts. Authors are \"],[0,[1],1,\"trusted\"],[0,[],0,\" users. If you don\'t trust users to be allowed to publish their own posts, they should be set as Contributors.\"]]],[1,\"p\",[[0,[1],1,\"Editors\"],[1,[],0,2],[0,[],0,\"Editors are the 3rd user level in Ghost. Editors can do everything that an Author can do, but they can also edit and publish the posts of others - as well as their own. Editors can also invite new Contributors & Authors to the site.\"]]],[1,\"p\",[[0,[1],1,\"Administrators\"],[1,[],0,3],[0,[],0,\"The top user level in Ghost is Administrator. Again, administrators can do everything that Authors and Editors can do, but they can also edit all site settings and data, not just content. Additionally, administrators have full access to invite, manage or remove any other user of the site.\"],[1,[],0,4],[1,[],0,5],[0,[1],1,\"The Owner\"],[1,[],0,6],[0,[],0,\"There is only ever one owner of a Ghost site. The owner is a special user which has all the same permissions as an Administrator, but with two exceptions: The Owner can never be deleted. And in some circumstances the owner will have access to additional special settings if applicable. For example: billing details, if using \"],[0,[2,1],2,\"Ghost(Pro)\"],[0,[],0,\".\"]]],[1,\"blockquote\",[[0,[0],1,\"It\'s a good idea to ask all of your users to fill out their user profiles, including bio and social links. These will populate rich structured data for posts and generally create more opportunities for themes to fully populate their design.\"]]],[1,\"h2\",[[0,[],0,\"Next: Organising content\"]]],[1,\"p\",[[0,[],0,\"Find out how to \"],[0,[3],1,\"organise your content\"],[0,[],0,\" with sensible tags and authors, or for more advanced configurations, how to create custom content structures using dynamic routing.\"]]]],\"ghostVersion\":\"3.0\"}','<h2 id=\"make-your-site-private\">Make your site private</h2><p>If you\'ve got a publication that you don\'t want the world to see yet because it\'s not ready to launch, you can hide your Ghost site behind a basic shared pass-phrase.</p><p>You can toggle this preference on at the bottom of Ghost\'s General Settings:</p><figure class=\"kg-card kg-image-card\"><img src=\"https://static.ghost.org/v1.0.0/images/private.png\" class=\"kg-image\" alt loading=\"lazy\"></figure><p>Ghost will give you a short, randomly generated pass-phrase which you can share with anyone who needs access to the site while you\'re working on it. While this setting is enabled, all search engine optimisation features will be switched off to help keep your site under the radar.</p><p>Do remember though, this is <em>not</em> secure authentication. You shouldn\'t rely on this feature for protecting important private data. It\'s just a simple, shared pass-phrase for some very basic privacy.</p><h2 id=\"invite-your-team\">Invite your team </h2><p>Ghost has a number of different user roles for your team:</p><p><strong>Contributors</strong><br>This is the base user level in Ghost. Contributors can create and edit their own draft posts, but they are unable to edit drafts of others or publish posts. Contributors are <strong>untrusted</strong> users with the most basic access to your publication.</p><p><strong>Authors</strong><br>Authors are the 2nd user level in Ghost. Authors can write, edit  and publish their own posts. Authors are <strong>trusted</strong> users. If you don\'t trust users to be allowed to publish their own posts, they should be set as Contributors.</p><p><strong>Editors</strong><br>Editors are the 3rd user level in Ghost. Editors can do everything that an Author can do, but they can also edit and publish the posts of others - as well as their own. Editors can also invite new Contributors &amp; Authors to the site.</p><p><strong>Administrators</strong><br>The top user level in Ghost is Administrator. Again, administrators can do everything that Authors and Editors can do, but they can also edit all site settings and data, not just content. Additionally, administrators have full access to invite, manage or remove any other user of the site.<br><br><strong>The Owner</strong><br>There is only ever one owner of a Ghost site. The owner is a special user which has all the same permissions as an Administrator, but with two exceptions: The Owner can never be deleted. And in some circumstances the owner will have access to additional special settings if applicable. For example: billing details, if using <a href=\"https://ghost.org/pricing/\"><strong>Ghost(Pro)</strong></a>.</p><blockquote><em>It\'s a good idea to ask all of your users to fill out their user profiles, including bio and social links. These will populate rich structured data for posts and generally create more opportunities for themes to fully populate their design.</em></blockquote><h2 id=\"next-organising-content\">Next: Organising content</h2><p>Find out how to <a href=\"__GHOST_URL__/organising-content/\">organise your content</a> with sensible tags and authors, or for more advanced configurations, how to create custom content structures using dynamic routing.</p>','604a8e0b7bd272a2720d894b','Make your site private\nIf you\'ve got a publication that you don\'t want the world to see yet because\nit\'s not ready to launch, you can hide your Ghost site behind a basic shared\npass-phrase.\n\nYou can toggle this preference on at the bottom of Ghost\'s General Settings:\n\nGhost will give you a short, randomly generated pass-phrase which you can share\nwith anyone who needs access to the site while you\'re working on it. While this\nsetting is enabled, all search engine optimisation features will be switched off\nto help keep your site under the radar.\n\nDo remember though, this is not secure authentication. You shouldn\'t rely on\nthis feature for protecting important private data. It\'s just a simple, shared\npass-phrase for some very basic privacy.\n\nInvite your team \nGhost has a number of different user roles for your team:\n\nContributors\nThis is the base user level in Ghost. Contributors can create and edit their own\ndraft posts, but they are unable to edit drafts of others or publish posts.\nContributors are untrusted users with the most basic access to your publication.\n\nAuthors\nAuthors are the 2nd user level in Ghost. Authors can write, edit  and publish\ntheir own posts. Authors are trusted users. If you don\'t trust users to be\nallowed to publish their own posts, they should be set as Contributors.\n\nEditors\nEditors are the 3rd user level in Ghost. Editors can do everything that an\nAuthor can do, but they can also edit and publish the posts of others - as well\nas their own. Editors can also invite new Contributors & Authors to the site.\n\nAdministrators\nThe top user level in Ghost is Administrator. Again, administrators can do\neverything that Authors and Editors can do, but they can also edit all site\nsettings and data, not just content. Additionally, administrators have full\naccess to invite, manage or remove any other user of the site.\n\nThe Owner\nThere is only ever one owner of a Ghost site. The owner is a special user which\nhas all the same permissions as an Administrator, but with two exceptions: The\nOwner can never be deleted. And in some circumstances the owner will have access\nto additional special settings if applicable. For example: billing details, if\nusing Ghost(Pro) [https://ghost.org/pricing/].\n\n> It\'s a good idea to ask all of your users to fill out their user profiles,\nincluding bio and social links. These will populate rich structured data for\nposts and generally create more opportunities for themes to fully populate their\ndesign.\nNext: Organising content\nFind out how to organise your content [__GHOST_URL__/organising-content/] with\nsensible tags and authors, or for more advanced configurations, how to create\ncustom content structures using dynamic routing.','https://static.ghost.org/v3.0.0/images/admin-settings.png',0,'post','published',NULL,'public','none','5951f5fca366002ebd5dbef7','2021-03-11 13:39:23','1','2021-03-11 13:39:23','1','2021-03-11 13:39:26','1','There are a couple of things to do next while you\'re getting set up: making your site private and inviting your team.',NULL,NULL,NULL,NULL),('604a8e0b7bd272a2720d894d','15850af0-a242-454d-92c1-39cbc3991006','Publishing options','publishing-options','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[[\"code\",{\"code\":\"{\\n    \\\"@context\\\": \\\"https://schema.org\\\",\\n    \\\"@type\\\": \\\"Article\\\",\\n    \\\"publisher\\\": {\\n        \\\"@type\\\": \\\"Organization\\\",\\n        \\\"name\\\": \\\"Publishing options\\\",\\n        \\\"logo\\\": \\\"https://static.ghost.org/ghost-logo.svg\\\"\\n    },\\n    \\\"author\\\": {\\n        \\\"@type\\\": \\\"Person\\\",\\n        \\\"name\\\": \\\"Ghost\\\",\\n        \\\"url\\\": \\\"http://demo.ghost.io/author/ghost/\\\",\\n        \\\"sameAs\\\": []\\n    },\\n    \\\"headline\\\": \\\"Publishing options\\\",\\n    \\\"url\\\": \\\"http://demo.ghost.io/publishing-options\\\",\\n    \\\"datePublished\\\": \\\"2018-08-08T11:44:00.000Z\\\",\\n    \\\"dateModified\\\": \\\"2018-08-09T12:06:21.000Z\\\",\\n    \\\"keywords\\\": \\\"Getting Started\\\",\\n    \\\"description\\\": \\\"The Ghost editor has everything you need to fully optimise your content. This is where you can add tags and authors, feature a post, or turn a post into a page.\\\"\\n}\\n    \"}]],\"markups\":[[\"strong\"],[\"a\",[\"href\",\"https://schema.org/\"]],[\"a\",[\"href\",\"https://search.google.com/structured-data/testing-tool\",\"rel\",\"noreferrer nofollow noopener\"]],[\"a\",[\"href\",\"__GHOST_URL__/admin-settings/\"]]],\"sections\":[[1,\"h2\",[[0,[],0,\"Distribute your content\"]]],[1,\"p\",[[0,[],0,\"Access the post settings menu by clicking the settings icon in the top right hand corner of the editor and discover everything you need to get your content ready for publishing. This is where you can edit things like tags, post URL, publish date and custom meta data.\"]]],[1,\"h2\",[[0,[],0,\"Feature images, URL & excerpts\"]]],[1,\"p\",[[0,[],0,\"Insert your post feature image from the very top of the post settings menu. Consider resizing or optimising your image first to ensure it\'s an appropriate size. Below this, you can set your post URL, publish date and add a custom excerpt.\"]]],[1,\"h2\",[[0,[],0,\"Tags & authors\"]]],[1,\"p\",[[0,[],0,\"You can easily add multiple tags and authors to any post to filter and organise the relationships between your content in Ghost.\"]]],[1,\"h2\",[[0,[],0,\"Structured data & SEO\"]]],[1,\"p\",[[0,[],0,\"There\'s no need to hard code your meta data. In fact, Ghost will generate default meta data automatically using the content in your post.\"]]],[1,\"p\",[[0,[],0,\"Alternatively, you can override this by adding a custom meta title and description, as well as unique information for social media sharing cards on Facebook and Twitter.\"]]],[1,\"p\",[[0,[],0,\"It\'s also possible to set custom canonicals, which is useful for guest posts or curated lists of external links.\"]]],[1,\"p\",[[0,[],0,\"Ghost will automatically implement \"],[0,[0],1,\"structured data\"],[0,[],0,\" for your publication using JSON-LD to further optimise your content.\"]]],[10,0],[1,\"p\",[[0,[],0,\"You can test that the structured data \"],[0,[1],1,\"schema\"],[0,[],0,\" on your site is working as it should using \"],[0,[2],1,\"Google’s structured data tool\"],[0,[],0,\". \"]]],[1,\"h2\",[[0,[],0,\"Code injection\"]]],[1,\"p\",[[0,[],0,\"This tool allows you to inject code on a per post or page basis, or across your entire site. This means you can modify CSS, add unique tracking codes, or add other scripts to the head or foot of your publication without making edits to your theme files. \"]]],[1,\"p\",[[0,[0],1,\"To add code site-wide\"],[0,[],0,\", use the code injection tool in the main admin menu. This is useful for adding a Google Analytics tracking code, or to start tracking with any other analytics tool.\"]]],[1,\"p\",[[0,[0],1,\"To add code to a post or page\"],[0,[],0,\", use the code injection tool within the post settings menu. This is useful if you want to add art direction, scripts or styles that are only applicable to one post or page.\"]]],[1,\"h2\",[[0,[],0,\"Next: Admin settings\"]]],[1,\"p\",[[0,[],0,\"Now you understand how to create and optimise content, let\'s explore some \"],[0,[3],1,\"admin settings\"],[0,[],0,\" so you can invite your team and start collaborating.\"]]]],\"ghostVersion\":\"3.0\"}','<h2 id=\"distribute-your-content\">Distribute your content</h2><p>Access the post settings menu by clicking the settings icon in the top right hand corner of the editor and discover everything you need to get your content ready for publishing. This is where you can edit things like tags, post URL, publish date and custom meta data.</p><h2 id=\"feature-images-url-excerpts\">Feature images, URL &amp; excerpts</h2><p>Insert your post feature image from the very top of the post settings menu. Consider resizing or optimising your image first to ensure it\'s an appropriate size. Below this, you can set your post URL, publish date and add a custom excerpt.</p><h2 id=\"tags-authors\">Tags &amp; authors</h2><p>You can easily add multiple tags and authors to any post to filter and organise the relationships between your content in Ghost.</p><h2 id=\"structured-data-seo\">Structured data &amp; SEO</h2><p>There\'s no need to hard code your meta data. In fact, Ghost will generate default meta data automatically using the content in your post.</p><p>Alternatively, you can override this by adding a custom meta title and description, as well as unique information for social media sharing cards on Facebook and Twitter.</p><p>It\'s also possible to set custom canonicals, which is useful for guest posts or curated lists of external links.</p><p>Ghost will automatically implement <strong>structured data</strong> for your publication using JSON-LD to further optimise your content.</p><pre><code>{\n    \"@context\": \"https://schema.org\",\n    \"@type\": \"Article\",\n    \"publisher\": {\n        \"@type\": \"Organization\",\n        \"name\": \"Publishing options\",\n        \"logo\": \"https://static.ghost.org/ghost-logo.svg\"\n    },\n    \"author\": {\n        \"@type\": \"Person\",\n        \"name\": \"Ghost\",\n        \"url\": \"http://demo.ghost.io/author/ghost/\",\n        \"sameAs\": []\n    },\n    \"headline\": \"Publishing options\",\n    \"url\": \"http://demo.ghost.io/publishing-options\",\n    \"datePublished\": \"2018-08-08T11:44:00.000Z\",\n    \"dateModified\": \"2018-08-09T12:06:21.000Z\",\n    \"keywords\": \"Getting Started\",\n    \"description\": \"The Ghost editor has everything you need to fully optimise your content. This is where you can add tags and authors, feature a post, or turn a post into a page.\"\n}\n    </code></pre><p>You can test that the structured data <a href=\"https://schema.org/\">schema</a> on your site is working as it should using <a href=\"https://search.google.com/structured-data/testing-tool\" rel=\"noreferrer nofollow noopener\">Google’s structured data tool</a>. </p><h2 id=\"code-injection\">Code injection</h2><p>This tool allows you to inject code on a per post or page basis, or across your entire site. This means you can modify CSS, add unique tracking codes, or add other scripts to the head or foot of your publication without making edits to your theme files. </p><p><strong>To add code site-wide</strong>, use the code injection tool in the main admin menu. This is useful for adding a Google Analytics tracking code, or to start tracking with any other analytics tool.</p><p><strong>To add code to a post or page</strong>, use the code injection tool within the post settings menu. This is useful if you want to add art direction, scripts or styles that are only applicable to one post or page.</p><h2 id=\"next-admin-settings\">Next: Admin settings</h2><p>Now you understand how to create and optimise content, let\'s explore some <a href=\"__GHOST_URL__/admin-settings/\">admin settings</a> so you can invite your team and start collaborating.</p>','604a8e0b7bd272a2720d894d','Distribute your content\nAccess the post settings menu by clicking the settings icon in the top right\nhand corner of the editor and discover everything you need to get your content\nready for publishing. This is where you can edit things like tags, post URL,\npublish date and custom meta data.\n\nFeature images, URL & excerpts\nInsert your post feature image from the very top of the post settings menu.\nConsider resizing or optimising your image first to ensure it\'s an appropriate\nsize. Below this, you can set your post URL, publish date and add a custom\nexcerpt.\n\nTags & authors\nYou can easily add multiple tags and authors to any post to filter and organise\nthe relationships between your content in Ghost.\n\nStructured data & SEO\nThere\'s no need to hard code your meta data. In fact, Ghost will generate\ndefault meta data automatically using the content in your post.\n\nAlternatively, you can override this by adding a custom meta title and\ndescription, as well as unique information for social media sharing cards on\nFacebook and Twitter.\n\nIt\'s also possible to set custom canonicals, which is useful for guest posts or\ncurated lists of external links.\n\nGhost will automatically implement structured data for your publication using\nJSON-LD to further optimise your content.\n\n{\n    \"@context\": \"https://schema.org\",\n    \"@type\": \"Article\",\n    \"publisher\": {\n        \"@type\": \"Organization\",\n        \"name\": \"Publishing options\",\n        \"logo\": \"https://static.ghost.org/ghost-logo.svg\"\n    },\n    \"author\": {\n        \"@type\": \"Person\",\n        \"name\": \"Ghost\",\n        \"url\": \"http://demo.ghost.io/author/ghost/\",\n        \"sameAs\": []\n    },\n    \"headline\": \"Publishing options\",\n    \"url\": \"http://demo.ghost.io/publishing-options\",\n    \"datePublished\": \"2018-08-08T11:44:00.000Z\",\n    \"dateModified\": \"2018-08-09T12:06:21.000Z\",\n    \"keywords\": \"Getting Started\",\n    \"description\": \"The Ghost editor has everything you need to fully optimise your content. This is where you can add tags and authors, feature a post, or turn a post into a page.\"\n}\n    \n\nYou can test that the structured data schema [https://schema.org/] on your site\nis working as it should using Google’s structured data tool\n[https://search.google.com/structured-data/testing-tool]. \n\nCode injection\nThis tool allows you to inject code on a per post or page basis, or across your\nentire site. This means you can modify CSS, add unique tracking codes, or add\nother scripts to the head or foot of your publication without making edits to\nyour theme files. \n\nTo add code site-wide, use the code injection tool in the main admin menu. This\nis useful for adding a Google Analytics tracking code, or to start tracking with\nany other analytics tool.\n\nTo add code to a post or page, use the code injection tool within the post\nsettings menu. This is useful if you want to add art direction, scripts or\nstyles that are only applicable to one post or page.\n\nNext: Admin settings\nNow you understand how to create and optimise content, let\'s explore some admin\nsettings [__GHOST_URL__/admin-settings/] so you can invite your team and start\ncollaborating.','https://static.ghost.org/v3.0.0/images/publishing-options.png',0,'post','published',NULL,'public','none','5951f5fca366002ebd5dbef7','2021-03-11 13:39:23','1','2021-03-11 13:39:23','1','2021-03-11 13:39:27','1','The Ghost editor post settings menu has everything you need to fully optimise and distribute your content effectively.',NULL,NULL,NULL,NULL),('604a8e0b7bd272a2720d894f','7462a427-7d32-4b73-8d40-85bac4fc8f38','Writing posts with Ghost ✍️','the-editor','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[[\"image\",{\"src\":\"https://static.ghost.org/v2.0.0/images/formatting-editor-demo.gif\"}],[\"code\",{\"code\":\"<header class=\\\"site-header outer\\\">\\n    <div class=\\\"inner\\\">\\n        {{> \\\"site-nav\\\"}}\\n    </div>\\n</header>\"}],[\"bookmark\",{\"type\":\"bookmark\",\"url\":\"https://ghost.org/\",\"metadata\":{\"url\":\"https://ghost.org\",\"title\":\"Ghost: The #1 open source headless Node.js CMS\",\"description\":\"The world’s most popular modern open source publishing platform. A headless Node.js CMS used by Apple, Sky News, Tinder and thousands more. MIT licensed, with 30k+ stars on Github.\",\"author\":null,\"publisher\":\"Ghost\",\"thumbnail\":\"https://ghost.org/images/meta/Ghost.png\",\"icon\":\"https://ghost.org/icons/icon-512x512.png?v=188b8b6d743c6338ba2eab2e35bab4f5\"}}],[\"image\",{\"src\":\"https://static.ghost.org/v3.0.0/images/image-sizes-ghost-editor.png\"}],[\"gallery\",{\"images\":[{\"fileName\":\"gallery-sample-1.jpg\",\"row\":0,\"width\":6000,\"height\":4000,\"src\":\"https://static.ghost.org/v3.0.0/images/gallery-sample-1.jpg\"},{\"fileName\":\"gallery-sample-2.jpg\",\"row\":0,\"width\":5746,\"height\":3831,\"src\":\"https://static.ghost.org/v3.0.0/images/gallery-sample-2.jpg\"},{\"fileName\":\"gallery-sample-3.jpg\",\"row\":0,\"width\":5872,\"height\":3915,\"src\":\"https://static.ghost.org/v3.0.0/images/gallery-sample-3.jpg\"}]}]],\"markups\":[[\"strong\"],[\"code\"],[\"a\",[\"href\",\"__GHOST_URL__/publishing-options/\"]]],\"sections\":[[1,\"h2\",[[0,[],0,\"Just start writing\"]]],[1,\"p\",[[0,[],0,\"Ghost has a powerful visual editor with familiar formatting options, as well as the ability to add dynamic content.\"]]],[1,\"p\",[[0,[],0,\"Select your text to add formatting such as headers or to create links. Or use Markdown shortcuts to do the work for you - if that\'s your thing. \"]]],[10,0],[1,\"h2\",[[0,[],0,\"Rich editing at your fingertips\"]]],[1,\"p\",[[0,[],0,\"The editor can also handle rich media objects, called \"],[0,[0],1,\"cards\"],[0,[],0,\", which can be organised and re-ordered using drag and drop. \"]]],[1,\"p\",[[0,[],0,\"You can insert a card either by clicking the  \"],[0,[1],1,\"+\"],[0,[],0,\"  button, or typing  \"],[0,[1],1,\"/\"],[0,[],0,\"  on a new line to search for a particular card. This allows you to efficiently insert\"],[0,[0],1,\" images\"],[0,[],0,\", \"],[0,[0],1,\"markdown\"],[0,[],0,\", \"],[0,[0],1,\"html, embeds \"],[0,[],0,\"and more.\"]]],[1,\"p\",[[0,[0],1,\"For example\"],[0,[],0,\":\"]]],[3,\"ul\",[[[0,[],0,\"Insert a video from YouTube directly by pasting the URL\"]],[[0,[],0,\"Create unique content like buttons or forms using the HTML card\"]],[[0,[],0,\"Need to share some code? Embed code blocks directly \"]]]],[10,1],[1,\"p\",[[0,[],0,\"It\'s also possible to share links from across the web in a visual way using bookmark cards that automatically render information from a websites meta data. Paste any URL to try it out: \"]]],[10,2],[1,\"h2\",[[0,[],0,\"Working with images in posts\"]]],[1,\"p\",[[0,[],0,\"You can add images to your posts in many ways:\"]]],[3,\"ul\",[[[0,[],0,\"Upload from your computer\"]],[[0,[],0,\"Click and drag an image into the browser\"]],[[0,[],0,\"Paste directly into the editor from your clipboard\"]],[[0,[],0,\"Insert using a URL\"]]]],[1,\"h3\",[[0,[],0,\"Image sizes\"]]],[1,\"p\",[[0,[],0,\"Once inserted you can blend images beautifully into your content at different sizes and add captions and alt tags wherever needed.\"]]],[10,3],[1,\"h3\",[[0,[],0,\"Image galleries\"]]],[1,\"p\",[[0,[],0,\"Tell visual stories using the gallery card to add up to 9 images that will display as a responsive image gallery: \"]]],[10,4],[1,\"h3\",[[0,[],0,\"Image optimisation\"]]],[1,\"p\",[[0,[],0,\"Ghost will automatically resize and optimise your images with lossless compression. Your posts will be fully optimised for the web without any extra effort on your part.\"]]],[1,\"h2\",[[0,[],0,\"Next: Publishing Options\"]]],[1,\"p\",[[0,[],0,\"Once your post is looking good, you\'ll want to use the \"],[0,[2],1,\"publishing options\"],[0,[],0,\" to ensure it gets distributed in the right places, with custom meta data, feature images and more.\"]]],[1,\"p\",[]]],\"ghostVersion\":\"3.0\"}','<h2 id=\"just-start-writing\">Just start writing</h2><p>Ghost has a powerful visual editor with familiar formatting options, as well as the ability to add dynamic content.</p><p>Select your text to add formatting such as headers or to create links. Or use Markdown shortcuts to do the work for you - if that\'s your thing. </p><figure class=\"kg-card kg-image-card\"><img src=\"https://static.ghost.org/v2.0.0/images/formatting-editor-demo.gif\" class=\"kg-image\" alt loading=\"lazy\"></figure><h2 id=\"rich-editing-at-your-fingertips\">Rich editing at your fingertips</h2><p>The editor can also handle rich media objects, called <strong>cards</strong>, which can be organised and re-ordered using drag and drop. </p><p>You can insert a card either by clicking the  <code>+</code>  button, or typing  <code>/</code>  on a new line to search for a particular card. This allows you to efficiently insert<strong> images</strong>, <strong>markdown</strong>, <strong>html, embeds </strong>and more.</p><p><strong>For example</strong>:</p><ul><li>Insert a video from YouTube directly by pasting the URL</li><li>Create unique content like buttons or forms using the HTML card</li><li>Need to share some code? Embed code blocks directly </li></ul><pre><code>&lt;header class=\"site-header outer\"&gt;\n    &lt;div class=\"inner\"&gt;\n        {{&gt; \"site-nav\"}}\n    &lt;/div&gt;\n&lt;/header&gt;</code></pre><p>It\'s also possible to share links from across the web in a visual way using bookmark cards that automatically render information from a websites meta data. Paste any URL to try it out: </p><figure class=\"kg-card kg-bookmark-card\"><a class=\"kg-bookmark-container\" href=\"https://ghost.org/\"><div class=\"kg-bookmark-content\"><div class=\"kg-bookmark-title\">Ghost: The #1 open source headless Node.js CMS</div><div class=\"kg-bookmark-description\">The world’s most popular modern open source publishing platform. A headless Node.js CMS used by Apple, Sky News, Tinder and thousands more. MIT licensed, with 30k+ stars on Github.</div><div class=\"kg-bookmark-metadata\"><img class=\"kg-bookmark-icon\" src=\"https://ghost.org/icons/icon-512x512.png?v&#x3D;188b8b6d743c6338ba2eab2e35bab4f5\"><span class=\"kg-bookmark-author\">Ghost</span></div></div><div class=\"kg-bookmark-thumbnail\"><img src=\"https://ghost.org/images/meta/Ghost.png\"></div></a></figure><h2 id=\"working-with-images-in-posts\">Working with images in posts</h2><p>You can add images to your posts in many ways:</p><ul><li>Upload from your computer</li><li>Click and drag an image into the browser</li><li>Paste directly into the editor from your clipboard</li><li>Insert using a URL</li></ul><h3 id=\"image-sizes\">Image sizes</h3><p>Once inserted you can blend images beautifully into your content at different sizes and add captions and alt tags wherever needed.</p><figure class=\"kg-card kg-image-card\"><img src=\"https://static.ghost.org/v3.0.0/images/image-sizes-ghost-editor.png\" class=\"kg-image\" alt loading=\"lazy\"></figure><h3 id=\"image-galleries\">Image galleries</h3><p>Tell visual stories using the gallery card to add up to 9 images that will display as a responsive image gallery: </p><figure class=\"kg-card kg-gallery-card kg-width-wide\"><div class=\"kg-gallery-container\"><div class=\"kg-gallery-row\"><div class=\"kg-gallery-image\"><img src=\"https://static.ghost.org/v3.0.0/images/gallery-sample-1.jpg\" width=\"6000\" height=\"4000\" loading=\"lazy\" alt></div><div class=\"kg-gallery-image\"><img src=\"https://static.ghost.org/v3.0.0/images/gallery-sample-2.jpg\" width=\"5746\" height=\"3831\" loading=\"lazy\" alt></div><div class=\"kg-gallery-image\"><img src=\"https://static.ghost.org/v3.0.0/images/gallery-sample-3.jpg\" width=\"5872\" height=\"3915\" loading=\"lazy\" alt></div></div></div></figure><h3 id=\"image-optimisation\">Image optimisation</h3><p>Ghost will automatically resize and optimise your images with lossless compression. Your posts will be fully optimised for the web without any extra effort on your part.</p><h2 id=\"next-publishing-options\">Next: Publishing Options</h2><p>Once your post is looking good, you\'ll want to use the <a href=\"__GHOST_URL__/publishing-options/\">publishing options</a> to ensure it gets distributed in the right places, with custom meta data, feature images and more.</p>','604a8e0b7bd272a2720d894f','Just start writing\nGhost has a powerful visual editor with familiar formatting options, as well as\nthe ability to add dynamic content.\n\nSelect your text to add formatting such as headers or to create links. Or use\nMarkdown shortcuts to do the work for you - if that\'s your thing. \n\nRich editing at your fingertips\nThe editor can also handle rich media objects, called cards, which can be\norganised and re-ordered using drag and drop. \n\nYou can insert a card either by clicking the+ button, or typing/ on a new line\nto search for a particular card. This allows you to efficiently insert images, \nmarkdown, html, embeds and more.\n\nFor example:\n\n * Insert a video from YouTube directly by pasting the URL\n * Create unique content like buttons or forms using the HTML card\n * Need to share some code? Embed code blocks directly \n\n<header class=\"site-header outer\">\n    <div class=\"inner\">\n        {{> \"site-nav\"}}\n    </div>\n</header>\n\nIt\'s also possible to share links from across the web in a visual way using\nbookmark cards that automatically render information from a websites meta data.\nPaste any URL to try it out: \n\nGhost: The #1 open source headless Node.js CMSThe world’s most popular modern\nopen source publishing platform. A headless Node.js CMS used by Apple, Sky\nNews,\nTinder and thousands more. MIT licensed, with 30k+ stars on Github.Ghost\n[https://ghost.org/]Working with images in posts\nYou can add images to your posts in many ways:\n\n * Upload from your computer\n * Click and drag an image into the browser\n * Paste directly into the editor from your clipboard\n * Insert using a URL\n\nImage sizes\nOnce inserted you can blend images beautifully into your content at different\nsizes and add captions and alt tags wherever needed.\n\nImage galleries\nTell visual stories using the gallery card to add up to 9 images that will\ndisplay as a responsive image gallery: \n\nImage optimisation\nGhost will automatically resize and optimise your images with lossless\ncompression. Your posts will be fully optimised for the web without any extra\neffort on your part.\n\nNext: Publishing Options\nOnce your post is looking good, you\'ll want to use the publishing options\n[__GHOST_URL__/publishing-options/] to ensure it gets distributed in the right\nplaces, with custom meta data, feature images and more.','https://static.ghost.org/v3.0.0/images/writing-posts-with-ghost.png',0,'post','published',NULL,'public','none','5951f5fca366002ebd5dbef7','2021-03-11 13:39:23','1','2021-03-11 13:39:23','1','2021-03-11 13:39:28','1','Discover familiar formatting options in a functional toolbar and the ability to add dynamic content seamlessly.',NULL,NULL,NULL,NULL),('604a8e0b7bd272a2720d8951','74cd24c7-bdb3-400f-9850-ed2f0a5bbb4c','Welcome to Ghost','welcome','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[],\"markups\":[[\"strong\"],[\"a\",[\"href\",\"https://ghost.org/integrations/\"]],[\"a\",[\"href\",\"https://ghost.org/pricing\"]],[\"a\",[\"href\",\"https://github.com/TryGhost\"]],[\"a\",[\"href\",\"__GHOST_URL__/the-editor/\"]]],\"sections\":[[1,\"h2\",[[0,[0],1,\"A few things you should know\"]]],[3,\"ol\",[[[0,[],0,\"Ghost is designed for ambitious, professional publishers who want to actively build a business around their content. That\'s who it works best for. \"]],[[0,[],0,\"The entire platform can be modified and customised to suit your needs. It\'s very powerful, but does require some knowledge of code. Ghost is not necessarily a good platform for beginners or people who just want a simple personal blog. \"]],[[0,[],0,\"It\'s possible to work with all your favourite tools and apps with hundreds of \"],[0,[1],1,\"integrations\"],[0,[],0,\" to speed up your workflows, connect email lists, build communities and much more.\"]]]],[1,\"h2\",[[0,[],0,\"Behind the scenes\"]]],[1,\"p\",[[0,[],0,\"Ghost is made by an independent non-profit organisation called the Ghost Foundation. We are 100% self funded by revenue from our \"],[0,[2],1,\"Ghost(Pro)\"],[0,[],0,\" service, and every penny we make is re-invested into funding further development of free, open source technology for modern publishing.\"]]],[1,\"p\",[[0,[],0,\"The version of Ghost you are looking at right now would not have been made possible without generous contributions from the open source \"],[0,[3],1,\"community\"],[0,[],0,\".\"]]],[1,\"h2\",[[0,[],0,\"Next up, the editor\"]]],[1,\"p\",[[0,[],0,\"The main thing you\'ll want to read about next is probably: \"],[0,[4],1,\"the Ghost editor\"],[0,[],0,\". This is where the good stuff happens.\"]]],[1,\"blockquote\",[[0,[],0,\"By the way, once you\'re done reading, you can simply delete the default Ghost user from your team to remove all of these introductory posts! \"]]]],\"ghostVersion\":\"3.0\"}','<h2 id=\"a-few-things-you-should-know\"><strong>A few things you should know</strong></h2><ol><li>Ghost is designed for ambitious, professional publishers who want to actively build a business around their content. That\'s who it works best for. </li><li>The entire platform can be modified and customised to suit your needs. It\'s very powerful, but does require some knowledge of code. Ghost is not necessarily a good platform for beginners or people who just want a simple personal blog. </li><li>It\'s possible to work with all your favourite tools and apps with hundreds of <a href=\"https://ghost.org/integrations/\">integrations</a> to speed up your workflows, connect email lists, build communities and much more.</li></ol><h2 id=\"behind-the-scenes\">Behind the scenes</h2><p>Ghost is made by an independent non-profit organisation called the Ghost Foundation. We are 100% self funded by revenue from our <a href=\"https://ghost.org/pricing\">Ghost(Pro)</a> service, and every penny we make is re-invested into funding further development of free, open source technology for modern publishing.</p><p>The version of Ghost you are looking at right now would not have been made possible without generous contributions from the open source <a href=\"https://github.com/TryGhost\">community</a>.</p><h2 id=\"next-up-the-editor\">Next up, the editor</h2><p>The main thing you\'ll want to read about next is probably: <a href=\"__GHOST_URL__/the-editor/\">the Ghost editor</a>. This is where the good stuff happens.</p><blockquote>By the way, once you\'re done reading, you can simply delete the default Ghost user from your team to remove all of these introductory posts! </blockquote>','604a8e0b7bd272a2720d8951','A few things you should know\n 1. Ghost is designed for ambitious, professional publishers who want to\n    actively build a business around their content. That\'s who it works best\n    for. \n 2. The entire platform can be modified and customised to suit your needs. It\'s\n    very powerful, but does require some knowledge of code. Ghost is not\n    necessarily a good platform for beginners or people who just want a simple\n    personal blog. \n 3. It\'s possible to work with all your favourite tools and apps with hundreds\n    of integrations [https://ghost.org/integrations/] to speed up your\n    workflows, connect email lists, build communities and much more.\n\nBehind the scenes\nGhost is made by an independent non-profit organisation called the Ghost\nFoundation. We are 100% self funded by revenue from our Ghost(Pro)\n[https://ghost.org/pricing] service, and every penny we make is re-invested into\nfunding further development of free, open source technology for modern\npublishing.\n\nThe version of Ghost you are looking at right now would not have been made\npossible without generous contributions from the open source community\n[https://github.com/TryGhost].\n\nNext up, the editor\nThe main thing you\'ll want to read about next is probably: the Ghost editor\n[__GHOST_URL__/the-editor/]. This is where the good stuff happens.\n\n> By the way, once you\'re done reading, you can simply delete the default Ghost\nuser from your team to remove all of these introductory posts!','https://static.ghost.org/v3.0.0/images/welcome-to-ghost.png',0,'post','published',NULL,'public','none','5951f5fca366002ebd5dbef7','2021-03-11 13:39:23','1','2021-03-11 13:39:23','1','2021-03-11 13:39:29','1','Welcome, it\'s great to have you here.\nWe know that first impressions are important, so we\'ve populated your new site with some initial getting started posts that will help you get familiar with everything in no time.',NULL,NULL,NULL,NULL),('604a9e1ac9b0f6bf8cfeabbf','eb9e0c51-0fb2-43a7-81d3-23354dd40fca','(Untitled)','untitled','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[[\"image\",{\"src\":\"https://images.unsplash.com/photo-1568162603664-fcd658421851?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMTc3M3wwfDF8c2VhcmNofDV8fGJlYXJ8ZW58MHx8fHwxNjE1NTAyODgx&ixlib=rb-1.2.1&q=80&w=2000\",\"width\":3832,\"height\":2848,\"caption\":\"Photo by <a href=\\\"https://unsplash.com/@binkabonka?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit\\\">Becca</a> / <a href=\\\"https://unsplash.com/?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit\\\">Unsplash</a>\",\"alt\":\"bear\",\"cardWidth\":\"full\"}],[\"image\",{\"src\":\"https://christhorntonsf-blog.sfo3.cdn.digitaloceanspaces.com/2021/03/treeber.jpeg\",\"width\":727,\"height\":960}]],\"markups\":[],\"sections\":[[1,\"p\",[[0,[],0,\"Hello World!\"]]],[10,0],[1,\"p\",[]],[1,\"p\",[[0,[],0,\"Custom image:\"]]],[1,\"p\",[]],[10,1],[1,\"p\",[]]],\"ghostVersion\":\"3.0\"}','<p>Hello World!</p><figure class=\"kg-card kg-image-card kg-width-full kg-card-hascaption\"><img src=\"https://images.unsplash.com/photo-1568162603664-fcd658421851?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=MnwxMTc3M3wwfDF8c2VhcmNofDV8fGJlYXJ8ZW58MHx8fHwxNjE1NTAyODgx&amp;ixlib=rb-1.2.1&amp;q=80&amp;w=2000\" class=\"kg-image\" alt=\"bear\" loading=\"lazy\" width=\"3832\" height=\"2848\" srcset=\"https://images.unsplash.com/photo-1568162603664-fcd658421851?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=MnwxMTc3M3wwfDF8c2VhcmNofDV8fGJlYXJ8ZW58MHx8fHwxNjE1NTAyODgx&amp;ixlib=rb-1.2.1&amp;q=80&amp;w=600 600w, https://images.unsplash.com/photo-1568162603664-fcd658421851?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=MnwxMTc3M3wwfDF8c2VhcmNofDV8fGJlYXJ8ZW58MHx8fHwxNjE1NTAyODgx&amp;ixlib=rb-1.2.1&amp;q=80&amp;w=1000 1000w, https://images.unsplash.com/photo-1568162603664-fcd658421851?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=MnwxMTc3M3wwfDF8c2VhcmNofDV8fGJlYXJ8ZW58MHx8fHwxNjE1NTAyODgx&amp;ixlib=rb-1.2.1&amp;q=80&amp;w=1600 1600w, https://images.unsplash.com/photo-1568162603664-fcd658421851?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=MnwxMTc3M3wwfDF8c2VhcmNofDV8fGJlYXJ8ZW58MHx8fHwxNjE1NTAyODgx&amp;ixlib=rb-1.2.1&amp;q=80&amp;w=2400 2400w\"><figcaption>Photo by <a href=\"https://unsplash.com/@binkabonka?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit\">Becca</a> / <a href=\"https://unsplash.com/?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit\">Unsplash</a></figcaption></figure><p></p><p>Custom image:</p><p></p><figure class=\"kg-card kg-image-card\"><img src=\"https://christhorntonsf-blog.sfo3.cdn.digitaloceanspaces.com/2021/03/treeber.jpeg\" class=\"kg-image\" alt loading=\"lazy\" width=\"727\" height=\"960\"></figure>','604a9e1ac9b0f6bf8cfeabbf','Hello World!\n\nPhoto by Becca\n[https://unsplash.com/@binkabonka?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit] \n/ Unsplash\n[https://unsplash.com/?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit]\n\nCustom image:',NULL,0,'post','draft',NULL,'public','none','1','2021-03-09 14:47:54','1','2021-03-11 15:03:19','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_authors`
--

DROP TABLE IF EXISTS `posts_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_authors` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `author_id` varchar(24) NOT NULL,
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `posts_authors_post_id_foreign` (`post_id`),
  KEY `posts_authors_author_id_foreign` (`author_id`),
  CONSTRAINT `posts_authors_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  CONSTRAINT `posts_authors_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_authors`
--

LOCK TABLES `posts_authors` WRITE;
/*!40000 ALTER TABLE `posts_authors` DISABLE KEYS */;
INSERT INTO `posts_authors` VALUES ('604a8e0b7bd272a2720d8946','604a8e0b7bd272a2720d8945','5951f5fca366002ebd5dbef7',0),('604a8e0b7bd272a2720d8948','604a8e0b7bd272a2720d8947','5951f5fca366002ebd5dbef7',0),('604a8e0b7bd272a2720d894a','604a8e0b7bd272a2720d8949','5951f5fca366002ebd5dbef7',0),('604a8e0b7bd272a2720d894c','604a8e0b7bd272a2720d894b','5951f5fca366002ebd5dbef7',0),('604a8e0b7bd272a2720d894e','604a8e0b7bd272a2720d894d','5951f5fca366002ebd5dbef7',0),('604a8e0b7bd272a2720d8950','604a8e0b7bd272a2720d894f','5951f5fca366002ebd5dbef7',0),('604a8e0b7bd272a2720d8952','604a8e0b7bd272a2720d8951','5951f5fca366002ebd5dbef7',0),('604a9e1ac9b0f6bf8cfeabc0','604a9e1ac9b0f6bf8cfeabbf','1',0);
/*!40000 ALTER TABLE `posts_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_meta`
--

DROP TABLE IF EXISTS `posts_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_meta` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `og_image` varchar(2000) DEFAULT NULL,
  `og_title` varchar(300) DEFAULT NULL,
  `og_description` varchar(500) DEFAULT NULL,
  `twitter_image` varchar(2000) DEFAULT NULL,
  `twitter_title` varchar(300) DEFAULT NULL,
  `twitter_description` varchar(500) DEFAULT NULL,
  `meta_title` varchar(2000) DEFAULT NULL,
  `meta_description` varchar(2000) DEFAULT NULL,
  `email_subject` varchar(300) DEFAULT NULL,
  `frontmatter` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_meta_post_id_unique` (`post_id`),
  CONSTRAINT `posts_meta_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_meta`
--

LOCK TABLES `posts_meta` WRITE;
/*!40000 ALTER TABLE `posts_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_tags`
--

DROP TABLE IF EXISTS `posts_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_tags` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `tag_id` varchar(24) NOT NULL,
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `posts_tags_post_id_foreign` (`post_id`),
  KEY `posts_tags_tag_id_foreign` (`tag_id`),
  CONSTRAINT `posts_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `posts_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_tags`
--

LOCK TABLES `posts_tags` WRITE;
/*!40000 ALTER TABLE `posts_tags` DISABLE KEYS */;
INSERT INTO `posts_tags` VALUES ('604a8e0b7bd272a2720d8a34','604a8e0b7bd272a2720d8945','604a8e0a7bd272a2720d88eb',0),('604a8e0b7bd272a2720d8a35','604a8e0b7bd272a2720d8947','604a8e0a7bd272a2720d88eb',0),('604a8e0b7bd272a2720d8a36','604a8e0b7bd272a2720d8949','604a8e0a7bd272a2720d88eb',0),('604a8e0b7bd272a2720d8a37','604a8e0b7bd272a2720d894b','604a8e0a7bd272a2720d88eb',0),('604a8e0b7bd272a2720d8a38','604a8e0b7bd272a2720d894d','604a8e0a7bd272a2720d88eb',0),('604a8e0b7bd272a2720d8a39','604a8e0b7bd272a2720d894f','604a8e0a7bd272a2720d88eb',0),('604a8e0b7bd272a2720d8a3a','604a8e0b7bd272a2720d8951','604a8e0a7bd272a2720d88eb',0);
/*!40000 ALTER TABLE `posts_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` varchar(24) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('604a8e0a7bd272a2720d88ec','Administrator','Administrators','2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88ed','Editor','Editors','2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88ee','Author','Authors','2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88ef','Contributor','Contributors','2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88f0','Owner','Blog Owner','2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88f1','Admin Integration','External Apps','2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88f2','DB Backup Integration','Internal DB Backup Client','2021-03-11 13:39:22','1','2021-03-11 13:39:22','1'),('604a8e0a7bd272a2720d88f3','Scheduler Integration','Internal Scheduler Client','2021-03-11 13:39:22','1','2021-03-11 13:39:22','1');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_users` (
  `id` varchar(24) NOT NULL,
  `role_id` varchar(24) NOT NULL,
  `user_id` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES ('604a8e0b7bd272a2720d8944','604a8e0a7bd272a2720d88ee','5951f5fca366002ebd5dbef7'),('604a8e0b7bd272a2720d8a3b','604a8e0a7bd272a2720d88f0','1');
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(24) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `user_id` varchar(24) NOT NULL,
  `session_data` varchar(2000) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sessions_session_id_unique` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('604a9e03c9b0f6bf8cfeabbe','dl62NOmcqKaifFOofIIUjxH7d72duwDT','1','{\"cookie\":{\"originalMaxAge\":15768000000,\"expires\":\"2021-09-10T10:47:31.462Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/ghost\",\"sameSite\":\"lax\"},\"user_id\":\"1\",\"origin\":\"http://localhost:2368\",\"user_agent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36\",\"ip\":\"127.0.0.1\"}','2021-03-11 22:47:31','2021-03-11 22:47:31');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` varchar(24) NOT NULL,
  `group` varchar(50) NOT NULL DEFAULT 'core',
  `key` varchar(50) NOT NULL,
  `value` text,
  `type` varchar(50) NOT NULL,
  `flags` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('604a8e0b7bd272a2720d8a3c','core','db_hash','7aad2661-838e-4379-8428-5f80c3dfca99','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0b7bd272a2720d8a3d','core','routes_hash','3d180d52c663d173a6be791ef411ed01','string',NULL,'2021-03-11 05:39:24','1','2021-03-11 13:39:25','1'),('604a8e0b7bd272a2720d8a3e','core','next_update_check','1615589232','number',NULL,'2021-03-11 05:39:24','1','2021-03-11 14:47:11','1'),('604a8e0b7bd272a2720d8a3f','core','notifications','[]','array',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0b7bd272a2720d8a40','core','session_secret','5aaadcffe79fbc7cf6701ecc40ffa0a7b0df986d46362e05417df7f8c517e70b','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0b7bd272a2720d8a41','core','theme_session_secret','d4cac27efa67377908bc675d88932a4da3b3521bc04ac280caab71de6f2b3825','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a42','core','ghost_public_key','-----BEGIN RSA PUBLIC KEY-----\nMIGJAoGBAODwIWgbjr9/GeGkyflPONqB60KxanW5qVjo2VJbPzBmIotSN7lBwvWobb9rGanJ\n54bO3KPBIEMnxJkebzc3s9eVeZs1FzIAnqPo2HF6sm/Qz87dQ6Cnwkz/NwO5v+deNxwVUaV+\nrgMjq7crNyV63DPkudTZjn/tRyvNK/EcXbYrAgMBAAE=\n-----END RSA PUBLIC KEY-----\n','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a43','core','ghost_private_key','-----BEGIN RSA PRIVATE KEY-----\nMIICXgIBAAKBgQDg8CFoG46/fxnhpMn5TzjagetCsWp1ualY6NlSWz8wZiKLUje5QcL1qG2/\naxmpyeeGztyjwSBDJ8SZHm83N7PXlXmbNRcyAJ6j6NhxerJv0M/O3UOgp8JM/zcDub/nXjcc\nFVGlfq4DI6u3Kzcletwz5LnU2Y5/7UcrzSvxHF22KwIDAQABAoGAHtFnkk7sQNpWHm8oaOrs\nvCs+o1WRY227gP3uAHWV87ialQH/tncHEgcweiBfVL7f5L1kx17HX8wMCHp9/E+6aNYtuNug\nSB7FgbZon6Tg+Q7qQkSX4GMbkj69aHztFm08Qr5pRI/Np69i9vGd1X/hNVR+rx5BViW7mfhV\nIAibnYkCQQD9FkEkmOwH+8XrZC5jK9KlSjP96NXvnRF3JawgSpeRA8YEDdYEqLzcOn1lYb6a\ncHzQxD6rbUvfLfRYLLxxel5VAkEA44butfA9KOp5EEpSKO2u0k1RsGSZpwLzyf630H8cBDUE\n2VrDNwN+MBoO53ueFQDZnPuOdJiJ7Zpohrpeq/tCfwJBAJzv8t890Ic20ckgqz8lyo5ikBDw\nE9Fs5Yqrmqu/dXMgEucqqT7kX5B02JNIZEgiXtOaDX6B3N19Apq2yvfXOK0CQQCYjEtYKK6Y\n1Dw/M9VKI7HmxnhSr+BlHZGeiO1tGQwLthB+OmBQbkMYtR/xC+y9YEiG/BJTEkLHz5LtYd8/\np8K5AkEAgFxCuXiNdh2NNpc0Xi1lSdie198nM0F09B3k01Hq+FIQ0ZwSrjVqHIcc9TwITL0D\nSQmdqEzyKFu1udIZbGCv1w==\n-----END RSA PRIVATE KEY-----\n','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a44','core','members_public_key','-----BEGIN RSA PUBLIC KEY-----\nMIGJAoGBALRiGgmhlVzwnnCB95V58idKtMKBSoMIJeffv3t+OlyHswLe4AFjRK0I4B4CUWXP\ni0yz9BhVl5AceltyU/HUjOzn5knLWfyGWxgYXBx70KN91YZtZVNn3v9Axbs8lYH4Rc2KMeuD\njWMB2ODtrcXMiACCOaVmJUE2BzdLupY9/QqxAgMBAAE=\n-----END RSA PUBLIC KEY-----\n','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a45','core','members_private_key','-----BEGIN RSA PRIVATE KEY-----\nMIICXAIBAAKBgQC0YhoJoZVc8J5wgfeVefInSrTCgUqDCCXn3797fjpch7MC3uABY0StCOAe\nAlFlz4tMs/QYVZeQHHpbclPx1Izs5+ZJy1n8hlsYGFwce9CjfdWGbWVTZ97/QMW7PJWB+EXN\nijHrg41jAdjg7a3FzIgAgjmlZiVBNgc3S7qWPf0KsQIDAQABAoGAGAleiNwESD80Da/z6vI2\nB3BYB/csk6tZSb2yCWW3py7Z9s72MJkmxJwDKVyLtjJi0JTGORvmt2hkEZ15fCcjpBCy+Hww\njCs8d22cFdKdqpfENK/qaElO7jY5r6Yv9+D0DxLS5qy4MOnGIbLDd6tVA8IcHREcxBQbY/yQ\nyTF68bECQQDdaWazwh7rte9JounlpwvRA7UtGI5gMrmXZsYUAkUNLsG1YYB+j4GVjo8qENJL\n3faMYdStlpm6i9SxyjBEM3LVAkEA0I/oEiPM9cOY5wJ/3ga7XfD3CJIt9BWzHam2V5Os/Qg2\nZhh1HVsNMKKC/E07xIkd1OXSgKF/YmeYbFzAFFeObQJAeYZ3k2SR2ihCzXT40k8Mok1ZrQXU\nZ6KP0TTctXDFe8XVFnwMreqQYokbtSgEdRXAVC8CL8EAYa6MMIVcVqKyfQJAbnm8CVfTat+I\nL94AE4DnYRSSFoUwOFoCPhU21F8SRBpEjoIoDzu62edLkQ/sN+gV2D9A6Qgi7OJJOCVNTbkv\nZQJBAJJg6rFxD2tCMVzkOItVczK1fFTsvg1ZS6pta0qD2T06HgVAOr8pfWEoNzizUQoD9r/X\n+x58KIkoHgWB+mdU130=\n-----END RSA PRIVATE KEY-----\n','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a46','core','members_email_auth_secret','3de7fc865397986d1b152271e8d8d639df1fed414b92fdaa046a4bfd126d99b6418f3777b1dd6a408b074c78f3c10e62eb3da5de4bee596bd522e4fee83beda6','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a47','core','members_stripe_webhook_id',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a48','core','members_stripe_webhook_secret',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a49','site','title','Test','string','PUBLIC','2021-03-11 05:39:24','1','2021-03-11 14:47:31','1'),('604a8e0c7bd272a2720d8a4a','site','description','Thoughts, stories and ideas.','string','PUBLIC','2021-03-11 05:39:24','1','2021-03-11 14:47:31','1'),('604a8e0c7bd272a2720d8a4b','site','logo','https://static.ghost.org/v1.0.0/images/ghost-logo.svg','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a4c','site','cover_image','https://static.ghost.org/v3.0.0/images/publication-cover.png','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a4d','site','icon','','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a4e','site','accent_color','#15171A','string','PUBLIC','2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a4f','site','lang','en','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a50','site','timezone','Etc/UTC','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a51','site','codeinjection_head','','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a52','site','codeinjection_foot','','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a53','site','facebook','ghost','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a54','site','twitter','ghost','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a55','site','navigation','[{\"label\":\"Home\", \"url\":\"/\"},{\"label\":\"Tag\", \"url\":\"/tag/getting-started/\"}, {\"label\":\"Author\", \"url\":\"/author/ghost/\"},{\"label\":\"Help\", \"url\":\"https://ghost.org/docs/\"}]','array',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a56','site','secondary_navigation','[]','array',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a57','site','meta_title',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a58','site','meta_description',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a59','site','og_image',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a5a','site','og_title',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a5b','site','og_description',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a5c','site','twitter_image',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a5d','site','twitter_title',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a5e','site','twitter_description',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a5f','theme','active_theme','korima','string','RO','2021-03-11 05:39:24','1','2021-03-11 15:23:27','1'),('604a8e0c7bd272a2720d8a60','private','is_private','false','boolean',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a61','private','password','','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a62','private','public_hash','01e42aaeda64a065a8ec20dfe4315b','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a63','members','default_content_visibility','public','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a64','members','members_allow_free_signup','true','boolean',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a65','members','members_from_address','noreply','string','RO','2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a66','members','members_support_address','noreply','string','PUBLIC,RO','2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a67','members','members_reply_address','newsletter','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a68','members','members_free_signup_redirect','/','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a69','members','members_paid_signup_redirect','/','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a6a','members','stripe_product_name','Ghost Subscription','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a6b','members','stripe_secret_key',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a6c','members','stripe_publishable_key',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a6d','members','stripe_plans','[{\"name\":\"Monthly\",\"currency\":\"usd\",\"interval\":\"month\",\"amount\":500},{\"name\":\"Yearly\",\"currency\":\"usd\",\"interval\":\"year\",\"amount\":5000}]','array',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a6e','members','stripe_connect_publishable_key',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a6f','members','stripe_connect_secret_key',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a70','members','stripe_connect_livemode',NULL,'boolean',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a71','members','stripe_connect_display_name',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a72','members','stripe_connect_account_id',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a73','portal','portal_name','true','boolean',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a74','portal','portal_button','true','boolean',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a75','portal','portal_plans','[\"free\", \"monthly\", \"yearly\"]','array',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a76','portal','portal_button_style','icon-and-text','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a77','portal','portal_button_icon',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a78','portal','portal_button_signup_text','Subscribe','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a79','email','mailgun_domain',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a7a','email','mailgun_api_key',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a7b','email','mailgun_base_url',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a7c','email','email_track_opens','true','boolean',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a7d','amp','amp','true','boolean',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a7e','amp','amp_gtag_id',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a7f','firstpromoter','firstpromoter','false','boolean',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a80','firstpromoter','firstpromoter_id',NULL,'string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a83','unsplash','unsplash','true','boolean',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a84','views','shared_views','[]','array',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a85','newsletter','newsletter_show_badge','true','boolean',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a86','newsletter','newsletter_show_header','true','boolean',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a87','newsletter','newsletter_body_font_category','sans_serif','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('604a8e0c7bd272a2720d8a88','newsletter','newsletter_footer_content','','string',NULL,'2021-03-11 13:39:24','1','2021-03-11 13:39:24','1'),('6054d7983272292dc964e772','slack','slack_url','','string',NULL,'2021-03-19 09:55:52','1','2021-03-19 09:55:52','1'),('6054d7983272292dc964e773','slack','slack_username','Ghost','string',NULL,'2021-03-19 09:55:52','1','2021-03-19 09:55:52','1');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snippets`
--

DROP TABLE IF EXISTS `snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snippets` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `mobiledoc` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `snippets_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snippets`
--

LOCK TABLES `snippets` WRITE;
/*!40000 ALTER TABLE `snippets` DISABLE KEYS */;
/*!40000 ALTER TABLE `snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text,
  `feature_image` varchar(2000) DEFAULT NULL,
  `parent_id` varchar(191) DEFAULT NULL,
  `visibility` varchar(50) NOT NULL DEFAULT 'public',
  `og_image` varchar(2000) DEFAULT NULL,
  `og_title` varchar(300) DEFAULT NULL,
  `og_description` varchar(500) DEFAULT NULL,
  `twitter_image` varchar(2000) DEFAULT NULL,
  `twitter_title` varchar(300) DEFAULT NULL,
  `twitter_description` varchar(500) DEFAULT NULL,
  `meta_title` varchar(2000) DEFAULT NULL,
  `meta_description` varchar(2000) DEFAULT NULL,
  `codeinjection_head` text,
  `codeinjection_foot` text,
  `canonical_url` varchar(2000) DEFAULT NULL,
  `accent_color` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES ('604a8e0a7bd272a2720d88eb','Getting Started','getting-started',NULL,NULL,NULL,'public',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-11 13:39:22','1','2021-03-11 13:39:22','1');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokens` (
  `id` varchar(24) NOT NULL,
  `token` varchar(32) NOT NULL,
  `data` varchar(2000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tokens_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(191) NOT NULL,
  `profile_image` varchar(2000) DEFAULT NULL,
  `cover_image` varchar(2000) DEFAULT NULL,
  `bio` text,
  `website` varchar(2000) DEFAULT NULL,
  `location` text,
  `facebook` varchar(2000) DEFAULT NULL,
  `twitter` varchar(2000) DEFAULT NULL,
  `accessibility` text,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `locale` varchar(6) DEFAULT NULL,
  `visibility` varchar(50) NOT NULL DEFAULT 'public',
  `meta_title` varchar(2000) DEFAULT NULL,
  `meta_description` varchar(2000) DEFAULT NULL,
  `tour` text,
  `last_seen` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_slug_unique` (`slug`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','Chris Thornton','chris','$2a$10$/qeUfsd2p5G2bgbcaFU84uQ9vN7bxkcD5psGcRQMUBK6iKfzhMPuC','rmdirbin@gmail.com','//www.gravatar.com/avatar/69fbbababec5d0234c653ddfc560bfb4?s=250&d=mm&r=x',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active',NULL,'public',NULL,NULL,NULL,'2021-03-11 15:23:29','2021-02-27 21:39:22','1','2021-03-11 15:23:29','1'),('5951f5fca366002ebd5dbef7','Ghost','ghost','$2a$10$lhEHHFPsLe2vHRxJYMJAS.M2kJ9vhw2Pe4mINBLcdktaD0WX8DeZu','ghost-author@example.com','https://static.ghost.org/v3.0.0/images/ghost.png',NULL,'You can delete this user to remove all the welcome posts','https://ghost.org','The Internet','ghost','ghost',NULL,'active',NULL,'public',NULL,NULL,NULL,NULL,'2021-03-11 13:39:23','1','2021-03-11 13:39:23','1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhooks`
--

DROP TABLE IF EXISTS `webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhooks` (
  `id` varchar(24) NOT NULL,
  `event` varchar(50) NOT NULL,
  `target_url` varchar(2000) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `secret` varchar(191) DEFAULT NULL,
  `api_version` varchar(50) NOT NULL DEFAULT 'v2',
  `integration_id` varchar(24) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'available',
  `last_triggered_at` datetime DEFAULT NULL,
  `last_triggered_status` varchar(50) DEFAULT NULL,
  `last_triggered_error` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webhooks_integration_id_foreign` (`integration_id`),
  CONSTRAINT `webhooks_integration_id_foreign` FOREIGN KEY (`integration_id`) REFERENCES `integrations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhooks`
--

LOCK TABLES `webhooks` WRITE;
/*!40000 ALTER TABLE `webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-19 10:09:50
