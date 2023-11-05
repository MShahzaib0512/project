-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2023 at 04:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

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
(1, 'Admin1', '@dmin/././');

-- --------------------------------------------------------

--
-- Table structure for table `chinese_food`
--

CREATE TABLE `chinese_food` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(255) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chinese_food`
--

INSERT INTO `chinese_food` (`id`, `name`, `price`, `image`) VALUES
(5, 'kheer', 1, ''),
(6, 'meat', 1, ''),
(7, 'naan', 0, ''),
(8, 'masala', 50, 'logo.png'),
(9, '', 0, ''),
(10, '', 0, ''),
(11, '', 0, ''),
(12, 'memona ', 21, 'logo.png'),
(13, 'childish', 500, 'logo.png'),
(14, 'white karahi', 500, 'logo.png'),
(15, 'white ghost', 500, 'logo.png'),
(16, 'spicy dish', 1000, 'logo.png'),
(17, 'Memona Ramzan', 500, 'logo.png'),
(18, 'ayesha', 500, 'logo.png'),
(19, 'ayesha', 500, 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `food_order`
--

CREATE TABLE `food_order` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `item` varchar(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `address` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_order`
--

INSERT INTO `food_order` (`id`, `name`, `phone`, `item`, `quantity`, `address`) VALUES
(1, '1', 982763536, '1', 2, '0'),
(5, 'Memona Ramzan', 87654322, 'bitgd', 5, 'vffvzdfzg'),
(6, 'Memona Ramzan', 2147483647, 'pasta', 1, 'affsghh'),
(9, 'ali', 2147483647, 'pasta', 2, 'affsghh'),
(10, 'hamza', 2147483647, 'biryani', 1, 'affsghh'),
(11, 'Memona Ramzan', 2147483647, 'pasta', 1, 'affsghh');

-- --------------------------------------------------------

--
-- Table structure for table `french_food`
--

CREATE TABLE `french_food` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `french_food`
--

INSERT INTO `french_food` (`id`, `name`, `price`, `image`) VALUES
(1, 'childish', '1000', 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `italian_food`
--

CREATE TABLE `italian_food` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `japanese_food`
--

CREATE TABLE `japanese_food` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `japanese_food`
--

INSERT INTO `japanese_food` (`id`, `name`, `price`, `image`) VALUES
(2, 'Memona Ramzan', '500', 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `korean_food`
--

CREATE TABLE `korean_food` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korean_food`
--

INSERT INTO `korean_food` (`id`, `name`, `price`, `image`) VALUES
(2, 'pizza', 'large 1000Rs', ''),
(3, 'Memona Ramzan', '500', ''),
(4, 'Memona Ramzan', '500', 'logo.png'),
(5, 'Memona Ramzan', '500', 'logo.png'),
(6, 'Memona Ramzan', '500', 'logo.png'),
(7, 'memona ', '500', 'logo.png'),
(8, 'memona ', '500', 'logo.png');

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
(16, 'shahzaib', 'monarana@gmail.com', 982763536, '982q42'),
(17, 'sdfsf@f.com', 'monarana@gmail.com', 982763536, '23333'),
(18, 'sdfsf@f.com', 'monarana@gmail.com', 2147483647, '2122');

-- --------------------------------------------------------

--
-- Table structure for table `spanish_food`
--

CREATE TABLE `spanish_food` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spanish_food`
--

INSERT INTO `spanish_food` (`id`, `name`, `price`, `image`) VALUES
(1, 'memona ', '500', 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `traditional_food`
--

CREATE TABLE `traditional_food` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `traditional_food`
--

INSERT INTO `traditional_food` (`id`, `name`, `price`, `image`) VALUES
(2, 'kofta', '600', ''),
(3, 'Memona Ramzan', '500', 'logo.png'),
(4, 'childish', '1000', 'logo.png'),
(5, 'childish', '1000', 'logo.png');

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
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `food_order`
--
ALTER TABLE `food_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `french_food`
--
ALTER TABLE `french_food`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `italian_food`
--
ALTER TABLE `italian_food`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `japanese_food`
--
ALTER TABLE `japanese_food`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `korean_food`
--
ALTER TABLE `korean_food`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `spanish_food`
--
ALTER TABLE `spanish_food`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `traditional_food`
--
ALTER TABLE `traditional_food`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
