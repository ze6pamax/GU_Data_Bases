CREATE TABLE `home_airports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `airport_name` varchar(255) NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `airport_name_uk` (`airport_name`)
);

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
);

CREATE TABLE `profile_info` (
  `account_id` int(10) unsigned NOT NULL,
  `username` varchar(255) NOT NULL,
  `current_city_id` int(10) unsigned NOT NULL,  
  UNIQUE KEY `username_uk` (`username`)
);

CREATE TABLE `hotels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `hotel_amenty_id` int(10) unsigned NOT NULL,
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
  `hotel_cert` boolean NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

CREATE TABLE `hotels_amenties` (
  `hotel_id` int(10) unsigned NOT NULL,
  `amenties_hotel_id` int(10) unsigned NOT NULL
);

CREATE TABLE `hotels_languages` (
  `hotel_id` int(10) unsigned NOT NULL,
  `language_spoken_id` int(10) unsigned NOT NULL
);

CREATE TABLE `hotels_rooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hotel_id` int(10) unsigned NOT NULL,
  `room_category_id` int(10) unsigned NOT NULL, 
  `rooms_nr` int(10) NOT NULL,
  `avgprice` float(2) NOT NULL,
  `adults_nr` int(10) NOT NULL,
  `children_nr` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `room_types` (
  `hotel_room_id` int(10) unsigned NOT NULL,
  `amenties_room_id` int(10) unsigned NOT NULL
);

CREATE TABLE `booking_service_hotels` (
  `hotel_id` int(10) unsigned NOT NULL,
  `booking_service_id` int(10) unsigned NOT NULL
);

CREATE TABLE `hotels_reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `hotel_id` int(10) unsigned NOT NULL,
  `hotel_rate` ENUM('Excellent', 'Very Good', 'Average', 'Poor', 'Terrible'),
  `review_title` varchar(50) NOT NULL,
  `review_body` varchar(255) NOT NULL,
  `sort_of_trip` ENUM('Families', 'Couples', 'Solo', 'Business', 'Friends'),  
  `location_rate` ENUM('Excellent', 'Very Good', 'Average', 'Poor', 'Terrible'),  
  `room_rate` ENUM('Excellent', 'Very Good', 'Average', 'Poor', 'Terrible'), 
  `service_rate` ENUM('Excellent', 'Very Good', 'Average', 'Poor', 'Terrible'),
  `expression_hotel` ENUM('Budget', 'Luxary', 'Mid-range'),
  `tip_for_traveller` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

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
);
    
CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hotel_review_id` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
);
