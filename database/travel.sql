-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2023 at 05:54 PM
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
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `user_name`, `password`) VALUES
(1, 'j123', 'j123'),
(2, 'jafor', 'jafor'),
(3, 'ismail', 'ismail'),
(2, 'jafor', 'jafor'),
(3, 'ismail', 'ismail');

-- --------------------------------------------------------

--
-- Table structure for table `blog_table`
--

CREATE TABLE `blog_table` (
  `topic_title` varchar(50) NOT NULL,
  `topic_date` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `image_filename` varchar(50) NOT NULL,
  `topic_para` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_table`
--

INSERT INTO `blog_table` (`topic_title`, `topic_date`, `name`, `image_filename`, `topic_para`) VALUES
('Kaptai Lake', '2023-12-23', '', 'kap.jpg', 'One of the best artificial manmade lake in Bangladesh at Rangamati. Hire a boat and just tell your b'),
('Sajek Valley', '2023-12-22', '', 'sajek.jpg', 'Sajek is a union at Baghaichari Upazila in Rangamati districts.\r\nBut If you like to go there than you have to came Kahgrachori first and than you have to hire jeep to go there ..'),
('Patenga Beach', '2023-12-25', '', 'pot.jpg', 'It’s a very scenic beach @ the end of Chattogram city. Very good road communication . There is huge infrastructure going on with the beach. Lots of entertainment facilities are there includes street vendors with their mouth watering food.'),
('Ahsan Manzil', '2023-12-15', '', '1-ahsan-manzil.jpg', 'Visited this place as I was in Dhaka, ashan manzil is very famous in Dhaka, view of the river buri Ganga.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` text NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Dhaka', 'Sonargaon', '750', './assets/products/d1.jpg', NULL),
(2, 'Dhaka', 'Lalbag', '700', './assets/products/d2.jpg', '2023-12-03'),
(3, 'Rajshahi', 'Behula Lakshindar Basor Ghor', '1300', './assets/products/r1.jpg', '2023-12-03'),
(4, 'Khulna', 'Sundarbans', '7000', './assets/products/k1.jpg', '2020-03-28'),
(5, 'Dhaka', 'Shahid Minar', '600', './assets/products/d3.jpg', '2022-12-17'),
(6, 'Dhaka', 'Jatiyo Sriti Shoudho', '500', './assets/products/d5.jpg', '2022-12-17'),
(7, 'Dhaka', 'Ahsan Manzil', '500', './assets/products/d4.jpg', '2022-12-17'),
(8, 'Chittagong', 'Cox\'s Bazar Beach', '3500', './assets/products/c1.jpg', '2022-12-17'),
(9, 'Chittagong', 'Boga Lake', '2500', './assets/products/c3.jpg', '2022-09-09'),
(10, 'Chittagong', 'Nilachal', '3000', './assets/products/c4.jpg', '2020-03-28'),
(11, 'Chittagong', 'Saint Martin Island', '6800', './assets/products/c2.jpg', '2020-03-28'),
(12, 'Rangpur', 'Kantajew Temple', '1800', './assets/products/ro1.jpg', '2023-01-03'),
(14, 'Chittagong', 'Sajek Valley', '3900', './assets/products/c5.jpg', '2022-12-17'),
(15, 'Rangpur', 'Ramsagar', '2100', './assets/products/ro2.jpg', '2023-01-03'),
(16, 'Chittagong', 'kaptai lake', '2700', './assets/products/c6.jpg', '2022-12-22'),
(17, 'Chittagong', 'Patenga Beach', '2300', './assets/products/c7.jpg', '2022-12-17'),
(20, 'Rangpur', 'vinno jogot', '1900', './assets/products/ro3.jpg', '2022-12-17'),
(21, 'Rangpur', 'Shopnopuri', '1900', './assets/products/ro4.jpg', '2022-12-17'),
(22, 'Sylhet', 'Bisnakandi', '2350', './assets/products/s1.jpg', '2022-12-17'),
(23, 'Sylhet', 'Jaflong', '2350', './assets/products/s2.jpg', '2022-12-17'),
(25, 'Sylhet', 'Ratargul Swamp Forest', '2750', './assets/products/s3.jpg', '2022-12-17'),
(26, 'Sylhet', 'Tanguar Haor', '2550', './assets/products/s4.jpg', '2022-12-17'),
(27, 'Rajshahi', 'Paharpur', '2600', './assets/products/r3.jpg', '2022-12-17'),
(28, 'Rajshahi', 'Tajhat Palace', '1960', './assets/products/r4.jpg', '2022-12-19'),
(29, 'Rajshahi', 'Varendra Research Museum', '1950', './assets/products/r6.jpg', '2022-12-19'),
(30, 'Rajshahi', 'Mahasthangarh', '1390', './assets/products/r5.jpg', '2022-12-19'),
(31, 'Rajshahi', 'Pancharatna Gobinda Temple', '1700', './assets/products/r2.jpg', '2022-12-19'),
(32, 'Khulna', 'Shait-Gumbad Mosque', '2750', './assets/products/k2.jpg', '2022-12-09'),
(33, 'Khulna', 'Fakir Lalon Shah\'s Mazaar', '2950', './assets/products/k3.jpg', '2020-03-28'),
(34, 'Khulna', 'Shilaidaha Kuthibari', '2670', './assets/products/k4.jpg', '2020-03-28'),
(35, 'Khulna', 'Sat Gumbad Mosque', '2800', './assets/products/k5.jpg', '2023-12-03'),
(36, 'Mymensingh', 'Muktagachha Jomidar Bari', '1750', 'https://i0.wp.com/www.alonelytraveler.com/wp-content/uploads/2021/12/muktagachha-jomidar-bari1.jpg?w=800&ssl=1', '2023-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `number` text NOT NULL,
  `nid` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `verification_code` varchar(255) NOT NULL,
  `is_verify` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `email`, `password`, `number`, `nid`, `address`, `verification_code`, `is_verify`) VALUES
(58157, 'jafor1', 'abuja2forhadi@gmail.com', 'a!ASSD32155', '01303744717', 2147483647, 'House-470/2/A,Flat # 6-B, Mirpur,Sher-E-Bangla Nag', '06b0acee', 0),
(95118, 'jafor', 'abujaforhadi1@gmail.com', '123', '203002048', 2147483647, 'House-470/2/A,Flat # 6-B, Mirpur,Sher-E-Bangla Nag', '839003e3ca2f194081968fc9c8de7a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`cart_id`, `user_id`, `item_id`) VALUES
(29, 1, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
