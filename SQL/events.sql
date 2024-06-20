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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
