-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2020 at 02:08 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhotel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ac`
--

CREATE TABLE `ac` (
  `no` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `mob` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ac`
--

INSERT INTO `ac` (`no`, `name`, `mob`, `status`, `type`) VALUES
(1, NULL, NULL, 'AVAILABLE', 'AC'),
(2, NULL, NULL, 'AVAILABLE', 'AC'),
(3, NULL, NULL, 'AVAILABLE', 'AC'),
(4, NULL, NULL, 'AVAILABLE', 'AC'),
(5, NULL, NULL, 'AVAILABLE', 'AC'),
(6, NULL, NULL, 'AVAILABLE', 'AC'),
(7, NULL, NULL, 'AVAILABLE', 'AC'),
(8, NULL, NULL, 'AVAILABLE', 'AC'),
(9, NULL, NULL, 'AVAILABLE', 'AC'),
(10, NULL, NULL, 'AVAILABLE', 'AC');

-- --------------------------------------------------------

--
-- Table structure for table `acdelux`
--

CREATE TABLE `acdelux` (
  `no` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `mob` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acdelux`
--

INSERT INTO `acdelux` (`no`, `name`, `mob`, `status`, `type`) VALUES
(1, NULL, NULL, 'AVAILABLE', 'AC-DELUX'),
(2, NULL, NULL, 'AVAILABLE', 'AC-DELUX'),
(3, NULL, NULL, 'AVAILABLE', 'AC-DELUX'),
(4, NULL, NULL, 'AVAILABLE', 'AC-DELUX'),
(5, NULL, NULL, 'AVAILABLE', 'AC-DELUX'),
(6, NULL, NULL, 'AVAILABLE', 'AC-DELUX'),
(7, NULL, NULL, 'AVAILABLE', 'AC-DELUX'),
(8, NULL, NULL, 'AVAILABLE', 'AC-DELUX'),
(9, NULL, NULL, 'AVAILABLE', 'AC-DELUX'),
(10, NULL, NULL, 'AVAILABLE', 'AC-DELUX');

-- --------------------------------------------------------

--
-- Table structure for table `data_item`
--

CREATE TABLE `data_item` (
  `serial_no` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_item`
--

INSERT INTO `data_item` (`serial_no`, `item_name`, `quantity`, `sub_total`, `date_time`) VALUES
(1, 'Subway', 150, 1, '2019-12-15 01:09:14'),
(2, 'Subway', 150, 1, '2019-12-15 01:17:27'),
(3, 'Subway', 150, 1, '2019-12-15 01:20:02'),
(4, 'Burger', 250, 1, '2019-12-15 01:22:38'),
(5, 'Burger', 250, 1, '2019-12-15 01:28:47'),
(6, 'Burger', 250, 1, '2019-12-15 01:31:22'),
(7, 'Burger', 250, 1, '2020-01-10 20:31:07'),
(8, 'Subway', 150, 1, '2020-01-10 20:32:33'),
(9, 'Sprite', 100, 1, '2020-01-10 20:32:58'),
(10, 'CHICKEN SANDWICH', 190, 1, '2020-01-10 20:40:00'),
(11, 'Burger', 250, 1, '2020-01-10 20:40:52'),
(12, 'Subway', 150, 1, '2020-01-10 20:41:57'),
(13, 'CURLY FRIES', 80, 2, '2020-01-10 20:43:28'),
(14, 'Burger', 250, 1, '2020-01-11 00:01:00'),
(15, 'Subway', 150, 1, '2020-01-11 00:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `mainlogin`
--

CREATE TABLE `mainlogin` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mainlogin`
--

INSERT INTO `mainlogin` (`id`, `user_name`, `password`) VALUES
(1, 'nahian', '12345'),
(2, 'nur', '12369'),
(3, 'tuhin', '6969'),
(4, 'masud', '017');

-- --------------------------------------------------------

--
-- Table structure for table `nonac`
--

CREATE TABLE `nonac` (
  `no` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `mob` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `checkin` varchar(50) DEFAULT NULL,
  `checkout` varchar(50) DEFAULT NULL,
  `room_price` int(11) DEFAULT NULL,
  `payment` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nonac`
--

INSERT INTO `nonac` (`no`, `name`, `mob`, `status`, `type`, `checkin`, `checkout`, `room_price`, `payment`) VALUES
(1, NULL, NULL, 'AVAILABLE', 'NON-AC', NULL, NULL, 0, 'DUE'),
(2, '', '', 'AVAILABLE', 'NON-AC', ' ', ' ', 0, 'DUE'),
(3, NULL, NULL, 'AVAILABLE', 'NON-AC', NULL, NULL, 0, 'DUE'),
(4, NULL, NULL, 'AVAILABLE', 'NON-AC', NULL, NULL, 0, 'DUE'),
(5, 'Nahian', '01715696924', 'BOOKED', 'NON-AC', '2020-01-12', '2020-01-15', 2400, 'DUE'),
(6, NULL, NULL, 'AVAILABLE', 'NON-AC', NULL, NULL, 0, 'DUE'),
(7, '', '', 'AVAILABLE', 'NON-AC', ' ', ' ', 0, 'DUE'),
(8, NULL, NULL, 'AVAILABLE', 'NON-AC', NULL, NULL, 0, 'DUE'),
(9, NULL, NULL, 'AVAILABLE', 'NON-AC', NULL, NULL, 0, 'DUE'),
(10, NULL, NULL, 'AVAILABLE', 'NON-AC', NULL, NULL, 0, 'DUE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ac`
--
ALTER TABLE `ac`
  ADD UNIQUE KEY `no` (`no`);

--
-- Indexes for table `acdelux`
--
ALTER TABLE `acdelux`
  ADD UNIQUE KEY `no` (`no`);

--
-- Indexes for table `data_item`
--
ALTER TABLE `data_item`
  ADD UNIQUE KEY `serial_no` (`serial_no`);

--
-- Indexes for table `mainlogin`
--
ALTER TABLE `mainlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nonac`
--
ALTER TABLE `nonac`
  ADD UNIQUE KEY `no` (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_item`
--
ALTER TABLE `data_item`
  MODIFY `serial_no` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mainlogin`
--
ALTER TABLE `mainlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
