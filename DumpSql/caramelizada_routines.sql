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
-- Dumping events for database 'caramelizada'
--

--
-- Dumping routines for database 'caramelizada'
--
/*!50003 DROP PROCEDURE IF EXISTS `animes_curta_minha_nota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `animes_curta_minha_nota`()
BEGIN
        SELECT
            AN.IDANIME AS "ID",
            AN.NOME_ANIME AS "Nome do Anime",
            DATE_FORMAT(AN.DATA_LANCAMENTO, "%Y") AS "Lançamento",
            AE.NOME_ATUAL_ESTADO AS "Status",
            GA.NOME_GENERO AS "Gênero",
            GB.NOME_GENERO AS "Gênero",
            AN.CLASSIFICACAO_ETARIA AS "PG",
            AN.MINHA_NOTA AS "Minha Nota"
        FROM ANIMES AN
        LEFT JOIN ATUAL_ESTADO AE ON AN.ATUAL_ESTADO = AE.IDATUAL_ESTADO
        LEFT JOIN GENEROS GA ON AN.GENERO_ANIME1 = GA.IDGENERO
        LEFT JOIN GENEROS GB ON AN.GENERO_ANIME2 = GB.IDGENERO
        WHERE AE.IDATUAL_ESTADO = 8
        ORDER BY MINHA_NOTA DESC;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `animes_longa_minha_nota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `animes_longa_minha_nota`()
BEGIN
        SELECT
            AN.IDANIME AS "ID",
            AN.NOME_ANIME AS "Nome do Anime",
            DATE_FORMAT(AN.DATA_LANCAMENTO, "%Y") AS "Lançamento",
            AE.NOME_ATUAL_ESTADO AS "Status",
            GA.NOME_GENERO AS "Gênero",
            GB.NOME_GENERO AS "Gênero",
            AN.CLASSIFICACAO_ETARIA AS "PG",
            AN.MINHA_NOTA AS "Minha Nota"
        FROM ANIMES AN
        LEFT JOIN ATUAL_ESTADO AE ON AN.ATUAL_ESTADO = AE.IDATUAL_ESTADO
        LEFT JOIN GENEROS GA ON AN.GENERO_ANIME1 = GA.IDGENERO
        LEFT JOIN GENEROS GB ON AN.GENERO_ANIME2 = GB.IDGENERO
        WHERE AE.IDATUAL_ESTADO = 7
        ORDER BY MINHA_NOTA DESC;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `animes_minha_nota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `animes_minha_nota`()
BEGIN
        SELECT
            AN.IDANIME AS "ID",
            AN.NOME_ANIME AS "Nome do Anime",
            DATE_FORMAT(AN.DATA_LANCAMENTO, "%Y") AS "Lançamento",
            AE.NOME_ATUAL_ESTADO AS "Status",
            GA.NOME_GENERO AS "Gênero",
            GB.NOME_GENERO AS "Gênero",
            AN.CLASSIFICACAO_ETARIA AS "PG",
            AN.QUANTIDADE_EPISODIOS AS "Número de Episódios",
            AN.MINHA_NOTA AS "Minha Nota"
        FROM ANIMES AN
        LEFT JOIN ATUAL_ESTADO AE ON AN.ATUAL_ESTADO = AE.IDATUAL_ESTADO
        LEFT JOIN GENEROS GA ON AN.GENERO_ANIME1 = GA.IDGENERO
        LEFT JOIN GENEROS GB ON AN.GENERO_ANIME2 = GB.IDGENERO
        WHERE AE.IDATUAL_ESTADO <> 7 AND AE.IDATUAL_ESTADO <> 8
        ORDER BY MINHA_NOTA DESC;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filmes_by_genero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filmes_by_genero`(GENEROPARAMETRO VARCHAR(100))
BEGIN
        SELECT
            F.IDFILME AS "ID",
            F.NOME_FILME AS "Nome do Filme",
            DATE_FORMAT(F.DATA_LANCAMENTO,"%Y") AS "Lançamento",
            D.NOME_DIRETOR AS "Diretor",
            AA.NOME_ATOR AS "Atores",
            IFNULL(AB.NOME_ATOR, "****") AS "Atores",
            IFNULL(AC.NOME_ATOR, "****") AS "Atores",
            IFNULL(AD.NOME_ATOR, "****") AS "Atores",
            IFNULL(AE.NOME_ATOR, "****") AS "Atores",
            GA.NOME_GENERO AS "Genero",
            F.CLASSIFICACAO_ETARIA AS "PG",
            F.DURACAO_FILME AS "Duração",
            F.MINHA_NOTA AS "Minha Nota"
        FROM FILMES F
        INNER JOIN DIRETORES D ON F.DIRETOR1 = D.IDDIRETOR
        LEFT JOIN ATORES AA ON F.ATOR1 = AA.IDATOR
        LEFT JOIN ATORES AB ON F.ATOR2 = AB.IDATOR
        LEFT JOIN ATORES AC ON F.ATOR3 = AC.IDATOR
        LEFT JOIN ATORES AD ON F.ATOR4 = AD.IDATOR
        LEFT JOIN ATORES AE ON F.ATOR5 = AE.IDATOR
        LEFT JOIN GENEROS GA ON F.GENERO_FILME1 = GA.IDGENERO
        LEFT JOIN GENEROS GB ON F.GENERO_FILME2 = GB.IDGENERO
        LEFT JOIN GENEROS GC ON F.GENERO_FILME3 = GC.IDGENERO
        LEFT JOIN GENEROS GD ON F.GENERO_FILME4 = GD.IDGENERO
        LEFT JOIN GENEROS GE ON F.GENERO_FILME5 = GE.IDGENERO
        WHERE GA.NOME_GENERO = GENEROPARAMETRO
        OR GB.NOME_GENERO = GENEROPARAMETRO
        OR GC.NOME_GENERO = GENEROPARAMETRO
        OR GD.NOME_GENERO = GENEROPARAMETRO
        OR GE.NOME_GENERO = GENEROPARAMETRO
        ORDER BY MINHA_NOTA DESC;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filmes_minha_nota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filmes_minha_nota`()
BEGIN
        SELECT
            F.IDFILME AS "ID",
            F.NOME_FILME AS "Nome do Filme",
            DATE_FORMAT(F.DATA_LANCAMENTO,"%Y") AS "Lançamento",
            D.NOME_DIRETOR AS "Diretor",
            AA.NOME_ATOR AS "Atores",
            IFNULL(AB.NOME_ATOR, "****") AS "Atores",
            IFNULL(AC.NOME_ATOR, "****") AS "Atores",
            IFNULL(AD.NOME_ATOR, "****") AS "Atores",
            IFNULL(AE.NOME_ATOR, "****") AS "Atores",
            G.NOME_GENERO AS "Genero",
            F.CLASSIFICACAO_ETARIA AS "PG",
            F.DURACAO_FILME AS "Duração",
            F.MINHA_NOTA AS "Minha Nota"
        FROM FILMES F
        INNER JOIN DIRETORES D ON F.DIRETOR1 = D.IDDIRETOR
        LEFT JOIN ATORES AA ON F.ATOR1 = AA.IDATOR
        LEFT JOIN ATORES AB ON F.ATOR2 = AB.IDATOR
        LEFT JOIN ATORES AC ON F.ATOR3 = AC.IDATOR
        LEFT JOIN ATORES AD ON F.ATOR4 = AD.IDATOR
        LEFT JOIN ATORES AE ON F.ATOR5 = AE.IDATOR
        LEFT JOIN GENEROS G ON F.GENERO_FILME1 = G.IDGENERO
        ORDER BY MINHA_NOTA DESC;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jogos_by_genero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jogos_by_genero`(GENERO_PARAMETRO VARCHAR(100))
BEGIN
        SELECT
            J.IDJOGO AS "ID",
            J.NOME_JOGO AS "Nome do Jogo",
            DATE_FORMAT(J.DATA_LANCAMENTO, "%Y") AS "Lançamento",
            E.NOME_ESTUDIO AS "Estúdio",
            PL.NOME_PLATAFORMA AS "Plataforma",
            GA.NOME_GENERO AS "Gênero",
            IFNULL(GB.NOME_GENERO, "****") AS "Gênero",
            J.MULTIPLAYER_LOCAL AS "Multiplayer Local",
            IFNULL(J.MINHA_NOTA, "****") AS "Minha Nota"
        FROM JOGOS J
        LEFT JOIN ESTUDIOS E ON J.ESTUDIO = E.IDESTUDIO
        LEFT JOIN GENEROS GA ON J.GENERO_JOGO1 = GA.IDGENERO
        LEFT JOIN GENEROS GB ON J.GENERO_JOGO2 = GB.IDGENERO
        LEFT JOIN GENEROS GC ON J.GENERO_JOGO3 = GC.IDGENERO
        LEFT JOIN GENEROS GD ON J.GENERO_JOGO4 = GD.IDGENERO
        LEFT JOIN PLATAFORMAS PL ON J.PLATAFORMA = PL.IDPLATAFORMA
        WHERE GA.NOME_GENERO = GENERO_PARAMETRO 
        OR GB.NOME_GENERO = GENERO_PARAMETRO
        OR GC.NOME_GENERO = GENERO_PARAMETRO
        OR GD.NOME_GENERO = GENERO_PARAMETRO
        ORDER BY MINHA_NOTA DESC;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jogos_minha_nota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jogos_minha_nota`()
BEGIN
        SELECT
            J.IDJOGO AS "ID",
            J.NOME_JOGO AS "Nome do Jogo",
            DATE_FORMAT(J.DATA_LANCAMENTO, "%Y") AS "Lançamento",
            E.NOME_ESTUDIO AS "Estúdio",
            PL.NOME_PLATAFORMA AS "Plataforma",
            GA.NOME_GENERO AS "Gênero",
            IFNULL(GB.NOME_GENERO, "****") AS "Gênero",
            IFNULL(J.MINHA_NOTA, "****") AS "Minha Nota"
        FROM JOGOS J
        LEFT JOIN ESTUDIOS E ON J.ESTUDIO = E.IDESTUDIO
        LEFT JOIN GENEROS GA ON J.GENERO_JOGO1 = GA.IDGENERO
        LEFT JOIN GENEROS GB ON J.GENERO_JOGO2 = GB.IDGENERO
        LEFT JOIN PLATAFORMAS PL ON J.PLATAFORMA = PL.IDPLATAFORMA
        ORDER BY MINHA_NOTA DESC;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jogos_multiplayer_local` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jogos_multiplayer_local`()
BEGIN
        SELECT
            J.IDJOGO AS "ID",
            J.NOME_JOGO AS "Nome do Jogo",
            DATE_FORMAT(J.DATA_LANCAMENTO, "%Y") AS "Lançamento",
            E.NOME_ESTUDIO AS "Estúdio",
            PL.NOME_PLATAFORMA AS "Plataforma",
            GA.NOME_GENERO AS "Gênero",
            IFNULL(GB.NOME_GENERO, "****") AS "Gênero",
            J.MULTIPLAYER_LOCAL AS "Multiplayer Local",
            IFNULL(J.MINHA_NOTA, "****") AS "Minha Nota"
        FROM JOGOS J
        LEFT JOIN ESTUDIOS E ON J.ESTUDIO = E.IDESTUDIO
        LEFT JOIN GENEROS GA ON J.GENERO_JOGO1 = GA.IDGENERO
        LEFT JOIN GENEROS GB ON J.GENERO_JOGO2 = GB.IDGENERO
        LEFT JOIN PLATAFORMAS PL ON J.PLATAFORMA = PL.IDPLATAFORMA
        WHERE J.MULTIPLAYER_LOCAL = "Sim"
        ORDER BY MINHA_NOTA DESC;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-15 18:54:00
