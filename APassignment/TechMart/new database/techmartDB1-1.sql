CREATE DATABASE  IF NOT EXISTS `techmart` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `techmart`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: techmart
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `userID` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin1@gmail.com','admin1'),('admin2@gmail.com','admin2');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `userID` varchar(40) NOT NULL,
  `itemID` varchar(20) NOT NULL,
  `quantity` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES ('mekhala@gmail.com','fsdfdsf',13,'2022-03-16 00:00:00'),('mekhala@gmail.com','rreewrew',12,'2022-03-22 00:00:00'),('mekhala@gmail.com','phoflaapppin',4,'2022-03-09 00:00:00');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivers` (
  `driverID` varchar(20) NOT NULL,
  `vehicleType` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  PRIMARY KEY (`driverID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `itemID` varchar(20) NOT NULL,
  `itemName` varchar(40) DEFAULT NULL,
  `mainCategory` varchar(40) DEFAULT NULL,
  `subCategory` varchar(40) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `color` varchar(10) NOT NULL,
  `inStockItem` int DEFAULT NULL,
  `warrantyTime` varchar(60) DEFAULT NULL,
  `shortDescription` varchar(100) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `brand` varchar(40) DEFAULT NULL,
  `imagePath` varchar(100) NOT NULL,
  `branch` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES ('','Aukey full cover ','phone Cover','full cover',2300,'brown',4,'1 year warranty','best smart phone back cover(brown color)',5,'Aukey','resources/img/items/phofulAukeybro.png','co'),('bat560huaweibla','huawei 5600w ','baterry','5600w',4900,'black',4,'1 year warranty','best battery for smart phones',5,'huawei','resources/img/items/bat560huaweibla.jpg','ga'),('bat780redmibla','redmi 7800w ','baterry','7800w',6000,'black',6,'1 year warranty','best battery for smart phones',4,'redmi','resources/img/items/bat780redmibla.jpg','nu'),('batkeysamsungbla','samsung keypad Mobiles ','baterry','keypad Mobiles',500,'black',9,'1 year warranty','best battery for keypad phones',6,'samsung','resources/img/items/batkeysamsungbla.jpg','ga'),('cabC poppowhi','oppo C port cables ','cables','C port cables',890,'white',2,'1 year warranty','best usb converter cabel',7,'oppo','resources/img/items/cabC poppowhi.jpg','co'),('cabC psamsungwhi','samsung C port cables ','cables','C port cables',780,'white',5,'1 year warranty','best usb converter cabel',3,'samsung','resources/img/items/cabC psamsungwhi.jpg','co'),('cabmichuaweibla','huawei micro port cables ','cables','micro port cables',560,'black',5,'1 year warranty','best usb converter cabel',4,'huawei','resources/img/items/cabmichuaweibla.jpg','ga'),('chacaboppobla','oppo cable Charger ','charger','cable Charger',890,'black',4,'1 year warranty','oppo mobile charger',8,'oppo','resources/img/items/chacaboppobla.jpg','ga'),('chacabsonybla','sony cable Charger ','charger','cable Charger',780,'black',5,'1 year warranty','best charging experience with sony charger',5,'sony','resources/img/items/chacabsonybla.png','co'),('chachasamsungwhi','samsung charger Adapter ','charger','charger Adapter',1200,'white',8,'1 year warranty','samsung charging adapter and usb cable',9,'samsung','resources/img/items/chachasamsungwhi.png','co'),('chawirhuaweisil','huawei wireless Charger ','charger','wireless Charger',4500,'silver',3,'1 year warranty','best charging experience with wireless charger',6,'huawei','resources/img/items/chawirhuaweisil.png','ga'),('dishalapplebla','apple half tempered ','display Tempered','half tempered',4500,'black',5,'1 year warranty','best backcover made by apple',5,'apple','resources/img/items/dishalapplebla.png','nu'),('heabluapplered','apple bluetooth Headset ','headset','bluetooth Headset',18000,'red',6,'1 year warranty','best quality sounds with apple bluetooth headset',12,'apple','resources/img/items/heabluapplered.jpg','co'),('heablusamsunggre','samsung bluetooth Headset ','headset','bluetooth Headset',34000,'green',8,'1 year warranty','bluetooth headset with quality sounds',4,'samsung','resources/img/items/heablusamsunggre.jpg','ga'),('heachahuaweiwhi','huawei charger Adapter ','headset','charger Adapter',1300,'white',9,'1 year warranty','huawei charging adapter with usb cabel',8,'huawei','resources/img/items/heachahuaweiwhi.png','ga'),('heawirhuaweibla','huawei wired Headset ','headset','wired Headset',890,'black',6,'1 year warranty','best headset with quality sounds',6,'huawei','resources/img/items/heawirhuaweibla.png','ja'),('heawiroppobla','oppo wired Headset ','headset','wired Headset',1200,'black',7,'1 year warranty','oppo headset with quality sounds',9,'oppo','resources/img/items/heawiroppobla.png','ja'),('heawirredmibla','redmi wired Headset ','headset','wired Headset',890,'black',4,'2 year warranty','best headset with quality sounds',8,'redmi','resources/img/items/heawirredmibla.png','co'),('heawirsonysil','sony wired Headset ','headset','wired Headset',4200,'silver',3,'2 years warranty','best quality sounds with sony headset',8,'sony','resources/img/items/heawirsonysil.jpg','co'),('memmemhuaweibla','huawei memory chip 32gb ','memory Device','memory chip 32gb',2300,'black',7,'1 year warranty','best memory device for mobiles',4,'huawei','resources/img/items/memmemhuaweibla.jpg','co'),('memmemredmibla','redmi memory chip 64gb ','memory Device','memory chip 64gb',3400,'black',7,'1 year warranty','best memory device for mobiles',5,'redmi','resources/img/items/memmemredmibla.jpg','ga'),('mempensamsunggol','samsung pendrive 16bg ','memory Device','pendrive 16bg',3400,'gold',4,'1 year warranty','best memory device for mobiles',4,'samsung','resources/img/items/mempensamsunggol.jpg','co'),('phobacAnkerpin','Anker back cover ','phone Cover','back cover',900,'pink',4,'1 year warranty','pink color smart phone back cover ',5,'Anker','resources/img/items/phobacAnkerpin.jpg','ga'),('phobacredmigra','redmi back cover ','phone Cover','back cover',670,'gray',4,'1 year warranty','smart phone back cover made by redmi company',6,'redmi','resources/img/items/phobacredmigra.jpg','co'),('phobacsamsungpur','samsung back cover ','phone Cover','back cover',900,'purple',5,'1 year warranty','best backcover made by samsung',6,'samsung','resources/img/items/phobacsamsungpur.png','nu'),('phobudApple blu','Apple iPhone 12 Mini budget smart phone ','phone','budget smart phone',130000,'blue',6,'1 year warranty','brand new huawei phone  (6gb ram, 128gb rom,48 Mpx)',4,'Apple iPhone 12 Mini','resources/img/items/phobudApple blu.png','ga'),('phobudAppwhi','Apple iPhone 11 budget smart phone ','phone','budget smart phone',125000,'white',7,'2 years warranty','brand new apple iphone 11 (6gb ram, 512gb rom)',5,'Apple iPhone 11','resources/img/items/phobudAppwhi.jpg','ga'),('phobudHUAbla','HUAWEI Y5p budget smart phone ','phone','budget smart phone',34000,'black',4,'1 year warranty','brand new 4G smart phone (6gb ram, 512gb rom, 64Mpx, Android 11)',7,'HUAWEI Y5p','resources/img/items/phobudHUAbla.png','ga'),('phobudhuablu','huawei budget smart phone ','phone','budget smart phone',38000,'blue',12,'2 year warranty','brand new huawei phone  (6gb ram, 128gb rom,48 Mpx)',4,'huawei','resources/img/items/phobudhuablu.jpg','ku'),('phobudoppblu','oppo budget smart phone ','phone','budget smart phone',34000,'blue',2,'2 years warranty','brand new 4G smart phone (6gb ram, 512gb rom, 64Mpx, Android 11)',6,'oppo','resources/img/items/phobudoppblu.jpg','ga'),('phobudredblu','redmi 10s pro budget smart phone ','phone','budget smart phone',37000,'blue',4,'2 years warranty','brand new 4G smart phone (6gb ram, 512gb rom, 64Mpx, Android 11)',3,'redmi 10s pro','resources/img/items/phobudredblu.jpg','nu'),('phobudsamgol','samsung budget smart phone ','phone','budget smart phone',23000,'gold',3,'1 year warranty','brand new 4G smart phone (6gb ram, 512gb rom, 64Mpx, Android 11)',6,'samsung','resources/img/items/phobudsamgol.png','ga'),('phobudsonsil','sony budget smart phone ','phone','budget smart phone',34000,'silver',5,'2 years warranty','brand new 4G smart phone (6gb ram, 512gb rom, 64Mpx, Android 11)',3,'sony','resources/img/items/phobudsonsil.png','ka'),('phoflaapppin','apple flagships smart phone ','phone','flagships smart phone',256000,'pink',30,'1 year warranty','brand new apple iphone 13 (6gb ram, 512gb rom)',5,'apple','resources/img/items/phoflaapppin.jpg','ga'),('phoflahuablu','huawei flagships smart phone ','phone','flagships smart phone',98000,'blue',4,'1 year warranty','brand new 4G smart phone (6gb ram, 512gb rom, 64Mpx, Android 11)',4,'huawei','resources/img/items/phoflahuablu.jpg','ga'),('phoflahuaweigra','huawei flagships smart phone ','phone','flagships smart phone',45000,'gray',4,'1 year warranty','brand new 4G smart phone (6gb ram, 512gb rom, 64Mpx, Android 11)',4,'huawei','resources/img/items/phoflahuaweigra.jpg','co'),('phoflasonybla','sony flagships smart phone ','phone','flagships smart phone',56000,'black',2,'1 year warranty','brand new 4G smart phone (6gb ram, 512gb rom, 64Mpx, Android 11)',3,'sony','resources/img/items/phoflasonybla.png','ku'),('phoflaXiagre','Xiaomi 11T flagships smart phone ','phone','flagships smart phone',84000,'green',7,'2 years warranty','brand new 4G smart phone (6gb ram, 512gb rom, 64Mpx, Android 11)',5,'Xiaomi 11T','resources/img/items/phoflaXiagre.jpg','ga'),('phoflaXiasil','Xiaomi 11T flagships smart phone ','phone','flagships smart phone',75000,'silver',7,'1 year warranty','brand new 4G smart phone (6gb ram, 512gb rom, 64Mpx, Android 11)',8,'Xiaomi 11T','resources/img/items/phoflaXiasil.jpg','co'),('phofulapplebla','apple full cover ','phone Cover','full cover',4500,'black',4,'1 year warranty','best backcover made by apple',9,'apple','resources/img/items/phofulapplebla.jpg','co'),('phomidredblu','redmi note 9 mid range smart phone ','phone','mid range smart phone',67000,'blue',5,'2 years warranty','brand new redmi note 9 phone(6gb ram, 64 gb rom, 64Mpx)',6,'redmi note 9','resources/img/items/phomidredblu.jpg','ka'),('pow480applewhi','apple 4800w ','power Bank','4800w',23000,'white',5,'1 year warranty','white color power bank made by apple ',4,'apple','resources/img/items/pow480applewhi.jpg','ku'),('pow560samsungbla','samsung 5600w ','power Bank','5600w',7800,'black',4,'1 year warranty','5600w power bank (color balck, free data cable)',7,'samsung','resources/img/items/pow560samsungbla.png','ga'),('selbudhuaweibla','huawei budget smart phone ','selfi sticks','budget smart phone',2300,'black',9,'1 year warranty','best selfi stick for photography',4,'huawei','resources/img/items/selbudhuaweibla.png','ga'),('smasmaapplegol','apple smart watch ','smart Watch','smart watch',67000,'gold',6,'1 year warranty','best smart watches made by apple',4,'apple','resources/img/items/smasmaapplegol.png','co'),('smasmahuaweibla','huawei smart watch ','smart Watch','smart watch',45000,'black',4,'1 year warranty','best smart watches made by huawei',6,'huawei','resources/img/items/smasmahuaweibla.jpg','ga');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `email` varchar(40) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `items` varchar(300) NOT NULL,
  `totalPrice` double NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `driverID` varchar(20) DEFAULT NULL,
  `vehicleType` varchar(20) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('skasunmk98@gmail.com','galle',' apple bluetooth Headset  3, ',54000,'2022-03-08 23:43:03','4545454v','bike','processing'),('skasunmk98@gmail.com','galle',' huawei budget smart phone  1,  redmi 10s pro budget smart phone  2,  redmi wired Headset  1, ',112890,'2022-03-08 13:27:36','null','null','processing'),('skasunmk98@gmail.com','galle',' samsung 5600w  1, ',7800,'2022-03-08 12:52:00',NULL,NULL,NULL),('skasunmk98@gmail.com','colombo',' apple full cover  1, ',4500,'2022-03-08 23:49:42',NULL,NULL,NULL),('skasunmk982@gmail.com','galle',' oppo C port cables  1,  samsung 5600w  1,  samsung bluetooth Headset  1,  huawei charger Adapter  3, ',46590,'2022-03-08 17:04:17',NULL,NULL,NULL),('skasunmk98@gmail.com','galle',' oppo wired Headset  3,  oppo C port cables  1, ',4490,'2022-03-08 17:59:05',NULL,NULL,NULL),('skasunmk98@gmail.com','galle',' samsung 5600w  1, ',7800,'2022-03-08 23:43:34',NULL,NULL,NULL),('skasunmk982@gmail.com','colombo',' sony cable Charger  2, ',1560,'2022-03-09 01:46:02',NULL,NULL,NULL),('skasunmk982@gmail.com','colombo',' samsung charger Adapter  4, ',4800,'2022-03-09 11:53:18',NULL,NULL,NULL),('skasunmk98@gmail.com','galle',' apple bluetooth Headset  2,  apple bluetooth Headset  2,  apple bluetooth Headset  2, ',108000,'2022-03-10 01:24:24',NULL,NULL,NULL),('skasunmk98@gmail.com','kurunegala',' samsung 5600w  1,  redmi 7800w  1, ',13800,'2022-03-10 01:26:05',NULL,NULL,NULL),('mekhala811@gmail.com','nugegoda',' Xiaomi 11T flagships smart phone  1, ',75000,'2022-03-10 09:08:02',NULL,NULL,NULL),('mekhala811@gmail.com','jaffna',' oppo C port cables  2, ',1780,'2022-03-10 19:47:04',NULL,NULL,NULL),('mekhala811@gmail.com','jaffna',' sony wired Headset  1, ',4200,'2022-03-10 21:36:53',NULL,NULL,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requesttosupplier`
--

DROP TABLE IF EXISTS `requesttosupplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requesttosupplier` (
  `salesagentID` varchar(40) NOT NULL,
  `branch` varchar(40) NOT NULL,
  `request` varchar(40) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requesttosupplier`
--

LOCK TABLES `requesttosupplier` WRITE;
/*!40000 ALTER TABLE `requesttosupplier` DISABLE KEYS */;
INSERT INTO `requesttosupplier` VALUES ('agent1@gmail.com','','samsung galaxy : 6','2022-03-10 12:34:58'),('agent1@gmail.com','','samsung galaxy : 6','2022-03-10 12:34:58');
/*!40000 ALTER TABLE `requesttosupplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `userID` varchar(40) NOT NULL,
  `itemID` varchar(20) NOT NULL,
  `discription` varchar(100) NOT NULL,
  `rating` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES ('mekhala@gmail.com','phoflaapppin','',2),('mekhala@gmail.com','phobudhuablu','',5),('mekhala@gmail.com','phoflaapppin','This product is excellent and I highly recommend that product to other customers ????',2),('mekhala@gmail.com','phobudhuablu','This product is excellent and I highly recommend that product to other customers ????',5),('mekhala@gmail.com','phomidredblu','This product is excellent and I highly recommend that product to other customers ????',1),('mekhala@gmail.com','phoflaXiasil','This product is excellent and I highly recommend that product to other customers ????',3),('mekhala@gmail.com','phoflaXiagre','This product is excellent and I highly recommend that product to other customers ????',4),('mekhala@gmail.com','phobudAppwhi','This product is excellent and I highly recommend that product to other customers ????',5),('mekhala@gmail.com','phobudoppblu','This product is excellent and I highly recommend that product to other customers ????',1),('mekhala@gmail.com','phobudsamgol','This product is excellent and I highly recommend that product to other customers ????',3),('mekhala@gmail.com','phobudHUAbla','This product is excellent and I highly recommend that product to other customers ????',2),('mekhala@gmail.com','phobudHUAbla','This product is excellent and I highly recommend that product to other customers ????',4),('mekhala@gmail.com','phoflahuablu','This product is excellent and I highly recommend that product to other customers ????',2),('mekhala@gmail.com','phobudsonsil','This product is excellent and I highly recommend that product to other customers ????',4),('mekhala@gmail.com','phobudApple blu','This product is excellent and I highly recommend that product to other customers ????',4),('mekhala@gmail.com','phoflasonybla','This product is excellent and I highly recommend that product to other customers ????',1),('mekhala@gmail.com','phoflasonybla','This product is excellent and I highly recommend that product to other customers ????',4),('mekhala@gmail.com','heablusamsunggre','This product is excellent and I highly recommend that product to other customers ????',2),('mekhala@gmail.com','heawirhuaweibla','This product is excellent and I highly recommend that product to other customers ????',4),('mekhala@gmail.com','heawiroppobla','This product is excellent and I highly recommend that product to other customers ????',2),('mekhala@gmail.com','heawirsonysil','This product is excellent and I highly recommend that product to other customers ????',4),('mekhala@gmail.com','heawirredmibla','This product is excellent and I highly recommend that product to other customers ????',3),('mekhala@gmail.com','heawiroppobla','This product is excellent and I highly recommend that product to other customers ????',2),('mekhala@gmail.com','heawirsonysil','This product is excellent and I highly recommend that product to other customers ????',6),('mekhala@gmail.com','heawirredmibla','This product is excellent and I highly recommend that product to other customers ????',1),('mekhala@gmail.com','chacaboppobla','This product is excellent and I highly recommend that product to other customers ????',3),('mekhala@gmail.com','chacabsonybla','This product is excellent and I highly recommend that product to other customers ????',5),('mekhala@gmail.com','phoflaapppin','This product is excellent and I highly recommend that product to other customers ????',2),('mekhala@gmail.com','phobudhuablu','This product is excellent and I highly recommend that product to other customers ????',5),('mekhala@gmail.com','phomidredblu','This product is excellent and I highly recommend that product to other customers ????',1),('mekhala@gmail.com','phoflaXiasil','This product is excellent and I highly recommend that product to other customers ????',3),('mekhala@gmail.com','phoflaXiagre','This product is excellent and I highly recommend that product to other customers ????',4),('mekhala@gmail.com','phobudAppwhi','This product is excellent and I highly recommend that product to other customers ????',5),('mekhala@gmail.com','phobudoppblu','This product is excellent and I highly recommend that product to other customers ????',1),('mekhala@gmail.com','phobudsamgol','This product is excellent and I highly recommend that product to other customers ????',3),('mekhala@gmail.com','phobudHUAbla','This product is excellent and I highly recommend that product to other customers ????',2),('mekhala@gmail.com','phobudHUAbla','This product is excellent and I highly recommend that product to other customers ????',4),('mekhala@gmail.com','phoflahuablu','This product is excellent and I highly recommend that product to other customers ????',2),('mekhala@gmail.com','phobudsonsil','This product is excellent and I highly recommend that product to other customers ????',4),('mekhala@gmail.com','phobudApple blu','This product is excellent and I highly recommend that product to other customers ????',4),('mekhala@gmail.com','phoflasonybla','This product is excellent and I highly recommend that product to other customers ????',1),('mekhala@gmail.com','phoflasonybla','This product is excellent and I highly recommend that product to other customers ????',4),('mekhala@gmail.com','heablusamsunggre','This product is excellent and I highly recommend that product to other customers ????',2),('mekhala@gmail.com','heawirhuaweibla','This product is excellent and I highly recommend that product to other customers ????',4),('mekhala@gmail.com','heawiroppobla','This product is excellent and I highly recommend that product to other customers ????',2),('mekhala@gmail.com','heawirsonysil','This product is excellent and I highly recommend that product to other customers ????',4),('mekhala@gmail.com','heawirredmibla','This product is excellent and I highly recommend that product to other customers ????',3),('mekhala@gmail.com','heawiroppobla','This product is excellent and I highly recommend that product to other customers ????',2),('mekhala@gmail.com','heawirsonysil','This product is excellent and I highly recommend that product to other customers ????',6),('mekhala@gmail.com','heawirredmibla','This product is excellent and I highly recommend that product to other customers ????',1),('mekhala@gmail.com','chacaboppobla','This product is excellent and I highly recommend that product to other customers ????',3),('mekhala@gmail.com','chacabsonybla','This product is excellent and I highly recommend that product to other customers ????',5),('skasunmk982@gmail.com','chacaboppobla','rewrwerwerwer',6),('skasunmk98@gmail.com','cabC poppowhi','sddfdssdfdsfsdfs',6),('skasunmk98@gmail.com','cabC poppowhi','ddwqeqweqwewqREWVTGWTETEQWTT',6),('skasunmk982@gmail.com','chachasamsungwhi','sassadasdasdsadasdasdsadasdasdsadsa',6),('skasunmk982@gmail.com','heablusamsunggre','this is my first comment',6),('skasunmk982@gmail.com','cabC poppowhi','this charger is good . also i recommended it',6),('skasunmk982@gmail.com','memmemredmibla','this memory device is coooool........................',6),('skasunmk982@gmail.com','memmemredmibla','i love  that',6),('skasunmk982@gmail.com','phoflaXiasil','this mobile is cool..........',6),('skasunmk982@gmail.com','phoflaXiasil','this is best one!!!!!!!!!!!!!!!!!!!',6),('skasunmk982@gmail.com','chacaboppobla','it is cool',6),('skasunmk982@gmail.com','chacaboppobla','best one i ever see!!!!!!!!!!',6),('skasunmk982@gmail.com','pow560samsungbla','this power bank is very cool!!!!!!!!!!!!!',6),('skasunmk98@gmail.com','chachasamsungwhi','coollllll',6),('skasunmk982@gmail.com','heawirsonysil','sounds is so quality......',6),('mekhala811@gmail.com','phofulapplebla','this is useful',6);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesagent`
--

DROP TABLE IF EXISTS `salesagent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesagent` (
  `userID` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesagent`
--

LOCK TABLES `salesagent` WRITE;
/*!40000 ALTER TABLE `salesagent` DISABLE KEYS */;
INSERT INTO `salesagent` VALUES ('agent1@gmail.com','agent1','galle'),('agent10@gmail.com','12345','colombo'),('agent15@gmail.com','agent456','colombo'),('agent2@gmail.com','agent2','kandy'),('agent3@gmail.com','agent3','nugegoda'),('agent4@gmail.com','agent4','gampaha'),('agent5@gmail.com','agent5','kurunegala'),('agent6@gmail.com','agent6','jaffna'),('agent7@gmail.com','agent7','colombo'),('agent8@gmail.com','1234567','galle'),('agent9@gmail.com','5678','colombo'),('salesagenttechmart@gmail.com','1234','galle');
/*!40000 ALTER TABLE `salesagent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `userID` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES ('supplier1@gmail.com','supplier1','galle'),('supplier2@gmail.com','supplier2','kandy'),('supplier3@gmail.com','supplier3','nugegoda'),('supplier4@gmail.com','supplier4','gampaha'),('supplier5@gmail.com','supplier5','kurunegala'),('supplier6@gmail.com','supplier6','jaffna'),('supplier7@gmail.com','supplier7','colombo');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `orderID` int NOT NULL AUTO_INCREMENT,
  `userID` varchar(40) NOT NULL,
  `items` varchar(300) NOT NULL,
  `price` double NOT NULL,
  `salesAgent` varchar(40) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,'skasunmk98@gmail.com',' samsung 5600w  1, ',7800,'agent1@gmail.com','2022-03-08 11:34:03'),(2,'skasunmk98@gmail.com',' huawei charger Adapter  1,  oppo wired Headset  1, ',2500,'agent1@gmail.com','2022-03-08 12:55:00'),(3,'skasunmk98@gmail.com',' huawei charger Adapter  1, ',1300,'agent1@gmail.com','2022-03-08 12:55:17'),(4,'skasunmk98@gmail.com',' apple full cover  2, ',9000,'agent1@gmail.com','2022-03-08 18:02:53'),(5,'skasunmk98@gmail.com',' sony wired Headset  1, ',4200,'agent1@gmail.com','2022-03-08 23:46:56'),(6,'mekhala811@gmail.com',' samsung C port cables  1, ',780,'agent1@gmail.com','2022-03-10 01:39:34');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `email` varchar(40) NOT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('dilka@gmail.com','dilka','malith','43jh543j5345hj34h5j43h5jrh435j43h543h4j53'),('dilshan@gmail.com','dishan','kalhhara','j34h434r32u4h24h23432u42343u443423'),('malshani@gmail.com','malshani','dahanayaka','4jh5h45h45i43hiu5345h43543iu5h435h'),('mekhala@gmail.com','mekala','withanage','43i5h3454354534h53h45345344'),('mekhala811@gmail.com','Mekhala','Vithanage','30410be149e6771f60881182342452d5'),('pubudu@gmail.com','pubudu','chathuranga','34k5h43j5h43j5j345hj34h5j345h34j5h3j3454'),('skasunmk98@gmail.com','kasun','madhumal','81dc9bdb52d04dc20036dbd8313ed055'),('skasunmk982@gmail.com','kasun','madhumal','81dc9bdb52d04dc20036dbd8313ed055');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-11 10:13:54
