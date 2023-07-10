-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: trabalhofinaldw
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `pagamento_beneficiario`
--

DROP TABLE IF EXISTS `pagamento_beneficiario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento_beneficiario` (
  `id_dim_periodo_referencia` int DEFAULT NULL,
  `id_dim_municipio` int DEFAULT NULL,
  `id_dim_beneficiario` int DEFAULT NULL,
  `id_dim_beneficio` int DEFAULT NULL,
  `valor_recebido` float DEFAULT NULL,
  `parcela` int DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  KEY `id_dim_periodo_referencia` (`id_dim_periodo_referencia`),
  KEY `id_dim_municipio` (`id_dim_municipio`),
  KEY `id_dim_beneficiario` (`id_dim_beneficiario`),
  KEY `id_dim_beneficio` (`id_dim_beneficio`),
  CONSTRAINT `pagamento_beneficiario_ibfk_1` FOREIGN KEY (`id_dim_periodo_referencia`) REFERENCES `dim_periodo_referencia` (`id_dim_periodo_referencia`),
  CONSTRAINT `pagamento_beneficiario_ibfk_2` FOREIGN KEY (`id_dim_municipio`) REFERENCES `dim_municipio` (`id_dim_municipio`),
  CONSTRAINT `pagamento_beneficiario_ibfk_3` FOREIGN KEY (`id_dim_beneficiario`) REFERENCES `dim_beneficiario` (`id_dim_beneficiario`),
  CONSTRAINT `pagamento_beneficiario_ibfk_4` FOREIGN KEY (`id_dim_beneficio`) REFERENCES `dim_beneficio` (`id_dim_beneficio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento_beneficiario`
--

LOCK TABLES `pagamento_beneficiario` WRITE;
/*!40000 ALTER TABLE `pagamento_beneficiario` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagamento_beneficiario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-09 23:07:45
