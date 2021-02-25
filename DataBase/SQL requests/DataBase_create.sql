CREATE DATABASE  IF NOT EXISTS `transportfinder` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `transportfinder`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: transportfinder
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `owners`
--

DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owners` (
  `Owner_id` int unsigned NOT NULL AUTO_INCREMENT,
  `INN` varchar(1024) DEFAULT 'Н/Д',
  `OGRN` varchar(1024) DEFAULT 'Н/Д',
  `Title` varchar(1024) DEFAULT 'Н/Д',
  `Registered_at` varchar(1024) DEFAULT 'Н/Д',
  `License_number` varchar(1024) DEFAULT 'Н/Д',
  `Reg_address` text,
  `Implement_address` varchar(1024) DEFAULT 'Н/Д',
  `Risk_category` varchar(1024) DEFAULT 'Н/Д',
  `Starts_at` varchar(1024) DEFAULT 'Н/Д',
  `Duration_hours` varchar(1024) DEFAULT 'Н/Д',
  `Last_inspect` varchar(1024) DEFAULT 'Н/Д',
  `Purpose` varchar(1024) DEFAULT 'Н/Д',
  `other_reason` varchar(1024) DEFAULT 'Н/Д',
  `form_of_holding` varchar(1024) DEFAULT 'Н/Д',
  `Performs_with` text,
  `Punishment` varchar(1024) DEFAULT 'Н/Д',
  `Description` varchar(1024) DEFAULT 'Н/Д',
  PRIMARY KEY (`Owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4750 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport` (
  `transport_id` int unsigned NOT NULL AUTO_INCREMENT,
  `VIN` varchar(64) DEFAULT 'Н/Д',
  `State_Registr_Mark` varchar(64) DEFAULT 'Н/Д',
  `Region` varchar(64) DEFAULT NULL,
  `Date_of_issue` varchar(64) DEFAULT NULL,
  `pass_ser` varchar(64) DEFAULT 'Н/Д',
  `Ownership` varchar(64) DEFAULT 'Н/Д',
  `End_date_of_ownership` varchar(64) DEFAULT 'Н/Д',
  `brand` varchar(100) DEFAULT 'Н/Д',
  `model` varchar(64) DEFAULT 'Н/Д',
  `type` varchar(64) DEFAULT 'Н/Д',
  `Registered_at` varchar(64) DEFAULT 'Н/Д',
  `License_number` varchar(64) DEFAULT 'Н/Д',
  `Status` varchar(64) DEFAULT 'Н/Д',
  `Action_with_vehicle` varchar(255) DEFAULT 'Н/Д',
  `Categorized` varchar(255) DEFAULT 'Н/Д',
  `Number_of_cat_reg` varchar(255) DEFAULT 'Н/Д',
  `Data_in_cat_reg` varchar(255) DEFAULT 'Н/Д',
  `ATP` varchar(255) DEFAULT 'Н/Д',
  `Model_from_cat_reg` varchar(255) DEFAULT 'Н/Д',
  `Owner_from_cat_reg` varchar(255) DEFAULT 'Н/Д',
  `Purpose_into_cat_reg` varchar(2048) DEFAULT 'Н/Д',
  `Category` varchar(255) DEFAULT 'Н/Д',
  `Date_of_cat_reg` varchar(255) DEFAULT 'Н/Д',
  PRIMARY KEY (`transport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49700 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `transport_owners`
--

DROP TABLE IF EXISTS `transport_owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport_owners` (
  `id_T- O` int unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int unsigned DEFAULT NULL,
  `transport_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id_T- O`),
  KEY `owner_id_idx` (`owner_id`),
  KEY `transport_id_idx` (`transport_id`),
  CONSTRAINT `owner_id` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`Owner_id`),
  CONSTRAINT `transport_id` FOREIGN KEY (`transport_id`) REFERENCES `transport` (`transport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
