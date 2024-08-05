-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2024 at 03:20 PM
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
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobileNo` varchar(20) DEFAULT NULL,
  `nationality` varchar(200) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `idProof` varchar(200) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `checkIn` varchar(50) DEFAULT NULL,
  `roomNo` varchar(10) DEFAULT NULL,
  `bed` varchar(200) DEFAULT NULL,
  `roomType` varchar(200) DEFAULT NULL,
  `pricePerDay` int(10) DEFAULT NULL,
  `numberofDayStay` int(10) DEFAULT NULL,
  `totalAmount` varchar(200) DEFAULT NULL,
  `checkout` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `mobileNo`, `nationality`, `gender`, `email`, `idProof`, `address`, `checkIn`, `roomNo`, `bed`, `roomType`, `pricePerDay`, `numberofDayStay`, `totalAmount`, `checkout`) VALUES
(1, 'fathima', '0711234567', 'Uk', 'Male', 'fathima@gmail.com', 'ID2024', '55,ukuwela', '2024/08/05', '101', 'Single', 'A/C', 500, 1, '500.0', '2024/08/05'),
(2, 'salma', '0778884345', 'SriLanka', 'Female', 'salma@gmail.com', 'ID1234', '100,MATALE', '2024/08/05', '100', 'Single', 'NON A/C', 100, 1, '100.0', '2024/08/05');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomNo` varchar(10) DEFAULT NULL,
  `roomType` varchar(200) DEFAULT NULL,
  `bed` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomNo`, `roomType`, `bed`, `price`, `status`) VALUES
('101', 'A/C', 'Single', 500, 'Not Booked'),
('102', 'A/C', 'Double', 700, 'Not Booked'),
('001', 'A/C', 'Single', 250, 'Booked'),
('100', 'Non A/C', 'Single', 100, 'Not Booked');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `securityquestion` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `password`, `securityquestion`, `answer`, `address`, `status`) VALUES
('fazeema', 'fazeema@gmail.com', '12345', 'What is the anme of your first pet?', 'cat', '292,ukuwela', 'true');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
