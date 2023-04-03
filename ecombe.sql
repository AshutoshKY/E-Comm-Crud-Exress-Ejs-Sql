-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 08:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecombe`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `p_id` int(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(255) NOT NULL,
  `p_id` int(255) NOT NULL,
  `usr_buy` varchar(255) NOT NULL,
  `o_id` varchar(255) NOT NULL,
  `addr` varchar(255) NOT NULL,
  `tracking` int(255) NOT NULL,
  `tracking_id` varchar(255) NOT NULL,
  `mode` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `p_id`, `usr_buy`, `o_id`, `addr`, `tracking`, `tracking_id`, `mode`) VALUES
(1, 1, 'ash', 'ash1680526055818x7ik9cywyo', 'fhjklg', 3, '8415315', 0),
(2, 1, 'user123', 'user1231680526446952tv9fur4rkj', 'fhjklg', 4, 'Not Available', 1),
(3, 1, 'ash', 'ash1680532179735bvja4igtwii', 'fhjklg', 3, '79864539816545', 0),
(4, 2, 'ash', 'ash1680540031541wefwd1oxapl', 'ghdkslf', 3, 'Cant Track', 1),
(5, 4, 'user123', 'user12316805410233777zevke46s5x', 'ghdslkjgsdlkgjskld', 4, 'Not Available', 0),
(6, 2, 'user123', 'user1231680541280213pepkld4i43m', 'Place India', 2, 'In transit', 0),
(8, 4, 'user123', 'user12316805415224192mxw50ut19', 'ioewlukwj', 2, 'Packing', 0),
(19, 3, 'ash', 'ash1680542583282ybjwtthoov', 'Punjab', 0, 'Not Available', 0),
(20, 4, 'ash', 'ash1680543430419iwbkfq7izc', 'India', 0, 'Not Available', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `sale_price` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` int(255) NOT NULL,
  `quantity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `des`, `price`, `sale_price`, `image`, `type`, `quantity`) VALUES
(1, 'Laptop', 'Modern Amd Ryzen 7, 16GN Ram, 4 GB Dedicated Grpahics', 100000, 90000, 'not config', 1, '80'),
(2, 'Phone', 'Iphone', 130000, 110000, 'not config', 1, '0'),
(3, 'Shirt', 'Cotton Shirt with Pattern Print, Every Size', 1000, 800, 'not config', 2, '30'),
(4, 'Potato', 'Fresh Farm Potatoes', 20, 18, 'not config', 3, '198'),
(5, 'Towel', 'Soft and Absorbing, Made with Pure Cotton and Durable', 600, 450, 'not config', 2, '200'),
(6, 'Wireless-Earphones', 'BT-5.2, Wireless Earbuds by Ash ', 50000, 40000, 'not config', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type`) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Grocery');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(1) NOT NULL,
  `TimeCreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `type`, `TimeCreated`) VALUES
(1, 'ash@g.com', 'ash', 'ash123', 1, '2023-03-23 00:00:00'),
(2, 'user@g.com', 'user123', 'ash123', 0, '2023-03-23 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
