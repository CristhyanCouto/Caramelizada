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
-- Table structure for table `diretores`
--

DROP TABLE IF EXISTS `diretores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diretores` (
  `IDDIRETOR` int NOT NULL AUTO_INCREMENT,
  `NOME_DIRETOR` varchar(1000) DEFAULT NULL,
  `PAIS_DIRETOR` int DEFAULT NULL,
  `ATUAL_ESTADO` int DEFAULT NULL,
  `NASCIMENTO` date DEFAULT NULL,
  `FALECIMENTO` date DEFAULT NULL,
  PRIMARY KEY (`IDDIRETOR`),
  KEY `FK_PAIS_DIRETOR` (`PAIS_DIRETOR`),
  KEY `FK_ATUAL_ESTADO_DIRETOR` (`ATUAL_ESTADO`),
  CONSTRAINT `FK_ATUAL_ESTADO_DIRETOR` FOREIGN KEY (`ATUAL_ESTADO`) REFERENCES `atual_estado` (`IDATUAL_ESTADO`),
  CONSTRAINT `FK_PAIS_DIRETOR` FOREIGN KEY (`PAIS_DIRETOR`) REFERENCES `paises` (`IDPAIS`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diretores`
--

LOCK TABLES `diretores` WRITE;
/*!40000 ALTER TABLE `diretores` DISABLE KEYS */;
INSERT INTO `diretores` VALUES (1,'Christopher Nolan',173,1,'1970-07-30',NULL),(2,'Denis Villeneuve',62,1,'1967-10-03',NULL),(3,'Quentin Tarantino',70,1,'1963-03-27',NULL),(4,'James Cameron',62,1,'1954-08-16',NULL),(5,'Francis Ford Coppola',70,1,'1939-04-07',NULL),(6,'José Padilha',61,1,'1967-08-01',NULL),(7,'Robert Zemeckis',70,1,'1952-05-14',NULL),(8,'John Wells',70,1,'1956-05-28',NULL),(9,'Edward Zwick',70,1,'1952-10-08',NULL),(10,'Mauro Borrelli',NULL,NULL,NULL,NULL),(11,'Joseph McGinty Nichol - McG',70,1,'1968-08-09',NULL),(12,'Damien Chazelle',70,1,'1985-01-19',NULL),(13,'Greta Gerwig',70,1,'1983-08-04',NULL),(14,'Curtis Hanson',70,2,'1945-03-24','2016-09-20'),(15,'Sam Hargrave',NULL,NULL,NULL,NULL),(16,'Dennis Dugan',70,1,'1946-09-05',NULL),(17,'Daniel Kwan',70,1,'1988-02-10',NULL),(18,'Daniel Scheinert',70,1,'1987-06-07',NULL),(19,'Andy Muschietti',56,1,'1973-08-26',NULL),(20,'Alexandre Bustillo',153,1,'1975-08-10',NULL),(21,'Julien Maury',153,1,'1978-01-01',NULL),(22,'Peter Ramsey',70,1,'1962-12-23',NULL),(23,'Bob Persichetti',NULL,1,'1973-01-17',NULL),(24,'Rodney Rothman',70,NULL,NULL,NULL),(25,'Tom Gormican',NULL,NULL,NULL,NULL),(26,'James Gunn',70,1,'1966-08-05',NULL),(27,'John Francis Daley',70,1,'1985-07-20',NULL),(28,'Jonathan M. Goldstein',70,1,'1968-09-02',NULL),(29,'Michael Bay',70,1,'1965-02-17',NULL),(30,'Jeff Tremaine',70,1,'1966-09-04',NULL),(31,'Ruben Fleischer',70,1,'1974-10-31',NULL),(32,'Seth MacFarlane',70,1,'1973-10-26',NULL),(33,'Tyler Gillett',70,1,'1982-03-06',NULL),(34,'Matt Bettinelli-Olpin',70,1,'1978-02-19',NULL);
/*!40000 ALTER TABLE `diretores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-14 11:03:18
