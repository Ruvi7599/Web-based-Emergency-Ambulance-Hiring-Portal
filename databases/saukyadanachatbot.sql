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
-- Database: `saukyadanachatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) DEFAULT NULL,
  `queries` varchar(300) NOT NULL,
  `replies` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(NULL, 'Hi', 'HI! I\'M SAUKYADANA CHAT-BOT HOW CAN I HELP YOU TODAY!'),
(NULL, 'Hotline', '1990'),
(NULL, 'how to track an ambulance?', '1. Tracking via Booking Reference or Patient Details\r\nGo to the SAUKYADANA portal.\r\n\r\nLocate the “Track Ambulance” feature on the homepage or user dashboard.\r\n\r\nEnter one of the following:\r\n\r\nTracking No/Request No\r\n\r\nPatient Name\r\n\r\nPhone Number associated with the booking\r\n\r\nClick “Search” '),
(NULL, 'how to book an ambulance?', 'To book an ambulance on SAUKYADANA, simply go to our website, click ‘Book Ambulance,’ fill in patient and location details, and confirm. You can then track your ambulance live until it arrives.'),
(NULL, 'How to Contact saukyadana?', 'You can reach SAUKYADANA by visiting us at Colombo 07, emailing saukyadana@gov.lk, or calling our 24/7 hotline 1990 for immediate ambulance assistance'),
(NULL, '#968316086', 'Your ambulance is currently on the way. Please keep your phone available for any updates from the driver or support team.\r\n\r\n✅ Booking Number: 968316086\r\n👤 Patient Name: Ruvinda\r\n📞 Relative Contact: 0769681249\r\n📅 Hiring Date/Time: 10 June 2025, 2:49 PM\r\n🕒 Request Date: 10 June 2025, 2:49:45 PM\r\n📌 St'),
(NULL, '#968316086', '✅ Booking Number: 968316086\r\n👤 Patient Name: Ruvinda\r\n📞 Relative Contact: 0769681249\r\n📅 Hiring Date/Time: 10 June 2025, 2:49 PM\r\n🕒 Request Date: 10 June 2025, 2:49:45 PM\r\n📌 Status: 🚑 On the Way');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
