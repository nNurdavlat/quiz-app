-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: quiz_app
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.22.04.1

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
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `result_id` int NOT NULL,
  `option_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `answers_fk2` (`option_id`),
  KEY `answers_fk1` (`result_id`),
  CONSTRAINT `answers_fk1` FOREIGN KEY (`result_id`) REFERENCES `results` (`id`),
  CONSTRAINT `answers_fk2` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (8,15,92),(9,15,94);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `option_text` text NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `options_fk1` (`question_id`),
  CONSTRAINT `options_fk1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (21,8,'5',0,'2025-01-19 22:48:51','2025-01-19 22:48:51'),(22,8,'3',0,'2025-01-19 22:48:51','2025-01-19 22:48:51'),(23,8,'4',1,'2025-01-19 22:48:51','2025-01-19 22:48:51'),(24,9,'5',0,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(25,9,'3',0,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(26,9,'4',1,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(30,11,'5',0,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(31,11,'3',0,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(32,11,'4',1,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(33,12,'5',0,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(34,12,'3',0,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(35,12,'4',1,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(36,13,'5',0,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(37,13,'3',0,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(38,13,'4',1,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(39,14,'5',0,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(40,14,'3',0,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(41,14,'4',1,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(42,15,'Suv',1,'2025-01-19 23:36:30','2025-01-19 23:36:30'),(43,15,'Kislorot',0,'2025-01-19 23:36:30','2025-01-19 23:36:30'),(44,15,'Azot',0,'2025-01-19 23:36:30','2025-01-19 23:36:30'),(45,16,'Neptum',1,'2025-01-22 16:45:46','2025-01-22 16:45:46'),(46,16,'Geradot',0,'2025-01-22 16:45:46','2025-01-22 16:45:46'),(47,16,'Yupiter',0,'2025-01-22 16:45:46','2025-01-22 16:45:46'),(48,17,'1 1 ga teng',1,'2025-01-22 16:46:48','2025-01-22 16:46:48'),(49,17,'1 2 ga teng',0,'2025-01-22 16:46:48','2025-01-22 16:46:48'),(88,32,'15',0,'2025-01-26 18:44:58','2025-01-26 18:44:58'),(89,32,'19',1,'2025-01-26 18:44:58','2025-01-26 18:44:58'),(90,33,'5',0,'2025-01-26 19:23:13','2025-01-26 19:23:13'),(91,33,'3',0,'2025-01-26 19:23:13','2025-01-26 19:23:13'),(92,33,'4',1,'2025-01-26 19:23:13','2025-01-26 19:23:13'),(93,34,'1945-yil',1,'2025-01-26 19:23:13','2025-01-26 19:23:13'),(94,34,'1940-yil',0,'2025-01-26 19:23:13','2025-01-26 19:23:13');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int NOT NULL,
  `question_text` text NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `questions_fk1` (`quiz_id`),
  CONSTRAINT `questions_fk1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (8,9,'2 + 2 =','2025-01-19 22:48:51','2025-01-19 22:48:51'),(9,10,'2 + 2 =','2025-01-19 22:48:52','2025-01-19 22:48:52'),(11,12,'2 + 2 =','2025-01-19 22:48:52','2025-01-19 22:48:52'),(12,13,'2 + 2 =','2025-01-19 22:48:52','2025-01-19 22:48:52'),(13,14,'2 + 2 =','2025-01-19 22:48:52','2025-01-19 22:48:52'),(14,15,'2 + 2 =','2025-01-19 22:48:52','2025-01-19 22:48:52'),(15,16,'H2O','2025-01-19 23:36:30','2025-01-19 23:36:30'),(16,17,'Tarix otasi kim?','2025-01-22 16:45:46','2025-01-22 16:45:46'),(17,18,'1 nechiga teng','2025-01-22 16:46:48','2025-01-22 16:46:48'),(32,19,'How old is Nurdavlat?','2025-01-26 18:44:58','2025-01-26 18:44:58'),(33,8,'2 + 2 =','2025-01-26 19:23:13','2025-01-26 19:23:13'),(34,8,'2-Jahon urishi nechinchi yil tugagan','2025-01-26 19:23:13','2025-01-26 19:23:13');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quizzes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unique_value` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `time_limit` int NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `unique_value` (`unique_value`),
  KEY `quizzes_fk1` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizzes`
--

LOCK TABLES `quizzes` WRITE;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` VALUES (8,'jjghdf',12,'Math 8','Matematikadan savollar',10,'2025-01-19 22:48:51','2025-01-19 22:48:51'),(9,'hjhgj',12,'Math 9','Matematikadan savollar',10,'2025-01-19 22:48:51','2025-01-19 22:48:51'),(10,'7g87sdsdf',12,'Math 10','Matematikadan savollar',10,'2025-01-19 22:48:51','2025-01-19 22:48:51'),(12,'sdfgwe87554',12,'Math 2','Matematikadan savollar',10,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(13,'dfsg465w87ert',12,'Physics 13','Matematikadan savollar',10,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(14,'sdfg2w1e31rsgw',12,'Pyschologist 14','Matematikadan savollar',10,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(15,'r787rerew',12,'History 15','Matematikadan savollar',10,'2025-01-19 22:48:52','2025-01-19 22:48:52'),(16,'785612s1dg',12,'KIMYO','Mendeleyev jadvali',5,'2025-01-19 23:36:30','2025-01-19 23:36:30'),(17,'w1er212s',48,'History','Tarix fanidan ',15,'2025-01-22 16:45:46','2025-01-22 16:45:46'),(18,'sdfgert121545',48,'EE','Descrition',15,'2025-01-22 16:46:48','2025-01-22 16:46:48'),(19,'67963c5a836f8',12,'Nurdavlats\'','Learn about Nurdavlat',15,'2025-01-26 18:44:58','2025-01-26 18:44:58');
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `quiz_id` int NOT NULL,
  `started_at` datetime NOT NULL,
  `finished_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `results_fk1` (`user_id`),
  KEY `results_fk2` (`quiz_id`),
  CONSTRAINT `results_fk1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `results_fk2` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (15,12,8,'2025-01-30 15:46:55','2025-01-30 15:56:55');
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_api_tokens`
--

DROP TABLE IF EXISTS `user_api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_api_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_api_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_api_tokens_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_api_tokens_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_api_tokens`
--

LOCK TABLES `user_api_tokens` WRITE;
/*!40000 ALTER TABLE `user_api_tokens` DISABLE KEYS */;
INSERT INTO `user_api_tokens` VALUES (1,'e8aae1b21de29bf8809eb34a1600039a27cbd3610067c4e8e2574e49f6bc9cafcd6449738fc077c0',12,'2025-01-23 14:55:23','2025-01-16 14:55:23'),(2,'ebd68dd08d21cc33b158ac102ff186fed88a2aab782835bc98fb88084d3f834db92aa1e9b5d7d705',12,'2025-01-23 17:22:25','2025-01-16 17:22:25'),(3,'01b79e15501268c7efd6f69a79f98a04122f2a986f4932e8f9664bd6373dfbf33ca90b09562ab8bb',12,'2025-01-26 18:35:04','2025-01-19 18:35:04'),(4,'7dcf7389ecad057a76465a6845929ea8cf6b05a043baa58dae4c722ed550a8a37c1f65bb608a4212',12,'2025-01-26 23:35:23','2025-01-19 23:35:23'),(5,'76f3e23240b489f7b62a5c8be2a7545239608d63bf31daa710f08e7e4a1f0dd25d593b1469660f83',12,'2025-01-27 14:01:25','2025-01-20 14:01:25'),(6,'f336f80bb2ae553406007c87b53a7e706231baa3e420afcd5f334b88502a5ff428e979cfd106a57c',12,'2025-01-29 13:58:38','2025-01-22 13:58:38'),(7,'50999975e52aa61dc01c20a1b54c2153b0571f52c64c1e5a93654e9d153d48cc93fea5d03483a4d4',12,'2025-01-29 16:27:59','2025-01-22 16:27:59'),(8,'4fded47a7c648ed467b23c65647f8df83a857905b138dc45cc93e15ff5deb0641a206509593e87c0',48,'2025-01-29 16:28:54','2025-01-22 16:28:54'),(9,'950f289c07e12c7cafad02fb43bfda172164912fb914cb7f9afc66d1a6d17479619282c11c1ee6e7',12,'2025-01-29 17:22:11','2025-01-22 17:22:11'),(10,'cc088a79a838296896ffb66ab808896cdbddd09d1c39cb4b721e21b246ae70be0d1c10e01a7fff77',49,'2025-02-06 14:31:30','2025-01-30 14:31:30'),(11,'3683adcd7e1d47565ca97dd45be8480f58c5d34ec68b87e62e051b9a7d208abce5b01829170f0acf',12,'2025-02-06 14:34:18','2025-01-30 14:34:18'),(12,'b19a7865e16348435f835531b3391c6c23ca429387591378082d2f646833309f00d6829d4d211504',12,'2025-02-06 15:39:33','2025-01-30 15:39:33');
/*!40000 ALTER TABLE `user_api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'NURDAVLAT','Nurdavlat@gmail.com','$2y$10$aswoefVZ97V8Jj1zqWIXSeLvdGhxkxSlhhz.MCaRuqPm7tULf/TL.',NULL,'2024-12-25 13:53:47'),(2,'NUrdavlat','nimadirov@gmail.com','$2y$10$Vfl6.mmuvhurP7jZYemC4utb9reQpQAEd2goSCt4.s7VnHVre0.eS','2024-12-26 15:14:42','2024-12-26 15:14:42'),(4,'Temur','Temirov@gmail.com','$2y$10$a5XVuMmHzeHMzmHNnQEBquLPyPl16eyqTZF6HwRaWM0HLrA5LtIv2','2024-12-26 15:49:13','2024-12-26 15:49:13'),(5,'Dilshod','Dilshod@gmail.com','$2y$10$rnkeCsEO2mg4JiUi2jvW3.7zzjrj1H05Pj8PzbGs7I3W798c0u9KK','2024-12-26 17:10:53','2024-12-26 17:10:53'),(8,'Nurridin','Nurridin@gmail.com','$2y$10$pRv8ldUil9KoPEfBZtfMietEBARRWuePfn6UUEMjS0G/VpZ6xeTdS','2024-12-26 17:30:27','2024-12-26 17:30:27'),(9,'Nurridin','Nurbek@gmail.com','$2y$10$/s/tLQMVdR/BkhHZaxA.6u865tJlv6evdB3npAsO10hF1iFAEBgVS','2024-12-26 18:08:35','2024-12-26 18:08:35'),(10,'Nurbek','Nurbek1@gmail.com','$2y$10$7aevGcxUTWuxhkap3vQzRuLLwGSOCYaQdhqHrBdlIiKf0Zbhrscge','2024-12-27 13:39:57','2024-12-27 13:39:57'),(11,'Nurbek','Nurbek12@gmail.com','$2y$10$0P3fo8agGut4pCo7o1u7rujHzblKM7YUUgz2z0jBrUHp9iYXJk.HO','2024-12-27 14:00:49','2024-12-27 14:00:49'),(12,'Nurdavlat','Qaysidirov@gmail.com','$2y$10$GlvG0KEfDaGE4K96HmZKDOuniPI4ShhXQcq0U80jcg9kbM0RZzbFK','2025-01-09 13:08:12','2025-01-09 13:08:12'),(13,'Tohir Sodiqov','Tohir@gmail.com','$2y$10$7LAI38EMWVw0yn1nLlZrx./1oZ7L60UvtPwoP8iDZqbrnaSEjSoIe','2025-01-15 17:00:20','2025-01-15 17:00:20'),(14,'Teacher Azam','Azam@gmail.com','$2y$10$kTZK.RttUfx7fXy.dGrItec7f70RLw442IMiziFneekPxrIOahfxq','2025-01-15 17:02:25','2025-01-15 17:02:25'),(15,'Joha','Joha12@gmail.com','$2y$10$0jLyYwXILu4WOCBmepKwKunb36DLqk7lP2SW4cthdOM9Y6GCGB9Am','2025-01-15 17:11:26','2025-01-15 17:11:26'),(16,'Joha','Joha123222@gmail.com','$2y$10$jtfRtBZ2IUWUKg.BOYC1o.cRHKRKdAfa8iNhxeS2FOCIpUZLgQZCy','2025-01-15 17:12:06','2025-01-15 17:12:06'),(44,'aaa','aa@gmail.com','$2y$10$Ibr73Pl.J.URd0trpTryZOheoWvJ5f79QdXyQqgP3b9YunltF.kR2','2025-01-15 17:20:02','2025-01-15 17:20:02'),(45,'oo','pp@gmail.com','$2y$10$bsgdD60PgdAILTRoZzhsP.PF0X8K817/AdILSS1ZIweyrxAAnYNMe','2025-01-15 17:24:24','2025-01-15 17:24:24'),(46,'asd','asd@gmail.com','$2y$10$8dnuiInZQXGQoyPnQIn6FOAdOjzFttVv0XUPr1/MpGkEoOewvGmKO','2025-01-15 17:25:48','2025-01-15 17:25:48'),(47,'Olaaaa','Olaa@gmail.com','$2y$10$OTsjreyiHiiPzwEpMXTZv.a.xCNG6Vc9KjvX65m3ms.i5K3H8ifnO','2025-01-15 17:34:46','2025-01-15 17:34:46'),(48,'BEKTEMER','TTEEMM@gmail.com','$2y$10$mjD7zdqSo5ETJGI0YC9MfudkeV8H5ZJNfDA73J8JfC56Id.hJo2FS','2025-01-22 16:28:54','2025-01-22 16:28:54'),(49,'Real person','Really@gmail.com','$2y$10$03YGVmcuf0i.m2x4/.SVru6l6En5B7zyP0rg2cv6Pa9kWTZ5e1P/G','2025-01-30 14:31:30','2025-01-30 14:31:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-04 18:41:43
