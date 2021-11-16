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
-- Table structure for table `genre_for_movie`
--

DROP TABLE IF EXISTS `genre_for_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre_for_movie` (
  `EIDR` int DEFAULT NULL,
  `genre_name` varchar(100) DEFAULT NULL,
  KEY `EIDR` (`EIDR`),
  KEY `genre_name` (`genre_name`),
  CONSTRAINT `genre_for_movie_ibfk_1` FOREIGN KEY (`EIDR`) REFERENCES `movie` (`EIDR`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `genre_for_movie_ibfk_2` FOREIGN KEY (`genre_name`) REFERENCES `genres` (`genre_name`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_for_movie`
--

LOCK TABLES `genre_for_movie` WRITE;
/*!40000 ALTER TABLE `genre_for_movie` DISABLE KEYS */;
INSERT INTO `genre_for_movie` VALUES (402460,'Adventure'),(402460,'Mystery'),(402460,'Fantasy'),(402461,'Adventure'),(402461,'Mystery'),(402461,'Science Fiction'),(402461,'Drama'),(402461,'Epic'),(402462,'Science Fiction'),(402462,'Adventure'),(402462,'Action'),(402463,'Drama'),(402463,'Romance'),(402464,'Drama'),(402464,'Mystery'),(402464,'Scir-Fi'),(402464,'Thriller'),(402465,'Adventure'),(402465,'Action'),(402465,'Fantasy'),(402465,'Science Fiction'),(402465,'Comedy'),(402465,'Teen'),(402465,'SuperHero');
/*!40000 ALTER TABLE `genre_for_movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-16 11:16:43
