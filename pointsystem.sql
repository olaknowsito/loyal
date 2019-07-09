-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2019 at 04:50 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pointsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `points_history`
--

CREATE TABLE `points_history` (
  `points_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `added_points` int(11) NOT NULL,
  `deducted_points` int(11) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `points_history`
--

INSERT INTO `points_history` (`points_id`, `user_id`, `username`, `added_points`, `deducted_points`, `remarks`, `created_at`) VALUES
(4, 42, 'Joiner', 2, 0, 'Recieved', '2019-07-09 11:52:19'),
(5, 42, 'Joiner', 2, 0, 'Recieved', '2019-07-09 18:03:57'),
(6, 42, 'Joiner', 44, 0, 'Recieved', '2019-07-09 19:03:35'),
(7, 29, 'Freckleton', 2, 0, 'Recieved', '2019-07-09 20:14:03'),
(8, 36, 'Pitford', 2, 0, 'Recieved', '2019-07-09 20:49:53'),
(9, 42, 'Joiner', 2, 0, 'Recieved', '2019-07-09 20:49:58'),
(10, 42, 'Joiner', 0, 0, 'Recieved', '2019-07-09 20:56:30'),
(11, 42, 'Joiner', 0, 4, 'Deducted', '2019-07-09 21:00:19'),
(12, 42, 'Joiner', 0, 5, 'Deducted', '2019-07-09 21:02:51'),
(13, 42, 'Joiner', 0, 4, 'Deducted', '2019-07-09 21:03:45'),
(14, 34, 'Blade', 0, 22, 'Deducted', '2019-07-09 21:07:44'),
(15, 42, 'Carlo', 0, 2, 'Deducted', '2019-07-09 21:08:50'),
(16, 42, 'Carlo', 0, 50, 'Deducted', '2019-07-09 21:09:31'),
(17, 42, 'Carlo', 57, 0, 'Recieved', '2019-07-09 21:09:41'),
(18, 31, 'Travus', 0, 43, 'Deducted', '2019-07-09 21:16:38'),
(19, 39, 'Noelle', 44, 0, 'Recieved', '2019-07-09 21:16:49'),
(20, 11, 'Kamillah', 51, 0, 'Recieved', '2019-07-09 22:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `remaining_points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `sex`, `remaining_points`) VALUES
(4, 'Christina', 'Grimie', 'Female', 48),
(5, 'Hallie', 'Jeness', 'Female', 166),
(7, 'Aldridge', 'Cutmare', 'Male', 387),
(8, 'Garrett', 'Serrier', 'Male', 255),
(9, 'Antonius', 'Hubeaux', 'Male', 425),
(10, 'Bogey', 'Gummie', 'Male', 229),
(11, 'Kamillah', 'Bullman', 'Female', 538),
(12, 'Jonell', 'Wadesworth', 'Female', 488),
(13, 'Minda', 'Domenici', 'Female', 188),
(14, 'Richard', 'Assel', 'Male', 138),
(15, 'Persis', 'Groucutt', 'Female', 402),
(16, 'Pietro', 'Julien', 'Male', 183),
(17, 'Ailina', 'Wibrew', 'Female', 65),
(18, 'Arlie', 'Tumpane', 'Female', 470),
(19, 'Fernandina', 'Goublier', 'Female', 261),
(20, 'Rhodie', 'Harkness', 'Female', 332),
(21, 'Isabel', 'Claessens', 'Female', 67),
(22, 'Humfried', 'Edy', 'Male', 461),
(23, 'Lilia', 'Blondelle', 'Female', 241),
(24, 'Georgianna', 'Floodgate', 'Female', 369),
(25, 'Barris', 'Lubbock', 'Male', 406),
(26, 'Theodore', 'Schofield', 'Male', 395),
(27, 'Osborn', 'Lorie', 'Male', 157),
(28, 'Diann', 'Rosenstock', 'Female', 441),
(29, 'Gabie', 'Freckleton', 'Male', 430),
(30, 'Hynda', 'MacTrusty', 'Female', 465),
(31, 'Travus', 'Momford', 'Male', 237),
(32, 'Hogan', 'Varnals', 'Male', 384),
(33, 'Zacharia', 'Backshaw', 'Male', 102),
(34, 'Tobiah', 'Blade', 'Male', 223),
(35, 'Ingra', 'Salliere', 'Male', 381),
(36, 'Ettie', 'Pitford', 'Female', 339),
(38, 'Justus', 'Widd', 'Male', 455),
(39, 'Noelle', 'Dilke', 'Female', 133),
(40, 'Dorotea', 'Fellgate', 'Female', 486),
(42, 'Carlos', 'Joiner', 'Male', 452);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `points_history`
--
ALTER TABLE `points_history`
  ADD PRIMARY KEY (`points_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `points_history`
--
ALTER TABLE `points_history`
  MODIFY `points_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
