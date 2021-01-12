-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2021 at 01:23 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `admin_log`
--

CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `timestamp` varchar(50) NOT NULL,
  `system` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_log`
--

INSERT INTO `admin_log` (`id`, `username`, `ip`, `timestamp`, `system`) VALUES
(1, 'admin', '::1', '1494308999', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36'),
(2, 'admin', '::1', '1494309020', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36'),
(3, 'admin', '::1', '1494313258', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36'),
(4, 'admin', '::1', '1494392386', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36'),
(5, 'admin', '::1', '1494823976', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(6, 'admin', '::1', '1494824242', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(7, 'admin', '::1', '1604321059', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36'),
(8, 'admin', '::1', '1604322172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36'),
(9, 'admin', '::1', '1604323705', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36'),
(10, 'admin', '::1', '1604504346', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36'),
(11, 'admin', '::1', '1605080771', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36'),
(12, 'admin', '::1', '1605682608', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36'),
(13, 'admin', '::1', '1609934612', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36');

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
(6, 'pay_GMpEpdWTMqzmph', 'order_GMpEaBjwSO9eki', '299a66d1cde235349f2e4b864fbc8fb5a16769166e4c12a3e4b937235114143e', '2021-01-08 13:15:17'),
(7, 'pay_GMpXyUBUTwqNPQ', 'order_GMpXcbdwfYi4i0', '04ab6ee0df337d5ffdfb644843cdbab0f8f5f3b60cf93c3037ab1029792863c3', '2021-01-08 13:33:20'),
(8, 'pay_GMpXyUBUTwqNPQ', 'order_GMpXcbdwfYi4i0', '04ab6ee0df337d5ffdfb644843cdbab0f8f5f3b60cf93c3037ab1029792863c3', '2021-01-08 13:34:49'),
(9, 'pay_GMpakvw3QVpJIS', 'order_GMpZvEIRkXqRJv', '3558343c794b1b19e16853c39eaac9b3588c9151b53ecec84e818abdd8cba5d7', '2021-01-08 13:35:58'),
(10, 'pay_GMrM9WZavxGnct', 'order_GMrLyL77XNVNs6', 'aa0272906ab85f0458314f2bd3f6334c12939280ba06a628155fc365947bcea9', '2021-01-08 15:19:34'),
(11, 'pay_GMrM9WZavxGnct', 'order_GMrLyL77XNVNs6', 'aa0272906ab85f0458314f2bd3f6334c12939280ba06a628155fc365947bcea9', '2021-01-08 15:23:44'),
(12, 'pay_GMrRqiUSyBzMUA', 'order_GMrRiqB5qp1A9N', '5bb7b6a84371c7d727dc1463848d5f4fe1d4db47f6e37da4a99124147c197e55', '2021-01-08 15:24:57'),
(13, 'pay_GMrU7q6gfDHEyV', 'order_GMrU0B1DbYzFYd', '3fbd603a902e80358b4f79ce7f579e02882f05ae4e8238b8018cb7b142949908', '2021-01-08 15:27:07'),
(14, 'pay_GMrU7q6gfDHEyV', 'order_GMrU0B1DbYzFYd', '3fbd603a902e80358b4f79ce7f579e02882f05ae4e8238b8018cb7b142949908', '2021-01-08 15:32:32'),
(15, 'pay_GMrcD7kS75uzv6', 'order_GMraVotjlrostP', '7a58613787ac02d8c7943ffc3f16f862266fa80cd0a3871a314b5529e263eb6c', '2021-01-08 15:34:47'),
(16, 'pay_GMt7XfFmgWS0LB', 'order_GMt7ObVASjj5hI', '91994149982fadb4643287e690ad0a496f4222c1fb61caded193b28a38f96fb0', '2021-01-08 17:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `cartitems`
--

CREATE TABLE `cartitems` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cartitems`
--

