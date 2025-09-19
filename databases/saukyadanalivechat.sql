-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2025 at 04:34 PM
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
-- Database: `saukyadanalivechat`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1723522047, 1150438800, 'i wantsome help'),
(2, 1150438800, 1723522047, 'ok'),
(3, 1723522047, 760062590, 'hi'),
(4, 760062590, 1723522047, 'hi'),
(5, 1723522047, 760062590, 'dsfdsf'),
(6, 760062590, 1723522047, 'dsfdsf'),
(7, 1723522047, 760062590, 'Example'),
(8, 1723522047, 1007380677, 'hi'),
(9, 1007380677, 1723522047, 'gdsfsd'),
(10, 1723522047, 1150438800, 'hi'),
(11, 1150438800, 1723522047, 'i  want to book a emergency ambulance'),
(12, 1150438800, 1723522047, 'my driver is on the way or not?'),
(13, 1723522047, 181183446, 'I want to book an ambulance.'),
(14, 181183446, 1723522047, 'sample message 123'),
(15, 1723522047, 896300178, 'text '),
(16, 896300178, 1723522047, 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 1150438800, 'Ruvinda', 'Manoshitha', 'ruvindamanoshitha@gmail.com', 'b7ec5f9e36916f6e731d90b543ddc043', '1749270143Ruvinda.png', 'Offline now'),
(3, 1723522047, 'SAUKYADANA', 'ADMIN', 'saukyadana.admin@gmail.com', '0e7517141fb53f21ee439b355b5a1d0a', '1749270555Logo Large.png', 'Offline now'),
(4, 1418019951, 'Sithumini', 'Wijayrathne', 'sithumini@gmail.com', 'a7362eb79c125b0a79560f0ad0cf07a8', '1749525996img.jpg', 'Offline now'),
(5, 760062590, 'Amara ', 'Perera', 'amara@gmail.com', '4505b43923d4218400bb2b5250398b8e', '1749526065images.jpg', 'Offline now'),
(6, 1007380677, 'Amal', 'Silva', 'amal@gmail.com', 'c1a3e9c7836398c849ddd75acce12a14', '1749547620profile pic.jpg', 'Offline now'),
(7, 181183446, 'Risinu', 'Perera', 'risinuperera@gmail.com', 'ea117deb191cb4081a966115c1c9487d', '1755320201SYNDICATE.png', 'Offline now'),
(8, 896300178, 'Sample', 'Name', 'sample123@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '17553448081.jpg', 'Offline now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
