-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 04:22 AM
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
(194, '2222001', 'PHY122', 'Physics 2', 4, '3.00', 'Passed', 'summer semester'),
(195, '2424002', 'PHY121', 'Physics 1', 4, '', '', '2nd semester');

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
(89, '2222001', 'MTH211', 'Differential Equation', 3, '2.25', 'Passed', '2nd semester'),
(90, '2222001', 'MTH221', 'Engineering Data Analysis', 3, '3.75', 'Passed', '1st semester'),
(91, '2222001', 'PE3', 'Physical Activity Towards Health and Fitness', 2, '3.50', 'Passed', '1st semester'),
(92, '2222001', 'CPE221', 'Data Structures and Algorithm', 4, '3.00', 'Passed', '2nd semester'),
(93, '2222001', 'CPE222', 'Numerical Methods', 4, '3.75', 'Passed', '2nd semester'),
(94, '2222001', 'ECE212', 'Circuit Analysis 1', 4, '2.25', 'Passed', '2nd semester'),
(95, '2222001', 'GECS08', 'Ethics', 3, '3.75', 'Passed', '1st semester'),
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
(106, '2222002', 'MTH211', 'Differential Equation', 3, '2.00', 'Passed', '2nd semester'),
(107, '2222002', 'MTH221', 'Engineering Data Analysis', 3, '3.75', 'Passed', '1st semester'),
(108, '2222002', 'PE3', 'Physical Activity Towards Health and Fitness', 2, '3.50', 'Passed', '1st semester'),
(109, '2222002', 'CPE221', 'Data Structures and Algorithm', 4, '2.75', 'Passed', '2nd semester'),
(110, '2222002', 'CPE222', 'Numerical Methods', 4, '3.50', 'Passed', '2nd semester'),
(111, '2222002', 'ECE212', 'Circuit Analysis 1', 4, '2.75', 'Passed', '2nd semester'),
(112, '2222002', 'GECS08', 'Ethics', 3, '3.25', 'Passed', '1st semester'),
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
(123, '2121001', 'MTH211', 'Differential Equation', 3, '2.25', 'Passed', '2nd semester'),
(124, '2121001', 'MTH221', 'Engineering Data Analysis', 3, '3.75', 'Passed', '1st semester'),
(125, '2121001', 'PE3', 'Physical Activity Towards Health and Fitness', 2, '3.50', 'Passed', '1st semester'),
(126, '2121001', 'CPE221', 'Data Structures and Algorithm', 4, '3.00', 'Passed', '2nd semester'),
(127, '2121001', 'CPE222', 'Numerical Methods', 4, '3.75', 'Passed', '2nd semester'),
(128, '2121001', 'ECE212', 'Circuit Analysis 1', 4, '2.25', 'Passed', '2nd semester'),
(129, '2121001', 'GECS08', 'Ethics', 3, '3.75', 'Passed', '1st semester'),
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
(140, '2121002', 'MTH211', 'Differential Equation', 3, '2.00', 'Passed', '2nd semester'),
(141, '2121002', 'MTH221', 'Engineering Data Analysis', 3, '3.75', 'Passed', '1st semester'),
(142, '2121002', 'PE3', 'Physical Activity Towards Health and Fitness', 2, '3.50', 'Passed', '1st semester'),
(143, '2121002', 'CPE221', 'Data Structures and Algorithm', 4, '3.00', 'Passed', '2nd semester'),
(144, '2121002', 'CPE222', 'Numerical Methods', 4, '3.75', 'Passed', '2nd semester'),
(145, '2121002', 'ECE212', 'Circuit Analysis 1', 4, '2.25', 'Passed', '2nd semester'),
(146, '2121002', 'GECS08', 'Ethics', 3, '3.75', 'Passed', '1st semester'),
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
(43, '2323001', 'PHY122', 'Physics 2', 'Monday / Tuesday / Wednesday / Thursday', '4:00pm - 6:00pm', 'OL', 'JULIETA MONTECILLO', 'Synch', 'summer semester', '1st year'),
(44, '2424002', 'CPE 111', 'Programming Logic & Design', 'Tuesday / Friday', '1:30pm - 4:30pm', 'NB201', 'MONA EARL BAYONO', 'F2F', '1st semester', '1st year'),
(45, '2424002', 'PHY121', 'Physics 1', 'Thursday / Friday', '7:00am - 10:00am', 'NB202', 'PALMER DE LEON', 'F2f', '1st semester', '1st year'),
(46, '2424002', 'CPE 112', 'Computer Engineering as a Discipline', 'Tuesday / Friday', '12:00pm - 1:30pm', 'NB202', 'MONA EARL BAYONO', 'F2f', '1st semester', '1st year'),
(47, '2424002', 'GECS01', 'Understanding the Self', 'Monday / Thursday', '6:30am - 8:00am', 'OL', 'SANDRA CABALLERO', 'Synch', '1st semester', '1st year'),
(48, '2424002', 'GECS02', 'Readings in Philippine History', 'Monday / Thursday', '1:30pm - 3:00pm', 'OL', 'ARLYN BIGLANG-AWA', 'Synch', '1st semester', '1st year'),
(49, '2424002', 'GECS03', 'The Contemporary World', 'Saturday', '7:00am - 10:00am', 'OL', 'GEORGE BEDIA', 'Synch', '1st semester', '1st year'),
(50, '2424002', 'GECS04', 'Mathematics in the Modern World', 'Monday / Thursday', '5:00pm - 6:30pm', 'OL', 'JONATHAN DE LEON', 'Synch', '1st semester', '1st year'),
(51, '2424002', 'NSTP1', 'National Service Training Program 1', 'Sunday', '2:00pm - 5:00pm', 'OL', 'TEOFISTA TEGIO', 'Synch', '1st semester', '1st year'),
(52, '2424002', 'PE1', 'Movement Enhancement', 'Tuesday', '10:30am - 12:30pm', 'OL', 'SHOBIE ROSELLE VICENTE', 'Synch', '1st semester', '1st year'),
(53, '2424002', 'CHM111', 'General Chemistry', 'Monday / Thursday', '3:00pm - 6:30pm', 'OL', 'MICHELLE VILLACORTE', 'Synch', '2nd semester', '1st year'),
(54, '2424002', 'ESC001', 'Computer Aided Drafting & Design', 'Monday / Thursday', '6:30pm - 9:30pm', 'OL', 'KARL ANGEL GAMBOA', 'Synch', '2nd semester', '1st year'),
(55, '2424002', 'GECS05', 'Purposive Communication', 'Wednesday', '6:30pm - 9:30pm', 'OL', 'MELFE DIOLA', 'Synch', '2nd semester', '1st year'),
(56, '2424002', 'GECS06', 'Art Appreciation', 'Tuesday / Friday', '1:30pm - 3:00pm', 'OL', 'GAYNELLE DUMO', 'Synch', '2nd semester', '1st year'),
(57, '2424002', 'GECS07', 'Science, Technology & Society', 'Tuesday / Friday', '12:00pm - 1:30pm', 'OL', 'MICHELLE VILLACORTE', 'Synch', '2nd semester', '1st year'),
(58, '2424002', 'MTH121', 'Differential Calculus', 'Tuesday / Friday', '5:00pm - 7:30pm', 'OL', 'JONATHAN DE LEON', 'Synch', '2nd semester', '1st year'),
(59, '2424002', 'NSTP2', 'National Service Training Program 2', 'Saturday', '2:00pm - 5:00pm', 'OL', 'IVONNY JOY FORMANTES', 'Synch', '2nd semester', '1st year'),
(60, '2424002', 'PE2', 'Fitness Exercises', 'Wednesday', '4:00pm - 6:00pm', 'OL', 'LOUELLA MARICAR CHENG', 'Synch', '2nd semester', '1st year'),
(61, '2323001', 'CPE 211', 'Object Oriented Programming', 'Wednesday', '2:30pm - 5:30pm', 'N304', 'RHAYMOND MONTERDE', 'F2F', '1st semester', '2nd year'),
(62, '2323001', 'CPE 211', 'Object Oriented Programming', 'Monday', '2:30pm - 5:30pm', 'OL', 'RHAYMOND MONTERDE', 'Synch', '1st semester', '2nd year'),
(63, '2323001', 'ESC 002', 'Creativity in Engineering Drafting & Design', 'Thursday', '4:00pm - 7:00pm', 'N304', 'MARK ANTHONY CASTRO', 'F2F', '1st semester', '2nd year'),
(64, '2323001', 'ESC 002', 'Creativity in Engineering Drafting & Design', 'Tuesday', '4:00pm - 7:00pm', 'OL', 'MARK ANTHONY CASTRO', 'Synch', '1st semester', '2nd year'),
(65, '2323001', 'ESC 003', 'Engineering Economics', 'Friday', '1:00pm - 4:00pm', 'N304', 'LETICIA MARQUEZ', 'F2F', '1st semester', '2nd year'),
(66, '2323001', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 'Tuesday', '12:30pm - 2:00pm', 'OL', 'FLOCARNA LACSAMANA', 'Synch', '1st semester', '2nd year'),
(67, '2323001', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 'Thursday', '12:30pm - 2:00pm', 'N304', 'FLOCARNA LACSAMANA', 'F2F', '1st semester', '2nd year'),
(68, '2323001', 'GEMS01', 'The Life and Works of Rizal', 'Wednesday', '5:30pm - 7:00pm', 'N304', 'MARCO APOLONIO', 'F2F', '1st semester', '2nd year'),
(69, '2323001', 'GEMS01', 'The Life and Works of Rizal', 'Monday', '5:30pm - 7:00pm', 'OL', 'MARCO APOLONIO', 'Synch', '1st semester', '2nd year'),
(72, '2323001', 'MTH221', 'Engineering Data Analysis', 'Tuesday', '2:30pm - 4:00pm', 'OL', 'LETICIA MARQUEZ', 'Synch', '1st semester', '2nd year'),
(73, '2323001', 'MTH221', 'Engineering Data Analysis', 'Thursday', '2:30pm - 4:00pm', 'N304', 'LETICIA MARQUEZ', 'F2F', '1st semester', '2nd year'),
(74, '2323001', 'PE3', 'Physical Activity Towards Health and Fitness', 'Friday', '5:00pm - 7:00pm', 'FIELD', 'RAMON REYES', 'F2F', '1st semester', '2nd year'),
(75, '2323001', 'CPE221', 'Data Structures and Algorithm', 'Thursday / Friday', '6:00am - 7:30am', 'M206', 'RONALD FERNANDEZ', 'F2F', '2nd semester', '2nd year'),
(76, '2323001', 'CPE221', 'Data Structures and Algorithm', 'Monday / Tuesday', '6:00am - 7:30am', 'OL', 'RONALD FERNANDEZ', 'Synch', '2nd semester', '2nd year'),
(77, '2323001', 'CPE222', 'Numerical Methods', 'Friday', '7:30am - 9:00am', 'M206', 'MA. RONIEL-LEINOR VELASCO', 'F2F', '2nd semester', '2nd year'),
(78, '2323001', 'CPE222', 'Numerical Methods', 'Tuesday', '7:30am - 9:00am', 'OL', 'MA. RONIEL-LEINOR VELASCO', 'Synch', '2nd semester', '2nd year'),
(79, '2323001', 'ECE212', 'Circuit Analysis 1', 'Monday / Thursday', '7:30am - 9:00am', 'OL', 'PALMER DE LEON', 'Synch', '2nd semester', '2nd year'),
(80, '2323001', 'ECE212', 'Circuit Analysis 1', 'Wednesday', '7:30am - 10:30am', 'M206', 'PALMER DE LEON', 'F2F', '2nd semester', '2nd year'),
(81, '2323001', 'GECS08', 'Ethics', 'Friday', '11:00am - 2:00pm', 'M206', 'ALEX SUYAT', 'F2F', '1st semester', '2nd year'),
(82, '2323001', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 'Monday', '11:00am - 12:30pm', 'OL', 'CORAZON GREGORIO', 'Synch', '2nd semester', '2nd year'),
(83, '2323001', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 'Thursday', '11:00am - 12:30pm', 'NB206', 'CORAZON GREGORIO', 'F2F', '2nd semester', '2nd year'),
(84, '2323001', 'GEIS02', 'Bonifacio & Katipunan Movement', 'Thursday', '9:00am - 12:00pm', 'NB206', 'CLARITA LOMODAG', 'F2F', '2nd semester', '2nd year'),
(85, '2323001', 'PE4', 'Physical Activities towards Health and Fitness 2', 'Saturday', '4:00pm - 6:00pm', 'FIELD', 'MARIO BUTLIG', 'F2F', '2nd semester', '2nd year'),
(90, '2222001', 'CPE 111', 'Programming Logic & Design', 'Tuesday / Friday', '1:30pm - 4:30pm', 'NB201', 'MONA EARL BAYONO', 'F2F', '1st semester', '1st year'),
(91, '2222001', 'PHY121', 'Physics 1', 'Thursday / Friday', '7:00am - 10:00am', 'NB202', 'PALMER DE LEON', 'F2f', '1st semester', '1st year'),
(92, '2222001', 'CPE 112', 'Computer Engineering as a Discipline', 'Tuesday / Friday', '12:00pm - 1:30pm', 'NB202', 'MONA EARL BAYONO', 'F2f', '1st semester', '1st year'),
(93, '2222001', 'GECS01', 'Understanding the Self', 'Monday / Thursday', '6:30am - 8:00am', 'OL', 'SANDRA CABALLERO', 'Synch', '1st semester', '1st year'),
(94, '2222001', 'GECS02', 'Readings in Philippine History', 'Monday / Thursday', '1:30pm - 3:00pm', 'OL', 'ARLYN BIGLANG-AWA', 'Synch', '1st semester', '1st year'),
(95, '2222001', 'GECS03', 'The Contemporary World', 'Saturday', '7:00am - 10:00am', 'OL', 'GEORGE BEDIA', 'Synch', '1st semester', '1st year'),
(96, '2222001', 'GECS04', 'Mathematics in the Modern World', 'Monday / Thursday', '5:00pm - 6:30pm', 'OL', 'JONATHAN DE LEON', 'Synch', '1st semester', '1st year'),
(97, '2222001', 'NSTP1', 'National Service Training Program 1', 'Sunday', '2:00pm - 5:00pm', 'OL', 'TEOFISTA TEGIO', 'Synch', '1st semester', '1st year'),
(98, '2222001', 'PE1', 'Movement Enhancement', 'Tuesday', '10:30am - 12:30pm', 'OL', 'SHOBIE ROSELLE VICENTE', 'Synch', '1st semester', '1st year'),
(99, '2222001', 'CHM111', 'General Chemistry', 'Monday / Thursday', '3:00pm - 6:30pm', 'OL', 'MICHELLE VILLACORTE', 'Synch', '2nd semester', '1st year'),
(100, '2222001', 'ESC001', 'Computer Aided Drafting & Design', 'Monday / Thursday', '6:30pm - 9:30pm', 'OL', 'KARL ANGEL GAMBOA', 'Synch', '2nd semester', '1st year'),
(101, '2222001', 'GECS05', 'Purposive Communication', 'Wednesday', '6:30pm - 9:30pm', 'OL', 'MELFE DIOLA', 'Synch', '2nd semester', '1st year'),
(102, '2222001', 'GECS06', 'Art Appreciation', 'Tuesday / Friday', '1:30pm - 3:00pm', 'OL', 'GAYNELLE DUMO', 'Synch', '2nd semester', '1st year'),
(103, '2222001', 'GECS07', 'Science, Technology & Society', 'Tuesday / Friday', '12:00pm - 1:30pm', 'OL', 'MICHELLE VILLACORTE', 'Synch', '2nd semester', '1st year'),
(104, '2222001', 'MTH121', 'Differential Calculus', 'Tuesday / Friday', '5:00pm - 7:30pm', 'OL', 'JONATHAN DE LEON', 'Synch', '2nd semester', '1st year'),
(105, '2222001', 'NSTP2', 'National Service Training Program 2', 'Saturday', '2:00pm - 5:00pm', 'OL', 'IVONNY JOY FORMANTES', 'Synch', '2nd semester', '1st year'),
(106, '2222001', 'PE2', 'Fitness Exercises', 'Wednesday', '4:00pm - 6:00pm', 'OL', 'LOUELLA MARICAR CHENG', 'Synch', '2nd semester', '1st year'),
(107, '2222001', 'CPE121', 'Discrete Mathematics', 'Monday / Wednesday / Friday', '1:30pm - 4:30pm', 'Nb302', 'REGIE DAVID', 'F2F', 'summer semester', '1st year'),
(108, '2222001', 'MTH122', 'Integral Calculus', 'Wednesday / Friday', '6:00am - 9:00am', 'OL', 'REGIE DAVID', 'Synch', 'summer semester', '1st year'),
(109, '2222001', 'PHY122', 'Physics 2', 'Monday / Tuesday / Wednesday / Thursday', '4:00pm - 6:00pm', 'OL', 'JULIETA MONTECILLO', 'Synch', 'summer semester', '1st year'),
(110, '2222001', 'CPE 211', 'Object Oriented Programming', 'Wednesday', '2:30pm - 5:30pm', 'N304', 'RHAYMOND MONTERDE', 'F2F', '1st semester', '2nd year'),
(111, '2222001', 'CPE 211', 'Object Oriented Programming', 'Monday', '2:30pm - 5:30pm', 'OL', 'RHAYMOND MONTERDE', 'Synch', '1st semester', '2nd year'),
(112, '2222001', 'ESC 002', 'Creativity in Engineering Drafting & Design', 'Thursday', '4:00pm - 7:00pm', 'N304', 'MARK ANTHONY CASTRO', 'F2F', '1st semester', '2nd year'),
(113, '2222001', 'ESC 002', 'Creativity in Engineering Drafting & Design', 'Tuesday', '4:00pm - 7:00pm', 'OL', 'MARK ANTHONY CASTRO', 'Synch', '1st semester', '2nd year'),
(114, '2222001', 'ESC 003', 'Engineering Economics', 'Friday', '1:00pm - 4:00pm', 'N304', 'LETICIA MARQUEZ', 'F2F', '1st semester', '2nd year'),
(115, '2222001', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 'Tuesday', '12:30pm - 2:00pm', 'OL', 'FLOCARNA LACSAMANA', 'Synch', '1st semester', '2nd year'),
(116, '2222001', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 'Thursday', '12:30pm - 2:00pm', 'N304', 'FLOCARNA LACSAMANA', 'F2F', '1st semester', '2nd year'),
(117, '2222001', 'GEMS01', 'The Life and Works of Rizal', 'Wednesday', '5:30pm - 7:00pm', 'N304', 'MARCO APOLONIO', 'F2F', '1st semester', '2nd year'),
(118, '2222001', 'GEMS01', 'The Life and Works of Rizal', 'Monday', '5:30pm - 7:00pm', 'OL', 'MARCO APOLONIO', 'Synch', '1st semester', '2nd year'),
(119, '2222001', 'MTH211', 'Differential Equation', 'Monday', '12:30pm - 2:00pm', 'OL', 'JONATHAN DE LEON', 'Synch', '2nd semester', '2nd year'),
(120, '2222001', 'MTH211', 'Differential Equation', 'Wednesday', '12:30pm - 2:00pm', 'N304', 'JONATHAN DE LEON', 'F2F', '2nd semester', '2nd year'),
(121, '2222001', 'MTH221', 'Engineering Data Analysis', 'Tuesday', '2:30pm - 4:00pm', 'OL', 'LETICIA MARQUEZ', 'Synch', '1st semester', '2nd year'),
(122, '2222001', 'MTH221', 'Engineering Data Analysis', 'Thursday', '2:30pm - 4:00pm', 'N304', 'LETICIA MARQUEZ', 'F2F', '1st semester', '2nd year'),
(123, '2222001', 'PE3', 'Physical Activity Towards Health and Fitness', 'Friday', '5:00pm - 7:00pm', 'FIELD', 'RAMON REYES', 'F2F', '1st semester', '2nd year'),
(124, '2222001', 'CPE221', 'Data Structures and Algorithm', 'Thursday / Friday', '6:00am - 7:30am', 'M206', 'RONALD FERNANDEZ', 'F2F', '2nd semester', '2nd year'),
(125, '2222001', 'CPE221', 'Data Structures and Algorithm', 'Monday / Tuesday', '6:00am - 7:30am', 'OL', 'RONALD FERNANDEZ', 'Synch', '2nd semester', '2nd year'),
(126, '2222001', 'CPE222', 'Numerical Methods', 'Friday', '7:30am - 9:00am', 'M206', 'MA. RONIEL-LEINOR VELASCO', 'F2F', '2nd semester', '2nd year'),
(127, '2222001', 'CPE222', 'Numerical Methods', 'Tuesday', '7:30am - 9:00am', 'OL', 'MA. RONIEL-LEINOR VELASCO', 'Synch', '2nd semester', '2nd year'),
(128, '2222001', 'ECE212', 'Circuit Analysis 1', 'Monday / Thursday', '7:30am - 9:00am', 'OL', 'PALMER DE LEON', 'Synch', '2nd semester', '2nd year'),
(129, '2222001', 'ECE212', 'Circuit Analysis 1', 'Wednesday', '7:30am - 10:30am', 'M206', 'PALMER DE LEON', 'F2F', '2nd semester', '2nd year'),
(130, '2222001', 'GECS08', 'Ethics', 'Friday', '11:00am - 2:00pm', 'M206', 'ALEX SUYAT', 'F2F', '1st semester', '2nd year'),
(131, '2222001', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 'Monday', '11:00am - 12:30pm', 'OL', 'CORAZON GREGORIO', 'Synch', '2nd semester', '2nd year'),
(132, '2222001', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 'Thursday', '11:00am - 12:30pm', 'NB206', 'CORAZON GREGORIO', 'F2F', '2nd semester', '2nd year'),
(133, '2222001', 'GEIS02', 'Bonifacio & Katipunan Movement', 'Thursday', '9:00am - 12:00pm', 'NB206', 'CLARITA LOMODAG', 'F2F', '2nd semester', '2nd year'),
(134, '2222001', 'PE4', 'Physical Activities towards Health and Fitness 2', 'Saturday', '4:00pm - 6:00pm', 'FIELD', 'MARIO BUTLIG', 'F2F', '2nd semester', '2nd year'),
(135, '2222001', 'CPE223', 'Operating Systems', 'Monday / Wednesday / Friday', '11:00am - 2:00pm', 'A204', 'REY CARANGUIAN', 'F2F', 'summer semester', '2nd year'),
(136, '2222001', 'CPE223', 'Operating Systems', 'Tuesday / Thursday', '11:00am - 2:00pm', 'OL', 'REY CARANGUIAN', 'Synch', 'summer semester', '2nd year'),
(137, '2222001', 'ELE221', 'Elective 1 - Database Management Systems', 'Monday / Wednesday / Friday', '7:00am - 10:00am', 'A204', 'LIZEL ROSE NATIVIDAD', 'F2F', 'summer semester', '2nd year'),
(138, '2222001', 'ELE221', 'Elective 1 - Database Management Systems', 'Tuesday / Thursday', '7:00am - 10:00am', 'OL', 'LIZEL ROSE NATIVIDAD', 'Synch', 'summer semester', '2nd year'),
(139, '2222001', 'CPE311', 'Logic Circuit & Design', 'Monday / Thursday', '7:00am - 10:00am', 'N305', 'LHORELIE ARCEGA', 'F2F', '1st semester', '3rd year'),
(140, '2222001', 'CPE312', 'Data Communication & Networking', 'Saturday', '7:00am - 1:30pm', 'OL', 'MARICAR CALILIW', 'Synch', '1st semester', '3rd year'),
(141, '2222001', 'CPE313', 'Fundamentals of Mixed Signals & Sensors', 'Tuesday / Friday', '10:30am - 12:00pm', 'N305', 'MA. RONIEL-LEINOR VELASCO', 'F2F', '1st semester', '3rd year'),
(142, '2222001', 'ECE223', 'Circuit Analysis 2', 'Monday / Thursday', '10:30am - 1:30pm', 'N305', 'PALMER DE LEON', 'F2F', '1st semester', '3rd year'),
(143, '2222001', 'ECE325', 'Feedback and Control Systems', 'Tuesday / Friday', '7:00am - 10:00am', 'N305', 'PALMER DE LEON', 'F2F', '1st semester', '3rd year'),
(144, '2222001', 'ELE311', 'Elective 2 - Project Management', 'Wednesday', '7:00am - 12:30pm', 'OL', 'LETICIA MARQUEZ', 'Synch', '1st semester', '3rd year'),
(145, '2222001', 'CPE224', 'Software Design - Systems Analysis & Design', 'Wednesday', '10:30am - 5:00pm', 'M201', 'RONALD FERNANDEZ', 'F2F', '2nd semester', '3rd year'),
(146, '2222001', 'CPE321', 'Computer Networks & Security', 'Saturday', '7:00am - 1:30pm', 'N306', 'DOROTHY JOY TONGOL', 'F2F', '2nd semester', '3rd year'),
(147, '2222001', 'CPE322', 'Microprocessor & Microcontroller Systems', 'Saturday', '2:00pm - 8:30pm', 'N306', 'KARL ANGEL GAMBOA', 'F2F', '2nd semester', '3rd year'),
(148, '2222001', 'CPE323', 'CPE Laws, Contracts, Ethics & Prof Practice', 'Wednesday', '7:00am - 10:00am', 'N306', 'LHORELIE ARCEGA', 'F2F', '2nd semester', '3rd year'),
(149, '2222001', 'ELE321', 'Elective 3 - Software Engineering', 'Monday / Thursday', '10:00am - 12:30pm', 'M207', 'ELSA PASCUAL', 'F2F', '2nd semester', '3rd year'),
(150, '2222001', 'ESC005', 'Occupational Health & Safety Engineering', 'Tuesday / Friday', '4:00pm - 5:30pm', 'N306', 'PALMER DE LEON', 'F2F', '2nd semester', '3rd year'),
(151, '2222001', 'ESC006', 'Technopreneurship', 'Tuesday / Friday', '7:00pm - 8:30pm', 'M202', 'MARICAR CALILIW', 'F2F', '2nd semester', '3rd year'),
(152, '2121001', 'CPE421', 'INTRODUCTION TO HDL', 'Monday', '7:00am - 10:00am', 'N305', 'JOHN DOE', 'F2F', 'summer semester', '3rd year'),
(153, '2121001', 'ESC004', 'ENVIRONMENTAL SCIENCE & ENGINEERING', 'Tuesday', '1:30pm - 3:00pm', 'M201', 'JANE SMITH', 'F2F', 'summer semester', '3rd year'),
(154, '2121001', 'ELE322', 'ELECTIVE 4 - MANAGEMENT INFORMATION SYSTEMS', 'Wednesday', '10:00am - 12:00pm', 'OL', 'MICHAEL BROWN', 'F2F', 'summer semester', '3rd year'),
(155, '2121001', 'CPE325', 'EMERGING TECHNOLOGIES IN CPE', 'Thursday', '7:00am - 10:00am', 'N306', 'JOHN DOE', 'F2F', 'summer semester', '3rd year'),
(156, '2121001', 'CPE411', 'EMBEDDED SYSTEMS', 'Monday', '7:00am - 10:00am', 'N305', 'JANE SMITH', 'F2F', '1st semester', '4th year'),
(157, '2121001', 'CPE412', 'COMPUTER ARCHITECTURE & ORGANIZATION', 'Tuesday', '10:00am - 12:00pm', 'M201', 'MICHAEL BROWN', 'F2F', '1st semester', '4th year'),
(158, '2121001', 'GEIS01', 'MANILA STUDIES', 'Wednesday', '1:30pm - 3:00pm', 'OL', 'JOHN DOE', 'F2F', '1st semester', '4th year'),
(159, '2121001', 'CPE413', 'DESIGN PROJECT 1', 'Thursday', '7:00am - 10:00am', 'N306', 'JANE SMITH', 'F2F', '1st semester', '4th year'),
(160, '2121001', 'CPE414', 'DIGITAL SIGNAL PROCESSING', 'Friday', '10:00am - 12:00pm', 'M201', 'MICHAEL BROWN', 'F2F', '1st semester', '4th year'),
(161, '2121001', 'CPE415', 'SEMINARS & FIELDTRIPS', 'Saturday', '7:00am - 10:00am', 'N305', 'JOHN DOE', 'F2F', '1st semester', '4th year'),
(162, '2121001', 'CPE421', 'ON THE JOB TRAINING 480 HRS - 80H/1UNIT', 'Monday / Wednesday / Friday', '7:00am - 4:00pm', 'FIELD', 'JANE SMITH', 'F2F', '2nd semester', '4th year'),
(163, '2121001', 'CPE422', 'DESIGN PROJECT 2', 'Tuesday / Thursday', '10:00am - 12:00pm', 'M201', 'MICHAEL BROWN', 'F2F', '2nd semester', '4th year'),
(164, '2121001', 'CPE 111', 'Programming Logic & Design', 'Tuesday / Friday', '1:30pm - 4:30pm', 'NB201', 'MONA EARL BAYONO', 'F2F', '1st semester', '1st year'),
(165, '2121001', 'PHY121', 'Physics 1', 'Thursday / Friday', '7:00am - 10:00am', 'NB202', 'PALMER DE LEON', 'F2F', '1st semester', '1st year'),
(166, '2121001', 'CPE 112', 'Computer Engineering as a Discipline', 'Tuesday / Friday', '12:00pm - 1:30pm', 'NB202', 'MONA EARL BAYONO', 'F2F', '1st semester', '1st year'),
(167, '2121001', 'GECS01', 'Understanding the Self', 'Monday / Thursday', '6:30am - 8:00am', 'OL', 'SANDRA CABALLERO', 'Synch', '1st semester', '1st year'),
(168, '2121001', 'GECS02', 'Readings in Philippine History', 'Monday / Thursday', '1:30pm - 3:00pm', 'OL', 'ARLYN BIGLANG-AWA', 'Synch', '1st semester', '1st year'),
(169, '2121001', 'GECS03', 'The Contemporary World', 'Saturday', '7:00am - 10:00am', 'OL', 'GEORGE BEDIA', 'Synch', '1st semester', '1st year'),
(170, '2121001', 'GECS04', 'Mathematics in the Modern World', 'Monday / Thursday', '5:00pm - 6:30pm', 'OL', 'JONATHAN DE LEON', 'Synch', '1st semester', '1st year'),
(171, '2121001', 'NSTP1', 'National Service Training Program 1', 'Sunday', '2:00pm - 5:00pm', 'OL', 'TEOFISTA TEGIO', 'Synch', '1st semester', '1st year'),
(172, '2121001', 'PE1', 'Movement Enhancement', 'Tuesday', '10:30am - 12:30pm', 'OL', 'SHOBIE ROSELLE VICENTE', 'Synch', '1st semester', '1st year'),
(173, '2121001', 'CHM111', 'General Chemistry', 'Monday / Thursday', '3:00pm - 6:30pm', 'OL', 'MICHELLE VILLACORTE', 'Synch', '2nd semester', '1st year'),
(174, '2121001', 'ESC001', 'Computer Aided Drafting & Design', 'Monday / Thursday', '6:30pm - 9:30pm', 'OL', 'KARL ANGEL GAMBOA', 'Synch', '2nd semester', '1st year'),
(175, '2121001', 'GECS05', 'Purposive Communication', 'Wednesday', '6:30pm - 9:30pm', 'OL', 'MELFE DIOLA', 'Synch', '2nd semester', '1st year'),
(176, '2121001', 'GECS06', 'Art Appreciation', 'Tuesday / Friday', '1:30pm - 3:00pm', 'OL', 'GAYNELLE DUMO', 'Synch', '2nd semester', '1st year'),
(177, '2121001', 'GECS07', 'Science, Technology & Society', 'Tuesday / Friday', '12:00pm - 1:30pm', 'OL', 'MICHELLE VILLACORTE', 'Synch', '2nd semester', '1st year'),
(178, '2121001', 'MTH121', 'Differential Calculus', 'Tuesday / Friday', '5:00pm - 7:30pm', 'OL', 'JONATHAN DE LEON', 'Synch', '2nd semester', '1st year'),
(179, '2121001', 'NSTP2', 'National Service Training Program 2', 'Saturday', '2:00pm - 5:00pm', 'OL', 'IVONNY JOY FORMANTES', 'Synch', '2nd semester', '1st year'),
(180, '2121001', 'PE2', 'Fitness Exercises', 'Wednesday', '4:00pm - 6:00pm', 'OL', 'LOUELLA MARICAR CHENG', 'Synch', '2nd semester', '1st year'),
(181, '2121001', 'CPE121', 'Discrete Mathematics', 'Monday / Wednesday / Friday', '1:30pm - 4:30pm', 'Nb302', 'REGIE DAVID', 'F2F', 'summer semester', '1st year'),
(182, '2121001', 'MTH122', 'Integral Calculus', 'Wednesday / Friday', '6:00am - 9:00am', 'OL', 'REGIE DAVID', 'Synch', 'summer semester', '1st year'),
(183, '2121001', 'PHY122', 'Physics 2', 'Monday / Tuesday / Wednesday / Thursday', '4:00pm - 6:00pm', 'OL', 'JULIETA MONTECILLO', 'Synch', 'summer semester', '1st year'),
(184, '2121001', 'CPE 211', 'Object Oriented Programming', 'Wednesday', '2:30pm - 5:30pm', 'N304', 'RHAYMOND MONTERDE', 'F2F', '1st semester', '2nd year'),
(185, '2121001', 'CPE 211', 'Object Oriented Programming', 'Monday', '2:30pm - 5:30pm', 'OL', 'RHAYMOND MONTERDE', 'Synch', '1st semester', '2nd year'),
(186, '2121001', 'ESC 002', 'Creativity in Engineering Drafting & Design', 'Thursday', '4:00pm - 7:00pm', 'N304', 'MARK ANTHONY CASTRO', 'F2F', '1st semester', '2nd year'),
(187, '2121001', 'ESC 002', 'Creativity in Engineering Drafting & Design', 'Tuesday', '4:00pm - 7:00pm', 'OL', 'MARK ANTHONY CASTRO', 'Synch', '1st semester', '2nd year'),
(188, '2121001', 'ESC 003', 'Engineering Economics', 'Friday', '1:00pm - 4:00pm', 'N304', 'LETICIA MARQUEZ', 'F2F', '1st semester', '2nd year'),
(189, '2121001', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 'Tuesday', '12:30pm - 2:00pm', 'OL', 'FLOCARNA LACSAMANA', 'Synch', '1st semester', '2nd year'),
(190, '2121001', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 'Thursday', '12:30pm - 2:00pm', 'N304', 'FLOCARNA LACSAMANA', 'F2F', '1st semester', '2nd year'),
(191, '2121001', 'GEMS01', 'The Life and Works of Rizal', 'Wednesday', '5:30pm - 7:00pm', 'N304', 'MARCO APOLONIO', 'F2F', '1st semester', '2nd year'),
(192, '2121001', 'GEMS01', 'The Life and Works of Rizal', 'Monday', '5:30pm - 7:00pm', 'OL', 'MARCO APOLONIO', 'Synch', '1st semester', '2nd year'),
(193, '2121001', 'MTH211', 'Differential Equation', 'Monday', '12:30pm - 2:00pm', 'OL', 'JONATHAN DE LEON', 'Synch', '2nd semester', '2nd year'),
(194, '2121001', 'MTH211', 'Differential Equation', 'Wednesday', '12:30pm - 2:00pm', 'N304', 'JONATHAN DE LEON', 'F2F', '2nd semester', '2nd year'),
(195, '2121001', 'MTH221', 'Engineering Data Analysis', 'Tuesday', '2:30pm - 4:00pm', 'OL', 'LETICIA MARQUEZ', 'Synch', '1st semester', '2nd year'),
(196, '2121001', 'MTH221', 'Engineering Data Analysis', 'Thursday', '2:30pm - 4:00pm', 'N304', 'LETICIA MARQUEZ', 'F2F', '1st semester', '2nd year'),
(197, '2121001', 'PE3', 'Physical Activity Towards Health and Fitness', 'Friday', '5:00pm - 7:00pm', 'FIELD', 'RAMON REYES', 'F2F', '1st semester', '2nd year'),
(198, '2121001', 'CPE221', 'Data Structures and Algorithm', 'Thursday / Friday', '6:00am - 7:30am', 'M206', 'RONALD FERNANDEZ', 'F2F', '2nd semester', '2nd year'),
(199, '2121001', 'CPE221', 'Data Structures and Algorithm', 'Monday / Tuesday', '6:00am - 7:30am', 'OL', 'RONALD FERNANDEZ', 'Synch', '2nd semester', '2nd year'),
(200, '2121001', 'CPE222', 'Numerical Methods', 'Friday', '7:30am - 9:00am', 'M206', 'MA. RONIEL-LEINOR VELASCO', 'F2F', '2nd semester', '2nd year'),
(201, '2121001', 'CPE222', 'Numerical Methods', 'Tuesday', '7:30am - 9:00am', 'OL', 'MA. RONIEL-LEINOR VELASCO', 'Synch', '2nd semester', '2nd year'),
(202, '2121001', 'ECE212', 'Circuit Analysis 1', 'Monday / Thursday', '7:30am - 9:00am', 'OL', 'PALMER DE LEON', 'Synch', '2nd semester', '2nd year'),
(203, '2121001', 'ECE212', 'Circuit Analysis 1', 'Wednesday', '7:30am - 10:30am', 'M206', 'PALMER DE LEON', 'F2F', '2nd semester', '2nd year'),
(204, '2121001', 'GECS08', 'Ethics', 'Friday', '11:00am - 2:00pm', 'M206', 'ALEX SUYAT', 'F2F', '1st semester', '2nd year'),
(205, '2121001', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 'Monday', '11:00am - 12:30pm', 'OL', 'CORAZON GREGORIO', 'Synch', '2nd semester', '2nd year'),
(206, '2121001', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 'Thursday', '11:00am - 12:30pm', 'NB206', 'CORAZON GREGORIO', 'F2F', '2nd semester', '2nd year'),
(207, '2121001', 'GEIS02', 'Bonifacio & Katipunan Movement', 'Thursday', '9:00am - 12:00pm', 'NB206', 'CLARITA LOMODAG', 'F2F', '2nd semester', '2nd year'),
(208, '2121001', 'PE4', 'Physical Activities towards Health and Fitness 2', 'Saturday', '4:00pm - 6:00pm', 'FIELD', 'MARIO BUTLIG', 'F2F', '2nd semester', '2nd year'),
(209, '2121001', 'CPE223', 'Operating Systems', 'Monday / Wednesday / Friday', '11:00am - 2:00pm', 'A204', 'REY CARANGUIAN', 'F2F', 'summer semester', '2nd year'),
(210, '2121001', 'CPE223', 'Operating Systems', 'Tuesday / Thursday', '11:00am - 2:00pm', 'OL', 'REY CARANGUIAN', 'Synch', 'summer semester', '2nd year'),
(211, '2121001', 'ELE221', 'Elective 1 - Database Management Systems', 'Monday / Wednesday / Friday', '7:00am - 10:00am', 'A204', 'LIZEL ROSE NATIVIDAD', 'F2F', 'summer semester', '2nd year'),
(212, '2121001', 'ELE221', 'Elective 1 - Database Management Systems', 'Tuesday / Thursday', '7:00am - 10:00am', 'OL', 'LIZEL ROSE NATIVIDAD', 'Synch', 'summer semester', '2nd year'),
(213, '2121001', 'CPE311', 'Logic Circuit & Design', 'Monday / Thursday', '7:00am - 10:00am', 'N305', 'LHORELIE ARCEGA', 'F2F', '1st semester', '3rd year'),
(214, '2121001', 'CPE312', 'Data Communication & Networking', 'Saturday', '7:00am - 1:30pm', 'OL', 'MARICAR CALILIW', 'Synch', '1st semester', '3rd year'),
(215, '2121001', 'CPE313', 'Fundamentals of Mixed Signals & Sensors', 'Tuesday / Friday', '10:30am - 12:00pm', 'N305', 'MA. RONIEL-LEINOR VELASCO', 'F2F', '1st semester', '3rd year'),
(216, '2121001', 'ECE223', 'Circuit Analysis 2', 'Monday / Thursday', '10:30am - 1:30pm', 'N305', 'PALMER DE LEON', 'F2F', '1st semester', '3rd year'),
(217, '2121001', 'ECE325', 'Feedback and Control Systems', 'Tuesday / Friday', '7:00am - 10:00am', 'N305', 'PALMER DE LEON', 'F2F', '1st semester', '3rd year'),
(218, '2121001', 'ELE311', 'Elective 2 - Project Management', 'Wednesday', '7:00am - 12:30pm', 'OL', 'LETICIA MARQUEZ', 'Synch', '1st semester', '3rd year'),
(219, '2121001', 'CPE224', 'Software Design - Systems Analysis & Design', 'Wednesday', '10:30am - 5:00pm', 'M201', 'RONALD FERNANDEZ', 'F2F', '2nd semester', '3rd year'),
(220, '2121001', 'CPE321', 'Computer Networks & Security', 'Saturday', '7:00am - 1:30pm', 'N306', 'DOROTHY JOY TONGOL', 'F2F', '2nd semester', '3rd year'),
(221, '2121001', 'CPE322', 'Microprocessor & Microcontroller Systems', 'Saturday', '2:00pm - 8:30pm', 'N306', 'KARL ANGEL GAMBOA', 'F2F', '2nd semester', '3rd year'),
(222, '2121001', 'CPE323', 'CPE Laws, Contracts, Ethics & Prof Practice', 'Wednesday', '7:00am - 10:00am', 'N306', 'LHORELIE ARCEGA', 'F2F', '2nd semester', '3rd year'),
(223, '2121001', 'ELE321', 'Elective 3 - Software Engineering', 'Monday / Thursday', '10:00am - 12:30pm', 'M207', 'ELSA PASCUAL', 'F2F', '2nd semester', '3rd year'),
(224, '2121001', 'ESC005', 'Occupational Health & Safety Engineering', 'Tuesday / Friday', '4:00pm - 5:30pm', 'N306', 'PALMER DE LEON', 'F2F', '2nd semester', '3rd year'),
(225, '2121001', 'ESC006', 'Technopreneurship', 'Tuesday / Friday', '7:00pm - 8:30pm', 'M202', 'MARICAR CALILIW', 'F2F', '2nd semester', '3rd year'),
(226, '2424002', 'PHY121', 'Physics 1', 'Tuesday / Friday', '8:00am - 11:00am', 'NB202', 'PALMER DE LEON', 'F2f', '2nd semester', '1st year'),
(227, '2323002', 'CPE 111', 'Programming Logic & Design', 'Tuesday / Friday', '1:30pm - 4:30pm', 'NB201', 'MONA EARL BAYONO', 'F2F', '1st semester', '1st year'),
(228, '2323002', 'PHY121', 'Physics 1', 'Thursday / Friday', '7:00am - 10:00am', 'NB202', 'PALMER DE LEON', 'F2f', '1st semester', '1st year'),
(229, '2323002', 'CPE 112', 'Computer Engineering as a Discipline', 'Tuesday / Friday', '12:00pm - 1:30pm', 'NB202', 'MONA EARL BAYONO', 'F2f', '1st semester', '1st year'),
(230, '2323002', 'GECS01', 'Understanding the Self', 'Monday / Thursday', '6:30am - 8:00am', 'OL', 'SANDRA CABALLERO', 'Synch', '1st semester', '1st year'),
(231, '2323002', 'GECS02', 'Readings in Philippine History', 'Monday / Thursday', '1:30pm - 3:00pm', 'OL', 'ARLYN BIGLANG-AWA', 'Synch', '1st semester', '1st year'),
(232, '2323002', 'GECS03', 'The Contemporary World', 'Saturday', '7:00am - 10:00am', 'OL', 'GEORGE BEDIA', 'Synch', '1st semester', '1st year'),
(233, '2323002', 'GECS04', 'Mathematics in the Modern World', 'Monday / Thursday', '5:00pm - 6:30pm', 'OL', 'JONATHAN DE LEON', 'Synch', '1st semester', '1st year'),
(234, '2323002', 'NSTP1', 'National Service Training Program 1', 'Sunday', '2:00pm - 5:00pm', 'OL', 'TEOFISTA TEGIO', 'Synch', '1st semester', '1st year'),
(235, '2323002', 'PE1', 'Movement Enhancement', 'Tuesday', '10:30am - 12:30pm', 'OL', 'SHOBIE ROSELLE VICENTE', 'Synch', '1st semester', '1st year'),
(236, '2323002', 'CHM111', 'General Chemistry', 'Monday / Thursday', '3:00pm - 6:30pm', 'OL', 'MICHELLE VILLACORTE', 'Synch', '2nd semester', '1st year'),
(237, '2323002', 'ESC001', 'Computer Aided Drafting & Design', 'Monday / Thursday', '6:30pm - 9:30pm', 'OL', 'KARL ANGEL GAMBOA', 'Synch', '2nd semester', '1st year'),
(238, '2323002', 'GECS05', 'Purposive Communication', 'Wednesday', '6:30pm - 9:30pm', 'OL', 'MELFE DIOLA', 'Synch', '2nd semester', '1st year'),
(239, '2323002', 'GECS06', 'Art Appreciation', 'Tuesday / Friday', '1:30pm - 3:00pm', 'OL', 'GAYNELLE DUMO', 'Synch', '2nd semester', '1st year'),
(240, '2323002', 'GECS07', 'Science, Technology & Society', 'Tuesday / Friday', '12:00pm - 1:30pm', 'OL', 'MICHELLE VILLACORTE', 'Synch', '2nd semester', '1st year'),
(241, '2323002', 'MTH121', 'Differential Calculus', 'Tuesday / Friday', '5:00pm - 7:30pm', 'OL', 'JONATHAN DE LEON', 'Synch', '2nd semester', '1st year'),
(242, '2323002', 'NSTP2', 'National Service Training Program 2', 'Saturday', '2:00pm - 5:00pm', 'OL', 'IVONNY JOY FORMANTES', 'Synch', '2nd semester', '1st year'),
(243, '2323002', 'PE2', 'Fitness Exercises', 'Wednesday', '4:00pm - 6:00pm', 'OL', 'LOUELLA MARICAR CHENG', 'Synch', '2nd semester', '1st year'),
(244, '2323002', 'CPE121', 'Discrete Mathematics', 'Monday / Wednesday / Friday', '1:30pm - 4:30pm', 'Nb302', 'REGIE DAVID', 'F2F', 'summer semester', '1st year'),
(245, '2323002', 'MTH122', 'Integral Calculus', 'Wednesday / Friday', '6:00am - 9:00am', 'OL', 'REGIE DAVID', 'Synch', 'summer semester', '1st year'),
(246, '2323002', 'PHY122', 'Physics 2', 'Monday / Tuesday / Wednesday / Thursday', '4:00pm - 6:00pm', 'OL', 'JULIETA MONTECILLO', 'Synch', 'summer semester', '1st year'),
(247, '2323002', 'CPE 211', 'Object Oriented Programming', 'Wednesday', '2:30pm - 5:30pm', 'N304', 'RHAYMOND MONTERDE', 'F2F', '1st semester', '2nd year'),
(248, '2323002', 'CPE 211', 'Object Oriented Programming', 'Monday', '2:30pm - 5:30pm', 'OL', 'RHAYMOND MONTERDE', 'Synch', '1st semester', '2nd year'),
(249, '2323002', 'ESC 002', 'Creativity in Engineering Drafting & Design', 'Thursday', '4:00pm - 7:00pm', 'N304', 'MARK ANTHONY CASTRO', 'F2F', '1st semester', '2nd year'),
(250, '2323002', 'ESC 002', 'Creativity in Engineering Drafting & Design', 'Tuesday', '4:00pm - 7:00pm', 'OL', 'MARK ANTHONY CASTRO', 'Synch', '1st semester', '2nd year'),
(251, '2323002', 'ESC 003', 'Engineering Economics', 'Friday', '1:00pm - 4:00pm', 'N304', 'LETICIA MARQUEZ', 'F2F', '1st semester', '2nd year'),
(252, '2323002', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 'Tuesday', '12:30pm - 2:00pm', 'OL', 'FLOCARNA LACSAMANA', 'Synch', '1st semester', '2nd year'),
(253, '2323002', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 'Thursday', '12:30pm - 2:00pm', 'N304', 'FLOCARNA LACSAMANA', 'F2F', '1st semester', '2nd year'),
(254, '2323002', 'GEMS01', 'The Life and Works of Rizal', 'Wednesday', '5:30pm - 7:00pm', 'N304', 'MARCO APOLONIO', 'F2F', '1st semester', '2nd year'),
(255, '2323002', 'GEMS01', 'The Life and Works of Rizal', 'Monday', '5:30pm - 7:00pm', 'OL', 'MARCO APOLONIO', 'Synch', '1st semester', '2nd year'),
(258, '2323002', 'MTH221', 'Engineering Data Analysis', 'Tuesday', '2:30pm - 4:00pm', 'OL', 'LETICIA MARQUEZ', 'Synch', '1st semester', '2nd year'),
(259, '2323002', 'MTH221', 'Engineering Data Analysis', 'Thursday', '2:30pm - 4:00pm', 'N304', 'LETICIA MARQUEZ', 'F2F', '1st semester', '2nd year'),
(260, '2323002', 'PE3', 'Physical Activity Towards Health and Fitness', 'Friday', '5:00pm - 7:00pm', 'FIELD', 'RAMON REYES', 'F2F', '1st semester', '2nd year'),
(261, '2323002', 'MTH122', 'Integral Calculus', 'Friday', '11:00am - 4:00pm', 'TBA', 'JONATHAN DE LEON', 'Synch', '2nd semester', '2nd year'),
(262, '2323002', 'CPE221', 'Data Structures and Algorithm', 'Thursday / Friday', '6:00am - 7:30am', 'M206', 'RONALD FERNANDEZ', 'F2F', '2nd semester', '2nd year'),
(263, '2323002', 'CPE221', 'Data Structures and Algorithm', 'Monday / Tuesday', '6:00am - 7:30am', 'OL', 'RONALD FERNANDEZ', 'Synch', '2nd semester', '2nd year'),
(264, '2323002', 'CPE222', 'Numerical Methods', 'Friday', '7:30am - 9:00am', 'M206', 'MA. RONIEL-LEINOR VELASCO', 'F2F', '2nd semester', '2nd year'),
(265, '2323002', 'CPE222', 'Numerical Methods', 'Tuesday', '7:30am - 9:00am', 'OL', 'MA. RONIEL-LEINOR VELASCO', 'Synch', '2nd semester', '2nd year'),
(266, '2323002', 'ECE212', 'Circuit Analysis 1', 'Monday / Thursday', '7:30am - 9:00am', 'OL', 'PALMER DE LEON', 'Synch', '2nd semester', '2nd year'),
(267, '2323002', 'ECE212', 'Circuit Analysis 1', 'Wednesday', '7:30am - 10:30am', 'M206', 'PALMER DE LEON', 'F2F', '2nd semester', '2nd year'),
(268, '2323002', 'GECS08', 'Ethics', 'Friday', '11:00am - 2:00pm', 'M206', 'ALEX SUYAT', 'F2F', '1st semester', '2nd year'),
(269, '2323002', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 'Monday', '11:00am - 12:30pm', 'OL', 'CORAZON GREGORIO', 'Synch', '2nd semester', '2nd year'),
(270, '2323002', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 'Thursday', '11:00am - 12:30pm', 'NB206', 'CORAZON GREGORIO', 'F2F', '2nd semester', '2nd year'),
(271, '2323002', 'GEIS02', 'Bonifacio & Katipunan Movement', 'Thursday', '9:00am - 12:00pm', 'NB206', 'CLARITA LOMODAG', 'F2F', '2nd semester', '2nd year'),
(272, '2323002', 'PE4', 'Physical Activities towards Health and Fitness 2', 'Saturday', '4:00pm - 6:00pm', 'FIELD', 'MARIO BUTLIG', 'F2F', '2nd semester', '2nd year'),
(275, '2323001', 'MTH211', 'Differential Equation', 'Monday', '12:30pm - 2:00pm', 'OL', 'JONATHAN DE LEON', 'Synch', '2nd semester', '2nd year'),
(276, '2323001', 'MTH211', 'Differential Equation', 'Wednesday', '12:30pm - 2:00pm', 'N304', 'JONATHAN DE LEON', 'F2F', '2nd semester', '2nd year'),
(277, '2323002', 'MTH211', 'Differential Equation', 'Wednesday', '12:30pm - 2:00pm', 'N304', 'JONATHAN DE LEON', 'F2F', '2nd semester', '2nd year'),
(278, '2323002', 'MTH211', 'Differential Equation', 'Monday', '12:30pm - 2:00pm', 'OL', 'JONATHAN DE LEON', 'Synch', '2nd semester', '2nd year'),
(279, '2222002', 'CPE 111', 'Programming Logic & Design', 'Tuesday / Friday', '1:30pm - 4:30pm', 'NB201', 'MONA EARL BAYONO', 'F2F', '1st semester', '1st year'),
(280, '2222002', 'PHY121', 'Physics 1', 'Thursday / Friday', '7:00am - 10:00am', 'NB202', 'PALMER DE LEON', 'F2f', '1st semester', '1st year'),
(281, '2222002', 'CPE 112', 'Computer Engineering as a Discipline', 'Tuesday / Friday', '12:00pm - 1:30pm', 'NB202', 'MONA EARL BAYONO', 'F2f', '1st semester', '1st year'),
(282, '2222002', 'GECS01', 'Understanding the Self', 'Monday / Thursday', '6:30am - 8:00am', 'OL', 'SANDRA CABALLERO', 'Synch', '1st semester', '1st year'),
(283, '2222002', 'GECS02', 'Readings in Philippine History', 'Monday / Thursday', '1:30pm - 3:00pm', 'OL', 'ARLYN BIGLANG-AWA', 'Synch', '1st semester', '1st year'),
(284, '2222002', 'GECS03', 'The Contemporary World', 'Saturday', '7:00am - 10:00am', 'OL', 'GEORGE BEDIA', 'Synch', '1st semester', '1st year'),
(285, '2222002', 'GECS04', 'Mathematics in the Modern World', 'Monday / Thursday', '5:00pm - 6:30pm', 'OL', 'JONATHAN DE LEON', 'Synch', '1st semester', '1st year'),
(286, '2222002', 'NSTP1', 'National Service Training Program 1', 'Sunday', '2:00pm - 5:00pm', 'OL', 'TEOFISTA TEGIO', 'Synch', '1st semester', '1st year'),
(287, '2222002', 'PE1', 'Movement Enhancement', 'Tuesday', '10:30am - 12:30pm', 'OL', 'SHOBIE ROSELLE VICENTE', 'Synch', '1st semester', '1st year'),
(288, '2222002', 'CHM111', 'General Chemistry', 'Monday / Thursday', '3:00pm - 6:30pm', 'OL', 'MICHELLE VILLACORTE', 'Synch', '2nd semester', '1st year'),
(289, '2222002', 'ESC001', 'Computer Aided Drafting & Design', 'Monday / Thursday', '6:30pm - 9:30pm', 'OL', 'KARL ANGEL GAMBOA', 'Synch', '2nd semester', '1st year'),
(290, '2222002', 'GECS05', 'Purposive Communication', 'Wednesday', '6:30pm - 9:30pm', 'OL', 'MELFE DIOLA', 'Synch', '2nd semester', '1st year'),
(291, '2222002', 'GECS06', 'Art Appreciation', 'Tuesday / Friday', '1:30pm - 3:00pm', 'OL', 'GAYNELLE DUMO', 'Synch', '2nd semester', '1st year'),
(292, '2222002', 'GECS07', 'Science, Technology & Society', 'Tuesday / Friday', '12:00pm - 1:30pm', 'OL', 'MICHELLE VILLACORTE', 'Synch', '2nd semester', '1st year'),
(293, '2222002', 'MTH121', 'Differential Calculus', 'Tuesday / Friday', '5:00pm - 7:30pm', 'OL', 'JONATHAN DE LEON', 'Synch', '2nd semester', '1st year'),
(294, '2222002', 'NSTP2', 'National Service Training Program 2', 'Saturday', '2:00pm - 5:00pm', 'OL', 'IVONNY JOY FORMANTES', 'Synch', '2nd semester', '1st year'),
(295, '2222002', 'PE2', 'Fitness Exercises', 'Wednesday', '4:00pm - 6:00pm', 'OL', 'LOUELLA MARICAR CHENG', 'Synch', '2nd semester', '1st year'),
(296, '2222002', 'CPE121', 'Discrete Mathematics', 'Monday / Wednesday / Friday', '1:30pm - 4:30pm', 'Nb302', 'REGIE DAVID', 'F2F', 'summer semester', '1st year'),
(297, '2222002', 'MTH122', 'Integral Calculus', 'Wednesday / Friday', '6:00am - 9:00am', 'OL', 'REGIE DAVID', 'Synch', 'summer semester', '1st year'),
(298, '2222002', 'PHY122', 'Physics 2', 'Monday / Tuesday / Wednesday / Thursday', '4:00pm - 6:00pm', 'OL', 'JULIETA MONTECILLO', 'Synch', 'summer semester', '1st year'),
(299, '2222002', 'CPE 211', 'Object Oriented Programming', 'Wednesday', '2:30pm - 5:30pm', 'N304', 'RHAYMOND MONTERDE', 'F2F', '1st semester', '2nd year'),
(300, '2222002', 'CPE 211', 'Object Oriented Programming', 'Monday', '2:30pm - 5:30pm', 'OL', 'RHAYMOND MONTERDE', 'Synch', '1st semester', '2nd year'),
(301, '2222002', 'ESC 002', 'Creativity in Engineering Drafting & Design', 'Thursday', '4:00pm - 7:00pm', 'N304', 'MARK ANTHONY CASTRO', 'F2F', '1st semester', '2nd year'),
(302, '2222002', 'ESC 002', 'Creativity in Engineering Drafting & Design', 'Tuesday', '4:00pm - 7:00pm', 'OL', 'MARK ANTHONY CASTRO', 'Synch', '1st semester', '2nd year'),
(303, '2222002', 'ESC 003', 'Engineering Economics', 'Friday', '1:00pm - 4:00pm', 'N304', 'LETICIA MARQUEZ', 'F2F', '1st semester', '2nd year'),
(304, '2222002', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 'Tuesday', '12:30pm - 2:00pm', 'OL', 'FLOCARNA LACSAMANA', 'Synch', '1st semester', '2nd year'),
(305, '2222002', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 'Thursday', '12:30pm - 2:00pm', 'N304', 'FLOCARNA LACSAMANA', 'F2F', '1st semester', '2nd year'),
(306, '2222002', 'GEMS01', 'The Life and Works of Rizal', 'Wednesday', '5:30pm - 7:00pm', 'N304', 'MARCO APOLONIO', 'F2F', '1st semester', '2nd year'),
(307, '2222002', 'GEMS01', 'The Life and Works of Rizal', 'Monday', '5:30pm - 7:00pm', 'OL', 'MARCO APOLONIO', 'Synch', '1st semester', '2nd year'),
(308, '2222002', 'GECS08', 'Ethics', 'Friday', '11:00am - 2:00pm', 'M206', 'ALEX SUYAT', 'F2F', '1st semester', '2nd year'),
(309, '2222002', 'MTH221', 'Engineering Data Analysis', 'Tuesday', '2:30pm - 4:00pm', 'OL', 'LETICIA MARQUEZ', 'Synch', '1st semester', '2nd year'),
(310, '2222002', 'MTH221', 'Engineering Data Analysis', 'Thursday', '2:30pm - 4:00pm', 'N304', 'LETICIA MARQUEZ', 'F2F', '1st semester', '2nd year'),
(311, '2222002', 'PE3', 'Physical Activity Towards Health and Fitness', 'Friday', '5:00pm - 7:00pm', 'FIELD', 'RAMON REYES', 'F2F', '1st semester', '2nd year'),
(312, '2222002', 'CPE221', 'Data Structures and Algorithm', 'Thursday / Friday', '6:00am - 7:30am', 'M206', 'RONALD FERNANDEZ', 'F2F', '2nd semester', '2nd year'),
(313, '2222002', 'CPE221', 'Data Structures and Algorithm', 'Monday / Tuesday', '6:00am - 7:30am', 'OL', 'RONALD FERNANDEZ', 'Synch', '2nd semester', '2nd year'),
(314, '2222002', 'CPE222', 'Numerical Methods', 'Friday', '7:30am - 9:00am', 'M206', 'MA. RONIEL-LEINOR VELASCO', 'F2F', '2nd semester', '2nd year'),
(315, '2222002', 'CPE222', 'Numerical Methods', 'Tuesday', '7:30am - 9:00am', 'OL', 'MA. RONIEL-LEINOR VELASCO', 'Synch', '2nd semester', '2nd year'),
(316, '2222002', 'ECE212', 'Circuit Analysis 1', 'Monday / Thursday', '7:30am - 9:00am', 'OL', 'PALMER DE LEON', 'Synch', '2nd semester', '2nd year'),
(317, '2222002', 'ECE212', 'Circuit Analysis 1', 'Wednesday', '7:30am - 10:30am', 'M206', 'PALMER DE LEON', 'F2F', '2nd semester', '2nd year'),
(318, '2222002', 'MTH211', 'Differential Equation', 'Monday', '12:30pm - 2:00pm', 'OL', 'JONATHAN DE LEON', 'Synch', '2nd semester', '2nd year'),
(319, '2222002', 'MTH211', 'Differential Equation', 'Wednesday', '12:30pm - 2:00pm', 'N304', 'JONATHAN DE LEON', 'F2F', '2nd semester', '2nd year'),
(320, '2222002', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 'Monday', '11:00am - 12:30pm', 'OL', 'CORAZON GREGORIO', 'Synch', '2nd semester', '2nd year'),
(321, '2222002', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 'Thursday', '11:00am - 12:30pm', 'NB206', 'CORAZON GREGORIO', 'F2F', '2nd semester', '2nd year'),
(322, '2222002', 'GEIS02', 'Bonifacio & Katipunan Movement', 'Thursday', '9:00am - 12:00pm', 'NB206', 'CLARITA LOMODAG', 'F2F', '2nd semester', '2nd year'),
(323, '2222002', 'PE4', 'Physical Activities towards Health and Fitness 2', 'Saturday', '4:00pm - 6:00pm', 'FIELD', 'MARIO BUTLIG', 'F2F', '2nd semester', '2nd year'),
(324, '2222002', 'CPE223', 'Operating Systems', 'Monday / Wednesday / Friday', '11:00am - 2:00pm', 'A204', 'REY CARANGUIAN', 'F2F', 'summer semester', '2nd year'),
(325, '2222002', 'CPE223', 'Operating Systems', 'Tuesday / Thursday', '11:00am - 2:00pm', 'OL', 'REY CARANGUIAN', 'Synch', 'summer semester', '2nd year'),
(326, '2222002', 'ELE221', 'Elective 1 - Database Management Systems', 'Monday / Wednesday / Friday', '7:00am - 10:00am', 'A204', 'LIZEL ROSE NATIVIDAD', 'F2F', 'summer semester', '2nd year'),
(327, '2222002', 'ELE221', 'Elective 1 - Database Management Systems', 'Tuesday / Thursday', '7:00am - 10:00am', 'OL', 'LIZEL ROSE NATIVIDAD', 'Synch', 'summer semester', '2nd year'),
(329, '2222002', 'CPE312', 'Data Communication & Networking', 'Saturday', '7:00am - 1:30pm', 'OL', 'MARICAR CALILIW', 'Synch', '1st semester', '3rd year'),
(330, '2222002', 'CPE313', 'Fundamentals of Mixed Signals & Sensors', 'Tuesday / Friday', '10:30am - 12:00pm', 'N305', 'MA. RONIEL-LEINOR VELASCO', 'F2F', '1st semester', '3rd year'),
(331, '2222002', 'ECE223', 'Circuit Analysis 2', 'Monday / Thursday', '10:30am - 1:30pm', 'N305', 'PALMER DE LEON', 'F2F', '1st semester', '3rd year'),
(332, '2222002', 'ECE325', 'Feedback and Control Systems', 'Tuesday / Friday', '7:00am - 10:00am', 'N305', 'PALMER DE LEON', 'F2F', '1st semester', '3rd year'),
(333, '2222002', 'ELE311', 'Elective 2 - Project Management', 'Wednesday', '7:00am - 12:30pm', 'OL', 'LETICIA MARQUEZ', 'Synch', '1st semester', '3rd year'),
(334, '2222002', 'CPE224', 'Software Design - Systems Analysis & Design', 'Wednesday', '10:30am - 5:00pm', 'M201', 'RONALD FERNANDEZ', 'F2F', '2nd semester', '3rd year'),
(335, '2222002', 'CPE321', 'Computer Networks & Security', 'Saturday', '7:00am - 1:30pm', 'N306', 'DOROTHY JOY TONGOL', 'F2F', '2nd semester', '3rd year'),
(336, '2222002', 'CPE311', 'Logic Circuit & Design', 'Monday / Thursday', '10:00am - 12:00am', 'N305', 'LHORELIE ARCEGA', 'F2F', '2nd semester', '3rd year'),
(337, '2222002', 'CPE323', 'CPE Laws, Contracts, Ethics & Prof Practice', 'Wednesday', '7:00am - 10:00am', 'N306', 'LHORELIE ARCEGA', 'F2F', '2nd semester', '3rd year');
INSERT INTO `schedule` (`id`, `user_id`, `subject_code`, `description`, `day`, `time`, `room`, `faculty`, `class_type`, `semester`, `year`) VALUES
(338, '2222002', 'ELE321', 'Elective 3 - Software Engineering', 'Monday / Thursday', '10:00am - 12:30pm', 'M207', 'ELSA PASCUAL', 'F2F', '2nd semester', '3rd year'),
(339, '2222002', 'ESC005', 'Occupational Health & Safety Engineering', 'Tuesday / Friday', '4:00pm - 5:30pm', 'N306', 'PALMER DE LEON', 'F2F', '2nd semester', '3rd year'),
(340, '2222002', 'ESC006', 'Technopreneurship', 'Tuesday / Friday', '7:00pm - 8:30pm', 'M202', 'MARICAR CALILIW', 'F2F', '2nd semester', '3rd year'),
(341, '2222002', 'CPE311', 'Logic Circuit & Design', 'Monday / Thursday', '7:00am - 10:00am', 'N305', 'LHORELIE ARCEGA', 'F2F', '1st semester', '3rd year'),
(342, '2121002', 'CPE 111', 'Programming Logic & Design', 'Tuesday / Friday', '1:30pm - 4:30pm', 'NB201', 'MONA EARL BAYONO', 'F2F', '1st semester', '1st year'),
(343, '2121002', 'PHY121', 'Physics 1', 'Thursday / Friday', '7:00am - 10:00am', 'NB202', 'PALMER DE LEON', 'F2F', '1st semester', '1st year'),
(344, '2121002', 'CPE 112', 'Computer Engineering as a Discipline', 'Tuesday / Friday', '12:00pm - 1:30pm', 'NB202', 'MONA EARL BAYONO', 'F2F', '1st semester', '1st year'),
(345, '2121002', 'GECS01', 'Understanding the Self', 'Monday / Thursday', '6:30am - 8:00am', 'OL', 'SANDRA CABALLERO', 'Synch', '1st semester', '1st year'),
(346, '2121002', 'GECS02', 'Readings in Philippine History', 'Monday / Thursday', '1:30pm - 3:00pm', 'OL', 'ARLYN BIGLANG-AWA', 'Synch', '1st semester', '1st year'),
(347, '2121002', 'GECS03', 'The Contemporary World', 'Saturday', '7:00am - 10:00am', 'OL', 'GEORGE BEDIA', 'Synch', '1st semester', '1st year'),
(348, '2121002', 'GECS04', 'Mathematics in the Modern World', 'Monday / Thursday', '5:00pm - 6:30pm', 'OL', 'JONATHAN DE LEON', 'Synch', '1st semester', '1st year'),
(349, '2121002', 'NSTP1', 'National Service Training Program 1', 'Sunday', '2:00pm - 5:00pm', 'OL', 'TEOFISTA TEGIO', 'Synch', '1st semester', '1st year'),
(350, '2121002', 'PE1', 'Movement Enhancement', 'Tuesday', '10:30am - 12:30pm', 'OL', 'SHOBIE ROSELLE VICENTE', 'Synch', '1st semester', '1st year'),
(351, '2121002', 'CHM111', 'General Chemistry', 'Monday / Thursday', '3:00pm - 6:30pm', 'OL', 'MICHELLE VILLACORTE', 'Synch', '2nd semester', '1st year'),
(352, '2121002', 'ESC001', 'Computer Aided Drafting & Design', 'Monday / Thursday', '6:30pm - 9:30pm', 'OL', 'KARL ANGEL GAMBOA', 'Synch', '2nd semester', '1st year'),
(353, '2121002', 'GECS05', 'Purposive Communication', 'Wednesday', '6:30pm - 9:30pm', 'OL', 'MELFE DIOLA', 'Synch', '2nd semester', '1st year'),
(354, '2121002', 'GECS06', 'Art Appreciation', 'Tuesday / Friday', '1:30pm - 3:00pm', 'OL', 'GAYNELLE DUMO', 'Synch', '2nd semester', '1st year'),
(355, '2121002', 'GECS07', 'Science, Technology & Society', 'Tuesday / Friday', '12:00pm - 1:30pm', 'OL', 'MICHELLE VILLACORTE', 'Synch', '2nd semester', '1st year'),
(356, '2121002', 'MTH121', 'Differential Calculus', 'Tuesday / Friday', '5:00pm - 7:30pm', 'OL', 'JONATHAN DE LEON', 'Synch', '2nd semester', '1st year'),
(357, '2121002', 'NSTP2', 'National Service Training Program 2', 'Saturday', '2:00pm - 5:00pm', 'OL', 'IVONNY JOY FORMANTES', 'Synch', '2nd semester', '1st year'),
(358, '2121002', 'PE2', 'Fitness Exercises', 'Wednesday', '4:00pm - 6:00pm', 'OL', 'LOUELLA MARICAR CHENG', 'Synch', '2nd semester', '1st year'),
(359, '2121002', 'CPE121', 'Discrete Mathematics', 'Monday / Wednesday / Friday', '1:30pm - 4:30pm', 'NB302', 'REGIE DAVID', 'F2F', 'summer semester', '1st year'),
(360, '2121002', 'MTH122', 'Integral Calculus', 'Wednesday / Friday', '6:00am - 9:00am', 'OL', 'REGIE DAVID', 'Synch', 'summer semester', '1st year'),
(361, '2121002', 'PHY122', 'Physics 2', 'Monday / Tuesday / Wednesday / Thursday', '4:00pm - 6:00pm', 'OL', 'JULIETA MONTECILLO', 'Synch', 'summer semester', '1st year'),
(362, '2121002', 'CPE 211', 'Object Oriented Programming', 'Wednesday', '2:30pm - 5:30pm', 'N304', 'RHAYMOND MONTERDE', 'F2F', '1st semester', '2nd year'),
(363, '2121002', 'CPE 211', 'Object Oriented Programming', 'Monday', '2:30pm - 5:30pm', 'OL', 'RHAYMOND MONTERDE', 'Synch', '1st semester', '2nd year'),
(364, '2121002', 'ESC 002', 'Creativity in Engineering Drafting & Design', 'Thursday', '4:00pm - 7:00pm', 'N304', 'MARK ANTHONY CASTRO', 'F2F', '1st semester', '2nd year'),
(365, '2121002', 'ESC 002', 'Creativity in Engineering Drafting & Design', 'Tuesday', '4:00pm - 7:00pm', 'OL', 'MARK ANTHONY CASTRO', 'Synch', '1st semester', '2nd year'),
(366, '2121002', 'ESC 003', 'Engineering Economics', 'Friday', '1:00pm - 4:00pm', 'N304', 'LETICIA MARQUEZ', 'F2F', '1st semester', '2nd year'),
(367, '2121002', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 'Tuesday', '12:30pm - 2:00pm', 'OL', 'FLOCARNA LACSAMANA', 'Synch', '1st semester', '2nd year'),
(368, '2121002', 'GECS09', 'Kontekswalisadong Komunikasyon sa Filipino', 'Thursday', '12:30pm - 2:00pm', 'N304', 'FLOCARNA LACSAMANA', 'F2F', '1st semester', '2nd year'),
(369, '2121002', 'GEMS01', 'The Life and Works of Rizal', 'Wednesday', '5:30pm - 7:00pm', 'N304', 'MARCO APOLONIO', 'F2F', '1st semester', '2nd year'),
(370, '2121002', 'GEMS01', 'The Life and Works of Rizal', 'Monday', '5:30pm - 7:00pm', 'OL', 'MARCO APOLONIO', 'Synch', '1st semester', '2nd year'),
(371, '2121002', 'GECS08', 'Ethics', 'Friday', '11:00am - 2:00pm', 'M206', 'ALEX SUYAT', 'F2F', '1st semester', '2nd year'),
(372, '2121002', 'MTH221', 'Engineering Data Analysis', 'Tuesday', '2:30pm - 4:00pm', 'OL', 'LETICIA MARQUEZ', 'Synch', '1st semester', '2nd year'),
(373, '2121002', 'MTH221', 'Engineering Data Analysis', 'Thursday', '2:30pm - 4:00pm', 'N304', 'LETICIA MARQUEZ', 'F2F', '1st semester', '2nd year'),
(374, '2121002', 'PE3', 'Physical Activity Towards Health and Fitness', 'Friday', '5:00pm - 7:00pm', 'FIELD', 'RAMON REYES', 'F2F', '1st semester', '2nd year'),
(375, '2121002', 'CPE221', 'Data Structures and Algorithm', 'Thursday / Friday', '6:00am - 7:30am', 'M206', 'RONALD FERNANDEZ', 'F2F', '2nd semester', '2nd year'),
(376, '2121002', 'CPE221', 'Data Structures and Algorithm', 'Monday / Tuesday', '6:00am - 7:30am', 'OL', 'RONALD FERNANDEZ', 'Synch', '2nd semester', '2nd year'),
(377, '2121002', 'CPE222', 'Numerical Methods', 'Friday', '7:30am - 9:00am', 'M206', 'MA. RONIEL-LEINOR VELASCO', 'F2F', '2nd semester', '2nd year'),
(378, '2121002', 'CPE222', 'Numerical Methods', 'Tuesday', '7:30am - 9:00am', 'OL', 'MA. RONIEL-LEINOR VELASCO', 'Synch', '2nd semester', '2nd year'),
(379, '2121002', 'ECE212', 'Circuit Analysis 1', 'Monday / Thursday', '7:30am - 9:00am', 'OL', 'PALMER DE LEON', 'Synch', '2nd semester', '2nd year'),
(380, '2121002', 'ECE212', 'Circuit Analysis 1', 'Wednesday', '7:30am - 10:30am', 'M206', 'PALMER DE LEON', 'F2F', '2nd semester', '2nd year'),
(381, '2121002', 'MTH211', 'Differential Equation', 'Monday', '12:30pm - 2:00pm', 'OL', 'JONATHAN DE LEON', 'Synch', '2nd semester', '2nd year'),
(382, '2121002', 'MTH211', 'Differential Equation', 'Wednesday', '12:30pm - 2:00pm', 'N304', 'JONATHAN DE LEON', 'F2F', '2nd semester', '2nd year'),
(383, '2121002', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 'Monday', '11:00am - 12:30pm', 'OL', 'CORAZON GREGORIO', 'Synch', '2nd semester', '2nd year'),
(384, '2121002', 'GECS10', 'Filipino sa Iba\'t-Ibang Disiplina', 'Thursday', '11:00am - 12:30pm', 'NB206', 'CORAZON GREGORIO', 'F2F', '2nd semester', '2nd year'),
(385, '2121002', 'GEIS02', 'Bonifacio & Katipunan Movement', 'Thursday', '9:00am - 12:00pm', 'NB206', 'CLARITA LOMODAG', 'F2F', '2nd semester', '2nd year'),
(386, '2121002', 'PE4', 'Physical Activities towards Health and Fitness 2', 'Saturday', '4:00pm - 6:00pm', 'FIELD', 'MARIO BUTLIG', 'F2F', '2nd semester', '2nd year'),
(387, '2121002', 'CPE223', 'Operating Systems', 'Monday / Wednesday / Friday', '11:00am - 2:00pm', 'A204', 'REY CARANGUIAN', 'F2F', 'summer semester', '2nd year'),
(388, '2121002', 'CPE223', 'Operating Systems', 'Tuesday / Thursday', '11:00am - 2:00pm', 'OL', 'REY CARANGUIAN', 'Synch', 'summer semester', '2nd year'),
(389, '2121002', 'ELE221', 'Elective 1 - Database Management Systems', 'Monday / Wednesday / Friday', '7:00am - 10:00am', 'A204', 'LIZEL ROSE NATIVIDAD', 'F2F', 'summer semester', '2nd year'),
(390, '2121002', 'ELE221', 'Elective 1 - Database Management Systems', 'Tuesday / Thursday', '7:00am - 10:00am', 'OL', 'LIZEL ROSE NATIVIDAD', 'Synch', 'summer semester', '2nd year'),
(391, '2121002', 'CPE311', 'Logic Circuit & Design', 'Monday / Thursday', '7:00am - 10:00am', 'N305', 'LHORELIE ARCEGA', 'F2F', '1st semester', '3rd year'),
(392, '2121002', 'CPE312', 'Data Communication & Networking', 'Saturday', '7:00am - 1:30pm', 'OL', 'MARICAR CALILIW', 'Synch', '1st semester', '3rd year'),
(393, '2121002', 'CPE313', 'Fundmentals of Mixed Signals & Sensors', 'Tuesday / Friday', '10:30am - 12:00pm', 'N305', 'MA. RONIEL-LEINOR VELASCO', 'F2F', '1st semester', '3rd year'),
(394, '2121002', 'ECE223', 'Circuit Analysis 2', 'Monday / Thursday', '10:30am - 1:30pm', 'N305', 'PALMER DE LEON', 'F2F', '1st semester', '3rd year'),
(395, '2121002', 'ECE325', 'Feedback and Control Systems', 'Tuesday / Friday', '7:00am - 10:00am', 'N305', 'PALMER DE LEON', 'F2F', '1st semester', '3rd year'),
(396, '2121002', 'ELE311', 'Elective 2 - Project Management', 'Wednesday', '7:00am - 12:30pm', 'OL', 'LETICIA MARQUEZ', 'Synch', '1st semester', '3rd year'),
(397, '2121002', 'CPE224', 'Software Design - Systems Analysis & Design', 'Wednesday', '10:30am - 5:00pm', 'M201', 'RONALD FERNANDEZ', 'F2F', '2nd semester', '3rd year'),
(398, '2121002', 'CPE321', 'Computer Networks & Security', 'Saturday', '7:00am - 1:30pm', 'N306', 'DOROTHY JOY TONGOL', 'F2F', '2nd semester', '3rd year'),
(399, '2121002', 'CPE322', 'Microprocessor & Microcontroller Systems', 'Saturday', '2:00pm - 8:30pm', 'N306', 'KARL ANGEL GAMBOA', 'F2F', '2nd semester', '3rd year'),
(400, '2121002', 'CPE323', 'CPE Laws, Contracts, Ethics & Prof Practice', 'Wednesday', '7:00am - 10:00am', 'N306', 'LHORELIE ARCEGA', 'F2F', '2nd semester', '3rd year'),
(401, '2121002', 'ELE321', 'Elective 3 - Software Engineering', 'Monday / Thursday', '10:00am - 12:30pm', 'M207', 'ELSA PASCUAL', 'F2F', '2nd semester', '3rd year'),
(402, '2121002', 'ESC005', 'Occupational Health & Safety Engineering', 'Tuesday / Friday', '4:00pm - 5:30pm', 'N306', 'PALMER DE LEON', 'F2F', '2nd semester', '3rd year'),
(403, '2121002', 'ESC006', 'Technopreneurship', 'Tuesday / Friday', '7:00pm - 8:30pm', 'M202', 'MARICAR CALILIW', 'F2F', '2nd semester', '3rd year'),
(404, '2121002', 'CPE421', 'Introduction to HDL', 'Monday', '7:00am - 10:00am', 'N305', 'JOHN DOE', 'F2F', 'summer semester', '3rd year'),
(405, '2121002', 'ESC004', 'Environmental Science & Engineering', 'Tuesday', '1:30pm - 3:00pm', 'M201', 'JANE SMITH', 'F2F', 'summer semester', '3rd year'),
(406, '2121002', 'ELE322', 'Elective 4 - Management Information Systems', 'Wednesday', '10:00am - 12:00pm', 'OL', 'MICHAEL BROWN', 'F2F', 'summer semester', '3rd year'),
(407, '2121002', 'CPE325', 'Emerging Technologies in CPE', 'Thursday', '7:00am - 10:00am', 'N306', 'JOHN DOE', 'F2F', 'summer semester', '3rd year'),
(408, '2121002', 'CPE411', 'Embedded Systems', 'Monday', '7:00am - 10:00am', 'N305', 'JANE SMITH', 'F2F', '1st semester', '4th year'),
(409, '2121002', 'CPE412', 'Computer Architecture & Organization', 'Tuesday', '10:00am - 12:00pm', 'M201', 'MICHAEL BROWN', 'F2F', '1st semester', '4th year'),
(410, '2121002', 'GEIS01', 'Manila Studies', 'Wednesday', '1:30pm - 3:00pm', 'OL', 'JOHN DOE', 'F2F', '1st semester', '4th year'),
(411, '2121002', 'CPE413', 'Design Project 1', 'Thursday', '7:00am - 10:00am', 'N306', 'JANE SMITH', 'F2F', '1st semester', '4th year'),
(412, '2121002', 'CPE414', 'Digital Signal Processing', 'Friday', '10:00am - 12:00pm', 'M201', 'MICHAEL BROWN', 'F2F', '1st semester', '4th year'),
(413, '2121002', 'CPE415', 'Seminars & Fieldtrips', 'Saturday', '7:00am - 10:00am', 'N305', 'JOHN DOE', 'F2F', '1st semester', '4th year'),
(414, '2121002', 'CPE421', 'On the Job Training 480 Hrs - 80H/1Unit', 'Monday / Wednesday / Friday', '7:00am - 4:00pm', 'FIELD', 'JANE SMITH', 'F2F', '2nd semester', '4th year'),
(415, '2121002', 'CPE413', 'Design Project 1', 'Tuesday / Thursday', '7:00am - 10:00am', 'N306', 'JANE SMITH', 'F2F', '2nd semester', '4th year'),
(416, '2121002', 'CPE422', 'Design Project 2', 'Tuesday / Thursday', '10:00am - 12:00pm', 'M201', 'MICHAEL BROWN', 'F2F', '2nd semester', '4th year');

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
(5, 'default', '2222001', 'Vanessa Tenorio', '2150 Road 11 NDC Compound Sta.Mesa Manila', 'Female', '2003-03-01 00:00:00', '0992-874-8971', 'vten03@gmail.com', 'Sherill Tenorio', '0906-079-7473', 'La Consolacion College Manila', 'B+', 1, 'Regular', NULL, NULL, NULL, NULL, NULL),
(6, 'default', '2222002', 'Rhayana Ehrika Hernando ', '1279 kagitingan st. Tondo Manila ', 'Female', '2003-07-13 00:00:00', '09614520504', 'rhayanahernando8@gmail.com', 'Ma. Luisa M. Hernando', '09564956626', 'Tondo High School', 'O', 1, 'Irregular', NULL, NULL, NULL, NULL, NULL),
(7, 'default', '2121001', 'Kevin Vickmar A. Asuncion', '3015 3rd St. Ang Buhay, V.Mapa, Sta.Mesa, Manila', 'Male', '2003-08-24 00:00:00', '09763096061', 'kevinasuncion824@gmail.com', 'Venus Asuncion ', '09199321071', 'AMA Sta.Mesa', 'O+', 1, 'Regular', NULL, NULL, NULL, NULL, NULL),
(8, 'default', '2121002', 'Aaron Vince G. Tan', '1626 O\'este St. Alvarez Ext. Tondo Manila', 'Male', '2002-09-08 00:00:00', '09929939964', 'exbyahyah03@gmail.com', 'Cindy G. Tan', '09223372656', 'Arellano University Juan Sumulong Campus', 'B+', 1, 'Irregular', NULL, NULL, NULL, NULL, NULL);

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
-- Indexes for table `study_plan`
--
ALTER TABLE `study_plan`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `study_plan`
--
ALTER TABLE `study_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_425` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_426` FOREIGN KEY (`gradefirstyr_id`) REFERENCES `gradefirstyr` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_427` FOREIGN KEY (`gradesecondtyr_id`) REFERENCES `gradesecondyr` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_428` FOREIGN KEY (`gradethirdyr_id`) REFERENCES `gradethirdyr` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_429` FOREIGN KEY (`gradefourthyr_id`) REFERENCES `gradefourthyr` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_430` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
