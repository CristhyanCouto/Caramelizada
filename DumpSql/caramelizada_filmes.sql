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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmes`
--

LOCK TABLES `filmes` WRITE;
/*!40000 ALTER TABLE `filmes` DISABLE KEYS */;
INSERT INTO `filmes` VALUES (1,'Interestelar','Interestelar',NULL,'2014-11-06',11,5,62,1,NULL,NULL,NULL,1,2,3,161,4,5,162,163,164,165,12,3,NULL,NULL,NULL,'As reservas naturais da Terra estão chegando ao fim e um grupo de astronautas recebe a missão de verificar possíveis planetas para receberem a população mundial, possibilitando a continuação da espécie. Cooper é chamado para liderar o grupo e aceita a missão sabendo que pode nunca mais ver os filhos. Ao lado de Brand, Jenkins e Doyle, ele seguirá em busca de um novo lar.',10,'02:49:00','Sim',9.70,'Interestelar é uma obra-prima sem comparação, o filme em si foi feito em cima da trilha sonora, e isso a faz encaixar perfeitamente, dando profundidade e emoção a tudo que vemos na série, eu sou apaixonado pelo tema universo, e Interestelar traz muito do que a de interessante nesse meio, com física correta até aonde entendemos (tirando o que ainda não entendemos sobre buraco negro e que milho não queima haha). Talvez rever esse filme várias vezes tire um pouco da magia das primeiras experiências, mas me emociono e sinto a beleza do filme toda vez que o revisito.'),(2,'Blade Runner 2049','Blade Runner 2049',NULL,'2017-10-05',2,12,7,2,NULL,NULL,NULL,6,7,8,45,9,10,11,12,NULL,NULL,12,67,1,3,NULL,'Após descobrir um segredo que ameaça o que resta da sociedade, um novo policial parte em busca de Rick Deckard, que está desaparecido há 30 anos.',14,'02:43:00','Sim',9.65,NULL),(3,'Bastardos Inglórios','Inglourious Basterds',NULL,'2009-10-09',3,41,30,3,NULL,NULL,NULL,13,14,15,16,17,18,19,166,167,168,13,1,8,NULL,NULL,'Durante a Segunda Guerra Mundial, na França, judeus americanos espalham o terror entre o terceiro Reich. Ao mesmo tempo, Shosanna, uma judia que fugiu dos nazistas, planeja vingança quando um evento em seu cinema reunirá os líderes do partido.',18,'02:33:00','Sim',9.60,NULL),(4,'Avatar: O Caminho da Água','Avatar: The Way of Water',NULL,'2022-12-15',4,45,65,4,NULL,NULL,NULL,20,21,22,23,24,169,170,171,172,173,12,1,3,NULL,NULL,'Após formar uma família, Jake Sully e Ney\'tiri fazem de tudo para ficarem juntos. No entanto, eles devem sair de casa e explorar as regiões de Pandora quando uma antiga ameaça ressurge, e Jake deve travar uma guerra difícil contra os humanos.',14,'03:12:00','Sim',9.60,NULL),(5,'O Poderoso Chefão 2','The Godfather Part II',NULL,'1975-02-14',5,66,NULL,5,NULL,NULL,NULL,26,29,28,68,174,69,NULL,NULL,NULL,NULL,58,8,71,NULL,NULL,'Depois da máfia matar sua família, o jovem Vito foge da sua cidade na Sicília e vai para os Estados Unidos. Lá, ele assassina Black Hand Fanucci, que exigia dos comerciantes uma parte dos seus ganhos. Com a morte de Fanucci, o poder de Vito cresce, mas sua família é o que mais importa para ele. Morando agora no Lago Tahoe, Michael planeja fazer incursões em Las Vegas e Havana com negócios ligados ao lazer, mas descobre que aliados como Hyman Roth estão tentando matá-lo.',14,'03:22:00','Sim',9.55,NULL),(6,'Pegando Fogo','Burnt',NULL,'2015-12-10',8,9,10,8,NULL,NULL,NULL,42,43,18,175,176,177,44,178,179,NULL,72,8,NULL,NULL,NULL,'Adam Jones já foi um respeitado chef em Paris, mas o abuso de drogas e álcool destruiu sua carreira. Depois de passar um tempo em Nova Orleans, ele tem uma nova oportunidade em Londres, quando é contratado por seu antigo maître para ser o chef de cozinha de um restaurante requintado. Exigindo a perfeição da sua recém-formada equipe, o amargo e temperamental Jones tem uma segunda chance para realizar seu sonho de ganhar uma terceira estrela Michelin.',12,'01:41:00','Sim',9.00,NULL),(7,'A Babá','The Babysitter',NULL,'2017-10-13',19,20,NULL,11,NULL,NULL,NULL,61,62,63,64,65,180,181,182,183,NULL,21,4,NULL,NULL,NULL,'Cole, de doze anos, passa da sua hora de ir para cama e acaba descobrindo que sua querida babá pertence a um culto satânico adolescente. O menino precisa colocar os sentimentos pela babá de lado e escapar antes que vire o próximo sacrifício do grupo.',16,'01:25:00','Sim',7.80,NULL),(8,'Amor e Outras Drogas','Love and Other Drugs',NULL,'2011-01-28',4,13,14,9,NULL,NULL,NULL,3,46,50,47,48,184,185,49,NULL,NULL,4,19,NULL,NULL,NULL,'Maggie é uma mulher de espírito livre que não quer se amarrar a alguém de maneira alguma. Ela só não esperava conhecer Jamie, um charmoso vendedor de produtos farmacêuticos que tem todas as mulheres aos seus pés. Aos poucos, o relacionamento evoluiu e ambos descobrem que estão sob a influência da droga mais forte já inventada: o amor.',16,'01:52:00','Sim',7.40,NULL),(9,'A Babá: Rainha da Morte','The Babysitter: Killer Queen',NULL,'2020-09-10',21,NULL,NULL,11,NULL,NULL,NULL,64,62,61,66,63,65,180,181,183,182,21,4,NULL,NULL,NULL,'Dois anos depois de escapar de um culto satânico liderado por sua babá Bee, Cole mais uma vez precisa fugir das forças do mal quando antigos inimigos reaparecem.',16,'01:41:00','Sim',7.10,NULL),(10,'Gaiola Mental','Mindcage',NULL,'2022-12-16',15,17,16,10,NULL,NULL,NULL,51,52,53,54,NULL,NULL,NULL,NULL,NULL,NULL,22,15,NULL,NULL,NULL,'Dois detetives buscam a ajuda de um brilhante assassino em série quando um assassino imitador ataca.',16,'01:37:00','Sim',6.80,NULL);
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

-- Dump completed on 2024-02-15 18:54:00
