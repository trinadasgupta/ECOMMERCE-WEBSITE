-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2021 at 02:24 PM
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
-- Table structure for table `paytm`
--

CREATE TABLE `paytm` (
  `pay_id` int(11) NOT NULL,
  `gateway_name` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `pay_mode` varchar(255) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `txn_amt` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `bank_txn_id` varchar(255) NOT NULL,
  `checksumhash` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paytm`
--

INSERT INTO `paytm` (`pay_id`, `gateway_name`, `bank_name`, `pay_mode`, `txn_id`, `txn_amt`, `order_id`, `status`, `bank_txn_id`, `checksumhash`, `created_at`) VALUES
(1, 'WALLET', 'WALLET', 'PPI', '20210108111212800110168362202241881', '120.00', '44', 'TXN_SUCCESS', '63882127', '9fZsF5uydCX3ro5SOlJ1vrzqUxUO0Yxllh7/QYxYiNzwvvVYy8Tsx78Pv12OnR9ffyi1OMoKEJS8oiIlqQdh30h8UNojesEoO1M5SBx5bWA=', '2021-01-07 21:54:52'),
(2, 'WALLET', 'WALLET', 'PPI', '20210108111212800110168388502229662', '300.00', '46', 'TXN_SUCCESS', '63887664', 'hpcgpPiQny8L3i/RjhUYkmF6RjErSh386ahSDe7jvw4412vvU71Op8jFRBs8CxXdFxy9M2Sqd3aIZTz1/fwGblpc7u+FV4V/sXzKmCjOmXc=', '2021-01-08 12:30:52'),
(3, 'WALLET', 'WALLET', 'PPI', '20210108111212800110168388502229662', '300.00', '46', 'TXN_SUCCESS', '63887664', 'hpcgpPiQny8L3i/RjhUYkmF6RjErSh386ahSDe7jvw4412vvU71Op8jFRBs8CxXdFxy9M2Sqd3aIZTz1/fwGblpc7u+FV4V/sXzKmCjOmXc=', '2021-01-08 12:34:50'),
(4, 'WALLET', 'WALLET', 'PPI', '20210108111212800110168388502229662', '300.00', '46', 'TXN_SUCCESS', '63887664', 'hpcgpPiQny8L3i/RjhUYkmF6RjErSh386ahSDe7jvw4412vvU71Op8jFRBs8CxXdFxy9M2Sqd3aIZTz1/fwGblpc7u+FV4V/sXzKmCjOmXc=', '2021-01-08 12:36:20'),
(5, 'SBI', 'SBI', 'NB', '20210108111212800110168666102248641', '50000.00', '53', 'TXN_SUCCESS', '10931714555', 'W8I67AvMABkJiDnykbQB6bu4BEn262MGa0OnDRy+iEcZcU9G5gscs9Spdlnb0A6Y1Gt07y5hTO7aTl6wNBT9IR3cGRxOUU/XuJQM++aU8Ck=', '2021-01-08 13:14:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paytm`
--
ALTER TABLE `paytm`
  ADD PRIMARY KEY (`pay_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paytm`
--
ALTER TABLE `paytm`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
