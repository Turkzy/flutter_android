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
-- Table structure for table `study_plan`
--

CREATE TABLE `study_plan` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `subject_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `units` float NOT NULL,
  `pre_requisite` varchar(255) DEFAULT NULL,
  `semester` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `study_plan`
--

INSERT INTO `study_plan` (`id`, `user_id`, `subject_code`, `description`, `units`, `pre_requisite`, `semester`, `year`) VALUES
(1, '2424002', 'CHM111', 'General Chemistry', 4, NULL, '2nd semester', '1st year'),
(2, '2424002', 'ESC001', 'Computer Aided Drafting & Design', 2, NULL, '2nd semester', '1st year'),
(3, '2424002', 'GECS05', 'Purposive Communication', 3, NULL, '2nd semester', '1st year'),
(4, '2424002', 'GECS06', 'Art Appreciation', 3, NULL, '2nd semester', '1st year'),
(5, '2424002', 'GECS07', 'Science, Technology & Society', 3, NULL, '2nd semester', '1st year'),
(6, '2424002', 'MTH121', 'Differential Calculus', 5, NULL, '2nd semester', '1st year'),
(7, '2424002', 'NSTP2', 'National Service Training Program 2', 3, 'NSTP1', '2nd semester', '1st year'),
(8, '2424002', 'PE2', 'Fitness Exercises', 2, 'PE1', '2nd semester', '1st year'),
(9, '2424002', 'CPE121', 'Discrete Mathematics', 3, NULL, 'summer semester', '1st year'),
(10, '2424002', 'MTH122', 'Integral Calculus', 5, 'MTH121', 'summer semester', '1st year'),
(11, '2424002', 'PHY122', 'Physics 2', 4, 'PHY121', 'summer semester', '1st year'),
(12, '2424002', 'CPE211', 'Object Oriented Programming', 4, 'CPE111', '1st semester', '2nd year'),
(13, '2424002', 'ESC002', 'Creativity in Engineering Drafting & Design', 2, 'ESC002', '1st semester', '2nd year'),
(14, '2424002', 'ESC003', 'Engineering Economics', 3, NULL, '1st semester', '2nd year'),
(15, '2424002', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 3, NULL, '1st semester', '2nd year'),
(16, '2424002', 'GEMS01', 'The Life and Works of Rizal', 3, NULL, '1st semester', '2nd year'),
(17, '2424002', 'MTH221', 'Engineering Data Analysis', 3, NULL, '1st semester', '2nd year'),
(18, '2424002', 'PE3', 'Physical Activity Towards Health and Fitness', 2, 'PE2', '1st semester', '2nd year'),
(19, '2424002', 'GECS08', 'Ethics', 3, NULL, '1st semester', '2nd year'),
(20, '2424002', 'CPE221', 'Data Structures and Algorithm', 4, 'CPE111', '2nd semester', '2nd year'),
(21, '2424002', 'CPE222', 'Numerical Methods', 4, NULL, '2nd semester', '2nd year'),
(22, '2424002', 'ECE212', 'Circuit Analysis 1', 4, 'PHY122', '2nd semester', '2nd year'),
(23, '2424002', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 3, NULL, '2nd semester', '2nd year'),
(24, '2424002', 'GEIS02', 'Bonifacio & Katipunan Movement', 3, NULL, '2nd semester', '2nd year'),
(25, '2424002', 'PE4', 'Physical Activities towards Health and Fitness 2', 2, 'PE3', '2nd semester', '2nd year'),
(26, '2424002', 'MTH211', 'Differential Equation', 3, 'MTH122', '2nd semester', '2nd year'),
(27, '2424002', 'CPE223', 'Operating Systems', 3, NULL, 'summer semester', '2nd year'),
(28, '2424002', 'ELE221', 'Elective 1 - Database Management Systems', 3, NULL, 'summer semester', '2nd year'),
(29, '2424002', 'CPE311', 'Logic Circuit & Design', 4, 'ECE212', '1st semester', '3rd year'),
(30, '2424002', 'CPE312', 'Data Communication & Networking', 4, 'CPE223', '1st semester', '3rd year'),
(31, '2424002', 'CPE313', 'Fundmentals of Mixed Signals & Sensors', 3, NULL, '1st semester', '3rd year'),
(32, '2424002', 'ECE223', 'Circuit Analysis 2', 4, 'ECE212', '1st semester', '3rd year'),
(33, '2424002', 'ECE325', 'Feedback and Control Systems', 4, 'ECE212', '1st semester', '3rd year'),
(34, '2424002', 'ELE311', 'Elective 2 - Project Management', 3, NULL, '1st semester', '3rd year'),
(35, '2424002', 'CPE224', 'Software Design - Systems Analysis & Design', 4, NULL, '2nd semester', '3rd year'),
(36, '2424002', 'CPE321', 'Computer Networks & Security', 4, 'CPE312', '2nd semester', '3rd year'),
(37, '2424002', 'CPE322', 'Microprocessor & Microcontroller Systems', 4, 'CPE311', '2nd semester', '3rd year'),
(38, '2424002', 'CPE323', 'CPE Laws, Contracts, Ethics & Prof Practice', 3, NULL, '2nd semester', '3rd year'),
(39, '2424002', 'ELE321', 'Elective 3 - Software Engineering', 3, NULL, '2nd semester', '3rd year'),
(40, '2424002', 'ESC005', 'Occupational Health & Safety Engineering', 3, NULL, '2nd semester', '3rd year'),
(41, '2424002', 'ESC006', 'Technopreneurship', 3, NULL, '2nd semester', '3rd year'),
(42, '2424002', 'CPE324', 'INTRODUCTION TO HDL', 3, 'CPE321', 'summer semester', '3rd year'),
(43, '2424002', 'ESC004', 'ENVIRONMENTAL SCIENCE & ENGINEERING', 3, NULL, 'summer semester', '3rd year'),
(44, '2424002', 'ELE322', 'ELECTIVE 4 - MANAGEMENT INFORMATION SYSTEMS', 3, NULL, 'summer semester', '3rd year'),
(45, '2424002', 'CPE325', 'EMERGING TECHNOLOGIES IN CPE', 3, NULL, 'summer semester', '3rd year'),
(46, '2424002', 'CPE411', 'EMBEDDED SYSTEMS', 4, 'CPE324', '1st semester', '4th year'),
(47, '2424002', 'CPE412', 'COMPUTER ARCHITECTURE & ORGANIZATION', 4, 'CPE322', '1st semester', '4th year'),
(48, '2424002', 'GEIS01', 'MANILA STUDIES', 3, NULL, '1st semester', '4th year'),
(49, '2424002', 'CPE413', 'DESIGN PROJECT 1', 3, '4TH YEAR STANDING', '1st semester', '4th year'),
(50, '2424002', 'CPE414', 'DIGITAL SIGNAL PROCESSING', 4, 'CPE313', '1st semester', '4th year'),
(51, '2424002', 'CPE415', 'SEMINARS & FIELDTRIPS', 3, NULL, '1st semester', '4th year'),
(52, '2424002', 'CPE421', 'ON THE JOB TRAINING 480 HRS - 80H/1UNIT', 6, '4TH YEAR STANDING', '2nd semester', '4th year'),
(53, '2424002', 'CPE422', 'DESIGN PROJECT 2', 3, 'CPE413', '2nd semester', '4th year'),
(54, '2424002', 'PHY121', 'Physics 1', 4, NULL, '2nd semester', '1st year'),
(98, '2323002', 'CPE211', 'Object Oriented Programming', 4, 'CPE111', '1st semester', '2nd year'),
(99, '2323002', 'ESC002', 'Creativity in Engineering Drafting & Design', 2, 'ESC002', '1st semester', '2nd year'),
(100, '2323002', 'ESC003', 'Engineering Economics', 3, NULL, '1st semester', '2nd year'),
(101, '2323002', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 3, NULL, '1st semester', '2nd year'),
(102, '2323002', 'GEMS01', 'The Life and Works of Rizal', 3, NULL, '1st semester', '2nd year'),
(103, '2323002', 'MTH221', 'Engineering Data Analysis', 3, NULL, '1st semester', '2nd year'),
(104, '2323002', 'PE3', 'Physical Activity Towards Health and Fitness', 2, 'PE2', '1st semester', '2nd year'),
(105, '2323002', 'GECS08', 'Ethics', 3, NULL, '1st semester', '2nd year'),
(106, '2323002', 'CPE221', 'Data Structures and Algorithm', 4, 'CPE111', '2nd semester', '2nd year'),
(107, '2323002', 'CPE222', 'Numerical Methods', 4, NULL, '2nd semester', '2nd year'),
(108, '2323002', 'ECE212', 'Circuit Analysis 1', 4, 'PHY122', '2nd semester', '2nd year'),
(109, '2323002', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 3, NULL, '2nd semester', '2nd year'),
(110, '2323002', 'GEIS02', 'Bonifacio & Katipunan Movement', 3, NULL, '2nd semester', '2nd year'),
(111, '2323002', 'PE4', 'Physical Activities towards Health and Fitness 2', 2, 'PE3', '2nd semester', '2nd year'),
(112, '2323002', 'MTH211', 'Differential Equation', 3, 'MTH122', '2nd semester', '2nd year'),
(113, '2323002', 'MTH122', 'Integral Calculus', 5, 'MTH121', '2nd semester', '2nd year'),
(114, '2323002', 'CPE223', 'Operating Systems', 3, NULL, 'summer semester', '2nd year'),
(115, '2323002', 'ELE221', 'Elective 1 - Database Management Systems', 3, NULL, 'summer semester', '2nd year'),
(116, '2323002', 'CPE224', 'Software Design - Systems Analysis & Design', 4, NULL, '2nd semester', '3rd year'),
(117, '2323002', 'CPE321', 'Computer Networks & Security', 4, 'CPE312', '2nd semester', '3rd year'),
(118, '2323002', 'CPE322', 'Microprocessor & Microcontroller Systems', 4, 'CPE311', '2nd semester', '3rd year'),
(119, '2323002', 'CPE323', 'CPE Laws, Contracts, Ethics & Prof Practice', 3, NULL, '2nd semester', '3rd year'),
(120, '2323002', 'ELE321', 'Elective 3 - Software Engineering', 3, NULL, '2nd semester', '3rd year'),
(121, '2323002', 'ESC005', 'Occupational Health & Safety Engineering', 3, NULL, '2nd semester', '3rd year'),
(122, '2323002', 'ESC006', 'Technopreneurship', 3, NULL, '2nd semester', '3rd year'),
(123, '2323002', 'CPE324', 'INTRODUCTION TO HDL', 3, 'CPE321', 'summer semester', '3rd year'),
(124, '2323002', 'ESC004', 'ENVIRONMENTAL SCIENCE & ENGINEERING', 3, NULL, 'summer semester', '3rd year'),
(125, '2323002', 'ELE322', 'ELECTIVE 4 - MANAGEMENT INFORMATION SYSTEMS', 3, NULL, 'summer semester', '3rd year'),
(126, '2323002', 'CPE325', 'EMERGING TECHNOLOGIES IN CPE', 3, NULL, 'summer semester', '3rd year'),
(127, '2323002', 'CPE411', 'EMBEDDED SYSTEMS', 4, 'CPE324', '1st semester', '4th year'),
(128, '2323002', 'CPE412', 'COMPUTER ARCHITECTURE & ORGANIZATION', 4, 'CPE322', '1st semester', '4th year'),
(129, '2323002', 'GEIS01', 'MANILA STUDIES', 3, NULL, '1st semester', '4th year'),
(130, '2323002', 'CPE413', 'DESIGN PROJECT 1', 3, '4TH YEAR STANDING', '1st semester', '4th year'),
(131, '2323002', 'CPE414', 'DIGITAL SIGNAL PROCESSING', 4, 'CPE313', '1st semester', '4th year'),
(132, '2323002', 'CPE415', 'SEMINARS & FIELDTRIPS', 3, NULL, '1st semester', '4th year'),
(133, '2323002', 'CPE421', 'ON THE JOB TRAINING 480 HRS - 80H/1UNIT', 6, '4TH YEAR STANDING', '2nd semester', '4th year'),
(134, '2323002', 'CPE422', 'DESIGN PROJECT 2', 3, 'CPE413', '2nd semester', '4th year'),
(135, '2222002', 'CPE311', 'Logic Circuit & Design', 4, 'ECE212', '2nd semester', '3rd year'),
(136, '2222002', 'CPE224', 'Software Design - Systems Analysis & Design', 4, NULL, '2nd semester', '3rd year'),
(137, '2222002', 'CPE321', 'Computer Networks & Security', 4, 'CPE312', '2nd semester', '3rd year'),
(138, '2222002', 'CPE323', 'CPE Laws, Contracts, Ethics & Prof Practice', 3, NULL, '2nd semester', '3rd year'),
(139, '2222002', 'ELE321', 'Elective 3 - Software Engineering', 3, NULL, '2nd semester', '3rd year'),
(140, '2222002', 'ESC005', 'Occupational Health & Safety Engineering', 3, NULL, '2nd semester', '3rd year'),
(141, '2222002', 'ESC006', 'Technopreneurship', 3, NULL, '2nd semester', '3rd year'),
(142, '2222002', 'CPE324', 'INTRODUCTION TO HDL', 3, 'CPE321', 'summer semester', '3rd year'),
(143, '2222002', 'ESC004', 'ENVIRONMENTAL SCIENCE & ENGINEERING', 3, NULL, 'summer semester', '3rd year'),
(144, '2222002', 'ELE322', 'ELECTIVE 4 - MANAGEMENT INFORMATION SYSTEMS', 3, NULL, 'summer semester', '3rd year'),
(145, '2222002', 'CPE325', 'EMERGING TECHNOLOGIES IN CPE', 3, NULL, 'summer semester', '3rd year'),
(146, '2222002', 'CPE411', 'EMBEDDED SYSTEMS', 4, 'CPE324', '1st semester', '4th year'),
(147, '2222002', 'CPE412', 'COMPUTER ARCHITECTURE & ORGANIZATION', 4, 'CPE322', '1st semester', '4th year'),
(148, '2222002', 'GEIS01', 'MANILA STUDIES', 3, NULL, '1st semester', '4th year'),
(149, '2222002', 'CPE413', 'DESIGN PROJECT 1', 3, '4TH YEAR STANDING', '1st semester', '4th year'),
(150, '2222002', 'CPE414', 'DIGITAL SIGNAL PROCESSING', 4, 'CPE313', '1st semester', '4th year'),
(151, '2222002', 'CPE415', 'SEMINARS & FIELDTRIPS', 3, NULL, '1st semester', '4th year'),
(152, '2222002', 'CPE322', 'Microprocessor & Microcontroller Systems', 4, 'CPE311', '1st semester', '4th year'),
(153, '2222002', 'CPE421', 'ON THE JOB TRAINING 480 HRS - 80H/1UNIT', 6, '4TH YEAR STANDING', '2nd semester', '4th year'),
(154, '2222002', 'CPE422', 'DESIGN PROJECT 2', 3, 'CPE413', '2nd semester', '4th year'),
(155, '2121002', 'CPE411', 'EMBEDDED SYSTEMS', 4, 'CPE324', '1st semester', '4th year'),
(156, '2121002', 'CPE412', 'COMPUTER ARCHITECTURE & ORGANIZATION', 4, 'CPE322', '1st semester', '4th year'),
(157, '2121002', 'GEIS01', 'MANILA STUDIES', 3, NULL, '1st semester', '4th year'),
(158, '2121002', 'CPE413', 'DESIGN PROJECT 1', 3, '4TH YEAR STANDING', '1st semester', '4th year'),
(159, '2121002', 'CPE414', 'DIGITAL SIGNAL PROCESSING', 4, 'CPE313', '1st semester', '4th year'),
(160, '2121002', 'CPE415', 'SEMINARS & FIELDTRIPS', 3, NULL, '1st semester', '4th year'),
(161, '2121002', 'CPE421', 'ON THE JOB TRAINING 480 HRS - 80H/1UNIT', 6, '4TH YEAR STANDING', '2nd semester', '4th year'),
(162, '2121002', 'CPE422', 'DESIGN PROJECT 2', 3, 'CPE413', '2nd semester', '4th year'),
(163, '2121002', 'CPE413', 'DESIGN PROJECT 1', 3, '4TH YEAR STANDING', '2nd semester', '4th year');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
