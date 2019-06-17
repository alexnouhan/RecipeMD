-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: recipe_md
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `restrictions`
--

DROP TABLE IF EXISTS `restrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `restrictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restriction` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restrictions`
--

LOCK TABLES `restrictions` WRITE;
/*!40000 ALTER TABLE `restrictions` DISABLE KEYS */;
INSERT INTO `restrictions` VALUES (1,'Egg'),(2,'Eggs'),(3,'Red Dye'),(4,'Fish'),(5,'Shellfish'),(6,'Shrimp'),(7,'Lobster'),(8,'Oyster'),(9,'Crab'),(10,'Crayfish'),(11,'Clams'),(12,'Scallops'),(13,'Mussels'),(14,'Milk'),(15,'Cheese'),(16,'Dairy'),(17,'Cream'),(18,'Nuts'),(19,'Legumes'),(20,'Walnuts'),(21,'Hazelnuts'),(22,'Almonds'),(23,'Pecans'),(24,'Brazil Nuts'),(25,'Pinenuts'),(26,'Cashews'),(27,'Macadamia Nuts'),(28,'Soy '),(29,'Soybean'),(30,'Soy Sauce'),(31,'Wheat'),(32,'Gluten'),(33,'Pork'),(34,'Bacon'),(35,'Spinach'),(36,'Avocado'),(37,'Chocolate'),(38,'Citrus'),(39,'Grapefruit'),(40,'Lemon'),(41,'Lime'),(42,'Oranges'),(43,'Banana'),(44,'Strawberry'),(45,'Tomato'),(46,'Tomatoes'),(47,'Sugar'),(48,'Fructose'),(49,'Maple'),(50,'Honey'),(51,'Alcohol'),(52,'Caffenie'),(53,'Tea'),(54,'Cocoa'),(55,'Marshmellow'),(56,'Gelatin'),(57,'Beef'),(58,'Pork'),(59,'Bacon'),(60,'Lamb'),(61,'Chicken'),(62,'Steak'),(63,'Meat'),(64,'Sodium'),(65,'Salt'),(66,'Grains'),(67,'Flour');
/*!40000 ALTER TABLE `restrictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_restrictions`
--

DROP TABLE IF EXISTS `user_restrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_restrictions` (
  `id` int(11) NOT NULL,
  `restriction` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_restrictions`
--

LOCK TABLES `user_restrictions` WRITE;
/*!40000 ALTER TABLE `user_restrictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_restrictions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 11:59:00
