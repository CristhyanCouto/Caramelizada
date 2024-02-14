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
            AN.QUANTIDADE_EPISODIOS AS "Número de Episódios",
            AN.MINHA_NOTA AS "Minha Nota"
        FROM ANIMES AN
        LEFT JOIN ATUAL_ESTADO AE ON AN.ATUAL_ESTADO = AE.IDATUAL_ESTADO
        LEFT JOIN GENEROS GA ON AN.GENERO_ANIME1 = GA.IDGENERO
        LEFT JOIN GENEROS GB ON AN.GENERO_ANIME2 = GB.IDGENERO
        WHERE AE.IDATUAL_ESTADO <> 7
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
            F.DATA_LANCAMENTO AS "Lançado em",
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-14 11:03:21
