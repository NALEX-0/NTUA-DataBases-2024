-- Adminer 4.8.1 MySQL 5.5.5-10.8.3-MariaDB-1:10.8.3+maria~jammy dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DELIMITER ;;

DROP PROCEDURE IF EXISTS `AddChef`;;
CREATE PROCEDURE `AddChef`(IN `p_first_name` varchar(45), IN `p_last_name` varchar(45), IN `p_age` int, IN `p_email` varchar(60), IN `p_phone` varchar(20), IN `p_years_of_experience` int, IN `p_chef_level` varchar(20), IN `p_image_URL` text)
BEGIN
    IF (LENGTH(p_phone) != 10) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Phone number must be 10 digits';
    END IF;

    IF (p_email NOT LIKE '%@%') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid email format';
    END IF;

    -- Additional validations can be added here

    -- Inserting the chef if validations pass
    INSERT INTO chef (first_name, last_name, age, email, phone, years_of_experience, chef_level, image_URL)
    VALUES (p_first_name, p_last_name, p_age, p_email, p_phone, p_years_of_experience, p_chef_level, p_image_URL);
END;;

DROP PROCEDURE IF EXISTS `AddRecipe`;;
CREATE PROCEDURE `AddRecipe`(IN `p_name` varchar(45), IN `p_short_description` text, IN `p_basic_ingredient` varchar(45), IN `p_national_cuisine` varchar(20), IN `p_difficulty_level` varchar(20), IN `p_portions` int, IN `p_cooking_time` int, IN `p_preparation_time` int, IN `p_image_URL` text)
BEGIN
    DECLARE basic_ingredient_id INT DEFAULT NULL;
    DECLARE national_cuisine_id INT DEFAULT NULL;

    -- Check and insert basic ingredient if it does not exist
    SELECT id INTO basic_ingredient_id FROM ingredient WHERE name = p_basic_ingredient;
    IF basic_ingredient_id IS NULL THEN
        INSERT INTO ingredient (name) VALUES (p_basic_ingredient);
        SET basic_ingredient_id = LAST_INSERT_ID();
    END IF;

    -- Check and insert national cuisine if it does not exist
    SELECT id INTO national_cuisine_id FROM national_cuisine WHERE name = p_national_cuisine;
    IF national_cuisine_id IS NULL THEN
        INSERT INTO national_cuisine (name) VALUES (p_national_cuisine);
        SET national_cuisine_id = LAST_INSERT_ID();
    END IF;

    -- Insert the recipe into the chefs table
    INSERT INTO recipes (name, short_description, basic_ingredient_id, national_cuisine_id, difficulty_level, portions, cooking_time, preparation_time, image_URL)
    VALUES (p_name, p_short_description, basic_ingredient_id, national_cuisine_id, p_difficulty_level, p_portions, p_cooking_time, p_preparation_time, p_image_URL);
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
  `date_of_birth` date DEFAULT NULL,
  `years_of_experience` tinyint(4) NOT NULL,
  `chef_level` enum('A chef','B chef','C chef','Chef Assistant','Master chef') DEFAULT NULL,
  `image_URL` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP VIEW IF EXISTS `chef_view`;
CREATE TABLE `chef_view` (`ID` int(11), `Name` varchar(91), `Age` int(11), `Email` varchar(60), `Phone` varchar(11));


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
  `image_URL` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `usage_instructions` text NOT NULL,
  `image_URL` text DEFAULT NULL,
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
  `description` text NOT NULL,
  `image_URL` text NOT NULL,
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
  `food_group_id` int(11) DEFAULT NULL,
  `image_URL` text DEFAULT NULL,
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


DROP VIEW IF EXISTS `knows_view`;
CREATE TABLE `knows_view` (`chef_id` int(11), `recipe_id` int(11), `recipe_name` varchar(45), `basic_ingredient` varchar(45), `national_cuisine` varchar(45));


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
  `name` varchar(45) NOT NULL,
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
  `carbohydrates_per_100` float NOT NULL,
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


DROP TABLE IF EXISTS `recipes`;
CREATE TABLE `recipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `short_description` text DEFAULT NULL,
  `basic_ingredient_id` int(11) NOT NULL,
  `national_cuisine_id` int(11) NOT NULL,
  `difficulty_level` varchar(20) NOT NULL,
  `portions` int(11) DEFAULT NULL,
  `cooking_time` int(11) NOT NULL,
  `preparation_time` int(11) NOT NULL,
  `image_URL` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `API_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `basic_ingredient_id` (`basic_ingredient_id`),
  KEY `national_cuisine_id` (`national_cuisine_id`),
  CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`basic_ingredient_id`) REFERENCES `ingredient` (`id`),
  CONSTRAINT `recipes_ibfk_2` FOREIGN KEY (`national_cuisine_id`) REFERENCES `national_cuisine` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `recipes_themes`;
