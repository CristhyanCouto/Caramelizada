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
-- Table structure for table `plataformas`
--

DROP TABLE IF EXISTS `plataformas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plataformas` (
  `IDPLATAFORMA` int NOT NULL AUTO_INCREMENT,
  `NOME_PLATAFORMA` varchar(1000) DEFAULT NULL,
  `LANCAMENTO_PLATAFORMA` date DEFAULT NULL,
  PRIMARY KEY (`IDPLATAFORMA`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plataformas`
--

LOCK TABLES `plataformas` WRITE;
/*!40000 ALTER TABLE `plataformas` DISABLE KEYS */;
INSERT INTO `plataformas` VALUES (1,'PC','1962-02-14'),(2,'MAC','2001-03-24'),(3,'Linux','1991-10-05'),(4,'Playstation','1994-12-03'),(5,'Playstation 2','2004-11-05'),(6,'Playstation 3','2006-11-11'),(7,'Playstation 4','2013-11-15'),(8,'Playstation 5','2020-11-12'),(9,'PSP','2004-12-12'),(10,'PS Vita','2011-12-17'),(11,'Xbox','2001-11-15'),(12,'Xbox 360','2005-11-22'),(13,'Xbox One','2013-11-22'),(14,'Xbox Series','2020-11-10'),(15,'Master System','1987-08-01'),(16,'Nintendo 64','1996-09-29'),(17,'Dreamcast','1998-11-27'),(18,'GameCube','2001-09-14'),(19,'NES','1985-10-18'),(20,'Wii U','2012-11-18'),(21,'Mega Drive','1989-08-14'),(22,'Saturn','1994-11-22'),(23,'Nintendo 3DS','2011-02-26'),(24,'Game Boy Advance','2001-06-11'),(25,'Wii','2006-11-19'),(26,'Super Nintendo','1990-11-21'),(27,'Nintendo DS','2004-11-21');
/*!40000 ALTER TABLE `plataformas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-15 18:53:59
