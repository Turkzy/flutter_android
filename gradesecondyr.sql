-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2024 at 04:41 PM
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
-- Table structure for table `gradesecondyr`
--

CREATE TABLE `gradesecondyr` (
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
-- Dumping data for table `gradesecondyr`
--

INSERT INTO `gradesecondyr` (`id`, `user_id`, `subject_code`, `description`, `units`, `course_grade`, `remarks`, `semester`) VALUES
(52, '2323001', 'CPE 211', 'Object Oriented Programming', 4, '3.50', 'Passed', '1st semester'),
(53, '2323001', 'ESC 002', 'Creativity in Engineering Drafting & Design', 2, '3.50', 'Passed', '1st semester'),
(54, '2323001', 'ESC 003', 'Engineering Economics', 3, '3.50', 'Passed', '1st semester'),
(55, '2323001', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 3, '3.00', 'Passed', '1st semester'),
(56, '2323001', 'GEMS01', 'The Life and Works of Rizal', 3, '3.75', 'Passed', '1st semester'),
(57, '2323001', 'GECS08', 'Ethics', 3, '3.75', 'Passed', '1st semester'),
(58, '2323001', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 3, '', '', '2nd semester'),
(59, '2323001', 'MTH221', 'Engineering Data Analysis', 3, '3.75', 'Passed', '1st semester'),
(60, '2323001', 'PE3', 'Physical Activity Towards Health and Fitness', 2, '3.50', 'Passed', '1st semester'),
(61, '2323001', 'CPE221', 'Data Structures and Algorithm', 4, '', '', '2nd semester'),
(62, '2323001', 'CPE222', 'Numerical Methods', 4, '', '', '2nd semester'),
(63, '2323001', 'ECE212', 'Circuit Analysis 1', 4, '', '', '2nd semester'),
(65, '2323001', 'MTH211', 'Differential Equation', 3, '', '', '2nd semester'),
(66, '2323001', 'GEIS02', 'Bonifacio & Katipunan Movement', 3, '', '', '2nd semester'),
(67, '2323001', 'PE4', 'Physical Activities towards Health and Fitness 2', 2, '', '', '2nd semester'),
(68, '2323002', 'CPE 211', 'Object Oriented Programming', 4, '3.25', 'Passed', '1st semester'),
(69, '2323002', 'ESC 002', 'Creativity in Engineering Drafting & Design', 2, '3.00', 'Passed', '1st semester'),
(70, '2323002', 'ESC 003', 'Engineering Economics', 3, '2.75', 'Passed', '1st semester'),
(71, '2323002', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 3, '2.50', 'Passed', '1st semester'),
(72, '2323002', 'GEMS01', 'The Life and Works of Rizal', 3, '3.00', 'Passed', '1st semester'),
(73, '2323002', 'GECS08', 'Ethics', 3, '3.25', 'Passed', '1st semester'),
(74, '2323002', 'MTH221', 'Engineering Data Analysis', 3, '3.50', 'Passed', '1st semester'),
(75, '2323002', 'PE3', 'Physical Activity Towards Health and Fitness', 2, '3.25', 'Passed', '1st semester'),
(76, '2323002', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 3, '', '', '2nd semester'),
(77, '2323002', 'CPE221', 'Data Structures and Algorithm', 4, '', '', '2nd semester'),
(78, '2323002', 'CPE222', 'Numerical Methods', 4, '', '', '2nd semester'),
(79, '2323002', 'ECE212', 'Circuit Analysis 1', 4, '', '', '2nd semester'),
(80, '2323002', 'MTH122', 'Integral Calculus', 5, '', '', '2nd semester'),
(81, '2323002', 'MTH211', 'Differential Equation', 3, '', '', '2nd semester'),
(82, '2323002', 'GEIS02', 'Bonifacio & Katipunan Movement', 3, '', '', '2nd semester'),
(83, '2323002', 'PE4', 'Physical Activities towards Health and Fitness 2', 2, '', '', '2nd semester'),
(84, '2222001', 'CPE 211', 'Object Oriented Programming', 4, '3.25', 'Passed', '1st semester'),
(85, '2222001', 'ESC 002', 'Creativity in Engineering Drafting & Design', 2, '3.25', 'Passed', '1st semester'),
(86, '2222001', 'ESC 003', 'Engineering Economics', 3, '3.25', 'Passed', '1st semester'),
(87, '2222001', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 3, '3.00', 'Passed', '1st semester'),
(88, '2222001', 'GEMS01', 'The Life and Works of Rizal', 3, '3.75', 'Passed', '1st semester'),
(89, '2222001', 'MTH211', 'Differential Equation', 3, '2.25', 'Passed', '1st semester'),
(90, '2222001', 'MTH221', 'Engineering Data Analysis', 3, '3.75', 'Passed', '1st semester'),
(91, '2222001', 'PE3', 'Physical Activity Towards Health and Fitness', 2, '3.50', 'Passed', '1st semester'),
(92, '2222001', 'CPE221', 'Data Structures and Algorithm', 4, '3.00', 'Passed', '2nd semester'),
(93, '2222001', 'CPE222', 'Numerical Methods', 4, '3.75', 'Passed', '2nd semester'),
(94, '2222001', 'ECE212', 'Circuit Analysis 1', 4, '2.25', 'Passed', '2nd semester'),
(95, '2222001', 'GECS08', 'Ethics', 3, '3.75', 'Passed', '2nd semester'),
(96, '2222001', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 3, '3.75', 'Passed', '2nd semester'),
(97, '2222001', 'GEIS02', 'Bonifacio & Katipunan Movement', 3, '3.00', 'Passed', '2nd semester'),
(98, '2222001', 'PE4', 'Physical Activities towards Health and Fitness 2', 2, '3.75', 'Passed', '2nd semester'),
(99, '2222001', 'CPE223', 'Operating Systems', 3, '3.75', 'Passed', 'summer semester'),
(100, '2222001', 'ELE221', 'Elective 1 - Database Management Systems', 3, '3.50', 'Passed', 'summer semester'),
(101, '2222002', 'CPE 211', 'Object Oriented Programming', 4, '3.50', 'Passed', '1st semester'),
(102, '2222002', 'ESC 002', 'Creativity in Engineering Drafting & Design', 2, '3.50', 'Passed', '1st semester'),
(103, '2222002', 'ESC 003', 'Engineering Economics', 3, '3.50', 'Passed', '1st semester'),
(104, '2222002', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 3, '3.00', 'Passed', '1st semester'),
(105, '2222002', 'GEMS01', 'The Life and Works of Rizal', 3, '3.75', 'Passed', '1st semester'),
(106, '2222002', 'MTH211', 'Differential Equation', 3, '2.00', 'Passed', '1st semester'),
(107, '2222002', 'MTH221', 'Engineering Data Analysis', 3, '3.75', 'Passed', '1st semester'),
(108, '2222002', 'PE3', 'Physical Activity Towards Health and Fitness', 2, '3.50', 'Passed', '1st semester'),
(109, '2222002', 'CPE221', 'Data Structures and Algorithm', 4, '2.75', 'Passed', '2nd semester'),
(110, '2222002', 'CPE222', 'Numerical Methods', 4, '3.50', 'Passed', '2nd semester'),
(111, '2222002', 'ECE212', 'Circuit Analysis 1', 4, '2.75', 'Passed', '2nd semester'),
(112, '2222002', 'GECS08', 'Ethics', 3, '3.25', 'Passed', '2nd semester'),
(113, '2222002', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 3, '3.50', 'Passed', '2nd semester'),
(114, '2222002', 'GEIS02', 'Bonifacio & Katipunan Movement', 3, '2.75', 'Passed', '2nd semester'),
(115, '2222002', 'PE4', 'Physical Activities towards Health and Fitness 2', 2, '3.50', 'Passed', '2nd semester'),
(116, '2222002', 'CPE223', 'Operating Systems', 3, '3.75', 'Passed', 'summer semester'),
(117, '2222002', 'ELE221', 'Elective 1 - Database Management Systems', 3, '4.00', 'Passed', 'summer semester'),
(118, '2121001', 'CPE 211', 'Object Oriented Programming', 4, '3.25', 'Passed', '1st semester'),
(119, '2121001', 'ESC 002', 'Creativity in Engineering Drafting & Design', 2, '3.25', 'Passed', '1st semester'),
(120, '2121001', 'ESC 003', 'Engineering Economics', 3, '3.25', 'Passed', '1st semester'),
(121, '2121001', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 3, '3.00', 'Passed', '1st semester'),
(122, '2121001', 'GEMS01', 'The Life and Works of Rizal', 3, '3.75', 'Passed', '1st semester'),
(123, '2121001', 'MTH211', 'Differential Equation', 3, '2.25', 'Passed', '1st semester'),
(124, '2121001', 'MTH221', 'Engineering Data Analysis', 3, '3.75', 'Passed', '1st semester'),
(125, '2121001', 'PE3', 'Physical Activity Towards Health and Fitness', 2, '3.50', 'Passed', '1st semester'),
(126, '2121001', 'CPE221', 'Data Structures and Algorithm', 4, '3.00', 'Passed', '2nd semester'),
(127, '2121001', 'CPE222', 'Numerical Methods', 4, '3.75', 'Passed', '2nd semester'),
(128, '2121001', 'ECE212', 'Circuit Analysis 1', 4, '2.25', 'Passed', '2nd semester'),
(129, '2121001', 'GECS08', 'Ethics', 3, '3.75', 'Passed', '2nd semester'),
(130, '2121001', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 3, '3.75', 'Passed', '2nd semester'),
(131, '2121001', 'GEIS02', 'Bonifacio & Katipunan Movement', 3, '3.00', 'Passed', '2nd semester'),
(132, '2121001', 'PE4', 'Physical Activities towards Health and Fitness 2', 2, '3.75', 'Passed', '2nd semester'),
(133, '2121001', 'CPE223', 'Operating Systems', 3, '3.75', 'Passed', 'summer semester'),
(134, '2121001', 'ELE221', 'Elective 1 - Database Management Systems', 3, '4.00', 'Passed', 'summer semester'),
(135, '2121002', 'CPE 211', 'Object Oriented Programming', 4, '3.50', 'Passed', '1st semester'),
(136, '2121002', 'ESC 002', 'Creativity in Engineering Drafting & Design', 2, '3.50', 'Passed', '1st semester'),
(137, '2121002', 'ESC 003', 'Engineering Economics', 3, '3.50', 'Passed', '1st semester'),
(138, '2121002', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 3, '3.00', 'Passed', '1st semester'),
(139, '2121002', 'GEMS01', 'The Life and Works of Rizal', 3, '3.75', 'Passed', '1st semester'),
(140, '2121002', 'MTH211', 'Differential Equation', 3, '2.00', 'Passed', '1st semester'),
(141, '2121002', 'MTH221', 'Engineering Data Analysis', 3, '3.75', 'Passed', '1st semester'),
(142, '2121002', 'PE3', 'Physical Activity Towards Health and Fitness', 2, '3.50', 'Passed', '1st semester'),
(143, '2121002', 'CPE221', 'Data Structures and Algorithm', 4, '3.00', 'Passed', '2nd semester'),
(144, '2121002', 'CPE222', 'Numerical Methods', 4, '3.75', 'Passed', '2nd semester'),
(145, '2121002', 'ECE212', 'Circuit Analysis 1', 4, '2.25', 'Passed', '2nd semester'),
(146, '2121002', 'GECS08', 'Ethics', 3, '3.75', 'Passed', '2nd semester'),
(147, '2121002', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 3, '3.75', 'Passed', '2nd semester'),
(148, '2121002', 'GEIS02', 'Bonifacio & Katipunan Movement', 3, '3.00', 'Passed', '2nd semester'),
(149, '2121002', 'PE4', 'Physical Activities towards Health and Fitness 2', 2, '3.75', 'Passed', '2nd semester'),
(150, '2121002', 'CPE223', 'Operating Systems', 3, '3.75', 'Passed', 'summer semester'),
(151, '2121002', 'ELE221', 'Elective 1 - Database Management Systems', 3, '4.00', 'Passed', 'summer semester');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gradesecondyr`
--
ALTER TABLE `gradesecondyr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gradesecondyr`
--
ALTER TABLE `gradesecondyr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