INSERT INTO `cartitems` (`id`, `order_id`, `pid`, `quantity`, `product_name`, `product_price`) VALUES
(1, 1, 1, 1, 'Plain Creamy Cake', 10),
(2, 1, 11, 1, 'Onion Pizza', 110),
(3, 1, 4, 1, 'Heart-Shaped Cake', 40),
(4, 2, 1, 5, 'Plain Creamy Cake', 10),
(5, 2, 10, 2, 'Capsicum Pizza', 100),
(6, 2, 17, 1, 'Vanilla Ice Creams', 170),
(7, 3, 4, 1, 'Heart-Shaped Cake', 40),
(8, 3, 12, 1, 'Chicken Pizza', 120),
(9, 3, 17, 1, 'Vanilla Ice Creams', 170),
(10, 4, 4, 1, 'Heart-Shaped Cake', 40),
(11, 4, 12, 1, 'Chicken Pizza', 120),
(12, 4, 17, 1, 'Vanilla Ice Creams', 170),
(13, 4, 8, 10, 'Chocolate(egg free)', 80),
(14, 5, 78, 2, 'Ear Ring', 149),
(15, 6, 80, 2, 'Chicken Kabab', 299),
(16, 6, 81, 2, 'Mutton Kebab', 299),
(17, 7, 12, 1, 'Chicken Pizza', 120),
(18, 7, 17, 1, 'Vanilla Ice Creams', 170),
(19, 8, 9, 1, 'Vanilla(egg free)', 90),
(20, 8, 81, 1, 'Mutton Kebab', 299),
(21, 9, 9, 1, 'Vanilla(egg free)', 90),
(22, 9, 81, 1, 'Mutton Kebab', 299),
(23, 10, 3, 1, 'Strawberry cakes', 30),
(24, 11, 2, 1, 'Pineapple cakes', 20),
(25, 12, 8, 1, 'Chocolate(egg free)', 80),
(26, 13, 8, 1, 'Chocolate(egg free)', 80),
(27, 14, 8, 1, 'Chocolate(egg free)', 80),
(28, 15, 8, 1, 'Chocolate(egg free)', 80),
(29, 16, 8, 1, 'Chocolate(egg free)', 80),
(30, 17, 8, 1, 'Chocolate(egg free)', 80),
(31, 18, 8, 1, 'Chocolate(egg free)', 80),
(32, 19, 8, 1, 'Chocolate(egg free)', 80),
(33, 20, 8, 1, 'Chocolate(egg free)', 80),
(34, 21, 8, 1, 'Chocolate(egg free)', 80),
(35, 22, 8, 1, 'Chocolate(egg free)', 80),
(36, 23, 8, 1, 'Chocolate(egg free)', 80),
(37, 24, 8, 1, 'Chocolate(egg free)', 80),
(38, 25, 8, 1, 'Chocolate(egg free)', 80),
(39, 26, 8, 1, 'Chocolate(egg free)', 80),
(40, 27, 8, 1, 'Chocolate(egg free)', 80),
(41, 28, 8, 1, 'Chocolate(egg free)', 80),
(42, 29, 8, 1, 'Chocolate(egg free)', 80),
(43, 30, 8, 1, 'Chocolate(egg free)', 80),
(44, 31, 8, 1, 'Chocolate(egg free)', 80),
(45, 32, 8, 1, 'Chocolate(egg free)', 80),
(46, 33, 8, 1, 'Chocolate(egg free)', 80),
(47, 34, 8, 1, 'Chocolate(egg free)', 80),
(48, 35, 8, 1, 'Chocolate(egg free)', 80),
(49, 36, 8, 1, 'Chocolate(egg free)', 80),
(50, 37, 8, 1, 'Chocolate(egg free)', 80),
(51, 38, 8, 1, 'Chocolate(egg free)', 80),
(52, 39, 8, 1, 'Chocolate(egg free)', 80),
(53, 40, 8, 1, 'Chocolate(egg free)', 80),
(54, 41, 8, 1, 'Chocolate(egg free)', 80),
(55, 42, 8, 1, 'Chocolate(egg free)', 80),
(56, 43, 8, 100, 'Chocolate(egg free)', 80),
(57, 44, 8, 100, 'Chocolate(egg free)', 80),
(58, 45, 12, 10, 'Chicken Pizza', 120),
(59, 46, 12, 10, 'Chicken Pizza', 120),
(60, 47, 12, 10, 'Chicken Pizza', 120),
(61, 48, 12, 10, 'Chicken Pizza', 120),
(62, 49, 12, 10, 'Chicken Pizza', 120),
(63, 50, 12, 10, 'Chicken Pizza', 120),
(64, 51, 12, 10, 'Chicken Pizza', 120),
(65, 52, 12, 10, 'Chicken Pizza', 120),
(66, 53, 12, 10, 'Chicken Pizza', 120),
(67, 54, 12, 10, 'Chicken Pizza', 120),
(68, 55, 12, 10, 'Chicken Pizza', 120),
(69, 56, 12, 10, 'Chicken Pizza', 120),
(70, 57, 12, 10, 'Chicken Pizza', 120),
(71, 58, 12, 10, 'Chicken Pizza', 120),
(72, 59, 12, 10, 'Chicken Pizza', 120),
(73, 60, 12, 10, 'Chicken Pizza', 120),
(74, 61, 12, 10, 'Chicken Pizza', 120),
(75, 62, 12, 10, 'Chicken Pizza', 120),
(76, 63, 12, 10, 'Chicken Pizza', 120),
(77, 64, 12, 10, 'Chicken Pizza', 120),
(78, 65, 12, 10, 'Chicken Pizza', 120),
(79, 66, 12, 10, 'Chicken Pizza', 120),
(80, 67, 12, 10, 'Chicken Pizza', 120),
(81, 68, 86, 1, 'AppleSE', 49999),
(82, 69, 86, 1, 'AppleSE', 49999),
(83, 70, 86, 1, 'AppleSE', 49999),
(84, 71, 86, 1, 'AppleSE', 49999),
(85, 72, 86, 1, 'AppleSE', 49999),
(86, 73, 86, 1, 'AppleSE', 49999),
(87, 74, 86, 1, 'AppleSE', 49999),
(88, 75, 86, 1, 'AppleSE', 49999),
(89, 76, 86, 1, 'AppleSE', 49999),
(90, 77, 86, 1, 'AppleSE', 49999),
(91, 78, 86, 1, 'AppleSE', 49999),
(92, 79, 86, 1, 'AppleSE', 49999),
(93, 80, 86, 1, 'AppleSE', 49999),
(94, 81, 1, 1, 'Plain Creamy Cake', 10),
(95, 81, 12, 1, 'Chicken Pizza', 120),
(96, 81, 86, 1, 'AppleSE', 49999),
(97, 82, 12, 1, 'Chicken Pizza', 120),
(98, 82, 86, 1, 'AppleSE', 49999),
(99, 83, 86, 1, 'AppleSE', 49999),
(100, 84, 86, 1, 'AppleSE', 49999),
(101, 85, 86, 1, 'AppleSE', 49999),
(102, 86, 86, 1, 'AppleSE', 49999),
(103, 87, 9, 10, 'Vanilla(egg free)', 90),
(104, 88, 9, 10, 'Vanilla(egg free)', 90),
(105, 89, 9, 10, 'Vanilla(egg free)', 90),
(106, 90, 9, 10, 'Vanilla(egg free)', 90),
(107, 91, 9, 10, 'Vanilla(egg free)', 90),
(108, 92, 9, 10, 'Vanilla(egg free)', 90),
(109, 93, 9, 10, 'Vanilla(egg free)', 90),
(110, 94, 1, 1, 'Plain Creamy Cake', 10);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(6) NOT NULL,
  `cname` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `parent_id` int(6) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `cname`, `parent_id`) VALUES
