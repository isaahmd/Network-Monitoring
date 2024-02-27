-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2024 at 06:06 AM
-- Server version: 8.0.35-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.14

CREATE DATABASE ping;
USE ping;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ping`
--

-- --------------------------------------------------------

--
-- Table structure for table `brilian_table`
--

CREATE TABLE `brilian_table` (
  `id` int NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brilian_table`
--

INSERT INTO `brilian_table` (`id`, `ip`, `status`, `description`) VALUES
(1, '116.206.241.102', 0, 'BRI_MENARA_BRILIAN LT 2'),
(2, '116.206.233.26', 0, 'BRI_MENARA_BRILIAN LT 3'),
(3, '116.206.241.114', 0, 'BRI_MENARA_BRILIAN LT 8'),
(4, '116.206.242.94', 0, 'BRI_MENARA_BRILIAN LT 9'),
(5, '103.111.191.210', 0, 'BRI_MENARA_BRILIAN LT 26'),
(6, '116.206.233.30', 0, 'BRI_MENARA_BRILIAN LT 27'),
(7, '103.111.191.214', 0, 'BRI_MENARA_BRILIAN LT 28'),
(8, '103.114.111.6', 0, 'BRI_MENARA_BRILIAN LT 38');

-- --------------------------------------------------------

--
-- Table structure for table `bri_table`
--

CREATE TABLE `bri_table` (
  `id` int NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bri_table`
--

INSERT INTO `bri_table` (`id`, `ip`, `status`, `description`) VALUES
(1, '139.255.218.114', 1, 'BRI_WISMA_KBY_LINKNET'),
(2, '202.130.55.218', 0, 'BRI_GEDUNG1_BRInnovation Centre LT 5'),
(3, '103.114.112.94', 0, 'BRI_MENARA_MULIA LT 5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brilian_table`
--
ALTER TABLE `brilian_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bri_table`
--
ALTER TABLE `bri_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brilian_table`
--
ALTER TABLE `brilian_table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bri_table`
--
ALTER TABLE `bri_table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
