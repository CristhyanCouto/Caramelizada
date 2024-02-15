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
-- Table structure for table `produtoras`
--

DROP TABLE IF EXISTS `produtoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtoras` (
  `IDPRODUTORA` int NOT NULL AUTO_INCREMENT,
  `NOME_PRODUTORA` varchar(1000) DEFAULT NULL,
  `PAIS_PRODUTORA` int DEFAULT NULL,
  `FUNDADA` date DEFAULT NULL,
  PRIMARY KEY (`IDPRODUTORA`),
  KEY `FK_PAIS_PRODUTORA` (`PAIS_PRODUTORA`),
  CONSTRAINT `FK_PAIS_PRODUTORA` FOREIGN KEY (`PAIS_PRODUTORA`) REFERENCES `paises` (`IDPAIS`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtoras`
--

LOCK TABLES `produtoras` WRITE;
/*!40000 ALTER TABLE `produtoras` DISABLE KEYS */;
INSERT INTO `produtoras` VALUES (1,'Legendary Pictures (Legendary Entertainment)',70,'2005-07-01'),(2,'Alcon Entertainment',70,'1997-01-23'),(3,'A Band Apart',70,'1991-01-01'),(4,'20th Century Studios',70,'1935-05-31'),(5,'Paramount Pictures',70,'1912-05-08'),(6,'Zazen Produções',61,'1997-01-01'),(7,'Columbia Pictures',70,'1924-01-10'),(8,'Shiny Penny Productions',NULL,NULL),(9,'Entertainment Film Distributors',173,'1978-01-01'),(10,'Battle Mountain Films',NULL,NULL),(11,'Warner Bros. Entertainment',70,'1923-04-04'),(12,'Scott Free Productions',173,'1980-01-01'),(13,'Regency Enterprises',70,'1982-01-01'),(14,'Fox 2000 Pictures',70,'1994-01-07'),(15,'Boomtown Media Partners',NULL,NULL),(16,'BondIt LLC',NULL,'2014-01-01'),(17,'Buffalo 8 Productions',NULL,'2012-01-01'),(18,'CBS',70,'1927-09-18'),(19,'Wonderland Sound and Vision',70,'2000-01-01'),(20,'New Line Cinema',70,'1967-01-01'),(21,'Boies/Shiller Films',NULL,NULL),(22,'Polybona Films',100,'1999-01-01'),(23,'Heyday Films',173,'1996-10-10'),(24,'Alfran Productions',NULL,NULL),(25,'Blumhouse Productions',70,'2000-01-01'),(26,'Right of Way Films',NULL,NULL),(27,'Bold Films',NULL,'2004-01-01'),(28,'Mattel',70,NULL),(29,'LuckyChap Entertainment',70,'2014-01-01'),(30,'Universal Studios',70,'1912-04-30'),(31,'AGBO',70,'2016-01-01'),(32,'Filmhaus Films',NULL,NULL),(33,'T.G.I.M Films',NULL,NULL),(34,'Happy Madison Productions',70,'1999-01-01'),(35,'Relativity Media',70,'2004-01-01'),(36,'Sony Pictures Entertainment',70,'1987-12-21'),(37,'IAC',70,'1995-08-24'),(38,'Ley Line Entertainment',NULL,NULL),(39,'DC Studios',70,'2016-05-01'),(40,'DC Entertainment',70,'2009-09-09'),(41,'The Weinstein Company',70,'2005-10-01'),(42,'Nu Image',70,'1992-01-01'),(43,'Lionsgate Films',70,'1962-01-01'),(44,'Campbell Grobman Films',70,'2011-01-01'),(45,'Lightstorm Entertainment',70,'1990-01-01'),(46,'Dune Entertainment',70,'2013-01-01'),(47,'Sony Pictures Animation',70,'2002-05-09'),(48,'Marvel Entertainment',70,'1998-06-01'),(49,'Burr Productions',NULL,NULL),(50,'Saturn Films',70,'2000-01-01'),(51,'Marvel Studios',70,'1992-12-07'),(52,'Quebec Film and Television Tax Credit',NULL,NULL),(53,'Hasbro',70,'1923-12-06'),(54,'Entertainment One',62,NULL),(55,'Hasbro Studios',70,'2009-03-06'),(56,'MTV Entertainment Studios',70,'1991-01-01'),(57,'Dickhouse Productions',NULL,NULL),(58,'Fuzzy Door Productions',70,'1998-07-31'),(59,'Media Rights Capital',70,'2006-01-01'),(60,'Spyglass Entertainment',70,'1998-01-01'),(61,'Radio Silence Productions',70,'2011-01-01'),(62,'Syncopy',173,'2001-02-27'),(63,'Adult Swim',70,'2001-01-01'),(64,'Cartoon Network',70,NULL),(65,'TSG Entertainment',70,'2012-01-01'),(66,'Coppola Company',70,'1994-01-01');
/*!40000 ALTER TABLE `produtoras` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-15 18:54:00
