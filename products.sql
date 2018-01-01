-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2018 at 01:26 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(5) NOT NULL,
  `brand_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`) VALUES
(1, 'Apple'),
(2, 'Huawei'),
(3, 'Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(5) NOT NULL,
  `item_name` varchar(40) NOT NULL,
  `brand_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `brand_id`) VALUES
(1, 'GR 5 2017', 2),
(2, 'P9 Lite', 2),
(3, 'Y3(2017)', 2),
(4, 'Y5(2017)', 2),
(5, 'Y6(2017)', 2),
(6, 'Nova 2', 2),
(7, 'Mate 10', 2),
(8, 'Y7 Prime', 2),
(9, 'P8 Lite', 2),
(10, 'Enjoy 7s', 2),
(11, 'iPhone X', 1),
(12, 'iPhone 5s', 1),
(13, 'iPhone 6', 1),
(14, 'iPhone 6s', 1),
(15, 'iPhone 6 Plus', 1),
(16, 'iPhone SE', 1),
(17, 'iPhone 7', 1),
(18, 'iPhone 7 Plus', 1),
(19, 'iPhone 8', 1),
(20, 'iPhone 8 Plus', 1),
(21, 'Galaxy J2(2017)', 3),
(22, 'Galaxy Note 8', 3),
(23, 'Galaxy J7 Pro', 3),
(24, 'Galaxy A5(2017)', 3),
(25, 'Galaxy A7(2017)', 3),
(26, 'Galaxy J2 Prime', 3),
(27, 'Galaxy J3(2017)', 3),
(28, 'Galaxy S8', 3),
(29, 'Galaxy J7 Max', 3),
(30, 'Galaxy A8(2018)', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
