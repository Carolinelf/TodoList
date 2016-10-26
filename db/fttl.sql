-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2016 at 01:07 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fttl`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `flight_name` varchar(255) NOT NULL,
  `flight_date` datetime NOT NULL,
  `date_created` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int(10) UNSIGNED NOT NULL,
  `priority` int(1) NOT NULL DEFAULT '2',
  `created_on` datetime NOT NULL,
  `due_on` datetime NOT NULL,
  `last_modified_on` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `comment` text,
  `status` enum('PENDING','DONE','VOIDED') NOT NULL DEFAULT 'PENDING',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `priority`, `created_on`, `due_on`, `last_modified_on`, `title`, `description`, `comment`, `status`, `deleted`) VALUES
(1, 2, '2011-10-20 11:00:00', '2011-10-20 11:00:00', '2015-10-20 00:00:00', 'Clean the house', 'Clean the whole house, ideally including garden.', NULL, 'PENDING', 0),
(2, 2, '2011-09-02 18:24:00', '2011-10-07 08:26:49', '2011-10-05 15:00:00', 'Cut the lawn', 'Cut the lawn around the house.', NULL, 'PENDING', 0),
(3, 3, '2011-09-15 09:30:00', '2011-10-19 10:25:00', '2012-01-01 00:00:00', 'Buy a car', 'Choose the best car to buy and simply buy it.', 'New BMW bought.', 'DONE', 0),
(4, 3, '2011-09-27 17:33:00', '2011-10-11 13:48:00', '2011-11-01 00:00:00', 'Open a new bank account', NULL, 'Not needed.', 'VOIDED', 0),
(5, 1, '2010-08-12 08:17:00', '2011-10-07 08:06:40', '2010-09-01 00:00:00', 'Finish all the exams', NULL, NULL, 'DONE', 0),
(6, 2, '2011-10-02 10:38:36', '2011-10-03 13:26:48', '2011-10-04 12:00:00', 'Send a letter to my sister', 'Send a letter to my sister with important information about what needs to be done.', 'Letter not needed, I called her.', 'VOIDED', 0),
(7, 1, '2010-04-07 17:28:52', '2010-05-12 11:47:00', '2010-07-01 00:00:00', 'Book air tickets', 'Book air tickets to Canary Islands, for 3 people.\r\n', '', 'PENDING', 0),
(8, 2, '2011-10-07 10:44:47', '2011-10-24 10:46:14', '2011-11-01 00:00:00', 'Pay electricity bills', 'Pay electricity bills for the house.', 'Paid.', 'DONE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flight_name_index` (`flight_name`),
  ADD KEY `flight_date_index` (`flight_date`),
  ADD KEY `date_created_index` (`date_created`),
  ADD KEY `user_id_index` (`user_id`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `priority` (`priority`),
  ADD KEY `due_on` (`due_on`),
  ADD KEY `status` (`status`),
  ADD KEY `deleted` (`deleted`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_index` (`email`),
  ADD KEY `last_name_index` (`last_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
