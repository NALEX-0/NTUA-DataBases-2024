-- Adminer 4.8.1 MySQL 5.5.5-10.8.3-MariaDB-1:10.8.3+maria~jammy dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DELIMITER ;;

DROP PROCEDURE IF EXISTS `AddChef`;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddChef`(IN `p_first_name` VARCHAR(45), IN `p_last_name` VARCHAR(45), IN `p_age` INT, IN `p_email` VARCHAR(60), IN `p_phone` VARCHAR(20), IN `p_years_of_experience` INT, IN `p_chef_level` VARCHAR(20), IN `p_image_URL` TEXT)
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
    INSERT INTO chefs (first_name, last_name, age, email, phone, years_of_experience, chef_level, image_URL)
    VALUES (p_first_name, p_last_name, p_age, p_email, p_phone, p_years_of_experience, p_chef_level, p_image_URL);
END;;

DROP PROCEDURE IF EXISTS `AddRecipe`;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddRecipe`(IN `p_name` VARCHAR(45), IN `p_short_description` TEXT, IN `p_basic_ingredient` VARCHAR(45), IN `p_national_cuisine` VARCHAR(20), IN `p_difficulty_level` VARCHAR(20), IN `p_portions` INT, IN `p_cooking_time` INT, IN `p_preparation_time` INT, IN `p_image_URL` TEXT)
BEGIN
    DECLARE basic_ingredient_id INT DEFAULT NULL;
    DECLARE national_cuisine_id INT DEFAULT NULL;

    -- Check and insert basic ingredient if it does not exist
    SELECT id INTO basic_ingredient_id FROM ingredients WHERE name = p_basic_ingredient;
    IF basic_ingredient_id IS NULL THEN
        INSERT INTO ingredients (name) VALUES (p_basic_ingredient);
        SET basic_ingredient_id = LAST_INSERT_ID();
    END IF;

    -- Check and insert national cuisine if it does not exist
    SELECT id INTO national_cuisine_id FROM national_cuisines WHERE name = p_national_cuisine;
    IF national_cuisine_id IS NULL THEN
        INSERT INTO national_cuisines (name) VALUES (p_national_cuisine);
        SET national_cuisine_id = LAST_INSERT_ID();
    END IF;

    -- Insert the recipe into the chefs table
    INSERT INTO recipes (name, short_description, basic_ingredient_id, national_cuisine_id, difficulty_level, portions, cooking_time, preparation_time, image_URL)
    VALUES (p_name, p_short_description, basic_ingredient_id, national_cuisine_id, p_difficulty_level, p_portions, p_cooking_time, p_preparation_time, p_image_URL);
END;;

