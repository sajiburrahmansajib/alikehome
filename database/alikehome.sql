-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2021 at 09:00 AM
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
-- Database: `alikehome`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_property`
--

CREATE TABLE `add_property` (
  `property_id` int(10) NOT NULL,
  `province` varchar(50) NOT NULL,
  `zone` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `city` varchar(15) NOT NULL,
  `contact_no` bigint(10) NOT NULL,
  `property_type` varchar(50) NOT NULL,
  `estimated_price` bigint(10) NOT NULL,
  `bathroom` varchar(10) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `owner_id` int(10) NOT NULL,
  `booked` varchar(10) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_property`
--

INSERT INTO `add_property` (`property_id`, `province`, `zone`, `district`, `city`, `contact_no`, `property_type`, `estimated_price`, `bathroom`, `description`, `latitude`, `longitude`, `owner_id`, `booked`) VALUES
(123, 'Shankar', 'Dhanmondi', 'Dhaka', 'Dhaka', 123456789, 'Single Room For 1 Person', 10000, 'YES', 'We reinvented the hostel and redefined the hostel life! This revolutionary hostel mode influencing will not only just limit to the people’s living but also has profound impact on the transportation, education, social, employment and many other fields. High-quality modern life always belongs to very few rich people. We invent a revolutionary solution through the innovation, advanced technology, great and unique design, strong cost controlling that makes urban life standard bringing you 30 years ahead.', '23.750800', '90.368400', 1, 'No'),
(124, 'Farmgate', 'Farmgate', 'Dhaka', 'Dhaka', 12345555, 'Double Room For 2 Person', 12000, 'NO', 'We reinvented the hostel and redefined the hostel life! This revolutionary hostel mode influencing will not only just limit to the people’s living but also has profound impact on the transportation, education, social, employment and many other fields. High-quality modern life always belongs to very few rich people. We invent a revolutionary solution through the innovation, advanced technology, great and unique design, strong cost controlling that makes urban life standard bringing you 30 years ahead. ', '23.756679', '90.385070', 1, 'No'),
(125, 'Banani', 'Dhaka North', 'Dhaka', 'Dhaka', 1111111111, 'Single Room (AC)', 15000, 'Yes', 'We reinvented the hostel and redefined the hostel life! This revolutionary hostel mode influencing will not only just limit to the people’s living but also has profound impact on the transportation, education, social, employment and many other fields. High-quality modern life always belongs to very few rich people. We invent a revolutionary solution through the innovation, advanced technology, great and unique design, strong cost controlling that makes urban life standard bringing you 30 years ahead.', '23.798344', '90.440813', 2, 'Yes'),
(126, 'Mirpur', 'Dhaka South', 'Dhaka', 'ভাটারা', 2555555555, 'Double Room (AC)', 15005, 'No', 'We reinvented the hostel and redefined the hostel life! This revolutionary hostel mode influencing will not only just limit to the people’s living but also has profound impact on the transportation, education, social, employment and many other fields. High-quality modern life always belongs to very few rich people. We invent a revolutionary solution through the innovation, advanced technology, great and unique design, strong cost controlling that makes urban life standard bringing you 30 years ahead.', '23.798344', '90.440813', 2, 'Yes'),
(127, 'Mirpur', 'Dhaka South', 'Dhaka', 'ভাটারা', 2555555555, 'Room Rent 1P', 15005, 'yes', 'We reinvented the hostel and redefined the hostel life! This revolutionary hostel mode influencing will not only just limit to the people’s living but also has profound impact on the transportation, education, social, employment and many other fields. High-quality modern life always belongs to very few rich people. We invent a revolutionary solution through the innovation, advanced technology, great and unique design, strong cost controlling that makes urban life standard bringing you 30 years ahead.', '23.798344', '90.440813', 2, 'No'),
(128, 'Mirpur', 'Dhaka South', 'Dhaka', 'ভাটারা', 355555555, 'Premium Room for 2 Person', 10005, 'yes', 'We reinvented the hostel and redefined the hostel life! This revolutionary hostel mode influencing will not only just limit to the people’s living but also has profound impact on the transportation, education, social, employment and many other fields. High-quality modern life always belongs to very few rich people. We invent a revolutionary solution through the innovation, advanced technology, great and unique design, strong cost controlling that makes urban life standard bringing you 30 years ahead.', '23.711613', '90.425296', 2, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `tenant_id` int(10) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `booking_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`tenant_id`, `property_id`, `booking_id`) VALUES
(18, 124, 1),
(1, 126, 6),
(1, 125, 7);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `owner_id` int(10) NOT NULL,
  `tenant_id` int(10) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`owner_id`, `tenant_id`, `message`) VALUES
(2, 1, 'HI Owner ! Whatsup!');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `owner_id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_no` bigint(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `id_type` varchar(100) NOT NULL,
  `id_photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`owner_id`, `full_name`, `email`, `password`, `phone_no`, `address`, `id_type`, `id_photo`) VALUES
