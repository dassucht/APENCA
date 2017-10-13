CREATE DATABASE  IF NOT EXISTS `bibliotecadb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bibliotecadb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bibliotecadb
-- ------------------------------------------------------
-- Server version	5.5.21

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
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carreras` (
  `idCarreras` int(11) NOT NULL AUTO_INCREMENT,
  `prefijo` varchar(1) NOT NULL,
  `nombreCarrera` varchar(50) NOT NULL,
  `nombreCorto` varchar(20) NOT NULL,
  `estatus` enum('Vigente','Baja','Pendiente') DEFAULT NULL,
  PRIMARY KEY (`idCarreras`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras`
--

LOCK TABLES `carreras` WRITE;
/*!40000 ALTER TABLE `carreras` DISABLE KEYS */;
INSERT INTO `carreras` VALUES (1,'S','Ingenieria En Sistemas Computacionales','Ing. Sistemas','Vigente'),(2,'A','Ingenieria Ambiental','Ing. Ambiental','Vigente'),(3,'D','Ingenieria Industrial','Ing. Industrial','Vigente'),(4,'E','Ingenieria Electronica','Ing. Electronica','Vigente'),(5,'I','Ingenieria Informatica','Ing. Informatica','Vigente'),(6,'G','Ingenieria En Gestion Empresarial','Ing. Gestion','Vigente'),(7,'M','Gastronomia','Gastronomia','Vigente'),(8,'T','Ingenieria En Sistemas Automotrices','Ing. Automotrz','Vigente');
/*!40000 ALTER TABLE `carreras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleencuesta`
--

DROP TABLE IF EXISTS `detalleencuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleencuesta` (
  `idEncuestas` int(11) NOT NULL,
  `idSecciones` int(11) NOT NULL,
  KEY `idEncuestas` (`idEncuestas`),
  KEY `idSecciones` (`idSecciones`),
  CONSTRAINT `detalleencuesta_ibfk_1` FOREIGN KEY (`idEncuestas`) REFERENCES `encuestas` (`idEncuestas`),
  CONSTRAINT `detalleencuesta_ibfk_2` FOREIGN KEY (`idSecciones`) REFERENCES `secciones` (`idSecciones`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleencuesta`
--

LOCK TABLES `detalleencuesta` WRITE;
/*!40000 ALTER TABLE `detalleencuesta` DISABLE KEYS */;
INSERT INTO `detalleencuesta` VALUES (1,1),(1,2),(1,3);
/*!40000 ALTER TABLE `detalleencuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elementos`
--

DROP TABLE IF EXISTS `elementos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elementos` (
  `idElementos` int(11) NOT NULL AUTO_INCREMENT,
  `textElemento` varchar(150) NOT NULL,
  `idSecciones` int(11) NOT NULL,
  PRIMARY KEY (`idElementos`),
  KEY `idSecciones` (`idSecciones`),
  CONSTRAINT `elementos_ibfk_1` FOREIGN KEY (`idSecciones`) REFERENCES `secciones` (`idSecciones`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elementos`
--

LOCK TABLES `elementos` WRITE;
/*!40000 ALTER TABLE `elementos` DISABLE KEYS */;
INSERT INTO `elementos` VALUES (1,'Prestamo externo (domicilio)',1),(2,'Control (prestamo interno)',1),(3,'Hemeroteca (revistas)',1),(4,'Cubiculos Grupales',1),(5,'Cubiculos Personales',1),(6,'Sala Videoteca (audiovisual)',1),(7,'Clima',2),(8,'Iluminacion',2),(9,'Nivel de ruido',2),(10,'Señalamientos',2),(11,'Mobiliario',2),(12,'Espacio',2),(13,'Comentario',3);
/*!40000 ALTER TABLE `elementos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuestas`
--

DROP TABLE IF EXISTS `encuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuestas` (
  `idEncuestas` int(11) NOT NULL AUTO_INCREMENT,
  `semestre` enum('Ene-Jun','Ago-Dic') NOT NULL,
  `anio` int(11) NOT NULL,
  PRIMARY KEY (`idEncuestas`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuestas`
--

LOCK TABLES `encuestas` WRITE;
/*!40000 ALTER TABLE `encuestas` DISABLE KEYS */;
INSERT INTO `encuestas` VALUES (1,'Ago-Dic',2017);
/*!40000 ALTER TABLE `encuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuestasrealizadas`
--

DROP TABLE IF EXISTS `encuestasrealizadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuestasrealizadas` (
  `idEncuestasRealizadas` int(11) NOT NULL AUTO_INCREMENT,
  `respuestaElemento` int(11) NOT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  `fecha` date NOT NULL,
  `noControl` varchar(9) NOT NULL,
  `idEncuestas` int(11) NOT NULL,
  `idSecciones` int(11) NOT NULL,
  `idElementos` int(11) NOT NULL,
  `idCarreras` int(11) NOT NULL,
  PRIMARY KEY (`idEncuestasRealizadas`),
  KEY `idEncuestas` (`idEncuestas`),
  KEY `idSecciones` (`idSecciones`),
  KEY `idElementos` (`idElementos`),
  KEY `idCarreras` (`idCarreras`),
  CONSTRAINT `encuestasrealizadas_ibfk_1` FOREIGN KEY (`idEncuestas`) REFERENCES `encuestas` (`idEncuestas`),
  CONSTRAINT `encuestasrealizadas_ibfk_2` FOREIGN KEY (`idSecciones`) REFERENCES `secciones` (`idSecciones`),
  CONSTRAINT `encuestasrealizadas_ibfk_3` FOREIGN KEY (`idElementos`) REFERENCES `elementos` (`idElementos`),
  CONSTRAINT `encuestasrealizadas_ibfk_4` FOREIGN KEY (`idCarreras`) REFERENCES `carreras` (`idCarreras`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuestasrealizadas`
--

LOCK TABLES `encuestasrealizadas` WRITE;
/*!40000 ALTER TABLE `encuestasrealizadas` DISABLE KEYS */;
INSERT INTO `encuestasrealizadas` VALUES (1,0,'','2017-10-10','S13120097',1,1,1,1),(2,0,'','2017-10-10','S13120097',1,1,2,1),(3,0,'','2017-10-10','S13120097',1,1,3,1),(4,0,'','2017-10-10','S13120097',1,1,4,1),(5,0,'','2017-10-10','S13120097',1,1,5,1),(6,0,'','2017-10-10','S13120097',1,1,6,1),(7,0,'','2017-10-10','S13120097',1,2,7,1),(8,0,'','2017-10-10','S13120097',1,2,8,1),(9,0,'','2017-10-10','S13120097',1,2,9,1),(10,0,'','2017-10-10','S13120097',1,2,10,1),(11,0,'','2017-10-10','S13120097',1,2,11,1),(12,0,'','2017-10-10','S13120097',1,2,12,1),(13,5,'Excelentes servicios, excelente ambiente de trabajo','2017-10-10','S13120097',1,3,13,1),(14,1,'','2017-10-10','G13120012',1,1,1,6),(15,1,'','2017-10-10','G13120012',1,1,2,6),(16,0,'','2017-10-10','G13120012',1,1,3,6),(17,2,'','2017-10-10','G13120012',1,1,4,6),(18,0,'','2017-10-10','G13120012',1,1,5,6),(19,1,'','2017-10-10','G13120012',1,1,6,6),(20,3,'','2017-10-10','G13120012',1,2,7,6),(21,1,'','2017-10-10','G13120012',1,2,8,6),(22,0,'','2017-10-10','G13120012',1,2,9,6),(23,2,'','2017-10-10','G13120012',1,2,10,6),(24,2,'','2017-10-10','G13120012',1,2,11,6),(25,0,'','2017-10-10','G13120012',1,2,12,6),(26,5,'Excelentes atencion','2017-10-10','G13120012',1,3,13,6);
/*!40000 ALTER TABLE `encuestasrealizadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secciones`
--

DROP TABLE IF EXISTS `secciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secciones` (
  `idSecciones` int(11) NOT NULL AUTO_INCREMENT,
  `textSeccion` varchar(150) NOT NULL,
  `nombreCorto` varchar(50) NOT NULL,
  PRIMARY KEY (`idSecciones`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secciones`
--

LOCK TABLES `secciones` WRITE;
/*!40000 ALTER TABLE `secciones` DISABLE KEYS */;
INSERT INTO `secciones` VALUES (1,'¿Como calificas los siguientes servicios?','Servicios'),(2,'¿como califica las INSTALACIONES del centro de Informacion en cuanto a los siguientes aspectos?','Calidad'),(3,'Sugerencias generales','Comentarios');
/*!40000 ALTER TABLE `secciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-12 13:11:01
