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
  ADD CONSTRAINT `students_ibfk_593` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_594` FOREIGN KEY (`gradefirstyr_id`) REFERENCES `gradefirstyr` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_595` FOREIGN KEY (`gradesecondtyr_id`) REFERENCES `gradesecondyr` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_596` FOREIGN KEY (`gradethirdyr_id`) REFERENCES `gradethirdyr` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_597` FOREIGN KEY (`gradefourthyr_id`) REFERENCES `gradefourthyr` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_598` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