(1, 'Cakes and Pastries', 0),
(2, 'Pizzas', 0),
(3, 'Foods', 0),
(4, 'Selected GIFTS', 0),
(5, 'Egg', 1),
(6, 'Egg Free', 1),
(7, 'Veg', 2),
(8, 'Nonveg', 2),
(10, 'Clothes', 4),
(11, 'Accessories', 4),
(16, 'Shirts', 4),
(15, 'Jeans ', 4),
(28, 'Electronics', 0),
(24, 'High heels', 25),
(25, 'Shoes', 0),
(26, 'Food Veg', 3),
(27, 'Food Non-Veg', 3),
(29, 'Mobiles', 28),
(30, 'Charger', 28),
(31, 'Bluetooth', 28),
(32, 'Headphones', 28),
(33, 'MicroSD Card', 28);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `phone`, `comment`) VALUES
(3, 'jhilik', 'trinadasgupta08@gmail.com', 9073297725, 'hiiiiiiii'),
(7, 'aritra', 'aritra@gmail.com', 9748176017, 'more gechi....'),
(8, 'jhilik', 'trinadasgupta08@gmail.com', 9073297725, 'hii\r\n'),
(10, 'jhilik dasguta', 'trina08@gmail.com', 9073297725, 'hii'),
(13, 'jhilik dasguta', 'trinadasgupta08@gmail.com', 9073297725, 'trina'),
(21, 'jhilik dasguta', 'trina08@gmail.com', 9073297725, 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `cust_email` varchar(50) NOT NULL,
  `cust_phone` varchar(20) NOT NULL,
  `cust_address` varchar(250) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `cust_name`, `cust_email`, `cust_phone`, `cust_address`, `password`) VALUES
