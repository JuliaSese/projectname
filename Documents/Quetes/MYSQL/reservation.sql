-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: Reservation
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Eleves`
--

DROP TABLE IF EXISTS `Eleves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Eleves` (
  `id_eleve` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id_eleve`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Eleves`
--

LOCK TABLES `Eleves` WRITE;
/*!40000 ALTER TABLE `Eleves` DISABLE KEYS */;
INSERT INTO `Eleves` VALUES (1,'Google'),(2,'Laurie'),(3,'Quentin'),(4,'Thomas'),(5,'Sebastien'),(6,'Gregory'),(7,'Sylvain'),(8,'Youssef'),(9,'Franck'),(10,'Patrick');
/*!40000 ALTER TABLE `Eleves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reservation_salle`
--

DROP TABLE IF EXISTS `Reservation_salle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reservation_salle` (
  `id_reservation` int(11) NOT NULL,
  `id_salle` int(11) NOT NULL,
  `id_eleve` int(11) NOT NULL,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  `duree` time NOT NULL,
  PRIMARY KEY (`id_reservation`)
  FOREIGN KEY (`id_salle`)
  FOREIGN KEY (`id_eleve`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservation_salle`
--

LOCK TABLES `Reservation_salle` WRITE;
/*!40000 ALTER TABLE `Reservation_salle` DISABLE KEYS */;
INSERT INTO `Reservation_salle` VALUES (1,1,1,'2017-09-26','00:00:00','01:00:00'),(2,1,2,'2017-09-26','10:00:00','01:00:00'),(3,1,3,'2017-09-26','11:00:00','01:00:00'),(4,5,4,'2017-09-26','09:00:00','01:00:00'),(5,5,5,'2017-09-26','10:00:00','01:00:00'),(6,3,6,'2017-09-26','09:00:00','01:00:00'),(7,6,7,'2017-09-26','09:00:00','01:00:00'),(8,5,8,'2017-09-26','10:00:00','01:00:00'),(9,5,9,'2017-09-26','11:00:00','01:00:00'),(10,5,10,'2017-09-26','12:00:00','01:00:00');
/*!40000 ALTER TABLE `Reservation_salle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Salles`
--

DROP TABLE IF EXISTS `Salles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Salles` (
  `id_salle` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id_salle`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Salles`
--

LOCK TABLES `Salles` WRITE;
/*!40000 ALTER TABLE `Salles` DISABLE KEYS */;
INSERT INTO `Salles` VALUES (1,'Salle de dojo'),(2,'Salle de réunion'),(3,'Salle de repos'),(4,'Cuisine'),(5,'Bureau'),(6,'OpenSpace');
/*!40000 ALTER TABLE `Salles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-26 22:22:45
