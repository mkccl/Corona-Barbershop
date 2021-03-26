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
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id_auth_user` int NOT NULL AUTO_INCREMENT,
  `firmenname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `passwort` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `erstellungsDatum` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `straße` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `plz` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ort` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `telefon` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `setupFlag` tinyint(1) DEFAULT NULL,
  `nachname` varchar(44) DEFAULT NULL,
  `vorname` varchar(44) DEFAULT NULL,
  PRIMARY KEY (`id_auth_user`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (23,'Barbershop Michael','derccl@yahoo.de','$2a$12$eC3xjlCyjeTFyI.ebhhhvOcUpVH5SXwBLyBEi9i0FM3fj8W7uifHm','23.03.2021','DammstraÃe 13','30175','Barsinghausen','017645645668',1,'Krause','Michael'),(24,'flyingbarber','derccl2@yahoo.de','$2a$12$2gjKG/9shAmjGb/CVUjpEOX.nd5f4tHwxNgX5AdpAE58wlCwaNqAO','24.03.2021','DammstraÃe 13','30175','Barsinghausen','017645645668',1,'Krause','Michael'),(25,'Barbershop2 Michael','derccl3@yahoo.de','$2a$12$EDvjjx8K.AYKRn.E.cR1heUsKy6uE5zapzEYlh6cgLfettBOExrmC','24.03.2021',NULL,NULL,NULL,NULL,0,NULL,NULL),(26,'Barbershop 2Michael','derccl@yahoo.deo','$2a$12$qysMCoExb7Dq96GTvlL22eWeOOjBqU2X56lxRtttGHcQ8mbc9F9he','24.03.2021',NULL,NULL,NULL,NULL,0,NULL,NULL),(27,'Barbershop Michael','michael.krause@e-mail.de','$2a$12$bzynlo471wmeUYA7FMHVh.zn0uFcPuwHG/wrzJnmii6JVQoAGUiBi','24.03.2021',NULL,NULL,NULL,NULL,0,NULL,NULL),(28,'Barbershop Michael','derccl@yahoo.dee','$2a$12$PwKZyLulQVblHeUBDVmSdOawbyhw8PkR2pAS9xp9QWDimIWcTpsRq','24.03.2021',NULL,NULL,NULL,NULL,0,NULL,NULL),(30,'Barbershop Michael','derccl@yahoo.deee','$2a$12$mDSSAa0gISm4UdIn8P.SNO4XLNfV30SWW5jknunzrlES5mLtgisbG','24.03.2021',NULL,NULL,NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

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
  `id_auth_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2537 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datenerhebung_eingang`
--

LOCK TABLES `datenerhebung_eingang` WRITE;
/*!40000 ALTER TABLE `datenerhebung_eingang` DISABLE KEYS */;
INSERT INTO `datenerhebung_eingang` VALUES (1,'Test','Test','Test','Test','Test','Test','07.03.2021',NULL,NULL,NULL,0,23),(2,'Michael','Krause','null','null','null','null','08.03.2021',NULL,NULL,NULL,0,23),(3,'Michael','Krause','null','null','null','null','08.03.2021',NULL,NULL,NULL,0,23),(4,'Michael','Krause','Barsinghausen','DammstraÃe 13','30175','017645645668','08.03.2021',NULL,NULL,NULL,0,23),(5,'Michael','Krause','Barsinghausen','DammstraÃe 13','30175','017645645668','08.03.2021',NULL,NULL,NULL,0,23),(29,'Michael','Krause','Barsinghausen','DammstraÃe 13, 8','30890','017645645668','01.01.2021','Zugestimmt','Zugestimmt','null',0,22),(2536,'Michael','Krause','Weißenhorn','Geranienweg 38b','89264','0324289234','25.03.2021','true','true','true',0,23);
/*!40000 ALTER TABLE `datenerhebung_eingang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kontaktformular`
--

DROP TABLE IF EXISTS `kontaktformular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kontaktformular` (
  `id_kontaktformular` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_kontaktformular`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kontaktformular`
--

LOCK TABLES `kontaktformular` WRITE;
/*!40000 ALTER TABLE `kontaktformular` DISABLE KEYS */;
/*!40000 ALTER TABLE `kontaktformular` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26 12:39:40
