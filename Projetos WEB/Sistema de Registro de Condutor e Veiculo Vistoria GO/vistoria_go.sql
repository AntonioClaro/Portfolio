-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: vistoria_go
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `conductor`
--

DROP TABLE IF EXISTS `conductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conductor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `RG` varchar(30) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(145) NOT NULL,
  `CNH` varchar(2) NOT NULL,
  `date` datetime NOT NULL,
  `selfie` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `CPF_UNIQUE` (`CPF`),
  UNIQUE KEY `RG_UNIQUE` (`RG`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conductor`
--

LOCK TABLES `conductor` WRITE;
/*!40000 ALTER TABLE `conductor` DISABLE KEYS */;
INSERT INTO `conductor` VALUES (1,'Jose Wilson','89244179341','891216710','11949759901','Rua Butantan, 48, Krizbi, São Paulo/SP','AE','2022-09-20 10:27:21','../photos/selfie/1_selfie.jpg'),(2,'Anna Klever','21274559013','690814332','11956701327','Av. Anastasia Valentina Santos, 193, Imperial de Andrade, São Bernado do Campo/SP','AC','2020-02-14 11:55:26','../photos/selfie/2_selfie.jpg'),(3,'Antonio','12421423561','188673524162782086','11965277835','Rua João Capricornio Almeida, 34, São Jordin, São Paulo/SP','AE','2023-11-02 00:02:31','../photos/selfie/3_selfie.jpg'),(4,'Antonio','12425423561','1886735241827889086','11965277835','Rua João Capricornio Almeida, 34, São Jordin, São Paulo/SP','AE','2023-11-02 15:05:04','../photos/selfie/4_selfie.jpg');
/*!40000 ALTER TABLE `conductor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `id` int NOT NULL,
  `plate` varchar(80) NOT NULL,
  `front` varchar(80) NOT NULL,
  `rear` varchar(80) NOT NULL,
  `odometer` varchar(80) NOT NULL,
  `seat` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'../photos/plate/1_plate.jpg','../photos/front/1_front.jpg','../photos/rear/1_rear.jpg','../photos/odometer/1_odometer.jpg','../photos/seat/1_seat.jpg'),(2,'../photos/plate/2_plate.jpg','../photos/front/2_front.jpg','../photos/rear/2_rear.jpg','../photos/odometer/2_odometer.jpg','../photos/seat/2_seat.jpg'),(3,'../photos/plate/3_plate.jpg','../photos/front/3_front.jpg','../photos/rear/3_rear.jpg','../photos/odometer/3_odometer.jpg','../photos/seat/3_seat.jpg'),(4,'../photos/plate/4_plate.jpg','../photos/front/4_front.jpg','../photos/rear/4_rear.jpg','../photos/odometer/4_odometer.jpg','../photos/seat/4_seat.jpg');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `id` int NOT NULL,
  `plate` varchar(7) NOT NULL,
  `chassis` varchar(17) NOT NULL,
  `renavam` varchar(11) NOT NULL,
  `state` varchar(2) NOT NULL,
  `brand` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `kilometers` double NOT NULL,
  `tank` double NOT NULL,
  PRIMARY KEY (`id`,`plate`,`chassis`,`renavam`),
  UNIQUE KEY `plate_UNIQUE` (`plate`),
  UNIQUE KEY `chassis_UNIQUE` (`chassis`),
  UNIQUE KEY `renavam_UNIQUE` (`renavam`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'BRA2E19','9BWHE21JX24060960','759046781','SP','BMW','I5',440.5,250.8),(2,'EXWA139','3UKBS89XO48265012','238712234','SP','Toyota','Yaris',6802.1,190.2),(3,'ERYZ123','67983564321447890','12344242353','SP','Toyota','Corolla',220,220),(4,'ZAQX123','67983564456447890','12554212353','SP','Toyota','Corolla',220,220);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 17:21:48
