-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 10, 2022 at 10:30 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int NOT NULL,
  `type` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `type`, `email`, `password`, `name`) VALUES
(1, 'teacher', 'teacher1@gmail.com', 'teacher1', 'teacher1'),
(2, 'student', 'student1@gmail.com', '5e5545d38a68148a2d5bd5ec9a89e327', 'student1'),
(3, 'student', 'shubham@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'shubham singh'),
(4, 'teacher', 'teacherhoon@noway.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'teacher hoon'),
(5, 'parent', 'parent@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'Parent'),
(6, 'student', 'shubhams@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'shubham singh'),
(7, 'student', 'shubhamsaaaaaaaaaaaaa@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'shubham singh'),
(8, 'teacher', 'tchbhjs@gail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'teacher2'),
(9, 'teacher', 'shubhamsingh09123456@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'shubham singh'),
(10, 'counseller', 'shubhamsingh091234ssss@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'shubham singh'),
(11, 'parent', 'shubhamsingh091234346756@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'Shubam singh');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `section` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `added_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `title`, `section`, `added_date`) VALUES
(3, 'Class 1', '1', '2022-03-25 00:00:00'),
(4, 'Class 6', '1,2', '2022-03-25 00:00:00'),
(5, 'class 2', '1', '2022-03-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `category` text NOT NULL,
  `duration` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` text NOT NULL,
  `Price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `category`, `duration`, `date`, `image`, `Price`) VALUES
(11, 'Html', 'web-design-and-development', '20 Days', '2022-04-02 00:00:00', 'html.jpg', '2000 Rs'),
(12, 'Python', 'app-developement', '30 Days', '2022-04-02 00:00:00', 'python.jpeg', '5000 Rs.'),
(13, 'CSS', 'web-design-and-development', '15 Days', '2022-04-02 00:00:00', 'css.png', '1500 Rs.'),
(14, 'C++', 'app-developement', '40 Days', '2022-04-02 00:00:00', 'c++.webp', '5000 Rs'),
(15, 'PHP', 'web-design-and-development', '50 Days', '2022-04-02 00:00:00', 'best-php-frameworks-1.jpg', '10000 Rs.'),
(16, 'Laravel', 'web-design-and-development', '50 days', '2022-04-02 00:00:00', 'download.jpeg', '22000 Rs.'),
(17, 'JAVA', 'web-design-and-development', '35 Days', '2022-04-02 00:00:00', 'java.jpeg', '1600 Rs.'),
(18, 'JS', 'web-design-and-development', '28 Days', '2022-04-02 00:00:00', 'js.png', '2100 Rs.'),
(19, 'English', 'app-developement', '36 days', '2022-04-02 00:00:00', 'best-php-frameworks-1.jpg', '355 Rs');

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE `metadata` (
  `id` int NOT NULL,
  `item_id` int NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`id`, `item_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'section', '3'),
(2, 2, 'section', '4');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `author` text NOT NULL,
  `title` text NOT NULL,
  `description` varchar(50) NOT NULL,
  `type` text NOT NULL,
  `publish_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` text NOT NULL,
  `parent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author`, `title`, `description`, `type`, `publish_date`, `modified_date`, `status`, `parent`) VALUES
(1, '1', 'class-1', 'class-1 description', 'class', '2022-03-26 01:06:43', '2022-03-26 01:06:43', 'publish', '0'),
(2, '1', 'class-2', 'class-2 description', 'class', '2022-03-26 03:24:26', '2022-03-26 03:24:26', 'publish', '0'),
(3, '1', 'section A', 'section A description', 'section', '2022-03-26 01:09:47', '2022-03-26 01:09:47', 'publish', '0'),
(4, '1', 'Section B', 'section B description', 'section', '2022-03-26 03:24:26', '2022-03-26 03:24:26', 'publish', '0');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `query` varchar(100) NOT NULL,
  `mobile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`id`, `name`, `email`, `query`, `mobile`) VALUES
(1, 'shubham singh', 'shubhamsingh091234@gmail.com', 'hello i am there', '09506648813'),
(2, 'Aman singh', 'shubhamsingh09123456@gmail.com', 'Helllo is that okay', '2345678956'),
(3, 'Shubham singh', 'shubhamsingh091234@gmail.com46', 'What is sms', '8005454733');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`) VALUES
(1, 'Section B'),
(2, 'Section C'),
(3, 'Section A'),
(4, 'Section C'),
(5, 'Section Z');

-- --------------------------------------------------------

--
-- Table structure for table `usermeta`
--

CREATE TABLE `usermeta` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usermeta`
--
ALTER TABLE `usermeta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usermeta`
--
ALTER TABLE `usermeta`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
