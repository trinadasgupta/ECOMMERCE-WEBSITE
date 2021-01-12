-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2021 at 02:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `pay_id` int(11) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`pay_id`, `payment_id`, `order_id`, `signature`, `created_at`) VALUES
(1, 'pay_GMYzblITp3g1ux', '', '', '2021-01-07 21:21:46'),
(2, 'pay_GMYzblITp3g1ux', '', '', '2021-01-07 21:22:58'),
(3, 'pay_GMZ5eQARRyyTuV', 'order_GMZ5XpxFn0GivR', 'a97dcee84707ff0d7eff0df785b0faff40d4ff1872ea64e510ba514d44a0de02', '2021-01-07 21:27:29'),
(4, 'pay_GMoRcERr1wa5iz', 'order_GMoRRqXhYSiSZs', 'b18406c2ff4ef60d85b2ce967981ae822c8f574b5aa454f5491d0814bf7a24f4', '2021-01-08 12:28:41'),
(5, 'pay_GMp9mll9fUc7kD', 'order_GMp90h2aEmR8lu', 'b8b68978d7fc52e788f0e01e8a87dc44910fceaebf35cd53854a04c85aa6b187', '2021-01-08 13:10:31'),
(6, 'pay_GMpEpdWTMqzmph', 'order_GMpEaBjwSO9eki', '299a66d1cde235349f2e4b864fbc8fb5a16769166e4c12a3e4b937235114143e', '2021-01-08 13:15:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`pay_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
