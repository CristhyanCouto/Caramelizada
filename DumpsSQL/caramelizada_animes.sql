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
-- Table structure for table `animes`
--

DROP TABLE IF EXISTS `animes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animes` (
  `IDANIME` int NOT NULL AUTO_INCREMENT,
  `NOME_ANIME` varchar(1000) NOT NULL,
  `NOME_ORIGINAL_ANIME` varchar(1000) NOT NULL,
  `DATA_LANCAMENTO` date DEFAULT NULL,
  `ATUAL_ESTADO` int DEFAULT NULL,
  `DATA_ENCERRAMENTO` date DEFAULT NULL,
  `GENERO_ANIME1` int DEFAULT NULL,
  `GENERO_ANIME2` int DEFAULT NULL,
  `GENERO_ANIME3` int DEFAULT NULL,
  `GENERO_ANIME4` int DEFAULT NULL,
  `GENERO_ANIME5` int DEFAULT NULL,
  `SINOPSE_ANIME` text,
  `QUANTIDADE_EPISODIOS` int DEFAULT NULL,
  `EU_VI` enum('Sim','Não') DEFAULT NULL,
  `MINHA_NOTA` decimal(4,2) DEFAULT NULL,
  `MEU_COMENTARIO` text,
  PRIMARY KEY (`IDANIME`),
  KEY `FK_ATUAL_ESTADO_ANIME` (`ATUAL_ESTADO`),
  KEY `FK_GENERO_ANIME1` (`GENERO_ANIME1`),
  KEY `FK_GENERO_ANIME2` (`GENERO_ANIME2`),
  KEY `FK_GENERO_ANIME3` (`GENERO_ANIME3`),
  KEY `FK_GENERO_ANIME4` (`GENERO_ANIME4`),
  KEY `FK_GENERO_ANIME5` (`GENERO_ANIME5`),
  CONSTRAINT `FK_ATUAL_ESTADO_ANIME` FOREIGN KEY (`ATUAL_ESTADO`) REFERENCES `atual_estado` (`IDATUAL_ESTADO`),
  CONSTRAINT `FK_GENERO_ANIME1` FOREIGN KEY (`GENERO_ANIME1`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_GENERO_ANIME2` FOREIGN KEY (`GENERO_ANIME2`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_GENERO_ANIME3` FOREIGN KEY (`GENERO_ANIME3`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_GENERO_ANIME4` FOREIGN KEY (`GENERO_ANIME4`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_GENERO_ANIME5` FOREIGN KEY (`GENERO_ANIME5`) REFERENCES `generos` (`IDGENERO`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animes`
--

LOCK TABLES `animes` WRITE;
/*!40000 ALTER TABLE `animes` DISABLE KEYS */;
INSERT INTO `animes` VALUES (1,'Dragon Ball Super: Super Herói','Dragon Ball Super: SUPER HERO','2022-09-18',7,NULL,62,63,1,3,NULL,'Uma organização do mal busca vingança com androids novos e melhores, Gamma 1 e Gamma 2.',1,'Sim',8.20,'A minha primeira experiência com Dragon Super Super Hero foi no cinema, e não sei se foi a falta de qualidade da tela ou aquele momento em que vi, mas a animação 3D não havia me chamado a atenção e talvez isso tenha me tirado um pouco a experiência do que eu estava acostumado com Dragon Ball, mas revi o filme hoje e vi o quão clássico e atual estava a animação, os monstros gigantes que vemos em vários filmes e mesmo aparecendo raramente no anime, é mais uma característica dos filmes antigos de Dragon Ball, podemos ver o quão o Gohan é sempre um extremo, ou muito bom e inocente ou raivoso e arrogante quando se transforma, trouxe a nostalgia da saga do Cell com relações divertidas entre os personagens, tanto no enredo principal quanto no planeta do Bills.'),(2,'One Piece','One Piece','1999-10-20',4,NULL,63,3,1,NULL,NULL,'Monkey D. Luffy e sua tripulação de Piratas do Chapéu de Palha embarcam em uma jornada incrível para encontrar um tesouro lendário, o One Piece.',1093,'Sim',9.70,'One Piece é sem a menor dúvida meu anime favorito, tentei assistir pela primeira vez na adolescência, mas parece que não me chamou tanta atenção, talvez tenha sido porque tentei ver a versão censurada dublada, então revi no início da vida adulta e me apaixonei, a inocência e força do Luffy destoa completamente do mundo caótico em que eles vivem, aonde ele se torna a melhor pessoa para aqueles a quem confiam nele, ele é o pior inimigo para os que arrumam briga com ele. Ver o mundo caótico de escravidão, corrupção, abusos e destruição de One Piece através dos bons olhos do Luffy é uma experiência única, principalmente por todos os personagens e o mundo em si serem tão profundos e bem contados.'),(3,'Naruto Shippuden','Naruto Shippuden','2007-02-15',3,'2017-03-23',63,1,3,8,NULL,'Naruto Shippuden dá continuidade à história do ninja Naruto Uzumaki, iniciada no anime antecessor. Nesta nova fase, três anos se passaram desde que Sasuke Uchiha, o melhor amigo do protagonista, deixou Konoha e se tornou um ninja fugitivo com o objetivo de matar o irmão mais velho, Itachi.',500,'Sim',7.90,'Naruto Shippuden seria um anime perfeito se fosse feito em 300 episódios, a história é ótima, as cenas de ação são maravilhosas com personagens super interessantes e muito divertidos de acompanhar, mas meu Deus, quanto filler e flashback, chega a dar raiva de ver a mesma cena tantas vezes (existe até a piada \"o balanço na árvore tem mais tempo de tela que a Tenten\" e realmente, cenas de flashback aparecem mais que muitos personagens importantes), e pior, sempre quando algo muito interessante está para acontecer, vem flashback desnecessário no meio da cena e corta tudo por uns 5 a 10 episódios. O dia que lançarem Naruto Shippuden editado por fãs, terei o maior prazer em assistir novamente e com certeza minha nota será acima de 9.'),(4,'Parasyte: The Maxim','Kiseijuu','2014-05-15',3,'2014-05-15',65,20,12,NULL,NULL,'Um adolescente combate uma invasão de parasitas espaciais com a ajuda de Migi, uma dócil criatura parasítica que lhe possuiu a mão direita.',24,'Sim',7.60,'Parasyte é um anime super divertido e cheio de ação com combates em um estilo diferente que não estamos tão acostumados, possui todo o clássico dos animes em questão de evolução do personagem principal e um diferencial muito legal em questão aos parasitas, vale a pena assistir, principalmente pelo fato de ser curto com apenas 24 episódios.'),(5,'Sword Art Online','Sword Art Online','2012-07-08',3,NULL,3,1,19,10,NULL,'O criador do mundo virtual de Sword Art Online decide aprisionar todos os usuários dentro do jogo. Quem morrer nesse universo digital também morrerá na vida real. A única forma de se libertar é completar os desafios e chegar ao final do jogo.',23,'Sim',7.20,'Fico até triste em comentar Sword Art Online, o anime começa de um jeito ótimo, em 2012 essa realidade virtual era um sonho para muitos jogadores de RPG, eu incluso, então ver aquele mundo era algo espetacular, personagens ótimos e bosses mais incríveis ainda, a tensão dos jogadores poderem morrer foi o que deixou o anime tão interessante no começo, aonde gerou momentos de tristeza, tensão e outros de relaxamento, mas o anime correu muito rápido, quando o plot de tensão foi criado, simplesmente aquele mundo acabou e a consequência deixada para o personagem principal não parecia ser boa o suficiente para manter a atenção de quem assistia. Foi difícil assistir a segunda metade do anime, ficou massante e entediante, com péssimas motivações e consequências fracas.'),(6,'Boruto: Naruto Next Generations','Boruto: Naruto Next Generations','2016-05-09',2,NULL,63,1,3,4,NULL,'O lendário ninja Naruto Uzumaki realizou seu sonho e, agora, é o sétimo hokage da Aldeia da Folha. Na trama do anime, além do desafio de cuidar da vila em que nasceu, o personagem também está aprendendo a ser pai de Boruto e Himawari.',293,'Não',4.50,'KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK'),(7,'Dragon Ball Super','Dragon Ball Super','2015-07-05',6,NULL,63,1,4,57,NULL,'O Deus da Destruição acorda e está dedicado a destruir com os planetas, e acaba descobrindo a Terra. O guerreiro Goku pede ajuda a seus amigos para se converter no lendário Super Saiyajin e enfrentar o vilão.',131,'Sim',9.20,'Dragon Ball Super traz toda a nostalgia de Dragon Ball Z e mais, uma ótima continuação para um clássico tão amado, sem precisar de 500 episódios para ser um ótimo anime, DBS traz o que tem de melhor, batalhas frenéticas, um monte de transformações, comédias bobas e torneios de luta, e uma experiência pessoal que deixou o anime melhor ainda, se juntar com os amigos no domingo de manhã para assistir o torneio do poder, tendo um ótimo encerramento com satisfação e o desejo de quero mais.');
/*!40000 ALTER TABLE `animes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-14 11:03:16
