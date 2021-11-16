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
-- Table structure for table `actor_info`
--

DROP TABLE IF EXISTS `actor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor_info` (
  `actor_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(1000) DEFAULT NULL,
  `last_name` varchar(1000) DEFAULT NULL,
  `gender` char(6) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `nationality` varchar(30) DEFAULT NULL,
  `net_worth` int DEFAULT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2503 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_info`
--

LOCK TABLES `actor_info` WRITE;
/*!40000 ALTER TABLE `actor_info` DISABLE KEYS */;
INSERT INTO `actor_info` VALUES (2460,'Daniel','Radcliffe','male','1989-07-23','British',94000000),(2461,'Rupert','Grint','male','1988-08-24','British',50000000),(2462,'Emma','Watson','female','1990-04-15','British',85000000),(2463,'Michael','Gambon','male','1940-10-19','Irish',20000000),(2464,'Ralph','Fiennes','male','1962-12-22','Serbian',50000000),(2465,'Tom','Felton','male','1987-09-22','British',20000000),(2466,'Alan','Rickman','male','1946-02-21','English',16000000),(2467,'Robbie','Coltrane','male','1950-03-30','Scottish',4000000),(2468,'Maggie','Smith','female','1934-12-28','Scottish',20000000),(2469,'Matthew','McConaughey','male','1989-07-23','British',94000000),(2470,'John','Lithgow','male','1945-10-19','American',500000000),(2471,'Anne','Hathway','female','1982-11-12','American',85000000),(2472,'Jessica','Gibbon','female','1977-03-24','American',70000000),(2473,'Michael','Caine','male','1962-12-22','American',60000000),(2474,'Casey','Affleck','male','1981-10-22','British',10000000),(2475,'Wes','Bentley','male','1946-03-25','English',16000000),(2476,'Tom','Holland','male','1996-06-01','British',18000000),(2477,'Michael','Keaton','male','1951-09-05','American',400000000),(2478,'Jon','Favreau','male','1966-10-19','American',100000000),(2479,'Gwyneth','Paltrow','female','1972-09-27','American',150000000),(2480,'Zendaya','undefined','female','1996-09-01','American',15000000),(2481,'Donald','Glover','male','1983-09-25','American',35000000),(2482,'Jacob','Batalon','male','1996-10-09','English',4000000),(2483,'Leonardo','DiCaprio','male','1974-11-11','American',260000000),(2484,'Kate','Winslet','female','1975-10-05','British',65000000),(2485,'Billy','Zane','male','1966-02-24','American',85000000),(2486,'Kathy','Bates','female','1948-06-28','American',20000000),(2487,'Frances','Fisher','female','1952-05-11','American',2000000),(2488,'Gloria','Stuart','female','1910-07-04','American',5000000),(2489,'Bernard','Hill','male','1944-12-17','British',11000000),(2490,'Hugh','Jackman','male','0168-10-12','Australian',180000000),(2491,'Christian','Bale','male','1974-01-30','Welsh',120000000),(2492,'Michael','Caine','male','1933-03-14','British',780000000),(2493,'Rebecca','Hall','female','1982-05-03','British',7000000),(2494,'Piper','Perabo','female','1976-10-31','American',10000000),(2495,'David','Bowie','male','1947-01-08','British',230000000),(2496,'Scarlett','Johansson','female','1984-11-22','American',165000000),(2497,'Andy','Serkis','male','1964-04-20','British',18000000),(2498,'Daniel','Davis','male','1945-11-26','American',1500000),(2499,'Jake','Gyllenhaal','male','1980-12-19','American',80000000),(2500,'Samuel','L.','male','1948-12-21','American',250000000),(2501,'Jacob','Batalon','male','1996-10-09','American',4000000),(2502,'Marisa','Tomei','female','1964-12-04','American',25000000);
/*!40000 ALTER TABLE `actor_info` ENABLE KEYS */;
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