DROP PROCEDURE IF EXISTS `fill_assignments`;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fill_assignments`()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE chef_id INT;
    DECLARE episode_id INT;
    DECLARE recipe_id INT;
    DECLARE cuisine_id INT;
    DECLARE valid_assignment INT DEFAULT 0;
    DECLARE attempt_counter INT DEFAULT 0;
    DECLARE max_attempts INT DEFAULT 10;

    -- Declare a cursor to iterate through the contests table
    DECLARE contest_cursor CURSOR FOR 
    SELECT 
        c.chef_id,
        c.episode_id
    FROM 
        contests c;

    -- Declare a handler to set the done flag when the cursor reaches the end of the results
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN contest_cursor;

    -- Loop through each row in the contests table
    read_loop: LOOP
        FETCH contest_cursor INTO chef_id, episode_id;

        -- Exit the loop if no more rows
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Reset valid_assignment and attempt_counter for each chef and episode
        SET valid_assignment = 0;
        SET attempt_counter = 0;

        -- Loop to find a valid assignment
        find_valid_assignment:LOOP
            SET attempt_counter = attempt_counter + 1;
            IF attempt_counter > max_attempts THEN
                LEAVE find_valid_assignment;
            END IF;

            SELECT 
                r.id AS recipe_id,
                nc.id AS cuisine_id
            INTO 
                recipe_id,
                cuisine_id
            FROM
                knows k
            JOIN recipes r ON r.id = k.recipe_id
            JOIN national_cuisines nc ON nc.id = r.national_cuisine_id
            WHERE k.chef_id = chef_id
            ORDER BY RAND()
            LIMIT 1;

            -- Check if the selected cuisine is already present for the same episode
            IF NOT EXISTS (
                SELECT 1
                FROM assignments a
                WHERE a.episode_id = episode_id
                AND a.national_cuisine_id = cuisine_id
            ) THEN
                SET valid_assignment = 1;
                LEAVE find_valid_assignment;
            END IF;
        END LOOP;

        -- Insert the valid assignment into the assignments table
        IF valid_assignment = 1 THEN
            INSERT INTO assignments(chef_id, episode_id, recipe_id, national_cuisine_id)
            VALUES (chef_id, episode_id, recipe_id, cuisine_id);
        END IF;
    END LOOP;

    CLOSE contest_cursor;
END;;

DROP PROCEDURE IF EXISTS `fill_contests`;;
CREATE PROCEDURE `fill_contests`()
BEGIN
    DECLARE episode_id INT;
    DECLARE ep_season INT DEFAULT 1;
    DECLARE ep_num INT DEFAULT 1;
    DECLARE chef_count INT DEFAULT 1;

    WHILE ep_season <= 20 DO
        SET ep_num = 1;
        WHILE ep_num <= 10 DO
            SET chef_count = 1;
            WHILE chef_count <= 10 DO
                SET episode_id = (SELECT id FROM episodes WHERE season = ep_season AND episode = ep_num LIMIT 1);
                CALL insert_contestant((SELECT id FROM chefs ORDER BY RAND() LIMIT 1), episode_id);
                SET chef_count = chef_count + 1;
            END WHILE;
            SET ep_num = ep_num + 1;
        END WHILE;
        SET ep_season = ep_season + 1;
    END WHILE;
END;;

DROP PROCEDURE IF EXISTS `fill_episodes`;;
CREATE PROCEDURE `fill_episodes`()
BEGIN
    DECLARE season INT DEFAULT 1;
    DECLARE episode INT DEFAULT 1;

    WHILE season <= 20 DO
        SET episode = 1;
        WHILE episode <= 10 DO
            INSERT INTO episodes (episode, season) VALUES (episode, season);
            SET episode = episode + 1;
        END WHILE;
        SET season = season + 1;
    END WHILE;
END;;

DROP PROCEDURE IF EXISTS `fill_judges`;;
CREATE PROCEDURE `fill_judges`()
BEGIN
    DECLARE episode_id INT;
    DECLARE ep_season INT DEFAULT 1;
    DECLARE ep_num INT DEFAULT 1;
    DECLARE chef_count INT DEFAULT 1;

    WHILE ep_season <= 20 DO
        SET ep_num = 1;
        WHILE ep_num <= 10 DO
            SET chef_count = 1;
            WHILE chef_count <= 3 DO
                SET episode_id = (SELECT id FROM episodes WHERE season = ep_season AND episode = ep_num LIMIT 1);
                CALL insert_judge((SELECT id FROM chefs ORDER BY RAND() LIMIT 1), episode_id);
                SET chef_count = chef_count + 1;
            END WHILE;
            SET ep_num = ep_num + 1;
        END WHILE;
        SET ep_season = ep_season + 1;
    END WHILE;
END;;

DROP PROCEDURE IF EXISTS `fill_ratings`;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fill_ratings`()
BEGIN

DELETE FROM ratings;

INSERT INTO ratings (chef_id, episode_id, judge_id, rating)
SELECT 
    c.chef_id AS chef_id,
    c.episode_id AS episode_id,
    j.chef_id AS judge_id,
    FLOOR(RAND() * 5) + 1 AS rating
FROM 
    contests c
JOIN 
    judges j 
ON c.episode_id = j.episode_id;

END;;

DROP PROCEDURE IF EXISTS `insert_contestant`;;
CREATE PROCEDURE `insert_contestant`(IN `new_chef_id` int, IN `new_episode_id` int)
BEGIN
    DECLARE ep_num INT;
    DECLARE ep_season INT;
    DECLARE recency INT;

    SELECT episode, season INTO ep_num, ep_season
    FROM episodes
    WHERE id = new_episode_id
    LIMIT 1;

    SELECT COUNT(*)
    INTO recency
    FROM contests c
    JOIN episodes e ON c.episode_id = e.id
    WHERE c.chef_id = new_chef_id
    AND e.season = ep_season
    AND (e.episode = ep_num - 1 OR e.episode = ep_num - 2);

    IF (recency = 2) OR EXISTS(SELECT 1 FROM contests WHERE chef_id = new_chef_id AND episode_id = new_episode_id) THEN
        CALL insert_contestant((SELECT id FROM chefs ORDER BY RAND() LIMIT 1), new_episode_id);
    ELSE
    INSERT INTO contests (chef_id, episode_id)
        VALUES (new_chef_id, new_episode_id);
    END IF;
END;;

