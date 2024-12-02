-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2024 at 05:08 PM
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
-- Database: `home_it`
--

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
(124, 24, 'uploads/gallery_images/gallery_1_674dbb74eee92.jpg', '2024-12-02 13:51:48'),
(125, 24, 'uploads/gallery_images/gallery_2_674dbb74ef791.jpg', '2024-12-02 13:51:48'),
(126, 24, 'uploads/gallery_images/gallery_3_674dbb74f0366.jpg', '2024-12-02 13:51:48'),
(127, 24, 'uploads/gallery_images/gallery_4_674dbb74f0d2f.jpg', '2024-12-02 13:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `client_name` varchar(30) NOT NULL,
  `client_phone` varchar(10) NOT NULL,
  `client_email` varchar(50) NOT NULL,
  `client_message` text NOT NULL,
  `date_sent` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `user_id`, `property_id`, `client_name`, `client_phone`, `client_email`, `client_message`, `date_sent`) VALUES
(5, 7, 9, 'haider dhaini', '10122222', 'haider.dhaini@gmail.com', 'I`m interested in this townhouse, please email me once you good with it to settle an appointment to see the it personally ', '2024-11-28 20:52:01'),
(6, 7, 9, 'haider dhaini', '10122222', 'haider.dhaini@gmail.com', 'I`m interested in this townhouse, please email me once you good with it to settle an appointment to see the it personally ', '2024-11-28 20:53:02'),
(7, 1, 2, 'pamia sultan', '01 222333', 'pamia.sultan@gmail.com', 'I\'m interested in this home. I would like to know more', '2024-11-29 13:43:06'),
(11, 5, 7, 'pamia sultan', '01 222333', 'pamia.sultan@gmail.com', 'I`m interested in this townhouse, please email me once you good with it to settle an appointment to see the it personally ', '2024-12-02 13:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('available','rented','sold') NOT NULL DEFAULT 'available',
  `title` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `property_type` enum('home','apartment','villa','office','shop','townhouse') NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
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

INSERT INTO `properties` (`property_id`, `user_id`, `status`, `title`, `description`, `price`, `property_type`, `address`, `city`, `bedrooms`, `bathrooms`, `sqft`, `created_at`, `updated_at`, `main_image`, `purpose`) VALUES
(1, 1, 'available', 'Cozy 2-Bedroom Apart', 'A beautiful 2-bedroom apartment with a modern kitchen and spacious living room.', 120000, 'apartment', '123 Elm St', 'Saida', 2, 1, 850, '2024-11-18 18:55:50', '2024-11-18 18:55:50', '..\\img\\property-2.jpg', 'for sell'),
(2, 1, 'available', 'Luxury 3-Bedroom Hou', 'A luxurious 3-bedroom house with a large garden and swimming pool.', 350000, 'home', '456 Oak Ave', 'Tripoli', 3, 2, 2200, '2024-11-18 18:55:50', '2024-11-18 18:55:50', '..\\img\\property-1.jpg', 'for sell'),
(3, 2, 'available', 'Charming Studio', 'A cozy studio apartment perfect for single professionals or students.', 250, 'apartment', '789 Pine Rd', 'Beirut', 1, 1, 500, '2024-11-18 19:00:10', '2024-11-18 19:00:10', '..\\img\\property-3.jpg', 'for rent'),
(4, 2, 'sold', 'Modern 1-Bedroom Con', 'A stylish 1-bedroom condo in the heart of the city, close to shopping and public transit.', 1900, 'townhouse', '101 Maple Dr', 'Tyre', 1, 1, 650, '2024-11-18 19:07:00', '2024-11-18 19:07:00', '..\\img\\property-1.jpg', 'for rent'),
(5, 3, 'available', 'Spacious 4-Bedroom H', 'A spacious 4-bedroom family home with a large backyard and attached garage.', 400000, 'villa', '202 Birch Blvd', 'Saida', 4, 3, 300, '2024-11-18 19:07:00', '2024-11-18 19:07:00', '..\\img\\z-header1.webp', 'for sell'),
(6, 4, 'available', 'Cozy Cottage', 'A charming 2-bedroom cottage with a large front porch and a beautiful garden.', 1500, 'villa', '303 Cedar Ln', 'Beirut', 2, 1, 1200, '2024-11-18 19:22:52', '2024-11-18 19:22:52', '..\\img\\property-4.jpg', 'for rent'),
(7, 5, 'available', 'Penthouse with City ', 'A luxurious penthouse with stunning views of the city skyline and a private balcony.', 600, 'apartment', '404 Oak Dr', 'Tripoli', 2, 2, 1500, '2024-11-18 19:22:52', '2024-11-18 19:22:52', '..\\img\\property-5.jpg', 'for rent'),
(8, 6, 'available', 'Renovated Victorian ', 'A beautifully renovated 3-bedroom Victorian home with original hardwood floors and high ceilings.', 350, 'home', '505 Elm St', 'Tyre', 3, 4, 1800, '2024-11-18 19:29:11', '2024-11-18 19:29:11', '..\\img\\property-6.jpg', 'for sell'),
(9, 7, 'available', 'Beachfront Bungalow', 'A stunning 2-bedroom beachfront bungalow with panoramic ocean views and direct beach access.', 800, 'townhouse', '606 Beach Rd', 'Beirut', 2, 2, 1000, '2024-11-18 19:29:11', '2024-11-18 19:29:11', '..\\img\\property-1.jpg', 'for rent'),
(24, 15, 'rented', 'Modern 3-Bedroom Apa', 'Modern 2-Bedroom Apartment  Modern 3-Bedroom Apartment  Modern 3-Bedroom Apartment  Modern 3-Bedroom Apartment  Modern 3-Bedroom Apartment  ', 600, 'apartment', '123 Elm Street', 'Saida', 2, 2, 1000, '2024-12-02 13:51:48', '2024-12-02 13:51:48', 'uploads/main_images/main_674dbb74ee1b9.jpg', 'for rent');

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
(1, 'alia daher', 'alia.daher@gmail.com', '1234321', 1222399, NULL, '2024-11-30 20:00:36', '2024-11-30 20:00:36'),
(2, 'reem salim', 'reem.salim198@gmail.com', 'mohammad1987', 1222333, NULL, '2024-11-28 22:03:08', '2024-11-28 22:03:08'),
(7, 'tanseem', 'tasneem.po@gmail.com', '12341234', 10129999, 'uploads/profile_photo/profile_674b596cd5b71.jfif', '2024-11-19 21:49:51', '2024-11-19 21:49:51'),
(15, 'mohammad', 'mohdsalimas777@gmail.com', '12345', 2147483647, NULL, '2024-12-02 13:40:03', '2024-12-02 13:40:03');

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
(2, 11, 'i cannot use the search part', 'ffffffff', '2024-11-30 17:57:06'),
(3, 1, 'there is problem in browsing my properties list!!   ', 'there is problem in browsing my properties list!!   there is problem in browsing my properties list!!   there is problem in browsing my properties list!!   ', '2024-12-02 13:54:28');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `client_reviews`
--
ALTER TABLE `client_reviews`
  MODIFY `client_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `property_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users_reviews`
--
ALTER TABLE `users_reviews`
  MODIFY `user_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
