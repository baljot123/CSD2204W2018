-- MySQL dump 10.16  Distrib 10.1.21-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.21-MariaDB

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
-- Table structure for table `c1`
--

DROP TABLE IF EXISTS `c1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c1` (
  `customersID` int(2) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `postalcode` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c1`
--

LOCK TABLES `c1` WRITE;
/*!40000 ALTER TABLE `c1` DISABLE KEYS */;
INSERT INTO `c1` VALUES (1,'baljot','singh','north york','toronto',123452),(2,'pulkit','kumar','north york','toronto',123452),(3,'ashley','ash','32 washingtom street','WDC',321100),(4,'bob marley','Bm','32 keele street','Toronto',100100),(1,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `c1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citymaster`
--

DROP TABLE IF EXISTS `citymaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citymaster` (
  `CityID` int(4) NOT NULL,
  `cityName` varchar(255) DEFAULT 'toronto',
  PRIMARY KEY (`CityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citymaster`
--

LOCK TABLES `citymaster` WRITE;
/*!40000 ALTER TABLE `citymaster` DISABLE KEYS */;
INSERT INTO `citymaster` VALUES (1,'toronto');
/*!40000 ALTER TABLE `citymaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customersID` int(2) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `postalcode` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'baljot','singh','north york','toronto',123452),(2,'pulkit','kumar','north york','toronto',123452),(3,'ashley','ash','32 washingtom street','WDC',321100),(4,'bob marley','Bm','32 keele street','Toronto',100100);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j2`
--

DROP TABLE IF EXISTS `j2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j2` (
  `ID` int(3) NOT NULL,
  `LasteName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `CityID` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j2`
--

LOCK TABLES `j2` WRITE;
/*!40000 ALTER TABLE `j2` DISABLE KEYS */;
/*!40000 ALTER TABLE `j2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j3`
--

DROP TABLE IF EXISTS `j3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j3` (
  `ID` int(3) NOT NULL,
  `LasteName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `CityID` int(4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_persons` (`CityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j3`
--

LOCK TABLES `j3` WRITE;
/*!40000 ALTER TABLE `j3` DISABLE KEYS */;
/*!40000 ALTER TABLE `j3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `ID` int(3) NOT NULL,
  `LASTNAME` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `Age` int(3) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person1`
--

DROP TABLE IF EXISTS `person1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person1` (
  `ID` int(3) NOT NULL,
  `LasteName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `CityID` int(4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_persons` (`CityID`),
  CONSTRAINT `fk_persons` FOREIGN KEY (`CityID`) REFERENCES `citymaster` (`CityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person1`
--

LOCK TABLES `person1` WRITE;
/*!40000 ALTER TABLE `person1` DISABLE KEYS */;
INSERT INTO `person1` VALUES (1,'marley','Bob',15,1),(2,'def','abc',20,1);
/*!40000 ALTER TABLE `person1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons` (
  `ID` int(3) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `CityID` int(4) NOT NULL,
  `cityName` varchar(255) DEFAULT 'toronto'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'toronto');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-12 10:55:50
