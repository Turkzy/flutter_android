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
