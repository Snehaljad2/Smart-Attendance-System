-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2026 at 05:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentattendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `addfaculties`
--

CREATE TABLE `addfaculties` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `MiddleName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) NOT NULL,
  `Gender` enum('Male','Female','Other') NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Age` int(11) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `PhoneNo` varchar(15) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Department` int(11) NOT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addfaculties`
--

INSERT INTO `addfaculties` (`id`, `FirstName`, `MiddleName`, `LastName`, `Gender`, `DateOfBirth`, `Age`, `Email`, `PhoneNo`, `Password`, `Department`, `Photo`, `CreatedAt`) VALUES
(1, 'snehal', 'namdev', 'jadhav', 'Female', '2026-03-13', 23, 'snehaljadhav852004@gmail.com', '7058122476', 'Sneha@12', 1, 'abc.webp', '2026-03-20 00:26:19'),
(2, 'anuradha', 'namdev', 'jadhav', 'Female', '2015-06-10', 34, 'anuradhajadhav1346@gmail.com', '3456789765', 'Anuradha@12', 3, 'abc.webp', '2026-03-20 00:31:50'),
(3, 'sarita', 'namdev', 'jadhav', 'Female', '2026-03-14', 34, 'saritajadhav1346@gmail.com', '7058122476', 'srita@12', 3, 'abc.webp', '2026-03-20 00:38:45'),
(4, 'Pooja', 'Mahesh', 'Shinde', 'Female', '1990-08-20', 35, 'pooja.shinde01@gmail.com', '9876500001', 'Pooja@123', 1, 'abc.jpg', '2026-04-11 03:12:14'),
(5, 'Amit', 'Ramesh', 'Kulkarni', 'Male', '1982-03-10', 42, 'amit.kulkarni01@gmail.com', '9876500002', 'Amit@123', 2, 'abc.jpg', '2026-04-11 03:12:14'),
(6, 'Neha', 'Sanjay', 'Deshmukh', 'Female', '1992-11-05', 33, 'neha.deshmukh01@gmail.com', '9876500003', 'Neha@123', 2, 'abc.jpg', '2026-04-11 03:12:14'),
(7, 'Vikas', 'Anil', 'More', 'Male', '1988-01-25', 37, 'vikas.more01@gmail.com', '9876500004', 'Vikas@123', 3, 'abc.jpg', '2026-04-11 03:12:14'),
(8, 'Priya', 'Sunil', 'Pawar', 'Female', '1991-07-12', 34, 'priya.pawar01@gmail.com', '9876500005', 'Priya@123', 4, 'abc.jpg', '2026-04-11 03:12:14'),
(9, 'Rohit', 'Vilas', 'Jadhav', 'Male', '1987-09-18', 38, 'rohit.jadhav01@gmail.com', '9876500006', 'Rohit@123', 5, 'abc.jpg', '2026-04-11 03:12:14'),
(10, 'Kavita', 'Dilip', 'Chavan', 'Female', '1993-02-28', 32, 'kavita.chavan01@gmail.com', '9876500007', 'Kavita@123', 1, 'abc.jpg', '2026-04-11 03:12:14'),
(11, 'Sagar', 'Prakash', 'Patil', 'Male', '1989-12-12', 36, 'sagar.patil01@gmail.com', '9876500008', 'Sagar@123', 1, 'abc.jpg', '2026-04-11 03:12:14'),
(12, 'Sneha', 'Arun', 'Joshi', 'Female', '1994-07-19', 31, 'sneha.joshi01@gmail.com', '9876500009', 'Sneha@123', 2, 'abc.jpg', '2026-04-11 03:12:14'),
(13, 'Akash', 'Dilip', 'More', 'Male', '1991-05-05', 34, 'akash.more01@gmail.com', '9876500010', 'Akash@123', 3, 'abc.jpg', '2026-04-11 03:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `Phoneno` varchar(15) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `photo`, `Phoneno`, `Password`, `username`, `email`) VALUES
(1, 'abc.webp', '9921353338', 'Snehal@12', 'snehal jadhav', 'snehaljadhav852004@gmail.com'),
(2, 'abc.webp', '9422926362', 'Anuradha212', 'anurdha', 'anuradhajadhav852004@gmail.com'),
(3, 'abc_1775875172.jpg', '9960446362', 'Snehal32004', 'yash jadhav', 'yashjadhav852004@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `faculty_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `department_id`, `class_id`, `semester_id`, `date`, `status`, `created_at`, `faculty_id`, `subject_id`) VALUES
(1, 1, 3, 2, 1, '2026-04-07', 0, '2026-04-07 18:06:50', 1, 1),
(2, 2, 3, 2, 1, '2026-04-07', 1, '2026-04-07 18:06:50', 1, 1),
(3, 3, 3, 2, 1, '2026-04-07', 1, '2026-04-07 18:06:50', 1, 1),
(4, 4, 3, 2, 1, '2026-04-07', 1, '2026-04-07 18:06:50', 1, 1),
(5, 1, 3, 2, 1, '2026-04-07', 0, '2026-04-07 18:32:05', 1, 3),
(6, 2, 3, 2, 1, '2026-04-07', 1, '2026-04-07 18:32:05', 1, 3),
(7, 3, 3, 2, 1, '2026-04-07', 1, '2026-04-07 18:32:05', 1, 3),
(8, 4, 3, 2, 1, '2026-04-07', 1, '2026-04-07 18:32:05', 1, 3),
(9, 5, 3, 2, 1, '2026-04-07', 0, '2026-04-07 22:44:06', 1, 1),
(10, 1, 3, 2, 1, '2026-04-08', 0, '2026-04-08 11:07:36', 1, 1),
(11, 2, 3, 2, 1, '2026-04-08', 1, '2026-04-08 11:07:36', 1, 1),
(12, 3, 3, 2, 1, '2026-04-08', 1, '2026-04-08 11:07:36', 1, 1),
(13, 4, 3, 2, 1, '2026-04-08', 1, '2026-04-08 11:07:36', 1, 1),
(14, 5, 3, 2, 1, '2026-04-08', 0, '2026-04-08 11:07:36', 1, 1),
(15, 1, 3, 2, 1, '2026-04-09', 1, '2026-04-09 12:21:08', 1, 2),
(16, 2, 3, 2, 1, '2026-04-09', 1, '2026-04-09 12:21:08', 1, 2),
(17, 3, 3, 2, 1, '2026-04-09', 1, '2026-04-09 12:21:08', 1, 2),
(18, 4, 3, 2, 1, '2026-04-09', 1, '2026-04-09 12:21:08', 1, 2),
(19, 5, 3, 2, 1, '2026-04-09', 0, '2026-04-09 12:21:08', 1, 2),
(20, 6, 3, 2, 1, '2026-04-09', 1, '2026-04-09 14:33:17', 1, 2),
(21, 7, 3, 2, 1, '2026-04-09', 1, '2026-04-09 14:33:17', 1, 2),
(22, 8, 3, 2, 1, '2026-04-09', 1, '2026-04-09 14:33:17', 1, 2),
(23, 9, 3, 2, 1, '2026-04-09', 1, '2026-04-09 14:33:17', 1, 2),
(24, 10, 3, 2, 1, '2026-04-09', 1, '2026-04-09 14:33:17', 1, 2),
(25, 11, 3, 2, 1, '2026-04-09', 1, '2026-04-09 14:33:17', 1, 2),
(26, 1, 3, 2, 1, '2026-04-09', 0, '2026-04-09 14:36:31', 1, 3),
(27, 2, 3, 2, 1, '2026-04-09', 0, '2026-04-09 14:36:31', 1, 3),
(28, 3, 3, 2, 1, '2026-04-09', 0, '2026-04-09 14:36:31', 1, 3),
(29, 4, 3, 2, 1, '2026-04-09', 0, '2026-04-09 14:36:31', 1, 3),
(30, 5, 3, 2, 1, '2026-04-09', 1, '2026-04-09 14:36:31', 1, 3),
(31, 6, 3, 2, 1, '2026-04-09', 1, '2026-04-09 14:36:31', 1, 3),
(32, 7, 3, 2, 1, '2026-04-09', 1, '2026-04-09 14:36:31', 1, 3),
(33, 8, 3, 2, 1, '2026-04-09', 1, '2026-04-09 14:36:31', 1, 3),
(34, 9, 3, 2, 1, '2026-04-09', 1, '2026-04-09 14:36:31', 1, 3),
(35, 10, 3, 2, 1, '2026-04-09', 1, '2026-04-09 14:36:31', 1, 3),
(36, 11, 3, 2, 1, '2026-04-09', 1, '2026-04-09 14:36:31', 1, 3),
(37, 1, 3, 2, 1, '2026-04-09', 0, '2026-04-09 21:51:34', 1, 1),
(38, 2, 3, 2, 1, '2026-04-09', 0, '2026-04-09 21:51:34', 1, 1),
(39, 3, 3, 2, 1, '2026-04-09', 0, '2026-04-09 21:51:34', 1, 1),
(40, 4, 3, 2, 1, '2026-04-09', 0, '2026-04-09 21:51:34', 1, 1),
(41, 5, 3, 2, 1, '2026-04-09', 1, '2026-04-09 21:51:34', 1, 1),
(42, 6, 3, 2, 1, '2026-04-09', 1, '2026-04-09 21:51:34', 1, 1),
(43, 7, 3, 2, 1, '2026-04-09', 1, '2026-04-09 21:51:34', 1, 1),
(44, 8, 3, 2, 1, '2026-04-09', 1, '2026-04-09 21:51:34', 1, 1),
(45, 9, 3, 2, 1, '2026-04-09', 1, '2026-04-09 21:51:34', 1, 1),
(46, 10, 3, 2, 1, '2026-04-09', 1, '2026-04-09 21:51:34', 1, 1),
(47, 11, 3, 2, 1, '2026-04-09', 1, '2026-04-09 21:51:34', 1, 1),
(48, 1, 3, 2, 1, '2026-04-10', 1, '2026-04-10 10:42:18', 1, 1),
(49, 2, 3, 2, 1, '2026-04-10', 1, '2026-04-10 10:42:18', 1, 1),
(50, 3, 3, 2, 1, '2026-04-10', 1, '2026-04-10 10:42:18', 1, 1),
(51, 4, 3, 2, 1, '2026-04-10', 1, '2026-04-10 10:42:18', 1, 1),
(52, 5, 3, 2, 1, '2026-04-10', 0, '2026-04-10 10:42:18', 1, 1),
(53, 6, 3, 2, 1, '2026-04-10', 0, '2026-04-10 10:42:18', 1, 1),
(54, 7, 3, 2, 1, '2026-04-10', 0, '2026-04-10 10:42:18', 1, 1),
(55, 8, 3, 2, 1, '2026-04-10', 0, '2026-04-10 10:42:18', 1, 1),
(56, 9, 3, 2, 1, '2026-04-10', 0, '2026-04-10 10:42:18', 1, 1),
(57, 10, 3, 2, 1, '2026-04-10', 0, '2026-04-10 10:42:18', 1, 1),
(58, 11, 3, 2, 1, '2026-04-10', 0, '2026-04-10 10:42:18', 1, 1),
(59, 1, 3, 2, 1, '2026-04-10', 1, '2026-04-10 12:01:19', 1, 2),
(60, 2, 3, 2, 1, '2026-04-10', 0, '2026-04-10 12:01:22', 1, 2),
(61, 3, 3, 2, 1, '2026-04-10', 0, '2026-04-10 12:01:22', 1, 2),
(62, 4, 3, 2, 1, '2026-04-10', 0, '2026-04-10 12:01:22', 1, 2),
(63, 5, 3, 2, 1, '2026-04-10', 0, '2026-04-10 12:01:22', 1, 2),
(64, 6, 3, 2, 1, '2026-04-10', 0, '2026-04-10 12:01:22', 1, 2),
(65, 7, 3, 2, 1, '2026-04-10', 0, '2026-04-10 12:01:22', 1, 2),
(66, 8, 3, 2, 1, '2026-04-10', 0, '2026-04-10 12:01:22', 1, 2),
(67, 9, 3, 2, 1, '2026-04-10', 0, '2026-04-10 12:01:22', 1, 2),
(68, 10, 3, 2, 1, '2026-04-10', 0, '2026-04-10 12:01:22', 1, 2),
(69, 11, 3, 2, 1, '2026-04-10', 0, '2026-04-10 12:01:22', 1, 2),
(70, 12, 3, 2, 1, '2026-04-10', 0, '2026-04-10 12:01:22', 1, 2),
(71, 12, 3, 2, 1, '2026-04-10', 0, '2026-04-10 12:14:39', 1, 1),
(72, 13, 3, 2, 1, '2026-04-10', 1, '2026-04-10 14:26:08', 1, 2),
(73, 14, 3, 2, 1, '2026-04-10', 1, '2026-04-10 14:26:15', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `department_id`, `class_name`) VALUES
(1, 1, 'BSc Computer Science'),
(2, 1, 'MSc Computer Science'),
(3, 1, 'BCA'),
(4, 1, 'MCA'),
(5, 1, 'B.Tech Computer Science'),
(6, 1, 'M.Tech Computer Science'),
(7, 2, 'BSc IT'),
(8, 2, 'MSc IT'),
(9, 2, 'B.Tech IT'),
(10, 2, 'M.Tech IT'),
(11, 3, 'Diploma Mechanical'),
(12, 3, 'B.Tech Mechanical'),
(13, 3, 'M.Tech Mechanical'),
(14, 4, 'Diploma Civil'),
(15, 4, 'B.Tech Civil'),
(16, 4, 'M.Tech Civil'),
(17, 5, 'Diploma Electrical'),
(18, 5, 'B.Tech Electrical'),
(19, 5, 'M.Tech Electrical');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`) VALUES
(1, 'Computer Science', 'Department of Computer Science and Engineering'),
(2, 'Information Technology', 'Department of IT and Software Development'),
(3, 'Mechanical Engineering', 'Department of Mechanical Engineering'),
(4, 'Civil Engineering', 'Department of Civil Engineering'),
(5, 'Electrical Engineering', 'Department of Electrical Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`) VALUES
(1, 'semester 1'),
(2, 'semester 2'),
(3, 'semester 3'),
(4, 'semester 4');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `roll_no` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `photo_path` varchar(500) DEFAULT NULL,
  `photo_name` varchar(255) DEFAULT NULL,
  `photo_data` longblob DEFAULT NULL,
  `photo_type` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) DEFAULT 1,
  `parent_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `middle_name`, `last_name`, `roll_no`, `email`, `dob`, `mobile`, `gender`, `department_id`, `class_id`, `photo_path`, `photo_name`, `photo_data`, `photo_type`, `created_at`, `status`, `parent_email`) VALUES
(1, 'vedika', 'vilas ', 'patil', 'MCA001', 'anuradhajadhav852004@gmail.com', '2026-04-03', '7058122476', 'F', 3, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\1.jpg', NULL, NULL, NULL, '2026-04-07 17:45:22', 1, 'snehaljadhav852004@gmail.com'),
(2, 'ashavri ', 'atul', 'jadhav', 'MCA002', 'snehaljadhav852004@gmail.com', '2026-03-31', '9422926362', 'F', 3, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\1.jpg', NULL, NULL, NULL, '2026-04-07 17:50:23', 1, NULL),
(3, 'koyna', 'ganpati ', 'jadhav', 'MCA003', 'yashjadhav852004@gmail.com', '2026-04-01', '7558569152', 'F', 3, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA003\\1.jpg', NULL, NULL, NULL, '2026-04-07 17:52:55', 1, NULL),
(4, 'riya', 'dhanaji ', 'jadhav', 'MCA004', 'bhramantitourse@Travel.com', '2026-04-02', '7558569152', 'F', 3, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\1.jpg', NULL, NULL, NULL, '2026-04-07 17:56:58', 1, NULL),
(5, 'sarita', 'namdev', 'jadhav', 'MCA005', 'zxc@gmail.com', '2026-04-02', '9422926362', 'F', 3, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\1.jpg', NULL, NULL, NULL, '2026-04-07 23:47:08', 1, NULL),
(6, 'Ishvari', 'pradip', 'jadhav', 'MCA006', 'ishu34@gmail.com', '2026-04-01', '7558569152', 'F', 3, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\1.jpg', NULL, NULL, NULL, '2026-04-09 19:23:39', 1, NULL),
(7, 'bhakti', 'pardip ', 'jadhav', 'MCA007', 'bhakti34@gmail.com', '2007-04-02', '7058122476', 'F', 3, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA007\\1.jpg', NULL, NULL, NULL, '2026-04-09 19:25:24', 1, NULL),
(8, 'pari', 'sunil', 'jadhav', 'MCA008', 'pari45@gmial.com', '2004-04-04', '7058122476', 'F', 3, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA008\\1.jpg', NULL, NULL, NULL, '2026-04-09 19:26:58', 1, NULL),
(9, 'savra', 'dinkar', 'shelke', 'MCA009', 'svra67@gmail.com', '2005-04-03', '9422926362', 'F', 3, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA009\\1.jpg', NULL, NULL, NULL, '2026-04-09 19:29:32', 1, NULL),
(10, 'raj ', 'sandip', 'jadhav', 'MCA010', 'raj56@gmial.com', '2003-04-04', '3456789021', 'F', 3, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\1.jpg', NULL, NULL, NULL, '2026-04-09 19:31:09', 1, NULL),
(11, 'shivtej', 'avinash', 'jadhav', 'MCA011', 'shivtej34@gmail.com', '2005-04-02', '3456789021', 'M', 3, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA011\\1.jpg', NULL, NULL, NULL, '2026-04-09 19:32:43', 1, NULL),
(12, 'ketki', 'changdev', 'jadhav', 'MCA012', 'snehav852004@gmail.com', '2026-04-02', '3377125432', 'F', 3, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA012\\1.jpg', NULL, NULL, NULL, '2026-04-10 16:53:17', 1, ''),
(13, 'Akshata', ' vinayak ', 'chavan', 'MCA013', 'akshta45@gmail.com', '2026-04-02', '7558569152', 'F', 3, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA013\\1.jpg', NULL, NULL, NULL, '2026-04-10 19:23:43', 1, 'snehaljadhav852004@gmail.com'),
(14, 'Shital ', ' Sanjay', ' Ghare', 'MCA014', 'shital34@gmail.com', '2026-04-02', '7558569152', 'F', 3, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA014\\1.jpg', NULL, NULL, NULL, '2026-04-10 19:25:05', 1, 'snehaljadhav852004@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `student_photos`
--

CREATE TABLE `student_photos` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `photo_path` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_photos`
--

