-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 09:31 AM
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
-- Database: `login1`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `firstName`, `lastName`, `email`, `password`) VALUES
(1, 'eeeeeeeeee', 'eeeeeeeeeee', 'eeeee@gmail.com', '2e6ffedabab4eef3789820b54f71058d'),
(2, 'eeeee', 'eeeee', 'sssss@gmail.com', '2d02e669731cbade6a64b58d602cf2a4'),
(3, 'Viktorija ', 'Rainika', 'aaaaa@gmail.com', '594f803b380a41396ed63dca39503542'),
(4, 'Emanuel', 'Email', 'email@email.com', '1a1dc91c907325c69271ddf0c944bc72'),
(5, 'Viktorija ', 'Email', 'emil@email.com', '1a1dc91c907325c69271ddf0c944bc72'),
(6, 'Test', 'a1', 'testa1@email.com', '1a1dc91c907325c69271ddf0c944bc72'),
(7, 'a1', 'a2', 'a1@s2.com', '1a1dc91c907325c69271ddf0c944bc72'),
(8, 'weryuio', 'eryuip', 'ttttt@gmail.com', '6cee4618fc4960d184eb7efbd0aa27b5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
