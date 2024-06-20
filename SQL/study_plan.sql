-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 04:23 AM
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
-- Database: `flutter`
--

-- --------------------------------------------------------

--
-- Table structure for table `study_plan`
--

CREATE TABLE `study_plan` (
  `id` int(11) NOT NULL,
  `pre_requisite` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `study_plan`
--

INSERT INTO `study_plan` (`id`, `pre_requisite`) VALUES
(1, 'PE1'),
(2, 'NSTP1'),
(3, 'MTH121'),
(4, 'PHY121'),
(5, 'MTH122'),
(6, 'CPE111'),
(7, 'ESC002'),
(8, 'PE2'),
(9, 'PHY122'),
(10, 'CPE111'),
(11, 'PE3'),
(12, 'ECE212'),
(13, 'ECE212'),
(14, 'CPE223'),
(15, 'ECE212'),
(16, 'CPE312'),
(17, 'CPE311'),
(18, 'CPE321'),
(19, 'CPE324'),
(20, 'CPE322'),
(21, '4TH YEAR STANDING'),
(22, 'CPE313'),
(23, 'CPE413');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `study_plan`
--
ALTER TABLE `study_plan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `study_plan`
--
ALTER TABLE `study_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
