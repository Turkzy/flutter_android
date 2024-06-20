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
-- Table structure for table `gradethirdyr`
--

CREATE TABLE `gradethirdyr` (
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
-- Dumping data for table `gradethirdyr`
--

INSERT INTO `gradethirdyr` (`id`, `user_id`, `subject_code`, `description`, `units`, `course_grade`, `remarks`, `semester`) VALUES
(14, '2222001', 'CPE 311', 'Logic Circuit & Design', 4, '2.75', 'Passed', '1st semester'),
(15, '2222001', 'CPE 312', 'Data Communication & Networking', 4, '3.00', 'Passed', '1st semester'),
(16, '2222001', 'CPE 313', 'Fundamentals of Mixed Signals & Sensors', 3, '2.75', 'Passed', '1st semester'),
(17, '2222001', 'ECE223', 'Circuit Analysis 2', 4, '2.50', 'Passed', '1st semester'),
(18, '2222001', 'ECE325', 'Feedback and Control Systems', 4, '2.50', 'Passed', '1st semester'),
(19, '2222001', 'ELE 311', 'Elective 2 - Project Management', 3, '2.75', 'Passed', '1st semester'),
(20, '2222001', 'CPE224', 'Software Design - Systems Analysis & Design', 4, '', '', '2nd semester'),
(21, '2222001', 'CPE321', 'Computer Networks & Security', 4, '', '', '2nd semester'),
(22, '2222001', 'CPE322', 'Microprocessor & Microcontroller Systems', 4, '', '', '2nd semester'),
(23, '2222001', 'CPE323', 'CPE Laws, Contracts, Ethics & Prof Practice', 3, '', '', '2nd semester'),
(24, '2222001', 'ELE321a', 'Elective 3 - Software Engineering', 3, '', '', '2nd semester'),
(25, '2222001', 'ESC005', 'Occupational Health & Safety Engineering', 3, '', '', '2nd semester'),
(26, '2222001', 'ESC006', 'Technopreneurship', 3, '', '', '2nd semester'),
(27, '2222002', 'CPE 311', 'Logic Circuit & Design', 4, '1.00', 'Failed', '1st semester'),
(28, '2222002', 'CPE 312', 'Data Communication & Networking', 4, '3.00', 'Passed', '1st semester'),
(29, '2222002', 'CPE 313', 'Fundamentals of Mixed Signals & Sensors', 3, '2.75', 'Passed', '1st semester'),
(30, '2222002', 'ECE223', 'Circuit Analysis 2', 4, '2.50', 'Passed', '1st semester'),
(31, '2222002', 'ECE325', 'Feedback and Control Systems', 4, '2.50', 'Passed', '1st semester'),
(32, '2222002', 'ELE 311', 'Elective 2 - Project Management', 3, '2.75', 'Passed', '1st semester'),
(33, '2222002', 'CPE224', 'Software Design - Systems Analysis & Design', 4, '', '', '2nd semester'),
(34, '2222002', 'CPE321', 'Computer Networks & Security', 4, '', '', '2nd semester'),
(35, '2222002', 'CPE323', 'CPE Laws, Contracts, Ethics & Prof Practice', 3, '', '', '2nd semester'),
(36, '2222002', 'ELE321a', 'Elective 3 - Software Engineering', 3, '', '', '2nd semester'),
(37, '2222002', 'ESC005', 'Occupational Health & Safety Engineering', 3, '', '', '2nd semester'),
(38, '2222002', 'ESC006', 'Technopreneurship', 3, '', '', '2nd semester'),
(39, '2222002', 'CPE 311', 'Logic Circuit & Design', 4, '', '', '2nd semester'),
(40, '2121001', 'CPE 311', 'Logic Circuit & Design', 4, '3.00', 'Passed', '1st semester'),
(41, '2121001', 'CPE 312', 'Data Communication & Networking', 4, '3.25', 'Passed', '1st semester'),
(42, '2121001', 'CPE 313', 'Fundamentals of Mixed Signals & Sensors', 3, '2.75', 'Passed', '1st semester'),
(43, '2121001', 'ECE223', 'Circuit Analysis 2', 4, '2.75', 'Passed', '1st semester'),
(44, '2121001', 'ECE325', 'Feedback and Control Systems', 4, '3.00', 'Passed', '1st semester'),
(45, '2121001', 'ELE 311', 'Elective 2 - Project Management', 3, '3.25', 'Passed', '1st semester'),
(46, '2121001', 'CPE224', 'Software Design - Systems Analysis & Design', 4, '3.50', 'Passed', '2nd semester'),
(47, '2121001', 'CPE321', 'Computer Networks & Security', 4, '3.75', 'Passed', '2nd semester'),
(48, '2121001', 'CPE322', 'Microprocessor & Microcontroller Systems', 4, '3.25', 'Passed', '2nd semester'),
(49, '2121001', 'CPE323', 'CPE Laws, Contracts, Ethics & Prof Practice', 3, '3.75', 'Passed', '2nd semester'),
(50, '2121001', 'ELE321a', 'Elective 3 - Software Engineering', 3, '3.50', 'Passed', '2nd semester'),
(51, '2121001', 'ESC005', 'Occupational Health & Safety Engineering', 3, '3.00', 'Passed', '2nd semester'),
(52, '2121001', 'ESC006', 'Technopreneurship', 3, '3.25', 'Passed', '2nd semester'),
(53, '2121002', 'CPE 311', 'Logic Circuit & Design', 4, '2.50', 'Passed', '1st semester'),
(54, '2121002', 'CPE 312', 'Data Communication & Networking', 4, '3.00', 'Passed', '1st semester'),
(55, '2121002', 'CPE 313', 'Fundamentals of Mixed Signals & Sensors', 3, '2.50', 'Passed', '1st semester'),
(56, '2121002', 'ECE223', 'Circuit Analysis 2', 4, '2.25', 'Passed', '1st semester'),
(57, '2121002', 'ECE325', 'Feedback and Control Systems', 4, '2.25', 'Passed', '1st semester'),
(58, '2121002', 'ELE 311', 'Elective 2 - Project Management', 3, '2.75', 'Passed', '1st semester'),
(59, '2121002', 'CPE224', 'Software Design - Systems Analysis & Design', 4, '3.75', 'Passed', '2nd semester'),
(60, '2121002', 'CPE321', 'Computer Networks & Security', 4, '3.50', 'Passed', '2nd semester'),
(61, '2121002', 'CPE322', 'Microprocessor & Microcontroller Systems', 4, '3.00', 'Passed', '2nd semester'),
(62, '2121002', 'CPE323', 'CPE Laws, Contracts, Ethics & Prof Practice', 3, '3.25', 'Passed', '2nd semester'),
(63, '2121002', 'ELE321a', 'Elective 3 - Software Engineering', 3, '3.25', 'Passed', '2nd semester'),
(64, '2121002', 'ESC005', 'Occupational Health & Safety Engineering', 3, '3.50', 'Passed', '2nd semester'),
(65, '2121002', 'ESC006', 'Technopreneurship', 3, '3.00', 'Passed', '2nd semester'),
(66, '2121001', 'CPE324', 'Introduction to HDL', 3, '3.75', 'Passed', 'summer semester'),
(67, '2121001', 'ESC004', 'Environmental Science & Engineering', 3, '4.00', 'Passed', 'summer semester'),
(68, '2121001', 'ELE322', 'Elective 4 - Management Information Systems', 3, '3.75', 'Passed', 'summer semester'),
(69, '2121001', 'CPE325', 'Emerging Technologies In CPE', 3, '4.00', 'Passed', 'summer semester'),
(70, '2121002', 'CPE324', 'Introduction to HDL', 3, '3.50', 'Passed', 'summer semester'),
(71, '2121002', 'ESC004', 'Environmental Science & Engineering', 3, '3.50', 'Passed', 'summer semester'),
(72, '2121002', 'ELE322', 'Elective 4 - Management Information Systems', 3, '3.00', 'Passed', 'summer semester'),
(73, '2121002', 'CPE325', 'Emerging Technologies In CPE', 3, '2.75', 'Passed', 'summer semester');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gradethirdyr`
--
ALTER TABLE `gradethirdyr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gradethirdyr`
--
ALTER TABLE `gradethirdyr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
