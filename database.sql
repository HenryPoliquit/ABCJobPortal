-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: abc_portal
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `educations`
--

DROP TABLE IF EXISTS `educations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educations` (
  `education_id` int NOT NULL AUTO_INCREMENT,
  `user_details_id` int NOT NULL,
  `intitution_name` varchar(52) NOT NULL,
  `education_name` varchar(52) NOT NULL DEFAULT 'Education',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`education_id`),
  KEY `user_details_id` (`user_details_id`),
  CONSTRAINT `educations_ibfk_1` FOREIGN KEY (`user_details_id`) REFERENCES `user_details` (`user_details_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educations`
--

LOCK TABLES `educations` WRITE;
/*!40000 ALTER TABLE `educations` DISABLE KEYS */;
INSERT INTO `educations` VALUES (1,1,'Lithan','Software Engineering','2014-02-02','2018-02-02'),(4,4,'Lithan','Software Engineering','2022-09-26','2026-09-26'),(49,49,'Lithan','Software Engineering','2018-01-01','2022-01-01');
/*!40000 ALTER TABLE `educations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiences` (
  `experience_id` int NOT NULL AUTO_INCREMENT,
  `user_details_id` int NOT NULL,
  `company_name` varchar(52) NOT NULL,
  `position` varchar(52) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`experience_id`),
  KEY `user_details_id` (`user_details_id`),
  CONSTRAINT `experiences_ibfk_1` FOREIGN KEY (`user_details_id`) REFERENCES `user_details` (`user_details_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiences`
--

LOCK TABLES `experiences` WRITE;
/*!40000 ALTER TABLE `experiences` DISABLE KEYS */;
INSERT INTO `experiences` VALUES (1,1,'ABC Jobs','Administrator','2018-01-01','2024-01-01'),(4,4,'Meta','Data Analyst','2022-02-27','2023-12-27'),(49,49,'Amazon','Frontend Developer','2022-10-01','2024-10-01');
/*!40000 ALTER TABLE `experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(52) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(2,'User');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `user_details_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `city` varchar(60) DEFAULT NULL,
  `country` varchar(60) DEFAULT NULL,
  `first_name` varchar(52) NOT NULL,
  `last_name` varchar(52) NOT NULL,
  `title` varchar(52) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `company_name` varchar(52) DEFAULT NULL,
  `url` varchar(52) DEFAULT NULL,
  PRIMARY KEY (`user_details_id`),
  KEY `user_id` (`user_id`),
  KEY `city_id` (`country`),
  CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,1,'Manila','Philippines','Admin','Admin','Data Analyst','Experienced Administrative Assistant with 5+ years of experience working in a multinational firm. Detailed knowledge of business terminologies and standard practices. Committed and passionate with a focus on professionalism.','ABCJobs','abcjobs.com'),(4,4,'Cebu','Philippines','Paul Henry','Poliquit','Data Analyst','Hi','Meta','meta.com'),(45,45,'Dumaguete','Philippines','Henry','Poliquit','Data Analyst',NULL,NULL,NULL),(46,46,'Tacloban','Philippines','Paul Arthur','Poliquit','Software Engineer','-','-','-'),(49,49,NULL,'Malaysia','Joshua','Faustorilla','Software Engineer','I like coding.','Amazon','amazon.com'),(50,50,'New York','USA','Erin','Umbac','Data Analyst','-','-','-'),(51,51,'Tokyo','Japan','John','Paul','UX Designer','-','-','-'),(53,53,'-','-','Mia','Amores','UI Engineer','-','-','-'),(55,55,NULL,NULL,'Nicole','Ebeo',NULL,NULL,NULL,NULL),(57,57,'Milan','Italy','Rob','Bandiola','Junior Developer','-','-','-');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT '2',
  `email` varchar(52) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email_verified_at` date DEFAULT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'admin@gmail.com','12345678','2023-02-22','2023-02-22'),(4,2,'paulpoliquit123@gmail.com','12345678','2023-02-22','2023-02-22'),(45,2,'henrypoliquit09@gmail.com','12345678','2023-02-24','2023-02-24'),(46,2,'poliquitpaularthur8@gmail.com','12345678','2023-02-24','2023-02-24'),(49,2,'joshua@gmail.com','12345678','2023-02-26','2023-02-26'),(50,2,'erinumbac@yahoo.com','12345678','2023-03-01','2023-03-01'),(51,2,'johnpaul@yahoo.com','12345678','2023-03-02','2023-03-02'),(53,2,'mia@gmail.com','12345678','2023-03-02','2023-03-02'),(55,2,'nicole@gmail.com','12345678','2023-03-09','2023-03-09'),(57,2,'robandiola@gmail.com','rob12345','2023-03-11','2023-03-11');
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

-- Dump completed on 2023-03-14 23:46:03
