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
-- Table structure for table `atores`
--

DROP TABLE IF EXISTS `atores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atores` (
  `IDATOR` int NOT NULL AUTO_INCREMENT,
  `NOME_ATOR` varchar(1000) DEFAULT NULL,
  `PAIS_ATOR` int DEFAULT NULL,
  `ATUAL_ESTADO` int DEFAULT NULL,
  `NASCIMENTO` date DEFAULT NULL,
  `FALECIMENTO` date DEFAULT NULL,
  PRIMARY KEY (`IDATOR`),
  KEY `FK_PAIS_ATOR` (`PAIS_ATOR`),
  KEY `FK_ATUAL_ESTADO_ATOR` (`ATUAL_ESTADO`),
  CONSTRAINT `FK_ATUAL_ESTADO_ATOR` FOREIGN KEY (`ATUAL_ESTADO`) REFERENCES `atual_estado` (`IDATUAL_ESTADO`),
  CONSTRAINT `FK_PAIS_ATOR` FOREIGN KEY (`PAIS_ATOR`) REFERENCES `paises` (`IDPAIS`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atores`
--

LOCK TABLES `atores` WRITE;
/*!40000 ALTER TABLE `atores` DISABLE KEYS */;
INSERT INTO `atores` VALUES (1,'Matthew McConaughey',70,1,'1969-11-14',NULL),(2,'Jessica Chastain',70,1,'1977-03-24',NULL),(3,'Anne Hathaway',70,1,'1982-11-12',NULL),(4,'Matt Damon',70,1,'1970-10-08',NULL),(5,'Michael Caine',173,1,'1933-03-14',NULL),(6,'Ryan Gosling',62,1,'1980-11-12',NULL),(7,'Harrison Ford',70,1,'1942-07-13',NULL),(8,'Ana de Armas',66,1,'1988-04-30',NULL),(9,'Mackenzie Davis',62,1,'1987-04-11',NULL),(10,'Jared Leto',70,1,'1971-12-26',NULL),(11,'Robin Wright',70,1,'1966-04-08',NULL),(12,'Dave Bautista',70,1,'1969-01-18',NULL),(13,'Christoph Waltz',139,1,'1956-10-04',NULL),(14,'Brad Pitt',70,1,'1963-12-18',NULL),(15,'Eli Roth',70,1,'1972-04-18',NULL),(16,'Mélanie Laurent',153,1,'1983-02-21',NULL),(17,'Diane Kruger',136,1,'1976-07-15',NULL),(18,'Daniel Brühl',150,1,'1978-06-16',NULL),(19,'Michael Fassbender',136,1,'1977-04-02',NULL),(20,'Sam Worthington',173,1,'1976-08-02',NULL),(21,'Zoë Saldaña',70,1,'1978-06-19',NULL),(22,'Sigourney Weaver',70,1,'1949-10-08',NULL),(23,'Kate Winslet',173,1,'1975-10-05',NULL),(24,'Stephen Lang',70,1,'1952-07-11',NULL),(25,'Michelle Rodriguez',70,1,'1978-07-12',NULL),(26,'Al Pacino',70,1,'1940-04-25',NULL),(27,'Marlon Brando',70,2,'1924-04-03','2004-07-01'),(28,'James Caan',70,2,'1940-03-26','2022-03-26'),(29,'Robert De Niro',70,1,'1943-08-17',NULL),(30,'Wagner Moura',61,1,'1976-06-27',NULL),(31,'André Ramiro',61,1,'1981-01-14',NULL),(32,'Caio Junqueira',61,2,'1976-09-15','2019-01-23'),(33,'Milhem Cortaz',61,1,'1972-12-06',NULL),(34,'Fernanda Machado',61,1,'1980-10-10',NULL),(35,'Sandro Rocha',61,1,'1974-05-30',NULL),(36,'Fábio Lago',61,1,'1970-03-13',NULL),(37,'Maria Ribeiro',61,1,'1975-11-09',NULL),(38,'Tom Hanks',70,1,'1956-07-09',NULL),(39,'Gary Sinise',70,1,'1955-03-17',NULL),(40,'Leonardo DiCaprio',70,1,'1974-11-11',NULL),(41,'Margot Robbie',182,1,'1990-07-02',NULL),(42,'Bradley Cooper',70,1,'1975-01-05',NULL),(43,'Sienna Miller',70,1,'1981-12-28',NULL),(44,'Omar Sy',153,1,'1978-01-20',NULL),(45,'Sylvia Hoeks',170,1,'1983-06-01',NULL),(46,'Jake Gyllenhaal',70,1,'1980-12-19',NULL),(47,'Josh Gad',70,1,'1981-02-23',NULL),(48,'Katheryn Winnick',62,1,'1977-12-17',NULL),(49,'Hank Azaria',70,1,'1964-04-25',NULL),(50,'Oliver Platt',62,1,'1960-01-12',NULL),(51,'Melissa Roxburgh',62,1,'1992-12-10',NULL),(52,'John Malkovich',70,1,'1953-12-09',NULL),(53,'Martin Lawrence',136,1,'1965-04-16',NULL),(54,'Robert Knepper',70,1,'1959-07-08',NULL),(55,'Josh Radnor',70,1,'1974-07-29',NULL),(56,'Neil Patrick Harris',70,1,'1973-06-15',NULL),(57,'Cobie Smulders',62,1,'1982-04-03',NULL),(58,'Alyson Hannigan',70,1,'1974-03-24',NULL),(59,'Jason Segel',70,1,'1980-01-18',NULL),(60,'Cristin Milioti',70,1,'1985-08-16',NULL),(61,'Samara Weaving',182,1,'1992-02-23',NULL),(62,'Judah Lewis',70,1,'2001-05-22',NULL),(63,'Bella Thorne',70,1,'1997-10-08',NULL),(64,'Emily Alyn Lind',70,1,'2002-05-06',NULL),(65,'Robbie Amell',62,1,'1988-04-21',NULL),(66,'Jenna Ortega',70,1,'2002-09-27',NULL),(67,'Kurt Russell',70,1,'1951-03-17',NULL),(68,'Diane Keaton',70,1,'1946-01-05',NULL),(69,'Talia Shire',70,1,'1946-04-25',NULL),(70,'Miles Teller',70,1,'1987-02-20',NULL),(71,'J. K. Simmons',70,1,'1955-01-09',NULL),(72,'Paul Reiser',70,1,'1956-03-30',NULL),(73,'Melissa Benoist',70,1,'1988-10-04',NULL),(74,'Austin Stowell',70,1,'1984-12-24',NULL),(75,'Will Ferrell',70,1,'1967-07-16',NULL),(76,'Michael Cera',62,1,'1988-06-07',NULL),(77,'Kate McKinnon',70,1,'1984-01-06',NULL),(78,'Eminem',70,1,'1972-10-17',NULL),(79,'Brittany Murphy',70,1,'1977-11-10',NULL),(80,'Anthony Mackie',70,1,'1978-09-23',NULL),(81,'Kim Basinger',70,1,'1953-12-08',NULL),(82,'Mekhi Phifer',70,1,'1974-12-29',NULL),(83,'Chris Hemsworth',182,1,'1983-08-11',NULL),(84,'Golshifteh Farahani',109,1,'1983-07-10',NULL),(85,'Olga Kurylenko',181,1,'1979-11-14',NULL),(86,'Idris Elba',173,1,'1972-09-06',NULL),(87,'Adam Bessa',153,1,'1992-01-01',NULL),(88,'Adam Sandler',70,1,'1966-09-09',NULL),(89,'Kevin James',70,1,'1965-04-26',NULL),(90,'David Spade',70,1,'1964-06-22',NULL),(91,'Chris Rock',70,1,'1965-02-07',NULL),(92,'Rob Schneider',70,1,'1963-10-31',NULL),(93,'Michelle Yeoh',117,1,'1962-08-06',NULL),(94,'Ke Huy Quan',133,1,'1971-08-20',NULL),(95,'Stephanie Hsu',70,1,'1990-11-25',NULL),(96,'Michael Keaton',70,1,'1951-09-05',NULL),(97,'Ben Affleck',70,1,'1972-08-15',NULL),(98,'Sasha Calle',70,1,'1995-08-07',NULL),(99,'Michael Shannon',70,1,'1974-08-07',NULL),(100,'Ezra Miller',70,1,'1992-09-30',NULL),(101,'Jamie Foxx',70,1,'1967-12-13',NULL),(102,'Samuel L. Jackson',70,1,'1948-12-21',NULL),(103,'Kerry Washington',70,1,'1977-01-31',NULL),(104,'Vanessa Grasse',62,1,'1994-01-01',NULL),(105,'Stephen Dorff',70,1,'1973-07-29',NULL),(106,'Jessica Madsen',173,1,'1992-04-11',NULL),(107,'Sam Strike',173,1,'1994-01-18',NULL),(108,'Finn Jones',173,1,'1988-03-24',NULL),(109,'Sally Field',70,1,'1946-11-06',NULL),(110,'Mykelti Williamson',70,1,'1957-03-04',NULL),(111,'Bento Ribeiro',172,1,'1981-05-13',NULL),(112,'Shameik Moore',70,1,'1995-05-04',NULL),(113,'Jake Johnson',70,1,'1978-05-28',NULL),(114,'Stan Lee',70,2,'1922-12-28','2018-11-12'),(115,'Oscar Isaac',72,1,'1979-03-09',NULL),(116,'Nicolas Cage',70,1,'1964-01-07',NULL),(117,'Pedro Pascal',63,1,'1975-04-02',NULL),(118,'Lily Mo Sheen',173,1,'1999-01-31',NULL),(119,'Demi Moore',70,1,'1962-11-11',NULL),(120,'Chris Pratt',70,1,'1979-06-21',NULL),(121,'Karen Gillan',173,1,'1987-11-28',NULL),(122,'Vin Diesel',70,1,'1967-07-18',NULL),(123,'Pom Klementieff',62,1,'1986-05-03',NULL),(124,'Sophia Lillis',70,1,'2002-02-13',NULL),(125,'Chris Pine',70,1,'1980-08-26',NULL),(126,'Daisy Head',173,1,'1991-03-07',NULL),(127,'Regé-Jean Page',173,1,'1988-04-27',NULL),(128,'Chloe Coleman',NULL,1,NULL,NULL),(129,'Justice Smith',70,1,'1995-08-09',NULL),(130,'Hugh Grant',173,1,'1960-11-09',NULL),(131,'Mark Wahlberg',70,1,'1971-06-05',NULL),(132,'Nicola Peltz',70,1,'1995-01-09',NULL),(133,'Stanley Tucci',70,1,'1960-11-11',NULL),(134,'Jack Reynor',70,1,'1992-01-23',NULL),(135,'Li Bingbing',100,1,'1973-02-27',NULL),(136,'Rosie Huntington-Whiteley',173,1,'1987-04-18',NULL),(137,'Shia LaBeouf',70,1,'1986-06-11',NULL),(138,'Patrick Dempsey',70,1,'1966-01-13',NULL),(139,'Josh Duhamel',70,1,'1972-11-14',NULL),(140,'Megan Fox',70,1,'1986-05-16',NULL),(141,'Peter Cullen',62,1,'1941-07-28',NULL),(142,'John Turturro',70,1,'1957-02-28',NULL),(143,'Johnny Knoxville',70,1,'1971-03-11',NULL),(144,'Steve-O',173,1,'1974-06-13',NULL),(145,'Bam Margera',70,1,'1979-11-28',NULL),(146,'Ehren McGhehey',70,1,'1976-11-29',NULL),(147,'Dave England',70,1,'1969-12-30',NULL),(148,'Woody Harrelson',70,1,'1961-07-23',NULL),(149,'Jesse Eisenberg',70,1,'1983-10-05',NULL),(150,'Abigail Breslin',70,1,'1996-04-14',NULL),(151,'Emma Stone',70,1,'1988-11-06',NULL),(152,'Rosario Dawson',70,1,'1979-05-09',NULL),(153,'Amanda Seyfried',70,1,'1985-12-03',NULL),(154,'Morgan Freeman',70,1,'1937-06-01',NULL),(155,'Seth MacFarlane',70,1,'1973-10-26',NULL),(156,'Jessica Barth',70,1,'1980-07-12',NULL),(157,'Courteney Cox',70,1,'1964-06-15',NULL),(158,'Jack Quaid',70,1,'1992-04-24',NULL),(159,'Melissa Barrera',77,1,'1990-07-04',NULL),(160,'Hayden Panettiere',70,1,'1989-09-21',NULL),(161,'Mackenzie Foy',70,1,'2000-11-10',NULL),(162,'John Lithgow',70,1,'1945-10-19',NULL),(163,'Wes Bentley',70,1,'1978-09-04',NULL),(164,'Casey Affleck',70,1,'1975-08-12',NULL),(165,'Topher Grace',70,1,'1978-07-12',NULL);
/*!40000 ALTER TABLE `atores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-14 11:03:20
