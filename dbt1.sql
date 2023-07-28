-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 07:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `dbt1`
--

CREATE TABLE `dbt1` (
  `id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pno` bigint(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dbt1`
--

INSERT INTO `dbt1` (`id`, `fname`, `lname`, `emailid`, `password`, `pno`, `type`) VALUES
(1, 'parth', 'vyas', 'parthvyas20feb@gmail.com', '9N3wd!t*&/7B', 8866849537, 'User'),
(2, 'sdsasaff', 'vyas', 'parthvyas20feb@gmail.com', '5DE%ED.1QE!v', 8866849537, 'User'),
(3, 'aaaaaa', 'sssss', '1234@gmail.com', '00000', 1234567890, 'User'),
(4, 'aaaaa', 'vyas', '00000@gmail.com', '123456', 1234567890, 'User'),
(5, 'het', 'bhavsar', 'het123@gmail.com', '12345678', 1234567890, 'User'),
(6, 'het', 'bhavsar', 'het123@gmail.com', '12345678', 1234567890, 'User'),
(7, 'het', 'bhavsar', 'het123@gmail.com', '12345678', 1234567890, 'User'),
(8, 'parth', 'vyas', 'parth69@gmail.com', '987654321', 696969696, 'User'),
(9, 'parth', 'vyas', 'parth69@gmail.com', '987654321', 696969696, 'User'),
(10, 'parth', 'vyas', 'parth69@gmail.com', '987654321', 69696969, 'User'),
(11, 'parth', 'vyas', 'parth69@gmail.com', '987654321', 69696969, 'User'),
(12, 'harshit', 'joshi', 'harshitjoshi69@outlook.com', '123456789', 156324789, 'admin'),
(13, 'het', 'patel', 'asdfgh@gmail.com', '123456789', 1234567897, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dbt1`
--
ALTER TABLE `dbt1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dbt1`
--
ALTER TABLE `dbt1`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
