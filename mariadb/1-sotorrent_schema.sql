-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sotorrent20_06
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `sotorrent20_06`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sotorrent20_06` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sotorrent20_06`;

--
-- Table structure for table `ExceptionIndex`
--

DROP TABLE IF EXISTS `ExceptionIndex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExceptionIndex` (
  `qId` int(11) DEFAULT NULL,
  `exceptionName` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `index1` (`qId`),
  KEY `index2` (`exceptionName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JavaPosts`
--

DROP TABLE IF EXISTS `JavaPosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JavaPosts` (
  `Id` int(11) NOT NULL,
  `PostTypeId` tinyint(4) DEFAULT NULL,
  `AcceptedAnswerId` int(11) DEFAULT NULL,
  `ParentId` int(11) DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `DeletionDate` datetime DEFAULT NULL,
  `Score` int(11) DEFAULT NULL,
  `ViewCount` int(11) DEFAULT NULL,
  `Body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OwnerUserId` int(11) DEFAULT NULL,
  `OwnerDisplayName` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastEditorUserId` int(11) DEFAULT NULL,
  `LastEditorDisplayName` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastEditDate` datetime DEFAULT NULL,
  `LastActivityDate` datetime DEFAULT NULL,
  `Title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tags` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AnswerCount` int(11) DEFAULT 0,
  `CommentCount` int(11) DEFAULT 0,
  `FavoriteCount` int(11) DEFAULT 0,
  `ClosedDate` datetime DEFAULT NULL,
  `CommunityOwnedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `AcceptedAnswerId` (`AcceptedAnswerId`),
  KEY `ParentId` (`ParentId`),
  KEY `PostTypeId` (`PostTypeId`),
  KEY `posts_index_1` (`OwnerUserId`),
  KEY `posts_index_2` (`LastEditorUserId`),
  KEY `posts_index_3` (`OwnerDisplayName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PDGs`
--

DROP TABLE IF EXISTS `PDGs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PDGs` (
  `aId` int(11) DEFAULT NULL,
  `qId` int(11) DEFAULT NULL,
  `aIndex` int(11) DEFAULT NULL,
  `qIndex` int(11) DEFAULT NULL,
  `aCS` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qCS` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PDG` mediumblob DEFAULT NULL,
  KEY `index1` (`aId`),
  KEY `index2` (`qId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Specifications`
--

DROP TABLE IF EXISTS `Specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Specifications` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Specification` varchar(1000) NOT NULL,
  `Posts` varchar(1000) NOT NULL,
  `ExceptionName` varchar(64) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-23 16:52:09
