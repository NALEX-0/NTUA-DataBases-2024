-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 11:20 PM
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

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `episode_id`, `national_cuisine_id`, `chef_id`, `recipe_id`, `updated_at`) VALUES
(1, 1, 5, NULL, NULL, '2024-04-29 15:16:49'),
(2, 1, 7, NULL, NULL, '2024-04-29 15:16:49'),
(3, 1, 9, NULL, NULL, '2024-04-29 15:16:49'),
(4, 1, 13, NULL, NULL, '2024-04-29 15:16:49'),
(5, 1, 15, NULL, NULL, '2024-04-29 15:16:49'),
(6, 1, 17, NULL, NULL, '2024-04-29 15:16:49'),
(7, 1, 19, NULL, NULL, '2024-04-29 15:16:49'),
(8, 1, 21, NULL, NULL, '2024-04-29 15:16:49'),
(9, 1, 23, NULL, NULL, '2024-04-29 15:16:49'),
(10, 1, 25, NULL, NULL, '2024-04-29 15:16:49'),
(11, 2, 4, NULL, NULL, '2024-04-29 15:16:49'),
(12, 2, 6, NULL, NULL, '2024-04-29 15:16:49'),
(13, 2, 8, NULL, NULL, '2024-04-29 15:16:49'),
(14, 2, 12, NULL, NULL, '2024-04-29 15:16:49'),
(15, 2, 14, NULL, NULL, '2024-04-29 15:16:49'),
(16, 2, 16, NULL, NULL, '2024-04-29 15:16:49'),
(17, 2, 18, NULL, NULL, '2024-04-29 15:16:49'),
(18, 2, 20, NULL, NULL, '2024-04-29 15:16:49'),
(19, 2, 22, NULL, NULL, '2024-04-29 15:16:49'),
(20, 2, 24, NULL, NULL, '2024-04-29 15:16:49'),
(21, 3, 3, NULL, NULL, '2024-04-29 15:16:49'),
(22, 3, 5, NULL, NULL, '2024-04-29 15:16:49'),
(23, 3, 7, NULL, NULL, '2024-04-29 15:16:49'),
(24, 3, 11, NULL, NULL, '2024-04-29 15:16:49'),
(25, 3, 13, NULL, NULL, '2024-04-29 15:16:49'),
(26, 3, 15, NULL, NULL, '2024-04-29 15:16:49'),
(27, 3, 17, NULL, NULL, '2024-04-29 15:16:49'),
(28, 3, 19, NULL, NULL, '2024-04-29 15:16:49'),
(29, 3, 21, NULL, NULL, '2024-04-29 15:16:49'),
(30, 3, 23, NULL, NULL, '2024-04-29 15:16:49'),
(31, 4, 2, NULL, NULL, '2024-04-29 15:16:49'),
(32, 4, 4, NULL, NULL, '2024-04-29 15:16:49'),
(33, 4, 6, NULL, NULL, '2024-04-29 15:16:49'),
(34, 4, 10, NULL, NULL, '2024-04-29 15:16:49'),
(35, 4, 12, NULL, NULL, '2024-04-29 15:16:49'),
(36, 4, 14, NULL, NULL, '2024-04-29 15:16:49'),
(37, 4, 16, NULL, NULL, '2024-04-29 15:16:49'),
(38, 4, 18, NULL, NULL, '2024-04-29 15:16:49'),
(39, 4, 20, NULL, NULL, '2024-04-29 15:16:49'),
(40, 4, 22, NULL, NULL, '2024-04-29 15:16:49'),
(41, 5, 1, NULL, NULL, '2024-04-29 15:16:49'),
(42, 5, 3, NULL, NULL, '2024-04-29 15:16:49'),
(43, 5, 5, NULL, NULL, '2024-04-29 15:16:49'),
(44, 5, 9, NULL, NULL, '2024-04-29 15:16:49'),
(45, 5, 11, NULL, NULL, '2024-04-29 15:16:49'),
(46, 5, 13, NULL, NULL, '2024-04-29 15:16:49'),
(47, 5, 15, NULL, NULL, '2024-04-29 15:16:49'),
(48, 5, 17, NULL, NULL, '2024-04-29 15:16:49'),
(49, 5, 19, NULL, NULL, '2024-04-29 15:16:49'),
(50, 5, 21, NULL, NULL, '2024-04-29 15:16:49'),
(51, 6, 26, NULL, NULL, '2024-04-29 15:16:49'),
(52, 6, 2, NULL, NULL, '2024-04-29 15:16:49'),
(53, 6, 4, NULL, NULL, '2024-04-29 15:16:49'),
(54, 6, 8, NULL, NULL, '2024-04-29 15:16:49'),
(55, 6, 10, NULL, NULL, '2024-04-29 15:16:49'),
(56, 6, 12, NULL, NULL, '2024-04-29 15:16:49'),
(57, 6, 14, NULL, NULL, '2024-04-29 15:16:49'),
(58, 6, 16, NULL, NULL, '2024-04-29 15:16:49'),
(59, 6, 18, NULL, NULL, '2024-04-29 15:16:49'),
(60, 6, 20, NULL, NULL, '2024-04-29 15:16:49'),
(61, 7, 25, NULL, NULL, '2024-04-29 15:16:49'),
(62, 7, 1, NULL, NULL, '2024-04-29 15:16:49'),
(63, 7, 3, NULL, NULL, '2024-04-29 15:16:49'),
(64, 7, 7, NULL, NULL, '2024-04-29 15:16:49'),
(65, 7, 9, NULL, NULL, '2024-04-29 15:16:49'),
(66, 7, 11, NULL, NULL, '2024-04-29 15:16:49'),
(67, 7, 13, NULL, NULL, '2024-04-29 15:16:49'),
(68, 7, 15, NULL, NULL, '2024-04-29 15:16:49'),
(69, 7, 17, NULL, NULL, '2024-04-29 15:16:49'),
(70, 7, 19, NULL, NULL, '2024-04-29 15:16:49'),
(71, 8, 24, NULL, NULL, '2024-04-29 15:16:49'),
(72, 8, 26, NULL, NULL, '2024-04-29 15:16:49'),
(73, 8, 2, NULL, NULL, '2024-04-29 15:16:49'),
(74, 8, 6, NULL, NULL, '2024-04-29 15:16:49'),
(75, 8, 8, NULL, NULL, '2024-04-29 15:16:49'),
(76, 8, 10, NULL, NULL, '2024-04-29 15:16:49'),
(77, 8, 12, NULL, NULL, '2024-04-29 15:16:49'),
(78, 8, 14, NULL, NULL, '2024-04-29 15:16:49'),
(79, 8, 16, NULL, NULL, '2024-04-29 15:16:49'),
(80, 8, 18, NULL, NULL, '2024-04-29 15:16:49'),
(81, 9, 23, NULL, NULL, '2024-04-29 15:16:49'),
(82, 9, 25, NULL, NULL, '2024-04-29 15:16:49'),
(83, 9, 1, NULL, NULL, '2024-04-29 15:16:49'),
(84, 9, 5, NULL, NULL, '2024-04-29 15:16:49'),
(85, 9, 7, NULL, NULL, '2024-04-29 15:16:49'),
(86, 9, 9, NULL, NULL, '2024-04-29 15:16:49'),
(87, 9, 11, NULL, NULL, '2024-04-29 15:16:49'),
(88, 9, 13, NULL, NULL, '2024-04-29 15:16:49'),
(89, 9, 15, NULL, NULL, '2024-04-29 15:16:49'),
(90, 9, 17, NULL, NULL, '2024-04-29 15:16:49'),
(91, 10, 22, NULL, NULL, '2024-04-29 15:16:49'),
(92, 10, 24, NULL, NULL, '2024-04-29 15:16:49'),
(93, 10, 26, NULL, NULL, '2024-04-29 15:16:49'),
(94, 10, 2, NULL, NULL, '2024-04-29 15:16:49'),
(95, 10, 4, NULL, NULL, '2024-04-29 15:16:49'),
(96, 10, 6, NULL, NULL, '2024-04-29 15:16:49'),
(97, 10, 8, NULL, NULL, '2024-04-29 15:16:49'),
(98, 10, 10, NULL, NULL, '2024-04-29 15:16:49'),
(99, 10, 12, NULL, NULL, '2024-04-29 15:16:49'),
(100, 10, 14, NULL, NULL, '2024-04-29 15:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `chef`
--

CREATE TABLE `chef` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `years_of_experience` tinyint(4) NOT NULL,
  `chef_level` varchar(20) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chef`
--

INSERT INTO `chef` (`id`, `first_name`, `last_name`, `age`, `email`, `phone`, `date_of_birth`, `years_of_experience`, `chef_level`, `updated_at`) VALUES
(1, 'MARY', 'SMITH', 32, 'MARY.SMITH@chef.org', '6958274222', '1992-01-25', 5, 'A chef', '2024-05-01 14:34:54'),
(2, 'PATRICIA', 'JOHNSON', 27, 'PATRICIA.JOHNSON@chef.org', '6941792261', '1996-12-27', 10, 'Master chef', '2024-05-01 14:35:22'),
(3, 'LINDA', 'WILLIAMS', 20, 'LINDA.WILLIAMS@chef.org', '6934138642', '2003-09-30', 4, 'C chef', '2024-05-01 14:35:10'),
(4, 'BARBARA', 'JONES', 46, 'BARBARA.JONES@chef.org', '6945316432', '1977-10-05', 8, 'Chef Assistant', '2024-05-01 14:34:39'),
(5, 'ELIZABETH', 'BROWN', 61, 'ELIZABETH.BROWN@chef.org', '6924166237', '1962-07-27', 8, 'C chef', '2024-05-01 14:35:10'),
(6, 'JENNIFER', 'DAVIS', 59, 'JENNIFER.DAVIS@chef.org', '6984881892', '1964-07-23', 7, 'C chef', '2024-05-01 14:35:10'),
(7, 'MARIA', 'MILLER', 49, 'MARIA.MILLER@chef.org', '6951910751', '1975-02-04', 10, 'Master chef', '2024-05-01 14:35:22'),
(8, 'SUSAN', 'WILSON', 47, 'SUSAN.WILSON@chef.org', '6949080851', '1976-10-14', 8, 'Master chef', '2024-05-01 14:35:22'),
(9, 'MARGARET', 'MOORE', 25, 'MARGARET.MOORE@chef.org', '6968808173', '1998-08-27', 9, 'Chef Assistant', '2024-05-01 14:34:39'),
(10, 'DOROTHY', 'TAYLOR', 56, 'DOROTHY.TAYLOR@chef.org', '6929316617', '1967-11-26', 1, 'Master chef', '2024-05-01 14:35:22'),
(11, 'LISA', 'ANDERSON', 50, 'LISA.ANDERSON@chef.org', '6940158567', '1973-07-22', 7, 'Master chef', '2024-05-01 14:35:22'),
(12, 'NANCY', 'THOMAS', 20, 'NANCY.THOMAS@chef.org', '6912842988', '2004-01-26', 1, 'A chef', '2024-05-01 14:34:54'),
(13, 'KAREN', 'JACKSON', 19, 'KAREN.JACKSON@chef.org', '6943739241', '2004-09-02', 4, 'B chef', '2024-05-01 14:35:05'),
(14, 'BETTY', 'WHITE', 63, 'BETTY.WHITE@chef.org', '6980167247', '1961-02-23', 6, 'C chef', '2024-05-01 14:35:10'),
(15, 'HELEN', 'HARRIS', 57, 'HELEN.HARRIS@chef.org', '6969618515', '1966-09-27', 10, 'Chef Assistant', '2024-05-01 14:34:39'),
(16, 'SANDRA', 'MARTIN', 33, 'SANDRA.MARTIN@chef.org', '6975908373', '1990-03-30', 9, 'B chef', '2024-05-01 14:35:05'),
(17, 'DONNA', 'THOMPSON', 23, 'DONNA.THOMPSON@chef.org', '6929098643', '2000-12-28', 7, 'Chef Assistant', '2024-05-01 14:34:39'),
(18, 'CAROL', 'GARCIA', 39, 'CAROL.GARCIA@chef.org', '6922720708', '1984-03-27', 4, 'Chef Assistant', '2024-05-01 14:34:39'),
(19, 'RUTH', 'MARTINEZ', 21, 'RUTH.MARTINEZ@chef.org', '6926307617', '2003-03-15', 2, 'Chef Assistant', '2024-05-01 14:34:39'),
(20, 'SHARON', 'ROBINSON', 55, 'SHARON.ROBINSON@chef.org', '6963375962', '1968-04-15', 7, 'A chef', '2024-05-01 14:34:54'),
(21, 'MICHELLE', 'CLARK', 62, 'MICHELLE.CLARK@chef.org', '6937956964', '1961-11-07', 6, 'Master chef', '2024-05-01 14:35:22'),
(22, 'LAURA', 'RODRIGUEZ', 34, 'LAURA.RODRIGUEZ@chef.org', '6999656939', '1989-05-22', 9, 'Master chef', '2024-05-01 14:35:22'),
(23, 'SARAH', 'LEWIS', 57, 'SARAH.LEWIS@chef.org', '6984413804', '1966-05-20', 9, 'Chef Assistant', '2024-05-01 14:34:39'),
(24, 'KIMBERLY', 'LEE', 30, 'KIMBERLY.LEE@chef.org', '6923098209', '1993-10-01', 5, 'B chef', '2024-05-01 14:35:05'),
(25, 'DEBORAH', 'WALKER', 49, 'DEBORAH.WALKER@chef.org', '6962249637', '1974-08-08', 9, 'B chef', '2024-05-01 14:35:05'),
(26, 'JESSICA', 'HALL', 47, 'JESSICA.HALL@chef.org', '6941953560', '1976-10-05', 8, 'C chef', '2024-05-01 14:35:10'),
(27, 'SHIRLEY', 'ALLEN', 24, 'SHIRLEY.ALLEN@chef.org', '6923018891', '2000-01-01', 5, 'B chef', '2024-05-01 14:35:05'),
(28, 'CYNTHIA', 'YOUNG', 49, 'CYNTHIA.YOUNG@chef.org', '6989233779', '1974-09-18', 8, 'C chef', '2024-05-01 14:35:10'),
(29, 'ANGELA', 'HERNANDEZ', 20, 'ANGELA.HERNANDEZ@chef.org', '6977112226', '2003-07-27', 4, 'A chef', '2024-05-01 14:34:54'),
(30, 'MELISSA', 'KING', 25, 'MELISSA.KING@chef.org', '6917859798', '1998-09-09', 8, 'A chef', '2024-05-01 14:34:54'),
(31, 'BRENDA', 'WRIGHT', 46, 'BRENDA.WRIGHT@chef.org', '6957962315', '1977-10-01', 7, 'A chef', '2024-05-01 14:34:54'),
(32, 'AMY', 'LOPEZ', 46, 'AMY.LOPEZ@chef.org', '6936232185', '1977-09-08', 9, 'Chef Assistant', '2024-05-01 14:34:39'),
(33, 'ANNA', 'HILL', 29, 'ANNA.HILL@chef.org', '6972739823', '1995-03-07', 3, 'A chef', '2024-05-01 14:34:54'),
(34, 'REBECCA', 'SCOTT', 31, 'REBECCA.SCOTT@chef.org', '6927673359', '1992-10-31', 9, 'A chef', '2024-05-01 14:34:54'),
(35, 'VIRGINIA', 'GREEN', 50, 'VIRGINIA.GREEN@chef.org', '6916544852', '1973-08-16', 3, 'A chef', '2024-05-01 14:34:54'),
(36, 'KATHLEEN', 'ADAMS', 49, 'KATHLEEN.ADAMS@chef.org', '6999704188', '1974-08-15', 10, 'B chef', '2024-05-01 14:35:05'),
(37, 'PAMELA', 'BAKER', 31, 'PAMELA.BAKER@chef.org', '6948886385', '1992-03-28', 2, 'C chef', '2024-05-01 14:35:10'),
(38, 'MARTHA', 'GONZALEZ', 36, 'MARTHA.GONZALEZ@chef.org', '6945319367', '1987-04-30', 6, 'Chef Assistant', '2024-05-01 14:34:39'),
(39, 'DEBRA', 'NELSON', 24, 'DEBRA.NELSON@chef.org', '6979937684', '1999-12-03', 7, 'A chef', '2024-05-01 14:34:54'),
(40, 'AMANDA', 'CARTER', 36, 'AMANDA.CARTER@chef.org', '6963730321', '1987-08-14', 5, 'Chef Assistant', '2024-05-01 14:34:39'),
(41, 'STEPHANIE', 'MITCHELL', 45, 'STEPHANIE.MITCHELL@chef.org', '6978838556', '1978-04-30', 3, 'B chef', '2024-05-01 14:35:05'),
(42, 'CAROLYN', 'PEREZ', 55, 'CAROLYN.PEREZ@chef.org', '6930018199', '1968-10-15', 8, 'B chef', '2024-05-01 14:35:05'),
(43, 'CHRISTINE', 'ROBERTS', 30, 'CHRISTINE.ROBERTS@chef.org', '6978493434', '1993-12-20', 2, 'A chef', '2024-05-01 14:34:54'),
(44, 'MARIE', 'TURNER', 55, 'MARIE.TURNER@chef.org', '6983461716', '1968-06-19', 6, 'C chef', '2024-05-01 14:35:10'),
(45, 'JANET', 'PHILLIPS', 33, 'JANET.PHILLIPS@chef.org', '6981828279', '1990-06-07', 2, 'Chef Assistant', '2024-05-01 14:34:39'),
(46, 'CATHERINE', 'CAMPBELL', 27, 'CATHERINE.CAMPBELL@chef.org', '6958756252', '1996-10-03', 3, 'Chef Assistant', '2024-05-01 14:34:39'),
(47, 'FRANCES', 'PARKER', 61, 'FRANCES.PARKER@chef.org', '6948296427', '1962-06-27', 8, 'A chef', '2024-05-01 14:34:54'),
(48, 'ANN', 'EVANS', 27, 'ANN.EVANS@chef.org', '6965213381', '1997-02-28', 10, 'C chef', '2024-05-01 14:35:10'),
(49, 'JOYCE', 'EDWARDS', 20, 'JOYCE.EDWARDS@chef.org', '6981177629', '2003-05-08', 5, 'Chef Assistant', '2024-05-01 14:34:39'),
(50, 'DIANE', 'COLLINS', 48, 'DIANE.COLLINS@chef.org', '6910248004', '1975-04-06', 7, 'C chef', '2024-05-01 14:35:10'),
(51, 'ALICE', 'STEWART', 27, 'ALICE.STEWART@chef.org', '6977071381', '1996-04-03', 9, 'Master chef', '2024-05-01 14:35:22'),
(52, 'JULIE', 'SANCHEZ', 63, 'JULIE.SANCHEZ@chef.org', '6977916802', '1960-06-30', 1, 'A chef', '2024-05-01 14:34:54'),
(53, 'HEATHER', 'MORRIS', 35, 'HEATHER.MORRIS@chef.org', '6915836989', '1988-09-17', 8, 'B chef', '2024-05-01 14:35:05'),
(54, 'TERESA', 'ROGERS', 57, 'TERESA.ROGERS@chef.org', '6955809912', '1967-01-27', 8, 'B chef', '2024-05-01 14:35:05'),
(55, 'DORIS', 'REED', 24, 'DORIS.REED@chef.org', '6931538593', '1999-03-27', 4, 'Chef Assistant', '2024-05-01 14:34:39'),
(56, 'GLORIA', 'COOK', 24, 'GLORIA.COOK@chef.org', '6990263235', '1999-12-11', 5, 'A chef', '2024-05-01 14:34:54'),
(57, 'EVELYN', 'MORGAN', 27, 'EVELYN.MORGAN@chef.org', '6956700399', '1997-01-06', 5, 'C chef', '2024-05-01 14:35:10'),
(58, 'JEAN', 'BELL', 43, 'JEAN.BELL@chef.org', '6912712295', '1980-04-03', 6, 'Master chef', '2024-05-01 14:35:22'),
(59, 'CHERYL', 'MURPHY', 29, 'CHERYL.MURPHY@chef.org', '6993460282', '1995-03-23', 7, 'Chef Assistant', '2024-05-01 14:34:39'),
(60, 'MILDRED', 'BAILEY', 38, 'MILDRED.BAILEY@chef.org', '6929164527', '1985-05-05', 6, 'C chef', '2024-05-01 14:35:10'),
(61, 'KATHERINE', 'RIVERA', 43, 'KATHERINE.RIVERA@chef.org', '6965441793', '1981-01-18', 9, 'A chef', '2024-05-01 14:34:54'),
(62, 'JOAN', 'COOPER', 35, 'JOAN.COOPER@chef.org', '6939715389', '1989-03-22', 8, 'B chef', '2024-05-01 14:35:05'),
(63, 'ASHLEY', 'RICHARDSON', 26, 'ASHLEY.RICHARDSON@chef.org', '6922515669', '1997-12-16', 2, 'C chef', '2024-05-01 14:35:10'),
(64, 'JUDITH', 'COX', 52, 'JUDITH.COX@chef.org', '6992111670', '1972-02-13', 3, 'B chef', '2024-05-01 14:35:05'),
(65, 'ROSE', 'HOWARD', 27, 'ROSE.HOWARD@chef.org', '6953803656', '1996-09-23', 10, 'Chef Assistant', '2024-05-01 14:34:39'),
(66, 'JANICE', 'WARD', 51, 'JANICE.WARD@chef.org', '6992683271', '1972-04-10', 10, 'B chef', '2024-05-01 14:35:05'),
(67, 'KELLY', 'TORRES', 23, 'KELLY.TORRES@chef.org', '6920053912', '2001-03-14', 1, 'Chef Assistant', '2024-05-01 14:34:39'),
(68, 'NICOLE', 'PETERSON', 30, 'NICOLE.PETERSON@chef.org', '6931977145', '1994-03-03', 6, 'B chef', '2024-05-01 14:35:05'),
(69, 'JUDY', 'GRAY', 61, 'JUDY.GRAY@chef.org', '6953869557', '1962-03-31', 3, 'C chef', '2024-05-01 14:35:10'),
(70, 'CHRISTINA', 'RAMIREZ', 20, 'CHRISTINA.RAMIREZ@chef.org', '6973416352', '2003-09-22', 9, 'Chef Assistant', '2024-05-01 14:34:39'),
(71, 'KATHY', 'JAMES', 32, 'KATHY.JAMES@chef.org', '6954730919', '1991-11-16', 3, 'B chef', '2024-05-01 14:35:05'),
(72, 'THERESA', 'WATSON', 36, 'THERESA.WATSON@chef.org', '6971164065', '1988-03-15', 10, 'B chef', '2024-05-01 14:35:05'),
(73, 'BEVERLY', 'BROOKS', 63, 'BEVERLY.BROOKS@chef.org', '6919162759', '1960-05-23', 9, 'C chef', '2024-05-01 14:35:10'),
(74, 'DENISE', 'KELLY', 56, 'DENISE.KELLY@chef.org', '6974464582', '1967-05-10', 6, 'B chef', '2024-05-01 14:35:05'),
(75, 'TAMMY', 'SANDERS', 28, 'TAMMY.SANDERS@chef.org', '6914834637', '1995-08-05', 10, 'Master chef', '2024-05-01 14:35:22'),
(76, 'IRENE', 'PRICE', 43, 'IRENE.PRICE@chef.org', '6950779442', '1980-11-24', 1, 'B chef', '2024-05-01 14:35:05'),
(77, 'JANE', 'BENNETT', 21, 'JANE.BENNETT@chef.org', '6993933030', '2002-09-17', 7, 'Chef Assistant', '2024-05-01 14:34:39'),
(78, 'LORI', 'WOOD', 48, 'LORI.WOOD@chef.org', '6994628190', '1975-11-11', 9, 'B chef', '2024-05-01 14:35:05'),
(79, 'RACHEL', 'BARNES', 23, 'RACHEL.BARNES@chef.org', '6944961046', '2001-03-05', 6, 'A chef', '2024-05-01 14:34:54'),
(80, 'MARILYN', 'ROSS', 40, 'MARILYN.ROSS@chef.org', '6940920664', '1983-04-14', 10, 'C chef', '2024-05-01 14:35:10'),
(81, 'ANDREA', 'HENDERSON', 26, 'ANDREA.HENDERSON@chef.org', '6969720187', '1997-11-24', 2, 'A chef', '2024-05-01 14:34:54'),
(82, 'KATHRYN', 'COLEMAN', 34, 'KATHRYN.COLEMAN@chef.org', '6925838943', '1989-08-21', 8, 'B chef', '2024-05-01 14:35:05'),
(83, 'LOUISE', 'JENKINS', 29, 'LOUISE.JENKINS@chef.org', '6920034160', '1994-06-28', 5, 'Chef Assistant', '2024-05-01 14:34:39'),
(84, 'SARA', 'PERRY', 25, 'SARA.PERRY@chef.org', '6922653976', '1998-07-17', 9, 'B chef', '2024-05-01 14:35:05'),
(85, 'ANNE', 'POWELL', 20, 'ANNE.POWELL@chef.org', '6953167402', '2004-03-24', 8, 'B chef', '2024-05-01 14:35:05'),
(86, 'JACQUELINE', 'LONG', 48, 'JACQUELINE.LONG@chef.org', '6997875086', '1975-07-07', 6, 'Chef Assistant', '2024-05-01 14:34:39'),
(87, 'WANDA', 'PATTERSON', 29, 'WANDA.PATTERSON@chef.org', '6929873228', '1994-11-22', 4, 'Master chef', '2024-05-01 14:35:22'),
(88, 'BONNIE', 'HUGHES', 26, 'BONNIE.HUGHES@chef.org', '6955740886', '1997-12-01', 2, 'A chef', '2024-05-01 14:34:54'),
(89, 'JULIA', 'FLORES', 24, 'JULIA.FLORES@chef.org', '6989084748', '1999-11-28', 6, 'A chef', '2024-05-01 14:34:54'),
(90, 'RUBY', 'WASHINGTON', 23, 'RUBY.WASHINGTON@chef.org', '6978201087', '2000-10-11', 4, 'Chef Assistant', '2024-05-01 14:34:39'),
(91, 'LOIS', 'BUTLER', 25, 'LOIS.BUTLER@chef.org', '6923751195', '1999-03-06', 4, 'Chef Assistant', '2024-05-01 14:34:39'),
(92, 'TINA', 'SIMMONS', 35, 'TINA.SIMMONS@chef.org', '6984152717', '1988-07-15', 5, 'Chef Assistant', '2024-05-01 14:34:39'),
(93, 'PHYLLIS', 'FOSTER', 39, 'PHYLLIS.FOSTER@chef.org', '6949510004', '1985-03-02', 5, 'C chef', '2024-05-01 14:35:10'),
(94, 'NORMA', 'GONZALES', 24, 'NORMA.GONZALES@chef.org', '6995091872', '2000-03-20', 9, 'A chef', '2024-05-01 14:34:54'),
(95, 'PAULA', 'BRYANT', 28, 'PAULA.BRYANT@chef.org', '6926929351', '1995-07-31', 9, 'B chef', '2024-05-01 14:35:05'),
(96, 'DIANA', 'ALEXANDER', 51, 'DIANA.ALEXANDER@chef.org', '6949371144', '1972-03-29', 8, 'B chef', '2024-05-01 14:35:05'),
(97, 'ANNIE', 'RUSSELL', 19, 'ANNIE.RUSSELL@chef.org', '6966067670', '2004-06-23', 1, 'B chef', '2024-05-01 14:35:05'),
(98, 'LILLIAN', 'GRIFFIN', 58, 'LILLIAN.GRIFFIN@chef.org', '6982224921', '1965-08-26', 10, 'B chef', '2024-05-01 14:35:05'),
(99, 'EMILY', 'DIAZ', 34, 'EMILY.DIAZ@chef.org', '6912921600', '1989-11-02', 6, 'Master chef', '2024-05-01 14:35:22'),
(100, 'ROBIN', 'HAYES', 22, 'ROBIN.HAYES@chef.org', '6917933240', '2002-03-24', 10, 'A chef', '2024-05-01 14:34:54'),
(101, 'PEGGY', 'MYERS', 32, 'PEGGY.MYERS@chef.org', '6950901405', '1991-08-13', 3, 'C chef', '2024-05-01 14:35:10'),
(102, 'CRYSTAL', 'FORD', 32, 'CRYSTAL.FORD@chef.org', '6907073074', '1991-05-24', 4, 'B chef', '2024-05-01 14:35:05'),
(103, 'GLADYS', 'HAMILTON', 47, 'GLADYS.HAMILTON@chef.org', '6950832324', '1977-02-16', 9, 'Master chef', '2024-05-01 14:35:22'),
(104, 'RITA', 'GRAHAM', 27, 'RITA.GRAHAM@chef.org', '6952039701', '1996-06-16', 3, 'C chef', '2024-05-01 14:35:10'),
(105, 'DAWN', 'SULLIVAN', 23, 'DAWN.SULLIVAN@chef.org', '6977015399', '2000-11-24', 7, 'C chef', '2024-05-01 14:35:10'),
(106, 'CONNIE', 'WALLACE', 59, 'CONNIE.WALLACE@chef.org', '6982388596', '1965-02-13', 7, 'A chef', '2024-05-01 14:34:54'),
(107, 'FLORENCE', 'WOODS', 26, 'FLORENCE.WOODS@chef.org', '6988838367', '1997-11-27', 4, 'Chef Assistant', '2024-05-01 14:34:39'),
(108, 'TRACY', 'COLE', 25, 'TRACY.COLE@chef.org', '6997026051', '1999-03-05', 7, 'C chef', '2024-05-01 14:35:10'),
(109, 'EDNA', 'WEST', 27, 'EDNA.WEST@chef.org', '6918615155', '1997-02-20', 5, 'B chef', '2024-05-01 14:35:05'),
(110, 'TIFFANY', 'JORDAN', 41, 'TIFFANY.JORDAN@chef.org', '6919976251', '1983-03-09', 2, 'B chef', '2024-05-01 14:35:05'),
(111, 'CARMEN', 'OWENS', 59, 'CARMEN.OWENS@chef.org', '6954142663', '1964-07-01', 3, 'C chef', '2024-05-01 14:35:10'),
(112, 'ROSA', 'REYNOLDS', 21, 'ROSA.REYNOLDS@chef.org', '6964720446', '2002-12-11', 8, 'C chef', '2024-05-01 14:35:10'),
(113, 'CINDY', 'FISHER', 43, 'CINDY.FISHER@chef.org', '6961174245', '1981-03-22', 1, 'C chef', '2024-05-01 14:35:10'),
(114, 'GRACE', 'ELLIS', 41, 'GRACE.ELLIS@chef.org', '6911709891', '1982-04-13', 2, 'Chef Assistant', '2024-05-01 14:34:39'),
(115, 'WENDY', 'HARRISON', 61, 'WENDY.HARRISON@chef.org', '6975026722', '1962-09-28', 4, 'Master chef', '2024-05-01 14:35:22'),
(116, 'VICTORIA', 'GIBSON', 27, 'VICTORIA.GIBSON@chef.org', '6940003943', '1996-11-13', 6, 'C chef', '2024-05-01 14:35:10'),
(117, 'EDITH', 'MCDONALD', 23, 'EDITH.MCDONALD@chef.org', '6974939552', '2001-02-10', 8, 'A chef', '2024-05-01 14:34:54'),
(118, 'KIM', 'CRUZ', 59, 'KIM.CRUZ@chef.org', '6954685932', '1964-12-12', 1, 'A chef', '2024-05-01 14:34:54'),
(119, 'SHERRY', 'MARSHALL', 27, 'SHERRY.MARSHALL@chef.org', '6948611009', '1996-05-28', 9, 'A chef', '2024-05-01 14:34:54'),
(120, 'SYLVIA', 'ORTIZ', 32, 'SYLVIA.ORTIZ@chef.org', '6978997252', '1992-03-10', 4, 'C chef', '2024-05-01 14:35:10'),
(121, 'JOSEPHINE', 'GOMEZ', 57, 'JOSEPHINE.GOMEZ@chef.org', '6949153235', '1966-09-21', 10, 'Master chef', '2024-05-01 14:35:22'),
(122, 'THELMA', 'MURRAY', 37, 'THELMA.MURRAY@chef.org', '6987744240', '1987-01-20', 9, 'A chef', '2024-05-01 14:34:54'),
(123, 'SHANNON', 'FREEMAN', 39, 'SHANNON.FREEMAN@chef.org', '6996412417', '1985-02-02', 4, 'Master chef', '2024-05-01 14:35:22'),
(124, 'SHEILA', 'WELLS', 19, 'SHEILA.WELLS@chef.org', '6955738816', '2004-04-16', 4, 'Chef Assistant', '2024-05-01 14:34:39'),
(125, 'ETHEL', 'WEBB', 53, 'ETHEL.WEBB@chef.org', '6989456835', '1971-03-08', 7, 'Master chef', '2024-05-01 14:35:22'),
(126, 'ELLEN', 'SIMPSON', 51, 'ELLEN.SIMPSON@chef.org', '6980067730', '1973-01-16', 2, 'B chef', '2024-05-01 14:35:05'),
(127, 'ELAINE', 'STEVENS', 32, 'ELAINE.STEVENS@chef.org', '6931968150', '1991-09-04', 7, 'Chef Assistant', '2024-05-01 14:34:39'),
(128, 'MARJORIE', 'TUCKER', 35, 'MARJORIE.TUCKER@chef.org', '6919637562', '1989-03-26', 2, 'B chef', '2024-05-01 14:35:05'),
(129, 'CARRIE', 'PORTER', 58, 'CARRIE.PORTER@chef.org', '6922833645', '1966-02-21', 6, 'B chef', '2024-05-01 14:35:05'),
(130, 'CHARLOTTE', 'HUNTER', 31, 'CHARLOTTE.HUNTER@chef.org', '6952504138', '1993-01-04', 3, 'Master chef', '2024-05-01 14:35:22'),
(131, 'MONICA', 'HICKS', 52, 'MONICA.HICKS@chef.org', '6955670600', '1971-08-19', 8, 'C chef', '2024-05-01 14:35:10'),
(132, 'ESTHER', 'CRAWFORD', 60, 'ESTHER.CRAWFORD@chef.org', '6920840589', '1964-02-12', 9, 'A chef', '2024-05-01 14:34:54'),
(133, 'PAULINE', 'HENRY', 33, 'PAULINE.HENRY@chef.org', '6937191149', '1990-09-12', 2, 'Master chef', '2024-05-01 14:35:22'),
(134, 'EMMA', 'BOYD', 58, 'EMMA.BOYD@chef.org', '6923433983', '1966-02-18', 4, 'Chef Assistant', '2024-05-01 14:34:39'),
(135, 'JUANITA', 'MASON', 35, 'JUANITA.MASON@chef.org', '6955964727', '1988-07-31', 1, 'C chef', '2024-05-01 14:35:10'),
(136, 'ANITA', 'MORALES', 29, 'ANITA.MORALES@chef.org', '6957680415', '1994-06-30', 3, 'Chef Assistant', '2024-05-01 14:34:39'),
(137, 'RHONDA', 'KENNEDY', 22, 'RHONDA.KENNEDY@chef.org', '6971612660', '2001-09-24', 10, 'C chef', '2024-05-01 14:35:10'),
(138, 'HAZEL', 'WARREN', 49, 'HAZEL.WARREN@chef.org', '6985022060', '1975-03-05', 2, 'Master chef', '2024-05-01 14:35:22'),
(139, 'AMBER', 'DIXON', 23, 'AMBER.DIXON@chef.org', '6910272325', '2000-09-05', 8, 'C chef', '2024-05-01 14:35:10'),
(140, 'EVA', 'RAMOS', 41, 'EVA.RAMOS@chef.org', '6996295449', '1982-11-12', 3, 'A chef', '2024-05-01 14:34:54'),
(141, 'DEBBIE', 'REYES', 26, 'DEBBIE.REYES@chef.org', '6950660271', '1997-04-17', 2, 'A chef', '2024-05-01 14:34:54'),
(142, 'APRIL', 'BURNS', 36, 'APRIL.BURNS@chef.org', '6964415012', '1987-11-14', 9, 'A chef', '2024-05-01 14:34:54'),
(143, 'LESLIE', 'GORDON', 36, 'LESLIE.GORDON@chef.org', '6970094252', '1987-06-21', 1, 'Chef Assistant', '2024-05-01 14:34:39'),
(144, 'CLARA', 'SHAW', 55, 'CLARA.SHAW@chef.org', '6957226229', '1968-09-26', 5, 'Master chef', '2024-05-01 14:35:22'),
(145, 'LUCILLE', 'HOLMES', 57, 'LUCILLE.HOLMES@chef.org', '6975848390', '1966-04-13', 4, 'C chef', '2024-05-01 14:35:10'),
(146, 'JAMIE', 'RICE', 59, 'JAMIE.RICE@chef.org', '6975632658', '1965-03-13', 4, 'Master chef', '2024-05-01 14:35:22'),
(147, 'JOANNE', 'ROBERTSON', 57, 'JOANNE.ROBERTSON@chef.org', '6910271162', '1967-02-20', 8, 'A chef', '2024-05-01 14:34:54'),
(148, 'ELEANOR', 'HUNT', 44, 'ELEANOR.HUNT@chef.org', '6928666017', '1980-02-07', 7, 'Chef Assistant', '2024-05-01 14:34:39'),
(149, 'VALERIE', 'BLACK', 30, 'VALERIE.BLACK@chef.org', '6912516602', '1994-02-03', 9, 'Master chef', '2024-05-01 14:35:22'),
(150, 'DANIELLE', 'DANIELS', 44, 'DANIELLE.DANIELS@chef.org', '6976584962', '1980-02-25', 5, 'B chef', '2024-05-01 14:35:05');

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

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) NOT NULL,
  `season` varchar(5) NOT NULL,
  `episode` varchar(5) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`id`, `season`, `episode`, `updated_at`) VALUES
(1, '01', '01', '2024-04-29 12:47:09'),
(2, '01', '02', '2024-04-29 12:47:16'),
(3, '01', '03', '2024-04-29 12:47:19'),
(4, '01', '04', '2024-04-29 12:47:23'),
(5, '01', '05', '2024-04-29 12:47:31'),
(6, '01', '06', '2024-04-29 12:47:36'),
(7, '01', '07', '2024-04-29 12:47:41'),
(8, '01', '08', '2024-04-29 12:47:46'),
(9, '01', '09', '2024-04-29 12:47:50'),
(10, '01', '10', '2024-04-29 12:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `usage_instructions` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `name`, `usage_instructions`, `updated_at`) VALUES
(1, 'Pan', 'Heat evenly before adding ingredients.', '2024-04-29 13:07:19'),
(2, 'Pot', 'Boil water or cook soups and stews.', '2024-04-29 13:07:19'),
(3, 'Knife', 'Use for chopping, slicing, and dicing.', '2024-04-29 13:07:19'),
(4, 'Cutting board', 'Place ingredients for chopping.', '2024-04-29 13:07:19'),
(5, 'Spatula', 'Flip and lift food while cooking.', '2024-04-29 13:07:19'),
(6, 'Whisk', 'Beat eggs or mix ingredients.', '2024-04-29 13:07:19'),
(7, 'Measuring cup', 'Measure liquid or dry ingredients accurately.', '2024-04-29 13:07:19'),
(8, 'Mixing bowl', 'Combine ingredients thoroughly.', '2024-04-29 13:07:19'),
(9, 'Colander', 'Strain pasta or rinse vegetables.', '2024-04-29 13:07:19'),
(10, 'Grater', 'Grate cheese, vegetables, or spices.', '2024-04-29 13:07:19'),
(11, 'Blender', 'Blend fruits, vegetables, or ice.', '2024-04-29 13:07:33'),
(12, 'Toaster', 'Toast bread slices to desired crispness.', '2024-04-29 13:07:33'),
(13, 'Oven', 'Bake, roast, or broil various dishes.', '2024-04-29 13:07:33'),
(14, 'Microwave', 'Quickly heat or cook food.', '2024-04-29 13:07:33'),
(15, 'Mixer', 'Mix batter for cakes or cookies.', '2024-04-29 13:07:33'),
(16, 'Can opener', 'Open cans to access ingredients.', '2024-04-29 13:07:33'),
(17, 'Strainer', 'Separate liquid from solid ingredients.', '2024-04-29 13:07:33'),
(18, 'Tongs', 'Grip and lift food items safely.', '2024-04-29 13:07:33'),
(19, 'Rolling pin', 'Roll out dough for pastries or pasta.', '2024-04-29 13:07:33'),
(20, 'Peeler', 'Remove skins from fruits or vegetables.', '2024-04-29 13:07:33'),
(21, 'Juicer', 'Extract juice from fruits or vegetables.', '2024-04-29 13:07:33'),
(22, 'Scale', 'Measure ingredients accurately by weight.', '2024-04-29 13:07:33'),
(23, 'Timer', 'Set cooking or baking durations.', '2024-04-29 13:07:33'),
(24, 'Basting brush', 'Apply marinades or sauces.', '2024-04-29 13:07:33'),
(25, 'Meat thermometer', 'Check internal temperature of meats.', '2024-04-29 13:07:33'),
(26, 'Pastry brush', 'Brush pastry with egg wash or glaze.', '2024-04-29 13:07:33'),
(27, 'Corkscrew', 'Open wine or champagne bottles.', '2024-04-29 13:07:33'),
(28, 'Garlic press', 'Crush garlic cloves for seasoning.', '2024-04-29 13:07:33'),
(29, 'Ice cream scoop', 'Scoop ice cream into servings.', '2024-04-29 13:07:33'),
(30, 'Salad spinner', 'Rinse and dry salad greens thoroughly.', '2024-04-29 13:07:33'),
(31, 'Melon Baller', '- A melon baller is a kitchen tool used to shape melon into balls. Most have a rounded or oval “spoon” at the end of a handle. Some melon ballers have 2 sizes of spoons, one at each end. Cutting into the fruit of the melon with the melon baller will form balls of melon. - Substitutions: While not perfect, a small scoop could be used to make melon balls. - Tip: Use to scoop out cherry tomatoes for appetizers.', '2024-05-08 11:14:40'),
(32, 'Microwave Oven', '- A microwave oven is an electric kitchen appliance that is used to cook, defrost and reheat. - Microwave ovens are available in many different sizes. Cavity sizes range from .7 cubic feet to 2.2 cubic feet. Power or wattage runs from 700 to 1250 watts or higher. - Many come with a glass plate which revolves during microwaving to provide even cooking. Some have oven racks. - Countertop and built-in or mounted microwaves are all available. Some double as a convection oven. - Substitution: Depending on what needs to be cooked, an oven, stovetop burners or a toaster oven can be substituted. - Tips: Read the manual. Melt butter and chocolate, reheat beverages and defrost meat. Buy a microwave which has a cavity big enough to hold what you intend to put in it. Many gadgets and specialized cookware are available to use in a microwave for cooking.', '2024-05-08 11:14:40'),
(33, 'Mixer', '- An electric mixer is a kitchen appliance used to beat, mix or whip. - Electric mixers can be small, portable and hand held for small jobs or larger more powerful stand mixers for more difficult jobs. Many of the more powerful stand mixers have special attachments such as dough hooks or paddle beaters. - Substitutions: Mixtures may be creamed, mixed or beaten by hand using a wooden spoon or whisk. It may be more difficult to create the same consistency by hand as with an electric mixer. A large food processor can be used for some recipes instead of a mixer. Be careful to process ingredients just until mixed. - Tips: Be sure beaters are clean before beating egg whites. Any fat, even a drop of egg yolk, on the beaters can prevent the whites from reaching optimum volume. Whipping cream will be faster if the bowl and beaters are chilled at least 15 minutes before beating.', '2024-05-08 11:14:40'),
(34, 'Mixing Bowl', '- A mixing bowl is used to hold ingredients you are mixing, beating or whipping. - A mixing bowl can be made of glass, aluminum, stainless steel, enamel, ceramic, copper or plastic. - Common sizes of mixing bowls range from 1-quart to 4-quart. - Substitution: A large, glass measuring cup (4-cup or 8-cup) may be substituted for a mixing bowl. - Tip: Keep a variety of sizes of mixing bowls on hand so you have just the right size for each mixing step.', '2024-05-08 11:14:40'),
(35, 'Mortar and Pestle', '- A mortal and a pestle are kitchen tools which are used to crush, grind or mix herbs, spices and nuts. A bat-shaped tool, the pestle, is used to crush or grind the food in the mortar, or bowl. A mortar can be made of wood, ceramic or stone. - Substitutions: A mini food chopper, a blender, food processor or a spice or nut grinder could be substituted in many cases. - Tips: Crush whole spices with the pestle. Mix ingredients for a rub.', '2024-05-08 11:14:40'),
(36, 'Muffin Pan', '- A special metal baking pan, sometimes referred to as a muffin tin, with 6 or 12 cup-shaped depressions. Most often this pan is made from aluminum. - The sizes of muffin cups are: Standard muffin cup is about 2 1/2 inches in diameter and holds 1/4 to 1/3 cup batter, Giant or Texas-size muffin cup is about 3 ½ inches in diameter and holds 5/8 cup batter, Miniature muffin cup is about 1 1/2 to 2 inches in diameter and holds 1/8 cup or 2 tablespoons batter, Muffin-top cup is about 4 inches in diameter but are only 1/2 inch deep. - Substitutions: Substitute another size muffin cup for original size listed in recipe. If substituting a larger size muffin cup the recipe will yield fewer muffins and if using smaller size muffin cup the recipe will yield more muffins. The bake time will be changed also. Bake a larger muffin longer than the original time and smaller muffins a shorter time. - Tips: Grease muffin cups by spraying each cup with no stick cooking spray or using a paper towel dipped in shortening to grease each cup. For rounded tops on muffins grease only the bottom of the cup and halfway up the side of the cup. Use paper liners in muffin cups for easy clean-up. If muffin cups are filled more than ¾ full the muffins will have flat, “flying saucer” tops. If sufficient room is not allowed for muffins to expand before reaching the top of the cup the muffin will flatten on top. If some muffin cups will remain empty during baking, put 2 to 3 tablespoons water in the unused muffin cups to keep the pan from warping. If baked muffins stick to the bottom of the muffin cup, place hot muffin pan on a wet towel for about two minutes.', '2024-05-08 11:14:40'),
(37, 'Nut Cracker', '- A nutcracker is a metal kitchen tool, used like a pliers, for cracking hard nuts like pecans, walnuts and filberts. The nut is gripped for safe cracking. - Substitutions: A hammer and a cutting board could be used to crack the nuts. Buy nuts already shelled. - Tip: Nutcrackers can be purchased separately or in sets.', '2024-05-08 11:14:40'),
(38, 'Pancake Turner', '- A pancake turner is a flat, narrow kitchen utensil, made from rubber, plastic or metal, that comes in several sizes. - Pancake turners are used to lift or remove food from a baking pan or sheet or for turning food that is being cooked. - Rubber scrapers, pancake turners and frosting spreaders are all generically called spatulas. - Tips: Use a plastic turner on a non-stick baking pan or sheet. Using a turner with holes or slots allows liquids or fats to drain off the item being lifted. Pancake turners are great for turning flaky fish fillets.', '2024-05-08 11:14:40'),
(39, 'Panini Grill', '- A Panini grill is a specialized countertop electric kitchen appliance used to create a pressed, grilled sandwich called a Panini. - This hinged appliance has a top and bottom with ridges. Both sides heat. A sandwich is placed on the bottom and the top is slowly lowered. As it cooks, the top lowers and compresses the sandwich. The end result is a golden sandwich with grid marks, cooked on both sides at the same time. - Substitutions: A stovetop electric grill will work. You won’t get grill marks, but any type of griddle or skillet will grill a sandwich. To compress the sandwich use a grill press. - Tips: Nonstick surface makes for quick clean-up. A small amount of butter or a quick spray of cooking oil on the bread is all that is needed to give a golden surface to the bread.', '2024-05-08 11:14:40'),
(40, 'Parchment Paper', '- Parchment paper is a grease and moisture resistant white or unbleached paper sold in rolls or sheets. - It can withstand high temperatures. - Use parchment paper to line cookie sheets and cookies will lift off easily. - Substitutions: In some cases, such as when lining cake pans, waxed paper can be used. Greasing cookie sheet or cake pans very well should work in most cases. Silicone mats are becoming popular replacements for some uses. - Tips: Line cake pans for easy removal of cake layers. Lay the cake pan, bottom side down, on the parchment paper. Trace around it. Cut the paper, grease the pan, and line the greased pan with the parchment paper. Lining cookie sheets with parchment paper helps with cleanup. If decorating cookies with sprinkles or sugar before baking, the excess sugar can be shaken off the parchment paper and reused for the next pan of cookies.', '2024-05-08 11:14:40'),
(41, 'Pastry Bag', '- A pastry bag is a cone or triangular shaped bag used for cake and cookie decorating. It is also used to pipe whipping cream, mashed potatoes or other semi-soft foods. - The bags come in many materials including plastic-lined cotton, disposable plastic and paper. - The bags can be fitted with decorative tips. The frosting or food is forced through the opening to create various designs and shapes. - Substitutions: For some quick jobs, cut a small opening in one bottom corner of a plastic food storage bag. Fill and squeeze food through opening. Buy frosting in tubes and cans in the baking section for decorating cakes and cookies. - Tip: Disposable pastry bags are sold on rolls.', '2024-05-08 11:14:40'),
(42, 'Pastry Blender', '- A pastry blender is made of five or six parallel U-shaped steel wires attached at both ends to a handle. - A pastry blender is used to cut cold butter into a flour mixture to distribute the fat without melting it such as in making pie crusts or biscuits. - Substitutions: Two knives held together at an angle may be substituted for a pastry blender. Use the knives to cut the fat into the dry ingredients until the pieces of flour-coated fat become smaller and have the texture of coarse crumbs. A fork may also be used instead of two knives. - Tips: Be sure the butter is cold when cutting it into the flour. If the butter is too soft, the mixture becomes overworked, resulting in a pastry that is not flaky and tender. Cut butter into chunks before mixing with a pastry blender so the butter will be easier to mix. Our Blue Ribbon Apple Pie uses a pastry blender to create the crust.', '2024-05-08 11:14:40'),
(43, 'Pastry Brush', '- A baking tool that looks similar to a small paintbrush, about 1 to 1 1/2-inches thick. - Common liquids used with a pastry brush are milk, water and egg whites. Use a pastry brush to brush marinades over meats also. - Tip: To avoid bacteria, or other contamination, clean pastry brush in dishwasher or with hot tap water after each use.', '2024-05-08 11:14:40'),
(44, 'Pastry Cloth', '- A pastry cloth is a large canvas cloth on which pastry or dough can be rolled. - Substitutions: A plain white cotton plain weave dishtowel may be substituted for a pastry cloth. - Tips: Only a light dusting of flour is needed to prevent dough from sticking to the pastry cloth, eliminating the tendency to use too much flour when rolling out soft dough. The pastry cloth must be cleaned before storing to prevent any fat residue from becoming rancid.', '2024-05-08 11:14:40'),
(45, 'Pastry Cutter', '- A pastry crimping wheel is a rolling-bladed tool with a fluted design. It is used to cut dough and add a decorative edge treatment to pie crusts. - A pastry cutter has a straight-edged rolling wheel and is often used to cut narrow strips of dough for a lattice topped pie. - Substitutions: For a pastry cutter, you could use a pizza cutter or sharp knife. For a crimping wheel, choose an alternate edge treatment, such as a forked edge. - Tips: To avoid bacteria, or other contamination, be sure to clean grooves carefully after each use. You can find these tools in gourmet kitchen stores.', '2024-05-08 11:14:40'),
(46, 'Pepper Mill', '- A pepper mill is a glass, wood or plastic container that can be filled with whole peppercorns to be ground as needed. Most have adjustments for the coarseness of the grind. The advantage is freshly ground pepper at your fingertips. - Substitutions: Many spice companies now sell peppercorns in grinder containers. Pepper shaker filled with pre-ground pepper. - Tips: Experiment with different kinds of peppercorns. Also used different adjustments to get the grind size you want.', '2024-05-08 11:14:40'),
(47, 'Pie Pans', '- A pan shaped like a plate with sides that is used to bake pies, quiches and frittatas. - Pie plates are commonly made from heat-resistant glass or aluminum. The glass pie plates give the flakiest results and are what we recommend. Glass also produces a more evenly browned crust. Aluminum pans with a dull finish or darkened pans yield a well-baked, tender browned under-crust. Shiny metal pie pans reflect the heat and result in soggy bottom pie crusts and are not recommended. - Common sizes of pie plates are: 9 inches in diameter by 1 inch deep; holds approximately 4.5 cups, 10 inches in diameter by 1 inch deep; holds approximately 6 cups, Deep Dish: 9 inches in diameter by 2 inches deep; holds approximately 6 cups, Deep Dish: 10 inches in diameter by 2 inches deep; holds approximately 8 cups - Tips: If you’re not sure about the size of your pan, measure the diameter from the inside rim. Do not grease a pie plate, unless recipe states to do so. Make sure to secure the edges of a pie crust to the rim of pie plate to avoid shrunken or misshaped pies.', '2024-05-08 11:14:40'),
(48, 'Pie Weights', '- Small ceramic or aluminum pellet-like weights used to keep an unfilled pie or tart crust from shrinking during baking. - Pie weights can be found in gourmet stores and in the baking section of some supermarkets. - Substitutions: Rice or beans can be used as an alternative. If rice or beans are used repeatedly, they will burn and become musty with use. - Tips: Pour 1 to 2 cups of pie weights into an unfilled, foil lined pie crust before baking. Crust should be pricked with a fork prior to adding the pie weights. Some recipes call for removing the pie weights and lining half way during baking time. Read recipe directions carefully.', '2024-05-08 11:14:40'),
(49, 'Pizza Wheel', '- A pizza wheel is a hand held kitchen tool that has a round, sharp blade for cutting slices of pizza. - Substitutions: A knife will work just fine. - Tip: Slice sandwiches, cut bars and some flat desserts.', '2024-05-08 11:14:40'),
(50, 'Plastic Wrap', '- Plastic wrap is food wrap that is a thin, transparent plastic sold on a roll. It is used to wrap food, as it clings to the food and the container to make an airtight seal. - Substitutions: Food storage containers, plastic kitchen bags or aluminum foil can be used to wrap or store food. - Tips: There are many brands and some have extra clinging power.', '2024-05-08 11:14:40'),
(51, 'Potato Masher', '- A potato masher is a kitchen utensil used to mash potatoes and other vegetables. One common type has a long firm handle connected to a flat plate which has perforations in it. Some have a serpentine shape. Some are stainless steel and some are nylon. - Substitutions: A hand or stand mixer can be used to mash potatoes and other foods. - Tip: Mash other vegetables, such as rutabagas or sweet potatoes.', '2024-05-08 11:14:40'),
(52, 'Potato Ricer', '- A potato ricer is a hand-held kitchen utensil which is used to force food, like potatoes, through small holes. Potatoes are placed in the bottom cup of the masher. The top cup is then pressed down, forcing the potatoes to come out in short strands. On some ricers there are different blades for regulating the size of the riced potato. Potatoes can be served like that or quickly mashed without using a potato masher. - Substitutions: A potato masher could be used to force potatoes through a colander. - Tip: Potatoes which have been riced are a novelty in most homes. Top the potatoes with butter, salt and pepper and serve.', '2024-05-08 11:14:40'),
(53, 'Pots and Pans', '- Pots and pans are kitchen utensils used to cook food. They are available in many sizes and made from many types of materials. - The most common sizes are 1, 2 and 3-quart saucepans. - A skillet is a kitchen pan used for sautéing, cooking eggs or frying chicken. It has low sides compared to a saucepan and are available in many sizes: 8 to 12-inch skillets are the most common. Many are sold without a lid. Skillets with sloping sides instead of straight sides are often called saute pans. - A larger pan is referred to as a Dutch oven or stockpot. - Pots and pans are made from many different materials: Anodized aluminum goes through a process which makes the aluminum nonreactive to acid, resistant to scratching and creates a non-stick surface. It is very popular, also called hard anodized aluminum. Aluminum is light and durable. It is heat sensitive, heating and cooling quickly. Since it reacts to acid or alkaline food, it is usually coated with stainless steel or a nonstick surface. Stainless steel is durable and nonreactive to acid. It is rust resistant and won’t pit. It doesn’t conduct heat very well, so is often combined with copper or aluminum as a base layer. Copper is a good heat conductor but it is easily dented and tarnishes. It is often used as a base or thin layer in a pan. Cast-iron is heavy. These pans heat slowly and distribute heat well. They also rust and need to be seasoned. Some cast iron skillets are now sold pre-seasoned. Some pans have a porcelain enamel exterior and often a hard anodized interior. - Tips: Pots and pans are often sold in sets. If a set contains most of the pans you would like, it might be the most economical route. Otherwise, buy pans that you need. Some sets have lids for skillets and pans that are interchangeable. That is good for storage. Nonstick surfaced pans make clean up easier.', '2024-05-08 11:14:40'),
(54, 'Pressure Cooker', '- A pressure cooker is a stovetop or electric kitchen pot where steam pressure builds up quickly, cooking food above the boiling point. A pressure cooker is a quick way to cook meats, sauces and other foods which take a long time to cook. It is often 5-quarts, but other sizes are sold. - Pressure canners are used for home canning. It is larger than pressure cookers and have a pressure gauge on the valve of the canner to safely process low acid foods. The pressure must be monitored during the cooking time. They are heavy pots and come in various sizes. - Water bath canners are used to can non-acidic foods and are usually 21 ½ quarts. They are often sold with jar racks, tongs and a canning jar lifter. - Substitutions: A Dutch oven or heavy pot will work for moist heating methods, but it will take longer. For canning low acid foods you must have a pressure canner. - Tips: Read the manual, especially for canning. A required time and pressure is needed for food safety.', '2024-05-08 11:14:40'),
(55, 'Ramekins', '- Ramekins are small souffle dishes. The most common size holds 8 ounces. They are fluted on the outside and smooth on the inside. They are usually ceramic and are sold in white or various colors. - They are used in baking small desserts or to serve individual portions. - Substitution: Custard or muffin pans may be used if they are large enough. - Tips: These small dishes make ideal serving pieces for dips, salsas, candy, nuts, etc. Baked or frozen desserts in ramekins are an attractive way to serve dessert. Bake individual servings of macaroni and cheese, au gratin potatoes, etc.', '2024-05-08 11:14:40'),
(56, 'Rice Cooker', '- A rice cooker is an electric countertop kitchen appliance. - Rice and water are placed in a removable cooking pan which is placed over an electric base. As the steam builds the rice is steamed. - More elaborate models, sometimes called food steamers, have extra trays for steaming meat, fish or vegetables which are cooked at the same time as the rice. - Most rice cookers have temperature controls for numerous cooking functions. - Substitutions: Cook rice according to package directions in saucepan. - Tips: Read the manual. There are many foods such as soups, stews, oatmeal and vegetables that can be prepared in the rice cooker.', '2024-05-08 11:14:40'),
(57, 'Roasting Pan', '- A roasting pan is a large pan used for roasting meat and poultry. - It often comes with a meat rack which holds the cooking meat or poultry out of the drippings and fat which aids in crisping the skin of the poultry. - Roasting pans are most often made of stainless steel, aluminum or enamel. They come in various sizes. Some have a cover. - Substitutions: For roasting substitute a 13x9-inch baking pan, if it is large enough. - Tips: These are bulky pans. Store infrequently used kitchen tools and items inside them.', '2024-05-08 11:14:40'),
(58, 'Rolling Pin', '- A rolling pin is a long round cylinder used to roll out dough or crush cracker crumbs. - Rolling pins are generally made from wood, but can be made from marble, glass, ceramic, porcelain or plastic. - Some rolling pins have handles at each end, making the rolling pin easier to handle and to allow for uniform pressure to be exerted. - A rolling pin cover is a stretchable \"stocking\" that fits over the rolling pin. - Substitutions: A large wooden dowel about 12 inches long may be substituted for a rolling pin. A clean white athletic tube sock can be used as a substitute for a rolling pin cover. Slip over one end of a rolling pin, then cut off the opposite end. - Tips: Only a light dusting of flour is needed to prevent dough from sticking to the rolling pin cover, eliminating the tendency to use too much flour when rolling out soft dough. The rolling pin cover must be cleaned before storing to prevent any fat residue from becoming rancid.', '2024-05-08 11:14:40'),
(59, 'Salad Spinner', '- A salad spinner is a piece of kitchen equipment used to spin greens dry. Washed greens are placed in a perforated basket. This is inserted in the large bowl of the spinner. Then either a hand lever or pump spins the basket, spinning the greens dry. The water drains to the bottom of the spinner. - Substitutions: Buy prewashed greens. Rinse greens well and pat dry on clean kitchen towels or paper towels. - Tips: Use the base to store the dry greens. Use the spinner to spin dry a large quantity of herbs.', '2024-05-08 11:14:40'),
(60, 'Saucepan', '- A saucepan is a kitchen utensil used for cooking food. - Saucepan materials include:   * Anodized aluminum  * Aluminum  * Stainless steel  * Copper  * Cast-iron  * Porcelain enamel - Substitute: Cook food in a microwave.  - Tips: Saucepans are sometimes sold in sets with skillets and have lids that are interchangeable.  Non-stick surfaced pans make clean up easier.', '2024-05-08 11:14:40'),
(61, 'Scale', '- A scale is a piece of kitchen equipment used to weigh foods. - There are many types of kitchen scales: spring operated, balance or digital. - Substitution: Metal and glass measuring cups.  - Tips: Many recipes now provide both a cup measurement and a weight measurement. Read the manual to learn how to use a scale.', '2024-05-08 11:14:40'),
(62, 'Scoop', '- A scoop is a kitchen utensil used for specific tasks. - Scoops can be made of plastic, stainless steel or other metal. - Use: Ice cream scoop, portion food, measure cookie dough. - Substitution: Measuring cup, tablespoon, or kitchen spoon.  - Tips: A 2 to 3-inch scoop is good for ice cream and mashed potatoes.', '2024-05-08 11:14:40'),
(63, 'Sifter', '- A sifter is a kitchen tool used to aerate flour and sift lumps out of food like powdered sugar. - Substitution: For some foods a colander could be used.  - Tip: There is no need to sift flour. Just gently spoon the flour into a measuring cup.', '2024-05-08 11:14:40'),
(64, 'Skewer', '- A skewer is a thin rod of stainless steel used for broiling or grilling food. - Use: Meat, poultry, vegetables, and fruit can be threaded onto the skewers to create kabobs. - Substitution: A grill basket.  - Tip: Soak bamboo skewers in water for 20-30 minutes to prevent burning.', '2024-05-08 11:14:40'),
(65, 'Skillet/Saute Pan', '- A skillet or saute pan is a kitchen pan used for sautéing, cooking eggs or frying chicken. - Skillets are made from many different materials: Anodized aluminum, aluminum, stainless steel, copper, cast-iron, and porcelain enamel. - Substitute: Depending on the food, you can cook food in a microwave, a toaster oven, wok or electric skillet.  - Tips: Skillets are sometimes sold in sets with saucepans and have lids that are interchangeable. Nonstick surfaced pans make clean up easier.', '2024-05-08 11:14:40'),
(66, 'Slow Cooker', '- A slow cooker is an electric countertop kitchen appliance. - It cooks with a low, constant heat, often 6 to 10 hours. - Sizes range from 1 to 6 quarts. - Substitute: A Dutch oven or other heavy pot with a tight lid.  - Tips: Don’t fill a slow cooker more than half full.', '2024-05-08 11:14:40'),
(67, 'Spaghetti Server', '- A spaghetti server is a kitchen tool that lifts cooked pasta out of boiling water. - Use: The spaghetti server also neatly portions out a serving of pasta. - Substitution: Drain pasta into colander.  - Tip: Most spaghetti servers are nonstick and dishwasher safe.', '2024-05-08 11:14:40'),
(68, 'Spatula', '- A spatula is a flat, narrow kitchen utensil, made from rubber, plastic or metal, that comes in several sizes. - Use: Flexible metal spatulas are good for spreading frostings on cakes. - Substitutions: Use a plastic turner on a non stick baking pan or sheet.  - Tips: If crumbs or residue from baked cookies stick to the edge of spatula when removing cookies to a cooling rack, be sure to clean edge of spatula before continuing so cookies do not distort in shape as they are being removed from the baking sheet.', '2024-05-08 11:14:40'),
(69, 'Spoon', '- A spoon is a kitchen tool used for stirring and mixing. - Use: Spoons are available in many sizes and made of many different materials. - Substitutions: Try using a large tablespoon.  - Tips: Some plastic or silicone spoons are high heat tolerant.', '2024-05-08 11:14:40'),
(70, 'Steamer Insert', '- A steamer is an adjustable, collapsible piece of kitchen equipment. - Use: Steamers are often made of stainless steel. - Substitution: Cook vegetables in a pan with a small amount of water.  - Tips: A steamer insert can be used as a colander to drain foods.', '2024-05-08 11:14:40'),
(71, 'Stockpot', '- A stockpot is a large kitchen pot with tall, straight sides. - It is used to make soups, stews, sauces and stock. - Sizes range from 8 to 12 quarts. - Substitution: A Dutch oven or a large pot could be used if it is large enough.  - Tip: Since these are big pans, you can store other infrequently used pans or kitchen equipment inside the stockpot.', '2024-05-08 11:14:40'),
(72, 'Thermometer', '- An oven thermometer is used to verify that the oven temperature is correct. - Tips: Place the oven thermometer in the middle of the oven away from the sides to obtain an accurate temperature reading.', '2024-05-08 11:14:40'),
(73, 'Toaster', '- A toaster is a countertop electric kitchen appliance used for toasting bread, bagels and heating refrigerated toaster products. - Use: Two or four slice toasters are the most common. - Substitutions: A toaster oven or oven broiler.  - Tips: Clean the crumb tray often.', '2024-05-08 11:14:40'),
(74, 'Toaster Oven', '- A toaster oven is a countertop electric cooking appliance used to perform many of the functions of an oven. - Substitutions: An oven can perform all the functions of a toaster oven.  - Tips: Reheat foods like pizza in the toaster oven. The crust will stay crisper than if it is reheated in the microwave.', '2024-05-08 11:14:40'),
(75, 'Tongs', '- Tongs are kitchen equipment used to remove food from boiling water or turn over meat. - Some tongs have a lock feature which closes the tongs for storage. - Use: Salad tongs have a large fork and spoon-like base at the bottom of the double handle. - Substitution: For meat a pancake turner would work.  - Tip: Salad tongs have a large fork and spoon-like base at the bottom of the double handle.', '2024-05-08 11:14:40'),
(76, 'Toothpick', '- A toothpick is used to determine doneness of cakes, bars and quick breads. - Substitution: A metal cake tester may be substituted for a toothpick when determining doneness of a baked product.  - Tip: Use a clean toothpick each time you check for doneness.', '2024-05-08 11:14:40'),
(77, 'Vegetable Peeler', '- A vegetable peeler is a kitchen utensil that is used to pare the skin from vegetables or fruit. - Substitution: A paring knife can be used to peel vegetables or fruits.  - Tip: Replace when the blade gets dull.', '2024-05-08 11:14:40'),
(78, 'Waffle Iron', '- A waffle iron is a countertop electric appliance that is used to make waffles. - The waffle iron heats from the top and the bottom, creating a crispy waffle. - Substitute: A honeycomb of raised grids or ridges, give waffles their appearance.  - Tips: Look for an iron with a nonstick surface, making it easier for the waffles to release.', '2024-05-08 11:14:40'),
(79, 'Wax Paper', '- Wax paper is a thin sheet of paper that has wax on both sides so it is moisture-proof. - Use: It is used to line cake pans for easy removal of cake layers, wrap sandwiches and cover foods during microwaving. - Substitutions: Plastic food storage bags, aluminum foil, plastic wrap, parchment paper.  - Tips: Roll out cookie dough or pie crust between 2 sheets of wax paper.', '2024-05-08 11:14:40'),
(80, 'Whisk', '- A wire whisk is made from a series of looped wires fastened at the top by a long handle. - Whisks are used to whip air into ingredients, such as egg whites or whipping cream. - Substitutions: Use a portable electric mixer or wooden spoon.  - Tips: If whisking a very small amount such as one egg white, a fork can be used to whip the mixture and incorporate air.', '2024-05-08 11:14:40'),
(81, 'Wok', '- A wok is a large kitchen stovetop pan or a countertop electric cooking appliance used to stir fry food. - Many woks are nonstick and come in various sizes. - Substitution: A large skillet can be used to stir fry.  - Tip: Steam or braise food in the electric wok.', '2024-05-08 11:14:40'),
(82, 'Wooden Spoon', '- Wooden spoons do not scratch non-stick pans. - Keep a variety of wooden spoons available for baking projects. - Substitutions: A large sturdy plastic spoon can be used instead of a wooden spoon.  - Tips: Always wash and dry wooden spoons after use. Allow them to air dry.', '2024-05-08 11:14:40'),
(83, 'Zester', '- A traditional zester is a small kitchen utensil used to remove the zest from citrus fruit. - Some zesters have a hole at the end which can be used to cut ribbons of peel for garnishes and drinks. - Substitutions: Many small, fine graters will also remove zest from citrus fruit.  - Tips: If you are just juicing fruit, remove the zest and freeze.', '2024-05-08 11:14:40'),
(84, 'Aluminum Foil', '- Use for lining baking pans and wrapping food for freezing. - Avoid using with acidic foods like tomatoes as it can cause pitting. - Generally not recommended for use in the microwave oven.', '2024-05-08 11:14:40'),
(85, 'Baking Dishes', '- Opt for attractive casseroles for easy table presentation and cleanup. - Casseroles are ideal for one-dish meals combining meat, starch, and vegetables with sauce or soup.', '2024-05-08 11:14:40'),
(86, 'Baking Sheet', '- Prefer shiny aluminum baking sheets without sides for optimal results. - Cool baking sheet completely before reuse. - Bake one sheet of cookies at a time on the middle rack for even baking. - Dark-colored sheets brown products faster; parchment paper lining aids in cleaning and prevents scorching. Follow recipe directions for greasing or spraying the baking sheet.', '2024-05-08 11:14:40'),
(87, 'Baking/Cookie Sheet', '- Prefer shiny aluminum baking sheets without sides for optimal results. - Cool baking sheet completely before reuse. - Bake one sheet of cookies at a time on the middle rack for even baking. - Dark-colored sheets brown products faster; parchment paper lining aids in cleaning and prevents scorching. Follow recipe directions for greasing or spraying the baking sheet.', '2024-05-08 11:14:40');

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

--
-- Dumping data for table `equipment_requirements`
--

INSERT INTO `equipment_requirements` (`id`, `recipe_id`, `equipment_id`, `quantity`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-04-29 13:13:56'),
(2, 1, 7, 2, '2024-05-09 10:24:45'),
(3, 1, 11, 1, '2024-04-29 13:13:56'),
(4, 2, 1, 1, '2024-04-29 13:13:56'),
(5, 2, 14, 2, '2024-05-09 10:24:45'),
(6, 2, 15, 3, '2024-05-09 10:24:45'),
(7, 3, 2, 3, '2024-05-09 10:24:45'),
(8, 3, 8, 2, '2024-05-09 10:24:45'),
(9, 3, 17, 3, '2024-05-09 10:24:45'),
(10, 4, 2, 1, '2024-04-29 13:13:56'),
(11, 4, 3, 1, '2024-04-29 13:13:56'),
(12, 4, 6, 2, '2024-05-09 10:24:45'),
(13, 5, 16, 1, '2024-04-29 13:13:56'),
(14, 5, 18, 3, '2024-05-09 10:24:45'),
(15, 5, 20, 2, '2024-05-09 10:24:45'),
(16, 6, 1, 1, '2024-04-29 13:13:56'),
(17, 6, 5, 3, '2024-05-09 10:24:45'),
(18, 6, 9, 2, '2024-05-09 10:24:45'),
(19, 7, 1, 3, '2024-05-09 10:24:45'),
(20, 7, 4, 2, '2024-05-09 10:24:45'),
(21, 7, 13, 2, '2024-05-09 10:24:45'),
(22, 8, 1, 1, '2024-04-29 13:13:56'),
(23, 8, 2, 1, '2024-04-29 13:13:56'),
(24, 8, 12, 2, '2024-05-09 10:24:45'),
(25, 9, 1, 2, '2024-05-09 10:24:45'),
(26, 9, 4, 1, '2024-04-29 13:13:56'),
(27, 9, 19, 3, '2024-05-09 10:24:45'),
(28, 10, 2, 2, '2024-05-09 10:24:45'),
(29, 10, 10, 2, '2024-05-09 10:24:45'),
(30, 10, 16, 1, '2024-04-29 13:13:56'),
(31, 11, 1, 1, '2024-04-29 13:15:53'),
(32, 11, 2, 1, '2024-04-29 13:15:53'),
(33, 11, 5, 1, '2024-04-29 13:15:53'),
(34, 12, 1, 1, '2024-04-29 13:15:53'),
(35, 12, 3, 2, '2024-05-09 10:24:45'),
(36, 12, 7, 1, '2024-04-29 13:15:53'),
(37, 13, 2, 3, '2024-05-09 10:24:45'),
(38, 13, 4, 3, '2024-05-09 10:24:45'),
(39, 13, 11, 1, '2024-04-29 13:15:53'),
(40, 14, 2, 3, '2024-05-09 10:24:45'),
(41, 14, 6, 2, '2024-05-09 10:24:45'),
(42, 14, 13, 2, '2024-05-09 10:24:45'),
(43, 15, 1, 3, '2024-05-09 10:24:45'),
(44, 15, 4, 3, '2024-05-09 10:24:45'),
(45, 15, 17, 3, '2024-05-09 10:24:45'),
(46, 16, 2, 2, '2024-05-09 10:24:45'),
(47, 16, 8, 1, '2024-04-29 13:15:53'),
(48, 16, 15, 2, '2024-05-09 10:24:45'),
(49, 17, 3, 3, '2024-05-09 10:24:45'),
(50, 17, 11, 3, '2024-05-09 10:24:45'),
(51, 17, 18, 3, '2024-05-09 10:24:45'),
(52, 18, 1, 1, '2024-04-29 13:15:53'),
(53, 18, 12, 2, '2024-05-09 10:24:45'),
(54, 18, 20, 3, '2024-05-09 10:24:45'),
(55, 19, 1, 2, '2024-05-09 10:24:45'),
(56, 19, 4, 2, '2024-05-09 10:24:45'),
(57, 19, 19, 2, '2024-05-09 10:24:45'),
(58, 20, 2, 2, '2024-05-09 10:24:45'),
(59, 20, 13, 2, '2024-05-09 10:24:45'),
(60, 20, 16, 1, '2024-04-29 13:15:53'),
(61, 21, 2, 1, '2024-04-29 13:16:58'),
(62, 21, 3, 1, '2024-04-29 13:16:58'),
(63, 21, 6, 1, '2024-04-29 13:16:58'),
(64, 22, 1, 1, '2024-04-29 13:16:58'),
(65, 22, 9, 2, '2024-05-09 10:24:45'),
(66, 22, 11, 2, '2024-05-09 10:24:45'),
(67, 23, 2, 1, '2024-04-29 13:16:58'),
(68, 23, 4, 2, '2024-05-09 10:24:45'),
(69, 23, 15, 2, '2024-05-09 10:24:45'),
(70, 24, 2, 1, '2024-04-29 13:16:58'),
(71, 24, 10, 3, '2024-05-09 10:24:45'),
(72, 24, 17, 1, '2024-04-29 13:16:58'),
(73, 25, 1, 2, '2024-05-09 10:24:45'),
(74, 25, 3, 1, '2024-04-29 13:16:58'),
(75, 25, 19, 3, '2024-05-09 10:24:45'),
(76, 26, 1, 1, '2024-04-29 13:16:58'),
(77, 26, 4, 2, '2024-05-09 10:24:45'),
(78, 26, 13, 2, '2024-05-09 10:24:45'),
(79, 27, 2, 2, '2024-05-09 10:24:45'),
(80, 27, 6, 3, '2024-05-09 10:24:45'),
(81, 27, 14, 3, '2024-05-09 10:24:45'),
(82, 28, 1, 1, '2024-04-29 13:16:58'),
(83, 28, 4, 2, '2024-05-09 10:24:45'),
(84, 28, 20, 3, '2024-05-09 10:24:45'),
(85, 29, 1, 3, '2024-05-09 10:24:45'),
(86, 29, 5, 2, '2024-05-09 10:24:45'),
(87, 29, 7, 3, '2024-05-09 10:24:45'),
(88, 30, 1, 2, '2024-05-09 10:24:45'),
(89, 30, 2, 1, '2024-04-29 13:16:58'),
(90, 30, 8, 3, '2024-05-09 10:24:45'),
(91, 31, 2, 2, '2024-05-09 10:24:45'),
(92, 31, 12, 1, '2024-04-29 13:17:56'),
(93, 31, 17, 2, '2024-05-09 10:24:45'),
(94, 32, 2, 1, '2024-04-29 13:17:56'),
(95, 32, 10, 3, '2024-05-09 10:24:45'),
(96, 32, 15, 2, '2024-05-09 10:24:45'),
(97, 33, 2, 3, '2024-05-09 10:24:45'),
(98, 33, 3, 2, '2024-05-09 10:24:45'),
(99, 33, 16, 3, '2024-05-09 10:24:45'),
(100, 34, 2, 3, '2024-05-09 10:24:45'),
(101, 34, 4, 1, '2024-04-29 13:17:56'),
(102, 34, 20, 3, '2024-05-09 10:24:45'),
(103, 35, 2, 3, '2024-05-09 10:24:45'),
(104, 35, 14, 1, '2024-04-29 13:17:56'),
(105, 35, 19, 1, '2024-04-29 13:17:56'),
(106, 36, 2, 1, '2024-04-29 13:17:56'),
(107, 36, 7, 2, '2024-05-09 10:24:45'),
(108, 36, 13, 1, '2024-04-29 13:17:56'),
(109, 37, 1, 3, '2024-05-09 10:24:45'),
(110, 37, 6, 2, '2024-05-09 10:24:45'),
(111, 37, 17, 2, '2024-05-09 10:24:45'),
(112, 38, 1, 3, '2024-05-09 10:24:45'),
(113, 38, 5, 2, '2024-05-09 10:24:45'),
(114, 38, 11, 1, '2024-04-29 13:17:56'),
(115, 39, 2, 1, '2024-04-29 13:17:56'),
(116, 39, 8, 3, '2024-05-09 10:24:45'),
(117, 39, 12, 2, '2024-05-09 10:24:45'),
(118, 40, 2, 1, '2024-04-29 13:17:56'),
(119, 40, 3, 3, '2024-05-09 10:24:45'),
(120, 40, 6, 1, '2024-04-29 13:17:56'),
(121, 41, 2, 2, '2024-05-09 10:24:45'),
(122, 41, 3, 3, '2024-05-09 10:24:45'),
(123, 41, 17, 3, '2024-05-09 10:24:45'),
(124, 42, 2, 2, '2024-05-09 10:24:45'),
(125, 42, 4, 3, '2024-05-09 10:24:45'),
(126, 42, 15, 1, '2024-04-29 13:18:57'),
(127, 43, 1, 3, '2024-05-09 10:24:45'),
(128, 43, 16, 1, '2024-04-29 13:18:57'),
(129, 43, 20, 3, '2024-05-09 10:24:45'),
(130, 44, 1, 3, '2024-05-09 10:24:45'),
(131, 44, 5, 2, '2024-05-09 10:24:45'),
(132, 44, 11, 3, '2024-05-09 10:24:45'),
(133, 45, 1, 1, '2024-04-29 13:18:57'),
(134, 45, 7, 3, '2024-05-09 10:24:45'),
(135, 45, 13, 1, '2024-04-29 13:18:57'),
(136, 46, 1, 1, '2024-04-29 13:18:57'),
(137, 46, 3, 2, '2024-05-09 10:24:45'),
(138, 46, 19, 1, '2024-04-29 13:18:57'),
(139, 47, 1, 2, '2024-05-09 10:24:45'),
(140, 47, 4, 3, '2024-05-09 10:24:45'),
(141, 47, 20, 1, '2024-04-29 13:18:57'),
(142, 48, 1, 2, '2024-05-09 10:24:45'),
(143, 48, 6, 1, '2024-04-29 13:18:57'),
(144, 48, 17, 3, '2024-05-09 10:24:45'),
(145, 49, 2, 3, '2024-05-09 10:24:45'),
(146, 49, 8, 3, '2024-05-09 10:24:45'),
(147, 49, 12, 1, '2024-04-29 13:18:57'),
(148, 50, 2, 2, '2024-05-09 10:24:45'),
(149, 50, 10, 3, '2024-05-09 10:24:45'),
(150, 50, 15, 3, '2024-05-09 10:24:45'),
(151, 51, 1, 3, '2024-05-09 10:24:45'),
(152, 51, 7, 2, '2024-05-09 10:24:45'),
(153, 51, 11, 2, '2024-05-09 10:24:45'),
(154, 52, 1, 2, '2024-05-09 10:24:45'),
(155, 52, 14, 1, '2024-05-09 10:19:50'),
(156, 52, 15, 2, '2024-05-09 10:24:45'),
(157, 53, 2, 1, '2024-05-09 10:19:50'),
(158, 53, 8, 3, '2024-05-09 10:24:45'),
(159, 53, 17, 2, '2024-05-09 10:24:45'),
(160, 54, 2, 3, '2024-05-09 10:24:45'),
(161, 54, 3, 1, '2024-05-09 10:19:50'),
(162, 54, 6, 1, '2024-05-09 10:19:50'),
(163, 55, 16, 3, '2024-05-09 10:24:45'),
(164, 55, 18, 1, '2024-05-09 10:19:50'),
(165, 55, 20, 1, '2024-05-09 10:19:50'),
(166, 56, 1, 1, '2024-05-09 10:19:50'),
(167, 56, 5, 2, '2024-05-09 10:24:45'),
(168, 56, 9, 1, '2024-05-09 10:19:50'),
(169, 57, 1, 1, '2024-05-09 10:19:50'),
(170, 57, 4, 3, '2024-05-09 10:24:45'),
(171, 57, 13, 1, '2024-05-09 10:19:50'),
(172, 58, 1, 3, '2024-05-09 10:24:45'),
(173, 58, 2, 2, '2024-05-09 10:24:45'),
(174, 58, 12, 1, '2024-05-09 10:19:50'),
(175, 59, 1, 1, '2024-05-09 10:19:50'),
(176, 59, 4, 2, '2024-05-09 10:24:45'),
(177, 59, 19, 3, '2024-05-09 10:24:45'),
(178, 60, 2, 3, '2024-05-09 10:24:45'),
(179, 60, 10, 2, '2024-05-09 10:24:45'),
(180, 60, 16, 3, '2024-05-09 10:24:45'),
(181, 61, 1, 3, '2024-05-09 10:24:45'),
(182, 61, 2, 1, '2024-05-09 10:19:50'),
(183, 61, 5, 2, '2024-05-09 10:24:45'),
(184, 62, 1, 1, '2024-05-09 10:19:50'),
(185, 62, 3, 3, '2024-05-09 10:24:45'),
(186, 62, 7, 2, '2024-05-09 10:24:45'),
(187, 63, 2, 1, '2024-05-09 10:19:50'),
(188, 63, 4, 1, '2024-05-09 10:19:50'),
(189, 63, 11, 3, '2024-05-09 10:24:45'),
(190, 64, 2, 2, '2024-05-09 10:24:45'),
(191, 64, 6, 3, '2024-05-09 10:24:45'),
(192, 64, 13, 2, '2024-05-09 10:24:45'),
(193, 65, 1, 3, '2024-05-09 10:24:45'),
(194, 65, 4, 3, '2024-05-09 10:24:45'),
(195, 65, 17, 3, '2024-05-09 10:24:45'),
(196, 66, 2, 2, '2024-05-09 10:24:45'),
(197, 66, 8, 2, '2024-05-09 10:24:45'),
(198, 66, 15, 2, '2024-05-09 10:24:45'),
(214, 67, 1, 1, '2024-05-09 10:20:13'),
(215, 67, 12, 3, '2024-05-09 10:24:45'),
(216, 67, 20, 1, '2024-05-09 10:20:13'),
(217, 68, 1, 2, '2024-05-09 10:24:45'),
(218, 68, 4, 1, '2024-05-09 10:20:13'),
(219, 68, 19, 3, '2024-05-09 10:24:45'),
(220, 69, 2, 3, '2024-05-09 10:24:45'),
(221, 69, 13, 2, '2024-05-09 10:24:45'),
(222, 69, 16, 3, '2024-05-09 10:24:45'),
(223, 70, 2, 2, '2024-05-09 10:24:45'),
(224, 70, 3, 3, '2024-05-09 10:24:45'),
(225, 70, 6, 3, '2024-05-09 10:24:45'),
(226, 71, 1, 3, '2024-05-09 10:24:45'),
(227, 71, 9, 2, '2024-05-09 10:24:45'),
(228, 71, 11, 1, '2024-05-09 10:20:13'),
(229, 72, 2, 2, '2024-05-09 10:24:45'),
(230, 72, 4, 2, '2024-05-09 10:24:45'),
(231, 72, 15, 3, '2024-05-09 10:24:45'),
(232, 73, 2, 1, '2024-05-09 10:20:13'),
(233, 73, 10, 2, '2024-05-09 10:24:45'),
(234, 73, 17, 1, '2024-05-09 10:20:13'),
(235, 74, 1, 1, '2024-05-09 10:20:13'),
(236, 74, 3, 3, '2024-05-09 10:24:45'),
(237, 74, 19, 3, '2024-05-09 10:24:45'),
(238, 75, 1, 1, '2024-05-09 10:20:13'),
(239, 75, 4, 1, '2024-05-09 10:20:13'),
(240, 75, 13, 2, '2024-05-09 10:24:45'),
(241, 76, 2, 2, '2024-05-09 10:24:45'),
(242, 76, 6, 2, '2024-05-09 10:24:45'),
(243, 76, 14, 2, '2024-05-09 10:24:45'),
(244, 77, 1, 2, '2024-05-09 10:24:45'),
(245, 77, 4, 3, '2024-05-09 10:24:45'),
(246, 77, 20, 1, '2024-05-09 10:20:13'),
(247, 78, 1, 1, '2024-05-09 10:20:13'),
(248, 78, 5, 3, '2024-05-09 10:24:45'),
(249, 78, 7, 1, '2024-05-09 10:20:13'),
(250, 79, 1, 1, '2024-05-09 10:20:13'),
(251, 79, 2, 3, '2024-05-09 10:24:45'),
(252, 79, 8, 1, '2024-05-09 10:20:13'),
(253, 80, 2, 3, '2024-05-09 10:24:45'),
(254, 80, 12, 2, '2024-05-09 10:24:45'),
(255, 80, 17, 1, '2024-05-09 10:20:13'),
(256, 81, 2, 2, '2024-05-09 10:24:45'),
(257, 81, 10, 3, '2024-05-09 10:24:45'),
(258, 81, 15, 2, '2024-05-09 10:24:45'),
(259, 82, 2, 3, '2024-05-09 10:24:45'),
(260, 82, 3, 1, '2024-05-09 10:20:13'),
(261, 82, 16, 2, '2024-05-09 10:24:45'),
(262, 83, 2, 3, '2024-05-09 10:24:45'),
(263, 83, 4, 3, '2024-05-09 10:24:45'),
(264, 83, 20, 3, '2024-05-09 10:24:45'),
(265, 84, 2, 2, '2024-05-09 10:24:45'),
(266, 84, 14, 3, '2024-05-09 10:24:45'),
(267, 84, 19, 3, '2024-05-09 10:24:45'),
(268, 85, 2, 3, '2024-05-09 10:24:45'),
(269, 85, 7, 3, '2024-05-09 10:24:45'),
(270, 85, 13, 3, '2024-05-09 10:24:45'),
(271, 86, 1, 1, '2024-05-09 10:20:13'),
(272, 86, 6, 3, '2024-05-09 10:24:45'),
(273, 86, 17, 3, '2024-05-09 10:24:45'),
(274, 87, 1, 1, '2024-05-09 10:20:13'),
(275, 87, 5, 2, '2024-05-09 10:24:45'),
(276, 87, 11, 3, '2024-05-09 10:24:45'),
(277, 88, 2, 2, '2024-05-09 10:24:45'),
(278, 88, 8, 1, '2024-05-09 10:20:13'),
(279, 88, 12, 3, '2024-05-09 10:24:45'),
(280, 89, 2, 1, '2024-05-09 10:20:13'),
(281, 89, 3, 3, '2024-05-09 10:24:45'),
(282, 89, 6, 1, '2024-05-09 10:20:13'),
(283, 90, 2, 2, '2024-05-09 10:24:45'),
(284, 90, 3, 3, '2024-05-09 10:24:45'),
(285, 90, 17, 3, '2024-05-09 10:24:45'),
(286, 91, 2, 2, '2024-05-09 10:24:45'),
(287, 91, 4, 3, '2024-05-09 10:24:45'),
(288, 91, 15, 2, '2024-05-09 10:24:45'),
(289, 92, 1, 1, '2024-05-09 10:20:13'),
(290, 92, 16, 1, '2024-05-09 10:20:13'),
(291, 92, 20, 3, '2024-05-09 10:24:45'),
(292, 93, 1, 1, '2024-05-09 10:20:13'),
(293, 93, 5, 2, '2024-05-09 10:24:45'),
(294, 93, 11, 3, '2024-05-09 10:24:45'),
(295, 94, 1, 3, '2024-05-09 10:24:45'),
(296, 94, 7, 3, '2024-05-09 10:24:45'),
(297, 94, 13, 2, '2024-05-09 10:24:45'),
(298, 95, 1, 1, '2024-05-09 10:20:13'),
(299, 95, 3, 2, '2024-05-09 10:24:45'),
(300, 95, 19, 2, '2024-05-09 10:24:45'),
(301, 96, 1, 3, '2024-05-09 10:24:45'),
(302, 96, 4, 1, '2024-05-09 10:20:13'),
(303, 96, 20, 2, '2024-05-09 10:24:45'),
(304, 97, 1, 1, '2024-05-09 10:20:13'),
(305, 97, 6, 2, '2024-05-09 10:24:45'),
(306, 97, 17, 2, '2024-05-09 10:24:45'),
(307, 98, 2, 3, '2024-05-09 10:24:45'),
(308, 98, 8, 2, '2024-05-09 10:24:45'),
(309, 98, 12, 2, '2024-05-09 10:24:45'),
(310, 99, 2, 2, '2024-05-09 10:24:45'),
(311, 99, 10, 1, '2024-05-09 10:20:13'),
(312, 99, 15, 3, '2024-05-09 10:24:45');

-- --------------------------------------------------------

--
-- Table structure for table `food_group`
--

CREATE TABLE `food_group` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_group`
--

INSERT INTO `food_group` (`id`, `name`, `description`, `updated_at`) VALUES
(1, 'Spices and essential oils', NULL, '2024-03-26 09:37:18'),
(2, 'Coffee, tea and their products', NULL, '2024-03-26 09:39:05'),
(3, 'Preserved foods', NULL, '2024-03-26 09:39:41'),
(4, 'Sweeteners', NULL, '2024-03-26 09:39:58'),
(5, 'Fats and oils', NULL, '2024-03-26 09:40:14'),
(6, 'Milk, eggs and their products', NULL, '2024-03-26 09:40:36'),
(7, 'Meat and its products', NULL, '2024-03-26 09:40:51'),
(8, 'Fish and their products', NULL, '2024-03-26 09:41:03'),
(9, 'Cereals and their products', NULL, '2024-03-26 09:41:13'),
(10, 'Various foods of plant origin', NULL, '2024-03-26 09:41:26'),
(11, 'Products with sweeteners', NULL, '2024-03-26 09:41:39'),
(12, 'Various drinks', NULL, '2024-03-26 09:41:51');

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

--
-- Dumping data for table `image_recipes`
--

INSERT INTO `image_recipes` (`id`, `recipe_id`, `image_URL`, `updated_at`) VALUES
(1, 1, 'https://www.themealdb.com/images/media/meals/tqtywx1468317395.jpg', '2024-04-29 15:25:30'),
(2, 2, 'https://www.themealdb.com/images/media/meals/urtpqw1487341253.jpg', '2024-04-29 15:25:30'),
(3, 3, 'https://www.themealdb.com/images/media/meals/ursuup1487348423.jpg', '2024-04-29 15:25:30'),
(4, 4, 'https://www.themealdb.com/images/media/meals/wrssvt1511556563.jpg', '2024-04-29 15:25:30'),
(5, 5, 'https://www.themealdb.com/images/media/meals/1529444830.jpg', '2024-04-29 15:25:30'),
(6, 6, 'https://www.themealdb.com/images/media/meals/1550441882.jpg', '2024-04-29 15:25:30'),
(7, 7, 'https://www.themealdb.com/images/media/meals/lhqev81565090111.jpg', '2024-04-29 15:25:30'),
(8, 8, 'https://www.themealdb.com/images/media/meals/bc8v651619789840.jpg', '2024-04-29 15:25:30'),
(9, 9, 'https://www.themealdb.com/images/media/meals/hqaejl1695738653.jpg', '2024-04-29 15:25:30'),
(10, 10, 'https://www.themealdb.com/images/media/meals/zadvgb1699012544.jpg', '2024-04-29 15:25:30'),
(11, 11, 'https://www.themealdb.com/images/media/meals/wyxwsp1486979827.jpg', '2024-04-29 15:25:30'),
(12, 12, 'https://www.themealdb.com/images/media/meals/uvuyxu1503067369.jpg', '2024-04-29 15:25:30'),
(13, 13, 'https://www.themealdb.com/images/media/meals/qstyvs1505931190.jpg', '2024-04-29 15:25:30'),
(14, 14, 'https://www.themealdb.com/images/media/meals/uuuspp1511297945.jpg', '2024-04-29 15:25:30'),
(15, 15, 'https://www.themealdb.com/images/media/meals/xrrtss1511555269.jpg', '2024-04-29 15:25:30'),
(16, 16, 'https://www.themealdb.com/images/media/meals/1529446352.jpg', '2024-04-29 15:25:30'),
(17, 17, 'https://www.themealdb.com/images/media/meals/1550442508.jpg', '2024-04-29 15:25:30'),
(18, 18, 'https://www.themealdb.com/images/media/meals/r33cud1576791081.jpg', '2024-04-29 15:25:30'),
(19, 19, 'https://www.themealdb.com/images/media/meals/st1ifa1583267248.jpg', '2024-04-29 15:25:30'),
(20, 20, 'https://www.themealdb.com/images/media/meals/vc08jn1628769553.jpg', '2024-04-29 15:25:30'),
(21, 21, 'https://www.themealdb.com/images/media/meals/wuxrtu1483564410.jpg', '2024-04-29 15:25:30'),
(22, 22, 'https://www.themealdb.com/images/media/meals/wtqrqw1511639627.jpg', '2024-04-29 15:25:30'),
(23, 23, 'https://www.themealdb.com/images/media/meals/rlwcc51598734603.jpg', '2024-04-29 15:25:30'),
(24, 24, 'https://www.themealdb.com/images/media/meals/uquqtu1511178042.jpg', '2024-04-29 15:25:30'),
(25, 25, 'https://www.themealdb.com/images/media/meals/wssvvs1511785879.jpg', '2024-04-29 15:25:30'),
(26, 26, 'https://www.themealdb.com/images/media/meals/9f4z6v1598734293.jpg', '2024-04-29 15:25:30'),
(27, 27, 'https://www.themealdb.com/images/media/meals/0jv5gx1661040802.jpg', '2024-04-29 15:25:30'),
(28, 28, 'https://www.themealdb.com/images/media/meals/wuvryu1468232995.jpg', '2024-04-29 15:25:30'),
(29, 29, 'https://www.themealdb.com/images/media/meals/xutquv1505330523.jpg', '2024-04-29 15:25:30'),
(30, 30, 'https://www.themealdb.com/images/media/meals/xxyupu1468262513.jpg', '2024-04-29 15:25:30'),
(31, 31, 'https://www.themealdb.com/images/media/meals/kw92t41604181871.jpg', '2024-04-29 15:25:30'),
(32, 32, 'https://www.themealdb.com/images/media/meals/rvypwy1503069308.jpg', '2024-04-29 15:25:30'),
(33, 33, 'https://www.themealdb.com/images/media/meals/yuwtuu1511295751.jpg', '2024-04-29 15:25:30'),
(34, 34, 'https://www.themealdb.com/images/media/meals/sxrpws1511555907.jpg', '2024-04-29 15:25:30'),
(35, 35, 'https://www.themealdb.com/images/media/meals/x2fw9e1560460636.jpg', '2024-04-29 15:25:30'),
(36, 36, 'https://www.themealdb.com/images/media/meals/ssyqwr1511451678.jpg', '2024-04-29 15:25:30'),
(37, 37, 'https://www.themealdb.com/images/media/meals/xwutvy1511555540.jpg', '2024-04-29 15:25:30'),
(38, 38, 'https://www.themealdb.com/images/media/meals/urtqut1511723591.jpg', '2024-04-29 15:25:30'),
(39, 39, 'https://www.themealdb.com/images/media/meals/x372ug1598733932.jpg', '2024-04-29 15:25:30'),
(40, 40, 'https://www.themealdb.com/images/media/meals/o7p9581608589317.jpg', '2024-04-29 15:25:30'),
(41, 41, 'https://www.themealdb.com/images/media/meals/wwuqvt1487345467.jpg', '2024-04-29 15:25:30'),
(42, 42, 'https://www.themealdb.com/images/media/meals/1520083578.jpg', '2024-04-29 15:25:30'),
(43, 43, 'https://www.themealdb.com/images/media/meals/rwuyqx1511383174.jpg', '2024-04-29 15:25:30'),
(44, 44, 'https://www.themealdb.com/images/media/meals/qxuqtt1511724269.jpg', '2024-04-29 15:25:30'),
(45, 45, 'https://www.themealdb.com/images/media/meals/qwtrtp1511799242.jpg', '2024-04-29 15:25:30'),
(46, 46, 'https://www.themealdb.com/images/media/meals/58bkyo1593350017.jpg', '2024-04-29 15:25:30'),
(47, 47, 'https://www.themealdb.com/images/media/meals/hglsbl1614346998.jpg', '2024-04-29 15:25:30'),
(48, 48, 'https://www.themealdb.com/images/media/meals/ewcikl1614348364.jpg', '2024-04-29 15:25:30'),
(49, 49, 'https://www.themealdb.com/images/media/meals/do7zps1614349775.jpg', '2024-04-29 15:25:30'),
(50, 50, 'https://www.themealdb.com/images/media/meals/ebvuir1699013665.jpg', '2024-04-29 15:25:30'),
(51, 51, 'https://www.themealdb.com/images/media/meals/tqtywx1468317395.jpg', '2024-05-09 10:30:13'),
(52, 52, 'https://www.themealdb.com/images/media/meals/urtpqw1487341253.jpg', '2024-05-09 10:30:13'),
(53, 53, 'https://www.themealdb.com/images/media/meals/ursuup1487348423.jpg', '2024-05-09 10:30:13'),
(54, 54, 'https://www.themealdb.com/images/media/meals/wrssvt1511556563.jpg', '2024-05-09 10:30:13'),
(55, 55, 'https://www.themealdb.com/images/media/meals/1529444830.jpg', '2024-05-09 10:30:13'),
(56, 56, 'https://www.themealdb.com/images/media/meals/1550441882.jpg', '2024-05-09 10:30:13'),
(57, 57, 'https://www.themealdb.com/images/media/meals/lhqev81565090111.jpg', '2024-05-09 10:30:13'),
(58, 58, 'https://www.themealdb.com/images/media/meals/bc8v651619789840.jpg', '2024-05-09 10:30:13'),
(59, 59, 'https://www.themealdb.com/images/media/meals/hqaejl1695738653.jpg', '2024-05-09 10:30:13'),
(60, 60, 'https://www.themealdb.com/images/media/meals/zadvgb1699012544.jpg', '2024-05-09 10:30:13'),
(61, 61, 'https://www.themealdb.com/images/media/meals/wyxwsp1486979827.jpg', '2024-05-09 10:30:13'),
(62, 62, 'https://www.themealdb.com/images/media/meals/uvuyxu1503067369.jpg', '2024-05-09 10:30:13'),
(63, 63, 'https://www.themealdb.com/images/media/meals/qstyvs1505931190.jpg', '2024-05-09 10:30:13'),
(64, 64, 'https://www.themealdb.com/images/media/meals/uuuspp1511297945.jpg', '2024-05-09 10:30:13'),
(65, 65, 'https://www.themealdb.com/images/media/meals/xrrtss1511555269.jpg', '2024-05-09 10:30:13'),
(66, 66, 'https://www.themealdb.com/images/media/meals/1529446352.jpg', '2024-05-09 10:30:13'),
(82, 67, 'https://www.themealdb.com/images/media/meals/r33cud1576791081.jpg', '2024-05-09 10:30:24'),
(83, 68, 'https://www.themealdb.com/images/media/meals/st1ifa1583267248.jpg', '2024-05-09 10:30:24'),
(84, 69, 'https://www.themealdb.com/images/media/meals/vc08jn1628769553.jpg', '2024-05-09 10:30:24'),
(85, 70, 'https://www.themealdb.com/images/media/meals/wuxrtu1483564410.jpg', '2024-05-09 10:30:24'),
(86, 71, 'https://www.themealdb.com/images/media/meals/wtqrqw1511639627.jpg', '2024-05-09 10:30:24'),
(87, 72, 'https://www.themealdb.com/images/media/meals/rlwcc51598734603.jpg', '2024-05-09 10:30:24'),
(88, 73, 'https://www.themealdb.com/images/media/meals/uquqtu1511178042.jpg', '2024-05-09 10:30:24'),
(89, 74, 'https://www.themealdb.com/images/media/meals/wssvvs1511785879.jpg', '2024-05-09 10:30:24'),
(90, 75, 'https://www.themealdb.com/images/media/meals/9f4z6v1598734293.jpg', '2024-05-09 10:30:24'),
(91, 76, 'https://www.themealdb.com/images/media/meals/0jv5gx1661040802.jpg', '2024-05-09 10:30:24'),
(92, 77, 'https://www.themealdb.com/images/media/meals/wuvryu1468232995.jpg', '2024-05-09 10:30:24'),
(93, 78, 'https://www.themealdb.com/images/media/meals/xutquv1505330523.jpg', '2024-05-09 10:30:24'),
(94, 79, 'https://www.themealdb.com/images/media/meals/xxyupu1468262513.jpg', '2024-05-09 10:30:24'),
(95, 80, 'https://www.themealdb.com/images/media/meals/kw92t41604181871.jpg', '2024-05-09 10:30:24'),
(96, 81, 'https://www.themealdb.com/images/media/meals/rvypwy1503069308.jpg', '2024-05-09 10:30:24'),
(97, 82, 'https://www.themealdb.com/images/media/meals/yuwtuu1511295751.jpg', '2024-05-09 10:30:24'),
(98, 83, 'https://www.themealdb.com/images/media/meals/sxrpws1511555907.jpg', '2024-05-09 10:30:24'),
(99, 84, 'https://www.themealdb.com/images/media/meals/x2fw9e1560460636.jpg', '2024-05-09 10:30:24'),
(100, 85, 'https://www.themealdb.com/images/media/meals/ssyqwr1511451678.jpg', '2024-05-09 10:30:24'),
(101, 86, 'https://www.themealdb.com/images/media/meals/xwutvy1511555540.jpg', '2024-05-09 10:30:24'),
(102, 87, 'https://www.themealdb.com/images/media/meals/urtqut1511723591.jpg', '2024-05-09 10:30:24'),
(103, 88, 'https://www.themealdb.com/images/media/meals/x372ug1598733932.jpg', '2024-05-09 10:30:24'),
(104, 89, 'https://www.themealdb.com/images/media/meals/o7p9581608589317.jpg', '2024-05-09 10:30:24'),
(105, 90, 'https://www.themealdb.com/images/media/meals/wwuqvt1487345467.jpg', '2024-05-09 10:30:24'),
(106, 91, 'https://www.themealdb.com/images/media/meals/1520083578.jpg', '2024-05-09 10:30:24'),
(107, 92, 'https://www.themealdb.com/images/media/meals/rwuyqx1511383174.jpg', '2024-05-09 10:30:24'),
(108, 93, 'https://www.themealdb.com/images/media/meals/qxuqtt1511724269.jpg', '2024-05-09 10:30:24'),
(109, 94, 'https://www.themealdb.com/images/media/meals/qwtrtp1511799242.jpg', '2024-05-09 10:30:24'),
(110, 95, 'https://www.themealdb.com/images/media/meals/58bkyo1593350017.jpg', '2024-05-09 10:30:24'),
(111, 96, 'https://www.themealdb.com/images/media/meals/hglsbl1614346998.jpg', '2024-05-09 10:30:24'),
(112, 97, 'https://www.themealdb.com/images/media/meals/ewcikl1614348364.jpg', '2024-05-09 10:30:24'),
(113, 98, 'https://www.themealdb.com/images/media/meals/do7zps1614349775.jpg', '2024-05-09 10:30:24'),
(114, 99, 'https://www.themealdb.com/images/media/meals/ebvuir1699013665.jpg', '2024-05-09 10:30:24');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `food_group_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`id`, `name`, `food_group_id`, `updated_at`) VALUES
(1, 'Chicken', 7, '2024-03-26 10:42:55'),
(2, 'Kielbasa', 7, '2024-03-26 10:42:55'),
(3, 'Noodles', 6, '2024-03-26 10:42:55'),
(4, 'Sausage', 7, '2024-03-26 10:42:55'),
(5, 'Milk', 6, '2024-03-26 10:42:55'),
(6, 'Eggs', 6, '2024-03-26 10:42:55'),
(7, 'Potatoes', 10, '2024-03-26 10:42:55'),
(8, 'Rice', 10, '2024-03-26 10:42:55'),
(9, 'Beans', 10, '2024-03-26 10:42:55'),
(10, 'Marinara Sauce', 1, '2024-03-26 10:42:55'),
(11, 'Cheese', 6, '2024-03-26 10:42:55'),
(12, 'Beef', 7, '2024-03-26 10:42:55'),
(13, 'Pork', 7, '2024-03-26 10:42:55'),
(14, 'Ham', 7, '2024-03-26 10:42:55'),
(15, 'Bacon', 7, '2024-03-26 10:42:55'),
(16, 'Turkey', 7, '2024-03-26 10:42:55'),
(17, 'Beets', 10, '2024-03-26 10:42:55'),
(18, 'Breadcrumbs', 9, '2024-03-26 10:42:55'),
(19, 'Lentils', 10, '2024-03-26 10:42:55'),
(20, 'Carrots', 10, '2024-03-26 10:42:55'),
(21, 'Onion', 10, '2024-03-26 10:42:55'),
(22, 'Buckwheat', 9, '2024-03-26 10:42:55'),
(23, 'Flour', 9, '2024-03-26 10:42:55'),
(24, 'Yeast', 1, '2024-03-26 10:42:55'),
(25, 'Peas', 10, '2024-03-26 10:42:55'),
(26, 'Apple', 10, '2024-03-26 10:42:55'),
(27, 'Tomatoes', 10, '2024-03-26 10:42:55'),
(28, 'Fish', 8, '2024-03-26 10:42:55'),
(29, 'Yogurt', 6, '2024-03-26 10:42:55'),
(30, 'Butter', 5, '2024-03-26 10:42:55'),
(31, 'Sour Cream', 6, '2024-03-26 10:42:55'),
(32, 'Parsnips', 10, '2024-03-26 10:42:55'),
(33, 'Chocolate Chips', 11, '2024-03-26 10:42:55'),
(34, 'Chickpeas', 10, '2024-03-26 10:42:55'),
(35, 'Coconut milk', 10, '2024-03-26 10:42:55'),
(36, 'Broccoli', 10, '2024-03-26 10:42:55'),
(37, 'Asparagus', 10, '2024-03-26 10:42:55'),
(38, 'Quinoa', 10, '2024-03-26 10:42:55'),
(39, 'Brussels Sprouts ', 10, '2024-03-26 10:42:55'),
(40, 'Sweet potato', 10, '2024-03-26 10:42:55'),
(41, 'Cabbage', 10, '2024-03-26 10:42:55'),
(42, 'Peanut', 10, '2024-03-26 10:42:55'),
(43, 'Spinach', 10, '2024-03-26 10:42:55'),
(44, 'Salmon', 8, '2024-03-26 10:42:55'),
(45, 'Chia', 10, '2024-03-26 10:42:55'),
(46, 'Tomatillo', 10, '2024-03-26 10:42:55'),
(47, 'Lime', 10, '2024-03-26 10:42:55'),
(48, 'Garlic', 10, '2024-03-26 10:42:55'),
(49, 'Squash', 10, '2024-03-26 10:42:55'),
(50, 'Cilantro', 10, '2024-03-26 10:42:55'),
(51, 'Wine', 12, '2024-03-26 10:42:55'),
(52, 'Soy Sauce', 1, '2024-03-26 10:42:55'),
(53, 'Dijon Mustard', 1, '2024-03-26 10:42:55'),
(54, 'Ginger', 10, '2024-03-26 10:42:55'),
(55, 'Mango', 10, '2024-03-26 10:42:55'),
(56, 'Raisins', 9, '2024-03-26 10:42:55'),
(57, 'Bell Pepper', 10, '2024-03-26 10:42:55'),
(58, 'Jalopeno Pepper', 10, '2024-03-26 10:42:55'),
(59, 'celery', 10, '2024-03-26 10:42:55'),
(60, 'Baking Powder', 3, '2024-03-26 10:42:55'),
(61, 'gnocchi', 6, '2024-03-26 10:42:55'),
(62, 'Water chestnuts', 9, '2024-03-26 10:42:55'),
(63, 'Tuna', 8, '2024-03-26 10:42:55'),
(64, 'Capers', 1, '2024-03-26 10:42:55'),
(65, 'Adobo Chile', 1, '2024-03-26 10:42:55'),
(66, 'Basil', 10, '2024-03-26 10:42:55'),
(67, 'Kale', 10, '2024-03-26 10:42:55'),
(68, 'Red onion', 10, '2024-03-26 10:42:55'),
(69, 'Sardine', 8, '2024-03-26 10:42:55'),
(70, 'Shallots', 10, '2024-03-26 10:42:55'),
(71, 'Lemon', 10, '2024-03-26 10:42:55'),
(72, 'Parsley', 10, '2024-03-26 10:42:55'),
(73, 'Prosciutto', 7, '2024-03-26 10:42:55'),
(74, 'Cucumber', 10, '2024-03-26 10:42:55'),
(75, 'Dill', 10, '2024-03-26 10:42:55'),
(76, 'Couscous', 10, '2024-03-26 10:42:55'),
(77, 'Green Onion', 10, '2024-03-26 10:42:55'),
(78, 'Tilapia', 8, '2024-03-26 10:42:55'),
(79, 'Pesto', 1, '2024-03-26 10:42:55'),
(80, 'Plain chocolate', 4, '2024-03-30 11:59:38'),
(81, 'Eggplant', 10, '2024-03-30 12:00:43'),
(82, 'Beef Brisket', 7, '2024-03-30 12:47:03'),
(83, 'Bread', 9, '2024-03-30 12:47:03'),
(84, 'Beetroot', 10, '2024-03-30 12:47:03'),
(85, 'Cajun', 1, '2024-03-30 12:47:03'),
(86, 'Olive Oil', 5, '2024-03-30 12:47:03'),
(87, 'Chicken Stock', 6, '2024-03-30 12:47:03'),
(88, 'Mars Bar', 3, '2024-03-30 12:47:03'),
(89, 'Orange', 10, '2024-03-30 12:47:03'),
(90, 'Minced Beef', 7, '2024-03-30 12:47:03'),
(91, 'Toor dal', 9, '2024-03-30 12:47:03'),
(92, 'Clotted Cream', 6, '2024-03-30 12:47:03'),
(93, 'Fettuccine', 9, '2024-03-30 12:47:03'),
(94, 'Raw king prawns', 8, '2024-03-30 12:47:03'),
(95, 'Macaroni', 9, '2024-03-30 12:47:03'),
(96, 'Sushi Rice', 9, '2024-03-30 12:47:03'),
(97, 'Lamb Shoulder', 7, '2024-03-30 12:47:03'),
(98, 'Mushrooms', 10, '2024-03-30 12:47:03'),
(99, 'Vegetable Oil', 5, '2024-03-30 12:47:03'),
(100, 'Mulukhiyah', 10, '2024-03-30 12:47:03'),
(101, 'Veal', 7, '2024-03-30 12:47:03'),
(102, 'Oxtail', 7, '2024-03-30 12:47:03'),
(103, 'Onions', 10, '2024-03-30 12:47:03'),
(104, 'Salt', 10, '2024-03-30 12:47:03'),
(105, 'Egg', 6, '2024-03-30 12:47:03'),
(106, 'Cayenne Pepper', 1, '2024-03-30 12:47:03'),
(107, 'Chicken Breast', 6, '2024-03-30 12:47:03'),
(108, 'Demerara Sugar', 4, '2024-03-30 12:47:03'),
(109, 'Italian Fennel Sausages', 7, '2024-03-30 12:47:03'),
(110, 'Minced Pork', 7, '2024-03-30 12:47:03'),
(111, 'Water', 10, '2024-03-30 12:47:03'),
(112, 'Plain Flour', 9, '2024-03-30 12:47:03'),
(113, 'Leek', 10, '2024-03-30 12:47:03'),
(114, 'Heavy Cream', 6, '2024-03-30 12:47:03'),
(115, 'Mirin', 12, '2024-03-30 12:47:03'),
(116, 'Red Chili', 1, '2024-03-30 12:47:03'),
(117, 'Chestnuts', 10, '2024-03-30 12:47:03'),
(118, 'Caster Sugar', 4, '2024-03-30 12:47:03'),
(119, 'Red Chilli', 1, '2024-03-30 12:47:03'),
(120, 'Beef Fillet', 7, '2024-03-30 12:47:03'),
(121, 'Red Pepper', 10, '2024-03-30 12:47:03'),
(122, 'Pepper', 1, '2024-03-30 12:47:03'),
(123, 'Beef Stock', 6, '2024-03-30 12:47:03'),
(124, 'Cinnamon Stick', 1, '2024-03-30 12:47:03'),
(125, 'Chicken Stock Cube', 6, '2024-03-30 12:47:03'),
(126, 'White Fish', 8, '2024-03-30 12:47:03'),
(127, 'Rice Krispies', 9, '2024-03-30 12:47:03'),
(128, 'Grand Marnier', 12, '2024-03-30 12:47:03'),
(129, 'Corn Flour', 9, '2024-03-30 12:47:03'),
(130, 'Chopped Onion', 10, '2024-03-30 12:47:03'),
(131, 'Mustard Powder', 1, '2024-03-30 12:47:03'),
(132, 'Pickle Juice', 10, '2024-03-30 12:47:03'),
(133, 'Thai Red Curry Paste', 1, '2024-03-30 12:47:03'),
(134, 'Shallots', 10, '2024-03-30 12:47:03'),
(135, 'Spring Onions', 10, '2024-03-30 12:47:03'),
(136, 'Courgettes', 10, '2024-03-30 12:47:03'),
(137, 'Coriander', 10, '2024-03-30 12:47:03'),
(138, 'Sesame Seed Oil', 5, '2024-03-30 12:47:03'),
(139, 'Garlic Clove', 1, '2024-03-30 12:47:03'),
(140, 'Cloves', 1, '2024-03-30 12:47:03'),
(141, 'Chicken Legs', 6, '2024-03-30 12:47:03'),
(142, 'Ginger Cordial', 12, '2024-03-30 12:47:03'),
(143, 'Milk Chocolate', 6, '2024-03-30 12:47:03'),
(144, 'Christmas Pudding', 3, '2024-03-30 12:47:03'),
(145, 'Turmeric', 1, '2024-03-30 12:47:03'),
(146, 'Parmesan Cheese', 6, '2024-03-30 12:47:03'),
(147, 'Creme Fraiche', 6, '2024-03-30 12:47:03'),
(148, 'Unsalted Butter', 5, '2024-03-30 12:47:03'),
(149, 'Parmesan', 6, '2024-03-30 12:47:03'),
(150, 'Freshly Chopped Parsley', 10, '2024-03-30 12:47:03'),
(151, 'Garlic Powder', 1, '2024-03-30 12:47:03'),
(152, 'Sake', 12, '2024-03-30 12:47:03'),
(153, 'Vegetable Stock Cube', 6, '2024-03-30 12:47:03'),
(154, 'Lamb Leg', 7, '2024-03-30 12:47:03'),
(155, 'Vegetable Stock', 6, '2024-03-30 12:47:03'),
(156, 'Tomato Puree', 10, '2024-03-30 12:47:03'),
(157, 'Self-raising Flour', 9, '2024-03-30 12:47:03'),
(158, 'Mustard', 1, '2024-03-30 12:47:03'),
(159, 'Sunflower Oil', 5, '2024-03-30 12:47:03'),
(160, 'Golden Syrup', 4, '2024-03-30 12:47:03'),
(161, 'Vinegar', 10, '2024-03-30 12:47:03'),
(162, 'White Wine Vinegar', 10, '2024-03-30 12:47:03'),
(163, 'Granulated Sugar', 4, '2024-03-30 12:47:03'),
(164, 'Green Chili', 1, '2024-03-30 12:47:03'),
(165, 'Thyme', 1, '2024-03-30 12:47:03'),
(166, 'Maple Syrup', 4, '2024-03-30 12:47:03'),
(167, 'Star Anise', 1, '2024-03-30 12:47:03'),
(168, 'Ginger Paste', 1, '2024-03-30 12:47:03'),
(169, 'Flour Tortilla', 9, '2024-03-30 12:47:03'),
(170, 'Chicken Thighs', 6, '2024-03-30 12:47:03'),
(171, 'Custard', 6, '2024-03-30 12:47:03'),
(172, 'Ghee', 5, '2024-03-30 12:47:03'),
(173, 'Currants', 10, '2024-03-30 12:47:03'),
(174, 'Nutmeg', 1, '2024-03-30 12:47:03'),
(175, 'White Wine', 12, '2024-03-30 12:47:03'),
(176, 'Kosher Salt', 10, '2024-03-30 12:47:03'),
(177, 'Sesame Seed', 10, '2024-03-30 12:47:03'),
(178, 'Cumin', 1, '2024-03-30 12:47:03'),
(179, 'Rosemary', 1, '2024-03-30 12:47:03'),
(180, 'Sugar', 4, '2024-03-30 12:47:03'),
(181, 'Black Treacle', 4, '2024-03-30 12:47:03'),
(182, 'Dried Oregano', 1, '2024-03-30 12:47:03'),
(183, 'Red Chili Powder', 1, '2024-03-30 12:47:03'),
(184, 'Starch', 9, '2024-03-30 12:47:03'),
(185, 'Cardamom', 1, '2024-03-30 12:47:03'),
(186, 'Cannellini Beans', 9, '2024-03-30 12:47:03'),
(187, 'Avocado', 10, '2024-03-30 12:47:03'),
(188, 'Chicken Breasts', 6, '2024-03-30 12:47:03'),
(189, 'Mascarpone', 6, '2024-03-30 12:47:03'),
(190, 'Shiitake Mushrooms', 10, '2024-03-30 12:47:03'),
(191, 'Paprika', 1, '2024-03-30 12:47:03'),
(192, 'Chopped Tomatoes', 10, '2024-03-30 12:47:03'),
(193, 'Mixed Peel', 10, '2024-03-30 12:47:03'),
(194, 'Egg Yolks', 6, '2024-03-30 12:47:03'),
(195, 'Black Pepper', 1, '2024-03-30 12:47:03'),
(196, 'Fish Sauce', 1, '2024-03-30 12:47:03'),
(197, 'Wild Mushrooms', 10, '2024-03-30 12:47:03'),
(198, 'Carrot', 10, '2024-03-30 12:47:03'),
(199, 'Scotch Bonnet', 1, '2024-03-30 12:47:03'),
(200, 'Raspberries', 10, '2024-03-30 12:47:03'),
(201, 'Brown Sugar', 4, '2024-03-30 12:47:03'),
(202, 'Ciabatta', 9, '2024-03-30 12:47:03'),
(203, 'Dry White Wine', 12, '2024-03-30 12:47:03'),
(204, 'Sausages', 7, '2024-03-30 12:47:03'),
(205, 'Oil', 5, '2024-03-30 12:47:03'),
(206, 'Bay Leaves', 1, '2024-03-30 12:47:03'),
(207, 'Bay Leaf', 1, '2024-03-30 12:47:03'),
(208, 'Coconut Cream', 6, '2024-03-30 12:47:03'),
(209, 'Cumin Seeds', 1, '2024-03-30 12:47:03'),
(210, 'Little Gem Lettuce', 10, '2024-03-30 12:47:03'),
(211, 'Double Cream', 6, '2024-03-30 12:47:03'),
(212, 'Muscovado Sugar', 4, '2024-03-30 12:47:03'),
(213, 'Minced Garlic', 1, '2024-03-30 12:47:03'),
(214, 'Rice Noodles', 9, '2024-03-30 12:47:03'),
(215, 'Blueberries', 10, '2024-03-30 12:47:03'),
(216, 'Oatmeal', 9, '2024-03-30 12:47:03'),
(217, 'Rocket', 10, '2024-03-30 12:47:03'),
(218, 'Saffron', 1, '2024-03-30 12:47:03'),
(219, 'Coriander Leaves', 10, '2024-03-30 12:47:03'),
(220, 'Stout', 12, '2024-03-30 12:47:03'),
(221, 'Coriander Seeds', 1, '2024-03-30 12:47:03'),
(222, 'Spring Onion', 10, '2024-03-30 12:47:03'),
(223, 'Brandy', 12, '2024-03-30 12:47:03'),
(224, 'Flaked Almonds', 10, '2024-03-30 12:47:03'),
(225, 'Mustard Seeds', 1, '2024-03-30 12:47:03'),
(226, 'Cinnamon', 1, '2024-03-30 12:47:03'),
(227, 'Cubed Feta Cheese', 6, '2024-03-30 12:47:03'),
(228, 'Shortcrust Pastry', 9, '2024-03-30 12:47:03'),
(229, 'Harissa Spice', 1, '2024-03-30 12:47:03'),
(230, 'Worcestershire Sauce', 10, '2024-03-30 12:47:03'),
(231, 'Fennel', 10, '2024-03-30 12:47:03'),
(232, 'Fresh Thyme', 10, '2024-03-30 12:47:03'),
(233, 'Cream Cheese', 6, '2024-03-30 12:47:03'),
(234, 'Red Wine Vinegar', 10, '2024-03-30 12:47:03'),
(235, 'Basil Leaves', 10, '2024-03-30 12:47:03'),
(236, 'Allspice', 1, '2024-03-30 12:47:03'),
(237, 'Tamarind Paste', 10, '2024-03-30 12:47:03'),
(238, 'Turmeric Powder', 1, '2024-03-30 12:47:03'),
(239, 'Salsa', 10, '2024-03-30 12:47:03'),
(240, 'Red Wine', 12, '2024-03-30 12:47:03'),
(241, 'Sweetcorn', 10, '2024-03-30 12:47:03'),
(242, 'Dark Chocolate', 3, '2024-03-30 12:47:03'),
(243, 'Whole Milk', 6, '2024-03-30 12:47:03'),
(244, 'King Prawns', 8, '2024-03-30 12:47:03'),
(245, 'Lasagne Sheets', 9, '2024-03-30 12:47:03'),
(246, 'Ground Ginger', 1, '2024-03-30 12:47:03'),
(247, 'Chilli Powder', 1, '2024-03-30 12:47:03'),
(248, 'Honey', 4, '2024-03-30 12:47:03'),
(249, 'Orange Zest', 10, '2024-03-30 12:47:03'),
(250, 'Chives', 10, '2024-03-30 12:47:03'),
(251, 'Red Onions', 10, '2024-03-30 12:47:03'),
(252, 'Jalapeno', 1, '2024-03-30 12:47:03'),
(253, 'Plum Tomatoes', 10, '2024-03-30 12:47:03'),
(254, 'Mayonnaise', 6, '2024-03-30 12:47:03');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_quantities`
--

CREATE TABLE `ingredient_quantities` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `unit` varchar(55) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredient_quantities`
--

INSERT INTO `ingredient_quantities` (`id`, `recipe_id`, `ingredient_id`, `quantity`, `unit`, `updated_at`) VALUES
(1, 1, 80, '250', 'grams', '2024-05-09 19:27:19'),
(2, 2, 81, '1', 'large', '2024-05-09 19:27:19'),
(3, 3, 82, '4-5', 'pound', '2024-05-09 19:27:19'),
(4, 4, 12, '900', 'grams', '2024-05-09 19:27:19'),
(5, 5, 12, '1/2', 'lb', '2024-05-09 19:27:19'),
(6, 6, 7, '3', 'medium', '2024-05-09 19:27:20'),
(7, 7, 30, '100', 'units', '2024-05-09 19:27:20'),
(8, 8, 12, '1', 'lb', '2024-05-09 19:27:19'),
(9, 9, 83, '2', 'units', '2024-05-09 19:27:20'),
(10, 10, 84, '3', 'units', '2024-05-09 19:27:20'),
(11, 11, 1, '1.2', 'kg', '2024-05-09 19:27:19'),
(12, 12, 85, '2', 'tablespoons', '2024-05-09 19:27:19'),
(13, 13, 86, '1', 'tablespoons', '2024-05-09 19:27:19'),
(14, 14, 30, '50', 'grams', '2024-05-09 19:27:19'),
(15, 15, 87, '450', 'ml', '2024-05-09 19:27:19'),
(16, 16, 1, '8', 'units', '2024-05-09 19:27:20'),
(17, 17, 88, '6', 'chopped', '2024-05-09 19:27:19'),
(18, 18, 89, '3', 'units', '2024-05-09 19:27:20'),
(19, 19, 67, '1', 'bunch', '2024-05-09 19:27:19'),
(20, 20, 90, '500', 'grams', '2024-05-09 19:27:19'),
(21, 21, 91, '1', 'cups', '2024-05-09 19:27:20'),
(22, 22, 30, '250', 'grams', '2024-05-09 19:27:19'),
(23, 23, 12, '1', 'lb', '2024-05-09 19:27:19'),
(24, 24, 92, '227', 'grams', '2024-05-09 19:27:19'),
(25, 25, 30, '75', 'grams', '2024-05-09 19:27:19'),
(26, 26, 23, '4', 'units', '2024-05-09 19:27:20'),
(27, 27, 93, '1', 'lb', '2024-05-09 19:27:19'),
(28, 28, 94, '500', 'grams', '2024-05-09 19:27:19'),
(29, 29, 95, '8', 'grams', '2024-05-09 19:27:20'),
(30, 30, 44, '1', 'lb', '2024-05-09 19:27:19'),
(31, 31, 96, '300', 'grams', '2024-05-09 19:27:19'),
(32, 32, 86, '1', 'tablespoons', '2024-05-09 19:27:19'),
(33, 33, 86, '2', 'units', '2024-05-09 19:27:20'),
(34, 34, 97, '500', 'grams', '2024-05-09 19:27:19'),
(35, 35, 86, '2', 'tablespoons', '2024-05-09 19:27:19'),
(36, 36, 98, '30', 'grams', '2024-05-09 19:27:19'),
(37, 37, 99, '2', 'tablespoons', '2024-05-09 19:27:19'),
(38, 38, 30, '175', 'grams', '2024-05-09 19:27:19'),
(39, 39, 100, '800', 'grams', '2024-05-09 19:27:19'),
(40, 40, 7, '1', 'kg', '2024-05-09 19:27:19'),
(41, 41, 101, '4', 'shanks', '2024-05-09 19:27:19'),
(42, 42, 102, '450', 'grams', '2024-05-09 19:27:19'),
(43, 43, 23, '100', 'units', '2024-05-09 19:27:20'),
(44, 44, 30, '200', 'grams', '2024-05-09 19:27:19'),
(45, 45, 6, '10', 'units', '2024-05-09 19:27:20'),
(46, 46, 23, '1', 'units', '2024-05-09 19:27:20'),
(47, 47, 1, '1.5', 'kg', '2024-05-09 19:27:20'),
(48, 48, 48, '1', 'clove', '2024-05-09 19:27:19'),
(49, 49, 103, '2', 'chopped', '2024-05-09 19:27:19'),
(50, 50, 7, '4', 'units', '2024-05-09 19:27:20'),
(64, 1, 30, '175', 'grams', '2024-05-09 19:27:19'),
(65, 2, 21, '', 'units', '2024-05-09 19:27:20'),
(66, 3, 104, '', 'dash', '2024-05-09 19:27:20'),
(67, 4, 86, '3', 'tablespoons', '2024-05-09 19:27:19'),
(68, 5, 104, '', 'pinch', '2024-05-09 19:27:19'),
(69, 6, 86, '1', 'tablespoons', '2024-05-09 19:27:19'),
(70, 7, 23, '150', 'grams', '2024-05-09 19:27:19'),
(71, 8, 99, '5', 'tablespoons', '2024-05-09 19:27:19'),
(72, 9, 105, '2', 'units', '2024-05-09 19:27:20'),
(73, 10, 86, '4', 'tablespoons', '2024-05-09 19:27:19'),
(74, 11, 21, '5', 'sliced', '2024-05-09 19:27:19'),
(75, 12, 106, '1', 'teaspoons', '2024-05-09 19:27:20'),
(76, 13, 15, '3', 'dry-cured', '2024-05-09 19:27:19'),
(77, 14, 21, '1', 'chopped', '2024-05-09 19:27:19'),
(78, 15, 107, '3', 'units', '2024-05-09 19:27:20'),
(79, 16, 104, '', 'pinch', '2024-05-09 19:27:19'),
(80, 17, 30, '150', 'grams', '2024-05-09 19:27:19'),
(81, 18, 108, '1', 'tablespoons', '2024-05-09 19:27:19'),
(82, 19, 109, '8', 'units', '2024-05-09 19:27:20'),
(83, 20, 110, '250', 'grams', '2024-05-09 19:27:19'),
(84, 21, 111, '2-1/2', 'cups', '2024-05-09 19:27:19'),
(85, 22, 112, '350', 'grams', '2024-05-09 19:27:19'),
(86, 23, 21, '1', 'units', '2024-05-09 19:27:20'),
(87, 24, 30, '25', 'grams', '2024-05-09 19:27:19'),
(88, 25, 113, '1', 'kg', '2024-05-09 19:27:19'),
(89, 26, 111, '1', 'units', '2024-05-09 19:27:20'),
(90, 27, 114, '1/2', 'units', '2024-05-09 19:27:20'),
(91, 28, 86, '3', 'tablespoons', '2024-05-09 19:27:19'),
(92, 29, 112, '1/3', 'cups', '2024-05-09 19:27:20'),
(93, 30, 86, '1', 'tablespoons', '2024-05-09 19:27:19'),
(94, 31, 115, '1', 'tablespoons', '2024-05-09 19:27:19'),
(95, 32, 116, '1', 'sliced', '2024-05-09 19:27:19'),
(96, 33, 21, '1', 'sliced', '2024-05-09 19:27:19'),
(97, 34, 23, '1', 'tablespoons', '2024-05-09 19:27:19'),
(98, 35, 21, '1', 'diced', '2024-05-09 19:27:19'),
(99, 36, 117, '240', 'grams', '2024-05-09 19:27:19'),
(100, 37, 90, '500', 'grams', '2024-05-09 19:27:19'),
(101, 38, 118, '175', 'grams', '2024-05-09 19:27:19'),
(102, 39, 21, '1', 'chopped', '2024-05-09 19:27:19'),
(103, 40, 5, '200', 'ml', '2024-05-09 19:27:19'),
(104, 41, 23, '', 'cups', '2024-05-09 19:27:20'),
(105, 42, 21, '1', 'chopped', '2024-05-09 19:27:19'),
(106, 43, 6, '2', 'large', '2024-05-09 19:27:19'),
(107, 44, 105, '1', 'large', '2024-05-09 19:27:19'),
(108, 45, 86, '1', 'tablespoons', '2024-05-09 19:27:19'),
(109, 46, 6, '2', 'units', '2024-05-09 19:27:20'),
(110, 47, 119, '3', 'chopped', '2024-05-09 19:27:19'),
(111, 48, 120, '2', 'small', '2024-05-09 19:27:19'),
(112, 49, 121, '1', 'diced', '2024-05-09 19:27:20'),
(113, 50, 20, '3', 'units', '2024-05-09 19:27:20'),
(253, 1, 5, '2', 'tablespoons', '2024-05-09 19:27:19'),
(254, 2, 27, '1', 'cups', '2024-05-09 19:27:20'),
(255, 3, 21, '3', 'units', '2024-05-09 19:27:20'),
(256, 4, 70, '3', 'units', '2024-05-09 19:27:20'),
(257, 5, 122, '', 'pinch', '2024-05-09 19:27:19'),
(258, 6, 15, '2', 'strips', '2024-05-09 19:27:19'),
(259, 7, 123, '700', 'ml', '2024-05-09 19:27:19'),
(260, 8, 124, '1', 'units', '2024-05-09 19:27:20'),
(261, 9, 104, '0.5', 'units', '2024-05-09 19:27:20'),
(262, 10, 125, '1', 'units', '2024-05-09 19:27:20'),
(263, 11, 27, '2', 'chopped', '2024-05-09 19:27:19'),
(264, 12, 126, '4', 'fillets', '2024-05-09 19:27:19'),
(265, 13, 70, '12', 'small', '2024-05-09 19:27:19'),
(266, 14, 98, '100', 'units', '2024-05-09 19:27:20'),
(267, 15, 30, '75', 'grams', '2024-05-09 19:27:19'),
(268, 16, 122, '', 'pinch', '2024-05-09 19:27:19'),
(269, 17, 127, '120', 'grams', '2024-05-09 19:27:19'),
(270, 18, 128, '2', 'tablespoons', '2024-05-09 19:27:19'),
(271, 19, 41, '1', 'chopped', '2024-05-09 19:27:19'),
(272, 20, 21, '1', 'units', '2024-05-09 19:27:20'),
(273, 21, 104, '1', 'teaspoons', '2024-05-09 19:27:20'),
(274, 22, 71, '', 'units', '2024-05-09 19:27:20'),
(275, 23, 125, '1', 'units', '2024-05-09 19:27:20'),
(276, 24, 129, '1', 'units', '2024-05-09 19:27:20'),
(277, 25, 104, '', 'teaspoons', '2024-05-09 19:27:20'),
(278, 26, 104, '1/4', 'teaspoons', '2024-05-09 19:27:20'),
(279, 27, 30, '1/2', 'units', '2024-05-09 19:27:20'),
(280, 28, 130, '1', 'units', '2024-05-09 19:27:20'),
(281, 29, 131, '3/4', 'teaspoon', '2024-05-09 19:27:19'),
(282, 30, 52, '2', 'tablespoons', '2024-05-09 19:27:19'),
(283, 31, 132, '', 'garnish', '2024-05-09 19:27:20'),
(284, 32, 133, '2', 'tablespoons', '2024-05-09 19:27:19'),
(285, 33, 20, '2', 'chopped', '2024-05-09 19:27:19'),
(286, 34, 99, '', 'dash', '2024-05-09 19:27:20'),
(287, 35, 34, '250', 'grams', '2024-05-09 19:27:19'),
(288, 36, 5, '10', 'grams', '2024-05-09 19:27:19'),
(289, 37, 21, '1', 'chopped', '2024-05-09 19:27:19'),
(290, 38, 6, '3', 'units', '2024-05-09 19:27:20'),
(291, 39, 12, '300', 'grams', '2024-05-09 19:27:19'),
(292, 40, 30, '50', 'grams', '2024-05-09 19:27:19'),
(293, 41, 86, '2', 'units', '2024-05-09 19:27:20'),
(294, 42, 135, '1', 'units', '2024-05-09 19:27:20'),
(295, 43, 5, '300', 'units', '2024-05-09 19:27:20'),
(296, 44, 5, '4', 'tablespoons', '2024-05-09 19:27:19'),
(297, 45, 136, '2', 'chopped', '2024-05-09 19:27:19'),
(298, 46, 5, '1', 'units', '2024-05-09 19:27:20'),
(299, 47, 48, '2', 'cloves', '2024-05-09 19:27:19'),
(300, 48, 86, '2', 'tablespoons', '2024-05-09 19:27:19'),
(301, 49, 137, '', 'bunch', '2024-05-09 19:27:19'),
(302, 50, 104, '1', 'tablespoons', '2024-05-09 19:27:19'),
(408, 1, 163, '175', 'grams', '2024-05-09 19:27:19'),
(409, 2, 164, '1', 'units', '2024-05-09 19:27:20'),
(410, 3, 165, '1', 'sprig', '2024-05-09 19:27:20'),
(411, 4, 15, '125', 'grams', '2024-05-09 19:27:19'),
(412, 5, 105, '1/2', 'units', '2024-05-09 19:27:20'),
(413, 6, 166, '1', 'tablespoons', '2024-05-09 19:27:19'),
(414, 7, 72, '1', 'tablespoons', '2024-05-09 19:27:19'),
(415, 8, 167, '3', 'units', '2024-05-09 19:27:20'),
(416, 10, 7, '3', 'units', '2024-05-09 19:27:20'),
(417, 11, 168, '1', 'tablespoons', '2024-05-09 19:27:19'),
(418, 12, 169, '8', 'units', '2024-05-09 19:27:20'),
(419, 13, 170, '4', 'grams', '2024-05-09 19:30:48'),
(420, 14, 125, '1', 'units', '2024-05-09 19:27:20'),
(421, 15, 48, '2', 'minced', '2024-05-09 19:27:19'),
(422, 16, 54, '1', 'units', '2024-05-09 19:27:20'),
(423, 18, 171, '500', 'grams', '2024-05-09 19:27:19'),
(424, 19, 21, '', 'sliced', '2024-05-09 19:27:20'),
(425, 20, 72, '3', 'chopped', '2024-05-09 19:27:19'),
(426, 21, 172, '3', 'tablespoons', '2024-05-09 19:27:19'),
(427, 22, 173, '200', 'grams', '2024-05-09 19:27:19'),
(428, 23, 139, '4', 'units', '2024-05-09 19:27:20'),
(429, 24, 174, '', 'grated', '2024-05-09 19:27:20'),
(430, 25, 105, '1', 'units', '2024-05-09 19:27:20'),
(431, 26, 86, '1/4', 'cups', '2024-05-09 19:27:20'),
(432, 27, 72, '2', 'tablespoons', '2024-05-09 19:27:19'),
(433, 28, 175, '250', 'ml', '2024-05-09 19:27:19'),
(434, 29, 176, '1/2', 'teaspoon', '2024-05-09 19:27:19'),
(435, 30, 177, '4', 'tablespoons', '2024-05-09 19:27:19'),
(436, 32, 35, '400', 'can', '2024-05-09 19:27:19'),
(437, 33, 48, '2', 'minced', '2024-05-09 19:27:19'),
(438, 34, 20, '2', 'sliced', '2024-05-09 19:27:19'),
(439, 35, 178, '1', 'units', '2024-05-09 19:27:20'),
(440, 36, 179, '3', 'sprigs', '2024-05-09 19:27:19'),
(441, 37, 112, '1', 'tablespoons', '2024-05-09 19:27:19'),
(442, 38, 5, '3', 'tablespoons', '2024-05-09 19:27:19'),
(443, 39, 111, '1', 'litre', '2024-05-09 19:27:20'),
(444, 40, 135, '', 'bunch', '2024-05-09 19:27:20'),
(445, 41, 21, '1', 'pieces', '2024-05-09 19:27:19'),
(446, 42, 54, '1', 'units', '2024-05-09 19:27:20'),
(447, 43, 180, '', 'serve', '2024-05-09 19:27:19'),
(448, 44, 181, '85', 'grams', '2024-05-09 19:27:19'),
(449, 45, 121, '4', 'units', '2024-05-09 19:27:20'),
(450, 46, 104, '', 'pinch', '2024-05-09 19:27:20'),
(451, 47, 182, '1', 'units', '2024-05-09 19:27:20'),
(452, 48, 72, '', 'leaves', '2024-05-09 19:27:20'),
(453, 49, 48, '3', 'cloves', '2024-05-09 19:27:19'),
(454, 50, 6, '4', 'units', '2024-05-09 19:27:20'),
(565, 2, 205, '1.5', 'tablespoons', '2024-05-09 19:27:19'),
(566, 3, 206, '4', 'units', '2024-05-09 19:27:20'),
(567, 4, 207, '2', 'units', '2024-05-09 19:27:20'),
(568, 5, 205, '5', 'tablespoons', '2024-05-09 19:27:19'),
(569, 6, 104, '', 'pinch', '2024-05-09 19:27:20'),
(570, 7, 104, '', 'pinch', '2024-05-09 19:27:20'),
(571, 8, 208, '1', 'units', '2024-05-09 19:27:20'),
(572, 10, 75, '', 'garnish', '2024-05-09 19:27:20'),
(573, 11, 209, '2', 'teaspoons', '2024-05-09 19:27:20'),
(574, 12, 210, '2', 'shredded', '2024-05-09 19:27:19'),
(575, 13, 48, '3', 'chopped', '2024-05-09 19:27:19'),
(576, 14, 131, '', 'pinch', '2024-05-09 19:27:19'),
(577, 15, 5, '200', 'ml', '2024-05-09 19:27:19'),
(578, 16, 8, '1/2', 'units', '2024-05-09 19:27:20'),
(579, 18, 211, '284', 'ml', '2024-05-09 19:27:19'),
(580, 19, 87, '1', 'units', '2024-05-09 19:27:20'),
(581, 20, 60, '3/4', 'teaspoon', '2024-05-09 19:27:19'),
(582, 21, 209, '1/2', 'teaspoons', '2024-05-09 19:27:20'),
(583, 22, 212, '100', 'units', '2024-05-09 19:27:20'),
(584, 23, 8, '2', 'units', '2024-05-09 19:27:20'),
(585, 24, 72, '', 'chopped', '2024-05-09 19:27:20'),
(586, 25, 174, '', 'teaspoon', '2024-05-09 19:27:19'),
(587, 28, 213, '1/2', 'teaspoon', '2024-05-09 19:27:19'),
(588, 29, 106, '1/8', 'teaspoon', '2024-05-09 19:27:19'),
(589, 32, 214, '100', 'grams', '2024-05-09 19:27:19'),
(590, 33, 54, '', 'teaspoons', '2024-05-09 19:27:20'),
(591, 34, 7, '500', 'grams', '2024-05-09 19:27:19'),
(592, 35, 104, '1/2', 'teaspoons', '2024-05-09 19:27:20'),
(593, 36, 52, '2', 'units', '2024-05-09 19:27:20'),
(594, 37, 123, '250', 'ml', '2024-05-09 19:27:19'),
(595, 38, 193, '', 'glaze', '2024-05-09 19:27:20'),
(596, 39, 86, '1/2', 'units', '2024-05-09 19:27:20'),
(597, 41, 59, '1', 'pieces', '2024-05-09 19:27:19'),
(598, 42, 52, '2', 'tablespoons', '2024-05-09 19:27:19'),
(599, 43, 215, '', 'serve', '2024-05-09 19:27:19'),
(600, 44, 216, '100', 'units', '2024-05-09 19:27:20'),
(601, 45, 119, '1', 'units', '2024-05-09 19:27:20'),
(602, 46, 30, '3', 'tablespoons', '2024-05-09 19:27:19'),
(603, 47, 191, '1', 'units', '2024-05-09 19:27:20'),
(604, 48, 217, '2', 'handfuls', '2024-05-09 19:27:20'),
(605, 49, 218, '', 'pinch', '2024-05-09 19:27:20'),
(606, 50, 75, '4', 'units', '2024-05-09 19:27:20'),
(628, 2, 219, '1', 'chopped', '2024-05-09 19:27:19'),
(629, 3, 123, '2', 'cups', '2024-05-09 19:27:19'),
(630, 4, 220, '330', 'ml', '2024-05-09 19:27:19'),
(631, 5, 3, '1/4', 'lb', '2024-05-09 19:27:19'),
(632, 6, 122, '', 'pinch', '2024-05-09 19:27:20'),
(633, 7, 122, '', 'pinch', '2024-05-09 19:27:20'),
(634, 8, 111, '1', 'units', '2024-05-09 19:27:20'),
(635, 11, 221, '3', 'teaspoons', '2024-05-09 19:27:20'),
(636, 12, 222, '4', 'shredded', '2024-05-09 19:27:19'),
(637, 13, 223, '3', 'tablespoons', '2024-05-09 19:27:19'),
(638, 14, 1, '250', 'grams', '2024-05-09 19:27:19'),
(639, 15, 175, '3', 'tablespoons', '2024-05-09 19:27:19'),
(640, 16, 111, '8', 'units', '2024-05-09 19:27:20'),
(641, 18, 224, '', 'handfuls', '2024-05-09 19:27:20'),
(642, 20, 18, '2', 'tablespoons', '2024-05-09 19:27:19'),
(643, 21, 225, '1/2', 'teaspoons', '2024-05-09 19:27:20'),
(644, 22, 226, '1', 'units', '2024-05-09 19:27:20'),
(645, 23, 3, '1/4', 'cups', '2024-05-09 19:27:20'),
(646, 25, 112, '225', 'grams', '2024-05-09 19:27:19'),
(647, 28, 227, '1', 'pack', '2024-05-09 19:27:19'),
(648, 29, 30, '6', 'grams', '2024-05-09 19:27:20'),
(649, 32, 47, '2', 'halved', '2024-05-09 19:27:19'),
(650, 33, 218, '', 'teaspoons', '2024-05-09 19:27:20'),
(651, 34, 228, '450', 'grams', '2024-05-09 19:27:19'),
(652, 35, 229, '1', 'units', '2024-05-09 19:27:20'),
(653, 36, 175, '125', 'units', '2024-05-09 19:27:20'),
(654, 37, 230, '', 'dash', '2024-05-09 19:27:20'),
(655, 41, 231, '1', 'pieces', '2024-05-09 19:27:19'),
(656, 42, 232, '1', 'chopped', '2024-05-09 19:27:19'),
(657, 44, 157, '250', 'grams', '2024-05-09 19:27:19'),
(658, 45, 233, '300', 'grams', '2024-05-09 19:27:19'),
(659, 47, 234, '2', 'tablespoons', '2024-05-09 19:27:19'),
(660, 48, 235, '', 'bunch', '2024-05-09 19:27:19'),
(661, 49, 207, '1', 'units', '2024-05-09 19:27:20'),
(662, 50, 25, '1', 'units', '2024-05-09 19:27:20'),
(729, 51, 80, '250', 'grams', '2024-05-09 19:27:19'),
(730, 52, 81, '1', 'large', '2024-05-09 19:27:19'),
(731, 53, 82, '4-5', 'pound', '2024-05-09 19:27:19'),
(732, 54, 12, '900', 'grams', '2024-05-09 19:27:19'),
(733, 55, 12, '1/2', 'lb', '2024-05-09 19:27:19'),
(734, 56, 7, '3', 'medium', '2024-05-09 19:27:20'),
(735, 57, 30, '100', 'units', '2024-05-09 19:27:20'),
(736, 58, 12, '1', 'lb', '2024-05-09 19:27:19'),
(737, 59, 83, '2', 'units', '2024-05-09 19:27:20'),
(738, 60, 84, '3', 'units', '2024-05-09 19:27:20'),
(739, 61, 1, '1.2', 'kg', '2024-05-09 19:27:19'),
(740, 62, 85, '2', 'tablespoons', '2024-05-09 19:27:19'),
(741, 63, 86, '1', 'tablespoons', '2024-05-09 19:27:19'),
(742, 64, 30, '50', 'grams', '2024-05-09 19:27:19'),
(743, 65, 87, '450', 'ml', '2024-05-09 19:27:19'),
(744, 66, 1, '8', 'units', '2024-05-09 19:27:20'),
(745, 51, 30, '175', 'grams', '2024-05-09 19:27:19'),
(746, 52, 21, '', 'units', '2024-05-09 19:27:20'),
(747, 53, 104, '', 'dash', '2024-05-09 19:27:20'),
(748, 54, 86, '3', 'tablespoons', '2024-05-09 19:27:19'),
(749, 55, 104, '', 'pinch', '2024-05-09 19:27:19'),
(750, 56, 86, '1', 'tablespoons', '2024-05-09 19:27:19'),
(751, 57, 23, '150', 'grams', '2024-05-09 19:27:19'),
(752, 58, 99, '5', 'tablespoons', '2024-05-09 19:27:19'),
(753, 59, 105, '2', 'units', '2024-05-09 19:27:20'),
(754, 60, 86, '4', 'tablespoons', '2024-05-09 19:27:19'),
(755, 61, 21, '5', 'sliced', '2024-05-09 19:27:19'),
(756, 62, 106, '1', 'teaspoons', '2024-05-09 19:27:20'),
(757, 63, 15, '3', 'dry-cured', '2024-05-09 19:27:19'),
(758, 64, 21, '1', 'chopped', '2024-05-09 19:27:19'),
(759, 65, 107, '3', 'units', '2024-05-09 19:27:20'),
(760, 66, 104, '', 'pinch', '2024-05-09 19:27:19'),
(761, 51, 5, '2', 'tablespoons', '2024-05-09 19:27:19'),
(762, 52, 27, '1', 'cups', '2024-05-09 19:27:20'),
(763, 53, 21, '3', 'units', '2024-05-09 19:27:20'),
(764, 54, 70, '3', 'units', '2024-05-09 19:27:20'),
(765, 55, 122, '', 'pinch', '2024-05-09 19:27:19'),
(766, 56, 15, '2', 'strips', '2024-05-09 19:27:19'),
(767, 57, 123, '700', 'ml', '2024-05-09 19:27:19'),
(768, 58, 124, '1', 'units', '2024-05-09 19:27:20'),
(769, 59, 104, '0.5', 'units', '2024-05-09 19:27:20'),
(770, 60, 125, '1', 'units', '2024-05-09 19:27:20'),
(771, 61, 27, '2', 'chopped', '2024-05-09 19:27:19'),
(772, 62, 126, '4', 'fillets', '2024-05-09 19:27:19'),
(773, 63, 70, '12', 'small', '2024-05-09 19:27:19'),
(774, 64, 98, '100', 'units', '2024-05-09 19:27:20'),
(775, 65, 30, '75', 'grams', '2024-05-09 19:27:19'),
(776, 66, 122, '', 'pinch', '2024-05-09 19:27:19'),
(777, 51, 163, '175', 'grams', '2024-05-09 19:27:19'),
(778, 52, 164, '1', 'units', '2024-05-09 19:27:20'),
(779, 53, 165, '1', 'sprig', '2024-05-09 19:27:20'),
(780, 54, 15, '125', 'grams', '2024-05-09 19:27:19'),
(781, 55, 105, '1/2', 'units', '2024-05-09 19:27:20'),
(782, 56, 166, '1', 'tablespoons', '2024-05-09 19:27:19'),
(783, 57, 72, '1', 'tablespoons', '2024-05-09 19:27:19'),
(784, 58, 167, '3', 'units', '2024-05-09 19:27:20'),
(785, 60, 7, '3', 'units', '2024-05-09 19:27:20'),
(786, 61, 168, '1', 'tablespoons', '2024-05-09 19:27:19'),
(787, 62, 169, '8', 'units', '2024-05-09 19:27:20'),
(788, 63, 170, '4', 'grams', '2024-05-09 19:30:48'),
(789, 64, 125, '1', 'units', '2024-05-09 19:27:20'),
(790, 65, 48, '2', 'minced', '2024-05-09 19:27:19'),
(791, 66, 54, '1', 'units', '2024-05-09 19:27:20'),
(792, 52, 205, '1.5', 'tablespoons', '2024-05-09 19:27:19'),
(793, 53, 206, '4', 'units', '2024-05-09 19:27:20'),
(794, 54, 207, '2', 'units', '2024-05-09 19:27:20'),
(795, 55, 205, '5', 'tablespoons', '2024-05-09 19:27:19'),
(796, 56, 104, '', 'pinch', '2024-05-09 19:27:20'),
(797, 57, 104, '', 'pinch', '2024-05-09 19:27:20'),
(798, 58, 208, '1', 'units', '2024-05-09 19:27:20'),
(799, 60, 75, '', 'garnish', '2024-05-09 19:27:20'),
(800, 61, 209, '2', 'teaspoons', '2024-05-09 19:27:20'),
(801, 62, 210, '2', 'shredded', '2024-05-09 19:27:19'),
(802, 63, 48, '3', 'chopped', '2024-05-09 19:27:19'),
(803, 64, 131, '', 'pinch', '2024-05-09 19:27:19'),
(804, 65, 5, '200', 'ml', '2024-05-09 19:27:19'),
(805, 66, 8, '1/2', 'units', '2024-05-09 19:27:20'),
(806, 52, 219, '1', 'chopped', '2024-05-09 19:27:19'),
(807, 53, 123, '2', 'cups', '2024-05-09 19:27:19'),
(808, 54, 220, '330', 'ml', '2024-05-09 19:27:19'),
(809, 55, 3, '1/4', 'lb', '2024-05-09 19:27:19'),
(810, 56, 122, '', 'pinch', '2024-05-09 19:27:20'),
(811, 57, 122, '', 'pinch', '2024-05-09 19:27:20'),
(812, 58, 111, '1', 'units', '2024-05-09 19:27:20'),
(813, 61, 221, '3', 'teaspoons', '2024-05-09 19:27:20'),
(814, 62, 222, '4', 'shredded', '2024-05-09 19:27:19'),
(815, 63, 223, '3', 'tablespoons', '2024-05-09 19:27:19'),
(816, 64, 1, '250', 'grams', '2024-05-09 19:27:19'),
(817, 65, 175, '3', 'tablespoons', '2024-05-09 19:27:19'),
(818, 66, 111, '8', 'units', '2024-05-09 19:27:20'),
(856, 67, 89, '3', 'units', '2024-05-09 19:27:20'),
(857, 68, 67, '1', 'bunch', '2024-05-09 19:27:19'),
(858, 69, 90, '500', 'grams', '2024-05-09 19:27:19'),
(859, 70, 91, '1', 'cups', '2024-05-09 19:27:20'),
(860, 71, 30, '250', 'grams', '2024-05-09 19:27:19'),
(861, 72, 12, '1', 'lb', '2024-05-09 19:27:19'),
(862, 73, 92, '227', 'grams', '2024-05-09 19:27:19'),
(863, 74, 30, '75', 'grams', '2024-05-09 19:27:19'),
(864, 75, 23, '4', 'units', '2024-05-09 19:27:20'),
(865, 76, 93, '1', 'lb', '2024-05-09 19:27:19'),
(866, 77, 94, '500', 'grams', '2024-05-09 19:27:19'),
(867, 78, 95, '8', 'grams', '2024-05-09 19:27:20'),
(868, 79, 44, '1', 'lb', '2024-05-09 19:27:19'),
(869, 80, 96, '300', 'grams', '2024-05-09 19:27:19'),
(870, 81, 86, '1', 'tablespoons', '2024-05-09 19:27:19'),
(871, 82, 86, '2', 'units', '2024-05-09 19:27:20'),
(872, 83, 97, '500', 'grams', '2024-05-09 19:27:19'),
(873, 84, 86, '2', 'tablespoons', '2024-05-09 19:27:19'),
(874, 85, 98, '30', 'grams', '2024-05-09 19:27:19'),
(875, 86, 99, '2', 'tablespoons', '2024-05-09 19:27:19'),
(876, 87, 30, '175', 'grams', '2024-05-09 19:27:19'),
(877, 88, 100, '800', 'grams', '2024-05-09 19:27:19'),
(878, 89, 7, '1', 'kg', '2024-05-09 19:27:19'),
(879, 90, 101, '4', 'shanks', '2024-05-09 19:27:19'),
(880, 91, 102, '450', 'grams', '2024-05-09 19:27:19'),
(881, 92, 23, '100', 'units', '2024-05-09 19:27:20'),
(882, 93, 30, '200', 'grams', '2024-05-09 19:27:19'),
(883, 94, 6, '10', 'units', '2024-05-09 19:27:20'),
(884, 95, 23, '1', 'units', '2024-05-09 19:27:20'),
(885, 96, 1, '1.5', 'kg', '2024-05-09 19:27:20'),
(886, 97, 48, '1', 'clove', '2024-05-09 19:27:19'),
(887, 98, 103, '2', 'chopped', '2024-05-09 19:27:19'),
(888, 99, 7, '4', 'units', '2024-05-09 19:27:20'),
(889, 67, 108, '1', 'tablespoons', '2024-05-09 19:27:19'),
(890, 68, 109, '8', 'units', '2024-05-09 19:27:20'),
(891, 69, 110, '250', 'grams', '2024-05-09 19:27:19'),
(892, 70, 111, '2-1/2', 'cups', '2024-05-09 19:27:19'),
(893, 71, 112, '350', 'grams', '2024-05-09 19:27:19'),
(894, 72, 21, '1', 'units', '2024-05-09 19:27:20'),
(895, 73, 30, '25', 'grams', '2024-05-09 19:27:19'),
(896, 74, 113, '1', 'kg', '2024-05-09 19:27:19'),
(897, 75, 111, '1', 'units', '2024-05-09 19:27:20'),
(898, 76, 114, '1/2', 'units', '2024-05-09 19:27:20'),
(899, 77, 86, '3', 'tablespoons', '2024-05-09 19:27:19'),
(900, 78, 112, '1/3', 'cups', '2024-05-09 19:27:20'),
(901, 79, 86, '1', 'tablespoons', '2024-05-09 19:27:19'),
(902, 80, 115, '1', 'tablespoons', '2024-05-09 19:27:19'),
(903, 81, 116, '1', 'sliced', '2024-05-09 19:27:19'),
(904, 82, 21, '1', 'sliced', '2024-05-09 19:27:19'),
(905, 83, 23, '1', 'tablespoons', '2024-05-09 19:27:19'),
(906, 84, 21, '1', 'diced', '2024-05-09 19:27:19'),
(907, 85, 117, '240', 'grams', '2024-05-09 19:27:19'),
(908, 86, 90, '500', 'grams', '2024-05-09 19:27:19'),
(909, 87, 118, '175', 'grams', '2024-05-09 19:27:19'),
(910, 88, 21, '1', 'chopped', '2024-05-09 19:27:19'),
(911, 89, 5, '200', 'ml', '2024-05-09 19:27:19'),
(912, 90, 23, '', 'cups', '2024-05-09 19:27:20'),
(913, 91, 21, '1', 'chopped', '2024-05-09 19:27:19'),
(914, 92, 6, '2', 'large', '2024-05-09 19:27:19'),
(915, 93, 105, '1', 'large', '2024-05-09 19:27:19'),
(916, 94, 86, '1', 'tablespoons', '2024-05-09 19:27:19'),
(917, 95, 6, '2', 'units', '2024-05-09 19:27:20'),
(918, 96, 119, '3', 'chopped', '2024-05-09 19:27:19'),
(919, 97, 120, '2', 'small', '2024-05-09 19:27:19'),
(920, 98, 121, '1', 'diced', '2024-05-09 19:27:20'),
(921, 99, 20, '3', 'units', '2024-05-09 19:27:20'),
(922, 67, 128, '2', 'tablespoons', '2024-05-09 19:27:19'),
(923, 68, 41, '1', 'chopped', '2024-05-09 19:27:19'),
(924, 69, 21, '1', 'units', '2024-05-09 19:27:20'),
(925, 70, 104, '1', 'teaspoons', '2024-05-09 19:27:20'),
(926, 71, 71, '', 'units', '2024-05-09 19:27:20'),
(927, 72, 125, '1', 'units', '2024-05-09 19:27:20'),
(928, 73, 129, '1', 'units', '2024-05-09 19:27:20'),
(929, 74, 104, '', 'teaspoons', '2024-05-09 19:27:20'),
(930, 75, 104, '1/4', 'teaspoons', '2024-05-09 19:27:20'),
(931, 76, 30, '1/2', 'units', '2024-05-09 19:27:20'),
(932, 77, 130, '1', 'units', '2024-05-09 19:27:20'),
(933, 78, 131, '3/4', 'teaspoon', '2024-05-09 19:27:19'),
(934, 79, 52, '2', 'tablespoons', '2024-05-09 19:27:19'),
(935, 80, 132, '', 'garnish', '2024-05-09 19:27:20'),
(936, 81, 133, '2', 'tablespoons', '2024-05-09 19:27:19'),
(937, 82, 20, '2', 'chopped', '2024-05-09 19:27:19'),
(938, 83, 99, '', 'dash', '2024-05-09 19:27:20'),
(939, 84, 34, '250', 'grams', '2024-05-09 19:27:19'),
(940, 85, 5, '10', 'grams', '2024-05-09 19:27:19'),
(941, 86, 21, '1', 'chopped', '2024-05-09 19:27:19'),
(942, 87, 6, '3', 'units', '2024-05-09 19:27:20'),
(943, 88, 12, '300', 'grams', '2024-05-09 19:27:19'),
(944, 89, 30, '50', 'grams', '2024-05-09 19:27:19'),
(945, 90, 86, '2', 'units', '2024-05-09 19:27:20'),
(946, 91, 135, '1', 'units', '2024-05-09 19:27:20'),
(947, 92, 5, '300', 'units', '2024-05-09 19:27:20'),
(948, 93, 5, '4', 'tablespoons', '2024-05-09 19:27:19'),
(949, 94, 136, '2', 'chopped', '2024-05-09 19:27:19'),
(950, 95, 5, '1', 'units', '2024-05-09 19:27:20'),
(951, 96, 48, '2', 'cloves', '2024-05-09 19:27:19'),
(952, 97, 86, '2', 'tablespoons', '2024-05-09 19:27:19'),
(953, 98, 137, '', 'bunch', '2024-05-09 19:27:19'),
(954, 99, 104, '1', 'tablespoons', '2024-05-09 19:27:19'),
(955, 67, 171, '500', 'grams', '2024-05-09 19:27:19'),
(956, 68, 21, '', 'sliced', '2024-05-09 19:27:20'),
(957, 69, 72, '3', 'chopped', '2024-05-09 19:27:19'),
(958, 70, 172, '3', 'tablespoons', '2024-05-09 19:27:19'),
(959, 71, 173, '200', 'grams', '2024-05-09 19:27:19'),
(960, 72, 139, '4', 'units', '2024-05-09 19:27:20'),
(961, 73, 174, '', 'grated', '2024-05-09 19:27:20'),
(962, 74, 105, '1', 'units', '2024-05-09 19:27:20'),
(963, 75, 86, '1/4', 'cups', '2024-05-09 19:27:20'),
(964, 76, 72, '2', 'tablespoons', '2024-05-09 19:27:19'),
(965, 77, 175, '250', 'ml', '2024-05-09 19:27:19'),
(966, 78, 176, '1/2', 'teaspoon', '2024-05-09 19:27:19'),
(967, 79, 177, '4', 'tablespoons', '2024-05-09 19:27:19'),
(968, 81, 35, '400', 'can', '2024-05-09 19:27:19'),
(969, 82, 48, '2', 'minced', '2024-05-09 19:27:19'),
(970, 83, 20, '2', 'sliced', '2024-05-09 19:27:19'),
(971, 84, 178, '1', 'units', '2024-05-09 19:27:20'),
(972, 85, 179, '3', 'sprigs', '2024-05-09 19:27:19'),
(973, 86, 112, '1', 'tablespoons', '2024-05-09 19:27:19'),
(974, 87, 5, '3', 'tablespoons', '2024-05-09 19:27:19'),
(975, 88, 111, '1', 'litre', '2024-05-09 19:27:20'),
(976, 89, 135, '', 'bunch', '2024-05-09 19:27:20'),
(977, 90, 21, '1', 'pieces', '2024-05-09 19:27:19'),
(978, 91, 54, '1', 'units', '2024-05-09 19:27:20'),
(979, 92, 180, '', 'serve', '2024-05-09 19:27:19'),
(980, 93, 181, '85', 'grams', '2024-05-09 19:27:19'),
(981, 94, 121, '4', 'units', '2024-05-09 19:27:20'),
(982, 95, 104, '', 'pinch', '2024-05-09 19:27:20'),
(983, 96, 182, '1', 'units', '2024-05-09 19:27:20'),
(984, 97, 72, '', 'leaves', '2024-05-09 19:27:20'),
(985, 98, 48, '3', 'cloves', '2024-05-09 19:27:19'),
(986, 99, 6, '4', 'units', '2024-05-09 19:27:20'),
(987, 67, 211, '284', 'ml', '2024-05-09 19:27:19'),
(988, 68, 87, '1', 'units', '2024-05-09 19:27:20'),
(989, 69, 60, '3/4', 'teaspoon', '2024-05-09 19:27:19'),
(990, 70, 209, '1/2', 'teaspoons', '2024-05-09 19:27:20'),
(991, 71, 212, '100', 'units', '2024-05-09 19:27:20'),
(992, 72, 8, '2', 'units', '2024-05-09 19:27:20'),
(993, 73, 72, '', 'chopped', '2024-05-09 19:27:20'),
(994, 74, 174, '', 'teaspoon', '2024-05-09 19:27:19'),
(995, 77, 213, '1/2', 'teaspoon', '2024-05-09 19:27:19'),
(996, 78, 106, '1/8', 'teaspoon', '2024-05-09 19:27:19'),
(997, 81, 214, '100', 'grams', '2024-05-09 19:27:19'),
(998, 82, 54, '', 'teaspoons', '2024-05-09 19:27:20'),
(999, 83, 7, '500', 'grams', '2024-05-09 19:27:19'),
(1000, 84, 104, '1/2', 'teaspoons', '2024-05-09 19:27:20'),
(1001, 85, 52, '2', 'units', '2024-05-09 19:27:20'),
(1002, 86, 123, '250', 'ml', '2024-05-09 19:27:19'),
(1003, 87, 193, '', 'glaze', '2024-05-09 19:27:20'),
(1004, 88, 86, '1/2', 'units', '2024-05-09 19:27:20'),
(1005, 90, 59, '1', 'pieces', '2024-05-09 19:27:19'),
(1006, 91, 52, '2', 'tablespoons', '2024-05-09 19:27:19'),
(1007, 92, 215, '', 'serve', '2024-05-09 19:27:19'),
(1008, 93, 216, '100', 'units', '2024-05-09 19:27:20'),
(1009, 94, 119, '1', 'units', '2024-05-09 19:27:20'),
(1010, 95, 30, '3', 'tablespoons', '2024-05-09 19:27:19'),
(1011, 96, 191, '1', 'units', '2024-05-09 19:27:20'),
(1012, 97, 217, '2', 'handfuls', '2024-05-09 19:27:20'),
(1013, 98, 218, '', 'pinch', '2024-05-09 19:27:20'),
(1014, 99, 75, '4', 'units', '2024-05-09 19:27:20'),
(1015, 67, 224, '', 'handfuls', '2024-05-09 19:27:20'),
(1016, 69, 18, '2', 'tablespoons', '2024-05-09 19:27:19'),
(1017, 70, 225, '1/2', 'teaspoons', '2024-05-09 19:27:20'),
(1018, 71, 226, '1', 'units', '2024-05-09 19:27:20'),
(1019, 72, 3, '1/4', 'cups', '2024-05-09 19:27:20'),
(1020, 74, 112, '225', 'grams', '2024-05-09 19:27:19'),
(1021, 77, 227, '1', 'pack', '2024-05-09 19:27:19'),
(1022, 78, 30, '6', 'grams', '2024-05-09 19:27:20'),
(1023, 81, 47, '2', 'halved', '2024-05-09 19:27:19'),
(1024, 82, 218, '', 'teaspoons', '2024-05-09 19:27:20'),
(1025, 83, 228, '450', 'grams', '2024-05-09 19:27:19'),
(1026, 84, 229, '1', 'units', '2024-05-09 19:27:20'),
(1027, 85, 175, '125', 'units', '2024-05-09 19:27:20'),
(1028, 86, 230, '', 'dash', '2024-05-09 19:27:20'),
(1029, 90, 231, '1', 'pieces', '2024-05-09 19:27:19'),
(1030, 91, 232, '1', 'chopped', '2024-05-09 19:27:19'),
(1031, 93, 157, '250', 'grams', '2024-05-09 19:27:19'),
(1032, 94, 233, '300', 'grams', '2024-05-09 19:27:19'),
(1033, 96, 234, '2', 'tablespoons', '2024-05-09 19:27:19'),
(1034, 97, 235, '', 'bunch', '2024-05-09 19:27:19'),
(1035, 98, 207, '1', 'units', '2024-05-09 19:27:20'),
(1036, 99, 25, '1', 'units', '2024-05-09 19:27:20');

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

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `name`, `updated_at`) VALUES
(1, 'Cake', '2024-03-28 17:42:07'),
(2, 'Chocolate', '2024-03-28 17:42:07'),
(3, 'Desert', '2024-03-28 17:42:07'),
(4, 'Pudding', '2024-03-28 17:42:07'),
(5, 'Spicy', '2024-03-28 17:42:07'),
(6, 'Bun', '2024-03-28 17:42:07'),
(7, 'Calorific', '2024-03-28 17:42:07'),
(8, 'Meat', '2024-03-28 17:42:07'),
(9, 'Pie', '2024-03-28 17:42:07'),
(10, 'Breakfast', '2024-03-28 17:42:07'),
(11, 'Brunch', '2024-03-28 17:42:07'),
(13, 'DinnerParty', '2024-03-28 17:42:07'),
(14, 'HangoverFood', '2024-03-28 17:42:07'),
(15, 'Alcoholic', '2024-03-28 17:42:07'),
(16, 'soup', '2024-03-28 17:42:07'),
(17, 'Fish', '2024-03-28 17:42:07'),
(18, 'Sweet', '2024-03-28 17:42:07'),
(19, 'Snack', '2024-03-28 17:42:07'),
(20, 'Treat', '2024-03-28 17:42:07'),
(21, 'Tart', '2024-03-28 17:42:07'),
(22, 'BBQ', '2024-03-28 17:42:07'),
(23, 'Christmas', '2024-03-28 17:42:07'),
(24, 'Sausages', '2024-03-28 17:42:07'),
(25, 'Curry', '2024-03-28 17:42:07'),
(26, 'Vegetarian', '2024-03-28 17:42:07'),
(27, 'Seafood', '2024-03-28 17:42:07'),
(28, 'Shellfish', '2024-03-28 17:42:07'),
(29, 'DateNight', '2024-03-28 17:42:07'),
(30, 'Nutty', '2024-03-28 17:42:07'),
(31, 'Light', '2024-03-28 17:42:07'),
(32, 'Baking', '2024-03-28 17:42:07'),
(33, 'Heavy', '2024-03-28 17:42:07'),
(34, 'MainMeal', '2024-03-28 17:42:07'),
(35, 'Speciality', '2024-03-28 17:42:07'),
(36, 'Fruity', '2024-03-28 17:42:07'),
(37, 'Caramel', '2024-03-28 17:42:07'),
(38, 'Egg', '2024-03-28 17:42:07'),
(39, 'salad', '2024-03-28 17:42:07'),
(40, 'Gluten-free', '2024-05-01 15:06:45'),
(41, 'Vegan', '2024-05-01 15:06:45'),
(42, 'Organic', '2024-05-01 15:06:45'),
(43, 'Gourmet', '2024-05-01 15:06:45'),
(44, 'Low-carb', '2024-05-01 15:06:45'),
(45, 'Dairy-free', '2024-05-01 15:06:45'),
(46, 'Spicy', '2024-05-01 15:06:45'),
(47, 'Grilled', '2024-05-01 15:06:45'),
(48, 'Mediterranean', '2024-05-01 15:06:45'),
(49, 'Farm-fresh', '2024-05-01 15:06:45'),
(50, 'Artisanal', '2024-05-01 15:06:45'),
(51, 'Homemade', '2024-05-01 15:06:45'),
(52, 'Exotic', '2024-05-01 15:06:45'),
(53, 'Low-fat', '2024-05-01 15:06:45'),
(54, 'Sugar-free', '2024-05-01 15:06:45'),
(55, 'Raw', '2024-05-01 15:06:45'),
(56, 'Locally-sourced', '2024-05-01 15:06:45'),
(57, 'Quick & Easy', '2024-05-01 15:06:45'),
(58, 'Comfort food', '2024-05-01 15:06:45'),
(59, 'Superfood', '2024-05-01 15:06:45'),
(60, 'Paleo', '2024-05-01 15:06:45'),
(61, 'Fusion', '2024-05-01 15:06:45'),
(62, 'Traditional', '2024-05-01 15:06:45'),
(63, 'Family recipe', '2024-05-01 15:06:45'),
(64, 'No added preservatives', '2024-05-01 15:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `meal_type`
--

CREATE TABLE `meal_type` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meal_type`
--

INSERT INTO `meal_type` (`id`, `name`, `updated_at`) VALUES
(1, 'Breakfast', '2024-03-28 17:13:06'),
(2, 'lunch', '2024-03-28 17:13:31'),
(3, 'dinner', '2024-03-28 17:13:35'),
(4, 'brunch', '2024-03-28 17:13:53'),
(5, 'evening meal', '2024-03-28 17:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `national_cuisine`
--

CREATE TABLE `national_cuisine` (
  `id` int(11) NOT NULL,
  `national_cuisine` varchar(45) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `national_cuisine`
--

INSERT INTO `national_cuisine` (`id`, `national_cuisine`, `updated_at`) VALUES
(1, 'Greek', '2024-03-26 13:33:10'),
(2, 'Mexican', '2024-03-26 13:33:15'),
(3, 'British', '2024-03-26 13:33:20'),
(4, 'Dutch', '2024-03-26 13:33:23'),
(5, 'Japanese', '2024-03-26 13:33:27'),
(6, 'Thai', '2024-03-26 13:33:32'),
(7, 'French', '2024-03-26 13:33:35'),
(8, 'Italian', '2024-03-26 13:33:40'),
(9, 'Irish', '2024-03-26 13:33:45'),
(10, 'Moroccan', '2024-03-26 13:33:48'),
(11, 'Indian', '2024-03-26 13:33:51'),
(12, 'American', '2024-03-26 13:33:55'),
(13, 'Canadian', '2024-03-26 13:33:59'),
(14, 'Malaysian', '2024-03-26 13:34:03'),
(15, 'Russian', '2024-03-26 13:34:06'),
(16, 'Jamaican', '2024-03-26 13:34:10'),
(17, 'Chinese', '2024-03-26 13:34:14'),
(18, 'Kenyan', '2024-03-26 13:34:17'),
(19, 'Tunisian', '2024-03-26 13:34:20'),
(20, 'Turkish', '2024-03-26 13:34:24'),
(21, 'Vietnamese', '2024-03-26 13:34:29'),
(22, 'Polish', '2024-03-26 13:34:32'),
(23, 'Egyptian', '2024-03-26 13:34:36'),
(24, 'Portuguese', '2024-03-26 13:34:41'),
(25, 'Croatian', '2024-03-26 13:34:44'),
(26, 'Filipino', '2024-03-26 13:34:49');

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

--
-- Dumping data for table `nutritional_info`
--

INSERT INTO `nutritional_info` (`id`, `ingredient_id`, `calories_per_100`, `proteins_per_100`, `fat_per_100`, `carbohydrates_per_100`, `updated_at`) VALUES
(1, 1, 239, 27, 14, 0, '2024-05-13 21:04:24'),
(2, 2, 280, 13, 25, 2, '2024-05-13 21:04:24'),
(3, 3, 138, 4, 1, 25, '2024-05-13 21:04:24'),
(4, 4, 297, 12, 26, 1, '2024-05-13 21:04:24'),
(5, 5, 42, 3, 2, 5, '2024-05-13 21:04:24'),
(6, 6, 155, 13, 11, 1, '2024-05-13 21:04:24'),
(7, 7, 77, 2, 0, 17, '2024-05-13 21:04:24'),
(8, 8, 130, 2, 0, 28, '2024-05-13 21:04:24'),
(9, 9, 127, 9, 1, 22, '2024-05-13 21:04:24'),
(10, 10, 70, 2, 4, 6, '2024-05-13 21:04:24'),
(11, 11, 402, 25, 33, 1.3, '2024-05-13 21:04:24'),
(12, 12, 250, 26, 15, 0, '2024-05-13 21:04:24'),
(13, 13, 242, 26, 16, 0, '2024-05-13 21:04:24'),
(14, 14, 145, 17, 7, 0, '2024-05-13 21:04:24'),
(15, 15, 181, 12, 14, 0.4, '2024-05-13 21:04:24'),
(16, 16, 125, 29, 1, 0, '2024-05-13 21:04:24'),
(17, 17, 43, 2, 0, 9.6, '2024-05-13 21:04:24'),
(18, 18, 337, 10, 6, 60, '2024-05-13 21:04:24'),
(19, 19, 116, 9, 0, 20, '2024-05-13 21:04:24'),
(20, 20, 41, 1, 0, 10, '2024-05-13 21:04:24'),
(21, 21, 40, 1, 0, 9.3, '2024-05-13 21:04:24'),
(22, 22, 343, 13, 3, 71, '2024-05-13 21:04:24'),
(23, 23, 364, 10, 1, 76, '2024-05-13 21:04:24'),
(24, 24, 105, 16, 1, 4.8, '2024-05-13 21:04:24'),
(25, 25, 81, 5, 0, 14, '2024-05-13 21:04:24'),
(26, 26, 52, 0, 0, 14, '2024-05-13 21:04:24'),
(27, 27, 18, 1, 0, 3.9, '2024-05-13 21:04:24'),
(28, 28, 206, 20, 13, 0, '2024-05-13 21:04:24'),
(29, 29, 61, 4, 3, 4.7, '2024-05-13 21:04:24'),
(30, 30, 717, 1, 81, 0.1, '2024-05-13 21:04:24'),
(31, 31, 198, 3, 20, 3.3, '2024-05-13 21:04:24'),
(32, 32, 75, 1, 0, 17, '2024-05-13 21:04:24'),
(33, 33, 479, 4, 24, 68, '2024-05-13 21:04:24'),
(34, 34, 164, 9, 3, 27, '2024-05-13 21:04:24'),
(35, 35, 230, 2, 24, 3.3, '2024-05-13 21:04:24'),
(36, 36, 34, 3, 0, 7, '2024-05-13 21:04:24'),
(37, 37, 20, 2, 0, 3.9, '2024-05-13 21:04:24'),
(38, 38, 120, 4, 2, 21, '2024-05-13 21:04:24'),
(39, 39, 43, 3, 0, 9, '2024-05-13 21:04:24'),
(40, 40, 86, 2, 0, 20, '2024-05-13 21:04:24'),
(41, 41, 25, 1, 0, 6, '2024-05-13 21:04:24'),
(42, 42, 567, 25, 49, 16, '2024-05-13 21:04:24'),
(43, 43, 23, 3, 0, 3.6, '2024-05-13 21:04:24'),
(44, 44, 208, 20, 13, 0, '2024-05-13 21:04:24'),
(45, 45, 486, 17, 31, 42.1, '2024-05-13 21:04:24'),
(46, 46, 32, 1, 0, 6.1, '2024-05-13 21:04:24'),
(47, 47, 30, 1, 0, 10.5, '2024-05-13 21:04:24'),
(48, 48, 149, 6, 1, 33, '2024-05-13 21:04:24'),
(49, 49, 18, 1, 0, 4.6, '2024-05-13 21:04:24'),
(50, 50, 23, 2, 1, 3.7, '2024-05-13 21:04:24'),
(51, 51, 83, 0, 0, 2.6, '2024-05-13 21:04:24'),
(52, 52, 61, 5, 0, 8.2, '2024-05-13 21:04:24'),
(53, 53, 66, 5, 4, 3.6, '2024-05-13 21:04:24'),
(54, 54, 80, 2, 1, 18, '2024-05-13 21:04:24'),
(55, 55, 60, 1, 0, 15, '2024-05-13 21:04:24'),
(56, 56, 299, 3, 1, 79, '2024-05-13 21:04:24'),
(57, 57, 31, 1, 0, 6, '2024-05-13 21:04:24'),
(58, 58, 29, 1, 0, 6, '2024-05-13 21:04:24'),
(59, 59, 16, 1, 0, 3, '2024-05-13 21:04:24'),
(60, 60, 5, 0, 0, 2, '2024-05-13 21:04:24'),
(61, 61, 131, 4, 1, 25, '2024-05-13 21:04:24'),
(62, 62, 97, 2, 0, 23.9, '2024-05-13 21:04:24'),
(63, 63, 116, 26, 1, 0, '2024-05-13 21:04:24'),
(64, 64, 23, 2, 1, 3.5, '2024-05-13 21:04:24'),
(65, 65, 25, 1, 1, 5, '2024-05-13 21:04:24'),
(66, 66, 23, 3, 1, 2.7, '2024-05-13 21:04:24'),
(67, 67, 50, 3, 1, 8.8, '2024-05-13 21:04:24'),
(68, 68, 40, 1, 0, 9.3, '2024-05-13 21:04:24'),
(69, 69, 208, 26, 12, 0, '2024-05-13 21:04:24'),
(71, 70, 72, 3, 0, 16.8, '2024-05-13 21:04:24'),
(72, 71, 29, 1, 0, 9.3, '2024-05-13 21:04:24'),
(73, 72, 36, 3, 1, 6.3, '2024-05-13 21:04:24'),
(74, 73, 195, 22, 11, 0, '2024-05-13 21:04:24'),
(75, 74, 16, 1, 0, 3.6, '2024-05-13 21:04:24'),
(76, 75, 43, 4, 1, 7.9, '2024-05-13 21:04:24'),
(77, 76, 112, 4, 0, 23, '2024-05-13 21:04:24'),
(78, 77, 32, 2, 0, 7.3, '2024-05-13 21:04:24'),
(79, 78, 96, 22, 1, 0, '2024-05-13 21:04:24'),
(80, 79, 454, 7, 44, 17, '2024-05-13 21:04:24'),
(81, 80, 546, 7, 31, 61, '2024-05-13 21:04:24'),
(82, 81, 25, 1, 0, 6, '2024-05-13 21:04:24'),
(83, 82, 345, 34, 23, 0, '2024-05-13 21:04:24'),
(84, 83, 266, 9, 3, 42, '2024-05-13 21:04:24'),
(85, 84, 43, 2, 0, 9.6, '2024-05-13 21:04:24'),
(86, 85, 315, 4, 20, 35, '2024-05-13 21:04:24'),
(87, 86, 884, 0, 100, 0, '2024-05-13 21:04:24'),
(88, 87, 15, 1, 0, 1.8, '2024-05-13 21:04:24'),
(89, 88, 260, 3, 12, 36, '2024-05-13 21:04:24'),
(90, 89, 43, 1, 0, 8.2, '2024-05-13 21:04:24'),
(91, 90, 250, 26, 16, 0, '2024-05-13 21:04:24'),
(92, 91, 300, 22, 2, 60, '2024-05-13 21:04:24'),
(93, 92, 500, 5, 50, 5, '2024-05-13 21:04:24'),
(94, 93, 350, 12, 1, 70, '2024-05-13 21:04:24'),
(95, 94, 70, 15, 1, 0, '2024-05-13 21:04:24'),
(96, 95, 370, 13, 1, 75, '2024-05-13 21:04:24'),
(97, 96, 150, 2, 0, 35, '2024-05-13 21:04:24'),
(98, 97, 300, 30, 20, 0, '2024-05-13 21:04:24'),
(99, 98, 20, 3, 0, 3, '2024-05-13 21:04:24'),
(100, 99, 900, 0, 100, 0, '2024-05-13 21:04:24'),
(101, 100, 40, 4, 1, 5, '2024-05-13 21:04:24'),
(102, 101, 150, 30, 5, 0, '2024-05-13 21:04:24'),
(103, 102, 250, 30, 15, 0, '2024-05-13 21:04:24'),
(104, 103, 40, 1, 0, 10, '2024-05-13 21:04:24'),
(105, 104, 0, 0, 0, 0, '2024-05-13 21:04:24'),
(106, 105, 150, 12, 10, 0, '2024-05-13 21:04:24'),
(107, 106, 300, 15, 20, 60, '2024-05-13 21:04:24'),
(108, 107, 160, 30, 4, 0, '2024-05-13 21:04:24'),
(109, 108, 400, 0, 0, 100, '2024-05-13 21:04:24'),
(110, 109, 300, 15, 25, 2, '2024-05-13 21:04:24'),
(111, 110, 240, 15, 20, 1, '2024-05-13 21:04:24'),
(112, 111, 0, 0, 0, 0, '2024-05-13 21:04:24'),
(113, 112, 350, 10, 1, 70, '2024-05-13 21:04:24'),
(114, 113, 60, 2, 1, 15, '2024-05-13 21:04:24'),
(115, 114, 350, 2, 35, 3, '2024-05-13 21:04:24'),
(116, 115, 300, 0, 0, 30, '2024-05-13 21:04:24'),
(117, 116, 40, 2, 0, 10, '2024-05-13 21:04:24'),
(118, 117, 130, 3, 1, 30, '2024-05-13 21:04:24'),
(119, 118, 400, 0, 0, 100, '2024-05-13 21:04:24'),
(120, 119, 40, 2, 0, 10, '2024-05-13 21:04:24'),
(121, 120, 250, 20, 15, 0, '2024-05-13 21:04:24'),
(122, 121, 30, 1, 0, 5, '2024-05-13 21:04:24'),
(123, 122, 30, 1, 0, 5, '2024-05-13 21:04:24'),
(124, 123, 5, 1, 0, 0.2, '2024-05-13 21:04:24'),
(125, 124, 250, 5, 2, 70, '2024-05-13 21:04:24'),
(126, 125, 150, 15, 10, 5, '2024-05-13 21:04:24'),
(127, 126, 90, 20, 1, 0, '2024-05-13 21:04:24'),
(128, 127, 380, 5, 1, 80, '2024-05-13 21:04:24'),
(129, 128, 300, 0, 0, 40, '2024-05-13 21:04:24'),
(130, 129, 370, 6, 1, 86, '2024-05-13 21:04:24'),
(131, 130, 40, 1, 0, 9, '2024-05-13 21:04:24'),
(132, 131, 347, 26, 12, 38, '2024-05-13 21:04:24'),
(133, 132, 11, 0, 0, 2.8, '2024-05-13 21:04:24'),
(134, 133, 189, 5, 14, 9, '2024-05-13 21:04:24'),
(136, 134, 72, 3, 0, 16.8, '2024-05-13 21:04:24'),
(137, 135, 32, 2, 0, 4.7, '2024-05-13 21:04:24'),
(138, 136, 17, 1, 0, 3.1, '2024-05-13 21:04:24'),
(139, 137, 23, 2, 1, 3.7, '2024-05-13 21:04:24'),
(140, 138, 884, 0, 100, 0, '2024-05-13 21:04:24'),
(141, 139, 149, 6, 1, 33.06, '2024-05-13 21:04:24'),
(142, 140, 323, 6, 12, 61.2, '2024-05-13 21:04:24'),
(143, 141, 172, 25, 7, 0, '2024-05-13 21:04:24'),
(144, 142, 55, 0, 0, 12.7, '2024-05-13 21:04:24'),
(145, 143, 535, 7, 29, 59.8, '2024-05-13 21:04:24'),
(146, 144, 3, 1, 0, 0.2, '2024-05-13 21:04:24'),
(147, 145, 354, 10, 10, 68, '2024-05-13 21:04:24'),
(148, 146, 420, 36, 29, 3.2, '2024-05-13 21:04:24'),
(149, 147, 300, 2, 30, 1.5, '2024-05-13 21:04:24'),
(150, 148, 717, 1, 81, 0.06, '2024-05-13 21:04:24'),
(151, 149, 420, 36, 29, 3.2, '2024-05-13 21:04:24'),
(152, 150, 36, 3, 1, 6.3, '2024-05-13 21:04:24'),
(153, 151, 331, 17, 1, 72.7, '2024-05-13 21:04:24'),
(154, 152, 134, 0, 0, 1.4, '2024-05-13 21:04:24'),
(155, 153, 150, 15, 10, 5, '2024-05-13 21:04:24'),
(156, 154, 260, 21, 19, 0, '2024-05-13 21:04:24'),
(157, 155, 3, 0, 0, 0.5, '2024-05-13 21:04:24'),
(158, 156, 82, 4, 0, 14.8, '2024-05-13 21:04:24'),
(159, 157, 360, 10, 1, 74.9, '2024-05-13 21:04:24'),
(160, 158, 66, 4, 4, 3.6, '2024-05-13 21:04:24'),
(161, 159, 884, 0, 100, 0, '2024-05-13 21:04:24'),
(162, 160, 321, 0, 0, 79, '2024-05-13 21:04:24'),
(163, 161, 18, 0, 0, 4.2, '2024-05-13 21:04:24'),
(164, 162, 20, 0, 0, 5, '2024-05-13 21:04:24'),
(165, 163, 387, 0, 0, 99.98, '2024-05-13 21:04:24'),
(166, 164, 40, 2, 0, 8.1, '2024-05-13 21:04:24'),
(167, 165, 101, 2, 2, 23, '2024-05-13 21:04:24'),
(168, 166, 260, 0, 0, 67, '2024-05-13 21:04:24'),
(169, 167, 337, 16, 16, 50.1, '2024-05-13 21:04:24'),
(170, 168, 78, 2, 1, 17.8, '2024-05-13 21:04:24'),
(171, 169, 300, 6, 8, 47, '2024-05-13 21:04:24'),
(172, 170, 209, 24, 15, 0, '2024-05-13 21:04:24'),
(173, 171, 101, 3, 3, 14.6, '2024-05-13 21:04:24'),
(174, 172, 900, 0, 100, 0, '2024-05-13 21:04:24'),
(175, 173, 299, 4, 1, 68, '2024-05-13 21:04:24'),
(176, 174, 525, 6, 36, 49.3, '2024-05-13 21:04:24'),
(177, 175, 82, 0, 0, 2.6, '2024-05-13 21:04:24'),
(178, 176, 0, 0, 0, 0, '2024-05-13 21:04:24'),
(179, 177, 573, 17, 49, 23, '2024-05-13 21:04:24'),
(180, 178, 375, 18, 22, 44.2, '2024-05-13 21:04:24'),
(181, 179, 131, 3, 6, 20.7, '2024-05-13 21:04:24'),
(182, 180, 387, 0, 0, 99.98, '2024-05-13 21:04:24'),
(183, 181, 302, 1, 0, 69, '2024-05-13 21:04:24'),
(184, 182, 265, 9, 4, 68.9, '2024-05-13 21:04:24'),
(185, 183, 282, 10, 11, 46, '2024-05-13 21:04:24'),
(186, 184, 381, 0, 0, 91, '2024-05-13 21:04:24'),
(187, 185, 311, 11, 7, 68.5, '2024-05-13 21:04:24'),
(188, 186, 160, 9, 1, 23, '2024-05-13 21:04:24'),
(189, 187, 160, 2, 15, 9, '2024-05-13 21:04:24'),
(190, 188, 165, 31, 4, 0, '2024-05-13 21:04:24'),
(191, 189, 429, 3, 44, 2.1, '2024-05-13 21:04:24'),
(192, 190, 34, 2, 0, 6, '2024-05-13 21:04:24'),
(193, 191, 282, 14, 13, 46.7, '2024-05-13 21:04:24'),
(194, 192, 32, 1, 0, 7, '2024-05-13 21:04:24'),
(195, 193, 290, 1, 0, 76, '2024-05-13 21:04:24'),
(196, 194, 322, 16, 28, 1.2, '2024-05-13 21:04:24'),
(197, 195, 251, 10, 3, 64.8, '2024-05-13 21:04:24'),
(198, 196, 134, 6, 1, 25, '2024-05-13 21:04:24'),
(199, 197, 22, 3, 0, 3.3, '2024-05-13 21:04:24'),
(200, 198, 41, 1, 0, 9.6, '2024-05-13 21:04:24'),
(201, 199, 43, 2, 1, 8.9, '2024-05-13 21:04:24'),
(202, 200, 52, 2, 1, 11.9, '2024-05-13 21:04:24'),
(203, 201, 387, 0, 0, 99.98, '2024-05-13 21:04:24'),
(204, 202, 250, 10, 1, 49, '2024-05-13 21:04:24'),
(205, 203, 82, 0, 0, 2.6, '2024-05-13 21:04:24'),
(206, 204, 279, 13, 23, 1, '2024-05-13 21:04:24'),
(207, 205, 884, 0, 100, 0, '2024-05-13 21:04:24'),
(208, 206, 313, 8, 8, 74.5, '2024-05-13 21:04:24'),
(209, 207, 313, 8, 8, 74.5, '2024-05-13 21:04:24'),
(210, 208, 330, 3, 33, 3.3, '2024-05-13 21:04:24'),
(211, 209, 375, 18, 22, 44.2, '2024-05-13 21:04:24'),
(212, 210, 15, 1, 0, 2.9, '2024-05-13 21:04:24'),
(213, 211, 345, 2, 37, 2.9, '2024-05-13 21:04:24'),
(214, 212, 380, 0, 0, 98, '2024-05-13 21:04:24'),
(215, 213, 149, 8, 1, 33.1, '2024-05-13 21:04:24'),
(216, 214, 364, 7, 1, 79, '2024-05-13 21:04:24'),
(217, 215, 57, 1, 0, 14.5, '2024-05-13 21:04:24'),
(218, 216, 379, 13, 7, 67, '2024-05-13 21:04:24'),
(219, 217, 25, 3, 1, 3.7, '2024-05-13 21:04:24'),
(220, 218, 310, 12, 6, 65.4, '2024-05-13 21:04:24'),
(221, 219, 23, 2, 1, 3.7, '2024-05-13 21:04:24'),
(222, 220, 42, 0, 0, 3, '2024-05-13 21:04:24'),
(223, 221, 298, 12, 18, 27.3, '2024-05-13 21:04:24'),
(224, 222, 32, 2, 0, 7.3, '2024-05-13 21:04:24'),
(225, 223, 231, 0, 0, 2.5, '2024-05-13 21:04:24'),
(226, 224, 579, 21, 50, 21, '2024-05-13 21:04:24'),
(227, 225, 508, 26, 36, 28, '2024-05-13 21:04:24'),
(228, 226, 247, 4, 1, 80.6, '2024-05-13 21:04:24'),
(229, 227, 264, 14, 21, 2.2, '2024-05-13 21:04:24'),
(230, 228, 457, 5, 23, 60, '2024-05-13 21:04:24'),
(231, 229, 27, 1, 2, 4.4, '2024-05-13 21:04:24'),
(232, 230, 78, 1, 0, 17, '2024-05-13 21:04:24'),
(233, 231, 31, 1, 0, 7.3, '2024-05-13 21:04:24'),
(234, 232, 101, 6, 2, 24.4, '2024-05-13 21:04:24'),
(235, 233, 342, 6, 34, 2.9, '2024-05-13 21:04:24'),
(236, 234, 19, 0, 0, 4.5, '2024-05-13 21:04:24'),
(237, 235, 23, 3, 1, 2.7, '2024-05-13 21:04:24'),
(238, 236, 263, 6, 9, 72.1, '2024-05-13 21:04:24'),
(239, 237, 239, 3, 1, 62.5, '2024-05-13 21:04:24'),
(240, 238, 312, 10, 3, 67.1, '2024-05-13 21:04:24'),
(241, 239, 25, 1, 0, 5, '2024-05-13 21:04:24'),
(242, 240, 83, 0, 0, 2.6, '2024-05-13 21:04:24'),
(243, 241, 86, 3, 2, 18.7, '2024-05-13 21:04:24'),
(244, 242, 546, 5, 33, 56, '2024-05-13 21:04:24'),
(245, 243, 61, 3, 4, 4.7, '2024-05-13 21:04:24'),
(246, 244, 71, 17, 1, 0, '2024-05-13 21:04:24'),
(247, 245, 131, 12, 2, 64, '2024-05-13 21:04:24'),
(248, 246, 335, 9, 1, 71.2, '2024-05-13 21:04:24'),
(249, 247, 282, 12, 13, 50, '2024-05-13 21:04:24'),
(250, 248, 304, 0, 0, 82.4, '2024-05-13 21:04:24'),
(251, 249, 97, 2, 0, 25, '2024-05-13 21:04:24'),
(252, 250, 30, 3, 1, 3.2, '2024-05-13 21:04:24'),
(253, 251, 40, 1, 0, 9, '2024-05-13 21:04:24'),
(254, 252, 27, 1, 0, 6, '2024-05-13 21:04:24'),
(255, 253, 18, 1, 0, 3.9, '2024-05-13 21:04:24'),
(256, 254, 680, 1, 75, 0.6, '2024-05-13 21:04:24');

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
-- Table structure for table `recipe-labels`
--

CREATE TABLE `recipe-labels` (
  `id` int(11) NOT NULL,
  `labels_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe-labels`
--

INSERT INTO `recipe-labels` (`id`, `labels_id`, `recipe_id`, `updated_at`) VALUES
(1, 1, 1, '2024-03-28 17:52:28'),
(2, 1, 21, '2024-03-28 17:52:36'),
(3, 1, 38, '2024-03-28 17:52:51'),
(4, 2, 1, '2024-03-28 17:53:44'),
(5, 3, 1, '2024-03-28 17:54:04'),
(6, 3, 38, '2024-03-28 17:54:10'),
(7, 3, 43, '2024-03-28 17:54:13'),
(8, 5, 2, '2024-03-28 17:54:39'),
(9, 5, 12, '2024-03-28 17:54:42'),
(10, 6, 2, '2024-03-28 17:54:57'),
(11, 7, 2, '2024-03-28 17:55:23'),
(12, 8, 3, '2024-03-28 17:55:48'),
(13, 8, 15, '2024-03-28 17:55:53'),
(14, 8, 37, '2024-03-28 17:55:57'),
(15, 9, 4, '2024-03-28 17:56:14'),
(16, 9, 15, '2024-03-28 17:56:20'),
(17, 9, 34, '2024-03-28 17:56:26'),
(18, 9, 37, '2024-03-28 17:56:30'),
(19, 10, 6, '2024-03-28 17:56:47'),
(20, 10, 37, '2024-03-28 17:56:51'),
(21, 10, 43, '2024-03-28 17:56:58'),
(22, 11, 6, '2024-03-28 17:57:17'),
(23, 13, 7, '2024-03-28 17:57:42'),
(24, 14, 7, '2024-03-28 17:57:53'),
(25, 15, 7, '2024-03-28 17:58:06'),
(26, 15, 17, '2024-03-28 17:58:18'),
(27, 16, 10, '2024-03-28 17:58:39'),
(28, 16, 35, '2024-03-28 17:58:43'),
(29, 17, 12, '2024-03-28 17:59:05'),
(30, 17, 28, '2024-03-28 17:59:13'),
(31, 17, 30, '2024-03-28 17:59:17'),
(32, 17, 32, '2024-03-28 17:59:22'),
(33, 18, 17, '2024-03-28 17:59:43'),
(34, 18, 43, '2024-03-28 17:59:49'),
(35, 19, 17, '2024-03-28 18:00:07'),
(36, 19, 22, '2024-03-28 18:00:13'),
(37, 20, 22, '2024-03-28 18:00:32'),
(38, 21, 25, '2024-03-28 18:00:49'),
(39, 22, 17, '2024-03-28 18:01:10'),
(40, 23, 18, '2024-03-28 18:01:40'),
(41, 24, 20, '2024-03-28 18:01:53'),
(42, 25, 21, '2024-03-28 18:02:09'),
(43, 26, 21, '2024-03-28 18:02:22'),
(44, 26, 36, '2024-03-28 18:02:26'),
(45, 27, 28, '2024-03-28 18:02:46'),
(46, 27, 32, '2024-03-28 18:02:51'),
(47, 28, 32, '2024-03-28 18:03:07'),
(48, 28, 28, '2024-03-28 18:03:12'),
(49, 29, 30, '2024-03-28 18:03:24'),
(50, 30, 36, '2024-03-28 18:03:37'),
(51, 31, 38, '2024-03-28 18:03:49'),
(52, 31, 47, '2024-03-28 18:04:26'),
(53, 32, 38, '2024-03-28 18:04:50'),
(54, 32, 39, '2024-03-28 18:05:06'),
(55, 32, 40, '2024-03-28 18:05:09'),
(56, 32, 41, '2024-03-28 18:05:12'),
(57, 33, 42, '2024-03-28 18:05:25'),
(58, 33, 40, '2024-03-28 18:05:36'),
(59, 33, 5, '2024-03-28 18:06:02'),
(60, 33, 41, '2024-03-28 18:06:05'),
(61, 34, 42, '2024-03-28 18:06:32'),
(62, 35, 42, '2024-03-28 18:06:50'),
(63, 36, 43, '2024-03-28 18:07:11'),
(64, 37, 44, '2024-03-28 18:07:24'),
(65, 38, 45, '2024-03-28 18:07:37'),
(66, 39, 50, '2024-03-28 18:07:57'),
(67, 8, 16, '2024-03-28 18:08:39'),
(68, 8, 33, '2024-03-28 18:09:07'),
(69, 8, 34, '2024-03-28 18:09:17'),
(70, 8, 41, '2024-03-28 18:09:46'),
(71, 8, 39, '2024-03-28 18:09:49'),
(72, 8, 47, '2024-03-28 18:10:06'),
(73, 8, 48, '2024-03-28 18:10:09'),
(74, 31, 49, '2024-03-28 18:11:17'),
(101, 40, 5, '2024-05-01 16:01:28'),
(102, 41, 32, '2024-05-01 16:01:28'),
(103, 42, 11, '2024-05-01 16:01:28'),
(104, 43, 17, '2024-05-01 16:01:28'),
(105, 44, 28, '2024-05-01 16:01:28'),
(106, 45, 8, '2024-05-01 16:01:28'),
(107, 46, 46, '2024-05-01 16:01:28'),
(108, 47, 22, '2024-05-01 16:01:28'),
(109, 48, 39, '2024-05-01 16:01:28'),
(110, 49, 13, '2024-05-01 16:01:28'),
(111, 50, 41, '2024-05-01 16:01:28'),
(112, 51, 9, '2024-05-01 16:01:28'),
(113, 52, 24, '2024-05-01 16:01:28'),
(114, 53, 3, '2024-05-01 16:01:28'),
(115, 54, 36, '2024-05-01 16:01:28'),
(116, 55, 20, '2024-05-01 16:01:28'),
(117, 56, 50, '2024-05-01 16:01:28'),
(118, 57, 12, '2024-05-01 16:01:28'),
(119, 58, 14, '2024-05-01 16:01:28'),
(120, 59, 49, '2024-05-01 16:01:28'),
(121, 60, 19, '2024-05-01 16:01:28'),
(122, 61, 43, '2024-05-01 16:01:28'),
(123, 62, 7, '2024-05-01 16:01:28'),
(124, 63, 45, '2024-05-01 16:01:28'),
(125, 40, 42, '2024-05-01 16:05:21'),
(126, 41, 1, '2024-05-01 16:05:21'),
(127, 42, 46, '2024-05-01 16:05:21'),
(128, 43, 20, '2024-05-01 16:05:21'),
(129, 44, 43, '2024-05-01 16:05:21'),
(130, 45, 8, '2024-05-01 16:05:21'),
(131, 46, 50, '2024-05-01 16:05:21'),
(132, 47, 17, '2024-05-01 16:05:21'),
(133, 48, 5, '2024-05-01 16:05:21'),
(134, 49, 11, '2024-05-01 16:05:21'),
(135, 50, 13, '2024-05-01 16:05:21'),
(136, 51, 24, '2024-05-01 16:05:21'),
(137, 52, 19, '2024-05-01 16:05:21'),
(138, 53, 36, '2024-05-01 16:05:21'),
(139, 54, 5, '2024-05-01 16:05:21'),
(140, 55, 7, '2024-05-01 16:05:21'),
(141, 56, 22, '2024-05-01 16:05:21'),
(142, 57, 48, '2024-05-01 16:05:21'),
(143, 58, 45, '2024-05-01 16:05:21'),
(144, 59, 41, '2024-05-01 16:05:21'),
(145, 60, 9, '2024-05-01 16:05:21'),
(146, 61, 3, '2024-05-01 16:05:21'),
(147, 62, 14, '2024-05-01 16:05:21'),
(148, 63, 40, '2024-05-01 16:05:21'),
(243, 1, 50, '2024-05-08 12:59:13'),
(244, 2, 50, '2024-05-08 12:59:13'),
(245, 3, 50, '2024-05-08 12:59:13'),
(272, 41, 50, '2024-05-08 12:59:13'),
(433, 1, 51, '2024-05-08 13:04:48'),
(434, 2, 51, '2024-05-08 13:04:48'),
(435, 3, 51, '2024-05-08 13:04:48'),
(436, 5, 52, '2024-05-08 13:04:48'),
(437, 5, 62, '2024-05-08 13:04:48'),
(438, 6, 52, '2024-05-08 13:04:48'),
(439, 7, 52, '2024-05-08 13:04:48'),
(440, 8, 53, '2024-05-08 13:04:48'),
(441, 8, 65, '2024-05-08 13:04:48'),
(442, 9, 54, '2024-05-08 13:04:48'),
(443, 9, 65, '2024-05-08 13:04:48'),
(444, 10, 56, '2024-05-08 13:04:48'),
(445, 11, 56, '2024-05-08 13:04:48'),
(446, 13, 57, '2024-05-08 13:04:48'),
(447, 14, 57, '2024-05-08 13:04:48'),
(448, 15, 57, '2024-05-08 13:04:48'),
(449, 16, 60, '2024-05-08 13:04:48'),
(450, 17, 62, '2024-05-08 13:04:48'),
(451, 33, 55, '2024-05-08 13:04:48'),
(452, 8, 66, '2024-05-08 13:04:48'),
(453, 40, 55, '2024-05-08 13:04:48'),
(454, 42, 61, '2024-05-08 13:04:48'),
(455, 45, 58, '2024-05-08 13:04:48'),
(456, 49, 63, '2024-05-08 13:04:48'),
(457, 51, 59, '2024-05-08 13:04:48'),
(458, 53, 53, '2024-05-08 13:04:48'),
(459, 57, 62, '2024-05-08 13:04:48'),
(460, 58, 64, '2024-05-08 13:04:48'),
(461, 62, 57, '2024-05-08 13:04:48'),
(462, 41, 51, '2024-05-08 13:04:48'),
(463, 45, 58, '2024-05-08 13:04:48'),
(464, 48, 55, '2024-05-08 13:04:48'),
(465, 49, 61, '2024-05-08 13:04:48'),
(466, 50, 63, '2024-05-08 13:04:48'),
(467, 54, 55, '2024-05-08 13:04:48'),
(468, 55, 57, '2024-05-08 13:04:48'),
(469, 60, 59, '2024-05-08 13:04:48'),
(470, 61, 53, '2024-05-08 13:04:48'),
(471, 62, 64, '2024-05-08 13:04:48'),
(496, 1, 70, '2024-05-08 13:04:58'),
(497, 1, 87, '2024-05-08 13:04:58'),
(498, 3, 87, '2024-05-08 13:04:58'),
(499, 3, 92, '2024-05-08 13:04:58'),
(500, 8, 86, '2024-05-08 13:04:58'),
(501, 9, 83, '2024-05-08 13:04:58'),
(502, 9, 86, '2024-05-08 13:04:58'),
(503, 10, 86, '2024-05-08 13:04:58'),
(504, 10, 92, '2024-05-08 13:04:58'),
(505, 16, 84, '2024-05-08 13:04:58'),
(506, 17, 77, '2024-05-08 13:04:58'),
(507, 17, 79, '2024-05-08 13:04:58'),
(508, 17, 81, '2024-05-08 13:04:58'),
(509, 18, 92, '2024-05-08 13:04:58'),
(510, 19, 71, '2024-05-08 13:04:58'),
(511, 20, 71, '2024-05-08 13:04:58'),
(512, 21, 74, '2024-05-08 13:04:58'),
(513, 23, 67, '2024-05-08 13:04:58'),
(514, 24, 69, '2024-05-08 13:04:58'),
(515, 25, 70, '2024-05-08 13:04:58'),
(516, 26, 70, '2024-05-08 13:04:58'),
(517, 26, 85, '2024-05-08 13:04:58'),
(518, 27, 77, '2024-05-08 13:04:58'),
(519, 27, 81, '2024-05-08 13:04:58'),
(520, 28, 81, '2024-05-08 13:04:58'),
(521, 28, 77, '2024-05-08 13:04:58'),
(522, 29, 79, '2024-05-08 13:04:58'),
(523, 30, 85, '2024-05-08 13:04:58'),
(524, 31, 87, '2024-05-08 13:04:58'),
(525, 31, 96, '2024-05-08 13:04:58'),
(526, 32, 87, '2024-05-08 13:04:58'),
(527, 32, 88, '2024-05-08 13:04:58'),
(528, 32, 89, '2024-05-08 13:04:58'),
(529, 32, 90, '2024-05-08 13:04:58'),
(530, 33, 91, '2024-05-08 13:04:58'),
(531, 33, 89, '2024-05-08 13:04:58'),
(532, 33, 90, '2024-05-08 13:04:58'),
(533, 34, 91, '2024-05-08 13:04:58'),
(534, 35, 91, '2024-05-08 13:04:58'),
(535, 36, 92, '2024-05-08 13:04:58'),
(536, 37, 93, '2024-05-08 13:04:58'),
(537, 38, 94, '2024-05-08 13:04:58'),
(538, 39, 99, '2024-05-08 13:04:58'),
(539, 8, 82, '2024-05-08 13:04:58'),
(540, 8, 83, '2024-05-08 13:04:58'),
(541, 8, 90, '2024-05-08 13:04:58'),
(542, 8, 88, '2024-05-08 13:04:58'),
(543, 8, 96, '2024-05-08 13:04:58'),
(544, 8, 97, '2024-05-08 13:04:58'),
(545, 31, 98, '2024-05-08 13:04:58'),
(546, 41, 81, '2024-05-08 13:04:58'),
(547, 44, 77, '2024-05-08 13:04:58'),
(548, 46, 95, '2024-05-08 13:04:58'),
(549, 47, 71, '2024-05-08 13:04:58'),
(550, 48, 88, '2024-05-08 13:04:58'),
(551, 50, 90, '2024-05-08 13:04:58'),
(552, 52, 73, '2024-05-08 13:04:58'),
(553, 54, 85, '2024-05-08 13:04:58'),
(554, 55, 69, '2024-05-08 13:04:58'),
(555, 56, 99, '2024-05-08 13:04:58'),
(556, 59, 98, '2024-05-08 13:04:58'),
(557, 60, 68, '2024-05-08 13:04:58'),
(558, 61, 92, '2024-05-08 13:04:58'),
(559, 63, 94, '2024-05-08 13:04:58'),
(560, 40, 91, '2024-05-08 13:04:58'),
(561, 42, 95, '2024-05-08 13:04:58'),
(562, 43, 69, '2024-05-08 13:04:58'),
(563, 44, 92, '2024-05-08 13:04:58'),
(564, 46, 99, '2024-05-08 13:04:58'),
(565, 51, 73, '2024-05-08 13:04:58'),
(566, 52, 68, '2024-05-08 13:04:58'),
(567, 53, 85, '2024-05-08 13:04:58'),
(568, 56, 71, '2024-05-08 13:04:58'),
(569, 57, 97, '2024-05-08 13:04:58'),
(570, 58, 94, '2024-05-08 13:04:58'),
(571, 59, 90, '2024-05-08 13:04:58'),
(572, 63, 89, '2024-05-08 13:04:58'),
(573, 1, 99, '2024-05-08 13:04:58'),
(574, 2, 99, '2024-05-08 13:04:58'),
(575, 3, 99, '2024-05-08 13:04:58'),
(576, 41, 99, '2024-05-08 13:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `recipe-meal_type`
--

CREATE TABLE `recipe-meal_type` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `meal_type_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe-meal_type`
--

INSERT INTO `recipe-meal_type` (`id`, `recipe_id`, `meal_type_id`, `updated_at`) VALUES
(12, 6, 1, '2024-03-30 14:08:54'),
(13, 9, 1, '2024-03-30 14:08:54'),
(14, 23, 1, '2024-03-30 14:08:54'),
(15, 25, 1, '2024-03-30 14:08:54'),
(16, 27, 1, '2024-03-30 14:08:54'),
(17, 31, 1, '2024-03-30 14:08:54'),
(18, 33, 1, '2024-03-30 14:08:54'),
(19, 40, 1, '2024-03-30 14:08:54'),
(20, 43, 1, '2024-03-30 14:08:54'),
(21, 46, 1, '2024-03-30 14:08:54'),
(22, 2, 2, '2024-03-30 14:08:54'),
(23, 5, 2, '2024-03-30 14:08:54'),
(24, 12, 2, '2024-03-30 14:08:54'),
(25, 15, 2, '2024-03-30 14:08:54'),
(26, 22, 2, '2024-03-30 14:08:54'),
(27, 28, 2, '2024-03-30 14:08:54'),
(28, 36, 2, '2024-03-30 14:08:54'),
(29, 38, 2, '2024-03-30 14:08:54'),
(30, 49, 2, '2024-03-30 14:08:54'),
(31, 1, 3, '2024-03-30 14:08:54'),
(32, 3, 3, '2024-03-30 14:08:54'),
(33, 4, 3, '2024-03-30 14:08:54'),
(34, 7, 3, '2024-03-30 14:08:54'),
(35, 8, 3, '2024-03-30 14:08:54'),
(36, 10, 3, '2024-03-30 14:08:54'),
(37, 11, 3, '2024-03-30 14:08:54'),
(38, 13, 3, '2024-03-30 14:08:54'),
(39, 14, 3, '2024-03-30 14:08:54'),
(40, 16, 3, '2024-03-30 14:08:54'),
(41, 17, 3, '2024-03-30 14:08:54'),
(42, 18, 3, '2024-03-30 14:08:54'),
(43, 20, 3, '2024-03-30 14:08:54'),
(44, 24, 3, '2024-03-30 14:08:54'),
(45, 26, 3, '2024-03-30 14:08:54'),
(46, 29, 3, '2024-03-30 14:08:54'),
(47, 32, 3, '2024-03-30 14:08:54'),
(48, 34, 3, '2024-03-30 14:08:54'),
(49, 35, 3, '2024-03-30 14:08:54'),
(50, 39, 3, '2024-03-30 14:08:54'),
(51, 41, 3, '2024-03-30 14:08:54'),
(52, 42, 3, '2024-03-30 14:08:54'),
(53, 44, 3, '2024-03-30 14:08:54'),
(54, 45, 3, '2024-03-30 14:08:54'),
(55, 47, 3, '2024-03-30 14:08:54'),
(56, 48, 3, '2024-03-30 14:08:54'),
(57, 21, 4, '2024-03-30 14:08:54'),
(58, 19, 5, '2024-03-30 14:08:54'),
(59, 30, 5, '2024-03-30 14:08:54'),
(60, 37, 5, '2024-03-30 14:08:54'),
(61, 50, 5, '2024-03-30 14:08:54'),
(62, 4, 2, '2024-03-30 14:14:12'),
(63, 7, 2, '2024-03-30 14:14:12'),
(64, 8, 2, '2024-03-30 14:14:12'),
(65, 10, 2, '2024-03-30 14:14:12'),
(66, 11, 2, '2024-03-30 14:14:12'),
(67, 13, 2, '2024-03-30 14:14:12'),
(68, 14, 2, '2024-03-30 14:14:12'),
(69, 16, 2, '2024-03-30 14:14:12'),
(70, 20, 2, '2024-03-30 14:14:12'),
(71, 24, 2, '2024-03-30 14:14:12'),
(72, 26, 2, '2024-03-30 14:14:12'),
(73, 29, 2, '2024-03-30 14:14:12'),
(74, 32, 2, '2024-03-30 14:14:12'),
(75, 34, 2, '2024-03-30 14:14:12'),
(76, 35, 2, '2024-03-30 14:14:12'),
(77, 39, 2, '2024-03-30 14:14:12'),
(98, 50, 3, '2024-05-08 12:07:28'),
(231, 56, 1, '2024-05-08 13:03:01'),
(232, 59, 1, '2024-05-08 13:03:01'),
(233, 52, 2, '2024-05-08 13:03:01'),
(234, 55, 2, '2024-05-08 13:03:01'),
(235, 62, 2, '2024-05-08 13:03:01'),
(236, 65, 2, '2024-05-08 13:03:01'),
(237, 51, 3, '2024-05-08 13:03:01'),
(238, 53, 3, '2024-05-08 13:03:01'),
(239, 54, 3, '2024-05-08 13:03:01'),
(240, 57, 3, '2024-05-08 13:03:01'),
(241, 58, 3, '2024-05-08 13:03:01'),
(242, 60, 3, '2024-05-08 13:03:01'),
(243, 61, 3, '2024-05-08 13:03:01'),
(244, 63, 3, '2024-05-08 13:03:01'),
(245, 64, 3, '2024-05-08 13:03:01'),
(246, 66, 3, '2024-05-08 13:03:01'),
(247, 54, 2, '2024-05-08 13:03:01'),
(248, 57, 2, '2024-05-08 13:03:01'),
(249, 58, 2, '2024-05-08 13:03:01'),
(250, 60, 2, '2024-05-08 13:03:01'),
(251, 61, 2, '2024-05-08 13:03:01'),
(252, 63, 2, '2024-05-08 13:03:01'),
(253, 64, 2, '2024-05-08 13:03:01'),
(254, 66, 2, '2024-05-08 13:03:01'),
(262, 72, 1, '2024-05-08 13:03:12'),
(263, 74, 1, '2024-05-08 13:03:12'),
(264, 76, 1, '2024-05-08 13:03:12'),
(265, 80, 1, '2024-05-08 13:03:12'),
(266, 82, 1, '2024-05-08 13:03:12'),
(267, 89, 1, '2024-05-08 13:03:12'),
(268, 92, 1, '2024-05-08 13:03:12'),
(269, 95, 1, '2024-05-08 13:03:12'),
(270, 71, 2, '2024-05-08 13:03:12'),
(271, 77, 2, '2024-05-08 13:03:12'),
(272, 85, 2, '2024-05-08 13:03:12'),
(273, 87, 2, '2024-05-08 13:03:12'),
(274, 98, 2, '2024-05-08 13:03:12'),
(275, 69, 3, '2024-05-08 13:03:12'),
(276, 73, 3, '2024-05-08 13:03:12'),
(277, 75, 3, '2024-05-08 13:03:12'),
(278, 78, 3, '2024-05-08 13:03:12'),
(279, 81, 3, '2024-05-08 13:03:12'),
(280, 83, 3, '2024-05-08 13:03:12'),
(281, 84, 3, '2024-05-08 13:03:12'),
(282, 88, 3, '2024-05-08 13:03:12'),
(283, 90, 3, '2024-05-08 13:03:12'),
(284, 91, 3, '2024-05-08 13:03:12'),
(285, 93, 3, '2024-05-08 13:03:12'),
(286, 94, 3, '2024-05-08 13:03:12'),
(287, 96, 3, '2024-05-08 13:03:12'),
(288, 97, 3, '2024-05-08 13:03:12'),
(289, 70, 4, '2024-05-08 13:03:12'),
(290, 68, 5, '2024-05-08 13:03:12'),
(291, 79, 5, '2024-05-08 13:03:12'),
(292, 86, 5, '2024-05-08 13:03:12'),
(293, 99, 5, '2024-05-08 13:03:12'),
(294, 69, 2, '2024-05-08 13:03:12'),
(295, 73, 2, '2024-05-08 13:03:12'),
(296, 75, 2, '2024-05-08 13:03:12'),
(297, 78, 2, '2024-05-08 13:03:12'),
(298, 81, 2, '2024-05-08 13:03:12'),
(299, 83, 2, '2024-05-08 13:03:12'),
(300, 84, 2, '2024-05-08 13:03:12'),
(301, 88, 2, '2024-05-08 13:03:12'),
(302, 99, 3, '2024-05-08 13:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `short_description` text DEFAULT NULL,
  `basic_ingredient_id` int(11) NOT NULL,
  `national_cuisine_id` int(11) NOT NULL,
  `difficulty_level` text NOT NULL,
  `portions` int(11) DEFAULT NULL,
  `cooking_time` int(11) DEFAULT NULL,
  `preparation_time` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `API_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `short_description`, `basic_ingredient_id`, `national_cuisine_id`, `difficulty_level`, `portions`, `cooking_time`, `preparation_time`, `updated_at`, `API_id`) VALUES
(1, 'Chocolate Gateau', NULL, 80, 7, 'Easy', 4, 23, 8, '2024-05-08 11:12:46', 52776),
(2, 'Baingan Bharta', NULL, 81, 11, 'Hard', 4, 5, 20, '2024-05-08 11:12:46', 52807),
(3, 'Beef Brisket Pot Roast', NULL, 82, 12, 'Easy', 1, 18, 19, '2024-05-08 11:12:46', 52812),
(4, 'Beef and Oyster pie', NULL, 12, 3, 'Easy', 3, 21, 13, '2024-05-08 11:12:46', 52878),
(5, 'Beef Lo Mein', NULL, 12, 17, 'Very hard', 4, 12, 11, '2024-05-08 11:12:46', 52952),
(6, 'Breakfast Potatoes', NULL, 7, 13, 'Hard', 1, 8, 23, '2024-05-08 11:12:46', 52965),
(7, 'Bitterballen (Dutch meatballs)', NULL, 30, 4, 'Medium', 3, 16, 20, '2024-05-08 11:12:46', 52979),
(8, 'Beef Rendang', NULL, 12, 14, 'Easy', 4, 7, 24, '2024-05-08 11:12:46', 53053),
(9, 'Bread omelette', NULL, 83, 11, 'Hard', 2, 22, 18, '2024-05-08 11:12:46', 53076),
(10, 'Beetroot Soup (Borscht)', NULL, 84, 15, 'Easy', 1, 12, 22, '2024-05-08 11:12:46', 53078),
(11, 'Chicken Handi', NULL, 1, 11, 'Hard', 3, 17, 5, '2024-05-08 11:12:46', 53088),
(12, 'Cajun spiced fish tacos', NULL, 85, 2, 'Very hard', 3, 15, 24, '2024-05-08 11:12:46', 53091),
(13, 'Coq au vin', NULL, 86, 7, 'Medium', 1, 23, 21, '2024-05-08 11:12:46', 53094),
(14, 'Chicken & mushroom Hotpot', NULL, 30, 3, 'Very easy', 1, 18, 5, '2024-05-08 11:12:46', 53098),
(15, 'Chicken Ham and Leek Pie', NULL, 87, 3, 'Medium', 1, 7, 8, '2024-05-08 11:12:46', 53104),
(16, 'Chicken Congee', NULL, 1, 17, 'Hard', 4, 11, 17, '2024-05-08 11:12:46', 53114),
(17, 'Chocolate Caramel Crispy', NULL, 88, 3, 'Hard', 4, 20, 10, '2024-05-08 11:12:46', 53115),
(18, 'Christmas Pudding Trifle', NULL, 89, 3, 'Very easy', 4, 11, 8, '2024-05-08 11:12:46', 53119),
(19, 'Crispy Sausages and Greens', NULL, 67, 9, 'Hard', 2, 19, 19, '2024-05-08 11:12:46', 53123),
(20, 'Cevapi Sausages', NULL, 90, 25, 'Very easy', 3, 8, 7, '2024-05-08 11:12:46', 53127),
(21, 'Dal fry', NULL, 91, 11, 'Very easy', 1, 20, 15, '2024-05-08 11:12:46', 53133),
(22, 'Eccles Cakes', NULL, 30, 3, 'Easy', 1, 11, 21, '2024-05-08 11:12:46', 53137),
(23, 'Egyptian Fatteh', NULL, 12, 23, 'Hard', 4, 24, 23, '2024-05-08 11:12:46', 53141),
(24, 'Fettucine alfredo', NULL, 92, 8, 'Easy', 1, 14, 6, '2024-05-08 11:12:46', 53145),
(25, 'Flamiche', NULL, 30, 7, 'Very easy', 2, 19, 20, '2024-05-08 11:12:46', 53148),
(26, 'Feteer Meshaltet', NULL, 23, 23, 'Very hard', 2, 7, 13, '2024-05-08 11:12:46', 53155),
(27, 'Fettuccine Alfredo', NULL, 93, 8, 'Easy', 1, 21, 17, '2024-05-08 11:12:46', 53158),
(28, 'Garides Saganaki', NULL, 94, 1, 'Hard', 3, 24, 20, '2024-05-08 11:12:46', 53160),
(29, 'Grilled Mac and Cheese Sandwich', NULL, 95, 12, 'Very hard', 2, 5, 24, '2024-05-08 11:12:46', 53161),
(30, 'Honey Teriyaki Salmon', NULL, 44, 5, 'Hard', 3, 13, 14, '2024-05-08 11:12:46', 53167),
(31, 'Japanese gohan rice', NULL, 96, 5, 'Medium', 2, 5, 9, '2024-05-08 11:12:46', 53178),
(32, 'Laksa King Prawn Noodles', NULL, 86, 14, 'Very easy', 4, 21, 5, '2024-05-08 11:12:46', 53196),
(33, 'Lamb Tagine', NULL, 86, 10, 'Very hard', 1, 6, 13, '2024-05-08 11:12:46', 53197),
(34, 'Lamb and Potato pie', NULL, 97, 3, 'Very easy', 2, 13, 17, '2024-05-08 11:12:46', 53199),
(35, 'Leblebi Soup', NULL, 86, 19, 'Very hard', 1, 22, 12, '2024-05-08 11:12:46', 53201),
(36, 'Mushroom & Chestnut Rotolo', NULL, 98, 3, 'Easy', 2, 8, 7, '2024-05-08 11:12:46', 53208),
(37, 'Minced Beef Pie', NULL, 99, 3, 'Hard', 4, 25, 18, '2024-05-08 11:12:46', 53210),
(38, 'Madeira Cake', NULL, 30, 3, 'Medium', 3, 25, 20, '2024-05-08 11:12:46', 53212),
(39, 'Mulukhiyah', NULL, 100, 23, 'Medium', 3, 22, 7, '2024-05-08 11:12:46', 53218),
(40, 'Mustard champ', NULL, 7, 9, 'Hard', 4, 14, 7, '2024-05-08 11:12:46', 53219),
(41, 'Osso Buco alla Milanese', NULL, 101, 8, 'Medium', 2, 7, 19, '2024-05-08 11:12:46', 53227),
(42, 'Oxtail with broad beans', NULL, 102, 16, 'Very easy', 2, 14, 25, '2024-05-08 11:12:46', 53228),
(43, 'Pancakes', NULL, 23, 12, 'Easy', 1, 16, 16, '2024-05-08 11:12:46', 53234),
(44, 'Parkin Cake', NULL, 30, 3, 'Medium', 2, 21, 21, '2024-05-08 11:12:46', 53238),
(45, 'Provençal Omelette Cake', NULL, 6, 7, 'Very hard', 4, 23, 22, '2024-05-08 11:12:46', 53240),
(46, 'Polskie Naleśniki (Polish Pancakes)', NULL, 23, 22, 'Medium', 1, 16, 22, '2024-05-08 11:12:46', 53248),
(47, 'Piri-piri chicken and slaw', NULL, 1, 23, 'Very hard', 2, 9, 23, '2024-05-08 11:12:46', 53249),
(48, 'Portuguese prego with green piri-piri', NULL, 48, 23, 'Very easy', 3, 12, 6, '2024-05-08 11:12:46', 53250),
(49, 'Portuguese fish stew (Caldeirada de peixe)', NULL, 103, 23, 'Medium', 3, 9, 21, '2024-05-08 11:12:46', 53252),
(50, 'Potato Salad (Olivier Salad)', NULL, 7, 15, 'Medium', 1, 25, 17, '2024-05-08 11:12:46', 53254),
(51, 'Chocolate Caramel Crispy', NULL, 80, 7, 'Easy', 4, 20, 17, '2024-05-08 11:35:32', NULL),
(52, 'Eggplant Bharta', NULL, 81, 11, 'Hard', 2, 16, 21, '2024-05-08 11:35:46', NULL),
(53, 'Beef Brisket with Vegetables', NULL, 82, 12, 'Easy', 3, 14, 16, '2024-05-08 11:35:54', NULL),
(54, 'Beef and Mushroom Pie', NULL, 12, 3, 'Easy', 1, 18, 19, '2024-05-08 11:35:58', NULL),
(55, 'Beef Chow Mein', NULL, 12, 17, 'Very hard', 2, 19, 6, '2024-05-08 11:36:04', NULL),
(56, 'Hash Browns', NULL, 7, 13, 'Hard', 4, 19, 16, '2024-05-08 11:36:09', NULL),
(57, 'Dutch Meat Croquettes', NULL, 30, 4, 'Medium', 1, 12, 8, '2024-05-08 11:36:14', NULL),
(58, 'Indonesian Beef Curry', NULL, 12, 14, 'Easy', 2, 11, 20, '2024-05-08 11:36:21', NULL),
(59, 'Stuffed Bread Omelette', NULL, 83, 11, 'Hard', 3, 5, 22, '2024-05-08 11:36:26', NULL),
(60, 'Russian Beet Soup', NULL, 84, 15, 'Easy', 3, 8, 14, '2024-05-08 11:36:33', NULL),
(61, 'Indian Chicken Curry', NULL, 1, 11, 'Hard', 1, 6, 8, '2024-05-08 11:36:43', NULL),
(62, 'Cajun Fish Tacos', NULL, 85, 2, 'Very hard', 2, 13, 24, '2024-05-08 11:36:48', NULL),
(63, 'French Chicken Stew', NULL, 86, 7, 'Medium', 3, 11, 19, '2024-05-08 11:36:52', NULL),
(64, 'Chicken and Mushroom Casserole', NULL, 30, 3, 'Very easy', 3, 20, 18, '2024-05-08 11:36:57', NULL),
(65, 'Chicken and Leek Pie', NULL, 87, 3, 'Medium', 4, 18, 7, '2024-05-08 11:37:02', NULL),
(66, 'Chinese Chicken Porridge', NULL, 1, 17, 'Hard', 3, 16, 18, '2024-05-08 11:37:07', NULL),
(67, 'Festive Pudding Trifle', NULL, 89, 3, 'Very easy', 2, 5, 17, '2024-05-08 11:37:12', NULL),
(68, 'Sausage and Greens Stir-Fry', NULL, 67, 9, 'Hard', 2, 8, 7, '2024-05-08 11:37:17', NULL),
(69, 'Balkan Sausages', NULL, 90, 25, 'Very easy', 3, 11, 25, '2024-05-08 11:37:22', NULL),
(70, 'Indian Lentil Curry', NULL, 91, 11, 'Very easy', 3, 12, 19, '2024-05-08 11:37:29', NULL),
(71, 'British Pastry Cakes', NULL, 30, 3, 'Easy', 1, 8, 9, '2024-05-08 11:37:38', NULL),
(72, 'Middle Eastern Chickpea Dish', NULL, 12, 23, 'Hard', 2, 16, 13, '2024-05-08 11:37:42', NULL),
(73, 'Alfredo Pasta', NULL, 92, 8, 'Easy', 2, 16, 21, '2024-05-08 11:37:48', NULL),
(74, 'French Leek Pie', NULL, 30, 7, 'Very easy', 3, 6, 10, '2024-05-08 11:37:53', NULL),
(75, 'Egyptian Pastry', NULL, 23, 23, 'Very hard', 2, 9, 17, '2024-05-08 11:37:59', NULL),
(76, 'Creamy Pasta', NULL, 93, 8, 'Easy', 2, 10, 11, '2024-05-08 11:38:04', NULL),
(77, 'Greek Shrimp Appetizer', NULL, 94, 1, 'Hard', 2, 23, 19, '2024-05-08 11:38:09', NULL),
(78, 'Gourmet Grilled Cheese', NULL, 95, 12, 'Very hard', 4, 14, 6, '2024-05-08 11:38:14', NULL),
(79, 'Glazed Teriyaki Salmon', NULL, 44, 5, 'Hard', 2, 24, 7, '2024-05-08 11:38:19', NULL),
(80, 'Japanese Rice Bowl', NULL, 96, 5, 'Medium', 4, 9, 6, '2024-05-08 11:38:27', NULL),
(81, 'Malaysian Prawn Noodle Soup', NULL, 86, 14, 'Very easy', 4, 8, 25, '2024-05-08 11:38:35', NULL),
(82, 'Moroccan Lamb Stew', NULL, 86, 10, 'Very hard', 1, 21, 23, '2024-05-08 11:38:41', NULL),
(83, 'Lamb and Potato Casserole', NULL, 97, 3, 'Very easy', 2, 7, 20, '2024-05-08 11:38:46', NULL),
(84, 'Turkish Chickpea Soup', NULL, 86, 19, 'Very hard', 4, 23, 8, '2024-05-08 11:38:51', NULL),
(85, 'Mushroom and Chestnut Roulade', NULL, 98, 3, 'Easy', 2, 7, 20, '2024-05-08 11:38:56', NULL),
(86, 'Ground Beef Pie', NULL, 99, 3, 'Hard', 2, 22, 17, '2024-05-08 11:39:01', NULL),
(87, 'British Sponge Cake', NULL, 30, 3, 'Medium', 1, 15, 23, '2024-05-08 11:39:07', NULL),
(88, 'Middle Eastern Stew', NULL, 100, 23, 'Medium', 3, 18, 16, '2024-05-08 11:39:12', NULL),
(89, 'Irish Mashed Potatoes', NULL, 7, 9, 'Hard', 2, 20, 7, '2024-05-08 11:39:16', NULL),
(90, 'Milanese Veal Shank', NULL, 101, 8, 'Medium', 2, 15, 20, '2024-05-08 11:39:22', NULL),
(91, 'Oxtail Stew', NULL, 102, 16, 'Very easy', 2, 22, 24, '2024-05-08 11:39:28', NULL),
(92, 'Flapjacks', NULL, 23, 12, 'Easy', 2, 13, 22, '2024-05-08 11:39:33', NULL),
(93, 'Spiced Gingerbread Cake', NULL, 30, 3, 'Medium', 2, 17, 9, '2024-05-08 11:39:38', NULL),
(94, 'French Egg Casserole', NULL, 6, 7, 'Very hard', 2, 21, 9, '2024-05-08 11:39:42', NULL),
(95, 'Polish Crepes', NULL, 23, 22, 'Medium', 3, 7, 19, '2024-05-08 11:39:46', NULL),
(96, 'Portuguese Spicy Chicken with Coleslaw', NULL, 1, 23, 'Very hard', 1, 16, 9, '2024-05-08 11:39:51', NULL),
(97, 'Portuguese Steak Sandwich', NULL, 48, 23, 'Very easy', 4, 15, 15, '2024-05-08 11:39:56', NULL),
(98, 'Portuguese Seafood Stew', NULL, 103, 23, 'Medium', 1, 25, 24, '2024-05-08 11:40:01', NULL),
(99, 'Russian Potato Salad', NULL, 7, 15, 'Medium', 3, 8, 19, '2024-05-08 11:40:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recipes-themes`
--

CREATE TABLE `recipes-themes` (
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

--
-- Dumping data for table `specializes`
--

INSERT INTO `specializes` (`id`, `chef_id`, `national_cuisine_id`, `updated_at`) VALUES
(1, 1, 11, '2024-04-29 09:47:22'),
(2, 2, 7, '2024-04-29 09:47:22'),
(3, 3, 26, '2024-04-29 09:47:22'),
(4, 4, 5, '2024-04-29 09:47:22'),
(5, 5, 1, '2024-04-29 09:47:22'),
(6, 6, 14, '2024-04-29 09:47:22'),
(7, 7, 13, '2024-04-29 09:47:22'),
(8, 8, 24, '2024-04-29 09:47:22'),
(9, 9, 4, '2024-04-29 09:47:22'),
(10, 10, 25, '2024-04-29 09:47:22'),
(11, 11, 10, '2024-04-29 09:47:22'),
(12, 12, 25, '2024-04-29 09:47:22'),
(13, 13, 18, '2024-04-29 09:47:22'),
(14, 14, 13, '2024-04-29 09:47:22'),
(15, 15, 12, '2024-04-29 09:47:22'),
(16, 16, 22, '2024-04-29 09:47:22'),
(17, 17, 18, '2024-04-29 09:47:22'),
(18, 18, 25, '2024-04-29 09:47:22'),
(19, 19, 17, '2024-04-29 09:47:22'),
(20, 20, 9, '2024-04-29 09:47:22'),
(21, 21, 22, '2024-04-29 09:47:22'),
(22, 22, 2, '2024-04-29 09:47:22'),
(23, 23, 21, '2024-04-29 09:47:22'),
(24, 24, 24, '2024-04-29 09:47:22'),
(25, 25, 1, '2024-04-29 09:47:22'),
(26, 26, 13, '2024-04-29 09:47:22'),
(27, 27, 7, '2024-04-29 09:47:22'),
(28, 28, 23, '2024-04-29 09:47:22'),
(29, 29, 17, '2024-04-29 09:47:22'),
(30, 30, 15, '2024-04-29 09:47:22'),
(31, 31, 23, '2024-04-29 09:47:22'),
(32, 32, 19, '2024-04-29 09:47:22'),
(33, 33, 24, '2024-04-29 09:47:22'),
(34, 34, 9, '2024-04-29 09:47:22'),
(35, 35, 26, '2024-04-29 09:47:22'),
(36, 36, 23, '2024-04-29 09:47:22'),
(37, 37, 10, '2024-04-29 09:47:22'),
(38, 38, 9, '2024-04-29 09:47:22'),
(39, 39, 12, '2024-04-29 09:47:22'),
(40, 40, 9, '2024-04-29 09:47:22'),
(41, 41, 6, '2024-04-29 09:47:22'),
(42, 42, 4, '2024-04-29 09:47:22'),
(43, 43, 3, '2024-04-29 09:47:22'),
(44, 44, 26, '2024-04-29 09:47:22'),
(45, 45, 18, '2024-04-29 09:47:22'),
(46, 46, 13, '2024-04-29 09:47:22'),
(47, 47, 7, '2024-04-29 09:47:22'),
(48, 48, 25, '2024-04-29 09:47:22'),
(49, 49, 24, '2024-04-29 09:47:22'),
(50, 50, 16, '2024-04-29 09:47:22'),
(51, 51, 11, '2024-04-29 09:47:22'),
(52, 52, 6, '2024-04-29 09:47:22'),
(53, 53, 24, '2024-04-29 09:47:22'),
(54, 54, 21, '2024-04-29 09:47:22'),
(55, 55, 5, '2024-04-29 09:47:22'),
(56, 56, 16, '2024-04-29 09:47:22'),
(57, 57, 13, '2024-04-29 09:47:22'),
(58, 58, 16, '2024-04-29 09:47:22'),
(59, 59, 16, '2024-04-29 09:47:22'),
(60, 60, 5, '2024-04-29 09:47:22'),
(61, 61, 3, '2024-04-29 09:47:22'),
(62, 62, 25, '2024-04-29 09:47:22'),
(63, 63, 10, '2024-04-29 09:47:22'),
(64, 64, 1, '2024-04-29 09:47:22'),
(65, 65, 26, '2024-04-29 09:47:22'),
(66, 66, 25, '2024-04-29 09:47:22'),
(67, 67, 19, '2024-04-29 09:47:22'),
(68, 68, 22, '2024-04-29 09:47:22'),
(69, 69, 23, '2024-04-29 09:47:22'),
(70, 70, 23, '2024-04-29 09:47:22'),
(71, 71, 20, '2024-04-29 09:47:22'),
(72, 72, 5, '2024-04-29 09:47:22'),
(73, 73, 17, '2024-04-29 09:47:22'),
(74, 74, 16, '2024-04-29 09:47:22'),
(75, 75, 4, '2024-04-29 09:47:22'),
(76, 76, 21, '2024-04-29 09:47:22'),
(77, 77, 15, '2024-04-29 09:47:22'),
(78, 78, 12, '2024-04-29 09:47:22'),
(79, 79, 13, '2024-04-29 09:47:22'),
(80, 80, 3, '2024-04-29 09:47:22'),
(81, 81, 1, '2024-04-29 09:47:22'),
(82, 82, 21, '2024-04-29 09:47:22'),
(83, 83, 26, '2024-04-29 09:47:22'),
(84, 84, 15, '2024-04-29 09:47:22'),
(85, 85, 21, '2024-04-29 09:47:22'),
(86, 86, 9, '2024-04-29 09:47:22'),
(87, 87, 5, '2024-04-29 09:47:22'),
(88, 88, 24, '2024-04-29 09:47:22'),
(89, 89, 26, '2024-04-29 09:47:22'),
(90, 90, 7, '2024-04-29 09:47:22'),
(91, 91, 6, '2024-04-29 09:47:22'),
(92, 92, 9, '2024-04-29 09:47:22'),
(93, 93, 1, '2024-04-29 09:47:22'),
(94, 94, 3, '2024-04-29 09:47:22'),
(95, 95, 12, '2024-04-29 09:47:22'),
(96, 96, 25, '2024-04-29 09:47:22'),
(97, 97, 9, '2024-04-29 09:47:22'),
(98, 98, 23, '2024-04-29 09:47:22'),
(99, 99, 8, '2024-04-29 09:47:22'),
(100, 100, 25, '2024-04-29 09:47:22'),
(101, 101, 21, '2024-04-29 09:47:22'),
(102, 102, 3, '2024-04-29 09:47:22'),
(103, 103, 4, '2024-04-29 09:47:22'),
(104, 104, 9, '2024-04-29 09:47:22'),
(105, 105, 7, '2024-04-29 09:47:22'),
(106, 106, 7, '2024-04-29 09:47:22'),
(107, 107, 15, '2024-04-29 09:47:22'),
(108, 108, 26, '2024-04-29 09:47:22'),
(109, 109, 9, '2024-04-29 09:47:22'),
(110, 110, 16, '2024-04-29 09:47:22'),
(111, 111, 1, '2024-04-29 09:47:22'),
(112, 112, 11, '2024-04-29 09:47:22'),
(113, 113, 22, '2024-04-29 09:47:22'),
(114, 114, 1, '2024-04-29 09:47:22'),
(115, 115, 18, '2024-04-29 09:47:22'),
(116, 116, 6, '2024-04-29 09:47:22'),
(117, 117, 1, '2024-04-29 09:47:22'),
(118, 118, 14, '2024-04-29 09:47:22'),
(119, 119, 15, '2024-04-29 09:47:22'),
(120, 120, 4, '2024-04-29 09:47:22'),
(121, 121, 26, '2024-04-29 09:47:22'),
(122, 122, 17, '2024-04-29 09:47:22'),
(123, 123, 4, '2024-04-29 09:47:22'),
(124, 124, 19, '2024-04-29 09:47:22'),
(125, 125, 7, '2024-04-29 09:47:22'),
(126, 126, 1, '2024-04-29 09:47:22'),
(127, 127, 10, '2024-04-29 09:47:22'),
(128, 128, 20, '2024-04-29 09:47:22'),
(129, 129, 20, '2024-04-29 09:47:22'),
(130, 130, 12, '2024-04-29 09:47:22'),
(131, 131, 24, '2024-04-29 09:47:22'),
(132, 132, 8, '2024-04-29 09:47:22'),
(133, 133, 20, '2024-04-29 09:47:22'),
(134, 134, 21, '2024-04-29 09:47:22'),
(135, 135, 19, '2024-04-29 09:47:22'),
(136, 136, 4, '2024-04-29 09:47:22'),
(137, 137, 15, '2024-04-29 09:47:22'),
(138, 138, 10, '2024-04-29 09:47:22'),
(139, 139, 6, '2024-04-29 09:47:22'),
(140, 140, 1, '2024-04-29 09:47:22'),
(141, 141, 11, '2024-04-29 09:47:22'),
(142, 142, 1, '2024-04-29 09:47:22'),
(143, 143, 21, '2024-04-29 09:47:22'),
(144, 144, 25, '2024-04-29 09:47:22'),
(145, 145, 11, '2024-04-29 09:47:22'),
(146, 146, 3, '2024-04-29 09:47:22'),
(147, 147, 7, '2024-04-29 09:47:22'),
(148, 148, 24, '2024-04-29 09:47:22'),
(149, 149, 24, '2024-04-29 09:47:22'),
(150, 150, 19, '2024-04-29 09:47:22');

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

--
-- Dumping data for table `steps`
--

INSERT INTO `steps` (`id`, `step_number`, `step_description`, `recipe_id`, `updated_at`) VALUES
(1, 1, 'Preheat the oven to 180°C/350°F/Gas Mark 4.', 1, '2024-03-30 14:30:58'),
(2, 2, 'Grease and line the base of an 8-inch round springform cake tin with baking parchment.', 1, '2024-03-30 14:30:58'),
(3, 3, 'Break the chocolate into a heatproof bowl and melt it.', 1, '2024-03-30 14:30:58'),
(4, 4, 'Cream together butter and sugar until light and fluffy.', 1, '2024-03-30 14:30:58'),
(5, 5, 'Gradually beat in the eggs, then fold in flour, melted chocolate, and milk until smooth.', 1, '2024-03-30 14:30:58'),
(6, 1, 'Marinate beef with salt, white pepper, sesame seed oil, egg, corn starch, and oil.', 5, '2024-03-30 14:32:39'),
(7, 2, 'Boil noodles until just cooked, then strain and cool with cold water.', 5, '2024-03-30 14:32:39'),
(8, 3, 'Stir-fry beef until medium cooked, then set aside.', 5, '2024-03-30 14:32:39'),
(9, 4, 'Stir-fry onions, garlic, ginger, bean sprouts, mushrooms, and peapods in oil and water.', 5, '2024-03-30 14:32:39'),
(10, 5, 'Add noodles to the wok, then make the sauce and add it along with the beef, stirring until combined.', 5, '2024-03-30 14:32:39'),
(11, 1, 'Freeze bacon slices for easier chopping.', 6, '2024-03-30 14:32:49'),
(12, 2, 'Wash and dice potatoes, then cook in oil until browned.', 6, '2024-03-30 14:32:49'),
(13, 3, 'Add chopped bacon to the skillet and cook until crispy.', 6, '2024-03-30 14:32:49'),
(14, 4, 'Stir in minced garlic and cook until fragrant.', 6, '2024-03-30 14:32:49'),
(15, 5, 'Drizzle maple syrup over the potatoes and cook until caramelized.', 6, '2024-03-30 14:32:49'),
(16, 1, 'Rinse the eggplant and pat dry, then apply oil and roast over an open flame until tender.', 2, '2024-03-30 14:33:24'),
(17, 2, 'Optionally, embed garlic cloves in the eggplant and roast.', 2, '2024-03-30 14:33:24'),
(18, 3, 'If desired, infuse smoky flavor using the dhungar technique with charcoal.', 2, '2024-03-30 14:33:24'),
(19, 4, 'Peel the roasted eggplant and chop or mash finely.', 2, '2024-03-30 14:33:24'),
(20, 5, 'In a pan, sauté onions, garlic, and green chilies, then add tomatoes and cook until soft.', 2, '2024-03-30 14:33:24'),
(21, 6, 'Mix in red chili powder, salt, and the chopped eggplant, then cook until well combined.', 2, '2024-03-30 14:33:24'),
(22, 7, 'Finally, stir in coriander leaves and serve with bread, rice, or chapatis.', 2, '2024-03-30 14:33:24'),
(23, 1, 'Prepare the brisket by scoring the fat and salting it, then let it sit at room temperature.', 3, '2024-03-30 14:33:31'),
(24, 2, 'Sear the brisket in a pot until browned on both sides, then remove and set aside.', 3, '2024-03-30 14:33:31'),
(25, 3, 'Sauté onions and garlic in the same pot until lightly browned, then return the brisket.', 3, '2024-03-30 14:33:31'),
(26, 4, 'Add herbs, beef stock, and bring to a boil, then cover and cook in the oven.', 3, '2024-03-30 14:33:31'),
(27, 5, 'After a few hours, add carrots to the pot and continue cooking until tender.', 3, '2024-03-30 14:33:31'),
(28, 1, 'Season beef cubes with salt and black pepper, then fry in batches until browned.', 4, '2024-03-30 14:33:37'),
(29, 2, 'In the same pan, sauté shallots, garlic, and bacon until browned.', 4, '2024-03-30 14:33:37'),
(30, 3, 'Deglaze the pan with stout, then pour over the beef in a casserole dish.', 4, '2024-03-30 14:33:37'),
(31, 4, 'Add stock to the casserole dish, cover, and cook in the oven until beef is tender.', 4, '2024-03-30 14:33:37'),
(32, 5, 'Make a pastry dough, roll out, and cover the casserole dish, then bake until golden brown.', 4, '2024-03-30 14:33:37'),
(33, 1, 'Cook pasta in boiling salted water until al dente, then drain and set aside.', 7, '2024-03-30 14:34:21'),
(34, 2, 'In a pan, heat olive oil and sauté garlic until fragrant.', 7, '2024-03-30 14:34:21'),
(35, 3, 'Add chopped tomatoes, tomato paste, and season with salt, pepper, and Italian herbs.', 7, '2024-03-30 14:34:21'),
(36, 4, 'Simmer the sauce until it thickens slightly, then stir in cooked pasta.', 7, '2024-03-30 14:34:21'),
(37, 5, 'Garnish with fresh basil leaves and grated Parmesan cheese before serving.', 7, '2024-03-30 14:34:21'),
(38, 1, 'Preheat oven to 180°C (350°F) and line muffin tins with paper liners.', 8, '2024-03-30 14:34:34'),
(39, 2, 'In a bowl, whisk together flour, cocoa powder, sugar, baking powder, and salt.', 8, '2024-03-30 14:34:34'),
(40, 3, 'In another bowl, mix eggs, milk, oil, and vanilla extract until well combined.', 8, '2024-03-30 14:34:34'),
(41, 4, 'Combine wet and dry ingredients, then fold in chocolate chips.', 8, '2024-03-30 14:34:34'),
(42, 5, 'Divide batter evenly among muffin cups and bake for 20-25 minutes or until a toothpick comes out clean.', 8, '2024-03-30 14:34:34'),
(43, 1, 'Marinate chicken pieces in yogurt, lemon juice, and spices for at least 1 hour.', 9, '2024-03-30 14:34:40'),
(44, 2, 'Skewer marinated chicken and grill until cooked through, turning occasionally.', 9, '2024-03-30 14:34:40'),
(45, 3, 'Serve chicken tikka with sliced onions, lemon wedges, and mint chutney.', 9, '2024-03-30 14:34:40'),
(46, 1, 'Preheat oven to 180°C (350°F) and grease a baking dish.', 10, '2024-03-30 14:34:48'),
(47, 2, 'In a bowl, mix together mashed sweet potatoes, milk, melted butter, eggs, and vanilla extract.', 10, '2024-03-30 14:34:48'),
(48, 3, 'Stir in brown sugar, cinnamon, nutmeg, and salt until well combined.', 10, '2024-03-30 14:34:48'),
(49, 4, 'Transfer the mixture to the prepared baking dish and sprinkle with pecans.', 10, '2024-03-30 14:34:48'),
(50, 5, 'Bake for 25-30 minutes or until the sweet potato mixture is set and pecans are toasted.', 10, '2024-03-30 14:34:48'),
(51, 1, 'Cook quinoa according to package instructions and set aside.', 11, '2024-03-30 14:35:12'),
(52, 2, 'In a large skillet, heat olive oil over medium heat and sauté onions until translucent.', 11, '2024-03-30 14:35:12'),
(53, 3, 'Add diced bell peppers and cook until softened, then stir in cooked quinoa.', 11, '2024-03-30 14:35:12'),
(54, 4, 'Season with cumin, chili powder, salt, and pepper, and cook for a few more minutes.', 11, '2024-03-30 14:35:12'),
(55, 5, 'Serve the quinoa and bell pepper mixture topped with chopped cilantro and a squeeze of lime juice.', 11, '2024-03-30 14:35:12'),
(56, 1, 'Preheat oven to 200°C (400°F) and line a baking sheet with parchment paper.', 12, '2024-03-30 14:35:19'),
(57, 2, 'Toss cauliflower florets with olive oil, salt, and pepper on the prepared baking sheet.', 12, '2024-03-30 14:35:19'),
(58, 3, 'Roast cauliflower in the preheated oven for 20-25 minutes or until golden brown and tender.', 12, '2024-03-30 14:35:19'),
(59, 4, 'Meanwhile, mix together tahini, lemon juice, garlic, and water to make the tahini sauce.', 12, '2024-03-30 14:35:19'),
(60, 5, 'Serve roasted cauliflower drizzled with tahini sauce and sprinkled with chopped parsley.', 12, '2024-03-30 14:35:19'),
(61, 1, 'In a bowl, combine diced tomatoes, diced cucumbers, chopped onions, and chopped parsley.', 13, '2024-03-30 14:35:26'),
(62, 2, 'Drizzle olive oil and lemon juice over the salad, then season with salt and pepper to taste.', 13, '2024-03-30 14:35:26'),
(63, 3, 'Toss the salad gently until well combined and evenly coated with the dressing.', 13, '2024-03-30 14:35:26'),
(64, 4, 'Chill the salad in the refrigerator for at least 30 minutes before serving.', 13, '2024-03-30 14:35:26'),
(65, 5, 'Garnish with feta cheese and olives before serving, if desired.', 13, '2024-03-30 14:35:26'),
(66, 1, 'Preheat grill to medium-high heat and lightly oil the grate.', 14, '2024-03-30 14:35:36'),
(67, 2, 'Rub chicken breasts with olive oil and season with salt, pepper, and paprika.', 14, '2024-03-30 14:35:36'),
(68, 3, 'Grill chicken for 6-7 minutes per side or until cooked through and juices run clear.', 14, '2024-03-30 14:35:36'),
(69, 4, 'In a small saucepan, melt butter and stir in minced garlic until fragrant.', 14, '2024-03-30 14:35:36'),
(70, 5, 'Serve grilled chicken breasts drizzled with garlic butter sauce and garnish with chopped parsley.', 14, '2024-03-30 14:35:36'),
(71, 1, 'Bring a large pot of salted water to a boil and cook spaghetti according to package instructions.', 15, '2024-03-30 14:35:42'),
(72, 2, 'In a skillet, heat olive oil over medium heat and sauté minced garlic until fragrant.', 15, '2024-03-30 14:35:42'),
(73, 3, 'Add cherry tomatoes and cook until they start to burst, then season with salt and pepper.', 15, '2024-03-30 14:35:42'),
(74, 4, 'Toss cooked spaghetti with the tomato mixture and fresh basil leaves.', 15, '2024-03-30 14:35:42'),
(75, 5, 'Serve spaghetti aglio e olio topped with grated Parmesan cheese and a sprinkle of red pepper flakes.', 15, '2024-03-30 14:35:42'),
(76, 1, 'Preheat oven to 180°C (350°F) and grease a baking dish with butter.', 16, '2024-03-30 14:35:52'),
(77, 2, 'In a mixing bowl, beat eggs, milk, mustard, salt, and pepper until well combined.', 16, '2024-03-30 14:35:52'),
(78, 3, 'Layer bread slices and shredded cheese in the prepared baking dish.', 16, '2024-03-30 14:35:52'),
(79, 4, 'Pour the egg mixture over the bread and cheese layers, ensuring all bread is soaked.', 16, '2024-03-30 14:35:52'),
(80, 5, 'Bake for 30-35 minutes or until the strata is set and golden brown on top.', 16, '2024-03-30 14:35:52'),
(81, 1, 'Preheat oven to 200°C (400°F) and line a baking sheet with parchment paper.', 17, '2024-03-30 14:36:17'),
(82, 2, 'In a large bowl, toss Brussels sprouts with olive oil, balsamic vinegar, salt, and pepper.', 17, '2024-03-30 14:36:17'),
(83, 3, 'Spread Brussels sprouts in a single layer on the prepared baking sheet.', 17, '2024-03-30 14:36:17'),
(84, 4, 'Roast in the preheated oven for 20-25 minutes or until tender and caramelized.', 17, '2024-03-30 14:36:17'),
(85, 5, 'Serve roasted Brussels sprouts sprinkled with grated Parmesan cheese.', 17, '2024-03-30 14:36:17'),
(86, 1, 'Cook farro according to package instructions and set aside.', 18, '2024-03-30 14:36:23'),
(87, 2, 'In a large skillet, heat olive oil over medium heat and sauté minced garlic until fragrant.', 18, '2024-03-30 14:36:23'),
(88, 3, 'Add sliced mushrooms and cook until softened and browned.', 18, '2024-03-30 14:36:23'),
(89, 4, 'Stir in cooked farro and chopped spinach, and cook until spinach is wilted.', 18, '2024-03-30 14:36:23'),
(90, 5, 'Season with salt, pepper, and red pepper flakes, then serve hot.', 18, '2024-03-30 14:36:23'),
(91, 1, 'Preheat oven to 180°C (350°F) and grease a muffin tin with cooking spray.', 19, '2024-03-30 14:36:40'),
(92, 2, 'In a large bowl, mix together flour, baking powder, baking soda, salt, and sugar.', 19, '2024-03-30 14:36:40'),
(93, 3, 'In another bowl, whisk together mashed bananas, eggs, melted butter, and vanilla extract.', 19, '2024-03-30 14:36:40'),
(94, 4, 'Combine wet and dry ingredients until just combined, then gently fold in chocolate chips.', 19, '2024-03-30 14:36:40'),
(95, 5, 'Divide the batter evenly among the muffin cups and bake for 20-25 minutes or until golden brown.', 19, '2024-03-30 14:36:40'),
(96, 1, 'Cook rice noodles according to package instructions and set aside.', 20, '2024-03-30 14:36:47'),
(97, 2, 'In a large skillet or wok, heat sesame oil over medium-high heat.', 20, '2024-03-30 14:36:47'),
(98, 3, 'Add sliced bell peppers, shredded carrots, and snow peas, and stir-fry until tender-crisp.', 20, '2024-03-30 14:36:47'),
(99, 4, 'Toss in cooked rice noodles and sauce until everything is well combined and heated through.', 20, '2024-03-30 14:36:47'),
(100, 5, 'Serve hot garnished with chopped peanuts and fresh cilantro.', 20, '2024-03-30 14:36:47'),
(101, 1, 'Preheat oven to 180°C (350°F) and line a baking sheet with parchment paper.', 21, '2024-03-30 14:36:54'),
(102, 2, 'In a large bowl, mix together oats, almonds, coconut flakes, and cinnamon.', 21, '2024-03-30 14:36:54'),
(103, 3, 'In a small saucepan, heat honey, coconut oil, and vanilla extract until melted and combined.', 21, '2024-03-30 14:36:54'),
(104, 4, 'Pour the honey mixture over the oat mixture and stir until evenly coated.', 21, '2024-03-30 14:36:54'),
(105, 5, 'Spread the mixture onto the prepared baking sheet and bake for 20-25 minutes, stirring halfway through.', 21, '2024-03-30 14:36:54'),
(106, 1, 'Dice the butter and place it in the freezer until very hard. Tip flour into the bowl of a food processor with half the butter and pulse until the texture resembles breadcrumbs.', 22, '2024-03-30 14:38:26'),
(107, 2, 'Pour in lemon juice and 100ml iced water, and pulse to form a dough. Add the rest of the butter and pulse a few times until the dough is flecked with butter.', 22, '2024-03-30 14:38:26'),
(108, 3, 'On a floured surface, roll the pastry into a neat rectangle about 20 x 30cm. Fold the ends into the middle, then fold in half. Repeat this rolling and folding process three more times, resting the pastry for at least 15 minutes between each roll and fold.', 22, '2024-03-30 14:38:26'),
(109, 4, 'Leave the pastry to rest in the fridge for at least 30 minutes before using. For the filling, melt the butter in a large saucepan. Stir in all other ingredients until completely mixed, then set aside.', 22, '2024-03-30 14:38:26'),
(110, 5, 'Roll out the pastry until it\'s slightly thicker than a £1 coin and cut out 8 rounds about 12cm across. Place a spoonful of filling in the middle of each round, brush the edges with water, gather the pastry around the filling, and squeeze together. Flip them over, pat them into a smooth round, flatten with a rolling pin until the fruit starts to poke through, then place on a baking tray. Cut 2 slits in each, brush with egg white, and sprinkle with sugar. Bake at 220°C/200°C fan/gas 8 for 15-20 minutes until golden brown and sticky. Enjoy warm or cold.', 22, '2024-03-30 14:38:26'),
(111, 1, 'Rip pita bread into bite-sized pieces and fry them in a pan with butter until golden brown and crisp. Place these pieces in a square glass baking dish and set aside.', 23, '2024-03-30 14:38:43'),
(112, 2, 'In the same pan, add more butter, salt, crushed garlic cloves, and cumin. Stir until fragrant, then add the fried bread pieces back to the pan and coat them in the mixture. Transfer the coated bread back into the glass baking dish and set aside.', 23, '2024-03-30 14:38:43'),
(113, 3, 'In a pot, melt butter and stir-fry the meat until brown. Add quartered onion, salt, pepper, chicken bouillon cube, and enough water to cover the meat. Bring to a boil, then simmer covered until tender, about 2 hours. Once cooled, remove chunks of meat and set aside, reserving the soup separately.', 23, '2024-03-30 14:38:43'),
(114, 4, 'In another pot, melt butter, add shareya (fideo noodles), and stir until golden brown. Add rice and stir until some grains turn opaque white. Pour in water, add salt, bring to a boil, cover, and simmer until tender.', 23, '2024-03-30 14:38:43'),
(115, 5, 'Pour some soup over the bread pieces in the baking dish to saturate. Add cooked rice on top, then spoon the remainder of the soup onto the rice, ensuring it reaches just to the top. The exact level doesn\'t need to be precise.', 23, '2024-03-30 14:38:43'),
(116, 6, 'To prepare the red sauce, add oil or butter to a pan, along with crushed tomato, tomato paste, salt, pepper, crushed garlic, and cumin. Stir until fragrant and slightly thickened, adding water if needed. Spread the sauce over the rice.', 23, '2024-03-30 14:38:43'),
(117, 7, 'For the fried meat, add butter or oil to a pan, along with the meat, tomato paste, crushed garlic, salt, pepper, and cumin. Cook until golden fried.', 23, '2024-03-30 14:38:43'),
(118, 8, 'Spoon the fried meat over the rice and serve.', 23, '2024-03-30 14:38:43'),
(119, 1, 'In a medium saucepan, stir clotted cream, butter, and cornflour over low heat until simmering. Turn off the heat and keep warm.', 24, '2024-03-30 14:39:04'),
(120, 2, 'In a small bowl, combine cheese, nutmeg, black pepper, and stir together. Set aside.', 24, '2024-03-30 14:39:04'),
(121, 3, 'Cook pasta in another pan with salted water until al dente. Reserve some cooking water, then drain the pasta.', 24, '2024-03-30 14:39:04'),
(122, 4, 'Add pasta to the clotted cream mixture and sprinkle cheese mixture over it. Gently fold everything together over low heat until combined, then splash in some of the reserved cooking water.', 24, '2024-03-30 14:39:04'),
(123, 5, 'Keep stirring until the water is absorbed, and the sauce is glossy. Check seasoning before transferring to heated bowls. Sprinkle with chives or parsley and serve immediately.', 24, '2024-03-30 14:39:04'),
(124, 1, 'Sift flour and salt into a food processor bowl, add butter and lard, then pulse until the mixture resembles fine breadcrumbs.', 25, '2024-03-30 14:39:21'),
(125, 2, 'Transfer the mixture to a bowl, stir in cheese and enough water for the mixture to come together into a dough.', 25, '2024-03-30 14:39:21'),
(126, 3, 'Tip the dough onto a lightly floured surface, knead briefly until smooth, then roll out thinly and line a fluted flan tin.', 25, '2024-03-30 14:39:21'),
(127, 4, 'Prick the base with a fork and chill for 20 minutes. Meanwhile, melt butter in a saucepan over low heat, then add leeks and salt. Cook covered for 10 minutes until soft, then uncover and cook for another 2 minutes until liquid evaporates. Spoon onto a plate and let cool.', 25, '2024-03-30 14:39:21'),
(128, 5, 'Preheat oven to 200°C/fan180°C/gas 6. Line the pastry case with baking paper and baking beans or rice and blind bake for 15-20 minutes until the edges are biscuit-colored. Remove the paper and beans/rice, then return the case to the oven for 7-10 minutes until the base is crisp and lightly golden. Remove and set aside. Reduce oven temperature to 190°C/fan170°C/gas 5.', 25, '2024-03-30 14:39:21'),
(129, 6, 'In a bowl, mix crème fraîche with whole egg, egg yolks, and nutmeg. Season, then stir in the leeks. Spoon the mixture into the tart case and bake for 35-40 minutes until set and lightly golden. Let cool for 10 minutes, then remove from the tin and serve.', 25, '2024-03-30 14:39:21'),
(130, 1, 'Mix flour and salt, then gradually pour one cup of water while kneading until a very elastic dough is formed.', 26, '2024-03-30 14:39:56'),
(131, 2, 'If needed, add the remaining water gradually until the dough is elastic and doesn\'t tear when pulled.', 26, '2024-03-30 14:39:56'),
(132, 3, 'Let the dough rest for 10 minutes, then divide it into 6-8 balls.', 26, '2024-03-30 14:39:56'),
(133, 4, 'Warm up the butter, ghee, or oil and immerse the dough balls into it, letting them rest for 15 to 20 minutes.', 26, '2024-03-30 14:39:56'),
(134, 5, 'Preheat the oven to 550°F. Stretch each ball thin on a clean countertop, fold it over itself to form a square, brushing between folds with the butter mixture. Place the folded dough on a baking dish and brush the top with more butter. Bake for 10 minutes until puffed, then broil to brown the top. Serve warm with additional butter if desired.', 26, '2024-03-30 14:39:56'),
(135, 1, 'Cook pasta according to package instructions in boiling salted water.', 27, '2024-03-30 14:40:04'),
(136, 2, 'In a large skillet, heat heavy cream and butter until bubbling, then whisk in Parmesan and seasoning until slightly thickened.', 27, '2024-03-30 14:40:04'),
(137, 3, 'Add cooked pasta to the skillet and toss until coated in the sauce.', 27, '2024-03-30 14:40:04'),
(138, 4, 'Garnish with parsley and serve immediately.', 27, '2024-03-30 14:40:04'),
(139, 1, 'Boil prawns in enough water to cover for 5 minutes, then drain, reserving the liquid.', 28, '2024-03-30 14:40:11'),
(140, 2, 'Heat oil in a saucepan, add onion and cook until soft. Mix in parsley, wine, tomatoes, garlic, and remaining olive oil, then simmer for 30 minutes.', 28, '2024-03-30 14:40:11'),
(141, 3, 'Peel the prawns, leaving the head and tail intact. Stir prawns into the sauce and cook for 5 minutes.', 28, '2024-03-30 14:40:11'),
(142, 4, 'Add feta and let it melt slightly. Serve warm with crusty bread.', 28, '2024-03-30 14:40:11'),
(143, 1, 'Bring a saucepan of salted water to a boil, then cook pasta until al dente.', 29, '2024-03-30 14:40:19'),
(144, 2, 'In a small bowl, whisk together flour, mustard powder, garlic powder, salt, black pepper, and cayenne pepper.', 29, '2024-03-30 14:40:19'),
(145, 3, 'Drain the pasta, then melt butter in the same saucepan. Whisk in the flour mixture and cook until nutty.', 29, '2024-03-30 14:40:19'),
(146, 4, 'Slowly whisk in milk and cream until combined and slightly thickened. Stir in cheese until melted, then add cooked pasta.', 29, '2024-03-30 14:40:19'),
(147, 5, 'Pour the mixture onto a baking sheet, spread evenly, and refrigerate until firm.', 29, '2024-03-30 14:40:19'),
(148, 6, 'Spread garlic butter on one side of bread slices. Top with cheese slices and mac and cheese portions. Grill until golden brown and cheese is melted. Serve hot.', 29, '2024-03-30 14:40:19'),
(149, 1, 'Mix all the ingredients for the Honey Teriyaki Glaze together, whisking to blend well.', 30, '2024-03-30 14:40:58'),
(150, 2, 'Combine the salmon with the glaze and heat up a skillet on medium-low heat.', 30, '2024-03-30 14:40:58'),
(151, 3, 'Pan-fry the salmon on both sides until it\'s completely cooked inside and the glaze thickens.', 30, '2024-03-30 14:40:58'),
(152, 4, 'Garnish with sesame seeds and serve immediately.', 30, '2024-03-30 14:40:58'),
(153, 1, 'Rinse and soak the rice several times until the water stays clear, then cook with water or dashi until tender.', 31, '2024-03-30 14:41:05'),
(154, 2, 'Stir in mirin and let the rice sit covered for 15 minutes.', 31, '2024-03-30 14:41:05'),
(155, 3, 'Serve with optional toppings as desired.', 31, '2024-03-30 14:41:05'),
(156, 1, 'Heat oil in a medium saucepan and add chili. Cook for 1 minute, then add curry paste and cook for 1 more minute.', 32, '2024-03-30 14:41:11'),
(157, 2, 'Dissolve stock cube in boiling water, then pour into the pan along with coconut milk. Bring to a boil.', 32, '2024-03-30 14:41:11'),
(158, 3, 'Add fish sauce, seasoning, and noodles. Cook until noodles are softening.', 32, '2024-03-30 14:41:11'),
(159, 4, 'Squeeze in lime juice, add prawns, and cook until warm. Scatter with coriander before serving.', 32, '2024-03-30 14:41:11'),
(160, 1, 'Preheat oven to 375°F (190°C) and grease a baking dish.', 33, '2024-03-30 14:44:03'),
(161, 2, 'In a large bowl, mix together the flour, sugar, baking powder, and salt.', 33, '2024-03-30 14:44:03'),
(162, 3, 'In another bowl, beat together the egg, milk, and melted butter. Stir the wet mixture into the dry ingredients until just combined.', 33, '2024-03-30 14:44:03'),
(163, 4, 'Pour the batter into the prepared baking dish and bake for 25-30 minutes or until golden brown and a toothpick inserted into the center comes out clean.', 33, '2024-03-30 14:44:03'),
(164, 1, 'Preheat the oven to 375°F (190°C) and grease a muffin tin.', 34, '2024-03-30 14:44:08'),
(165, 2, 'In a large bowl, mix together the flour, sugar, baking powder, and salt.', 34, '2024-03-30 14:44:08'),
(166, 3, 'In another bowl, beat together the egg, milk, and melted butter. Stir the wet mixture into the dry ingredients until just combined.', 34, '2024-03-30 14:44:08'),
(167, 4, 'Pour the batter into the prepared muffin tin, filling each cup about 2/3 full.', 34, '2024-03-30 14:44:08'),
(168, 5, 'Bake for 18-20 minutes or until golden brown and a toothpick inserted into the center of a muffin comes out clean.', 34, '2024-03-30 14:44:08'),
(169, 1, 'Preheat the oven to 375°F (190°C) and grease a baking dish.', 35, '2024-03-30 14:44:41'),
(170, 2, 'In a large bowl, mix together the flour, sugar, baking powder, and salt.', 35, '2024-03-30 14:44:41'),
(171, 3, 'In another bowl, beat together the egg, milk, and melted butter. Stir the wet mixture into the dry ingredients until just combined.', 35, '2024-03-30 14:44:41'),
(172, 4, 'Pour the batter into the prepared baking dish and bake for 25-30 minutes or until golden brown and a toothpick inserted into the center comes out clean.', 35, '2024-03-30 14:44:41'),
(173, 1, 'In a large pot, bring water to a boil. Add the pasta and cook until al dente, then drain and set aside.', 36, '2024-03-30 14:44:48'),
(174, 2, 'In a separate skillet, heat olive oil over medium heat. Add garlic and cook until fragrant.', 36, '2024-03-30 14:44:48'),
(175, 3, 'Add cherry tomatoes and cook until they start to burst. Season with salt, pepper, and red pepper flakes to taste.', 36, '2024-03-30 14:44:48'),
(176, 4, 'Add the cooked pasta to the skillet and toss to combine. Serve with fresh basil and grated Parmesan cheese.', 36, '2024-03-30 14:44:48'),
(177, 1, 'Preheat oven to 375°F (190°C) and grease a baking dish.', 37, '2024-03-30 14:44:58'),
(178, 2, 'In a large bowl, mix together the flour, sugar, baking powder, and salt.', 37, '2024-03-30 14:44:58'),
(179, 3, 'In another bowl, beat together the egg, milk, and melted butter. Stir the wet mixture into the dry ingredients until just combined.', 37, '2024-03-30 14:44:58'),
(180, 4, 'Pour the batter into the prepared baking dish and bake for 25-30 minutes or until golden brown and a toothpick inserted into the center comes out clean.', 37, '2024-03-30 14:44:58'),
(181, 1, 'Preheat the oven to 375°F (190°C) and grease a muffin tin.', 38, '2024-03-30 14:45:03'),
(182, 2, 'In a large bowl, mix together the flour, sugar, baking powder, and salt.', 38, '2024-03-30 14:45:03'),
(183, 3, 'In another bowl, beat together the egg, milk, and melted butter. Stir the wet mixture into the dry ingredients until just combined.', 38, '2024-03-30 14:45:03'),
(184, 4, 'Pour the batter into the prepared muffin tin, filling each cup about 2/3 full.', 38, '2024-03-30 14:45:03'),
(185, 5, 'Bake for 18-20 minutes or until golden brown and a toothpick inserted into the center of a muffin comes out clean.', 38, '2024-03-30 14:45:03'),
(186, 1, 'In a large bowl, combine the ground beef, breadcrumbs, egg, Worcestershire sauce, garlic powder, onion powder, salt, and pepper.', 39, '2024-03-30 14:45:09'),
(187, 2, 'Mix until well combined, then form the mixture into patties.', 39, '2024-03-30 14:45:09'),
(188, 3, 'Heat a skillet over medium heat and cook the patties for 4-5 minutes on each side, or until cooked to your desired level of doneness.', 39, '2024-03-30 14:45:09'),
(189, 4, 'Serve the burgers on buns with your favorite toppings.', 39, '2024-03-30 14:45:09'),
(190, 1, 'Preheat oven to 375°F (190°C) and grease a baking dish.', 40, '2024-03-30 14:45:26'),
(191, 2, 'In a large bowl, mix together the flour, sugar, baking powder, and salt.', 40, '2024-03-30 14:45:26'),
(192, 3, 'In another bowl, beat together the egg, milk, and melted butter. Stir the wet mixture into the dry ingredients until just combined.', 40, '2024-03-30 14:45:26'),
(193, 4, 'Pour the batter into the prepared baking dish and bake for 25-30 minutes or until golden brown and a toothpick inserted into the center comes out clean.', 40, '2024-03-30 14:45:26'),
(194, 1, 'Preheat oven to 350°F (175°C). Grease and flour a 9x5 inch loaf pan.', 41, '2024-03-30 14:45:52'),
(195, 2, 'In a large bowl, mix together mashed bananas, sugar, egg, vanilla extract, and melted butter.', 41, '2024-03-30 14:45:52'),
(196, 3, 'In another bowl, whisk together flour, baking powder, baking soda, and salt.', 41, '2024-03-30 14:45:52'),
(197, 4, 'Stir the dry ingredients into the banana mixture until just combined. Pour batter into the prepared loaf pan.', 41, '2024-03-30 14:45:52'),
(198, 5, 'Bake for 60 to 65 minutes, or until a toothpick inserted into the center of the loaf comes out clean. Let bread cool in pan for 10 minutes, then turn out onto a wire rack.', 41, '2024-03-30 14:45:52'),
(199, 1, 'Preheat oven to 350°F (175°C). Grease and flour a 9x13 inch baking dish.', 42, '2024-03-30 14:46:01'),
(200, 2, 'In a large bowl, cream together butter and sugar until smooth. Beat in eggs, then stir in vanilla extract.', 42, '2024-03-30 14:46:01'),
(201, 3, 'Combine flour, baking powder, and salt; gradually stir into the egg mixture. Fold in chocolate chips.', 42, '2024-03-30 14:46:01'),
(202, 4, 'Spread the batter evenly into the prepared baking dish. Bake for 25 to 30 minutes in preheated oven, until edges start to pull away from the sides of the pan.', 42, '2024-03-30 14:46:01'),
(203, 1, 'Preheat oven to 350°F (175°C). Grease and flour two 9-inch round cake pans.', 43, '2024-03-30 14:46:06'),
(204, 2, 'In a large bowl, cream together butter and sugar until light and fluffy. Beat in eggs, one at a time, then stir in vanilla extract.', 43, '2024-03-30 14:46:06'),
(205, 3, 'Combine flour, baking powder, and salt; gradually stir into the creamed mixture. Finally, fold in milk until batter is smooth. Pour or spoon batter into prepared cake pans.', 43, '2024-03-30 14:46:06'),
(206, 4, 'Bake for 30 to 40 minutes in preheated oven, or until a toothpick inserted into the center of the cakes comes out clean. Let cakes cool in pans for 10 minutes, then turn out onto wire racks to cool completely.', 43, '2024-03-30 14:46:06'),
(207, 1, 'Preheat oven to 375°F (190°C). Grease and flour two 9-inch round cake pans.', 44, '2024-03-30 14:46:39'),
(208, 2, 'In a large bowl, cream together butter and sugar until light and fluffy. Beat in eggs, one at a time, then stir in vanilla extract.', 44, '2024-03-30 14:46:39'),
(209, 3, 'Combine flour, cocoa, baking powder, baking soda, and salt; gradually stir into the creamed mixture. Finally, fold in coffee until batter is smooth. Pour or spoon batter into prepared cake pans.', 44, '2024-03-30 14:46:39'),
(210, 4, 'Bake for 25 to 30 minutes in preheated oven, or until a toothpick inserted into the center of the cakes comes out clean. Let cakes cool in pans for 10 minutes, then turn out onto wire racks to cool completely.', 44, '2024-03-30 14:46:39'),
(211, 1, 'Preheat oven to 350°F (175°C). Grease and flour a 9x13 inch baking dish.', 45, '2024-03-30 14:46:46'),
(212, 2, 'In a large bowl, mix together pumpkin puree, eggs, oil, water, and sugar until well blended.', 45, '2024-03-30 14:46:46'),
(213, 3, 'In another bowl, whisk together flour, baking powder, baking soda, salt, and pumpkin pie spice. Stir the dry ingredients into the pumpkin mixture until just combined. Pour batter into the prepared baking dish.', 45, '2024-03-30 14:46:46'),
(214, 4, 'Bake for 25 to 30 minutes in preheated oven, or until a toothpick inserted into the center comes out clean. Let cool before serving.', 45, '2024-03-30 14:46:46'),
(215, 1, 'Preheat oven to 350°F (175°C). Grease and flour two 9-inch round cake pans.', 46, '2024-03-30 14:46:55'),
(216, 2, 'In a large bowl, cream together butter and sugar until light and fluffy. Beat in eggs, one at a time, then stir in vanilla extract.', 46, '2024-03-30 14:46:55'),
(217, 3, 'Combine flour, baking powder, baking soda, and salt; gradually stir into the creamed mixture. Finally, fold in mashed bananas until batter is smooth. Pour or spoon batter into prepared cake pans.', 46, '2024-03-30 14:46:55'),
(218, 4, 'Bake for 25 to 30 minutes in preheated oven, or until a toothpick inserted into the center of the cakes comes out clean. Let cakes cool in pans for 10 minutes, then turn out onto wire racks to cool completely.', 46, '2024-03-30 14:46:55'),
(219, 1, 'Preheat oven to 350°F (175°C). Grease and flour a 9x13 inch baking dish.', 47, '2024-03-30 14:47:01'),
(220, 2, 'In a large bowl, mix together shredded zucchini, sugar, oil, and vanilla extract. Beat in eggs.', 47, '2024-03-30 14:47:01'),
(221, 3, 'In another bowl, whisk together flour, cocoa powder, baking soda, baking powder, and salt. Stir the dry ingredients into the zucchini mixture until well blended. Pour batter into the prepared baking dish.', 47, '2024-03-30 14:47:01'),
(222, 4, 'Bake for 50 to 55 minutes in preheated oven, or until a toothpick inserted into the center comes out clean. Let cool before serving.', 47, '2024-03-30 14:47:01'),
(223, 1, 'Preheat oven to 350°F (175°C). Grease and flour a 9x5 inch loaf pan.', 48, '2024-03-30 14:47:31'),
(224, 2, 'In a large bowl, combine flour, baking soda, baking powder, salt, cinnamon, and nutmeg. Stir in sugar, oil, eggs, and vanilla extract until well combined. Fold in grated carrots and chopped nuts if desired.', 48, '2024-03-30 14:47:31'),
(225, 3, 'Pour batter into prepared loaf pan and spread evenly. Bake in preheated oven for 50 to 60 minutes, or until a toothpick inserted into the center comes out clean.', 48, '2024-03-30 14:47:31'),
(226, 4, 'Allow the bread to cool in the pan for 10 minutes, then remove from pan and cool completely on a wire rack before slicing.', 48, '2024-03-30 14:47:31'),
(227, 1, 'Preheat oven to 350°F (175°C). Grease and flour a 9x13 inch baking dish.', 49, '2024-03-30 14:47:36'),
(228, 2, 'In a large bowl, cream together butter and sugar until smooth. Beat in eggs, then stir in vanilla. Combine flour, cocoa, baking powder, and salt; gradually stir into the butter mixture until well blended.', 49, '2024-03-30 14:47:36'),
(229, 3, 'Spread the batter evenly into the prepared baking dish. Bake for 25 to 30 minutes in preheated oven, or until the brownies begin to pull away from the edges of the pan.', 49, '2024-03-30 14:47:36'),
(230, 4, 'Let brownies cool in the pan before cutting into squares.', 49, '2024-03-30 14:47:36'),
(231, 1, 'Preheat oven to 350°F (175°C). Grease and flour a 9x13 inch baking dish.', 50, '2024-03-30 14:47:41'),
(232, 2, 'In a large bowl, mix together flour, sugar, baking powder, and salt. Stir in melted butter and milk until well combined.', 50, '2024-03-30 14:47:41'),
(233, 3, 'Pour batter into prepared baking dish and spread evenly. Arrange peaches over the batter.', 50, '2024-03-30 14:47:41'),
(234, 4, 'In a small bowl, mix together brown sugar and cinnamon. Sprinkle over the peaches.', 50, '2024-03-30 14:47:41'),
(235, 5, 'Bake in preheated oven for 35 to 40 minutes, or until a toothpick inserted into the center comes out clean. Serve warm or cold.', 50, '2024-03-30 14:47:41'),
(236, 1, 'Preheat the oven to 180°C/350°F/Gas Mark 4.', 51, '2024-05-08 12:04:33'),
(237, 2, 'Grease and line the base of an 8-inch round springform cake tin with baking parchment.', 51, '2024-05-08 12:04:33'),
(238, 3, 'Break the chocolate into a heatproof bowl and melt it.', 51, '2024-05-08 12:04:33'),
(239, 4, 'Cream together butter and sugar until light and fluffy.', 51, '2024-05-08 12:04:33'),
(240, 5, 'Gradually beat in the eggs, then fold in flour, melted chocolate, and milk until smooth.', 51, '2024-05-08 12:04:33'),
(241, 1, 'Marinate beef with salt, white pepper, sesame seed oil, egg, corn starch, and oil.', 55, '2024-05-08 12:04:33'),
(242, 2, 'Boil noodles until just cooked, then strain and cool with cold water.', 55, '2024-05-08 12:04:33'),
(243, 3, 'Stir-fry beef until medium cooked, then set aside.', 55, '2024-05-08 12:04:33'),
(244, 4, 'Stir-fry onions, garlic, ginger, bean sprouts, mushrooms, and peapods in oil and water.', 55, '2024-05-08 12:04:33'),
(245, 5, 'Add noodles to the wok, then make the sauce and add it along with the beef, stirring until combined.', 55, '2024-05-08 12:04:33'),
(246, 1, 'Freeze bacon slices for easier chopping.', 56, '2024-05-08 12:04:33'),
(247, 2, 'Wash and dice potatoes, then cook in oil until browned.', 56, '2024-05-08 12:04:33'),
(248, 3, 'Add chopped bacon to the skillet and cook until crispy.', 56, '2024-05-08 12:04:33'),
(249, 4, 'Stir in minced garlic and cook until fragrant.', 56, '2024-05-08 12:04:33'),
(250, 5, 'Drizzle maple syrup over the potatoes and cook until caramelized.', 56, '2024-05-08 12:04:33'),
(251, 1, 'Rinse the eggplant and pat dry, then apply oil and roast over an open flame until tender.', 52, '2024-05-08 12:04:33'),
(252, 2, 'Optionally, embed garlic cloves in the eggplant and roast.', 52, '2024-05-08 12:04:33'),
(253, 3, 'If desired, infuse smoky flavor using the dhungar technique with charcoal.', 52, '2024-05-08 12:04:33'),
(254, 4, 'Peel the roasted eggplant and chop or mash finely.', 52, '2024-05-08 12:04:33'),
(255, 5, 'In a pan, sauté onions, garlic, and green chilies, then add tomatoes and cook until soft.', 52, '2024-05-08 12:04:33'),
(256, 6, 'Mix in red chili powder, salt, and the chopped eggplant, then cook until well combined.', 52, '2024-05-08 12:04:33'),
(257, 7, 'Finally, stir in coriander leaves and serve with bread, rice, or chapatis.', 52, '2024-05-08 12:04:33'),
(258, 1, 'Prepare the brisket by scoring the fat and salting it, then let it sit at room temperature.', 53, '2024-05-08 12:04:33'),
(259, 2, 'Sear the brisket in a pot until browned on both sides, then remove and set aside.', 53, '2024-05-08 12:04:33'),
(260, 3, 'Sauté onions and garlic in the same pot until lightly browned, then return the brisket.', 53, '2024-05-08 12:04:33'),
(261, 4, 'Add herbs, beef stock, and bring to a boil, then cover and cook in the oven.', 53, '2024-05-08 12:04:33'),
(262, 5, 'After a few hours, add carrots to the pot and continue cooking until tender.', 53, '2024-05-08 12:04:33'),
(263, 1, 'Season beef cubes with salt and black pepper, then fry in batches until browned.', 54, '2024-05-08 12:04:33'),
(264, 2, 'In the same pan, sauté shallots, garlic, and bacon until browned.', 54, '2024-05-08 12:04:33'),
(265, 3, 'Deglaze the pan with stout, then pour over the beef in a casserole dish.', 54, '2024-05-08 12:04:33'),
(266, 4, 'Add stock to the casserole dish, cover, and cook in the oven until beef is tender.', 54, '2024-05-08 12:04:33'),
(267, 5, 'Make a pastry dough, roll out, and cover the casserole dish, then bake until golden brown.', 54, '2024-05-08 12:04:33'),
(268, 1, 'Cook pasta in boiling salted water until al dente, then drain and set aside.', 57, '2024-05-08 12:04:33'),
(269, 2, 'In a pan, heat olive oil and sauté garlic until fragrant.', 57, '2024-05-08 12:04:33'),
(270, 3, 'Add chopped tomatoes, tomato paste, and season with salt, pepper, and Italian herbs.', 57, '2024-05-08 12:04:33'),
(271, 4, 'Simmer the sauce until it thickens slightly, then stir in cooked pasta.', 57, '2024-05-08 12:04:33'),
(272, 5, 'Garnish with fresh basil leaves and grated Parmesan cheese before serving.', 57, '2024-05-08 12:04:33'),
(273, 1, 'Preheat oven to 180°C (350°F) and line muffin tins with paper liners.', 58, '2024-05-08 12:04:33'),
(274, 2, 'In a bowl, whisk together flour, cocoa powder, sugar, baking powder, and salt.', 58, '2024-05-08 12:04:33'),
(275, 3, 'In another bowl, mix eggs, milk, oil, and vanilla extract until well combined.', 58, '2024-05-08 12:04:33'),
(276, 4, 'Combine wet and dry ingredients, then fold in chocolate chips.', 58, '2024-05-08 12:04:33'),
(277, 5, 'Divide batter evenly among muffin cups and bake for 20-25 minutes or until a toothpick comes out clean.', 58, '2024-05-08 12:04:33'),
(278, 1, 'Marinate chicken pieces in yogurt, lemon juice, and spices for at least 1 hour.', 59, '2024-05-08 12:04:33'),
(279, 2, 'Skewer marinated chicken and grill until cooked through, turning occasionally.', 59, '2024-05-08 12:04:33'),
(280, 3, 'Serve chicken tikka with sliced onions, lemon wedges, and mint chutney.', 59, '2024-05-08 12:04:33'),
(281, 1, 'Preheat oven to 180°C (350°F) and grease a baking dish.', 60, '2024-05-08 12:04:33'),
(282, 2, 'In a bowl, mix together mashed sweet potatoes, milk, melted butter, eggs, and vanilla extract.', 60, '2024-05-08 12:04:33'),
(283, 3, 'Stir in brown sugar, cinnamon, nutmeg, and salt until well combined.', 60, '2024-05-08 12:04:33'),
(284, 4, 'Transfer the mixture to the prepared baking dish and sprinkle with pecans.', 60, '2024-05-08 12:04:33'),
(285, 5, 'Bake for 25-30 minutes or until the sweet potato mixture is set and pecans are toasted.', 60, '2024-05-08 12:04:33'),
(286, 1, 'Cook quinoa according to package instructions and set aside.', 61, '2024-05-08 12:04:33'),
(287, 2, 'In a large skillet, heat olive oil over medium heat and sauté onions until translucent.', 61, '2024-05-08 12:04:33'),
(288, 3, 'Add diced bell peppers and cook until softened, then stir in cooked quinoa.', 61, '2024-05-08 12:04:33'),
(289, 4, 'Season with cumin, chili powder, salt, and pepper, and cook for a few more minutes.', 61, '2024-05-08 12:04:33'),
(290, 5, 'Serve the quinoa and bell pepper mixture topped with chopped cilantro and a squeeze of lime juice.', 61, '2024-05-08 12:04:33'),
(291, 1, 'Preheat oven to 200°C (400°F) and line a baking sheet with parchment paper.', 62, '2024-05-08 12:04:33'),
(292, 2, 'Toss cauliflower florets with olive oil, salt, and pepper on the prepared baking sheet.', 62, '2024-05-08 12:04:33'),
(293, 3, 'Roast cauliflower in the preheated oven for 20-25 minutes or until golden brown and tender.', 62, '2024-05-08 12:04:33'),
(294, 4, 'Meanwhile, mix together tahini, lemon juice, garlic, and water to make the tahini sauce.', 62, '2024-05-08 12:04:33'),
(295, 5, 'Serve roasted cauliflower drizzled with tahini sauce and sprinkled with chopped parsley.', 62, '2024-05-08 12:04:33'),
(296, 1, 'In a bowl, combine diced tomatoes, diced cucumbers, chopped onions, and chopped parsley.', 63, '2024-05-08 12:04:33'),
(297, 2, 'Drizzle olive oil and lemon juice over the salad, then season with salt and pepper to taste.', 63, '2024-05-08 12:04:33'),
(298, 3, 'Toss the salad gently until well combined and evenly coated with the dressing.', 63, '2024-05-08 12:04:33'),
(299, 4, 'Chill the salad in the refrigerator for at least 30 minutes before serving.', 63, '2024-05-08 12:04:33'),
(300, 5, 'Garnish with feta cheese and olives before serving, if desired.', 63, '2024-05-08 12:04:33'),
(301, 1, 'Preheat grill to medium-high heat and lightly oil the grate.', 64, '2024-05-08 12:04:33'),
(302, 2, 'Rub chicken breasts with olive oil and season with salt, pepper, and paprika.', 64, '2024-05-08 12:04:33'),
(303, 3, 'Grill chicken for 6-7 minutes per side or until cooked through and juices run clear.', 64, '2024-05-08 12:04:33'),
(304, 4, 'In a small saucepan, melt butter and stir in minced garlic until fragrant.', 64, '2024-05-08 12:04:33'),
(305, 5, 'Serve grilled chicken breasts drizzled with garlic butter sauce and garnish with chopped parsley.', 64, '2024-05-08 12:04:33'),
(306, 1, 'Bring a large pot of salted water to a boil and cook spaghetti according to package instructions.', 65, '2024-05-08 12:04:33'),
(307, 2, 'In a skillet, heat olive oil over medium heat and sauté minced garlic until fragrant.', 65, '2024-05-08 12:04:33'),
(308, 3, 'Add cherry tomatoes and cook until they start to burst, then season with salt and pepper.', 65, '2024-05-08 12:04:33'),
(309, 4, 'Toss cooked spaghetti with the tomato mixture and fresh basil leaves.', 65, '2024-05-08 12:04:33'),
(310, 5, 'Serve spaghetti aglio e olio topped with grated Parmesan cheese and a sprinkle of red pepper flakes.', 65, '2024-05-08 12:04:33'),
(311, 1, 'Preheat oven to 180°C (350°F) and grease a baking dish with butter.', 66, '2024-05-08 12:04:33'),
(312, 2, 'In a mixing bowl, beat eggs, milk, mustard, salt, and pepper until well combined.', 66, '2024-05-08 12:04:33'),
(313, 3, 'Layer bread slices and shredded cheese in the prepared baking dish.', 66, '2024-05-08 12:04:33'),
(314, 4, 'Pour the egg mixture over the bread and cheese layers, ensuring all bread is soaked.', 66, '2024-05-08 12:04:33'),
(315, 5, 'Bake for 30-35 minutes or until the strata is set and golden brown on top.', 66, '2024-05-08 12:04:33'),
(363, 1, 'Cook farro according to package instructions and set aside.', 67, '2024-05-08 12:05:18'),
(364, 2, 'In a large skillet, heat olive oil over medium heat and sauté minced garlic until fragrant.', 67, '2024-05-08 12:05:18'),
(365, 3, 'Add sliced mushrooms and cook until softened and browned.', 67, '2024-05-08 12:05:18'),
(366, 4, 'Stir in cooked farro and chopped spinach, and cook until spinach is wilted.', 67, '2024-05-08 12:05:18'),
(367, 5, 'Season with salt, pepper, and red pepper flakes, then serve hot.', 67, '2024-05-08 12:05:18'),
(368, 1, 'Preheat oven to 180°C (350°F) and grease a muffin tin with cooking spray.', 68, '2024-05-08 12:05:18'),
(369, 2, 'In a large bowl, mix together flour, baking powder, baking soda, salt, and sugar.', 68, '2024-05-08 12:05:18'),
(370, 3, 'In another bowl, whisk together mashed bananas, eggs, melted butter, and vanilla extract.', 68, '2024-05-08 12:05:18'),
(371, 4, 'Combine wet and dry ingredients until just combined, then gently fold in chocolate chips.', 68, '2024-05-08 12:05:18'),
(372, 5, 'Divide the batter evenly among the muffin cups and bake for 20-25 minutes or until golden brown.', 68, '2024-05-08 12:05:18'),
(373, 1, 'Cook rice noodles according to package instructions and set aside.', 69, '2024-05-08 12:05:18'),
(374, 2, 'In a large skillet or wok, heat sesame oil over medium-high heat.', 69, '2024-05-08 12:05:18'),
(375, 3, 'Add sliced bell peppers, shredded carrots, and snow peas, and stir-fry until tender-crisp.', 69, '2024-05-08 12:05:18'),
(376, 4, 'Toss in cooked rice noodles and sauce until everything is well combined and heated through.', 69, '2024-05-08 12:05:18'),
(377, 5, 'Serve hot garnished with chopped peanuts and fresh cilantro.', 69, '2024-05-08 12:05:18'),
(378, 1, 'Preheat oven to 180°C (350°F) and line a baking sheet with parchment paper.', 70, '2024-05-08 12:05:18'),
(379, 2, 'In a large bowl, mix together oats, almonds, coconut flakes, and cinnamon.', 70, '2024-05-08 12:05:18'),
(380, 3, 'In a small saucepan, heat honey, coconut oil, and vanilla extract until melted and combined.', 70, '2024-05-08 12:05:18'),
(381, 4, 'Pour the honey mixture over the oat mixture and stir until evenly coated.', 70, '2024-05-08 12:05:18'),
(382, 5, 'Spread the mixture onto the prepared baking sheet and bake for 20-25 minutes, stirring halfway through.', 70, '2024-05-08 12:05:18'),
(383, 1, 'Dice the butter and place it in the freezer until very hard. Tip flour into the bowl of a food processor with half the butter and pulse until the texture resembles breadcrumbs.', 71, '2024-05-08 12:05:18'),
(384, 2, 'Pour in lemon juice and 100ml iced water, and pulse to form a dough. Add the rest of the butter and pulse a few times until the dough is flecked with butter.', 71, '2024-05-08 12:05:18'),
(385, 3, 'On a floured surface, roll the pastry into a neat rectangle about 20 x 30cm. Fold the ends into the middle, then fold in half. Repeat this rolling and folding process three more times, resting the pastry for at least 15 minutes between each roll and fold.', 71, '2024-05-08 12:05:18'),
(386, 4, 'Leave the pastry to rest in the fridge for at least 30 minutes before using. For the filling, melt the butter in a large saucepan. Stir in all other ingredients until completely mixed, then set aside.', 71, '2024-05-08 12:05:18'),
(387, 5, 'Roll out the pastry until it\'s slightly thicker than a £1 coin and cut out 8 rounds about 12cm across. Place a spoonful of filling in the middle of each round, brush the edges with water, gather the pastry around the filling, and squeeze together. Flip them over, pat them into a smooth round, flatten with a rolling pin until the fruit starts to poke through, then place on a baking tray. Cut 2 slits in each, brush with egg white, and sprinkle with sugar. Bake at 220°C/200°C fan/gas 8 for 15-20 minutes until golden brown and sticky. Enjoy warm or cold.', 71, '2024-05-08 12:05:18'),
(388, 1, 'Rip pita bread into bite-sized pieces and fry them in a pan with butter until golden brown and crisp. Place these pieces in a square glass baking dish and set aside.', 72, '2024-05-08 12:05:18'),
(389, 2, 'In the same pan, add more butter, salt, crushed garlic cloves, and cumin. Stir until fragrant, then add the fried bread pieces back to the pan and coat them in the mixture. Transfer the coated bread back into the glass baking dish and set aside.', 72, '2024-05-08 12:05:18'),
(390, 3, 'In a pot, melt butter and stir-fry the meat until brown. Add quartered onion, salt, pepper, chicken bouillon cube, and enough water to cover the meat. Bring to a boil, then simmer covered until tender, about 2 hours. Once cooled, remove chunks of meat and set aside, reserving the soup separately.', 72, '2024-05-08 12:05:18'),
(391, 4, 'In another pot, melt butter, add shareya (fideo noodles), and stir until golden brown. Add rice and stir until some grains turn opaque white. Pour in water, add salt, bring to a boil, cover, and simmer until tender.', 72, '2024-05-08 12:05:18'),
(392, 5, 'Pour some soup over the bread pieces in the baking dish to saturate. Add cooked rice on top, then spoon the remainder of the soup onto the rice, ensuring it reaches just to the top. The exact level doesn\'t need to be precise.', 72, '2024-05-08 12:05:18'),
(393, 6, 'To prepare the red sauce, add oil or butter to a pan, along with crushed tomato, tomato paste, salt, pepper, crushed garlic, and cumin. Stir until fragrant and slightly thickened, adding water if needed. Spread the sauce over the rice.', 72, '2024-05-08 12:05:18'),
(394, 7, 'For the fried meat, add butter or oil to a pan, along with the meat, tomato paste, crushed garlic, salt, pepper, and cumin. Cook until golden fried.', 72, '2024-05-08 12:05:18'),
(395, 8, 'Spoon the fried meat over the rice and serve.', 72, '2024-05-08 12:05:18'),
(396, 1, 'In a medium saucepan, stir clotted cream, butter, and cornflour over low heat until simmering. Turn off the heat and keep warm.', 73, '2024-05-08 12:05:18'),
(397, 2, 'In a small bowl, combine cheese, nutmeg, black pepper, and stir together. Set aside.', 73, '2024-05-08 12:05:18'),
(398, 3, 'Cook pasta in another pan with salted water until al dente. Reserve some cooking water, then drain the pasta.', 73, '2024-05-08 12:05:18'),
(399, 4, 'Add pasta to the clotted cream mixture and sprinkle cheese mixture over it. Gently fold everything together over low heat until combined, then splash in some of the reserved cooking water.', 73, '2024-05-08 12:05:18'),
(400, 5, 'Keep stirring until the water is absorbed, and the sauce is glossy. Check seasoning before transferring to heated bowls. Sprinkle with chives or parsley and serve immediately.', 73, '2024-05-08 12:05:18'),
(401, 1, 'Sift flour and salt into a food processor bowl, add butter and lard, then pulse until the mixture resembles fine breadcrumbs.', 74, '2024-05-08 12:05:18'),
(402, 2, 'Transfer the mixture to a bowl, stir in cheese and enough water for the mixture to come together into a dough.', 74, '2024-05-08 12:05:18'),
(403, 3, 'Tip the dough onto a lightly floured surface, knead briefly until smooth, then roll out thinly and line a fluted flan tin.', 74, '2024-05-08 12:05:18');
INSERT INTO `steps` (`id`, `step_number`, `step_description`, `recipe_id`, `updated_at`) VALUES
(404, 4, 'Prick the base with a fork and chill for 20 minutes. Meanwhile, melt butter in a saucepan over low heat, then add leeks and salt. Cook covered for 10 minutes until soft, then uncover and cook for another 2 minutes until liquid evaporates. Spoon onto a plate and let cool.', 74, '2024-05-08 12:05:18'),
(405, 5, 'Preheat oven to 200°C/fan180°C/gas 6. Line the pastry case with baking paper and baking beans or rice and blind bake for 15-20 minutes until the edges are biscuit-colored. Remove the paper and beans/rice, then return the case to the oven for 7-10 minutes until the base is crisp and lightly golden. Remove and set aside. Reduce oven temperature to 190°C/fan170°C/gas 5.', 74, '2024-05-08 12:05:18'),
(406, 6, 'In a bowl, mix crème fraîche with whole egg, egg yolks, and nutmeg. Season, then stir in the leeks. Spoon the mixture into the tart case and bake for 35-40 minutes until set and lightly golden. Let cool for 10 minutes, then remove from the tin and serve.', 74, '2024-05-08 12:05:18'),
(407, 1, 'Mix flour and salt, then gradually pour one cup of water while kneading until a very elastic dough is formed.', 75, '2024-05-08 12:05:18'),
(408, 2, 'If needed, add the remaining water gradually until the dough is elastic and doesn\'t tear when pulled.', 75, '2024-05-08 12:05:18'),
(409, 3, 'Let the dough rest for 10 minutes, then divide it into 6-8 balls.', 75, '2024-05-08 12:05:18'),
(410, 4, 'Warm up the butter, ghee, or oil and immerse the dough balls into it, letting them rest for 15 to 20 minutes.', 75, '2024-05-08 12:05:18'),
(411, 5, 'Preheat the oven to 550°F. Stretch each ball thin on a clean countertop, fold it over itself to form a square, brushing between folds with the butter mixture. Place the folded dough on a baking dish and brush the top with more butter. Bake for 10 minutes until puffed, then broil to brown the top. Serve warm with additional butter if desired.', 75, '2024-05-08 12:05:18'),
(412, 1, 'Cook pasta according to package instructions in boiling salted water.', 76, '2024-05-08 12:05:18'),
(413, 2, 'In a large skillet, heat heavy cream and butter until bubbling, then whisk in Parmesan and seasoning until slightly thickened.', 76, '2024-05-08 12:05:18'),
(414, 3, 'Add cooked pasta to the skillet and toss until coated in the sauce.', 76, '2024-05-08 12:05:18'),
(415, 4, 'Garnish with parsley and serve immediately.', 76, '2024-05-08 12:05:18'),
(416, 1, 'Boil prawns in enough water to cover for 5 minutes, then drain, reserving the liquid.', 77, '2024-05-08 12:05:18'),
(417, 2, 'Heat oil in a saucepan, add onion and cook until soft. Mix in parsley, wine, tomatoes, garlic, and remaining olive oil, then simmer for 30 minutes.', 77, '2024-05-08 12:05:18'),
(418, 3, 'Peel the prawns, leaving the head and tail intact. Stir prawns into the sauce and cook for 5 minutes.', 77, '2024-05-08 12:05:18'),
(419, 4, 'Add feta and let it melt slightly. Serve warm with crusty bread.', 77, '2024-05-08 12:05:18'),
(420, 1, 'Bring a saucepan of salted water to a boil, then cook pasta until al dente.', 78, '2024-05-08 12:05:18'),
(421, 2, 'In a small bowl, whisk together flour, mustard powder, garlic powder, salt, black pepper, and cayenne pepper.', 78, '2024-05-08 12:05:18'),
(422, 3, 'Drain the pasta, then melt butter in the same saucepan. Whisk in the flour mixture and cook until nutty.', 78, '2024-05-08 12:05:18'),
(423, 4, 'Slowly whisk in milk and cream until combined and slightly thickened. Stir in cheese until melted, then add cooked pasta.', 78, '2024-05-08 12:05:18'),
(424, 5, 'Pour the mixture onto a baking sheet, spread evenly, and refrigerate until firm.', 78, '2024-05-08 12:05:18'),
(425, 6, 'Spread garlic butter on one side of bread slices. Top with cheese slices and mac and cheese portions. Grill until golden brown and cheese is melted. Serve hot.', 78, '2024-05-08 12:05:18'),
(426, 1, 'Mix all the ingredients for the Honey Teriyaki Glaze together, whisking to blend well.', 79, '2024-05-08 12:05:18'),
(427, 2, 'Combine the salmon with the glaze and heat up a skillet on medium-low heat.', 79, '2024-05-08 12:05:18'),
(428, 3, 'Pan-fry the salmon on both sides until it\'s completely cooked inside and the glaze thickens.', 79, '2024-05-08 12:05:18'),
(429, 4, 'Garnish with sesame seeds and serve immediately.', 79, '2024-05-08 12:05:18'),
(430, 1, 'Rinse and soak the rice several times until the water stays clear, then cook with water or dashi until tender.', 80, '2024-05-08 12:05:18'),
(431, 2, 'Stir in mirin and let the rice sit covered for 15 minutes.', 80, '2024-05-08 12:05:18'),
(432, 3, 'Serve with optional toppings as desired.', 80, '2024-05-08 12:05:18'),
(433, 1, 'Heat oil in a medium saucepan and add chili. Cook for 1 minute, then add curry paste and cook for 1 more minute.', 81, '2024-05-08 12:05:18'),
(434, 2, 'Dissolve stock cube in boiling water, then pour into the pan along with coconut milk. Bring to a boil.', 81, '2024-05-08 12:05:18'),
(435, 3, 'Add fish sauce, seasoning, and noodles. Cook until noodles are softening.', 81, '2024-05-08 12:05:18'),
(436, 4, 'Squeeze in lime juice, add prawns, and cook until warm. Scatter with coriander before serving.', 81, '2024-05-08 12:05:18'),
(437, 1, 'Preheat oven to 375°F (190°C) and grease a baking dish.', 82, '2024-05-08 12:05:18'),
(438, 2, 'In a large bowl, mix together the flour, sugar, baking powder, and salt.', 82, '2024-05-08 12:05:18'),
(439, 3, 'In another bowl, beat together the egg, milk, and melted butter. Stir the wet mixture into the dry ingredients until just combined.', 82, '2024-05-08 12:05:18'),
(440, 4, 'Pour the batter into the prepared baking dish and bake for 25-30 minutes or until golden brown and a toothpick inserted into the center comes out clean.', 82, '2024-05-08 12:05:18'),
(441, 1, 'Preheat the oven to 375°F (190°C) and grease a muffin tin.', 83, '2024-05-08 12:05:18'),
(442, 2, 'In a large bowl, mix together the flour, sugar, baking powder, and salt.', 83, '2024-05-08 12:05:18'),
(443, 3, 'In another bowl, beat together the egg, milk, and melted butter. Stir the wet mixture into the dry ingredients until just combined.', 83, '2024-05-08 12:05:18'),
(444, 4, 'Pour the batter into the prepared muffin tin, filling each cup about 2/3 full.', 83, '2024-05-08 12:05:18'),
(445, 5, 'Bake for 18-20 minutes or until golden brown and a toothpick inserted into the center of a muffin comes out clean.', 83, '2024-05-08 12:05:18'),
(446, 1, 'Preheat the oven to 375°F (190°C) and grease a baking dish.', 84, '2024-05-08 12:05:18'),
(447, 2, 'In a large bowl, mix together the flour, sugar, baking powder, and salt.', 84, '2024-05-08 12:05:18'),
(448, 3, 'In another bowl, beat together the egg, milk, and melted butter. Stir the wet mixture into the dry ingredients until just combined.', 84, '2024-05-08 12:05:18'),
(449, 4, 'Pour the batter into the prepared baking dish and bake for 25-30 minutes or until golden brown and a toothpick inserted into the center comes out clean.', 84, '2024-05-08 12:05:18'),
(450, 1, 'In a large pot, bring water to a boil. Add the pasta and cook until al dente, then drain and set aside.', 85, '2024-05-08 12:05:18'),
(451, 2, 'In a separate skillet, heat olive oil over medium heat. Add garlic and cook until fragrant.', 85, '2024-05-08 12:05:18'),
(452, 3, 'Add cherry tomatoes and cook until they start to burst. Season with salt, pepper, and red pepper flakes to taste.', 85, '2024-05-08 12:05:18'),
(453, 4, 'Add the cooked pasta to the skillet and toss to combine. Serve with fresh basil and grated Parmesan cheese.', 85, '2024-05-08 12:05:18'),
(454, 1, 'Preheat oven to 375°F (190°C) and grease a baking dish.', 86, '2024-05-08 12:05:18'),
(455, 2, 'In a large bowl, mix together the flour, sugar, baking powder, and salt.', 86, '2024-05-08 12:05:18'),
(456, 3, 'In another bowl, beat together the egg, milk, and melted butter. Stir the wet mixture into the dry ingredients until just combined.', 86, '2024-05-08 12:05:18'),
(457, 4, 'Pour the batter into the prepared baking dish and bake for 25-30 minutes or until golden brown and a toothpick inserted into the center comes out clean.', 86, '2024-05-08 12:05:18'),
(458, 1, 'Preheat the oven to 375°F (190°C) and grease a muffin tin.', 87, '2024-05-08 12:05:18'),
(459, 2, 'In a large bowl, mix together the flour, sugar, baking powder, and salt.', 87, '2024-05-08 12:05:18'),
(460, 3, 'In another bowl, beat together the egg, milk, and melted butter. Stir the wet mixture into the dry ingredients until just combined.', 87, '2024-05-08 12:05:18'),
(461, 4, 'Pour the batter into the prepared muffin tin, filling each cup about 2/3 full.', 87, '2024-05-08 12:05:18'),
(462, 5, 'Bake for 18-20 minutes or until golden brown and a toothpick inserted into the center of a muffin comes out clean.', 87, '2024-05-08 12:05:18'),
(463, 1, 'In a large bowl, combine the ground beef, breadcrumbs, egg, Worcestershire sauce, garlic powder, onion powder, salt, and pepper.', 88, '2024-05-08 12:05:18'),
(464, 2, 'Mix until well combined, then form the mixture into patties.', 88, '2024-05-08 12:05:18'),
(465, 3, 'Heat a skillet over medium heat and cook the patties for 4-5 minutes on each side, or until cooked to your desired level of doneness.', 88, '2024-05-08 12:05:18'),
(466, 4, 'Serve the burgers on buns with your favorite toppings.', 88, '2024-05-08 12:05:18'),
(467, 1, 'Preheat oven to 375°F (190°C) and grease a baking dish.', 89, '2024-05-08 12:05:18'),
(468, 2, 'In a large bowl, mix together the flour, sugar, baking powder, and salt.', 89, '2024-05-08 12:05:18'),
(469, 3, 'In another bowl, beat together the egg, milk, and melted butter. Stir the wet mixture into the dry ingredients until just combined.', 89, '2024-05-08 12:05:18'),
(470, 4, 'Pour the batter into the prepared baking dish and bake for 25-30 minutes or until golden brown and a toothpick inserted into the center comes out clean.', 89, '2024-05-08 12:05:18'),
(471, 1, 'Preheat oven to 350°F (175°C). Grease and flour a 9x5 inch loaf pan.', 90, '2024-05-08 12:05:18'),
(472, 2, 'In a large bowl, mix together mashed bananas, sugar, egg, vanilla extract, and melted butter.', 90, '2024-05-08 12:05:18'),
(473, 3, 'In another bowl, whisk together flour, baking powder, baking soda, and salt.', 90, '2024-05-08 12:05:18'),
(474, 4, 'Stir the dry ingredients into the banana mixture until just combined. Pour batter into the prepared loaf pan.', 90, '2024-05-08 12:05:18'),
(475, 5, 'Bake for 60 to 65 minutes, or until a toothpick inserted into the center of the loaf comes out clean. Let bread cool in pan for 10 minutes, then turn out onto a wire rack.', 90, '2024-05-08 12:05:18'),
(476, 1, 'Preheat oven to 350°F (175°C). Grease and flour a 9x13 inch baking dish.', 91, '2024-05-08 12:05:18'),
(477, 2, 'In a large bowl, cream together butter and sugar until smooth. Beat in eggs, then stir in vanilla extract.', 91, '2024-05-08 12:05:18'),
(478, 3, 'Combine flour, baking powder, and salt; gradually stir into the egg mixture. Fold in chocolate chips.', 91, '2024-05-08 12:05:18'),
(479, 4, 'Spread the batter evenly into the prepared baking dish. Bake for 25 to 30 minutes in preheated oven, until edges start to pull away from the sides of the pan.', 91, '2024-05-08 12:05:18'),
(480, 1, 'Preheat oven to 350°F (175°C). Grease and flour two 9-inch round cake pans.', 92, '2024-05-08 12:05:18'),
(481, 2, 'In a large bowl, cream together butter and sugar until light and fluffy. Beat in eggs, one at a time, then stir in vanilla extract.', 92, '2024-05-08 12:05:18'),
(482, 3, 'Combine flour, baking powder, and salt; gradually stir into the creamed mixture. Finally, fold in milk until batter is smooth. Pour or spoon batter into prepared cake pans.', 92, '2024-05-08 12:05:18'),
(483, 4, 'Bake for 30 to 40 minutes in preheated oven, or until a toothpick inserted into the center of the cakes comes out clean. Let cakes cool in pans for 10 minutes, then turn out onto wire racks to cool completely.', 92, '2024-05-08 12:05:18'),
(484, 1, 'Preheat oven to 375°F (190°C). Grease and flour two 9-inch round cake pans.', 93, '2024-05-08 12:05:18'),
(485, 2, 'In a large bowl, cream together butter and sugar until light and fluffy. Beat in eggs, one at a time, then stir in vanilla extract.', 93, '2024-05-08 12:05:18'),
(486, 3, 'Combine flour, cocoa, baking powder, baking soda, and salt; gradually stir into the creamed mixture. Finally, fold in coffee until batter is smooth. Pour or spoon batter into prepared cake pans.', 93, '2024-05-08 12:05:18'),
(487, 4, 'Bake for 25 to 30 minutes in preheated oven, or until a toothpick inserted into the center of the cakes comes out clean. Let cakes cool in pans for 10 minutes, then turn out onto wire racks to cool completely.', 93, '2024-05-08 12:05:18'),
(488, 1, 'Preheat oven to 350°F (175°C). Grease and flour a 9x13 inch baking dish.', 94, '2024-05-08 12:05:18'),
(489, 2, 'In a large bowl, mix together pumpkin puree, eggs, oil, water, and sugar until well blended.', 94, '2024-05-08 12:05:18'),
(490, 3, 'In another bowl, whisk together flour, baking powder, baking soda, salt, and pumpkin pie spice. Stir the dry ingredients into the pumpkin mixture until just combined. Pour batter into the prepared baking dish.', 94, '2024-05-08 12:05:18'),
(491, 4, 'Bake for 25 to 30 minutes in preheated oven, or until a toothpick inserted into the center comes out clean. Let cool before serving.', 94, '2024-05-08 12:05:18'),
(492, 1, 'Preheat oven to 350°F (175°C). Grease and flour two 9-inch round cake pans.', 95, '2024-05-08 12:05:18'),
(493, 2, 'In a large bowl, cream together butter and sugar until light and fluffy. Beat in eggs, one at a time, then stir in vanilla extract.', 95, '2024-05-08 12:05:18'),
(494, 3, 'Combine flour, baking powder, baking soda, and salt; gradually stir into the creamed mixture. Finally, fold in mashed bananas until batter is smooth. Pour or spoon batter into prepared cake pans.', 95, '2024-05-08 12:05:18'),
(495, 4, 'Bake for 25 to 30 minutes in preheated oven, or until a toothpick inserted into the center of the cakes comes out clean. Let cakes cool in pans for 10 minutes, then turn out onto wire racks to cool completely.', 95, '2024-05-08 12:05:18'),
(496, 1, 'Preheat oven to 350°F (175°C). Grease and flour a 9x13 inch baking dish.', 96, '2024-05-08 12:05:18'),
(497, 2, 'In a large bowl, mix together shredded zucchini, sugar, oil, and vanilla extract. Beat in eggs.', 96, '2024-05-08 12:05:18'),
(498, 3, 'In another bowl, whisk together flour, cocoa powder, baking soda, baking powder, and salt. Stir the dry ingredients into the zucchini mixture until well blended. Pour batter into the prepared baking dish.', 96, '2024-05-08 12:05:18'),
(499, 4, 'Bake for 50 to 55 minutes in preheated oven, or until a toothpick inserted into the center comes out clean. Let cool before serving.', 96, '2024-05-08 12:05:18'),
(500, 1, 'Preheat oven to 350°F (175°C). Grease and flour a 9x5 inch loaf pan.', 97, '2024-05-08 12:05:18'),
(501, 2, 'In a large bowl, combine flour, baking soda, baking powder, salt, cinnamon, and nutmeg. Stir in sugar, oil, eggs, and vanilla extract until well combined. Fold in grated carrots and chopped nuts if desired.', 97, '2024-05-08 12:05:18'),
(502, 3, 'Pour batter into prepared loaf pan and spread evenly. Bake in preheated oven for 50 to 60 minutes, or until a toothpick inserted into the center comes out clean.', 97, '2024-05-08 12:05:18'),
(503, 4, 'Allow the bread to cool in the pan for 10 minutes, then remove from pan and cool completely on a wire rack before slicing.', 97, '2024-05-08 12:05:18'),
(504, 1, 'Preheat oven to 350°F (175°C). Grease and flour a 9x13 inch baking dish.', 98, '2024-05-08 12:05:18'),
(505, 2, 'In a large bowl, cream together butter and sugar until smooth. Beat in eggs, then stir in vanilla. Combine flour, cocoa, baking powder, and salt; gradually stir into the butter mixture until well blended.', 98, '2024-05-08 12:05:18'),
(506, 3, 'Spread the batter evenly into the prepared baking dish. Bake for 25 to 30 minutes in preheated oven, or until the brownies begin to pull away from the edges of the pan.', 98, '2024-05-08 12:05:18'),
(507, 4, 'Let brownies cool in the pan before cutting into squares.', 98, '2024-05-08 12:05:18'),
(508, 1, 'Preheat oven to 350°F (175°C). Grease and flour a 9x13 inch baking dish.', 99, '2024-05-08 12:05:18'),
(509, 2, 'In a large bowl, mix together flour, sugar, baking powder, and salt. Stir in melted butter and milk until well combined.', 99, '2024-05-08 12:05:18'),
(510, 3, 'Pour batter into prepared baking dish and spread evenly. Arrange peaches over the batter.', 99, '2024-05-08 12:05:18'),
(511, 4, 'In a small bowl, mix together brown sugar and cinnamon. Sprinkle over the peaches.', 99, '2024-05-08 12:05:18'),
(512, 5, 'Bake in preheated oven for 35 to 40 minutes, or until a toothpick inserted into the center comes out clean. Serve warm or cold.', 99, '2024-05-08 12:05:18');

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

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` (`id`, `recipe_id`, `tip`, `updated_at`) VALUES
(1, 1, 'For extra richness, try adding a layer of chocolate ganache between cake layers.', '2024-04-29 13:27:27'),
(2, 2, 'For a smoky flavor, roast the eggplants on an open flame before mashing them for the bharta.', '2024-04-29 13:27:27'),
(3, 3, 'Let the brisket rest after cooking to allow the juices to redistribute, ensuring a juicy roast.', '2024-04-29 13:27:27'),
(4, 4, 'Brush the pie crust with egg wash before baking for a shiny, golden finish.', '2024-04-29 13:27:27'),
(5, 5, 'Marinate the beef in soy sauce, ginger, and garlic for extra flavor in your lo mein.', '2024-04-29 13:27:27'),
(6, 6, 'Parboil the potatoes before frying to ensure they are cooked through and crispy.', '2024-04-29 13:27:27'),
(7, 7, 'Serve bitterballen with a side of mustard or aioli for dipping.', '2024-04-29 13:27:27'),
(8, 8, 'Slow cook the beef in coconut milk and spices for tender and flavorful rendang.', '2024-04-29 13:27:27'),
(9, 9, 'Add chopped vegetables like onions, tomatoes, and bell peppers for extra flavor in your omelette.', '2024-04-29 13:27:27'),
(10, 10, 'Garnish the beetroot soup with a dollop of sour cream and fresh dill.', '2024-04-29 13:27:27'),
(11, 11, 'Marinate the chicken in yogurt and spices for added tenderness and flavor in your handi.', '2024-04-29 13:27:27'),
(12, 12, 'Top your fish tacos with a fresh salsa made from diced tomatoes, onions, cilantro, and lime juice.', '2024-04-29 13:27:27'),
(13, 13, 'Serve coq au vin with crusty bread to soak up the delicious sauce.', '2024-04-29 13:27:27'),
(14, 14, 'Add a splash of white wine to the hotpot for an extra layer of flavor.', '2024-04-29 13:27:27'),
(15, 15, 'Use store-bought puff pastry for a quick and easy crust for your chicken pie.', '2024-04-29 13:27:27'),
(16, 16, 'Top your congee with sliced green onions, fried shallots, and a drizzle of sesame oil for extra flavor.', '2024-04-29 13:27:27'),
(17, 17, 'Melt chocolate and caramel together for a delicious topping on your crispy treats.', '2024-04-29 13:27:27'),
(18, 18, 'Layer the trifle with sherry-soaked sponge cake, custard, and whipped cream for a classic Christmas dessert.', '2024-04-29 13:27:27'),
(19, 19, 'Serve the sausages and greens with whole grain mustard for a tangy kick.', '2024-04-29 13:27:27'),
(20, 20, 'Grill the cevapi sausages over charcoal for an authentic smoky flavor.', '2024-04-29 13:27:27'),
(21, 21, 'Add a splash of lemon juice at the end to brighten the flavors of your dal fry.', '2024-04-29 13:27:27'),
(22, 22, 'Serve Eccles cakes warm with a dollop of clotted cream.', '2024-04-29 13:27:27'),
(23, 23, 'Top Egyptian fatteh with a drizzle of tahini sauce for extra creaminess.', '2024-04-29 13:27:27'),
(24, 24, 'Toss the fettucine with freshly grated Parmesan cheese for a creamy finish.', '2024-04-29 13:27:27'),
(25, 25, 'Use a mix of Gruyere and Emmental cheese for a flavorful filling in your flamiche.', '2024-04-29 13:27:27'),
(26, 26, 'Spread the layers of feteer meshaltet with a mixture of honey and butter for a sweet touch.', '2024-04-29 13:27:27'),
(27, 27, 'Make a creamy Alfredo sauce by simmering heavy cream and garlic until thickened, then stir in Parmesan cheese.', '2024-04-29 13:27:27'),
(28, 28, 'Sprinkle chopped parsley and lemon zest over the garides saganaki for a burst of freshness.', '2024-04-29 13:27:27'),
(29, 29, 'Spread mayonnaise on the outside of the bread before grilling for a golden crust.', '2024-04-29 13:27:27'),
(30, 30, 'Marinate the salmon in a mixture of honey, soy sauce, ginger, and garlic before grilling for maximum flavor.', '2024-04-29 13:27:27'),
(31, 31, 'Rinse the rice well before cooking to remove excess starch for fluffy Japanese gohan rice.', '2024-04-29 13:27:27'),
(32, 32, 'Garnish laksa with fresh cilantro, bean sprouts, and lime wedges for a burst of freshness.', '2024-04-29 13:27:27'),
(33, 33, 'Serve lamb tagine with couscous and a side of harissa for a complete meal.', '2024-04-29 13:27:27'),
(34, 34, 'Top the lamb and potato pie with mashed potatoes for a comforting and hearty dish.', '2024-04-29 13:27:27'),
(35, 35, 'Serve leblebi soup with a squeeze of lemon juice and a sprinkle of paprika for extra flavor.', '2024-04-29 13:27:27'),
(36, 36, 'Roll the rotolo tightly and tie with kitchen twine before baking to prevent it from unraveling.', '2024-04-29 13:27:27'),
(37, 37, 'Brush the top of the minced beef pie with egg wash for a golden crust.', '2024-04-29 13:27:27'),
(38, 38, 'Dust the madeira cake with powdered sugar before serving for a decorative touch.', '2024-04-29 13:27:27'),
(39, 39, 'Add a squeeze of lemon juice to mulukhiyah for a bright and tangy flavor.', '2024-04-29 13:27:27'),
(40, 40, 'Mix whole grain mustard into the mashed potatoes for extra flavor in your champ.', '2024-04-29 13:27:27'),
(41, 41, 'Garnish osso buco alla milanese with gremolata (lemon zest, garlic, and parsley) for a burst of freshness.', '2024-04-29 13:27:27'),
(42, 42, 'Serve oxtail with broad beans with crusty bread to soak up the delicious sauce.', '2024-04-29 13:27:27'),
(43, 43, 'Top pancakes with fresh berries and maple syrup for a classic breakfast treat.', '2024-04-29 13:27:27'),
(44, 44, 'Serve parkin cake with a dollop of whipped cream or vanilla ice cream.', '2024-04-29 13:27:27'),
(45, 45, 'Top provençal omelette cake with grated cheese and broil until golden and bubbly.', '2024-04-29 13:27:27'),
(46, 46, 'Serve Polskie naleśniki with a dusting of powdered sugar and a drizzle of honey.', '2024-04-29 13:27:27'),
(47, 47, 'Marinate the chicken in piri-piri sauce for a spicy kick.', '2024-04-29 13:27:27'),
(48, 48, 'Serve Portuguese prego with green piri-piri with french fries and a side salad.', '2024-04-29 13:27:27'),
(49, 49, 'Garnish Portuguese fish stew with chopped cilantro and serve with crusty bread.', '2024-04-29 13:27:27'),
(50, 50, 'Mix diced pickles and peas into the potato salad for extra crunch and flavor.', '2024-04-29 13:27:27'),
(51, 8, 'Use a mixture of fresh and dried chilies for a complex flavor in your beef rendang.', '2024-04-29 13:30:12'),
(52, 11, 'Garnish chicken handi with fresh cilantro and serve with naan or rice for a complete meal.', '2024-04-29 13:30:12'),
(53, 14, 'Layer sliced potatoes on top of the hotpot before baking for a crispy topping.', '2024-04-29 13:30:12'),
(54, 18, 'For a festive touch, garnish the Christmas pudding trifle with edible gold leaf or sprinkles.', '2024-04-29 13:30:12'),
(55, 20, 'Serve cevapi sausages with ajvar (red pepper relish) and freshly baked bread.', '2024-04-29 13:30:12'),
(56, 23, 'Top Egyptian fatteh with fried pine nuts and a drizzle of olive oil for extra richness.', '2024-04-29 13:30:12'),
(57, 25, 'Add a pinch of nutmeg and cinnamon to the filling for a warm and comforting flavor in your flamiche.', '2024-04-29 13:30:12'),
(58, 27, 'For a decadent twist, add cooked shrimp or lobster to your fettuccine alfredo.', '2024-04-29 13:30:12'),
(59, 29, 'Spread a layer of macaroni and cheese between slices of bread for extra creaminess in your grilled sandwich.', '2024-04-29 13:30:12'),
(60, 31, 'Toast the rice in a dry skillet before cooking to enhance its nutty flavor for Japanese gohan rice.', '2024-04-29 13:30:12'),
(61, 33, 'Add dried apricots and preserved lemons to your lamb tagine for a Moroccan-inspired flavor profile.', '2024-04-29 13:30:12'),
(62, 35, 'Serve leblebi soup with a dollop of yogurt and a sprinkle of smoked paprika for extra creaminess and flavor.', '2024-04-29 13:30:12'),
(63, 37, 'For a golden and flaky crust, brush the top of the minced beef pie with melted butter before baking.', '2024-04-29 13:30:12'),
(64, 39, 'Add a splash of vinegar or lemon juice to your mulukhiyah for a tangy kick.', '2024-04-29 13:30:12'),
(65, 41, 'Serve osso buco alla milanese with creamy polenta or mashed potatoes to soak up the delicious sauce.', '2024-04-29 13:30:12'),
(66, 43, 'For fluffy pancakes, let the batter rest for 10-15 minutes before cooking.', '2024-04-29 13:30:12'),
(67, 45, 'Top provençal omelette cake with sautéed mushrooms and spinach for an extra savory twist.', '2024-04-29 13:30:12'),
(68, 47, 'Marinate the chicken in piri-piri sauce overnight for maximum flavor penetration.', '2024-04-29 13:30:12'),
(69, 49, 'Serve Portuguese fish stew with crusty bread for dipping into the flavorful broth.', '2024-04-29 13:30:12'),
(70, 3, 'Sear the brisket before roasting for a caramelized crust and deeper flavor in your pot roast.', '2024-04-29 13:30:12'),
(71, 5, 'For a vegetarian option, substitute beef with tofu or seitan in your lo mein recipe.', '2024-04-29 13:30:12'),
(72, 7, 'Serve bitterballen with a side of tangy mustard for dipping.', '2024-04-29 13:30:12'),
(73, 9, 'Add diced bell peppers and shredded cheese for a Tex-Mex twist on your bread omelette.', '2024-04-29 13:30:12'),
(74, 13, 'For a richer sauce, reduce the wine and chicken stock before adding to the coq au vin.', '2024-04-29 13:30:12'),
(75, 15, 'Top your chicken ham and leek pie with puff pastry for an extra crispy crust.', '2024-04-29 13:30:12'),
(77, 51, 'For extra richness, try adding a layer of chocolate ganache between cake layers.', '2024-05-08 11:40:09'),
(78, 52, 'For a smoky flavor, roast the eggplants on an open flame before mashing them for the bharta.', '2024-05-08 11:40:09'),
(79, 53, 'Let the brisket rest after cooking to allow the juices to redistribute, ensuring a juicy roast.', '2024-05-08 11:40:09'),
(80, 54, 'Brush the pie crust with egg wash before baking for a shiny, golden finish.', '2024-05-08 11:40:09'),
(81, 55, 'Marinate the beef in soy sauce, ginger, and garlic for extra flavor in your lo mein.', '2024-05-08 11:40:09'),
(82, 56, 'Parboil the potatoes before frying to ensure they are cooked through and crispy.', '2024-05-08 11:40:09'),
(83, 57, 'Serve bitterballen with a side of mustard or aioli for dipping.', '2024-05-08 11:40:09'),
(84, 58, 'Slow cook the beef in coconut milk and spices for tender and flavorful rendang.', '2024-05-08 11:40:09'),
(85, 59, 'Add chopped vegetables like onions, tomatoes, and bell peppers for extra flavor in your omelette.', '2024-05-08 11:40:09'),
(86, 60, 'Garnish the beetroot soup with a dollop of sour cream and fresh dill.', '2024-05-08 11:40:09'),
(87, 61, 'Marinate the chicken in yogurt and spices for added tenderness and flavor in your handi.', '2024-05-08 11:40:09'),
(88, 62, 'Top your fish tacos with a fresh salsa made from diced tomatoes, onions, cilantro, and lime juice.', '2024-05-08 11:40:09'),
(89, 63, 'Serve coq au vin with crusty bread to soak up the delicious sauce.', '2024-05-08 11:40:09'),
(90, 64, 'Add a splash of white wine to the hotpot for an extra layer of flavor.', '2024-05-08 11:40:09'),
(91, 65, 'Use store-bought puff pastry for a quick and easy crust for your chicken pie.', '2024-05-08 11:40:09'),
(92, 66, 'Top your congee with sliced green onions, fried shallots, and a drizzle of sesame oil for extra flavor.', '2024-05-08 11:40:09'),
(108, 67, 'Layer the trifle with sherry-soaked sponge cake, custard, and whipped cream for a classic Christmas dessert.', '2024-05-08 11:42:30'),
(109, 68, 'Serve the sausages and greens with whole grain mustard for a tangy kick.', '2024-05-08 11:42:30'),
(110, 69, 'Grill the cevapi sausages over charcoal for an authentic smoky flavor.', '2024-05-08 11:42:30'),
(111, 70, 'Add a splash of lemon juice at the end to brighten the flavors of your dal fry.', '2024-05-08 11:42:30'),
(112, 71, 'Serve Eccles cakes warm with a dollop of clotted cream.', '2024-05-08 11:42:30'),
(113, 72, 'Top Egyptian fatteh with a drizzle of tahini sauce for extra creaminess.', '2024-05-08 11:42:30'),
(114, 73, 'Toss the fettucine with freshly grated Parmesan cheese for a creamy finish.', '2024-05-08 11:42:30'),
(115, 74, 'Use a mix of Gruyere and Emmental cheese for a flavorful filling in your flamiche.', '2024-05-08 11:42:30'),
(116, 75, 'Spread the layers of feteer meshaltet with a mixture of honey and butter for a sweet touch.', '2024-05-08 11:42:30'),
(117, 76, 'Make a creamy Alfredo sauce by simmering heavy cream and garlic until thickened, then stir in Parmesan cheese.', '2024-05-08 11:42:30'),
(118, 77, 'Sprinkle chopped parsley and lemon zest over the garides saganaki for a burst of freshness.', '2024-05-08 11:42:30'),
(119, 78, 'Spread mayonnaise on the outside of the bread before grilling for a golden crust.', '2024-05-08 11:42:30'),
(120, 79, 'Marinate the salmon in a mixture of honey, soy sauce, ginger, and garlic before grilling for maximum flavor.', '2024-05-08 11:42:30'),
(121, 80, 'Rinse the rice well before cooking to remove excess starch for fluffy Japanese gohan rice.', '2024-05-08 11:42:30'),
(122, 81, 'Garnish laksa with fresh cilantro, bean sprouts, and lime wedges for a burst of freshness.', '2024-05-08 11:42:30'),
(123, 82, 'Serve lamb tagine with couscous and a side of harissa for a complete meal.', '2024-05-08 11:42:30'),
(124, 83, 'Top the lamb and potato pie with mashed potatoes for a comforting and hearty dish.', '2024-05-08 11:42:30'),
(125, 84, 'Serve leblebi soup with a squeeze of lemon juice and a sprinkle of paprika for extra flavor.', '2024-05-08 11:42:30'),
(126, 85, 'Roll the rotolo tightly and tie with kitchen twine before baking to prevent it from unraveling.', '2024-05-08 11:42:30'),
(127, 86, 'Brush the top of the minced beef pie with egg wash for a golden crust.', '2024-05-08 11:42:30'),
(128, 87, 'Dust the madeira cake with powdered sugar before serving for a decorative touch.', '2024-05-08 11:42:30'),
(129, 88, 'Add a squeeze of lemon juice to mulukhiyah for a bright and tangy flavor.', '2024-05-08 11:42:30'),
(130, 89, 'Mix whole grain mustard into the mashed potatoes for extra flavor in your champ.', '2024-05-08 11:42:30'),
(131, 90, 'Garnish osso buco alla milanese with gremolata (lemon zest, garlic, and parsley) for a burst of freshness.', '2024-05-08 11:42:30'),
(132, 91, 'Serve oxtail with broad beans with crusty bread to soak up the delicious sauce.', '2024-05-08 11:42:30'),
(133, 92, 'Top pancakes with fresh berries and maple syrup for a classic breakfast treat.', '2024-05-08 11:42:30'),
(134, 93, 'Serve parkin cake with a dollop of whipped cream or vanilla ice cream.', '2024-05-08 11:42:30'),
(135, 94, 'Top provençal omelette cake with grated cheese and broil until golden and bubbly.', '2024-05-08 11:42:30'),
(136, 95, 'Serve Polskie naleśniki with a dusting of powdered sugar and a drizzle of honey.', '2024-05-08 11:42:30'),
(137, 96, 'Marinate the chicken in piri-piri sauce for a spicy kick.', '2024-05-08 11:42:30'),
(138, 97, 'Serve Portuguese prego with green piri-piri with french fries and a side salad.', '2024-05-08 11:42:30'),
(139, 98, 'Garnish Portuguese fish stew with chopped cilantro and serve with crusty bread.', '2024-05-08 11:42:30'),
(140, 99, 'Mix diced pickles and peas into the potato salad for extra crunch and flavor.', '2024-05-08 11:42:30');

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

--
-- Dumping data for table `unit_conversions`
--

INSERT INTO `unit_conversions` (`id`, `measurement_unit`, `quantity`, `updated_at`) VALUES
(1, 'grams', 1, '2024-05-09 14:22:13'),
(2, 'large', 50, '2024-05-09 14:20:54'),
(3, 'pound', 450, '2024-05-09 14:20:54'),
(4, 'lb', 450, '2024-05-09 14:20:54'),
(5, 'medium', 40, '2024-05-09 14:20:54'),
(6, 'units', 50, '2024-05-09 14:20:54'),
(7, 'kg', 1000, '2024-05-09 14:20:54'),
(8, 'tablespoons', 15, '2024-05-09 14:20:54'),
(9, 'ml', 1, '2024-05-09 14:20:54'),
(10, 'chopped', 50, '2024-05-09 14:20:54'),
(11, 'bunch', 50, '2024-05-09 14:20:54'),
(12, 'cups', 240, '2024-05-09 14:20:54'),
(13, 'shanks', 50, '2024-05-09 14:20:54'),
(14, 'clove', 50, '2024-05-09 14:20:54'),
(15, 'dash', 1, '2024-05-09 14:20:54'),
(16, 'pinch', 1, '2024-05-09 19:56:18'),
(17, 'sliced', 50, '2024-05-09 14:20:54'),
(18, 'teaspoons', 5, '2024-05-09 14:20:54'),
(19, 'dry-cured', 50, '2024-05-09 14:20:54'),
(20, 'diced', 50, '2024-05-09 14:20:54'),
(21, 'small', 30, '2024-05-09 14:20:54'),
(22, 'strips', 50, '2024-05-09 14:20:54'),
(23, 'fillets', 50, '2024-05-09 14:20:54'),
(24, 'teaspoon', 5, '2024-05-09 14:20:54'),
(25, 'garnish', 50, '2024-05-09 14:20:54'),
(26, 'cloves', 5, '2024-05-09 16:32:28'),
(27, 'sprig', 2, '2024-05-09 16:32:28'),
(28, 'minced', 15, '2024-05-09 16:32:28'),
(29, 'grated', 15, '2024-05-09 16:32:28'),
(30, 'can', 200, '2024-05-09 16:32:28'),
(31, 'sprigs', 10, '2024-05-09 16:32:28'),
(32, 'litre', 1000, '2024-05-09 16:32:28'),
(33, 'pieces', 50, '2024-05-09 16:32:28'),
(34, 'serve', 50, '2024-05-09 16:32:28'),
(35, 'leaves', 2, '2024-05-09 16:32:28'),
(36, 'shredded', 25, '2024-05-09 16:32:28'),
(37, 'glaze', 50, '2024-05-09 16:32:28'),
(38, 'handfuls', 50, '2024-05-09 16:32:28'),
(39, 'pack', 50, '2024-05-09 16:32:28'),
(40, 'halved', 50, '2024-05-09 16:32:28');

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
-- Indexes for table `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contests`
--
ALTER TABLE `contests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episode_id` (`episode_id`),
  ADD KEY `chef_id` (`chef_id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment_requirements`
--
ALTER TABLE `equipment_requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eq` (`equipment_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `food_group`
--
ALTER TABLE `food_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_recipes`
--
ALTER TABLE `image_recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_group_id` (`food_group_id`);

--
-- Indexes for table `ingredient_quantities`
--
ALTER TABLE `ingredient_quantities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredient_id` (`ingredient_id`),
  ADD KEY `recipe_id` (`recipe_id`);

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
-- Indexes for table `meal_type`
--
ALTER TABLE `meal_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `national_cuisine`
--
ALTER TABLE `national_cuisine`
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
-- Indexes for table `recipe-labels`
--
ALTER TABLE `recipe-labels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `labels_id` (`labels_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `recipe-meal_type`
--
ALTER TABLE `recipe-meal_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `meal_type_id` (`meal_type_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `basic_ingredient_id` (`basic_ingredient_id`),
  ADD KEY `national_cuisine_id` (`national_cuisine_id`);

--
-- Indexes for table `recipes-themes`
--
ALTER TABLE `recipes-themes`
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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `chef`
--
ALTER TABLE `chef`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `contests`
--
ALTER TABLE `contests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `equipment_requirements`
--
ALTER TABLE `equipment_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `food_group`
--
ALTER TABLE `food_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `image_recipes`
--
ALTER TABLE `image_recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `ingredient_quantities`
--
ALTER TABLE `ingredient_quantities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1037;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `meal_type`
--
ALTER TABLE `meal_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `national_cuisine`
--
ALTER TABLE `national_cuisine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `nutritional_info`
--
ALTER TABLE `nutritional_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipe-labels`
--
ALTER TABLE `recipe-labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=577;

--
-- AUTO_INCREMENT for table `recipe-meal_type`
--
ALTER TABLE `recipe-meal_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `recipes-themes`
--
ALTER TABLE `recipes-themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specializes`
--
ALTER TABLE `specializes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `steps`
--
ALTER TABLE `steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `unit_conversions`
--
ALTER TABLE `unit_conversions`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`),
  ADD CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`national_cuisine_id`) REFERENCES `national_cuisine` (`id`),
  ADD CONSTRAINT `assignments_ibfk_3` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`id`),
  ADD CONSTRAINT `assignments_ibfk_4` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`);

--
-- Constraints for table `contests`
--
ALTER TABLE `contests`
  ADD CONSTRAINT `contests_ibfk_1` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`),
  ADD CONSTRAINT `contests_ibfk_2` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`id`);

--
-- Constraints for table `equipment_requirements`
--
ALTER TABLE `equipment_requirements`
  ADD CONSTRAINT `eq` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`id`),
  ADD CONSTRAINT `equipment_requirements_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`);

--
-- Constraints for table `image_recipes`
--
ALTER TABLE `image_recipes`
  ADD CONSTRAINT `image_recipes_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`);

--
-- Constraints for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD CONSTRAINT `Ingredient_ibfk_1` FOREIGN KEY (`food_group_id`) REFERENCES `food_group` (`id`);

--
-- Constraints for table `ingredient_quantities`
--
ALTER TABLE `ingredient_quantities`
  ADD CONSTRAINT `ingredient_quantities_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  ADD CONSTRAINT `ingredient_quantities_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`);

--
-- Constraints for table `judges`
--
ALTER TABLE `judges`
  ADD CONSTRAINT `judges_ibfk_1` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`),
  ADD CONSTRAINT `judges_ibfk_2` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`id`);

--
-- Constraints for table `nutritional_info`
--
ALTER TABLE `nutritional_info`
  ADD CONSTRAINT `Nutritional_info_ibfk_1` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`id`),
  ADD CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`);

--
-- Constraints for table `recipe-labels`
--
ALTER TABLE `recipe-labels`
  ADD CONSTRAINT `recipe-labels_ibfk_1` FOREIGN KEY (`labels_id`) REFERENCES `labels` (`id`),
  ADD CONSTRAINT `recipe-labels_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`);

--
-- Constraints for table `recipe-meal_type`
--
ALTER TABLE `recipe-meal_type`
  ADD CONSTRAINT `recipe-meal_type_ibfk_3` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  ADD CONSTRAINT `recipe-meal_type_ibfk_4` FOREIGN KEY (`meal_type_id`) REFERENCES `meal_type` (`id`);

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`basic_ingredient_id`) REFERENCES `ingredient` (`id`),
  ADD CONSTRAINT `recipes_ibfk_2` FOREIGN KEY (`national_cuisine_id`) REFERENCES `national_cuisine` (`id`);

--
-- Constraints for table `recipes-themes`
--
ALTER TABLE `recipes-themes`
  ADD CONSTRAINT `recipes-themes_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  ADD CONSTRAINT `recipes-themes_ibfk_2` FOREIGN KEY (`themes_id`) REFERENCES `themes` (`id`);

--
-- Constraints for table `specializes`
--
ALTER TABLE `specializes`
  ADD CONSTRAINT `specializes_ibfk_1` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`id`),
  ADD CONSTRAINT `specializes_ibfk_2` FOREIGN KEY (`national_cuisine_id`) REFERENCES `national_cuisine` (`id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
