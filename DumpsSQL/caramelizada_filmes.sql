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
-- Table structure for table `filmes`
--

DROP TABLE IF EXISTS `filmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmes` (
  `IDFILME` int NOT NULL AUTO_INCREMENT,
  `NOME_FILME` varchar(1000) NOT NULL,
  `NOME_ORIGINAL_FILME` varchar(1000) NOT NULL,
  `PAIS_FILME` int DEFAULT NULL,
  `DATA_LANCAMENTO` date DEFAULT NULL,
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
  `GENERO_FILME1` int DEFAULT NULL,
  `GENERO_FILME2` int DEFAULT NULL,
  `GENERO_FILME3` int DEFAULT NULL,
  `GENERO_FILME4` int DEFAULT NULL,
  `GENERO_FILME5` int DEFAULT NULL,
  `SINOPSE_FILME` text,
  `CLASSIFICACAO_ETARIA` int DEFAULT NULL,
  `DURACAO_FILME` time DEFAULT NULL,
  `EU_VI` enum('Sim','Não') DEFAULT NULL,
  `MINHA_NOTA` decimal(4,2) DEFAULT NULL,
  `MEU_COMENTARIO` text,
  PRIMARY KEY (`IDFILME`),
  KEY `FK_PAIS_FILME` (`PAIS_FILME`),
  KEY `FK_PRODUTORA1` (`PRODUTORA1`),
  KEY `FK_PRODUTORA2` (`PRODUTORA2`),
  KEY `FK_PRODUTORA3` (`PRODUTORA3`),
  KEY `FK_DIRETOR1_FILME` (`DIRETOR1`),
  KEY `FK_DIRETOR2_FILME` (`DIRETOR2`),
  KEY `FK_DIRETOR3_FILME` (`DIRETOR3`),
  KEY `FK_DIRETOR4_FILME` (`DIRETOR4`),
  KEY `FK_ATOR1_FILME` (`ATOR1`),
  KEY `FK_ATOR2_FILME` (`ATOR2`),
  KEY `FK_ATOR3_FILME` (`ATOR3`),
  KEY `FK_ATOR4_FILME` (`ATOR4`),
  KEY `FK_ATOR5_FILME` (`ATOR5`),
  KEY `FK_ATOR6_FILME` (`ATOR6`),
  KEY `FK_ATOR7_FILME` (`ATOR7`),
  KEY `FK_ATOR8_FILME` (`ATOR8`),
  KEY `FK_ATOR9_FILME` (`ATOR9`),
  KEY `FK_ATOR10_FILME` (`ATOR10`),
  KEY `FK_GENERO_FILME1` (`GENERO_FILME1`),
  KEY `FK_GENERO_FILME2` (`GENERO_FILME2`),
  KEY `FK_GENERO_FILME3` (`GENERO_FILME3`),
  KEY `FK_GENERO_FILME4` (`GENERO_FILME4`),
  KEY `FK_GENERO_FILME5` (`GENERO_FILME5`),
  CONSTRAINT `FK_ATOR10_FILME` FOREIGN KEY (`ATOR10`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR1_FILME` FOREIGN KEY (`ATOR1`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR2_FILME` FOREIGN KEY (`ATOR2`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR3_FILME` FOREIGN KEY (`ATOR3`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR4_FILME` FOREIGN KEY (`ATOR4`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR5_FILME` FOREIGN KEY (`ATOR5`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR6_FILME` FOREIGN KEY (`ATOR6`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR7_FILME` FOREIGN KEY (`ATOR7`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR8_FILME` FOREIGN KEY (`ATOR8`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_ATOR9_FILME` FOREIGN KEY (`ATOR9`) REFERENCES `atores` (`IDATOR`),
  CONSTRAINT `FK_DIRETOR1_FILME` FOREIGN KEY (`DIRETOR1`) REFERENCES `diretores` (`IDDIRETOR`),
  CONSTRAINT `FK_DIRETOR2_FILME` FOREIGN KEY (`DIRETOR2`) REFERENCES `diretores` (`IDDIRETOR`),
  CONSTRAINT `FK_DIRETOR3_FILME` FOREIGN KEY (`DIRETOR3`) REFERENCES `diretores` (`IDDIRETOR`),
  CONSTRAINT `FK_DIRETOR4_FILME` FOREIGN KEY (`DIRETOR4`) REFERENCES `diretores` (`IDDIRETOR`),
  CONSTRAINT `FK_GENERO_FILME1` FOREIGN KEY (`GENERO_FILME1`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_GENERO_FILME2` FOREIGN KEY (`GENERO_FILME2`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_GENERO_FILME3` FOREIGN KEY (`GENERO_FILME3`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_GENERO_FILME4` FOREIGN KEY (`GENERO_FILME4`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_GENERO_FILME5` FOREIGN KEY (`GENERO_FILME5`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_PAIS_FILME` FOREIGN KEY (`PAIS_FILME`) REFERENCES `paises` (`IDPAIS`),
  CONSTRAINT `FK_PRODUTORA1` FOREIGN KEY (`PRODUTORA1`) REFERENCES `produtoras` (`IDPRODUTORA`),
  CONSTRAINT `FK_PRODUTORA2` FOREIGN KEY (`PRODUTORA2`) REFERENCES `produtoras` (`IDPRODUTORA`),
  CONSTRAINT `FK_PRODUTORA3` FOREIGN KEY (`PRODUTORA3`) REFERENCES `produtoras` (`IDPRODUTORA`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmes`
--

LOCK TABLES `filmes` WRITE;
/*!40000 ALTER TABLE `filmes` DISABLE KEYS */;
INSERT INTO `filmes` VALUES (1,'Interestelar','Interestelar',NULL,'2014-11-06',11,5,62,1,NULL,NULL,NULL,1,2,3,161,4,5,162,163,164,165,12,3,NULL,NULL,NULL,'As reservas naturais da Terra estão chegando ao fim e um grupo de astronautas recebe a missão de verificar possíveis planetas para receberem a população mundial, possibilitando a continuação da espécie. Cooper é chamado para liderar o grupo e aceita a missão sabendo que pode nunca mais ver os filhos. Ao lado de Brand, Jenkins e Doyle, ele seguirá em busca de um novo lar.',10,'02:49:00','Sim',9.70,'Interestelar é uma obra-prima sem comparação, o filme em si foi feito em cima da trilha sonora, e isso a faz encaixar perfeitamente, dando profundidade e emoção a tudo que vemos na série, eu sou apaixonado pelo tema universo, e Interestelar traz muito do que a de interessante nesse meio, com física correta até aonde entendemos (tirando o que ainda não entendemos sobre buraco negro e que milho não queima haha). Talvez rever esse filme várias vezes tire um pouco da magia das primeiras experiências, mas me emociono e sinto a beleza do filme toda vez que o revisito.');
/*!40000 ALTER TABLE `filmes` ENABLE KEYS */;
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