(1, 'Nikhil Narayan', 'ipeg.solutions@gmail.com', '9830662770', 'D-1105, Koyla Vihar, Vip Road', '1'),
(2, 'Rahul', 'rahul@gmail.com', '987622200', 'Salt Lake', '414297'),
(4, 'poulami Neogi', 'tania@gmail.com', '2222222222', '169/2 GLT Road Kolkata-700108', '338378'),
(5, 'Trina Dasgupta', 'trina@gmail.com', '9073297725', 'kolkata', '209662'),
(6, 'Namita Dasgupta', 'namita@gmail.com', '9836293148', 'Sodepur', 'namita01'),
(7, 'Trina Dasgupta', 'trinadasgupta08@gmail.com', '9073297725', 'lahabagan,panihati', 'trina1997'),
(11, 'ARITRA SENGUPTA', 'ARITRA.DIYA.SENGUPTA9@GMAIL.COM', '9748176017', '110/1/A RAJA RAM MOHAN SARANI, KOL-700009', 'Ari@1234'),
(12, 'ARITRA SENGUPTA', 'ARITRA.DIYA.SENGUPTA9GMAIL.COM', '9748176017', '110/1/A RAJA RAM MOHAN SARANI, KOL-700009', 'Ari@1234'),
(13, 'ARITRA SENGUPTA', 'ARITRA.DIYA.SENGUPTA9GMAIL.COM', '9748176017', '110/1/A RAJA RAM MOHAN SARANI, KOL-700009', 'Ari@1234'),
(14, 'ARITRA SENGUPTA', 'ARITRA.DIYA.SENGUPTA9GMAIL.COM', '9748176017', '110/1/A RAJA RAM MOHAN SARANI, KOL-700009', 'Ari@1234'),
(15, 'ARITRA SENGUPTA', 'ARITRA.DIYA.SENGUPTA9GMAIL.COM', '9748176017', '110/1/A RAJA RAM MOHAN SARANI, KOL-700009', 'Ari@1234');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `payment_info` varchar(50) NOT NULL,
  `delivery_name` varchar(50) NOT NULL,
  `delivery_phone` varchar(30) NOT NULL,
  `delivery_address` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `cust_id`, `date`, `payment_info`, `delivery_name`, `delivery_phone`, `delivery_address`, `status`) VALUES
