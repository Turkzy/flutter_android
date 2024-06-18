-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2024 at 04:22 PM
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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `credits`) VALUES
(1, 'Computer Engineering', 4);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(255) DEFAULT NULL,
  `event_description` varchar(255) DEFAULT NULL,
  `event_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_title`, `event_description`, `event_date`) VALUES
(1, 'Orientation Day', 'Orientation session for new students', '2024-09-01 00:00:00'),
(2, 'Welcome Party', 'Welcome event for new and returning students', '2024-09-10 00:00:00'),
(3, 'Career Fair', 'Networking and career opportunities fair', '2024-09-15 00:00:00'),
(4, 'Semester Begins', 'Start of the new academic semester', '2024-08-20 00:00:00'),
(5, 'Alumni Homecoming', 'Gathering of alumni for reunion', '2025-07-01 00:00:00'),
(6, 'Research Symposium', 'Showcase of student research projects', '2025-03-01 00:00:00'),
(7, 'Spring Break Begins', 'Spring break starts for students', '2025-03-15 00:00:00'),
(8, 'Annual Sports Day', 'Intercollegiate sports competition', '2025-04-20 00:00:00'),
(9, 'Final Exams Week', 'Final examinations for all courses', '2025-05-05 00:00:00'),
(10, 'Graduation Ceremony', 'Commencement ceremony for graduating students', '2025-06-15 00:00:00'),
(11, 'Seminar on Leadership', 'Guest speaker on leadership skills', '2024-10-10 00:00:00'),
(12, 'Workshop on Innovation', 'Hands-on workshop on innovation', '2024-10-20 00:00:00'),
(13, 'Conference on Technology', 'Panel discussion on latest technology trends', '2024-11-05 00:00:00'),
(14, 'Student Art Exhibition', 'Display of student artworks', '2025-02-15 00:00:00'),
(15, 'Music Festival', 'Celebration of music and talents', '2025-04-10 00:00:00'),
(16, 'Drama Club Performance', 'Theatrical performance by drama club', '2024-11-30 00:00:00'),
(17, 'Literary Festival', 'Literary readings and workshops', '2025-03-20 00:00:00'),
(18, 'International Food Day', 'Cultural celebration through food', '2024-12-15 00:00:00'),
(19, 'Entrepreneurship Forum', 'Panel discussion on entrepreneurship', '2025-01-25 00:00:00'),
(20, 'Environmental Awareness Week', 'Activities promoting environmental awareness', '2025-04-01 00:00:00'),
(21, '123', '123', '2023-06-01 18:25:05'),
(22, '1234', '1234', '2024-10-15 18:25:05'),
(23, '12345', '12345', '2026-06-18 18:25:41');

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
(66, '2424002', 'PHY121', 'Physics 1', 4, '2.00', 'Failed', '1st semester'),
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
(194, '2222001', 'PHY122', 'Physics 2', 4, '3.00', 'Passed', 'summer semester');

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

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `user_pass` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `cellphone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mother_contact` varchar(255) DEFAULT NULL,
  `school_graduated` varchar(255) DEFAULT NULL,
  `blood_type` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `status` enum('Regular','Irregular') DEFAULT NULL,
  `gradefirstyr_id` int(11) DEFAULT NULL,
  `gradesecondtyr_id` int(11) DEFAULT NULL,
  `gradethirdyr_id` int(11) DEFAULT NULL,
  `gradefourthyr_id` int(11) DEFAULT NULL,
  `schedule_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `user_pass`, `user_id`, `student_name`, `address`, `gender`, `birthday`, `cellphone`, `email`, `mother_name`, `mother_contact`, `school_graduated`, `blood_type`, `course_id`, `status`, `gradefirstyr_id`, `gradesecondtyr_id`, `gradethirdyr_id`, `gradefourthyr_id`, `schedule_id`) VALUES
(1, 'default', '2424001', 'Joshua Calaoagan', '1322 INT. 7 BENAVIDEZ ST. STA CRUZ MANILA', 'Male', '2003-08-04 00:00:00', '0917-960-8599', 'joshuacalaoagan01@gmail.com', 'Evelyn Calaoagan', '0905-242-5854', 'ABE LEGARDA MANILA', 'B+', 1, 'Regular', NULL, NULL, NULL, NULL, NULL),
(2, 'default', '2424002', 'Jane Smith', '456 Oak Avenue, Sometown', 'Female', '1999-03-20 00:00:00', '234-567-8901', 'jane.smith@example.com', 'Emily Smith', '876-543-2109', 'ABC High School', 'B+', 1, 'Irregular', NULL, NULL, NULL, NULL, NULL),
(3, 'default', '2323001', 'John Albert Sison', '2459 Rizal Avenue, Sta. Cruz Manila', 'Male', '2002-04-22 00:00:00', '09477718692', 'sisonjohnalbert0422@gmail.com', 'Jeralyn Sison', '09322406785', 'Manuel Luis Quezon Senior High School', '+A', 1, 'Regular', NULL, NULL, NULL, NULL, NULL),
(4, 'default', '2323002', 'Emily Brown', '567 Elm Road, Anycity', 'Female', '2000-08-25 00:00:00', '456-789-0123', 'emily.brown@example.com', 'Jessica Brown', '654-321-0987', 'LMN High School', 'A-', 1, 'Irregular', NULL, NULL, NULL, NULL, NULL),
(5, 'default', '2222001', 'Daniel Lee', '234 Maple Lane, Hometown', 'Male', '1999-06-30 00:00:00', '567-890-1234', 'daniel.lee@example.com', 'Linda Lee', '543-210-9876', 'RST High School', 'B+', 1, 'Regular', NULL, NULL, NULL, NULL, NULL),
(6, 'default', '2222002', 'Sarah Martinez', '678 Cedar Drive, Cityville', 'Female', '1998-04-05 00:00:00', '678-901-2345', 'sarah.martinez@example.com', 'Maria Martinez', '432-109-8765', 'UVW High School', 'O+', 1, 'Irregular', NULL, NULL, NULL, NULL, NULL),
(7, 'default', '2121001', 'David Wilson', '345 Birch Street, Newcity', 'Male', '1997-11-12 00:00:00', '789-012-3456', 'david.wilson@example.com', 'Patricia Wilson', '321-098-7654', 'XYZ High School', 'A-', 1, 'Regular', NULL, NULL, NULL, NULL, NULL),
(8, 'default', '2121002', 'Olivia Taylor', '456 Pine Avenue, Othercity', 'Female', '2000-01-18 00:00:00', '890-123-4567', 'olivia.taylor@example.com', 'Jennifer Taylor', '210-987-6543', 'PQR High School', 'B+', 1, 'Irregular', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `gradefirstyr`
--
ALTER TABLE `gradefirstyr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gradefourthyr`
--
ALTER TABLE `gradefourthyr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gradesecondyr`
--
ALTER TABLE `gradesecondyr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gradethirdyr`
--
ALTER TABLE `gradethirdyr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `user_id_2` (`user_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `gradefirstyr_id` (`gradefirstyr_id`),
  ADD KEY `gradesecondtyr_id` (`gradesecondtyr_id`),
  ADD KEY `gradethirdyr_id` (`gradethirdyr_id`),
  ADD KEY `gradefourthyr_id` (`gradefourthyr_id`),
  ADD KEY `schedule_id` (`schedule_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `gradefirstyr`
--
ALTER TABLE `gradefirstyr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `gradefourthyr`
--
ALTER TABLE `gradefourthyr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `gradesecondyr`
--
ALTER TABLE `gradesecondyr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `gradethirdyr`
--
ALTER TABLE `gradethirdyr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_258` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_259` FOREIGN KEY (`gradefirstyr_id`) REFERENCES `gradefirstyr` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_260` FOREIGN KEY (`gradesecondtyr_id`) REFERENCES `gradesecondyr` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_261` FOREIGN KEY (`gradethirdyr_id`) REFERENCES `gradethirdyr` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_262` FOREIGN KEY (`gradefourthyr_id`) REFERENCES `gradefourthyr` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_263` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
