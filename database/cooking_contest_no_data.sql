-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 04:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cooking_contest`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL,
  `national_cuisine_id` int(11) NOT NULL,
  `chef_id` int(11) DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chefs`
--

CREATE TABLE `chefs` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `years_of_experience` tinyint(4) NOT NULL,
  `chef_level` enum('A chef','B chef','C chef','Chef Assistant','Master chef') DEFAULT NULL,
  `image_URL` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `chefs_view`
-- (See below for the actual view)
--
CREATE TABLE `chefs_view` (
`ID` int(11)
,`Name` varchar(91)
,`Age` int(11)
,`Email` varchar(60)
,`Phone` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `contests`
--

CREATE TABLE `contests` (
  `id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL,
  `chef_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Triggers `contests`
--
DELIMITER $$
CREATE TRIGGER `chef_recency` BEFORE INSERT ON `contests` FOR EACH ROW BEGIN
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
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) NOT NULL,
  `season` int(5) NOT NULL,
  `episode` int(5) NOT NULL,
  `image_URL` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `usage_instructions` text NOT NULL,
  `image_URL` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `equipment_requirements`
--

CREATE TABLE `equipment_requirements` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_groups`
--

CREATE TABLE `food_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `image_URL` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_recipes`
--

CREATE TABLE `image_recipes` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `image_URL` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `food_group_id` int(11) DEFAULT NULL,
  `image_URL` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_quantities`
--

CREATE TABLE `ingredient_quantities` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `unit` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL,
  `chef_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Triggers `judges`
--
DELIMITER $$
CREATE TRIGGER `judge_recency` BEFORE INSERT ON `judges` FOR EACH ROW BEGIN
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
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `knows`
-- (See below for the actual view)
--
CREATE TABLE `knows` (
`chef_id` int(11)
,`recipe_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meal_types`
--

CREATE TABLE `meal_types` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `national_cuisines`
--

CREATE TABLE `national_cuisines` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nutritional_info`
--

CREATE TABLE `nutritional_info` (
  `id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `calories_per_100` int(11) NOT NULL,
  `proteins_per_100` int(11) NOT NULL,
  `fat_per_100` int(11) NOT NULL,
  `carbohydrates_per_100` float NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `judge_id` int(11) NOT NULL,
  `chef_id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
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
  `API_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipe_labels`
--

CREATE TABLE `recipe_labels` (
  `id` int(11) NOT NULL,
  `labels_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipe_meal_types`
--

CREATE TABLE `recipe_meal_types` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `meal_type_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `recipe_nut_info`
-- (See below for the actual view)
--
CREATE TABLE `recipe_nut_info` (
`recipe_id` int(11)
,`recipe_name` varchar(45)
,`calories` double(19,2)
,`proteins` double(19,2)
,`fat` double(19,2)
,`carbohydrates` double(19,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_themes`
--

CREATE TABLE `recipe_themes` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `themes_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specializes`
--

CREATE TABLE `specializes` (
  `id` int(11) NOT NULL,
  `chef_id` int(11) NOT NULL,
  `national_cuisine_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `steps`
--

CREATE TABLE `steps` (
  `id` int(11) NOT NULL,
  `step_number` tinyint(4) NOT NULL,
  `step_description` text NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `theme` varchar(45) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE `tips` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `tip` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unit_conversions`
--

CREATE TABLE `unit_conversions` (
  `id` tinyint(4) NOT NULL,
  `measurement_unit` varchar(15) NOT NULL,
  `quantity` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure for view `chefs_view`
--
DROP TABLE IF EXISTS `chefs_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `chefs_view`  AS SELECT `chefs`.`id` AS `ID`, concat(`chefs`.`first_name`,' ',`chefs`.`last_name`) AS `Name`, `chefs`.`age` AS `Age`, `chefs`.`email` AS `Email`, `chefs`.`phone` AS `Phone` FROM `chefs` ;

-- --------------------------------------------------------

--
-- Structure for view `knows`
--
DROP TABLE IF EXISTS `knows`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `knows`  AS SELECT `c`.`chef_id` AS `chef_id`, `n`.`id` AS `recipe_id` FROM (`specializes` `c` join `recipes` `n` on(`c`.`national_cuisine_id` = `n`.`national_cuisine_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `recipe_nut_info`
--
DROP TABLE IF EXISTS `recipe_nut_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recipe_nut_info`  AS SELECT `i`.`recipe_id` AS `recipe_id`, `r`.`name` AS `recipe_name`, round(sum(`n`.`calories_per_100` * `i`.`quantity` * `u`.`quantity` / 100),2) AS `calories`, round(sum(`n`.`proteins_per_100` * `i`.`quantity` * `u`.`quantity` / 100),2) AS `proteins`, round(sum(`n`.`fat_per_100` * `i`.`quantity` * `u`.`quantity` / 100),2) AS `fat`, round(sum(`n`.`carbohydrates_per_100` * `i`.`quantity` * `u`.`quantity` / 100),2) AS `carbohydrates` FROM (((`ingredient_quantities` `i` join `nutritional_info` `n` on(`i`.`ingredient_id` = `n`.`ingredient_id`)) join `unit_conversions` `u` on(`u`.`measurement_unit` = `i`.`unit`)) join `recipes` `r` on(`i`.`recipe_id` = `r`.`id`)) GROUP BY `i`.`recipe_id`, `r`.`name` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episode_id` (`episode_id`),
  ADD KEY `national_cuisine_id` (`national_cuisine_id`),
  ADD KEY `chef_id` (`chef_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `chefs`
--
ALTER TABLE `chefs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contests`
--
ALTER TABLE `contests`
  ADD PRIMARY KEY (`id`,`episode_id`,`chef_id`),
  ADD KEY `episode_id` (`episode_id`),
  ADD KEY `chef_id` (`chef_id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment_requirements`
--
ALTER TABLE `equipment_requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eq` (`equipment_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `food_groups`
--
ALTER TABLE `food_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_recipes`
--
ALTER TABLE `image_recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_group_id` (`food_group_id`);

--
-- Indexes for table `ingredient_quantities`
--
ALTER TABLE `ingredient_quantities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredient_id` (`ingredient_id`),
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `unit` (`unit`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episode_id` (`episode_id`),
  ADD KEY `chef_id` (`chef_id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`updated_at`);

--
-- Indexes for table `meal_types`
--
ALTER TABLE `meal_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `national_cuisines`
--
ALTER TABLE `national_cuisines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nutritional_info`
--
ALTER TABLE `nutritional_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredient_id` (`ingredient_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `chef_id` (`chef_id`),
  ADD KEY `episode_id` (`episode_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `basic_ingredient_id` (`basic_ingredient_id`),
  ADD KEY `national_cuisine_id` (`national_cuisine_id`);

--
-- Indexes for table `recipe_labels`
--
ALTER TABLE `recipe_labels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `labels_id` (`labels_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `recipe_meal_types`
--
ALTER TABLE `recipe_meal_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `meal_type_id` (`meal_type_id`);

--
-- Indexes for table `recipe_themes`
--
ALTER TABLE `recipe_themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `themes_id` (`themes_id`);

--
-- Indexes for table `specializes`
--
ALTER TABLE `specializes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chef_id` (`chef_id`),
  ADD KEY `national_cuisine_id` (`national_cuisine_id`);

--
-- Indexes for table `steps`
--
ALTER TABLE `steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `unit_conversions`
--
ALTER TABLE `unit_conversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `measurement_unit` (`measurement_unit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chefs`
--
ALTER TABLE `chefs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contests`
--
ALTER TABLE `contests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipment_requirements`
--
ALTER TABLE `equipment_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_groups`
--
ALTER TABLE `food_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_recipes`
--
ALTER TABLE `image_recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredient_quantities`
--
ALTER TABLE `ingredient_quantities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meal_types`
--
ALTER TABLE `meal_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `national_cuisines`
--
ALTER TABLE `national_cuisines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nutritional_info`
--
ALTER TABLE `nutritional_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipe_labels`
--
ALTER TABLE `recipe_labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipe_meal_types`
--
ALTER TABLE `recipe_meal_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipe_themes`
--
ALTER TABLE `recipe_themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specializes`
--
ALTER TABLE `specializes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `steps`
--
ALTER TABLE `steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unit_conversions`
--
ALTER TABLE `unit_conversions`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`),
  ADD CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`national_cuisine_id`) REFERENCES `national_cuisines` (`id`),
  ADD CONSTRAINT `assignments_ibfk_3` FOREIGN KEY (`chef_id`) REFERENCES `chefs` (`id`),
  ADD CONSTRAINT `assignments_ibfk_4` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`);

--
-- Constraints for table `contests`
--
ALTER TABLE `contests`
  ADD CONSTRAINT `contests_ibfk_1` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`),
  ADD CONSTRAINT `contests_ibfk_2` FOREIGN KEY (`chef_id`) REFERENCES `chefs` (`id`);

--
-- Constraints for table `equipment_requirements`
--
ALTER TABLE `equipment_requirements`
  ADD CONSTRAINT `eq` FOREIGN KEY (`equipment_id`) REFERENCES `equipments` (`id`),
  ADD CONSTRAINT `equipment_requirements_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`);

--
-- Constraints for table `image_recipes`
--
ALTER TABLE `image_recipes`
  ADD CONSTRAINT `image_recipes_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`);

--
-- Constraints for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `Ingredient_ibfk_1` FOREIGN KEY (`food_group_id`) REFERENCES `food_groups` (`id`);

--
-- Constraints for table `ingredient_quantities`
--
ALTER TABLE `ingredient_quantities`
  ADD CONSTRAINT `ingredient_quantities_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  ADD CONSTRAINT `ingredient_quantities_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`);

--
-- Constraints for table `judges`
--
ALTER TABLE `judges`
  ADD CONSTRAINT `judges_ibfk_1` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`),
  ADD CONSTRAINT `judges_ibfk_2` FOREIGN KEY (`chef_id`) REFERENCES `chefs` (`id`);

--
-- Constraints for table `nutritional_info`
--
ALTER TABLE `nutritional_info`
  ADD CONSTRAINT `Nutritional_info_ibfk_1` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`chef_id`) REFERENCES `chefs` (`id`),
  ADD CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`);

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`basic_ingredient_id`) REFERENCES `ingredients` (`id`),
  ADD CONSTRAINT `recipes_ibfk_2` FOREIGN KEY (`national_cuisine_id`) REFERENCES `national_cuisines` (`id`);

--
-- Constraints for table `recipe_labels`
--
ALTER TABLE `recipe_labels`
  ADD CONSTRAINT `recipe_labels_ibfk_1` FOREIGN KEY (`labels_id`) REFERENCES `labels` (`id`),
  ADD CONSTRAINT `recipe_labels_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`);

--
-- Constraints for table `recipe_meal_types`
--
ALTER TABLE `recipe_meal_types`
  ADD CONSTRAINT `recipe_meal_types_ibfk_3` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  ADD CONSTRAINT `recipe_meal_types_ibfk_4` FOREIGN KEY (`meal_type_id`) REFERENCES `meal_types` (`id`);

--
-- Constraints for table `recipe_themes`
--
ALTER TABLE `recipe_themes`
  ADD CONSTRAINT `recipe_themes_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  ADD CONSTRAINT `recipe_themes_ibfk_2` FOREIGN KEY (`themes_id`) REFERENCES `themes` (`id`);

--
-- Constraints for table `specializes`
--
ALTER TABLE `specializes`
  ADD CONSTRAINT `specializes_ibfk_1` FOREIGN KEY (`chef_id`) REFERENCES `chefs` (`id`),
  ADD CONSTRAINT `specializes_ibfk_2` FOREIGN KEY (`national_cuisine_id`) REFERENCES `national_cuisines` (`id`);

--
-- Constraints for table `steps`
--
ALTER TABLE `steps`
  ADD CONSTRAINT `steps_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`);

--
-- Constraints for table `tips`
--
ALTER TABLE `tips`
  ADD CONSTRAINT `tips_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`);

--
-- Constraints for table `unit_conversions`
--
ALTER TABLE `unit_conversions`
  ADD CONSTRAINT `unit_conversions_ibfk_1` FOREIGN KEY (`measurement_unit`) REFERENCES `ingredient_quantities` (`unit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
