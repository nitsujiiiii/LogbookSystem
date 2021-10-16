-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2021 at 05:49 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logbook_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `visitors_attendance`
--

CREATE TABLE `visitors_attendance` (
  `attendance_id` int(11) NOT NULL,
  `visitors_card` varchar(255) NOT NULL,
  `visitors_date` date NOT NULL,
  `time_in` varchar(255) NOT NULL,
  `time_out` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitors_attendance`
--

INSERT INTO `visitors_attendance` (`attendance_id`, `visitors_card`, `visitors_date`, `time_in`, `time_out`) VALUES
(26, '2018-PC-100286', '2021-10-16', '22:27:14', '22:39:49'),
(28, '2018-PC-100285	', '2021-10-16', '22:55:06', '22:55:29'),
(29, '2018-TC-100281	', '2021-10-16', '23:32:09', '23:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `visitors_list`
--

CREATE TABLE `visitors_list` (
  `visitors_id` int(11) NOT NULL,
  `visitors_card` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitors_list`
--

INSERT INTO `visitors_list` (`visitors_id`, `visitors_card`, `fname`, `lname`, `address`, `contact_no`, `category`) VALUES
(10, '2018-PC-100286', 'Marc Justin', 'Molina', 'Ligao City', '0912304022', 'Student'),
(16, '2018-PC-100285', 'Harold ', 'Naynes', 'Ligao City', '0912304022', 'Teacher'),
(17, '2018-TC-100281', 'Joshua', 'Guanzon', 'Legazpi', '123456789', 'Visitor '),
(18, '2018-PC-100281', 'Justin', 'Naynes', 'Polangui', '11111111112', 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `visitors_attendance`
--
ALTER TABLE `visitors_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `visitors_list`
--
ALTER TABLE `visitors_list`
  ADD PRIMARY KEY (`visitors_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors_attendance`
--
ALTER TABLE `visitors_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `visitors_list`
--
ALTER TABLE `visitors_list`
  MODIFY `visitors_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
