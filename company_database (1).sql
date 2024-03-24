-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2024 at 01:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `punch_in_time` varchar(15) NOT NULL,
  `punch_out_time` varchar(15) NOT NULL,
  `emp_id` varchar(15) NOT NULL,
  `status` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`start_date`, `end_date`, `punch_in_time`, `punch_out_time`, `emp_id`, `status`) VALUES
('2024-03-24', '2024-03-24', '17:10:12', '17:15:15', 'EMP1', 'Left Company'),
('2024-03-24', '0000-00-00', '17:14:44', '', 'EMP2', 'working');

-- --------------------------------------------------------

--
-- Table structure for table `emp_details`
--

CREATE TABLE `emp_details` (
  `emp_name` varchar(20) DEFAULT NULL,
  `emp_id` varchar(10) DEFAULT NULL,
  `emp_dept` varchar(10) DEFAULT NULL,
  `emp_dob` int(6) DEFAULT NULL,
  `emp_address` varchar(20) DEFAULT NULL,
  `emp_mail` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp_details`
--

INSERT INTO `emp_details` (`emp_name`, `emp_id`, `emp_dept`, `emp_dob`, `emp_address`, `emp_mail`) VALUES
('Riksana  Riyasss', 'EMP1', 'IT DEPT', 2000, 'Pazhaveedu', 'riksanariyas@gmail.c'),
('Sreya', 'EMP2', 'IT Dept', 2001, 'Priya Cottege\r\nThiru', 'sreya@gmail.com'),
('Raju', 'EMP3', 'IT Dept', 2001, 'raju villa kottayam', 'raju@gmail.com'),
('sonu', 'EMP4', 'IT Dept', 26, 'sanu home malappuram', 'sonu@gmail.com'),
('thafna', 'EMP5', 'IT Dept', 21, 'thafa villa kollam', 'thaf@gmail.com'),
('rihaina', 'EMP6', 'IT Dept', 16, 'rihus manzil alappuz', 'rih@gmail.com'),
('risaiha', 'EMP7', 'IT DEPT', 21, 'risaiha villa', 'ris@gmail.com'),
('adhil', 'EMP8', 'IT Dept', 9, 'adimanazil', 'adi@gmail.com'),
('tiya', 'EMP9', 'IT DEPT', 11, 'tinu home alappuzha', 'tiya@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `leave_info`
--

CREATE TABLE `leave_info` (
  `leave_id` varchar(10) NOT NULL,
  `leave_catagory` varchar(15) NOT NULL,
  `no_of_leaves` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_request_form`
--

CREATE TABLE `leave_request_form` (
  `leave_id` varchar(10) DEFAULT NULL,
  `approve_date` date DEFAULT NULL,
  `leave_date` date DEFAULT NULL,
  `emp_id` varchar(10) DEFAULT NULL,
  `leavetype` varchar(15) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_request_form`
--

INSERT INTO `leave_request_form` (`leave_id`, `approve_date`, `leave_date`, `emp_id`, `leavetype`, `status`) VALUES
('lev1', NULL, '2024-03-26', 'EMP1', 'sick', 'Applied'),
('lev2', NULL, '2024-03-27', 'EMP2', 'Casual', 'Applied');

-- --------------------------------------------------------

--
-- Table structure for table `log_deatils`
--

CREATE TABLE `log_deatils` (
  `usename` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `user_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log_deatils`
--

INSERT INTO `log_deatils` (`usename`, `pass`, `user_type`) VALUES
('Admin', '000', 'Admin'),
('EMP1', '2000-03-04', 'Employee'),
('EMP2', '2001-03-11', 'Employee'),
('EMP3', '2001-09-02', 'Employee'),
('EMP4', '26-06-03', 'Employee'),
('EMP5', '21-12-1999', 'Employee'),
('EMP6', '16-06-99', 'Employee'),
('EMP7', '21-04-96', 'Employee'),
('EMP8', '09-10-2001', 'Employee'),
('EMP9', '11-12-2002', 'Employee');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
