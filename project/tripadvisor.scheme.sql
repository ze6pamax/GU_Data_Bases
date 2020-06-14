-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: tripadvisor
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `account_info`
--

DROP TABLE IF EXISTS `account_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `home_airport_id` int(10) unsigned NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `amenties_rooms`
--

DROP TABLE IF EXISTS `amenties_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amenties_rooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `booking_service_hotels`
--

DROP TABLE IF EXISTS `booking_service_hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_service_hotels` (
  `hotel_id` int(10) unsigned NOT NULL,
  `booking_service_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `booking_services`
--

DROP TABLE IF EXISTS `booking_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `countries_rating`
--

DROP TABLE IF EXISTS `countries_rating`;
/*!50001 DROP VIEW IF EXISTS `countries_rating`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `countries_rating` AS SELECT 
 1 AS `country_name`,
 1 AS `Total`,
 1 AS `Excellent(sorted desc)`,
 1 AS `Very_Good`,
 1 AS `Average`,
 1 AS `Poor`,
 1 AS `Terrible`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `deals`
--

DROP TABLE IF EXISTS `deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `home_airports`
--

DROP TABLE IF EXISTS `home_airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_airports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `airport_name` varchar(255) NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `airport_name_uk` (`airport_name`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hotel_amenties`
--

DROP TABLE IF EXISTS `hotel_amenties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_amenties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hotel_classes`
--

DROP TABLE IF EXISTS `hotel_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `hotel_info`
--

DROP TABLE IF EXISTS `hotel_info`;
/*!50001 DROP VIEW IF EXISTS `hotel_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `hotel_info` AS SELECT 
 1 AS `Country`,
 1 AS `City`,
 1 AS `Hotel Name`,
 1 AS `Address`,
 1 AS `Phone`,
 1 AS `Web-site`,
 1 AS `Email`,
 1 AS `Hotel service`,
 1 AS `Hotel type`,
 1 AS `Hotel class`,
 1 AS `Hotel style`,
 1 AS `Hotel Certificate`,
 1 AS `Average Price per night`,
 1 AS `On Tripadvisor since`,
 1 AS `Nr of Reviews`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `hotel_property_types`
--

DROP TABLE IF EXISTS `hotel_property_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_property_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hotel_styles`
--

DROP TABLE IF EXISTS `hotel_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `web_site` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `deal_id` int(10) unsigned NOT NULL,
  `property_type_id` int(10) unsigned NOT NULL,
  `hotel_class_id` int(10) unsigned NOT NULL,
  `hotel_style_id` int(10) unsigned NOT NULL,
  `hotel_cert` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `hotel_amenty_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deals_deal_id_fk` (`deal_id`),
  KEY `hotel_classes_hotel_classe_id_fk` (`hotel_class_id`),
  KEY `hotel_styles_hotel_style_id_fk` (`hotel_style_id`),
  KEY `hotel_property_types_property_type_id_fk` (`property_type_id`),
  KEY `cities_hotels_city_id_fk` (`city_id`),
  KEY `countries_hotels_country_id_fk` (`country_id`),
  CONSTRAINT `hotels_ibfk_1` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`),
  CONSTRAINT `hotels_ibfk_2` FOREIGN KEY (`hotel_class_id`) REFERENCES `hotel_classes` (`id`),
  CONSTRAINT `hotels_ibfk_3` FOREIGN KEY (`hotel_style_id`) REFERENCES `hotel_styles` (`id`),
  CONSTRAINT `hotels_ibfk_4` FOREIGN KEY (`property_type_id`) REFERENCES `hotel_property_types` (`id`),
  CONSTRAINT `hotels_ibfk_5` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `hotels_ibfk_6` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hotels_amenties`
--

DROP TABLE IF EXISTS `hotels_amenties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels_amenties` (
  `hotel_id` int(10) unsigned NOT NULL,
  `amenties_hotel_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hotels_languages`
--

DROP TABLE IF EXISTS `hotels_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels_languages` (
  `hotel_id` int(10) unsigned NOT NULL,
  `language_spoken_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hotels_reviews`
--

DROP TABLE IF EXISTS `hotels_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels_reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `hotel_id` int(10) unsigned NOT NULL,
  `hotel_rate` enum('Excellent','Very Good','Average','Poor','Terrible') DEFAULT NULL,
  `review_title` varchar(50) NOT NULL,
  `review_body` varchar(255) NOT NULL,
  `sort_of_trip` enum('Families','Couples','Solo','Business','Friends') DEFAULT NULL,
  `location_rate` enum('Excellent','Very Good','Average','Poor','Terrible') DEFAULT NULL,
  `room_rate` enum('Excellent','Very Good','Average','Poor','Terrible') DEFAULT NULL,
  `service_rate` enum('Excellent','Very Good','Average','Poor','Terrible') DEFAULT NULL,
  `expression_hotel` enum('Budget','Luxary','Mid-range') DEFAULT NULL,
  `tip_for_traveller` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10016 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`zebramax`@`localhost`*/ /*!50003 trigger hotel_cert_changing
    after insert on hotels_reviews
    for each row 
    begin    
    declare total_reviews int;
    declare bad_reviews int;
    select count(id) into total_reviews from hotels_reviews where hotel_id=new.hotel_id;
    select count(id) into bad_reviews from hotels_reviews where hotel_id=new.hotel_id and hotel_rate in ('Poor','Terrible');
    if bad_reviews > total_reviews/2 then
    update hotels set hotel_cert=0 where id=new.hotel_id;
    end if;
    if bad_reviews < total_reviews/2 then
    update hotels set hotel_cert=1 where id=new.hotel_id;
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `hotels_rooms`
--

DROP TABLE IF EXISTS `hotels_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels_rooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hotel_id` int(10) unsigned NOT NULL,
  `room_category_id` int(10) unsigned NOT NULL,
  `rooms_nr` int(10) NOT NULL,
  `avgprice` float NOT NULL,
  `adults_nr` int(10) NOT NULL,
  `children_nr` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `languages_spoken`
--

DROP TABLE IF EXISTS `languages_spoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages_spoken` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hotel_review_id` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `photo_desc` varchar(255) NOT NULL,
  `attached_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `location_tag` varchar(20) NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `hotel_id` int(10) unsigned NOT NULL,
  `hotel_review_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profile_info`
--

DROP TABLE IF EXISTS `profile_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_info` (
  `account_id` int(10) unsigned NOT NULL,
  `username` varchar(255) NOT NULL,
  `current_city_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `username_uk` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `room_categories`
--

DROP TABLE IF EXISTS `room_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `room_types`
--

DROP TABLE IF EXISTS `room_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_types` (
  `hotel_room_id` int(10) unsigned NOT NULL,
  `amenties_room_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `countries_rating`
--

/*!50001 DROP VIEW IF EXISTS `countries_rating`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`zebramax`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `countries_rating` AS select `total_likes`.`country_name` AS `country_name`,`total_likes`.`Total` AS `Total`,`exl_likes`.`Excellent` AS `Excellent(sorted desc)`,`vergood_likes`.`Very_Good` AS `Very_Good`,`average_likes`.`Average` AS `Average`,`poor_likes`.`Poor` AS `Poor`,`terrible_likes`.`Terrible` AS `Terrible` from (((((((select `tripadvisor`.`countries`.`name` AS `country_name`,count(`tripadvisor`.`likes`.`id`) AS `Total` from (((`tripadvisor`.`likes` join `tripadvisor`.`hotels_reviews` on((`tripadvisor`.`likes`.`hotel_review_id` = `tripadvisor`.`hotels_reviews`.`id`))) join `tripadvisor`.`hotels` on((`tripadvisor`.`hotels`.`id` = `tripadvisor`.`hotels_reviews`.`hotel_id`))) join `tripadvisor`.`countries` on((`tripadvisor`.`hotels`.`country_id` = `tripadvisor`.`countries`.`id`))) group by `country_name`)) `total_likes` left join (select `tripadvisor`.`countries`.`name` AS `country_name`,count(`tripadvisor`.`likes`.`id`) AS `Excellent` from (((`tripadvisor`.`likes` join `tripadvisor`.`hotels_reviews` on((`tripadvisor`.`likes`.`hotel_review_id` = `tripadvisor`.`hotels_reviews`.`id`))) join `tripadvisor`.`hotels` on((`tripadvisor`.`hotels`.`id` = `tripadvisor`.`hotels_reviews`.`hotel_id`))) join `tripadvisor`.`countries` on((`tripadvisor`.`hotels`.`country_id` = `tripadvisor`.`countries`.`id`))) where (`tripadvisor`.`hotels_reviews`.`hotel_rate` = 'Excellent') group by `country_name`) `exl_likes` on((`total_likes`.`country_name` = `exl_likes`.`country_name`))) left join (select `tripadvisor`.`countries`.`name` AS `country_name`,count(`tripadvisor`.`likes`.`id`) AS `Very_Good` from (((`tripadvisor`.`likes` join `tripadvisor`.`hotels_reviews` on((`tripadvisor`.`likes`.`hotel_review_id` = `tripadvisor`.`hotels_reviews`.`id`))) join `tripadvisor`.`hotels` on((`tripadvisor`.`hotels`.`id` = `tripadvisor`.`hotels_reviews`.`hotel_id`))) join `tripadvisor`.`countries` on((`tripadvisor`.`hotels`.`country_id` = `tripadvisor`.`countries`.`id`))) where (`tripadvisor`.`hotels_reviews`.`hotel_rate` = 'Very Good') group by `country_name`) `vergood_likes` on((`total_likes`.`country_name` = `vergood_likes`.`country_name`))) left join (select `tripadvisor`.`countries`.`name` AS `country_name`,count(`tripadvisor`.`likes`.`id`) AS `Average` from (((`tripadvisor`.`likes` join `tripadvisor`.`hotels_reviews` on((`tripadvisor`.`likes`.`hotel_review_id` = `tripadvisor`.`hotels_reviews`.`id`))) join `tripadvisor`.`hotels` on((`tripadvisor`.`hotels`.`id` = `tripadvisor`.`hotels_reviews`.`hotel_id`))) join `tripadvisor`.`countries` on((`tripadvisor`.`hotels`.`country_id` = `tripadvisor`.`countries`.`id`))) where (`tripadvisor`.`hotels_reviews`.`hotel_rate` = 'Average') group by `country_name`) `average_likes` on((`total_likes`.`country_name` = `average_likes`.`country_name`))) left join (select `tripadvisor`.`countries`.`name` AS `country_name`,count(`tripadvisor`.`likes`.`id`) AS `Poor` from (((`tripadvisor`.`likes` join `tripadvisor`.`hotels_reviews` on((`tripadvisor`.`likes`.`hotel_review_id` = `tripadvisor`.`hotels_reviews`.`id`))) join `tripadvisor`.`hotels` on((`tripadvisor`.`hotels`.`id` = `tripadvisor`.`hotels_reviews`.`hotel_id`))) join `tripadvisor`.`countries` on((`tripadvisor`.`hotels`.`country_id` = `tripadvisor`.`countries`.`id`))) where (`tripadvisor`.`hotels_reviews`.`hotel_rate` = 'Poor') group by `country_name`) `poor_likes` on((`total_likes`.`country_name` = `poor_likes`.`country_name`))) left join (select `tripadvisor`.`countries`.`name` AS `country_name`,count(`tripadvisor`.`likes`.`id`) AS `Terrible` from (((`tripadvisor`.`likes` join `tripadvisor`.`hotels_reviews` on((`tripadvisor`.`likes`.`hotel_review_id` = `tripadvisor`.`hotels_reviews`.`id`))) join `tripadvisor`.`hotels` on((`tripadvisor`.`hotels`.`id` = `tripadvisor`.`hotels_reviews`.`hotel_id`))) join `tripadvisor`.`countries` on((`tripadvisor`.`hotels`.`country_id` = `tripadvisor`.`countries`.`id`))) where (`tripadvisor`.`hotels_reviews`.`hotel_rate` = 'Terrible') group by `country_name`) `terrible_likes` on((`total_likes`.`country_name` = `terrible_likes`.`country_name`))) order by `exl_likes`.`Excellent` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hotel_info`
--

/*!50001 DROP VIEW IF EXISTS `hotel_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`zebramax`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hotel_info` AS select `tripadvisor`.`countries`.`name` AS `Country`,`tripadvisor`.`cities`.`name` AS `City`,`tripadvisor`.`hotels`.`name` AS `Hotel Name`,concat(`tripadvisor`.`countries`.`name`,', ',`tripadvisor`.`cities`.`name`,', ',`tripadvisor`.`hotels`.`address`) AS `Address`,`tripadvisor`.`hotels`.`phone` AS `Phone`,`tripadvisor`.`hotels`.`web_site` AS `Web-site`,`tripadvisor`.`hotels`.`email` AS `Email`,`tripadvisor`.`deals`.`name` AS `Hotel service`,`tripadvisor`.`hotel_property_types`.`name` AS `Hotel type`,`tripadvisor`.`hotel_classes`.`name` AS `Hotel class`,`tripadvisor`.`hotel_styles`.`name` AS `Hotel style`,if((`tripadvisor`.`hotels`.`hotel_cert` = 0),'No','Yes') AS `Hotel Certificate`,concat(avg(`tripadvisor`.`hotels_rooms`.`avgprice`),' Rub.') AS `Average Price per night`,year(`tripadvisor`.`hotels`.`created_at`) AS `On Tripadvisor since`,`reviews`.`review_nr` AS `Nr of Reviews` from ((((((((`tripadvisor`.`hotels` join `tripadvisor`.`countries` on((`tripadvisor`.`countries`.`id` = `tripadvisor`.`hotels`.`country_id`))) join `tripadvisor`.`cities` on((`tripadvisor`.`cities`.`id` = `tripadvisor`.`hotels`.`city_id`))) join `tripadvisor`.`deals` on((`tripadvisor`.`deals`.`id` = `tripadvisor`.`hotels`.`deal_id`))) join `tripadvisor`.`hotel_property_types` on((`tripadvisor`.`hotel_property_types`.`id` = `tripadvisor`.`hotels`.`property_type_id`))) join `tripadvisor`.`hotel_classes` on((`tripadvisor`.`hotel_classes`.`id` = `tripadvisor`.`hotels`.`hotel_class_id`))) join `tripadvisor`.`hotel_styles` on((`tripadvisor`.`hotel_styles`.`id` = `tripadvisor`.`hotels`.`hotel_style_id`))) join (select `tripadvisor`.`hotels_reviews`.`hotel_id` AS `hotel_id`,count(`tripadvisor`.`hotels_reviews`.`id`) AS `review_nr` from (`tripadvisor`.`hotels_reviews` join `tripadvisor`.`hotels` on((`tripadvisor`.`hotels`.`id` = `tripadvisor`.`hotels_reviews`.`hotel_id`))) group by `tripadvisor`.`hotels_reviews`.`hotel_id`) `reviews` on((`reviews`.`hotel_id` = `tripadvisor`.`hotels`.`id`))) join `tripadvisor`.`hotels_rooms` on((`tripadvisor`.`hotels_rooms`.`hotel_id` = `tripadvisor`.`hotels`.`id`))) group by `tripadvisor`.`hotels`.`id` order by `reviews`.`review_nr` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-14 19:32:02
