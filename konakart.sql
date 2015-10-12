-- MySQL dump 10.13  Distrib 5.6.25, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: konakart
-- ------------------------------------------------------
-- Server version	5.6.27

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
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `entry_gender` char(1) NOT NULL,
  `entry_company` varchar(32) DEFAULT NULL,
  `entry_firstname` varchar(32) DEFAULT NULL,
  `entry_lastname` varchar(32) DEFAULT NULL,
  `entry_street_address` varchar(64) NOT NULL,
  `entry_suburb` varchar(32) DEFAULT NULL,
  `entry_postcode` varchar(10) NOT NULL,
  `entry_city` varchar(64) NOT NULL,
  `entry_state` varchar(32) DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT '0',
  `entry_zone_id` int(11) NOT NULL DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `entry_telephone` varchar(32) DEFAULT NULL,
  `entry_telephone_1` varchar(32) DEFAULT NULL,
  `entry_email_address` varchar(96) DEFAULT NULL,
  `entry_street_address_1` varchar(64) DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `addr_store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`address_book_id`),
  KEY `idx_address_book_customers_id` (`customers_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
INSERT INTO `address_book` VALUES (1,1,'m','ACME Inc.','John','Doe','1 Way Street','','12345','NeverNever','',223,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(2,2,'m','ACME Inc.','Andy','Admin','1 Way Street','','PostCode1','NeverNever','',223,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(3,3,'m','ACME Inc.','Caty','Catalog','2 Way Street','','PostCode2','NeverNever','',223,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(4,4,'m','ACME Inc.','Olly','Order','3 Way Street','','PostCode3','NeverNever','',223,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(5,5,'m','KonaKart Ltd.','Order','Followup','4 Way Street','','PostCode4','NeverNever','',223,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_format`
--

DROP TABLE IF EXISTS `address_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_format` (
  `address_format_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_format` varchar(255) DEFAULT NULL,
  `address_summary` varchar(255) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`address_format_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_format`
--

LOCK TABLES `address_format` WRITE;
/*!40000 ALTER TABLE `address_format` DISABLE KEYS */;
INSERT INTO `address_format` VALUES (1,'$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country','$city / $country',NULL),(2,'$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country','$city, $state / $country',NULL),(3,'$firstname $lastname$cr$streets$cr$city$cr$postcode - $statecomma$country','$state / $country',NULL),(4,'$firstname $lastname$cr$streets$cr$city ($postcode)$cr$country','$postcode / $country',NULL),(5,'$firstname $lastname$cr$streets$cr$postcode $city$cr$country','$city / $country',NULL);
/*!40000 ALTER TABLE `address_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_title` varchar(64) NOT NULL,
  `banners_url` varchar(255) NOT NULL,
  `banners_image` varchar(64) NOT NULL,
  `banners_group` varchar(10) NOT NULL,
  `banners_html_text` text,
  `expires_impressions` int(7) DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`banners_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners_history`
--

DROP TABLE IF EXISTS `banners_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(5) NOT NULL DEFAULT '0',
  `banners_clicked` int(5) NOT NULL DEFAULT '0',
  `banners_history_date` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`banners_history_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners_history`
--

LOCK TABLES `banners_history` WRITE;
/*!40000 ALTER TABLE `banners_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `banners_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_image` varchar(64) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `categories_invisible` int(1) NOT NULL DEFAULT '0',
  `search_key` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`categories_id`),
  KEY `idx_categories_parent_id` (`parent_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'no-image.png',0,1,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Computer Peripherals'),(2,'no-image.png',0,2,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Games'),(3,'no-image.png',0,3,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'DVD Movies'),(4,'no-image.png',1,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Graphics Cards'),(5,'no-image.png',1,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Printers'),(6,'no-image.png',1,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Monitors'),(7,'no-image.png',1,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Speakers'),(8,'no-image.png',1,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Keyboards'),(9,'no-image.png',1,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Mice'),(10,'no-image.png',3,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Action'),(11,'no-image.png',3,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Science Fiction'),(12,'no-image.png',3,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Comedy'),(13,'no-image.png',3,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Cartoons'),(14,'no-image.png',3,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Thriller'),(15,'no-image.png',3,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Drama'),(16,'no-image.png',1,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Memory'),(17,'no-image.png',1,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'CDROM Drives'),(18,'no-image.png',2,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Simulation'),(19,'no-image.png',2,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Action'),(20,'no-image.png',2,0,'2015-10-07 00:58:00',NULL,NULL,NULL,NULL,NULL,0,'Strategy'),(21,'no-image.png',0,4,'2015-10-07 00:58:27',NULL,NULL,NULL,NULL,NULL,0,'Gifts'),(22,'no-image.png',0,3,'2015-10-07 00:58:39',NULL,NULL,NULL,NULL,NULL,0,'Software'),(23,'no-image.png',0,3,'2015-10-07 00:58:39',NULL,NULL,NULL,NULL,NULL,0,'Electronics'),(24,'no-image.png',0,3,'2015-10-07 00:58:39',NULL,NULL,NULL,NULL,NULL,0,'Home & Garden'),(25,'no-image.png',23,5,'2015-10-07 00:58:39',NULL,NULL,NULL,NULL,NULL,0,'Cameras'),(26,'no-image.png',23,15,'2015-10-07 00:58:39',NULL,NULL,NULL,NULL,NULL,0,'Tablets'),(27,'no-image.png',23,10,'2015-10-07 00:58:39',NULL,NULL,NULL,NULL,NULL,0,'Phones'),(28,'no-image.png',24,10,'2015-10-07 00:58:39',NULL,NULL,NULL,NULL,NULL,0,'Kitchen'),(29,'no-image.png',24,5,'2015-10-07 00:58:39',NULL,NULL,NULL,NULL,NULL,0,'Clocks'),(30,'no-image.png',24,15,'2015-10-07 00:58:39',NULL,NULL,NULL,NULL,NULL,0,'Lawnmowers');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_description`
--

DROP TABLE IF EXISTS `categories_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_description` (
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(255) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`categories_id`,`language_id`),
  KEY `idx_categories_name` (`categories_name`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_description`
--

LOCK TABLES `categories_description` WRITE;
/*!40000 ALTER TABLE `categories_description` DISABLE KEYS */;
INSERT INTO `categories_description` VALUES (1,1,'Computer Peripherals',NULL,NULL),(1,2,'Computer Peripherals',NULL,NULL),(1,3,'Periféricos',NULL,NULL),(1,4,'Periféricos',NULL,NULL),(2,1,'Games',NULL,NULL),(2,2,'Games',NULL,NULL),(2,3,'Juegos',NULL,NULL),(2,4,'Jogos',NULL,NULL),(3,1,'DVD Movies',NULL,NULL),(3,2,'DVD Filme',NULL,NULL),(3,3,'Peliculas DVD',NULL,NULL),(3,4,'DVD Filmes',NULL,NULL),(4,1,'Graphics Cards',NULL,NULL),(4,2,'Grafikkarten',NULL,NULL),(4,3,'Tarjetas Graficas',NULL,NULL),(4,4,'Placas Gráficas',NULL,NULL),(5,1,'Printers',NULL,NULL),(5,2,'Drucker',NULL,NULL),(5,3,'Impresoras',NULL,NULL),(5,4,'Impressoras',NULL,NULL),(6,1,'Monitors',NULL,NULL),(6,2,'Bildschirme',NULL,NULL),(6,3,'Monitores',NULL,NULL),(6,4,'Monitores',NULL,NULL),(7,1,'Speakers',NULL,NULL),(7,2,'Lautsprecher',NULL,NULL),(7,3,'Altavoces',NULL,NULL),(7,4,'Altavoces',NULL,NULL),(8,1,'Keyboards',NULL,NULL),(8,2,'Tastaturen',NULL,NULL),(8,3,'Teclados',NULL,NULL),(8,4,'Teclados',NULL,NULL),(9,1,'Mice',NULL,NULL),(9,2,'Mäuse',NULL,NULL),(9,3,'Ratones',NULL,NULL),(9,4,'Ratones',NULL,NULL),(10,1,'Action',NULL,NULL),(10,2,'Action',NULL,NULL),(10,3,'Accion',NULL,NULL),(10,4,'Accion',NULL,NULL),(11,1,'Science Fiction',NULL,NULL),(11,2,'Science Fiction',NULL,NULL),(11,3,'Ciencia Ficcion',NULL,NULL),(11,4,'Ciencia Ficcion',NULL,NULL),(12,1,'Comedy',NULL,NULL),(12,2,'Komödie',NULL,NULL),(12,3,'Comedia',NULL,NULL),(12,4,'Comedia',NULL,NULL),(13,1,'Cartoons',NULL,NULL),(13,2,'Zeichentrick',NULL,NULL),(13,3,'Dibujos Animados',NULL,NULL),(13,4,'Dibujos Animados',NULL,NULL),(14,1,'Thriller',NULL,NULL),(14,2,'Thriller',NULL,NULL),(14,3,'Suspense',NULL,NULL),(14,4,'Suspense',NULL,NULL),(15,1,'Drama',NULL,NULL),(15,2,'Drama',NULL,NULL),(15,3,'Drama',NULL,NULL),(15,4,'Drama',NULL,NULL),(16,1,'Memory',NULL,NULL),(16,2,'Speicher',NULL,NULL),(16,3,'Memoria',NULL,NULL),(16,4,'Memoria',NULL,NULL),(17,1,'CDROM Drives',NULL,NULL),(17,2,'CDROM Laufwerke',NULL,NULL),(17,3,'Unidades CDROM',NULL,NULL),(17,4,'Unidades CDROM',NULL,NULL),(18,1,'Simulation',NULL,NULL),(18,2,'Simulation',NULL,NULL),(18,3,'Simulacion',NULL,NULL),(18,4,'Simulacion',NULL,NULL),(19,1,'Action',NULL,NULL),(19,2,'Action',NULL,NULL),(19,3,'Accion',NULL,NULL),(19,4,'Accion',NULL,NULL),(20,1,'Strategy',NULL,NULL),(20,2,'Strategie',NULL,NULL),(20,3,'Estrategia',NULL,NULL),(20,4,'Estrategia',NULL,NULL),(21,1,'Gifts',NULL,NULL),(21,2,'Gifts',NULL,NULL),(21,3,'Gifts',NULL,NULL),(21,4,'Gifts',NULL,NULL),(22,1,'Software',NULL,NULL),(22,2,'Software',NULL,NULL),(22,3,'Software',NULL,NULL),(22,4,'Software',NULL,NULL),(23,1,'Electronics',NULL,NULL),(23,2,'Elektronik',NULL,NULL),(23,3,'Electrónica',NULL,NULL),(23,4,'Eletrônica',NULL,NULL),(24,1,'Home & Garden',NULL,NULL),(24,2,'Home & Garden',NULL,NULL),(24,3,'Casa y Jardín',NULL,NULL),(24,4,'Casa e Jardim',NULL,NULL),(25,1,'Cameras',NULL,NULL),(25,2,'Cameras',NULL,NULL),(25,3,'Cameras',NULL,NULL),(25,4,'Cameras',NULL,NULL),(26,1,'Tablets',NULL,NULL),(26,2,'Tablets',NULL,NULL),(26,3,'Tablets',NULL,NULL),(26,4,'Tablets',NULL,NULL),(27,1,'Phones',NULL,NULL),(27,2,'Phones',NULL,NULL),(27,3,'Phones',NULL,NULL),(27,4,'Phones',NULL,NULL),(28,1,'Kitchen',NULL,NULL),(28,2,'Kitchen',NULL,NULL),(28,3,'Kitchen',NULL,NULL),(28,4,'Kitchen',NULL,NULL),(29,1,'Clocks',NULL,NULL),(29,2,'Clocks',NULL,NULL),(29,3,'Clocks',NULL,NULL),(29,4,'Clocks',NULL,NULL),(30,1,'Lawnmowers',NULL,NULL),(30,2,'Lawnmowers',NULL,NULL),(30,3,'Lawnmowers',NULL,NULL),(30,4,'Lawnmowers',NULL,NULL);
/*!40000 ALTER TABLE `categories_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration` (
  `configuration_id` int(11) NOT NULL AUTO_INCREMENT,
  `configuration_title` varchar(64) NOT NULL,
  `configuration_key` varchar(64) NOT NULL,
  `configuration_value` varchar(255) NOT NULL,
  `configuration_description` varchar(255) NOT NULL,
  `configuration_group_id` int(11) NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `use_function` varchar(255) DEFAULT NULL,
  `set_function` varchar(255) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `return_by_api` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`configuration_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
INSERT INTO `configuration` VALUES (1,'Store Name','STORE_NAME','KonaKart','The name of my store',1,1,NULL,'2015-10-07 00:58:00',NULL,NULL,NULL,1),(2,'Store Owner','STORE_OWNER','Kenny Kart','The name of my store owner',1,2,NULL,'2015-10-07 00:58:00',NULL,NULL,NULL,1),(3,'E-Mail Address','STORE_OWNER_EMAIL_ADDRESS','admin@konakart.com','The e-mail address of my store owner',1,3,NULL,'2015-10-07 00:58:00',NULL,NULL,NULL,1),(4,'E-Mail From','EMAIL_FROM','admin@konakart.com','The e-mail address used in (sent) e-mails',12,6,NULL,'2015-10-07 00:58:00',NULL,NULL,NULL,0),(5,'Country','STORE_COUNTRY','223','The country my store is located in',1,6,NULL,'2015-10-07 00:58:00','tep_get_country_name','tep_cfg_pull_down_country_list(',NULL,1),(6,'Zone','STORE_ZONE','18','The zone my store is located in',1,7,NULL,'2015-10-07 00:58:00','tep_cfg_get_zone_name','tep_cfg_pull_down_zone_list(',NULL,1),(7,'Show Category Counts','SHOW_COUNTS','true','Count recursively how many products are in each category',1,19,NULL,'2015-10-07 00:58:00',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(8,'Display Prices with Tax','DISPLAY_PRICE_WITH_TAX','false','Display prices with tax included (true) or add the tax at the end (false)',1,21,NULL,'2015-10-07 00:58:00',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(9,'First Name','ENTRY_FIRST_NAME_MIN_LENGTH','2','Minimum length of first name',2,1,NULL,'2015-10-07 00:58:00',NULL,'integer(0,null)',NULL,1),(10,'Last Name','ENTRY_LAST_NAME_MIN_LENGTH','2','Minimum length of last name',2,2,NULL,'2015-10-07 00:58:00',NULL,'integer(0,null)',NULL,1),(13,'Street Address','ENTRY_STREET_ADDRESS_MIN_LENGTH','5','Minimum length of street address',2,5,NULL,'2015-10-07 00:58:00',NULL,'integer(0,null)',NULL,1),(14,'Company','ENTRY_COMPANY_MIN_LENGTH','2','Minimum length of company name',2,6,NULL,'2015-10-07 00:58:00',NULL,'integer(0,null)',NULL,1),(15,'Post Code','ENTRY_POSTCODE_MIN_LENGTH','4','Minimum length of post code',2,7,NULL,'2015-10-07 00:58:01',NULL,'integer(0,null)',NULL,1),(16,'City','ENTRY_CITY_MIN_LENGTH','3','Minimum length of city',2,8,NULL,'2015-10-07 00:58:01',NULL,'integer(0,null)',NULL,1),(17,'State','ENTRY_STATE_MIN_LENGTH','2','Minimum length of state',2,9,NULL,'2015-10-07 00:58:01',NULL,'integer(0,null)',NULL,1),(18,'Telephone Number','ENTRY_TELEPHONE_MIN_LENGTH','3','Minimum length of telephone number',2,10,NULL,'2015-10-07 00:58:01',NULL,'integer(0,null)',NULL,1),(19,'Password','ENTRY_PASSWORD_MIN_LENGTH','8','Minimum length of password',2,11,NULL,'2015-10-07 00:58:01',NULL,'integer(0,null)',NULL,1),(20,'Address Book Entries','MAX_ADDRESS_BOOK_ENTRIES','10','Maximum address book entries a customer is allowed to have',3,1,NULL,'2015-10-07 00:58:01',NULL,'integer(0,null)',NULL,1),(21,'Search Results','MAX_DISPLAY_SEARCH_RESULTS','20','Number of products to list',3,2,NULL,'2015-10-07 00:58:01',NULL,'integer(0,null)',NULL,1),(22,'New Products Module','MAX_DISPLAY_NEW_PRODUCTS','10','Maximum number of latest products to cache',3,5,NULL,'2015-10-07 00:58:01',NULL,'integer(0,null)',NULL,1),(23,'Manufacturers List','MAX_DISPLAY_MANUFACTURERS_IN_A_LIST','15','Used in manufacturers box; when the number of manufacturers exceeds this number, a drop-down list will be displayed instead of the default list',3,7,NULL,'2015-10-07 00:58:01',NULL,'integer(0,null)',NULL,1),(25,'New Reviews','MAX_DISPLAY_NEW_REVIEWS','5','Maximum number of new reviews to display',3,9,NULL,'2015-10-07 00:58:01',NULL,'integer(0,null)',NULL,1),(31,'Also Purchased','MAX_DISPLAY_ALSO_PURCHASED','6','Maximum number of products to display in the \'This Customer Also Purchased\' box',3,16,NULL,'2015-10-07 00:58:01',NULL,'integer(0,null)',NULL,1),(33,'Order History','MAX_DISPLAY_ORDER_HISTORY','10','Maximum number of orders to display in the order history page',3,18,NULL,'2015-10-07 00:58:01',NULL,'integer(0,null)',NULL,1),(40,'Gender','ACCOUNT_GENDER','true','Display gender in the customers account',5,1,NULL,'2015-10-07 00:58:01',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(41,'Date of Birth','ACCOUNT_DOB','true','Display date of birth in the customers account',5,2,NULL,'2015-10-07 00:58:01',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(42,'Company','ACCOUNT_COMPANY','true','Display company in the customers account',5,3,NULL,'2015-10-07 00:58:01',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(43,'Suburb','ACCOUNT_SUBURB','true','Display suburb in the customers account',5,4,NULL,'2015-10-07 00:58:01',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(44,'State','ACCOUNT_STATE','true','Display state in the customers account',5,5,NULL,'2015-10-07 00:58:01',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(45,'Installed Modules','MODULE_PAYMENT_INSTALLED','cod.php','List of payment module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: cc.php;cod.php;paypal.php)',6,0,NULL,'2015-10-07 00:58:01',NULL,NULL,NULL,0),(46,'Installed Modules','MODULE_ORDER_TOTAL_INSTALLED','ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php','List of order_total module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php)',6,0,NULL,'2015-10-07 00:58:01',NULL,NULL,NULL,0),(47,'Installed Modules','MODULE_SHIPPING_INSTALLED','DigitalDownload;flat.php','List of shipping module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ups.php;flat.php;item.php)',6,0,NULL,'2015-10-07 00:58:01',NULL,NULL,NULL,0),(48,'Enable Cash On Delivery Module','MODULE_PAYMENT_COD_STATUS','True','Do you want to accept Cash On Delevery payments?',6,1,NULL,'2015-10-07 00:58:01',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(49,'Payment Zone','MODULE_PAYMENT_COD_ZONE','0','If a zone is selected, only enable this payment method for that zone.',6,2,NULL,'2015-10-07 00:58:01','tep_get_zone_class_title','tep_cfg_pull_down_zone_classes(',NULL,0),(50,'Sort order of display.','MODULE_PAYMENT_COD_SORT_ORDER','0','Sort order of display. Lowest is displayed first.',6,0,NULL,'2015-10-07 00:58:01',NULL,NULL,NULL,0),(51,'Set Order Status','MODULE_PAYMENT_COD_ORDER_STATUS_ID','0','Set the status of orders made with this payment module to this value',6,0,NULL,'2015-10-07 00:58:01','tep_get_order_status_name','tep_cfg_pull_down_order_statuses(',NULL,0),(52,'Enable Flat Shipping','MODULE_SHIPPING_FLAT_STATUS','True','Do you want to offer flat rate shipping?',6,0,NULL,'2015-10-07 00:58:01',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(53,'Shipping Cost','MODULE_SHIPPING_FLAT_COST','5.00','The shipping cost for all orders using this shipping method.',6,0,NULL,'2015-10-07 00:58:01',NULL,NULL,NULL,0),(54,'Tax Class','MODULE_SHIPPING_FLAT_TAX_CLASS','0','Use the following tax class on the shipping fee.',6,0,NULL,'2015-10-07 00:58:01','tep_get_tax_class_title','tep_cfg_pull_down_tax_classes(',NULL,0),(55,'Shipping Zone','MODULE_SHIPPING_FLAT_ZONE','0','If a zone is selected, only enable this shipping method for that zone.',6,0,NULL,'2015-10-07 00:58:01','tep_get_zone_class_title','tep_cfg_pull_down_zone_classes(',NULL,0),(56,'Sort Order','MODULE_SHIPPING_FLAT_SORT_ORDER','0','Sort order of display.',6,0,NULL,'2015-10-07 00:58:01',NULL,NULL,NULL,0),(57,'Display Shipping','MODULE_ORDER_TOTAL_SHIPPING_STATUS','true','Do you want to display the order shipping cost?',6,1,NULL,'2015-10-07 00:58:01',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(58,'Sort Order','MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER','2','Sort order of display.',6,2,NULL,'2015-10-07 00:58:01',NULL,NULL,NULL,0),(59,'Display Sub-Total','MODULE_ORDER_TOTAL_SUBTOTAL_STATUS','true','Do you want to display the order sub-total cost?',6,1,NULL,'2015-10-07 00:58:01',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(60,'Sort Order','MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER','1','Sort order of display.',6,2,NULL,'2015-10-07 00:58:01',NULL,NULL,NULL,0),(61,'Display Tax','MODULE_ORDER_TOTAL_TAX_STATUS','true','Do you want to display the order tax value?',6,1,NULL,'2015-10-07 00:58:01',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(62,'Sort Order','MODULE_ORDER_TOTAL_TAX_SORT_ORDER','39','Sort order of display.',6,2,NULL,'2015-10-07 00:58:01',NULL,NULL,NULL,0),(63,'Display Total','MODULE_ORDER_TOTAL_TOTAL_STATUS','true','Do you want to display the total order value?',6,1,NULL,'2015-10-07 00:58:01',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(64,'Sort Order','MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER','40','Sort order of display.',6,2,NULL,'2015-10-07 00:58:01',NULL,NULL,NULL,0),(65,'Default Currency','DEFAULT_CURRENCY','USD','Default Currency',6,0,NULL,'2015-10-07 00:58:01',NULL,NULL,NULL,1),(66,'Default Language','DEFAULT_LANGUAGE','en','Default Language',6,0,NULL,'2015-10-07 00:58:01',NULL,NULL,NULL,1),(67,'Country of Origin','SHIPPING_ORIGIN_COUNTRY','223','Select the country of origin to be used in shipping quotes.',7,1,NULL,'2015-10-07 00:58:01','tep_get_country_name','tep_cfg_pull_down_country_list(',NULL,0),(68,'Postal Code','SHIPPING_ORIGIN_ZIP','NONE','Enter the Postal Code (ZIP) of the Store to be used in shipping quotes.',7,2,NULL,'2015-10-07 00:58:01',NULL,NULL,NULL,0),(69,'Enter the Maximum Package Weight you will ship','SHIPPING_MAX_WEIGHT','50','Carriers have a max weight limit for a single package. This is a common one for all.',7,3,NULL,'2015-10-07 00:58:01',NULL,'double(0,null)',NULL,0),(70,'Package Tare weight.','SHIPPING_BOX_WEIGHT','3','What is the weight of typical packaging of small to medium packages?',7,4,NULL,'2015-10-07 00:58:01',NULL,'double(0,null)',NULL,0),(71,'Larger packages - percentage increase.','SHIPPING_BOX_PADDING','10','For 10% enter 10',7,5,NULL,'2015-10-07 00:58:01',NULL,'double(0,null)',NULL,0),(72,'Check stock level','STOCK_CHECK','true','Check to see if sufficent stock is available',9,1,NULL,'2015-10-07 00:58:01',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(73,'Subtract stock','STOCK_LIMITED','true','Subtract product in stock by product orders',9,2,NULL,'2015-10-07 00:58:01',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(74,'Allow Checkout','STOCK_ALLOW_CHECKOUT','true','Allow customer to checkout even if there is insufficient stock',9,3,NULL,'2015-10-07 00:58:01',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(75,'Stock Re-order level','STOCK_REORDER_LEVEL','5','Define when stock needs to be re-ordered',9,5,NULL,'2015-10-07 00:58:01',NULL,'integer(null,null)',NULL,1),(76,'Send E-Mails','SEND_EMAILS','true','Send out e-mails',12,1,NULL,'2015-10-07 00:58:01',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(77,'SMTP Server','SMTP_SERVER','ENTER_YOUR_SMTP_SERVER_HERE','The SMTP server',12,2,NULL,'2015-10-07 00:58:06',NULL,NULL,NULL,0),(78,'SMTP Secure','SMTP_SECURE','false','Whether or not the SMTP server needs user authentication',12,3,NULL,'2015-10-07 00:58:06',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(79,'SMTP User','SMTP_USER','user@yourdomain.com','The SMTP user',12,4,NULL,'2015-10-07 00:58:06',NULL,NULL,NULL,0),(80,'SMTP Password','SMTP_PASSWORD','','The SMTP password',12,5,NULL,'2015-10-07 00:58:06',NULL,'password',NULL,0),(81,'Email Reply To','EMAIL_REPLY_TO','user@yourdomain.com','The Reply To Address',12,6,NULL,'2015-10-07 00:58:06',NULL,NULL,NULL,0),(82,'Debug Email Sessions','DEBUG_EMAIL_SESSIONS','false','Debug email sessions',12,7,NULL,'2015-10-07 00:58:06',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(83,'Send Extra Emails To','SEND_EXTRA_EMAILS_TO','','Send extra emails to the following email addresses, separated by semicolons: email@address1; email@address2',12,6,NULL,'2015-10-07 00:58:06',NULL,NULL,NULL,0),(84,'Stock Reorder Class','STOCK_REORDER_CLASS','com.konakart.bl.ReorderMgr','The Stock Reorder Implementation Cass',9,7,NULL,'2015-10-07 00:58:06',NULL,NULL,NULL,0),(86,'KonaKart cache refresh check interval','CLIENT_CONFIG_CACHE_CHECK_SECS','30','Interval in seconds for checking to see whether to refresh the KonaKart caches',11,9,NULL,'2015-10-07 00:58:06',NULL,'integer(30,null)',NULL,1),(87,'Client config cache refresh flag','CLIENT_CONFIG_CACHE_CHECK_FLAG','false','Boolean to determine whether to refresh the client config variable cache',100,1,NULL,'2015-10-07 00:58:06',NULL,NULL,NULL,1),(88,'Image base URL','IMG_BASE_URL','http://localhost:8780/konakart/images/','The base URL for application images',4,9,NULL,'2015-10-07 00:58:06',NULL,NULL,NULL,1),(89,'Image base path','IMG_BASE_PATH','/usr/local/konakart/webapps/konakart/images','The base path where application images are saved',4,10,NULL,'2015-10-07 00:58:06',NULL,NULL,NULL,1),(90,'URL for reaching Image servlet','IMG_SERVLET_URL','/konakartadmin/uploadAction','The URL used to reach the servlet used for uploading images',4,11,NULL,'2015-10-07 00:58:06',NULL,NULL,NULL,1),(91,'Enables SSL if set to true','ENABLE_SSL','false','Enables SSL if set to true to make the site secure',16,10,NULL,'2015-10-07 00:58:08',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(92,'Port number for standard (non SSL) pages','STANDARD_PORT_NUMBER','8780','Port number used to access standard non SSL pages',16,20,NULL,'2015-10-07 00:58:08',NULL,'integer(0,null)',NULL,1),(93,'Port number for SSL pages','SSL_PORT_NUMBER','8783','Port number used to access SSL pages',16,30,NULL,'2015-10-07 00:58:08',NULL,'integer(0,null)',NULL,1),(94,'Report definitions base path','REPORTS_DEFN_PATH','/usr/local/konakart/webapps/birtviewer/reports/stores/store1/','The reports definition location',17,1,NULL,'2015-10-07 00:58:08',NULL,NULL,NULL,0),(95,'Report file extension','REPORTS_EXTENSION','.rptdesign','The report file extension - identifies report files',17,2,NULL,'2015-10-07 00:58:08',NULL,NULL,NULL,0),(96,'Report viewer URL','REPORTS_URL','http://localhost:8780/birtviewer/frameset?__report=reports/stores/store1/','The report viewer base URL',17,3,NULL,'2015-10-07 00:58:08',NULL,NULL,NULL,0),(97,'Status Page Report URL','REPORTS_STATUS_PAGE_URL','http://localhost:8780/birtviewer/run?__report=reports/stores/store1/OrdersInLast25DaysChart.rptdesign','The URL for the report on the status page',17,4,NULL,'2015-10-07 00:58:08',NULL,NULL,NULL,0),(98,'E-Mail address for low stock alert','STOCK_REORDER_EMAIL','reorder_mgr@konakart.com','The e-mail address used to send an alert email when the stock level of a product falls below the reorder level',9,6,NULL,'2015-10-07 00:58:08',NULL,NULL,NULL,0),(99,'Display Coupon Entry Field','DISPLAY_COUPON_ENTRY','true','During checkout the customer will be allowed to enter a coupon if set to true',1,22,NULL,'2015-10-07 00:58:08',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(100,'Up Sell Products','MAX_DISPLAY_UP_SELL','6','Maximum number of products to display in the \'Top of Range\' box',3,20,NULL,'2015-10-07 00:58:09',NULL,'integer(0,null)',NULL,1),(101,'Cross Sell Products','MAX_DISPLAY_CROSS_SELL','6','Maximum number of products to display in the \'Similar Products\' box',3,21,NULL,'2015-10-07 00:58:09',NULL,'integer(0,null)',NULL,1),(102,'Accessories','MAX_DISPLAY_ACCESSORIES','6','Maximum number of products to display in the \'Accessories\' box',3,22,NULL,'2015-10-07 00:58:09',NULL,'integer(0,null)',NULL,1),(103,'Dependent Products','MAX_DISPLAY_DEPENDENT_PRODUCTS','6','Maximum number of products to display in the \'Warranties\' box',3,23,NULL,'2015-10-07 00:58:09',NULL,'integer(0,null)',NULL,1),(105,'Enables Checkout Without Registration','ALLOW_CHECKOUT_WITHOUT_REGISTRATION','false','This allows checkout without registration',1,24,NULL,'2015-10-07 00:58:09',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(106,'Order Integration Class','ORDER_INTEGRATION_CLASS','com.konakart.bl.OrderIntegrationMgr','The Order Integration Implementation Class, to trigger off events when an order is saved or modified',9,8,NULL,'2015-10-07 00:58:09',NULL,NULL,NULL,0),(107,'Admin Order Integration Class','ADMIN_ORDER_INTEGRATION_CLASS','com.konakartadmin.bl.AdminOrderIntegrationMgr','The Order Integration Implementation Class, to trigger off events when an order is modified from the Admin App',9,9,NULL,'2015-10-07 00:58:09',NULL,NULL,NULL,0),(108,'Base URL for SSL pages','SSL_BASE_URL','','Base URL used for SSL pages (i.e. https://myhost:8443). This overrides the SSL port number config.',16,40,NULL,'2015-10-07 00:58:09',NULL,NULL,NULL,1),(109,'Auditing for Reads','READ_AUDIT','0','Enable / Disable auditing for reads',18,1,NULL,'2015-10-07 00:58:09',NULL,'tep_cfg_pull_down_audit_list(',NULL,0),(110,'Auditing for Edits','EDIT_AUDIT','0','Enable / Disable auditing for edits',18,2,NULL,'2015-10-07 00:58:09',NULL,'tep_cfg_pull_down_audit_list(',NULL,0),(111,'Auditing for Inserts','INSERT_AUDIT','0','Enable / Disable auditing for inserts',18,3,NULL,'2015-10-07 00:58:09',NULL,'tep_cfg_pull_down_audit_list(',NULL,0),(112,'Auditing for Deletes','DELETE_AUDIT','0','Enable / Disable auditing for deletes',18,4,NULL,'2015-10-07 00:58:09',NULL,'tep_cfg_pull_down_audit_list(',NULL,0),(113,'Digital Download Base Path','DD_BASE_PATH','','Base path for digital download files',19,0,NULL,'2015-10-07 00:58:11',NULL,NULL,NULL,1),(114,'Max Number of Downloads','DD_MAX_DOWNLOADS','-1','Maximum number of downloads allowed from link. -1 for unlimited number.',19,1,NULL,'2015-10-07 00:58:11',NULL,NULL,NULL,1),(115,'Number of days link is valid','DD_MAX_DOWNLOAD_DAYS','-1','The download link remains valid for this number of days. -1 for unlimited number of days',19,2,NULL,'2015-10-07 00:58:11',NULL,NULL,NULL,1),(116,'Delete record on expiration','DD_DELETE_ON_EXPIRATION','true','When the download link expires, delete the database table record',19,3,NULL,'2015-10-07 00:58:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(117,'Download as an attachment','DD_DOWNLOAD_AS_ATTACHMENT','true','Download the file as an attachment rather than viewing in the browser',19,4,NULL,'2015-10-07 00:58:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(118,'Show Invisible Products','SHOW_INVISIBLE_PRODUCTS_IN_ADM','true','Show invisible products in the Admin App',9,4,NULL,'2015-10-07 00:58:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(119,'Admin App logging level','ADMIN_APP_LOGGING_LEVEL','4','Set the logging level for the KonaKart Admin App',20,1,NULL,'2015-10-07 00:58:11',NULL,'option(0=OFF,1=SEVERE,2=ERROR,4=WARNING,6=INFO,8=DEBUG)',NULL,0),(120,'Send Order Confirmation E-Mails','SEND_ORDER_CONF_EMAIL','true','Send out an e-mail when an order is saved or state changes',12,8,NULL,'2015-10-07 00:58:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(121,'Send Stock Reorder E-Mails','SEND_STOCK_REORDER_EMAIL','true','Send out an e-mail when the stock level of a product falls below a certain value',12,9,NULL,'2015-10-07 00:58:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(122,'Send Welcome E-Mails','SEND_WELCOME_EMAIL','true','Send out a welcome e-mail when a customer registers to use the cart',12,10,NULL,'2015-10-07 00:58:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(123,'Send New Password E-Mails','SEND_NEW_PASSWORD_EMAIL','true','Send out an e-mail containing a new password when requested by a customer',12,11,NULL,'2015-10-07 00:58:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(124,'Allow Free Shipping','MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING','false','Do you want to allow free shipping?',6,3,NULL,'2015-10-07 00:58:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(125,'Free Shipping For Orders Over','MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER','50','Provide free shipping for orders over the set amount.',6,4,NULL,'2015-10-07 00:58:11','currencies->format',NULL,NULL,0),(126,'Provide Free Shipping For Orders Made','MODULE_ORDER_TOTAL_SHIPPING_DESTINATION','national','Provide free shipping for orders sent to the set destination.',6,5,NULL,'2015-10-07 00:58:11',NULL,'tep_cfg_select_option(array(\'national\', \'international\', \'both\'), ',NULL,0),(127,'Enable Security on API Calls','API_CALL_SECURITY','false','Do you want to enable security on API calls ?',18,5,NULL,'2015-10-07 00:58:12',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(128,'KonaKart mail properties filename','KONAKART_MAIL_PROPERTIES_FILE','/usr/local/konakart/conf/konakart_mail.properties','Location of the KonaKart mail properties file',12,8,NULL,'2015-10-07 00:58:12',NULL,'FileUpload',NULL,0),(129,'KonaKart Log file Directory','KONAKART_LOG_FILE_DIRECTORY','/usr/local/konakart/logs','The location where KonaKart will write diagnostic log files',20,2,NULL,'2015-10-07 00:58:12',NULL,NULL,NULL,0),(130,'Number of email sender threads','EMAIL_THREADS','5','Number of concurrent threads used to send newsletter eMails',12,15,NULL,'2015-10-07 00:58:12',NULL,NULL,NULL,0),(131,'Address Format for Admin App','ADMIN_APP_ADDRESS_FORMAT','$street $street1 $suburb $city $state $country','How the address is formatted in the customers panel',21,0,NULL,'2015-10-07 00:58:14',NULL,NULL,NULL,0),(132,'Base URL for logging into the App','ADMIN_APP_LOGIN_BASE_URL','https://localhost:8783/konakart/AdminLoginSubmit.action','Base URL for logging into the App from the Admin App',21,1,NULL,'2015-10-07 00:58:14',NULL,NULL,NULL,0),(133,'Window features','ADMIN_APP_LOGIN_WINDOW_FEATURES','resizable=yes,scrollbars=yes,status=yes,toolbar=yes,location=yes','Comma separated features for the application window opened by the login feature of the admin app',21,2,NULL,'2015-10-07 00:58:14',NULL,NULL,NULL,0),(134,'Login Integration Class','LOGIN_INTEGRATION_CLASS','com.konakart.bl.LoginIntegrationMgr','The Login Integration Implementation Class, to allow custom credential checking',18,6,NULL,'2015-10-07 00:58:14',NULL,NULL,NULL,0),(135,'Admin Login Integration Class','ADMIN_LOGIN_INTEGRATION_CLASS','com.konakartadmin.bl.AdminLoginIntegrationMgr','The Login Integration Implementation Class, to allow custom credential checking for the Admin App',18,7,NULL,'2015-10-07 00:58:14',NULL,NULL,NULL,0),(136,'Add wildcard search before text','ADMIN_APP_ADD_WILDCARD_BEFORE','true','When set to true, a wildcard search character is added before the specified text',21,10,NULL,'2015-10-07 00:58:14',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(137,'Add wildcard search after text','ADMIN_APP_ADD_WILDCARD_AFTER','true','When set to true, a wildcard search character is added after the specified text',21,11,NULL,'2015-10-07 00:58:14',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(138,'Customer Custom Button Label','ADMIN_APP_CUST_CUSTOM_LABEL','','When this is set, a custom button appears on the customer panel with this label',21,20,NULL,'2015-10-07 00:58:14',NULL,NULL,NULL,0),(139,'Customer Custom Button URL','ADMIN_APP_CUST_CUSTOM_URL','http://www.konakart.com','The URL that is launched when the Customer Custom button is clicked',21,21,NULL,'2015-10-07 00:58:14',NULL,NULL,NULL,0),(140,'Default Customer Choice','ADMIN_APP_DEFAULT_CUST_CHOICE_IDX','0','Sets the default customer choice droplist on the Customer Panel',21,22,NULL,'2015-10-07 00:58:14',NULL,'CustomerChoices',NULL,0),(141,'Default Customer Group','ADMIN_APP_DEFAULT_CUST_GROUP_IDX','0','Sets the default customer group droplist on the Customer Panel',21,22,NULL,'2015-10-07 00:58:14',NULL,'CustomerGroups',NULL,0),(142,'Returns Custom Button Label','ADMIN_APP_RETURNS_CUSTOM_LABEL','','When this is set, a custom button appears on the returns panels with this label',21,22,NULL,'2015-10-07 00:58:15',NULL,NULL,NULL,0),(143,'Returns Custom Button URL','ADMIN_APP_RETURNS_CUSTOM_URL','http://www.konakart.com','The URL that is launched when the Returns Custom button is clicked',21,23,NULL,'2015-10-07 00:58:15',NULL,NULL,NULL,0),(144,'URL for Custom1 panel','ADMIN_APP_CUSTOM_PANEL1_URL','http://www.konakart.com/?','The URL for Custom1 panel',22,0,NULL,'2015-10-07 00:58:15',NULL,NULL,NULL,0),(145,'URL for Custom2 panel','ADMIN_APP_CUSTOM_PANEL2_URL','http://www.konakart.com/?','The URL for Custom2 panel',22,1,NULL,'2015-10-07 00:58:15',NULL,NULL,NULL,0),(146,'URL for Custom3 panel','ADMIN_APP_CUSTOM_PANEL3_URL','http://www.konakart.com/?','The URL for Custom3 panel',22,2,NULL,'2015-10-07 00:58:15',NULL,NULL,NULL,0),(147,'URL for Custom4 panel','ADMIN_APP_CUSTOM_PANEL4_URL','http://www.konakart.com/?','The URL for Custom4 panel',22,3,NULL,'2015-10-07 00:58:15',NULL,NULL,NULL,0),(148,'URL for Custom5 panel','ADMIN_APP_CUSTOM_PANEL5_URL','http://www.konakart.com/?','The URL for Custom5 panel',22,4,NULL,'2015-10-07 00:58:15',NULL,NULL,NULL,0),(149,'URL for Custom6 panel','ADMIN_APP_CUSTOM_PANEL6_URL','http://www.konakart.com/?','The URL for Custom6 panel',22,5,NULL,'2015-10-07 00:58:15',NULL,NULL,NULL,0),(150,'URL for Custom7 panel','ADMIN_APP_CUSTOM_PANEL7_URL','http://www.konakart.com/?','The URL for Custom7 panel',22,6,NULL,'2015-10-07 00:58:15',NULL,NULL,NULL,0),(151,'URL for Custom8 panel','ADMIN_APP_CUSTOM_PANEL8_URL','http://www.konakart.com/?','The URL for Custom8 panel',22,7,NULL,'2015-10-07 00:58:15',NULL,NULL,NULL,0),(152,'URL for Custom9 panel','ADMIN_APP_CUSTOM_PANEL9_URL','http://www.konakart.com/?','The URL for Custom9 panel',22,8,NULL,'2015-10-07 00:58:15',NULL,NULL,NULL,0),(153,'URL for Custom10 panel','ADMIN_APP_CUSTOM_PANEL10_URL','http://www.konakart.com/?','The URL for Custom10 panel',22,9,NULL,'2015-10-07 00:58:15',NULL,NULL,NULL,0),(154,'Run Initial Customer Search','CUST_PANEL_RUN_INITIAL_SEARCH','true','Set to true to always run the initial Customer Search',21,12,NULL,'2015-10-07 00:58:15',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(155,'Clear button on Customer Panel removes results','CUST_PANEL_CLEAR_REMOVES_RESULTS','false','Set to true to clear both the search criteria AND the results when the clear button is clicked',21,13,NULL,'2015-10-07 00:58:15',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(156,'Enable Analytics','ENABLE_ANALYTICS','false','Enable analytics to have the analytics.code (in your Messages.properties file) inserted into the JSPs',20,3,NULL,'2015-10-07 00:58:15',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(157,'Use Solr Search Server','USE_SOLR_SEARCH','false','Use Solr search server to search for products',24,1,NULL,'2015-10-07 00:58:15',NULL,'tep_cfg_select_option(array(\'true\', \'false\') ',NULL,1),(158,'Base URL of Solr Search Server','SOLR_URL','http://localhost:8780/solr','Base URL of Solr Search Server',24,2,NULL,'2015-10-07 00:58:15',NULL,NULL,NULL,0),(159,'Store Credit Card Details','STORE_CC_DETAILS','false','Store credit card details',9,4,NULL,'2015-10-07 00:58:15',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(160,'Store Base URL','KK_BASE_URL','http://localhost:8780/konakart/','KonaKart Base URL',1,25,NULL,'2015-10-07 00:58:16',NULL,NULL,NULL,1),(161,'Multi-Store Template Store','MULTISTORE_TEMPLATE_STORE','store1','This is the storeId of the template store used when creating new stores in a multi-store installation',25,5,NULL,'2015-10-07 00:58:23',NULL,NULL,NULL,0),(162,'Multi-Store Admin Role','MULTISTORE_ADMIN_ROLE_IDX','5','Defines the Role given to Admin users of new stores',25,6,NULL,'2015-10-07 00:58:23',NULL,'Roles',NULL,0),(163,'Multi-Store Super User Role','MULTISTORE_SUPER_USER_ROLE_IDX','1','Defines the Role given to Super User user of new stores',25,6,NULL,'2015-10-07 00:58:23',NULL,'Roles',NULL,0),(164,'KonaKart new store creation SQL','KK_NEW_STORE_SQL_FILENAME','/usr/local/konakart/database/MySQL/konakart_new_store.sql','Filename containing the KonaKart new store creation SQL commands',25,10,NULL,'2015-10-07 00:58:23',NULL,'FileUpload',NULL,0),(165,'User new store creation SQL','USER_NEW_STORE_SQL_FILENAME','/usr/local/konakart/database/MySQL/konakart_user_new_store.sql','Filename containing the user defined new store creation SQL commands - these are executed after the KonaKart cloning commands',25,11,NULL,'2015-10-07 00:58:23',NULL,'FileUpload',NULL,0),(166,'Enable Wish List functionality','ENABLE_WISHLIST','false','When set to true, wish list functionality is enabled in the application',1,24,NULL,'2015-10-07 00:58:23',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(167,'Display Order Number','ADMIN_APP_ORDERS_DISPLAY_ORDER_NUM','','When this is set, the order number is displayed in the orders panel rather than the order id',21,24,NULL,'2015-10-07 00:58:23',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(168,'Admin Store Integration Class','ADMIN_STORE_INTEGRATION_CLASS','com.konakartadmin.bl.AdminStoreIntegrationMgr','The Store Integration Implementation Class, to allow custom store maintenance function',25,7,NULL,'2015-10-07 00:58:23',NULL,NULL,NULL,0),(169,'KonaKart Installation Home','INSTALLATION_HOME','/usr/local/konakart/','The home directory of this KonaKart Installation',1,26,NULL,'2015-10-07 00:58:23',NULL,NULL,NULL,1),(170,'Product Select Template','ADMIN_APP_PROD_SEL_TEMPLATE','$name','Sets the template for which attributes to view when selecting a product ($name, $sku, $id, $model, $manufacturer, $custom1 ... $custom5',21,25,NULL,'2015-10-07 00:58:24',NULL,NULL,NULL,0),(171,'Product Select Default Num Prods','ADMIN_APP_PROD_SEL_NUM_PRODS','0','Sets the default number of products displayed in the product select dialogs when opened',21,26,NULL,'2015-10-07 00:58:24',NULL,NULL,NULL,0),(172,'Product Select Max Num Prods','ADMIN_APP_PROD_SEL_MAX_NUM_PRODS','100','Sets the maximum number of products displayed in the product select dialogs after a search',21,27,NULL,'2015-10-07 00:58:24',NULL,NULL,NULL,0),(173,'Allow Cust Group Change eMail','ADMIN_APP_ALLOW_GROUP_CHANGE_MAIL','true','When this is set, a popup window appears when the group of a customer is changed to allow you to send an eMail',21,28,NULL,'2015-10-07 00:58:25',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(174,'Enable Gift Registry functionality','ENABLE_GIFT_REGISTRY','false','When set to true, gift registry functionality is enabled in the application',1,26,NULL,'2015-10-07 00:58:25',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(175,'Gift Registry Search','MAX_DISPLAY_GIFT_REGISTRIES','6','Maximum number of gift registries to display',3,24,NULL,'2015-10-07 00:58:25',NULL,'integer(0,null)',NULL,1),(176,'Gift Registry Items','MAX_DISPLAY_GIFT_REGISTRY_ITEMS','20','Maximum number of gift registry items to display',3,25,NULL,'2015-10-07 00:58:26',NULL,'integer(0,null)',NULL,1),(177,'Email Integration Class','EMAIL_INTEGRATION_CLASS','com.konakart.bl.EmailIntegrationMgr','The Email Integration Implementation Class to enable you to change the toAddress of the mail',12,16,NULL,'2015-10-07 00:58:26',NULL,NULL,NULL,0),(178,'Enable Customer Tag functionality','ENABLE_CUSTOMER_TAGS','false','When set to true, the application sets customer tags. All tag functionality is disabled when false.',5,6,NULL,'2015-10-07 00:58:27',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(179,'Enable Customer Cart Tag functionality','ENABLE_CUSTOMER_CART_TAGS','false','When set to true, the application sets customer cart tags',5,7,NULL,'2015-10-07 00:58:27',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(180,'Enable Customer WishList Tag functionality','ENABLE_CUSTOMER_WISHLIST_TAGS','false','When set to true, the application sets customer wish list tags',5,8,NULL,'2015-10-07 00:58:27',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(181,'Display Product Ids','ADMIN_APP_PRODUCTS_DISPLAY_ID','true','When this is set, the product id is displayed in the products panel',21,29,NULL,'2015-10-07 00:58:27',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(182,'Display Manufacturer Ids','ADMIN_APP_MANUFACTURERS_DISPLAY_ID','true','When this is set, the manufacturer id is displayed in the manufacturers panel',21,30,NULL,'2015-10-07 00:58:27',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(183,'Display Category Ids','ADMIN_APP_CATEGORIES_DISPLAY_ID','true','When this is set, the category id is displayed in the categories panel',21,31,NULL,'2015-10-07 00:58:27',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(184,'Enable Reward Points','ENABLE_REWARD_POINTS','false','During checkout the customer will be allowed to enter reward points if set to true',26,1,NULL,'2015-10-07 00:58:28',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(185,'Reward Point Transactions','MAX_DISPLAY_REWARD_POINTS','15','Maximum number of reward point transactions to display',3,26,NULL,'2015-10-07 00:58:28',NULL,'integer(0,null)',NULL,1),(186,'Reward Points for registering','REGISTRATION_REWARD_POINTS','0','Reward points received for registration',26,2,NULL,'2015-10-07 00:58:28',NULL,'integer(0,null)',NULL,1),(187,'Reward Points for writing a review','REVIEW_REWARD_POINTS','0','Reward points received for writing a review',26,3,NULL,'2015-10-07 00:58:28',NULL,'integer(0,null)',NULL,1),(189,'1st Day of the Week','1ST_DAY_OF_WEEK','0','Define the first day of the week for the calendars in the Admin App.',21,35,NULL,'2015-10-07 00:58:28',NULL,'option(0=date.day.long.Sunday,1=date.day.long.Monday,2=date.day.long.Tuesday,3=date.day.long.Wednesday,4=date.day.long.Thursday,5=date.day.long.Friday,6=date.day.long.Saturday)',NULL,0),(190,'Display Gift Cert Entry Field','DISPLAY_GIFT_CERT_ENTRY','false','During checkout the customer will be allowed to enter a gift certificate if set to true',1,22,NULL,'2015-10-07 00:58:28',NULL,'choice(\'true\', \'false\')',NULL,1),(191,'PDF Directory','PDF_BASE_DIRECTORY','/usr/local/konakart/pdf/','Defines the root directory for the location of the PDF documents that are created',27,5,NULL,'2015-10-07 00:58:28',NULL,NULL,NULL,0),(192,'Enable PDF Invoice Download','ENABLE_PDF_INVOICE_DOWNLOAD','false','When set to true, invoices in PDF format can be downloaded from the application',27,10,NULL,'2015-10-07 00:58:28',NULL,'choice(\'true\', \'false\')',NULL,1),(193,'Templates Directory','TEMPLATE_BASE_DIRECTORY','/usr/local/konakart/templates/','Defines the root directory where the velocity templates are stored',28,10,NULL,'2015-10-07 00:58:28',NULL,NULL,NULL,0),(194,'Automatically Enable Product','STOCK_ENABLE_PRODUCT','false','Automatically enable a product if quantity is set to a positive number',9,4,NULL,'2015-10-07 00:58:28',NULL,'choice(\'true\', \'false\')',NULL,0),(195,'Miscellaneous Config File','MODULE_PAYMENT_COD_MISC_CONFIG_FILE','/var/tmp/cod_misc.properties','Miscellaneous Configuration File (just an example - not actually used).',6,6,NULL,'2015-10-07 00:58:28','','FileUpload',NULL,0),(196,'Display Customer Ids','ADMIN_APP_CUSTOMERS_DISPLAY_ID','true','When this is set, the customer id is displayed in the edit customer panel',21,29,NULL,'2015-10-07 00:58:29',NULL,'choice(\'true\', \'false\')',NULL,0),(197,'Display Subscriptions Button','ADMIN_APP_DISPLAY_SUBSCRIPTIONS_BUTTON','false','When this is set, a Subscriptions button is displayed in the Customers and Orders panels',21,30,NULL,'2015-10-07 00:58:29',NULL,'choice(\'true\', \'false\')',NULL,0),(198,'Allow multiple basket entries','ALLOW_MULTIPLE_BASKET_ENTRIES','false','When set, allow the same product to be entered into the basket more than once without updating the quantity of the existing one',9,11,NULL,'2015-10-07 00:58:29',NULL,'choice(\'true\', \'false\')',NULL,1),(199,'Allow using the basket price','ALLOW_BASKET_PRICE','false','Allows you to define the price in the basket object when adding a product to the basket',18,8,NULL,'2015-10-07 00:58:30',NULL,'choice(\'true\', \'false\')',NULL,1),(200,'Tax Quantity Rule','TAX_QUANTITY_RULE','1','Tax calculated on total=1\nTax calculated per item and then rounded=2',9,13,NULL,'2015-10-07 00:58:31',NULL,'integer(1,2), ',NULL,0),(201,'No of decimal places for currency','ADMIN_CURRENCY_DECIMAL_PLACES','2','No of decimal places allowed for entering prices in the admin app',21,40,NULL,'2015-10-07 00:58:31',NULL,'integer(0,9), ',NULL,1),(202,'Street Address 1','ACCOUNT_STREET_ADDRESS_1','false','Display 2nd street address in the customers account',5,4,NULL,'2015-10-07 00:58:31',NULL,'choice(\'true\', \'false\')',NULL,1),(203,'Street Address 1','ENTRY_STREET_ADDRESS1_MIN_LENGTH','5','Minimum length of street address 1',2,5,NULL,'2015-10-07 00:58:31',NULL,'integer(0,null)',NULL,1),(204,'Warn of Duplicate SKUs','ADMIN_APP_WARN_OF_DUPLICATE_SKUS','false','Issue warning in Admin App of duplicate SKUs',21,32,NULL,'2015-10-07 00:58:31',NULL,'choice(\'true\', \'false\')',NULL,0),(205,'Exported Orders Directory','EXPORT_ORDERS_BASE_DIRECTORY','/usr/local/konakart/orders','Defines the root directory where the Orders are exported to',7,7,NULL,'2015-10-07 00:58:32',NULL,NULL,NULL,0),(206,'Allow Wish List when not logged in','ALLOW_WISHLIST_WHEN_NOT_LOGGED_IN','false','Allow wish list functionality to be available for customers that have not logged in',1,25,NULL,'2015-10-07 00:58:32',NULL,'choice(\'true\', \'false\')',NULL,1),(207,'Ship From Street Address','SHIP_FROM_STREET_ADDRESS','','Ship From Street Address - used by some of the Shipping Modules',7,2,NULL,'2015-10-07 00:58:32',NULL,NULL,NULL,0),(208,'Ship From City','SHIP_FROM_CITY','','Ship From City - used by some of the Shipping Modules',7,2,NULL,'2015-10-07 00:58:32',NULL,NULL,NULL,0),(209,'Hidden Product Types','HIDDEN_PRODUCT_TYPES','','The Product Types that are not shown in the droplist on the Edit Product Panel',21,27,NULL,'2015-10-07 00:58:32',NULL,NULL,NULL,0),(210,'Search Result Page Links','MAX_DISPLAY_PAGE_LINKS','5','Maximum number of links used for page-sets - must be odd number',3,3,NULL,'2015-10-07 00:58:32',NULL,'integer(3,null)',NULL,1),(211,'Default state for reviews','DEFAULT_REVIEW_STATE','0','Allows you to make reviews visible only after approval if initial state is set to 1',18,10,NULL,'2015-10-07 00:58:32',NULL,'integer(0,null)',NULL,1),(212,'Message Types','MESSAGE_TYPES','Application,AdminApp,AdminAppHelp','Used to populate the Message Types droplist in the Messages section',21,41,NULL,'2015-10-07 00:58:33',NULL,NULL,NULL,0),(213,'Use D/B For Messages','USE_DB_FOR_MESSAGES','false','If true use the Database for the system messsages, if false use file-based messages',21,40,NULL,'2015-10-07 00:58:33',NULL,'choice(\'true\', \'false\')',NULL,1),(214,'Address Select Default Num Addrs','ADMIN_APP_ADDR_SEL_NUM_ADDRS','50','Sets the default number of addresses displayed in the address select dialogs when opened',21,50,NULL,'2015-10-07 00:58:33',NULL,NULL,NULL,0),(215,'Address Select Max Num Addrs','ADMIN_APP_ADDR_SEL_MAX_NUM_ADDRS','100','Sets the maximum number of addresses displayed in the address select dialogs after a search',21,51,NULL,'2015-10-07 00:58:33',NULL,NULL,NULL,0),(216,'Addr Format for Prod Addr Sel','ADMIN_APP_SELECT_PROD_ADDR_FORMAT','$company $street $street1 $suburb $city $state $country','How the address is formatted in the product select address panel',21,0,NULL,'2015-10-07 00:58:33',NULL,NULL,NULL,0),(217,'Addr Format for Prod Addr','ADMIN_APP_PROD_ADDR_FORMAT','$company $street $street1 $suburb $city $state $country','How the address is formatted in the product address panel',21,0,NULL,'2015-10-07 00:58:33',NULL,NULL,NULL,0),(218,'Addr Format for Cust Addr','ADMIN_APP_CUST_ADDR_FORMAT','$street $street1 $suburb $city $state $country','How the address is formatted in the customer address panel',21,0,NULL,'2015-10-07 00:58:33',NULL,NULL,NULL,0),(219,'Addr Format for Manu Addr','ADMIN_APP_MANU_ADDR_FORMAT','$street $street1 $suburb $city $state $country','How the address is formatted in the manufacturer address panel',21,0,NULL,'2015-10-07 00:58:33',NULL,NULL,NULL,0),(220,'Manufacturer Panel Default Num Manus','ADMIN_APP_MANU_SEL_NUM_MANUS','50','Sets the default number of manufacturers displayed in the manufacturer panels and dialogs when opened',21,52,NULL,'2015-10-07 00:58:33',NULL,NULL,NULL,0),(221,'Manufacturer Panel Max Num Manus','ADMIN_APP_MANU_SEL_MAX_NUM_MANUS','100','Sets the maximum number of manufacturers displayed in the manufacturer panels and dialogs after a search',21,53,NULL,'2015-10-07 00:58:33',NULL,NULL,NULL,0),(222,'Prod Option Panel Default Num Prod Opts','ADMIN_APP_PROD_OPT_SEL_NUM_PROD_OPTS','50','Sets the default number of product options displayed in the prod option panel when opened',21,54,NULL,'2015-10-07 00:58:33',NULL,NULL,NULL,0),(223,'Prod Option Panel Max Num Prod Opts','ADMIN_APP_PROD_OPT_SEL_MAX_NUM_PROD_OPTS','100','Sets the maximum number of product options displayed in the prod option panel after a search',21,55,NULL,'2015-10-07 00:58:33',NULL,NULL,NULL,0),(224,'Prod Custom Attr Panel Default Num Attrs','ADMIN_APP_PROD_ATTR_SEL_NUM_PROD_ATTRS','50','Sets the default number of product attributes displayed in the product attribute dialogs when opened',21,56,NULL,'2015-10-07 00:58:33',NULL,NULL,NULL,0),(225,'Prod Custom Attr Panel Max Num Attrs','ADMIN_APP_PROD_ATTR_SEL_MAX_NUM_PROD_ATTRS','100','Sets the maximum number of product attributes displayed in the product attribute dialogs after a search',21,57,NULL,'2015-10-07 00:58:33',NULL,NULL,NULL,0),(226,'Template Panel Default Num Templates','ADMIN_APP_TMPL_SEL_NUM_TMPLS','50','Sets the default number of templates displayed in the select template dialogs when opened',21,58,NULL,'2015-10-07 00:58:33',NULL,NULL,NULL,0),(227,'Template Panel Max Num Templates','ADMIN_APP_TMPL_SEL_MAX_NUM_TMPLS','100','Sets the maximum number of templatess displayed in the select template dialogs after a search',21,59,NULL,'2015-10-07 00:58:33',NULL,NULL,NULL,0),(228,'Fetch Descriptions Separately','FETCH_PRODUCT_DESCRIPTIONS_SEPARATELY','false','Fetch Product Descriptions Separately',9,30,NULL,'2015-10-07 00:58:33',NULL,'choice(\'true\', \'false\')',NULL,0),(229,'Use Country Names in Msg Cat','USE_MSG_CAT_FOR_COUNTRY_NAMES','false','Use the Country Names in the Message Catalogues',1,29,NULL,'2015-10-07 00:58:34',NULL,'choice(\'true\', \'false\')',NULL,1),(230,'Enable Customer Event functionality','ENABLE_CUSTOMER_EVENTS','false','When set to true, the application inserts customer events. All event functionality is disabled when false.',5,9,NULL,'2015-10-07 00:58:34',NULL,'choice(\'true\', \'false\')',NULL,1),(231,'Custom Panel Height','ADMIN_APP_CUSTOM_PANEL_HEIGHT','600px','Custom Panel Height eg. 100% or 700px etc',22,20,NULL,'2015-10-07 00:58:34',NULL,NULL,NULL,0),(232,'Suggested Search Items','MAX_NUM_SUGGESTED_SEARCH_ITEMS','10','Max number of suggested search items to display',3,3,NULL,'2015-10-07 00:58:34',NULL,'integer(0,null)',NULL,1),(233,'Installed Other Modules','MODULE_OTHERS_INSTALLED','','List of Other modules separated by a semi-colon.  Automatically updated.  No need to edit.',6,0,NULL,'2015-10-07 00:58:35',NULL,NULL,NULL,0),(234,'How to format the URLs for SEO','SEO_URL_FORMAT','2','Decide the format of the URLs for SEO',1,30,NULL,'2015-10-07 00:58:35',NULL,'option(0=OFF,1=SEO Parameters,2=SEO Directory Structure)',NULL,1),(235,'Store-Front base','STORE_FRONT_BASE','/konakart','Base directory used in JSPs for store-front application',4,12,NULL,'2015-10-07 00:58:35',NULL,NULL,NULL,1),(236,'Store-Front image base','STORE_FRONT_IMG_BASE','/konakart/images','Image base used in JSPs for store-front application',4,13,NULL,'2015-10-07 00:58:35',NULL,NULL,NULL,1),(237,'Store-Front script base','STORE_FRONT_SCRIPT_BASE','/konakart/script','Script base used in JSPs for store-front application',4,14,NULL,'2015-10-07 00:58:35',NULL,NULL,NULL,1),(238,'Store-Front style sheet base','STORE_FRONT_STYLE_BASE','/konakart/styles','Style sheet base used in JSPs for store-front application',4,15,NULL,'2015-10-07 00:58:35',NULL,NULL,NULL,1),(239,'Enable Digital Downloads','MODULE_SHIPPING_DD_STATUS','True','Set it to true if you sell digital downloads',6,0,NULL,'2015-10-07 00:58:36',NULL,'choice(\'true\', \'false\')',NULL,0),(240,'Sort Order','MODULE_SHIPPING_DD_SORT_ORDER','0','Sort order of display.',6,0,NULL,'2015-10-07 00:58:36',NULL,NULL,NULL,0),(241,'Suggested Search prepend regex','SOLR_TERMS_PRE_REGEX','.*','Regex prepended to search string used for searching within SOLR term',24,3,NULL,'2015-10-07 00:58:38',NULL,NULL,NULL,0),(242,'Suggested Search append regex','SOLR_TERMS_POST_REGEX','.*','Regex appended to search string used for searching within SOLR term',24,4,NULL,'2015-10-07 00:58:38',NULL,NULL,NULL,0),(243,'Delete from index on commit','SOLR_DELETE_ON_COMMIT','true','On commit, delete from index products marked for deletion',24,5,NULL,'2015-10-07 00:58:38',NULL,'choice(\'true\', \'false\')',NULL,0),(244,'Special Price Products','MAX_DISPLAY_SPECIALS','9','Maximum number of special price products to cache',3,5,NULL,'2015-10-07 00:58:38',NULL,'integer(0,null)',NULL,1),(245,'Stock warn level','STOCK_WARN_LEVEL','5','Warn customer when stock reaches this level',9,5,NULL,'2015-10-07 00:58:38',NULL,'integer(null,null)',NULL,1),(246,'Use Solr dynamic facets','SOLR_DYNAMIC_FACETS','false','When true, the displayed facets are valid for only the products returned by the search rather than for all the available products.',24,6,NULL,'2015-10-07 00:58:39',NULL,'choice(\'true\', \'false\')',NULL,1),(247,'Use Slider for price filter','PRICE_FACETS_SLIDER','true','When false, price facets are displayed instead of a slider for filtering a result set by price.',1,31,NULL,'2015-10-07 00:58:39',NULL,'choice(\'true\', \'false\')',NULL,1),(248,'Batch Log file Directory','BATCH_LOG_FILE_DIRECTORY','/usr/local/konakart/batchlogs/','The location where KonaKart will write batch log files',20,2,NULL,'2015-10-07 00:58:42',NULL,NULL,NULL,0),(251,'Sitemap file Directory','SITEMAP_FILE_DIRECTORY','/usr/local/konakart/batchlogs/','The location where KonaKart will write sitemap files',30,1,NULL,'2015-10-07 00:58:43',NULL,NULL,NULL,0),(252,'Import files path','IMPORT_FILES_PATH','/usr/local/konakart/data/','The import data files location',29,50,NULL,'2015-10-07 00:58:43',NULL,NULL,NULL,0),(253,'Importer Log file Directory','IMPORTER_LOG_FILE_DIRECTORY','/usr/local/konakart/importerlogs/','The location where KonaKart will write importer log files',29,60,NULL,'2015-10-07 00:58:43',NULL,NULL,NULL,0),(254,'Enable multi-vendor mode','MULTI_VENDOR_MODE','false','Set to true to enable multi-vendor mode. KK Engine must be in shared products mode.',1,35,NULL,'2015-10-07 00:58:43',NULL,'choice(\'true\', \'false\')',NULL,1),(255,'Addr Format for Store Addr','ADMIN_APP_STORE_ADDR_FORMAT','$street $street1 $suburb $city $state $country','How the address is formatted in the store address panel',21,1,NULL,'2015-10-07 00:58:44',NULL,NULL,NULL,0),(256,'Storefront force login','APP_FORCE_LOOGIN','false','Set to true to force customers to login in order to be able to use the storefront application.',1,38,NULL,'2015-10-07 00:58:44',NULL,'choice(\'true\', \'false\')',NULL,1),(257,'Cache Products','CACHE_PRODUCTS','true','Set to true to Cache Products in memory.',11,15,NULL,'2015-10-07 00:58:44',NULL,'choice(\'true\', \'false\')',NULL,1),(258,'Cache Product Images','CACHE_PRODUCT_IMAGES','true','Set to true to Cache Product Image Names in memory.',11,20,NULL,'2015-10-07 00:58:44',NULL,'choice(\'true\', \'false\')',NULL,1),(259,'Add suggested search for invisible prods.','SOLR_ADD_TERM_IF_INVISIBLE','true','Adds a suggested search entry even when products are invisible',24,5,NULL,'2015-10-07 00:58:45',NULL,'choice(\'true\', \'false\')',NULL,0),(260,'Add suggested search for disabled prods.','SOLR_ADD_TERM_IF_DISABLED','true','Adds a suggested search entry even when products are disabled',24,5,NULL,'2015-10-07 00:58:45',NULL,'choice(\'true\', \'false\')',NULL,0),(261,'Enable spelling suggestions','SOLR_ENABLE_SPELLING_SUGGESTION','true','Enables spelling suggestion functionality',24,20,NULL,'2015-10-07 00:58:45',NULL,'choice(\'true\', \'false\')',NULL,1),(262,'Add spelling data for invisible prods.','SOLR_ADD_SPELLING_IF_INVISIBLE','true','Adds data used for spelling suggestions even when products are invisible',24,21,NULL,'2015-10-07 00:58:45',NULL,'choice(\'true\', \'false\')',NULL,0),(263,'Add spelling data for disabled prods.','SOLR_ADD_SPELLING_IF_DISABLED','true','Adds data used for spelling suggestions even when products are disabled',24,22,NULL,'2015-10-07 00:58:45',NULL,'choice(\'true\', \'false\')',NULL,0),(264,'Enable \"Other\" Gender','ENABLE_OTHER_GENDER','false','Enable \"Other\" gender in addition to Male and Female',5,1,NULL,'2015-10-07 00:58:45',NULL,'choice(\'true\', \'false\')',NULL,1),(265,'Tax Id','ACCOUNT_TAX_ID','false','Display tax id in the customers account',5,3,NULL,'2015-10-07 00:58:46',NULL,'choice(\'true\', \'false\')',NULL,1),(266,'Cache Bundle Products','CACHE_BUNDLE_PRODUCTS','false','If true bundle products are cached; if false they are never cached',11,25,NULL,'2015-10-07 00:58:46',NULL,'choice(\'true\', \'false\')',NULL,1),(267,'Create Product Viewed Events','CREATE_PRODUCT_VIEWED_EVENTS','false','If true product viewed events are created; if false they are not.',11,25,NULL,'2015-10-07 00:58:46',NULL,'choice(\'true\', \'false\')',NULL,1),(268,'Create Product Quantity Events','CREATE_PRODUCT_QTY_EVENTS','true','If true product quantity change events are created; if false they are not.',11,29,NULL,'2015-10-07 00:58:46',NULL,'choice(\'true\', \'false\')',NULL,1),(269,'Create Products Ordered Events','CREATE_PRODUCT_ORDERED_EVENTS','true','If true products ordered change events are created; if false they are not.',11,32,NULL,'2015-10-07 00:58:46',NULL,'choice(\'true\', \'false\')',NULL,1),(270,'Create Product Review Events','CREATE_PRODUCT_REVIEW_EVENTS','true','If true product review change events are created; if false they are not.',11,35,NULL,'2015-10-07 00:58:46',NULL,'choice(\'true\', \'false\')',NULL,1),(271,'Create Product Booking Events','CREATE_PRODUCT_BOOKING_EVENTS','true','If true product booking change events are created; if false they are not.',11,38,NULL,'2015-10-07 00:58:46',NULL,'choice(\'true\', \'false\')',NULL,1),(272,'KonaKart Product Cache Max Size','KK_PRODUCT_CACHE_MAX_SIZE','1000','Maximum Size (maximum number of Products) in the KonaKart Product Cache',11,46,NULL,'2015-10-07 00:58:46',NULL,'integer(1,10000)',NULL,1),(273,'Example Parameter','USER_DEFINED_EXAMPLE','Example Value','Add your own configuration parameters to group 31 to appear in the User Defined Configs Panel',31,10,NULL,'2015-10-07 00:58:46',NULL,NULL,NULL,1),(274,'Enable KonaKart Content','ENABLE_KONAKART_CONTENT','false','When set to true, KonaKart Content is enabled',1,10,NULL,'2015-10-07 00:58:48',NULL,'choice(\'true\', \'false\')',NULL,1),(275,'Cache Content','CACHE_CONTENT','true','Set to true to Cache KonaKart Content in memory.',11,28,NULL,'2015-10-07 00:58:51',NULL,'choice(\'true\', \'false\')',NULL,1),(276,'Exported Mailing List Directory','MAILLISTS_BASE_DIRECTORY','/usr/local/konakart/mailLists','Defines the root directory where the Mailing Lists are exported to',12,9,NULL,'2015-10-07 00:58:51',NULL,NULL,NULL,0),(277,'Email Output Directory','EMAIL_OUTPUT_DIRECTORY','/usr/local/konakart/logs','The location where KonaKart will write email output files',20,2,NULL,'2015-10-07 00:58:51',NULL,NULL,NULL,1),(278,'Add suggested search for catalog','SOLR_ADD_TERM_FOR_CATALOG','false','Adds a suggested search list for each catalog id since the catalog may contain only a subset of products',24,30,NULL,'2015-10-07 00:58:51',NULL,'choice(\'true\', \'false\')',NULL,1),(279,'Add spelling suggestions for catalog','SOLR_ADD_SPELLING_FOR_CATALOG','false','Adds spelling suggestions for each catalog id since the catalog may contain only a subset of products',24,32,NULL,'2015-10-07 00:58:51',NULL,'choice(\'true\', \'false\')',NULL,1),(280,'Catalogs used for product prices','SOLR_CATALOG_USED_FOR_PRICE','false','Set to true if catalogs are used to determine product prices',24,34,NULL,'2015-10-07 00:58:51',NULL,'choice(\'true\', \'false\')',NULL,0),(281,'Catalogs used for product quantities','SOLR_CATALOG_USED_FOR_QTY','false','Set to true if catalogs are used to determine product quantities',24,36,NULL,'2015-10-07 00:58:51',NULL,'choice(\'true\', \'false\')',NULL,0);
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_group`
--

DROP TABLE IF EXISTS `configuration_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration_group` (
  `configuration_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `configuration_group_title` varchar(64) NOT NULL,
  `configuration_group_desc` varchar(255) NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `visible` int(1) DEFAULT '1',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`configuration_group_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_group`
--

LOCK TABLES `configuration_group` WRITE;
/*!40000 ALTER TABLE `configuration_group` DISABLE KEYS */;
INSERT INTO `configuration_group` VALUES (1,'My Store','General information about my store',1,1,NULL),(2,'Minimum Values','The minimum values for functions / data',2,1,NULL),(3,'Maximum Values','The maximum values for functions / data',3,1,NULL),(4,'Images','Image parameters',4,1,NULL),(5,'Customer Details','Customer account configuration',5,1,NULL),(6,'Module Options','Hidden from configuration',6,0,NULL),(7,'Shipping/Packaging','Shipping options available at my store',7,1,NULL),(9,'Stock','Stock configuration options',9,1,NULL),(11,'Cache','Caching configuration options',11,1,NULL),(12,'E-Mail Options','General setting for E-Mail transport and HTML E-Mails',12,1,NULL),(20,'Logging','Logging configuration options',20,1,NULL),(26,'Reward Points','Reward Points Configuration',26,1,NULL),(27,'PDF Configuration','PDF Configuration',27,1,NULL),(28,'Velocity Templates','Velocity Templates Configuration',28,1,NULL),(29,'Importer Config','Importer Configuration',29,1,NULL),(30,'Sitemap','Sitemap Configuration',30,1,NULL);
/*!40000 ALTER TABLE `configuration_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter` (
  `counter_id` int(11) NOT NULL AUTO_INCREMENT,
  `startdate` char(8) DEFAULT NULL,
  `counter` int(12) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`counter_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (1,NULL,1,NULL),(2,NULL,1,NULL);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter_history`
--

DROP TABLE IF EXISTS `counter_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter_history` (
  `month` char(8) DEFAULT NULL,
  `counter` int(12) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter_history`
--

LOCK TABLES `counter_history` WRITE;
/*!40000 ALTER TABLE `counter_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `counter_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL AUTO_INCREMENT,
  `countries_name` varchar(64) NOT NULL,
  `countries_iso_code_2` char(2) NOT NULL,
  `countries_iso_code_3` char(3) NOT NULL,
  `address_format_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `msgCatKey` varchar(32) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `iso_numeric` varchar(10) DEFAULT NULL,
  `custom1` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`countries_id`),
  KEY `IDX_COUNTRIES_NAME` (`countries_name`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','AF','AFG',1,NULL,'CTRY.AFG',1,'004',NULL),(2,'Albania','AL','ALB',1,NULL,'CTRY.ALB',1,'008',NULL),(3,'Algeria','DZ','DZA',1,NULL,'CTRY.DZA',1,'012',NULL),(4,'American Samoa','AS','ASM',1,NULL,'CTRY.ASM',1,'016',NULL),(5,'Andorra','AD','AND',1,NULL,'CTRY.AND',1,'020',NULL),(6,'Angola','AO','AGO',1,NULL,'CTRY.AGO',1,'024',NULL),(7,'Anguilla','AI','AIA',1,NULL,'CTRY.AIA',1,'660',NULL),(8,'Antarctica','AQ','ATA',1,NULL,'CTRY.ATA',1,'010',NULL),(9,'Antigua and Barbuda','AG','ATG',1,NULL,'CTRY.ATG',1,'028',NULL),(10,'Argentina','AR','ARG',1,NULL,'CTRY.ARG',1,'032',NULL),(11,'Armenia','AM','ARM',1,NULL,'CTRY.ARM',1,'051',NULL),(12,'Aruba','AW','ABW',1,NULL,'CTRY.ABW',1,'533',NULL),(13,'Australia','AU','AUS',1,NULL,'CTRY.AUS',1,'036',NULL),(14,'Austria','AT','AUT',5,NULL,'CTRY.AUT',1,'040',NULL),(15,'Azerbaijan','AZ','AZE',1,NULL,'CTRY.AZE',1,'031',NULL),(16,'Bahamas','BS','BHS',1,NULL,'CTRY.BHS',1,'044',NULL),(17,'Bahrain','BH','BHR',1,NULL,'CTRY.BHR',1,'048',NULL),(18,'Bangladesh','BD','BGD',1,NULL,'CTRY.BGD',1,'050',NULL),(19,'Barbados','BB','BRB',1,NULL,'CTRY.BRB',1,'052',NULL),(20,'Belarus','BY','BLR',1,NULL,'CTRY.BLR',1,'112',NULL),(21,'Belgium','BE','BEL',1,NULL,'CTRY.BEL',1,'056',NULL),(22,'Belize','BZ','BLZ',1,NULL,'CTRY.BLZ',1,'084',NULL),(23,'Benin','BJ','BEN',1,NULL,'CTRY.BEN',1,'204',NULL),(24,'Bermuda','BM','BMU',1,NULL,'CTRY.BMU',1,'060',NULL),(25,'Bhutan','BT','BTN',1,NULL,'CTRY.BTN',1,'064',NULL),(26,'Bolivia','BO','BOL',1,NULL,'CTRY.BOL',1,'068',NULL),(27,'Bosnia and Herzegowina','BA','BIH',1,NULL,'CTRY.BIH',1,'070',NULL),(28,'Botswana','BW','BWA',1,NULL,'CTRY.BWA',1,'072',NULL),(29,'Bouvet Island','BV','BVT',1,NULL,'CTRY.BVT',1,'074',NULL),(30,'Brazil','BR','BRA',1,NULL,'CTRY.BRA',1,'076',NULL),(31,'British Indian Ocean Territory','IO','IOT',1,NULL,'CTRY.IOT',1,'086',NULL),(32,'Brunei Darussalam','BN','BRN',1,NULL,'CTRY.BRN',1,'096',NULL),(33,'Bulgaria','BG','BGR',1,NULL,'CTRY.BGR',1,'100',NULL),(34,'Burkina Faso','BF','BFA',1,NULL,'CTRY.BFA',1,'854',NULL),(35,'Burundi','BI','BDI',1,NULL,'CTRY.BDI',1,'108',NULL),(36,'Cambodia','KH','KHM',1,NULL,'CTRY.KHM',1,'116',NULL),(37,'Cameroon','CM','CMR',1,NULL,'CTRY.CMR',1,'120',NULL),(38,'Canada','CA','CAN',1,NULL,'CTRY.CAN',1,'124',NULL),(39,'Cape Verde','CV','CPV',1,NULL,'CTRY.CPV',1,'132',NULL),(40,'Cayman Islands','KY','CYM',1,NULL,'CTRY.CYM',1,'136',NULL),(41,'Central African Republic','CF','CAF',1,NULL,'CTRY.CAF',1,'140',NULL),(42,'Chad','TD','TCD',1,NULL,'CTRY.TCD',1,'148',NULL),(43,'Chile','CL','CHL',1,NULL,'CTRY.CHL',1,'152',NULL),(44,'China','CN','CHN',1,NULL,'CTRY.CHN',1,'156',NULL),(45,'Christmas Island','CX','CXR',1,NULL,'CTRY.CXR',1,'162',NULL),(46,'Cocos (Keeling) Islands','CC','CCK',1,NULL,'CTRY.CCK',1,'166',NULL),(47,'Colombia','CO','COL',1,NULL,'CTRY.COL',1,'170',NULL),(48,'Comoros','KM','COM',1,NULL,'CTRY.COM',1,'174',NULL),(49,'Congo','CG','COG',1,NULL,'CTRY.COG',1,'178',NULL),(50,'Cook Islands','CK','COK',1,NULL,'CTRY.COK',1,'184',NULL),(51,'Costa Rica','CR','CRI',1,NULL,'CTRY.CRI',1,'188',NULL),(52,'Cote D\'Ivoire','CI','CIV',1,NULL,'CTRY.CIV',1,'384',NULL),(53,'Croatia','HR','HRV',1,NULL,'CTRY.HRV',1,'191',NULL),(54,'Cuba','CU','CUB',1,NULL,'CTRY.CUB',1,'192',NULL),(55,'Cyprus','CY','CYP',1,NULL,'CTRY.CYP',1,'196',NULL),(56,'Czech Republic','CZ','CZE',1,NULL,'CTRY.CZE',1,'203',NULL),(57,'Denmark','DK','DNK',1,NULL,'CTRY.DNK',1,'208',NULL),(58,'Djibouti','DJ','DJI',1,NULL,'CTRY.DJI',1,'262',NULL),(59,'Dominica','DM','DMA',1,NULL,'CTRY.DMA',1,'212',NULL),(60,'Dominican Republic','DO','DOM',1,NULL,'CTRY.DOM',1,'214',NULL),(61,'East Timor','TP','TMP',1,NULL,'CTRY.TMP',1,'626',NULL),(62,'Ecuador','EC','ECU',1,NULL,'CTRY.ECU',1,'218',NULL),(63,'Egypt','EG','EGY',1,NULL,'CTRY.EGY',1,'818',NULL),(64,'El Salvador','SV','SLV',1,NULL,'CTRY.SLV',1,'222',NULL),(65,'Equatorial Guinea','GQ','GNQ',1,NULL,'CTRY.GNQ',1,'226',NULL),(66,'Eritrea','ER','ERI',1,NULL,'CTRY.ERI',1,'232',NULL),(67,'Estonia','EE','EST',1,NULL,'CTRY.EST',1,'233',NULL),(68,'Ethiopia','ET','ETH',1,NULL,'CTRY.ETH',1,'231',NULL),(69,'Falkland Islands (Malvinas)','FK','FLK',1,NULL,'CTRY.FLK',1,'238',NULL),(70,'Faroe Islands','FO','FRO',1,NULL,'CTRY.FRO',1,'234',NULL),(71,'Fiji','FJ','FJI',1,NULL,'CTRY.FJI',1,'242',NULL),(72,'Finland','FI','FIN',1,NULL,'CTRY.FIN',1,'246',NULL),(73,'France','FR','FRA',1,NULL,'CTRY.FRA',1,'250',NULL),(75,'French Guiana','GF','GUF',1,NULL,'CTRY.GUF',1,'254',NULL),(76,'French Polynesia','PF','PYF',1,NULL,'CTRY.PYF',1,'258',NULL),(77,'French Southern Territories','TF','ATF',1,NULL,'CTRY.ATF',1,'260',NULL),(78,'Gabon','GA','GAB',1,NULL,'CTRY.GAB',1,'266',NULL),(79,'Gambia','GM','GMB',1,NULL,'CTRY.GMB',1,'270',NULL),(80,'Georgia','GE','GEO',1,NULL,'CTRY.GEO',1,'268',NULL),(81,'Germany','DE','DEU',5,NULL,'CTRY.DEU',1,'276',NULL),(82,'Ghana','GH','GHA',1,NULL,'CTRY.GHA',1,'288',NULL),(83,'Gibraltar','GI','GIB',1,NULL,'CTRY.GIB',1,'292',NULL),(84,'Greece','GR','GRC',1,NULL,'CTRY.GRC',1,'300',NULL),(85,'Greenland','GL','GRL',1,NULL,'CTRY.GRL',1,'304',NULL),(86,'Grenada','GD','GRD',1,NULL,'CTRY.GRD',1,'308',NULL),(87,'Guadeloupe','GP','GLP',1,NULL,'CTRY.GLP',1,'312',NULL),(88,'Guam','GU','GUM',1,NULL,'CTRY.GUM',1,'316',NULL),(89,'Guatemala','GT','GTM',1,NULL,'CTRY.GTM',1,'320',NULL),(90,'Guinea','GN','GIN',1,NULL,'CTRY.GIN',1,'324',NULL),(91,'Guinea-bissau','GW','GNB',1,NULL,'CTRY.GNB',1,'624',NULL),(92,'Guyana','GY','GUY',1,NULL,'CTRY.GUY',1,'328',NULL),(93,'Haiti','HT','HTI',1,NULL,'CTRY.HTI',1,'332',NULL),(94,'Heard and Mc Donald Islands','HM','HMD',1,NULL,'CTRY.HMD',1,'334',NULL),(95,'Honduras','HN','HND',1,NULL,'CTRY.HND',1,'340',NULL),(96,'Hong Kong','HK','HKG',1,NULL,'CTRY.HKG',1,'344',NULL),(97,'Hungary','HU','HUN',1,NULL,'CTRY.HUN',1,'348',NULL),(98,'Iceland','IS','ISL',1,NULL,'CTRY.ISL',1,'352',NULL),(99,'India','IN','IND',1,NULL,'CTRY.IND',1,'356',NULL),(100,'Indonesia','ID','IDN',1,NULL,'CTRY.IDN',1,'360',NULL),(101,'Iran (Islamic Republic of)','IR','IRN',1,NULL,'CTRY.IRN',1,'364',NULL),(102,'Iraq','IQ','IRQ',1,NULL,'CTRY.IRQ',1,'368',NULL),(103,'Ireland','IE','IRL',1,NULL,'CTRY.IRL',1,'372',NULL),(104,'Israel','IL','ISR',1,NULL,'CTRY.ISR',1,'376',NULL),(105,'Italy','IT','ITA',1,NULL,'CTRY.ITA',1,'380',NULL),(106,'Jamaica','JM','JAM',1,NULL,'CTRY.JAM',1,'388',NULL),(107,'Japan','JP','JPN',1,NULL,'CTRY.JPN',1,'392',NULL),(108,'Jordan','JO','JOR',1,NULL,'CTRY.JOR',1,'400',NULL),(109,'Kazakhstan','KZ','KAZ',1,NULL,'CTRY.KAZ',1,'398',NULL),(110,'Kenya','KE','KEN',1,NULL,'CTRY.KEN',1,'404',NULL),(111,'Kiribati','KI','KIR',1,NULL,'CTRY.KIR',1,'296',NULL),(112,'Korea, Democratic People\'s Republic of','KP','PRK',1,NULL,'CTRY.PRK',1,'408',NULL),(113,'Korea, Republic of','KR','KOR',1,NULL,'CTRY.KOR',1,'410',NULL),(114,'Kuwait','KW','KWT',1,NULL,'CTRY.KWT',1,'414',NULL),(115,'Kyrgyzstan','KG','KGZ',1,NULL,'CTRY.KGZ',1,'417',NULL),(116,'Lao People\'s Democratic Republic','LA','LAO',1,NULL,'CTRY.LAO',1,'418',NULL),(117,'Latvia','LV','LVA',1,NULL,'CTRY.LVA',1,'428',NULL),(118,'Lebanon','LB','LBN',1,NULL,'CTRY.LBN',1,'422',NULL),(119,'Lesotho','LS','LSO',1,NULL,'CTRY.LSO',1,'426',NULL),(120,'Liberia','LR','LBR',1,NULL,'CTRY.LBR',1,'430',NULL),(121,'Libyan Arab Jamahiriya','LY','LBY',1,NULL,'CTRY.LBY',1,'434',NULL),(122,'Liechtenstein','LI','LIE',1,NULL,'CTRY.LIE',1,'438',NULL),(123,'Lithuania','LT','LTU',1,NULL,'CTRY.LTU',1,'440',NULL),(124,'Luxembourg','LU','LUX',1,NULL,'CTRY.LUX',1,'442',NULL),(125,'Macau','MO','MAC',1,NULL,'CTRY.MAC',1,'446',NULL),(126,'Macedonia, The Former Yugoslav Republic of','MK','MKD',1,NULL,'CTRY.MKD',1,'807',NULL),(127,'Madagascar','MG','MDG',1,NULL,'CTRY.MDG',1,'450',NULL),(128,'Malawi','MW','MWI',1,NULL,'CTRY.MWI',1,'454',NULL),(129,'Malaysia','MY','MYS',1,NULL,'CTRY.MYS',1,'458',NULL),(130,'Maldives','MV','MDV',1,NULL,'CTRY.MDV',1,'462',NULL),(131,'Mali','ML','MLI',1,NULL,'CTRY.MLI',1,'466',NULL),(132,'Malta','MT','MLT',1,NULL,'CTRY.MLT',1,'470',NULL),(133,'Marshall Islands','MH','MHL',1,NULL,'CTRY.MHL',1,'584',NULL),(134,'Martinique','MQ','MTQ',1,NULL,'CTRY.MTQ',1,'474',NULL),(135,'Mauritania','MR','MRT',1,NULL,'CTRY.MRT',1,'478',NULL),(136,'Mauritius','MU','MUS',1,NULL,'CTRY.MUS',1,'480',NULL),(137,'Mayotte','YT','MYT',1,NULL,'CTRY.MYT',1,'175',NULL),(138,'Mexico','MX','MEX',1,NULL,'CTRY.MEX',1,'484',NULL),(139,'Micronesia, Federated States of','FM','FSM',1,NULL,'CTRY.FSM',1,'583',NULL),(140,'Moldova, Republic of','MD','MDA',1,NULL,'CTRY.MDA',1,'498',NULL),(141,'Monaco','MC','MCO',1,NULL,'CTRY.MCO',1,'492',NULL),(142,'Mongolia','MN','MNG',1,NULL,'CTRY.MNG',1,'496',NULL),(143,'Montserrat','MS','MSR',1,NULL,'CTRY.MSR',1,'500',NULL),(144,'Morocco','MA','MAR',1,NULL,'CTRY.MAR',1,'504',NULL),(145,'Mozambique','MZ','MOZ',1,NULL,'CTRY.MOZ',1,'508',NULL),(146,'Myanmar','MM','MMR',1,NULL,'CTRY.MMR',1,'104',NULL),(147,'Namibia','NA','NAM',1,NULL,'CTRY.NAM',1,'516',NULL),(148,'Nauru','NR','NRU',1,NULL,'CTRY.NRU',1,'520',NULL),(149,'Nepal','NP','NPL',1,NULL,'CTRY.NPL',1,'524',NULL),(150,'Netherlands','NL','NLD',1,NULL,'CTRY.NLD',1,'528',NULL),(151,'Netherlands Antilles','AN','ANT',1,NULL,'CTRY.ANT',1,'530',NULL),(152,'New Caledonia','NC','NCL',1,NULL,'CTRY.NCL',1,'540',NULL),(153,'New Zealand','NZ','NZL',1,NULL,'CTRY.NZL',1,'554',NULL),(154,'Nicaragua','NI','NIC',1,NULL,'CTRY.NIC',1,'558',NULL),(155,'Niger','NE','NER',1,NULL,'CTRY.NER',1,'562',NULL),(156,'Nigeria','NG','NGA',1,NULL,'CTRY.NGA',1,'566',NULL),(157,'Niue','NU','NIU',1,NULL,'CTRY.NIU',1,'570',NULL),(158,'Norfolk Island','NF','NFK',1,NULL,'CTRY.NFK',1,'574',NULL),(159,'Northern Mariana Islands','MP','MNP',1,NULL,'CTRY.MNP',1,'580',NULL),(160,'Norway','NO','NOR',1,NULL,'CTRY.NOR',1,'578',NULL),(161,'Oman','OM','OMN',1,NULL,'CTRY.OMN',1,'512',NULL),(162,'Pakistan','PK','PAK',1,NULL,'CTRY.PAK',1,'586',NULL),(163,'Palau','PW','PLW',1,NULL,'CTRY.PLW',1,'585',NULL),(164,'Panama','PA','PAN',1,NULL,'CTRY.PAN',1,'591',NULL),(165,'Papua New Guinea','PG','PNG',1,NULL,'CTRY.PNG',1,'598',NULL),(166,'Paraguay','PY','PRY',1,NULL,'CTRY.PRY',1,'600',NULL),(167,'Peru','PE','PER',1,NULL,'CTRY.PER',1,'604',NULL),(168,'Philippines','PH','PHL',1,NULL,'CTRY.PHL',1,'608',NULL),(169,'Pitcairn','PN','PCN',1,NULL,'CTRY.PCN',1,'612',NULL),(170,'Poland','PL','POL',1,NULL,'CTRY.POL',1,'616',NULL),(171,'Portugal','PT','PRT',1,NULL,'CTRY.PRT',1,'620',NULL),(172,'Puerto Rico','PR','PRI',1,NULL,'CTRY.PRI',1,'630',NULL),(173,'Qatar','QA','QAT',1,NULL,'CTRY.QAT',1,'634',NULL),(174,'Reunion','RE','REU',1,NULL,'CTRY.REU',1,'638',NULL),(175,'Romania','RO','ROM',1,NULL,'CTRY.ROM',1,'642',NULL),(176,'Russian Federation','RU','RUS',1,NULL,'CTRY.RUS',1,'643',NULL),(177,'Rwanda','RW','RWA',1,NULL,'CTRY.RWA',1,'646',NULL),(178,'Saint Kitts and Nevis','KN','KNA',1,NULL,'CTRY.KNA',1,'659',NULL),(179,'Saint Lucia','LC','LCA',1,NULL,'CTRY.LCA',1,'662',NULL),(180,'Saint Vincent and the Grenadines','VC','VCT',1,NULL,'CTRY.VCT',1,'670',NULL),(181,'Samoa','WS','WSM',1,NULL,'CTRY.WSM',1,'882',NULL),(182,'San Marino','SM','SMR',1,NULL,'CTRY.SMR',1,'674',NULL),(183,'Sao Tome and Principe','ST','STP',1,NULL,'CTRY.STP',1,'678',NULL),(184,'Saudi Arabia','SA','SAU',1,NULL,'CTRY.SAU',1,'682',NULL),(185,'Senegal','SN','SEN',1,NULL,'CTRY.SEN',1,'686',NULL),(186,'Seychelles','SC','SYC',1,NULL,'CTRY.SYC',1,'690',NULL),(187,'Sierra Leone','SL','SLE',1,NULL,'CTRY.SLE',1,'694',NULL),(188,'Singapore','SG','SGP',4,NULL,'CTRY.SGP',1,'702',NULL),(189,'Slovakia (Slovak Republic)','SK','SVK',1,NULL,'CTRY.SVK',1,'703',NULL),(190,'Slovenia','SI','SVN',1,NULL,'CTRY.SVN',1,'705',NULL),(191,'Solomon Islands','SB','SLB',1,NULL,'CTRY.SLB',1,'090',NULL),(192,'Somalia','SO','SOM',1,NULL,'CTRY.SOM',1,'706',NULL),(193,'South Africa','ZA','ZAF',1,NULL,'CTRY.ZAF',1,'710',NULL),(194,'South Georgia and the South Sandwich Islands','GS','SGS',1,NULL,'CTRY.SGS',1,'239',NULL),(195,'Spain','ES','ESP',3,NULL,'CTRY.ESP',1,'724',NULL),(196,'Sri Lanka','LK','LKA',1,NULL,'CTRY.LKA',1,'144',NULL),(197,'St. Helena','SH','SHN',1,NULL,'CTRY.SHN',1,'654',NULL),(198,'St. Pierre and Miquelon','PM','SPM',1,NULL,'CTRY.SPM',1,'666',NULL),(199,'Sudan','SD','SDN',1,NULL,'CTRY.SDN',1,'736',NULL),(200,'Suriname','SR','SUR',1,NULL,'CTRY.SUR',1,'740',NULL),(201,'Svalbard and Jan Mayen Islands','SJ','SJM',1,NULL,'CTRY.SJM',1,'744',NULL),(202,'Swaziland','SZ','SWZ',1,NULL,'CTRY.SWZ',1,'748',NULL),(203,'Sweden','SE','SWE',1,NULL,'CTRY.SWE',1,'752',NULL),(204,'Switzerland','CH','CHE',1,NULL,'CTRY.CHE',1,'756',NULL),(205,'Syrian Arab Republic','SY','SYR',1,NULL,'CTRY.SYR',1,'760',NULL),(206,'Taiwan','TW','TWN',1,NULL,'CTRY.TWN',1,'158',NULL),(207,'Tajikistan','TJ','TJK',1,NULL,'CTRY.TJK',1,'762',NULL),(208,'Tanzania, United Republic of','TZ','TZA',1,NULL,'CTRY.TZA',1,'834',NULL),(209,'Thailand','TH','THA',1,NULL,'CTRY.THA',1,'764',NULL),(210,'Togo','TG','TGO',1,NULL,'CTRY.TGO',1,'768',NULL),(211,'Tokelau','TK','TKL',1,NULL,'CTRY.TKL',1,'772',NULL),(212,'Tonga','TO','TON',1,NULL,'CTRY.TON',1,'776',NULL),(213,'Trinidad and Tobago','TT','TTO',1,NULL,'CTRY.TTO',1,'780',NULL),(214,'Tunisia','TN','TUN',1,NULL,'CTRY.TUN',1,'788',NULL),(215,'Turkey','TR','TUR',1,NULL,'CTRY.TUR',1,'792',NULL),(216,'Turkmenistan','TM','TKM',1,NULL,'CTRY.TKM',1,'795',NULL),(217,'Turks and Caicos Islands','TC','TCA',1,NULL,'CTRY.TCA',1,'796',NULL),(218,'Tuvalu','TV','TUV',1,NULL,'CTRY.TUV',1,'798',NULL),(219,'Uganda','UG','UGA',1,NULL,'CTRY.UGA',1,'800',NULL),(220,'Ukraine','UA','UKR',1,NULL,'CTRY.UKR',1,'804',NULL),(221,'United Arab Emirates','AE','ARE',1,NULL,'CTRY.ARE',1,'784',NULL),(222,'United Kingdom','GB','GBR',1,NULL,'CTRY.GBR',1,'826',NULL),(223,'United States','US','USA',2,NULL,'CTRY.USA',1,'840',NULL),(224,'United States Minor Outlying Islands','UM','UMI',1,NULL,'CTRY.UMI',1,'581',NULL),(225,'Uruguay','UY','URY',1,NULL,'CTRY.URY',1,'858',NULL),(226,'Uzbekistan','UZ','UZB',1,NULL,'CTRY.UZB',1,'860',NULL),(227,'Vanuatu','VU','VUT',1,NULL,'CTRY.VUT',1,'548',NULL),(228,'Vatican City State (Holy See)','VA','VAT',1,NULL,'CTRY.VAT',1,'336',NULL),(229,'Venezuela','VE','VEN',1,NULL,'CTRY.VEN',1,'862',NULL),(230,'Viet Nam','VN','VNM',1,NULL,'CTRY.VNM',1,'704',NULL),(231,'Virgin Islands (British)','VG','VGB',1,NULL,'CTRY.VGB',1,'092',NULL),(232,'Virgin Islands (U.S.)','VI','VIR',1,NULL,'CTRY.VIR',1,'850',NULL),(233,'Wallis and Futuna Islands','WF','WLF',1,NULL,'CTRY.WLF',1,'876',NULL),(234,'Western Sahara','EH','ESH',1,NULL,'CTRY.ESH',1,'732',NULL),(235,'Yemen','YE','YEM',1,NULL,'CTRY.YEM',1,'887',NULL),(236,'Yugoslavia','YU','YUG',1,NULL,'CTRY.YUG',1,'891',NULL),(237,'Zaire','ZR','ZAR',1,NULL,'CTRY.ZAR',1,'180',NULL),(238,'Zambia','ZM','ZMB',1,NULL,'CTRY.ZMB',1,'894',NULL),(239,'Zimbabwe','ZW','ZWE',1,NULL,'CTRY.ZWE',1,'716',NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(64) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `max_use` int(11) NOT NULL DEFAULT '1',
  `times_used` int(11) NOT NULL DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`coupon_id`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_coupon_code` (`coupon_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `currencies_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` char(3) NOT NULL,
  `symbol_left` varchar(12) DEFAULT NULL,
  `symbol_right` varchar(12) DEFAULT NULL,
  `decimal_point` char(1) DEFAULT NULL,
  `thousands_point` char(1) DEFAULT NULL,
  `decimal_places` char(1) DEFAULT NULL,
  `value` float(13,8) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`currencies_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'US $','USD','$','','.',',','2',1.00000000,'2015-10-07 00:58:02',NULL),(2,'EUR €','EUR','€','','.',',','2',1.39999998,'2015-10-07 00:58:02',NULL);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_gender` char(1) NOT NULL,
  `customers_firstname` varchar(32) NOT NULL,
  `customers_lastname` varchar(32) NOT NULL,
  `customers_dob` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customers_email_address` varchar(96) NOT NULL,
  `customers_default_address_id` int(11) NOT NULL,
  `customers_telephone` varchar(32) NOT NULL,
  `customers_fax` varchar(32) DEFAULT NULL,
  `customers_password` varchar(40) NOT NULL,
  `customers_newsletter` char(1) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `customers_type` int(11) DEFAULT NULL,
  `customers_enabled` int(11) DEFAULT '1',
  `customers_group_id` int(11) DEFAULT '-1',
  `store_id` varchar(64) DEFAULT NULL,
  `customers_locale` varchar(16) DEFAULT NULL,
  `customers_telephone_1` varchar(32) DEFAULT NULL,
  `invisible` int(1) NOT NULL DEFAULT '0',
  `tax_identifier` varchar(64) DEFAULT NULL,
  `tax_exemption` varchar(64) DEFAULT NULL,
  `tax_entity` varchar(64) DEFAULT NULL,
  `ext_reference_1` varchar(64) DEFAULT NULL,
  `ext_reference_2` varchar(64) DEFAULT NULL,
  `email_verified` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`customers_id`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_email_address` (`customers_email_address`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'m','John','doe','2001-01-01 00:00:00','doe@konakart.com',1,'12345','','d95e8fa7f20a009372eb3477473fcd34:1c','0',NULL,NULL,NULL,NULL,NULL,3,1,-1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(2,'m','Andy','Admin','1977-01-01 00:00:00','admin@konakart.com',2,'019081','','f5147fc3f6eb46e234c01db939bdb581:08','0',NULL,NULL,NULL,NULL,NULL,1,1,-1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(3,'m','Caty','Catalog','1977-01-01 00:00:00','cat@konakart.com',3,'019082','','f5147fc3f6eb46e234c01db939bdb581:08','0',NULL,NULL,NULL,NULL,NULL,1,1,-1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(4,'m','Olly','Order','1977-01-01 00:00:00','order@konakart.com',4,'019083','','f5147fc3f6eb46e234c01db939bdb581:08','0',NULL,NULL,NULL,NULL,NULL,1,1,-1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(5,'m','Order','Followup','1977-01-01 00:00:00','order.followup@konakart.com',5,'019084','','f5147fc3f6eb46e234c01db939bdb581:08','0',NULL,NULL,NULL,NULL,NULL,1,1,-1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_basket`
--

DROP TABLE IF EXISTS `customers_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `products_id` tinytext NOT NULL,
  `customers_basket_quantity` int(2) NOT NULL,
  `final_price` decimal(15,4) NOT NULL,
  `customers_basket_date_added` char(8) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `products_sku` varchar(255) DEFAULT NULL,
  `kk_wishlist_id` int(11) DEFAULT NULL,
  `kk_wishlist_item_id` int(11) DEFAULT NULL,
  `use_basket_price` int(11) DEFAULT '0',
  `custom6` varchar(16) DEFAULT NULL,
  `custom7` varchar(16) DEFAULT NULL,
  `custom8` varchar(16) DEFAULT NULL,
  `custom9` varchar(16) DEFAULT NULL,
  `custom10` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`customers_basket_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_basket`
--

LOCK TABLES `customers_basket` WRITE;
/*!40000 ALTER TABLE `customers_basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_basket_attrs`
--

DROP TABLE IF EXISTS `customers_basket_attrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers_basket_attrs` (
  `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `products_id` tinytext NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_value_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `attr_type` int(11) NOT NULL DEFAULT '0',
  `attr_quantity` int(11) DEFAULT '0',
  `customers_basket_id` int(11) NOT NULL DEFAULT '0',
  `customer_price` decimal(15,2) DEFAULT NULL,
  `customer_string` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`customers_basket_attributes_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_basket_attrs`
--

LOCK TABLES `customers_basket_attrs` WRITE;
/*!40000 ALTER TABLE `customers_basket_attrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers_basket_attrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_info`
--

DROP TABLE IF EXISTS `customers_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logon` int(5) DEFAULT NULL,
  `customers_info_date_created` datetime DEFAULT NULL,
  `customers_info_date_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(1) DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`customers_info_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_info`
--

LOCK TABLES `customers_info` WRITE;
/*!40000 ALTER TABLE `customers_info` DISABLE KEYS */;
INSERT INTO `customers_info` VALUES (1,'2015-10-07 00:58:02',0,'2015-10-07 00:58:02','2015-10-07 00:58:02',0,NULL),(2,'2015-10-06 20:58:55',1,'2015-10-07 00:58:09','2015-10-07 00:58:09',0,NULL),(3,'2015-10-07 00:58:09',0,'2015-10-07 00:58:09','2015-10-07 00:58:09',0,NULL),(4,'2015-10-07 00:58:09',0,'2015-10-07 00:58:09','2015-10-07 00:58:09',0,NULL),(5,'2015-10-07 00:58:52',0,'2015-10-07 00:58:52','2015-10-07 00:58:52',0,'store1');
/*!40000 ALTER TABLE `customers_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_zones`
--

DROP TABLE IF EXISTS `geo_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_name` varchar(32) NOT NULL,
  `geo_zone_description` varchar(255) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`geo_zone_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_zones`
--

LOCK TABLES `geo_zones` WRITE;
/*!40000 ALTER TABLE `geo_zones` DISABLE KEYS */;
INSERT INTO `geo_zones` VALUES (1,'Florida','Florida local sales tax zone','2015-10-07 00:58:04','2015-10-07 00:58:04',NULL);
/*!40000 ALTER TABLE `geo_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipn_history`
--

DROP TABLE IF EXISTS `ipn_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipn_history` (
  `ipn_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_code` varchar(32) NOT NULL,
  `gateway_transaction_id` varchar(128) DEFAULT NULL,
  `gateway_result` varchar(128) DEFAULT NULL,
  `gateway_full_response` text,
  `order_id` int(11) DEFAULT NULL,
  `konakart_result_id` int(11) DEFAULT NULL,
  `konakart_result_description` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `kk_subscription_id` int(11) NOT NULL DEFAULT '-1',
  `transaction_type` varchar(128) DEFAULT NULL,
  `transaction_amount` decimal(15,4) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom1Dec` decimal(15,4) DEFAULT NULL,
  `custom2Dec` decimal(15,4) DEFAULT NULL,
  `gateway_capture_id` varchar(64) DEFAULT NULL,
  `gateway_credit_id` varchar(64) DEFAULT NULL,
  `admin_payment_class` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ipn_history_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipn_history`
--

LOCK TABLES `ipn_history` WRITE;
/*!40000 ALTER TABLE `ipn_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipn_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_addr_to_product`
--

DROP TABLE IF EXISTS `kk_addr_to_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_addr_to_product` (
  `store_id` varchar(64) DEFAULT NULL,
  `address_book_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `relation_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_book_id`,`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_addr_to_product`
--

LOCK TABLES `kk_addr_to_product` WRITE;
/*!40000 ALTER TABLE `kk_addr_to_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_addr_to_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_api_call`
--

DROP TABLE IF EXISTS `kk_api_call`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_api_call` (
  `api_call_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`api_call_id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_api_call`
--

LOCK TABLES `kk_api_call` WRITE;
/*!40000 ALTER TABLE `kk_api_call` DISABLE KEYS */;
INSERT INTO `kk_api_call` VALUES (1,'deleteCurrency','','2015-10-07 00:58:11',NULL),(2,'insertCurrency','','2015-10-07 00:58:11',NULL),(3,'updateCurrency','','2015-10-07 00:58:11',NULL),(4,'deleteOrderStatusName','','2015-10-07 00:58:11',NULL),(5,'insertOrderStatusName','','2015-10-07 00:58:11',NULL),(6,'insertOrderStatusNames','','2015-10-07 00:58:11',NULL),(7,'updateOrderStatusName','','2015-10-07 00:58:11',NULL),(8,'deleteCountry','','2015-10-07 00:58:11',NULL),(9,'insertCountry','','2015-10-07 00:58:11',NULL),(10,'updateCountry','','2015-10-07 00:58:11',NULL),(11,'deleteLanguage','','2015-10-07 00:58:11',NULL),(12,'insertLanguage','','2015-10-07 00:58:11',NULL),(13,'updateLanguage','','2015-10-07 00:58:11',NULL),(14,'sendEmail','','2015-10-07 00:58:11',NULL),(15,'getOrdersCount','','2015-10-07 00:58:11',NULL),(16,'getOrdersLite','','2015-10-07 00:58:11',NULL),(17,'getOrders','','2015-10-07 00:58:11',NULL),(18,'getOrderForOrderId','','2015-10-07 00:58:11',NULL),(19,'getOrderForOrderIdAndLangId','','2015-10-07 00:58:11',NULL),(20,'getOrdersCreatedSince','','2015-10-07 00:58:11',NULL),(21,'updateOrderStatus','','2015-10-07 00:58:11',NULL),(22,'getHtml','','2015-10-07 00:58:11',NULL),(23,'getCustomersCount','','2015-10-07 00:58:11',NULL),(24,'getCustomersCountWhoHaventPlacedAnOrderSince','','2015-10-07 00:58:11',NULL),(25,'getCustomersCountWhoHavePlacedAnOrderSince','','2015-10-07 00:58:11',NULL),(26,'updateCustomer','','2015-10-07 00:58:11',NULL),(27,'deleteCustomer','','2015-10-07 00:58:11',NULL),(28,'deleteOrder','','2015-10-07 00:58:11',NULL),(29,'getCustomers','','2015-10-07 00:58:11',NULL),(30,'getCustomersLite','','2015-10-07 00:58:11',NULL),(31,'getCustomerForId','','2015-10-07 00:58:11',NULL),(32,'deleteTaxRate','','2015-10-07 00:58:11',NULL),(33,'insertTaxRate','','2015-10-07 00:58:11',NULL),(34,'updateTaxRate','','2015-10-07 00:58:11',NULL),(35,'deleteZone','','2015-10-07 00:58:11',NULL),(36,'insertZone','','2015-10-07 00:58:11',NULL),(37,'updateZone','','2015-10-07 00:58:11',NULL),(38,'deleteTaxClass','','2015-10-07 00:58:11',NULL),(39,'insertTaxClass','','2015-10-07 00:58:11',NULL),(40,'updateTaxClass','','2015-10-07 00:58:11',NULL),(41,'deleteAddressFormat','','2015-10-07 00:58:11',NULL),(42,'insertAddressFormat','','2015-10-07 00:58:11',NULL),(43,'updateAddressFormat','','2015-10-07 00:58:11',NULL),(44,'deleteGeoZone','','2015-10-07 00:58:11',NULL),(45,'insertGeoZone','','2015-10-07 00:58:11',NULL),(46,'updateGeoZone','','2015-10-07 00:58:11',NULL),(47,'deleteSubZone','','2015-10-07 00:58:11',NULL),(48,'insertSubZone','','2015-10-07 00:58:11',NULL),(49,'updateSubZone','','2015-10-07 00:58:11',NULL),(50,'getConfigurationInfo','','2015-10-07 00:58:11',NULL),(51,'getConfigurationsByGroup','','2015-10-07 00:58:11',NULL),(52,'saveConfigs','','2015-10-07 00:58:11',NULL),(53,'insertConfigs','','2015-10-07 00:58:11',NULL),(54,'removeConfigs','','2015-10-07 00:58:11',NULL),(55,'getModules','','2015-10-07 00:58:11',NULL),(56,'registerCustomer','','2015-10-07 00:58:11',NULL),(57,'resetCustomerPassword','','2015-10-07 00:58:11',NULL),(58,'changePassword','','2015-10-07 00:58:11',NULL),(59,'insertProduct','','2015-10-07 00:58:11',NULL),(60,'editProduct','','2015-10-07 00:58:11',NULL),(61,'getProduct','','2015-10-07 00:58:11',NULL),(62,'searchForProducts','','2015-10-07 00:58:11',NULL),(63,'deleteProduct','','2015-10-07 00:58:11',NULL),(64,'deleteCategoryTree','','2015-10-07 00:58:11',NULL),(65,'deleteSingleCategory','','2015-10-07 00:58:11',NULL),(66,'editCategory','','2015-10-07 00:58:11',NULL),(67,'insertCategory','','2015-10-07 00:58:11',NULL),(68,'moveCategory','','2015-10-07 00:58:11',NULL),(69,'deleteManufacturer','','2015-10-07 00:58:11',NULL),(70,'editManufacturer','','2015-10-07 00:58:11',NULL),(71,'insertManufacturer','','2015-10-07 00:58:11',NULL),(72,'deleteReview','','2015-10-07 00:58:11',NULL),(73,'editReview','','2015-10-07 00:58:11',NULL),(74,'getAllReviews','','2015-10-07 00:58:11',NULL),(75,'getReview','','2015-10-07 00:58:11',NULL),(76,'getReviewsPerProduct','','2015-10-07 00:58:11',NULL),(77,'insertReview','','2015-10-07 00:58:11',NULL),(78,'insertSpecial','','2015-10-07 00:58:11',NULL),(79,'getSpecial','','2015-10-07 00:58:11',NULL),(80,'deleteSpecial','','2015-10-07 00:58:11',NULL),(81,'editSpecial','','2015-10-07 00:58:11',NULL),(82,'getAllSpecials','','2015-10-07 00:58:11',NULL),(83,'getSpecialsPerCategory','','2015-10-07 00:58:11',NULL),(84,'deleteProductOptions','','2015-10-07 00:58:11',NULL),(85,'deleteProductOptionValues','','2015-10-07 00:58:11',NULL),(86,'getProductOptionsPerId','','2015-10-07 00:58:11',NULL),(87,'getProductOptionValuesPerId','','2015-10-07 00:58:11',NULL),(88,'insertProductOption','','2015-10-07 00:58:11',NULL),(89,'editProductOption','','2015-10-07 00:58:11',NULL),(90,'insertProductOptionValue','','2015-10-07 00:58:11',NULL),(91,'editProductOptionValue','','2015-10-07 00:58:11',NULL),(92,'getNextProductOptionId','','2015-10-07 00:58:12',NULL),(93,'getNextProductOptionValuesId','','2015-10-07 00:58:12',NULL),(94,'getProductAttributesPerProduct','','2015-10-07 00:58:12',NULL),(95,'deleteProductAttribute','','2015-10-07 00:58:12',NULL),(96,'deleteProductAttributesPerProduct','','2015-10-07 00:58:12',NULL),(97,'editProductAttribute','','2015-10-07 00:58:12',NULL),(98,'insertProductAttribute','','2015-10-07 00:58:12',NULL),(99,'insertProductOptionValues','','2015-10-07 00:58:12',NULL),(100,'insertProductOptions','','2015-10-07 00:58:12',NULL),(101,'checkSession','','2015-10-07 00:58:12',NULL),(102,'searchForIpnHistory','','2015-10-07 00:58:12',NULL),(103,'deleteExpiredSessions','','2015-10-07 00:58:12',NULL),(104,'getConfigFiles','','2015-10-07 00:58:12',NULL),(105,'getReports','','2015-10-07 00:58:12',NULL),(106,'reloadReports','','2015-10-07 00:58:12',NULL),(107,'getFileContents','','2015-10-07 00:58:12',NULL),(108,'saveFileContents','','2015-10-07 00:58:12',NULL),(109,'deleteFile','','2015-10-07 00:58:12',NULL),(110,'addCategoriesToPromotion','','2015-10-07 00:58:12',NULL),(111,'addCouponsToPromotion','','2015-10-07 00:58:12',NULL),(112,'addPromotionsToCoupon','','2015-10-07 00:58:12',NULL),(113,'addCustomersToPromotion','','2015-10-07 00:58:12',NULL),(114,'addCustomersToPromotionPerOrdersMade','','2015-10-07 00:58:12',NULL),(115,'addManufacturersToPromotion','','2015-10-07 00:58:12',NULL),(116,'addProductsToPromotion','','2015-10-07 00:58:12',NULL),(117,'deletePromotion','','2015-10-07 00:58:12',NULL),(118,'deleteCoupon','','2015-10-07 00:58:12',NULL),(119,'editCoupon','','2015-10-07 00:58:12',NULL),(120,'editPromotion','','2015-10-07 00:58:12',NULL),(121,'getCouponsPerPromotion','','2015-10-07 00:58:12',NULL),(122,'getCoupons','','2015-10-07 00:58:12',NULL),(123,'getCategoriesPerPromotion','','2015-10-07 00:58:12',NULL),(124,'getManufacturersPerPromotion','','2015-10-07 00:58:12',NULL),(125,'getProductsPerPromotion','','2015-10-07 00:58:12',NULL),(126,'getPromotion','','2015-10-07 00:58:12',NULL),(127,'getPromotions','','2015-10-07 00:58:12',NULL),(128,'getPromotionsCount','','2015-10-07 00:58:12',NULL),(129,'getPromotionsPerCoupon','','2015-10-07 00:58:12',NULL),(130,'insertCouponForPromotion','','2015-10-07 00:58:12',NULL),(131,'insertCoupon','','2015-10-07 00:58:12',NULL),(132,'insertPromotion','','2015-10-07 00:58:12',NULL),(133,'removeCategoriesFromPromotion','','2015-10-07 00:58:12',NULL),(134,'removeCouponsFromPromotion','','2015-10-07 00:58:12',NULL),(135,'removePromotionsFromCoupon','','2015-10-07 00:58:12',NULL),(136,'removeCustomersFromPromotion','','2015-10-07 00:58:12',NULL),(137,'removeManufacturersFromPromotion','','2015-10-07 00:58:12',NULL),(138,'removeProductsFromPromotion','','2015-10-07 00:58:12',NULL),(139,'getRelatedProducts','','2015-10-07 00:58:12',NULL),(140,'removeRelatedProducts','','2015-10-07 00:58:12',NULL),(141,'addRelatedProducts','','2015-10-07 00:58:12',NULL),(142,'readFromUrl','','2015-10-07 00:58:12',NULL),(143,'editOrderReturn','','2015-10-07 00:58:12',NULL),(144,'insertOrderReturn','','2015-10-07 00:58:12',NULL),(145,'deleteOrderReturn','','2015-10-07 00:58:12',NULL),(146,'getOrderReturns','','2015-10-07 00:58:12',NULL),(147,'getSku','','2015-10-07 00:58:12',NULL),(148,'getSkus','','2015-10-07 00:58:12',NULL),(149,'doesCustomerExistForEmail','','2015-10-07 00:58:12',NULL),(150,'getAuditData','','2015-10-07 00:58:12',NULL),(151,'deleteAuditData','','2015-10-07 00:58:12',NULL),(152,'getRolesPerSessionId','','2015-10-07 00:58:12',NULL),(153,'getRolesPerUser','','2015-10-07 00:58:12',NULL),(154,'addRolesToUser','','2015-10-07 00:58:12',NULL),(155,'removeRolesFromUser','','2015-10-07 00:58:12',NULL),(156,'removePanelsFromRole','','2015-10-07 00:58:12',NULL),(157,'removeApiCallsFromRole','','2015-10-07 00:58:12',NULL),(158,'addPanelsToRole','','2015-10-07 00:58:12',NULL),(159,'addApiCallsToRole','','2015-10-07 00:58:12',NULL),(160,'getPanelsPerRole','','2015-10-07 00:58:12',NULL),(161,'getApiCallsPerRole','','2015-10-07 00:58:12',NULL),(162,'getAllPanels','','2015-10-07 00:58:12',NULL),(163,'getAllApiCalls','','2015-10-07 00:58:12',NULL),(164,'getAllRoles','','2015-10-07 00:58:12',NULL),(165,'editRole','','2015-10-07 00:58:12',NULL),(166,'insertRole','','2015-10-07 00:58:12',NULL),(167,'deleteRole','','2015-10-07 00:58:12',NULL),(168,'deletePanel','','2015-10-07 00:58:12',NULL),(169,'deleteApiCall','','2015-10-07 00:58:12',NULL),(170,'editPanel','','2015-10-07 00:58:12',NULL),(171,'editApiCall','','2015-10-07 00:58:12',NULL),(172,'getPanel','','2015-10-07 00:58:12',NULL),(173,'getApiCall','','2015-10-07 00:58:12',NULL),(174,'getRole','','2015-10-07 00:58:12',NULL),(175,'insertPanel','','2015-10-07 00:58:12',NULL),(176,'insertApiCall','','2015-10-07 00:58:12',NULL),(177,'insertDigitalDownload','','2015-10-07 00:58:12',NULL),(178,'sendTemplateEmailToCustomers1','','2015-10-07 00:58:12',NULL),(179,'insertProductNotification','','2015-10-07 00:58:12',NULL),(180,'deleteProductNotification','','2015-10-07 00:58:12',NULL),(181,'getCustomerForEmail','','2015-10-07 00:58:12',NULL),(182,'removeCustomerGroupsFromPromotion','','2015-10-07 00:58:14',NULL),(183,'addCustomerGroupsToPromotion','','2015-10-07 00:58:14',NULL),(184,'getCustomerGroupsPerPromotion','','2015-10-07 00:58:14',NULL),(185,'insertCustomerGroup','','2015-10-07 00:58:14',NULL),(186,'updateCustomerGroup','','2015-10-07 00:58:14',NULL),(187,'deleteCustomerGroup','','2015-10-07 00:58:14',NULL),(188,'getCustomerGroups','','2015-10-07 00:58:14',NULL),(189,'editOrder','','2015-10-07 00:58:14',NULL),(190,'getBundleProductDetails','','2015-10-07 00:58:14',NULL),(191,'customSecure','','2015-10-07 00:58:14',NULL),(192,'getTags','','2015-10-07 00:58:15',NULL),(193,'getTagGroups','','2015-10-07 00:58:15',NULL),(194,'insertTag','','2015-10-07 00:58:15',NULL),(195,'insertTags','','2015-10-07 00:58:15',NULL),(198,'updateTag','','2015-10-07 00:58:15',NULL),(199,'updateTagGroup','','2015-10-07 00:58:15',NULL),(200,'deleteTag','','2015-10-07 00:58:15',NULL),(201,'deleteTagGroup','','2015-10-07 00:58:15',NULL),(202,'getTagGroupsPerCategory','','2015-10-07 00:58:15',NULL),(203,'addTagGroupsToCategory','','2015-10-07 00:58:15',NULL),(204,'removeTagGroupsFromCategory','','2015-10-07 00:58:15',NULL),(205,'getTagsPerProduct','','2015-10-07 00:58:15',NULL),(206,'addTagsToProduct','','2015-10-07 00:58:15',NULL),(207,'removeTagsFromProduct','','2015-10-07 00:58:15',NULL),(208,'updateCachedConfigurations','','2015-10-07 00:58:15',NULL),(209,'getKonakartPropertyValue','','2015-10-07 00:58:15',NULL),(210,'publishProducts','','2015-10-07 00:58:15',NULL),(211,'addAllProductsToSearchEngine','','2015-10-07 00:58:15',NULL),(212,'addProductToSearchEngine','','2015-10-07 00:58:15',NULL),(213,'removeAllProductsFromSearchEngine','','2015-10-07 00:58:15',NULL),(214,'removeProductFromSearchEngine','','2015-10-07 00:58:15',NULL),(215,'insertConfigurationGroup','','2015-10-07 00:58:16',NULL),(216,'getMallStores','','2015-10-07 00:58:23',NULL),(217,'insertMallStore','','2015-10-07 00:58:23',NULL),(218,'deleteMallStore','','2015-10-07 00:58:23',NULL),(219,'updateMallStore','','2015-10-07 00:58:23',NULL),(220,'setProductQuantity','','2015-10-07 00:58:24',NULL),(221,'setProductAvailability','','2015-10-07 00:58:24',NULL),(222,'getProductQuantity','','2015-10-07 00:58:24',NULL),(223,'getProductAvailability','','2015-10-07 00:58:24',NULL),(224,'insertTagGroupToTags','','2015-10-07 00:58:24',NULL),(225,'getTagGroupToTags','','2015-10-07 00:58:24',NULL),(227,'getProductNotificationsForCustomer','','2015-10-07 00:58:24',NULL),(228,'getProductOptionsPerName','','2015-10-07 00:58:24',NULL),(229,'getAllProductOptionValues','','2015-10-07 00:58:24',NULL),(230,'getProductOptionValuesPerName','','2015-10-07 00:58:24',NULL),(231,'insertProductsOptionsValuesToProductsOptions','','2015-10-07 00:58:24',NULL),(232,'getProductOptionValueToProductOptions','','2015-10-07 00:58:24',NULL),(233,'getAllConfigurations','','2015-10-07 00:58:24',NULL),(234,'getAllConfigurationGroups','','2015-10-07 00:58:24',NULL),(235,'updateConfiguration','','2015-10-07 00:58:24',NULL),(236,'updateConfigurationGroup','','2015-10-07 00:58:24',NULL),(237,'getConfigurationGroupsByTitle','','2015-10-07 00:58:24',NULL),(238,'getConfigurationByKey','','2015-10-07 00:58:24',NULL),(239,'insertConfiguration','','2015-10-07 00:58:24',NULL),(240,'insertConfigurationGroup','','2015-10-07 00:58:24',NULL),(241,'insertIpnHistory','','2015-10-07 00:58:24',NULL),(242,'importAudit','','2015-10-07 00:58:24',NULL),(243,'getCategoriesPerTagGroup','','2015-10-07 00:58:24',NULL),(244,'addCategoriesToTagGroups','','2015-10-07 00:58:24',NULL),(245,'addCustomDataToSession','','2015-10-07 00:58:25',NULL),(246,'getCustomDataFromSession','','2015-10-07 00:58:25',NULL),(247,'com.konakartadmin.bl.AdminOrderBatchMgr.productAvailabilityNotificationBatch','','2015-10-07 00:58:25',NULL),(248,'com.konakartadmin.bl.AdminOrderBatchMgr.unpaidOrderNotificationBatch','','2015-10-07 00:58:25',NULL),(249,'com.konakartadmin.bl.AdminCustomerBatchMgr.removeExpiredCustomersBatch','','2015-10-07 00:58:25',NULL),(250,'getProductsToStores','','2015-10-07 00:58:25',NULL),(251,'insertProductsToStores','','2015-10-07 00:58:25',NULL),(252,'removeProductsToStores','','2015-10-07 00:58:25',NULL),(253,'getCategoriesToTagGroups','','2015-10-07 00:58:25',NULL),(254,'insertOrder','','2015-10-07 00:58:25',NULL),(255,'forceRegisterCustomer','','2015-10-07 00:58:25',NULL),(256,'getWishLists','','2015-10-07 00:58:26',NULL),(257,'insertWishList','','2015-10-07 00:58:26',NULL),(258,'deleteWishList','','2015-10-07 00:58:26',NULL),(259,'insertWishListItem','','2015-10-07 00:58:26',NULL),(260,'deleteWishListItem','','2015-10-07 00:58:26',NULL),(261,'insertCustomerTag','','2015-10-07 00:58:26',NULL),(262,'getCustomerTag','','2015-10-07 00:58:26',NULL),(263,'deleteCustomerTag','','2015-10-07 00:58:26',NULL),(264,'updateCustomerTag','','2015-10-07 00:58:26',NULL),(265,'getCustomerTags','','2015-10-07 00:58:26',NULL),(266,'deleteCustomerTagForCustomer','','2015-10-07 00:58:26',NULL),(267,'getCustomerTagForCustomer','','2015-10-07 00:58:26',NULL),(268,'getCustomerTagForName','','2015-10-07 00:58:26',NULL),(269,'getCustomerTagsForCustomer','','2015-10-07 00:58:26',NULL),(270,'insertCustomerTagForCustomer','','2015-10-07 00:58:26',NULL),(271,'getAddressById','','2015-10-07 00:58:26',NULL),(272,'getAddresses','','2015-10-07 00:58:26',NULL),(273,'insertAddress','','2015-10-07 00:58:26',NULL),(274,'updateAddress','','2015-10-07 00:58:26',NULL),(275,'deleteAddress','','2015-10-07 00:58:26',NULL),(276,'insertExpression','','2015-10-07 00:58:26',NULL),(277,'updateExpression','','2015-10-07 00:58:26',NULL),(278,'deleteExpression','','2015-10-07 00:58:26',NULL),(279,'getExpression','','2015-10-07 00:58:26',NULL),(280,'getExpressions','','2015-10-07 00:58:26',NULL),(281,'getExpressionVariable','','2015-10-07 00:58:26',NULL),(282,'getExpressionVariablesForExpression','','2015-10-07 00:58:26',NULL),(283,'getExpressionForName','','2015-10-07 00:58:26',NULL),(284,'insertExpressionVariables','','2015-10-07 00:58:26',NULL),(285,'updateExpressionVariable','','2015-10-07 00:58:26',NULL),(286,'deleteExpressionVariable','','2015-10-07 00:58:26',NULL),(287,'deleteExpressionVariablesForExpression','','2015-10-07 00:58:26',NULL),(288,'addExpressionsToPromotion','','2015-10-07 00:58:26',NULL),(289,'getExpressionsPerPromotion','','2015-10-07 00:58:26',NULL),(290,'removeExpressionsFromPromotion','','2015-10-07 00:58:26',NULL),(291,'evaluateExpression','','2015-10-07 00:58:27',NULL),(292,'addGiftCertificatesToPromotion','','2015-10-07 00:58:27',NULL),(293,'getGiftCertificatesPerPromotion','','2015-10-07 00:58:27',NULL),(294,'removeGiftCertificatesFromPromotion','','2015-10-07 00:58:27',NULL),(295,'searchDigitalDownloads','','2015-10-07 00:58:27',NULL),(296,'importDigitalDownload','','2015-10-07 00:58:27',NULL),(297,'getRewardPoints','','2015-10-07 00:58:28',NULL),(298,'deletePoints','','2015-10-07 00:58:28',NULL),(299,'importDigitalDownload','','2015-10-07 00:58:28',NULL),(300,'pointsAvailable','','2015-10-07 00:58:28',NULL),(301,'getPdf','','2015-10-07 00:58:28',NULL),(302,'getFileContentsAsByteArray','','2015-10-07 00:58:28',NULL),(303,'getLanguageIdForLocale','','2015-10-07 00:58:28',NULL),(304,'com.konakartadmin.bl.AdminOrderBatchMgr.createInvoicesBatch','','2015-10-07 00:58:28',NULL),(305,'checkDataIntegrity','','2015-10-07 00:58:32',NULL),(306,'exportOrder','','2015-10-07 00:58:32',NULL),(307,'getReviews','','2015-10-07 00:58:32',NULL),(308,'searchMsg','','2015-10-07 00:58:33',NULL),(309,'getMsgValue','','2015-10-07 00:58:33',NULL),(310,'deleteMsg','','2015-10-07 00:58:33',NULL),(311,'insertMsg','','2015-10-07 00:58:33',NULL),(312,'updateMsg','','2015-10-07 00:58:33',NULL),(313,'importMsgs','','2015-10-07 00:58:33',NULL),(314,'exportMsgs','','2015-10-07 00:58:33',NULL),(315,'getLanguageById','','2015-10-07 00:58:33',NULL),(316,'addAddressesToProduct','','2015-10-07 00:58:33',NULL),(317,'removeAddressFromProduct','','2015-10-07 00:58:33',NULL),(318,'getProductCountPerAddress','','2015-10-07 00:58:33',NULL),(319,'getManufacturers','','2015-10-07 00:58:33',NULL),(320,'getProductOptions','','2015-10-07 00:58:33',NULL),(321,'deleteProdAttrDesc','','2015-10-07 00:58:33',NULL),(322,'deleteProdAttrTemplate','','2015-10-07 00:58:33',NULL),(323,'getProdAttrDesc','','2015-10-07 00:58:33',NULL),(324,'getProdAttrTemplate','','2015-10-07 00:58:33',NULL),(325,'getProdAttrDescs','','2015-10-07 00:58:33',NULL),(326,'getProdAttrDescsForTemplate','','2015-10-07 00:58:33',NULL),(327,'getProdAttrTemplates','','2015-10-07 00:58:33',NULL),(328,'insertProdAttrDesc','','2015-10-07 00:58:33',NULL),(329,'insertProdAttrTemplate','','2015-10-07 00:58:33',NULL),(330,'updateProdAttrDesc','','2015-10-07 00:58:33',NULL),(331,'updateProdAttrTemplate','','2015-10-07 00:58:33',NULL),(332,'removeProdAttrDescsFromTemplate','','2015-10-07 00:58:33',NULL),(333,'addProdAttrDescsToTemplate','','2015-10-07 00:58:33',NULL),(334,'getTemplateCountPerProdAttrDesc','','2015-10-07 00:58:33',NULL),(335,'callPaymentModule','','2015-10-07 00:58:34',NULL),(336,'doesProductExist','','2015-10-07 00:58:35',NULL),(337,'getProductCountPerProdAttrDesc','','2015-10-07 00:58:36',NULL),(338,'updateProductsUsingProdAttrDesc','','2015-10-07 00:58:36',NULL),(339,'updateProductsUsingTemplates','','2015-10-07 00:58:36',NULL),(340,'insertMiscItemType','','2015-10-07 00:58:36',NULL),(341,'updateMiscItemType','','2015-10-07 00:58:36',NULL),(342,'deleteMiscItemType','','2015-10-07 00:58:36',NULL),(343,'getMiscItemTypes','','2015-10-07 00:58:36',NULL),(344,'insertMiscItems','','2015-10-07 00:58:36',NULL),(345,'updateMiscItems','','2015-10-07 00:58:36',NULL),(346,'deleteMiscItem','','2015-10-07 00:58:36',NULL),(347,'getMiscItems','','2015-10-07 00:58:36',NULL),(348,'copyProductToStore','','2015-10-07 00:58:37',NULL),(349,'getProductsToSynchronize','','2015-10-07 00:58:37',NULL),(350,'getLanguageForLocale','','2015-10-07 00:58:37',NULL),(351,'getConfigData','','2015-10-07 00:58:37',NULL),(352,'updateOrder','','2015-10-07 00:58:37',NULL),(353,'getKonaKartAdminVersion','','2015-10-07 00:58:37',NULL),(354,'editProductWithOptions','','2015-10-07 00:58:38',NULL),(355,'insertProductWithOptions','','2015-10-07 00:58:38',NULL),(356,'insertConfigData','','2015-10-07 00:58:41',NULL),(357,'updateConfigData','','2015-10-07 00:58:41',NULL),(358,'removeConfigData','','2015-10-07 00:58:41',NULL),(359,'scaleImage','','2015-10-07 00:58:41',NULL),(360,'getJobStatus','','2015-10-07 00:58:42',NULL),(361,'runBatchJob','','2015-10-07 00:58:42',NULL),(362,'insertProductCategory','','2015-10-07 00:58:42',NULL),(363,'com.konakartadmin.bl.AdminCustomerBatchMgr.countCustomersBatch','','2015-10-07 00:58:43',NULL),(364,'tailFile','','2015-10-07 00:58:43',NULL),(365,'copyFile','','2015-10-07 00:58:44',NULL),(366,'editOrderRefund','','2015-10-07 00:58:44',NULL),(367,'insertOrderRefund','','2015-10-07 00:58:44',NULL),(368,'deleteOrderRefund','','2015-10-07 00:58:44',NULL),(370,'insertKKEvent','','2015-10-07 00:58:44',NULL),(371,'getKKEvents','','2015-10-07 00:58:44',NULL),(372,'deleteKKEvents','','2015-10-07 00:58:44',NULL),(373,'updateShipper','','2015-10-07 00:58:44',NULL),(374,'insertShipper','','2015-10-07 00:58:44',NULL),(375,'getShippers','','2015-10-07 00:58:44',NULL),(376,'getShipper','','2015-10-07 00:58:44',NULL),(377,'deleteShipper','','2015-10-07 00:58:44',NULL),(378,'getOrderShipments','','2015-10-07 00:58:45',NULL),(379,'insertOrderShipment','','2015-10-07 00:58:45',NULL),(380,'editOrderShipment','','2015-10-07 00:58:45',NULL),(381,'deleteOrderShipment','','2015-10-07 00:58:45',NULL),(382,'insertMiscPrices','','2015-10-07 00:58:45',NULL),(383,'deleteMiscPrices','','2015-10-07 00:58:45',NULL),(384,'getMiscPrices','','2015-10-07 00:58:45',NULL),(385,'updateMiscPrices','','2015-10-07 00:58:45',NULL),(386,'changeUserPassword','','2015-10-07 00:58:45',NULL),(387,'checkPasswordValidity','','2015-10-07 00:58:45',NULL),(388,'addImage','','2015-10-07 00:58:46',NULL),(389,'removeImage','','2015-10-07 00:58:46',NULL),(390,'removeProductFromCatalog','','2015-10-07 00:58:46',NULL),(391,'getRMACode','','2015-10-07 00:58:46',NULL),(392,'getContents','','2015-10-07 00:58:48',NULL),(393,'getContent','','2015-10-07 00:58:48',NULL),(394,'insertContent','','2015-10-07 00:58:48',NULL),(395,'deleteContent','','2015-10-07 00:58:48',NULL),(396,'updateContent','','2015-10-07 00:58:48',NULL),(397,'getContentTypes','','2015-10-07 00:58:48',NULL),(398,'getContentType','','2015-10-07 00:58:48',NULL),(399,'insertContentType','','2015-10-07 00:58:48',NULL),(400,'deleteContentType','','2015-10-07 00:58:48',NULL),(401,'updateContentType','','2015-10-07 00:58:48',NULL),(402,'addPoints','','2015-10-07 00:58:50',NULL),(403,'cloneStore','','2015-10-07 00:58:50',NULL),(404,'custom','','2015-10-07 00:58:50',NULL),(405,'deleteBooking','','2015-10-07 00:58:50',NULL),(406,'deleteCatalog','','2015-10-07 00:58:50',NULL),(407,'deletePaymentSchedule','','2015-10-07 00:58:50',NULL),(408,'deleteSubscription','','2015-10-07 00:58:50',NULL),(409,'doesMallStoreExist','','2015-10-07 00:58:50',NULL),(410,'execute','','2015-10-07 00:58:50',NULL),(411,'getAddressFormats','','2015-10-07 00:58:50',NULL),(412,'getAllAddressFormats','','2015-10-07 00:58:50',NULL),(413,'getAllCountriesFull','','2015-10-07 00:58:50',NULL),(414,'getAllGeoZones','','2015-10-07 00:58:50',NULL),(415,'getAllLanguages','','2015-10-07 00:58:50',NULL),(416,'getAllManufacturers','','2015-10-07 00:58:50',NULL),(417,'getAllOrderStatuses','','2015-10-07 00:58:50',NULL),(418,'getAllProductOptions','','2015-10-07 00:58:50',NULL),(419,'getAllTaxClassesFull','','2015-10-07 00:58:50',NULL),(420,'getAllTaxRates','','2015-10-07 00:58:50',NULL),(421,'getBookings','','2015-10-07 00:58:50',NULL),(422,'getCatalogById','','2015-10-07 00:58:50',NULL),(423,'getCatalogs','','2015-10-07 00:58:50',NULL),(424,'getCategory','','2015-10-07 00:58:50',NULL),(425,'getCategoryTree','','2015-10-07 00:58:50',NULL),(426,'getCountries','','2015-10-07 00:58:50',NULL),(427,'getCouponCode','','2015-10-07 00:58:50',NULL),(428,'getCurrencies','','2015-10-07 00:58:50',NULL),(429,'getCurrency','','2015-10-07 00:58:50',NULL),(430,'getCustomValidatorSet','','2015-10-07 00:58:50',NULL),(431,'getDefaultCurrency','','2015-10-07 00:58:50',NULL),(432,'getDefaultLanguage','','2015-10-07 00:58:50',NULL),(433,'getEngConf','','2015-10-07 00:58:50',NULL),(434,'getFiles','','2015-10-07 00:58:50',NULL),(435,'getGeoZones','','2015-10-07 00:58:50',NULL),(436,'getHelpMsg','','2015-10-07 00:58:50',NULL),(437,'getKonakartAdminPropsFilePath','','2015-10-07 00:58:50',NULL),(438,'getLanguageByCode','','2015-10-07 00:58:50',NULL),(439,'getLanguages','','2015-10-07 00:58:50',NULL),(440,'getManufacturer','','2015-10-07 00:58:50',NULL),(441,'getMsgs','','2015-10-07 00:58:50',NULL),(442,'getOrderRefunds','','2015-10-07 00:58:50',NULL),(443,'getOrderStatusNames','','2015-10-07 00:58:50',NULL),(444,'getPaymentSchedule','','2015-10-07 00:58:50',NULL),(445,'getPaymentSchedules','','2015-10-07 00:58:50',NULL),(446,'getProdAttrDescsForTemplates','','2015-10-07 00:58:50',NULL),(447,'getProductAvailabilityWithOptions','','2015-10-07 00:58:50',NULL),(448,'getProductCountPerTemplate','','2015-10-07 00:58:50',NULL),(449,'getProductOptionValuesPerOption','','2015-10-07 00:58:50',NULL),(450,'getProductQuantityWithOptions','','2015-10-07 00:58:50',NULL),(451,'getProductWithOptions','','2015-10-07 00:58:50',NULL),(452,'getRelatedProductsWithOptions','','2015-10-07 00:58:50',NULL),(453,'getSearchRules','','2015-10-07 00:58:50',NULL),(454,'getStores','','2015-10-07 00:58:50',NULL),(455,'getSubZones','','2015-10-07 00:58:50',NULL),(456,'getSubscription','','2015-10-07 00:58:50',NULL),(457,'getSubscriptions','','2015-10-07 00:58:50',NULL),(458,'getTaxClasses','','2015-10-07 00:58:50',NULL),(459,'getTaxRates','','2015-10-07 00:58:50',NULL),(460,'getTopLevelCategories','','2015-10-07 00:58:50',NULL),(461,'getZones','','2015-10-07 00:58:50',NULL),(462,'getZonesById','','2015-10-07 00:58:50',NULL),(463,'insertBooking','','2015-10-07 00:58:50',NULL),(464,'insertCatalog','','2015-10-07 00:58:50',NULL),(465,'insertCustomerGroups','','2015-10-07 00:58:50',NULL),(466,'insertPaymentSchedule','','2015-10-07 00:58:50',NULL),(467,'insertSubscription','','2015-10-07 00:58:50',NULL),(468,'insertTagGroup','','2015-10-07 00:58:50',NULL),(469,'insertTagGroups','','2015-10-07 00:58:50',NULL),(470,'logMsg','','2015-10-07 00:58:50',NULL),(471,'login','','2015-10-07 00:58:50',NULL),(472,'logout','','2015-10-07 00:58:50',NULL),(473,'resetCustomerPasswordSpecifyingEmail','','2015-10-07 00:58:50',NULL),(474,'searchForProductsWithOptions','','2015-10-07 00:58:50',NULL),(475,'sendTemplateEmailToCustomers','','2015-10-07 00:58:50',NULL),(476,'sendTemplateEmailToCustomers1WithOptions','','2015-10-07 00:58:50',NULL),(477,'sendTemplateEmailToCustomersWithOptions','','2015-10-07 00:58:50',NULL),(478,'setConfigurationValue','','2015-10-07 00:58:50',NULL),(479,'setCreditCardDetailsOnOrder','','2015-10-07 00:58:50',NULL),(480,'setCustomerPassword','','2015-10-07 00:58:50',NULL),(481,'setEndpoint','','2015-10-07 00:58:50',NULL),(482,'setProductAvailabilityWithOptions','','2015-10-07 00:58:50',NULL),(483,'setProductQuantityWithOptions','','2015-10-07 00:58:50',NULL),(484,'testDB','','2015-10-07 00:58:50',NULL),(485,'updateBooking','','2015-10-07 00:58:50',NULL),(486,'updateCatalog','','2015-10-07 00:58:50',NULL),(487,'updatePaymentSchedule','','2015-10-07 00:58:50',NULL),(488,'updateSubscription','','2015-10-07 00:58:50',NULL),(489,'createMailingList','','2015-10-07 00:58:51',NULL),(490,'addCatalogRules','','2015-10-07 00:58:52',NULL),(491,'createCatalogPricesFromRules','','2015-10-07 00:58:52',NULL),(492,'getCatalogRules','','2015-10-07 00:58:52',NULL),(493,'getFilters','','2015-10-07 00:58:52',NULL),(494,'getFiltersForCustomer','','2015-10-07 00:58:52',NULL),(495,'getFilter','','2015-10-07 00:58:52',NULL),(496,'insertFilter','','2015-10-07 00:58:52',NULL),(497,'updateFilter','','2015-10-07 00:58:52',NULL),(498,'deleteFilter','','2015-10-07 00:58:52',NULL),(499,'deleteFiltersForCustomer','','2015-10-07 00:58:52',NULL),(500,'deletePromotionWithOptions','','2015-10-07 00:58:52',NULL);
/*!40000 ALTER TABLE `kk_api_call` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_audit`
--

DROP TABLE IF EXISTS `kk_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_audit` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `audit_action` int(11) NOT NULL,
  `api_method_name` varchar(128) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_to_string` text,
  `date_added` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`audit_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_audit`
--

LOCK TABLES `kk_audit` WRITE;
/*!40000 ALTER TABLE `kk_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_bookable_prod`
--

DROP TABLE IF EXISTS `kk_bookable_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_bookable_prod` (
  `products_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `max_num_bookings` int(11) DEFAULT '-1',
  `bookings_made` int(11) DEFAULT '0',
  `monday` varchar(128) DEFAULT NULL,
  `tuesday` varchar(128) DEFAULT NULL,
  `wednesday` varchar(128) DEFAULT NULL,
  `thursday` varchar(128) DEFAULT NULL,
  `friday` varchar(128) DEFAULT NULL,
  `saturday` varchar(128) DEFAULT NULL,
  `sunday` varchar(128) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_bookable_prod`
--

LOCK TABLES `kk_bookable_prod` WRITE;
/*!40000 ALTER TABLE `kk_bookable_prod` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_bookable_prod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_booking`
--

DROP TABLE IF EXISTS `kk_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `products_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT '0',
  `customers_id` int(11) DEFAULT '0',
  `orders_id` int(11) DEFAULT '0',
  `orders_products_id` int(11) DEFAULT '0',
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_booking`
--

LOCK TABLES `kk_booking` WRITE;
/*!40000 ALTER TABLE `kk_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_catalog`
--

DROP TABLE IF EXISTS `kk_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_catalog` (
  `catalog_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `cat_name` varchar(32) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `use_cat_prices` int(11) DEFAULT NULL,
  `use_cat_quantities` int(11) DEFAULT NULL,
  `last_creation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`catalog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_catalog`
--

LOCK TABLES `kk_catalog` WRITE;
/*!40000 ALTER TABLE `kk_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_catalog_quantity`
--

DROP TABLE IF EXISTS `kk_catalog_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_catalog_quantity` (
  `store_id` varchar(64) DEFAULT NULL,
  `catalog_id` varchar(32) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options` varchar(128) NOT NULL,
  `products_quantity` int(11) NOT NULL,
  `products_date_available` datetime DEFAULT NULL,
  PRIMARY KEY (`catalog_id`,`products_id`,`products_options`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_catalog_quantity`
--

LOCK TABLES `kk_catalog_quantity` WRITE;
/*!40000 ALTER TABLE `kk_catalog_quantity` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_catalog_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_catalog_to_category`
--

DROP TABLE IF EXISTS `kk_catalog_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_catalog_to_category` (
  `catalog_key` varchar(32) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `price_adjustment` decimal(15,4) DEFAULT NULL,
  `fixed_price` decimal(15,4) DEFAULT NULL,
  `exclude` int(1) DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`catalog_key`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_catalog_to_category`
--

LOCK TABLES `kk_catalog_to_category` WRITE;
/*!40000 ALTER TABLE `kk_catalog_to_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_catalog_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_category_to_tag_group`
--

DROP TABLE IF EXISTS `kk_category_to_tag_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_category_to_tag_group` (
  `categories_id` int(11) NOT NULL,
  `tag_group_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`categories_id`,`tag_group_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_category_to_tag_group`
--

LOCK TABLES `kk_category_to_tag_group` WRITE;
/*!40000 ALTER TABLE `kk_category_to_tag_group` DISABLE KEYS */;
INSERT INTO `kk_category_to_tag_group` VALUES (10,1,NULL,0),(10,2,NULL,0);
/*!40000 ALTER TABLE `kk_category_to_tag_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_config`
--

DROP TABLE IF EXISTS `kk_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_config` (
  `kk_config_id` int(11) NOT NULL AUTO_INCREMENT,
  `kk_config_key` varchar(16) DEFAULT NULL,
  `kk_config_value` varchar(256) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`kk_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_config`
--

LOCK TABLES `kk_config` WRITE;
/*!40000 ALTER TABLE `kk_config` DISABLE KEYS */;
INSERT INTO `kk_config` VALUES (1,'HISTORY','8.0.0.0 I','2015-10-07 00:58:50'),(2,'VERSION','8.0.0.0 MySQL','2015-10-07 00:58:50');
/*!40000 ALTER TABLE `kk_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_content`
--

DROP TABLE IF EXISTS `kk_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL DEFAULT '0',
  `content_type_id` int(11) NOT NULL DEFAULT '0',
  `object_id` int(11) DEFAULT NULL,
  `obj_type_id` int(11) DEFAULT NULL,
  `click_url` varchar(256) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `enabled` int(1) NOT NULL DEFAULT '0',
  `expression_id` int(11) NOT NULL DEFAULT '0',
  `search_key` varchar(128) DEFAULT NULL,
  `custom1` varchar(32) DEFAULT NULL,
  `custom2` varchar(32) DEFAULT NULL,
  `custom3` varchar(32) DEFAULT NULL,
  `custom4` varchar(32) DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content_id` (`content_id`),
  KEY `idx_search_key` (`search_key`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_content`
--

LOCK TABLES `kk_content` WRITE;
/*!40000 ALTER TABLE `kk_content` DISABLE KEYS */;
INSERT INTO `kk_content` VALUES (1,1,3,31,1,'SelectProd.action?prodId={OBJ_ID}',NULL,NULL,1,0,'Computer Peripherals',NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(2,2,4,27,1,'SelectProd.action?prodId={OBJ_ID}',NULL,NULL,1,0,'Computer Peripherals',NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(3,3,4,0,0,'',NULL,NULL,1,0,'Computer Peripherals',NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(4,4,3,63,1,'SelectProd.action?prodId={OBJ_ID}',NULL,NULL,1,0,'Games',NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(5,5,4,21,1,'SelectProd.action?prodId={OBJ_ID}',NULL,NULL,1,0,'Games',NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(6,6,4,0,0,'',NULL,NULL,1,0,'Games',NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(7,7,3,20,1,'SelectProd.action?prodId={OBJ_ID}',NULL,NULL,1,0,'DVD Movies',NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(8,8,4,11,1,'SelectProd.action?prodId={OBJ_ID}',NULL,NULL,1,0,'DVD Movies',NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(9,9,4,0,0,'',NULL,NULL,1,0,'DVD Movies',NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(10,10,3,34,1,'SelectProd.action?prodId={OBJ_ID}',NULL,NULL,1,0,'Electronics',NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(11,11,4,0,0,'',NULL,NULL,1,0,'Electronics',NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(12,12,4,0,0,'',NULL,NULL,1,0,'Electronics',NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(13,13,3,33,1,'SelectProd.action?prodId={OBJ_ID}',NULL,NULL,1,0,'Home & Garden',NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(14,14,4,39,1,'SelectProd.action?prodId={OBJ_ID}',NULL,NULL,1,0,'Home & Garden',NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(15,15,4,39,1,'',NULL,NULL,1,0,'Home & Garden',NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(16,16,1,34,1,'SelectProd.action?prodId={OBJ_ID}',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(17,17,1,33,1,'SelectProd.action?prodId={OBJ_ID}',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(18,18,2,0,0,'ShowSpecials.action',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(19,19,2,23,2,'SelectCat.action?catId={OBJ_ID}',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(20,20,2,24,2,'SelectCat.action?catId={OBJ_ID}',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:47','2015-10-07 00:58:47',NULL),(21,21,2,32,1,'SelectProd.action?prodId={OBJ_ID}',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:48','2015-10-07 00:58:48',NULL),(22,22,2,35,1,'SelectProd.action?prodId={OBJ_ID}',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:48','2015-10-07 00:58:48',NULL),(23,23,5,0,0,'',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:48','2015-10-07 00:58:48',NULL),(24,24,6,0,0,'',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:48','2015-10-07 00:58:48',NULL),(25,25,7,0,0,'',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:48','2015-10-07 00:58:48',NULL),(26,26,8,0,0,'',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:48','2015-10-07 00:58:48',NULL),(27,27,9,0,0,'',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:48','2015-10-07 00:58:48',NULL),(28,28,10,0,0,'',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:48','2015-10-07 00:58:48',NULL),(29,29,11,0,0,'',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:48','2015-10-07 00:58:48',NULL),(30,30,12,0,0,'',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:48','2015-10-07 00:58:48',NULL),(31,31,13,-1,-1,'Welcome.action',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,'2015-10-07 00:58:51','2015-10-07 00:58:51',NULL);
/*!40000 ALTER TABLE `kk_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_content_desc`
--

DROP TABLE IF EXISTS `kk_content_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_content_desc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name1` varchar(256) DEFAULT NULL,
  `name2` varchar(256) DEFAULT NULL,
  `name3` varchar(256) DEFAULT NULL,
  `name4` varchar(256) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `content` mediumtext,
  `custom1` varchar(32) DEFAULT NULL,
  `custom2` varchar(32) DEFAULT NULL,
  `custom3` varchar(32) DEFAULT NULL,
  `custom4` varchar(32) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content_id` (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_content_desc`
--

LOCK TABLES `kk_content_desc` WRITE;
/*!40000 ALTER TABLE `kk_content_desc` DISABLE KEYS */;
INSERT INTO `kk_content_desc` VALUES (1,1,1,'logitech.png','logitech-medium.png','logitech-small.png',NULL,'Logitech Keyboard',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(2,1,2,'logitech.png','logitech-medium.png','logitech-small.png',NULL,'Logitech Keyboard',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(3,1,3,'logitech.png','logitech-medium.png','logitech-small.png',NULL,'Logitech Keyboard',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(4,1,4,'logitech.png','logitech-medium.png','logitech-small.png',NULL,'Logitech Keyboard',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(5,2,1,'hp-photosmart.png','hp-photosmart-medium.png','hp-photosmart-small.png',NULL,'HP Photosmart 5510',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(6,2,2,'hp-photosmart.png','hp-photosmart-medium.png','hp-photosmart-small.png',NULL,'HP Photosmart 5510',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(7,2,3,'hp-photosmart.png','hp-photosmart-medium.png','hp-photosmart-small.png',NULL,'HP Photosmart 5510',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(8,2,4,'hp-photosmart.png','hp-photosmart-medium.png','hp-photosmart-small.png',NULL,'HP Photosmart 5510',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(9,3,1,'deals-of-the-week.png','deals-of-the-week-medium.png','deals-of-the-week-small.png',NULL,'Deals of the Week',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(10,3,2,'deals-of-the-week.png','deals-of-the-week-medium.png','deals-of-the-week-small.png',NULL,'Deals of the Week',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(11,3,3,'deals-of-the-week.png','deals-of-the-week-medium.png','deals-of-the-week-small.png',NULL,'Deals of the Week',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(12,3,4,'deals-of-the-week.png','deals-of-the-week-medium.png','deals-of-the-week-small.png',NULL,'Deals of the Week',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(13,4,1,'black-ops-2.png','black-ops-2-medium.png','black-ops-2-small.png',NULL,'Black Ops 2',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(14,4,2,'black-ops-2.png','black-ops-2-medium.png','black-ops-2-small.png',NULL,'Black Ops 2',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(15,4,3,'black-ops-2.png','black-ops-2-medium.png','black-ops-2-small.png',NULL,'Black Ops 2',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(16,4,4,'black-ops-2.png','black-ops-2-medium.png','black-ops-2-small.png',NULL,'Black Ops 2',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(17,5,1,'swat-3.png','swat-3-medium.png','swat-3-small.png',NULL,'Swat-3',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(18,5,2,'swat-3.png','swat-3-medium.png','swat-3-small.png',NULL,'Swat-3',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(19,5,3,'swat-3.png','swat-3-medium.png','swat-3-small.png',NULL,'Swat-3',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(20,5,4,'swat-3.png','swat-3-medium.png','swat-3-small.png',NULL,'Swat-3',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(21,6,1,'winter-deals.png','winter-deals-medium.png','winter-deals-small.png',NULL,'Winter Deals',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(22,6,2,'winter-deals.png','winter-deals-medium.png','winter-deals-small.png',NULL,'Winter Deals',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(23,6,3,'winter-deals.png','winter-deals-medium.png','winter-deals-small.png',NULL,'Winter Deals',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(24,6,4,'winter-deals.png','winter-deals-medium.png','winter-deals-small.png',NULL,'Winter Deals',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(25,7,1,'dark-knight.png','dark-knight-medium.png','dark-knight-small.png',NULL,'Dark Night',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(26,7,2,'dark-knight.png','dark-knight-medium.png','dark-knight-small.png',NULL,'Dark Night',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(27,7,3,'dark-knight.png','dark-knight-medium.png','dark-knight-small.png',NULL,'Dark Night',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(28,7,4,'dark-knight.png','dark-knight-medium.png','dark-knight-small.png',NULL,'Dark Night',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(29,8,1,'harry-potter.png','harry-potter-medium.png','harry-potter-small.png',NULL,'Harry Potter',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(30,8,2,'harry-potter.png','harry-potter-medium.png','harry-potter-small.png',NULL,'Harry Potter',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(31,8,3,'harry-potter.png','harry-potter-medium.png','harry-potter-small.png',NULL,'Harry Potter',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(32,8,4,'harry-potter.png','harry-potter-medium.png','harry-potter-small.png',NULL,'Harry Potter',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(33,9,1,'movie-deals.png','movie-deals-medium.png','movie-deals-small.png',NULL,'Movie Deals',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(34,9,2,'movie-deals.png','movie-deals-medium.png','movie-deals-small.png',NULL,'Movie Deals',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(35,9,3,'movie-deals.png','movie-deals-medium.png','movie-deals-small.png',NULL,'Movie Deals',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(36,9,4,'movie-deals.png','movie-deals-medium.png','movie-deals-small.png',NULL,'Movie Deals',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(37,10,1,'kindle-fire-hd.jpg','kindle-fire-hd-medium.jpg','kindle-fire-hd-small.jpg',NULL,'Kindle Fire',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(38,10,2,'kindle-fire-hd.jpg','kindle-fire-hd-medium.jpg','kindle-fire-hd-small.jpg',NULL,'Kindle Fire',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(39,10,3,'kindle-fire-hd.jpg','kindle-fire-hd-medium.jpg','kindle-fire-hd-small.jpg',NULL,'Kindle Fire',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(40,10,4,'kindle-fire-hd.jpg','kindle-fire-hd-medium.jpg','kindle-fire-hd-small.jpg',NULL,'Kindle Fire',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(41,11,1,'xbox.png','xbox-medium.png','xbox-small.png',NULL,'Xbox',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(42,11,2,'xbox.png','xbox-medium.png','xbox-small.png',NULL,'Xbox',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(43,11,3,'xbox.png','xbox-medium.png','xbox-small.png',NULL,'Xbox',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(44,11,4,'xbox.png','xbox-medium.png','xbox-small.png',NULL,'Xbox',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(45,12,1,'electronics-sale.png','electronics-sale-medium.png','electronics-sale-small.png',NULL,'Electronics Sale',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(46,12,2,'electronics-sale.png','electronics-sale-medium.png','electronics-sale-small.png',NULL,'Electronics Sale',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(47,12,3,'electronics-sale.png','electronics-sale-medium.png','electronics-sale-small.png',NULL,'Electronics Sale',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(48,12,4,'electronics-sale.png','electronics-sale-medium.png','electronics-sale-small.png',NULL,'Electronics Sale',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(49,13,1,'delonghi.png','delonghi-medium.png','delonghi-small.png',NULL,'DeLonghi Coffee Maker',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(50,13,2,'delonghi.png','delonghi-medium.png','delonghi-small.png',NULL,'DeLonghi Coffee Maker',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(51,13,3,'delonghi.png','delonghi-medium.png','delonghi-small.png',NULL,'DeLonghi Coffee Maker',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(52,13,4,'delonghi.png','delonghi-medium.png','delonghi-small.png',NULL,'DeLonghi Coffee Maker',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(53,14,1,'rotak-40.png','rotak-40-medium.png','rotak-40-small.png',NULL,'Rotak 40',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(54,14,2,'rotak-40.png','rotak-40-medium.png','rotak-40-small.png',NULL,'Rotak 40',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(55,14,3,'rotak-40.png','rotak-40-medium.png','rotak-40-small.png',NULL,'Rotak 40',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(56,14,4,'rotak-40.png','rotak-40-medium.png','rotak-40-small.png',NULL,'Rotak 40',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(57,15,1,'gifts-for-the-home.png','gifts-for-the-home-medium.png','gifts-for-the-home-small.png',NULL,'Gifts for the home',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(58,15,2,'gifts-for-the-home.png','gifts-for-the-home-medium.png','gifts-for-the-home-small.png',NULL,'Gifts for the home',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(59,15,3,'gifts-for-the-home.png','gifts-for-the-home-medium.png','gifts-for-the-home-small.png',NULL,'Gifts for the home',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(60,15,4,'gifts-for-the-home.png','gifts-for-the-home-medium.png','gifts-for-the-home-small.png',NULL,'Gifts for the home',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(61,16,1,'home_kindle-fire-hd.jpg','home_kindle-fire-hd-medium.jpg','home_kindle-fire-hd-small.jpg',NULL,'Kindle Fire',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(62,16,2,'home_kindle-fire-hd.jpg','home_kindle-fire-hd-medium.jpg','home_kindle-fire-hd-small.jpg',NULL,'Kindle Fire',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(63,16,3,'home_kindle-fire-hd.jpg','home_kindle-fire-hd-medium.jpg','home_kindle-fire-hd-small.jpg',NULL,'Kindle Fire',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(64,16,4,'home_kindle-fire-hd.jpg','home_kindle-fire-hd-medium.jpg','home_kindle-fire-hd-small.jpg',NULL,'Kindle Fire',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(65,17,1,'home_delonghi.jpg','home_delonghi-medium.jpg','home_delonghi-small.jpg',NULL,'DeLonghi Coffee Maker',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(66,17,2,'home_delonghi.jpg','home_delonghi-medium.jpg','home_delonghi-small.jpg',NULL,'DeLonghi Coffee Maker',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(67,17,3,'home_delonghi.jpg','home_delonghi-medium.jpg','home_delonghi-small.jpg',NULL,'DeLonghi Coffee Maker',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(68,17,4,'home_delonghi.jpg','home_delonghi-medium.jpg','home_delonghi-small.jpg',NULL,'DeLonghi Coffee Maker',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(69,18,1,'home_electronics-sale.jpg',NULL,NULL,NULL,'Electronics Sale',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(70,18,2,'home_electronics-sale.jpg',NULL,NULL,NULL,'Electronics Sale',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(71,18,3,'home_electronics-sale.jpg',NULL,NULL,NULL,'Electronics Sale',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(72,18,4,'home_electronics-sale.jpg',NULL,NULL,NULL,'Electronics Sale',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(73,19,1,'home_electronics-sale-2.jpg',NULL,NULL,NULL,'Electronics Sale',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(74,19,2,'home_electronics-sale-2.jpg',NULL,NULL,NULL,'Electronics Sale',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(75,19,3,'home_electronics-sale-2.jpg',NULL,NULL,NULL,'Electronics Sale',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(76,19,4,'home_electronics-sale-2.jpg',NULL,NULL,NULL,'Electronics Sale',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(77,20,1,'home_gifts-for-the-home.jpg',NULL,NULL,NULL,'Gifts for the home',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:47',NULL),(78,20,2,'home_gifts-for-the-home.jpg',NULL,NULL,NULL,'Gifts for the home',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(79,20,3,'home_gifts-for-the-home.jpg',NULL,NULL,NULL,'Gifts for the home',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(80,20,4,'home_gifts-for-the-home.jpg',NULL,NULL,NULL,'Gifts for the home',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(81,21,1,'home_windows-8.jpg',NULL,NULL,NULL,'Windows-8',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(82,21,2,'home_windows-8.jpg',NULL,NULL,NULL,'Windows-8',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(83,21,3,'home_windows-8.jpg',NULL,NULL,NULL,'Windows-8',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(84,21,4,'home_windows-8.jpg',NULL,NULL,NULL,'Windows-8',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(85,22,1,'home_iphone-5.jpg',NULL,NULL,NULL,'iPhone 5',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(86,22,2,'home_iphone-5.jpg',NULL,NULL,NULL,'iPhone 5',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(87,22,3,'home_iphone-5.jpg',NULL,NULL,NULL,'iPhone 5',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(88,22,4,'home_iphone-5.jpg',NULL,NULL,NULL,'iPhone 5',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(89,23,1,NULL,NULL,NULL,NULL,NULL,'Add your About Us information here.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(90,23,2,NULL,NULL,NULL,NULL,NULL,'Fügen Sie Ihre Über uns Informationen hier',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(91,23,3,NULL,NULL,NULL,NULL,NULL,'Añade tu Quiénes somos información aquí',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(92,23,4,NULL,NULL,NULL,NULL,NULL,'Adicione a sua Quem somos informações aqui',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(93,24,1,NULL,NULL,NULL,NULL,NULL,'Add your Shipping and Handling information here.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(94,24,2,NULL,NULL,NULL,NULL,NULL,'Fügen Sie Ihre Versandinformationen hier',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(95,24,3,NULL,NULL,NULL,NULL,NULL,'Agregue su envío y manipulación de información aquí',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(96,24,4,NULL,NULL,NULL,NULL,NULL,'Adicione sua informação de envio aqui',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(97,25,1,NULL,NULL,NULL,NULL,NULL,'Add your Returns information here.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(98,25,2,NULL,NULL,NULL,NULL,NULL,'Fügen Sie Ihre Versandkosten Informationen finden Sie hier',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(99,25,3,NULL,NULL,NULL,NULL,NULL,'Añade tu información Devoluciones aquí',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(100,25,4,NULL,NULL,NULL,NULL,NULL,'Adicione sua informação Returns aqui',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(101,26,1,NULL,NULL,NULL,NULL,NULL,'Add your International Orders information here.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(102,26,2,NULL,NULL,NULL,NULL,NULL,'Fügen Sie hier Ihre Informationen Internationale Bestellungen.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(103,26,3,NULL,NULL,NULL,NULL,NULL,'Añade tu información Internacional Órdenes aquí.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(104,26,4,NULL,NULL,NULL,NULL,NULL,'Adicione sua informação Internacional Ordens aqui.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(105,27,1,NULL,NULL,NULL,NULL,NULL,'Add your Privacy Policy here.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(106,27,2,NULL,NULL,NULL,NULL,NULL,'Fügen Sie Ihren Datenschutz hier.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(107,27,3,NULL,NULL,NULL,NULL,NULL,'Agregue su política de privacidad aquí.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(108,27,4,NULL,NULL,NULL,NULL,NULL,'Adicione a sua Política de Privacidade aqui.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(109,28,1,NULL,NULL,NULL,NULL,NULL,'Add your Terms of Use here.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(110,28,2,NULL,NULL,NULL,NULL,NULL,'Fügen Sie Ihr Nutzungsbedingungen hier',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(111,28,3,NULL,NULL,NULL,NULL,NULL,'Añada sus Términos de Uso aquí',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(112,28,4,NULL,NULL,NULL,NULL,NULL,'Adicione seus Termos de Uso aqui',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(113,29,1,NULL,NULL,NULL,NULL,NULL,'Add your Help information here.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(114,29,2,NULL,NULL,NULL,NULL,NULL,'Fügen Sie hier Ihre Informationen Hilfe.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(115,29,3,NULL,NULL,NULL,NULL,NULL,'Añade tu información de ayuda aquí.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(116,29,4,NULL,NULL,NULL,NULL,NULL,'Adicione sua informação ajuda aqui.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(117,30,1,NULL,NULL,NULL,NULL,NULL,'Add your Contact information here.',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(118,30,2,NULL,NULL,NULL,NULL,NULL,'Fügen Sie Ihre Kontaktinformationen hier',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(119,30,3,NULL,NULL,NULL,NULL,NULL,'Añadir su información de contacto aquí',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(120,30,4,NULL,NULL,NULL,NULL,NULL,'Adicione sua informação de contato aqui',NULL,NULL,NULL,NULL,'2015-10-07 00:58:48',NULL),(121,31,1,'logo.png','','',NULL,'KonaKart Logo',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:51',NULL),(122,31,2,'logo.png','','',NULL,'KonaKart Logo',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:51',NULL),(123,31,3,'logo.png','','',NULL,'KonaKart Logo',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:51',NULL),(124,31,4,'logo.png','','',NULL,'KonaKart Logo',NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:51',NULL);
/*!40000 ALTER TABLE `kk_content_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_content_type`
--

DROP TABLE IF EXISTS `kk_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL DEFAULT '0',
  `custom1` varchar(32) DEFAULT NULL,
  `custom2` varchar(32) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content_type_id` (`content_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_content_type`
--

LOCK TABLES `kk_content_type` WRITE;
/*!40000 ALTER TABLE `kk_content_type` DISABLE KEYS */;
INSERT INTO `kk_content_type` VALUES (1,1,NULL,NULL,'2015-10-07 00:58:47',NULL),(2,2,NULL,NULL,'2015-10-07 00:58:47',NULL),(3,3,NULL,NULL,'2015-10-07 00:58:47',NULL),(4,4,NULL,NULL,'2015-10-07 00:58:47',NULL),(5,5,NULL,NULL,'2015-10-07 00:58:47',NULL),(6,6,NULL,NULL,'2015-10-07 00:58:47',NULL),(7,7,NULL,NULL,'2015-10-07 00:58:47',NULL),(8,8,NULL,NULL,'2015-10-07 00:58:47',NULL),(9,9,NULL,NULL,'2015-10-07 00:58:47',NULL),(10,10,NULL,NULL,'2015-10-07 00:58:47',NULL),(11,11,NULL,NULL,'2015-10-07 00:58:47',NULL),(12,12,NULL,NULL,'2015-10-07 00:58:47',NULL),(13,13,NULL,NULL,'2015-10-07 00:58:51',NULL);
/*!40000 ALTER TABLE `kk_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_content_type_desc`
--

DROP TABLE IF EXISTS `kk_content_type_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_content_type_desc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `content_type_name` varchar(32) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `custom1` varchar(32) DEFAULT NULL,
  `custom2` varchar(32) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content_type_id` (`content_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_content_type_desc`
--

LOCK TABLES `kk_content_type_desc` WRITE;
/*!40000 ALTER TABLE `kk_content_type_desc` DISABLE KEYS */;
INSERT INTO `kk_content_type_desc` VALUES (1,1,1,'Top Banner','Top Banner - Top of store home page',NULL,NULL,'2015-10-07 00:58:47',NULL),(2,1,2,'Top Banner','Top Banner - Top of store Startseite',NULL,NULL,'2015-10-07 00:58:47',NULL),(3,1,3,'Top Banner','Top Banner - Inicio de tienda de la página principal',NULL,NULL,'2015-10-07 00:58:47',NULL),(4,1,4,'Top Banner','Top Banner - Top of Home Page da loja',NULL,NULL,'2015-10-07 00:58:47',NULL),(5,2,1,'Sub Banner','Sub Banner - Secondary banner',NULL,NULL,'2015-10-07 00:58:47',NULL),(6,2,2,'Sub Banner','Sub Banner - Sekundär banner',NULL,NULL,'2015-10-07 00:58:47',NULL),(7,2,3,'Sub Banner','Sub Banner - banner Secundaria',NULL,NULL,'2015-10-07 00:58:47',NULL),(8,2,4,'Sub Banner','Sub Banner - bandeira Secundário',NULL,NULL,'2015-10-07 00:58:47',NULL),(9,3,1,'Category Banner','Category Banner - Top of category pages',NULL,NULL,'2015-10-07 00:58:47',NULL),(10,3,2,'Kategorie Banner','Kategorie Banner - Top of Kategorieseiten',NULL,NULL,'2015-10-07 00:58:47',NULL),(11,3,3,'Categoria Banner','Categoría Banner - Inicio de las páginas de categorías',NULL,NULL,'2015-10-07 00:58:47',NULL),(12,3,4,'Categoria Banner','Categoria Banner - Top de páginas da categoria',NULL,NULL,'2015-10-07 00:58:47',NULL),(13,4,1,'Category Sub Banner','Category Sub Banner - Secondary Category Banner',NULL,NULL,'2015-10-07 00:58:47',NULL),(14,4,2,'Kategorie Unter Banner','Kategorie Unter Banner - Sekundäre Kategorie Banner',NULL,NULL,'2015-10-07 00:58:47',NULL),(15,4,3,'Categoría Sub Banner','Categoría Sub Banner - Categoría Secundaria Banner',NULL,NULL,'2015-10-07 00:58:47',NULL),(16,4,4,'Categoría Sub Banner','Categoria Sub Banner - Categoria Secundária Bandeira',NULL,NULL,'2015-10-07 00:58:47',NULL),(17,5,1,'About Us','About Us Text',NULL,NULL,'2015-10-07 00:58:47',NULL),(18,5,2,'über uns','über uns',NULL,NULL,'2015-10-07 00:58:47',NULL),(19,5,3,'sobre nosotros','sobre nosotros',NULL,NULL,'2015-10-07 00:58:47',NULL),(20,5,4,'sobre nós','sobre nós',NULL,NULL,'2015-10-07 00:58:47',NULL),(21,6,1,'Shipping and Handling','Shipping and Handling Text',NULL,NULL,'2015-10-07 00:58:47',NULL),(22,6,2,'Versand-und Bearbeitungs','Versand-und Bearbeitungs',NULL,NULL,'2015-10-07 00:58:47',NULL),(23,6,3,'Envío y manipulación','Envío y manipulación',NULL,NULL,'2015-10-07 00:58:47',NULL),(24,6,4,'Envio e manipulação','Envio e manipulação',NULL,NULL,'2015-10-07 00:58:47',NULL),(25,7,1,'Product Returns','Product Returns Text',NULL,NULL,'2015-10-07 00:58:47',NULL),(26,7,2,'Produktrückgabe','Produktrückgabe',NULL,NULL,'2015-10-07 00:58:47',NULL),(27,7,3,'Devolución de productos','Devolución de productos',NULL,NULL,'2015-10-07 00:58:47',NULL),(28,7,4,'Devoluções de produtos','Devoluções de produtos',NULL,NULL,'2015-10-07 00:58:47',NULL),(29,8,1,'International Orders','International Orders Text',NULL,NULL,'2015-10-07 00:58:47',NULL),(30,8,2,'International Orders','International Orders Text',NULL,NULL,'2015-10-07 00:58:47',NULL),(31,8,3,'Pedidos internacionales','Pedidos internacionales',NULL,NULL,'2015-10-07 00:58:47',NULL),(32,8,4,'Encomendas internacionais','Encomendas internacionais',NULL,NULL,'2015-10-07 00:58:47',NULL),(33,9,1,'Privacy Policy','Privacy Policy Text',NULL,NULL,'2015-10-07 00:58:47',NULL),(34,9,2,'Datenschutz-Bestimmungen','Datenschutz-Bestimmungen',NULL,NULL,'2015-10-07 00:58:47',NULL),(35,9,3,'Política de privacidad','política de privacidad',NULL,NULL,'2015-10-07 00:58:47',NULL),(36,9,4,'Política De Privacidade','Política De Privacidade',NULL,NULL,'2015-10-07 00:58:47',NULL),(37,10,1,'Terms of use','Terms of use Text',NULL,NULL,'2015-10-07 00:58:47',NULL),(38,10,2,'Nutzungsbedingungen','Nutzungsbedingungen',NULL,NULL,'2015-10-07 00:58:47',NULL),(39,10,3,'Condiciones de uso','Condiciones de uso',NULL,NULL,'2015-10-07 00:58:47',NULL),(40,10,4,'Termos de uso','Termos de uso',NULL,NULL,'2015-10-07 00:58:47',NULL),(41,11,1,'Help','Help Text',NULL,NULL,'2015-10-07 00:58:47',NULL),(42,11,2,'Hilfe','Hilfe',NULL,NULL,'2015-10-07 00:58:47',NULL),(43,11,3,'¡Ayuda','¡Ayuda',NULL,NULL,'2015-10-07 00:58:47',NULL),(44,11,4,'Socorro','Socorro',NULL,NULL,'2015-10-07 00:58:47',NULL),(45,12,1,'Contact Us','Contact Us Text',NULL,NULL,'2015-10-07 00:58:47',NULL),(46,12,2,'Kontaktdetails','Kontaktdetails',NULL,NULL,'2015-10-07 00:58:47',NULL),(47,12,3,'Detalles de contacto','Detalles de contacto',NULL,NULL,'2015-10-07 00:58:47',NULL),(48,12,4,'Detalhes de Contato','Detalhes de Contato',NULL,NULL,'2015-10-07 00:58:47',NULL),(49,13,1,'Logo','Logo Image',NULL,NULL,'2015-10-07 00:58:51',NULL),(50,13,2,'Logo','Logo Image',NULL,NULL,'2015-10-07 00:58:51',NULL),(51,13,3,'Logo','Imagen del logotipo',NULL,NULL,'2015-10-07 00:58:51',NULL),(52,13,4,'Logotipo','Imagem do logotipo',NULL,NULL,'2015-10-07 00:58:51',NULL);
/*!40000 ALTER TABLE `kk_content_type_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_cookie`
--

DROP TABLE IF EXISTS `kk_cookie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_cookie` (
  `customer_uuid` varchar(128) NOT NULL,
  `attribute_id` varchar(64) NOT NULL,
  `attribute_value` varchar(256) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `last_read` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_uuid`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_cookie`
--

LOCK TABLES `kk_cookie` WRITE;
/*!40000 ALTER TABLE `kk_cookie` DISABLE KEYS */;
INSERT INTO `kk_cookie` VALUES ('7342ca90-13f1-4718-bc52-066d4c48aea7','GUEST_CUSTOMER_ID','-2','2015-10-06 21:03:15',NULL,NULL);
/*!40000 ALTER TABLE `kk_cookie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_cust_attr`
--

DROP TABLE IF EXISTS `kk_cust_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_cust_attr` (
  `kk_cust_attr_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `msg_cat_key` varchar(128) DEFAULT NULL,
  `attr_type` int(11) DEFAULT '-1',
  `template` varchar(128) DEFAULT NULL,
  `validation` varchar(512) DEFAULT NULL,
  `set_function` varchar(512) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `facet_number` int(11) NOT NULL DEFAULT '0',
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`kk_cust_attr_id`),
  KEY `idx_nm_kk_cust_attr` (`name`),
  KEY `idx_st_id_kk_cust_attr` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_cust_attr`
--

LOCK TABLES `kk_cust_attr` WRITE;
/*!40000 ALTER TABLE `kk_cust_attr` DISABLE KEYS */;
INSERT INTO `kk_cust_attr` VALUES (1,NULL,'radio','label.size',0,NULL,NULL,'choice(\'label.small\',\'label.medium\',\'label.large\')',NULL,NULL,NULL,'2015-10-07 00:58:33',0,NULL,NULL),(2,NULL,'true-false','label.true.false',4,NULL,'true|false',NULL,NULL,NULL,NULL,'2015-10-07 00:58:33',0,NULL,NULL),(3,NULL,'dropList','label.size',0,NULL,NULL,'option(s=label.small,m=label.medium,l=label.large)',NULL,NULL,NULL,'2015-10-07 00:58:33',0,NULL,NULL),(4,NULL,'integer-1-to-10',NULL,1,NULL,NULL,'integer(1,10)',NULL,NULL,NULL,'2015-10-07 00:58:33',0,NULL,NULL),(5,NULL,'any-int',NULL,1,NULL,NULL,'integer(null,null)',NULL,NULL,NULL,'2015-10-07 00:58:33',0,NULL,NULL),(6,NULL,'decimal-1.5-to-2.3',NULL,2,NULL,NULL,'double(1.5,2.3)',NULL,NULL,NULL,'2015-10-07 00:58:33',0,NULL,NULL),(7,NULL,'string-length-4',NULL,0,NULL,NULL,'string(4,4)',NULL,NULL,NULL,'2015-10-07 00:58:33',0,NULL,NULL),(8,NULL,'date-dd/MM/yyyy',NULL,3,'dd/MM/yyyy','^(((0[1-9]|[12]\\d|3[01])\\/(0[13578]|1[02])\\/((1[6-9]|[2-9]\\d)\\d{2}))|((0[1-9]|[12]\\d|30)\\/(0[13456789]|1[012])\\/((1[6-9]|[2-9]\\d)\\d{2}))|((0[1-9]|1\\d|2[0-8])\\/02\\/((1[6-9]|[2-9]\\d)\\d{2}))|(29\\/02\\/((1[6-9]|[2-9]\\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$',NULL,NULL,NULL,NULL,'2015-10-07 00:58:33',0,NULL,NULL),(9,NULL,'any-string-use-custom',NULL,0,NULL,NULL,NULL,'c1','c2','c3','2015-10-07 00:58:33',0,NULL,NULL),(10,NULL,'RichText',NULL,0,NULL,NULL,'RichText(8)',NULL,NULL,NULL,'2015-10-07 00:58:36',0,NULL,NULL),(11,NULL,'DVD Format',NULL,0,NULL,NULL,'option(facet.blu.ray=Blu-ray,facet.hd.dvd=HD-DVD)',NULL,NULL,NULL,'2015-10-07 00:58:39',1,NULL,NULL),(12,NULL,'Movie Ratings',NULL,0,NULL,NULL,'option(facet.mpaa.g=General Audience: G,facet.mpaa.pg=Parental Guidance: PG,facet.mpaa.pg.13=Parents Cautioned: PG-13,facet.mpaa.r=Restricted: R,facet.mpaa.nc.17=Adults Only: NC-17)',NULL,NULL,NULL,'2015-10-07 00:58:39',2,NULL,NULL);
/*!40000 ALTER TABLE `kk_cust_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_cust_attr_tmpl`
--

DROP TABLE IF EXISTS `kk_cust_attr_tmpl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_cust_attr_tmpl` (
  `kk_cust_attr_tmpl_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_cust_attr_tmpl_id`),
  KEY `idx_nm_kk_cust_attr_tmpl` (`name`),
  KEY `idx_st_kk_cust_attr_tmpl` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_cust_attr_tmpl`
--

LOCK TABLES `kk_cust_attr_tmpl` WRITE;
/*!40000 ALTER TABLE `kk_cust_attr_tmpl` DISABLE KEYS */;
INSERT INTO `kk_cust_attr_tmpl` VALUES (1,NULL,'Movie Template','Template for DVD Movies',NULL,NULL,NULL,'2015-10-07 00:58:39');
/*!40000 ALTER TABLE `kk_cust_attr_tmpl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_cust_pwd_hist`
--

DROP TABLE IF EXISTS `kk_cust_pwd_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_cust_pwd_hist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) NOT NULL,
  `password` varchar(40) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_kk_cust_pwd_hist_cust_id` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_cust_pwd_hist`
--

LOCK TABLES `kk_cust_pwd_hist` WRITE;
/*!40000 ALTER TABLE `kk_cust_pwd_hist` DISABLE KEYS */;
INSERT INTO `kk_cust_pwd_hist` VALUES (1,2,'f5147fc3f6eb46e234c01db939bdb581:08','2015-10-06 20:58:55',NULL);
/*!40000 ALTER TABLE `kk_cust_pwd_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_cust_stats`
--

DROP TABLE IF EXISTS `kk_cust_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_cust_stats` (
  `cust_stats_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `customers_id` int(11) DEFAULT '0',
  `event_type` int(11) DEFAULT '0',
  `data1Str` varchar(128) DEFAULT NULL,
  `data2Str` varchar(128) DEFAULT NULL,
  `data1Int` int(11) DEFAULT NULL,
  `data2Int` int(11) DEFAULT NULL,
  `data1Dec` decimal(15,4) DEFAULT NULL,
  `data2Dec` decimal(15,4) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cust_stats_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_cust_stats`
--

LOCK TABLES `kk_cust_stats` WRITE;
/*!40000 ALTER TABLE `kk_cust_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_cust_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_customer_group`
--

DROP TABLE IF EXISTS `kk_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_customer_group` (
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(64) NOT NULL,
  `description` varchar(128) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `price_id` int(11) DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_customer_group`
--

LOCK TABLES `kk_customer_group` WRITE;
/*!40000 ALTER TABLE `kk_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_customer_tag`
--

DROP TABLE IF EXISTS `kk_customer_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_customer_tag` (
  `kk_customer_tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `validation` varchar(128) DEFAULT NULL,
  `tag_type` int(11) NOT NULL DEFAULT '0',
  `max_ints` int(11) DEFAULT '1',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_customer_tag_id`),
  KEY `idx_name_kk_customer_tag` (`name`),
  KEY `idx_store_id_kk_customer_tag` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_customer_tag`
--

LOCK TABLES `kk_customer_tag` WRITE;
/*!40000 ALTER TABLE `kk_customer_tag` DISABLE KEYS */;
INSERT INTO `kk_customer_tag` VALUES (1,NULL,'PRODUCTS_VIEWED','Recently viewed product id','((:[0-9]*)*:|)',2,5,NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:26'),(2,NULL,'CATEGORIES_VIEWED','Recently viewed category id','((:[0-9]*)*:|)',2,5,NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:26'),(3,NULL,'MANUFACTURERS_VIEWED','Recently viewed manufacturer id','((:[0-9]*)*:|)',2,5,NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:26'),(4,NULL,'PRODUCTS_IN_CART','Id of a product in the cart','((:[0-9]*)*:|)',2,50,NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:26'),(5,NULL,'PRODUCTS_IN_WISHLIST','Id of a product in the Wish List','((:[0-9]*)*:|)',2,50,NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:26'),(6,NULL,'SEARCH_STRING','Product Search String',NULL,0,5,NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:27'),(7,NULL,'COUNTRY_CODE','Country code of customer',NULL,0,5,NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:27'),(8,NULL,'CART_TOTAL','Cart total',NULL,3,5,NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:27'),(9,NULL,'WISHLIST_TOTAL','Wish List total',NULL,3,5,NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:27'),(11,NULL,'IS_MALE','Customer is Male','true|false',5,5,NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:27'),(12,NULL,'PROD_PAGE_SIZE','The page size for product lists',NULL,1,1,NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:33'),(13,NULL,'ORDER_PAGE_SIZE','The page size for order lists',NULL,1,1,NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:33'),(14,NULL,'REVIEW_PAGE_SIZE','The page size for review lists',NULL,1,1,NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:34'),(15,NULL,'BIRTH_DATE','Age of Customer',NULL,6,5,NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:37'),(16,NULL,'LOGIN_DATE','Time of Last Login',NULL,6,5,NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:37');
/*!40000 ALTER TABLE `kk_customer_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_customers_to_role`
--

DROP TABLE IF EXISTS `kk_customers_to_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_customers_to_role` (
  `ctor_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `customers_id` int(11) NOT NULL DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`ctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_customers_to_role`
--

LOCK TABLES `kk_customers_to_role` WRITE;
/*!40000 ALTER TABLE `kk_customers_to_role` DISABLE KEYS */;
INSERT INTO `kk_customers_to_role` VALUES (1,1,2,NULL,'2015-10-07 00:58:10'),(2,2,3,NULL,'2015-10-07 00:58:10'),(3,3,4,NULL,'2015-10-07 00:58:10'),(4,4,4,NULL,'2015-10-07 00:58:10'),(5,3,5,NULL,'2015-10-07 00:58:52'),(6,4,5,NULL,'2015-10-07 00:58:52');
/*!40000 ALTER TABLE `kk_customers_to_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_customers_to_tag`
--

DROP TABLE IF EXISTS `kk_customers_to_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_customers_to_tag` (
  `kk_customer_tag_id` int(11) NOT NULL DEFAULT '0',
  `customers_id` int(11) NOT NULL DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `tag_value` varchar(255) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_customer_tag_id`,`customers_id`),
  KEY `idx_name_kk_customers_to_tag` (`name`),
  KEY `idx_stor_kk_customers_to_tag` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_customers_to_tag`
--

LOCK TABLES `kk_customers_to_tag` WRITE;
/*!40000 ALTER TABLE `kk_customers_to_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_customers_to_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_digital_download_1`
--

DROP TABLE IF EXISTS `kk_digital_download_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_digital_download_1` (
  `kk_digital_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `products_id` int(11) NOT NULL DEFAULT '0',
  `customers_id` int(11) NOT NULL DEFAULT '0',
  `products_file_path` varchar(255) DEFAULT NULL,
  `max_downloads` int(11) DEFAULT '-1',
  `times_downloaded` int(11) DEFAULT '0',
  `expiration_date` datetime DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`kk_digital_download_id`),
  KEY `i_prodid_kk_digdown_1` (`products_id`),
  KEY `i_custid_kk_digdown_1` (`customers_id`),
  KEY `i_storid_kk_digdown_1` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_digital_download_1`
--

LOCK TABLES `kk_digital_download_1` WRITE;
/*!40000 ALTER TABLE `kk_digital_download_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_digital_download_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_event`
--

DROP TABLE IF EXISTS `kk_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_event` (
  `kk_event_id` int(11) NOT NULL AUTO_INCREMENT,
  `kk_event_code` int(11) NOT NULL,
  `kk_event_subcode` int(11) DEFAULT NULL,
  `kk_event_value` varchar(64) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `custom1` varchar(64) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`kk_event_id`),
  KEY `idx_kk_event_date_added` (`date_added`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_event`
--

LOCK TABLES `kk_event` WRITE;
/*!40000 ALTER TABLE `kk_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_expression`
--

DROP TABLE IF EXISTS `kk_expression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_expression` (
  `kk_expression_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `num_variables` int(11) NOT NULL DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_expression_id`),
  KEY `idx_name_kk_expression` (`name`),
  KEY `idx_store_id_kk_expression` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_expression`
--

LOCK TABLES `kk_expression` WRITE;
/*!40000 ALTER TABLE `kk_expression` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_expression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_expression_variable`
--

DROP TABLE IF EXISTS `kk_expression_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_expression_variable` (
  `kk_expression_variable_id` int(11) NOT NULL AUTO_INCREMENT,
  `kk_customer_tag_id` int(11) NOT NULL DEFAULT '0',
  `kk_expression_id` int(11) NOT NULL DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  `tag_type` int(11) NOT NULL DEFAULT '0',
  `tag_value` varchar(255) NOT NULL,
  `operator` int(11) NOT NULL DEFAULT '0',
  `tag_order` int(11) NOT NULL DEFAULT '0',
  `tag_and_or` int(11) NOT NULL DEFAULT '0',
  `group_order` int(11) NOT NULL DEFAULT '0',
  `group_and_or` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_expression_variable_id`),
  KEY `idx_exp_kk_express_to_tag` (`kk_expression_id`),
  KEY `idx_stor_kk_express_to_tag` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_expression_variable`
--

LOCK TABLES `kk_expression_variable` WRITE;
/*!40000 ALTER TABLE `kk_expression_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_expression_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_filter`
--

DROP TABLE IF EXISTS `kk_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `filter_table` varchar(64) DEFAULT NULL,
  `filter_column` varchar(64) DEFAULT NULL,
  `filter_constraint` varchar(256) DEFAULT NULL,
  `custom1` varchar(32) DEFAULT NULL,
  `custom2` varchar(32) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_filter`
--

LOCK TABLES `kk_filter` WRITE;
/*!40000 ALTER TABLE `kk_filter` DISABLE KEYS */;
INSERT INTO `kk_filter` VALUES (1,5,'orders','orders_status','in (2,4)',NULL,NULL,'2015-10-07 00:58:52','2015-10-07 00:58:52',NULL);
/*!40000 ALTER TABLE `kk_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_misc_item`
--

DROP TABLE IF EXISTS `kk_misc_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_misc_item` (
  `kk_misc_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `kk_obj_id` int(11) NOT NULL,
  `kk_obj_type_id` int(11) NOT NULL,
  `kk_misc_item_type_id` int(11) NOT NULL,
  `item_value` varchar(512) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`kk_misc_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_misc_item`
--

LOCK TABLES `kk_misc_item` WRITE;
/*!40000 ALTER TABLE `kk_misc_item` DISABLE KEYS */;
INSERT INTO `kk_misc_item` VALUES (1,1,2,1,'banners/computer-peripherals/logitech.png','SelectProd.action?prodId=31',NULL,NULL,NULL,NULL),(2,1,2,4,'banners/computer-peripherals/logitech-medium.png','SelectProd.action?prodId=31',NULL,NULL,NULL,NULL),(3,1,2,7,'banners/computer-peripherals/logitech-small.png','SelectProd.action?prodId=31',NULL,NULL,NULL,NULL),(4,1,2,2,'banners/computer-peripherals/hp-photosmart.png','SelectProd.action?prodId=27',NULL,NULL,NULL,NULL),(5,1,2,5,'banners/computer-peripherals/hp-photosmart-medium.png','SelectProd.action?prodId=27',NULL,NULL,NULL,NULL),(6,1,2,8,'banners/computer-peripherals/hp-photosmart-small.png','SelectProd.action?prodId=27',NULL,NULL,NULL,NULL),(7,1,2,3,'banners/computer-peripherals/deals-of-the-week.png','',NULL,NULL,NULL,NULL),(8,1,2,6,'banners/computer-peripherals/deals-of-the-week-medium.png','',NULL,NULL,NULL,NULL),(9,1,2,9,'banners/computer-peripherals/deals-of-the-week-small.png','',NULL,NULL,NULL,NULL),(10,2,2,1,'banners/games/black-ops-2.png','SelectProd.action?prodId=63',NULL,NULL,NULL,NULL),(11,2,2,4,'banners/games/black-ops-2-medium.png','SelectProd.action?prodId=63',NULL,NULL,NULL,NULL),(12,2,2,7,'banners/games/black-ops-2-small.png','SelectProd.action?prodId=63',NULL,NULL,NULL,NULL),(13,2,2,2,'banners/games/swat-3.png','SelectProd.action?prodId=21',NULL,NULL,NULL,NULL),(14,2,2,5,'banners/games/swat-3-medium.png','SelectProd.action?prodId=21',NULL,NULL,NULL,NULL),(15,2,2,8,'banners/games/swat-3-small.png','SelectProd.action?prodId=21',NULL,NULL,NULL,NULL),(16,2,2,3,'banners/games/winter-deals.png','',NULL,NULL,NULL,NULL),(17,2,2,6,'banners/games/winter-deals-medium.png','',NULL,NULL,NULL,NULL),(18,2,2,9,'banners/games/winter-deals-small.png','',NULL,NULL,NULL,NULL),(19,3,2,1,'banners/movies/dark-knight.png','SelectProd.action?prodId=20',NULL,NULL,NULL,NULL),(20,3,2,4,'banners/movies/dark-knight-medium.png','SelectProd.action?prodId=20',NULL,NULL,NULL,NULL),(21,3,2,7,'banners/movies/dark-knight-small.png','SelectProd.action?prodId=20',NULL,NULL,NULL,NULL),(22,3,2,2,'banners/movies/harry-potter.png','SelectProd.action?prodId=11',NULL,NULL,NULL,NULL),(23,3,2,5,'banners/movies/harry-potter-medium.png','SelectProd.action?prodId=11',NULL,NULL,NULL,NULL),(24,3,2,8,'banners/movies/harry-potter-small.png','SelectProd.action?prodId=11',NULL,NULL,NULL,NULL),(25,3,2,3,'banners/movies/movie-deals.png','',NULL,NULL,NULL,NULL),(26,3,2,6,'banners/movies/movie-deals-medium.png','',NULL,NULL,NULL,NULL),(27,3,2,9,'banners/movies/movie-deals-small.png','',NULL,NULL,NULL,NULL),(28,23,2,1,'banners/electronics/kindle-fire-hd.jpg','SelectProd.action?prodId=34',NULL,NULL,NULL,NULL),(29,23,2,4,'banners/electronics/kindle-fire-hd-medium.jpg','SelectProd.action?prodId=34',NULL,NULL,NULL,NULL),(30,23,2,7,'banners/electronics/kindle-fire-hd-small.jpg','SelectProd.action?prodId=34',NULL,NULL,NULL,NULL),(31,23,2,2,'banners/electronics/xbox.png','',NULL,NULL,NULL,NULL),(32,23,2,5,'banners/electronics/xbox-medium.png','',NULL,NULL,NULL,NULL),(33,23,2,8,'banners/electronics/xbox-small.png','',NULL,NULL,NULL,NULL),(34,23,2,3,'banners/electronics/electronics-sale.png','',NULL,NULL,NULL,NULL),(35,23,2,6,'banners/electronics/electronics-sale-medium.png','',NULL,NULL,NULL,NULL),(36,23,2,9,'banners/electronics/electronics-sale-small.png','',NULL,NULL,NULL,NULL),(37,24,2,1,'banners/home-and-garden/delonghi.png','SelectProd.action?prodId=33',NULL,NULL,NULL,NULL),(38,24,2,4,'banners/home-and-garden/delonghi-medium.png','SelectProd.action?prodId=33',NULL,NULL,NULL,NULL),(39,24,2,7,'banners/home-and-garden/delonghi-small.png','SelectProd.action?prodId=33',NULL,NULL,NULL,NULL),(40,24,2,2,'banners/home-and-garden/rotak-40.png','SelectProd.action?prodId=39',NULL,NULL,NULL,NULL),(41,24,2,5,'banners/home-and-garden/rotak-40-medium.png','SelectProd.action?prodId=39',NULL,NULL,NULL,NULL),(42,24,2,8,'banners/home-and-garden/rotak-40-small.png','SelectProd.action?prodId=39',NULL,NULL,NULL,NULL),(43,24,2,3,'banners/home-and-garden/gifts-for-the-home.png','',NULL,NULL,NULL,NULL),(44,24,2,6,'banners/home-and-garden/gifts-for-the-home-medium.png','',NULL,NULL,NULL,NULL),(45,24,2,9,'banners/home-and-garden/gifts-for-the-home-small.png','',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `kk_misc_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_misc_item_type`
--

DROP TABLE IF EXISTS `kk_misc_item_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_misc_item_type` (
  `kk_misc_item_type_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`kk_misc_item_type_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_misc_item_type`
--

LOCK TABLES `kk_misc_item_type` WRITE;
/*!40000 ALTER TABLE `kk_misc_item_type` DISABLE KEYS */;
INSERT INTO `kk_misc_item_type` VALUES (1,1,'Banner_1','Top banner',NULL,NULL),(1,2,'Banner_1','Top banner',NULL,NULL),(1,3,'Banner_1','Top banner',NULL,NULL),(1,4,'Banner_1','Top banner',NULL,NULL),(2,1,'Banner_2','2nd banner',NULL,NULL),(2,2,'Banner_2','2nd banner',NULL,NULL),(2,3,'Banner_2','2nd banner',NULL,NULL),(2,4,'Banner_2','2nd banner',NULL,NULL),(3,1,'Banner_3','3rd banner',NULL,NULL),(3,2,'Banner_3','3rd banner',NULL,NULL),(3,3,'Banner_3','3rd banner',NULL,NULL),(3,4,'Banner_3','3rd banner',NULL,NULL),(4,1,'Banner_1_Medium','Top medium banner',NULL,NULL),(4,2,'Banner_1_Medium','Top medium banner',NULL,NULL),(4,3,'Banner_1_Medium','Top medium banner',NULL,NULL),(4,4,'Banner_1_Medium','Top medium banner',NULL,NULL),(5,1,'Banner_2_Medium','2nd medium banner',NULL,NULL),(5,2,'Banner_2_Medium','2nd medium banner',NULL,NULL),(5,3,'Banner_2_Medium','2nd medium banner',NULL,NULL),(5,4,'Banner_2_Medium','2nd medium banner',NULL,NULL),(6,1,'Banner_3_Medium','3rd medium banner',NULL,NULL),(6,2,'Banner_3_Medium','3rd medium banner',NULL,NULL),(6,3,'Banner_3_Medium','3rd medium banner',NULL,NULL),(6,4,'Banner_3_Medium','3rd medium banner',NULL,NULL),(7,1,'Banner_1_Small','Top small banner',NULL,NULL),(7,2,'Banner_1_Small','Top small banner',NULL,NULL),(7,3,'Banner_1_Small','Top small banner',NULL,NULL),(7,4,'Banner_1_Small','Top small banner',NULL,NULL),(8,1,'Banner_2_Small','2nd small banner',NULL,NULL),(8,2,'Banner_2_Small','2nd small banner',NULL,NULL),(8,3,'Banner_2_Small','2nd small banner',NULL,NULL),(8,4,'Banner_2_Small','2nd small banner',NULL,NULL),(9,1,'Banner_3_Small','3rd small banner',NULL,NULL),(9,2,'Banner_3_Small','3rd small banner',NULL,NULL),(9,3,'Banner_3_Small','3rd small banner',NULL,NULL),(9,4,'Banner_3_Small','3rd small banner',NULL,NULL);
/*!40000 ALTER TABLE `kk_misc_item_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_misc_price`
--

DROP TABLE IF EXISTS `kk_misc_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_misc_price` (
  `kk_misc_price_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `price_id` varchar(128) NOT NULL,
  `price_0` decimal(15,4) DEFAULT NULL,
  `price_1` decimal(15,4) DEFAULT NULL,
  `price_2` decimal(15,4) DEFAULT NULL,
  `price_3` decimal(15,4) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `custom1` varchar(256) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`kk_misc_price_id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_misc_price`
--

LOCK TABLES `kk_misc_price` WRITE;
/*!40000 ALTER TABLE `kk_misc_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_misc_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_msg`
--

DROP TABLE IF EXISTS `kk_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_msg` (
  `msg_key` varchar(100) NOT NULL,
  `msg_locale` varchar(10) NOT NULL,
  `msg_type` int(11) NOT NULL,
  `msg_value` text,
  PRIMARY KEY (`msg_key`,`msg_type`,`msg_locale`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_msg`
--

LOCK TABLES `kk_msg` WRITE;
/*!40000 ALTER TABLE `kk_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_order_refunds`
--

DROP TABLE IF EXISTS `kk_order_refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_order_refunds` (
  `order_refunds_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `ipn_history_id` int(11) DEFAULT NULL,
  `orders_number` varchar(128) DEFAULT NULL,
  `refund_note` text,
  `refund_amount` decimal(15,4) DEFAULT NULL,
  `gateway_credit_id` varchar(64) DEFAULT NULL,
  `notify_customer` int(11) DEFAULT '0',
  `refund_status` int(11) DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom1Dec` decimal(15,4) DEFAULT NULL,
  `custom2Dec` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`order_refunds_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_order_refunds`
--

LOCK TABLES `kk_order_refunds` WRITE;
/*!40000 ALTER TABLE `kk_order_refunds` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_order_refunds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_order_shipments`
--

DROP TABLE IF EXISTS `kk_order_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_order_shipments` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `order_number` varchar(128) DEFAULT NULL,
  `shipper_name` varchar(64) DEFAULT NULL,
  `shipper_id` int(11) DEFAULT NULL,
  `tracking_number` varchar(64) DEFAULT NULL,
  `tracking_url` varchar(255) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `shipment_notes` text,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_order_shipments`
--

LOCK TABLES `kk_order_shipments` WRITE;
/*!40000 ALTER TABLE `kk_order_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_order_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_panel`
--

DROP TABLE IF EXISTS `kk_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_panel` (
  `panel_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`panel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_panel`
--

LOCK TABLES `kk_panel` WRITE;
/*!40000 ALTER TABLE `kk_panel` DISABLE KEYS */;
INSERT INTO `kk_panel` VALUES (1,'kk_panel_addressFormats','Address Formats','2015-10-07 00:58:09',NULL),(2,'kk_panel_audit','Audit','2015-10-07 00:58:09',NULL),(3,'kk_panel_auditConfig','AuditConfig','2015-10-07 00:58:09',NULL),(4,'kk_panel_cache','Cache','2015-10-07 00:58:09',NULL),(5,'kk_panel_categories','Categories','2015-10-07 00:58:09',NULL),(6,'kk_panel_configFiles','Configuration Files','2015-10-07 00:58:09',NULL),(7,'kk_panel_digitalDownloadConfig','Digital Downloads','2015-10-07 00:58:09',NULL),(8,'kk_panel_countries','Countries','2015-10-07 00:58:09',NULL),(9,'kk_panel_coupons','Coupons','2015-10-07 00:58:09',NULL),(10,'kk_panel_couponsFromProm','Coupons For Promotions','2015-10-07 00:58:09',NULL),(11,'kk_panel_currencies','Currencies','2015-10-07 00:58:09',NULL),(12,'kk_panel_customerDetails','Customer Details','2015-10-07 00:58:09',NULL),(13,'kk_panel_customerOrders','Customer Orders','2015-10-07 00:58:10',NULL),(14,'kk_panel_customers','Customers','2015-10-07 00:58:10',NULL),(15,'kk_panel_deleteSessions','Delete Expired Sessions','2015-10-07 00:58:10',NULL),(16,'kk_panel_editCustomer','Edit Customer','2015-10-07 00:58:10',NULL),(17,'kk_panel_editOrderPanel','Edit Order','2015-10-07 00:58:10',NULL),(18,'kk_panel_editProduct','Edit Product','2015-10-07 00:58:10',NULL),(19,'kk_panel_emailOptions','Email Options','2015-10-07 00:58:10',NULL),(21,'kk_panel_httpHttps','HTTP / HTTPS','2015-10-07 00:58:10',NULL),(22,'kk_panel_images','Images','2015-10-07 00:58:10',NULL),(23,'kk_panel_insertCustomer','Insert Customer','2015-10-07 00:58:10',NULL),(24,'kk_panel_ipnhistory','Payment Gateway Callbacks','2015-10-07 00:58:10',NULL),(25,'kk_panel_ipnhistoryFromOrders','Payment Status For Order','2015-10-07 00:58:10',NULL),(26,'kk_panel_languages','Languages','2015-10-07 00:58:10',NULL),(27,'kk_panel_logging','Logging','2015-10-07 00:58:10',NULL),(28,'kk_panel_roleToPanels','Maintain Roles','2015-10-07 00:58:10',NULL),(29,'kk_panel_manufacturers','Manufacturers','2015-10-07 00:58:10',NULL),(30,'kk_panel_maximumValues','Maximum Values','2015-10-07 00:58:10',NULL),(31,'kk_panel_minimumValues','Minimum Values','2015-10-07 00:58:10',NULL),(32,'kk_panel_userToRoles','Map Users to Roles','2015-10-07 00:58:10',NULL),(33,'kk_panel_orders','Orders','2015-10-07 00:58:10',NULL),(34,'kk_panel_orderStatuses','Order Statuses','2015-10-07 00:58:10',NULL),(35,'kk_panel_orderTotalModules','Order Total','2015-10-07 00:58:10',NULL),(36,'kk_panel_paymentModules','Payment','2015-10-07 00:58:10',NULL),(37,'kk_panel_prodsFromCat','Products for Categories','2015-10-07 00:58:10',NULL),(38,'kk_panel_prodsFromManu','Products for Manufacturer','2015-10-07 00:58:10',NULL),(39,'kk_panel_productOptions','Product Options','2015-10-07 00:58:10',NULL),(40,'kk_panel_products','Products','2015-10-07 00:58:10',NULL),(41,'kk_panel_promotions','Promotions','2015-10-07 00:58:10',NULL),(42,'kk_panel_promRules','Promotion Rules','2015-10-07 00:58:10',NULL),(43,'kk_panel_refreshCache','Refresh Config Cache','2015-10-07 00:58:10',NULL),(44,'kk_panel_reports','Reports','2015-10-07 00:58:10',NULL),(45,'kk_panel_reportsConfig','Reports Configuration','2015-10-07 00:58:10',NULL),(46,'kk_panel_returns','Product Returns','2015-10-07 00:58:10',NULL),(47,'kk_panel_returnsFromOrders','Product Returns For Order','2015-10-07 00:58:10',NULL),(48,'kk_panel_rss','Latest News','2015-10-07 00:58:10',NULL),(49,'kk_panel_shippingModules','Shipping','2015-10-07 00:58:10',NULL),(50,'kk_panel_shippingPacking','Shipping / Packing','2015-10-07 00:58:10',NULL),(51,'kk_panel_status','Status','2015-10-07 00:58:10',NULL),(52,'kk_panel_stockAndOrders','Stock and Orders','2015-10-07 00:58:10',NULL),(53,'kk_panel_storeConfiguration','My Store','2015-10-07 00:58:10',NULL),(55,'kk_panel_taxAreaMapping','Tax Area Mapping','2015-10-07 00:58:10',NULL),(56,'kk_panel_taxAreas','Tax Areas / Geo Zones','2015-10-07 00:58:10',NULL),(57,'kk_panel_taxAreaToZoneMapping','Tax Area to Zone Mapping','2015-10-07 00:58:10',NULL),(58,'kk_panel_taxClasses','Tax Classes','2015-10-07 00:58:10',NULL),(59,'kk_panel_taxRates','Tax Rates','2015-10-07 00:58:10',NULL),(60,'kk_panel_zones','Zones','2015-10-07 00:58:10',NULL),(61,'kk_panel_changePassword','Change Password','2015-10-07 00:58:10',NULL),(62,'kk_panel_communications','Customer Communications','2015-10-07 00:58:12',NULL),(63,'kk_panel_custGroups','Customer Groups','2015-10-07 00:58:14',NULL),(64,'kk_panel_adminAppConfig','Configure Admin App','2015-10-07 00:58:14',NULL),(65,'kk_panel_tagGroups','Maintain Tag Groups','2015-10-07 00:58:15',NULL),(66,'kk_panel_tags','Maintain Tags','2015-10-07 00:58:15',NULL),(67,'kk_panel_customerForOrder','Customer For Order','2015-10-07 00:58:15',NULL),(68,'kk_panel_custom1','Custom1','2015-10-07 00:58:15',NULL),(69,'kk_panel_custom2','Custom2','2015-10-07 00:58:15',NULL),(70,'kk_panel_custom3','Custom3','2015-10-07 00:58:15',NULL),(71,'kk_panel_custom4','Custom4','2015-10-07 00:58:15',NULL),(72,'kk_panel_custom5','Custom5','2015-10-07 00:58:15',NULL),(73,'kk_panel_custom6','Custom6','2015-10-07 00:58:15',NULL),(74,'kk_panel_custom7','Custom7','2015-10-07 00:58:15',NULL),(75,'kk_panel_custom8','Custom8','2015-10-07 00:58:15',NULL),(76,'kk_panel_custom9','Custom9','2015-10-07 00:58:15',NULL),(77,'kk_panel_custom10','Custom10','2015-10-07 00:58:15',NULL),(78,'kk_panel_customConfig','Configure Custom Panels','2015-10-07 00:58:15',NULL),(81,'kk_panel_solr_search','Solr Search Engine Configuration','2015-10-07 00:58:16',NULL),(82,'kk_panel_solr_control','Solr Search Engine Control','2015-10-07 00:58:16',NULL),(83,'kk_panel_stores','Manage Multiple Stores','2015-10-07 00:58:23',NULL),(84,'kk_panel_editStore','Edit a Store in a Mall','2015-10-07 00:58:23',NULL),(85,'kk_panel_insertStore','Insert a Store in a Mall','2015-10-07 00:58:23',NULL),(86,'kk_panel_multistoreConfig','Multi-Store Configuration','2015-10-07 00:58:23',NULL),(87,'kk_panel_productQuantity','Product Quantity','2015-10-07 00:58:24',NULL),(88,'kk_panel_productAvailableDate','Product Available Date','2015-10-07 00:58:24',NULL),(89,'kk_panel_custTags','Customer Tags','2015-10-07 00:58:26',NULL),(90,'kk_panel_expressions','Expressions','2015-10-07 00:58:26',NULL),(91,'kk_panel_variablesFromExp','Expression Variables','2015-10-07 00:58:26',NULL),(92,'kk_panel_reward_points','Reward Points Configuration','2015-10-07 00:58:28',NULL),(93,'kk_panel_pdfConfig','PDF Configuration','2015-10-07 00:58:28',NULL),(94,'kk_panel_templates','Template Configuration','2015-10-07 00:58:28',NULL),(95,'kk_panel_payment_schedule','Payment Schedule','2015-10-07 00:58:29',NULL),(96,'kk_panel_subscription','Subscription','2015-10-07 00:58:29',NULL),(97,'kk_panel_subscriptionFromOrders','Subscription From Orders','2015-10-07 00:58:29',NULL),(98,'kk_panel_subscriptionFromCustomers','Subscription From Customers','2015-10-07 00:58:29',NULL),(99,'kk_panel_reviews','Maintain Product Reviews','2015-10-07 00:58:32',NULL),(100,'kk_panel_prod_reviews','Product Reviews for Product','2015-10-07 00:58:32',NULL),(101,'kk_panel_cust_reviews','Product Reviews for Customer','2015-10-07 00:58:32',NULL),(102,'kk_panel_messages','Maintain Application Messages','2015-10-07 00:58:33',NULL),(103,'kk_panel_prod_address','Product Addresses','2015-10-07 00:58:33',NULL),(104,'kk_panel_manu_address','Manufacturer Addresses','2015-10-07 00:58:33',NULL),(105,'kk_panel_cust_address','Customer Addresses','2015-10-07 00:58:33',NULL),(106,'kk_panel_prodAttrTemplates','Product Custom Attribute Templates','2015-10-07 00:58:33',NULL),(107,'kk_panel_prodAttrDescs','Product Custom Attributes','2015-10-07 00:58:33',NULL),(108,'kk_panel_customers_2','Customers 2','2015-10-07 00:58:34',NULL),(109,'kk_panel_customerForOrder_2','Customer For Order 2','2015-10-07 00:58:34',NULL),(110,'kk_panel_bookingsForOrder','Bookings For Order','2015-10-07 00:58:34',NULL),(111,'kk_panel_bookingsForProduct','Bookings For Product','2015-10-07 00:58:34',NULL),(112,'kk_panel_bookingsForCustomer','Bookings For Customer','2015-10-07 00:58:34',NULL),(113,'kk_panel_catalogs','Product Catalog Definitions','2015-10-07 00:58:35',NULL),(114,'kk_panel_otherModules','Other Modules Configuration','2015-10-07 00:58:35',NULL),(115,'kk_panel_miscItemTypes','Miscellaneous Item Types','2015-10-07 00:58:36',NULL),(116,'kk_panel_miscItems','Miscellaneous Items','2015-10-07 00:58:36',NULL),(117,'kk_panel_cat_miscItems','Miscellaneous Category Items','2015-10-07 00:58:36',NULL),(118,'kk_panel_prod_miscItems','Miscellaneous Product Items','2015-10-07 00:58:36',NULL),(119,'kk_panel_syncProducts','Synchronize Products','2015-10-07 00:58:37',NULL),(120,'kk_panel_viewLogs','View Logs','2015-10-07 00:58:37',NULL),(121,'kk_panel_customerForReview','Customer From Reviews','2015-10-07 00:58:37',NULL),(122,'kk_panel_license','Licensing','2015-10-07 00:58:41',NULL),(123,'kk_panel_jobs','Scheduled Jobs','2015-10-07 00:58:42',NULL),(124,'kk_panel_viewBatchLogs','View Batch Jobs','2015-10-07 00:58:42',NULL),(125,'kk_panel_sitemap','SitemapConfiguration','2015-10-07 00:58:43',NULL),(126,'kk_panel_importer','Importer','2015-10-07 00:58:43',NULL),(127,'kk_panel_importerConfig','Importer Configuration','2015-10-07 00:58:43',NULL),(128,'kk_panel_resetDatabase','Reset Database','2015-10-07 00:58:43',NULL),(129,'kk_panel_viewImporterLogs','View Importer Jobs','2015-10-07 00:58:43',NULL),(130,'kk_panel_velocityTemplates','Maintain Velocity Templates','2015-10-07 00:58:44',NULL),(131,'kk_panel_store_address','Store Addresses','2015-10-07 00:58:44',NULL),(132,'kk_panel_refunds','Order Refunds','2015-10-07 00:58:44',NULL),(133,'kk_panel_refundsFromOrders','Order Refunds For Order','2015-10-07 00:58:44',NULL),(134,'kk_panel_customA','Custom Panel A','2015-10-07 00:58:44',NULL),(135,'kk_panel_customB','Custom Panel B','2015-10-07 00:58:44',NULL),(136,'kk_panel_customC','Custom Panel C','2015-10-07 00:58:44',NULL),(137,'kk_panel_customD','Custom Panel D','2015-10-07 00:58:44',NULL),(138,'kk_panel_customE','Custom Panel E','2015-10-07 00:58:44',NULL),(139,'kk_panel_customF','Custom Panel F','2015-10-07 00:58:44',NULL),(140,'kk_panel_customG','Custom Panel G','2015-10-07 00:58:44',NULL),(141,'kk_panel_customH','Custom Panel H','2015-10-07 00:58:44',NULL),(142,'kk_panel_customI','Custom Panel I','2015-10-07 00:58:44',NULL),(143,'kk_panel_customJ','Custom Panel J','2015-10-07 00:58:44',NULL),(144,'kk_panel_shippers','Shippers','2015-10-07 00:58:44',NULL),(145,'kk_panel_customerForReview_2','Customer From Reviews 2','2015-10-07 00:58:44',NULL),(146,'kk_panel_shipments','Order Shipments','2015-10-07 00:58:45',NULL),(147,'kk_panel_shipmentsFromOrders','Shipments from Orders Panel','2015-10-07 00:58:45',NULL),(148,'kk_panel_userDefinedConfig','User Defined Configurations','2015-10-07 00:58:46',NULL),(149,'kk_panel_contentTypes','Content Types','2015-10-07 00:58:48',NULL),(150,'kk_panel_content','Content','2015-10-07 00:58:48',NULL),(151,'kk_panel_editContent','Edit Content','2015-10-07 00:58:48',NULL),(152,'kk_panel_viewMailingLists','View Mailing Lists','2015-10-07 00:58:51',NULL),(153,'kk_panel_createMailingLists','Create Mailing Lists','2015-10-07 00:58:51',NULL),(154,'kk_panel_catalog_prices','Catalog Price Generation','2015-10-07 00:58:52',NULL),(155,'kk_panel_filters','Filters','2015-10-07 00:58:52',NULL);
/*!40000 ALTER TABLE `kk_panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_payment_schedule`
--

DROP TABLE IF EXISTS `kk_payment_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_payment_schedule` (
  `kk_payment_schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `length` int(11) NOT NULL DEFAULT '0',
  `unit` int(11) NOT NULL DEFAULT '0',
  `day_of_month` int(11) NOT NULL DEFAULT '0',
  `occurrences` int(11) NOT NULL DEFAULT '0',
  `trial_occurrences` int(11) NOT NULL DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_payment_schedule_id`),
  KEY `i_storid_kk_pay_sched` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_payment_schedule`
--

LOCK TABLES `kk_payment_schedule` WRITE;
/*!40000 ALTER TABLE `kk_payment_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_payment_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_product_prices`
--

DROP TABLE IF EXISTS `kk_product_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_product_prices` (
  `store_id` varchar(64) DEFAULT NULL,
  `catalog_id` varchar(32) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_attributes_id` int(11) NOT NULL,
  `tier_price_id` int(11) NOT NULL DEFAULT '0',
  `products_price_0` decimal(15,4) DEFAULT NULL,
  `products_price_1` decimal(15,4) DEFAULT NULL,
  `products_price_2` decimal(15,4) DEFAULT NULL,
  `products_price_3` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`catalog_id`,`products_id`,`products_attributes_id`,`tier_price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_product_prices`
--

LOCK TABLES `kk_product_prices` WRITE;
/*!40000 ALTER TABLE `kk_product_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_product_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_product_to_stores`
--

DROP TABLE IF EXISTS `kk_product_to_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_product_to_stores` (
  `store_id` varchar(64) NOT NULL,
  `products_id` int(11) NOT NULL,
  `price_id` int(11) NOT NULL DEFAULT '-1',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`store_id`,`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_product_to_stores`
--

LOCK TABLES `kk_product_to_stores` WRITE;
/*!40000 ALTER TABLE `kk_product_to_stores` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_product_to_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_product_to_templates`
--

DROP TABLE IF EXISTS `kk_product_to_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_product_to_templates` (
  `store_id` varchar(64) DEFAULT NULL,
  `products_id` int(11) NOT NULL,
  `cust_attr_tmpl_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`products_id`,`cust_attr_tmpl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_product_to_templates`
--

LOCK TABLES `kk_product_to_templates` WRITE;
/*!40000 ALTER TABLE `kk_product_to_templates` DISABLE KEYS */;
INSERT INTO `kk_product_to_templates` VALUES (NULL,4,1,0),(NULL,6,1,0),(NULL,9,1,0),(NULL,10,1,0),(NULL,11,1,0),(NULL,12,1,0),(NULL,13,1,0),(NULL,17,1,0),(NULL,18,1,0);
/*!40000 ALTER TABLE `kk_product_to_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_promotion_to_expression`
--

DROP TABLE IF EXISTS `kk_promotion_to_expression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_promotion_to_expression` (
  `promotion_id` int(11) NOT NULL,
  `kk_expression_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`promotion_id`,`kk_expression_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_promotion_to_expression`
--

LOCK TABLES `kk_promotion_to_expression` WRITE;
/*!40000 ALTER TABLE `kk_promotion_to_expression` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_promotion_to_expression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_reserved_points`
--

DROP TABLE IF EXISTS `kk_reserved_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_reserved_points` (
  `kk_reserved_points_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `customers_id` int(11) NOT NULL DEFAULT '0',
  `reward_points_id` int(11) NOT NULL DEFAULT '0',
  `reservation_id` int(11) NOT NULL DEFAULT '0',
  `reserved_points` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_reserved_points_id`),
  KEY `i_custid_kk_reserved_pts` (`reservation_id`),
  KEY `i_storid_kk_reserved_pts` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_reserved_points`
--

LOCK TABLES `kk_reserved_points` WRITE;
/*!40000 ALTER TABLE `kk_reserved_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_reserved_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_reward_points`
--

DROP TABLE IF EXISTS `kk_reward_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_reward_points` (
  `kk_reward_points_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `customers_id` int(11) NOT NULL DEFAULT '0',
  `initial_points` int(11) NOT NULL DEFAULT '0',
  `remaining_points` int(11) NOT NULL DEFAULT '0',
  `expired` int(11) NOT NULL DEFAULT '0',
  `tx_type` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_reward_points_id`),
  KEY `i_custid_kk_reward_pts` (`customers_id`),
  KEY `i_storid_kk_reward_pts` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_reward_points`
--

LOCK TABLES `kk_reward_points` WRITE;
/*!40000 ALTER TABLE `kk_reward_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_reward_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_role`
--

DROP TABLE IF EXISTS `kk_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `super_user` int(1) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_role`
--

LOCK TABLES `kk_role` WRITE;
/*!40000 ALTER TABLE `kk_role` DISABLE KEYS */;
INSERT INTO `kk_role` VALUES (1,'Super User','Permission to do everything to all stores','2015-10-07 00:58:10',NULL,1,'Administrator',NULL,NULL,NULL,NULL),(2,'Catalog Maintenance','Permission to maintain the catalog of products','2015-10-07 00:58:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Order Maintenance','Permission to maintain the orders','2015-10-07 00:58:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Customer Maintenance','Permission to maintain the customers','2015-10-07 00:58:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Store Administrator','Permission to maintain a single store','2015-10-07 00:58:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `kk_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_role_to_api_call`
--

DROP TABLE IF EXISTS `kk_role_to_api_call`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_role_to_api_call` (
  `role_id` int(11) NOT NULL DEFAULT '0',
  `api_call_id` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`role_id`,`api_call_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_role_to_api_call`
--

LOCK TABLES `kk_role_to_api_call` WRITE;
/*!40000 ALTER TABLE `kk_role_to_api_call` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_role_to_api_call` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_role_to_panel`
--

DROP TABLE IF EXISTS `kk_role_to_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_role_to_panel` (
  `role_id` int(11) NOT NULL DEFAULT '0',
  `panel_id` int(11) NOT NULL DEFAULT '0',
  `can_edit` int(11) DEFAULT '0',
  `can_insert` int(11) DEFAULT '0',
  `can_delete` int(11) DEFAULT '0',
  `custom1` int(11) DEFAULT '0',
  `custom1_desc` varchar(128) DEFAULT NULL,
  `custom2` int(11) DEFAULT '0',
  `custom2_desc` varchar(128) DEFAULT NULL,
  `custom3` int(11) DEFAULT '0',
  `custom3_desc` varchar(128) DEFAULT NULL,
  `custom4` int(11) DEFAULT '0',
  `custom4_desc` varchar(128) DEFAULT NULL,
  `custom5` int(11) DEFAULT '0',
  `custom5_desc` varchar(128) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`role_id`,`panel_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_role_to_panel`
--

LOCK TABLES `kk_role_to_panel` WRITE;
/*!40000 ALTER TABLE `kk_role_to_panel` DISABLE KEYS */;
INSERT INTO `kk_role_to_panel` VALUES (1,1,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,2,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,3,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,4,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,5,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,6,1,1,1,1,'Set to allow upload of configuration files',0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,7,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,8,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,9,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,10,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,11,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,12,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,13,1,1,1,0,'If set packing list button not shown',0,'If set invoice button not shown',0,'If set Export For Shipping button not shown',0,'If set Export button not shown',0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,14,1,1,1,0,'If set email is disabled',0,'If set cannot reset password',0,'If set customer search droplists are disabled',0,'If set login button is hidden',0,'If set addresses button is hidden','2015-10-07 00:58:10',NULL,NULL),(1,15,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,16,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,17,1,1,1,0,'Set to allow read and edit of credit card details',0,'Set to allow read and edit of custom fields, order number, tracking number',0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,18,1,1,1,1,'Set to allow assignment of products to stores',0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,19,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,21,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,22,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,23,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,24,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,25,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,26,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,27,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,28,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,29,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,30,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,31,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,32,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,33,1,1,1,0,'If set packing list button not shown',0,'If set invoice button not shown',0,'If set Export For Shipping button not shown',0,'If set Export button not shown',0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,34,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,35,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,36,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,37,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,38,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,39,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,40,1,1,1,0,'If set reviews button not shown',0,'If set addresses button not shown',0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,41,1,1,1,0,'If set coupons button not shown',0,'If set gift certificates button not shown',0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,42,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,43,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,44,1,1,1,0,'If set reports cannot be run',0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,45,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,46,1,1,1,0,NULL,0,NULL,0,'If set custom returns button is disabled',0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,47,1,1,1,0,NULL,0,NULL,0,'If set custom returns button is disabled',0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,48,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,49,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,50,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,51,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,52,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,53,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,55,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,56,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,57,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,58,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,59,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,60,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,61,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(1,62,1,1,1,0,'If set, template names can be entered in a text box',0,'If set, a file upload button is not displayed',0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:12',NULL,NULL),(1,63,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:14',NULL,NULL),(1,64,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:14',NULL,NULL),(1,65,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:15',NULL,NULL),(1,66,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:15',NULL,NULL),(1,67,1,1,1,0,'If set email is disabled',0,'If set cannot reset password',0,'If set customer search droplists are disabled',0,'If set login button is hidden',0,'If set addresses button is hidden','2015-10-07 00:58:15',NULL,NULL),(1,68,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:15',NULL,NULL),(1,69,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:15',NULL,NULL),(1,70,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:15',NULL,NULL),(1,71,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:15',NULL,NULL),(1,72,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:15',NULL,NULL),(1,73,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:15',NULL,NULL),(1,74,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:15',NULL,NULL),(1,75,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:15',NULL,NULL),(1,76,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:15',NULL,NULL),(1,77,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:15',NULL,NULL),(1,78,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:15',NULL,NULL),(1,81,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:16',NULL,NULL),(1,82,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:16',NULL,NULL),(1,83,1,1,1,1,'Set to allow admin of all stores',0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(1,84,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(1,85,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(1,86,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(1,87,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:24',NULL,NULL),(1,88,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:24',NULL,NULL),(1,89,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:26',NULL,NULL),(1,90,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:26',NULL,NULL),(1,91,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:26',NULL,NULL),(1,92,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:28',NULL,NULL),(1,93,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:28',NULL,NULL),(1,94,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:28',NULL,NULL),(1,95,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:29',NULL,NULL),(1,96,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:29',NULL,NULL),(1,97,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:29',NULL,NULL),(1,98,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:29',NULL,NULL),(1,99,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:32',NULL,NULL),(1,100,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:32',NULL,NULL),(1,101,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:32',NULL,NULL),(1,102,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(1,103,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(1,104,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(1,105,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(1,106,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(1,107,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(1,108,1,1,1,0,'Set to Access Invisible Customers',0,'If set reviews button is hidden',0,'If set custom button is hidden',0,NULL,0,NULL,'2015-10-07 00:58:34',NULL,NULL),(1,109,1,1,1,0,'Set to Access Invisible Customers',0,'If set reviews button is hidden',0,'If set custom button is hidden',0,NULL,0,NULL,'2015-10-07 00:58:34',NULL,NULL),(1,110,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:34',NULL,NULL),(1,111,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:34',NULL,NULL),(1,112,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:34',NULL,NULL),(1,113,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:35',NULL,NULL),(1,114,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:35',NULL,NULL),(1,115,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:36',NULL,NULL),(1,116,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:36',NULL,NULL),(1,117,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:36',NULL,NULL),(1,118,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:36',NULL,NULL),(1,119,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:37',NULL,NULL),(1,120,1,1,0,0,'Set to hide the View button',0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:37',NULL,NULL),(1,121,1,1,1,0,'If set email is disabled',0,'If set cannot reset password',0,'If set customer search droplists are disabled',0,'If set login button is hidden',0,'If set addresses button is hidden','2015-10-07 00:58:37',NULL,NULL),(1,122,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:41',NULL,NULL),(1,123,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:42',NULL,NULL),(1,124,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:42',NULL,NULL),(1,125,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:43',NULL,NULL),(1,126,1,1,1,0,'If set Custom1 button is not shown',0,'If set Custom2 button is not shown',0,'If set Custom3 button is not shown',0,'If set Upload button is not shown',0,NULL,'2015-10-07 00:58:43',NULL,NULL),(1,127,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:43',NULL,NULL),(1,128,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:43',NULL,NULL),(1,129,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:43',NULL,NULL),(1,130,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(1,131,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(1,132,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(1,133,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(1,134,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(1,135,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(1,136,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(1,137,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(1,138,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(1,139,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:52',NULL,NULL),(1,144,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(1,145,1,1,1,0,'Set to Access Invisible Customers',0,'If set reviews button is hidden',0,'If set custom button is hidden',0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(1,146,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:45',NULL,NULL),(1,147,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:45',NULL,NULL),(1,148,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:46',NULL,NULL),(1,149,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:48',NULL,NULL),(1,150,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:48',NULL,NULL),(1,151,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:48',NULL,NULL),(1,152,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:51',NULL,NULL),(1,153,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:51',NULL,NULL),(1,154,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:52',NULL,NULL),(1,155,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:52',NULL,NULL),(2,5,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(2,9,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(2,10,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(2,18,1,1,1,0,'Set to allow assignment of products to stores',0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(2,29,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(2,37,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(2,38,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(2,39,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(2,40,1,1,1,0,'If set reviews button not shown',0,'If set addresses button not shown',0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(2,41,1,1,1,0,'If set coupons button not shown',0,'If set gift certificates button not shown',0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(2,42,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(2,61,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(2,65,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:15',NULL,NULL),(2,66,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:15',NULL,NULL),(2,87,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:24',NULL,NULL),(2,88,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:24',NULL,NULL),(2,89,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:26',NULL,NULL),(2,90,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:26',NULL,NULL),(2,91,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:26',NULL,NULL),(2,95,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:29',NULL,NULL),(2,99,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:32',NULL,NULL),(2,100,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:32',NULL,NULL),(2,101,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:32',NULL,NULL),(2,106,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(2,107,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(2,111,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:34',NULL,NULL),(2,113,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:35',NULL,NULL),(2,115,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:36',NULL,NULL),(2,116,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:36',NULL,NULL),(2,117,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:36',NULL,NULL),(2,118,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:36',NULL,NULL),(2,119,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:37',NULL,NULL),(2,134,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(2,135,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(2,137,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(2,139,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:52',NULL,NULL),(2,154,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:52',NULL,NULL),(3,17,1,1,1,0,'Set to allow read and edit of credit card details',0,'Set to allow read and edit of custom fields, order number, tracking number',0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(3,24,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(3,25,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(3,33,1,1,1,0,'If set packing list button not shown',0,'If set invoice button not shown',0,'If set Export For Shipping button not shown',0,'If set Export button not shown',0,NULL,'2015-10-07 00:58:10',NULL,NULL),(3,46,1,1,1,0,NULL,0,NULL,0,'If set custom returns button is disabled',0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(3,47,1,1,1,0,NULL,0,NULL,0,'If set custom returns button is disabled',0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(3,61,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(3,67,0,0,0,0,'If set email is disabled',0,'If set cannot reset password',0,'If set customer search droplists are disabled',0,'If set login button is hidden',0,'If set addresses button is hidden','2015-10-07 00:58:15',NULL,NULL),(3,96,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:29',NULL,NULL),(3,97,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:29',NULL,NULL),(3,98,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:29',NULL,NULL),(3,109,1,1,1,0,'Set to Access Invisible Customers',0,'If set reviews button is hidden',0,'If set custom button is hidden',0,NULL,0,NULL,'2015-10-07 00:58:34',NULL,NULL),(3,110,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:34',NULL,NULL),(3,132,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(3,133,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(3,136,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(3,146,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:45',NULL,NULL),(3,147,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:45',NULL,NULL),(4,13,1,1,1,0,'If set packing list button not shown',0,'If set invoice button not shown',0,'If set Export For Shipping button not shown',0,'If set Export button not shown',0,NULL,'2015-10-07 00:58:10',NULL,NULL),(4,14,1,1,1,0,'If set email is disabled',0,'If set cannot reset password',0,'If set customer search droplists are disabled',0,'If set login button is hidden',0,'If set addresses button is hidden','2015-10-07 00:58:10',NULL,NULL),(4,16,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(4,23,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(4,61,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:10',NULL,NULL),(4,62,1,1,1,0,'If set, template names can be entered in a text box',0,'If set, a file upload button is not displayed',0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:12',NULL,NULL),(4,63,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:14',NULL,NULL),(4,103,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(4,104,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(4,105,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(4,108,1,1,1,0,'Set to Access Invisible Customers',0,'If set reviews button is hidden',0,'If set custom button is hidden',0,NULL,0,NULL,'2015-10-07 00:58:34',NULL,NULL),(4,112,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:34',NULL,NULL),(4,121,1,1,1,0,'If set email is disabled',0,'If set cannot reset password',0,'If set customer search droplists are disabled',0,'If set login button is hidden',0,'If set addresses button is hidden','2015-10-07 00:58:37',NULL,NULL),(4,131,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(4,145,1,1,1,0,'Set to Access Invisible Customers',0,'If set reviews button is hidden',0,'If set custom button is hidden',0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(5,2,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,3,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,4,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,5,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,7,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,9,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,10,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,12,0,0,0,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,13,1,1,1,0,'If set packing list button not shown',0,'If set invoice button not shown',0,'If set Export For Shipping button not shown',0,'If set Export button not shown',0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,14,0,0,0,0,'If set email is disabled',0,'If set cannot reset password',0,'If set customer search droplists are disabled',0,'If set login button is hidden',0,'If set addresses button is hidden','2015-10-07 00:58:23',NULL,NULL),(5,15,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,16,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,17,1,1,1,0,'Set to allow read and edit of credit card details',0,'Set to allow read and edit of custom fields, order number, tracking number',0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,18,1,1,1,0,'Set to allow assignment of products to stores',0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,19,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,22,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,23,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,24,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,25,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,27,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,29,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,30,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,31,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,33,1,1,1,0,'If set packing list button not shown',0,'If set invoice button not shown',0,'If set Export For Shipping button not shown',0,'If set Export button not shown',0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,34,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,35,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,36,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,37,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,38,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,39,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,40,1,1,1,0,'If set reviews button not shown',0,'If set addresses button not shown',0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,41,1,1,1,0,'If set coupons button not shown',0,'If set gift certificates button not shown',0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,42,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,43,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,44,1,1,1,0,'If set reports cannot be run',0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,45,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,46,1,1,1,0,NULL,0,NULL,0,'If set custom returns button is disabled',0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,47,1,1,1,0,NULL,0,NULL,0,'If set custom returns button is disabled',0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,48,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,49,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,50,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,51,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,52,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,53,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,61,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,62,1,1,1,0,'If set, template names can be entered in a text box',0,'If set, a file upload button is not displayed',0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,64,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,65,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,66,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,67,1,1,1,0,'If set email is disabled',0,'If set cannot reset password',0,'If set customer search droplists are disabled',0,'If set login button is hidden',0,'If set addresses button is hidden','2015-10-07 00:58:23',NULL,NULL),(5,68,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,69,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,70,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,71,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,72,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,73,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,74,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,75,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,76,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,77,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,78,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,81,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,82,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,83,1,0,0,0,'Set to allow admin of all stores',0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,84,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:23',NULL,NULL),(5,92,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:28',NULL,NULL),(5,93,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:28',NULL,NULL),(5,94,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:28',NULL,NULL),(5,95,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:29',NULL,NULL),(5,96,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:29',NULL,NULL),(5,97,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:29',NULL,NULL),(5,98,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:29',NULL,NULL),(5,99,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:32',NULL,NULL),(5,100,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:32',NULL,NULL),(5,101,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:32',NULL,NULL),(5,102,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(5,103,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(5,104,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(5,105,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(5,106,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(5,107,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:33',NULL,NULL),(5,108,1,1,1,0,'Set to Access Invisible Customers',0,'If set reviews button is hidden',0,'If set custom button is hidden',0,NULL,0,NULL,'2015-10-07 00:58:34',NULL,NULL),(5,109,1,1,1,0,'Set to Access Invisible Customers',0,'If set reviews button is hidden',0,'If set custom button is hidden',0,NULL,0,NULL,'2015-10-07 00:58:34',NULL,NULL),(5,110,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:34',NULL,NULL),(5,111,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:34',NULL,NULL),(5,112,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:34',NULL,NULL),(5,113,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:35',NULL,NULL),(5,114,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:35',NULL,NULL),(5,115,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:36',NULL,NULL),(5,116,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:36',NULL,NULL),(5,117,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:36',NULL,NULL),(5,118,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:36',NULL,NULL),(5,119,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:37',NULL,NULL),(5,121,1,1,1,0,'If set email is disabled',0,'If set cannot reset password',0,'If set customer search droplists are disabled',0,'If set login button is hidden',0,'If set addresses button is hidden','2015-10-07 00:58:37',NULL,NULL),(5,122,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:41',NULL,NULL),(5,123,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:42',NULL,NULL),(5,124,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:42',NULL,NULL),(5,125,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:43',NULL,NULL),(5,126,1,1,1,0,'If set Custom1 button is not shown',0,'If set Custom2 button is not shown',0,'If set Custom3 button is not shown',0,'If set Upload button is not shown',0,NULL,'2015-10-07 00:58:43',NULL,NULL),(5,127,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:43',NULL,NULL),(5,128,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:43',NULL,NULL),(5,129,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:43',NULL,NULL),(5,130,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(5,131,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(5,132,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(5,133,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(5,134,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(5,135,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(5,136,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(5,137,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(5,138,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(5,139,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:52',NULL,NULL),(5,144,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(5,145,1,1,1,0,'Set to Access Invisible Customers',0,'If set reviews button is hidden',0,'If set custom button is hidden',0,NULL,0,NULL,'2015-10-07 00:58:44',NULL,NULL),(5,146,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:45',NULL,NULL),(5,147,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:45',NULL,NULL),(5,148,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:46',NULL,NULL),(5,149,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:48',NULL,NULL),(5,150,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:48',NULL,NULL),(5,151,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:48',NULL,NULL),(5,152,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:51',NULL,NULL),(5,153,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:51',NULL,NULL),(5,154,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:52',NULL,NULL),(5,155,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2015-10-07 00:58:52',NULL,NULL);
/*!40000 ALTER TABLE `kk_role_to_panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_secret_key`
--

DROP TABLE IF EXISTS `kk_secret_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_secret_key` (
  `kk_secret_key_id` int(11) NOT NULL AUTO_INCREMENT,
  `secret_key` varchar(255) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_secret_key_id`),
  KEY `idx_secret_key_kk_secret_key` (`secret_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_secret_key`
--

LOCK TABLES `kk_secret_key` WRITE;
/*!40000 ALTER TABLE `kk_secret_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_secret_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_shipments_to_ord_prods`
--

DROP TABLE IF EXISTS `kk_shipments_to_ord_prods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_shipments_to_ord_prods` (
  `order_shipment_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`order_shipment_id`,`order_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_shipments_to_ord_prods`
--

LOCK TABLES `kk_shipments_to_ord_prods` WRITE;
/*!40000 ALTER TABLE `kk_shipments_to_ord_prods` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_shipments_to_ord_prods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_shipper`
--

DROP TABLE IF EXISTS `kk_shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_shipper` (
  `shipper_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `tracking_url` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`shipper_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_shipper`
--

LOCK TABLES `kk_shipper` WRITE;
/*!40000 ALTER TABLE `kk_shipper` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_shipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_sso`
--

DROP TABLE IF EXISTS `kk_sso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_sso` (
  `kk_sso_id` int(11) NOT NULL AUTO_INCREMENT,
  `secret_key` varchar(255) NOT NULL,
  `customers_id` int(11) DEFAULT '0',
  `sesskey` varchar(32) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`kk_sso_id`),
  KEY `i_kk_sso_1` (`secret_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_sso`
--

LOCK TABLES `kk_sso` WRITE;
/*!40000 ALTER TABLE `kk_sso` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_sso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_store`
--

DROP TABLE IF EXISTS `kk_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_store` (
  `store_id` varchar(64) NOT NULL,
  `store_name` varchar(64) NOT NULL,
  `store_desc` varchar(128) NOT NULL,
  `store_enabled` int(1) NOT NULL,
  `store_under_maint` int(1) NOT NULL,
  `store_deleted` int(1) NOT NULL,
  `store_template` int(1) NOT NULL,
  `store_admin_email` varchar(96) DEFAULT NULL,
  `store_css_filename` varchar(128) DEFAULT NULL,
  `store_logo_filename` varchar(128) DEFAULT NULL,
  `store_url` varchar(128) DEFAULT NULL,
  `store_home` varchar(64) DEFAULT NULL,
  `store_max_products` int(11) NOT NULL DEFAULT '-1',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_store`
--

LOCK TABLES `kk_store` WRITE;
/*!40000 ALTER TABLE `kk_store` DISABLE KEYS */;
INSERT INTO `kk_store` VALUES ('store1','store1','Store Number One',1,0,0,0,'admin@konakart.com','style.css','logo.png',NULL,'derby',-1,NULL,NULL,NULL,NULL,NULL,'2015-10-07 00:58:23',NULL);
/*!40000 ALTER TABLE `kk_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_subscription`
--

DROP TABLE IF EXISTS `kk_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_subscription` (
  `kk_subscription_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `orders_number` varchar(128) DEFAULT NULL,
  `customers_id` int(11) NOT NULL DEFAULT '0',
  `products_id` int(11) NOT NULL DEFAULT '0',
  `payment_schedule_id` int(11) NOT NULL DEFAULT '0',
  `products_sku` varchar(255) DEFAULT NULL,
  `subscription_code` varchar(128) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `amount` decimal(15,4) NOT NULL,
  `trial_amount` decimal(15,4) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `problem` int(11) NOT NULL DEFAULT '0',
  `problem_description` varchar(255) DEFAULT NULL,
  `last_billing_date` datetime DEFAULT NULL,
  `next_billing_date` datetime DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`kk_subscription_id`),
  KEY `i_storid_kk_subscription` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_subscription`
--

LOCK TABLES `kk_subscription` WRITE;
/*!40000 ALTER TABLE `kk_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_tag`
--

DROP TABLE IF EXISTS `kk_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_tag` (
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(128) NOT NULL,
  `sort_order` int(11) DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`tag_id`,`language_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_tag`
--

LOCK TABLES `kk_tag` WRITE;
/*!40000 ALTER TABLE `kk_tag` DISABLE KEYS */;
INSERT INTO `kk_tag` VALUES (1,1,'General Audience: G',0,NULL),(1,2,'General Audience: G',0,NULL),(1,3,'General Audience: G',0,NULL),(1,4,'Audiência Geral: G',0,NULL),(2,1,'Parental Guidance: PG',1,NULL),(2,2,'Parental Guidance: PG',1,NULL),(2,3,'Parental Guidance: PG',1,NULL),(2,4,'Parental Guidance: PG',1,NULL),(3,1,'Parents Cautioned: PG-13',2,NULL),(3,2,'Parents Cautioned: PG-13',2,NULL),(3,3,'Parents Cautioned: PG-13',2,NULL),(3,4,'Pais Advertido: PG-13',2,NULL),(4,1,'Restricted: R',3,NULL),(4,2,'Restricted: R',3,NULL),(4,3,'Restricted: R',3,NULL),(4,4,'Restrito: R',3,NULL),(5,1,'Adults Only: NC-17',4,NULL),(5,2,'Adults Only: NC-17',4,NULL),(5,3,'Adults Only: NC-17',4,NULL),(5,4,'Adults Only: NC-17',4,NULL),(6,1,'Blu-ray',0,NULL),(6,2,'Blu-ray',0,NULL),(6,3,'Blu-ray',0,NULL),(6,4,'Blu-ray',0,NULL),(7,1,'HD-DVD',1,NULL),(7,2,'HD-DVD',1,NULL),(7,3,'HD-DVD',1,NULL),(7,4,'HD-DVD',1,NULL);
/*!40000 ALTER TABLE `kk_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_tag_group`
--

DROP TABLE IF EXISTS `kk_tag_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_tag_group` (
  `tag_group_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `facet_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tag_group_id`,`language_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_tag_group`
--

LOCK TABLES `kk_tag_group` WRITE;
/*!40000 ALTER TABLE `kk_tag_group` DISABLE KEYS */;
INSERT INTO `kk_tag_group` VALUES (1,1,'MPAA Movie Ratings','The MPAA rating given to each movie',NULL,2),(1,2,'MPAA Movie Ratings','The MPAA rating given to each movie',NULL,2),(1,3,'MPAA Movie Ratings','The MPAA rating given to each movie',NULL,2),(1,4,'Avaliações MPAA Movie','A MPAA rating dado a cada filme',NULL,2),(2,1,'DVD Format','The format of the DVD',NULL,1),(2,2,'DVD Format','The format of the DVD',NULL,1),(2,3,'DVD Format','The format of the DVD',NULL,1),(2,4,'Formato DVD','O formato do DVD',NULL,1);
/*!40000 ALTER TABLE `kk_tag_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_tag_group_to_tag`
--

DROP TABLE IF EXISTS `kk_tag_group_to_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_tag_group_to_tag` (
  `tag_group_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`tag_group_id`,`tag_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_tag_group_to_tag`
--

LOCK TABLES `kk_tag_group_to_tag` WRITE;
/*!40000 ALTER TABLE `kk_tag_group_to_tag` DISABLE KEYS */;
INSERT INTO `kk_tag_group_to_tag` VALUES (1,1,NULL),(1,2,NULL),(1,3,NULL),(1,4,NULL),(1,5,NULL),(2,6,NULL),(2,7,NULL);
/*!40000 ALTER TABLE `kk_tag_group_to_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_tag_to_product`
--

DROP TABLE IF EXISTS `kk_tag_to_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_tag_to_product` (
  `tag_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`tag_id`,`products_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_tag_to_product`
--

LOCK TABLES `kk_tag_to_product` WRITE;
/*!40000 ALTER TABLE `kk_tag_to_product` DISABLE KEYS */;
INSERT INTO `kk_tag_to_product` VALUES (1,4,'2015-10-07 00:58:15',NULL),(1,6,'2015-10-07 00:58:15',NULL),(2,9,'2015-10-07 00:58:15',NULL),(2,10,'2015-10-07 00:58:15',NULL),(3,11,'2015-10-07 00:58:15',NULL),(3,12,'2015-10-07 00:58:15',NULL),(4,13,'2015-10-07 00:58:15',NULL),(4,17,'2015-10-07 00:58:15',NULL),(5,18,'2015-10-07 00:58:15',NULL),(6,4,'2015-10-07 00:58:15',NULL),(6,6,'2015-10-07 00:58:15',NULL),(6,9,'2015-10-07 00:58:15',NULL),(6,10,'2015-10-07 00:58:15',NULL),(7,11,'2015-10-07 00:58:15',NULL),(7,12,'2015-10-07 00:58:15',NULL),(7,13,'2015-10-07 00:58:15',NULL),(7,17,'2015-10-07 00:58:15',NULL),(7,18,'2015-10-07 00:58:15',NULL);
/*!40000 ALTER TABLE `kk_tag_to_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_tier_price`
--

DROP TABLE IF EXISTS `kk_tier_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_tier_price` (
  `kk_tier_price_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `products_id` int(11) NOT NULL,
  `products_quantity` int(11) NOT NULL,
  `tier_price` decimal(15,4) DEFAULT NULL,
  `tier_price_1` decimal(15,4) DEFAULT NULL,
  `tier_price_2` decimal(15,4) DEFAULT NULL,
  `tier_price_3` decimal(15,4) DEFAULT NULL,
  `use_percentage_discount` int(11) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`kk_tier_price_id`),
  KEY `i_prodid_kk_tier_price` (`products_id`),
  KEY `i_storid_kk_tier_price` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_tier_price`
--

LOCK TABLES `kk_tier_price` WRITE;
/*!40000 ALTER TABLE `kk_tier_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_tier_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_tmpl_to_cust_attr`
--

DROP TABLE IF EXISTS `kk_tmpl_to_cust_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_tmpl_to_cust_attr` (
  `kk_cust_attr_tmpl_id` int(11) NOT NULL DEFAULT '0',
  `kk_cust_attr_id` int(11) NOT NULL DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kk_cust_attr_tmpl_id`,`kk_cust_attr_id`),
  KEY `idx_st_kk_tmpl_to_cust_attr` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_tmpl_to_cust_attr`
--

LOCK TABLES `kk_tmpl_to_cust_attr` WRITE;
/*!40000 ALTER TABLE `kk_tmpl_to_cust_attr` DISABLE KEYS */;
INSERT INTO `kk_tmpl_to_cust_attr` VALUES (1,11,NULL,0),(1,12,NULL,1);
/*!40000 ALTER TABLE `kk_tmpl_to_cust_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_wishlist`
--

DROP TABLE IF EXISTS `kk_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_wishlist` (
  `kk_wishlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `customers_id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `public_or_private` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `customers_firstname` varchar(32) DEFAULT NULL,
  `customers_lastname` varchar(32) DEFAULT NULL,
  `customers_dob` datetime DEFAULT NULL,
  `customers_city` varchar(64) DEFAULT NULL,
  `customers_state` varchar(32) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `customers1_firstname` varchar(32) DEFAULT NULL,
  `customers1_lastname` varchar(32) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `list_type` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  PRIMARY KEY (`kk_wishlist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_wishlist`
--

LOCK TABLES `kk_wishlist` WRITE;
/*!40000 ALTER TABLE `kk_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_wishlist_item`
--

DROP TABLE IF EXISTS `kk_wishlist_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_wishlist_item` (
  `kk_wishlist_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `kk_wishlist_id` int(11) NOT NULL,
  `products_id` varchar(255) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `quantity_desired` int(11) DEFAULT NULL,
  `quantity_bought` int(11) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kk_wishlist_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_wishlist_item`
--

LOCK TABLES `kk_wishlist_item` WRITE;
/*!40000 ALTER TABLE `kk_wishlist_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_wishlist_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` char(2) NOT NULL,
  `image` varchar(64) DEFAULT NULL,
  `directory` varchar(32) DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `display_only` int(11) DEFAULT '0',
  PRIMARY KEY (`languages_id`),
  KEY `IDX_LANGUAGES_NAME` (`name`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','icon.gif','english',1,NULL,'en_GB',0),(2,'Deutsch','de','icon.gif','german',2,NULL,'de_DE',0),(3,'Español','es','icon.gif','espanol',3,NULL,'es_ES',0),(4,'Português','pt','icon.gif','portuguese',4,NULL,'pt_BR',0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturers` (
  `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturers_name` varchar(32) NOT NULL,
  `manufacturers_image` varchar(64) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`),
  KEY `IDX_MANUFACTURERS_NAME` (`manufacturers_name`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (1,'Matrox','manufacturer/matrox.gif','2015-10-07 00:58:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Microsoft','manufacturer/microsoft.gif','2015-10-07 00:58:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Warner','manufacturer/warner.gif','2015-10-07 00:58:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Fox','manufacturer/fox.gif','2015-10-07 00:58:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Logitech','manufacturer/logitech.gif','2015-10-07 00:58:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Canon','manufacturer/canon.gif','2015-10-07 00:58:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Sierra','manufacturer/sierra.gif','2015-10-07 00:58:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'GT Interactive','manufacturer/gt_interactive.gif','2015-10-07 00:58:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Hewlett Packard','manufacturer/hewlett_packard.gif','2015-10-07 00:58:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'KonaKart','manufacturer/konakart.jpg','2015-10-07 00:58:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Lionsgate','manufacturer/lionsgate.jpg','2015-10-07 00:58:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'DeLonghi','manufacturer/delonghi.jpg','2015-10-07 00:58:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Amazon','manufacturer/amazon.jpg','2015-10-07 00:58:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Apple','manufacturer/apple.jpg','2015-10-07 00:58:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Acctim','manufacturer/acctim.jpg','2015-10-07 00:58:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Eddingtons','manufacturer/eddingtons.jpg','2015-10-07 00:58:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Bosch','manufacturer/bosch.jpg','2015-10-07 00:58:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Flymo','manufacturer/flymo.jpg','2015-10-07 00:58:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Brita','manufacturer/brita.jpg','2015-10-07 00:58:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Brabantia','manufacturer/brabantia.jpg','2015-10-07 00:58:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Samsung','manufacturer/samsung.jpg','2015-10-07 00:58:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Sony','manufacturer/sony.jpg','2015-10-07 00:58:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Nikon','manufacturer/nikon.jpg','2015-10-07 00:58:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'Newgate','manufacturer/newgate.jpg','2015-10-07 00:58:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Activision','manufacturer/activision.jpg','2015-10-07 00:58:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers_info`
--

DROP TABLE IF EXISTS `manufacturers_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(255) NOT NULL,
  `url_clicked` int(5) NOT NULL DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`,`languages_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers_info`
--

LOCK TABLES `manufacturers_info` WRITE;
/*!40000 ALTER TABLE `manufacturers_info` DISABLE KEYS */;
INSERT INTO `manufacturers_info` VALUES (1,1,'http://www.matrox.com',0,NULL,NULL),(1,2,'http://www.matrox.de',0,NULL,NULL),(1,3,'http://www.matrox.com',0,NULL,NULL),(1,4,'http://www.matrox.com',0,NULL,NULL),(2,1,'http://www.microsoft.com',0,NULL,NULL),(2,2,'http://www.microsoft.de',0,NULL,NULL),(2,3,'http://www.microsoft.es',0,NULL,NULL),(2,4,'http://www.microsoft.com',0,NULL,NULL),(3,1,'http://www.warner.com',0,NULL,NULL),(3,2,'http://www.warner.de',0,NULL,NULL),(3,3,'http://www.warner.com',0,NULL,NULL),(3,4,'http://www.warner.com',0,NULL,NULL),(4,1,'http://www.fox.com',0,NULL,NULL),(4,2,'http://www.fox.de',0,NULL,NULL),(4,3,'http://www.fox.com',0,NULL,NULL),(4,4,'http://www.fox.com',0,NULL,NULL),(5,1,'http://www.logitech.com',0,NULL,NULL),(5,2,'http://www.logitech.com',0,NULL,NULL),(5,3,'http://www.logitech.com',0,NULL,NULL),(5,4,'http://www.logitech.com',0,NULL,NULL),(6,1,'http://www.canon.com',0,NULL,NULL),(6,2,'http://www.canon.de',0,NULL,NULL),(6,3,'http://www.canon.es',0,NULL,NULL),(6,4,'http://www.canon.com',0,NULL,NULL),(7,1,'http://www.sierra.com',0,NULL,NULL),(7,2,'http://www.sierra.de',0,NULL,NULL),(7,3,'http://www.sierra.com',0,NULL,NULL),(7,4,'http://www.sierra.com',0,NULL,NULL),(8,1,'http://www.infogrames.com',0,NULL,NULL),(8,2,'http://www.infogrames.de',0,NULL,NULL),(8,3,'http://www.infogrames.com',0,NULL,NULL),(8,4,'http://www.infogrames.com',0,NULL,NULL),(9,1,'http://www.hewlettpackard.com',0,NULL,NULL),(9,2,'http://www.hewlettpackard.de',0,NULL,NULL),(9,3,'http://welcome.hp.com/country/es/spa/welcome.htm',0,NULL,NULL),(9,4,'http://www.hewlettpackard.com',0,NULL,NULL),(10,1,'http://www.konakart.com',0,NULL,NULL),(10,2,'http://www.konakart.com',0,NULL,NULL),(10,3,'http://www.konakart.com',0,NULL,NULL),(10,4,'http://www.konakart.com',0,NULL,NULL),(11,1,'http://www.lionsgate.com',0,NULL,NULL),(11,2,'http://www.lionsgate.com',0,NULL,NULL),(11,3,'http://www.lionsgate.com',0,NULL,NULL),(11,4,'http://www.lionsgate.com',0,NULL,NULL),(12,1,'http://www.delonghi.com/us_en/agency/',0,NULL,NULL),(12,2,'http://www.delonghi.com/de_de/agency/',0,NULL,NULL),(12,3,'http://www.delonghi.com/es_es/agency/',0,NULL,NULL),(12,4,'http://www.delonghi.com/pt_pt/agency/',0,NULL,NULL),(13,1,'http://www.amazon.com/',0,NULL,NULL),(13,2,'http://www.amazon.co.de/',0,NULL,NULL),(13,3,'http://www.amazon.co.de/',0,NULL,NULL),(13,4,'http://www.amazon.co.pt/',0,NULL,NULL),(14,1,'http://www.apple.com/',0,NULL,NULL),(14,2,'http://www.apple.co.de/',0,NULL,NULL),(14,3,'http://www.apple.co.de/',0,NULL,NULL),(14,4,'http://www.apple.co.pt/',0,NULL,NULL),(15,1,'http://www.acctim.com/',0,NULL,NULL),(15,2,'http://www.acctim.co.de/',0,NULL,NULL),(15,3,'http://www.acctim.co.de/',0,NULL,NULL),(15,4,'http://www.acctim.co.pt/',0,NULL,NULL),(16,1,'http://www.eddingtons.co.uk/',0,NULL,NULL),(16,2,'http://www.eddingtons.co.uk/',0,NULL,NULL),(16,3,'http://www.eddingtons.co.uk/',0,NULL,NULL),(16,4,'http://www.eddingtons.co.uk/',0,NULL,NULL),(17,1,'http://www.bosch.com/',0,NULL,NULL),(17,2,'http://www.bosch.com/',0,NULL,NULL),(17,3,'http://www.bosch.com/',0,NULL,NULL),(17,4,'http://www.bosch.com/',0,NULL,NULL),(18,1,'http://www.flymo.com/',0,NULL,NULL),(18,2,'http://www.flymo.com/',0,NULL,NULL),(18,3,'http://www.flymo.com/',0,NULL,NULL),(18,4,'http://www.flymo.com/',0,NULL,NULL),(19,1,'http://www.brita.com/',0,NULL,NULL),(19,2,'http://www.brita.de/',0,NULL,NULL),(19,3,'http://www.brita.es/',0,NULL,NULL),(19,4,'http://www.brita.pt',0,NULL,NULL),(20,1,'http://www.brabantia.com/',0,NULL,NULL),(20,2,'http://www.brabantia.de/',0,NULL,NULL),(20,3,'http://www.brabantia.es/',0,NULL,NULL),(20,4,'http://www.brabantia.pt',0,NULL,NULL),(21,1,'http://www.samsung.com/',0,NULL,NULL),(21,2,'http://www.samsung.de/',0,NULL,NULL),(21,3,'http://www.samsung.es/',0,NULL,NULL),(21,4,'http://www.samsung.pt',0,NULL,NULL),(22,1,'http://www.sony.com/',0,NULL,NULL),(22,2,'http://www.sony.de/',0,NULL,NULL),(22,3,'http://www.sony.es/',0,NULL,NULL),(22,4,'http://www.sony.pt',0,NULL,NULL),(23,1,'http://www.nikon.com/',0,NULL,NULL),(23,2,'http://www.nikon.de/',0,NULL,NULL),(23,3,'http://www.nikon.es/',0,NULL,NULL),(23,4,'http://www.nikon.pt',0,NULL,NULL),(24,1,'http://www.newgateclocks.com/',0,NULL,NULL),(24,2,'http://www.newgateclocks.com/',0,NULL,NULL),(24,3,'http://www.newgateclocks.com/',0,NULL,NULL),(24,4,'http://www.newgateclocks.com/',0,NULL,NULL),(25,1,'http://www.activision.com/',0,NULL,NULL),(25,2,'http://www.activision.com/',0,NULL,NULL),(25,3,'http://www.activision.com/',0,NULL,NULL),(25,4,'http://www.activision.com/',0,NULL,NULL);
/*!40000 ALTER TABLE `manufacturers_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `newsletters_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `module` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_sent` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `locked` int(1) DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`newsletters_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(66) DEFAULT NULL,
  `customers_company` varchar(32) DEFAULT NULL,
  `customers_street_address` varchar(64) NOT NULL,
  `customers_suburb` varchar(32) DEFAULT NULL,
  `customers_city` varchar(64) NOT NULL,
  `customers_postcode` varchar(10) NOT NULL,
  `customers_state` varchar(32) DEFAULT NULL,
  `customers_country` varchar(64) DEFAULT NULL,
  `customers_telephone` varchar(32) NOT NULL,
  `customers_email_address` varchar(96) NOT NULL,
  `customers_address_format_id` int(5) NOT NULL,
  `delivery_name` varchar(66) DEFAULT NULL,
  `delivery_company` varchar(32) DEFAULT NULL,
  `delivery_street_address` varchar(64) NOT NULL,
  `delivery_suburb` varchar(32) DEFAULT NULL,
  `delivery_city` varchar(64) NOT NULL,
  `delivery_postcode` varchar(10) NOT NULL,
  `delivery_state` varchar(32) DEFAULT NULL,
  `delivery_country` varchar(64) DEFAULT NULL,
  `delivery_address_format_id` int(5) NOT NULL,
  `billing_name` varchar(66) DEFAULT NULL,
  `billing_company` varchar(32) DEFAULT NULL,
  `billing_street_address` varchar(64) NOT NULL,
  `billing_suburb` varchar(32) DEFAULT NULL,
  `billing_city` varchar(64) NOT NULL,
  `billing_postcode` varchar(10) NOT NULL,
  `billing_state` varchar(32) DEFAULT NULL,
  `billing_country` varchar(64) DEFAULT NULL,
  `billing_address_format_id` int(5) NOT NULL,
  `payment_method` varchar(32) NOT NULL,
  `cc_type` varchar(20) DEFAULT NULL,
  `cc_owner` varchar(64) DEFAULT NULL,
  `cc_number` varchar(32) DEFAULT NULL,
  `cc_expires` varchar(4) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_status` int(5) NOT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `promotion_ids` varchar(64) DEFAULT NULL,
  `coupon_ids` varchar(64) DEFAULT NULL,
  `shipping_module_code` varchar(64) DEFAULT NULL,
  `payment_module_code` varchar(64) DEFAULT NULL,
  `cc_cvv` varchar(10) DEFAULT NULL,
  `e1` varchar(100) DEFAULT NULL,
  `e2` varchar(100) DEFAULT NULL,
  `e3` varchar(100) DEFAULT NULL,
  `e4` varchar(100) DEFAULT NULL,
  `e5` varchar(100) DEFAULT NULL,
  `e6` varchar(100) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `orders_number` varchar(128) DEFAULT NULL,
  `tracking_number` varchar(128) DEFAULT NULL,
  `points_used` int(11) DEFAULT '0',
  `points_awarded` int(11) DEFAULT '0',
  `points_reservation_id` int(11) DEFAULT '-1',
  `customers_locale` varchar(16) DEFAULT NULL,
  `invoice_filename` varchar(255) DEFAULT NULL,
  `customers_telephone_1` varchar(32) DEFAULT NULL,
  `delivery_telephone` varchar(32) DEFAULT NULL,
  `delivery_telephone_1` varchar(32) DEFAULT NULL,
  `delivery_email_address` varchar(96) DEFAULT NULL,
  `billing_telephone` varchar(32) DEFAULT NULL,
  `billing_telephone_1` varchar(32) DEFAULT NULL,
  `billing_email_address` varchar(96) DEFAULT NULL,
  `customers_street_address_1` varchar(64) DEFAULT NULL,
  `delivery_street_address_1` varchar(64) DEFAULT NULL,
  `billing_street_address_1` varchar(64) DEFAULT NULL,
  `shipping_service_code` varchar(128) DEFAULT NULL,
  `lifecycle_id` varchar(128) DEFAULT NULL,
  `billing_addr_id` int(11) DEFAULT '-1',
  `delivery_addr_id` int(11) DEFAULT '-1',
  `customer_addr_id` int(11) DEFAULT '-1',
  `order_creator` varchar(128) DEFAULT NULL,
  `affiliate_id` varchar(128) DEFAULT NULL,
  `payment_module_subcode` varchar(64) DEFAULT NULL,
  `store_name` varchar(64) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `custom6` varchar(16) DEFAULT NULL,
  `custom7` varchar(16) DEFAULT NULL,
  `custom8` varchar(16) DEFAULT NULL,
  `custom9` varchar(16) DEFAULT NULL,
  `custom10` varchar(16) DEFAULT NULL,
  `filter1` varchar(32) DEFAULT NULL,
  `filter2` varchar(32) DEFAULT NULL,
  `filterDecimal1` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(64) DEFAULT NULL,
  `products_name` varchar(255) DEFAULT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `final_price` decimal(15,4) NOT NULL,
  `products_tax` decimal(7,4) NOT NULL,
  `products_quantity` int(2) NOT NULL,
  `products_type` int(11) DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `products_price_0` decimal(15,4) DEFAULT NULL,
  `products_price_1` decimal(15,4) DEFAULT NULL,
  `products_price_2` decimal(15,4) DEFAULT NULL,
  `products_price_3` decimal(15,4) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `products_state` int(11) DEFAULT '0',
  `products_sku` varchar(255) DEFAULT NULL,
  `kk_wishlist_id` int(11) DEFAULT NULL,
  `kk_wishlist_item_id` int(11) DEFAULT NULL,
  `discount_percent` decimal(15,4) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `tax_code` varchar(64) DEFAULT NULL,
  `custom6` varchar(16) DEFAULT NULL,
  `custom7` varchar(16) DEFAULT NULL,
  `custom8` varchar(16) DEFAULT NULL,
  `custom9` varchar(16) DEFAULT NULL,
  `custom10` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`orders_products_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products`
--

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products_attributes`
--

DROP TABLE IF EXISTS `orders_products_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_options` varchar(64) DEFAULT NULL,
  `products_options_values` varchar(64) DEFAULT NULL,
  `options_values_price` decimal(15,4) NOT NULL,
  `price_prefix` char(1) NOT NULL,
  `products_options_id` int(11) NOT NULL DEFAULT '-1',
  `products_options_values_id` int(11) NOT NULL DEFAULT '-1',
  `store_id` varchar(64) DEFAULT NULL,
  `attr_type` int(11) NOT NULL DEFAULT '0',
  `attr_quantity` int(11) DEFAULT '0',
  `customer_price` decimal(15,2) DEFAULT NULL,
  `customer_string` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`orders_products_attributes_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products_attributes`
--

LOCK TABLES `orders_products_attributes` WRITE;
/*!40000 ALTER TABLE `orders_products_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_products_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products_download`
--

DROP TABLE IF EXISTS `orders_products_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_filename` varchar(255) NOT NULL DEFAULT '',
  `download_maxdays` int(2) NOT NULL DEFAULT '0',
  `download_count` int(2) NOT NULL DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`orders_products_download_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products_download`
--

LOCK TABLES `orders_products_download` WRITE;
/*!40000 ALTER TABLE `orders_products_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_products_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_returns`
--

DROP TABLE IF EXISTS `orders_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_returns` (
  `orders_returns_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `rma_code` varchar(128) DEFAULT NULL,
  `return_reason` text,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `orders_number` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`orders_returns_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_returns`
--

LOCK TABLES `orders_returns` WRITE;
/*!40000 ALTER TABLE `orders_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_status`
--

DROP TABLE IF EXISTS `orders_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_status` (
  `orders_status_pk` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `orders_status_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `orders_status_name` varchar(32) NOT NULL,
  `notify_customer` int(11) DEFAULT '0',
  PRIMARY KEY (`orders_status_pk`),
  KEY `idx_orders_status_name` (`orders_status_name`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_status`
--

LOCK TABLES `orders_status` WRITE;
/*!40000 ALTER TABLE `orders_status` DISABLE KEYS */;
INSERT INTO `orders_status` VALUES (1,NULL,1,1,'Pending',0),(2,NULL,1,2,'Offen',0),(3,NULL,1,3,'Pendiente',0),(4,NULL,1,4,'Pendente',0),(5,NULL,2,1,'Processing',0),(6,NULL,2,2,'In Bearbeitung',0),(7,NULL,2,3,'Proceso',0),(8,NULL,2,4,'Processamento',0),(9,NULL,3,1,'Delivered',0),(10,NULL,3,2,'Versendet',0),(11,NULL,3,3,'Entregado',0),(12,NULL,3,4,'Entregue',0),(13,NULL,4,1,'Waiting for Payment',0),(14,NULL,4,2,'Wartezahlung',0),(15,NULL,4,3,'Para pago que espera',0),(16,NULL,4,4,'Ã? espera de pagamento',0),(17,NULL,5,1,'Payment Received',0),(18,NULL,5,2,'Zahlung empfing',0),(19,NULL,5,3,'Pago recibido',0),(20,NULL,5,4,'Pagamento Recebido',0),(21,NULL,6,1,'Payment Declined',0),(22,NULL,6,2,'Zahlung sank',0),(23,NULL,6,3,'Pago declinado',0),(24,NULL,6,4,'Pagamento recusado',0),(25,NULL,7,1,'Partially Delivered',0),(26,NULL,7,2,'Teilweise geliefert',0),(27,NULL,7,3,'Entregado parcialmente',0),(28,NULL,7,4,'Parcialmente Entregues',0),(29,NULL,8,1,'Cancelled',0),(30,NULL,8,2,'Abgesagt',0),(31,NULL,8,3,'Cancelado',0),(32,NULL,8,4,'Cancelado',0),(33,NULL,9,1,'Refund Approved',0),(34,NULL,9,2,'Rückerstattung Genehmigt',0),(35,NULL,9,3,'Reembolso Aprobado',0),(36,NULL,9,4,'Reembolso Aprovado',0),(37,NULL,10,1,'Refund Declined',0),(38,NULL,10,2,'Rückerstattung Abgelehnt',0),(39,NULL,10,3,'Reembolso Rehusó',0),(40,NULL,10,4,'Reembolso Recusado',0);
/*!40000 ALTER TABLE `orders_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_status_history`
--

DROP TABLE IF EXISTS `orders_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(1) DEFAULT '0',
  `comments` text,
  `store_id` varchar(64) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT '0',
  PRIMARY KEY (`orders_status_history_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_status_history`
--

LOCK TABLES `orders_status_history` WRITE;
/*!40000 ALTER TABLE `orders_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_total`
--

DROP TABLE IF EXISTS `orders_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_total` (
  `orders_total_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`orders_total_id`),
  KEY `idx_orders_total_orders_id` (`orders_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_total`
--

LOCK TABLES `orders_total` WRITE;
/*!40000 ALTER TABLE `orders_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod_opt_vals_to_prod_opt`
--

DROP TABLE IF EXISTS `prod_opt_vals_to_prod_opt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prod_opt_vals_to_prod_opt` (
  `prod_opt_vals_to_prod_opt_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`prod_opt_vals_to_prod_opt_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_opt_vals_to_prod_opt`
--

LOCK TABLES `prod_opt_vals_to_prod_opt` WRITE;
/*!40000 ALTER TABLE `prod_opt_vals_to_prod_opt` DISABLE KEYS */;
INSERT INTO `prod_opt_vals_to_prod_opt` VALUES (1,4,1,NULL),(2,4,2,NULL),(3,4,3,NULL),(4,4,4,NULL),(5,3,5,NULL),(6,3,6,NULL),(7,3,7,NULL),(8,3,8,NULL),(9,3,9,NULL),(10,5,10,NULL),(11,5,11,NULL),(12,5,12,NULL);
/*!40000 ALTER TABLE `prod_opt_vals_to_prod_opt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_quantity` int(4) NOT NULL,
  `products_model` varchar(64) DEFAULT NULL,
  `products_image` varchar(255) DEFAULT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` decimal(15,2) DEFAULT '0.00',
  `products_status` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `products_invisible` int(1) NOT NULL DEFAULT '0',
  `products_sku` varchar(255) DEFAULT NULL,
  `products_type` int(11) DEFAULT '0',
  `products_file_path` varchar(255) DEFAULT NULL,
  `products_content_type` varchar(128) DEFAULT NULL,
  `products_image2` varchar(255) DEFAULT NULL,
  `products_image3` varchar(255) DEFAULT NULL,
  `products_image4` varchar(255) DEFAULT NULL,
  `products_price_1` decimal(15,4) DEFAULT NULL,
  `products_price_2` decimal(15,4) DEFAULT NULL,
  `products_price_3` decimal(15,4) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `max_num_downloads` int(11) NOT NULL DEFAULT '-1',
  `max_download_days` int(11) NOT NULL DEFAULT '-1',
  `stock_reorder_level` int(11) NOT NULL DEFAULT '-1',
  `can_order_when_not_in_stock` int(11) NOT NULL DEFAULT '-1',
  `index_attachment` int(11) NOT NULL DEFAULT '0',
  `rating` decimal(15,4) DEFAULT NULL,
  `custom6` varchar(128) DEFAULT NULL,
  `custom7` varchar(128) DEFAULT NULL,
  `custom8` varchar(128) DEFAULT NULL,
  `custom9` varchar(128) DEFAULT NULL,
  `custom10` varchar(128) DEFAULT NULL,
  `custom1Int` int(11) DEFAULT NULL,
  `custom2Int` int(11) DEFAULT NULL,
  `custom1Dec` decimal(15,4) DEFAULT NULL,
  `custom2Dec` decimal(15,4) DEFAULT NULL,
  `products_date_expiry` datetime DEFAULT NULL,
  `payment_schedule_id` int(11) NOT NULL DEFAULT '-1',
  `cust_attr_tmpl_id` int(11) DEFAULT '-1',
  `custom_attrs` text,
  `product_uuid` varchar(128) DEFAULT NULL,
  `source_last_modified` datetime DEFAULT NULL,
  `number_reviews` int(11) DEFAULT '0',
  `product_image_dir` varchar(64) DEFAULT NULL,
  `product_depth` int(11) NOT NULL DEFAULT '0',
  `product_width` int(11) NOT NULL DEFAULT '0',
  `product_length` int(11) NOT NULL DEFAULT '0',
  `ignore_prod_qty_stock` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`products_id`),
  KEY `idx_products_date_added` (`products_date_added`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_manu_id` (`manufacturers_id`),
  KEY `idx_product_uuid` (`product_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,32,'MG200MMS','/prod/9/5/9/9/95992CDB-33D0-46BE-A6EF-4C973B3221B5_1_big.jpg',299.9900,'2015-10-07 00:58:02',NULL,'2015-10-07 00:58:02',23.00,1,1,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'95992CDB-33D0-46BE-A6EF-4C973B3221B5',NULL,0,'/prod/9/5/9/9/',20,50,200,0),(2,32,'MG400-32MB','/prod/7/8/5/7/7857D709-61C6-44C1-A5D4-52E463CBEAA9_1_big.jpg',499.9900,'2015-10-07 00:58:02',NULL,'2015-10-07 00:58:02',23.00,1,1,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'7857D709-61C6-44C1-A5D4-52E463CBEAA9',NULL,0,'/prod/7/8/5/7/',20,50,200,0),(3,2,'MSIMPRO','/prod/1/8/5/3/18536902-5B5C-4FF2-859B-A927EE8F38AF_1_big.jpg',49.9900,'2015-10-07 00:58:02',NULL,'2015-10-07 00:58:02',7.00,1,1,2,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'18536902-5B5C-4FF2-859B-A927EE8F38AF',NULL,0,'/prod/1/8/5/3/',40,140,260,0),(4,13,'DVD-RPMK','/prod/9/3/E/E/93EE9E10-709E-4517-9041-D07C577AFBC9_1_big.jpg',24.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',23.00,1,1,11,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,'<kk_d><kk_a><kk_v><![CDATA[facet.blu.ray]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[DVD Format]]></kk_n><kk_k><![CDATA[facet.dvd.format]]></kk_k><kk_f>1</kk_f></kk_a><kk_a><kk_v><![CDATA[facet.mpaa.g]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[Movie Ratings]]></kk_n><kk_k><![CDATA[facet.mpaa.movie.ratings]]></kk_k><kk_f>2</kk_f></kk_a></kk_d>','93EE9E10-709E-4517-9041-D07C577AFBC9',NULL,0,'/prod/9/3/E/E/',20,140,200,0),(5,17,'DVD-BLDRNDC','/prod/8/3/7/7/8377214C-C4A5-41C5-93A5-3A580132C55A_1_big.jpg',35.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,3,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'8377214C-C4A5-41C5-93A5-3A580132C55A',NULL,0,'/prod/8/3/7/7/',20,140,200,0),(6,10,'DVD-MATR','/prod/9/5/2/1/95214187-5DF3-403B-BFEF-16DECA237BF6_1_big.jpg',39.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,3,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,'<kk_d><kk_a><kk_v><![CDATA[facet.blu.ray]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[DVD Format]]></kk_n><kk_k><![CDATA[facet.dvd.format]]></kk_k><kk_f>1</kk_f></kk_a><kk_a><kk_v><![CDATA[facet.mpaa.g]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[Movie Ratings]]></kk_n><kk_k><![CDATA[facet.mpaa.movie.ratings]]></kk_k><kk_f>2</kk_f></kk_a></kk_d>','95214187-5DF3-403B-BFEF-16DECA237BF6',NULL,0,'/prod/9/5/2/1/',20,140,200,0),(7,10,'DVD-YGEM','/prod/9/2/9/3/92937B41-BC5C-4CB8-92E3-4380A933F6E2_1_big.jpg',34.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,3,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'92937B41-BC5C-4CB8-92E3-4380A933F6E2',NULL,0,'/prod/9/2/9/3/',20,140,200,0),(8,10,'DVD-ABUG','/prod/0/6/D/A/06DAD86E-0FA8-4B42-9184-CE1B3F3CE4A6_1_big.jpg',35.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,3,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'06DAD86E-0FA8-4B42-9184-CE1B3F3CE4A6',NULL,0,'/prod/0/6/D/A/',20,140,200,0),(9,10,'DVD-UNSG','/prod/A/E/C/2/AEC246F9-F629-4657-B563-15B10F644CC8_1_big.jpg',29.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,3,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,'<kk_d><kk_a><kk_v><![CDATA[facet.blu.ray]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[DVD Format]]></kk_n><kk_k><![CDATA[facet.dvd.format]]></kk_k><kk_f>1</kk_f></kk_a><kk_a><kk_v><![CDATA[facet.mpaa.pg]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[Movie Ratings]]></kk_n><kk_k><![CDATA[facet.mpaa.movie.ratings]]></kk_k><kk_f>2</kk_f></kk_a></kk_d>','AEC246F9-F629-4657-B563-15B10F644CC8',NULL,0,'/prod/A/E/C/2/',20,140,200,0),(10,10,'DVD-UNSG2','/prod/9/6/3/9/9639041E-710D-472A-B87C-85E59C435D82_1_big.jpg',29.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,3,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,'<kk_d><kk_a><kk_v><![CDATA[facet.blu.ray]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[DVD Format]]></kk_n><kk_k><![CDATA[facet.dvd.format]]></kk_k><kk_f>1</kk_f></kk_a><kk_a><kk_v><![CDATA[facet.mpaa.pg]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[Movie Ratings]]></kk_n><kk_k><![CDATA[facet.mpaa.movie.ratings]]></kk_k><kk_f>2</kk_f></kk_a></kk_d>','9639041E-710D-472A-B87C-85E59C435D82',NULL,0,'/prod/9/6/3/9/',20,140,200,0),(11,10,'DVD-FDBL','/prod/3/F/D/D/3FDD11D0-C6F2-45D0-B906-7DDFDA015594_1_big.jpg',29.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,3,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,'<kk_d><kk_a><kk_v><![CDATA[facet.hd.dvd]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[DVD Format]]></kk_n><kk_k><![CDATA[facet.dvd.format]]></kk_k><kk_f>1</kk_f></kk_a><kk_a><kk_v><![CDATA[facet.mpaa.pg.13]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[Movie Ratings]]></kk_n><kk_k><![CDATA[facet.mpaa.movie.ratings]]></kk_k><kk_f>2</kk_f></kk_a></kk_d>','3FDD11D0-C6F2-45D0-B906-7DDFDA015594',NULL,0,'/prod/3/F/D/D/',20,140,200,0),(12,10,'DVD-DHWV','/prod/F/7/E/6/F7E61CE3-5778-4790-A705-EE2D9980E979_1_big.jpg',39.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,4,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,'<kk_d><kk_a><kk_v><![CDATA[facet.hd.dvd]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[DVD Format]]></kk_n><kk_k><![CDATA[facet.dvd.format]]></kk_k><kk_f>1</kk_f></kk_a><kk_a><kk_v><![CDATA[facet.mpaa.pg.13]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[Movie Ratings]]></kk_n><kk_k><![CDATA[facet.mpaa.movie.ratings]]></kk_k><kk_f>2</kk_f></kk_a></kk_d>','F7E61CE3-5778-4790-A705-EE2D9980E979',NULL,0,'/prod/F/7/E/6/',20,140,200,0),(13,10,'DVD-LTWP','/prod/6/7/7/E/677E32E4-1DB2-44AD-A5BF-3CE389A25D3F_1_big.jpg',34.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,3,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,'<kk_d><kk_a><kk_v><![CDATA[facet.hd.dvd]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[DVD Format]]></kk_n><kk_k><![CDATA[facet.dvd.format]]></kk_k><kk_f>1</kk_f></kk_a><kk_a><kk_v><![CDATA[facet.mpaa.r]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[Movie Ratings]]></kk_n><kk_k><![CDATA[facet.mpaa.movie.ratings]]></kk_k><kk_f>2</kk_f></kk_a></kk_d>','677E32E4-1DB2-44AD-A5BF-3CE389A25D3F',NULL,0,'/prod/6/7/7/E/',20,140,200,0),(14,10,'DVD-REDC','/prod/F/3/1/8/F3186F6D-20DB-49A8-84F8-3F98BE3BA076_1_big.jpg',32.0000,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,3,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'F3186F6D-20DB-49A8-84F8-3F98BE3BA076',NULL,0,'/prod/F/3/1/8/',20,140,200,0),(15,10,'DVD-FRAN','/prod/E/6/A/B/E6AB1135-5B32-4FD1-BF28-12C5CD256CD9_1_big.jpg',35.0000,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,3,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'E6AB1135-5B32-4FD1-BF28-12C5CD256CD9',NULL,0,'/prod/E/6/A/B/',20,140,200,0),(16,10,'DVD-CUFI','/prod/2/1/E/0/21E0683C-62A7-4282-A36F-E0D6BC9AE8A2_1_big.jpg',38.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,4,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'21E0683C-62A7-4282-A36F-E0D6BC9AE8A2',NULL,0,'/prod/2/1/E/0/',20,140,200,0),(17,10,'DVD-SPEED','/prod/8/C/7/A/8C7A57B8-A6B5-48A5-A965-87A7D728F1BE_1_big.jpg',39.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,4,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,'<kk_d><kk_a><kk_v><![CDATA[facet.hd.dvd]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[DVD Format]]></kk_n><kk_k><![CDATA[facet.dvd.format]]></kk_k><kk_f>1</kk_f></kk_a><kk_a><kk_v><![CDATA[facet.mpaa.r]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[Movie Ratings]]></kk_n><kk_k><![CDATA[facet.mpaa.movie.ratings]]></kk_k><kk_f>2</kk_f></kk_a></kk_d>','8C7A57B8-A6B5-48A5-A965-87A7D728F1BE',NULL,0,'/prod/8/C/7/A/',20,140,200,0),(18,10,'DVD-SPEED2','/prod/C/5/1/A/C51A6C94-27CC-4159-89CF-D8EEFDBB2928_1_big.jpg',42.0000,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,4,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,'<kk_d><kk_a><kk_v><![CDATA[facet.hd.dvd]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[DVD Format]]></kk_n><kk_k><![CDATA[facet.dvd.format]]></kk_k><kk_f>1</kk_f></kk_a><kk_a><kk_v><![CDATA[facet.mpaa.nc.17]]></kk_v><kk_ty>0</kk_ty><kk_n><![CDATA[Movie Ratings]]></kk_n><kk_k><![CDATA[facet.mpaa.movie.ratings]]></kk_k><kk_f>2</kk_f></kk_a></kk_d>','C51A6C94-27CC-4159-89CF-D8EEFDBB2928',NULL,0,'/prod/C/5/1/A/',20,140,200,0),(19,10,'DVD-TSAB','/prod/C/1/9/2/C1929825-BD7C-4FE3-8AE8-DFEA73A230F0_1_big.jpg',49.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,4,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'C1929825-BD7C-4FE3-8AE8-DFEA73A230F0',NULL,1,'/prod/C/1/9/2/',20,140,200,0),(20,10,'DVD-BELOVED','/prod/6/8/9/6/68965D51-F873-4D1B-8A37-92A340E5B913_1_big.jpg',54.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,3,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'68965D51-F873-4D1B-8A37-92A340E5B913',NULL,0,'/prod/6/8/9/6/',20,140,200,0),(21,16,'PC-SWAT3','/prod/C/4/9/4/C4941395-021B-4C97-B46C-A4491AD3D620_1_big.jpg',79.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,7,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'C4941395-021B-4C97-B46C-A4491AD3D620',NULL,0,'/prod/C/4/9/4/',20,140,200,0),(22,13,'PC-UNTM','/prod/5/7/D/3/57D32457-0C8A-4387-9680-1B4861AE6178_1_big.jpg',89.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',7.00,1,1,8,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'57D32457-0C8A-4387-9680-1B4861AE6178',NULL,0,'/prod/5/7/D/3/',20,140,200,0),(23,16,'PC-TWOF','/prod/F/9/8/F/F98FF9EA-110B-4096-AD22-1423E0E78C36_1_big.jpg',99.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',10.00,1,1,8,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'F98FF9EA-110B-4096-AD22-1423E0E78C36',NULL,0,'/prod/F/9/8/F/',20,140,200,0),(24,17,'PC-DISC','/prod/3/8/3/B/383B8D87-B3EA-4AAF-B0AB-9614C17463F3_1_big.jpg',90.0000,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',8.00,1,1,8,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'383B8D87-B3EA-4AAF-B0AB-9614C17463F3',NULL,0,'/prod/3/8/3/B/',20,140,200,0),(25,16,'MSINTKB','/prod/0/0/1/F/001F1EAA-2910-440E-BB8D-C714E0E859B4_1_big.jpg',69.9900,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',8.00,1,1,2,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'001F1EAA-2910-440E-BB8D-C714E0E859B4',NULL,0,'/prod/0/0/1/F/',60,160,550,0),(26,10,'MSIMEXP','/prod/F/E/F/2/FEF2DB86-728E-4C6A-A3FA-4F4B099D28E6_1_big.jpg',64.9500,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',8.00,1,1,2,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'FEF2DB86-728E-4C6A-A3FA-4F4B099D28E6',NULL,0,'/prod/F/E/F/2/',60,140,300,0),(27,8,'HPLJ1100XI','/prod/5/1/B/7/51B73EC2-0845-4837-B125-EC8041C0EA76_1_big.jpg',65.0000,'2015-10-07 00:58:03',NULL,'2015-10-07 00:58:03',45.00,1,1,9,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'51B73EC2-0845-4837-B125-EC8041C0EA76',NULL,0,'/prod/5/1/B/7/',600,600,900,0),(28,0,'MSMOUSEKBBUNDLE','/prod/E/3/8/4/E384D77F-69C0-4DA9-97DE-32F042B437DB_1_big.jpg',121.4500,'2015-10-07 00:58:14',NULL,'2015-10-07 00:58:14',16.00,1,1,2,0,NULL,NULL,NULL,NULL,NULL,0,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'E384D77F-69C0-4DA9-97DE-32F042B437DB',NULL,0,'/prod/E/3/8/4/',100,240,600,0),(29,10000,'GIFTCERT','/prod/E/D/7/0/ED709A75-1C44-4983-ADB5-B42E963452C3_1_big.jpg',10.0000,'2015-10-07 00:58:27',NULL,'2015-10-07 00:58:27',0.10,1,1,10,0,NULL,NULL,NULL,NULL,NULL,0,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'ED709A75-1C44-4983-ADB5-B42E963452C3',NULL,0,'/prod/E/D/7/0/',0,0,0,0),(30,100,'LBP7680CX','/prod/D/A/1/A/DA1A02B1-B200-4125-BBFA-22EE7D01963A_1_big.jpg',309.9900,'2015-10-07 00:58:38',NULL,'2015-10-07 00:58:38',44.00,1,1,6,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'DA1A02B1-B200-4125-BBFA-22EE7D01963A',NULL,0,'/prod/D/A/1/A/',600,600,900,0),(31,100,'LOGITECHIK','/prod/B/9/9/0/B990FBA5-CCFF-467D-A6ED-230298BB609E_1_big.jpg',75.9900,'2015-10-07 00:58:38',NULL,'2015-10-07 00:58:38',6.00,1,1,5,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'B990FBA5-CCFF-467D-A6ED-230298BB609E',NULL,0,'/prod/B/9/9/0/',60,160,550,0),(32,100,'WIN8PRO','/prod/D/D/D/4/DDD4F497-9212-4E73-BD2E-2B56428E51A2_1_big.jpg',79.9900,'2015-10-07 00:58:39',NULL,'2015-10-07 00:58:39',6.00,1,1,2,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'DDD4F497-9212-4E73-BD2E-2B56428E51A2',NULL,0,'/prod/D/D/D/4/',80,120,240,0),(33,100,'DLBCO410','/prod/F/9/8/F/F98F155B-2D6D-41C0-897F-3071B6354AD8_1_big.jpg',159.9900,'2015-10-07 00:58:39',NULL,'2015-10-07 00:58:39',9.00,1,1,12,0,'featured',NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'F98F155B-2D6D-41C0-897F-3071B6354AD8',NULL,0,'/prod/F/9/8/F/',200,400,500,0),(34,100,'KFIREHD','/prod/5/A/A/C/5AAC7490-1BB8-4980-BA0A-F49B25ADBA71_1_big.jpg',199.9900,'2015-10-07 00:58:39',NULL,'2015-10-07 00:58:39',3.00,1,1,13,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'5AAC7490-1BB8-4980-BA0A-F49B25ADBA71',NULL,0,'/prod/5/A/A/C/',100,240,260,0),(35,100,'IPHONE5','/prod/3/7/4/F/374F4985-53E5-49FF-A277-4A8AEE40FE0D_1_big.jpg',999.9900,'2015-10-07 00:58:39',NULL,'2015-10-07 00:58:39',2.00,1,1,14,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'374F4985-53E5-49FF-A277-4A8AEE40FE0D',NULL,0,'/prod/3/7/4/F/',100,240,260,0),(36,100,'CD74137','/prod/A/F/0/E/AF0E40B3-70C4-4A12-9026-5784BBD23C06_1_big.jpg',19.9900,'2015-10-07 00:58:39',NULL,'2015-10-07 00:58:39',5.00,1,1,15,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'AF0E40B3-70C4-4A12-9026-5784BBD23C06',NULL,0,'/prod/A/F/0/E/',120,500,500,0),(37,100,'MI93','/prod/A/5/9/6/A5966A16-B912-47C8-980C-60B7CDFC9177_1_big.jpg',12.9900,'2015-10-07 00:58:39',NULL,'2015-10-07 00:58:39',5.00,1,1,15,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'A5966A16-B912-47C8-980C-60B7CDFC9177',NULL,0,'/prod/A/5/9/6/',120,500,500,0),(38,100,'B000H1QSJY','/prod/B/1/8/1/B181BD28-2701-4703-A30F-5056517A55C7_1_big.jpg',21.9900,'2015-10-07 00:58:39',NULL,'2015-10-07 00:58:39',5.00,1,1,15,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'B181BD28-2701-4703-A30F-5056517A55C7',NULL,0,'/prod/B/1/8/1/',120,500,500,0),(39,100,'B004GTMNXI','/prod/1/5/F/8/15F8FBB1-13DA-4A47-B3D2-0F1E7BECAE7C_1_big.jpg',159.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',16.00,1,1,17,0,'featured',NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'15F8FBB1-13DA-4A47-B3D2-0F1E7BECAE7C',NULL,0,'/prod/1/5/F/8/',1000,1200,2800,0),(40,100,'0600885B71','/prod/4/A/6/B/4A6B2621-4689-41D7-9BB6-9C2A4200F39E_1_big.jpg',89.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',7.00,1,1,17,0,'featured',NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'4A6B2621-4689-41D7-9BB6-9C2A4200F39E',NULL,0,'/prod/4/A/6/B/',1000,1200,2800,0),(41,100,'CHEVRON34VC','/prod/9/5/7/8/95782936-65F3-448F-BF8E-A0F5409B5048_1_big.jpg',109.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',7.00,1,1,18,0,'featured',NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'95782936-65F3-448F-BF8E-A0F5409B5048',NULL,0,'/prod/9/5/7/8/',1000,1200,2800,0),(42,100,'0600886102','/prod/1/1/B/C/11BC0D25-1B08-4141-BABB-1B1E633CB382_1_big.jpg',55.9500,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',7.00,1,1,17,0,'featured',NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'11BC0D25-1B08-4141-BABB-1B1E633CB382',NULL,0,'/prod/1/1/B/C/',1000,1200,2800,0),(43,100,'219185','/prod/A/2/1/C/A21CA25F-645B-4D88-9539-1407737EC790_1_big.jpg',15.1900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',1.00,1,1,19,0,'featured',NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'A21CA25F-645B-4D88-9539-1407737EC790',NULL,0,'/prod/A/2/1/C/',220,400,600,0),(44,100,'424625','/prod/9/4/C/A/94CA0B48-0BCA-4696-A688-93C626E120F0_1_big.jpg',149.4900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',7.00,1,1,20,0,'featured',NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'94CA0B48-0BCA-4696-A688-93C626E120F0',NULL,0,'/prod/9/4/C/A/',500,500,1000,0),(45,100,'GALAXYSIII','/prod/4/0/4/1/4041A0F2-D827-4E55-ACAB-A1FDC48E423A_1_big.jpg',589.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',2.00,1,1,21,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'4041A0F2-D827-4E55-ACAB-A1FDC48E423A',NULL,0,'/prod/4/0/4/1/',100,240,260,0),(46,100,'GT-S7500ABABTU','/prod/9/0/D/6/90D61688-734D-47CE-B98E-D4AAD5C5AA81_1_big.jpg',289.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',2.00,1,1,21,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'90D61688-734D-47CE-B98E-D4AAD5C5AA81',NULL,0,'/prod/9/0/D/6/',100,240,260,0),(47,100,'MD242B/A','/prod/6/D/F/6/6DF6E083-1AFA-4ADB-B91D-8C82D2CB3013_1_big.jpg',899.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',3.00,1,1,14,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'6DF6E083-1AFA-4ADB-B91D-8C82D2CB3013',NULL,0,'/prod/6/D/F/6/',100,240,260,0),(48,100,'1257-3114','/prod/A/3/8/B/A38BC2F7-4BC2-4602-ABC1-053ABF1664DB_1_big.jpg',459.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',1.00,1,1,22,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'A38BC2F7-4BC2-4602-ABC1-053ABF1664DB',NULL,0,'/prod/A/3/8/B/',100,240,260,0),(49,100,'6350B009','/prod/2/D/F/3/2DF3A010-69FC-4C33-B412-CC9921D162FB_1_big.jpg',829.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',1.00,1,1,6,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'2DF3A010-69FC-4C33-B412-CC9921D162FB',NULL,0,'/prod/2/D/F/3/',180,280,320,0),(50,100,'MV800','/prod/9/6/A/2/96A22190-8D96-430E-8D29-F1B203994759_1_big.jpg',189.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',1.00,1,1,21,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'96A22190-8D96-430E-8D29-F1B203994759',NULL,0,'/prod/9/6/A/2/',180,280,320,0),(51,100,'5251B011AA','/prod/B/0/C/B/B0CBFAA6-C865-4DDC-9451-3ABEC85FB2D2_1_big.jpg',439.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',1.00,1,1,6,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'B0CBFAA6-C865-4DDC-9451-3ABEC85FB2D2',NULL,0,'/prod/B/0/C/B/',180,280,320,0),(52,100,'L810','/prod/7/0/2/6/70261953-3F55-4999-A644-5EC19A321886_1_big.jpg',279.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',1.00,1,1,23,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'70261953-3F55-4999-A644-5EC19A321886',NULL,0,'/prod/7/0/2/6/',180,280,320,0),(53,100,'25478','/prod/1/B/3/F/1B3F5FA1-469D-4B95-8EE1-42A5856961BC_1_big.jpg',849.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',1.00,1,1,23,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'1B3F5FA1-469D-4B95-8EE1-42A5856961BC',NULL,0,'/prod/1/B/3/F/',180,280,320,0),(54,100,'27577','/prod/E/C/D/2/ECD283D0-BFFD-4639-8B08-965C3470B895_1_big.jpg',549.9500,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',1.00,1,1,23,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'ECD283D0-BFFD-4639-8B08-965C3470B895',NULL,0,'/prod/E/C/D/2/',180,280,320,0),(55,100,'MINISTRY','/prod/5/E/8/9/5E89B135-269C-4094-81F1-A71C98D1412A_1_big.jpg',83.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',2.00,1,1,24,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'5E89B135-269C-4094-81F1-A71C98D1412A',NULL,0,'/prod/5/E/8/9/',120,500,500,0),(56,100,'PLUTOG','/prod/A/8/6/C/A86C794E-5C00-4F5D-8D01-121C01E6A470_1_big.jpg',133.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',2.00,1,1,24,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'A86C794E-5C00-4F5D-8D01-121C01E6A470',NULL,0,'/prod/A/8/6/C/',120,500,500,0),(57,100,'VISCLOCK','/prod/1/0/3/0/10301426-3620-418E-AF4D-4319F708E564_1_big.jpg',79.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',2.00,1,1,24,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'10301426-3620-418E-AF4D-4319F708E564',NULL,0,'/prod/1/0/3/0/',120,500,500,0),(58,100,'OFFHOMESTUD','/prod/F/F/0/6/FF06923B-46B1-4F4B-9A6F-A68276A56FE5_1_big.jpg',159.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',6.00,1,1,2,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'FF06923B-46B1-4F4B-9A6F-A68276A56FE5',NULL,0,'/prod/F/F/0/6/',80,120,240,0),(59,100,'SL500','/prod/E/7/B/8/E7B8896B-3199-4C4A-966D-9CCD3EFAA33C_1_big.jpg',199.4900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',5.00,1,1,17,0,'featured',NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'E7B8896B-3199-4C4A-966D-9CCD3EFAA33C',NULL,0,'/prod/E/7/B/8/',240,600,800,0),(60,100,'IPADRET','/prod/5/4/F/D/54FDD302-5B74-4075-8C2E-B9E11A0EEF2E_1_big.jpg',599.9900,'2015-10-07 00:58:40',NULL,'2015-10-07 00:58:40',2.00,1,1,14,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'54FDD302-5B74-4075-8C2E-B9E11A0EEF2E',NULL,0,'/prod/5/4/F/D/',180,180,320,0),(61,100,'GALTAB2','/prod/3/1/1/1/3111B14C-0BC1-45E4-A4F9-968DAD99B6F2_1_big.jpg',549.9900,'2015-10-07 00:58:41',NULL,'2015-10-07 00:58:41',2.00,1,1,21,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'3111B14C-0BC1-45E4-A4F9-968DAD99B6F2',NULL,0,'/prod/3/1/1/1/',180,180,320,0),(62,100,'WSCLOCK','/prod/C/0/2/C/C02C89ED-CB73-4150-BB41-0726DEE2E5A1_1_big.jpg',21.9900,'2015-10-07 00:58:41',NULL,'2015-10-07 00:58:41',5.00,1,1,16,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'C02C89ED-CB73-4150-BB41-0726DEE2E5A1',NULL,0,'/prod/C/0/2/C/',120,500,500,0),(63,200,'BLACKOPS2','/prod/8/6/D/7/86D70649-28A3-492D-A18E-B6BB0934EB7C_1_big.jpg',39.9900,'2015-10-07 00:58:41',NULL,'2015-10-07 00:58:41',1.00,1,1,25,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'86D70649-28A3-492D-A18E-B6BB0934EB7C',NULL,0,'/prod/8/6/D/7/',20,140,200,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_attributes`
--

DROP TABLE IF EXISTS `products_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL,
  `price_prefix` char(1) NOT NULL,
  `options_values_price_1` decimal(15,4) DEFAULT NULL,
  `options_values_price_2` decimal(15,4) DEFAULT NULL,
  `options_values_price_3` decimal(15,4) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  PRIMARY KEY (`products_attributes_id`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_products_id` (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_attributes`
--

LOCK TABLES `products_attributes` WRITE;
/*!40000 ALTER TABLE `products_attributes` DISABLE KEYS */;
INSERT INTO `products_attributes` VALUES (1,1,4,1,0.0000,'+',NULL,NULL,NULL,NULL,NULL,NULL,2),(2,1,4,2,50.0000,'+',NULL,NULL,NULL,NULL,NULL,NULL,3),(3,1,4,3,70.0000,'+',NULL,NULL,NULL,NULL,NULL,NULL,4),(4,1,3,5,0.0000,'+',NULL,NULL,NULL,NULL,NULL,NULL,0),(5,1,3,6,100.0000,'+',NULL,NULL,NULL,NULL,NULL,NULL,1),(6,2,4,3,10.0000,'-',NULL,NULL,NULL,NULL,NULL,NULL,2),(7,2,4,4,0.0000,'+',NULL,NULL,NULL,NULL,NULL,NULL,3),(8,2,3,6,0.0000,'+',NULL,NULL,NULL,NULL,NULL,NULL,0),(9,2,3,7,120.0000,'+',NULL,NULL,NULL,NULL,NULL,NULL,1),(10,26,3,8,0.0000,'+',NULL,NULL,NULL,NULL,NULL,NULL,0),(11,26,3,9,6.0000,'+',NULL,NULL,NULL,NULL,NULL,NULL,1),(12,29,5,10,0.0000,'+',NULL,NULL,NULL,NULL,NULL,NULL,0),(13,29,5,11,15.0000,'+',NULL,NULL,NULL,NULL,NULL,NULL,1),(14,29,5,12,40.0000,'+',NULL,NULL,NULL,NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `products_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_attrs_download`
--

DROP TABLE IF EXISTS `products_attrs_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_attrs_download` (
  `products_attributes_id` int(11) NOT NULL,
  `products_attributes_filename` varchar(255) NOT NULL DEFAULT '',
  `products_attributes_maxdays` int(2) DEFAULT '0',
  `products_attributes_maxcount` int(2) DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`products_attributes_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_attrs_download`
--

LOCK TABLES `products_attrs_download` WRITE;
/*!40000 ALTER TABLE `products_attrs_download` DISABLE KEYS */;
INSERT INTO `products_attrs_download` VALUES (26,'unreal.zip',7,3,NULL);
/*!40000 ALTER TABLE `products_attrs_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_description`
--

DROP TABLE IF EXISTS `products_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_description` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_name` varchar(255) DEFAULT NULL,
  `products_description` text,
  `products_url` varchar(255) DEFAULT NULL,
  `products_viewed` int(5) DEFAULT '0',
  `products_comparison` text,
  `store_id` varchar(64) DEFAULT NULL,
  `language_code` char(2) DEFAULT NULL,
  `customd1` varchar(2) DEFAULT NULL,
  `customd2` varchar(2) DEFAULT NULL,
  `customd3` varchar(2) DEFAULT NULL,
  `customd4` varchar(2) DEFAULT NULL,
  `customd5` varchar(2) DEFAULT NULL,
  `customd6` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`products_id`,`language_id`),
  KEY `products_name` (`products_name`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_description`
--

LOCK TABLES `products_description` WRITE;
/*!40000 ALTER TABLE `products_description` DISABLE KEYS */;
INSERT INTO `products_description` VALUES (1,1,'Matrox G200 MMS','Reinforcing its position as a multi-monitor trailblazer, Matrox Graphics Inc. has once again developed the most flexible and highly advanced solution in the industry. Introducing the new Matrox G200 Multi-Monitor Series; the first graphics card ever to support up to four DVI digital flat panel displays on a single 8&quot; PCI board.<br><br>With continuing demand for digital flat panels in the financial workplace, the Matrox G200 MMS is the ultimate in flexible solutions. The Matrox G200 MMS also supports the new digital video interface (DVI) created by the Digital Display Working Group (DDWG) designed to ease the adoption of digital flat panels. Other configurations include composite video capture ability and onboard TV tuner, making the Matrox G200 MMS the complete solution for business needs.<br><br>Based on the award-winning MGA-G200 graphics chip, the Matrox G200 Multi-Monitor Series provides superior 2D/3D graphics acceleration to meet the demanding needs of business applications such as real-time stock quotes (Versus), live video feeds (Reuters & Bloombergs), multiple windows applications, word processing, spreadsheets and CAD.','www.matrox.com/mga/products/g200_mms/home.cfm',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(1,2,'Matrox G200 MMS','<b>Unterstützung für zwei bzw. vier analoge oder digitale Monitore</b><br><br>Die Matrox G200 Multi-Monitor-Serie führt die bewährte Matrox Tradition im Multi-Monitor- Bereich fort und bietet flexible und fortschrittliche Lösungen.Matrox stellt als erstes Unternehmen einen vierfachen digitalen PanelLink® DVI Flachbildschirm Ausgang zur Verfügung. Mit den optional erhältlichen TV Tuner und Video-Capture Möglichkeiten stellt die Matrox G200 MMS eine alles umfassende Mehrschirm-Lösung dar.<br><br><b>Leistungsmerkmale:</b><br><ul><br><li>Preisgekrönter Matrox G200 128-Bit Grafikchip</li><br><li>Schneller 8 MB SGRAM-Speicher pro Kanal</li><br><li>Integrierter, leistungsstarker 250 MHz RAMDAC</li><br><li>Unterstützung für bis zu 16 Bildschirme über 4 Quad-Karten (unter Win NT,ab Treiber 4.40)</li><br><li>Unterstützung von 9 Monitoren unter Win 98</li><br><li>2 bzw. 4 analoge oder digitale Ausgabekanäle pro PCI-Karte</li><br><li>Desktop-Darstellung von 1800 x 1440 oder 1920 x 1200 pro Chip</li><br><li>Anschlußmöglichkeit an einen 15-poligen VGA-Monitor oder an einen 30-poligen digitalen DVI-Flachbildschirm plus integriertem Composite-Video-Eingang (bei der TV-Version)</li><br><li>PCI Grafikkarte, kurze Baulänge</li><br><li>Treiberunterstützung: Windows® 2000, Windows NT® und Windows® 98</li><br><li>Anwendungsbereiche: Börsenumgebung mit zeitgleich großem Visualisierungsbedarf, Videoüberwachung, Video-Conferencing</li><br></ul>','www.matrox.com/mga/deutsch/products/g200_mms/home.cfm',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(1,3,'Matrox G200 MMS','Reinforcing its position as a multi-monitor trailblazer, Matrox Graphics Inc. has once again developed the most flexible and highly advanced solution in the industry. Introducing the new Matrox G200 Multi-Monitor Series; the first graphics card ever to support up to four DVI digital flat panel displays on a single 8&quot; PCI board.<br><br>With continuing demand for digital flat panels in the financial workplace, the Matrox G200 MMS is the ultimate in flexible solutions. The Matrox G200 MMS also supports the new digital video interface (DVI) created by the Digital Display Working Group (DDWG) designed to ease the adoption of digital flat panels. Other configurations include composite video capture ability and onboard TV tuner, making the Matrox G200 MMS the complete solution for business needs.<br><br>Based on the award-winning MGA-G200 graphics chip, the Matrox G200 Multi-Monitor Series provides superior 2D/3D graphics acceleration to meet the demanding needs of business applications such as real-time stock quotes (Versus), live video feeds (Reuters & Bloombergs), multiple windows applications, word processing, spreadsheets and CAD.','www.matrox.com/mga/products/g200_mms/home.cfm',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(1,4,'Matrox G200 MMS','(pt) Reinforcing its position as a multi-monitor trailblazer, Matrox Graphics Inc. has once again developed the most flexible and highly advanced solution in the industry. Introducing the new Matrox G200 Multi-Monitor Series; the first graphics card ever to support up to four DVI digital flat panel displays on a single 8&quot; PCI board.<br><br>With continuing demand for digital flat panels in the financial workplace, the Matrox G200 MMS is the ultimate in flexible solutions. The Matrox G200 MMS also supports the new digital video interface (DVI) created by the Digital Display Working Group (DDWG) designed to ease the adoption of digital flat panels. Other configurations include composite video capture ability and onboard TV tuner, making the Matrox G200 MMS the complete solution for business needs.<br><br>Based on the award-winning MGA-G200 graphics chip, the Matrox G200 Multi-Monitor Series provides superior 2D/3D graphics acceleration to meet the demanding needs of business applications such as real-time stock quotes (Versus), live video feeds (Reuters & Bloombergs), multiple windows applications, word processing, spreadsheets and CAD.','www.matrox.com/mga/products/g200_mms/home.cfm',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(2,1,'Matrox G400 32MB','<b>Dramatically Different High Performance Graphics</b><br><br>Introducing the Millennium G400 Series - a dramatically different, high performance graphics experience. Armed with the industry\'s fastest graphics chip, the Millennium G400 Series takes explosive acceleration two steps further by adding unprecedented image quality, along with the most versatile display options for all your 3D, 2D and DVD applications. As the most powerful and innovative tools in your PC\'s arsenal, the Millennium G400 Series will not only change the way you see graphics, but will revolutionize the way you use your computer.<br><br><b>Key features:</b><ul><li>New Matrox G400 256-bit DualBus graphics chip</li><li>Explosive 3D, 2D and DVD performance</li><li>DualHead Display</li><li>Superior DVD and TV output</li><li>3D Environment-Mapped Bump Mapping</li><li>Vibrant Color Quality rendering </li><li>UltraSharp DAC of up to 360 MHz</li><li>3D Rendering Array Processor</li><li>Support for 16 or 32 MB of memory</li></ul>','www.matrox.com/mga/products/mill_g400/home.htm',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(2,2,'Matrox G400 32 MB','<b>Neu! Matrox G400 &quot;all inclusive&quot; und vieles mehr...</b><br><br>Die neue Millennium G400-Serie - Hochleistungsgrafik mit dem sensationellen Unterschied. Ausgestattet mit dem neu eingeführten Matrox G400 Grafikchip, bietet die Millennium G400-Serie eine überragende Beschleunigung inklusive bisher nie dagewesener Bildqualitat und enorm flexibler Darstellungsoptionen bei allen Ihren 3D-, 2D- und DVD-Anwendungen.<br><br><ul><br><li>DualHead Display und TV-Ausgang</li><br><li>Environment Mapped Bump Mapping</li><br><li>Matrox G400 256-Bit DualBus</li><br><li>3D Rendering Array Prozessor</li><br><li>Vibrant Color Quality² (VCQ²)</li><br><li>UltraSharp DAC</li><br></ul><br><i>&quot;Bleibt abschließend festzustellen, daß die Matrox Millennium G400 Max als Allroundkarte für den Highend-PC derzeit unerreicht ist. Das ergibt den Testsieg und unsere wärmste Empfehlung.&quot;</i><br><br><b>GameStar 8/99 (S.184)</b>','www.matrox.com/mga/deutsch/products/mill_g400/home.cfm',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(2,3,'Matrox G400 32MB','<b>Dramatically Different High Performance Graphics</b><br><br>Introducing the Millennium G400 Series - a dramatically different, high performance graphics experience. Armed with the industry\'s fastest graphics chip, the Millennium G400 Series takes explosive acceleration two steps further by adding unprecedented image quality, along with the most versatile display options for all your 3D, 2D and DVD applications. As the most powerful and innovative tools in your PC\'s arsenal, the Millennium G400 Series will not only change the way you see graphics, but will revolutionize the way you use your computer.<br><br><b>Key features:</b><ul><li>New Matrox G400 256-bit DualBus graphics chip</li><li>Explosive 3D, 2D and DVD performance</li><li>DualHead Display</li><li>Superior DVD and TV output</li><li>3D Environment-Mapped Bump Mapping</li><li>Vibrant Color Quality rendering </li><li>UltraSharp DAC of up to 360 MHz</li><li>3D Rendering Array Processor</li><li>Support for 16 or 32 MB of memory</li></ul>','www.matrox.com/mga/products/mill_g400/home.htm',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(2,4,'Matrox G400 32MB','(pt) <b>Dramatically Different High Performance Graphics</b><br><br>Introducing the Millennium G400 Series - a dramatically different, high performance graphics experience. Armed with the industry\'s fastest graphics chip, the Millennium G400 Series takes explosive acceleration two steps further by adding unprecedented image quality, along with the most versatile display options for all your 3D, 2D and DVD applications. As the most powerful and innovative tools in your PC\'s arsenal, the Millennium G400 Series will not only change the way you see graphics, but will revolutionize the way you use your computer.<br><br><b>Key features:</b><ul><li>New Matrox G400 256-bit DualBus graphics chip</li><li>Explosive 3D, 2D and DVD performance</li><li>DualHead Display</li><li>Superior DVD and TV output</li><li>3D Environment-Mapped Bump Mapping</li><li>Vibrant Color Quality rendering </li><li>UltraSharp DAC of up to 360 MHz</li><li>3D Rendering Array Processor</li><li>Support for 16 or 32 MB of memory</li></ul>','www.matrox.com/mga/products/mill_g400/home.htm',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'Microsoft IntelliMouse Pro','Every element of IntelliMouse Pro - from its unique arched shape to the texture of the rubber grip around its base - is the product of extensive customer and ergonomic research. Microsoft\'s popular wheel control, which now allows zooming and universal scrolling functions, gives IntelliMouse Pro outstanding comfort and efficiency.','www.microsoft.com/hardware/mouse/intellimouse.asp',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(3,2,'Microsoft IntelliMouse Pro','Die IntelliMouse Pro hat mit der IntelliRad-Technologie einen neuen Standard gesetzt. Anwenderfreundliche Handhabung und produktiveres Arbeiten am PC zeichnen die IntelliMouse aus. Die gewölbte Oberseite paßt sich natürlich in die Handfläche ein, die geschwungene Form erleichtert das Bedienen der Maus. Sie ist sowohl für Rechts- wie auch für Linkshänder geeignet. Mit dem Rad der IntelliMouse kann der Anwender einfach und komfortabel durch Dokumente navigieren.<br><br><b>Eigenschaften:</b><br><ul><br><li><b>ANSCHLUSS:</b> PS/2</li><br><li><b>FARBE:</b> weiß</li><br><li><b>TECHNIK:</b> Mauskugel</li><br><li><b>TASTEN:</b> 3 (incl. Scrollrad)</li><br><li><b>SCROLLRAD:</b> Ja</li><br></ul>','',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(3,3,'Microsoft IntelliMouse Pro','Every element of IntelliMouse Pro - from its unique arched shape to the texture of the rubber grip around its base - is the product of extensive customer and ergonomic research. Microsoft\'s popular wheel control, which now allows zooming and universal scrolling functions, gives IntelliMouse Pro outstanding comfort and efficiency.','www.microsoft.com/hardware/mouse/intellimouse.asp',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(3,4,'Microsoft IntelliMouse Pro','(pt) Every element of IntelliMouse Pro - from its unique arched shape to the texture of the rubber grip around its base - is the product of extensive customer and ergonomic research. Microsoft\'s popular wheel control, which now allows zooming and universal scrolling functions, gives IntelliMouse Pro outstanding comfort and efficiency.','www.microsoft.com/hardware/mouse/intellimouse.asp',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(4,1,'The Hunger Games','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br>Languages: English, Deutsch.<br>Subtitles: English, Deutsch, Spanish.<br>Audio: Dolby Surround 5.1.<br>Picture Format: 16:9 Wide-Screen.<br>Length: (approx) 80 minutes.<br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','http://www.scholastic.com/thehungergames/',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(4,2,'The Hunger Games','Originaltitel: &quot;The Replacement Killers&quot;<br><br>Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 80 minutes.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br>(USA 1998). Til Schweiger schießt auf Hongkong-Star Chow Yun-Fat (&quot;Anna und der König&quot;) ­ ein Fehler ...','http://www.scholastic.com/thehungergames/',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(4,3,'The Hunger Games','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br>Languages: English, Deutsch.<br>Subtitles: English, Deutsch, Spanish.<br>Audio: Dolby Surround 5.1.<br>Picture Format: 16:9 Wide-Screen.<br>Length: (approx) 80 minutes.<br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','http://www.scholastic.com/thehungergames/',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(4,4,'The Hunger Games','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br>Languages: English, Deutsch.<br>Subtitles: English, Deutsch, Spanish.<br>Audio: Dolby Surround 5.1.<br>Picture Format: 16:9 Wide-Screen.<br>Length: (approx) 80 minutes.<br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','http://www.scholastic.com/thehungergames/',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(5,1,'Blade Runner - Director\'s Cut','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br>Languages: English, Deutsch.<br>Subtitles: English, Deutsch, Spanish.<br>Audio: Dolby Surround 5.1.<br>Picture Format: 16:9 Wide-Screen.<br>Length: (approx) 112 minutes.<br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','www.bladerunner.com',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(5,2,'Blade Runner - Director\'s Cut','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 112 minutes.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br><b>Sci-Fi-Klassiker, USA 1983, 112 Min.</b><br><br>Los Angeles ist im Jahr 2019 ein Hexenkessel. Dauerregen und Smog tauchen den überbevölkerten Moloch in ewige Dämmerung. Polizeigleiter schwirren durch die Luft und überwachen das grelle Ethnogemisch, das sich am Fuße 400stöckiger Stahlbeton-Pyramiden tummelt. Der abgehalfterte Ex-Cop und \"Blade Runner\" Rick Deckard ist Spezialist für die Beseitigung von Replikanten, künstlichen Menschen, geschaffen für harte Arbeit auf fremden Planeten. Nur ihm kann es gelingen, vier flüchtige, hochintelligente \"Nexus 6\"-Spezialmodelle zu stellen. Die sind mit ihrem starken und brandgefährlichen Anführer Batty auf der Suche nach ihrem Schöpfer. Er soll ihnen eine längere Lebenszeit schenken. Das muß Rick Deckard verhindern.  Als sich der eiskalte Jäger in Rachel, die Sekretärin seines Auftraggebers, verliebt, gerät sein Weltbild jedoch ins Wanken. Er entdeckt, daß sie - vielleicht wie er selbst - ein Replikant ist ...<br><br>Die Konfrontation des Menschen mit \"Realität\" und \"Virtualität\" und das verstrickte Spiel mit getürkten Erinnerungen zieht sich als roter Faden durch das Werk von Autor Philip K. Dick (\"Die totale Erinnerung\"). Sein Roman \"Träumen Roboter von elektrischen Schafen?\" liefert die Vorlage für diesen doppelbödigen Thriller, der den Zuschauer mit faszinierenden<br>Zukunftsvisionen und der gigantischen Kulisse des Großstadtmolochs gefangen nimmt.','www.bladerunner.com',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(5,3,'Blade Runner - Director\'s Cut','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br>Languages: English, Deutsch.<br>Subtitles: English, Deutsch, Spanish.<br>Audio: Dolby Surround 5.1.<br>Picture Format: 16:9 Wide-Screen.<br>Length: (approx) 112 minutes.<br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','www.bladerunner.com',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(5,4,'Blade Runner - Director\'s Cut','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br>Languages: English, Deutsch.<br>Subtitles: English, Deutsch, Spanish.<br>Audio: Dolby Surround 5.1.<br>Picture Format: 16:9 Wide-Screen.<br>Length: (approx) 112 minutes.<br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','www.bladerunner.com',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(6,1,'The Matrix','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch.<br><br>Audio: Dolby Surround.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 131 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Making Of.','www.thematrix.com',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(6,2,'Matrix','Originaltitel: &quot;The Matrix&quot;<br><br>Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 136 minuten.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br>(USA 1999) Der Geniestreich der Wachowski-Brüder. In dieser technisch perfekten Utopie kämpft Hacker Keanu Reeves gegen die Diktatur der Maschinen...','www.whatisthematrix.com',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(6,3,'The Matrix','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch.<br><br>Audio: Dolby Surround.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 131 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Making Of.','www.thematrix.com',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(6,4,'The Matrix','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch.<br><br>Audio: Dolby Surround.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 131 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Making Of.','www.thematrix.com',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(7,1,'You\'ve Got Mail','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch, Spanish.<br><br>Subtitles: English, Deutsch, Spanish, French, Nordic, Polish.<br><br>Audio: Dolby Digital 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 115 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','www.youvegotmail.com',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(7,2,'e-m@il für Dich','Original: &quot;You\'ve got mail&quot;<br><br>Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 112 minutes.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br>(USA 1998) von Nora Ephron (&qout;Schlaflos in Seattle&quot;). Meg Ryan und Tom Hanks knüpfen per E-Mail zarte Bande. Dass sie sich schon kennen, ahnen sie nicht ...','www.youvegotmail.com',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(7,3,'You\'ve Got Mail','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch, Spanish.<br><br>Subtitles: English, Deutsch, Spanish, French, Nordic, Polish.<br><br>Audio: Dolby Digital 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 115 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','www.youvegotmail.com',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(7,4,'You\'ve Got Mail','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch, Spanish.<br><br>Subtitles: English, Deutsch, Spanish, French, Nordic, Polish.<br><br>Audio: Dolby Digital 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 115 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','www.youvegotmail.com',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(8,1,'A Bug\'s Life','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Digital 5.1 / Dobly Surround Stereo.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 91 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','www.abugslife.com',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(8,2,'Das Große Krabbeln','Originaltitel: &quot;A Bug\'s Life&quot;<br><br>Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 96 minuten.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br>(USA 1998). Ameise Flik zettelt einen Aufstand gegen gefräßige Grashüpfer an ... Eine fantastische Computeranimation des \"Toy Story\"-Teams. ','www.abugslife.com',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(8,3,'A Bug\'s Life','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Digital 5.1 / Dobly Surround Stereo.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 91 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','www.abugslife.com',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(8,4,'A Bug\'s Life','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Digital 5.1 / Dobly Surround Stereo.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 91 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','www.abugslife.com',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(9,1,'Under Siege','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 98 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(9,2,'Alarmstufe: Rot','Originaltitel: &quot;Under Siege&quot;<br><br>Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 96 minuten.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br><b>Actionthriller. Smutje Steven Seagal versalzt Schurke Tommy Lee Jones die Suppe</b><br><br>Katastrophe ahoi: Kurz vor Ausmusterung der \"U.S.S. Missouri\" kapert die High-tech-Bande von Ex-CIA-Agent Strannix (Tommy Lee Jones) das Schlachtschiff. Strannix will die Nuklearraketen des Kreuzers klauen und verscherbeln. Mit Hilfe des irren Ersten Offiziers Krill (lustig: Gary Busey) killen die Gangster den Käpt’n und sperren seine Crew unter Deck. Blöd, dass sie dabei Schiffskoch Rybak (Steven Seagal) vergessen. Der Ex-Elitekämpfer knipst einen Schurken nach dem anderen aus. Eine Verbündete findet er in Stripperin Jordan (Ex-\"Baywatch\"-Biene Erika Eleniak). Die sollte eigentlich aus Käpt’ns Geburtstagstorte hüpfen ... Klar: Seagal ist kein Edelmime. Dafür ist Regisseur Andrew Davis (\"Auf der Flucht\") ein Könner: Er würzt die Action-Orgie mit Ironie und nutzt die imposante Schiffskulisse voll aus. Für Effekte und Ton gab es 1993 Oscar-Nominierungen. ','',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(9,3,'Under Siege','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 98 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(9,4,'Under Siege','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 98 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(10,1,'Under Siege 2 - Dark Territory','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 98 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(10,2,'Alarmstufe: Rot 2','Originaltitel: &quot;Under Siege 2: Dark Territory&quot;<br><br>Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 96 minuten.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br>(USA ’95). Von einem gekaperten Zug aus übernimmt Computerspezi Dane die Kontrolle über einen Kampfsatelliten und erpresst das Pentagon. Aber auch Ex-Offizier Ryback (Steven Seagal) ist im Zug ...<br>','',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(10,3,'Under Siege 2 - Dark Territory','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 98 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(10,4,'Under Siege 2 - Dark Territory','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 98 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(11,1,'Harry Potter - The Goblet of Fire','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 100 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','http://harrypotter.warnerbros.co.uk/gobletoffire/master/',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(11,2,'Harry Potter - The Goblet of Fire','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 96 minuten.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br>Ein mysteriöser Mordfall führt den Bundesmarschall Jack Taggert in eine Kleinstadt im US-Staat Kentucky. Doch bei seinen Ermittlungen stößt er auf eine Mauer des Schweigens. Angst beherrscht die Stadt, und alle Spuren führen zu dem undurchsichtigen Minen-Tycoon Orin Hanner. Offenbar werden in der friedlichen Berglandschaft gigantische Mengen Giftmülls verschoben, mit unkalkulierbaren Risiken. Um eine Katastrophe zu verhindern, räumt Taggert gnadenlos auf ...','http://harrypotter.warnerbros.co.uk/gobletoffire/master/',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(11,3,'Harry Potter - The Goblet of Fire','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 100 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','http://harrypotter.warnerbros.co.uk/gobletoffire/master/',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(11,4,'Harry Potter - The Goblet of Fire','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 100 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','http://harrypotter.warnerbros.co.uk/gobletoffire/master/',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(12,1,'Die Hard With A Vengeance','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 122 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(12,2,'Stirb Langsam - Jetzt Erst Recht','Originaltitel: &quot;Die Hard With A Vengeance&quot;<br><br>Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 96 minuten.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br>So explosiv, so spannend, so rasant wie nie zuvor: Bruce Willis als Detectiv John McClane in einem Action-Thriller der Superlative! Das ist heute nicht McClanes Tag. Seine Frau hat ihn verlassen, sein Boß hat ihn vom Dienst suspendiert und irgendein Verrückter hat ihn gerade zum Gegenspieler in einem teuflischen Spiel erkoren - und der Einsatz ist New York selbst. Ein Kaufhaus ist explodiert, doch das ist nur der Auftakt. Der geniale Superverbrecher Simon droht, die ganze Stadt Stück für Stück in die Luft zu sprengen, wenn McClane und sein Partner wider Willen seine explosiven\" Rätsel nicht lösen. Eine mörderische Hetzjagd quer durch New York beginnt - bis McClane merkt, daß der Bombenterror eigentlich nur ein brillantes Ablenkungsmanöver ist...!<br><i>\"Perfekt gemacht und stark besetzt. Das Action-Highlight des Jahres!\"</i> <b>(Bild)</b>','',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(12,3,'Die Hard With A Vengeance','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 122 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(12,4,'Die Hard With A Vengeance','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 122 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(13,1,'Lethal Weapon','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 100 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(13,2,'Zwei stahlharte Profis','Originaltitel: &quot;Lethal Weapon&quot;<br><br>Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 96 minuten.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br>Sie sind beide Cops in L.A.. Sie haben beide in Vietnam für eine Spezialeinheit gekämpft. Und sie hassen es beide, mit einem Partner arbeiten zu müssen. Aber sie sind Partner: Martin Riggs, der Mann mit dem Todeswunsch, für wen auch immer. Und Roger Murtaugh, der besonnene Polizist. Gemeinsam enttarnen sie einen gigantischen Heroinschmuggel, hinter dem sich eine Gruppe ehemaliger CIA-Söldner verbirgt. Eine Killerbande gegen zwei Profis ...','',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(13,3,'Lethal Weapon','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 100 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(13,4,'Lethal Weapon','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 100 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(14,1,'Red Corner','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 117 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(14,2,'Labyrinth ohne Ausweg','Originaltitel: &quot;Red Corner&quot;<br><br>Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 96 minuten.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br>Dem Amerikaner Jack Moore wird in China der bestialische Mord an einem Fotomodel angehängt. Brutale Gefängnisschergen versuchen, ihn durch Folter zu einem Geständnis zu zwingen. Vor Gericht fordert die Anklage die Todesstrafe - Moore\'s Schicksal scheint besiegelt. Durch einen Zufall gelingt es ihm, aus der Haft zu fliehen, doch aus der feindseligen chinesischen Hauptstadt gibt es praktisch kein Entkommen ...','',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(14,3,'Red Corner','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 117 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(14,4,'Red Corner','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 117 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(15,1,'Frantic','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 115 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(15,2,'Frantic','Originaltitel: &quot;Frantic&quot;<br><br>Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 96 minuten.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br>Ein romantischer Urlaub in Paris, der sich in einen Alptraum verwandelt. Ein Mann auf der verzweifelten Suche nach seiner entführten Frau. Ein düster-bedrohliches Paris, in dem nur ein Mensch Licht in die tödliche Affäre bringen kann.','',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(15,3,'Frantic','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 115 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(15,4,'Frantic','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 115 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(16,1,'Titanic','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 112 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','http://www.titanicmovie.com/',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(16,2,'Titanic','Originaltitel: &quot;Courage Under Fire&quot;<br><br>Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 96 minuten.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br>Lieutenant Colonel Nathaniel Serling (Denzel Washington) lässt während einer Schlacht im Golfkrieg versehentlich auf einen US-Panzer schießen, dessen Mannschaft dabei ums Leben kommt. Ein Jahr nach diesem Vorfall wird Serling, der mittlerweile nach Washington D.C. versetzt wurde, die Aufgabe übertragen, sich um einen Kandidaten zu kümmern, der während des Krieges starb und dem der höchste militärische Orden zuteil werden soll. Allerdings sind sowohl der Fall und als auch der betreffende Soldat ein politisch heißes Eisen -- Captain Karen Walden (Meg Ryan) ist Amerikas erster weiblicher Soldat, der im Kampf getötet wurde.<br><br>Serling findet schnell heraus, dass es im Fall des im felsigen Gebiet von Kuwait abgestürzten Rettungshubschraubers Diskrepanzen gibt. In Flashbacks werden von unterschiedlichen Personen verschiedene Versionen von Waldens Taktik, die Soldaten zu retten und den Absturz zu überleben, dargestellt (à la Kurosawas Rashomon). Genau wie in Glory erweist sich Regisseur Edward Zwicks Zusammenstellung von bekannten und unbekannten Schauspielern als die richtige Mischung. Waldens Crew ist besonders überzeugend. Matt Damon als der Sanitäter kommt gut als der leichtfertige Typ rüber, als er Washington seine Geschichte erzählt. Im Kampf ist er ein mit Fehlern behafteter, humorvoller Soldat.<br><br>Die erstaunlichste Arbeit in Mut zur Wahrheit leistet Lou Diamond Phillips (als der Schütze der Gruppe), dessen Karriere sich auf dem Weg in die direkt für den Videomarkt produzierten Filme befand. Und dann ist da noch Ryan. Sie hat sich in dramatischen Filmen in der Vergangenheit gut behauptet (Eine fast perfekte Liebe, Ein blutiges Erbe), es aber nie geschafft, ihrem Image zu entfliehen, das sie in die Ecke der romantischen Komödie steckte. Mit gefärbtem Haar, einem leichten Akzent und der von ihr geforderten Darstellungskunst hat sie endlich einen langlebigen dramatischen Film.','http://www.titanicmovie.com/',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(16,3,'Titanic','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 112 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','http://www.titanicmovie.com/',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(16,4,'Titanic','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 112 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','http://www.titanicmovie.com/',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(17,1,'Speed','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 112 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(17,2,'Speed','Originaltitel: &quot;Speed&quot;<br><br>Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 96 minuten.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br>Er ist ein Cop aus der Anti-Terror-Einheit von Los Angeles. Und so ist der Alarm für Jack Traven nichts Ungewöhnliches: Ein Terrorist will drei Millionen Dollar erpressen, oder die zufälligen Geiseln in einem Aufzug fallen 35 Stockwerke in die Tiefe. Doch Jack schafft das Unmögliche - die Geiseln werden gerettet und der Terrorist stirbt an seiner eigenen Bombe. Scheinbar. Denn schon wenig später steht Jack (Keanu Reeves) dem Bombenexperten Payne erneut gegenüber. Diesmal hat sich der Erpresser eine ganz perfide Mordwaffe ausgedacht: Er plaziert eine Bombe in einem öffentlichen Bus. Der Mechanismus der Sprengladung schaltet sich automatisch ein, sobald der Bus schneller als 50 Meilen in der Stunde fährt und detoniert sofort, sobald die Geschwindigkeit sinkt. Plötzlich wird für eine Handvoll ahnungsloser Durchschnittsbürger der Weg zur Arbeit zum Höllentrip - und nur Jack hat ihr Leben in der Hand. Als der Busfahrer verletzt wird, übernimmt Fahrgast Annie (Sandra Bullock) das Steuer. Doch wohin mit einem Bus, der nicht bremsen kann in der Stadt der Staus? Doch es kommt noch schlimmer: Payne (Dennis Hopper) will jetzt nicht nur seine drei Millionen Dollar. Er will Jack. Um jeden Preis.','',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(17,3,'Speed','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 112 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(17,4,'Speed','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 112 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(18,1,'Speed 2: Cruise Control','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 120 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(18,2,'Speed 2: Cruise Control','Originaltitel: &quot;Speed 2 - Cruise Control&quot;<br><br>Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 96 minuten.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br>Halten Sie ihre Schwimmwesten bereit, denn die actiongeladene Fortsetzung von Speed begibt sich auf Hochseekurs. Erleben Sie Sandra Bullock erneut in ihrer Star-Rolle als Annie Porter. Die Karibik-Kreuzfahrt mit ihrem Freund Alex entwickelt sich unaufhaltsam zur rasenden Todesfahrt, als ein wahnsinniger Computer-Spezialist den Luxusliner in seine Gewalt bringt und auf einen mörderischen Zerstörungskurs programmiert. Eine hochexplosive Reise, bei der kein geringerer als Action-Spezialist Jan De Bont das Ruder in die Hand nimmt. Speed 2: Cruise Controll läßt ihre Adrenalin-Wellen in rasender Geschwindigkeit ganz nach oben schnellen.','',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(18,3,'Speed 2: Cruise Control','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 120 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(18,4,'Speed 2: Cruise Control','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 120 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(19,1,'There\'s Something About Mary','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 114 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(19,2,'Verrückt nach Mary','Originaltitel: &quot;There\'s Something About Mary&quot;<br><br>Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 96 minuten.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br>13 Jahre nachdem Teds Rendezvous mit seiner angebeteten Mary in einem peinlichen Fiasko endete, träumt er immer noch von ihr und engagiert den windigen Privatdetektiv Healy um sie aufzuspüren. Der findet Mary in Florida und verliebt sich auf den ersten Blick in die atemberaubende Traumfrau. Um Ted als Nebenbuhler auszuschalten, tischt er ihm dicke Lügen über Mary auf. Ted läßt sich jedoch nicht abschrecken, eilt nach Miami und versucht nun alles, um Healy die Balztour zu vermasseln. Doch nicht nur Healy ist verrückt nach Mary und Ted bekommt es mit einer ganzen Legion liebeskranker Konkurrenten zu tun ...','',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(19,3,'There\'s Something About Mary','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 114 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(19,4,'There\'s Something About Mary','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 114 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(20,1,'The Dark Knight','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 164 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','http://thedarkknight.warnerbros.com',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(20,2,'The Dark Knight','Originaltitel: &quot;Beloved&quot;<br><br>Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 96 minuten.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br>Dieser vielschichtige Film ist eine Arbeit, die Regisseur Jonathan Demme und dem amerikanischen Talkshow-Star Oprah Winfrey sehr am Herzen lag. Der Film deckt im Verlauf seiner dreistündigen Spielzeit viele Bereiche ab. Menschenkind ist teils Sklavenepos, teils Mutter-Tochter-Drama und teils Geistergeschichte.<br><br>Der Film fordert vom Publikum höchste Aufmerksamkeit, angefangen bei seiner dramatischen und etwas verwirrenden Eingangssequenz, in der die Bewohner eines Hauses von einem niederträchtigen übersinnlichen Angriff heimgesucht werden. Aber Demme und seine talentierte Besetzung bereiten denen, die dabei bleiben ein unvergessliches Erlebnis. Der Film folgt den Spuren von Sethe (in ihren mittleren Jahren von Oprah Winfrey dargestellt), einer ehemaligen Sklavin, die sich scheinbar ein friedliches und produktives Leben in Ohio aufgebaut hat. Aber durch den erschreckenden und sparsamen Einsatz von Rückblenden deckt Demme, genau wie das literarische Meisterwerk von Toni Morrison, auf dem der Film basiert, langsam die Schrecken von Sethes früherem Leben auf und das schreckliche Ereignis, dass dazu führte, dass Sethes Haus von Geistern heimgesucht wird.<br><br>Während die Gräuel der Sklaverei und das blutige Ereignis in Sethes Familie unleugbar tief beeindrucken, ist die Qualität des Film auch in kleineren, genauso befriedigenden Details sichtbar. Die geistlich beeinflusste Musik von Rachel Portman ist gleichzeitig befreiend und bedrückend, und der Einblick in die afro-amerikanische Gemeinschaft nach der Sklaverei -- am Beispiel eines Familienausflugs zu einem Jahrmarkt, oder dem gospelsingenden Nähkränzchen -- machen diesen Film zu einem speziellen Vergnügen sowohl für den Geist als auch für das Herz. Die Schauspieler, besonders Kimberley Elise als Sethes kämpfende Tochter und Thandie Newton als der mysteriöse Titelcharakter, sind sehr rührend. Achten Sie auch auf Danny Glover (Lethal Weapon) als Paul D.','http://thedarkknight.warnerbros.com',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(20,3,'The Dark Knight','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 164 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','http://thedarkknight.warnerbros.com',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(20,4,'The Dark Knight','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch.<br><br>Subtitles: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 164 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','http://thedarkknight.warnerbros.com',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(21,1,'SWAT 3: Close Quarters Battle','<b>Windows 95/98</b><br><br>211 in progress with shots fired. Officer down. Armed suspects with hostages. Respond Code 3! Los Angles, 2005, In the next seven days, representatives from every nation around the world will converge on Las Angles to witness the signing of the United Nations Nuclear Abolishment Treaty. The protection of these dignitaries falls on the shoulders of one organization, LAPD SWAT. As part of this elite tactical organization, you and your team have the weapons and all the training necessary to protect, to serve, and \"When needed\" to use deadly force to keep the peace. It takes more than weapons to make it through each mission. Your arsenal includes C2 charges, flashbangs, tactical grenades. opti-Wand mini-video cameras, and other devices critical to meeting your objectives and keeping your men free of injury. Uncompromised Duty, Honor and Valor!','www.swat3.com',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(21,2,'SWAT 3: Elite Edition','<b>KEINE KOMPROMISSE!</b><br><i>Kämpfen Sie Seite an Seite mit Ihren LAPD SWAT-Kameraden gegen das organisierte Verbrechen!</i><br><br>Eine der realistischsten 3D-Taktiksimulationen der letzten Zeit jetzt mit Multiplayer-Modus, 5 neuen Missionen und jede Menge nützliche Tools!<br><br>Los Angeles, 2005. In wenigen Tagen steht die Unterzeichnung des Abkommens der Vereinten Nationen zur Atom-Ächtung durch Vertreter aller Nationen der Welt an. Radikale terroristische Vereinigungen machen sich in der ganzen Stadt breit. Verantwortlich für die Sicherheit der Delegierten zeichnet sich eine Eliteeinheit der LAPD: das SWAT-Team. Das Schicksal der Stadt liegt in Ihren Händen.<br><br><b>Neue Features:</b><br><ul><br><li>Multiplayer-Modus (Co op-Modus, Deathmatch in den bekannten Variationen)</li><br><li>5 neue Missionen an original Örtlichkeiten Las (U-Bahn, Whitman Airport, etc.)</li><br><li>neue Charakter</li><br><li>neue Skins</li><br><li>neue Waffen</li><br><li>neue Sounds</li><br><li>verbesserte KI</li><br><li>Tools-Package</li><br><li>Scenario-Editor</li><br><li>Level-Editor</li><br></ul><br>Die dritte Folge der Bestseller-Reihe im Bereich der 3D-Echtzeit-Simulationen präsentiert sich mit einer neuen Spielengine mit extrem ausgeprägtem Realismusgrad. Der Spieler übernimmt das Kommando über eine der besten Polizei-Spezialeinheiten oder einer der übelsten Terroristen-Gangs der Welt. Er durchläuft - als \"Guter\" oder \"Böser\" - eine der härtesten und elitärsten Kampfausbildungen, in der er lernt, mit jeder Art von Krisensituationen umzugehen. Bei diesem Action-Abenteuer geht es um das Leben prominenter Vertreter der Vereinten Nationen und bei 16 Missionen an Originalschauplätzen in LA gibt die \"lebensechte\" KI den Protagonisten jeder Seite so einige harte Nüsse zu knacken.','www.swat3.com',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(21,3,'SWAT 3: Close Quarters Battle','<b>Windows 95/98</b><br><br>211 in progress with shots fired. Officer down. Armed suspects with hostages. Respond Code 3! Los Angles, 2005, In the next seven days, representatives from every nation around the world will converge on Las Angles to witness the signing of the United Nations Nuclear Abolishment Treaty. The protection of these dignitaries falls on the shoulders of one organization, LAPD SWAT. As part of this elite tactical organization, you and your team have the weapons and all the training necessary to protect, to serve, and \"When needed\" to use deadly force to keep the peace. It takes more than weapons to make it through each mission. Your arsenal includes C2 charges, flashbangs, tactical grenades. opti-Wand mini-video cameras, and other devices critical to meeting your objectives and keeping your men free of injury. Uncompromised Duty, Honor and Valor!','www.swat3.com',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(21,4,'SWAT 3: Close Quarters Battle','(pt) <b>Windows 95/98</b><br><br>211 in progress with shots fired. Officer down. Armed suspects with hostages. Respond Code 3! Los Angles, 2005, In the next seven days, representatives from every nation around the world will converge on Las Angles to witness the signing of the United Nations Nuclear Abolishment Treaty. The protection of these dignitaries falls on the shoulders of one organization, LAPD SWAT. As part of this elite tactical organization, you and your team have the weapons and all the training necessary to protect, to serve, and \"When needed\" to use deadly force to keep the peace. It takes more than weapons to make it through each mission. Your arsenal includes C2 charges, flashbangs, tactical grenades. opti-Wand mini-video cameras, and other devices critical to meeting your objectives and keeping your men free of injury. Uncompromised Duty, Honor and Valor!','www.swat3.com',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(22,1,'Unreal Tournament','From the creators of the best-selling Unreal, comes Unreal Tournament. A new kind of single player experience. A ruthless multiplayer revolution.<br><br>This stand-alone game showcases completely new team-based gameplay, groundbreaking multi-faceted single player action or dynamic multi-player mayhem. It\'s a fight to the finish for the title of Unreal Grand Master in the gladiatorial arena. A single player experience like no other! Guide your team of \'bots\' (virtual teamates) against the hardest criminals in the galaxy for the ultimate title - the Unreal Grand Master.','www.unrealtournament.net',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(22,2,'Unreal Tournament','2341: Die Gewalt ist eine Lebensweise, die sich ihren Weg durch die dunklen Risse der Gesellschaft bahnt. Sie bedroht die Macht und den Einfluss der regierenden Firmen, die schnellstens ein Mittel finden müssen, die tobenden Massen zu besänftigen - ein profitables Mittel ... Gladiatorenkämpfe sind die Lösung. Sie sollen den Durst der Menschen nach Blut stillen und sind die perfekte Gelegenheit, die Aufständischen, Kriminellen und Aliens zu beseitigen, die die Firmenelite bedrohen.<br><br>Das Turnier war geboren - ein Kampf auf Leben und Tod. Galaxisweit live und in Farbe! Kämpfen Sie für Freiheit, Ruhm und Ehre. Sie müssen stark, schnell und geschickt sein ... oder Sie bleiben auf der Strecke.<br><br>Kämpfen Sie allein oder kommandieren Sie ein Team gegen Armeen unbarmherziger Krieger, die alle nur ein Ziel vor Augen haben: Die Arenen lebend zu verlassen und sich dem Grand Champion zu stellen ... um ihn dann zu bezwingen!<br><br><b>Features:</b><br><ul><br><li>Auf dem PC mehrfach als Spiel des Jahres ausgezeichnet!</li><br><li>Mehr als 50 faszinierende Level - verlassene Raumstationen, gotische Kathedralen und graffitibedeckte Großstädte.</li><br><li>Vier actionreiche Spielmodi - Deathmatch, Capture the Flag, Assault und Domination werden Ihren Adrenalinpegel in die Höhe schnellen lassen.</li><br><li>Dramatische Mehrspieler-Kämpfe mit 2, 3 und 4 Spielern, auch über das Netzwerk</li><br><li>Gnadenlos aggressive Computergegner verlangen Ihnen das Äußerste ab.</li><br><li>Neuartiges Benutzerinterface und verbesserte Steuerung - auch mit USB-Maus und -Tastatur spielbar.</li><br></ul><br>Der Nachfolger des Actionhits \"Unreal\" verspricht ein leichtes, intuitives Interface, um auch Einsteigern schnellen Zugang zu den Duellen gegen die Bots zu ermöglichen. Mit diesen KI-Kriegern kann man auch Teams bilden und im umfangreichen Multiplayermodus ohne Onlinekosten in den Kampf ziehen. 35 komplett neue Arenen und das erweiterte Waffenangebot bilden dazu den würdigen Rahmen.','www.unrealtournament.net',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(22,3,'Unreal Tournament','From the creators of the best-selling Unreal, comes Unreal Tournament. A new kind of single player experience. A ruthless multiplayer revolution.<br><br>This stand-alone game showcases completely new team-based gameplay, groundbreaking multi-faceted single player action or dynamic multi-player mayhem. It\'s a fight to the finish for the title of Unreal Grand Master in the gladiatorial arena. A single player experience like no other! Guide your team of \'bots\' (virtual teamates) against the hardest criminals in the galaxy for the ultimate title - the Unreal Grand Master.','www.unrealtournament.net',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(22,4,'Unreal Tournament','(pt) From the creators of the best-selling Unreal, comes Unreal Tournament. A new kind of single player experience. A ruthless multiplayer revolution.<br><br>This stand-alone game showcases completely new team-based gameplay, groundbreaking multi-faceted single player action or dynamic multi-player mayhem. It\'s a fight to the finish for the title of Unreal Grand Master in the gladiatorial arena. A single player experience like no other! Guide your team of \'bots\' (virtual teamates) against the hardest criminals in the galaxy for the ultimate title - the Unreal Grand Master.','www.unrealtournament.net',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(23,1,'The Wheel Of Time','The world in which The Wheel of Time takes place is lifted directly out of Jordan\'s pages; it\'s huge and consists of many different environments. How you navigate the world will depend largely on which game - single player or multipayer - you\'re playing. The single player experience, with a few exceptions, will see Elayna traversing the world mainly by foot (with a couple notable exceptions). In the multiplayer experience, your character will have more access to travel via Ter\'angreal, Portal Stones, and the Ways. However you move around, though, you\'ll quickly discover that means of locomotion can easily become the least of the your worries...<br><br>During your travels, you quickly discover that four locations are crucial to your success in the game. Not surprisingly, these locations are the homes of The Wheel of Time\'s main characters. Some of these places are ripped directly from the pages of Jordan\'s books, made flesh with Legend\'s unparalleled pixel-pushing ways. Other places are specific to the game, conceived and executed with the intent of expanding this game world even further. Either way, they provide a backdrop for some of the most intense first person action and strategy you\'ll have this year.','www.wheeloftime.com',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(23,2,'The Wheel Of Time','<b><i>\"Wheel Of Time\"(Das Rad der Zeit)</i></b> basiert auf den Fantasy-Romanen von Kultautor Robert Jordan und stellt einen einzigartigen Mix aus Strategie-, Action- und Rollenspielelementen dar. Obwohl die Welt von \"Wheel of Time\" eng an die literarische Vorlage der Romane angelehnt ist, erzählt das Spiel keine lineare Geschichte. Die Story entwickelt sich abhängig von den Aktionen der Spieler, die jeweils die Rollen der Hauptcharaktere aus dem Roman übernehmen. Jede Figur hat den Oberbefehl über eine große Gefolgschaft, militärische Einheiten und Ländereien. Die Spieler können ihre eigenen Festungen konstruieren, individuell ausbauen, von dort aus das umliegende Land erforschen, magische Gegenstände sammeln oder die gegnerischen Zitadellen erstürmen. Selbstverständlich kann man sich auch über LAN oder Internet gegenseitig Truppen auf den Hals hetzen und die Festungen seiner Mitspieler in Schutt und Asche legen. Dreh- und Anlegepunkt von \"Wheel of Time\" ist der Kampf um die finstere Macht \"The Dark One\", die vor langer Zeit die Menschheit beinahe ins Verderben stürzte und nur mit Hilfe gewaltiger magischer Energie verbannt werden konnte. \"The Amyrlin Seat\" und \"The Children of the Night\" kämpfen nur gegen \"The Forsaken\" und \"The Hound\" um den Besitz des Schlüssels zu \"Shayol Ghul\" - dem magischen Siegel, mit dessen Hilfe \"The Dark One\" seinerzeit gebannt werden konnte.<br><br><b>Features:</b> <br><ul><br><li>Ego-Shooter mit Strategie-Elementen</li><br><li>Spielumgebung in Echtzeit-3D</li><br><li>Konstruktion aud Ausbau der eigenen Festung</li><br><li>Einsatz von über 100 Artefakten und Zaubersprüchen</li><br><li>Single- und Multiplayermodus</li><br></ul><br>Im Mittelpunkt steht der Kampf gegen eine finstere Macht namens The Dark One. Deren Schergen müssen mit dem Einsatz von über 100 Artefakten und Zaubereien wie Blitzschlag oder Teleportation aus dem Weg geräumt werden. Die opulente 3D-Grafik verbindet Strategie- und Rollenspielelemente. <br><br><b>Voraussetzungen</b><br>mind. P200, 32MB RAM, 4x CD-Rom, Win95/98, DirectX 5.0 komp.Grafikkarte und Soundkarte. ','www.wheeloftime.com',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(23,3,'The Wheel Of Time','The world in which The Wheel of Time takes place is lifted directly out of Jordan\'s pages; it\'s huge and consists of many different environments. How you navigate the world will depend largely on which game - single player or multipayer - you\'re playing. The single player experience, with a few exceptions, will see Elayna traversing the world mainly by foot (with a couple notable exceptions). In the multiplayer experience, your character will have more access to travel via Ter\'angreal, Portal Stones, and the Ways. However you move around, though, you\'ll quickly discover that means of locomotion can easily become the least of the your worries...<br><br>During your travels, you quickly discover that four locations are crucial to your success in the game. Not surprisingly, these locations are the homes of The Wheel of Time\'s main characters. Some of these places are ripped directly from the pages of Jordan\'s books, made flesh with Legend\'s unparalleled pixel-pushing ways. Other places are specific to the game, conceived and executed with the intent of expanding this game world even further. Either way, they provide a backdrop for some of the most intense first person action and strategy you\'ll have this year.','www.wheeloftime.com',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(23,4,'The Wheel Of Time','(pt) The world in which The Wheel of Time takes place is lifted directly out of Jordan\'s pages; it\'s huge and consists of many different environments. How you navigate the world will depend largely on which game - single player or multipayer - you\'re playing. The single player experience, with a few exceptions, will see Elayna traversing the world mainly by foot (with a couple notable exceptions). In the multiplayer experience, your character will have more access to travel via Ter\'angreal, Portal Stones, and the Ways. However you move around, though, you\'ll quickly discover that means of locomotion can easily become the least of the your worries...<br><br>During your travels, you quickly discover that four locations are crucial to your success in the game. Not surprisingly, these locations are the homes of The Wheel of Time\'s main characters. Some of these places are ripped directly from the pages of Jordan\'s books, made flesh with Legend\'s unparalleled pixel-pushing ways. Other places are specific to the game, conceived and executed with the intent of expanding this game world even further. Either way, they provide a backdrop for some of the most intense first person action and strategy you\'ll have this year.','www.wheeloftime.com',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(24,1,'Disciples: Sacred Lands','A new age is dawning...<br><br>Enter the realm of the Sacred Lands, where the dawn of a New Age has set in motion the most momentous of wars. As the prophecies long foretold, four races now clash with swords and sorcery in a desperate bid to control the destiny of their gods. Take on the quest as a champion of the Empire, the Mountain Clans, the Legions of the Damned, or the Undead Hordes and test your faith in battles of brute force, spellbinding magic and acts of guile. Slay demons, vanquish giants and combat merciless forces of the dead and undead. But to ensure the salvation of your god, the hero within must evolve.<br><br>The day of reckoning has come... and only the chosen will survive.','',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(24,2,'Disciples: Sacred Land','Rundenbasierende Fantasy/RTS-Strategie mit gutem Design (vor allem die Levels, 4 versch. Rassen, tolle Einheiten), fantastischer Atmosphäre und exzellentem Soundtrack. Grafisch leider auf das Niveau von 1990.','www.strategyfirst.com/disciples/welcome.html',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(24,3,'Disciples: Sacred Lands','A new age is dawning...<br><br>Enter the realm of the Sacred Lands, where the dawn of a New Age has set in motion the most momentous of wars. As the prophecies long foretold, four races now clash with swords and sorcery in a desperate bid to control the destiny of their gods. Take on the quest as a champion of the Empire, the Mountain Clans, the Legions of the Damned, or the Undead Hordes and test your faith in battles of brute force, spellbinding magic and acts of guile. Slay demons, vanquish giants and combat merciless forces of the dead and undead. But to ensure the salvation of your god, the hero within must evolve.<br><br>The day of reckoning has come... and only the chosen will survive.','',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(24,4,'Disciples: Sacred Lands','(pt) A new age is dawning...<br><br>Enter the realm of the Sacred Lands, where the dawn of a New Age has set in motion the most momentous of wars. As the prophecies long foretold, four races now clash with swords and sorcery in a desperate bid to control the destiny of their gods. Take on the quest as a champion of the Empire, the Mountain Clans, the Legions of the Damned, or the Undead Hordes and test your faith in battles of brute force, spellbinding magic and acts of guile. Slay demons, vanquish giants and combat merciless forces of the dead and undead. But to ensure the salvation of your god, the hero within must evolve.<br><br>The day of reckoning has come... and only the chosen will survive.','',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(25,1,'Microsoft Internet Keyboard PS/2','The Internet Keyboard has 10 Hot Keys on a comfortable standard keyboard design that also includes a detachable palm rest. The Hot Keys allow you to browse the web, or check e-mail directly from your keyboard. The IntelliType Pro software also allows you to customize your hot keys - make the Internet Keyboard work the way you want it to!','',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(25,2,'Microsoft Internet Tastatur PS/2','<i>Microsoft Internet Keyboard,Windows-Tastatur mit 10 zusätzl. Tasten,2 selbst programmierbar, abnehmbareHandgelenkauflage. Treiber im Lieferumfang.</i><br><br>Ein-Klick-Zugriff auf das Internet und vieles mehr! Das Internet Keyboard verfügt über 10 zusätzliche Abkürzungstasten auf einer benutzerfreundlichen Standardtastatur, die darüber hinaus eine abnehmbare Handballenauflage aufweist. Über die Abkürzungstasten können Sie durch das Internet surfen oder direkt von der Tastatur aus auf E-Mails zugreifen. Die IntelliType Pro-Software ermöglicht außerdem das individuelle Belegen der Tasten.','',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(25,3,'Microsoft Internet Keyboard PS/2','The Internet Keyboard has 10 Hot Keys on a comfortable standard keyboard design that also includes a detachable palm rest. The Hot Keys allow you to browse the web, or check e-mail directly from your keyboard. The IntelliType Pro software also allows you to customize your hot keys - make the Internet Keyboard work the way you want it to!','',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(25,4,'Microsoft Internet Keyboard PS/2','(pt) The Internet Keyboard has 10 Hot Keys on a comfortable standard keyboard design that also includes a detachable palm rest. The Hot Keys allow you to browse the web, or check e-mail directly from your keyboard. The IntelliType Pro software also allows you to customize your hot keys - make the Internet Keyboard work the way you want it to!','',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(26,1,'Microsoft IntelliMouse Explorer','Microsoft introduces its most advanced mouse, the IntelliMouse Explorer! IntelliMouse Explorer features a sleek design, an industrial-silver finish, a glowing red underside and taillight, creating a style and look unlike any other mouse. IntelliMouse Explorer combines the accuracy and reliability of Microsoft IntelliEye optical tracking technology, the convenience of two new customizable function buttons, the efficiency of the scrolling wheel and the comfort of expert ergonomic design. All these great features make this the best mouse for the PC!','www.microsoft.com/hardware/mouse/explorer.asp',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(26,2,'Microsof IntelliMouse Explorer','Die IntelliMouse Explorer überzeugt durch ihr modernes Design mit silberfarbenem Gehäuse, sowie rot schimmernder Unter- und Rückseite. Die neuartige IntelliEye-Technologie sorgt für eine noch nie dagewesene Präzision, da statt der beweglichen Teile (zum Abtasten der Bewegungsänderungen an der Unterseite der Maus) ein optischer Sensor die Bewegungen der Maus erfaßt. Das Herzstück der Microsoft IntelliEye-Technologie ist ein kleiner Chip, der einen optischen Sensor und einen digitalen Signalprozessor (DSP) enthält.<br><br>Da auf bewegliche Teile, die Staub, Schmutz und Fett aufnehmen können, verzichtet wurde, muß die IntelliMouse Explorer nicht mehr gereinigt werden. Darüber hinaus arbeitet die IntelliMouse Explorer auf nahezu jeder Arbeitsoberfläche, so daß kein Mauspad mehr erforderlich ist. Mit dem Rad und zwei neuen zusätzlichen Maustasten ermöglicht sie effizientes und komfortables Arbeiten am PC.<br><br><b>Eigenschaften:</b><br><ul><br><li><b>ANSCHLUSS:</b> USB (PS/2-Adapter enthalten)</li><br><li><b>FARBE:</b> metallic-grau</li><br><li><b>TECHNIK:</b> Optisch (Akt.: ca. 1500 Bilder/s)</li><br><li><b>TASTEN:</b> 5 (incl. Scrollrad)</li><br><li><b>SCROLLRAD:</b> Ja</li><br></ul><br><i><b>BEMERKUNG:</b><br>Keine Reinigung bewegter Teile mehr notwendig, da statt der Mauskugel ein Fotoempfänger benutzt wird.</i>','',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(26,3,'Microsoft IntelliMouse Explorer','Microsoft introduces its most advanced mouse, the IntelliMouse Explorer! IntelliMouse Explorer features a sleek design, an industrial-silver finish, a glowing red underside and taillight, creating a style and look unlike any other mouse. IntelliMouse Explorer combines the accuracy and reliability of Microsoft IntelliEye optical tracking technology, the convenience of two new customizable function buttons, the efficiency of the scrolling wheel and the comfort of expert ergonomic design. All these great features make this the best mouse for the PC!','www.microsoft.com/hardware/mouse/explorer.asp',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(26,4,'Microsoft IntelliMouse Explorer','(pt) Microsoft introduces its most advanced mouse, the IntelliMouse Explorer! IntelliMouse Explorer features a sleek design, an industrial-silver finish, a glowing red underside and taillight, creating a style and look unlike any other mouse. IntelliMouse Explorer combines the accuracy and reliability of Microsoft IntelliEye optical tracking technology, the convenience of two new customizable function buttons, the efficiency of the scrolling wheel and the comfort of expert ergonomic design. All these great features make this the best mouse for the PC!','www.microsoft.com/hardware/mouse/explorer.asp',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(27,1,'HP Photosmart 5510 e','HP Photosmart 5510 e-All-in-One with Photo value pack<br>(English Version) Print, scan, copy and browse the Web with one convenient device<br>Enjoy speeds of up to 11 ppm black, 7.5 colour<br>Large 80-sheet input tray, 15-sheet output tray<br>Share with and print from multiple PCs via the integrated wireless','http://www.shopping.hp.com/en_US/home-office/-/products/Printers/Printers',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(27,2,'Hewlett-Packard LaserJet 1100Xi','<b>HP LaserJet für mehr Produktivität und Flexibilität am Arbeitsplatz</b><br><br>Der HP LaserJet 1100Xi Drucker verbindet exzellente Laserdruckqualität mit hoher Geschwindigkeit für mehr Effizienz.<br><br><b>Zielkunden</b><br><ul><li>Einzelanwender, die Wert auf professionelle Ausdrucke in Laserqualität legen und schnelle Ergebnisse auch bei komplexen Dokumenten erwarten.</li><br><li>Der HP LaserJet 1100 sorgt mit gestochen scharfen Texten und Grafiken für ein professionelles Erscheinungsbild Ihrer Arbeit und Ihres Unternehmens. Selbst bei komplexen Dokumenten liefert er schnelle Ergebnisse. Andere Medien - wie z.B. Transparentfolien und Briefumschläge, etc. - lassen sich problemlos bedrucken. Somit ist der HP LaserJet 1100 ein Multifunktionstalent im Büroalltag.</li><br></ul><br><b>Eigenschaften</b><br><ul><br><li><b>Druckqualität</b> Schwarzweiß: 600 x 600 dpi</li><br><li><b>Monatliche Druckleistung</b> Bis zu 7000 Seiten</li><br><li><b>Speicher</b> 2 MB Standardspeicher, erweiterbar auf 18 MB</li><br><li><b>Schnittstelle/gemeinsame Nutzung</b> Parallel, IEEE 1284-kompatibel</li><br><li><b>Softwarekompatibilität</b> DOS/Win 3.1x/9x/NT 4.0</li><br><li><b>Papierzuführung</b> 125-Blatt-Papierzuführung</li><br><li><b>Druckmedien</b> Normalpapier, Briefumschläge, Transparentfolien, kartoniertes Papier, Postkarten und Etiketten</li><br><li><b>Netzwerkfähig</b> Über HP JetDirect PrintServer</li><br><li><b>Lieferumfang</b> HP LaserJet 1100Xi Drucker (Lieferumfang: Drucker, Tonerkassette, 2 m Parallelkabel, Netzkabel, Kurzbedienungsanleitung, Benutzerhandbuch, CD-ROM, 3,5\"-Disketten mit Windows® 3.1x, 9x, NT 4.0 Treibern und DOS-Dienstprogrammen)</li><br><li><b>Gewährleistung</b> Ein Jahr</li><br></ul><br>','www.hp.com',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(27,3,'HP Photosmart 5510 e','HP Photosmart 5510 e-All-in-One with Photo value pack<br>(Versión en Español) Print, scan, copy and browse the Web with one convenient device<br>Enjoy speeds of up to 11 ppm black, 7.5 colour<br>Large 80-sheet input tray, 15-sheet output tray<br>Share with and print from multiple PCs via the integrated wireless','http://www.shopping.hp.com/en_US/home-office/-/products/Printers/Printers',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(27,4,'HP Photosmart 5510 e','HP Photosmart 5510 e-All-in-One with Photo value pack<br>(Versão em Português) Print, scan, copy and browse the Web with one convenient device<br>Enjoy speeds of up to 11 ppm black, 7.5 colour<br>Large 80-sheet input tray, 15-sheet output tray<br>Share with and print from multiple PCs via the integrated wireless','http://www.shopping.hp.com/en_US/home-office/-/products/Printers/Printers',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL),(28,1,'Bundle Saver','Buy the Microsoft IntelliMouse Explorer and the Internet Keyboard together, to save  10% on the individual prices and to receive free shipping !','www.microsoft.com/hardware/',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(28,2,'Bundle Saver','Buy the Microsoft IntelliMouse Explorer and the Internet Keyboard together, to save  10% on the individual prices and to receive free shipping !','www.microsoft.com/hardware/',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(28,3,'Bundle Saver','Buy the Microsoft IntelliMouse Explorer and the Internet Keyboard together, to save  10% on the individual prices and to receive free shipping !','',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(28,4,'Bundle Saver','Buy the Microsoft IntelliMouse Explorer and the Internet Keyboard together, to save  10% on the individual prices and to receive free shipping !','',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,1,'Gift Certificate','The Perfect Gift ! <br><br>After checking out, your gift certificate will be available as a stylish pdf document that you can download from your account page. You may then send it as an eMail attachment or print it out and deliver a hard copy.<br>Each gift certificate contains a code that is redeemable online.','www.konakart.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,2,'Gift Certificate','The Perfect Gift ! <br><br>After checking out, your gift certificate will be available as a stylish pdf document that you can download from your account page. You may then send it as an eMail attachment or print it out and deliver a hard copy.<br>Each gift certificate contains a code that is redeemable online.','www.konakart.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,3,'Gift Certificate','The Perfect Gift ! <br><br>After checking out, your gift certificate will be available as a stylish pdf document that you can download from your account page. You may then send it as an eMail attachment or print it out and deliver a hard copy.<br>Each gift certificate contains a code that is redeemable online.','www.konakart.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,4,'Gift Certificate','The Perfect Gift ! <br><br>After checking out, your gift certificate will be available as a stylish pdf document that you can download from your account page. You may then send it as an eMail attachment or print it out and deliver a hard copy.<br>Each gift certificate contains a code that is redeemable online.','www.konakart.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,1,'Canon I-SENSYS LBP7680CX Printer','- Print Speed: Up to 20 ppm<br>- Max Resolution ( Colour ): 9600 dpi x 600 dpi<br>- Total Media Capacity: 300 sheets<br>- Interface: USB, Ethernet','http://www.canon.co.uk/For_Home/Product_Finder/Printers/Laser/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,2,'Canon I-SENSYS LBP7680CX Drucker','- Drucker Speed: Up to 20 ppm<br>- Max Resolution ( Colour ): 9600 dpi x 600 dpi<br>- Total Media Capacity: 300 sheets<br>- Interface: USB, Ethernet','http://www.canon.co.uk/For_Home/Product_Finder/Printers/Laser/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,3,'Canon I-SENSYS LBP7680CX Impresora','- Impresora Speed: Up to 20 ppm<br>- Max Resolution ( Colour ): 9600 dpi x 600 dpi<br>- Total Media Capacity: 300 sheets<br>- Interface: USB, Ethernet','http://www.canon.co.uk/For_Home/Product_Finder/Printers/Laser/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,4,'Canon I-SENSYS LBP7680CX Impressora','- Impressora Speed: Up to 20 ppm<br>- Max Resolution ( Colour ): 9600 dpi x 600 dpi<br>- Total Media Capacity: 300 sheets<br>- Interface: USB, Ethernet','http://www.canon.co.uk/For_Home/Product_Finder/Printers/Laser/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,1,'Logitech Illuminated Keyboard','- Ultra Thin: 9.3 mm profile and transparent frame<br>- Bright, laser-etched, backlighted keys<br>- Sleek, minimalist design<br>- One-touch multimedia controls','http://www.logitech.com/en-gb/keyboards',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,2,'(DE) Logitech Illuminated Keyboard','- Ultra Thin: 9.3 mm profile and transparent frame<br>- Bright, laser-etched, backlighted keys<br>- Sleek, minimalist design<br>- One-touch multimedia controls','http://www.logitech.com/en-gb/keyboards',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,3,'(ES) Logitech Illuminated Keyboard','- Ultra Thin: 9.3 mm profile and transparent frame<br>- Bright, laser-etched, backlighted keys<br>- Sleek, minimalist design<br>- One-touch multimedia controls','http://www.logitech.com/en-gb/keyboards',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,4,'(PT) Logitech Illuminated Keyboard','- Ultra Thin: 9.3 mm profile and transparent frame<br>- Bright, laser-etched, backlighted keys<br>- Sleek, minimalist design<br>- One-touch multimedia controls','http://www.logitech.com/en-gb/keyboards',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,1,'Windows 8','This product comes in 5 different box designs. The box design you receive may differ from that shown in the image above. The image to the right shows the different designs available.<br>If you currently have a personal computer running Windows 7, Windows XP or Windows Vista then you can upgrade to Windows 8 Pro (Professional). With Windows 8 Pro, you can connect and share your files. Windows 8 Pro also adds enhanced features if you need to connect to company networks, access remote files, encrypt sensitive data, and other more advanced tasks.<br>The new Windows 8 start screen is your personalized home for items you use the most and can be customized according to your user preferences. Windows 8 Live tiles provide real-time updates from your Facebook, Twitter, and e-mail accounts. Along with the new Start screen, the lock screen now includes e-mail, calendar, and clock widgets.','http://windows.microsoft.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,2,'Windows 8','This product comes in 5 different box designs. The box design you receive may differ from that shown in the image above. The image to the right shows the different designs available.<br>If you currently have a personal computer running Windows 7, Windows XP or Windows Vista then you can upgrade to Windows 8 Pro (Professional). With Windows 8 Pro, you can connect and share your files. Windows 8 Pro also adds enhanced features if you need to connect to company networks, access remote files, encrypt sensitive data, and other more advanced tasks.<br>The new Windows 8 start screen is your personalized home for items you use the most and can be customized according to your user preferences. Windows 8 Live tiles provide real-time updates from your Facebook, Twitter, and e-mail accounts. Along with the new Start screen, the lock screen now includes e-mail, calendar, and clock widgets.','http://windows.microsoft.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,3,'Windows 8','This product comes in 5 different box designs. The box design you receive may differ from that shown in the image above. The image to the right shows the different designs available.<br>If you currently have a personal computer running Windows 7, Windows XP or Windows Vista then you can upgrade to Windows 8 Pro (Professional). With Windows 8 Pro, you can connect and share your files. Windows 8 Pro also adds enhanced features if you need to connect to company networks, access remote files, encrypt sensitive data, and other more advanced tasks.<br>The new Windows 8 start screen is your personalized home for items you use the most and can be customized according to your user preferences. Windows 8 Live tiles provide real-time updates from your Facebook, Twitter, and e-mail accounts. Along with the new Start screen, the lock screen now includes e-mail, calendar, and clock widgets.','http://windows.microsoft.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,4,'Windows 8','This product comes in 5 different box designs. The box design you receive may differ from that shown in the image above. The image to the right shows the different designs available.<br>If you currently have a personal computer running Windows 7, Windows XP or Windows Vista then you can upgrade to Windows 8 Pro (Professional). With Windows 8 Pro, you can connect and share your files. Windows 8 Pro also adds enhanced features if you need to connect to company networks, access remote files, encrypt sensitive data, and other more advanced tasks.<br>The new Windows 8 start screen is your personalized home for items you use the most and can be customized according to your user preferences. Windows 8 Live tiles provide real-time updates from your Facebook, Twitter, and e-mail accounts. Along with the new Start screen, the lock screen now includes e-mail, calendar, and clock widgets.','http://windows.microsoft.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,1,'De\'Longhi BCO 410','The De\'Longhi BCO 410 is a 15 bar espresso/filter coffee machine that will ensure you get the perfect coffee experience, regardless of your tastes. Able to make 10 cups of filter coffee or individual espressos (either via ground coffee or with \"Easy Serving Espresso\" pods), the BCO 410 is a versatile and high-quality machine. The espresso portion of the machine comes complete with a crema filter holder, adjustable steam emission, removable water reservoir and cup holder. The filter coffee portion of the machine comes complete with a jug warmer to ensure the coffee remains hot after brewing, frontal loading to make the machine incredibly easy to refill (both water and coffee) and a water filtration system to make your coffee taste that much better.','http://www.delonghi.com/us_en/family/combi/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,2,'De\'Longhi BCO 410','The De\'Longhi BCO 410 is a 15 bar espresso/filter coffee machine that will ensure you get the perfect coffee experience, regardless of your tastes. Able to make 10 cups of filter coffee or individual espressos (either via ground coffee or with \"Easy Serving Espresso\" pods), the BCO 410 is a versatile and high-quality machine. The espresso portion of the machine comes complete with a crema filter holder, adjustable steam emission, removable water reservoir and cup holder. The filter coffee portion of the machine comes complete with a jug warmer to ensure the coffee remains hot after brewing, frontal loading to make the machine incredibly easy to refill (both water and coffee) and a water filtration system to make your coffee taste that much better.','http://www.delonghi.com/de_de/family/combi/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,3,'De\'Longhi BCO 410','The De\'Longhi BCO 410 is a 15 bar espresso/filter coffee machine that will ensure you get the perfect coffee experience, regardless of your tastes. Able to make 10 cups of filter coffee or individual espressos (either via ground coffee or with \"Easy Serving Espresso\" pods), the BCO 410 is a versatile and high-quality machine. The espresso portion of the machine comes complete with a crema filter holder, adjustable steam emission, removable water reservoir and cup holder. The filter coffee portion of the machine comes complete with a jug warmer to ensure the coffee remains hot after brewing, frontal loading to make the machine incredibly easy to refill (both water and coffee) and a water filtration system to make your coffee taste that much better.','http://www.delonghi.com/es_es/family/combi/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,4,'De\'Longhi BCO 410','The De\'Longhi BCO 410 is a 15 bar espresso/filter coffee machine that will ensure you get the perfect coffee experience, regardless of your tastes. Able to make 10 cups of filter coffee or individual espressos (either via ground coffee or with \"Easy Serving Espresso\" pods), the BCO 410 is a versatile and high-quality machine. The espresso portion of the machine comes complete with a crema filter holder, adjustable steam emission, removable water reservoir and cup holder. The filter coffee portion of the machine comes complete with a jug warmer to ensure the coffee remains hot after brewing, frontal loading to make the machine incredibly easy to refill (both water and coffee) and a water filtration system to make your coffee taste that much better.','http://www.delonghi.com/pt_pt/family/combi/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,1,'Kindle Fire HD','World\'s most advanced 7\" tablet<br>1280x800 HD display with polarizing filter and anti-glare technology for rich color and deep contrast from any viewing angle<br>Exclusive Dolby audio and dual-driver stereo speakers for immersive, virtual surround sound<br>World\'s first tablet with dual-band, dual-antenna Wi-Fi for 40% faster downloads and streaming (compared to iPad 3)<br>High performance 1.2 Ghz dual-core processor with Imagination PowerVR 3D graphics core for fast and fluid performance','http://www.amazon.com/Kindle-Fire-HD/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,2,'Kindle Fire HD','World\'s most advanced 7\" tablet<br>1280x800 HD display with polarizing filter and anti-glare technology for rich color and deep contrast from any viewing angle<br>Exclusive Dolby audio and dual-driver stereo speakers for immersive, virtual surround sound<br>World\'s first tablet with dual-band, dual-antenna Wi-Fi for 40% faster downloads and streaming (compared to iPad 3)<br>High performance 1.2 Ghz dual-core processor with Imagination PowerVR 3D graphics core for fast and fluid performance','http://www.amazon.com/Kindle-Fire-HD/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,3,'Kindle Fire HD','World\'s most advanced 7\" tablet<br>1280x800 HD display with polarizing filter and anti-glare technology for rich color and deep contrast from any viewing angle<br>Exclusive Dolby audio and dual-driver stereo speakers for immersive, virtual surround sound<br>World\'s first tablet with dual-band, dual-antenna Wi-Fi for 40% faster downloads and streaming (compared to iPad 3)<br>High performance 1.2 Ghz dual-core processor with Imagination PowerVR 3D graphics core for fast and fluid performance','http://www.amazon.com/Kindle-Fire-HD/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,4,'Kindle Fire HD','World\'s most advanced 7\" tablet<br>1280x800 HD display with polarizing filter and anti-glare technology for rich color and deep contrast from any viewing angle<br>Exclusive Dolby audio and dual-driver stereo speakers for immersive, virtual surround sound<br>World\'s first tablet with dual-band, dual-antenna Wi-Fi for 40% faster downloads and streaming (compared to iPad 3)<br>High performance 1.2 Ghz dual-core processor with Imagination PowerVR 3D graphics core for fast and fluid performance','http://www.amazon.com/Kindle-Fire-HD/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,1,'iPhone 5','Thin, sleek and very capable. It\'s hard to believe a phone so thin could offer so many features: a larger display, a faster chip, the latest wireless technology, an 8MP iSight camera and more. All in a beautiful aluminium body designed and made with an unprecedented level of precision. iPhone 5 measures a mere 7.6 millimetres thin and weighs just 112 grams.1 That\'s 18 per cent thinner and 20 per cent lighter than iPhone 4S. The only way to achieve a design like this is by relentlessly considering (and reconsidering) every single detail — including the details you don\'t see.','http://www.apple.com/uk/iphone/features/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,2,'iPhone 5','Dünn, elegant und leistungsfähig. Kaum zu glauben, dass ein so dünnes Telefon so viel zu bieten hat: ein größeres Display, einen schnelleren Chip, die neuesten drahtlosen Technologien, eine 8-Megapixel iSight Kamera und mehr. Alles in einem eleganten Aluminiumgehäuse, das mit einer unglaublichen Präzision designt und gefertigt wurde. Das iPhone 5 ist gerade einmal 7,6mm dünn und wiegt nur 112g. Damit ist es 18% dünner und 20% leichter als das iPhone 4S. Ein solches Design kann man nur erreichen, indem man immer und immer wieder jedes einzelne Detail überdenkt. Und zwar auch die Details, die man gar nicht sieht.','http://www.apple.com/de/iphone/features/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,3,'iPhone 5','Fino, estilizado y capaz de cualquier cosa. Parece increíble que un teléfono tan fino pueda tener tantas cosas: una pantalla más grande, un chip más rápido, la última tecnología inalámbrica, una cámara de 8 megapíxeles... Y todo dentro de una espectacular carcasa de aluminio elaborada con un nivel de precisión sin precedentes. El iPhone 5 solo tiene 0,76 cm de grosor y 112 gramos de peso.1 O sea, es un 18% más fino y un 20% más ligero que el iPhone 4S. Solo hay una manera de conseguir algo así: analizando una y otra vez hasta el último detalle, incluso los que no se ven.','http://www.apple.com/es/iphone/features/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,4,'iPhone 5','Fino, elegante e muito potente. É difícil de acreditar que um telefone tão leve tenha tantas funcionalidades: um ecrã maior, um chip mais rápido, a mais recente tecnologia sem fios, uma câmara iSight de 8 megapíxeis e muito mais. Tudo numa elegante estrutura em alumínio, concebida e construída com um nível de precisão sem precedentes. O iPhone 5 tem apenas 7,6 milímetros de espessura e só pesa 112 gramas.1 O que significa que é 18% mais fino e 20% mais leve do que o iPhone 4S. A única forma de se conseguir este feito, é estudando e analisando exaustivamente cada detalhe, mesmo aqueles que não se veem.','http://www.apple.com/pt/iphone/features/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,1,'Cadiz Clock','MSF Radio Controlled<br>Split Second Accuracy<br>Black Numbers With Black Hand<br>Excellent Design & Quality<br>Dimensions: 255mm / 10\" Colour: Silver','http://www.acctim.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,2,'Cadiz Clock','MSF Radio Controlled<br>Split Second Accuracy<br>Black Numbers With Black Hand<br>Excellent Design & Quality<br>Dimensions: 255mm / 10\" Colour: Silver','http://www.acctim.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,3,'Cadiz Clock','MSF Radio Controlled<br>Split Second Accuracy<br>Black Numbers With Black Hand<br>Excellent Design & Quality<br>Dimensions: 255mm / 10\" Colour: Silver','http://www.acctim.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,4,'Cadiz Clock','MSF Radio Controlled<br>Split Second Accuracy<br>Black Numbers With Black Hand<br>Excellent Design & Quality<br>Dimensions: 255mm / 10\" Colour: Silver','http://www.acctim.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,1,'Milan 93 Clock','Radio Controlled for split second accuracy, automatically sets to correct time<br>255mm Diameter<br>12/24 hour dial<br>Plastic case and lens<br>Dimensions H.W.L 255mm x 255mm x 37mm','http://www.acctim.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,2,'Milan 93 Clock','Radio Controlled for split second accuracy, automatically sets to correct time<br>255mm Diameter<br>12/24 hour dial<br>Plastic case and lens<br>Dimensions H.W.L 255mm x 255mm x 37mm','http://www.acctim.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,3,'Milan 93 Clock','Radio Controlled for split second accuracy, automatically sets to correct time<br>255mm Diameter<br>12/24 hour dial<br>Plastic case and lens<br>Dimensions H.W.L 255mm x 255mm x 37mm','http://www.acctim.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,4,'Milan 93 Clock','Radio Controlled for split second accuracy, automatically sets to correct time<br>255mm Diameter<br>12/24 hour dial<br>Plastic case and lens<br>Dimensions H.W.L 255mm x 255mm x 37mm','http://www.acctim.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,1,'Acctim Metal Clock','Acctim wall clock<br>Radio controlled for split second accuracy<br>12/24 hour dial<br>Metal case<br>Diameter 300mm','http://www.acctim.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,2,'Acctim Metal Clock','Acctim wall clock<br>Radio controlled for split second accuracy<br>12/24 hour dial<br>Metal case<br>Diameter 300mm','http://www.acctim.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,3,'Acctim Metal Clock','Acctim wall clock<br>Radio controlled for split second accuracy<br>12/24 hour dial<br>Metal case<br>Diameter 300mm','http://www.acctim.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,4,'Acctim Metal Clock','Acctim wall clock<br>Radio controlled for split second accuracy<br>12/24 hour dial<br>Metal case<br>Diameter 300mm','http://www.acctim.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,1,'Rotak 40 Ergoflex','Ergoflex System. Ergonomically shaped and adjustable handles for a better body posture and reduced muscle strain when mowing<br>1700W Powerdrive motor ensures a reliable cut, even in the most difficult conditions<br>Light weight for easy handling<br>Folding handles for compact storage<br>Innovative grass combs. Cut close to the edge of walls, flower beds and lawns','http://www.bosch.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,2,'Rotak 40 Ergoflex','Ergoflex System. Ergonomically shaped and adjustable handles for a better body posture and reduced muscle strain when mowing<br>1700W Powerdrive motor ensures a reliable cut, even in the most difficult conditions<br>Light weight for easy handling<br>Folding handles for compact storage<br>Innovative grass combs. Cut close to the edge of walls, flower beds and lawns','http://www.bosch.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,3,'Rotak 40 Ergoflex','Ergoflex System. Ergonomically shaped and adjustable handles for a better body posture and reduced muscle strain when mowing<br>1700W Powerdrive motor ensures a reliable cut, even in the most difficult conditions<br>Light weight for easy handling<br>Folding handles for compact storage<br>Innovative grass combs. Cut close to the edge of walls, flower beds and lawns','http://www.bosch.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,4,'Rotak 40 Ergoflex','Ergoflex System. Ergonomically shaped and adjustable handles for a better body posture and reduced muscle strain when mowing<br>1700W Powerdrive motor ensures a reliable cut, even in the most difficult conditions<br>Light weight for easy handling<br>Folding handles for compact storage<br>Innovative grass combs. Cut close to the edge of walls, flower beds and lawns','http://www.bosch.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,1,'Rotak 32','Ergonomic handle design for easy manoeuvrability<br>Lightweight and compact for convenient carrying and problem-free manoeuvrability<br>Powerdrive motor ensures a reliable cut, even under difficult circumstances<br>Innovative grass combs. Cut close to the edge of walls, flower beds and lawns<br>31-litre grass box for greater capacity and reduced need for emptying','http://www.bosch.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,2,'Rotak 32','Ergonomic handle design for easy manoeuvrability<br>Lightweight and compact for convenient carrying and problem-free manoeuvrability<br>Powerdrive motor ensures a reliable cut, even under difficult circumstances<br>Innovative grass combs. Cut close to the edge of walls, flower beds and lawns<br>31-litre grass box for greater capacity and reduced need for emptying','http://www.bosch.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,3,'Rotak 32','Ergonomic handle design for easy manoeuvrability<br>Lightweight and compact for convenient carrying and problem-free manoeuvrability<br>Powerdrive motor ensures a reliable cut, even under difficult circumstances<br>Innovative grass combs. Cut close to the edge of walls, flower beds and lawns<br>31-litre grass box for greater capacity and reduced need for emptying','http://www.bosch.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,4,'Rotak 32','Ergonomic handle design for easy manoeuvrability<br>Lightweight and compact for convenient carrying and problem-free manoeuvrability<br>Powerdrive motor ensures a reliable cut, even under difficult circumstances<br>Innovative grass combs. Cut close to the edge of walls, flower beds and lawns<br>31-litre grass box for greater capacity and reduced need for emptying','http://www.bosch.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,1,'Flymo Chevron 34VC','The Chevron 34VC from Flymo is a lightweight, easy to use electric wheeled mower with a rear roller that will give your lawn that classic striped finish.<br>1400 watt motor<br>5 heights of cut (20 - 60mm)<br>40 litre collection box<br>12 metre mains cable<br>34cm metal cutting blade','http://www.flymo.com/int/products/lawn-mowers/chevron-34vc/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,2,'Flymo Chevron 34VC','The Chevron 34VC from Flymo is a lightweight, easy to use electric wheeled mower with a rear roller that will give your lawn that classic striped finish.<br>1400 watt motor<br>5 heights of cut (20 - 60mm)<br>40 litre collection box<br>12 metre mains cable<br>34cm metal cutting blade','http://www.flymo.com/int/products/lawn-mowers/chevron-34vc/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,3,'Flymo Chevron 34VC','The Chevron 34VC from Flymo is a lightweight, easy to use electric wheeled mower with a rear roller that will give your lawn that classic striped finish.<br>1400 watt motor<br>5 heights of cut (20 - 60mm)<br>40 litre collection box<br>12 metre mains cable<br>34cm metal cutting blade','http://www.flymo.com/int/products/lawn-mowers/chevron-34vc/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,4,'Flymo Chevron 34VC','The Chevron 34VC from Flymo is a lightweight, easy to use electric wheeled mower with a rear roller that will give your lawn that classic striped finish.<br>1400 watt motor<br>5 heights of cut (20 - 60mm)<br>40 litre collection box<br>12 metre mains cable<br>34cm metal cutting blade','http://www.flymo.com/int/products/lawn-mowers/chevron-34vc/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,1,'Bosch SHM 38G','Cylinder cut system with 5 curved blades made from hardened steel<br>Variable height-of-cut adjustment and a cutting width of 38cm<br>Simple bottom blade adjustment with \"click\" locking system<br>Maintenance-free cutting cylinder on ball bearings<br>Easy-to-use bar for better ergonomics<br>Smooth-running wheels with special gear reduction for easy pushing','http://www.bosch.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,2,'Bosch SHM 38G','Cylinder cut system with 5 curved blades made from hardened steel<br>Variable height-of-cut adjustment and a cutting width of 38cm<br>Simple bottom blade adjustment with \"click\" locking system<br>Maintenance-free cutting cylinder on ball bearings<br>Easy-to-use bar for better ergonomics<br>Smooth-running wheels with special gear reduction for easy pushing','http://www.bosch.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,3,'Bosch SHM 38G','Cylinder cut system with 5 curved blades made from hardened steel<br>Variable height-of-cut adjustment and a cutting width of 38cm<br>Simple bottom blade adjustment with \"click\" locking system<br>Maintenance-free cutting cylinder on ball bearings<br>Easy-to-use bar for better ergonomics<br>Smooth-running wheels with special gear reduction for easy pushing','http://www.bosch.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,4,'Bosch SHM 38G','Cylinder cut system with 5 curved blades made from hardened steel<br>Variable height-of-cut adjustment and a cutting width of 38cm<br>Simple bottom blade adjustment with \"click\" locking system<br>Maintenance-free cutting cylinder on ball bearings<br>Easy-to-use bar for better ergonomics<br>Smooth-running wheels with special gear reduction for easy pushing','http://www.bosch.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,1,'Brita Marella XL Water Filter','Handy filling orifice in lid for easy filling<br>Electronic cartridge change display: BRITA MEMO<br>Dishwasher-safe up to 50°C (exception: lid)<br>XL version for larger demand, total volume: 3.5 L, filtered water: 2.0 L<br>Including 1x Maxtra cartridge','http://www.brita.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,2,'Brita Marella XL Water Filter','Handy filling orifice in lid for easy filling<br>Electronic cartridge change display: BRITA MEMO<br>Dishwasher-safe up to 50°C (exception: lid)<br>XL version for larger demand, total volume: 3.5 L, filtered water: 2.0 L<br>Including 1x Maxtra cartridge','http://www.brita.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,3,'Brita Marella XL Water Filter','Handy filling orifice in lid for easy filling<br>Electronic cartridge change display: BRITA MEMO<br>Dishwasher-safe up to 50°C (exception: lid)<br>XL version for larger demand, total volume: 3.5 L, filtered water: 2.0 L<br>Including 1x Maxtra cartridge','http://www.brita.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,4,'Brita Marella XL Water Filter','Handy filling orifice in lid for easy filling<br>Electronic cartridge change display: BRITA MEMO<br>Dishwasher-safe up to 50°C (exception: lid)<br>XL version for larger demand, total volume: 3.5 L, filtered water: 2.0 L<br>Including 1x Maxtra cartridge','http://www.brita.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,1,'Brabantia Touch Bin','Brabantia Soft-Touch closure - easy and light operation<br>Unique hinge design - lid opens silently<br>Matching Brabantia bin liners available with tie-tape (size L) - perfect fit and no ugly over wrap<br>Dimensions: height 75.5cm, diameter 37cm, capacity 45 litres<br>10 year guarantee','http://www.brabantia.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,2,'Brabantia Touch Bin','Brabantia Soft-Touch closure - easy and light operation<br>Unique hinge design - lid opens silently<br>Matching Brabantia bin liners available with tie-tape (size L) - perfect fit and no ugly over wrap<br>Dimensions: height 75.5cm, diameter 37cm, capacity 45 litres<br>10 year guarantee','http://www.brabantia.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,3,'Brabantia Touch Bin','Brabantia Soft-Touch closure - easy and light operation<br>Unique hinge design - lid opens silently<br>Matching Brabantia bin liners available with tie-tape (size L) - perfect fit and no ugly over wrap<br>Dimensions: height 75.5cm, diameter 37cm, capacity 45 litres<br>10 year guarantee','http://www.brabantia.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,4,'Brabantia Touch Bin','Brabantia Soft-Touch closure - easy and light operation<br>Unique hinge design - lid opens silently<br>Matching Brabantia bin liners available with tie-tape (size L) - perfect fit and no ugly over wrap<br>Dimensions: height 75.5cm, diameter 37cm, capacity 45 litres<br>10 year guarantee','http://www.brabantia.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,1,'Galaxy S III','Designed for humans<br>Samsung GALAXY S III just gets us. Little things, like staying awake when you look at it and keeping track of loved ones. Designed for humans, it goes beyond smart and fulfills your needs by thinking as you think, acting as you act','http://www.samsung.com/uk/consumer/mobile-devices/smartphones/android/GT-I9300MBDBTU',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,2,'Galaxy S III','Designed for humans<br>Samsung GALAXY S III just gets us. Little things, like staying awake when you look at it and keeping track of loved ones. Designed for humans, it goes beyond smart and fulfills your needs by thinking as you think, acting as you act','http://www.samsung.com/uk/consumer/mobile-devices/smartphones/android/GT-I9300MBDBTU',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,3,'Galaxy S III','Designed for humans<br>Samsung GALAXY S III just gets us. Little things, like staying awake when you look at it and keeping track of loved ones. Designed for humans, it goes beyond smart and fulfills your needs by thinking as you think, acting as you act','http://www.samsung.com/uk/consumer/mobile-devices/smartphones/android/GT-I9300MBDBTU',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,4,'Galaxy S III','Designed for humans<br>Samsung GALAXY S III just gets us. Little things, like staying awake when you look at it and keeping track of loved ones. Designed for humans, it goes beyond smart and fulfills your needs by thinking as you think, acting as you act','http://www.samsung.com/uk/consumer/mobile-devices/smartphones/android/GT-I9300MBDBTU',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,1,'Galaxy Ace Plus','A stylishly designed smartphone contained in a modern and minimalist casing with HVGA display<br>Complete with Samsung\'s Social Hub, Music Hub and ChatON services<br>2Gb shared storage capacity for multimedia content and up to 1 Gb of direct storage for applications - more than any smartphone in its category','http://www.samsung.com/uk/consumer/mobile-devices/smartphones/android/GT-S7500ABABTU',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,2,'Galaxy Ace Plus','A stylishly designed smartphone contained in a modern and minimalist casing with HVGA display<br>Complete with Samsung\'s Social Hub, Music Hub and ChatON services<br>2Gb shared storage capacity for multimedia content and up to 1 Gb of direct storage for applications - more than any smartphone in its category','http://www.samsung.com/uk/consumer/mobile-devices/smartphones/android/GT-S7500ABABTU',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,3,'Galaxy Ace Plus','A stylishly designed smartphone contained in a modern and minimalist casing with HVGA display<br>Complete with Samsung\'s Social Hub, Music Hub and ChatON services<br>2Gb shared storage capacity for multimedia content and up to 1 Gb of direct storage for applications - more than any smartphone in its category','http://www.samsung.com/uk/consumer/mobile-devices/smartphones/android/GT-S7500ABABTU',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,4,'Galaxy Ace Plus','A stylishly designed smartphone contained in a modern and minimalist casing with HVGA display<br>Complete with Samsung\'s Social Hub, Music Hub and ChatON services<br>2Gb shared storage capacity for multimedia content and up to 1 Gb of direct storage for applications - more than any smartphone in its category','http://www.samsung.com/uk/consumer/mobile-devices/smartphones/android/GT-S7500ABABTU',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,1,'iPhone 4S','Dual-core A5 chip. All-new 8MP camera and optics. iOS 5 and iCloud. Retina 3.5-inch (diagonal) widescreen Multi-Touch display. Fingerprint-resistant oleophobic coating on front and back. It was the most amazing iPhone before the iPhone 5, but still great.','http://www.apple.com/iphone/iphone-4s/specs.html',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,2,'iPhone 4S','Dual-Core A5 Chip. Alle neuen 8MP Kamera und Optik. iOS 5 und iCloud. Retina 3,5-Zoll (Diagonale) im Breitbildformat Multi-Touch-Display. Fettabweisende Beschichtung auf Vorder-und Rückseite. Es war das schönste iPhone vor dem iPhone 5, aber immer noch groß.','http://www.apple.com/de/iphone/iphone-4s/specs.html',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,3,'iPhone 4S','Dual-core A5 chip. Todo nueva cámara de 8 megapíxeles y la óptica. iOS 5 y iCloud. Retina de 3,5 pulgadas (en diagonal) widescreen Multi-Touch. Resistente a huellas dactilares Cubierta oleófuga en la parte delantera y trasera. Fue el iPhone más asombroso antes de que el iPhone 5, pero sigue estando fenomenal.','http://www.apple.com/es/iphone/iphone-4s/specs.html',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,4,'iPhone 4S','Dual-core chip A5. Todos nova câmera de 8MP e óptica. iOS 5 e iCloud. Retina de 3,5 polegadas (diagonal) com tecnologia Multi-Touch widescreen. Fingerprint revestimento resistente oleophobic na frente e atrás. Foi o iPhone mais incrível antes de o iPhone 5, mas ainda grande.','http://www.apple.com/pt/iphone/iphone-4s/specs.html',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,1,'Sony XPERIA S','See movies and photos in crisp, clear HD on the large Reality Display with Mobile BRAVIA Engine. The full HD video recording and fast 12MP camera lets you shoot everything in sharp detail, even in low light, and view it on your TV via an HDMI cable. Xperia S is PlayStation Certified, so you can play the perfect game. And you can enjoy millions of songs from Music Unlimited. Or download hit movies from Video Unlimited.','http://www.sonymobile.com/gb/products/phones/xperia-s',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,2,'Sony XPERIA S','Sehen Sie Filme und Fotos in gestochen scharfe, klare HD auf dem großen Reality Display mit Mobile BRAVIA Engine. Die Full-HD-Video-Aufzeichnung und schnelle 12MP Kamera können Sie schießen alles in scharfe Details, auch bei schwachem Licht, und zeigen Sie sie auf dem Fernseher über ein HDMI-Kabel. Xperia S PlayStation Certified, so können Sie das perfekte Spiel zu spielen. Und Sie können Millionen von Songs aus Music Unlimited genießen. Oder laden Sie hit Filme von Video Unlimited.','http://www.sonymobile.com/gb/products/phones/xperia-s',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,3,'Sony XPERIA S','Ver películas y fotografías en claro y nítido de alta definición en la pantalla grande Reality con Mobile BRAVIA Engine. La plena grabación de vídeo HD y cámara de 12MP rápido le permite tomar todo con todo detalle, incluso en condiciones de poca luz, y verla en la TV mediante un cable HDMI. Xperia S es PlayStation Certified, para que pueda jugar el juego perfecto. Y usted puede disfrutar de millones de canciones de Music Unlimited. O descargar películas de éxito de Video Unlimited.','http://www.sonymobile.com/gb/products/phones/xperia-s',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,4,'Sony XPERIA S','Ver filmes e fotos em nítido, HD claro no visor Reality grande com o Mobile BRAVIA Engine. A gravação de vídeo Full HD e câmera de 12MP rápido permite gravar tudo em detalhes nítidos, mesmo em condições de pouca luz, e vê-lo na sua TV através de um cabo HDMI. Xperia S é PlayStation Certified, de modo que você pode jogar o jogo perfeito. E você pode desfrutar de milhões de músicas do Music Unlimited. Ou fazer o download de filmes de sucesso Video Unlimited.','http://www.sonymobile.com/gb/products/phones/xperia-s',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,1,'Canon PowerShot G15','The fast, bright expert compact<br><br>Equipped for serious photography, the compact PowerShot G15 boasts a bright f/1.8-2.8, 5x zoom lens, fast AF and a high-sensitivity Canon CMOS sensor for capturing superior photos and Full HD movies.','http://www.canon.co.uk/For_Home/Product_Finder/Cameras/Digital_Camera/PowerShot/PowerShot_G15/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,2,'Canon PowerShot G15','The fast, bright expert compact<br><br>Equipped for serious photography, the compact PowerShot G15 boasts a bright f/1.8-2.8, 5x zoom lens, fast AF and a high-sensitivity Canon CMOS sensor for capturing superior photos and Full HD movies.','http://www.canon.co.uk/For_Home/Product_Finder/Cameras/Digital_Camera/PowerShot/PowerShot_G15/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,3,'Canon PowerShot G15','The fast, bright expert compact<br><br>Equipped for serious photography, the compact PowerShot G15 boasts a bright f/1.8-2.8, 5x zoom lens, fast AF and a high-sensitivity Canon CMOS sensor for capturing superior photos and Full HD movies.','http://www.canon.co.uk/For_Home/Product_Finder/Cameras/Digital_Camera/PowerShot/PowerShot_G15/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,4,'Canon PowerShot G15','The fast, bright expert compact<br><br>Equipped for serious photography, the compact PowerShot G15 boasts a bright f/1.8-2.8, 5x zoom lens, fast AF and a high-sensitivity Canon CMOS sensor for capturing superior photos and Full HD movies.','http://www.canon.co.uk/For_Home/Product_Finder/Cameras/Digital_Camera/PowerShot/PowerShot_G15/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,1,'Samsung MV800 Digital Camera','The Flip-out Display - Life, from all angles<br><br>Easily capture your unique perspective. The MV800’s 3.0\" Display flips up and down so you can frame shots at any angle without having to twist your body or bend your back. Snap a high-angle shot over a crowd to effortlessly capture a street performance, or get waist-level candids of your dog. Take low angle shots without getting on the ground, or spin the display all the way around for dazzling self-portraits.The LCD lets you stand the camera so everyone can enjoy from a comfortable position. Life’s more fun when you can cover all the angles.','http://www.samsung.com/uk/consumer/camera-camcorder/cameras/compact/EC-MV800ZBPBGB',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,2,'Samsung MV800 Digital Camera','The Flip-out Display - Life, from all angles<br><br>Easily capture your unique perspective. The MV800’s 3.0\" Display flips up and down so you can frame shots at any angle without having to twist your body or bend your back. Snap a high-angle shot over a crowd to effortlessly capture a street performance, or get waist-level candids of your dog. Take low angle shots without getting on the ground, or spin the display all the way around for dazzling self-portraits.The LCD lets you stand the camera so everyone can enjoy from a comfortable position. Life’s more fun when you can cover all the angles.','http://www.samsung.com/uk/consumer/camera-camcorder/cameras/compact/EC-MV800ZBPBGB',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,3,'Samsung MV800 Digital Camera','The Flip-out Display - Life, from all angles<br><br>Easily capture your unique perspective. The MV800’s 3.0\" Display flips up and down so you can frame shots at any angle without having to twist your body or bend your back. Snap a high-angle shot over a crowd to effortlessly capture a street performance, or get waist-level candids of your dog. Take low angle shots without getting on the ground, or spin the display all the way around for dazzling self-portraits.The LCD lets you stand the camera so everyone can enjoy from a comfortable position. Life’s more fun when you can cover all the angles.','http://www.samsung.com/uk/consumer/camera-camcorder/cameras/compact/EC-MV800ZBPBGB',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,4,'Samsung MV800 Digital Camera','The Flip-out Display - Life, from all angles<br><br>Easily capture your unique perspective. The MV800’s 3.0\" Display flips up and down so you can frame shots at any angle without having to twist your body or bend your back. Snap a high-angle shot over a crowd to effortlessly capture a street performance, or get waist-level candids of your dog. Take low angle shots without getting on the ground, or spin the display all the way around for dazzling self-portraits.The LCD lets you stand the camera so everyone can enjoy from a comfortable position. Life’s more fun when you can cover all the angles.','http://www.samsung.com/uk/consumer/camera-camcorder/cameras/compact/EC-MV800ZBPBGB',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,1,'Canon PowerShot SX40','Go far, get closer with 35x zoom<br><br>Get closer with the PowerShot SX40 HS. An ultra-wide 35x optical zoom, great low light results of the HS System, Full HD and high-speed shooting make this the travel powerhouse for those who want it all.<br>35x ultra wide-angle zoom with USM<br>Image Stabilizer (4.5-stop). Intelligent IS<br>HS System (12.1 MP) with DIGIC 5<br>Full HD, HDMI','http://www.canon.co.uk/For_Home/Product_Finder/Cameras/Digital_Camera/PowerShot/PowerShot_SX40_HS/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,2,'Canon PowerShot SX40','Go far, get closer with 35x zoom<br><br>Get closer with the PowerShot SX40 HS. An ultra-wide 35x optical zoom, great low light results of the HS System, Full HD and high-speed shooting make this the travel powerhouse for those who want it all.<br>35x ultra wide-angle zoom with USM<br>Image Stabilizer (4.5-stop). Intelligent IS<br>HS System (12.1 MP) with DIGIC 5<br>Full HD, HDMI','http://www.canon.co.uk/For_Home/Product_Finder/Cameras/Digital_Camera/PowerShot/PowerShot_SX40_HS/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,3,'Canon PowerShot SX40','Go far, get closer with 35x zoom<br><br>Get closer with the PowerShot SX40 HS. An ultra-wide 35x optical zoom, great low light results of the HS System, Full HD and high-speed shooting make this the travel powerhouse for those who want it all.<br>35x ultra wide-angle zoom with USM<br>Image Stabilizer (4.5-stop). Intelligent IS<br>HS System (12.1 MP) with DIGIC 5<br>Full HD, HDMI','http://www.canon.co.uk/For_Home/Product_Finder/Cameras/Digital_Camera/PowerShot/PowerShot_SX40_HS/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,4,'Canon PowerShot SX40','Go far, get closer with 35x zoom<br><br>Get closer with the PowerShot SX40 HS. An ultra-wide 35x optical zoom, great low light results of the HS System, Full HD and high-speed shooting make this the travel powerhouse for those who want it all.<br>35x ultra wide-angle zoom with USM<br>Image Stabilizer (4.5-stop). Intelligent IS<br>HS System (12.1 MP) with DIGIC 5<br>Full HD, HDMI','http://www.canon.co.uk/For_Home/Product_Finder/Cameras/Digital_Camera/PowerShot/PowerShot_SX40_HS/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,1,'Nikon COOLPIX L810','The Nikon COOLPIX L810 - Stabilised 26x zoom, compact and user-friendly<br><br>This compact camera lets curious photographers get up close from anywhere with the incredible Nikon COOLPIX NIKKOR 26x optical zoom lens (22.5mm – 585mm). Taking the perfect picture is made simple with Easy Auto mode which takes care of all the camera settings. For super-sharp shots it has Nikon\'s clever anti-blur technology and a side zoom lever to help keep a steady hand.','http://www.nikonusa.com/en/Nikon-Products/Product/Compact-Digital-Cameras/26294/COOLPIX-L810.html',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,2,'Nikon COOLPIX L810','The Nikon COOLPIX L810 - Stabilised 26x zoom, compact and user-friendly<br><br>This compact camera lets curious photographers get up close from anywhere with the incredible Nikon COOLPIX NIKKOR 26x optical zoom lens (22.5mm – 585mm). Taking the perfect picture is made simple with Easy Auto mode which takes care of all the camera settings. For super-sharp shots it has Nikon\'s clever anti-blur technology and a side zoom lever to help keep a steady hand.','http://www.nikonusa.com/en/Nikon-Products/Product/Compact-Digital-Cameras/26294/COOLPIX-L810.html',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,3,'Nikon COOLPIX L810','The Nikon COOLPIX L810 - Stabilised 26x zoom, compact and user-friendly<br><br>This compact camera lets curious photographers get up close from anywhere with the incredible Nikon COOLPIX NIKKOR 26x optical zoom lens (22.5mm – 585mm). Taking the perfect picture is made simple with Easy Auto mode which takes care of all the camera settings. For super-sharp shots it has Nikon\'s clever anti-blur technology and a side zoom lever to help keep a steady hand.','http://www.nikonusa.com/en/Nikon-Products/Product/Compact-Digital-Cameras/26294/COOLPIX-L810.html',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,4,'Nikon COOLPIX L810','The Nikon COOLPIX L810 - Stabilised 26x zoom, compact and user-friendly<br><br>This compact camera lets curious photographers get up close from anywhere with the incredible Nikon COOLPIX NIKKOR 26x optical zoom lens (22.5mm – 585mm). Taking the perfect picture is made simple with Easy Auto mode which takes care of all the camera settings. For super-sharp shots it has Nikon\'s clever anti-blur technology and a side zoom lever to help keep a steady hand.','http://www.nikonusa.com/en/Nikon-Products/Product/Compact-Digital-Cameras/26294/COOLPIX-L810.html',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,1,'Nikon D5100 SLR','The Nikon D5100 and its included AF-S 18-55mm VR lens offer a host of new photographic and video tools including a 16.2 MP DX-format CMOS sensor, 4 fps continuous shooting and breathtaking Full 1080p HD Movies with full time autofocus.','http://www.nikonusa.com/en/Nikon-Products/Product/Digital-SLR-Cameras/25478/D5100.html',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,2,'Nikon D5100 SLR','The Nikon D5100 and its included AF-S 18-55mm VR lens offer a host of new photographic and video tools including a 16.2 MP DX-format CMOS sensor, 4 fps continuous shooting and breathtaking Full 1080p HD Movies with full time autofocus.','http://www.nikonusa.com/en/Nikon-Products/Product/Digital-SLR-Cameras/25478/D5100.html',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,3,'Nikon D5100 SLR','The Nikon D5100 and its included AF-S 18-55mm VR lens offer a host of new photographic and video tools including a 16.2 MP DX-format CMOS sensor, 4 fps continuous shooting and breathtaking Full 1080p HD Movies with full time autofocus.','http://www.nikonusa.com/en/Nikon-Products/Product/Digital-SLR-Cameras/25478/D5100.html',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,4,'Nikon D5100 SLR','The Nikon D5100 and its included AF-S 18-55mm VR lens offer a host of new photographic and video tools including a 16.2 MP DX-format CMOS sensor, 4 fps continuous shooting and breathtaking Full 1080p HD Movies with full time autofocus.','http://www.nikonusa.com/en/Nikon-Products/Product/Digital-SLR-Cameras/25478/D5100.html',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,1,'Nikon 1 J2 Compact','Create your most exciting photos and HD videos yet.<br><br>Capture all the wonderful moments of your life in the brilliance they deserve. The Nikon 1 J2 will inspire your creativity to new heights with fun, artistic in-camera effects, an ultra-high-resolution display for framing and sharing your shots, enhanced controls and the remarkable speed, precision, low-light performance and stylish, compact design that has made the Nikon 1 system so popular. Discover a new passion for creative photography.','http://www.nikonusa.com/en/Nikon-Products/Product/Nikon1/V27573.27573/Nikon-1-J2.html',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,2,'Nikon 1 J2 Compact','Create your most exciting photos and HD videos yet.<br><br>Capture all the wonderful moments of your life in the brilliance they deserve. The Nikon 1 J2 will inspire your creativity to new heights with fun, artistic in-camera effects, an ultra-high-resolution display for framing and sharing your shots, enhanced controls and the remarkable speed, precision, low-light performance and stylish, compact design that has made the Nikon 1 system so popular. Discover a new passion for creative photography.','http://www.nikonusa.com/en/Nikon-Products/Product/Nikon1/V27573.27573/Nikon-1-J2.html',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,3,'Nikon 1 J2 Compact','Create your most exciting photos and HD videos yet.<br><br>Capture all the wonderful moments of your life in the brilliance they deserve. The Nikon 1 J2 will inspire your creativity to new heights with fun, artistic in-camera effects, an ultra-high-resolution display for framing and sharing your shots, enhanced controls and the remarkable speed, precision, low-light performance and stylish, compact design that has made the Nikon 1 system so popular. Discover a new passion for creative photography.','http://www.nikonusa.com/en/Nikon-Products/Product/Nikon1/V27573.27573/Nikon-1-J2.html',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,4,'Nikon 1 J2 Compact','Create your most exciting photos and HD videos yet.<br><br>Capture all the wonderful moments of your life in the brilliance they deserve. The Nikon 1 J2 will inspire your creativity to new heights with fun, artistic in-camera effects, an ultra-high-resolution display for framing and sharing your shots, enhanced controls and the remarkable speed, precision, low-light performance and stylish, compact design that has made the Nikon 1 system so popular. Discover a new passion for creative photography.','http://www.nikonusa.com/en/Nikon-Products/Product/Nikon1/V27573.27573/Nikon-1-J2.html',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,1,'Ministry Clock','Inspiration for this design came from the vintage enamel signage that was once found in stations and shops, but are now only found in flea markets.','http://www.newgateclocks.com/store/Wall-Clocks/min203ar.asp?sn=1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,2,'Ministry Clock','Inspiration for this design came from the vintage enamel signage that was once found in stations and shops, but are now only found in flea markets.','http://www.newgateclocks.com/store/Wall-Clocks/min203ar.asp?sn=1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,3,'Ministry Clock','Inspiration for this design came from the vintage enamel signage that was once found in stations and shops, but are now only found in flea markets.','http://www.newgateclocks.com/store/Wall-Clocks/min203ar.asp?sn=1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,4,'Ministry Clock','Inspiration for this design came from the vintage enamel signage that was once found in stations and shops, but are now only found in flea markets.','http://www.newgateclocks.com/store/Wall-Clocks/min203ar.asp?sn=1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,1,'60s Pluto Starburst Clock','You can have sun shine in your room 24/7 with our eye-catching Pluto Starburst Clock. It has been a few decades since the originals first made an appearance but our nostalgic Pluto is still going strong and as popular as ever!','http://www.newgateclocks.com/store/Wall-Clocks/plutog.asp?sn=2',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,2,'60s Pluto Starburst Clock','You can have sun shine in your room 24/7 with our eye-catching Pluto Starburst Clock. It has been a few decades since the originals first made an appearance but our nostalgic Pluto is still going strong and as popular as ever!','http://www.newgateclocks.com/store/Wall-Clocks/plutog.asp?sn=2',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,3,'60s Pluto Starburst Clock','You can have sun shine in your room 24/7 with our eye-catching Pluto Starburst Clock. It has been a few decades since the originals first made an appearance but our nostalgic Pluto is still going strong and as popular as ever!','http://www.newgateclocks.com/store/Wall-Clocks/plutog.asp?sn=2',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,4,'60s Pluto Starburst Clock','You can have sun shine in your room 24/7 with our eye-catching Pluto Starburst Clock. It has been a few decades since the originals first made an appearance but our nostalgic Pluto is still going strong and as popular as ever!','http://www.newgateclocks.com/store/Wall-Clocks/plutog.asp?sn=2',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,1,'Vision Clock','You can\'t miss this clock when its in pride of place on the wall. Its striking bold acrylic numbers, chrome spokes and bold metal hands, make The Vision a vintage, retro, iconic and contemporary timepiece all rolled into one!','http://www.newgateclocks.com/store/Wall-Clocks/visionk.asp?sn=1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,2,'Vision Clock','You can\'t miss this clock when its in pride of place on the wall. Its striking bold acrylic numbers, chrome spokes and bold metal hands, make The Vision a vintage, retro, iconic and contemporary timepiece all rolled into one!','http://www.newgateclocks.com/store/Wall-Clocks/visionk.asp?sn=1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,3,'Vision Clock','You can\'t miss this clock when its in pride of place on the wall. Its striking bold acrylic numbers, chrome spokes and bold metal hands, make The Vision a vintage, retro, iconic and contemporary timepiece all rolled into one!','http://www.newgateclocks.com/store/Wall-Clocks/visionk.asp?sn=1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,4,'Vision Clock','You can\'t miss this clock when its in pride of place on the wall. Its striking bold acrylic numbers, chrome spokes and bold metal hands, make The Vision a vintage, retro, iconic and contemporary timepiece all rolled into one!','http://www.newgateclocks.com/store/Wall-Clocks/visionk.asp?sn=1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,1,'Office Home and Student 2010','With Microsoft Office Home and Student 2010, you and your kids can create great schoolwork and home projects from multi-page bibliographies to multimedia presentations. Capture ideas and set them apart with video-editing features and dynamic text effects. Then easily collaborate with classmates without being face-to-face thanks to new Web Apps tools. The results go well beyond expectations with a little inspiration, a lot of creativity and Office Home and Student 2010.','http://windows.microsoft.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,2,'Office Home and Student 2010','With Microsoft Office Home and Student 2010, you and your kids can create great schoolwork and home projects from multi-page bibliographies to multimedia presentations. Capture ideas and set them apart with video-editing features and dynamic text effects. Then easily collaborate with classmates without being face-to-face thanks to new Web Apps tools. The results go well beyond expectations with a little inspiration, a lot of creativity and Office Home and Student 2010.','http://windows.microsoft.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,3,'Office Home and Student 2010','With Microsoft Office Home and Student 2010, you and your kids can create great schoolwork and home projects from multi-page bibliographies to multimedia presentations. Capture ideas and set them apart with video-editing features and dynamic text effects. Then easily collaborate with classmates without being face-to-face thanks to new Web Apps tools. The results go well beyond expectations with a little inspiration, a lot of creativity and Office Home and Student 2010.','http://windows.microsoft.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,4,'Office Home and Student 2010','With Microsoft Office Home and Student 2010, you and your kids can create great schoolwork and home projects from multi-page bibliographies to multimedia presentations. Capture ideas and set them apart with video-editing features and dynamic text effects. Then easily collaborate with classmates without being face-to-face thanks to new Web Apps tools. The results go well beyond expectations with a little inspiration, a lot of creativity and Office Home and Student 2010.','http://windows.microsoft.com/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,1,'MUM48R1 Food Processor','The Bosch MUM48R1 is an irreplaceable kitchen appliance with a clever product design and great range of accessories. The appliance can handle everything from kneading, mixing, slicing, grating as well as a whole host of other tasks that any home chef could need! The 600W power can be set to 4 different levels depending on the specific food or recipe. A food processor is the ideal solution for saving space in the kitchen, and the Bosch MUM48R1 is perfect for performing a wide variety of tasks in a very limited space. The appliance can be easily cleaned after use.','http://www.bosch-home.co.uk/store/category/food_preparation/food_preparation_food_mixers',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,2,'MUM48R1 Food Processor','The Bosch MUM48R1 is an irreplaceable kitchen appliance with a clever product design and great range of accessories. The appliance can handle everything from kneading, mixing, slicing, grating as well as a whole host of other tasks that any home chef could need! The 600W power can be set to 4 different levels depending on the specific food or recipe. A food processor is the ideal solution for saving space in the kitchen, and the Bosch MUM48R1 is perfect for performing a wide variety of tasks in a very limited space. The appliance can be easily cleaned after use.','http://www.bosch-home.co.uk/store/category/food_preparation/food_preparation_food_mixers',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,3,'MUM48R1 Food Processor','The Bosch MUM48R1 is an irreplaceable kitchen appliance with a clever product design and great range of accessories. The appliance can handle everything from kneading, mixing, slicing, grating as well as a whole host of other tasks that any home chef could need! The 600W power can be set to 4 different levels depending on the specific food or recipe. A food processor is the ideal solution for saving space in the kitchen, and the Bosch MUM48R1 is perfect for performing a wide variety of tasks in a very limited space. The appliance can be easily cleaned after use.','http://www.bosch-home.co.uk/store/category/food_preparation/food_preparation_food_mixers',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,4,'MUM48R1 Food Processor','The Bosch MUM48R1 is an irreplaceable kitchen appliance with a clever product design and great range of accessories. The appliance can handle everything from kneading, mixing, slicing, grating as well as a whole host of other tasks that any home chef could need! The 600W power can be set to 4 different levels depending on the specific food or recipe. A food processor is the ideal solution for saving space in the kitchen, and the Bosch MUM48R1 is perfect for performing a wide variety of tasks in a very limited space. The appliance can be easily cleaned after use.','http://www.bosch-home.co.uk/store/category/food_preparation/food_preparation_food_mixers',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,1,'iPad','Pick up the iPad with Retina display and suddenly, it\'s clear. You\'re actually touching your photos, reading a book, playing the piano. Nothing comes between you and what you love. That\'s because the fundamental elements of iPad — the display, the processor, the cameras, the wireless connection — all work together to create the best possible experience. And they make iPad capable of so much more than you ever imagined.','http://www.apple.com/uk/ipad/features/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,2,'iPad','Pick up the iPad with Retina display and suddenly, it\'s clear. You\'re actually touching your photos, reading a book, playing the piano. Nothing comes between you and what you love. That\'s because the fundamental elements of iPad — the display, the processor, the cameras, the wireless connection — all work together to create the best possible experience. And they make iPad capable of so much more than you ever imagined.','http://www.apple.com/uk/ipad/features/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,3,'iPad','Pick up the iPad with Retina display and suddenly, it\'s clear. You\'re actually touching your photos, reading a book, playing the piano. Nothing comes between you and what you love. That\'s because the fundamental elements of iPad — the display, the processor, the cameras, the wireless connection — all work together to create the best possible experience. And they make iPad capable of so much more than you ever imagined.','http://www.apple.com/uk/ipad/features/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,4,'iPad','Pick up the iPad with Retina display and suddenly, it\'s clear. You\'re actually touching your photos, reading a book, playing the piano. Nothing comes between you and what you love. That\'s because the fundamental elements of iPad — the display, the processor, the cameras, the wireless connection — all work together to create the best possible experience. And they make iPad capable of so much more than you ever imagined.','http://www.apple.com/uk/ipad/features/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,1,'Galaxy Tab 2','Experience more possibilities on the go with the Samsung Galaxy Tab 10.1. Light and thin and packed with a powerful performance. Supported by the latest Android 4.0 Ice Cream Sandwich operating system, which has been designed specifically for tablet use, everything from the 3D graphics to the latest apps will capture your imagination. It also features Touch Wiz 4.0 for effortless and intuitive multitasking.','http://www.samsung.com/global/microsite/galaxytab2/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,2,'Galaxy Tab 2','Experience more possibilities on the go with the Samsung Galaxy Tab 10.1. Light and thin and packed with a powerful performance. Supported by the latest Android 4.0 Ice Cream Sandwich operating system, which has been designed specifically for tablet use, everything from the 3D graphics to the latest apps will capture your imagination. It also features Touch Wiz 4.0 for effortless and intuitive multitasking.','http://www.samsung.com/global/microsite/galaxytab2/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,3,'Galaxy Tab 2','Experience more possibilities on the go with the Samsung Galaxy Tab 10.1. Light and thin and packed with a powerful performance. Supported by the latest Android 4.0 Ice Cream Sandwich operating system, which has been designed specifically for tablet use, everything from the 3D graphics to the latest apps will capture your imagination. It also features Touch Wiz 4.0 for effortless and intuitive multitasking.','http://www.samsung.com/global/microsite/galaxytab2/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,4,'Galaxy Tab 2','Experience more possibilities on the go with the Samsung Galaxy Tab 10.1. Light and thin and packed with a powerful performance. Supported by the latest Android 4.0 Ice Cream Sandwich operating system, which has been designed specifically for tablet use, everything from the 3D graphics to the latest apps will capture your imagination. It also features Touch Wiz 4.0 for effortless and intuitive multitasking.','http://www.samsung.com/global/microsite/galaxytab2/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,1,'Weather Station Clock','Stylish clock featuring hygrometer (humidity) and thermometer dials and sweeping second hand. Aluminium rim. 30.5cm diameter. Retail box.','http://www.eddingtons.co.uk/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,2,'Weather Station Clock','Stylish clock featuring hygrometer (humidity) and thermometer dials and sweeping second hand. Aluminium rim. 30.5cm diameter. Retail box.','http://www.eddingtons.co.uk/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,3,'Weather Station Clock','Stylish clock featuring hygrometer (humidity) and thermometer dials and sweeping second hand. Aluminium rim. 30.5cm diameter. Retail box.','http://www.eddingtons.co.uk/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,4,'Weather Station Clock','Stylish clock featuring hygrometer (humidity) and thermometer dials and sweeping second hand. Aluminium rim. 30.5cm diameter. Retail box.','http://www.eddingtons.co.uk/',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,1,'Call Of Duty','Call Of Duty - Black Ops2 - Stunning but Violent','http://www.callofduty.com/blackops2',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,2,'Call Of Duty','Call Of Duty - Black Ops2 - Stunning but Violent','http://www.callofduty.com/blackops2',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,3,'Call Of Duty','Call Of Duty - Black Ops2 - Stunning but Violent','http://www.callofduty.com/blackops2',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,4,'Call Of Duty','Call Of Duty - Black Ops2 - Stunning but Violent','http://www.callofduty.com/blackops2',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `products_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_notifications`
--

DROP TABLE IF EXISTS `products_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`products_id`,`customers_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_notifications`
--

LOCK TABLES `products_notifications` WRITE;
/*!40000 ALTER TABLE `products_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_options`
--

DROP TABLE IF EXISTS `products_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_name` varchar(64) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `option_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`products_options_id`,`language_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_options`
--

LOCK TABLES `products_options` WRITE;
/*!40000 ALTER TABLE `products_options` DISABLE KEYS */;
INSERT INTO `products_options` VALUES (1,1,'Color',NULL,NULL,NULL,0),(1,2,'Farbe',NULL,NULL,NULL,0),(1,3,'Color',NULL,NULL,NULL,0),(1,4,'Cor',NULL,NULL,NULL,0),(2,1,'Size',NULL,NULL,NULL,0),(2,2,'Größe',NULL,NULL,NULL,0),(2,3,'Talla',NULL,NULL,NULL,0),(2,4,'Tamanho',NULL,NULL,NULL,0),(3,1,'Model',NULL,NULL,NULL,0),(3,2,'Modell',NULL,NULL,NULL,0),(3,3,'Modelo',NULL,NULL,NULL,0),(3,4,'Modelo',NULL,NULL,NULL,0),(4,1,'Memory',NULL,NULL,NULL,0),(4,2,'Speicher',NULL,NULL,NULL,0),(4,3,'Memoria',NULL,NULL,NULL,0),(4,4,'Memória',NULL,NULL,NULL,0),(5,1,'Type',NULL,NULL,NULL,0),(5,2,'Type',NULL,NULL,NULL,0),(5,3,'Type',NULL,NULL,NULL,0),(5,4,'Type',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `products_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_options_values`
--

DROP TABLE IF EXISTS `products_options_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_values_name` varchar(64) NOT NULL DEFAULT '',
  `store_id` varchar(64) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`products_options_values_id`,`language_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_options_values`
--

LOCK TABLES `products_options_values` WRITE;
/*!40000 ALTER TABLE `products_options_values` DISABLE KEYS */;
INSERT INTO `products_options_values` VALUES (1,1,'4 mb',NULL,NULL,NULL),(1,2,'4 MB',NULL,NULL,NULL),(1,3,'4 mb',NULL,NULL,NULL),(1,4,'4 mb',NULL,NULL,NULL),(2,1,'8 mb',NULL,NULL,NULL),(2,2,'8 MB',NULL,NULL,NULL),(2,3,'8 mb',NULL,NULL,NULL),(2,4,'8 mb',NULL,NULL,NULL),(3,1,'16 mb',NULL,NULL,NULL),(3,2,'16 MB',NULL,NULL,NULL),(3,3,'16 mb',NULL,NULL,NULL),(3,4,'16 mb',NULL,NULL,NULL),(4,1,'32 mb',NULL,NULL,NULL),(4,2,'32 MB',NULL,NULL,NULL),(4,3,'32 mb',NULL,NULL,NULL),(4,4,'32 mb',NULL,NULL,NULL),(5,1,'Value',NULL,NULL,NULL),(5,2,'Value Ausgabe',NULL,NULL,NULL),(5,3,'Value',NULL,NULL,NULL),(5,4,'Valor',NULL,NULL,NULL),(6,1,'Premium',NULL,NULL,NULL),(6,2,'Premium Ausgabe',NULL,NULL,NULL),(6,3,'Premium',NULL,NULL,NULL),(6,4,'Premium',NULL,NULL,NULL),(7,1,'Deluxe',NULL,NULL,NULL),(7,2,'Deluxe Ausgabe',NULL,NULL,NULL),(7,3,'Deluxe',NULL,NULL,NULL),(7,4,'Deluxe',NULL,NULL,NULL),(8,1,'PS/2',NULL,NULL,NULL),(8,2,'PS/2 Anschluss',NULL,NULL,NULL),(8,3,'PS/2',NULL,NULL,NULL),(8,4,'PS/2',NULL,NULL,NULL),(9,1,'USB',NULL,NULL,NULL),(9,2,'USB Anschluss',NULL,NULL,NULL),(9,3,'USB',NULL,NULL,NULL),(9,4,'USB',NULL,NULL,NULL),(10,1,'Bronze',NULL,NULL,NULL),(10,2,'Bronze',NULL,NULL,NULL),(10,3,'Bronze',NULL,NULL,NULL),(10,4,'Bronze',NULL,NULL,NULL),(11,1,'Silver',NULL,NULL,NULL),(11,2,'Silver',NULL,NULL,NULL),(11,3,'Silver',NULL,NULL,NULL),(11,4,'Silver',NULL,NULL,NULL),(12,1,'Gold',NULL,NULL,NULL),(12,2,'Gold',NULL,NULL,NULL),(12,3,'Gold',NULL,NULL,NULL),(12,4,'Gold',NULL,NULL,NULL);
/*!40000 ALTER TABLE `products_options_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_quantity`
--

DROP TABLE IF EXISTS `products_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_quantity` (
  `products_id` int(11) NOT NULL,
  `products_options` varchar(128) NOT NULL,
  `products_quantity` int(11) NOT NULL,
  `products_sku` varchar(255) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  PRIMARY KEY (`products_id`,`products_options`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_quantity`
--

LOCK TABLES `products_quantity` WRITE;
/*!40000 ALTER TABLE `products_quantity` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_to_categories`
--

DROP TABLE IF EXISTS `products_to_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_to_categories` (
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`products_id`,`categories_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_to_categories`
--

LOCK TABLES `products_to_categories` WRITE;
/*!40000 ALTER TABLE `products_to_categories` DISABLE KEYS */;
INSERT INTO `products_to_categories` VALUES (1,4,NULL),(2,4,NULL),(3,9,NULL),(4,10,NULL),(5,11,NULL),(6,10,NULL),(7,12,NULL),(8,13,NULL),(9,10,NULL),(10,10,NULL),(11,10,NULL),(12,10,NULL),(13,10,NULL),(14,15,NULL),(15,14,NULL),(16,15,NULL),(17,10,NULL),(18,10,NULL),(19,12,NULL),(20,15,NULL),(21,18,NULL),(22,19,NULL),(23,20,NULL),(24,20,NULL),(25,8,NULL),(26,9,NULL),(27,5,NULL),(28,8,NULL),(28,9,NULL),(29,21,NULL),(30,5,NULL),(31,8,NULL),(32,22,NULL),(33,28,NULL),(34,26,NULL),(35,27,NULL),(36,29,NULL),(37,29,NULL),(38,29,NULL),(39,30,NULL),(40,30,NULL),(41,30,NULL),(42,30,NULL),(43,28,NULL),(44,28,NULL),(45,27,NULL),(46,27,NULL),(47,27,NULL),(48,27,NULL),(49,25,NULL),(50,25,NULL),(51,25,NULL),(52,25,NULL),(53,25,NULL),(54,25,NULL),(55,29,NULL),(56,29,NULL),(57,29,NULL),(58,22,NULL),(59,28,NULL),(60,26,NULL),(61,26,NULL),(62,29,NULL),(63,19,NULL);
/*!40000 ALTER TABLE `products_to_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_to_products`
--

DROP TABLE IF EXISTS `products_to_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_to_products` (
  `products_to_products_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_from` int(11) NOT NULL,
  `id_to` int(11) NOT NULL,
  `relation_type` int(11) NOT NULL DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `products_options` varchar(128) DEFAULT NULL,
  `products_quantity` int(11) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`products_to_products_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_to_products`
--

LOCK TABLES `products_to_products` WRITE;
/*!40000 ALTER TABLE `products_to_products` DISABLE KEYS */;
INSERT INTO `products_to_products` VALUES (1,28,26,5,NULL,NULL,'3{8}',1,NULL),(2,28,25,5,NULL,NULL,'',1,NULL);
/*!40000 ALTER TABLE `products_to_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion` (
  `promotion_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_total_code` varchar(32) NOT NULL,
  `description` varchar(128) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `cumulative` int(1) NOT NULL DEFAULT '0',
  `requires_coupon` int(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `manufacturer_rule` int(11) DEFAULT NULL,
  `product_rule` int(11) DEFAULT NULL,
  `customer_rule` int(11) DEFAULT NULL,
  `category_rule` int(11) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `custom6` varchar(128) DEFAULT NULL,
  `custom7` varchar(128) DEFAULT NULL,
  `custom8` varchar(128) DEFAULT NULL,
  `custom9` varchar(128) DEFAULT NULL,
  `custom10` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `customer_group_rule` int(11) DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  `max_use` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`promotion_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_to_category`
--

DROP TABLE IF EXISTS `promotion_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_to_category` (
  `promotion_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`promotion_id`,`categories_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_to_category`
--

LOCK TABLES `promotion_to_category` WRITE;
/*!40000 ALTER TABLE `promotion_to_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_to_coupon`
--

DROP TABLE IF EXISTS `promotion_to_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_to_coupon` (
  `promotion_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`promotion_id`,`coupon_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_to_coupon`
--

LOCK TABLES `promotion_to_coupon` WRITE;
/*!40000 ALTER TABLE `promotion_to_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_to_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_to_cust_group`
--

DROP TABLE IF EXISTS `promotion_to_cust_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_to_cust_group` (
  `promotion_id` int(11) NOT NULL,
  `customers_group_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`promotion_id`,`customers_group_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_to_cust_group`
--

LOCK TABLES `promotion_to_cust_group` WRITE;
/*!40000 ALTER TABLE `promotion_to_cust_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_to_cust_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_to_customer`
--

DROP TABLE IF EXISTS `promotion_to_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_to_customer` (
  `promotion_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `max_use` int(11) NOT NULL DEFAULT '-1',
  `times_used` int(11) NOT NULL DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`promotion_id`,`customers_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_to_customer`
--

LOCK TABLES `promotion_to_customer` WRITE;
/*!40000 ALTER TABLE `promotion_to_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_to_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_to_customer_use`
--

DROP TABLE IF EXISTS `promotion_to_customer_use`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_to_customer_use` (
  `store_id` varchar(64) DEFAULT NULL,
  `promotion_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `times_used` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`promotion_id`,`customers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_to_customer_use`
--

LOCK TABLES `promotion_to_customer_use` WRITE;
/*!40000 ALTER TABLE `promotion_to_customer_use` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_to_customer_use` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_to_manufacturer`
--

DROP TABLE IF EXISTS `promotion_to_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_to_manufacturer` (
  `promotion_id` int(11) NOT NULL,
  `manufacturers_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`promotion_id`,`manufacturers_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_to_manufacturer`
--

LOCK TABLES `promotion_to_manufacturer` WRITE;
/*!40000 ALTER TABLE `promotion_to_manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_to_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_to_product`
--

DROP TABLE IF EXISTS `promotion_to_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_to_product` (
  `promotion_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options_id` int(11) NOT NULL DEFAULT '0',
  `products_options_values_id` int(11) NOT NULL DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  `relation_type` int(11) DEFAULT '0',
  PRIMARY KEY (`promotion_id`,`products_id`,`products_options_id`,`products_options_values_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_to_product`
--

LOCK TABLES `promotion_to_product` WRITE;
/*!40000 ALTER TABLE `promotion_to_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_to_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returns_to_ord_prods`
--

DROP TABLE IF EXISTS `returns_to_ord_prods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `returns_to_ord_prods` (
  `orders_returns_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`orders_returns_id`,`orders_products_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returns_to_ord_prods`
--

LOCK TABLES `returns_to_ord_prods` WRITE;
/*!40000 ALTER TABLE `returns_to_ord_prods` DISABLE KEYS */;
/*!40000 ALTER TABLE `returns_to_ord_prods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(64) NOT NULL,
  `reviews_rating` int(1) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reviews_read` int(5) NOT NULL DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reviews_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,19,1,'John doe',5,'2015-10-07 00:58:04','2015-10-07 00:58:04',0,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews_description`
--

DROP TABLE IF EXISTS `reviews_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews_description` (
  `reviews_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `reviews_text` text NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`reviews_id`,`languages_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews_description`
--

LOCK TABLES `reviews_description` WRITE;
/*!40000 ALTER TABLE `reviews_description` DISABLE KEYS */;
INSERT INTO `reviews_description` VALUES (1,1,'this has to be one of the funniest movies released for 1999!',NULL);
/*!40000 ALTER TABLE `reviews_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `sesskey` varchar(32) NOT NULL,
  `expiry` int(11) unsigned NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `value` varchar(256) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`sesskey`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('15c8ca2f46fd2d9c125040ab30a4fc8e',1444181935,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specials`
--

DROP TABLE IF EXISTS `specials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,4) NOT NULL,
  `specials_date_added` datetime DEFAULT NULL,
  `specials_last_modified` datetime DEFAULT NULL,
  `expires_date` datetime DEFAULT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `store_id` varchar(64) DEFAULT NULL,
  `starts_date` datetime DEFAULT NULL,
  PRIMARY KEY (`specials_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specials`
--

LOCK TABLES `specials` WRITE;
/*!40000 ALTER TABLE `specials` DISABLE KEYS */;
INSERT INTO `specials` VALUES (1,3,39.9900,'2015-10-07 00:58:04','2015-10-07 00:58:04','2020-01-01 00:00:00','2015-10-07 00:58:04',1,NULL,NULL),(2,5,30.0000,'2015-10-07 00:58:04','2015-10-07 00:58:04','2020-01-01 00:00:00','2015-10-07 00:58:04',1,NULL,NULL),(3,6,30.0000,'2015-10-07 00:58:04','2015-10-07 00:58:04','2020-01-01 00:00:00','2015-10-07 00:58:04',1,NULL,NULL),(4,16,29.9900,'2015-10-07 00:58:04','2015-10-07 00:58:04','2020-01-01 00:00:00','2015-10-07 00:58:04',1,NULL,NULL);
/*!40000 ALTER TABLE `specials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_title` varchar(32) NOT NULL,
  `tax_class_description` varchar(255) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `tax_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`tax_class_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_class`
--

LOCK TABLES `tax_class` WRITE;
/*!40000 ALTER TABLE `tax_class` DISABLE KEYS */;
INSERT INTO `tax_class` VALUES (1,'Taxable Goods','The following types of products are included non-food, services, etc','2015-10-07 00:58:04','2015-10-07 00:58:04',NULL,NULL);
/*!40000 ALTER TABLE `tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rates`
--

DROP TABLE IF EXISTS `tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(5) DEFAULT '1',
  `tax_rate` decimal(7,4) NOT NULL,
  `tax_description` varchar(255) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`tax_rates_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rates`
--

LOCK TABLES `tax_rates` WRITE;
/*!40000 ALTER TABLE `tax_rates` DISABLE KEYS */;
INSERT INTO `tax_rates` VALUES (1,1,1,1,7.0000,'FL TAX 7.0%','2015-10-07 00:58:04','2015-10-07 00:58:04',NULL);
/*!40000 ALTER TABLE `tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utility`
--

DROP TABLE IF EXISTS `utility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utility` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility`
--

LOCK TABLES `utility` WRITE;
/*!40000 ALTER TABLE `utility` DISABLE KEYS */;
INSERT INTO `utility` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31);
/*!40000 ALTER TABLE `utility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whos_online`
--

DROP TABLE IF EXISTS `whos_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whos_online` (
  `customer_id` int(11) DEFAULT NULL,
  `full_name` varchar(64) NOT NULL,
  `session_id` varchar(128) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `time_entry` varchar(14) NOT NULL,
  `time_last_click` varchar(14) NOT NULL,
  `last_page_url` varchar(64) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whos_online`
--

LOCK TABLES `whos_online` WRITE;
/*!40000 ALTER TABLE `whos_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `whos_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zones`
--

DROP TABLE IF EXISTS `zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) NOT NULL,
  `zone_name` varchar(32) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `zone_invisible` int(11) NOT NULL DEFAULT '0',
  `zone_search` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`zone_id`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_zone_search` (`zone_search`)
) ENGINE=InnoDB AUTO_INCREMENT=459 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zones`
--

LOCK TABLES `zones` WRITE;
/*!40000 ALTER TABLE `zones` DISABLE KEYS */;
INSERT INTO `zones` VALUES (1,223,'AL','Alabama',NULL,NULL,NULL,NULL,0,NULL),(2,223,'AK','Alaska',NULL,NULL,NULL,NULL,0,NULL),(3,223,'AS','American Samoa',NULL,NULL,NULL,NULL,0,NULL),(4,223,'AZ','Arizona',NULL,NULL,NULL,NULL,0,NULL),(5,223,'AR','Arkansas',NULL,NULL,NULL,NULL,0,NULL),(6,223,'AF','Armed Forces Africa',NULL,NULL,NULL,NULL,0,NULL),(7,223,'AA','Armed Forces Americas',NULL,NULL,NULL,NULL,0,NULL),(8,223,'AC','Armed Forces Canada',NULL,NULL,NULL,NULL,0,NULL),(9,223,'AE','Armed Forces Europe',NULL,NULL,NULL,NULL,0,NULL),(10,223,'AM','Armed Forces Middle East',NULL,NULL,NULL,NULL,0,NULL),(11,223,'AP','Armed Forces Pacific',NULL,NULL,NULL,NULL,0,NULL),(12,223,'CA','California',NULL,NULL,NULL,NULL,0,NULL),(13,223,'CO','Colorado',NULL,NULL,NULL,NULL,0,NULL),(14,223,'CT','Connecticut',NULL,NULL,NULL,NULL,0,NULL),(15,223,'DE','Delaware',NULL,NULL,NULL,NULL,0,NULL),(16,223,'DC','District of Columbia',NULL,NULL,NULL,NULL,0,NULL),(17,223,'FM','Federated States Of Micronesia',NULL,NULL,NULL,NULL,0,NULL),(18,223,'FL','Florida',NULL,NULL,NULL,NULL,0,NULL),(19,223,'GA','Georgia',NULL,NULL,NULL,NULL,0,NULL),(20,223,'GU','Guam',NULL,NULL,NULL,NULL,0,NULL),(21,223,'HI','Hawaii',NULL,NULL,NULL,NULL,0,NULL),(22,223,'ID','Idaho',NULL,NULL,NULL,NULL,0,NULL),(23,223,'IL','Illinois',NULL,NULL,NULL,NULL,0,NULL),(24,223,'IN','Indiana',NULL,NULL,NULL,NULL,0,NULL),(25,223,'IA','Iowa',NULL,NULL,NULL,NULL,0,NULL),(26,223,'KS','Kansas',NULL,NULL,NULL,NULL,0,NULL),(27,223,'KY','Kentucky',NULL,NULL,NULL,NULL,0,NULL),(28,223,'LA','Louisiana',NULL,NULL,NULL,NULL,0,NULL),(29,223,'ME','Maine',NULL,NULL,NULL,NULL,0,NULL),(30,223,'MH','Marshall Islands',NULL,NULL,NULL,NULL,0,NULL),(31,223,'MD','Maryland',NULL,NULL,NULL,NULL,0,NULL),(32,223,'MA','Massachusetts',NULL,NULL,NULL,NULL,0,NULL),(33,223,'MI','Michigan',NULL,NULL,NULL,NULL,0,NULL),(34,223,'MN','Minnesota',NULL,NULL,NULL,NULL,0,NULL),(35,223,'MS','Mississippi',NULL,NULL,NULL,NULL,0,NULL),(36,223,'MO','Missouri',NULL,NULL,NULL,NULL,0,NULL),(37,223,'MT','Montana',NULL,NULL,NULL,NULL,0,NULL),(38,223,'NE','Nebraska',NULL,NULL,NULL,NULL,0,NULL),(39,223,'NV','Nevada',NULL,NULL,NULL,NULL,0,NULL),(40,223,'NH','New Hampshire',NULL,NULL,NULL,NULL,0,NULL),(41,223,'NJ','New Jersey',NULL,NULL,NULL,NULL,0,NULL),(42,223,'NM','New Mexico',NULL,NULL,NULL,NULL,0,NULL),(43,223,'NY','New York',NULL,NULL,NULL,NULL,0,NULL),(44,223,'NC','North Carolina',NULL,NULL,NULL,NULL,0,NULL),(45,223,'ND','North Dakota',NULL,NULL,NULL,NULL,0,NULL),(46,223,'MP','Northern Mariana Islands',NULL,NULL,NULL,NULL,0,NULL),(47,223,'OH','Ohio',NULL,NULL,NULL,NULL,0,NULL),(48,223,'OK','Oklahoma',NULL,NULL,NULL,NULL,0,NULL),(49,223,'OR','Oregon',NULL,NULL,NULL,NULL,0,NULL),(50,223,'PW','Palau',NULL,NULL,NULL,NULL,0,NULL),(51,223,'PA','Pennsylvania',NULL,NULL,NULL,NULL,0,NULL),(52,223,'PR','Puerto Rico',NULL,NULL,NULL,NULL,0,NULL),(53,223,'RI','Rhode Island',NULL,NULL,NULL,NULL,0,NULL),(54,223,'SC','South Carolina',NULL,NULL,NULL,NULL,0,NULL),(55,223,'SD','South Dakota',NULL,NULL,NULL,NULL,0,NULL),(56,223,'TN','Tennessee',NULL,NULL,NULL,NULL,0,NULL),(57,223,'TX','Texas',NULL,NULL,NULL,NULL,0,NULL),(58,223,'UT','Utah',NULL,NULL,NULL,NULL,0,NULL),(59,223,'VT','Vermont',NULL,NULL,NULL,NULL,0,NULL),(60,223,'VI','Virgin Islands',NULL,NULL,NULL,NULL,0,NULL),(61,223,'VA','Virginia',NULL,NULL,NULL,NULL,0,NULL),(62,223,'WA','Washington',NULL,NULL,NULL,NULL,0,NULL),(63,223,'WV','West Virginia',NULL,NULL,NULL,NULL,0,NULL),(64,223,'WI','Wisconsin',NULL,NULL,NULL,NULL,0,NULL),(65,223,'WY','Wyoming',NULL,NULL,NULL,NULL,0,NULL),(66,13,'ACT','Australian Capitol Territory',NULL,NULL,NULL,NULL,0,NULL),(67,13,'NSW','New South Wales',NULL,NULL,NULL,NULL,0,NULL),(68,13,'NT','Northern Territory',NULL,NULL,NULL,NULL,0,NULL),(69,13,'QLD','Queensland',NULL,NULL,NULL,NULL,0,NULL),(70,13,'SA','South Australia',NULL,NULL,NULL,NULL,0,NULL),(71,13,'TAS','Tasmania',NULL,NULL,NULL,NULL,0,NULL),(72,13,'VIC','Victoria',NULL,NULL,NULL,NULL,0,NULL),(73,13,'WA','Western Australia',NULL,NULL,NULL,NULL,0,NULL),(74,14,'WI','Wien',NULL,NULL,NULL,NULL,0,NULL),(75,14,'NO','Niederösterreich',NULL,NULL,NULL,NULL,0,NULL),(76,14,'OO','Oberösterreich',NULL,NULL,NULL,NULL,0,NULL),(77,14,'SB','Salzburg',NULL,NULL,NULL,NULL,0,NULL),(78,14,'KN','Kärnten',NULL,NULL,NULL,NULL,0,NULL),(79,14,'ST','Steiermark',NULL,NULL,NULL,NULL,0,NULL),(80,14,'TI','Tirol',NULL,NULL,NULL,NULL,0,NULL),(81,14,'BL','Burgenland',NULL,NULL,NULL,NULL,0,NULL),(82,14,'VB','Voralberg',NULL,NULL,NULL,NULL,0,NULL),(83,44,'AN','Anhui',NULL,NULL,NULL,NULL,0,NULL),(84,44,'BE','Beijing',NULL,NULL,NULL,NULL,0,NULL),(85,44,'CH','Chongqing',NULL,NULL,NULL,NULL,0,NULL),(86,44,'FU','Fujian',NULL,NULL,NULL,NULL,0,NULL),(87,44,'GA','Gansu',NULL,NULL,NULL,NULL,0,NULL),(88,44,'GU','Guangdong',NULL,NULL,NULL,NULL,0,NULL),(89,44,'GX','Guangxi',NULL,NULL,NULL,NULL,0,NULL),(90,44,'GZ','Guizhou',NULL,NULL,NULL,NULL,0,NULL),(91,44,'HA','Hainan',NULL,NULL,NULL,NULL,0,NULL),(92,44,'HB','Hebei',NULL,NULL,NULL,NULL,0,NULL),(93,44,'HL','Heilongjiang',NULL,NULL,NULL,NULL,0,NULL),(94,44,'HE','Henan',NULL,NULL,NULL,NULL,0,NULL),(95,44,'HK','Hong Kong',NULL,NULL,NULL,NULL,0,NULL),(96,44,'HU','Hubei',NULL,NULL,NULL,NULL,0,NULL),(97,44,'HN','Hunan',NULL,NULL,NULL,NULL,0,NULL),(98,44,'IM','Inner Mongolia',NULL,NULL,NULL,NULL,0,NULL),(99,44,'JI','Jiangsu',NULL,NULL,NULL,NULL,0,NULL),(100,44,'JX','Jiangxi',NULL,NULL,NULL,NULL,0,NULL),(101,44,'JL','Jilin',NULL,NULL,NULL,NULL,0,NULL),(102,44,'LI','Liaoning',NULL,NULL,NULL,NULL,0,NULL),(103,44,'MA','Macau',NULL,NULL,NULL,NULL,0,NULL),(104,44,'NI','Ningxia',NULL,NULL,NULL,NULL,0,NULL),(105,44,'SH','Shaanxi',NULL,NULL,NULL,NULL,0,NULL),(106,44,'SA','Shandong',NULL,NULL,NULL,NULL,0,NULL),(107,44,'SG','Shanghai',NULL,NULL,NULL,NULL,0,NULL),(108,44,'SX','Shanxi',NULL,NULL,NULL,NULL,0,NULL),(109,44,'SI','Sichuan',NULL,NULL,NULL,NULL,0,NULL),(110,44,'TI','Tianjin',NULL,NULL,NULL,NULL,0,NULL),(111,44,'XI','Xinjiang',NULL,NULL,NULL,NULL,0,NULL),(112,44,'YU','Yunnan',NULL,NULL,NULL,NULL,0,NULL),(113,44,'ZH','Zhejiang',NULL,NULL,NULL,NULL,0,NULL),(114,99,'AN','Andaman and Nicobar Islands',NULL,NULL,NULL,NULL,0,NULL),(115,99,'AP','Andhra Pradesh',NULL,NULL,NULL,NULL,0,NULL),(116,99,'AR','Arunachal Pradesh',NULL,NULL,NULL,NULL,0,NULL),(117,99,'AS','Assam',NULL,NULL,NULL,NULL,0,NULL),(118,99,'BI','Bihar',NULL,NULL,NULL,NULL,0,NULL),(119,99,'CH','Chandigarh',NULL,NULL,NULL,NULL,0,NULL),(120,99,'DA','Dadra and Nagar Haveli',NULL,NULL,NULL,NULL,0,NULL),(121,99,'DM','Daman and Diu',NULL,NULL,NULL,NULL,0,NULL),(122,99,'DE','Delhi',NULL,NULL,NULL,NULL,0,NULL),(123,99,'GO','Goa',NULL,NULL,NULL,NULL,0,NULL),(124,99,'GU','Gujarat',NULL,NULL,NULL,NULL,0,NULL),(125,99,'HA','Haryana',NULL,NULL,NULL,NULL,0,NULL),(126,99,'HP','Himachal Pradesh',NULL,NULL,NULL,NULL,0,NULL),(127,99,'JA','Jammu and Kashmir',NULL,NULL,NULL,NULL,0,NULL),(128,99,'KA','Karnataka',NULL,NULL,NULL,NULL,0,NULL),(129,99,'KE','Kerala',NULL,NULL,NULL,NULL,0,NULL),(130,99,'LI','Lakshadweep Islands',NULL,NULL,NULL,NULL,0,NULL),(131,99,'MP','Madhya Pradesh',NULL,NULL,NULL,NULL,0,NULL),(132,99,'MA','Maharashtra',NULL,NULL,NULL,NULL,0,NULL),(133,99,'MN','Manipur',NULL,NULL,NULL,NULL,0,NULL),(134,99,'ME','Meghalaya',NULL,NULL,NULL,NULL,0,NULL),(135,99,'MI','Mizoram',NULL,NULL,NULL,NULL,0,NULL),(136,99,'NA','Nagaland',NULL,NULL,NULL,NULL,0,NULL),(137,99,'OR','Orissa',NULL,NULL,NULL,NULL,0,NULL),(138,99,'PO','Pondicherry',NULL,NULL,NULL,NULL,0,NULL),(139,99,'PU','Punjab',NULL,NULL,NULL,NULL,0,NULL),(140,99,'RA','Rajasthan',NULL,NULL,NULL,NULL,0,NULL),(141,99,'SI','Sikkim',NULL,NULL,NULL,NULL,0,NULL),(142,99,'TN','Tamil Nadu',NULL,NULL,NULL,NULL,0,NULL),(143,99,'TR','Tripura',NULL,NULL,NULL,NULL,0,NULL),(144,99,'UP','Uttar Pradesh',NULL,NULL,NULL,NULL,0,NULL),(145,99,'WB','West Bengal',NULL,NULL,NULL,NULL,0,NULL),(146,150,'DR','Drenthe',NULL,NULL,NULL,NULL,0,NULL),(147,150,'FL','Flevoland',NULL,NULL,NULL,NULL,0,NULL),(148,150,'FR','Friesland',NULL,NULL,NULL,NULL,0,NULL),(149,150,'GE','Gelderland',NULL,NULL,NULL,NULL,0,NULL),(150,150,'GR','Groningen',NULL,NULL,NULL,NULL,0,NULL),(151,150,'LI','Limburg',NULL,NULL,NULL,NULL,0,NULL),(152,150,'NB','Noord Brabant',NULL,NULL,NULL,NULL,0,NULL),(153,150,'NH','Noord Holland',NULL,NULL,NULL,NULL,0,NULL),(154,150,'OV','Overijssel',NULL,NULL,NULL,NULL,0,NULL),(155,150,'UT','Utrecht',NULL,NULL,NULL,NULL,0,NULL),(156,150,'ZE','Zeeland',NULL,NULL,NULL,NULL,0,NULL),(157,150,'ZH','Zuid Holland',NULL,NULL,NULL,NULL,0,NULL),(158,38,'AB','Alberta',NULL,NULL,NULL,NULL,0,NULL),(159,38,'BC','British Columbia',NULL,NULL,NULL,NULL,0,NULL),(160,38,'MB','Manitoba',NULL,NULL,NULL,NULL,0,NULL),(161,38,'NL','Newfoundland and Labrador',NULL,NULL,NULL,NULL,0,NULL),(162,38,'NB','New Brunswick',NULL,NULL,NULL,NULL,0,NULL),(163,38,'NS','Nova Scotia',NULL,NULL,NULL,NULL,0,NULL),(164,38,'NT','Northwest Territories',NULL,NULL,NULL,NULL,0,NULL),(165,38,'NU','Nunavut',NULL,NULL,NULL,NULL,0,NULL),(166,38,'ON','Ontario',NULL,NULL,NULL,NULL,0,NULL),(167,38,'PE','Prince Edward Island',NULL,NULL,NULL,NULL,0,NULL),(168,38,'QC','Quebec',NULL,NULL,NULL,NULL,0,NULL),(169,38,'SK','Saskatchewan',NULL,NULL,NULL,NULL,0,NULL),(170,38,'YT','Yukon Territory',NULL,NULL,NULL,NULL,0,NULL),(171,81,'NDS','Niedersachsen',NULL,NULL,NULL,NULL,0,NULL),(172,81,'BAW','Baden-Württemberg',NULL,NULL,NULL,NULL,0,NULL),(173,81,'BAY','Bayern',NULL,NULL,NULL,NULL,0,NULL),(174,81,'BER','Berlin',NULL,NULL,NULL,NULL,0,NULL),(175,81,'BRG','Brandenburg',NULL,NULL,NULL,NULL,0,NULL),(176,81,'BRE','Bremen',NULL,NULL,NULL,NULL,0,NULL),(177,81,'HAM','Hamburg',NULL,NULL,NULL,NULL,0,NULL),(178,81,'HES','Hessen',NULL,NULL,NULL,NULL,0,NULL),(179,81,'MEC','Mecklenburg-Vorpommern',NULL,NULL,NULL,NULL,0,NULL),(180,81,'NRW','Nordrhein-Westfalen',NULL,NULL,NULL,NULL,0,NULL),(181,81,'RHE','Rheinland-Pfalz',NULL,NULL,NULL,NULL,0,NULL),(182,81,'SAR','Saarland',NULL,NULL,NULL,NULL,0,NULL),(183,81,'SAS','Sachsen',NULL,NULL,NULL,NULL,0,NULL),(184,81,'SAC','Sachsen-Anhalt',NULL,NULL,NULL,NULL,0,NULL),(185,81,'SCN','Schleswig-Holstein',NULL,NULL,NULL,NULL,0,NULL),(186,81,'THE','Thüringen',NULL,NULL,NULL,NULL,0,NULL),(187,84,'AT','Attica',NULL,NULL,NULL,NULL,0,NULL),(188,84,'CN','Central Greece',NULL,NULL,NULL,NULL,0,NULL),(189,84,'CM','Central Macedonia',NULL,NULL,NULL,NULL,0,NULL),(190,84,'CR','Crete',NULL,NULL,NULL,NULL,0,NULL),(191,84,'EM','East Macedonia and Thrace',NULL,NULL,NULL,NULL,0,NULL),(192,84,'EP','Epirus',NULL,NULL,NULL,NULL,0,NULL),(193,84,'II','Ionian Islands',NULL,NULL,NULL,NULL,0,NULL),(194,84,'NA','North Aegean',NULL,NULL,NULL,NULL,0,NULL),(195,84,'PP','Peloponnesos',NULL,NULL,NULL,NULL,0,NULL),(196,84,'SA','South Aegean',NULL,NULL,NULL,NULL,0,NULL),(197,84,'TH','Thessaly',NULL,NULL,NULL,NULL,0,NULL),(198,84,'WG','West Greece',NULL,NULL,NULL,NULL,0,NULL),(199,84,'WM','West Macedonia',NULL,NULL,NULL,NULL,0,NULL),(200,204,'AG','Aargau',NULL,NULL,NULL,NULL,0,NULL),(201,204,'AI','Appenzell Innerrhoden',NULL,NULL,NULL,NULL,0,NULL),(202,204,'AR','Appenzell Ausserrhoden',NULL,NULL,NULL,NULL,0,NULL),(203,204,'BE','Bern',NULL,NULL,NULL,NULL,0,NULL),(204,204,'BL','Basel-Landschaft',NULL,NULL,NULL,NULL,0,NULL),(205,204,'BS','Basel-Stadt',NULL,NULL,NULL,NULL,0,NULL),(206,204,'FR','Freiburg',NULL,NULL,NULL,NULL,0,NULL),(207,204,'GE','Genf',NULL,NULL,NULL,NULL,0,NULL),(208,204,'GL','Glarus',NULL,NULL,NULL,NULL,0,NULL),(209,204,'JU','Graubünden',NULL,NULL,NULL,NULL,0,NULL),(210,204,'JU','Jura',NULL,NULL,NULL,NULL,0,NULL),(211,204,'LU','Luzern',NULL,NULL,NULL,NULL,0,NULL),(212,204,'NE','Neuenburg',NULL,NULL,NULL,NULL,0,NULL),(213,204,'NW','Nidwalden',NULL,NULL,NULL,NULL,0,NULL),(214,204,'OW','Obwalden',NULL,NULL,NULL,NULL,0,NULL),(215,204,'SG','St. Gallen',NULL,NULL,NULL,NULL,0,NULL),(216,204,'SH','Schaffhausen',NULL,NULL,NULL,NULL,0,NULL),(217,204,'SO','Solothurn',NULL,NULL,NULL,NULL,0,NULL),(218,204,'SZ','Schwyz',NULL,NULL,NULL,NULL,0,NULL),(219,204,'TG','Thurgau',NULL,NULL,NULL,NULL,0,NULL),(220,204,'TI','Tessin',NULL,NULL,NULL,NULL,0,NULL),(221,204,'UR','Uri',NULL,NULL,NULL,NULL,0,NULL),(222,204,'VD','Waadt',NULL,NULL,NULL,NULL,0,NULL),(223,204,'VS','Wallis',NULL,NULL,NULL,NULL,0,NULL),(224,204,'ZG','Zug',NULL,NULL,NULL,NULL,0,NULL),(225,204,'ZH','Zürich',NULL,NULL,NULL,NULL,0,NULL),(226,195,'A Coruña','A Coruña',NULL,NULL,NULL,NULL,0,NULL),(227,195,'Alava','Alava',NULL,NULL,NULL,NULL,0,NULL),(228,195,'Albacete','Albacete',NULL,NULL,NULL,NULL,0,NULL),(229,195,'Alicante','Alicante',NULL,NULL,NULL,NULL,0,NULL),(230,195,'Almeria','Almeria',NULL,NULL,NULL,NULL,0,NULL),(231,195,'Asturias','Asturias',NULL,NULL,NULL,NULL,0,NULL),(232,195,'Avila','Avila',NULL,NULL,NULL,NULL,0,NULL),(233,195,'Badajoz','Badajoz',NULL,NULL,NULL,NULL,0,NULL),(234,195,'Baleares','Baleares',NULL,NULL,NULL,NULL,0,NULL),(235,195,'Barcelona','Barcelona',NULL,NULL,NULL,NULL,0,NULL),(236,195,'Burgos','Burgos',NULL,NULL,NULL,NULL,0,NULL),(237,195,'Caceres','Caceres',NULL,NULL,NULL,NULL,0,NULL),(238,195,'Cadiz','Cadiz',NULL,NULL,NULL,NULL,0,NULL),(239,195,'Cantabria','Cantabria',NULL,NULL,NULL,NULL,0,NULL),(240,195,'Castellon','Castellon',NULL,NULL,NULL,NULL,0,NULL),(241,195,'Ceuta','Ceuta',NULL,NULL,NULL,NULL,0,NULL),(242,195,'Ciudad Real','Ciudad Real',NULL,NULL,NULL,NULL,0,NULL),(243,195,'Cordoba','Cordoba',NULL,NULL,NULL,NULL,0,NULL),(244,195,'Cuenca','Cuenca',NULL,NULL,NULL,NULL,0,NULL),(245,195,'Girona','Girona',NULL,NULL,NULL,NULL,0,NULL),(246,195,'Granada','Granada',NULL,NULL,NULL,NULL,0,NULL),(247,195,'Guadalajara','Guadalajara',NULL,NULL,NULL,NULL,0,NULL),(248,195,'Guipuzcoa','Guipuzcoa',NULL,NULL,NULL,NULL,0,NULL),(249,195,'Huelva','Huelva',NULL,NULL,NULL,NULL,0,NULL),(250,195,'Huesca','Huesca',NULL,NULL,NULL,NULL,0,NULL),(251,195,'Jaen','Jaen',NULL,NULL,NULL,NULL,0,NULL),(252,195,'La Rioja','La Rioja',NULL,NULL,NULL,NULL,0,NULL),(253,195,'Las Palmas','Las Palmas',NULL,NULL,NULL,NULL,0,NULL),(254,195,'Leon','Leon',NULL,NULL,NULL,NULL,0,NULL),(255,195,'Lleida','Lleida',NULL,NULL,NULL,NULL,0,NULL),(256,195,'Lugo','Lugo',NULL,NULL,NULL,NULL,0,NULL),(257,195,'Madrid','Madrid',NULL,NULL,NULL,NULL,0,NULL),(258,195,'Malaga','Malaga',NULL,NULL,NULL,NULL,0,NULL),(259,195,'Melilla','Melilla',NULL,NULL,NULL,NULL,0,NULL),(260,195,'Murcia','Murcia',NULL,NULL,NULL,NULL,0,NULL),(261,195,'Navarra','Navarra',NULL,NULL,NULL,NULL,0,NULL),(262,195,'Ourense','Ourense',NULL,NULL,NULL,NULL,0,NULL),(263,195,'Palencia','Palencia',NULL,NULL,NULL,NULL,0,NULL),(264,195,'Pontevedra','Pontevedra',NULL,NULL,NULL,NULL,0,NULL),(265,195,'Salamanca','Salamanca',NULL,NULL,NULL,NULL,0,NULL),(266,195,'Santa Cruz de Tenerife','Santa Cruz de Tenerife',NULL,NULL,NULL,NULL,0,NULL),(267,195,'Segovia','Segovia',NULL,NULL,NULL,NULL,0,NULL),(268,195,'Sevilla','Sevilla',NULL,NULL,NULL,NULL,0,NULL),(269,195,'Soria','Soria',NULL,NULL,NULL,NULL,0,NULL),(270,195,'Tarragona','Tarragona',NULL,NULL,NULL,NULL,0,NULL),(271,195,'Teruel','Teruel',NULL,NULL,NULL,NULL,0,NULL),(272,195,'Toledo','Toledo',NULL,NULL,NULL,NULL,0,NULL),(273,195,'Valencia','Valencia',NULL,NULL,NULL,NULL,0,NULL),(274,195,'Valladolid','Valladolid',NULL,NULL,NULL,NULL,0,NULL),(275,195,'Vizcaya','Vizcaya',NULL,NULL,NULL,NULL,0,NULL),(276,195,'Zamora','Zamora',NULL,NULL,NULL,NULL,0,NULL),(277,195,'Zaragoza','Zaragoza',NULL,NULL,NULL,NULL,0,NULL),(278,215,'ADA','Adana',NULL,NULL,NULL,NULL,0,NULL),(279,215,'ADI','Adiyaman',NULL,NULL,NULL,NULL,0,NULL),(280,215,'AFY','Afyonkarahisar',NULL,NULL,NULL,NULL,0,NULL),(281,215,'AGR','Agri',NULL,NULL,NULL,NULL,0,NULL),(282,215,'AKS','Aksaray',NULL,NULL,NULL,NULL,0,NULL),(283,215,'AMA','Amasya',NULL,NULL,NULL,NULL,0,NULL),(284,215,'ANK','Ankara',NULL,NULL,NULL,NULL,0,NULL),(285,215,'ANT','Antalya',NULL,NULL,NULL,NULL,0,NULL),(286,215,'ARD','Ardahan',NULL,NULL,NULL,NULL,0,NULL),(287,215,'ART','Artvin',NULL,NULL,NULL,NULL,0,NULL),(288,215,'AYI','Aydin',NULL,NULL,NULL,NULL,0,NULL),(289,215,'BAL','Balikesir',NULL,NULL,NULL,NULL,0,NULL),(290,215,'BAR','Bartin',NULL,NULL,NULL,NULL,0,NULL),(291,215,'BAT','Batman',NULL,NULL,NULL,NULL,0,NULL),(292,215,'BAY','Bayburt',NULL,NULL,NULL,NULL,0,NULL),(293,215,'BIL','Bilecik',NULL,NULL,NULL,NULL,0,NULL),(294,215,'BIN','Bingol',NULL,NULL,NULL,NULL,0,NULL),(295,215,'BIT','Bitlis',NULL,NULL,NULL,NULL,0,NULL),(296,215,'BOL','Bolu',NULL,NULL,NULL,NULL,0,NULL),(297,215,'BRD','Burdur',NULL,NULL,NULL,NULL,0,NULL),(298,215,'BRS','Bursa',NULL,NULL,NULL,NULL,0,NULL),(299,215,'CKL','Canakkale',NULL,NULL,NULL,NULL,0,NULL),(300,215,'CKR','Cankiri',NULL,NULL,NULL,NULL,0,NULL),(301,215,'COR','Corum',NULL,NULL,NULL,NULL,0,NULL),(302,215,'DEN','Denizli',NULL,NULL,NULL,NULL,0,NULL),(303,215,'DIY','Diyarbakir',NULL,NULL,NULL,NULL,0,NULL),(304,215,'DUZ','Duzce',NULL,NULL,NULL,NULL,0,NULL),(305,215,'EDI','Edirne',NULL,NULL,NULL,NULL,0,NULL),(306,215,'ELA','Elazig',NULL,NULL,NULL,NULL,0,NULL),(307,215,'EZC','Erzincan',NULL,NULL,NULL,NULL,0,NULL),(308,215,'EZR','Erzurum',NULL,NULL,NULL,NULL,0,NULL),(309,215,'ESK','Eskisehir',NULL,NULL,NULL,NULL,0,NULL),(310,215,'GAZ','Gaziantep',NULL,NULL,NULL,NULL,0,NULL),(311,215,'GIR','Giresun',NULL,NULL,NULL,NULL,0,NULL),(312,215,'GMS','Gumushane',NULL,NULL,NULL,NULL,0,NULL),(313,215,'HKR','Hakkari',NULL,NULL,NULL,NULL,0,NULL),(314,215,'HTY','Hatay',NULL,NULL,NULL,NULL,0,NULL),(315,215,'IGD','Igdir',NULL,NULL,NULL,NULL,0,NULL),(316,215,'ISP','Isparta',NULL,NULL,NULL,NULL,0,NULL),(317,215,'IST','Istanbul',NULL,NULL,NULL,NULL,0,NULL),(318,215,'IZM','Izmir',NULL,NULL,NULL,NULL,0,NULL),(319,215,'KAH','Kahramanmaras',NULL,NULL,NULL,NULL,0,NULL),(320,215,'KRB','Karabuk',NULL,NULL,NULL,NULL,0,NULL),(321,215,'KRM','Karaman',NULL,NULL,NULL,NULL,0,NULL),(322,215,'KRS','Kars',NULL,NULL,NULL,NULL,0,NULL),(323,215,'KAS','Kastamonu',NULL,NULL,NULL,NULL,0,NULL),(324,215,'KAY','Kayseri',NULL,NULL,NULL,NULL,0,NULL),(325,215,'KLS','Kilis',NULL,NULL,NULL,NULL,0,NULL),(326,215,'KRK','Kirikkale',NULL,NULL,NULL,NULL,0,NULL),(327,215,'KLR','Kirklareli',NULL,NULL,NULL,NULL,0,NULL),(328,215,'KRH','Kirsehir',NULL,NULL,NULL,NULL,0,NULL),(329,215,'KOC','Kocaeli',NULL,NULL,NULL,NULL,0,NULL),(330,215,'KON','Konya',NULL,NULL,NULL,NULL,0,NULL),(331,215,'KUT','Kutahya',NULL,NULL,NULL,NULL,0,NULL),(332,215,'MAL','Malatya',NULL,NULL,NULL,NULL,0,NULL),(333,215,'MAN','Manisa',NULL,NULL,NULL,NULL,0,NULL),(334,215,'MAR','Mardin',NULL,NULL,NULL,NULL,0,NULL),(335,215,'MER','Mersin',NULL,NULL,NULL,NULL,0,NULL),(336,215,'MUG','Mugla',NULL,NULL,NULL,NULL,0,NULL),(337,215,'MUS','Mus',NULL,NULL,NULL,NULL,0,NULL),(338,215,'NEV','Nevsehir',NULL,NULL,NULL,NULL,0,NULL),(339,215,'NIG','Nigde',NULL,NULL,NULL,NULL,0,NULL),(340,215,'ORD','Ordu',NULL,NULL,NULL,NULL,0,NULL),(341,215,'OSM','Osmaniye',NULL,NULL,NULL,NULL,0,NULL),(342,215,'RIZ','Rize',NULL,NULL,NULL,NULL,0,NULL),(343,215,'SAK','Sakarya',NULL,NULL,NULL,NULL,0,NULL),(344,215,'SAM','Samsun',NULL,NULL,NULL,NULL,0,NULL),(345,215,'SAN','Sanliurfa',NULL,NULL,NULL,NULL,0,NULL),(346,215,'SII','Siirt',NULL,NULL,NULL,NULL,0,NULL),(347,215,'SIN','Sinop',NULL,NULL,NULL,NULL,0,NULL),(348,215,'SIR','Sirnak',NULL,NULL,NULL,NULL,0,NULL),(349,215,'SIV','Sivas',NULL,NULL,NULL,NULL,0,NULL),(350,215,'TEL','Tekirdag',NULL,NULL,NULL,NULL,0,NULL),(351,215,'TOK','Tokat',NULL,NULL,NULL,NULL,0,NULL),(352,215,'TRA','Trabzon',NULL,NULL,NULL,NULL,0,NULL),(353,215,'TUN','Tunceli',NULL,NULL,NULL,NULL,0,NULL),(354,215,'USK','Usak',NULL,NULL,NULL,NULL,0,NULL),(355,215,'VAN','Van',NULL,NULL,NULL,NULL,0,NULL),(356,215,'YAL','Yalova',NULL,NULL,NULL,NULL,0,NULL),(357,215,'YOZ','Yozgat',NULL,NULL,NULL,NULL,0,NULL),(358,215,'ZON','Zonguldak',NULL,NULL,NULL,NULL,0,NULL),(359,222,'ABN','Aberdeen',NULL,NULL,NULL,NULL,0,NULL),(360,222,'ABNS','Aberdeenshire',NULL,NULL,NULL,NULL,0,NULL),(361,222,'ANG','Anglesey',NULL,NULL,NULL,NULL,0,NULL),(362,222,'AGS','Angus',NULL,NULL,NULL,NULL,0,NULL),(363,222,'ARY','Argyll and Bute',NULL,NULL,NULL,NULL,0,NULL),(364,222,'BEDS','Bedfordshire',NULL,NULL,NULL,NULL,0,NULL),(365,222,'BERKS','Berkshire',NULL,NULL,NULL,NULL,0,NULL),(366,222,'BLA','Blaenau Gwent',NULL,NULL,NULL,NULL,0,NULL),(367,222,'BRI','Bridgend',NULL,NULL,NULL,NULL,0,NULL),(368,222,'BSTL','Bristol',NULL,NULL,NULL,NULL,0,NULL),(369,222,'BUCKS','Buckinghamshire',NULL,NULL,NULL,NULL,0,NULL),(370,222,'CAE','Caerphilly',NULL,NULL,NULL,NULL,0,NULL),(371,222,'CAMBS','Cambridgeshire',NULL,NULL,NULL,NULL,0,NULL),(372,222,'CDF','Cardiff',NULL,NULL,NULL,NULL,0,NULL),(373,222,'CARM','Carmarthenshire',NULL,NULL,NULL,NULL,0,NULL),(374,222,'CDGN','Ceredigion',NULL,NULL,NULL,NULL,0,NULL),(375,222,'CHES','Cheshire',NULL,NULL,NULL,NULL,0,NULL),(376,222,'CLACK','Clackmannanshire',NULL,NULL,NULL,NULL,0,NULL),(377,222,'CON','Conwy',NULL,NULL,NULL,NULL,0,NULL),(378,222,'CORN','Cornwall',NULL,NULL,NULL,NULL,0,NULL),(379,222,'DNBG','Denbighshire',NULL,NULL,NULL,NULL,0,NULL),(380,222,'DERBY','Derbyshire',NULL,NULL,NULL,NULL,0,NULL),(381,222,'DVN','Devon',NULL,NULL,NULL,NULL,0,NULL),(382,222,'DOR','Dorset',NULL,NULL,NULL,NULL,0,NULL),(383,222,'DGL','Dumfries and Galloway',NULL,NULL,NULL,NULL,0,NULL),(384,222,'DUND','Dundee',NULL,NULL,NULL,NULL,0,NULL),(385,222,'DHM','Durham',NULL,NULL,NULL,NULL,0,NULL),(386,222,'ARYE','East Ayrshire',NULL,NULL,NULL,NULL,0,NULL),(387,222,'DUNBE','East Dunbartonshire',NULL,NULL,NULL,NULL,0,NULL),(388,222,'LOTE','East Lothian',NULL,NULL,NULL,NULL,0,NULL),(389,222,'RENE','East Renfrewshire',NULL,NULL,NULL,NULL,0,NULL),(390,222,'ERYS','East Riding of Yorkshire',NULL,NULL,NULL,NULL,0,NULL),(391,222,'SXE','East Sussex',NULL,NULL,NULL,NULL,0,NULL),(392,222,'EDIN','Edinburgh',NULL,NULL,NULL,NULL,0,NULL),(393,222,'ESX','Essex',NULL,NULL,NULL,NULL,0,NULL),(394,222,'FALK','Falkirk',NULL,NULL,NULL,NULL,0,NULL),(395,222,'FFE','Fife',NULL,NULL,NULL,NULL,0,NULL),(396,222,'FLINT','Flintshire',NULL,NULL,NULL,NULL,0,NULL),(397,222,'GLAS','Glasgow',NULL,NULL,NULL,NULL,0,NULL),(398,222,'GLOS','Gloucestershire',NULL,NULL,NULL,NULL,0,NULL),(399,222,'LDN','Greater London',NULL,NULL,NULL,NULL,0,NULL),(400,222,'MCH','Greater Manchester',NULL,NULL,NULL,NULL,0,NULL),(401,222,'GDD','Gwynedd',NULL,NULL,NULL,NULL,0,NULL),(402,222,'HANTS','Hampshire',NULL,NULL,NULL,NULL,0,NULL),(403,222,'HWR','Herefordshire',NULL,NULL,NULL,NULL,0,NULL),(404,222,'HERTS','Hertfordshire',NULL,NULL,NULL,NULL,0,NULL),(405,222,'HLD','Highlands',NULL,NULL,NULL,NULL,0,NULL),(406,222,'IVER','Inverclyde',NULL,NULL,NULL,NULL,0,NULL),(407,222,'IOW','Isle of Wight',NULL,NULL,NULL,NULL,0,NULL),(408,222,'KNT','Kent',NULL,NULL,NULL,NULL,0,NULL),(409,222,'LANCS','Lancashire',NULL,NULL,NULL,NULL,0,NULL),(410,222,'LEICS','Leicestershire',NULL,NULL,NULL,NULL,0,NULL),(411,222,'LINCS','Lincolnshire',NULL,NULL,NULL,NULL,0,NULL),(412,222,'MSY','Merseyside',NULL,NULL,NULL,NULL,0,NULL),(413,222,'MERT','Merthyr Tydfil',NULL,NULL,NULL,NULL,0,NULL),(414,222,'MLOT','Midlothian',NULL,NULL,NULL,NULL,0,NULL),(415,222,'MMOUTH','Monmouthshire',NULL,NULL,NULL,NULL,0,NULL),(416,222,'MORAY','Moray',NULL,NULL,NULL,NULL,0,NULL),(417,222,'NPRTAL','Neath Port Talbot',NULL,NULL,NULL,NULL,0,NULL),(418,222,'NEWPT','Newport',NULL,NULL,NULL,NULL,0,NULL),(419,222,'NOR','Norfolk',NULL,NULL,NULL,NULL,0,NULL),(420,222,'ARYN','North Ayrshire',NULL,NULL,NULL,NULL,0,NULL),(421,222,'LANN','North Lanarkshire',NULL,NULL,NULL,NULL,0,NULL),(422,222,'YSN','North Yorkshire',NULL,NULL,NULL,NULL,0,NULL),(423,222,'NHM','Northamptonshire',NULL,NULL,NULL,NULL,0,NULL),(424,222,'NLD','Northumberland',NULL,NULL,NULL,NULL,0,NULL),(425,222,'NOT','Nottinghamshire',NULL,NULL,NULL,NULL,0,NULL),(426,222,'ORK','Orkney Islands',NULL,NULL,NULL,NULL,0,NULL),(427,222,'OFE','Oxfordshire',NULL,NULL,NULL,NULL,0,NULL),(428,222,'PEM','Pembrokeshire',NULL,NULL,NULL,NULL,0,NULL),(429,222,'PERTH','Perth and Kinross',NULL,NULL,NULL,NULL,0,NULL),(430,222,'PWS','Powys',NULL,NULL,NULL,NULL,0,NULL),(431,222,'REN','Renfrewshire',NULL,NULL,NULL,NULL,0,NULL),(432,222,'RHON','Rhondda Cynon Taff',NULL,NULL,NULL,NULL,0,NULL),(433,222,'RUT','Rutland',NULL,NULL,NULL,NULL,0,NULL),(434,222,'BOR','Scottish Borders',NULL,NULL,NULL,NULL,0,NULL),(435,222,'SHET','Shetland Islands',NULL,NULL,NULL,NULL,0,NULL),(436,222,'SPE','Shropshire',NULL,NULL,NULL,NULL,0,NULL),(437,222,'SOM','Somerset',NULL,NULL,NULL,NULL,0,NULL),(438,222,'ARYS','South Ayrshire',NULL,NULL,NULL,NULL,0,NULL),(439,222,'LANS','South Lanarkshire',NULL,NULL,NULL,NULL,0,NULL),(440,222,'YSS','South Yorkshire',NULL,NULL,NULL,NULL,0,NULL),(441,222,'SFD','Staffordshire',NULL,NULL,NULL,NULL,0,NULL),(442,222,'STIR','Stirling',NULL,NULL,NULL,NULL,0,NULL),(443,222,'SFK','Suffolk',NULL,NULL,NULL,NULL,0,NULL),(444,222,'SRY','Surrey',NULL,NULL,NULL,NULL,0,NULL),(445,222,'SWAN','Swansea',NULL,NULL,NULL,NULL,0,NULL),(446,222,'TORF','Torfaen',NULL,NULL,NULL,NULL,0,NULL),(447,222,'TWR','Tyne and Wear',NULL,NULL,NULL,NULL,0,NULL),(448,222,'VGLAM','Vale of Glamorgan',NULL,NULL,NULL,NULL,0,NULL),(449,222,'WARKS','Warwickshire',NULL,NULL,NULL,NULL,0,NULL),(450,222,'WDUN','West Dunbartonshire',NULL,NULL,NULL,NULL,0,NULL),(451,222,'WLOT','West Lothian',NULL,NULL,NULL,NULL,0,NULL),(452,222,'WMD','West Midlands',NULL,NULL,NULL,NULL,0,NULL),(453,222,'SXW','West Sussex',NULL,NULL,NULL,NULL,0,NULL),(454,222,'YSW','West Yorkshire',NULL,NULL,NULL,NULL,0,NULL),(455,222,'WIL','Western Isles',NULL,NULL,NULL,NULL,0,NULL),(456,222,'WLT','Wiltshire',NULL,NULL,NULL,NULL,0,NULL),(457,222,'WORCS','Worcestershire',NULL,NULL,NULL,NULL,0,NULL),(458,222,'WRX','Wrexham',NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zones_to_geo_zones`
--

DROP TABLE IF EXISTS `zones_to_geo_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`association_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zones_to_geo_zones`
--

LOCK TABLES `zones_to_geo_zones` WRITE;
/*!40000 ALTER TABLE `zones_to_geo_zones` DISABLE KEYS */;
INSERT INTO `zones_to_geo_zones` VALUES (1,223,18,1,'2015-10-07 00:58:04','2015-10-07 00:58:04',NULL);
/*!40000 ALTER TABLE `zones_to_geo_zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-06 21:58:53
