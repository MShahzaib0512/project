-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2023 at 06:58 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'Admin1', '123');

-- --------------------------------------------------------

--
-- Table structure for table `chinese_food`
--

CREATE TABLE `chinese_food` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chinese_food`
--

INSERT INTO `chinese_food` (`id`, `name`, `price`, `image`) VALUES
(25, 'Chicken chow mein', 'Rs 150', 'Chicken chow mein.jpg'),
(26, 'Sweet and Sour Chicken', 'Rs 450', 'Chinese sweet and sour chicken.jpg'),
(27, 'Dim Sum', 'Rs 2450', 'Dim Sum.jpg'),
(28, 'Fried Spring rolls', 'Rs 450 (pack of 12 rolls)', 'fried spring rolls.jpg'),
(29, 'General Tso Chicken ', 'Rs 1495', 'General Tso Chicken.jpg'),
(30, 'Kimchi Fried Rice', 'Rs 800', 'Kimchi Fried Rice.jpg'),
(31, 'Orange chicken', 'Rs 1670', 'Orange Chicken .jpg'),
(32, 'Shrimp Wontons ', 'Rs 1750', 'Shrimp wontons.jpg'),
(33, 'Wonton soup noodle', 'Rs 450', 'Wonton soup noodle .jpg');

-- --------------------------------------------------------

--
-- Table structure for table `food_order`
--

CREATE TABLE `food_order` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_order`
--

INSERT INTO `food_order` (`id`, `name`, `phone`, `item`, `quantity`, `address`) VALUES
(1, 'Ahmad', 2121, 12, 22, 'lahore'),
(3, 'Shahzaib', 300000000, 0, 2, 'kjbkaebd'),
(5, 'TOUU', 215156, 0, 23, 'BWP');

-- --------------------------------------------------------

--
-- Table structure for table `french_food`
--

CREATE TABLE `french_food` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `french_food`
--

INSERT INTO `french_food` (`id`, `name`, `price`, `image`) VALUES
(1, 'Beef Wellington ', 'Rs 1550', 'Beef Wellington.jpg'),
(2, 'Bowl of French onion soup ', 'Rs 550', 'Bowl of French onion soup.jpg'),
(3, 'Butternut squash chickpea cassoulet ', 'Rs 820', 'Butternut squash chickpea cassoulet.jpg'),
(4, 'Cassoulet', 'Rs 6000', 'Cassoulet.jpg'),
(5, 'Escargot', 'Rs 1350', 'Escargot.jpg'),
(6, 'Fish soup', 'Rs 550', 'Fish Soup.jpg'),
(7, 'French Coq Au Vin Chicken', 'Rs 1400', 'French Coq Au Vin Chicken .jpg'),
(8, 'French Dessert or lite', 'Rs 350', 'french dessert or leite.jpg'),
(9, 'Freshly baked croissants', 'Rs 190', 'freshly baked croissants.jpg'),
(10, 'Ratatouille', 'Rs 700', 'Ratatouille .jpg');

-- --------------------------------------------------------

--
-- Table structure for table `italian_food`
--

CREATE TABLE `italian_food` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `italian_food`
--

