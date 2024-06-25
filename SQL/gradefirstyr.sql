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
-- Table structure for table `gradefirstyr`
--

CREATE TABLE `gradefirstyr` (
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
-- Dumping data for table `gradefirstyr`
--

INSERT INTO `gradefirstyr` (`id`, `user_id`, `subject_code`, `description`, `units`, `course_grade`, `remarks`, `semester`) VALUES
(41, '2424001', 'CPE 111', 'Programming Logic & Design', 2, '3.75', 'Passed', '1st semester'),
(42, '2424001', 'CPE 112', 'Computer Engineering as a Discipline', 1, '3.50', 'Passed', '1st semester'),
(43, '2424001', 'GECS01', 'Understanding the Self', 3, '3.25', 'Passed', '1st semester'),
(44, '2424001', 'GECS02', 'Readings in Philippine History', 3, '3.00', 'Passed', '1st semester'),
(45, '2424001', 'GECS03', 'The Contemporary World', 3, '3.50', 'Passed', '1st semester'),
(46, '2424001', 'GECS04', 'Mathematics in the Modern World', 3, '3.75', 'Passed', '1st semester'),
(47, '2424001', 'NSTP1', 'National Service Training Program 1', 3, '3.75', 'Passed', '1st semester'),
(48, '2424001', 'PE1', 'Movement Enhancement', 2, '3.75', 'Passed', '1st semester'),
(49, '2424001', 'PHY121', 'Physics 1', 4, '2.00', 'Passed', '1st semester'),
(50, '2424001', 'CHM111', 'General Chemistry', 4, '', '', '2nd semester'),
(51, '2424001', 'ESC001', 'Computer Aided Drafting & Design', 2, '', '', '2nd semester'),
(52, '2424001', 'GECS05', 'Purposive Communication', 3, '', '', '2nd semester'),
(53, '2424001', 'GECS06', 'Art Appreciation', 3, '', '', '2nd semester'),
(54, '2424001', 'GECS07', 'Science, Technology & Society', 3, '', '', '2nd semester'),
(55, '2424001', 'MTH121', 'Differential Calculus', 5, '', '', '2nd semester'),
(56, '2424001', 'NSTP2', 'National Service Training Program 2', 3, '', '', '2nd semester'),
(57, '2424001', 'PE2', 'Fitness Exercises', 2, '', '', '2nd semester'),
(58, '2424002', 'CPE 111', 'Programming Logic & Design', 2, '3.75', 'Passed', '1st semester'),
(59, '2424002', 'CPE 112', 'Computer Engineering as a Discipline', 1, '4.00', 'Passed', '1st semester'),
(60, '2424002', 'GECS01', 'Understanding the Self', 3, '3.25', 'Passed', '1st semester'),
(61, '2424002', 'GECS02', 'Readings in Philippine History', 3, '3.00', 'Passed', '1st semester'),
(62, '2424002', 'GECS03', 'The Contemporary World', 3, '3.50', 'Passed', '1st semester'),
(63, '2424002', 'GECS04', 'Mathematics in the Modern World', 3, '4.00', 'Passed', '1st semester'),
(64, '2424002', 'NSTP1', 'National Service Training Program 1', 3, '4.00', 'Passed', '1st semester'),
(65, '2424002', 'PE1', 'Movement Enhancement', 2, '3.75', 'Passed', '1st semester'),
(66, '2424002', 'PHY121', 'Physics 1', 4, '1.00', 'Failed', '1st semester'),
(67, '2424002', 'CHM111', 'General Chemistry', 4, '', '', '2nd semester'),
(68, '2424002', 'ESC001', 'Computer Aided Drafting & Design', 2, '', '', '2nd semester'),
(69, '2424002', 'GECS05', 'Purposive Communication', 3, '', '', '2nd semester'),
(70, '2424002', 'GECS06', 'Art Appreciation', 3, '', '', '2nd semester'),
(71, '2424002', 'GECS07', 'Science, Technology & Society', 3, '', '', '2nd semester'),
(72, '2424002', 'MTH121', 'Differential Calculus', 5, '', '', '2nd semester'),
(73, '2424002', 'NSTP2', 'National Service Training Program 2', 3, '', '', '2nd semester'),
(74, '2424002', 'PE2', 'Fitness Exercises', 2, '', '', '2nd semester'),
(75, '2323001', 'CPE 111', 'Programming Logic & Design', 2, '3.75', 'Passed', '1st semester'),
(76, '2323001', 'CPE 112', 'Computer Engineering as a Discipline', 1, '4.00', 'Passed', '1st semester'),
(77, '2323001', 'GECS01', 'Understanding the Self', 3, '3.25', 'Passed', '1st semester'),
(78, '2323001', 'GECS02', 'Readings in Philippine History', 3, '3.00', 'Passed', '1st semester'),
(79, '2323001', 'GECS03', 'The Contemporary World', 3, '3.50', 'Passed', '1st semester'),
(80, '2323001', 'GECS04', 'Mathematics in the Modern World', 3, '4.00', 'Passed', '1st semester'),
(81, '2323001', 'NSTP1', 'National Service Training Program 1', 3, '4.00', 'Passed', '1st semester'),
(82, '2323001', 'PE1', 'Movement Enhancement', 2, '3.75', 'Passed', '1st semester'),
(83, '2323001', 'PHY121', 'Physics 1', 4, '2.00', 'Passed', '1st semester'),
(84, '2323001', 'CHM111', 'General Chemistry', 4, '3.25', 'Passed', '2nd semester'),
(85, '2323001', 'ESC001', 'Computer Aided Drafting & Design', 2, '4.00', 'Passed', '2nd semester'),
(86, '2323001', 'GECS05', 'Purposive Communication', 3, '2.75', 'Passed', '2nd semester'),
(87, '2323001', 'GECS06', 'Art Appreciation', 3, '3.25', 'Passed', '2nd semester'),
(88, '2323001', 'GECS07', 'Science, Technology & Society', 3, '3.50', 'Passed', '2nd semester'),
(89, '2323001', 'MTH121', 'Differential Calculus', 5, '3.00', 'Passed', '2nd semester'),
(90, '2323001', 'NSTP2', 'National Service Training Program 2', 3, '3.50', 'Passed', '2nd semester'),
(91, '2323001', 'PE2', 'Fitness Exercises', 2, '3.50', 'Passed', '2nd semester'),
(92, '2323001', 'CPE121', 'Discrete Mathematics', 3, '3.25', 'Passed', 'summer semester'),
(93, '2323001', 'MTH122', 'Integral Calculus', 5, '2.00', 'Passed', 'summer semester'),
(94, '2323001', 'PHY122', 'Physics 2', 4, '3.00', 'Passed', 'summer semester'),
(95, '2323002', 'CPE 111', 'Programming Logic & Design', 2, '3.50', 'Passed', '1st semester'),
(96, '2323002', 'CPE 112', 'Computer Engineering as a Discipline', 1, '3.75', 'Passed', '1st semester'),
(97, '2323002', 'GECS01', 'Understanding the Self', 3, '3.00', 'Passed', '1st semester'),
(98, '2323002', 'GECS02', 'Readings in Philippine History', 3, '2.75', 'Passed', '1st semester'),
(99, '2323002', 'GECS03', 'The Contemporary World', 3, '3.25', 'Passed', '1st semester'),
(100, '2323002', 'GECS04', 'Mathematics in the Modern World', 3, '3.75', 'Passed', '1st semester'),
(101, '2323002', 'NSTP1', 'National Service Training Program 1', 3, '3.75', 'Passed', '1st semester'),
(102, '2323002', 'PE1', 'Movement Enhancement', 2, '3.50', 'Passed', '1st semester'),
(103, '2323002', 'PHY121', 'Physics 1', 4, '2.00', 'Passed', '1st semester'),
(104, '2323002', 'CHM111', 'General Chemistry', 4, '3.00', 'Passed', '2nd semester'),
(105, '2323002', 'ESC001', 'Computer Aided Drafting & Design', 2, '3.75', 'Passed', '2nd semester'),
(106, '2323002', 'GECS05', 'Purposive Communication', 3, '3.00', 'Passed', '2nd semester'),
(107, '2323002', 'GECS06', 'Art Appreciation', 3, '3.50', 'Passed', '2nd semester'),
(108, '2323002', 'GECS07', 'Science, Technology & Society', 3, '3.75', 'Passed', '2nd semester'),
(109, '2323002', 'MTH121', 'Differential Calculus', 5, '3.25', 'Passed', '2nd semester'),
(110, '2323002', 'NSTP2', 'National Service Training Program 2', 3, '3.25', 'Passed', '2nd semester'),
(111, '2323002', 'PE2', 'Fitness Exercises', 2, '3.25', 'Passed', '2nd semester'),
(112, '2323002', 'CPE121', 'Discrete Mathematics', 3, '3.25', 'Passed', 'summer semester'),
(113, '2323002', 'MTH122', 'Integral Calculus', 5, '1.00', 'Failed', 'summer semester'),
(114, '2323002', 'PHY122', 'Physics 2', 4, '3.00', 'Passed', 'summer semester'),
(115, '2222002', 'CPE 111', 'Programming Logic & Design', 2, '3.50', 'Passed', '1st semester'),
(116, '2222002', 'CPE 112', 'Computer Engineering as a Discipline', 1, '4.00', 'Passed', '1st semester'),
(117, '2222002', 'GECS01', 'Understanding the Self', 3, '3.25', 'Passed', '1st semester'),
(118, '2222002', 'GECS02', 'Readings in Philippine History', 3, '3.00', 'Passed', '1st semester'),
(119, '2222002', 'GECS03', 'The Contemporary World', 3, '3.50', 'Passed', '1st semester'),
(120, '2222002', 'GECS04', 'Mathematics in the Modern World', 3, '4.00', 'Passed', '1st semester'),
(121, '2222002', 'NSTP1', 'National Service Training Program 1', 3, '4.00', 'Passed', '1st semester'),
(122, '2222002', 'PE1', 'Movement Enhancement', 2, '3.75', 'Passed', '1st semester'),
(123, '2222002', 'PHY121', 'Physics 1', 4, '2.00', 'Passed', '1st semester'),
(124, '2222002', 'CHM111', 'General Chemistry', 4, '3.25', 'Passed', '2nd semester'),
(125, '2222002', 'ESC001', 'Computer Aided Drafting & Design', 2, '4.00', 'Passed', '2nd semester'),
(126, '2222002', 'GECS05', 'Purposive Communication', 3, '2.75', 'Passed', '2nd semester'),
(127, '2222002', 'GECS06', 'Art Appreciation', 3, '3.25', 'Passed', '2nd semester'),
(128, '2222002', 'GECS07', 'Science, Technology & Society', 3, '3.50', 'Passed', '2nd semester'),
(129, '2222002', 'MTH121', 'Differential Calculus', 5, '3.00', 'Passed', '2nd semester'),
(130, '2222002', 'NSTP2', 'National Service Training Program 2', 3, '3.50', 'Passed', '2nd semester'),
(131, '2222002', 'PE2', 'Fitness Exercises', 2, '3.50', 'Passed', '2nd semester'),
(132, '2222002', 'CPE121', 'Discrete Mathematics', 3, '3.25', 'Passed', 'summer semester'),
(133, '2222002', 'MTH122', 'Integral Calculus', 5, '2.00', 'Passed', 'summer semester'),
(134, '2222002', 'PHY122', 'Physics 2', 4, '3.00', 'Passed', 'summer semester'),
(135, '2121001', 'CPE 111', 'Programming Logic & Design', 2, '3.00', 'Passed', '1st semester'),
(136, '2121001', 'CPE 112', 'Computer Engineering as a Discipline', 1, '3.50', 'Passed', '1st semester'),
(137, '2121001', 'GECS01', 'Understanding the Self', 3, '2.75', 'Passed', '1st semester'),
(138, '2121001', 'GECS02', 'Readings in Philippine History', 3, '2.50', 'Passed', '1st semester'),
(139, '2121001', 'GECS03', 'The Contemporary World', 3, '3.00', 'Passed', '1st semester'),
(140, '2121001', 'GECS04', 'Mathematics in the Modern World', 3, '3.50', 'Passed', '1st semester'),
(141, '2121001', 'NSTP1', 'National Service Training Program 1', 3, '3.50', 'Passed', '1st semester'),
(142, '2121001', 'PE1', 'Movement Enhancement', 2, '3.25', 'Passed', '1st semester'),
(143, '2121001', 'PHY121', 'Physics 1', 4, '1.75', 'Passed', '1st semester'),
(144, '2121001', 'CHM111', 'General Chemistry', 4, '3.00', 'Passed', '2nd semester'),
(145, '2121001', 'ESC001', 'Computer Aided Drafting & Design', 2, '3.75', 'Passed', '2nd semester'),
(146, '2121001', 'GECS05', 'Purposive Communication', 3, '2.50', 'Passed', '2nd semester'),
(147, '2121001', 'GECS06', 'Art Appreciation', 3, '3.00', 'Passed', '2nd semester'),
(148, '2121001', 'GECS07', 'Science, Technology & Society', 3, '3.25', 'Passed', '2nd semester'),
(149, '2121001', 'MTH121', 'Differential Calculus', 5, '2.75', 'Passed', '2nd semester'),
(150, '2121001', 'NSTP2', 'National Service Training Program 2', 3, '3.00', 'Passed', '2nd semester'),
(151, '2121001', 'PE2', 'Fitness Exercises', 2, '3.00', 'Passed', '2nd semester'),
(152, '2121001', 'CPE121', 'Discrete Mathematics', 3, '3.00', 'Passed', 'summer semester'),
(153, '2121001', 'MTH122', 'Integral Calculus', 5, '2.00', 'Passed', 'summer semester'),
(154, '2121001', 'PHY122', 'Physics 2', 4, '2.50', 'Passed', 'summer semester'),
(155, '2121002', 'CPE 111', 'Programming Logic & Design', 2, '3.00', 'Passed', '1st semester'),
(156, '2121002', 'CPE 112', 'Computer Engineering as a Discipline', 1, '3.50', 'Passed', '1st semester'),
(157, '2121002', 'GECS01', 'Understanding the Self', 3, '2.75', 'Passed', '1st semester'),
(158, '2121002', 'GECS02', 'Readings in Philippine History', 3, '2.50', 'Passed', '1st semester'),
(159, '2121002', 'GECS03', 'The Contemporary World', 3, '3.00', 'Passed', '1st semester'),
(160, '2121002', 'GECS04', 'Mathematics in the Modern World', 3, '3.50', 'Passed', '1st semester'),
(161, '2121002', 'NSTP1', 'National Service Training Program 1', 3, '3.50', 'Passed', '1st semester'),
(162, '2121002', 'PE1', 'Movement Enhancement', 2, '3.25', 'Passed', '1st semester'),
(163, '2121002', 'PHY121', 'Physics 1', 4, '1.75', 'Passed', '1st semester'),
(164, '2121002', 'CHM111', 'General Chemistry', 4, '3.00', 'Passed', '2nd semester'),
(165, '2121002', 'ESC001', 'Computer Aided Drafting & Design', 2, '3.75', 'Passed', '2nd semester'),
(166, '2121002', 'GECS05', 'Purposive Communication', 3, '2.50', 'Passed', '2nd semester'),
(167, '2121002', 'GECS06', 'Art Appreciation', 3, '3.00', 'Passed', '2nd semester'),
(168, '2121002', 'GECS07', 'Science, Technology & Society', 3, '3.25', 'Passed', '2nd semester'),
(169, '2121002', 'MTH121', 'Differential Calculus', 5, '2.75', 'Passed', '2nd semester'),
(170, '2121002', 'NSTP2', 'National Service Training Program 2', 3, '3.00', 'Passed', '2nd semester'),
(171, '2121002', 'PE2', 'Fitness Exercises', 2, '3.00', 'Passed', '2nd semester'),
(172, '2121002', 'CPE121', 'Discrete Mathematics', 3, '3.00', 'Passed', 'summer semester'),
(173, '2121002', 'MTH122', 'Integral Calculus', 5, '2.50', 'Passed', 'summer semester'),
(174, '2121002', 'PHY122', 'Physics 2', 4, '2.50', 'Passed', 'summer semester'),
(175, '2222001', 'CPE 111', 'Programming Logic & Design', 2, '3.25', 'Passed', '1st semester'),
(176, '2222001', 'CPE 112', 'Computer Engineering as a Discipline', 1, '4.00', 'Passed', '1st semester'),
(177, '2222001', 'GECS01', 'Understanding the Self', 3, '3.00', 'Passed', '1st semester'),
(178, '2222001', 'GECS02', 'Readings in Philippine History', 3, '2.50', 'Passed', '1st semester'),
(179, '2222001', 'GECS03', 'The Contemporary World', 3, '3.00', 'Passed', '1st semester'),
(180, '2222001', 'GECS04', 'Mathematics in the Modern World', 3, '3.75', 'Passed', '1st semester'),
(181, '2222001', 'NSTP1', 'National Service Training Program 1', 3, '3.75', 'Passed', '1st semester'),
(182, '2222001', 'PE1', 'Movement Enhancement', 2, '3.50', 'Passed', '1st semester'),
(183, '2222001', 'PHY121', 'Physics 1', 4, '2.50', 'Passed', '1st semester'),
(184, '2222001', 'CHM111', 'General Chemistry', 4, '3.25', 'Passed', '2nd semester'),
(185, '2222001', 'ESC001', 'Computer Aided Drafting & Design', 2, '3.75', 'Passed', '2nd semester'),
(186, '2222001', 'GECS05', 'Purposive Communication', 3, '3.00', 'Passed', '2nd semester'),
(187, '2222001', 'GECS06', 'Art Appreciation', 3, '3.50', 'Passed', '2nd semester'),
(188, '2222001', 'GECS07', 'Science, Technology & Society', 3, '3.75', 'Passed', '2nd semester'),
(189, '2222001', 'MTH121', 'Differential Calculus', 5, '3.00', 'Passed', '2nd semester'),
(190, '2222001', 'NSTP2', 'National Service Training Program 2', 3, '3.50', 'Passed', '2nd semester'),
(191, '2222001', 'PE2', 'Fitness Exercises', 2, '3.50', 'Passed', '2nd semester'),
(192, '2222001', 'CPE121', 'Discrete Mathematics', 3, '3.25', 'Passed', 'summer semester'),
(193, '2222001', 'MTH122', 'Integral Calculus', 5, '1.75', 'Passed', 'summer semester'),
(194, '2222001', 'PHY122', 'Physics 2', 4, '3.00', 'Passed', 'summer semester'),
(195, '2424002', 'PHY121', 'Physics 1', 4, '', '', '2nd semester');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gradefirstyr`
--
ALTER TABLE `gradefirstyr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gradefirstyr`
--
ALTER TABLE `gradefirstyr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
