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
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(255) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `age` varchar(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `pno` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `rt` varchar(30) NOT NULL,
  `hname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `fname`, `lname`, `age`, `gender`, `pno`, `email`, `rt`, `hname`, `address`) VALUES
(2, 'het', 'bhavsar', '20', 'm', '1234567890', 'erhetbhavsar@gmail.c', 'ac', 'pg5', 'qwertyuiopasdfghjklzxcvbnm'),
(3, 'het', 'bhavsar', '200', 'm', '1234567890', 'erhetbhavsar@gmail.c', 'ac', 'pg5', 'qwertyuiopasdfghjklzxcvbnm'),
(5, 'viral', 'mishra', '11', 'o', '69696969', 'viral@gmail.com', 'nac', 'pg2', 'address'),
(7, 'parth', 'vyas', '20', 'm', '1234567890', 'parth69@gmail.com', 'ac', 'pg4', 'qwertyuiopasdfghjklzxcvbnm'),
(8, 'Harshit', 'Joshi', '9', 'm', '0', 'harshitn1234@gmail.c', 'nac', 'pg4', 'add'),
(10, 'ab', 'cd', '0', 'others', '1010101232', 'abcd@gmail.com', 'ac', 'pg3', 'qazwsxedcrfvtgbyhnujmikolp'),
(11, 'het', 'bhavsar', '21', 'male', '8128646494', 'erhetbhavsar@gmail.c', 'ac', 'pg1', 'qwertyuiopasdfghjklzxcvbnm'),
(12, 'het', 'bhavsar', '21', 'male', '8128646494', 'erhetbhavsar@gmail.c', 'ac', 'pg1', 'qwertyuiopasdfghjklzxcvbnm'),
(13, 'dfghj', 'gdfgvc', '0', 'others', '1234621524', 'erhetbhavsar@gmail.c', 'ac', 'pg1', 'cdfhkjkkoldesaedrjh'),
(14, 'het', 'bhavsar', '11', 'male', '1234567890', 'erhetbhavsar@gmail.c', 'ac', 'pg1', 'cdfhkjkkoldesaedrjh'),
(15, 'viral', 'mishra', '0', 'others', '69696969', 'erhetbhavsar@gmail.c', 'ac', 'pg1', 'add'),
(16, 'het', 'bhavsar', '21', 'male', '1234567890', 'erhetbhavsar@gmail.c', 'ac', 'pg1', 'cdfhkjkkoldesaedrjh'),
(17, 'het', 'bhavsar', '21', 'male', '1234567890', 'erhetbhavsar@gmail.c', 'ac', 'pg1', 'cdfhkjkkoldesaedrjh'),
(18, 'het', 'bhavsar', '21', 'male', '1234567890', 'erhetbhavsar@gmail.c', 'ac', 'pg4', 'add');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
