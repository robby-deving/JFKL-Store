-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2024 at 10:03 PM
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
-- Database: `dbms_sari_sari_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_sales`
--

CREATE TABLE `all_sales` (
  `sale_id` int(11) NOT NULL,
  `sale_date` date DEFAULT NULL,
  `sale_time` time DEFAULT NULL,
  `sale_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_sales_summary`
--

CREATE TABLE `daily_sales_summary` (
  `id` int(11) NOT NULL,
  `sale_date` date DEFAULT NULL,
  `total_sale` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(70) NOT NULL,
  `net_weight` varchar(10) DEFAULT NULL,
  `unit` varchar(15) NOT NULL DEFAULT 'Piece',
  `category` varchar(30) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `retail_price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `picture_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`product_id`, `product_name`, `net_weight`, `unit`, `category`, `unit_price`, `retail_price`, `stock`, `picture_url`) VALUES
(1, 'Argentina Meatloaf', '150g', 'Piece', 'Canned Goods', 21.00, 27.00, 40, ''),
(2, 'Argentina Corn Beef', '150g', 'Piece', 'Canned Goods', 32.40, 39.00, 40, ''),
(3, 'Century Tuna Flakes in Oil', '155g', 'Piece', 'Canned Goods', 35.00, 39.00, 40, ''),
(4, 'Century Tuna Flakes in Oil', '155g', 'Piece', 'Canned Goods', 35.00, 39.00, 40, ''),
(5, 'Fresca Tuna Adobo', '175g', 'Piece', 'Canned Goods', 27.00, 32.00, 6, ''),
(6, 'Fresca Tuna Afritada', '175g', 'Piece', 'Canned Goods', 27.00, 32.00, 6, ''),
(7, 'Fresca Tuna Caldereta', '175g', 'Piece', 'Canned Goods', 27.00, 32.00, 6, ''),
(8, 'Fresca Tuna Flakes in Oil', '175g', 'Piece', 'Canned Goods', 27.00, 32.00, 6, ''),
(9, 'Fresca Tuna Mechado', '175g', 'Piece', 'Canned Goods', 27.00, 32.00, 6, ''),
(10, 'Lucky 7 Carne Norte', '100g', 'Piece', 'Canned Goods', 14.38, 18.00, 40, ''),
(11, 'Lucky 7 Carne Norte', '150g', 'Piece', 'Canned Goods', 19.25, 25.00, 40, ''),
(12, 'Mega Sardines Green', '155g', 'Piece', 'Canned Goods', 22.86, 26.00, 50, ''),
(13, 'Mega Sardines Red', '155g', 'Piece', 'Canned Goods', 22.86, 26.00, 50, ''),
(14, 'San Marino Chili Corned Tuna', '150g', 'Piece', 'Canned Goods', 39.00, 43.00, 6, ''),
(15, 'San Marino Corned Tuna', '150g', 'Piece', 'Canned Goods', 39.00, 43.00, 6, ''),
(16, 'Wow Ulam Adobo', '155g', 'Piece', 'Canned Goods', 24.00, 27.00, 6, ''),
(17, 'Wow Ulam Afritada', '155g', 'Piece', 'Canned Goods', 24.00, 27.00, 6, ''),
(18, 'Wow Ulam Caldereta', '155g', 'Piece', 'Canned Goods', 24.00, 27.00, 6, ''),
(19, 'Wow Ulam Mechado', '155g', 'Piece', 'Canned Goods', 24.00, 27.00, 6, ''),
(20, 'Wow Ulam Menudo', '155g', 'Piece', 'Canned Goods', 24.00, 27.00, 6, ''),
(21, 'Youngs Town Green', '155g', 'Piece', 'Canned Goods', 21.47, 26.00, 50, ''),
(22, 'Youngs Town Red', '155g', 'Piece', 'Canned Goods', 21.47, 26.00, 50, ''),
(23, 'Gardenia Butter Toast', '25g', 'Piece', 'Bread', 13.65, 15.00, 5, 'Gardenia Butter Toast 25g.png'),
(24, 'Gardenia Chocolate Filled Buns', '75g', 'Piece', 'Bread', 16.35, 20.00, 5, 'Gardenia Chocolate Filled Buns 75g.png'),
(25, 'Gardenia Clustered Cheese Buns', '250g', 'Piece', 'Bread', 56.35, 62.00, 5, 'Gardenia Clustered Cheese Buns 250g.png'),
(26, 'Gardenia Multigrain Soft Bun', '120g', 'Piece', 'Bread', 37.30, 40.00, 5, 'Gardenia Multigrain Soft Bun 120g.png'),
(27, 'Gardenia NeuBake Choco Bread Roll', '150g', 'Piece', 'Bread', 30.90, 35.00, 5, 'Gardenia NeuBake Choco Bread Roll 150g.png'),
(28, 'Gardenia NeuBake Monggo Bread Roll', '150g', 'Piece', 'Bread', 30.90, 35.00, 5, 'Gardenia NeuBake Monggo Bread Roll 150g.png'),
(29, 'Gardenia NeuBake Spanish Bread', '150g', 'Piece', 'Bread', 29.10, 35.00, 5, 'Gardenia NeuBake Spanish Bread 150g.png'),
(30, 'Gardenia NeuBake White Bread', '450g', 'Piece', 'Bread', 49.10, 54.00, 5, 'Gardenia NeuBake White Bread 450g.png'),
(31, 'Gardenia Soft Delight Pandesal Family Pack', '300g', 'Piece', 'Bread', 49.10, 54.00, 5, 'Gardenia Soft Delight Pandesal Family Pack 300g.png'),
(32, 'Gardenia Ube Filled Buns', '75g', 'Piece', 'Bread', 16.35, 20.00, 5, 'Gardenia Ube Filled Buns 75g.png'),
(33, 'Gardenia White Bread Classic', '400g', 'Piece', 'Bread', 53.20, 58.50, 5, 'Gardenia White Bread Classic 400g.png'),
(34, 'Gardenia White Bread Classic', '600g', 'Piece', 'Bread', 77.30, 85.00, 5, 'Gardenia White Bread Classic 600g.png'),
(35, 'Bingo Chocolate', '28g', 'Piece', 'Biscuits', 5.50, 8.00, 20, 'Bingo Chocolate 28g.png'),
(36, 'Bingo Vanilla', '28g', 'Piece', 'Biscuits', 5.50, 8.00, 20, 'Bingo Vanilla 28g.png'),
(37, 'CalCheese', '48g', 'Piece', 'Biscuits', 11.00, 12.00, 12, 'CalCheese 48g.png'),
(38, 'ChocoMucho Cookies Choco Caramel', '38g', 'Piece', 'Biscuits', 7.50, 10.00, 20, 'ChocoMucho Cookies Choco Caramel 38g.png'),
(39, 'Cream-O Choco', '33g', 'Piece', 'Biscuits', 7.50, 10.00, 20, 'Cream-O Choco 33g.png'),
(40, 'Cream-O Vanilla', '33g', 'Piece', 'Biscuits', 7.50, 10.00, 20, 'Cream-O Vanilla 33g.png'),
(41, 'Dewberry Bluberries n Cream', '33g', 'Piece', 'Biscuits', 7.50, 10.00, 20, 'Dewberry Bluberries n Cream 33g.png'),
(42, 'Dewberry Blueberry Cheesecake', '33g', 'Piece', 'Biscuits', 7.50, 10.00, 20, 'Dewberry Blueberry Cheesecake 33g.png'),
(43, 'Dewberry Blueberry Cheesecake', '33g', 'Piece', 'Biscuits', 7.50, 10.00, 20, 'Dewberry Blueberry Cheesecake 33g.png'),
(44, 'Doowee Donut Chocolate', '42g', 'Piece', 'Biscuits', 9.90, 12.00, 20, 'Doowee Donut Chocolate 42g.png'),
(45, 'Doowee Donut Milk', '42g', 'Piece', 'Biscuits', 9.90, 12.00, 20, 'Doowee Donut Milk 42g.png'),
(46, 'Doowee Donut Strawberry', '42g', 'Piece', 'Biscuits', 9.90, 12.00, 20, 'Doowee Donut Strawberry 42g.png'),
(47, 'FITA Crackers', '30g', 'Piece', 'Biscuits', 5.90, 8.00, 20, 'FITA Crackers 30g.png'),
(48, 'Fudgee Bar Chocolate', '40g', 'Piece', 'Biscuits', 7.20, 9.00, 20, 'Fudgee Bar Chocolate 40g.png'),
(49, 'Fudgee Bar Dark Chocolate', '38g', 'Piece', 'Biscuits', 7.20, 9.00, 20, 'Fudgee Bar Dark Chocolate 38g.png'),
(50, 'Fudgee Bar Vanilla', '38g', 'Piece', 'Biscuits', 7.20, 9.00, 20, 'Fudgee Bar Vanilla 38g.png'),
(51, 'Hansel Chocolate Sandwich', '31g', 'Piece', 'Biscuits', 5.50, 8.00, 20, 'Hansel Chocolate Sandwich 31g.png'),
(52, 'Hansel Crackers', '31g', 'Piece', 'Biscuits', 5.50, 8.00, 20, 'Hansel Crackers 31g.png'),
(53, 'Hansel Crackers Cheese', '31g', 'Piece', 'Biscuits', 5.50, 8.00, 20, 'Hansel Crackers Cheese 31g.png'),
(54, 'Hansel Mocha Sandwich', '31g', 'Piece', 'Biscuits', 5.50, 8.00, 20, 'Hansel Mocha Sandwich 31g.png'),
(55, 'Lemon Square Cheese Cake', '30g', 'Piece', 'Biscuits', 8.20, 9.00, 20, 'Lemon Square Cheese Cake 30g.png'),
(56, 'Lemon Square ChooChoo Cake Bites', '38g', 'Piece', 'Biscuits', 7.70, 10.00, 20, 'Lemon Square ChooChoo Cake Bites 38g.png'),
(57, 'Lemon Square Cookie Bites Butter Cookies', '24g', 'Piece', 'Biscuits', 6.80, 10.00, 20, 'Lemon Square Cookie Bites Butter Cookies 24g.png'),
(58, 'Lemon Square Cookie Bites Cheese Cake', '18g', 'Piece', 'Biscuits', 6.90, 10.00, 20, 'Lemon Square Cookie Bites Cheese Cake 18g.png'),
(59, 'Lemon Square Cookie Bites Chocolate', '18g', 'Piece', 'Biscuits', 6.90, 10.00, 20, 'Lemon Square Cookie Bites Chocolate 18g.png'),
(60, 'Lemon Square Whatta Tops Chocolate', '35g', 'Piece', 'Biscuits', 7.20, 9.00, 20, 'Lemon Square Whatta Tops Chocolate 35g.png'),
(61, 'Lemon Square Whatta Tops Cookies and Cream', '35g', 'Piece', 'Biscuits', 7.20, 9.00, 20, 'Lemon Square Whatta Tops Cookies and Cream 35g.png'),
(62, 'Lemon Square Whatta Tops Mango Graham', '35g', 'Piece', 'Biscuits', 7.40, 9.00, 20, 'Lemon Square Whatta Tops Mango Graham 35g.png'),
(63, 'Lemon Square Whatta Tops Vanilla Cream', '35g', 'Piece', 'Biscuits', 7.20, 9.00, 20, 'Lemon Square Whatta Tops Vanilla Cream 35g.png'),
(64, 'Lemonsquare Lava Cake Chocolate', '40g', 'Piece', 'Biscuits', 7.10, 9.00, 20, 'Lemonsquare Lava Cake Chocolate 40g.png'),
(65, 'Pillows Chocolate-Filled Crackers', '24g', 'Piece', 'Biscuits', 5.50, 8.00, 20, 'Pillows Chocolate-Filled Crackers 24g.png'),
(66, 'Pillows Ube-Filled Crackers', '24g', 'Piece', 'Biscuits', 5.50, 8.00, 20, 'Pillows Ube-Filled Crackers 24g.png'),
(67, 'Rebisco Butter', '32g', 'Piece', 'Biscuits', 6.20, 8.00, 20, 'Rebisco Butter 32g.png'),
(68, 'Rebisco Choco', '32g', 'Piece', 'Biscuits', 6.20, 8.00, 20, 'Rebisco Choco 32g.png'),
(69, 'Rebisco Crackers', '32g', 'Piece', 'Biscuits', 6.20, 8.00, 20, 'Rebisco Crackers 32g.png'),
(70, 'Rebisco Pastillas', '32g', 'Piece', 'Biscuits', 6.20, 8.00, 20, 'Rebisco Pastillas 32g.png'),
(71, 'Rebisco Peanut Butter', '32g', 'Piece', 'Biscuits', 6.20, 8.00, 20, 'Rebisco Peanut Butter 32g.png'),
(72, 'Rebisco Strawberry', '32g', 'Piece', 'Biscuits', 6.20, 8.00, 20, 'Rebisco Strawberry 32g.png'),
(73, 'Sky Flakes Crackers', '25g', 'Piece', 'Biscuits', 5.90, 8.00, 20, 'Sky Flakes Crackers 25g.png'),
(74, 'Wafello', '48g', 'Piece', 'Biscuits', 11.00, 12.00, 12, 'Wafello 48g.png'),
(75, 'Whoopie Mallow Cake Choco Loco', '34g', 'Piece', 'Biscuits', 8.00, 10.00, 20, 'Whoopie Mallow Cake Choco Loco 34g.png'),
(76, 'Whoopie Mallow Cake Strawberry Blowout', '34g', 'Piece', 'Biscuits', 8.00, 10.00, 20, 'Whoopie Mallow Cake Strawberry Blowout 34g.png'),
(77, 'Big Boy Crackers', '40g', 'Piece', 'Junk Foods', 7.00, 8.00, 25, 'Big Boy Crackers 40g.png'),
(78, 'Cheese Ring Snack', '25g', 'Piece', 'Junk Foods', 5.00, 9.00, 25, 'Cheese Ring Snack 25g.png'),
(79, 'Cheez It Cheeze', '25g', 'Piece', 'Junk Foods', 6.18, 8.00, 25, 'Cheez It Cheeze 25g.png'),
(80, 'Cheezy Snack', '24g', 'Piece', 'Junk Foods', 6.90, 8.00, 25, 'Cheezy Snack 24g.png'),
(81, 'Chippy', '27g', 'Piece', 'Junk Foods', 6.71, 8.00, 25, 'Chippy 27g.png'),
(82, 'Choco Chum Choco Burst', '32g', 'Piece', 'Junk Foods', 7.60, 10.00, 25, 'Choco Chum Choco Burst 32g.png'),
(83, 'Choco Chum White Choco Burst', '32g', 'Piece', 'Junk Foods', 7.60, 10.00, 25, 'Choco Chum White Choco Burst 32g.png'),
(84, 'Clover Chips Cheese', '24g', 'Piece', 'Junk Foods', 6.95, 9.00, 25, 'Clover Chips Cheese 24g.png'),
(85, 'Dragon Sid', '20g', 'Piece', 'Junk Foods', 7.50, 9.00, 25, 'Dragon Sid 20g.png'),
(86, 'EC Crunchy Choco Flake', '60g', 'Piece', 'Junk Foods', 9.90, 12.00, 25, 'EC Crunchy Choco Flake 60g.png'),
(87, 'Mang Juan Espesyal Sukat Sli', '26g', 'Piece', 'Junk Foods', 6.70, 9.00, 25, 'Mang Juan Espesyal Sukat Sli 26g.png'),
(88, 'Mang Juan Espesyal Sukat Sli', '90g', 'Piece', 'Junk Foods', 20.00, 25.00, 12, 'Mang Juan Espesyal Sukat Sli 90g.png'),
(89, 'Mang Juan Sukang Paombong', '26g', 'Piece', 'Junk Foods', 6.70, 9.00, 25, 'Mang Juan Sukang Paombong 26g.png'),
(90, 'Mang Juan Sukang Paombong', '90g', 'Piece', 'Junk Foods', 20.00, 25.00, 12, 'Mang Juan Sukang Paombong 90g.png'),
(91, 'Martys Craklin Spicy Vinegar Flavor', '26g', 'Piece', 'Junk Foods', 6.15, 8.00, 25, 'Martys Craklin Spicy Vinegar Flavor 26g.png'),
(92, 'Moby Caramel Puffs', '25g', 'Piece', 'Junk Foods', 6.50, 8.00, 25, 'Moby Caramel Puffs 25g.png'),
(93, 'Moby Crunchy Chocolate', '25g', 'Piece', 'Junk Foods', 6.50, 8.00, 25, 'Moby Crunchy Chocolate 25g.png'),
(94, 'Oishi Bread Pan Buttered Toast Flavor', '24g', 'Piece', 'Junk Foods', 6.30, 8.00, 25, 'Oishi Bread Pan Buttered Toast Flavor 24g.png'),
(95, 'Oishi Cracklings', '24g', 'Piece', 'Junk Foods', 6.15, 8.00, 25, 'Oishi Cracklings 24g.png'),
(96, 'Oishi Crispy Patata Snack', '24g', 'Piece', 'Junk Foods', 6.30, 8.00, 25, 'Oishi Crispy Patata Snack 24g.png'),
(97, 'Oishi Onion Rings', '16g', 'Piece', 'Junk Foods', 6.50, 8.00, 25, 'Oishi Onion Rings 16g.png'),
(98, 'Oishi Pods', '28g', 'Piece', 'Junk Foods', 6.20, 8.00, 25, 'Oishi Pods 28g.png'),
(99, 'Oishi Potato Fries Barbeque Flavor', '21g', 'Piece', 'Junk Foods', 6.30, 8.00, 25, 'Oishi Potato Fries Barbeque Flavor 21g.png'),
(100, 'Oishi Potato Fries Plain Salted', '21g', 'Piece', 'Junk Foods', 6.30, 8.00, 25, 'Oishi Potato Fries Plain Salted 21g.png'),
(101, 'Oishi Prawn Crackers Spicy Flavor', '24g', 'Piece', 'Junk Foods', 6.20, 8.00, 25, 'Oishi Prawn Crackers Spicy Flavor 24g.png'),
(102, 'Oishi Prawn Crackers Sweet and Extra Hot Flavor', '24g', 'Piece', 'Junk Foods', 6.20, 8.00, 25, 'Oishi Prawn Crackers Sweet and Extra Hot Flavor 24g.png'),
(103, 'PeeWee Sizzling Bbq', '25g', 'Piece', 'Junk Foods', 6.20, 8.00, 25, 'PeeWee Sizzling Bbq 25g.png'),
(104, 'PeeWeeSpicy Chili', '25g', 'Piece', 'Junk Foods', 6.20, 8.00, 25, 'PeeWeeSpicy Chili 25g.png'),
(105, 'Piattos Sour Cream & Onion', '40g', 'Piece', 'Junk Foods', 15.70, 18.00, 25, 'Piattos Sour Cream & Onion 40g.png'),
(106, 'Piattos Sour Cream & Onion', '85g', 'Piece', 'Junk Foods', 32.80, 35.00, 12, 'Piattos Sour Cream & Onion 85g.png'),
(107, 'Piattos Cheese', '40g', 'Piece', 'Junk Foods', 15.70, 18.00, 25, 'Piattos Cheese 40g.png'),
(108, 'Piattos Cheese', '85g', 'Piece', 'Junk Foods', 33.00, 35.00, 25, 'Piattos Cheese 85g.png'),
(109, 'Regent Tempura Shrimp Favored Snack', '100g', 'Piece', 'Junk Foods', 25.00, 27.00, 12, 'Regent Tempura Shrimp Favored Snack 100g.png'),
(110, 'Ri-Chee', '25g', 'Piece', 'Junk Foods', 6.00, 8.00, 25, 'Ri-Chee 25g.png'),
(111, 'Rinbee', '24g', 'Piece', 'Junk Foods', 6.00, 8.00, 25, 'Rinbee 24g.png'),
(112, 'Roller Coaster', '22g', 'Piece', 'Junk Foods', 6.50, 9.00, 25, 'Roller Coaster 22g.png'),
(113, 'Super Crunch Cheese Rings', '22g', 'Piece', 'Junk Foods', 6.50, 9.00, 25, 'Super Crunch Cheese Rings 22g.png'),
(114, 'Super Crunch Cornchips Cheese Flavor', '55g', 'Piece', 'Junk Foods', 9.00, 12.00, 25, 'Super Crunch Cornchips Cheese Flavor 55g.png'),
(115, 'Super Crunch Cornchips Swwet Corn Flavor', '7g', 'Piece', 'Junk Foods', 0.91, 1.00, 50, 'Super Crunch Cornchips Swwet Corn Flavor 7g.png'),
(116, 'Super Crunch Cornchips Swwet Corn Flavor', '55g', 'Piece', 'Junk Foods', 9.00, 12.00, 25, 'Super Crunch Cornchips Swwet Corn Flavor 55g.png'),
(117, 'Tortillos BBQ', '25g', 'Piece', 'Junk Foods', 6.71, 8.00, 25, 'Tortillos BBQ 25g.png'),
(118, 'Selecta 3in1 Choco Mango Ube', '1L', 'Piece', 'Ice Cream', 80.36, 180.00, 5, 'Selecta 3in1 Choco Mango Ube 1L.png'),
(119, 'Selecta BOOM BOOM! Cookies & Cream', '60ml', 'Piece', 'Ice Cream', 12.18, 16.00, 50, 'Selecta BOOM BOOM! Cookies & Cream 60ml.png'),
(120, 'Selecta BOOM BOOM! Pinipig Chocolate', '60ml', 'Piece', 'Ice Cream', 12.18, 16.00, 50, 'Selecta BOOM BOOM! Pinipig Chocolate 60ml.png'),
(121, 'Selecta BOOM BOOM! Ube', '60ml', 'Piece', 'Ice Cream', 12.18, 16.00, 50, 'Selecta BOOM BOOM! Ube 60ml.png'),
(122, 'Selecta Coffee Crumble', '750ml', 'Piece', 'Ice Cream', 112.81, 180.00, 5, 'Selecta Coffee Crumble 750ml.png'),
(123, 'Selecta Coffee Crumble', '1.5L', 'Piece', 'Ice Cream', 198.86, 290.00, 5, 'Selecta Coffee Crumble 1.5L.png'),
(124, 'Selecta Cookies & Cream', '750ml', 'Piece', 'Ice Cream', 112.81, 180.00, 5, 'Selecta Cookies & Cream 750ml.png'),
(125, 'Selecta Cookies & Cream', '1.5L', 'Piece', 'Ice Cream', 198.86, 290.00, 5, 'Selecta Cookies & Cream 1.5L.png'),
(126, 'Selecta Cornetto  Choco Hazelnut', '110ml', 'Piece', 'Ice Cream', 16.47, 25.00, 50, 'Selecta Cornetto  Choco Hazelnut 110ml.png'),
(127, 'Selecta Cornetto Berry Crazy For Yoh', '110ml', 'Piece', 'Ice Cream', 16.47, 25.00, 50, 'Selecta Cornetto Berry Crazy For Yoh 110ml.png'),
(128, 'Selecta Cornetto Chocolate', '110ml', 'Piece', 'Ice Cream', 16.47, 25.00, 50, 'Selecta Cornetto Chocolate 110ml.png'),
(129, 'Selecta Cornetto Cookies & Dream ', '110ml', 'Piece', 'Ice Cream', 16.47, 25.00, 50, 'Selecta Cornetto Cookies & Dream  110ml.png'),
(130, 'Selecta Cornetto Vanilla', '110ml', 'Piece', 'Ice Cream', 16.47, 25.00, 50, 'Selecta Cornetto Vanilla 110ml.png'),
(131, 'Selecta Double Dutch', '750ml', 'Piece', 'Ice Cream', 112.81, 180.00, 5, 'Selecta Double Dutch 750ml.png'),
(132, 'Selecta Double Dutch', '1.5L', 'Piece', 'Ice Cream', 198.86, 290.00, 5, 'Selecta Double Dutch 1.5L.png'),
(133, 'Selecta Supreme Rocky Road', '750ml', 'Piece', 'Ice Cream', 112.81, 180.00, 5, 'Selecta Supreme Rocky Road 750ml.png'),
(134, 'Selecta Supreme Rocky Road', '1.5L', 'Piece', 'Ice Cream', 198.86, 290.00, 5, 'Selecta Supreme Rocky Road 1.5L.png'),
(135, 'Selecta Watermelon Slice', '60ml', 'Piece', 'Ice Cream', 8.12, 10.00, 50, 'Selecta Watermelon Slice 60ml.png'),
(136, 'Arbees Bologna Pork', '200g', 'Piece', 'Frozen Foods', 42.00, 60.00, 4, 'Arbees Bologna Pork 200g.png'),
(137, 'Arbees Cooked Ham', '200g', 'Piece', 'Frozen Foods', 45.00, 65.00, 4, 'Arbees Cooked Ham 200g.png'),
(138, 'Arbees Embotido', '200g', 'Piece', 'Frozen Foods', 42.00, 60.00, 4, 'Arbees Embotido 200g.png'),
(139, 'Arbees Skinless Longaniza', '200g', 'Piece', 'Frozen Foods', 45.00, 65.00, 4, 'Arbees Skinless Longaniza 200g.png'),
(140, 'Arbees Sweet Ham', '200g', 'Piece', 'Frozen Foods', 45.00, 65.00, 4, 'Arbees Sweet Ham 200g.png'),
(141, 'Arbees Tapa', '200g', 'Piece', 'Frozen Foods', 50.00, 65.00, 4, 'Arbees Tapa 200g.png'),
(142, 'Arbees Tocino', '200g', 'Piece', 'Frozen Foods', 50.00, 65.00, 4, 'Arbees Tocino 200g.png'),
(143, 'BigTime Hotdog King Size ', '1.1kg', 'Piece', 'Frozen Foods', 150.00, 160.00, 4, 'BigTime Hotdog King Size  1.1kg.png'),
(144, 'Bingo Hotdog Mini', '250g', 'Piece', 'Frozen Foods', 37.00, 45.00, 4, 'Bingo Hotdog Mini 250g.png'),
(145, 'Chicken', '1kg', 'Piece', 'Frozen Foods', 185.00, 230.00, 4, 'Chicken 1kg.png'),
(146, 'Fishball', '1kg', 'Piece', 'Frozen Foods', 64.00, 70.00, 4, 'Fishball 1kg.png'),
(147, 'Kikiam', '250g', 'Piece', 'Frozen Foods', 25.00, 28.00, 4, 'Kikiam 250g.png'),
(148, 'Lumpia', '250g', 'Piece', 'Frozen Foods', 70.00, 85.00, 4, 'Kikiam 250g.png'),
(149, 'PureFoods Tender Juicy Hotdog', '1kg', 'Piece', 'Frozen Foods', 208.00, 220.00, 4, 'PureFoods Tender Juicy Hotdog 1kg.png'),
(150, 'Siomai', '1kg', 'Piece', 'Frozen Foods', 155.00, 165.00, 4, 'Siomai 1kg.png'),
(151, 'Squidball', '250g', 'Piece', 'Frozen Foods', 30.00, 45.00, 4, 'Squidball 250g.png'),
(152, 'Ulam Burger', '250g', 'Piece', 'Frozen Foods', 58.00, 70.00, 4, 'Ulam Burger 250g.png'),
(153, 'Lucky Me! Cup Noodles Bulalo', '40g', 'Piece', 'Instant Noodles', 9.08, 27.00, 20, 'Lucky Me! Cup Noodles Bulalo 40g.png'),
(154, 'Lucky Me! Mami Beef', '55g', 'Piece', 'Instant Noodles', 8.57, 10.00, 20, 'Lucky Me! Mami Beef 55g.png'),
(155, 'Lucky Me! Mami Chicken', '55g', 'Piece', 'Instant Noodles', 8.57, 10.00, 20, 'Lucky Me! Mami Chicken 55g.png'),
(156, 'Lucky Me! Mami Spicy Beef', '55g', 'Piece', 'Instant Noodles', 9.75, 11.00, 20, 'Lucky Me! Mami Spicy Beef 55g.png'),
(157, 'Lucky Me! Pancit Canton Chilimansi', '80g', 'Piece', 'Instant Noodles', 13.71, 16.00, 20, 'Lucky Me! Pancit Canton Chilimansi 80g.png'),
(158, 'Lucky Me! Pancit Canton Extra Hot Chili', '80g', 'Piece', 'Instant Noodles', 13.71, 16.00, 20, 'Lucky Me! Pancit Canton Extra Hot Chili 80g.png'),
(159, 'Lucky Me! Pancit Canton Kalamansi', '80g', 'Piece', 'Instant Noodles', 13.71, 16.00, 20, 'Lucky Me! Pancit Canton Kalamansi 80g.png'),
(160, 'Lucky Me! Pancit Canton Original', '80g', 'Piece', 'Instant Noodles', 13.71, 16.00, 20, 'Lucky Me! Pancit Canton Original 80g.png'),
(161, 'Lucky Me! Pancit Canton Sweet & Spciy', '80g', 'Piece', 'Instant Noodles', 13.71, 16.00, 20, 'Lucky Me! Pancit Canton Sweet & Spciy 80g.png'),
(162, 'Nissin Cup Noodles Bulalo', '40g', 'Piece', 'Instant Noodles', 23.00, 27.00, 20, 'Nissin Cup Noodles Bulalo 40g.png'),
(163, 'Nissin Cup Noodles Creamy Seafood', '40g', 'Piece', 'Instant Noodles', 23.00, 27.00, 20, 'Nissin Cup Noodles Creamy Seafood 40g.png'),
(164, 'Nissin Cup Noodles Seafood', '40g', 'Piece', 'Instant Noodles', 23.00, 27.00, 20, 'Nissin Cup Noodles Seafood 40g.png'),
(165, 'Super Q Golden Bihon', '454g', 'Piece', 'Instant Noodles', 39.00, 42.00, 20, 'Super Q Golden Bihon 454g.png'),
(166, 'Tabaco Eggnoodle', '100g', 'Piece', 'Instant Noodles', 7.25, 9.00, 20, 'Tabaco Eggnoodle 100g.png'),
(167, 'Tabaco Misua', '100g', 'Piece', 'Instant Noodles', 10.00, 12.00, 20, 'Tabaco Misua 100g.png'),
(168, 'Alfonso', '1L', 'Piece', 'Alcoholic Beverages', 279.17, 320.00, 12, 'Alfonso 1L.png'),
(169, 'Emperador Light', '750ml', 'Piece', 'Alcoholic Beverages', 125.50, 140.00, 24, 'Emperador Light 750ml.png'),
(170, 'Emperador Light', '1L', 'Piece', 'Alcoholic Beverages', 164.50, 180.00, 12, 'Emperador Light 1L.png'),
(171, 'GSM Frasco Gin', '700ml', 'Piece', 'Alcoholic Beverages', 119.58, 140.00, 24, 'GSM Frasco Gin 700ml.png'),
(172, 'GSM Round Gin', '350ml', 'Piece', 'Alcoholic Beverages', 60.30, 70.00, 24, 'GSM Round Gin 350ml.png'),
(173, 'Red Horse Beer', '500ml', 'Piece', 'Alcoholic Beverages', 46.92, 60.00, 24, 'Red Horse Beer 500ml.png'),
(174, 'Red Horse Beer Litro', '1L', 'Piece', 'Alcoholic Beverages', 95.83, 120.00, 12, 'Red Horse Beer Litro 1L.png'),
(175, 'Nestea Powder Lemon Iced Tea', '20g', 'Piece', 'Powdered Drinks', 20.00, 24.00, 24, 'Nestea Powder Lemon Iced Tea 20g.png'),
(176, 'Nestea Poweder Apple Iced Tea', '20g', 'Piece', 'Powdered Drinks', 20.00, 24.00, 24, 'Nestea Poweder Apple Iced Tea 20g.png'),
(177, 'Tang Apple', '20g', 'Piece', 'Powdered Drinks', 18.00, 22.00, 24, 'Tang Apple 20g.png'),
(178, 'Tang Buko Pandan', '20g', 'Piece', 'Powdered Drinks', 18.00, 22.00, 24, 'Tang Buko Pandan 20g.png'),
(179, 'Tang Guyabano', '20g', 'Piece', 'Powdered Drinks', 18.00, 22.00, 24, 'Tang Guyabano 20g.png'),
(180, 'Tang Mango', '20g', 'Piece', 'Powdered Drinks', 18.00, 22.00, 24, 'Tang Mango 20g.png'),
(181, 'Tang Melon', '20g', 'Piece', 'Powdered Drinks', 18.00, 22.00, 24, 'Tang Melon 20g.png'),
(182, 'Tang Orange', '20g', 'Piece', 'Powdered Drinks', 18.00, 22.00, 24, 'Tang Orange 20g.png'),
(183, 'Tang Pineapple', '20g', 'Piece', 'Powdered Drinks', 18.00, 22.00, 24, 'Tang Pineapple 20g.png'),
(184, 'Tang Strawberry', '20g', 'Piece', 'Powdered Drinks', 18.00, 22.00, 24, 'Tang Strawberry 20g.png'),
(185, 'Chesterfield Original Red', NULL, 'Piece', 'Cigarette', 5.35, 6.00, 100, 'Chesterfield Original Red.png'),
(186, 'Chesterfield Menthol', NULL, 'Piece', 'Cigarette', 5.35, 6.00, 100, 'Chesterfield Menthol.png'),
(187, 'Chesterfield Remix Cool', NULL, 'Piece', 'Cigarette', 5.35, 6.00, 100, 'Chesterfield Remix Cool.png'),
(188, 'Mighty Green', NULL, 'Piece', 'Cigarette', 6.30, 8.00, 100, 'Mighty Green.png'),
(189, 'Fortune White', NULL, 'Piece', 'Cigarette', 6.30, 8.00, 100, 'Fortune White.png'),
(190, 'Winston Original Red', NULL, 'Piece', 'Cigarette', 7.20, 8.00, 100, 'Winston Original Red.png'),
(191, 'Marlboro Red', NULL, 'Piece', 'Cigarette', 7.75, 9.00, 100, 'Marlboro Red.png'),
(192, 'Marlboro Black Menthol', NULL, 'Piece', 'Cigarette', 7.75, 9.00, 100, 'Marlboro Black Menthol.png'),
(193, 'Marlboro Ice Blast Mega', NULL, 'Piece', 'Cigarette', 7.75, 9.00, 100, 'Marlboro Ice Blast Mega.png'),
(194, 'Bestcaffe 8in1 Coffee', '14g', 'Piece', 'Coffee', 12.80, 14.00, 10, 'Bestcaffe 8in1 Coffee 14g.png'),
(195, 'Bestcaffe Gold 20in1 Coffee', '16g', 'Piece', 'Coffee', 17.50, 20.00, 10, 'Bestcaffe Gold 20in1 Coffee 16g.png'),
(196, 'Great Taste Premium Classic', '25g', 'Piece', 'Coffee', 18.00, 22.00, 10, 'Great Taste Premium Classic 25g.png'),
(197, 'Great Taste Choco Twin Pack', '50g', 'Piece', 'Coffee', 12.00, 15.00, 10, 'Great Taste Choco Twin Pack 50g.png'),
(198, 'Great Taste Premium Classic Stick', '2g', 'Piece', 'Coffee', 1.67, 3.00, 36, 'Great Taste Premium Classic Stick 2g.png'),
(199, 'Great Taste White Twin Pack', '50g', 'Piece', 'Coffee', 11.20, 13.00, 24, 'Great Taste White Twin Pack 50g.png'),
(200, 'Kopiko Black Twin Pack', '50g', 'Piece', 'Coffee', 11.60, 13.00, 24, 'Kopiko Black Twin Pack 50g.png'),
(201, 'Kopiko Blanca Twin Pack', '50g', 'Piece', 'Coffee', 11.60, 13.00, 24, 'Kopiko Blanca Twin Pack 50g.png'),
(202, 'Kopiko Brown Twin Pack', '50g', 'Piece', 'Coffee', 11.60, 13.00, 24, 'Kopiko Brown Twin Pack 50g.png'),
(203, 'Nescafe Classic', '15g', 'Piece', 'Coffee', 21.47, 24.00, 10, 'Nescafe Classic 15g.png'),
(204, 'Nescafe Creamy Latte', '51g', 'Piece', 'Coffee', 12.00, 15.00, 24, 'Nescafe Creamy Latte 51g.png'),
(205, 'Nescafe Creamy White Twin Pack', '51g', 'Piece', 'Coffee', 11.68, 13.00, 24, 'Nescafe Creamy White Twin Pack 51g.png'),
(206, 'Nescafe 3in1 Original Twin Pack', '52g', 'Piece', 'Coffee', 11.68, 13.00, 24, 'Nescafe 3in1 Original Twin Pack 52g.png'),
(207, 'San Mig Original ', '20g', 'Piece', 'Coffee', 4.77, 7.00, 48, 'San Mig Original  20g.png'),
(208, 'Alaska Fruitti Yo', '80ml', 'Piece', 'Cold Drinks', 8.33, 12.00, 12, 'Alaska Fruitti Yo 80ml.png'),
(209, 'C2 Solo Apple', '230ml', 'Piece', 'Cold Drinks', 12.46, 17.00, 24, 'C2 Solo Apple 230ml.png'),
(210, 'Chuckie', '110ml', 'Piece', 'Cold Drinks', 15.00, 17.00, 12, 'Chuckie 110ml.png'),
(211, 'Chuckie', '180ml', 'Piece', 'Cold Drinks', 22.00, 29.00, 6, 'Chuckie 180ml.png'),
(212, 'Cobra Green', '240ml', 'Piece', 'Cold Drinks', 13.33, 17.00, 24, 'Cobra Green 240ml.png'),
(213, 'Cobra Yellow', '240ml', 'Piece', 'Cold Drinks', 13.33, 17.00, 24, 'Cobra Yellow 240ml.png'),
(214, 'Coca-Cola ', '237ml', 'Piece', 'Cold Drinks', 8.33, 12.00, 24, 'Coca-Cola  237ml.png'),
(215, 'Coca-Cola Mismo', '290ml', 'Piece', 'Cold Drinks', 15.83, 20.00, 24, 'Coca-Cola Mismo 290ml.png'),
(216, 'Coca-Cola', '1.5L', 'Piece', 'Cold Drinks', 57.92, 75.00, 12, 'Coca-Cola 1.5L.png'),
(217, 'Mountain Dew', '300ml', 'Piece', 'Cold Drinks', 16.67, 20.00, 24, 'Mountain Dew 300ml.png'),
(218, 'Natures Spring', '350ml', 'Piece', 'Cold Drinks', 6.66, 10.00, 24, 'Natures Spring 350ml.png'),
(219, 'Royal', '237ml', 'Piece', 'Cold Drinks', 8.33, 12.00, 24, 'Royal 237ml.png'),
(220, 'Royal Mismo', '250ml', 'Piece', 'Cold Drinks', 15.33, 20.00, 24, 'Royal Mismo 250ml.png'),
(221, 'Royal', '1.5L', 'Piece', 'Cold Drinks', 57.92, 75.00, 12, 'Royal 1.5L.png'),
(222, 'Sprite', '237ml', 'Piece', 'Cold Drinks', 8.83, 12.00, 24, 'Sprite 237ml.png'),
(223, 'Sprite Mismo', '290ml', 'Piece', 'Cold Drinks', 15.83, 20.00, 24, 'Sprite Mismo 290ml.png'),
(224, 'Sprite', '1.5L', 'Piece', 'Cold Drinks', 57.92, 75.00, 12, 'Sprite 1.5L.png'),
(225, 'Sting Strawberry Flavor', '250ml', 'Piece', 'Cold Drinks', 16.67, 20.00, 24, 'Sting Strawberry Flavor 250ml.png'),
(226, 'Yakult', '80ml', 'Piece', 'Cold Drinks', 5.00, 12.00, 50, 'Yakult 80ml.png'),
(227, 'Zesto Big Apple', '250ml', 'Piece', 'Cold Drinks', 9.70, 13.00, 20, 'Zesto Big Apple 250ml.png'),
(228, 'Zesto Big Mango', '250ml', 'Piece', 'Cold Drinks', 9.70, 13.00, 20, 'Zesto Big Mango 250ml.png'),
(229, 'Zesto Big Orange', '250ml', 'Piece', 'Cold Drinks', 9.70, 13.00, 20, 'Zesto Big Orange 250ml.png'),
(230, 'Wilkins Distilled Water', '7L', 'Piece', 'Cold Drinks', 77.00, 95.00, 6, 'Wilkins Distilled Water 7L.png'),
(231, 'PC Alert Green Burst Gel Toothpaste', '160g', 'Piece', 'PC Products', 101.25, 135.00, 5, 'PC Alert Green Burst Gel Toothpaste 160g.png'),
(232, 'PC Alert Optimum Fluoride Toothpaste', '160g', 'Piece', 'PC Products', 101.25, 135.00, 5, 'PC Alert Optimum Fluoride Toothpaste 160g.png'),
(233, 'PC Alert Red Blaze Gel Toothpaste', '160g', 'Piece', 'PC Products', 101.25, 135.00, 5, 'PC Alert Red Blaze Gel Toothpaste 160g.png'),
(234, 'PC Check Blooming Papaya', '130g', 'Piece', 'PC Products', 45.00, 60.00, 5, 'PC Check Blooming Papaya 130g.png'),
(235, 'PC Check Blooming Papaya Soap', '130g', 'Piece', 'PC Products', 45.00, 60.00, 5, 'PC Check Blooming Papaya Soap 130g.png'),
(236, 'PC Check Fruity Floral Fresh Soap', '130g', 'Piece', 'PC Products', 45.00, 60.00, 5, 'PC Check Fruity Floral Fresh Soap 130g.png'),
(237, 'PC Anti-Dandruff Care Shampoo & Conditioner', '200ml ', 'Piece', 'PC Products', 127.50, 170.00, 5, 'PC Anti-Dandruff Care Shampoo & Conditioner 200ml .png'),
(238, 'PC Sof & mmmmm Fabric Conditionaer', '1L', 'Piece', 'PC Products', 213.75, 285.00, 5, 'PC Sof & mmmmm Fabric Conditionaer 1L.png'),
(239, 'PC White Dove Baby Lotion', '200ml ', 'Piece', 'PC Products', 116.25, 155.00, 5, 'PC White Dove Baby Lotion 200ml .png'),
(240, 'PC White Dove Baby Milk Soap', '200ml ', 'Piece', 'PC Products', 116.25, 155.00, 5, 'PC White Dove Baby Milk Soap 200ml .png'),
(241, 'PC White Dove Baby Powder', '200ml ', 'Piece', 'PC Products', 116.25, 155.00, 5, 'PC White Dove Baby Powder 200ml .png'),
(242, 'PC White Dove Baby Shampoo', '200ml ', 'Piece', 'PC Products', 116.25, 155.00, 5, 'PC White Dove Baby Shampoo 200ml .png'),
(243, 'PC White Dove Baby Wash Dreamscent ', '200ml ', 'Piece', 'PC Products', 116.25, 155.00, 5, 'PC White Dove Baby Wash Dreamscent  200ml .png'),
(244, 'Alco Plus Isopropyl Alcohol', '60ml', 'Piece', 'Health & Beauty', 30.00, 35.00, 5, 'Alco Plus Isopropyl Alcohol 60ml.png'),
(245, 'Avon Black Suede Cologne Spray', '75ml', 'Piece', 'Health & Beauty', 101.25, 135.00, 5, 'Avon Black Suede Cologne Spray 75ml.png'),
(246, 'Avon Heaven Scent Family Cologne Bubble Burst', '100ml', 'Piece', 'Health & Beauty', 101.25, 135.00, 5, 'Avon Heaven Scent Family Cologne Bubble Burst 75ml.png'),
(247, 'Avon Heaven Scent Splash Cologne Tender Blooms', '100ml', 'Piece', 'Health & Beauty', 101.25, 135.00, 5, 'Avon Heaven Scent Splash Cologne Tender Blooms 75ml.png'),
(248, 'Babyflo Petroleum Jelly ', '25g', 'Piece', 'Health & Beauty', 37.00, 43.00, 5, 'Babyflo Petroleum Jelly  25g.png'),
(249, 'Bioderm Germicidal Soap Bloom', '60g', 'Piece', 'Health & Beauty', 17.00, 20.00, 6, 'Bioderm Germicidal Soap Bloom 60g.png'),
(250, 'Bioderm Germicidal Soap Coolness', '60g', 'Piece', 'Health & Beauty', 17.00, 20.00, 6, 'Bioderm Germicidal Soap Coolness 60g.png'),
(251, 'Closeup Cool Mint Toothpaste Twin Pack', '20g', 'Piece', 'Health & Beauty', 8.50, 10.00, 12, 'Closeup Cool Mint Toothpaste Twin Pack 20g.png'),
(252, 'Closeup Gel Toothpaste Red Hot Twin Pack', '20g', 'Piece', 'Health & Beauty', 8.50, 10.00, 12, 'Closeup Gel Toothpaste Red Hot Twin Pack 20g.png'),
(253, 'Closeup Gel Toothpaste Red Hot Twin Pack', '20g', 'Piece', 'Health & Beauty', 8.50, 10.00, 12, 'Closeup Gel Toothpaste Red Hot Twin Pack 20g.png'),
(254, 'Colgate Charcoal Clean Toothpaste', '20g', 'Piece', 'Health & Beauty', 8.50, 10.00, 12, 'Colgate Charcoal Clean Toothpaste 20g.png'),
(255, 'Colgate Fresh Confidence Cool Menthol Fresh Toothp', '20g', 'Piece', 'Health & Beauty', 8.50, 10.00, 12, 'Colgate Fresh Confidence Cool Menthol Fresh Toothpaste 20g.png'),
(256, 'Colgate Fresh Confidence Spicy Fresh Toothpaste', '20g', 'Piece', 'Health & Beauty', 8.50, 10.00, 12, 'Colgate Fresh Confidence Spicy Fresh Toothpaste 20g.png'),
(257, 'Colgate Great Regular Flavor Toothpaste', '20g', 'Piece', 'Health & Beauty', 8.50, 10.00, 12, 'Colgate Great Regular Flavor Toothpaste 20g.png'),
(258, 'Comb', NULL, 'Piece', 'Health & Beauty', 8.00, 10.00, 10, 'Comb.png'),
(259, 'Cotton Clean Disinfectant Baby Wipes 15pcs', NULL, 'Piece', 'Health & Beauty', 15.00, 20.00, 5, 'Cotton Clean Disinfectant Baby Wipes 15pcs.png'),
(260, 'Cream Silk Damage Control Tri-Oleo Conditioner', '11ml', 'Piece', 'Health & Beauty', 5.50, 8.00, 24, 'Cream Silk Damage Control Tri-Oleo Conditioner 11ml.png'),
(261, 'Cream Silk Hair Fall Defense Vitamin Boost Conditi', '11ml', 'Piece', 'Health & Beauty', 5.50, 8.00, 24, 'Cream Silk Hair Fall Defense Vitamin Boost Conditioner 11ml.png'),
(262, 'Cream Silk Standout Straight Vitamin Boost Conditi', '11ml', 'Piece', 'Health & Beauty', 5.50, 8.00, 24, 'Cream Silk Standout Straight Vitamin Boost Conditioner 11ml.png'),
(263, 'DeoPlus Tawas Powder', '50g', 'Piece', 'Health & Beauty', 13.50, 18.00, 5, 'DeoPlus Tawas Powder 50g.png'),
(264, 'Dove Deo-Lotion', '3ml', 'Piece', 'Health & Beauty', 5.50, 7.00, 6, 'Dove Deo-Lotion 3ml.png'),
(265, 'Dove Keratin Tri-Silk Serum', '12ml', 'Piece', 'Health & Beauty', 5.50, 8.00, 24, 'Dove Keratin Tri-Silk Serum 12ml.png'),
(266, 'Femme Bathroom Tissue ', NULL, 'Piece', 'Health & Beauty', 5.50, 8.00, 10, 'Femme Bathroom Tissue .png'),
(267, 'Haileys Tawas Mentholated', '50g', 'Piece', 'Health & Beauty', 14.25, 18.00, 5, 'Haileys Tawas Mentholated 50g.png'),
(268, 'Haileys Tawas Underarm & Foot', '50g', 'Piece', 'Health & Beauty', 14.25, 18.00, 5, 'Haileys Tawas Underarm & Foot 50g.png'),
(269, 'Haileys Tawas Unscented', '50g', 'Piece', 'Health & Beauty', 13.50, 18.00, 5, 'Haileys Tawas Unscented 50g.png'),
(270, 'Haileys Tawas Soft & Scented', '50g', 'Piece', 'Health & Beauty', 14.25, 18.00, 5, 'Haileys Tawas Soft & Scented 50g.png'),
(271, 'Hair Blacken Shampoo', NULL, 'Piece', 'Health & Beauty', 6.88, 12.00, 16, 'Hair Blacken Shampoo.png'),
(272, 'Happy Absorbent Cotton', '10g', 'Piece', 'Health & Beauty', 5.00, 7.00, 10, 'Happy Absorbent Cotton 10g.png'),
(273, 'Head & Shoulders Anti-Dandruff Shampoo Cool Mentho', '12ml', 'Piece', 'Health & Beauty', 5.50, 8.00, 24, 'Head & Shoulders Anti-Dandruff Shampoo Cool Menthol 12ml.png'),
(274, 'Head & Shoulders Anti-Dandruff Shampoo Smooth & Si', '12ml', 'Piece', 'Health & Beauty', 5.50, 8.00, 24, 'Head & Shoulders Anti-Dandruff Shampoo Smooth & Silky 12ml.png'),
(275, 'Jackie Cuticle Remover', '60ml', 'Piece', 'Health & Beauty', 4.58, 6.00, 12, 'Jackie Cuticle Remover 60ml.png'),
(276, 'Jackie Nail Polish Remover', '30ml', 'Piece', 'Health & Beauty', 6.25, 8.00, 12, 'Jackie Nail Polish Remover 30ml.png'),
(277, 'Jackie Nail Tint', '30ml', 'Piece', 'Health & Beauty', 4.58, 7.00, 12, 'Jackie Nail Tint 30ml.png'),
(278, 'Jackie Styling Gel Black', '14g', 'Piece', 'Health & Beauty', 2.00, 4.00, 6, 'Jackie Styling Gel Black 14g.png'),
(279, 'Jackie Styling Gel Blue', '14g', 'Piece', 'Health & Beauty', 2.00, 4.00, 6, 'Jackie Styling Gel Blue 14g.png'),
(280, 'Johnsons Blossoms Baby Powder', '25g', 'Piece', 'Health & Beauty', 18.00, 20.00, 5, 'Johnsons Blossoms Baby Powder 25g.png'),
(281, 'Johnsons Baby Powder Classic', '25g', 'Piece', 'Health & Beauty', 18.00, 20.00, 5, 'Johnsons Baby Powder Classic 25g.png'),
(282, 'Johnsons Baby Powder Milk + Rice', '25g', 'Piece', 'Health & Beauty', 18.00, 20.00, 5, 'Johnsons Baby Powder Milk + Rice 25g.png'),
(283, 'Katinko Ointment', '10g', 'Piece', 'Health & Beauty', 32.00, 38.00, 6, 'Katinko Ointment 10g.png'),
(284, 'Keratin Plus Gold', '20g', 'Piece', 'Health & Beauty', 6.17, 8.00, 12, 'Keratin Plus Gold 20g.png'),
(285, 'Keratin Plus Luxurious Brazilian Hair Treatment', '20g', 'Piece', 'Health & Beauty', 5.80, 8.00, 12, 'Keratin Plus Luxurious Brazilian Hair Treatment 20g.png'),
(286, 'Keratin Plus Shampoo', '22ml', 'Piece', 'Health & Beauty', 5.80, 8.00, 12, 'Keratin Plus Shampoo 22ml.png'),
(287, 'Magicolor Baby Diapers Large', NULL, 'Piece', 'Health & Beauty', 7.18, 9.00, 15, 'Magicolor Baby Diapers Large 22ml.png'),
(288, 'Magicolor Baby Diapers Medium', NULL, 'Piece', 'Health & Beauty', 6.67, 8.00, 10, 'Magicolor Baby Diapers Medium.png'),
(289, 'Magicolor Baby Diapers Small', NULL, 'Piece', 'Health & Beauty', 6.12, 7.00, 10, 'Magicolor Baby Diapers Small.png'),
(290, 'Magicolor Baby Diapers Xtra Large', NULL, 'Piece', 'Health & Beauty', 7.86, 10.00, 10, 'Magicolor Baby Diapers Xtra Large.png'),
(291, 'Medicare Antiseptic Plastic Strips 100pcs', NULL, 'Piece', 'Health & Beauty', 0.00, 1.00, 100, 'Medicare Antiseptic Plastic Strips 100pcs.png'),
(292, 'Modess Regular Cottony Soft Cover w/ Wings', NULL, 'Piece', 'Health & Beauty', 4.93, 6.00, 16, 'Modess Regular Cottony Soft Cover w/ Wings.png'),
(293, 'Myra Fresh Glow Whitening Facial Moisturizer', '40ml', 'Piece', 'Health & Beauty', 115.00, 125.00, 5, 'Myra Fresh Glow Whitening Facial Moisturizer 40ml.png'),
(294, 'Nivea Deo Lotion Extra Brgihtening', '3ml', 'Piece', 'Health & Beauty', 8.00, 10.00, 6, 'Nivea Deo Lotion Extra Brgihtening 3ml.png'),
(295, 'Nivea Men Cool Quick Anti-Perspirant', '3ml', 'Piece', 'Health & Beauty', 8.00, 10.00, 6, 'Nivea Men Cool Quick Anti-Perspirant 3ml.png'),
(296, 'Palmolive Naturals Aloe Vera Shampoo + Conditioner', '15ml', 'Piece', 'Health & Beauty', 5.50, 8.00, 24, 'Palmolive Naturals Aloe Vera Shampoo + Conditioner 15ml.png'),
(297, 'Palmolive Naturals Coconut Cream Shampoo + Conditioner ', '15ml', 'Piece', 'Health & Beauty', 5.50, 8.00, 24, 'Palmolive Naturals Coconut Cream Shampoo + Conditioner 15ml.png'),
(298, 'Palmolive Naturals Moisture Smooth Soap', '15ml', 'Piece', 'Health & Beauty', 15.00, 20.00, 6, 'Palmolive Naturals Moisture Smooth Soap 55g.png'),
(299, 'Palmolive Naturals Rosy Bloom Soap', '55g', 'Piece', 'Health & Beauty', 15.00, 20.00, 6, 'Palmolive Naturals Rosy Bloom Soap 55g.png'),
(300, 'Perla Laundry Soap Bar Original White', '110g', 'Piece', 'Health & Beauty', 15.00, 20.00, 6, 'Perla Laundry Soap Bar Original White 110g.png'),
(301, 'Rejoice 3in1', '16ml', 'Piece', 'Health & Beauty', 5.50, 8.00, 6, 'Rejoice 3in1 16ml.png'),
(302, 'Rexona Men Motion Sense Ice Cool Anti-Stain Deo-Lotion', '3ml', 'Piece', 'Health & Beauty', 8.00, 10.00, 6, 'Rexona Men Motion Sense Ice Cool Anti-Stain Deo-Lotion 3ml.png'),
(303, 'Rexona Power Dry Brightening Deo-Lotion', '3ml', 'Piece', 'Health & Beauty', 8.00, 10.00, 6, 'Rexona Power Dry Brightening Deo-Lotion 3ml.png'),
(304, 'Safeguard Floral Pink with Aloe Soap', '60g', 'Piece', 'Health & Beauty', 18.50, 21.00, 6, 'Safeguard Floral Pink with Aloe Soap 60g.png'),
(305, 'Safeguard Guava Leaves Fresh Soap', '60g', 'Piece', 'Health & Beauty', 18.50, 21.00, 6, 'Safeguard Guava Leaves Fresh Soap 60g.png'),
(306, 'Safeguard Lemon Fresh Soap', '60g', 'Piece', 'Health & Beauty', 18.50, 21.00, 6, 'Safeguard Lemon Fresh Soap 60g.png'),
(307, 'Safeguard Papaya with Pearl Soap', '60g', 'Piece', 'Health & Beauty', 18.50, 21.00, 6, 'Safeguard Papaya with Pearl Soap 60g.png'),
(308, 'Safeguard Pure White Soap', '60g', 'Piece', 'Health & Beauty', 18.50, 21.00, 6, 'Safeguard Pure White Soap 60g.png'),
(309, 'Sanicare Multi-Purpose Tissue Handy Pack 2 ply 40 pulls', NULL, 'Piece', 'Health & Beauty', 10.00, 12.00, 5, 'Sanicare Multi-Purpose Tissue Handy Pack 2 ply 40 pulls.png'),
(310, 'Silka Whitening Herbal Soap', '65g', 'Piece', 'Health & Beauty', 17.50, 20.00, 6, 'Silka Whitening Herbal Soap 65g.png'),
(311, 'Sisters Day Maxi Regular Flow Cottony Comfort 8pads 240mm', NULL, 'Piece', 'Health & Beauty', 2.75, 5.00, 16, 'Sisters Day Maxi Regular Flow Cottony Comfort 8pads 240mm.png'),
(312, 'Sisters Night Plus Heavy Flow Plus Cottony Comfort 8pads 280mm', NULL, 'Piece', 'Health & Beauty', 2.32, 6.00, 16, 'Sisters Night Plus Heavy Flow Plus Cottony Comfort 8pads 280mm.png'),
(313, 'Sisters Night Plus Heavy Flow Plus Dry Comfort 8pads 280mm', NULL, 'Piece', 'Health & Beauty', 3.50, 6.00, 18, 'Sisters Night Plus Heavy Flow Plus Dry Comfort 8pads 280mm.png'),
(314, 'Tender Care Baby Soap Classic Mild', '55g', 'Piece', 'Health & Beauty', 15.00, 20.00, 6, 'Tender Care Baby Soap Classic Mild 55g.png'),
(315, 'Tender Care Baby Soap Classic Mild', '5g', 'Piece', 'Health & Beauty', 35.00, 39.00, 5, 'Tender Care Baby Soap Classic Mild 5g.png'),
(316, 'Whisper Breathable Cottony Soft w/ Wings 8pads 23cm', NULL, 'Piece', 'Health & Beauty', 5.00, 6.00, 16, 'Whisper Breathable Cottony Soft w/ Wings 8pads 23cm.png'),
(317, 'Ariel Powder Sunrise Fresh Twin Pack', '66g', 'Piece', 'Household & Cleaning Supplies', 13.17, 15.00, 12, 'Ariel Powder Sunrise Fresh Twin Pack 66g.png'),
(318, 'Ariel Powder Sunrise Fresh Twin Jumbo Pack', '70g', 'Piece', 'Household & Cleaning Supplies', 13.17, 15.00, 12, 'Ariel Powder Sunrise Fresh Twin Jumbo Pack 70g.png'),
(319, 'Ariel Powder with Downy Floral Passion Twin Pack', '64g', 'Piece', 'Household & Cleaning Supplies', 13.17, 15.00, 12, 'Ariel Powder with Downy Floral Passion Twin Pack 64g.png'),
(320, 'Budget Detergent Bar Kalamansi', '360g', 'Piece', 'Household & Cleaning Supplies', 20.00, 24.00, 10, 'Budget Detergent Bar Kalamansi 360g.png'),
(321, 'Budget Detergent Bar Power Blue', '360g', 'Piece', 'Household & Cleaning Supplies', 20.00, 24.00, 10, 'Budget Detergent Bar Power Blue 360g.png'),
(322, 'Budget Detergent Bar w/ Fabcon', '360g', 'Piece', 'Household & Cleaning Supplies', 20.00, 24.00, 10, 'Budget Detergent Bar w/ Fabcon 360g.png'),
(323, 'Budget Detergent Bar White Anti-bac', '360g', 'Piece', 'Household & Cleaning Supplies', 20.00, 24.00, 10, 'Budget Detergent Bar White Anti-bac 360g.png'),
(324, 'Commando Safety Matches 48sticks', NULL, 'Piece', 'Household & Cleaning Supplies', 1.90, 3.00, 10, 'Commando Safety Matches 48sticks.png'),
(325, 'Crown Brown Bond Super Glue', NULL, 'Piece', 'Household & Cleaning Supplies', 4.17, 10.00, 24, 'Crown Brown Bond Super Glue.png'),
(326, 'Del Lavender Breeze Fabric Conditioner', '33ml', 'Piece', 'Household & Cleaning Supplies', 5.67, 8.00, 12, 'Del Lavender Breeze Fabric Conditioner 33ml.png'),
(327, 'Dorco Stainless Blade', NULL, 'Piece', 'Household & Cleaning Supplies', 3.00, 5.00, 10, 'Dorco Stainless Blade.png'),
(328, 'Downy Antibac Fabric Conditioner', '22ml', 'Piece', 'Household & Cleaning Supplies', 5.67, 8.00, 24, 'Downy Antibac Fabric Conditioner 22ml.png'),
(329, 'Downy Garden Bloom Fabric Conditioner', '24ml', 'Piece', 'Household & Cleaning Supplies', 5.67, 8.00, 24, 'Downy Garden Bloom Fabric Conditioner 24ml.png'),
(330, 'Downy Premium Parfum Mystique Fabric Conditioner', '20ml', 'Piece', 'Household & Cleaning Supplies', 5.67, 8.00, 24, 'Downy Premium Parfum Mystique Fabric Conditioner 20ml.png'),
(331, 'Downy Premium Parfum Passion Fabric Conditioner', '20ml', 'Piece', 'Household & Cleaning Supplies', 5.67, 8.00, 24, 'Downy Premium Parfum Passion Fabric Conditioner 20ml.png'),
(332, 'Downy Sunrise Fresh Fabric Conditioner', '24ml', 'Piece', 'Household & Cleaning Supplies', 5.67, 8.00, 24, 'Downy Sunrise Fresh Fabric Conditioner 24ml.png'),
(333, 'Esperma Candle #18', NULL, 'Piece', 'Household & Cleaning Supplies', 17.50, 20.00, 8, 'Esperma Candle #18.png'),
(334, 'Esperma Candle #5', NULL, 'Piece', 'Household & Cleaning Supplies', 2.40, 4.00, 20, 'Esperma Candle #5.png'),
(335, 'LCC GreatBuys Dishwashing Paste Kalamansi', '200g', 'Piece', 'Household & Cleaning Supplies', 22.00, 28.00, 5, 'LCC GreatBuys Dishwashing Paste Kalamansi 200g.png'),
(336, 'LCC Lighter w/ Flashlight', NULL, 'Piece', 'Household & Cleaning Supplies', 6.00, 10.00, 20, 'LCC Lighter w/ Flashlight.png'),
(337, 'Lion-Tiger Mosquito Killer', NULL, 'Piece', 'Household & Cleaning Supplies', 1.80, 3.00, 50, 'Lion-Tiger Mosquito Killer.png'),
(338, 'MMT Shoes Glue', '6g', 'Piece', 'Household & Cleaning Supplies', 6.67, 12.00, 24, 'MMT Shoes Glue 6g.png'),
(339, 'Pinakamura Plastic Bag Medium', NULL, 'Piece', 'Household & Cleaning Supplies', 23.00, 28.00, 10, 'Pinakamura Plastic Bag Medium.png'),
(340, 'Pinakamura Plastic Bag Mini', NULL, 'Piece', 'Household & Cleaning Supplies', 5.00, 10.00, 10, 'Pinakamura Plastic Bag Mini.png'),
(341, 'Pinakamura Plastic Bag Tiny', NULL, 'Piece', 'Household & Cleaning Supplies', 10.00, 15.00, 10, 'Pinakamura Plastic Bag Tiny.png'),
(342, 'Smart Dishwashing Paste Kalamansi Scent', '200g', 'Piece', 'Household & Cleaning Supplies', 24.00, 28.00, 5, 'Smart Dishwashing Paste Kalamansi Scent 200g.png'),
(343, 'Smart Dishwashing Paste Lemon Scent', '200g', 'Piece', 'Household & Cleaning Supplies', 24.00, 28.00, 5, 'Smart Dishwashing Paste Lemon Scent 200g.png'),
(344, 'Square Sponge', NULL, 'Piece', 'Household & Cleaning Supplies', 5.00, 7.00, 25, 'Square Sponge.png'),
(345, 'Star Wax Red Dye Floor Wax', '90g', 'Piece', 'Household & Cleaning Supplies', 17.00, 20.00, 10, 'Star Wax Red Dye Floor Wax 90g.png'),
(346, 'Surf Fabric Conditioner', '25ml', 'Piece', 'Household & Cleaning Supplies', 6.60, 8.00, 12, 'Surf Fabric Conditioner 25ml.png'),
(347, 'Surf Powder Cherry Blossom', '65g', 'Piece', 'Household & Cleaning Supplies', 6.60, 8.00, 12, 'Surf Powder Cherry Blossom 65g.png'),
(348, 'Surf Powder Kalamansi', '65g', 'Piece', 'Household & Cleaning Supplies', 6.60, 8.00, 12, 'Surf Powder Kalamansi 65g.png'),
(349, 'Surf Powder Purple Blooms', '65g', 'Piece', 'Household & Cleaning Supplies', 6.60, 8.00, 12, 'Surf Powder Purple Blooms 65g.png'),
(350, 'Thumb Tacks No.168', NULL, 'Piece', 'Household & Cleaning Supplies', 6.88, 10.00, 10, 'Thumb Tacks No.168.png'),
(351, 'Tide Powder Garden Bloom Twin Jumbo', '67g', 'Piece', 'Household & Cleaning Supplies', 13.50, 15.00, 12, 'Tide Powder Garden Bloom Twin Jumbo 67g.png'),
(352, 'Tops Bar Royal Blue', '400g', 'Piece', 'Household & Cleaning Supplies', 23.33, 28.00, 10, 'Tops Bar Royal Blue 400g.png'),
(353, 'Triple Hat Ice Bag 4x12', NULL, 'Piece', 'Household & Cleaning Supplies', 21.00, 25.00, 10, 'Triple Hat Ice Bag 4x12.png'),
(354, 'Zonrox Bleach Colorsafe Bleach Blossom Fresh ', '95ml', 'Piece', 'Household & Cleaning Supplies', 13.00, 18.00, 10, 'Zonrox Bleach Colorsafe Bleach Blossom Fresh  95ml.png'),
(355, 'Zonrox Bleach Colorsafe Bleach Blossom Fresh ', '225ml', 'Piece', 'Household & Cleaning Supplies', 25.00, 30.00, 10, 'Zonrox Bleach Colorsafe Bleach Blossom Fresh  225ml.png'),
(356, 'Zonrox Bleach Colorsafe Bleach Blossom Fresh ', '450ml', 'Piece', 'Household & Cleaning Supplies', 38.00, 45.00, 10, 'Zonrox Bleach Colorsafe Bleach Blossom Fresh  450ml.png'),
(357, 'Zonrox Bleach Colorsafe Bleach Blossom Fresh ', '900ml', 'Piece', 'Household & Cleaning Supplies', 68.00, 75.00, 5, 'Zonrox Bleach Colorsafe Bleach Blossom Fresh  900ml.png'),
(358, 'Zonrox Bleach Original', '100ml', 'Piece', 'Household & Cleaning Supplies', 9.00, 12.00, 10, 'Zonrox Bleach Original 100ml.png'),
(359, 'Zonrox Bleach Original', '250ml', 'Piece', 'Household & Cleaning Supplies', 14.50, 19.00, 10, 'Zonrox Bleach Original 250ml.png'),
(360, 'Zonrox Bleach Original', '1L', 'Piece', 'Household & Cleaning Supplies', 42.00, 45.00, 5, 'Zonrox Bleach Original 1L.png'),
(361, 'Cheese Bread 2pcs', NULL, 'Pack', 'Bread', 10.00, 12.00, 2, 'Cheese Bread 2pcs.png'),
(362, 'Hopiang Baboy 12pcs', NULL, 'Pack', 'Bread', 10.00, 12.00, 2, 'Hopiang Baboy 12pcs.png'),
(363, 'Kababayan Bread 12pcs', NULL, 'Pack', 'Bread', 10.00, 12.00, 2, 'Kababayan Bread 12pcs.png'),
(364, 'Kalihim Bread 12pcs', NULL, 'Pack', 'Bread', 10.00, 12.00, 2, 'Kalihim Bread 12pcs.png'),
(365, 'Pan de Legaspi 2pcs', NULL, 'Pack', 'Bread', 10.00, 12.00, 2, 'Pan de Legaspi 2pcs.png'),
(366, 'Pan de Legaspi 5pcs', NULL, 'Pack', 'Bread', 18.00, 20.00, 2, 'Pan de Legaspi 5pcs.png'),
(367, 'Pandesal 12pcs', NULL, 'Pack', 'Bread', 10.00, 12.00, 2, 'Pandesal 12pcs.png'),
(368, 'Pinagong 2pcs', NULL, 'Pack', 'Bread', 10.00, 12.00, 2, 'Pinagong 2pcs.png'),
(369, 'Putok Bread 2pcs', NULL, 'Pack', 'Bread', 10.00, 12.00, 2, 'Putok Bread 2pcs.png'),
(370, 'Spanish Bread 2pcs', NULL, 'Pack', 'Bread', 10.00, 12.00, 2, 'Spanish Bread 2pcs.png'),
(371, 'Beng-Beng Chocolate', '26.5g', 'Piece', 'Candies & Chocolates', 9.00, 10.00, 10, 'Beng-beng Chocolate 26.5g.png'),
(372, 'Choco Mucho Dark Chocolate', '30g', 'Piece', 'Candies & Chocolates', 9.50, 10.00, 10, 'Choco Mucho Dark Chocolate 30g.png'),
(373, 'Choco Mucho Milk Chocolate', '30g', 'Piece', 'Candies & Chocolates', 9.50, 10.00, 10, 'Choco Mucho Milk Chocolate 30g.png'),
(374, 'Choco Mucho Milk Chocolate with Peanut Butter', '30g', 'Piece', 'Candies & Chocolates', 9.50, 10.00, 10, 'Choco Mucho Milk Chocolate with Peanut Butter 30g.png'),
(375, 'Choco Mucho Minis', '8g', 'Piece', 'Candies & Chocolates', 2.63, 3.00, 20, 'Choco Mucho Minis 8g.png'),
(376, 'Choco Mucho White Chocolate Caramel', '30g', 'Piece', 'Candies & Chocolates', 9.50, 10.00, 10, 'Choco Mucho White Chocolate Caramel 30g.png'),
(377, 'Choco Mucho White Chocolate Chocolate Cookie Center', '30g', 'Piece', 'Candies & Chocolates', 9.50, 10.00, 10, 'Choco Mucho White Chocolate Chocolate Cookie Center 30g.png'),
(378, 'Cloud 9', '28g', 'Piece', 'Candies & Chocolates', 8.75, 10.00, 10, 'Cloud 9 28g.png'),
(379, 'Hawhaw Milk Powder Candy', '3.5g', 'Piece', 'Candies & Chocolates', 0.92, 1.00, 40, 'Hawhaw Milk Powder Candy 3.5g.png'),
(380, 'Monami Strawberry & Cream', '3.3g', 'Piece', 'Candies & Chocolates', 0.73, 1.00, 25, 'Monami Strawberry & Cream 3.3g.png'),
(381, 'Mentos Mint', '2.7g', 'Piece', 'Candies & Chocolates', 0.87, 1.00, 50, 'Mentos Mint 2.7g.png'),
(382, 'Vfresh Winter Cool Gum', '3.2g', 'Piece', 'Candies & Chocolates', 0.74, 1.00, 50, 'Vfresh Winter Cool Gum 3.2g.png'),
(383, 'XO Milktea', '3.5g', 'Piece', 'Candies & Chocolates', 0.84, 1.00, 50, 'XO Milktea 3.5g.png'),
(384, 'XO Coffee', '3.5g', 'Piece', 'Candies & Chocolates', 0.84, 1.00, 50, 'XO Coffee 3.5g.png'),
(385, 'XO Butter Caramel', '3.5g', 'Piece', 'Candies & Chocolates', 0.84, 1.00, 50, 'XO Butter Caramel 3.5g.png'),
(386, 'Sweet Dart Guava', '4g', 'Piece', 'Candies & Chocolates', 0.58, 1.00, 50, 'Sweet Dart Guava 4g.png'),
(387, 'Fres Mint Candy Grape', '3g', 'Piece', 'Candies & Chocolates', 0.86, 1.00, 50, 'Fres Mint Candy Grape 3g.png'),
(388, 'Fres Mint Candy Apple Peach', '3g', 'Piece', 'Candies & Chocolates', 0.86, 1.00, 50, 'Fres Mint Candy Apple Peach 3g.png'),
(389, 'Fres Mint Candy Barley', '3g', 'Piece', 'Candies & Chocolates', 0.86, 1.00, 50, 'Fres Mint Candy Barley 3g.png'),
(390, 'Fres Mint Candy Strawberry', '3g', 'Piece', 'Candies & Chocolates', 0.86, 1.00, 50, 'Fres Mint Candy Strawberry 3g.png'),
(391, 'Snowbear Menthol Ball', '4.8g', 'Piece', 'Candies & Chocolates', 0.85, 1.00, 100, 'Snowbear Menthol Ball 4.8g.png'),
(392, 'Dynamite Choco Mint', '4g', 'Piece', 'Candies & Chocolates', 0.84, 1.00, 50, 'Dynamite Choco Mint 4g.png'),
(393, 'Dynamite Melon Mint', '4g', 'Piece', 'Candies & Chocolates', 0.84, 1.00, 50, 'Dynamite Melon Mint 4g.png'),
(394, 'Maxx Menthol Candy Honeymansi', '4g', 'Piece', 'Candies & Chocolates', 0.84, 1.00, 50, 'Maxx Menthol Candy Honeymansi 4g.png'),
(395, 'Maxx Menthol Candy Extra Strength', '4g', 'Piece', 'Candies & Chocolates', 0.84, 1.00, 50, 'Maxx Menthol Candy Extra Strength 4g.png'),
(396, 'Maxx Menthol Candy Honey Lemon', '4g', 'Piece', 'Candies & Chocolates', 0.84, 1.00, 50, 'Maxx Menthol Candy Honey Lemon 4g.png'),
(397, 'Maxx Menthol Candy Cherry', '4g', 'Piece', 'Candies & Chocolates', 0.84, 1.00, 50, 'Maxx Menthol Candy Cherry 4g.png'),
(398, 'Ricoa Flat Tops Milk Chocolate', '5g', 'Piece', 'Candies & Chocolates', 1.87, 2.00, 30, 'Ricoa Flat Tops Milk Chocolate 5g.png'),
(399, 'Nips Peanuts', '14g', 'Piece', 'Candies & Chocolates', 4.77, 5.00, 12, 'Nips Peanuts 14g.png'),
(400, 'Nips Milk Chocolate', '14g', 'Piece', 'Candies & Chocolates', 4.77, 5.00, 12, 'Nips Milk Chocolate 14g.png'),
(401, 'Nips White Chocolate', '14g', 'Piece', 'Candies & Chocolates', 4.77, 5.00, 12, 'Nips White Chocolate 14g.png'),
(402, 'Lipps Pop Stick Color Rumble', '6.5g', 'Piece', 'Candies & Chocolates', 1.12, 2.00, 60, 'Lipps Pop Stick Color Rumble 6.5g.png'),
(403, 'Choco Joy', '3.5g', 'Piece', 'Candies & Chocolates', 0.74, 1.00, 50, 'Choco Joy 3.5g.png'),
(404, 'Pintoora Gum ball', '4g', 'Piece', 'Candies & Chocolates', 0.87, 1.00, 30, 'Pintoora Gum ball 4g.png'),
(405, 'Halls Mentho-Lyptus', '2.8g', 'Piece', 'Candies & Chocolates', 0.86, 1.00, 50, 'Halls Mentho-Lyptus 2.8g.png'),
(406, 'Halls Honey-Lemon', '2.8g', 'Piece', 'Candies & Chocolates', 0.86, 1.00, 50, 'Halls Honey-Lemon 2.8g.png'),
(407, 'Halls Raspberry', '2.8g', 'Piece', 'Candies & Chocolates', 0.86, 1.00, 50, 'Halls Raspberry 2.8g.png'),
(408, 'Halls Fresh Spearmint', '2.8g', 'Piece', 'Candies & Chocolates', 0.86, 1.00, 50, 'Halls Fresh Spearmint 2.8g.png'),
(409, 'Alaska Condensada', '206g', 'Piece', 'Dairy Products', 36.25, 40.00, 12, 'Alaska Condensada 206g.png'),
(410, 'Alaska Condensada', '370g', 'Piece', 'Dairy Products', 56.50, 60.00, 6, 'Alaska Condensada 370g.png'),
(411, 'Alaska Evaporada', '140ml', 'Piece', 'Dairy Products', 19.75, 23.00, 12, 'Alaska Evaporada 140ml.png'),
(412, 'Alaska Evaporada', '360ml', 'Piece', 'Dairy Products', 35.00, 39.00, 6, 'Alaska Evaporada 360ml.png'),
(413, 'Eden Cheese', '45g', 'Piece', 'Dairy Products', 17.50, 20.00, 6, 'Eden Cheese 45g.png'),
(414, 'Eden Cheese', '160g', 'Piece', 'Dairy Products', 55.00, 65.00, 6, 'Eden Cheese 160g.png'),
(415, 'Nestle All Purpose Cream', '250ml', 'Piece', 'Dairy Products', 69.50, 72.00, 6, 'Nestle All Purpose Cream 250ml.png');
INSERT INTO `inventory` (`product_id`, `product_name`, `net_weight`, `unit`, `category`, `unit_price`, `retail_price`, `stock`, `picture_url`) VALUES
(416, 'Star Margarine Classic Twin Pack', '30g', 'Piece', 'Dairy Products', 9.35, 13.00, 12, 'Star Margarine Classic Twin Pack 30g.png'),
(417, 'Star Margarine Classic', '100g', 'Piece', 'Dairy Products', 28.00, 38.00, 6, 'Star Margarine Classic 100g.png'),
(418, 'Star Margarine Sweet Blend Twin Pack', '30g', 'Piece', 'Dairy Products', 9.35, 13.00, 12, 'Star Margarine Sweet Blend Twin Pack 30g.png'),
(419, 'Star Margarine Sweet Blend', '100g', 'Piece', 'Dairy Products', 28.00, 38.00, 6, 'Star Margarine Sweet Blend 100g.png'),
(420, 'Datu Puti Soy Sauce', '350ml', 'Piece', 'Condiments and Sauces', 19.10, 23.00, 6, 'Datu Puti Soy Sauce 350ml.png'),
(421, 'Datu Puti Soy Vinegar', '350ml', 'Piece', 'Condiments and Sauces', 17.50, 21.00, 6, 'Datu Puti Soy Vinegar 350ml.png'),
(422, 'Del Monte Filipino Style Tomato Sauce', '200g', 'Piece', 'Condiments and Sauces', 2.50, 26.00, 6, 'Del Monte Filipino Style Tomato Sauce 200g.png'),
(423, 'Del Monte Original Style Tomato Sauce', '115g', 'Piece', 'Condiments and Sauces', 19.75, 23.00, 6, 'Del Monte Original Style Tomato Sauce 115g.png'),
(424, 'Del Monte Sweet Blend Ketchup with Reasealable Cap', '320g', 'Piece', 'Condiments and Sauces', 34.50, 40.00, 6, 'Del Monte Sweet Blend Ketchup with Reasealable Cap 320g.png'),
(425, 'Jufran Sweet Chili', '330g', 'Piece', 'Condiments and Sauces', 61.40, 68.00, 6, 'Jufran Sweet Chili 330g.png'),
(426, 'Mang Tomas All Around Sarsal', '100g', 'Piece', 'Condiments and Sauces', 11.50, 15.00, 12, 'Mang Tomas All Around Sarsal 100g.png'),
(427, 'Mang Tomas All Around Sarsal', '325g', 'Piece', 'Condiments and Sauces', 39.00, 44.00, 6, 'Mang Tomas All Around Sarsal 325g.png'),
(428, 'Mang Tomas Hot & Spicy All Around Sarsal', '325g', 'Piece', 'Condiments and Sauces', 40.00, 45.00, 6, 'Mang Tomas Hot & Spicy All Around Sarsal 325g.png'),
(429, 'PAPA Banana Ketchup', '100g', 'Piece', 'Condiments and Sauces', 10.25, 13.00, 12, 'PAPA Banana Ketchup 100g.png'),
(430, 'PAPA Banana Ketchup', '320g', 'Piece', 'Condiments and Sauces', 26.00, 30.00, 6, 'PAPA Banana Ketchup 320g.png'),
(431, 'Sarsaya Oyster Sauce', '30g', 'Piece', 'Condiments and Sauces', 6.00, 8.00, 12, 'Sarsaya Oyster Sauce 30g.png'),
(432, 'Silver Swan Patis', '100ml', 'Piece', 'Condiments and Sauces', 10.75, 13.00, 12, 'Silver Swan Patis 100ml.png'),
(433, 'Silver Swan Soy Sauce', '100ml', 'Piece', 'Condiments and Sauces', 6.35, 8.00, 24, 'Silver Swan Soy Sauce 100ml.png'),
(434, 'Silver Swan Soy Sauce', '200ml', 'Piece', 'Condiments and Sauces', 10.50, 12.00, 12, 'Silver Swan Soy Sauce 200ml.png'),
(435, 'Silver Swan Soy Sauce', '350ml', 'Piece', 'Condiments and Sauces', 20.00, 23.00, 6, 'Silver Swan Soy Sauce 350ml.png'),
(436, 'Silver Swan Sukang Puti', '100ml', 'Piece', 'Condiments and Sauces', 4.85, 7.00, 24, 'Silver Swan Sukang Puti 100ml.png'),
(437, 'Silver Swan Sukang Puti', '200ml', 'Piece', 'Condiments and Sauces', 6.88, 11.00, 12, 'Silver Swan Sukang Puti 200ml.png'),
(438, 'Silver Swan Sukang Puti', '350ml', 'Piece', 'Condiments and Sauces', 19.00, 21.00, 6, 'Silver Swan Sukang Puti 350ml.png'),
(439, 'UFC Banana Catsup', '100g', 'Piece', 'Condiments and Sauces', 12.25, 15.00, 12, 'UFC Banana Catsup 100g.png'),
(440, 'UFC Banana Catsup', '200g', 'Piece', 'Condiments and Sauces', 19.75, 24.00, 6, 'UFC Banana Catsup 200g.png'),
(441, 'UFC Banana Catsup', '320g', 'Piece', 'Condiments and Sauces', 28.00, 30.00, 6, 'UFC Banana Catsup 320g.png'),
(442, 'Ajinomoto Ginisa Flavor Seasoning Mix', '80g', 'Piece', 'Cooking Ingredients and Season', 18.50, 20.00, 6, 'Ajinomoto Ginisa Flavor Seasoning Mix 80g.png'),
(443, 'Ajinomoto Crispy Fry Original Breading Mix', '62g', 'Piece', 'Cooking Ingredients and Season', 20.00, 23.00, 6, 'Ajinomoto Crispy Fry Original Breading Mix 62g.png'),
(444, 'Ajinomoto Umami Seasoning', '11g', 'Piece', 'Cooking Ingredients and Season', 5.96, 8.00, 12, 'Ajinomoto Umami Seasoning 11g.png'),
(445, 'Cheesemiss Gourmet Cheese Flavoring Powder', '30g', 'Piece', 'Cooking Ingredients and Season', 8.00, 10.00, 12, 'Cheesemiss Gourmet Cheese Flavoring Powder 30g.png'),
(446, 'Ginisa Flavor Seasoning Mix', '8g', 'Piece', 'Cooking Ingredients and Season', 2.75, 4.00, 12, 'Ginisa Flavor Seasoning Mix 8g.png'),
(447, 'Knorr Beef Broth Cube', '10g', 'Piece', 'Cooking Ingredients and Season', 6.50, 7.00, 12, 'Knorr Beef Broth Cube 10g.png'),
(448, 'Knorr Chicken Broth Cube', '10g', 'Piece', 'Cooking Ingredients and Season', 6.50, 7.00, 12, 'Knorr Chicken Broth Cube 10g.png'),
(449, 'Knorr Pork Broth Cube', '10g', 'Piece', 'Cooking Ingredients and Season', 6.50, 7.00, 12, 'Knorr Pork Broth Cube 10g.png'),
(450, 'Knorr Sinigang Sampalok Mix Gabi', '11g', 'Piece', 'Cooking Ingredients and Season', 8.50, 9.00, 12, 'Knorr Sinigang Sampalok Mix Gabi 11g.png'),
(451, 'Knorr Sinigang Sampalok Mix Gabi', '22g', 'Piece', 'Cooking Ingredients and Season', 16.00, 20.00, 12, 'Knorr Sinigang Sampalok Mix Gabi 22g.png'),
(452, 'Knorr Sinigang Sampalok Mix Original', '11g', 'Piece', 'Cooking Ingredients and Season', 8.50, 9.00, 12, 'Knorr Sinigang Sampalok Mix Original 11g.png'),
(453, 'Knorr Sinigang Sampalok Mix Original', '22g', 'Piece', 'Cooking Ingredients and Season', 16.50, 20.00, 12, 'Knorr Sinigang Sampalok Mix Original 22g.png'),
(454, 'Maggi Magic Sarap All-in-One', '8g', 'Piece', 'Cooking Ingredients and Season', 3.68, 5.00, 12, 'Maggi Magic Sarap All-in-One 8g.png'),
(455, 'Best Foods Salad & Sandwich Mate', '220ml', 'Piece', 'Spreads & Fillings', 64.25, 72.00, 6, 'Best Foods Salad & Sandwich Mate 220ml.png'),
(456, 'Best Foods Salad & Sandwich Mate', '220ml', 'Piece', 'Spreads & Fillings', 77.50, 85.00, 6, 'Best Foods Salad & Sandwich Mate 220ml.png'),
(457, 'Ladys Choice Chicken Spread', '80ml', 'Piece', 'Spreads & Fillings', 39.75, 45.00, 6, 'Ladys Choice Chicken Spread 80ml.png'),
(458, 'Ladys Choice Ham Spread', '80ml', 'Piece', 'Spreads & Fillings', 39.75, 45.00, 6, 'Ladys Choice Ham Spread 80ml.png'),
(459, 'Ladys Choice Sandwich Spread', '80ml', 'Piece', 'Spreads & Fillings', 39.75, 45.00, 6, 'Ladys Choice Sandwich Spread 80ml.png'),
(460, 'Ladys Choice Tuna Spread', '80ml', 'Piece', 'Spreads & Fillings', 40.00, 45.00, 6, 'Ladys Choice Tuna Spread 80ml.png'),
(461, 'Reno Liver Spread', '85g', 'Piece', 'Spreads & Fillings', 24.75, 32.00, 6, 'Reno Liver Spread 85g.png'),
(462, 'Best Buy Index Card 3x5', NULL, 'Piece', 'School Supplies', 0.22, 0.50, 50, 'Best Buy Index Card 3x5.png'),
(463, 'Best Buy Index Card 4x6', NULL, 'Piece', 'School Supplies', 0.28, 1.00, 50, 'Best Buy Index Card 4x6.png'),
(464, 'Best Buy Index Card 5x8', NULL, 'Piece', 'School Supplies', 0.60, 1.50, 25, 'Best Buy Index Card 5x8.png'),
(465, 'Hard Copy Bond Paper Long', NULL, 'Piece', 'School Supplies', 0.59, 1.50, 500, 'Hard Copy Bond Paper Long.png'),
(466, 'Hard Copy Bond Paper Short', NULL, 'Piece', 'School Supplies', 0.49, 1.00, 500, 'Hard Copy Bond Paper Short.png'),
(467, 'Cardboard 1/4', NULL, 'Piece', 'School Supplies', 14.00, 24.00, 10, 'Cardboard 1/4.png'),
(468, 'Caryola Crayons 8colors', NULL, 'Piece', 'School Supplies', 34.00, 37.00, 5, 'Caryola Crayons 8colors.png'),
(469, 'Colored Paper Blue Long', NULL, 'Piece', 'School Supplies', 1.80, 3.00, 20, 'Colored Paper Blue Long.png'),
(470, 'Colored Paper Blue Short', NULL, 'Piece', 'School Supplies', 1.65, 2.00, 20, 'Colored Paper Blue Short.png'),
(471, 'Colored Paper Green Long', NULL, 'Piece', 'School Supplies', 1.80, 3.00, 20, 'Colored Paper Green Long.png'),
(472, 'Colored Paper Green Short', NULL, 'Piece', 'School Supplies', 1.65, 2.00, 20, 'Colored Paper Green Short.png'),
(473, 'Colored Paper Orange Long', NULL, 'Piece', 'School Supplies', 1.80, 3.00, 20, 'Colored Paper Orange Long.png'),
(474, 'Colored Paper Orange Short', NULL, 'Piece', 'School Supplies', 1.65, 2.00, 20, 'Colored Paper Orange Short.png'),
(475, 'Colored Paper Pink Long', NULL, 'Piece', 'School Supplies', 1.80, 3.00, 20, 'Colored Paper Pink Long.png'),
(476, 'Colored Paper Pink Short', NULL, 'Piece', 'School Supplies', 1.65, 2.00, 20, 'Colored Paper Pink Short.png'),
(477, 'Colored Paper Red Long', NULL, 'Piece', 'School Supplies', 1.80, 3.00, 20, 'Colored Paper Red Long.png'),
(478, 'Colored Paper Red Short', NULL, 'Piece', 'School Supplies', 1.65, 2.00, 20, 'Colored Paper Red Short.png'),
(479, 'Colored Paper Yellow Long', NULL, 'Piece', 'School Supplies', 1.80, 3.00, 20, 'Colored Paper Yellow Long.png'),
(480, 'Colored Paper Yellow Short', NULL, 'Piece', 'School Supplies', 1.65, 2.00, 20, 'Colored Paper Yellow Short.png'),
(481, 'Easywrite Quiz Pad 1/2 Crosswise', NULL, 'Piece', 'School Supplies', 15.00, 20.00, 6, 'Easywrite Quiz Pad 1/2 Crosswise.png'),
(482, 'Easywrite Quiz Pad 1/2 Lengthwise', NULL, 'Piece', 'School Supplies', 15.00, 20.00, 6, 'Easywrite Quiz Pad 1/2 Lengthwise.png'),
(483, 'Easywrite Quiz Pad 1/4', NULL, 'Piece', 'School Supplies', 8.00, 15.00, 6, 'Easywrite Quiz Pad 1/4.png'),
(484, 'Easywrite Yellowpad', NULL, 'Piece', 'School Supplies', 52.00, 55.00, 6, 'Easywrite Yellowpad.png'),
(485, 'Envelope Brown Long', NULL, 'Piece', 'School Supplies', 5.50, 8.00, 6, 'Envelope Brown Long.png'),
(486, 'Envelope Brown Plastic Long', NULL, 'Piece', 'School Supplies', 10.50, 13.00, 6, 'Envelope Brown Plastic Long.png'),
(487, 'Envelope Brown Plastic Short', NULL, 'Piece', 'School Supplies', 9.00, 12.00, 6, 'Envelope Brown Plastic Short.png'),
(488, 'Envelope Brown Short', NULL, 'Piece', 'School Supplies', 4.58, 6.00, 6, 'Envelope Brown Short.png'),
(489, 'Envelope Plastic Long', NULL, 'Piece', 'School Supplies', 10.50, 13.00, 6, 'Envelope Plastic Long.png'),
(490, 'Envelope Plastic Short', NULL, 'Piece', 'School Supplies', 9.00, 12.00, 6, 'Envelope Plastic Short.png'),
(491, 'Folder White Long', NULL, 'Piece', 'School Supplies', 5.50, 8.00, 6, 'Folder White Long.png'),
(492, 'Folder White Short', NULL, 'Piece', 'School Supplies', 4.50, 7.00, 6, 'Folder White Short.png'),
(493, 'Glue Stick', '21g', 'Piece', 'School Supplies', 32.00, 37.00, 6, 'Glue Stick 21g.png'),
(494, 'Graphic Paper', NULL, 'Piece', 'School Supplies', 0.75, 1.00, 20, 'Graphic Paper.png'),
(495, 'Hard Copy Bond Paper Long', NULL, 'Piece', 'School Supplies', 0.59, 1.50, 500, 'Hard Copy Bond Paper Long.png'),
(496, 'Hard Copy Bond Paper Short', NULL, 'Piece', 'School Supplies', 0.49, 1.00, 500, 'Hard Copy Bond Paper Short.png'),
(497, 'HBW Glue', '40g', 'Piece', 'School Supplies', 18.00, 25.00, 10, 'HBW Glue 40g.png'),
(498, 'HBW Office Marker', NULL, 'Piece', 'School Supplies', 11.25, 20.00, 4, 'HBW Office Marker.png'),
(499, 'Manila Paper', NULL, 'Piece', 'School Supplies', 4.17, 7.00, 6, 'Manila Paper.png'),
(500, 'Mongol 482 No2 Pencil', NULL, 'Piece', 'School Supplies', 5.43, 10.00, 12, 'Mongol 482 No2 Pencil.png'),
(501, 'Mongol XL No2 Pencil', NULL, 'Piece', 'School Supplies', 9.58, 13.00, 12, 'Mongol XL No2 Pencil.png'),
(502, 'Nataraj 621 Plasto Eraser', NULL, 'Piece', 'School Supplies', 3.50, 5.00, 25, 'Nataraj 621 Plasto Eraser.png'),
(503, 'Oslo Paper', NULL, 'Piece', 'School Supplies', 1.40, 2.00, 10, 'Oslo Paper.png'),
(504, 'Panda Ballpen', NULL, 'Piece', 'School Supplies', 3.75, 7.00, 12, 'Panda Ballpen.png'),
(505, 'Ruler', NULL, 'Piece', 'School Supplies', 5.00, 7.00, 10, 'Ruler.png'),
(506, 'Scissors', NULL, 'Piece', 'School Supplies', 13.00, 15.00, 10, 'Scissors.png'),
(507, 'Sharpener', NULL, 'Piece', 'School Supplies', 3.50, 5.00, 10, 'Sharpener.png'),
(508, 'Tape', NULL, 'Piece', 'School Supplies', 5.50, 7.00, 10, 'Tape.png'),
(509, 'Toyqi Erasing Whiteboard Marker', NULL, 'Piece', 'School Supplies', 8.50, 10.00, 10, 'Toyqi Erasing Whiteboard Marker.png');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `item_number` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `retail_price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `phone_number`, `password`) VALUES
(1, 'helloword', 'asdasd@gmail.com', '09123456789', '1235456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_sales`
--
ALTER TABLE `all_sales`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `daily_sales_summary`
--
ALTER TABLE `daily_sales_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`item_number`),
  ADD KEY `fk_sale_id` (`sale_id`),
  ADD KEY `fk_product_id` (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_sales`
--
ALTER TABLE `all_sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `daily_sales_summary`
--
ALTER TABLE `daily_sales_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `item_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `inventory` (`product_id`),
  ADD CONSTRAINT `fk_sale_id` FOREIGN KEY (`sale_id`) REFERENCES `all_sales` (`sale_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
