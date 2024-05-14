-- Adminer 4.8.1 MySQL 5.5.5-10.8.3-MariaDB-1:10.8.3+maria~jammy dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DELIMITER ;;

DROP PROCEDURE IF EXISTS `InsertChefs`;;
CREATE PROCEDURE `InsertChefs`()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 150 DO
        INSERT INTO specializes (chef_id, national_cuisine_id) 
        VALUES (i, FLOOR(RAND() * 26) + 1);
        SET i = i + 1;
    END WHILE;
END;;

DELIMITER ;

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `assignments`;
CREATE TABLE `assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `episode_id` int(11) NOT NULL,
  `national_cuisine_id` int(11) NOT NULL,
  `chef_id` int(11) DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `episode_id` (`episode_id`),
  KEY `national_cuisine_id` (`national_cuisine_id`),
  KEY `chef_id` (`chef_id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`),
  CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`national_cuisine_id`) REFERENCES `national_cuisine` (`id`),
  CONSTRAINT `assignments_ibfk_3` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`id`),
  CONSTRAINT `assignments_ibfk_4` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `chef`;
CREATE TABLE `chef` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `years_of_experience` tinyint(4) NOT NULL,
  `chef_level` varchar(20) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `chef-recipes`;
CREATE TABLE `chef-recipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chef_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `chef_id` (`chef_id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `chef-recipes_ibfk_1` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`id`),
  CONSTRAINT `chef-recipes_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `contests`;
CREATE TABLE `contests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `episode_id` int(11) NOT NULL,
  `chef_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `episode_id` (`episode_id`),
  KEY `chef_id` (`chef_id`),
  CONSTRAINT `contests_ibfk_1` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`),
  CONSTRAINT `contests_ibfk_2` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `episodes`;
CREATE TABLE `episodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `season` varchar(5) NOT NULL,
  `episode` varchar(5) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `usage_instructions` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `equipment_requirements`;
CREATE TABLE `equipment_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `eq` (`equipment_id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `eq` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`id`),
  CONSTRAINT `equipment_requirements_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `food_group`;
CREATE TABLE `food_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `image_recipes`;
CREATE TABLE `image_recipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `image_URL` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `image_recipes_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE `ingredient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `food_group_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `food_group_id` (`food_group_id`),
  CONSTRAINT `Ingredient_ibfk_1` FOREIGN KEY (`food_group_id`) REFERENCES `food_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `ingredient_quantities`;
CREATE TABLE `ingredient_quantities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `unit` varchar(55) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `ingredient_id` (`ingredient_id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `ingredient_quantities_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  CONSTRAINT `ingredient_quantities_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `judges`;
CREATE TABLE `judges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `episode_id` int(11) NOT NULL,
  `chef_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `episode_id` (`episode_id`),
  KEY `chef_id` (`chef_id`),
  CONSTRAINT `judges_ibfk_1` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`),
  CONSTRAINT `judges_ibfk_2` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `labels`;
CREATE TABLE `labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `meal_type`;
CREATE TABLE `meal_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `national_cuisine`;
CREATE TABLE `national_cuisine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `national_cuisine` varchar(45) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `nutritional_info`;
CREATE TABLE `nutritional_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredient_id` int(11) NOT NULL,
  `calories_per_100` int(11) NOT NULL,
  `proteins_per_100` int(11) NOT NULL,
  `fat_per_100` int(11) NOT NULL,
  `?other_nutriants` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `ingredient_id` (`ingredient_id`),
  CONSTRAINT `Nutritional_info_ibfk_1` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judge_id` int(11) NOT NULL,
  `chef_id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `judge_id` (`judge_id`),
  KEY `chef_id` (`chef_id`),
  KEY `episode_id` (`episode_id`),
  CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`),
  CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`id`),
  CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `recipe-labels`;
CREATE TABLE `recipe-labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `labels_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `labels_id` (`labels_id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `recipe-labels_ibfk_1` FOREIGN KEY (`labels_id`) REFERENCES `labels` (`id`),
  CONSTRAINT `recipe-labels_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `recipe-meal_type`;
CREATE TABLE `recipe-meal_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `meal_type_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`recipe_id`),
  KEY `meal_type_id` (`meal_type_id`),
  CONSTRAINT `recipe-meal_type_ibfk_3` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  CONSTRAINT `recipe-meal_type_ibfk_4` FOREIGN KEY (`meal_type_id`) REFERENCES `meal_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `recipes`;
CREATE TABLE `recipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `short_description` text DEFAULT NULL,
  `basic_ingredient_id` int(11) NOT NULL,
  `national_cuisine_id` int(11) NOT NULL,
  `difficulty_level` text NOT NULL,
  `portions` int(11) DEFAULT NULL,
  `cooking_time` int(11) DEFAULT NULL,
  `preparation_time` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `API_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `basic_ingredient_id` (`basic_ingredient_id`),
  KEY `national_cuisine_id` (`national_cuisine_id`),
  CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`basic_ingredient_id`) REFERENCES `ingredient` (`id`),
  CONSTRAINT `recipes_ibfk_2` FOREIGN KEY (`national_cuisine_id`) REFERENCES `national_cuisine` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `recipes-themes`;
CREATE TABLE `recipes-themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `themes_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`recipe_id`),
  KEY `themes_id` (`themes_id`),
  CONSTRAINT `recipes-themes_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  CONSTRAINT `recipes-themes_ibfk_2` FOREIGN KEY (`themes_id`) REFERENCES `themes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `specializes`;
CREATE TABLE `specializes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chef_id` int(11) NOT NULL,
  `national_cuisine_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `chef_id` (`chef_id`),
  KEY `national_cuisine_id` (`national_cuisine_id`),
  CONSTRAINT `specializes_ibfk_1` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`id`),
  CONSTRAINT `specializes_ibfk_2` FOREIGN KEY (`national_cuisine_id`) REFERENCES `national_cuisine` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `steps`;
CREATE TABLE `steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `step_number` tinyint(4) NOT NULL,
  `step_description` text NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `steps_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `themes`;
CREATE TABLE `themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(45) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `tips`;
CREATE TABLE `tips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `tip` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `tips_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `unit_conversions`;
CREATE TABLE `unit_conversions` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `measurement_unit` varchar(15) NOT NULL,
  `quantity` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 2024-05-14 16:36:31
