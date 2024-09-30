-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2022 at 05:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'laila', '8888907', 'lailatulpkz166@gmail.com', 'cash on delivery', 'flat no. No:27 - 123456', ', Cucumber (1kg) ( 1 ), Garlic (1kg) ( 1 )', 2, '29-Jul-2022', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(1, 'Cucumber (1kg)', 'vegetable', 1, '15.jpg'),
(2, 'Garlic (1kg)', 'vegetable', 1, '42.jpeg'),
(3, 'Onion (1kg)', 'vegetable', 1, '44.jpg'),
(4, 'Potato (1kg)', 'vegetable', 1, '45.jpg'),
(5, 'Egg Plant (1kg)', 'vegetable', 3, '17.jpg'),
(6, 'Brocolli (1kg)', 'vegetable', 2, '11.jpg'),
(7, 'Cabbage (1kg)', 'vegetable', 3, '12.jpg'),
(8, 'Carrot (1kg)', 'vegetable', 1, '63.jpg'),
(9, 'Pumpkin (1kg)', 'vegetable', 5, '64.jpg'),
(10, 'Lady Finger (1kg)', 'vegetable', 1, '65.jpg'),
(11, 'Asparagus (1kg)', 'vegetable', 3, '66.jpg'),
(12, 'Peas (1kg)', 'vegetable', 1, '67.jpeg'),
(49, 'Orange (1kg)', 'fruit', 2, '4.jpg'),
(50, 'Apple (1kg)', 'fruit', 2, '2.jpg'),
(51, 'Avocado (1kg)', 'fruit', 5, '6.jpg'),
(52, 'Banana (1kg)', 'fruit', 2, '8.jpg'),
(53, 'Blackberry (1kg)', 'fruit', 7, '9.jpg'),
(54, 'Strawberry (1kg)', 'fruit', 5, '30.jpg'),
(55, 'Peach (1kg)', 'fruit', 4, '7.jpg'),
(56, 'Kiwi (1kg)', 'fruit', 4, '24.jpg'),
(57, 'Lemon (1kg) ', 'fruit', 2, '38.jpg'),
(58, 'Pineapple (1kg) ', 'fruit', 4, '40.jpg'),
(59, 'Lime (1kg)', 'fruit', 2, '22.jpg'),
(60, 'Grapes (1kg)', 'fruit', 4, '21.jpg'),
(61, 'Lemon Juice ', 'juice', 4, '55.jpg'),
(62, 'Watermelon Juice ', 'juice', 4, '54.png'),
(63, 'Orange Juice ', 'juice', 4, '16.jpg'),
(64, 'Pear Juice ', 'juice', 4, '23.jpg'),
(65, 'Raspberry Juice ', 'juice', 4, '28.jpg'),
(66, 'Tomato Juice ', 'juice', 4, '74.jpg'),
(67, 'Kiwi Juice ', 'juice', 4, '91.jpg'),
(68, 'Pomegranate Juice', 'juice', 4, '93.jpg'),
(69, 'Coconut Juice', 'juice', 4, '78.jpg'),
(70, 'Grape Juice ', 'juice', 4, '94.jpg'),
(71, 'Apple Juice ', 'juice', 4, '95.png'),
(72, 'Strawberry Juice', 'juice', 4, '96.jpg'),
(73, 'White Bread', 'bread', 3, '84.jpg'),
(74, 'Bagel', 'bread', 3, '46.Jpg'),
(75, 'Tortilla', 'bread', 2, '48.jpg'),
(79, 'Challah', 'bread', 4, '47.jpg'),
(80, 'Whole Wheat Bread', 'bread', 3, '5.jpg'),
(81, 'Baguette', 'bread', 2, '101.jpg'),
(83, 'Barbari Bread', 'bread', 2, '68.jpg'),
(84, 'Beer Bread', 'bread', 2, '69.png'),
(85, 'Black Bread', 'bread', 3, '70.jpg'),
(86, 'Bread Roll', 'bread', 1, '71.jpg'),
(87, 'Bread Stick', 'bread', 1, '72.jpg'),
(88, 'Sourdough Bread', 'bread', 3, '10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'laila', 'dklailatul16@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'user'),
(2, 'admin', 'lailatulpkz166@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'admin'),
(3, 'nabihah', 'dknabihahpkz@gmail.com', 'e86fdc2283aff4717103f2d44d0610f7', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