INSERT INTO `student_photos` (`id`, `student_id`, `photo_path`, `created_at`) VALUES
(1, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\1.jpg', '2026-04-07 12:45:22'),
(2, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\2.jpg', '2026-04-07 12:45:22'),
(3, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\3.jpg', '2026-04-07 12:45:22'),
(4, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\4.jpg', '2026-04-07 12:45:22'),
(5, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\5.jpg', '2026-04-07 12:45:22'),
(6, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\6.jpg', '2026-04-07 12:45:22'),
(7, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\7.jpg', '2026-04-07 12:45:22'),
(8, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\8.jpg', '2026-04-07 12:45:22'),
(9, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\9.jpg', '2026-04-07 12:45:22'),
(10, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\10.jpg', '2026-04-07 12:45:22'),
(11, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\11.jpg', '2026-04-07 12:45:22'),
(12, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\12.jpg', '2026-04-07 12:45:22'),
(13, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\13.jpg', '2026-04-07 12:45:22'),
(14, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\14.jpg', '2026-04-07 12:45:22'),
(15, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\15.jpg', '2026-04-07 12:45:22'),
(16, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\16.jpg', '2026-04-07 12:45:22'),
(17, 1, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA001\\17.jpg', '2026-04-07 12:45:22'),
(18, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\1.jpg', '2026-04-07 12:50:23'),
(19, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\2.jpg', '2026-04-07 12:50:23'),
(20, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\3.jpg', '2026-04-07 12:50:23'),
(21, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\4.jpg', '2026-04-07 12:50:23'),
(22, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\5.jpg', '2026-04-07 12:50:23'),
(23, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\6.jpg', '2026-04-07 12:50:23'),
(24, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\7.jpg', '2026-04-07 12:50:23'),
(25, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\8.jpg', '2026-04-07 12:50:23'),
(26, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\9.jpg', '2026-04-07 12:50:23'),
(27, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\10.jpg', '2026-04-07 12:50:23'),
(28, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\11.jpg', '2026-04-07 12:50:23'),
(29, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\12.jpg', '2026-04-07 12:50:23'),
(30, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\13.jpg', '2026-04-07 12:50:23'),
(31, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\14.jpg', '2026-04-07 12:50:23'),
(32, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\15.jpg', '2026-04-07 12:50:23'),
(33, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\16.jpg', '2026-04-07 12:50:23'),
(34, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\17.jpg', '2026-04-07 12:50:23'),
(35, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\18.jpg', '2026-04-07 12:50:23'),
(36, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\19.jpg', '2026-04-07 12:50:23'),
(37, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\20.jpg', '2026-04-07 12:50:23'),
(38, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\21.jpg', '2026-04-07 12:50:23'),
(39, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\22.jpg', '2026-04-07 12:50:23'),
(40, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\23.jpg', '2026-04-07 12:50:23'),
(41, 2, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA002\\24.jpg', '2026-04-07 12:50:23'),
(42, 3, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA003\\1.jpg', '2026-04-07 12:52:55'),
(43, 3, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA003\\2.jpg', '2026-04-07 12:52:55'),
(44, 3, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA003\\3.jpg', '2026-04-07 12:52:55'),
(45, 3, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA003\\4.jpg', '2026-04-07 12:52:55'),
(46, 3, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA003\\5.jpg', '2026-04-07 12:52:55'),
(47, 3, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA003\\6.jpg', '2026-04-07 12:52:55'),
(48, 3, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA003\\7.jpg', '2026-04-07 12:52:55'),
(49, 3, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA003\\8.jpg', '2026-04-07 12:52:55'),
(50, 3, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA003\\9.jpg', '2026-04-07 12:52:55'),
(51, 3, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA003\\10.jpg', '2026-04-07 12:52:55'),
(52, 3, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA003\\11.jpg', '2026-04-07 12:52:55'),
(332, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\1.jpg', '2026-04-07 22:38:16'),
(333, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\2.jpg', '2026-04-07 22:38:16'),
(334, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\3.jpg', '2026-04-07 22:38:16'),
(335, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\4.jpg', '2026-04-07 22:38:16'),
(336, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\5.jpg', '2026-04-07 22:38:16'),
(337, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\6.jpg', '2026-04-07 22:38:16'),
(338, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\7.jpg', '2026-04-07 22:38:16'),
(339, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\8.jpg', '2026-04-07 22:38:16'),
(340, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\9.jpg', '2026-04-07 22:38:16'),
(341, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\10.jpg', '2026-04-07 22:38:16'),
(342, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\11.jpg', '2026-04-07 22:38:16'),
(343, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\12.jpg', '2026-04-07 22:38:16'),
(344, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\13.jpg', '2026-04-07 22:38:16'),
(345, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\14.jpg', '2026-04-07 22:38:16'),
(346, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\15.jpg', '2026-04-07 22:38:16'),
(347, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\16.jpg', '2026-04-07 22:38:16'),
(348, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\17.jpg', '2026-04-07 22:38:16'),
(349, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\18.jpg', '2026-04-07 22:38:16'),
(350, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\19.jpg', '2026-04-07 22:38:16'),
(351, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\20.jpg', '2026-04-07 22:38:16'),
(352, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\21.jpg', '2026-04-07 22:38:16'),
(353, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\22.jpg', '2026-04-07 22:38:16'),
(354, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\23.jpg', '2026-04-07 22:38:16'),
(355, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\24.jpg', '2026-04-07 22:38:16'),
(356, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\25.jpg', '2026-04-07 22:38:16'),
(357, 4, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA004\\26.jpg', '2026-04-07 22:38:16'),
(447, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\1.jpg', '2026-04-09 13:24:42'),
(448, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\2.jpg', '2026-04-09 13:24:42'),
(449, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\3.jpg', '2026-04-09 13:24:42'),
(450, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\4.jpg', '2026-04-09 13:24:42'),
(451, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\5.jpg', '2026-04-09 13:24:42'),
(452, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\6.jpg', '2026-04-09 13:24:42'),
(453, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\7.jpg', '2026-04-09 13:24:42'),
(454, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\8.jpg', '2026-04-09 13:24:42'),
(455, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\9.jpg', '2026-04-09 13:24:42'),
(456, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\10.jpg', '2026-04-09 13:24:42'),
(457, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\11.jpg', '2026-04-09 13:24:42'),
(458, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\12.jpg', '2026-04-09 13:24:42'),
(459, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\13.jpg', '2026-04-09 13:24:42'),
(460, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\14.jpg', '2026-04-09 13:24:42'),
(461, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\15.jpg', '2026-04-09 13:24:42'),
(462, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\16.jpg', '2026-04-09 13:24:42'),
(463, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\17.jpg', '2026-04-09 13:24:42'),
(464, 5, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA005\\18.jpg', '2026-04-09 13:24:42'),
(465, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\1.jpg', '2026-04-09 14:23:39'),
(466, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\2.jpg', '2026-04-09 14:23:39'),
(467, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\3.jpg', '2026-04-09 14:23:39'),
(468, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\4.jpg', '2026-04-09 14:23:39'),
(469, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\5.jpg', '2026-04-09 14:23:39'),
(470, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\6.jpg', '2026-04-09 14:23:39'),
(471, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\7.jpg', '2026-04-09 14:23:39'),
(472, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\8.jpg', '2026-04-09 14:23:39'),
(473, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\9.jpg', '2026-04-09 14:23:39'),
(474, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\10.jpg', '2026-04-09 14:23:39'),
(475, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\11.jpg', '2026-04-09 14:23:39'),
(476, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\12.jpg', '2026-04-09 14:23:39'),
(477, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\13.jpg', '2026-04-09 14:23:39'),
(478, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\14.jpg', '2026-04-09 14:23:39'),
(479, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\15.jpg', '2026-04-09 14:23:39'),
(480, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\16.jpg', '2026-04-09 14:23:39'),
(481, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\17.jpg', '2026-04-09 14:23:39'),
(482, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\18.jpg', '2026-04-09 14:23:39'),
(483, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\19.jpg', '2026-04-09 14:23:39'),
(484, 6, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA006\\20.jpg', '2026-04-09 14:23:39'),
(485, 7, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA007\\1.jpg', '2026-04-09 14:25:24'),
(486, 7, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA007\\2.jpg', '2026-04-09 14:25:24'),
(487, 7, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA007\\3.jpg', '2026-04-09 14:25:24'),
(488, 7, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA007\\4.jpg', '2026-04-09 14:25:24'),
(489, 7, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA007\\5.jpg', '2026-04-09 14:25:24'),
(490, 7, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA007\\6.jpg', '2026-04-09 14:25:24'),
(491, 7, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA007\\7.jpg', '2026-04-09 14:25:24'),
(492, 7, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA007\\8.jpg', '2026-04-09 14:25:24'),
(493, 7, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA007\\9.jpg', '2026-04-09 14:25:24'),
(494, 7, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA007\\10.jpg', '2026-04-09 14:25:24'),
(495, 7, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA007\\11.jpg', '2026-04-09 14:25:24'),
(496, 7, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA007\\12.jpg', '2026-04-09 14:25:24'),
(497, 7, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA007\\13.jpg', '2026-04-09 14:25:24'),
(498, 7, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA007\\14.jpg', '2026-04-09 14:25:24'),
(499, 8, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA008\\1.jpg', '2026-04-09 14:26:58'),
(500, 8, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA008\\2.jpg', '2026-04-09 14:26:58'),
(501, 8, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA008\\3.jpg', '2026-04-09 14:26:58'),
(502, 8, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA008\\4.jpg', '2026-04-09 14:26:58'),
(503, 8, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA008\\5.jpg', '2026-04-09 14:26:58'),
(504, 8, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA008\\6.jpg', '2026-04-09 14:26:58'),
(505, 8, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA008\\7.jpg', '2026-04-09 14:26:58'),
(506, 8, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA008\\8.jpg', '2026-04-09 14:26:58'),
(507, 8, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA008\\9.jpg', '2026-04-09 14:26:58'),
(508, 8, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA008\\10.jpg', '2026-04-09 14:26:58'),
(509, 8, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA008\\11.jpg', '2026-04-09 14:26:58'),
(510, 8, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA008\\12.jpg', '2026-04-09 14:26:58'),
(511, 8, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA008\\13.jpg', '2026-04-09 14:26:58'),
(512, 8, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA008\\14.jpg', '2026-04-09 14:26:58'),
(513, 8, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA008\\15.jpg', '2026-04-09 14:26:58'),
(514, 9, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA009\\1.jpg', '2026-04-09 14:29:32'),
(515, 9, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA009\\2.jpg', '2026-04-09 14:29:32'),
(516, 9, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA009\\3.jpg', '2026-04-09 14:29:32'),
(517, 9, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA009\\4.jpg', '2026-04-09 14:29:32'),
(518, 9, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA009\\5.jpg', '2026-04-09 14:29:32'),
(519, 9, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA009\\6.jpg', '2026-04-09 14:29:32'),
(520, 9, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA009\\7.jpg', '2026-04-09 14:29:32'),
(521, 9, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA009\\8.jpg', '2026-04-09 14:29:32'),
(522, 9, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA009\\9.jpg', '2026-04-09 14:29:32'),
(523, 9, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA009\\10.jpg', '2026-04-09 14:29:32'),
(524, 9, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA009\\11.jpg', '2026-04-09 14:29:32'),
(525, 9, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA009\\12.jpg', '2026-04-09 14:29:32'),
(526, 9, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA009\\13.jpg', '2026-04-09 14:29:32'),
(527, 9, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA009\\14.jpg', '2026-04-09 14:29:32'),
(528, 9, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA009\\15.jpg', '2026-04-09 14:29:32'),
(529, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\1.jpg', '2026-04-09 14:31:09'),
(530, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\2.jpg', '2026-04-09 14:31:09'),
(531, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\3.jpg', '2026-04-09 14:31:09'),
(532, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\4.jpg', '2026-04-09 14:31:09'),
(533, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\5.jpg', '2026-04-09 14:31:09'),
(534, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\6.jpg', '2026-04-09 14:31:09'),
(535, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\7.jpg', '2026-04-09 14:31:09'),
(536, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\8.jpg', '2026-04-09 14:31:09'),
(537, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\9.jpg', '2026-04-09 14:31:09'),
(538, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\10.jpg', '2026-04-09 14:31:09'),
(539, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\11.jpg', '2026-04-09 14:31:09'),
(540, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\12.jpg', '2026-04-09 14:31:09'),
(541, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\13.jpg', '2026-04-09 14:31:09'),
(542, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\14.jpg', '2026-04-09 14:31:09'),
(543, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\15.jpg', '2026-04-09 14:31:09'),
(544, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\16.jpg', '2026-04-09 14:31:09'),
(545, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\17.jpg', '2026-04-09 14:31:09'),
(546, 10, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA010\\18.jpg', '2026-04-09 14:31:09'),
(547, 11, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA011\\1.jpg', '2026-04-09 14:32:43'),
(548, 11, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA011\\2.jpg', '2026-04-09 14:32:43'),
(549, 11, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA011\\3.jpg', '2026-04-09 14:32:43'),
(550, 11, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA011\\4.jpg', '2026-04-09 14:32:43'),
(551, 11, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA011\\5.jpg', '2026-04-09 14:32:43'),
(552, 11, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA011\\6.jpg', '2026-04-09 14:32:43'),
(553, 11, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA011\\7.jpg', '2026-04-09 14:32:43'),
(554, 11, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA011\\8.jpg', '2026-04-09 14:32:43'),
(555, 11, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA011\\9.jpg', '2026-04-09 14:32:43'),
(556, 11, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA011\\10.jpg', '2026-04-09 14:32:43'),
(557, 11, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA011\\11.jpg', '2026-04-09 14:32:43'),
(558, 11, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA011\\12.jpg', '2026-04-09 14:32:43'),
(559, 11, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA011\\13.jpg', '2026-04-09 14:32:43'),
(560, 11, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA011\\14.jpg', '2026-04-09 14:32:43'),
(561, 11, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA011\\15.jpg', '2026-04-09 14:32:43'),
(562, 12, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA012\\1.jpg', '2026-04-10 11:53:17'),
(563, 12, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA012\\2.jpg', '2026-04-10 11:53:17'),
(564, 12, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA012\\3.jpg', '2026-04-10 11:53:17'),
(565, 12, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA012\\4.jpg', '2026-04-10 11:53:17'),
(566, 13, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA013\\1.jpg', '2026-04-10 14:23:43'),
(567, 13, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA013\\2.jpg', '2026-04-10 14:23:43'),
(568, 13, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA013\\3.jpg', '2026-04-10 14:23:43'),
(569, 13, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA013\\4.jpg', '2026-04-10 14:23:43'),
(570, 13, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA013\\5.jpg', '2026-04-10 14:23:43'),
(571, 13, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA013\\6.jpg', '2026-04-10 14:23:43'),
(572, 13, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA013\\7.jpg', '2026-04-10 14:23:43'),
(573, 13, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA013\\8.jpg', '2026-04-10 14:23:43'),
(574, 13, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA013\\9.jpg', '2026-04-10 14:23:43'),
(575, 13, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA013\\10.jpg', '2026-04-10 14:23:43'),
(576, 13, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA013\\11.jpg', '2026-04-10 14:23:43'),
(577, 14, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA014\\1.jpg', '2026-04-10 14:25:05'),
(578, 14, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA014\\2.jpg', '2026-04-10 14:25:05'),
(579, 14, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA014\\3.jpg', '2026-04-10 14:25:05'),
(580, 14, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA014\\4.jpg', '2026-04-10 14:25:05'),
(581, 14, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA014\\5.jpg', '2026-04-10 14:25:05'),
(582, 14, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA014\\6.jpg', '2026-04-10 14:25:05'),
(583, 14, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA014\\7.jpg', '2026-04-10 14:25:05'),
(584, 14, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA014\\8.jpg', '2026-04-10 14:25:05'),
(585, 14, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA014\\9.jpg', '2026-04-10 14:25:05'),
(586, 14, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA014\\10.jpg', '2026-04-10 14:25:05'),
(587, 14, 'C:\\xampp\\htdocs\\SmartAttendance\\html\\ltr\\upload\\student\\MCA\\MCA014\\11.jpg', '2026-04-10 14:25:05');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `subject_name` varchar(100) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `department_id`, `class_id`, `semester_id`, `subject_name`, `faculty_id`) VALUES
(5, 1, 4, 1, 'Programming in C', 1),
(6, 1, 4, 1, 'Data Structures', 5),
(7, 1, 4, 1, 'Discrete Mathematics', 5),
(8, 1, 4, 1, 'Computer Organization', 1),
(9, 1, 4, 1, 'Database Management System', 5),
(10, 1, 4, 2, 'Object Oriented Programming (Java)', 6),
(11, 1, 4, 2, 'Operating System', 7),
(12, 1, 4, 2, 'Software Engineering', 4),
(13, 1, 4, 2, 'Web Technologies', 6),
(14, 1, 4, 2, 'Computer Networks', 7),
(15, 1, 4, 3, 'Python Programming', 11),
(16, 1, 4, 3, 'Artificial Intelligence', 12),
(17, 1, 4, 3, 'Machine Learning', 12),
(18, 1, 4, 3, 'Cloud Computing', 13),
(19, 1, 4, 3, 'Data Mining', 5),
(20, 1, 4, 4, 'Project Work', 9),
(21, 1, 4, 4, 'Internship', 9),
(22, 1, 4, 4, 'Cyber Security', 8),
(23, 1, 4, 4, 'Big Data Analytics', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addfaculties`
--
ALTER TABLE `addfaculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_photos`
--
ALTER TABLE `student_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addfaculties`
--
ALTER TABLE `addfaculties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student_photos`
--
ALTER TABLE `student_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=588;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_photos`
--
ALTER TABLE `student_photos`
  ADD CONSTRAINT `student_photos_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subjects_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subjects_ibfk_3` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
