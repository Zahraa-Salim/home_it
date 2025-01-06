-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2025 at 07:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newhome_it`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city`) VALUES
(1, 'Saida'),
(2, 'Beirut'),
(3, 'Tyre'),
(4, 'Tripoli'),
(5, 'Baalbek'),
(6, 'Bekaa');

-- --------------------------------------------------------

--
-- Table structure for table `client_reviews`
--

CREATE TABLE `client_reviews` (
  `client_review_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_reviews`
--

INSERT INTO `client_reviews` (`client_review_id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(2, 'ali ahmad', 'ali.ahmad@gmail.con', 'Great website for browsing houses', 'I had an excellent experience using this website to search for both homes to buy and rent. The interface is very user-friendly, and I was able to filter results based on my preferences easily. The property details were accurate, and I appreciated the clear photos and descriptions. Highly recommend it to anyone looking for a new home!', '2024-11-18 16:40:55'),
(3, 'Sarah Smith ', 'sarah.smith@hotmail.com', ' Convenient and easy-to-use platform', ' I love how easy this website is to navigate. It made my house-hunting experience much less stressful. Plus, the site is mobile-friendly, which is a big bonus. Will definitely use it again!', '2024-11-18 16:42:48'),
(4, 'nour nassim', 'nour.nassim@outlook.con', 'Useful but needs more filters', 'This website is very useful, but I think it could be even better with more advanced search filters. For example, it would be helpful to filter by pet-friendly properties or specific school districts. However, the site is clean, and I managed to find a lovely home for rent in a good area. Great start, but could be improved.', '2024-11-18 16:44:00'),
(5, 'Ranim yousef', 'ranim.yousef@gmail.com', 'Great experience buying a house', ' I used this site to purchase my first home, and the process was smooth from start to finish. The property details were complete, and I appreciated the 3D tours, which allowed me to explore homes remotely. ', '2024-11-18 16:45:42'),
(6, 'samir danach', 'samir.danach@hotmail.com', 'Disappointing experience, lots of bugs', ' I had a frustrating experience with this website. It crashed multiple times while I was browsing listings, and many of the search filters didn\'t work as expected. Overall, it made my house-hunting process more stressful than it needed to be. I hope they fix these issues soon.', '2024-11-18 16:52:43'),
(7, 'Nasser Salim', 'nasser.salim@gmail.com', 'i cannot use the search part', 'I encountered an issue with the search feature. Unfortunately, it does not seem to work as expected. When I attempt to search for properties, it either shows no results or fails to load relevant options.', '2024-11-25 19:04:17'),
(9, 'yousef ali', 'yousef.ali@gmail.com', 'Great experience buying a house', 'I used this site to purchase my first home, and the process was smooth from start to finish. The property details were complete, and I appreciated the 3D tours, which allowed me to explore homes remotely.', '2024-12-02 13:02:57'),
(10, 'yousef ali', 'yousef.ali@gmail.com', 'Great experience buying a house', 'I used this site to purchase my first home, and the process was smooth from start to finish. The property details were complete, and I appreciated the 3D tours, which allowed me to explore homes remotely.', '2024-12-02 13:17:04');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `property_id`, `image_url`, `created_at`) VALUES
(1, 1, '../img/gallery1.jpg', '2024-11-28 19:38:26'),
(2, 1, '../img/gallery2.jpg', '2024-11-28 19:38:26'),
(3, 1, '../img/gallery3.jpg', '2024-11-28 19:38:26'),
(4, 1, '../img/gallery4.jpg', '2024-11-28 19:38:26'),
(5, 2, '../img/gallery1.jpg', '2024-11-28 19:39:48'),
(6, 2, '../img/gallery2.jpg', '2024-11-28 19:45:12'),
(7, 2, '../img/gallery3.jpg', '2024-11-28 19:45:12'),
(8, 2, '../img/gallery4.jpg', '2024-11-28 19:45:12'),
(9, 3, '../img/gallery1.jpg', '2024-11-28 19:45:12'),
(10, 3, '../img/gallery2.jpg', '2024-11-28 19:45:12'),
(11, 3, '../img/gallery3.jpg', '2024-11-28 19:45:12'),
(12, 3, '../img/gallery4.jpg', '2024-11-28 19:45:12'),
(13, 4, '../img/gallery1.jpg', '2024-11-28 19:45:12'),
(14, 4, '../img/gallery2.jpg', '2024-11-28 19:45:12'),
(15, 4, '../img/gallery3.jpg', '2024-11-28 19:45:12'),
(16, 4, '../img/gallery4.jpg', '2024-11-28 19:45:12'),
(17, 5, '../img/gallery1.jpg', '2024-11-28 19:45:12'),
(18, 5, '../img/gallery2.jpg', '2024-11-28 19:45:12'),
(19, 5, '../img/gallery3.jpg', '2024-11-28 19:45:12'),
(20, 5, '../img/gallery4.jpg', '2024-11-28 19:45:12'),
(21, 6, '../img/gallery1.jpg', '2024-11-28 19:45:12'),
(22, 6, '../img/gallery2.jpg', '2024-11-28 19:45:12'),
(23, 6, '../img/gallery3.jpg', '2024-11-28 19:45:12'),
(24, 6, '../img/gallery4.jpg', '2024-11-28 19:45:12'),
(25, 7, '../img/gallery1.jpg', '2024-11-28 19:45:12'),
(26, 7, '../img/gallery2.jpg', '2024-11-28 19:45:12'),
(27, 7, '../img/gallery3.jpg', '2024-11-28 19:45:12'),
(28, 7, '../img/gallery4.jpg', '2024-11-28 19:45:12'),
(29, 8, '../img/gallery1.jpg', '2024-11-28 19:45:12'),
(30, 8, '../img/gallery2.jpg', '2024-11-28 19:45:12'),
(31, 8, '../img/gallery3.jpg', '2024-11-28 19:45:12'),
(32, 8, '../img/gallery4.jpg', '2024-11-28 19:45:12'),
(33, 9, '../img/gallery1.jpg', '2024-11-28 19:45:12'),
(34, 9, '../img/gallery2.jpg', '2024-11-28 19:45:12'),
(35, 9, '../img/gallery3.jpg', '2024-11-28 19:45:12'),
(36, 9, '../img/gallery4.jpg', '2024-11-28 19:45:12'),
(37, 10, '../img/office_image1.jpg', '2025-01-06 16:48:56'),
(38, 10, '../img/office_image2.jpeg', '2025-01-06 16:48:56'),
(39, 10, '../img/office_image3.jpeg', '2025-01-06 16:50:51'),
(40, 10, '../img/office_image4.jpeg', '2025-01-06 16:50:51'),
(41, 11, '../img/shop_image1.jpeg', '2025-01-06 16:55:44'),
(42, 11, '../img/shop_image2.jpg', '2025-01-06 16:55:44'),
(43, 11, '../img/shop_image3.jpeg', '2025-01-06 16:56:15'),
(44, 11, '../img/shop_image4.jpeg', '2025-01-06 16:56:15'),
(45, 12, '../img/gallery1.jpg', '2025-01-06 17:03:56'),
(46, 12, '../img/gallery2.jpg', '2025-01-06 17:03:56'),
(47, 12, '../img/gallery3.jpg', '2025-01-06 17:04:32'),
(48, 12, '../img/gallery4.jpg', '2025-01-06 17:04:32'),
(49, 13, '../img/gallery1.jpg', '2025-01-06 17:06:08'),
(50, 13, '../img/gallery2.jpg', '2025-01-06 17:06:08'),
(51, 13, '../img/gallery3.jpg', '2025-01-06 17:06:42'),
(52, 13, '../img/gallery4.jpg', '2025-01-06 17:06:42'),
(53, 14, '../img/gallery1.jpg', '2025-01-06 17:08:00'),
(54, 14, '../img/gallery2.jpg', '2025-01-06 17:08:00'),
(55, 14, '../img/gallery3.jpg', '2025-01-06 17:08:40'),
(56, 14, '../img/gallery4.jpg', '2025-01-06 17:08:40'),
(57, 15, '../img/gallery1.jpg', '2025-01-06 17:09:06'),
(58, 15, '../img/gallery2.jpg', '2025-01-06 17:09:06'),
(59, 15, '../img/gallery3.jpg', '2025-01-06 17:09:33'),
(60, 15, '../img/gallery4.jpg', '2025-01-06 17:09:33'),
(61, 16, '../img/gallery1.jpg', '2025-01-06 17:10:03'),
(62, 16, '../img/gallery2.jpg', '2025-01-06 17:10:03'),
(63, 16, '../img/gallery3.jpg', '2025-01-06 17:10:39'),
(64, 16, '../img/gallery4.jpg', '2025-01-06 17:10:39'),
(65, 17, '../img/shop_image1.jpeg', '2025-01-06 17:11:58'),
(66, 17, '../img/shop_image2.jpg', '2025-01-06 17:11:58'),
(67, 17, '../img/shop_image3.jpeg', '2025-01-06 17:12:51'),
(68, 17, '../img/shop_image4.jpeg', '2025-01-06 17:12:51'),
(69, 18, '../img/office_image1.jpg', '2025-01-06 17:16:14'),
(70, 18, '../img/office_image2.jpeg', '2025-01-06 17:16:14'),
(71, 18, '../img/office_image3.jpeg', '2025-01-06 17:17:22'),
(72, 18, '../img/office_image4.jpeg', '2025-01-06 17:17:22'),
(73, 19, '../img/garage_image1.jpeg', '2025-01-06 17:18:48'),
(74, 19, '../img/garage_image2.jpeg', '2025-01-06 17:18:48'),
(75, 19, '../img/garage_image3.jpeg', '2025-01-06 17:20:08'),
(76, 19, '../img/garage_image4.jpeg', '2025-01-06 17:20:08'),
(77, 20, '../img/gallery1.jpg', '2025-01-06 17:20:36'),
(78, 20, '../img/gallery2.jpg', '2025-01-06 17:20:36'),
(79, 20, '../img/gallery3.jpg', '2025-01-06 17:21:07'),
(80, 20, '../img/gallery4.jpg', '2025-01-06 17:21:07'),
(81, 21, '../img/gallery1.jpg', '2025-01-06 17:21:42'),
(82, 21, '../img/gallery2.jpg', '2025-01-06 17:21:42'),
(83, 21, '../img/gallery3.jpg', '2025-01-06 17:23:16'),
(84, 21, '../img/gallery4.jpg', '2025-01-06 17:23:16'),
(85, 22, '../img/gallery1.jpg', '2025-01-06 17:23:54'),
(86, 22, '../img/gallery2.jpg', '2025-01-06 17:23:54'),
(87, 22, '../img/gallery3.jpg', '2025-01-06 17:24:23'),
(88, 22, '../img/gallery4.jpg', '2025-01-06 17:24:23'),
(89, 23, '../img/gallery1.jpg', '2025-01-06 17:25:01'),
(90, 23, '../img/gallery2.jpg', '2025-01-06 17:25:01'),
(91, 23, '../img/gallery3.jpg', '2025-01-06 17:25:28'),
(92, 23, '../img/gallery4.jpg', '2025-01-06 17:25:28'),
(124, 24, '../img/gallery1.jpg', '2024-12-02 13:51:48'),
(125, 24, '../img/gallery2.jpg', '2024-12-02 13:51:48'),
(126, 24, '../img/gallery3.jpg', '2024-12-02 13:51:48'),
(127, 24, '../img/gallery4.jpg', '2024-12-02 13:51:48'),
(128, 25, '../img/gallery1.jpg', '2024-12-26 14:37:18'),
(129, 25, '../img/gallery2.jpg', '2024-12-26 14:37:18'),
(130, 25, '../img/gallery3.jpg', '2024-12-26 14:37:18'),
(131, 25, '../img/gallery4.jpg', '2024-12-26 14:37:18'),
(132, 26, '../img/gallery1.jpg', '2024-12-26 14:40:14'),
(133, 26, '../img/gallery2.jpg', '2024-12-26 14:40:14'),
(134, 26, '../img/gallery3.jpg', '2024-12-26 14:40:14'),
(135, 26, '../img/gallery4.jpg', '2024-12-26 14:40:14'),
(144, 27, '../img/gallery1.jpg', '2025-01-04 15:01:43'),
(145, 27, '../img/gallery2.jpg', '2025-01-04 15:01:43'),
(146, 27, '../img/gallery3.jpg', '2025-01-04 15:01:43'),
(147, 27, '../img/gallery4.jpg', '2025-01-04 15:01:43'),
(148, 28, '../img/office_image1.jpg', '2025-01-04 15:01:43'),
(149, 28, '../img/office_image2.jpeg', '2025-01-04 15:01:43'),
(150, 28, '../img/office_image3.jpeg', '2025-01-04 15:01:43'),
(151, 28, '../img/office_image4.jpeg', '2025-01-04 15:01:43'),
(152, 29, '../img/shop_image1.jpeg', '2025-01-04 15:01:43'),
(153, 29, '../img/shop_image2.jpg', '2025-01-04 15:01:43'),
(154, 29, '../img/shop_image3.jpeg', '2025-01-04 15:01:43'),
(155, 29, '../img/shop_image4.jpeg', '2025-01-04 15:01:43'),
(156, 30, '../img/gallery1.jpg', '2025-01-04 15:01:43'),
(157, 30, '../img/gallery2.jpg', '2025-01-04 15:01:43'),
(158, 30, '../img/gallery3.jpg', '2025-01-04 15:01:43'),
(159, 30, '../img/gallery4.jpg', '2025-01-04 15:01:43'),
(160, 31, '../img/garage_image1.jpeg', '2025-01-04 15:01:43'),
(161, 31, '../img/garage_image2.jpeg', '2025-01-04 15:01:43'),
(162, 31, '../img/garage_image3.jpeg', '2025-01-04 15:01:43'),
(163, 31, '../img/garage_image4.jpeg', '2025-01-04 15:01:43'),
(164, 32, '../img/gallery1.jpg', '2025-01-04 15:01:43'),
(165, 32, '../img/gallery2.jpg', '2025-01-04 15:01:43'),
(166, 32, '../img/gallery3.jpg', '2025-01-04 15:01:43'),
(167, 32, '../img/gallery4.jpg', '2025-01-04 15:01:43'),
(168, 33, '../img/gallery1.jpg', '2025-01-04 15:01:43'),
(169, 33, '../img/gallery2.jpg', '2025-01-04 15:01:43'),
(170, 33, '../img/gallery3.jpg', '2025-01-04 15:01:43'),
(171, 33, '../img/gallery4.jpg', '2025-01-04 15:01:43'),
(172, 34, '../img/gallery1.jpg', '2025-01-04 15:01:43'),
(173, 34, '../img/gallery2.jpg', '2025-01-04 15:01:43'),
(174, 34, '../img/gallery3.jpg', '2025-01-04 15:01:43'),
(175, 34, '../img/gallery4.jpg', '2025-01-04 15:01:43'),
(176, 35, '../img/gallery1.jpg', '2025-01-04 15:01:43'),
(177, 35, '../img/gallery2.jpg', '2025-01-04 15:01:43'),
(178, 35, '../img/gallery3.jpg', '2025-01-04 15:01:43'),
(179, 35, '../img/gallery4.jpg', '2025-01-04 15:01:43'),
(180, 36, '../img/office_image1.jpg', '2025-01-04 15:01:43'),
(181, 36, '../img/office_image2.jpeg', '2025-01-04 15:01:43'),
(182, 36, '../img/office_image3.jpeg', '2025-01-04 15:01:43'),
(183, 36, '../img/office_image4.jpeg', '2025-01-04 15:01:43'),
(184, 37, '../img/shop_image1.jpeg', '2025-01-04 15:01:43'),
(185, 37, '../img/shop_image2.jpg', '2025-01-04 15:01:43'),
(186, 37, '../img/shop_image3.jpeg', '2025-01-04 15:01:43'),
(187, 37, '../img/shop_image4.jpeg', '2025-01-04 15:01:43'),
(188, 38, '../img/gallery1.jpg', '2025-01-04 15:01:43'),
(189, 38, '../img/gallery2.jpg', '2025-01-04 15:01:43'),
(190, 38, '../img/gallery3.jpg', '2025-01-04 15:01:43'),
(191, 38, '../img/gallery4.jpg', '2025-01-04 15:01:43'),
(192, 39, '../img/garage_image1.jpeg', '2025-01-04 15:01:43'),
(193, 39, '../img/garage_image2.jpeg', '2025-01-04 15:01:43'),
(194, 39, '../img/garage_image3.jpeg', '2025-01-04 15:01:43'),
(195, 39, '../img/garage_image4.jpeg', '2025-01-04 15:01:43'),
(196, 40, '../img/gallery1.jpg', '2025-01-04 15:01:43'),
(197, 40, '../img/gallery2.jpg', '2025-01-04 15:01:43'),
(198, 40, '../img/gallery3.jpg', '2025-01-04 15:01:43'),
(199, 40, '../img/gallery4.jpg', '2025-01-04 15:01:43'),
(200, 41, '../img/gallery1.jpg', '2025-01-04 15:01:43'),
(201, 41, '../img/gallery2.jpg', '2025-01-04 15:01:43'),
(202, 41, '../img/gallery3.jpg', '2025-01-04 15:01:43'),
(203, 41, '../img/gallery4.jpg', '2025-01-04 15:01:43'),
(204, 42, '../img/gallery1.jpg', '2025-01-04 15:01:43'),
(205, 42, '../img/gallery2.jpg', '2025-01-04 15:01:43'),
(206, 42, '../img/gallery3.jpg', '2025-01-04 15:01:43'),
(207, 42, '../img/gallery4.jpg', '2025-01-04 15:01:43'),
(208, 43, '../img/gallery1.jpg', '2025-01-04 15:01:43'),
(209, 43, '../img/gallery2.jpg', '2025-01-04 15:01:43'),
(210, 43, '../img/gallery3.jpg', '2025-01-04 15:01:43'),
(211, 43, '../img/gallery4.jpg', '2025-01-04 15:01:43'),
(212, 44, '../img/office_image1.jpg', '2025-01-04 15:01:43'),
(213, 44, '../img/office_image2.jpeg', '2025-01-04 15:01:43'),
(214, 44, '../img/office_image3.jpeg', '2025-01-04 15:01:43'),
(215, 44, '../img/office_image4.jpeg', '2025-01-04 15:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `status` enum('unread','read','resolved','ignore') NOT NULL DEFAULT 'unread',
  `client_name` varchar(30) NOT NULL,
  `client_phone` varchar(10) NOT NULL,
  `client_email` varchar(50) NOT NULL,
  `client_message` text NOT NULL,
  `date_sent` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `user_id`, `property_id`, `status`, `client_name`, `client_phone`, `client_email`, `client_message`, `date_sent`) VALUES
(5, 7, 9, 'unread', 'haider dhaini', '10122222', 'haider.dhaini@gmail.com', 'I`m interested in this townhouse, please email me once you good with it to settle an appointment to see the it personally ', '2024-11-28 20:52:01'),
(6, 7, 9, 'unread', 'haider dhaini', '10122222', 'haider.dhaini@gmail.com', 'I`m interested in this townhouse, please email me once you good with it to settle an appointment to see the it personally ', '2024-11-28 20:53:02'),
(7, 1, 2, 'ignore', 'pamia sultan', '01 222333', 'pamia.sultan@gmail.com', 'I\'m interested in this home. I would like to know more', '2025-01-05 20:17:16'),
(11, 5, 7, 'unread', 'pamia sultan', '01 222333', 'pamia.sultan@gmail.com', 'I`m interested in this townhouse, please email me once you good with it to settle an appointment to see the it personally ', '2024-12-02 13:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `status` enum('available','rented','sold') NOT NULL DEFAULT 'available',
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `address` varchar(100) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `bathrooms` int(11) NOT NULL,
  `sqft` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `main_image` varchar(200) NOT NULL,
  `purpose` enum('for rent','for sell') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`property_id`, `user_id`, `type_id`, `city_id`, `status`, `title`, `description`, `price`, `address`, `bedrooms`, `bathrooms`, `sqft`, `created_at`, `updated_at`, `main_image`, `purpose`) VALUES
(1, 1, 2, 4, 'available', 'The Urban Loft', 'A beautiful 2-bedroom apartment with a modern kitchen and spacious living room. A lovely 2-bedroom apartment with a modern kitchen and spacious living room. A stunning 2-bedroom apartment with a modern kitchen and spacious living room.', 120000, '123 Elm St', 2, 1, 850, '2024-11-18 18:55:50', '2024-11-18 18:55:50', '..\\img\\apartment1.jpg', 'for sell'),
(2, 1, 1, 2, 'rented', 'Luxury 3-Bedroom House', 'A luxurious 3-bedroom house with a large garden and swimming pool. A luxurious 3-bedroom house with a large garden and swimming pool. A luxurious 3-bedroom house with a large garden and swimming pool. ', 350003, '456 Oak Ave', 3, 2, 2200, '2024-11-18 18:55:50', '2025-01-05 20:18:23', '..\\img\\home1.jpg', ''),
(3, 2, 2, 1, 'available', 'Skyline Residences', 'A cozy studio apartment perfect for single professionals or students. A cozy studio apartment perfect for single professionals or students. A cozy studio apartment perfect for single professionals or students.', 250, '789 Pine Rd', 1, 1, 500, '2024-11-18 19:00:10', '2024-11-18 19:00:10', '..\\img\\apartment3.jpg', 'for rent'),
(4, 2, 3, 5, 'sold', 'Villa Serenity', 'A stylish 1-bedroom villa in the city\'s heart, close to shopping and public transit. A stylish 1-bedroom villa in the city\'s heart, close to shopping and public transit. A stylish 1-bedroom villa in the city\'s heart, close to shopping and public transit.', 1900, '101 Maple Dr', 6, 3, 650, '2024-11-18 19:07:00', '2024-11-18 19:07:00', '..\\img\\villa5.jpg', 'for rent'),
(5, 3, 6, 6, 'available', 'Oakwood Townhomes', 'A spacious 4-bedroom family home with a large backyard and attached garage. A spacious 4-bedroom family home with a large backyard and attached garage. A spacious 4-bedroom family home with a large backyard and attached garage.', 400000, '202 Birch Blvd', 4, 3, 300, '2024-11-18 19:07:00', '2024-11-18 19:07:00', '..\\img\\townhouse1.jpg', 'for sell'),
(6, 4, 6, 2, 'available', 'Willow Creek Townhouse', 'Stylish townhomes located near a peaceful creek, featuring open-plan living, modern finishes, and a relaxing atmosphere perfect for families or professionals.', 1500, '303 Cedar Ln', 2, 1, 1200, '2024-11-18 19:22:52', '2024-11-18 19:22:52', '..\\img\\townhouse2.jpg', 'for rent'),
(7, 5, 2, 1, 'available', 'Parkview Suites', 'Tranquil apartments with stunning park views, designed for relaxation and comfort, offering easy access to local parks.', 600, '404 Oak Dr', 2, 2, 1500, '2024-11-18 19:22:52', '2024-11-18 19:22:52', '..\\img\\apartment4.jpg', 'for rent'),
(8, 6, 1, 3, 'available', 'Renovated House', 'A beautifully renovated 3-bedroom Victorian home with original hardwood floors and high ceilings. A beautifully renovated 3-bedroom Victorian home with original hardwood floors and high ceilings. A beautifully renovated 3-bedroom Victorian home with original hardwood floors and high ceilings.', 350, '505 Elm St', 3, 4, 1800, '2024-11-18 19:29:11', '2024-11-18 19:29:11', '..\\img\\home2.jpg', 'for sell'),
(9, 7, 3, 4, 'available', 'Villa Bella Vista', 'A beautiful villa with expansive views, designed for relaxation and luxury.', 800, '606 Beach Rd', 5, 2, 1000, '2024-11-18 19:29:11', '2024-11-18 19:29:11', '..\\img\\villa2.jpg', 'for rent'),
(10, 1, 4, 3, 'available', 'Modern Office Space', 'This sleek and modern office space is perfect for startups and small businesses. Located in the heart of the city, it features an open-plan design, state-of-the-art facilities, and easy access to public transportation. The large windows provide ample natural light, creating a vibrant and productive workspaces,.', 25000, '707 Skyline Ave', 0, 2, 5000, '2025-01-02 19:02:53', '2025-01-05 20:10:46', '../img/office4.jpg', 'for rent'),
(11, 2, 5, 6, 'available', 'The Market Hub', 'Situated in a prime location, this retail shop offers an excellent opportunity for business owners. The spacious layout is designed for versatility, allowing you to customize it to suit your needs. With high foot traffic and a well-lit interior, this space is ideal for attracting customers and growing your business.', 4000, '808 Market St', 0, 1, 800, '2025-01-02 19:02:53', '2025-01-02 19:02:53', '../img/shop1.jpg', 'for sell'),
(12, 7, 1, 1, 'available', 'Spacious Family House', 'This charming family home features four large bedrooms, three bathrooms, and a spacious living area. The open-plan kitchen is equipped with modern appliances, while the backyard offers plenty of space for outdoor activities. Located in a quiet neighborhood, this house is perfect for families looking for comfort and convenience.', 350000, '909 Garden Ln', 4, 3, 2200, '2025-01-02 19:02:53', '2025-01-02 19:02:53', '../img/home3.jpg', 'for sell'),
(13, 11, 2, 4, 'available', 'Cedar Ridge Apartments', 'Cozy and modern living spaces surrounded by natural beauty, offering peaceful retreats with top-notch facilities and amenities.', 800000, '1010 Skyline Blvd', 3, 2, 1800, '2025-01-02 19:02:53', '2025-01-02 19:02:53', '../img/apartment5.jpg', 'for rent'),
(14, 1, 6, 5, 'rented', 'The Ridgeview Townhouses', 'Set atop a hill with breathtaking views, these townhomes combine luxury with nature, offering a peaceful retreat with close proximity to urban conveniences.', 1800, '1111 Maple Rd', 2, 2, 1200, '2025-01-02 19:02:53', '2025-01-02 19:02:53', '../img/townhouse7.jpg', 'for rent'),
(15, 2, 3, 2, 'sold', 'Beachfront Villa', 'This luxurious beachfront villa is the ultimate retreat. With four bedrooms, four bathrooms, and a spacious living area, it offers unparalleled comfort and elegance. The large windows and terraces provide panoramic views of the ocean, while the private pool and garden create a serene oasis for relaxation.', 1500000, '1212 Coastline Dr', 4, 4, 3000, '2025-01-02 19:02:53', '2025-01-02 19:02:53', '../img/villa8.jpg', 'for sell'),
(16, 7, 8, 6, 'available', 'Commercial Building', 'A newly constructed commercial building located in a bustling business district. This property offers ample space for offices, retail shops, and other commercial purposes. With modern architecture, advanced security features, and convenient parking, it is an excellent investment opportunity.', 5000000, '1313 Business Blvd', 0, 10, 20000, '2025-01-02 19:02:53', '2025-01-02 19:02:53', '../img/building2.jpg', 'for sell'),
(17, 11, 5, 3, 'available', 'Downtown Shop', 'Located in the heart of the city, this vibrant downtown shop is perfect for retail businesses. The open floor plan provides flexibility for various layouts, while the large storefront windows ensure maximum visibility. Its prime location guarantees a steady flow of customers.', 3000, '1414 Main St', 0, 1, 900, '2025-01-02 19:02:53', '2025-01-02 19:02:53', '../img/shop2.jpg', 'for rent'),
(18, 1, 4, 1, 'available', 'Maple Grove Office', 'This contemporary open workspace is designed for modern professionals. It features high-speed internet, ergonomic furniture, and communal areas for collaboration. The location is easily accessible, making it ideal for freelancers, startups, and small businesses looking for a dynamic work environment.', 1200, '1515 Office Park Dr', 0, 1, 1500, '2025-01-02 19:02:53', '2025-01-02 19:02:53', '../img/office5.jpg', 'for rent'),
(19, 2, 7, 2, 'available', 'Secure Garage', 'This secure and spacious garage is perfect for storing vehicles or equipment. Located in a quiet area, it features reinforced doors and 24/7 surveillance. The space is easily accessible and offers a convenient solution for your storage needs.', 50000, '1616 Parking Ln', 0, 0, 400, '2025-01-02 19:02:53', '2025-01-02 19:02:53', '../img/garage1.jpg', 'for sell'),
(20, 7, 1, 5, 'available', 'Victorian Style Home', 'Step into the charm of this Victorian-style home featuring modern upgrades. With three bedrooms, two bathrooms, and a spacious living area, this property offers a perfect blend of elegance and practicality. The meticulously landscaped garden adds to its timeless appeal.', 450000, '1717 Heritage Dr', 3, 2, 2400, '2025-01-02 19:02:53', '2025-01-02 19:02:53', '../img/home4.jpg', 'for sell'),
(21, 11, 2, 6, 'available', 'Elegant Apartment', 'An elegant apartment designed with luxury and comfort in mind. Featuring two spacious bedrooms, modern bathrooms, and a fully equipped kitchen, this property is perfect for those seeking a high-end living experience. The building offers top-notch amenities, including a gym and a swimming pool.', 2200, '1818 Apartment Rd', 2, 2, 1200, '2025-01-02 19:02:53', '2025-01-02 19:02:53', '../img/apartment6.jpg', 'for rent'),
(22, 1, 3, 4, 'rented', 'Luxury Villa', 'This magnificent luxury villa boasts a private swimming pool, spacious interiors, and stunning architecture. Ideal for entertaining guests or enjoying family life, it includes four bedrooms, four bathrooms, and a fully landscaped garden. Located in an exclusive neighborhood, it provides privacy and elegance.', 9000, '1919 Paradise Ln', 4, 4, 4500, '2025-01-02 19:02:53', '2025-01-02 19:02:53', '../img/property-6.jpg', 'for rent'),
(23, 2, 8, 3, 'available', 'Parkview Plaza', 'A peaceful, upscale building offering spacious apartments with beautiful park views, contemporary amenities, and a prime location that blends tranquility with easy access to the city’s bustling heart.', 8000000, '2020 Skyline St', 0, 20, 50000, '2025-01-02 19:02:53', '2025-01-02 19:02:53', '../img/building4.jpeg', 'for sell'),
(24, 7, 6, 2, 'available', 'Sunset Ridge Townhomes', 'Spacious, beautifully designed townhouses with stunning sunset views, premium finishes, and a vibrant community atmosphere, offering comfort and style in a prime location.', 1700, '2121 Quiet St', 3, 2, 1600, '2025-01-02 19:02:53', '2025-01-02 19:02:53', '../img/townhouse4.jpg', 'for rent'),
(25, 1, 1, 3, 'available', 'The Maple House', 'A stylish, contemporary home surrounded by maple trees, offering spacious interiors, premium finishes, and a harmonious blend of nature and modern living.', 1500, '123 Oak Ave', 1, 1, 500, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/home5.jpg', 'for rent'),
(26, 2, 2, 4, 'available', 'Golden Gate Flats', 'Chic apartments with stunning city views, premium finishes, and easy access to dining, shopping, and entertainment.', 200000, '456 Maple St', 3, 2, 900, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/apartment7.jpg', 'for sell'),
(27, 7, 3, 2, 'available', 'Villa Bella Vista', 'Perched atop a hill with stunning views, this villa boasts spacious rooms, a private pool, and a perfect blend of classic and modern architectural beauty.', 2500, '789 Pine Blvd', 1, 1, 1200, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/villa10.jpg', 'for rent'),
(28, 11, 4, 1, 'available', 'Crystal Peak Office', 'A cozy beach house with stunning ocean views.', 350000, '123 Beach Rd', 3, 2, 1800, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/office3.jpeg', 'for sell'),
(29, 1, 5, 5, 'available', 'Willow Walk Market', 'A luxurious condo located in the heart of downtown with amazing views.', 4000, '456 City St', 2, 2, 1000, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/shop3.jpg', 'for rent'),
(30, 2, 6, 6, 'available', 'Maple Grove Townhome', 'Contemporary townhouses with a warm, inviting atmosphere, surrounded by lush maple trees and offering modern amenities, perfect for those who seek tranquility and convenience.', 500000, '789 Rural Ln', 4, 3, 3000, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/townhouse5.jpg', 'for sell'),
(31, 7, 7, 3, 'available', 'Car Care Cottage', 'Your car\'s perfect home, offering space, care, and security', 3200, '1010 Urban St', 0, 1, 1600, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/garage3.jpg', 'for rent'),
(32, 11, 8, 4, 'available', 'The Zenith Building', 'A landmark of innovation and luxury, The Zenith offers contemporary design, cutting-edge facilities, and spacious apartments with breathtaking views, located in the heart of the city\'s most coveted district.', 800000, '123 Sunset Dr', 5, 4, 4500, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/building3.jpg', 'for sell'),
(33, 1, 1, 2, 'available', 'The Serenity House', 'A peaceful sanctuary designed with simplicity and calm in mind, featuring serene landscaping, minimalist décor, and an atmosphere that fosters relaxation and peace.', 5000, '456 Skyline Blvd', 3, 3, 2500, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/home6.jpg', 'for rent'),
(34, 2, 2, 6, 'available', 'Maplewood Apartments', 'Elegant and cozy apartments with a perfect blend of classic charm and modern amenities in a peaceful, wooded neighborhood.', 350000, '789 Heritage Rd', 4, 2, 2200, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/apartment8.jpg', 'for sell'),
(35, 7, 3, 5, 'available', 'Villa Solace', 'A secluded retreat offering unparalleled comfort, with spacious interiors, beautifully landscaped gardens, and an emphasis on peace and tranquility for ultimate relaxation.', 4000, '123 Business Park', 0, 2, 1500, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/villa9.jpg', 'for rent'),
(36, 11, 4, 1, 'available', 'The Summit Office', 'A luxury apartment with sweeping views of the city skyline.', 3000, '456 City Tower', 2, 2, 1200, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/office2.jpeg', 'for rent'),
(37, 1, 5, 2, 'available', 'The Meadow Mart', 'A beautiful seaside cottage with direct access to the beach.', 600000, '123 Coastal Rd', 2, 1, 800, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/shop4.jpg', 'for sell'),
(38, 2, 6, 3, 'available', 'Hilltop Manor Townhomes', 'Sophisticated, multi-level townhomes offering panoramic views, modern finishes, and a blend of privacy and community, perfect for those seeking comfort with a touch of elegance.', 3500, '789 Central Ave', 2, 1, 1000, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/townhouse6.jpg', 'for rent'),
(39, 7, 7, 4, 'available', 'The Gear Garage', 'A spacious home with a large backyard, perfect for a family.', 450000, '1010 Family Ln', 0, 1, 2500, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/garage2.jpg', 'for sell'),
(40, 11, 8, 5, 'available', 'Elysian Place', 'Combining modern architecture with serene surroundings, this building offers a peaceful retreat, offering residents spacious homes with elegant interiors and all the conveniences of contemporary urban living.', 5000000, '123 Private Rd', 6, 7, 10000, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/building5.jpg', 'for sell'),
(41, 1, 1, 6, 'available', 'Horizon View Home', 'A modern home with breathtaking panoramic views of the horizon, offering high-end features, open spaces, and an ideal setting for both relaxation and entertaining.', 1500, '456 City St', 1, 1, 450, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/home8.jpg', 'for rent'),
(42, 2, 2, 2, 'available', 'Lakeside Flats', 'Serene lakeside living with contemporary design, offering peaceful views, and easy access to outdoor activities and nature.', 250000, '789 Farm Rd', 3, 2, 1800, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/apartment2.jpg', 'for sell'),
(43, 7, 3, 1, 'available', 'Villa Oasis', 'Your private escape, surrounded by lush greenery and ultimate comfort.', 5000, '123 Business Rd', 5, 3, 2000, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/villa4.jpg', 'for rent'),
(44, 11, 4, 5, 'available', 'Golden Oak Office', 'A luxury beachfront property perfect for relaxation and escape.', 750000, '456 Ocean Rd', 5, 5, 4000, '2025-01-02 20:57:32', '2025-01-02 20:57:32', '../img/office1.jpeg', 'for sell');

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `type_id` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`type_id`, `type`, `image`) VALUES
(1, 'House', '../img/home.png'),
(2, 'Apartment', '../img/apartment.png'),
(3, 'Villa', '../img/villa.png'),
(4, 'Office', '../img/office.png'),
(5, 'Shope', '../img/store.png'),
(6, 'Townhouse', '../img/village.png'),
(7, 'Garage', '../img/garage.png'),
(8, 'Building', '../img/building.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(225) NOT NULL,
  `phone` int(11) NOT NULL,
  `profile_photo` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `phone`, `profile_photo`, `created_at`, `updated_at`) VALUES
(1, 'alia daher', 'alia.daher@gmail.com', '1234321', 1222399, NULL, '2024-11-30 20:00:36', '2025-01-05 20:03:18'),
(2, 'reem salim', 'reem.salim198@gmail.com', 'mohammad1987', 1222333, NULL, '2024-11-28 22:03:08', '2024-11-28 22:03:08'),
(7, 'tanseem', 'tasneem.po@gmail.com', '12341234', 10129999, '../img/g_profile.png', '2024-11-19 21:49:51', '2024-11-19 21:49:51'),
(15, 'mohammad', 'mohdsalimas777@gmail.com', '12345', 2147483647, NULL, '2024-12-02 13:40:03', '2024-12-02 13:40:03'),
(16, 'John Doe', 'john.doe@example.com', 'password123', 123456789, NULL, '2025-01-02 19:00:00', '2025-01-02 19:00:00'),
(17, 'Jane Smith', 'jane.smith@example.com', 'securepass', 987654321, NULL, '2025-01-02 19:00:00', '2025-01-02 19:00:00'),
(18, 'Ali Khan', 'ali.khan@example.com', 'mypassword', 123123123, NULL, '2025-01-02 19:00:00', '2025-01-02 19:00:00'),
(19, 'Sara Lee', 'sara.lee@example.com', 'password321', 456456456, NULL, '2025-01-02 19:00:00', '2025-01-02 19:00:00'),
(20, 'Michael Brown', 'michael.brown@example.com', 'brown123', 789789789, NULL, '2025-01-02 19:00:00', '2025-01-02 19:00:00'),
(21, 'Fathi ismail', 'f@com', '1234', 1111111, '../img/b_profile.png', '2025-01-03 19:03:01', '2025-01-03 19:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `users_reviews`
--

CREATE TABLE `users_reviews` (
  `user_review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_reviews`
--

INSERT INTO `users_reviews` (`user_review_id`, `user_id`, `subject`, `message`, `created_at`) VALUES
(1, 1, 'there is problem in browsing my properties list!!   ', 'there is problem in browsing my properties list!!   there is problem in browsing my properties list!!   there is problem in browsing my properties list!!   there is problem in browsing my properties list!!   ', '2024-11-29 13:48:08'),
(2, 15, 'i cannot use the search part. ', 'i cannot use the search part. i cannot use the search part. i cannot use the search part. i cannot use the search part. ', '2024-11-30 17:57:06'),
(3, 1, 'there is problem in browsing my properties list!!   ', 'there is problem in browsing my properties list!!   there is problem in browsing my properties list!!   there is problem in browsing my properties list!!   ', '2024-12-02 13:54:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `client_reviews`
--
ALTER TABLE `client_reviews`
  ADD PRIMARY KEY (`client_review_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`property_id`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_reviews`
--
ALTER TABLE `users_reviews`
  ADD PRIMARY KEY (`user_review_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `client_reviews`
--
ALTER TABLE `client_reviews`
  MODIFY `client_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `property_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `property_types`
--
ALTER TABLE `property_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users_reviews`
--
ALTER TABLE `users_reviews`
  MODIFY `user_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
