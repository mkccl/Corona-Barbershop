-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: datenerhebung_eingang
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `datenerhebung_eingang`
--

DROP TABLE IF EXISTS `datenerhebung_eingang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datenerhebung_eingang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vorname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nachname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ort` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `straße` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `plz` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tele` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `erfassungs_datum` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `datenschutz_zugestimmt` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `kein_Covid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `covid_Test_Bartschnitt` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dateFlag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datenerhebung_eingang`
--

LOCK TABLES `datenerhebung_eingang` WRITE;
/*!40000 ALTER TABLE `datenerhebung_eingang` DISABLE KEYS */;
INSERT INTO `datenerhebung_eingang` VALUES (1,'Test','Test','Test','Test','Test','Test','07.03.2021',NULL,NULL,NULL,0),(2,'Michael','Krause','null','null','null','null','08.03.2021',NULL,NULL,NULL,0),(3,'Michael','Krause','null','null','null','null','08.03.2021',NULL,NULL,NULL,0),(4,'Michael','Krause','Barsinghausen','DammstraÃe 13','30175','017645645668','08.03.2021',NULL,NULL,NULL,0),(5,'Michael','Krause','Barsinghausen','DammstraÃe 13','30175','017645645668','08.03.2021',NULL,NULL,NULL,0),(6,'Michael','Krause','Barsinghausen','DammstraÃe 13','30175','017645645668','08.03.2021',NULL,NULL,NULL,0),(11,'Michael','Krause','Barsinghausen','DammstraÃe 13','30175','017645645668','08.03.2021',NULL,NULL,NULL,0),(12,'Hans','Hinterseher','Hahaha','HinterseherstraÃe 2','324890','238949230234','08.03.2021',NULL,NULL,NULL,0),(14,'Mr. T','Haare','Ulm','asjdklasd','123123','017645645668','08.03.2021',NULL,NULL,NULL,0),(15,'Michael','Krause','Barsinghausen','DammstraÃe 13','30175','017645645668','08.03.2021',NULL,NULL,NULL,0),(17,'Michael','Krause','Barsinghausen','DammstraÃe 13','30175','017645645668','19.03.2021',NULL,NULL,NULL,0),(18,'Michael','Krause','Barsinghausen','DammstraÃe 13','30175','017645645668','18.03.2021',NULL,NULL,NULL,0),(20,'Michael','Krause','Barsinghausen','DammstraÃe 13','30175','017645645668','08.03.2021','Zugestimmt','Zugestimmt','Zugestimmt',0),(21,'Michael','Krause','Barsinghausen','DammstraÃe 13','30175','017645645668','16.03.2021','Zugestimmt','Zugestimmt','Zugestimmt',0),(24,'Michael','Krause','Barsinghausen','DammstraÃe 13','30175','017645645668','15.03.2021','Zugestimmt','Zugestimmt','null',0),(25,'Michael','Krause','Barsinghausen','DammstraÃe 13','30175','017645645668','08.03.2021','Zugestimmt','Zugestimmt','null',0),(26,'Michael','Krause','Barsinghausen','DammstraÃe 13','30175','017645645668','08.03.2021','Zugestimmt','Zugestimmt','null',0),(27,'Michael','Krause','Barsinghausen','DammstraÃe 13','30175','017645645668','08.03.2021','Zugestimmt','Zugestimmt','null',0),(28,'Michael','Krause','Barsinghausen','DammstraÃe 13, 8','30890','017645645668','16.03.2021','Zugestimmt','Zugestimmt','null',0),(29,'Michael','Krause','Barsinghausen','DammstraÃe 13, 8','30890','017645645668','16.03.2021','Zugestimmt','Zugestimmt','null',0),(30,'Michael','Krause','Barsinghausen','DammstraÃe 13, 8','30890','017645645668','16.03.2021','Zugestimmt','Zugestimmt','null',0),(31,'Michael','Krause','Barsinghausen','DammstraÃe 13, 8','30890','017645645668','16.03.2021','Zugestimmt','Zugestimmt','null',0);
/*!40000 ALTER TABLE `datenerhebung_eingang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-16 23:12:08
