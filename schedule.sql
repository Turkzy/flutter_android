-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2024 at 04:42 PM
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
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `class_type` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `user_id`, `subject_code`, `description`, `day`, `time`, `room`, `faculty`, `class_type`, `semester`, `year`) VALUES
(1, '2424001', 'CPE 111', 'Programming Logic & Design', 'Tuesday / Friday', '1:30pm - 4:30pm', 'NB201', 'MONA EARL BAYONO', 'F2F', '1st semester', '1st year'),
(2, '2424001', 'PHY121', 'Physics 1', 'Thursday / Friday', '7:00am - 10:00am', 'NB202', 'PALMER DE LEON', 'F2f', '1st semester', '1st year'),
(3, '2424001', 'CPE 112', 'Computer Engineering as a Discipline', 'Tuesday / Friday', '12:00pm - 1:30pm', 'NB202', 'MONA EARL BAYONO', 'F2f', '1st semester', '1st year'),
(4, '2424001', 'GECS01', 'Understanding the Self', 'Monday / Thursday', '6:30am - 8:00am', 'OL', 'SANDRA CABALLERO', 'Synch', '1st semester', '1st year'),
(5, '2424001', 'GECS02', 'Readings in Philippine History', 'Monday / Thursday', '1:30pm - 3:00pm', 'OL', 'ARLYN BIGLANG-AWA', 'Synch', '1st semester', '1st year'),
(6, '2424001', 'GECS03', 'The Contemporary World', 'Saturday', '7:00am - 10:00am', 'OL', 'GEORGE BEDIA', 'Synch', '1st semester', '1st year'),
(7, '2424001', 'GECS04', 'Mathematics in the Modern World', 'Monday / Thursday', '5:00pm - 6:30pm', 'OL', 'JONATHAN DE LEON', 'Synch', '1st semester', '1st year'),
(8, '2424001', 'NSTP1', 'National Service Training Program 1', 'Sunday', '2:00pm - 5:00pm', 'OL', 'TEOFISTA TEGIO', 'Synch', '1st semester', '1st year'),
(9, '2424001', 'PE1', 'Movement Enhancement', 'Tuesday', '10:30am - 12:30pm', 'OL', 'SHOBIE ROSELLE VICENTE', 'Synch', '1st semester', '1st year'),
(10, '2424001', 'CHM111', 'General Chemistry', 'Monday / Thursday', '3:00pm - 6:30pm', 'OL', 'MICHELLE VILLACORTE', 'Synch', '2nd semester', '1st year'),
(11, '2424001', 'ESC001', 'Computer Aided Drafting & Design', 'Monday / Thursday', '6:30pm - 9:30pm', 'OL', '	KARL ANGEL GAMBOA', 'Synch', '2nd semester', '1st year'),
(12, '2424001', 'GECS05', 'Purposive Communication', 'Wednesday', '6:30pm - 9:30pm', 'OL', 'MELFE DIOLA', 'Synch', '2nd semester', '1st year'),
(13, '2424001', 'GECS06', 'Art Appreciation', 'Tueday / Friday', '1:30pm - 3:00pm', 'OL', 'GAYNELLE DUMO', 'Synch', '2nd semester', '1st year'),
(14, '2424001', 'GECS07', 'Science, Technology & Society', 'Tueday / Friday', '12:00pm - 1:30pm', 'OL', 'MICHELLE VILLACORTE', 'Synch', '2nd semester', '1st year'),
(15, '2424001', 'MTH121', 'Differential Calculus', 'Tueday / Friday', '5:00pm - 7:30pm', 'OL', 'JONATHAN DE LEON', 'Synch', '2nd semester', '1st year'),
(16, '2424001', 'NSTP2', 'National Service Training Program 2', 'Saturday', '2:00pm - 5:00pm', 'OL', 'IVONNY JOY FORMANTES', 'Synch', '2nd semester', '1st year'),
(17, '2424001', 'PE2', 'Fitness Exercises', 'Wednesday', '4:00pm - 6:00pm', 'OL', 'LOUELLA MARICAR CHENG', 'Synch', '2nd semester', '1st year'),
(21, '2323001', 'CPE 111', 'Programming Logic & Design', 'Tuesday / Friday', '1:30pm - 4:30pm', 'NB201', 'MONA EARL BAYONO', 'F2F', '1st semester', '1st year'),
(22, '2323001', 'PHY121', 'Physics 1', 'Thursday / Friday', '7:00am - 10:00am', 'NB202', 'PALMER DE LEON', 'F2f', '1st semester', '1st year'),
(23, '2323001', 'CPE 112', 'Computer Engineering as a Discipline', 'Tuesday / Friday', '12:00pm - 1:30pm', 'NB202', 'MONA EARL BAYONO', 'F2f', '1st semester', '1st year'),
(24, '2323001', 'GECS01', 'Understanding the Self', 'Monday / Thursday', '6:30am - 8:00am', 'OL', 'SANDRA CABALLERO', 'Synch', '1st semester', '1st year'),
(25, '2323001', 'GECS02', 'Readings in Philippine History', 'Monday / Thursday', '1:30pm - 3:00pm', 'OL', 'ARLYN BIGLANG-AWA', 'Synch', '1st semester', '1st year'),
(26, '2323001', 'GECS03', 'The Contemporary World', 'Saturday', '7:00am - 10:00am', 'OL', 'GEORGE BEDIA', 'Synch', '1st semester', '1st year'),
(27, '2323001', 'GECS04', 'Mathematics in the Modern World', 'Monday / Thursday', '5:00pm - 6:30pm', 'OL', 'JONATHAN DE LEON', 'Synch', '1st semester', '1st year'),
(28, '2323001', 'NSTP1', 'National Service Training Program 1', 'Sunday', '2:00pm - 5:00pm', 'OL', 'TEOFISTA TEGIO', 'Synch', '1st semester', '1st year'),
(29, '2323001', 'PE1', 'Movement Enhancement', 'Tuesday', '10:30am - 12:30pm', 'OL', 'SHOBIE ROSELLE VICENTE', 'Synch', '1st semester', '1st year'),
(30, '2323001', 'CHM111', 'General Chemistry', 'Monday / Thursday', '3:00pm - 6:30pm', 'OL', 'MICHELLE VILLACORTE', 'Synch', '2nd semester', '1st year'),
(31, '2323001', 'ESC001', 'Computer Aided Drafting & Design', 'Monday / Thursday', '6:30pm - 9:30pm', 'OL', 'KARL ANGEL GAMBOA', 'Synch', '2nd semester', '1st year'),
(32, '2323001', 'GECS05', 'Purposive Communication', 'Wednesday', '6:30pm - 9:30pm', 'OL', 'MELFE DIOLA', 'Synch', '2nd semester', '1st year'),
(33, '2323001', 'GECS06', 'Art Appreciation', 'Tuesday / Friday', '1:30pm - 3:00pm', 'OL', 'GAYNELLE DUMO', 'Synch', '2nd semester', '1st year'),
(34, '2323001', 'GECS07', 'Science, Technology & Society', 'Tuesday / Friday', '12:00pm - 1:30pm', 'OL', 'MICHELLE VILLACORTE', 'Synch', '2nd semester', '1st year'),
(35, '2323001', 'MTH121', 'Differential Calculus', 'Tuesday / Friday', '5:00pm - 7:30pm', 'OL', 'JONATHAN DE LEON', 'Synch', '2nd semester', '1st year'),
(36, '2323001', 'NSTP2', 'National Service Training Program 2', 'Saturday', '2:00pm - 5:00pm', 'OL', 'IVONNY JOY FORMANTES', 'Synch', '2nd semester', '1st year'),
(37, '2323001', 'PE2', 'Fitness Exercises', 'Wednesday', '4:00pm - 6:00pm', 'OL', 'LOUELLA MARICAR CHENG', 'Synch', '2nd semester', '1st year'),
(41, '2323001', 'CPE121', 'Discrete Mathematics', 'Monday / Wednesday / Friday', '1:30pm - 4:30pm', 'Nb302', 'REGIE DAVID', 'F2F', 'summer semester', '1st year'),
(42, '2323001', 'MTH122', 'Integral Calculus', 'Wednesday / Friday', '6:00am - 9:00am', 'OL', 'REGIE DAVID', 'Synch', 'summer semester', '1st year'),
(43, '2323001', 'PHY122', 'Physics 2', 'Monday / Tuesday / Wednesday / Thursday', '4:00pm - 6:00pm', 'OL', 'JULIETA MONTECILLO', 'Synch', 'summer semester', '1st year');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
