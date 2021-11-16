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
-- Table structure for table `cast_info`
--

DROP TABLE IF EXISTS `cast_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cast_info` (
  `EIDR` int NOT NULL,
  `actor_id` int NOT NULL,
  `character_name` varchar(100) DEFAULT NULL,
  KEY `EIDR` (`EIDR`),
  KEY `actor_id` (`actor_id`),
  CONSTRAINT `cast_info_ibfk_1` FOREIGN KEY (`EIDR`) REFERENCES `movie` (`EIDR`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `cast_info_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actor_info` (`actor_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast_info`
--

LOCK TABLES `cast_info` WRITE;
/*!40000 ALTER TABLE `cast_info` DISABLE KEYS */;
INSERT INTO `cast_info` VALUES (402460,2460,'Harry Potter'),(402460,2461,'Ron Weasley'),(402460,2462,'Hermione Granger'),(402460,2463,'Albus Dumbledore'),(402460,2464,'Lord Voldemort'),(402460,2465,'Draco Malfoy'),(402460,2466,'Severus Snape'),(402460,2467,'Rubeus Hagrid'),(402460,2468,'Minerva McGonagall'),(402461,2469,'Joseph \'Coop\' Cooper'),(402461,2470,'Donald'),(402461,2471,'Dr. Amelia Brand'),(402461,2472,'Murphy \'Murph\' Cooper'),(402461,2473,'Professor John Brand'),(402461,2474,'Tom Cooper'),(402461,2475,'Dr. Doyle'),(402462,2476,'Peter \'Spider-Man\' Parker'),(402462,2477,'Adrian \'Vulture\' Toomes'),(402462,2478,'Harold \'Happy\' Hogan'),(402462,2479,'Pepper Potts'),(402462,2480,'Michelle \'MJ\''),(402462,2481,'Aaron Davis'),(402462,2482,'Ned'),(402463,2483,'Jack Dawson'),(402463,2484,'Rose Dewitt Bukater'),(402463,2485,'Cal Hockley'),(402463,2486,'Molly Brown'),(402463,2487,'Ruth Dewitt Bukater'),(402463,2488,'Old Rose'),(402463,2489,'Captain Smith'),(402464,2490,'Robert Angier'),(402464,2491,'Alfred Borden'),(402464,2492,'Cutter'),(402464,2493,'Sarah'),(402464,2494,'Julia McCullough'),(402464,2495,'Tesla'),(402464,2496,'Olivia Wenscombe'),(402464,2497,'Alley'),(402464,2498,'Judge'),(402465,2476,'Peter Parker \'Spider-Man\' '),(402465,2480,'Michelle \'MJ\''),(402465,2478,'Harold Hogan \'Happy\''),(402465,2499,'Quentin Beck \'Mysterio\' '),(402465,2500,'Nick Fury'),(402465,2501,'Ned'),(402465,2502,'May Parker');
/*!40000 ALTER TABLE `cast_info` ENABLE KEYS */;
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
