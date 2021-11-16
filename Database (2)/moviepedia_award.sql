-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: moviepedia
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `award` (
  `award_id` int NOT NULL AUTO_INCREMENT,
  `award_name` varchar(1000) DEFAULT NULL,
  `award_category` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award`
--

LOCK TABLES `award` WRITE;
/*!40000 ALTER TABLE `award` DISABLE KEYS */;
INSERT INTO `award` VALUES (1,'National Movie Awards','Best Performance by a Male'),(2,'National Movie Awards','Best Performance by a Female'),(3,'Genre Award','Best Actress in a Movie'),(4,'Genre Award','Most Vile Villain'),(5,'Russian National Movie Awards','Best Foreign Actor'),(6,'Teen Choice Awards','Choice Summer Movie Actor'),(7,'Saturn Awards','Best Performance by a Younger Actor'),(8,'Teen Choice Awards','Choice Summer Movie Actress'),(9,'Kid\'s Choice Awards','Favorite Movie Actress'),(10,'MTV Movie Awards','Best Male Performance'),(11,'Blockbuster Entertainment Awards','Favorite Actor – Drama'),(12,'MTV Movie Awards','Best Male Performance'),(13,'Goldene Kamera','Best International Actress'),(14,'Jupiter Award','Best International Actress'),(15,'Blockbuster Entertainment Awards','Favorite Supporting Actor – Drama'),(16,'Blockbuster Entertainment Awards','Favorite Supporting Actress – Drama'),(17,'Saturn Awards','Best Supporting Actress'),(18,'Screen Actors Guild Awards','Outstanding Performance by a Female Actor in a Supporting Role'),(19,'Online Film Critics Society','Best Supporting Actress'),(20,'Kids Choice Awards','Favorite Movie Actor'),(21,'People\'s Choice Awards','Male Movie Star'),(22,'People\'s Choice Awards','Action Movie Star'),(23,'Kids Choice Awards','Favorite Movie Actress'),(24,'People\'s Choice Awards','Female Movie Star of 2019');
/*!40000 ALTER TABLE `award` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-16 11:16:42
