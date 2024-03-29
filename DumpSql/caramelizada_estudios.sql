-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: Localhost    Database: caramelizada
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `estudios`
--

DROP TABLE IF EXISTS `estudios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudios` (
  `IDESTUDIO` int NOT NULL AUTO_INCREMENT,
  `NOME_ESTUDIO` varchar(1000) DEFAULT NULL,
  `PAIS_ESTUDIO` int DEFAULT NULL,
  `FUNDADA` date DEFAULT NULL,
  PRIMARY KEY (`IDESTUDIO`),
  KEY `FK_PAIS_ESTUDIO` (`PAIS_ESTUDIO`),
  CONSTRAINT `FK_PAIS_ESTUDIO` FOREIGN KEY (`PAIS_ESTUDIO`) REFERENCES `paises` (`IDPAIS`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudios`
--

LOCK TABLES `estudios` WRITE;
/*!40000 ALTER TABLE `estudios` DISABLE KEYS */;
INSERT INTO `estudios` VALUES (1,'Valve Corporation',70,'1996-08-24'),(2,'Rockstar Games',70,'1998-12-01'),(3,'Obsidian Entertainment',70,'2003-06-12'),(4,'Bandai Namco Entertainment',112,'2006-03-31'),(5,'Eric Barone - ConcernedApe',70,'1987-12-03'),(6,'CD Projekt RED',171,'2002-03-06'),(7,'Activision',70,'1979-10-01'),(8,'Re-Logic',70,'2011-01-01'),(9,'Santa Monica Studio',70,'1999-01-01'),(10,'Rockstar Vancouver',62,'1998-05-01'),(11,'Electronic Arts',70,'1982-05-01'),(12,'Naughty Dog',70,'1984-09-27'),(13,'Vivendi Games',70,'1993-01-01'),(14,'Red Mile Entertainment, Inc.',NULL,'2004-01-01'),(15,'Incognito Entertainment',70,'1999-05-01'),(16,'Midway Games',70,'1958-01-01'),(17,'Raven Software',70,'1990-01-01'),(18,'Insomniac Games',70,'1994-02-28'),(19,'CyberConnect2',112,'1996-02-16'),(20,'Snowblind Studios',70,'1997-01-01'),(21,'Traveller’s Tales',173,'1989-01-01'),(22,'Étranges Libellules',153,'1994-01-01');
/*!40000 ALTER TABLE `estudios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-15 18:53:58