DROP PROCEDURE IF EXISTS `insert_judge`;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_judge`(IN `new_chef_id` INT, IN `new_episode_id` INT)
BEGIN
    DECLARE ep_num INT;
    DECLARE ep_season INT;
    DECLARE recency INT;

    SELECT episode, season INTO ep_num, ep_season
    FROM episodes
    WHERE id = new_episode_id;

    SELECT COUNT(*)
    INTO recency
    FROM judges j
    JOIN episodes e ON j.episode_id = e.id
    WHERE j.chef_id = new_chef_id
    AND e.season = ep_season
    AND (e.episode = ep_num - 1 OR e.episode = ep_num - 2);

    IF (recency = 2) OR (new_chef_id in(SELECT chef_id FROM contests WHERE episode_id = new_episode_id)) 
     OR EXISTS(SELECT 1 FROM judges WHERE chef_id = new_chef_id AND episode_id = new_episode_id) THEN
        CALL insert_judge((SELECT id FROM chefs ORDER BY RAND() LIMIT 1), new_episode_id);
    ELSE
    INSERT INTO judges(chef_id, episode_id)
        VALUES (new_chef_id, new_episode_id);
    END IF;
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
  CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`national_cuisine_id`) REFERENCES `national_cuisines` (`id`),
  CONSTRAINT `assignments_ibfk_3` FOREIGN KEY (`chef_id`) REFERENCES `chefs` (`id`),
  CONSTRAINT `assignments_ibfk_4` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `chefs`;
CREATE TABLE `chefs` (
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


DROP VIEW IF EXISTS `chefs_view`;
CREATE TABLE `chefs_view` (`ID` int(11), `Name` varchar(91), `Age` int(11), `Email` varchar(60), `Phone` varchar(11));


DROP TABLE IF EXISTS `contests`;
CREATE TABLE `contests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `episode_id` int(11) NOT NULL,
  `chef_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`,`episode_id`,`chef_id`),
  KEY `episode_id` (`episode_id`),
  KEY `chef_id` (`chef_id`),
  CONSTRAINT `contests_ibfk_1` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`),
  CONSTRAINT `contests_ibfk_2` FOREIGN KEY (`chef_id`) REFERENCES `chefs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DELIMITER ;;

CREATE TRIGGER `chef_recency` BEFORE INSERT ON `contests` FOR EACH ROW
BEGIN
    DECLARE ep_num INT;
    DECLARE ep_season INT;
    DECLARE recent_count INT;

    SELECT episode, season INTO ep_num, ep_season
    FROM episodes
    WHERE id = NEW.episode_id;

    SELECT COUNT(*)
    INTO recent_count
    FROM contests c
    JOIN episodes e ON c.episode_id = e.id
    WHERE c.chef_id = NEW.chef_id
    AND e.season = ep_season
    AND (e.episode = ep_num - 1 OR e.episode = ep_num - 2);

    IF recent_count >= 2 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Ο σεφ συμμετείχε στα δύο προηγούμενα επεισόδια';
    END IF;
END;;

DELIMITER ;

DROP TABLE IF EXISTS `episodes`;
CREATE TABLE `episodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `season` int(5) NOT NULL,
  `episode` int(5) NOT NULL,
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


DROP TABLE IF EXISTS `food_groups`;
CREATE TABLE `food_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `image_URL` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `ingredients`;
CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `food_group_id` int(11) DEFAULT NULL,
  `image_URL` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `food_group_id` (`food_group_id`),
  CONSTRAINT `Ingredient_ibfk_1` FOREIGN KEY (`food_group_id`) REFERENCES `food_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `ingredient_quantities`;
CREATE TABLE `ingredient_quantities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `unit` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `ingredient_id` (`ingredient_id`),
  KEY `recipe_id` (`recipe_id`),
  KEY `unit` (`unit`),
  CONSTRAINT `ingredient_quantities_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  CONSTRAINT `ingredient_quantities_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`)
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
  CONSTRAINT `judges_ibfk_2` FOREIGN KEY (`chef_id`) REFERENCES `chefs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DELIMITER ;;

CREATE TRIGGER `judge_recency` BEFORE INSERT ON `judges` FOR EACH ROW
BEGIN
    DECLARE ep_num INT;
    DECLARE ep_season INT;
    DECLARE recency INT;

    SELECT episode, season INTO ep_num, ep_season
    FROM episodes
    WHERE id = NEW.episode_id;

    SELECT COUNT(*)
    INTO recency
    FROM judges j
    JOIN episodes e ON j.episode_id = e.id
    WHERE j.chef_id = NEW.chef_id
    AND e.season = ep_season
    AND (e.episode = ep_num - 1 OR e.episode = ep_num - 2);

    IF (recency = 2) OR (NEW.chef_id IN (SELECT chef_id FROM contests WHERE episode_id = NEW.episode_id)) THEN
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Ο σεφ συμμετέχει στο επεισόδιο ως διαγωνιζόμενος ή έχει συμμετάσχει ως κριτής στα δύο προηγούμενα επεισόδια.';
    END IF;