INSERT INTO `italian_food` (`id`, `name`, `price`, `image`) VALUES
(5, 'Creamy Mushroom orzo', 'Rs 230', 'Creamy Mushroom Orzo.jpg'),
(6, 'Italian Osso Bucco ', 'Rs 1375', 'Italian Osso Buco.jpg'),
(7, 'Minestrone soup', 'Rs 200', 'Minestrone soup.jpg'),
(8, 'Pasta Carbonara', 'Rs 280', 'Pasta carbonara.jpg'),
(9, 'Pizza Hawaiian cheese ', 'Rs 1000', 'Pizza hawaiian cheese .jpg'),
(10, 'Risotto with prawns, salmon', 'Rs 2895', 'Risotto with prawns, salmon.jpg'),
(11, 'Roasted chicken lasagna with mozzarella  ', 'Rs 250', 'Roasted chicken lasagna with mozzarella.jpg'),
(12, 'Spaghetti Bolognese  ', 'Rs 9,515', 'Spaghetti Bolognese.jpg'),
(13, 'Zabaglione dessert', 'Rs 500', 'Zabaglione Dessert.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `japanese_food`
--

CREATE TABLE `japanese_food` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `japanese_food`
--

INSERT INTO `japanese_food` (`id`, `name`, `price`, `image`) VALUES
(2, 'Dipping tasty sashimi', 'Rs 5000', 'Dipping tasty sashimi.jpg'),
(3, 'Omelette Rice with Curry', 'RS 1200', 'Japanese Omelette Rice with Curry.jpg'),
(4, 'Kake udon', 'Rs 1000', 'Kake udon.jpg'),
(5, 'Picking soy sauce ramen', 'Rs 1000', 'Picking soy sauce ramen .jpg'),
(6, 'Serving sushi rolls', 'Rs 2000', 'Serving Sushi Rolls.jpg'),
(7, 'Warm oden', 'Rs 5000', 'warm oden.jpg'),
(8, 'Yaki Onigiri', 'Rs 1650', 'Yaki Onigir.jpg'),
(9, 'Zaru_soba', 'Rs 560', 'Zaru-soba.jpg'),
(10, 'miso soup', 'Rs 3000', 'miso soup.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `korean_food`
--

CREATE TABLE `korean_food` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korean_food`
--

INSERT INTO `korean_food` (`id`, `name`, `price`, `image`) VALUES
(5, 'Chilli japchae', 'Rs 6000', 'Chilli japchae.jpg'),
(7, 'Deep fried mandu', 'Rs 600', 'Deep-fried Mandu.jpg'),
(9, 'Fried Noodles', 'Rs 1299', 'fried noodles.jpg'),
(11, 'Galbi', 'Rs 700', 'Galbi .jpg'),
(13, 'Jajangmyeon', 'Rs 5228', 'Jjajangmyeon.jpg'),
(15, 'Korean beef Bulgogi BBQ', 'Rs 1645', 'Korean beef Bulgogi BBQ.jpg'),
(17, 'San-nakji ', 'Rs 1700', 'San-nakji.jpg'),
(19, 'Spicy kimchi soup', 'Rs 695', 'spicy kimchi soup.jpg'),
(21, 'Steamed mandu ', 'Rs 320', 'Steamed mandu.jpg'),
(23, 'Tteokbokki  with eggs ', 'RS 1000', 'Tteokbokki with eggs.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `email`, `phone`, `password`) VALUES
(6, 'ramzan', 'monarana@gmail.com', 300000000, '12345'),
(10, 'rana', 'monarana@gmail.com', 32567882, '6534245'),
(11, '', '', 0, '73366'),
(12, '', '', 0, 'mona@gmail.com'),
(13, 'rana', 'monarana@gmail.com', 98765445, '6534245'),
(14, 'rana', '123@gmail.com', 455555555, '6534245'),
(15, 'Admin1', 'kajjajaj@gmail', 3000000, '12345'),
(16, 'shahzaib', 'monarana@gmail.com', 982763536, '982q42');

-- --------------------------------------------------------

--
-- Table structure for table `spanish_food`
--

CREATE TABLE `spanish_food` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spanish_food`
--

INSERT INTO `spanish_food` (`id`, `name`, `price`, `image`) VALUES
(2, 'Castilian garlic soup', 'Rs 4500', 'Castilian garlic soup.jpg'),
(3, 'Prawns al Ajillo', 'RS 635', 'Prawns al Ajillo .jpg'),
(4, 'pulpo a al gallega', 'Rs 4000', 'Pulpo a la gallega in spanish style.jpg'),
(5, 'Seafood paella', 'Rs 1800', 'seafood paella.jpg'),
(6, 'Black paella', 'Rs 1650', 'Spanish arroz negro or black paella.jpg'),
(7, 'Tomato  gazpacho soup', 'Rs 800', 'Tomato Gazpacho soup.jpg'),
(8, 'Tortilla', 'Rs 350', 'Tortilla .jpg');

-- --------------------------------------------------------

--
-- Table structure for table `traditional_food`
--

CREATE TABLE `traditional_food` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `traditional_food`
--

INSERT INTO `traditional_food` (`id`, `name`, `price`, `image`) VALUES
(3, 'Butter chicken curry', 'Rs 2060', 'Butter chicken curry.jpg'),
(4, 'chicken korma', 'RS 900', 'Chicken  korma.jpg'),
(5, 'Fried samosa ', 'RS 50', 'Fried  Samosa.jpg'),
(6, 'Seakh kabab ', 'RS 180', 'Seekh Kabab.jpg'),
(7, 'loaded fries', 'RS 750', 'loaded fries.jpg'),
(8, 'Nargis kofta', 'RS 200', 'Nargisi Kofta.jpg'),
(9, 'Spicy BBQ Chicken tikka bot', 'Rs 390', 'Spicy bbq Chicken Tikka bot.jpg'),
(10, 'Zinger burger', 'RS 500', 'Zinger_burger.jpg'),
(11, 'Shawarma', 'RS 190', 'shawarma.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chinese_food`
--
ALTER TABLE `chinese_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_order`
--
ALTER TABLE `food_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `french_food`
--
ALTER TABLE `french_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `italian_food`
--
ALTER TABLE `italian_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `japanese_food`
--
ALTER TABLE `japanese_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korean_food`
--
ALTER TABLE `korean_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spanish_food`
--
ALTER TABLE `spanish_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `traditional_food`
--
ALTER TABLE `traditional_food`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chinese_food`
--
ALTER TABLE `chinese_food`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `food_order`
--
ALTER TABLE `food_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `french_food`
--
ALTER TABLE `french_food`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `italian_food`
--
ALTER TABLE `italian_food`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `japanese_food`
--
ALTER TABLE `japanese_food`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `korean_food`
--
ALTER TABLE `korean_food`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `spanish_food`
--
ALTER TABLE `spanish_food`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `traditional_food`
--
ALTER TABLE `traditional_food`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
