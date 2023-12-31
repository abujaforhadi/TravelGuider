-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 02:29 PM
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
(NULL, NULL, NULL),
(NULL, NULL, NULL),
(1, 'Admin', 'admin');

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
('Ahsan Manzil', '2023-12-15', '', '1-ahsan-manzil.jpg', 'Visited this place as I was in Dhaka, ashan manzil is very famous in Dhaka, view of the river buri Ganga.'),
('Padma Bridge Mawa', '2023-12-22', '', 'podma.jpeg', 'The largest bridge South Asia is located in Munshiganj, Dhaka, Bangladesh.'),
('Jaflong', '2023-12-24', '', 'download (1).jpeg', 'AAA sSSSSS');

-- --------------------------------------------------------

--
-- Table structure for table `bus_details`
--

CREATE TABLE `bus_details` (
  `bus_name` text NOT NULL,
  `source` text NOT NULL,
  `destination` text NOT NULL,
  `fare` int(50) NOT NULL,
  `seats_available` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_details`
--

INSERT INTO `bus_details` (`bus_name`, `source`, `destination`, `fare`, `seats_available`) VALUES
('Saintmartin Hyundai 8:30am Volvo AC', 'Khagrachari', 'Dhaka', 1600, 9),
('Hanif Enterprise 9:30pm Non AC', 'Khagrachari', 'Dhaka', 750, 10),
('Saintmartin Hyundai 8:30pm Volvo AC', 'Khagrachari', 'Dhaka', 1600, 20),
('Hanif Enterprise 2:30pm Non AC', 'Khagrachari', 'Dhaka', 750, 18),
('Saintmartin Hyundai 8:30pm Volvo AC', 'Dhaka', 'Khagrachari', 1600, 15),
('Hanif Enterprise 9:30pm Non AC', 'Dhaka', 'Khagrachari', 750, 10),
('Saintmartin Hyundai 8:30pm Volvo AC', 'Dhaka', 'Khagrachari', 1600, 20),
('Hanif Enterprise 2:30pm Non AC', 'Dhaka', 'Khagrachari', 750, 18),
('Ena Transport (Pvt) Ltd 8:30pm Volvo AC', 'Dhaka', 'Khagrachari', 1600, 19),
('Hanif Enterprise 9:30pm Non AC', 'Dhaka', 'Khagrachari', 750, 10),
('Evergreen Transport Ltd 8:30pm Volvo AC', 'Dhaka', 'Khagrachari', 1600, 26),
('Ena Transport (Pvt) Ltd 2:30pm Non AC', 'Dhaka', 'Khagrachari', 750, 20),
('Ena Transport (Pvt) Ltd 8:30pm Volvo AC', 'Dhaka', 'CoxsBazar', 1800, 19),
('Hanif Enterprise 9:30pm Non AC', 'Dhaka', 'CoxsBazar', 1100, 10),
('Hanif Enterprise 11:30pm Volvo AC', 'Dhaka', 'CoxsBazar', 1600, 26),
('Ena Transport (Pvt) Ltd 12:30pm Non AC', 'Dhaka', 'CoxsBazar', 1100, 20),
('Ena Transport (Pvt) Ltd 11:30pm Volvo AC', 'Dhaka', 'CoxsBazar', 1800, 19),
('Hanif Enterprise 5:30pm Non AC', 'Dhaka', 'CoxsBazar', 1100, 10),
('Evergreen Transport Ltd 8:30pm Volvo AC', 'Dhaka', 'CoxsBazar', 1600, 26),
('Ena Transport (Pvt) Ltd 7:30pm Non AC', 'Dhaka', 'CoxsBazar', 1100, 20),
('Ena Transport (Pvt) Ltd 8:30pm Volvo AC', 'CoxsBazar', 'Dhaka', 1800, 19),
('Hanif Enterprise 9:30pm Non AC', 'CoxsBazar', 'Dhaka', 1100, 10),
('Hanif Enterprise 11:30pm Volvo AC', 'CoxsBazar', 'Dhaka', 1600, 26),
('Ena Transport (Pvt) Ltd 12:30pm Non AC', 'CoxsBazar', 'Dhaka', 1100, 20),
('Ena Transport (Pvt) Ltd 11:30pm Volvo AC', 'CoxsBazar', 'Dhaka', 1800, 19),
('Hanif Enterprise 5:30pm Non AC', 'CoxsBazar', 'Dhaka', 1100, 10),
('Evergreen Transport Ltd 8:30pm Volvo AC', 'Dhaka', 'CoxsBazar', 1600, 26),
('Ena Transport (Pvt) Ltd 7:30pm Non AC', 'CoxsBazar', 'Dhaka', 1100, 20),
('Soudia Coach Service 8:30pm Volvo AC', 'Chittagong', 'Dhaka', 900, 25),
('Hanif Enterprise 9:30pm Non AC', 'Chittagong', 'Dhaka', 750, 9),
('Hanif Enterprise 11:30pm Volvo AC', 'Chittagong', 'Dhaka', 1200, 6),
('Ena Transport (Pvt) Ltd 12:30pm Non AC', 'Chittagong', 'Dhaka', 1000, 20),
('Ena Transport (Pvt) Ltd 11:30pm Volvo AC', 'Chittagong', 'Dhaka', 780, 19),
('Hanif Enterprise 5:30pm Non AC', 'Chittagong', 'Dhaka', 850, 10),
('Saintmartin Travels 8:30pm Volvo AC', 'Dhaka', 'Chittagong', 1400, 26),
('Ena Transport (Pvt) Ltd 7:30pm Non AC', 'Chittagong', 'Dhaka', 800, 20),
('Soudia Coach Service 8:30pm Volvo AC', 'Chittagong', 'Dhaka', 900, 25),
('Hanif Enterprise 9:30pm Non AC', 'Chittagong', 'Dhaka', 750, 9),
('Hanif Enterprise 11:30pm Volvo AC', 'Chittagong', 'Dhaka', 1200, 6),
('Ena Transport (Pvt) Ltd 12:30pm Non AC', 'Chittagong', 'Dhaka', 1000, 20),
('Ena Transport (Pvt) Ltd 11:30pm Volvo AC', 'Chittagong', 'Dhaka', 780, 19),
('Hanif Enterprise 5:30pm Non AC', 'Chittagong', 'Dhaka', 850, 10),
('Saintmartin Travels 8:30pm Volvo AC', 'Dhaka', 'Chittagong', 1400, 26),
('Ena Transport (Pvt) Ltd 7:30pm Non AC', 'Chittagong', 'Dhaka', 800, 20),
('Soudia Coach Service 8:30pm Volvo AC', 'Rangpur', 'Dhaka', 900, 25),
('Hanif Enterprise 9:30pm Non AC', 'Chittagong', 'CoxsBazar', 350, 15),
('Hanif Enterprise 11:30pm Non AC', 'Chittagong', 'Rangpur', 1200, 6),
('Ena Transport (Pvt) Ltd 12:30pm Non AC', 'Chittagong', 'Dhaka', 1000, 20),
('Ena Transport (Pvt) Ltd 11:30pm Volvo AC', 'Chittagong', 'Dhaka', 780, 10),
('Hanif Enterprise 5:30pm Non AC', 'Rangpur', 'Dhaka', 850, 30),
('Ena Transport (Pvt) Ltd 6:30pm Volvo AC', 'Sylhet', 'Rangpur', 900, 29),
('Ena Transport (Pvt) Ltd 11:30pm Volvo AC', 'Chittagong', 'Dhaka', 780, 19),
('Saintmartin Travels 8:30pm Volvo AC', 'Rangpur', 'Chittagong', 1400, 26),
('Ena Transport (Pvt) Ltd 7:30pm Non AC', 'CoxsBazar', 'Chittagong', 300, 20),
('Hanif Enterprise 9:30pm Non AC', 'Rangpur', 'CoxsBazar', 1600, 15),
('Hanif Enterprise 8:30pm Non AC', 'Rangpur', 'Sylhet', 900, 25),
('Soudia Coach Service 8:30pm Volvo AC', 'Rangpur', 'Rajshahi', 250, 25),
('Hanif Enterprise 9:30pm Non AC', 'Rajshahi', 'CoxsBazar', 1700, 15),
('Hanif Enterprise 11:30pm Non AC', 'Chittagong', 'Rajshahi', 1500, 6),
('Tungipara Express 12:30pm Non AC', 'Rajshahi', 'Dhaka', 900, 20),
('Ena Transport (Pvt) Ltd 11:30pm Volvo AC', 'Rajshahi', 'Dhaka', 1800, 10),
('Hanif Enterprise 5:30pm Non AC', 'Rajshahi', 'Dhaka', 850, 30),
('Ena Transport (Pvt) Ltd 6:30pm Volvo AC', 'Sylhet', 'Rajshahi', 900, 29),
('Tungipara Express 11:30pm Volvo AC', 'Rajshahi', 'Chittagong', 780, 19),
('Hanif Enterprise 8:30pm Non AC', 'Sylhet', 'Rajshahi', 1200, 25),
('Tungipara Express 8:30pm Non AC', 'Rajshahi', 'Khulna', 450, 5),
('Ena Transport (Pvt) Ltd 8:30pm Non AC', 'Rajshahi', 'Khulna', 450, 32),
('Saintmartin Travels 8:30pm Volvo AC', 'Khulna', 'Chittagong', 1600, 26),
('Ena Transport (Pvt) Ltd 7:30pm Non AC', 'CoxsBazar', 'Khulna', 1300, 20),
('Hanif Enterprise 9:30pm Non AC', 'Rangpur', 'CoxsBazar', 1600, 15),
('Hanif Enterprise 8:30pm Non AC', 'Rajshahi', 'Sylhet', 1200, 25),
('Soudia Coach Service 8:30pm Volvo AC', 'Dhaka', 'Rangamati', 870, 25),
('Hanif Enterprise 9:30pm Non AC', 'Rajshahi', 'Rangamati', 1700, 15),
('Hanif Enterprise 11:30pm AC', 'Dhaka', 'Rangamati', 1900, 25),
('Hanif Enterprise 5:30pm Non AC', 'Rangamati', 'Dhaka', 900, 22),
('Ena Transport (Pvt) Ltd 11:30pm Volvo AC', 'Rajshahi', 'Dhaka', 1800, 10),
('Hanif Enterprise 5:30pm Non AC', 'Dhaka', 'Rangamati', 850, 30),
('Ena Transport (Pvt) Ltd 6:30pm Volvo AC', 'Rangamati', 'Rajshahi', 1400, 29),
('Tungipara Express 11:30pm Volvo AC', 'Rangamati', 'Chittagong', 250, 19),
('Hanif Enterprise 8:30pm Non AC', 'Sylhet', 'Rangamati', 1000, 20),
('Hanif Enterprise 8:30am Non AC', 'Rangamati', 'Dhaka', 780, 15),
('Ena Transport (Pvt) Ltd 8:30pm Non AC', 'Rajshahi', 'Rangamati', 450, 32),
('Saintmartin Travels 8:30pm Volvo AC', 'Khulna', 'Chittagong', 1600, 26),
('Ena Transport (Pvt) Ltd 7:30pm Non AC', 'CoxsBazar', 'Khulna', 1300, 20),
('Hanif Enterprise 9:30pm Non AC', 'Rangamati', 'CoxsBazar', 1600, 15),
('Hanif Enterprise 8:30pm Non AC', 'Rangamati', 'Sylhet', 1200, 25),
('Soudia Coach Service 8:30pm Volvo AC', 'Dhaka', 'Rangamati', 870, 25),
('Hanif Enterprise 9:00pm Non AC', 'Dhaka', 'Bogura', 500, 15),
('Hanif Enterprise 11:30pm AC', 'Dhaka', 'Bogura', 1300, 25),
('Hanif Enterprise 5:30pm Non AC', 'Bogura', 'Dhaka', 550, 22),
('Ena Transport (Pvt) Ltd 11:30pm Volvo AC', 'Bogura', 'Dhaka', 1800, 19),
('Hanif Enterprise 5:30pm Non AC', 'Bogura', 'Rangamati', 1350, 30),
('Ena Transport (Pvt) Ltd 6:30pm Volvo AC', 'Bogura', 'Rajshahi', 200, 29),
('SR 8:30am Volvo AC', 'Bogura', 'Dhaka', 1600, 15),
('SR 9:30pm Non AC', 'Bogura', 'Dhaka', 550, 15),
('SR 10:30pm Volvo AC', 'Bogura', 'Dhaka', 1300, 10),
('SR 8:30am Non AC', 'Bogura', 'Dhaka', 600, 5),
('SR 9:30pm Non AC', 'Bogura', 'Dhaka', 700, 25),
('SR 10:30pm Volvo AC', 'Bogura', 'Dhaka', 1100, 3),
('Ena Transport (Pvt) Ltd 6:30pm Volvo AC', 'Bogura', 'Rajshahi', 200, 29),
('SR 8:30am Volvo AC', 'Dhaka', 'Bogura', 1600, 15),
('Ena Transport (Pvt) Ltd 9:30pm Non AC', 'Dhaka', 'Bogura', 1600, 15),
('SR 10:30pm Volvo AC', 'Dhaka', 'Bogura', 1300, 10),
('SR 8:30am Non AC', 'Bogura', 'Dhaka', 700, 5),
('Ena Transport (Pvt) Ltd 9:30pm Non AC', 'Dhaka', 'Bogura', 600, 25),
('SR 10:30pm AC', 'Dhaka', 'Bogura', 900, 7),
('Hanif Enterprise 8:30pm Non AC', 'Sylhet', 'Bogura', 1000, 20),
('Hanif Enterprise 8:30am Non AC', 'Rangamati', 'Bogura', 780, 15),
('Ena Transport (Pvt) Ltd 8:30pm Non AC', 'Rajshahi', 'Bogura', 250, 32),
('Ena Transport (Pvt) Ltd 7:30pm Non AC', 'CoxsBazar', 'Bogura', 1300, 20),
('Hanif Enterprise 9:30pm Non AC', 'Rangamati', 'Bogura', 1600, 15),
('Hanif Enterprise 8:30pm Non AC', 'Bogura', 'Sylhet', 900, 25);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `item_id`) VALUES
(36, 1, 35);

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
(5293, 'ismail', 'joy1@gmail.com', '@A1234567hf', '01310323085', 2147483647, 'West Shewrapara', 'fade4675', 0),
(58157, 'jafor1', 'abuja2forhadi@gmail.com', 'a!ASSD32155', '01303744717', 2147483647, 'House-470/2/A,Flat # 6-B, Mirpur,Sher-E-Bangla Nag', '06b0acee', 0),
(80373, 'Joy Pal', 'joy@gmail.com', '#12Abjoypal', '01310323085', 2147483647, 'West Shewrapara', '2d1dc7ae', 0),
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
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