END;;

DELIMITER ;

DROP VIEW IF EXISTS `knows`;
CREATE TABLE `knows` (`chef_id` int(11), `recipe_id` int(11));


DROP TABLE IF EXISTS `labels`;
CREATE TABLE `labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `meal_types`;
CREATE TABLE `meal_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `national_cuisines`;
CREATE TABLE `national_cuisines` (
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
  CONSTRAINT `Nutritional_info_ibfk_1` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`)
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
  CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`chef_id`) REFERENCES `chefs` (`id`),
  CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`),
  CONSTRAINT `ratings_ibfk_4` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`chef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `recipes`;
CREATE TABLE `recipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `short_description` text DEFAULT NULL,
  `basic_ingredient_id` int(11) NOT NULL,
  `national_cuisine_id` int(11) NOT NULL,
  `difficulty_level` varchar(20) NOT NULL,
  `portions` int(11) NOT NULL,
  `cooking_time` int(11) NOT NULL,
  `preparation_time` int(11) NOT NULL,
  `image_URL` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `API_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `basic_ingredient_id` (`basic_ingredient_id`),
  KEY `national_cuisine_id` (`national_cuisine_id`),
  CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`basic_ingredient_id`) REFERENCES `ingredients` (`id`),
  CONSTRAINT `recipes_ibfk_2` FOREIGN KEY (`national_cuisine_id`) REFERENCES `national_cuisines` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


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


DROP TABLE IF EXISTS `recipe_meal_types`;
CREATE TABLE `recipe_meal_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `meal_type_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`recipe_id`),
  KEY `meal_type_id` (`meal_type_id`),
  CONSTRAINT `recipe_meal_types_ibfk_3` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  CONSTRAINT `recipe_meal_types_ibfk_4` FOREIGN KEY (`meal_type_id`) REFERENCES `meal_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP VIEW IF EXISTS `recipe_nut_info`;
CREATE TABLE `recipe_nut_info` (`recipe_id` int(11), `recipe_name` varchar(45), `calories` double(19,2), `proteins` double(19,2), `fat` double(19,2), `carbohydrates` double(19,2));


DROP TABLE IF EXISTS `recipe_themes`;
CREATE TABLE `recipe_themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `themes_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`recipe_id`),
  KEY `themes_id` (`themes_id`),
  CONSTRAINT `recipe_themes_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  CONSTRAINT `recipe_themes_ibfk_2` FOREIGN KEY (`themes_id`) REFERENCES `themes` (`id`)
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
  CONSTRAINT `specializes_ibfk_1` FOREIGN KEY (`chef_id`) REFERENCES `chefs` (`id`),
  CONSTRAINT `specializes_ibfk_2` FOREIGN KEY (`national_cuisine_id`) REFERENCES `national_cuisines` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `measurement_unit` (`measurement_unit`),
  CONSTRAINT `unit_conversions_ibfk_1` FOREIGN KEY (`measurement_unit`) REFERENCES `ingredient_quantities` (`unit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `chefs_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `chefs_view` AS select `chefs`.`id` AS `ID`,concat(`chefs`.`first_name`,' ',`chefs`.`last_name`) AS `Name`,`chefs`.`age` AS `Age`,`chefs`.`email` AS `Email`,`chefs`.`phone` AS `Phone` from `chefs`;

DROP TABLE IF EXISTS `knows`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `knows` AS select `c`.`chef_id` AS `chef_id`,`n`.`id` AS `recipe_id` from (`specializes` `c` join `recipes` `n` on(`c`.`national_cuisine_id` = `n`.`national_cuisine_id`));

DROP TABLE IF EXISTS `recipe_nut_info`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recipe_nut_info` AS select `i`.`recipe_id` AS `recipe_id`,`r`.`name` AS `recipe_name`,round(sum(`n`.`calories_per_100` * `i`.`quantity` * `u`.`quantity` / 100),2) AS `calories`,round(sum(`n`.`proteins_per_100` * `i`.`quantity` * `u`.`quantity` / 100),2) AS `proteins`,round(sum(`n`.`fat_per_100` * `i`.`quantity` * `u`.`quantity` / 100),2) AS `fat`,round(sum(`n`.`carbohydrates_per_100` * `i`.`quantity` * `u`.`quantity` / 100),2) AS `carbohydrates` from (((`ingredient_quantities` `i` join `nutritional_info` `n` on(`i`.`ingredient_id` = `n`.`ingredient_id`)) join `unit_conversions` `u` on(`u`.`measurement_unit` = `i`.`unit`)) join `recipes` `r` on(`i`.`recipe_id` = `r`.`id`)) group by `i`.`recipe_id`,`r`.`name`;

-- 2024-05-24 15:13:01
