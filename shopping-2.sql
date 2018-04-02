-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 02, 2018 at 08:07 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `ccn` varchar(16) NOT NULL,
  `ccv` varchar(3) NOT NULL,
  `expmonth` varchar(12) NOT NULL,
  `expyear` varchar(12) NOT NULL,
  `adrsline1` varchar(100) NOT NULL,
  `adrsline2` varchar(100) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `postal` varchar(10) NOT NULL,
  `country` varchar(25) NOT NULL,
  `bfname` varchar(50) NOT NULL,
  `blname` varchar(50) NOT NULL,
  `bemail` varchar(50) NOT NULL,
  `sadrsline1` varchar(100) NOT NULL,
  `sadrsline2` varchar(100) NOT NULL,
  `scity` varchar(25) NOT NULL,
  `sstate` varchar(25) NOT NULL,
  `spostal` varchar(10) NOT NULL,
  `scountry` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`id`, `email`, `fname`, `lname`, `ccn`, `ccv`, `expmonth`, `expyear`, `adrsline1`, `adrsline2`, `city`, `state`, `postal`, `country`, `bfname`, `blname`, `bemail`, `sadrsline1`, `sadrsline2`, `scity`, `sstate`, `spostal`, `scountry`) VALUES
(1, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Afghanistan'),
(2, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1@g.com', '1', '1', '', '1', '1', 'Gabon'),
(3, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Kazakhstan'),
(4, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1@a.com', '1', '1', '', '1', '1', 'Haiti'),
(5, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Jamaica'),
(6, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'United States'),
(7, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Laos'),
(8, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Laos'),
(9, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@a.com', '1', '', '', '1', '1', 'Oman'),
(10, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'The Bahamas'),
(11, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(12, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(13, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1@1.com', '1', '1', '', '1', '1', 'The Bahamas'),
(14, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1@a.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(15, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'United States'),
(16, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '', 'The Bahamas'),
(17, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1@a.com', '1', '1', '', '1', '1', 'Wallis and Futuna'),
(18, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(19, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(20, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(21, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Western Sahara'),
(22, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', 'q', 'q', 'q@q.com', 'q', 'q', '', 'q', 'q', 'Wallis and Futuna'),
(23, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(24, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(25, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(26, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(27, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(28, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(29, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(30, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(31, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(32, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(33, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(34, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(35, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(36, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(37, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(38, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(39, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(40, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(41, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(42, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(43, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(44, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(45, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'a@gmail.com', '1', '1', '', '1', '1', 'Qatar'),
(46, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(47, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(48, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(49, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(50, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(51, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(52, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(53, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(54, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(55, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(56, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(57, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(58, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(59, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(60, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(61, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(62, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(63, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(64, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(65, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(66, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(67, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(68, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(69, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(70, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(71, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(72, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(73, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(74, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(75, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(76, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(77, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(78, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(79, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(80, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(81, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(82, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(83, 'aman999999aman@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', 'aman999999aman@gmail.com', '1', '1', '', '1', '1', 'Ecuador'),
(84, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(85, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(86, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(87, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(88, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(89, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(90, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(91, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(92, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(93, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(94, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(95, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(96, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(97, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(98, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2', 'a@gmail.com', '1', '1', '', '1', '1', 'Republic of the Congo'),
(99, 'aman999999aman@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'aman999999aman@gmail.com', '', '', '', '', '', ''),
(100, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a@gmail.com', '', '', '', '', '', ''),
(101, 'a@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a@gmail.com', '', '', '', '', '', ''),
(102, 'aman999999aman@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'aman999999aman@gmail.com', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `prod`
--

CREATE TABLE `prod` (
  `id` varchar(20) NOT NULL,
  `vendor` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prod`
--

INSERT INTO `prod` (`id`, `vendor`, `name`, `quantity`, `price`, `Type`) VALUES
('5a805b7d2eebc', 'Aman', 'Black Jacket', 1, 1500, 'Men'),
('5a805bd8e6880', 'Grey Jacket', 'Grey Jacket', 1, 1568, 'Men'),
('5a805bf82a60a', 'Sahil', 'Jacket', 2, 1400, 'Men'),
('5a805c0f09ea4', 'Akshat', 'High Neck', 3, 1300, 'Men'),
('5a806c29735cd', 'Sahil', 'Jacket', 1, 1200, 'Men'),
('5a8e6f6733881', 'Harpreet', 'Skirt', 1, 1000, 'women'),
('5a8ee90cf18bb', 'BIBA', 'Top', 2, 1399, 'women'),
('5a8ee98673ef5', 'BIBA', 'BIBA', 4, 1699, 'women'),
('5a8ef27125e69', 'BIBA', 'PARTY DRESS', 4, 2999, 'women'),
('5a8ef334f3a8f', 'Adidas', 'Adidas Sport', 1, 12999, 'accessories'),
('5a8ef3839289d', 'Adidas', 'Adidas pro', 3, 1999, 'accessories'),
('5a8ef3c7e89aa', 'Cagarny', 'Cagarny 6820', 1, 9999, 'accessories'),
('5a8ef4984e930', 'Brother', 'Frock', 3, 599, 'kids'),
('5a8ef503cde72', 'Brother', 'Top', 2, 1499, 'kids'),
('5a8ef562b2f82', 'Brother', 'Dress', 3, 129, 'kids'),
('5a8ef5c1c1121', 'Ludhiana', 'Sweater full', 3, 1999, 'sale'),
('5a8ef5da21f7c', 'BIBA', 'Kurti', 5, 1299, 'sale'),
('5aabd79da66b3', 'Aman', 'Formal', 4, 1600, 'Men'),
('5aabd7d77dd7e', 'Git', 'T-shirt', 2, 1400, 'Men'),
('5aabd837d52c0', 'Git', 'Suit', 3, 6700, 'Men'),
('5aabd871ba566', 'Git', 'Formal', 5, 5999, 'Men'),
('5aabd8bd427dd', 'Biba', 'Lehnga', 5, 10999, 'women'),
('5aabda20db682', 'Biba', 'Hoodie', 3, 1299, 'sale'),
('5aabda5a6bf20', 'Biba', 'Top', 12, 1099, 'women'),
('5aabdb3fa7840', 'vandita kaur', 'jeans', 1, 1150, 'women'),
('5aabdb93f233f', 'Git', 'Lower', 12, 999, 'Men'),
('5aabdbca36f24', 'vandita kaur', 'sabhyasachi', 1, 7500, 'women'),
('5aabdbe41202b', 'Biba', 'Dress', 12, 1399, 'women'),
('5aabdc4319a67', 'Swim', 'Sports', 13, 2400, 'accessories'),
('5aabdcaaa2e0b', 'Biba', 'Top', 13, 1279, 'women'),
('5aabdcca2e6b5', 'vandita kaur', 'bodycon dress', 1, 1500, 'women'),
('5aabdd44c44ef', 'vandita kaur', 'Evening gown', 1, 1300, 'women'),
('5aabdd92c0a43', 'v', '', 0, 0, ''),
('5aabddc668464', 'vandita kaur', 'office', 1, 1599, 'women'),
('5aabde45ea311', 'vandita kaur', 'soch kurti', 1, 999, 'women'),
('5aabdea6d723a', 'vandita kaur', 'boho chic earrings', 1, 349, 'accessories'),
('5aabdf0c1408f', 'vandita kaur', 'fossil wrist watch', 1, 8900, 'accessories'),
('5aabe02b4f5d0', 'HI', 'Coat', 7, 7999, 'Men'),
('5aabe109c8b2b', 'Git', 'Coat', 6, 7999, 'Men'),
('5aabe149e9c9b', 'Git', 'Coat', 5, 12999, 'Men'),
('5aabe16a58266', 'vandita kaur', 'jimmy choo stilletoe', 1, 25000, 'accessories'),
('5aabea873a32f', 'TITAN', 'Men\'s Watch Titan', 4, 12999, 'accessories'),
('5aabeb1a312f2', 'Kids', 'Dress', 2, 1299, 'kids'),
('5aabeb43dfcc9', 'Boys', 'T-shirt', 4, 599, 'kids'),
('5aabebc21c947', 'Biba', 'Top', 2, 600, 'kids'),
('5aabebe960fb4', 'Biba', 'Frock', 3, 1299, 'kids'),
('5aabec1f0fd2e', 'Git', 'Shorts', 4, 499, 'kids');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `first` varchar(25) NOT NULL,
  `last` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`first`, `last`, `email`, `mobile`, `password`) VALUES
('Aman', 'Deep', 'a@gmail.com', '7530003347', 'aman1234'),
('Aman', 'Deep Singh', 'aman999999aman@gmail.com', '7530003347', 'aman1234'),
('Gurmeet', 'Kaur', 'gurmeetkaur5723@gmail.com', '9935612644', 'gurmeet');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prod`
--
ALTER TABLE `prod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Orders`
--
ALTER TABLE `Orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
