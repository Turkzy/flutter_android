-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2024 at 11:51 AM
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
-- Table structure for table `gradefourthyr`
--

CREATE TABLE `gradefourthyr` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `subject_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `units` float NOT NULL,
  `course_grade` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gradefourthyr`
--

INSERT INTO `gradefourthyr` (`id`, `user_id`, `subject_code`, `description`, `units`, `course_grade`, `remarks`, `semester`) VALUES
(1, '2121001', 'CPE411', 'Embedded Systems', 4, '3.50', 'Passed', '1st semester'),
(2, '2121001', 'CPE412', 'Computer Architecture & Organization', 4, '3.75', 'Passed', '1st semester'),
(3, '2121001', 'GEIS01', 'Manila Studies', 3, '3.25', 'Passed', '1st semester'),
(4, '2121001', 'CPE413', 'Design Project 1', 3, '3.50', 'Passed', '1st semester'),
(5, '2121001', 'CPE414', 'Digital Signal Processing', 4, '3.25', 'Passed', '1st semester'),
(6, '2121001', 'CPE415', 'Seminars & Fieldtrips', 3, '3.75', 'Passed', '1st semester'),
(7, '2121002', 'CPE411', 'Embedded Systems', 4, '3.75', 'Passed', '1st semester'),
(8, '2121002', 'CPE412', 'Computer Architecture & Organization', 4, '3.50', 'Passed', '1st semester'),
(9, '2121002', 'GEIS01', 'Manila Studies', 3, '3.00', 'Passed', '1st semester'),
(10, '2121002', 'CPE413', 'Design Project 1', 3, '1.00', 'Failed', '1st semester'),
(11, '2121002', 'CPE414', 'Digital Signal Processing', 4, '3.00', 'Passed', '1st semester'),
(12, '2121002', 'CPE415', 'Seminars & Fieldtrips', 3, '3.50', 'Passed', '1st semester'),
(13, '2121001', 'CPE421', 'On The Job Training 480 HRS - 80H/1UNIT', 4, '', '', '2nd semester'),
(14, '2121001', 'CPE422', 'Design Project 2', 4, '', '', '2nd semester'),
(15, '2121002', 'CPE421', 'On The Job Training 480 HRS - 80H/1UNIT', 4, '', '', '2nd semester'),
(16, '2121002', 'CPE422', 'Design Project 2', 4, '', '', '2nd semester'),
(17, '2121002', 'CPE413', 'Design Project 1', 3, '', '', '2nd semester');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gradefourthyr`
--
ALTER TABLE `gradefourthyr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gradefourthyr`
--
ALTER TABLE `gradefourthyr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