(1, 'Rokhsana Akter', 'rokhsana@gmail.com', '12345', 123456777, 'Dhaka', 'Citizenship', 'owner-photo/khushi.jpg'),
(2, 'Munna Ahmed', 'munna@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 123444444, 'Dhaka', 'Citizenship', 'owner-photo/munna1.jpg'),
(3, 'Sajibur', 'sajib@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 16898575888, 'সাঈদনগর, ১০০ ফিট রোড, নতুনবাজার, ভাটারা, ঢাকা', 'Citizenship', 'owner-photo/khushi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `property_photo`
--

CREATE TABLE `property_photo` (
  `property_photo_id` int(12) NOT NULL,
  `p_photo` varchar(500) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_photo`
--

INSERT INTO `property_photo` (`property_photo_id`, `p_photo`, `property_id`) VALUES
(174, 'product-photo/a.jpg', 123),
(175, 'product-photo/b.jpg', 123),
(176, 'product-photo/b.jpg', 124),
(177, 'product-photo/a.jpg', 124),
(178, 'product-photo/room1.jpg', 125),
(179, 'product-photo/room2.jpg', 126),
(180, 'product-photo/room2.jpg', 127),
(186, 'product-photo/new1.jpg', 128);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(10) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `rating` int(5) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `comment`, `rating`, `property_id`) VALUES
(5, 'This property is very nice.', 5, 123),
(6, 'I love this property.', 4, 124),
(11, 'Good', 5, 126),
(12, 'Nice Environment', 5, 125);

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `tenant_id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_no` bigint(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `id_type` varchar(100) NOT NULL,
  `id_photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`tenant_id`, `full_name`, `email`, `password`, `phone_no`, `address`, `id_type`, `id_photo`) VALUES
(1, 'Mehedi Hassan', 'mehedi8401@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1689857588, 'সাঈদনগর, ১০০ ফিট রোড, নতুনবাজার, ভাটারা, ঢাকা', 'Citizenship', 'tenant-photo/mehedi.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_property`
--
ALTER TABLE `add_property`
  ADD PRIMARY KEY (`property_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`owner_id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`owner_id`);

--
-- Indexes for table `property_photo`
--
ALTER TABLE `property_photo`
  ADD PRIMARY KEY (`property_photo_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`tenant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_property`
--
ALTER TABLE `add_property`
  MODIFY `property_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `owner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property_photo`
--
ALTER TABLE `property_photo`
  MODIFY `property_photo_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tenant`
--
ALTER TABLE `tenant`
  MODIFY `tenant_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_property`
--
ALTER TABLE `add_property`
  ADD CONSTRAINT `add_property_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`owner_id`);

--
-- Constraints for table `property_photo`
--
ALTER TABLE `property_photo`
  ADD CONSTRAINT `property_photo_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `add_property` (`property_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `add_property` (`property_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