CREATE TABLE `recipes_themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `themes_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`recipe_id`),
  KEY `themes_id` (`themes_id`),
  CONSTRAINT `recipes_themes_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  CONSTRAINT `recipes_themes_ibfk_2` FOREIGN KEY (`themes_id`) REFERENCES `themes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP VIEW IF EXISTS `recipes_view`;
CREATE TABLE `recipes_view` (`ID` int(11), `Name` varchar(45), `Description` text, `Basic Ingredient` varchar(45), `National Cuisine` varchar(45), `Difficulty Level` varchar(20), `Portions` int(11), `Cooking Time` int(11), `Preparation Time` int(11));


DROP TABLE IF EXISTS `recipe_labels`;
CREATE TABLE `recipe_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `labels_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `labels_id` (`labels_id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `recipe_labels_ibfk_1` FOREIGN KEY (`labels_id`) REFERENCES `labels` (`id`),
  CONSTRAINT `recipe_labels_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `recipe_meal_type`;
CREATE TABLE `recipe_meal_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `meal_type_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`recipe_id`),
  KEY `meal_type_id` (`meal_type_id`),
  CONSTRAINT `recipe_meal_type_ibfk_3` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  CONSTRAINT `recipe_meal_type_ibfk_4` FOREIGN KEY (`meal_type_id`) REFERENCES `meal_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP VIEW IF EXISTS `recipe_nut_info`;
CREATE TABLE `recipe_nut_info` (`recipe_id` int(11), `recipe_name` varchar(45), `calories` double(19,2), `proteins` double(19,2), `fat` double(19,2), `carbohydrates` double(19,2));


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


DROP TABLE IF EXISTS `chef_view`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `chef_view` AS select `chef`.`id` AS `ID`,concat(`chef`.`first_name`,' ',`chef`.`last_name`) AS `Name`,`chef`.`age` AS `Age`,`chef`.`email` AS `Email`,`chef`.`phone` AS `Phone` from `chef`;

DROP TABLE IF EXISTS `knows_view`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `knows_view` AS select `c`.`chef_id` AS `chef_id`,`n`.`id` AS `recipe_id`,`n`.`name` AS `recipe_name`,`ingredient`.`name` AS `basic_ingredient`,`national_cuisine`.`name` AS `national_cuisine` from (((`specializes` `c` join `recipes` `n` on(`c`.`national_cuisine_id` = `n`.`national_cuisine_id`)) join `ingredient` on(`n`.`basic_ingredient_id` = `ingredient`.`id`)) join `national_cuisine` on(`n`.`national_cuisine_id` = `national_cuisine`.`id`));

DROP TABLE IF EXISTS `recipes_view`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `recipes_view` AS select `recipes`.`id` AS `ID`,`recipes`.`name` AS `Name`,`recipes`.`short_description` AS `Description`,`ingredient`.`name` AS `Basic Ingredient`,`national_cuisine`.`name` AS `National Cuisine`,`recipes`.`difficulty_level` AS `Difficulty Level`,`recipes`.`portions` AS `Portions`,`recipes`.`cooking_time` AS `Cooking Time`,`recipes`.`preparation_time` AS `Preparation Time` from ((`recipes` join `ingredient` on(`recipes`.`basic_ingredient_id` = `ingredient`.`id`)) join `national_cuisine` on(`recipes`.`national_cuisine_id` = `national_cuisine`.`id`));

DROP TABLE IF EXISTS `recipe_nut_info`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `recipe_nut_info` AS select `i`.`recipe_id` AS `recipe_id`,`r`.`name` AS `recipe_name`,round(sum(`n`.`calories_per_100` * `i`.`quantity` * `u`.`quantity` / 100),2) AS `calories`,round(sum(`n`.`proteins_per_100` * `i`.`quantity` * `u`.`quantity` / 100),2) AS `proteins`,round(sum(`n`.`fat_per_100` * `i`.`quantity` * `u`.`quantity` / 100),2) AS `fat`,round(sum(`n`.`carbohydrates_per_100` * `i`.`quantity` * `u`.`quantity` / 100),2) AS `carbohydrates` from (((`ingredient_quantities` `i` join `nutritional_info` `n` on(`i`.`ingredient_id` = `n`.`ingredient_id`)) join `unit_conversions` `u` on(`u`.`measurement_unit` = `i`.`unit`)) join `recipes` `r` on(`i`.`recipe_id` = `r`.`id`)) group by `i`.`recipe_id`,`r`.`name`;

-- 2024-05-18 15:33:13
