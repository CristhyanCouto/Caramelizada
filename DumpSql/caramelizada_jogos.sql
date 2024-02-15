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
-- Table structure for table `jogos`
--

DROP TABLE IF EXISTS `jogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogos` (
  `IDJOGO` int NOT NULL AUTO_INCREMENT,
  `NOME_JOGO` varchar(1000) NOT NULL,
  `DATA_LANCAMENTO` date DEFAULT NULL,
  `ESTUDIO` int DEFAULT NULL,
  `PLATAFORMA` int DEFAULT NULL,
  `GENERO_JOGO1` int DEFAULT NULL,
  `GENERO_JOGO2` int DEFAULT NULL,
  `GENERO_JOGO3` int DEFAULT NULL,
  `GENERO_JOGO4` int DEFAULT NULL,
  `GENERO_JOGO5` int DEFAULT NULL,
  `SINOPSE_JOGO` text,
  `EU_JOGUEI` enum('Sim','Não') DEFAULT NULL,
  `MINHA_NOTA` decimal(4,2) DEFAULT NULL,
  `MULTIPLAYER` enum('Sim','Não') DEFAULT NULL,
  `MULTIPLAYER_LOCAL` enum('Sim','Não') DEFAULT NULL,
  `MEU_COMENTARIO` text,
  PRIMARY KEY (`IDJOGO`),
  KEY `FK_ESTUDIO_JOGOS` (`ESTUDIO`),
  KEY `FK_PLATAFORMA_JOGOS` (`PLATAFORMA`),
  KEY `FK_GENERO_JOGO1` (`GENERO_JOGO1`),
  KEY `FK_GENERO_JOGO2` (`GENERO_JOGO2`),
  KEY `FK_GENERO_JOGO3` (`GENERO_JOGO3`),
  KEY `FK_GENERO_JOGO4` (`GENERO_JOGO4`),
  KEY `FK_GENERO_JOGO5` (`GENERO_JOGO5`),
  CONSTRAINT `FK_ESTUDIO_JOGOS` FOREIGN KEY (`ESTUDIO`) REFERENCES `estudios` (`IDESTUDIO`),
  CONSTRAINT `FK_GENERO_JOGO1` FOREIGN KEY (`GENERO_JOGO1`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_GENERO_JOGO2` FOREIGN KEY (`GENERO_JOGO2`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_GENERO_JOGO3` FOREIGN KEY (`GENERO_JOGO3`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_GENERO_JOGO4` FOREIGN KEY (`GENERO_JOGO4`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_GENERO_JOGO5` FOREIGN KEY (`GENERO_JOGO5`) REFERENCES `generos` (`IDGENERO`),
  CONSTRAINT `FK_PLATAFORMA_JOGOS` FOREIGN KEY (`PLATAFORMA`) REFERENCES `plataformas` (`IDPLATAFORMA`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogos`
--

LOCK TABLES `jogos` WRITE;
/*!40000 ALTER TABLE `jogos` DISABLE KEYS */;
INSERT INTO `jogos` VALUES (1,'God of War','2005-03-22',9,5,41,1,3,NULL,NULL,'Após dez anos a serviço dos deuses do Olimpo, o espartano Kratos é encarregado por Atena de encontrar a Caixa de Pandora; a chave para derrotar Ares, o deus da guerra, que está destruindo a cidade de Atenas.','Sim',9.20,'Não','Não','God Of War foi uma obra-prima do PS2, ótima mecânica de jogo, história maravilhosa e personagem carismático, ótimas boss fights, além de muita porrada bruta.'),(2,'Bully','2006-10-17',10,5,69,NULL,NULL,NULL,NULL,'Bully\" narra a história do garoto Jimmy Hopkins em uma escola fictícia dos Estados Unidos. O game mostra o jovem se virando para \"sobreviver\" entre valentões e professores autoritários, mas também aprontando suas traquinagens para \"sacanear as patricinhas\" e \"salvar os nerds\".','Sim',9.30,'Não','Não','Bully é algo espetacular e diferente que se destaca até hoje, história super divertida e mesmo sendo algo simplório, é muito bem desenvolvido e profundo dentro da mesma, jogabilidade divertida e com várias mecânicas que não deixam o jogo ser enjoativo, o único problema de Bully é não ter uma continuação.'),(3,'Need for Speed: Underground 2','2004-11-09',11,5,48,NULL,NULL,NULL,NULL,'Need For Speed: Underground 2 é um jogo eletrônico de corrida de 2004 desenvolvido pela EA Black Box e publicado pela Electronic Arts.','Sim',8.80,'Sim','Sim','NFSUD2 é pra mim até hoje um dos melhores jogos de corridas já feitos, com toda a certeza é o melhor em questão de customização de veículos, com uma variedade gigantesca de corridas e um sistema de drifting que eu amo, além dos carros clássicos.'),(4,'Terraria','2011-05-16',8,1,70,33,3,NULL,NULL,'Terraria é um jogo eletrônico RPG de ação-aventura independente produzido pela desenvolvedora de jogos Re-Logic. Possui como características a exploração, artesanato, construção de estruturas e combate a monstros perigosos em um mundo 2D gerado proceduralmente.','Sim',9.10,'Sim','Sim','As pessoas tendem a comparar Terraria dizendo ser um Minecraft 2D, apesar da semelhança em questão de crafting, sobrevivência, mineração e construção, Terraria traz algo que difere muito, uma lore cheia de bosses e npcs com seus próprios backgrounds, é um jogo de sobrevivência muito divertido que vale a pena jogar mais de uma vez.'),(5,'The Last of Us','2013-06-14',12,7,70,14,1,NULL,NULL,'Joel, um sobrevivente solitário e que perdeu sua filha adolescente no início do apocalipse, recebe a missão de levar para fora de uma zona de quarentena uma menina de 14 anos, chamada Ellie. A jovem é a única humana conhecida que é imune ao fungo e se torna a esperança de uma cura.','Sim',9.60,'Sim','Não','A primeira vez que joguei The Last of Us no Ps3 eu me apaixonei pelo jogo, e quando joguei novamente no Ps4, a sensação continuou a mesma, o choro no começo o mesmo e toda a emoção da história e profundidade do jogo continuou, e quando eu jogar novamente, tenho certeza que será a mesma emoção, o jogo é lindo, a história maravilhosa, trilha sonora incrível e tudo mais.'),(6,'Crash of the Titans','2007-10-01',13,5,33,1,3,NULL,NULL,'A história do jogo é centralizada na descoberta de uma nova substância misteriosa chamada Mojo, o qual o vilão da série, Dr. Neo Cortex, depois, de algum jeito, ter escapado de dentro do Crash, onde no jogo passado foi parar no final, planeja utilizar na criação de um grande exército de mutantes.','Sim',7.00,'Não','Sim','Crash of Titans é um jogo muito legal para jogar com a família, é sempre uma briga entre eu e meu irmão para ver quem vai pegar o primeiro mutante, a história é engraçada e infelizmente eu não prestei muito atenção na trilha sonora kkkk, tirando a mecânica de trocar o controle quando você está nas costas de outro Crash, a mecânica e as fases são divertidas.'),(7,'Dragon Ball Z: Budokai Tenkaichi 3','2007-10-04',4,5,57,NULL,NULL,NULL,NULL,'Dragon Ball Z: Budokai Tenkaichi 3 ou Dragon Ball Z: Sparking! METEOR é um jogo eletrônico para PlayStation 2 e Wii em 3D, de gêneros ação e luta, desenvolvido pela Spike e publicado pela Atari, na América do Norte, e pela Namco Bandai, na Europa e no Japão.','Sim',8.60,'Não','Sim','Como Jogo de luta Bukodai Tenkaichi 3 é um ótimo jogo, com uma grande variedade de personagens e uma mecânica ótima de jogo para a franquia Dragon Ball, muito divertido de jogar local contra outras pessoas e um sistema interessante de torneios para jogar sozinho, um único detalhe que não me faz muito fã do modo história é o balanceamento para poder dar continuidade a história, fazendo você ter apenas que fugir e ganhar tempo contra inimigos muito mais fortes até vir os Press to Event.'),(8,'Dragon Ball Z: Budokai 3','2004-11-16',4,5,57,NULL,NULL,NULL,NULL,'Dragon Ball Z: Budokai 3 é um jogo criado em 2004, baseado na série de anime e mangá japonês Dragon Ball.','Sim',8.50,'Não','Sim','Budokai 3 se assemelha mais aos clássicos de luta 2D mas é um 2.5D, com sistema de evolução RPG no modo história te da a opção de fazer grind para ficar mais forte, e o sistema de combate multiplayer local se torna uma ótima diversão para jogar com mais pessoas.'),(9,'Portal 2','2011-04-18',1,1,55,NULL,NULL,NULL,NULL,'Em Portal 2, o maléfico Glados, um computador que pertuba a sua vida, está de volta e fará de tudo para você não conseguir chegar ao final. Nessa versão você também poderá matar as saudades da robõ Chell. Portal 2 vai colocar você frente a frente com robôs que lembram muito os seres humanos.','Sim',9.10,'Sim','Sim','Um dos melhores puzzles que já joguei, a jogabilidade foi algo inovador e se tornou um clássico, mas diferente de alguns ótimos puzzles, Portal 2 não se prende apenas a jogabilidade, também possui uma história interessante com personagens carismáticos e super engraçados, além da música da Glados que gruda como chiclete.'),(10,'Jackass: The Game','2007-11-24',14,5,4,1,3,NULL,NULL,'Jackass: The Game é um jogo de ação inspirado no famoso programa da MTV no qual uma trupe de “jumentos” realiza proezas de natureza dúbia. São mais de trinta mini-jogos todos mo melhor estilo da série, o que significa muito escatologia e lesões corporais.','Sim',7.50,'Não','Sim','Para quem viveu a época dos filmes do Jackass, esse jogo é um prato cheio pra rachar o bico.'),(11,'Twisted Metal: Black','2001-06-18',15,5,48,36,NULL,NULL,NULL,'Twisted Metal: Black é um jogo de combate veicular desenvolvido pela Incognito Entertainment com design produzido pela Sony Computer Entertainment America para PlayStation 2.','Não',NULL,'Não','Sim',NULL),(12,'Mortal Kombat: Shaolin Monks','2005-09-16',16,5,57,31,1,3,NULL,'Mortal Kombat: Shaolin Monks é um jogo eletrônico de ação e aventura beat \'em up de 2005 desenvolvido e publicado pela Midway para PlayStation 2 e Xbox. É um spin-off da série de luta Mortal Kombat.','Não',NULL,'Não','Sim',NULL),(13,'Gauntlet Legends: Seven Sorrows','2005-12-12',16,5,40,NULL,NULL,NULL,NULL,'Um hack’n’slash clássico, Gauntlet Legends: Seven Sorrows é um daqueles jogos que se torna extremamente divertido quando você consegue reunir três amigos em seu multiplayer local. Cada um pode escolher um personagem com habilidades únicas, que colaboram para derrotar centenas de adversários, coletar itens mais poderosos e voltar a fazer tudo de novo em dificuldades mais altas.','Não',NULL,'Não','Sim',NULL),(14,'Marvel: Ultimate Alliance','2006-10-24',17,5,40,31,NULL,NULL,NULL,'Com leves elementos de RPG, Marvel: Ultimate Alliance era a primeira chance que muitos jogadores tiveram de montar um time montado por personagens como Spider-Man, Wolverine, o Surfista Prateado e o Hulk para derrotar vilões famosos em cenários que saíram direto dos quadrinhos. Tanto o jogo original quanto sua sequência continuam até hoje bons exemplos de como fazer adaptações estreladas por heróis.','Não',NULL,'Não','Sim',NULL),(15,'Ratchet Deadlocked','2005-10-25',18,5,33,36,NULL,NULL,NULL,'Não se deixe assustar pela capa séria: o quarto game da série Ratchet, Deadlocked mantém o bom humor e as armas loucas e divertidas pelas quais a Insomniac se tornou conhecida. A diferença é que, dessa vez, o game traz elementos cooperativos em seu modo história, que permite que dois jogadores se unam para dominar as arenas brutais do show conhecido como Dreadzone.','Não',NULL,'Não','Sim',NULL),(16,'Naruto: Ultimate Ninja 3','2005-12-22',19,5,57,NULL,NULL,NULL,NULL,'Jogos de anime não costumam ser um poço de profundidade, e se focam muito mais em técnicas, cenas épicas e muito fanservice para se sustentarem, e ainda que Naruto: Ultimate Ninja 3 seja exatamente isso, o jogo é bem divertido e certamente vai agradar bastante os fãs do anime que queiram trocar um x1 com os personagens do anime.','Não',NULL,'Não','Sim',NULL),(17,'Champions of Norrath','2004-02-10',20,5,40,1,3,NULL,NULL,'Champions of Norrath é um RPG de ação com ritmo rápido no qual o foco é matar inimigos, ganhar níveis e descobrir novos equipamentos para continuar fazendo isso em ambientes cada vez mais difíceis. Um dos destaques do game era seu alto nível de desafio, que o torna uma ótima escolha para quem realmente quer testar suas habilidades como jogador.','Não',NULL,'Não','Sim',NULL),(18,'LEGO Batman The Videogame','2008-09-23',21,5,1,3,31,55,NULL,'Praticamente qualquer jogo da série LEGO poderia se encaixar bem nessa lista, mas aquele estrelado por Batman se destaca por conseguir capturar muito bem a essência do personagem. Com fases repletas de inimigos, quebra-cabeças variados e peças para coletar, o jogo é daqueles que qualquer um consegue aproveitar, independentemente de sua idade.','Não',NULL,'Não','Sim',NULL),(19,'The Legend of Spyro Dawn of the Dragon','2008-10-21',22,5,10,1,NULL,NULL,NULL,'Dawn of the Dragon é fruto de uma época em que o simpático dragão estava passando por uma crise de identidade e não sabia muito bem o que queria ser do ponto de vista e do gameplay. Enquanto ele está longe de ser parecido com as aventuras originais do herói, ele ainda assim acaba sendo um beat’em up divertido, no qual dois jogadores podem controlar Spyro e Cynder em sua jornada para derrotar Malefor.','Não',NULL,'Não','Sim',NULL),(20,'Justice League Heroes','2006-10-17',20,5,31,40,NULL,NULL,NULL,'Justice League Heroes é um jogo bem parecido com Marvel: Ultimate Alliance, mas que troca os personagens da Marvel pelos grandes nomes da DC. O beat’em up traz um elenco formado por 7 personagens clássicos da Liga da Justiça, que devem explorar várias fases batendo em tudo o que se move e enfrentando vilões famosos.','Não',NULL,'Não','Sim',NULL);
/*!40000 ALTER TABLE `jogos` ENABLE KEYS */;
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
