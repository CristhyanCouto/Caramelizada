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
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paises` (
  `IDPAIS` int NOT NULL AUTO_INCREMENT,
  `NOME_PAIS` varchar(1000) DEFAULT NULL,
  `CONTINENTE` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`IDPAIS`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (1,'África do Sul','África'),(2,'Angola','África'),(3,'Argélia','África'),(4,'Benin','África'),(5,'Botsuana','África'),(6,'Burkina Fasso','África'),(7,'Burundi','África'),(8,'Cabo Verde','África'),(9,'Camarões','África'),(10,'Chade','África'),(11,'Comores','África'),(12,'Congo','África'),(13,'Costa do Marfim','África'),(14,'Djibuti','África'),(15,'Egito','África'),(16,'Eritreia','África'),(17,'Etiópia','África'),(18,'Gabão','África'),(19,'Gâmbia','África'),(20,'Gana','África'),(21,'Guiné','África'),(22,'Guiné-Bissau','África'),(23,'Guiné-Equatorial','África'),(24,'Lesoto','África'),(25,'Libéria','África'),(26,'Líbia','África'),(27,'Madagáscar','África'),(28,'Malauí','África'),(29,'Mali','África'),(30,'Marrocos','África'),(31,'Maurício','África'),(32,'Mauritânia','África'),(33,'Moçambique','África'),(34,'Namíbia','África'),(35,'Níger','África'),(36,'Nigéria','África'),(37,'Quênia','África'),(38,'República Centro-Africana','África'),(39,'República Democrática do Congo','África'),(40,'Ruanda','África'),(41,'São Tomé e Príncipe','África'),(42,'Senegal','África'),(43,'Serra Leoa','África'),(44,'Seicheles','África'),(45,'Tunísia','África'),(46,'Somália','África'),(47,'Suazilândia','África'),(48,'Sudão','África'),(49,'Sudão do Sul','África'),(50,'Uganda','África'),(51,'Tanzânia','África'),(52,'Togo','África'),(53,'Zâmbia','África'),(54,'Zimbábue','África'),(55,'Antígua e Barbuda','América'),(56,'Argentina','América'),(57,'Bahamas','América'),(58,'Barbados','América'),(59,'Belize','América'),(60,'Bolívia','América'),(61,'Brasil','América'),(62,'Canadá','América'),(63,'Chile','América'),(64,'Colômbia','América'),(65,'Costa Rica','América'),(66,'Cuba','América'),(67,'Dominica','América'),(68,'El Salvador','América'),(69,'Equador','América'),(70,'Estados Unidos','América'),(71,'Granada','América'),(72,'Guatemala','América'),(73,'Guiana','América'),(74,'Haiti','América'),(75,'Honduras','América'),(76,'Jamaica','América'),(77,'México','América'),(78,'Nicarágua','América'),(79,'Panamá','América'),(80,'Paraguai','América'),(81,'Peru','América'),(82,'República Dominicana','América'),(83,'Santa Lúcia','América'),(84,'São Cristóvão e Névis','América'),(85,'São Vicente e Granadinas','América'),(86,'Suriname','América'),(87,'Trinidad e Tobago','América'),(88,'Uruguai','América'),(89,'Venezuela','América'),(90,'Zimbábue','América'),(91,'Afeganistão','Ásia'),(92,'Arábia Saudita','Ásia'),(93,'Bangladesh','Ásia'),(94,'Barein','Ásia'),(95,'Brunei','Ásia'),(96,'Butão','Ásia'),(97,'Camboja','Ásia'),(98,'Catar','Ásia'),(99,'Cazaquistão','Ásia'),(100,'China','Ásia'),(101,'Cingapura','Ásia'),(102,'Coreia do Norte','Ásia'),(103,'Coreia do Sul','Ásia'),(104,'Emirados Árabes Unidos','Ásia'),(105,'Filipinas','Ásia'),(106,'Iêmen','Ásia'),(107,'Índia','Ásia'),(108,'Indonésia','Ásia'),(109,'Irã','Ásia'),(110,'Iraque','Ásia'),(111,'Israel','Ásia'),(112,'Japão','Ásia'),(113,'Jordânia','Ásia'),(114,'Kuwait','Ásia'),(115,'Laos','Ásia'),(116,'Líbano','Ásia'),(117,'Malásia','Ásia'),(118,'Maldivas','Ásia'),(119,'Myanmar','Ásia'),(120,'Mongólia','Ásia'),(121,'Nepal','Ásia'),(122,'Omã','Ásia'),(123,'Paquistão','Ásia'),(124,'Quirguistão','Ásia'),(125,'Síria','Ásia'),(126,'Sri Lanka','Ásia'),(127,'Tadjiquistão','Ásia'),(128,'Tailândia','Ásia'),(129,'Timor-Leste','Ásia'),(130,'Turquia','Ásia'),(131,'Turcomenistão','Ásia'),(132,'Uzbequistão','Ásia'),(133,'Vietnã','Ásia'),(134,'Quirguistão','Ásia'),(135,'Albânia','Europa'),(136,'Alemanha','Europa'),(137,'Andorra','Europa'),(138,'Armênia','Europa'),(139,'Áustria','Europa'),(140,'Azerbaijão','Europa'),(141,'Belarus','Europa'),(142,'Bélgica','Europa'),(143,'Bósnia-Herzegóvina','Europa'),(144,'Bulgária','Europa'),(145,'Chipre','Europa'),(146,'Croácia','Europa'),(147,'Dinamarca','Europa'),(148,'Eslováquia','Europa'),(149,'Eslovênia','Europa'),(150,'Espanha','Europa'),(151,'Estônia','Europa'),(152,'Finlândia','Europa'),(153,'França','Europa'),(154,'Geórgia','Europa'),(155,'Grécia','Europa'),(156,'Hungria','Europa'),(157,'Irlanda','Europa'),(158,'Islândia','Europa'),(159,'Itália','Europa'),(160,'Letônia','Europa'),(161,'Liechtenstein','Europa'),(162,'Lituânia','Europa'),(163,'Luxemburgo','Europa'),(164,'Macedônia','Europa'),(165,'Malta','Europa'),(166,'Moldávia','Europa'),(167,'Mônaco','Europa'),(168,'Montenegro','Europa'),(169,'Noruega','Europa'),(170,'Países Baixos','Europa'),(171,'Polônia','Europa'),(172,'Portugal','Europa'),(173,'Reino Unido','Europa'),(174,'República Tcheca','Europa'),(175,'Romênia','Europa'),(176,'Rússia','Europa'),(177,'San Marino','Europa'),(178,'Sérvia','Europa'),(179,'Suécia','Europa'),(180,'Suíça','Europa'),(181,'Ucrânia','Europa'),(182,'Austrália','Oceania'),(183,'Fiji','Oceania'),(184,'Ilhas Marshall','Oceania'),(185,'Ilhas Salomão','Oceania'),(186,'Kiribati','Oceania'),(187,'Micronésia','Oceania'),(188,'Nauru','Oceania'),(189,'Nova Zelândia','Oceania'),(190,'Palau','Oceania'),(191,'Papua Nova Guiné','Oceania'),(192,'Samoa','Oceania'),(193,'Tonga','Oceania'),(194,'Tuvalu','Oceania'),(195,'Vanuatu','Oceania');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-14 14:43:52
