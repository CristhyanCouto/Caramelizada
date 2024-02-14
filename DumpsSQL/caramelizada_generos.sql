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
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `IDGENERO` int NOT NULL AUTO_INCREMENT,
  `NOME_GENERO` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`IDGENERO`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Ação'),(2,'Animação'),(3,'Aventura'),(4,'Comédia'),(5,'Dança'),(6,'Documentário'),(7,'Docuficção'),(8,'Drama'),(9,'Espionagem'),(10,'Fantasia'),(11,'Faroeste'),(12,'Ficção Científica'),(13,'Guerra'),(14,'Horror'),(15,'Mistério'),(16,'Musicais'),(17,'Policial'),(18,'Pornográfico'),(19,'Romance'),(20,'Suspense'),(21,'Terror'),(22,'Thriller'),(23,'Indie'),(24,'Arcade'),(25,'Advergames'),(26,'Educacional'),(27,'2D'),(28,'2.5D'),(29,'3D'),(30,'Labirinto'),(31,'Beat\'em Up'),(32,'Shoot\'em Up'),(33,'Plataforma'),(34,'Furtivo'),(35,'FPS'),(36,'TPS'),(37,'Estratégia'),(38,'Turnos'),(39,'Tower Defense'),(40,'RPG'),(41,'Hack And Slash'),(42,'Dungeon Crawl'),(43,'Roguelike'),(44,'JRPG'),(45,'Esporte'),(46,'Futebol'),(47,'Skate'),(48,'Corrida'),(49,'Simulação'),(50,'MMO'),(51,'MOBA'),(52,'Tabuleiro'),(53,'Cartas'),(54,'Casual'),(55,'Puzzle'),(56,'Battle Royale'),(57,'Luta'),(58,'Crime'),(59,'Independente'),(60,'Super Herói'),(61,'Zumbi'),(62,'Longa-metragem'),(63,'Shōnen'),(64,'Humor Negro'),(65,'Gore');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-14 11:03:17