(1, 1, '1493010784', 'cod', 'Nikhil Narayan', '9830662770', 'D-1105, Koyla Vihar, Vip Road', 'new'),
(2, 2, '1494828265', 'cod', 'Rahul', '987622200', 'Salt Lake', 'old'),
(3, 1, '1604321379', 'card', 'Nikhil Narayan', '9830662770', 'D-1105, Koyla Vihar, Vip Road', 'new'),
(4, 1, '1604322080', 'cod', 'Nikhil Narayan', '9830662770', 'D-1105, Koyla Vihar, Vip Road', 'old'),
(5, 3, '1604323578', 'cod', 'Trina Dasgupta', '555-555-5555', 'Sodepur', 'old'),
(6, 4, '1604324320', 'cod', 'poulami Neogi', '2222222222', '169/2 GLT Road Kolkata-700108', 'new'),
(7, 3, '1604600746', 'cod', 'Trina Dasgupta', '555-555-5555', 'Sodepur', 'new'),
(8, 5, '1604669850', 'card', 'Trina Dasgupta', '555-555-5555', 'lahabagan', 'new'),
(9, 6, '1604670447', 'card', 'Trina Dasgupta', '555-555-5555', 'lahabagan', 'new'),
(10, 7, '1604733388', 'cod', 'Trina Dasgupta', '9073297725', 'kolkata', 'new'),
(11, 3, '1604767420', 'card', 'Trina Dasgupta', '555-555-5555', 'Sodepur', 'new'),
(12, 10, '1609934371', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(13, 10, '1609934397', 'cod', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(14, 7, '1609935263', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(15, 7, '1609937990', 'cod', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(16, 7, '1609937996', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(17, 7, '1609941623', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(18, 7, '1609941645', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(19, 7, '1609942060', '', '', '', '', 'new'),
(20, 7, '1609942073', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(21, 7, '1609944138', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(22, 7, '1609944156', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(23, 7, '1609944898', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(24, 7, '1609944905', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(25, 7, '1609944910', '', '', '', '', 'new'),
(26, 7, '1609945995', 'cod', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(27, 7, '1609946002', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(28, 7, '1609952593', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(29, 7, '1609963027', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(30, 7, '1609963157', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(31, 7, '1609963164', '', '', '', '', 'new'),
(32, 7, '1609963402', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(33, 7, '1609963432', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(34, 7, '1609963435', '', '', '', '', 'new'),
(35, 7, '1609963437', '', '', '', '', 'new'),
(36, 7, '1609963438', '', '', '', '', 'new'),
(37, 7, '1609963466', '', '', '', '', 'new'),
(38, 7, '1609963482', '', '', '', '', 'new'),
(39, 7, '1609963501', '', '', '', '', 'new'),
(40, 7, '1609963560', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(41, 7, '1609963660', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(42, 7, '1609963709', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(43, 7, '1609963850', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(44, 7, '1609964076', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(45, 7, '1610017809', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(46, 7, '1610017881', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(47, 7, '1610017886', '', '', '', '', 'new'),
(48, 7, '1610017940', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(49, 7, '1610018012', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(50, 7, '1610018046', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(51, 7, '1610018071', '', '', '', '', 'new'),
(52, 7, '1610018082', '', '', '', '', 'new'),
(53, 7, '1610018084', '', '', '', '', 'new'),
(54, 7, '1610018088', '', '', '', '', 'new'),
(55, 7, '1610018102', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(56, 7, '1610018156', '', '', '', '', 'new'),
(57, 7, '1610018166', '', '', '', '', 'new'),
(58, 7, '1610018311', '', '', '', '', 'new'),
(59, 7, '1610018314', '', '', '', '', 'new'),
(60, 7, '1610018327', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(61, 7, '1610019269', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(62, 7, '1610019347', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(63, 7, '1610019544', '', '', '', '', 'new'),
(64, 7, '1610019636', '', '', '', '', 'new'),
(65, 7, '1610019668', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(66, 7, '1610019685', 'paytm', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(67, 7, '1610019695', 'paypal', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(68, 11, '1610020268', 'card', 'ARITRA SENGUPTA', '9748176017', '110/1/A RAJA RAM MOHAN SARANI, KOL-700009', 'new'),
(69, 11, '1610020290', '', '', '', '', 'new'),
(70, 11, '1610020306', 'card', 'ARITRA SENGUPTA', '9748176017', '110/1/A RAJA RAM MOHAN SARANI, KOL-700009', 'new'),
(71, 11, '1610020385', '', '', '', '', 'new'),
(72, 11, '1610023425', '', '', '', '', 'new'),
(73, 11, '1610023435', 'paytm', 'ARITRA SENGUPTA', '9748176017', '110/1/A RAJA RAM MOHAN SARANI, KOL-700009', 'new'),
(74, 11, '1610023673', 'paytm', 'ARITRA SENGUPTA', '9748176017', '110/1/A RAJA RAM MOHAN SARANI, KOL-700009', 'new'),
(75, 11, '1610023702', 'paytm', 'ARITRA SENGUPTA', '9748176017', '110/1/A RAJA RAM MOHAN SARANI, KOL-700009', 'new'),
(76, 11, '1610023784', 'paytm', 'ARITRA SENGUPTA', '9748176017', '110/1/A RAJA RAM MOHAN SARANI, KOL-700009', 'new'),
(77, 11, '1610024289', 'paytm', 'ARITRA SENGUPTA', '9748176017', '110/1/A RAJA RAM MOHAN SARANI, KOL-700009', 'new'),
(78, 11, '1610024354', 'paytm', 'ARITRA SENGUPTA', '9748176017', '110/1/A RAJA RAM MOHAN SARANI, KOL-700009', 'new'),
(79, 11, '1610024469', 'paytm', 'ARITRA SENGUPTA', '9748176017', '110/1/A RAJA RAM MOHAN SARANI, KOL-700009', 'new'),
(80, 11, '1610024827', 'paytm', 'ARITRA SENGUPTA', '9748176017', '110/1/A RAJA RAM MOHAN SARANI, KOL-700009', 'new'),
(81, 7, '1610112716', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(82, 7, '1610112738', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(83, 7, '1610112753', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(84, 7, '1610112776', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(85, 7, '1610112906', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(86, 7, '1610113070', 'paytm', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(87, 7, '1610119159', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(88, 7, '1610119486', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(89, 7, '1610119524', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(90, 7, '1610119582', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(91, 7, '1610119616', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(92, 7, '1610119985', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(93, 7, '1610120156', 'paytm', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new'),
(94, 7, '1610125375', 'card', 'TRINA DASGUPTA', '9073297725', 'lahabagan', 'new');

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
(5, 'SBI', 'SBI', 'NB', '20210108111212800110168666102248641', '50000.00', '53', 'TXN_SUCCESS', '10931714555', 'W8I67AvMABkJiDnykbQB6bu4BEn262MGa0OnDRy+iEcZcU9G5gscs9Spdlnb0A6Y1Gt07y5hTO7aTl6wNBT9IR3cGRxOUU/XuJQM++aU8Ck=', '2021-01-08 13:14:12'),
(6, 'HDFC', 'JPMorgan Chase Bank', 'CC', '20210108111212800110168620003643593', '49999.00', '86', 'TXN_SUCCESS', '777001209970597', 'XJaGYCOlWp0Ac65jnYvpRsPGO4jNSH0yTrVZvfy9WjMiYTSaknbIUNvneGpqsD+Tu3WvFsOpru0lNUb6t1sQ7wyLPHPBrH7VT/PfBFoLr08=', '2021-01-08 13:38:24'),
(7, 'SBI', 'SBI', 'NB', '20210108111212800110168908002230609', '900.00', '93', 'TXN_SUCCESS', '16547712589', 'rSap0X8MGArNxPxIoemZ+r5CPQ2f9mqR/i6jcA6uQrzKmL9Vivrowr7GrSo0mSzRLzv3AI3LatU7xz/hIffyhRvJmTGh5hlg0OOZIm333oY=', '2021-01-08 15:39:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `details` text COLLATE latin1_general_ci NOT NULL,
  `image` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `price` int(4) NOT NULL DEFAULT 0,
  `cid` int(6) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `image`, `price`, `cid`) VALUES
(1, 'Plain Creamy Cake', 'This is a very good product of Monginis and also very healthy and testy.', 'products/1.jpg', 10, 5),
(2, 'Pineapple cakes', 'This is a very good product of Monginis and also very healthy and testy.', 'products/2.jpg', 20, 5),
(3, 'Strawberry cakes', 'This is a very good product of Monginis and also very healthy and testy.', 'products/3.jpg', 30, 5),
(4, 'Heart-Shaped Cake', 'This is a very good product of Monginis and also very healthy and testy.', 'products/4.jpg', 40, 5),
(5, 'Fruit cakes', 'This is a very good product of Monginis and also very healthy and testy.', 'products/5.jpg', 50, 5),
(8, 'Chocolate(egg free)', 'This is a very good product of Monginis and also very healthy and testy.', 'products/8.jpg', 80, 6),
(9, 'Vanilla(egg free)', 'This is a very good product of Monginis and also very healthy and testy.', 'products/9.jpg', 90, 6),
(10, 'Capsicum Pizza', 'Pizzas are of good quality.', 'products/10.jpg', 100, 7),
(11, 'Onion Pizza', 'Pizzas are of good quality.', 'products/11.jpg', 110, 8),
(12, 'Chicken Pizza', 'Pizzas are of good quality.', 'products/12.jpg', 120, 8),
(13, 'Fish Pizza', 'Pizzas are of good quality.', 'products/13.jpg', 130, 8),
(14, 'Egg Patties', 'Patties are soft and fresh.', 'products/14.jpg', 140, 3),
(15, 'Aloo Patties', 'Patties are soft and fresh.', 'products/15.jpg', 150, 3),
(17, 'Vanilla Ice Creams', 'Fresh and Yummy.', 'products/17.jpg', 170, 3),
(49, 'Chocobar', 'Tasty ice-cream', 'products/6.jpg', 50, 3),
(19, 'Aloo Fries', 'Served Hot.', 'products/20.jpg', 190, 3),
(63, 'Red Flared Skirt', 'Increase your glam quotient by wearing this red coloured skirt from the house of Faballey. Made of knit, this skirt is comfortable to wear and skin friendly as well.', 'products/red_skirt.jpg', 630, 10),
(54, 'Black Geometric Print Dress ', 'If you believe in a classy and modish dressing style, then this black coloured dress from Alia Bhatt\'s exclusive collection for Jabong is meant for you. Fashioned from rayon, this dress will ensure a comfortable fit. Team this dress with high heels and a neckpiece for a stunning look.', 'products/black_dress.jpg', 540, 10),
(55, 'Pink Polyurethane (Pu) Handbag', 'Cute and trendy, this pink coloured handbag by Next will tempt you to buy it instantly. It is compact yet can store your important things with ease. Made from polyurethane (pu), it will convince you of its good quality in no time. Fetch a catchy look by just carrying this bag with a simple top and a pair of jeans.', 'products/pink_bag.jpg', 550, 11),
(56, 'Black Tee Shirt', ' Look like an absolute stunner as you make your way to the party wearing this navy blue T-shirt from MANGO. Made from viscose spandex, this T-shirt features a round neck and will be comfortable all day long. This T-shirt can be teamed up with a pair of sequined shorts and stilettos to complete your stylish look.', 'products/black_tee.jpg', 560, 10),
(57, 'Saree', 'Classy, sensuous and versatile are the perfect words to describe this brown coloured saree from Vishal. The chiffon fabric makes this 6.0 m saree easy to drape and carry all day long. Club it with golden danglers and heels to highlight your personality on any occasion.', 'products/saree.jpg', 570, 10),
(58, 'Watch', 'If you have it, flaunt it! If this is your mantra then hit the streets in style wearing this black coloured analog watch for women from the house of Custom. The casing adds more appeal to this timepiece that can be worn on a rainy day, all thanks to its water resistance upto 10 atm.', 'products/watch.jpg', 580, 11),
(59, 'Blue Tee (Mens)', 'Fall in love with the soft texture of the fabric wearing this regular-fit T-shirt by United Colors of Benetton. Your skin will love the feel of this T-shirt as it is fashioned using the material that is famous for comfort – cotton. Live the moment wearing this T-shirt with casual trousers and flip-flops as you hit the street with best buds.', 'products/blue_tee.jpg', 590, 10),
(60, 'Mens Watch', 'Keep up with time wearing this black coloured analog watch from the house of Fossil. The stainless steel dial and leather strap make this watch for men quite high on quality. Designed with a difference, this watch will be a fantastic addition to your accessory collection.', 'products/mens_watch.jpg', 600, 11),
(61, 'Scarf', 'Charmingly gorgeous is what you’d be once you team up this multicoloured scarf with a sexy top and a pair of denims. While its modal adds to its appeal by making it soft to the touch, its attractive print accentuates its visual appeal. Furthermore, you can also wrap it in varied styles with different outfits and sport a new look every day.', 'products/scarf.jpg', 610, 10),
(62, 'Perfume', 'A refreshing fragrance that uplifts your mood and takes you to a blissful territory is here from Nike. The new gen women can now bask in the subtlety of the scent.\r\n\r\nLong Lasting Protection\r\n\r\nStart your day on a jovial note and stay fresh all day with Up or Down Eau de Toilette that gives you a long lasting protection.', 'products/perfume.jpg', 620, 11),
(80, 'Chicken Kabab', 'This is Chicken Peri Peri Kabab ', 'products/80_chicken-peri-peri-kebab.jpg', 299, 27),
(78, 'Ear Ring', 'this is very good product', 'products/78_ear_ring.png', 149, 11),
(79, 'Nose Ring', 'Nice Product', 'products/79_nose_ring.jpg', 199, 11),
(81, 'Mutton Kebab', 'Mutton Seekh Kebab', 'products/81_mutton-seekh-kabab.jpg', 299, 27),
(82, 'Heels', 'It is very easy to handle...', 'products/82_heels.jpg', 599, 24),
(83, 'Short Heels', '', 'products/83_short_heels.jpg', 500, 24),
(84, 'T-Shirt', 'Nice t-shirt', 'products/84_t-shirt_.jpg', 499, 10),
(85, 'Watches', 'Stylish ', 'products/85_watch.jpg', 1999, 11),
(86, 'AppleSE', '64GB Dual Camera', 'products/86_apple.jpg', 49999, 29);

-- --------------------------------------------------------

--
-- Table structure for table `sign up`
--

CREATE TABLE `sign up` (
  `First name` varchar(10) NOT NULL,
  `Last name` varchar(10) NOT NULL,
  `E-mail` varchar(50) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `Confirm Password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_log`
--
ALTER TABLE `admin_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `cartitems`
--
ALTER TABLE `cartitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `paytm`
--
ALTER TABLE `paytm`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_log`
--
ALTER TABLE `admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cartitems`
--
ALTER TABLE `cartitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `paytm`
--
ALTER TABLE `paytm`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
