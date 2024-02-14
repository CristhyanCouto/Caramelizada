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
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `IDSERIE` int NOT NULL AUTO_INCREMENT,
  `NOME_SERIE` varchar(1000) NOT NULL,
  `NOME_ORIGINAL_SERIE` varchar(1000) NOT NULL,
  `PAIS_SERIE` int DEFAULT NULL,
  `DATA_LANCAMENTO` date DEFAULT NULL,
  `ATUAL_ESTADO` int DEFAULT NULL,
  `PRODUTORA1` int DEFAULT NULL,
  `PRODUTORA2` int DEFAULT NULL,
  `PRODUTORA3` int DEFAULT NULL,
  `DIRETOR1` int DEFAULT NULL,
  `DIRETOR2` int DEFAULT NULL,
  `DIRETOR3` int DEFAULT NULL,
  `DIRETOR4` int DEFAULT NULL,
  `ATOR1` int DEFAULT NULL,
  `ATOR2` int DEFAULT NULL,
  `ATOR3` int DEFAULT NULL,
  `ATOR4` int DEFAULT NULL,
  `ATOR5` int DEFAULT NULL,
  `ATOR6` int DEFAULT NULL,
  `ATOR7` int DEFAULT NULL,
  `ATOR8` int DEFAULT NULL,
  `ATOR9` int DEFAULT NULL,
  `ATOR10` int DEFAULT NULL,
  `GENERO_SERIE1` int DEFAULT NULL,
  `GENERO_SERIE2` int DEFAULT NULL,
  `GENERO_SERIE3` int DEFAULT NULL,
  `GENERO_SERIE4` int DEFAULT NULL,
  `GENERO_SERIE5` int DEFAULT NULL,
  `SINOPSE_SERIE` text,
  `QUANTIDADE_EPISODIOS` int DEFAULT NULL,
  `EU_VI` enum('Sim','Não') DEFAULT NULL,
  `MINHA_NOTA` decimal(4,2) DEFAULT NULL,
  `MEU_COMENTARIO` text,
  PRIMARY KEY (`IDSERIE`),
  KEY `FK_PAIS_SERIE` (`PAIS_SERIE`),
  KEY `FK_ATUAL_ESTADO_SERIE` (`ATUAL_ESTADO`),
  KEY `FK_PRODUTORA1_SERIE` (`PRODUTORA1`),
  KEY `FK_PRODUTORA2_SERIE` (`PRODUTORA2`),
  KEY `FK_PRODUTORA3_SERIE` (`PRODUTORA3`),
  KEY `FK_DIRETOR1_SERIE` (`DIRETOR1`),
  KEY `FK_DIRETOR2_SERIE` (`DIRETOR2`),
  KEY `FK_DIRETOR3_SERIE` (`DIRETOR3`),
  KEY `FK_DIRETOR4_SERIE` (`DIRETOR4`),
  KEY `FK_ATOR1_SERIE` (`ATOR1`),
  KEY `FK_ATOR2_SERIE` (`ATOR2`),
  KEY `FK_ATOR3_SERIE` (`ATOR3`),
  KEY `FK_ATOR4_SERIE` (`ATOR4`),
  KEY `FK_ATOR5_SERIE` (`ATOR5`),
  KEY `FK_ATOR6_SERIE` (`ATOR6`),
  KEY `FK_ATOR7_SERIE` (`ATOR7`),
  KEY `FK_ATOR8_SERIE` (`ATOR8`),
  KEY `FK_ATOR9_SERIE` (`ATOR9`),
  KEY `FK_ATOR10_SERIE` (`ATOR10`),
  KEY `FK_GENERO_SERIE1` (`GENERO_SERIE1`),
  KEY `FK_GENERO_SERIE2` (`GENERO_SERIE2`),
  KEY `FK_GENERO_SERIE3` (`GENERO_SERIE3`),
  KEY `FK_GENERO_SERIE4` (`GENERO_SERIE4`),
  KEY `FK_GENERO_SERIE5` (`GENERO_SERIE5`),
  CONSTRAINT `FK_ATOR10_SERIE` FOREIGN KEY (`ATOR10`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR1_SERIE` FOREIGN KEY (`ATOR1`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR2_SERIE` FOREIGN KEY (`ATOR2`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR3_SERIE` FOREIGN KEY (`ATOR3`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR4_SERIE` FOREIGN KEY (`ATOR4`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR5_SERIE` FOREIGN KEY (`ATOR5`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR6_SERIE` FOREIGN KEY (`ATOR6`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR7_SERIE` FOREIGN KEY (`ATOR7`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR8_SERIE` FOREIGN KEY (`ATOR8`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR9_SERIE` FOREIGN KEY (`ATOR9`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATUAL_ESTADO_SERIE` FOREIGN KEY (`ATUAL_ESTADO`) REFERENCES `atual_estado` (`IDATUAL_ESTADO`),
  CONSTRAINT `FK_DIRETOR1_SERIE` FOREIGN KEY (`DIRETOR1`) REFERENCES `diretores` (`IDDIRETOR`),
  CONSTRAINT `FK_DIRETOR2_SERIE` FOREIGN KEY (`DIRETOR2`) REFERENCES `diretores` (`IDDIRETOR`),
  CONSTRAINT `FK_DIRETOR3_SERIE` FOREIGN KEY (`DIRETOR3`) REFERENCES `diretores` (`IDDIRETOR`),
  CONSTRAINT `FK_DIRETOR4_SERIE` FOREIGN KEY (`DIRETOR4`) REFERENCES `diretores` (`IDDIRETOR`),
  CONSTRAINT `FK_GENERO_SERIE1` FOREIGN KEY (`GENERO_SERIE1`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_GENERO_SERIE2` FOREIGN KEY (`GENERO_SERIE2`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_GENERO_SERIE3` FOREIGN KEY (`GENERO_SERIE3`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_GENERO_SERIE4` FOREIGN KEY (`GENERO_SERIE4`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_GENERO_SERIE5` FOREIGN KEY (`GENERO_SERIE5`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_PAIS_SERIE` FOREIGN KEY (`PAIS_SERIE`) REFERENCES `paises` (`IDPAIS`),
  CONSTRAINT `FK_PRODUTORA1_SERIE` FOREIGN KEY (`PRODUTORA1`) REFERENCES `produtoras` (`IDPRODUTORA`),
  CONSTRAINT `FK_PRODUTORA2_SERIE` FOREIGN KEY (`PRODUTORA2`) REFERENCES `produtoras` (`IDPRODUTORA`),
  CONSTRAINT `FK_PRODUTORA3_SERIE` FOREIGN KEY (`PRODUTORA3`) REFERENCES `produtoras` (`IDPRODUTORA`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,'Como Eu Conheci Sua Mãe','How I Met Your Mother',70,'2005-09-19',3,18,NULL,NULL,NULL,NULL,NULL,NULL,55,56,57,58,59,60,NULL,NULL,NULL,NULL,4,19,NULL,NULL,NULL,'Ted se apaixonou. Tudo começou quando seu melhor amigo, Marshall, soltou a bomba de que planejava pedir em casamento a namorada de longa data, Lily, uma professora de jardim de infância. Ted percebeu que era melhor se mexer se esperava encontrar o verdadeiro amor. Para ajudá-lo na missão está Barney, um amigo com opiniões sem fim -- e às vezes absurdas --, uma queda por ternos e uma fórmula infalível para conhecer garotas. Quando Ted conhece Robin, tem certeza que é amor à primeira vista, mas o relacionamento esfria e se transforma em uma amizade.',208,'Sim',8.10,'Uma ótima série de sofá, não se tem muito a dizer sobre técnica ou roteiro, são personagens que amamos e odiamos, mas acima de tudo é divertido.'),(2,'Rick and Morty','Rick and Morty',70,'2013-01-01',4,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64,12,3,4,NULL,'Acompanhe malucas viagens no tempo-espaço e por universos paralelos com Rick, um cientista com problemas com a bebida, e seu neto Morty, um adolescente não tão brilhante quanto o avô.',71,'Sim',8.40,'Rick and Morty é aquele tipo de série que você fica curioso sobre o que vai acontecer no próximo episódio, é super divertido de assistir e tem muita coisa maluca para você dar risada, uma das poucas coisas que estragam a série é o \"Canônico\", criaram muita coisa legal do canônico que muitas vezes ignoram completamente para passar episódios na minha opinião nada haver como Water T, a linha do tempo da série é uma bagunça muitas vezes, mas Rick and Morty é uma animação super divertida e fácil de digerir.');
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-14 14:43:53
