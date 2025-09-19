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
-- Database: `saukyadanadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 769681248, 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', '2024-01-10 08:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblambulance`
--

CREATE TABLE `tblambulance` (
  `ID` int(11) NOT NULL,
  `AmbulanceType` varchar(250) DEFAULT NULL,
  `AmbRegNum` varchar(250) DEFAULT NULL,
  `DriverName` varchar(250) DEFAULT NULL,
  `DriverContactNumber` bigint(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblambulance`
--

INSERT INTO `tblambulance` (`ID`, `AmbulanceType`, `AmbRegNum`, `DriverName`, `DriverContactNumber`, `CreationDate`, `Status`, `UpdationDate`) VALUES
(7, '1', 'DL14RT5678', 'Jagath Silvaaa', 777123456, '2025-06-10 03:07:34', 'Assigned', '2025-06-10 09:21:03'),
(8, '2', 'DL15RT5678', 'Sunil Perera', 711725111, '2025-06-10 03:08:22', 'On the way', '2025-06-10 09:23:48'),
(9, '3', 'DL14RT5679', 'Amara Perera', 769681222, '2025-06-10 03:09:11', NULL, NULL),
(10, '4', 'DL17RT5679', 'Anil Chandrasiri', 787123456, '2025-06-10 03:10:08', NULL, NULL),
(12, '1', 'DL14RT4564', 'Sample Driver 1', 112345678, '2025-08-13 10:16:54', 'On the way', '2025-08-13 10:22:13'),
(13, '2', 'DL14RT4565', 'Sample Driver 2', 777123456, '2025-08-13 10:31:38', NULL, NULL),
(14, '3', 'DL14RT5677', 'Sample Driver 3', 777123450, '2025-08-13 10:32:21', NULL, NULL),
(15, '4', 'DL14RT5674', 'Sample Driver 4', 112345674, '2025-08-13 10:32:54', NULL, NULL),
(16, '1', 'DL14RT5687', 'Sample Driver 5', 787123454, '2025-08-13 10:33:45', NULL, NULL),
(17, '2', 'DL14RT5672', 'Sample Driver 6', 112345675, '2025-08-13 10:34:10', NULL, NULL),
(18, '1', 'DL14RT7656', 'Sample Driver 7', 711725112, '2025-08-13 10:34:37', NULL, NULL),
(19, '1', 'DL14RT9967', 'Sample Driver 10', 777126754, '2025-08-16 11:34:16', 'Reached', '2025-08-16 11:40:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblambulancehiring`
--

CREATE TABLE `tblambulancehiring` (
  `ID` int(11) NOT NULL,
  `BookingNumber` int(10) DEFAULT NULL,
  `PatientName` varchar(250) DEFAULT NULL,
  `RelativeName` varchar(250) DEFAULT NULL,
  `RelativeConNum` bigint(11) DEFAULT NULL,
  `HiringDate` varchar(250) DEFAULT NULL,
  `HiringTime` varchar(250) DEFAULT NULL,
  `AmbulanceType` int(5) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `City` mediumtext DEFAULT NULL,
  `State` mediumtext DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `AmbulanceRegNo` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblambulancehiring`
--

INSERT INTO `tblambulancehiring` (`ID`, `BookingNumber`, `PatientName`, `RelativeName`, `RelativeConNum`, `HiringDate`, `HiringTime`, `AmbulanceType`, `Address`, `City`, `State`, `Message`, `BookingDate`, `Remark`, `Status`, `AmbulanceRegNo`, `UpdationDate`) VALUES
(8, 968316086, 'Ruvinda', 'Ruwan', 769681249, '2025-06-10', '14:49', 1, '141/2A Thumbovila Road,Piliyandala.', 'Piliyandala', 'Western', 'Emergency!!', '2025-06-10 09:19:45', 'sdsdsdsd', 'On the way', 'DL15RT5678', '2025-06-10 09:23:48'),
(9, 193057602, 'Sample Patient 1', 'Sample Relative 2', 712345678, '2025-08-13', '15:40', 1, 'Sample Address 123', 'Colombo 01', 'Western', 'Sample Message 1', '2025-08-13 10:10:59', 'Rejected', 'Rejected', '', '2025-08-13 10:13:45'),
(10, 822598109, 'Sample Patient 2', 'Sample Relative 2', 769681249, '2025-08-13', '15:48', 1, 'Sample Address 1456', 'Colombo 02', 'eastern', 'Hurry', '2025-08-13 10:18:28', 'driver On the way', 'On the way', 'DL14RT4564', '2025-08-13 10:22:13'),
(11, 875529600, 'Sample Patient 3', 'Sample Relative 3', 769681249, '2025-08-13', '16:05', 1, '141/2A Thumbovila Road,Piliyandala.', 'colombo 03', 'Western', 'text', '2025-08-13 10:36:01', 'DRIVER BUSY', 'Rejected', '', '2025-08-16 06:20:17'),
(12, 995192108, 'Sample Patient 10', 'Sample Relative 10', 769684567, '2025-08-16', '17:05', 1, 'sample address 9987', 'Piliyandala', 'Western', 'Sample Message', '2025-08-16 11:35:39', 'reached the hospitael', 'Reached', 'DL14RT9967', '2025-08-16 11:40:20'),
(13, 335064104, 'Sample Patient 11', 'Sample Relative 11', 112456789, '2025-08-16', '17:11', 0, 'Sample Address 14564', 'Piliyandala', 'Western', 'sample', '2025-08-16 11:41:25', 'rejected and update the ambulance type', 'Rejected', '', '2025-08-16 11:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<div style=\"text-align: center;\"><b>Emergency Ambulance Hiring Portal</b></div><div style=\"text-align: left;\"><p data-start=\"180\" data-end=\"543\">If you have any questions, need assistance, or wish to provide feedback regarding our services, we are here to help. The සෞඛ්‍යදාන platform is dedicated to ensuring fast, reliable, and accessible emergency ambulance services across Sri Lanka. You can reach us via email or our 24/7 emergency hotline. Our team is always ready to support you during critical times.</p>\r\n<p data-start=\"545\" data-end=\"718\">Whether it’s an inquiry about an ambulance booking, technical support, or general information, don’t hesitate to get in touch. Your safety and satisfaction are our priority. example texttdasdasdasdasdasd</p></div><div style=\"text-align: left;\"><br></div>', NULL, NULL, '2025-08-16 11:42:51'),
(2, 'contactus', 'CONTACT US', 'Colombo - 07&nbsp; Sri Lanka&nbsp;', 'saukyadana@gov.lk', 1990, '2025-08-16 11:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbltrackinghistory`
--

CREATE TABLE `tbltrackinghistory` (
  `ID` int(10) NOT NULL,
  `BookingNumber` int(10) DEFAULT NULL,
  `AmbulanceRegNum` varchar(250) DEFAULT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltrackinghistory`
--

INSERT INTO `tbltrackinghistory` (`ID`, `BookingNumber`, `AmbulanceRegNum`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 292564626, 'DL15RT5678', 'Assigned', 'Assigned', '2024-03-04 07:05:11'),
(2, 292564626, 'DL15RT5678', 'On the way', 'On the way', '2024-03-04 07:41:03'),
(3, 292564626, 'DL15RT5678', 'Ambulance Pick the patient', 'Pickup', '2024-03-04 08:03:00'),
(4, 292564626, 'DL15RT5678', 'Patient reached Hospital', 'Reached', '2024-03-04 12:34:02'),
(5, 193862343, 'DL15RT5678', 'Ambulance Has been assigned', 'Assigned', '2024-03-05 05:25:18'),
(6, 193862343, 'DL15RT5678', 'Ambulance is on the way reached soon', 'On the way', '2024-03-05 05:33:02'),
(7, 193862343, 'DL15RT5678', 'Patient has been picked', 'Pickup', '2024-03-05 05:33:20'),
(8, 193862343, 'DL15RT5678', 'Patient reached to the hospital', 'Reached', '2024-03-05 05:34:34'),
(9, 901408998, 'DL14RT5678', 'Assigned Ambulance', 'Assigned', '2024-03-05 06:51:45'),
(10, 901408998, 'DL14RT5678', 'On The way', 'On the way', '2024-03-05 06:56:50'),
(11, 603153853, 'DL15RT5678', 'Ambulance Assigned', 'Assigned', '2024-03-14 01:20:22'),
(12, 603153853, 'DL15RT5678', 'Ambulance is on the way to pick the pateint', 'On the way', '2024-03-14 01:20:49'),
(13, 603153853, 'DL15RT5678', 'Patient is picked up and w heading to the hospital', 'Pickup', '2024-03-14 01:28:53'),
(15, 603153853, 'DL15RT5678', 'Patient reached at hospital', 'Reached', '2024-03-14 01:38:15'),
(16, 369344538, 'DL15RT5678', 'Ambulance Assigned ', 'Assigned', '2024-03-14 01:45:04'),
(17, 369344538, 'DL15RT5678', 'Ambulance is on the way to pick the patient', 'On the way', '2024-03-14 01:45:41'),
(18, 369344538, 'DL15RT5678', 'Patient is picked up heading to destination', 'Pickup', '2024-03-14 01:46:07'),
(19, 369344538, 'DL15RT5678', 'Reached hospital\r\n', 'Reached', '2024-03-14 01:46:26'),
(20, 185258573, 'DL15RT5678', 'ambulance assigned', 'Assigned', '2024-03-14 14:39:45'),
(21, 901408998, 'DL14RT5678', 'Patient Pick form given address', 'Pickup', '2024-03-14 14:51:24'),
(22, 192666946, 'DL14RT5678', 'Assigned...', 'Assigned', '2025-06-10 03:16:30'),
(23, 968316086, 'DL15RT5678', 'Assigned', 'Assigned', '2025-06-10 09:22:49'),
(24, 968316086, 'DL15RT5678', 'sdsdsdsd', 'On the way', '2025-06-10 09:23:48'),
(25, 193057602, '', 'Rejected', 'Rejected', '2025-08-13 10:13:45'),
(26, 822598109, 'DL14RT4564', 'assigned ', 'Assigned', '2025-08-13 10:21:11'),
(27, 822598109, 'DL14RT4564', 'driver On the way', 'On the way', '2025-08-13 10:22:13'),
(28, 875529600, '', 'DRIVER BUSY', 'Rejected', '2025-08-16 06:20:17'),
(29, 995192108, 'DL14RT9967', 'Assigned the ReQuest', 'Assigned', '2025-08-16 11:37:08'),
(30, 995192108, 'DL14RT9967', 'On the way ', 'On the way', '2025-08-16 11:37:41'),
(31, 995192108, 'DL14RT9967', 'Patient pciked', 'Pickup', '2025-08-16 11:39:26'),
(32, 995192108, 'DL14RT9967', 'reached the hospitael', 'Reached', '2025-08-16 11:40:20'),
(33, 335064104, '', 'rejected and update the ambulance type', 'Rejected', '2025-08-16 11:42:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblambulance`
--
ALTER TABLE `tblambulance`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AmbRegNum` (`AmbRegNum`);

--
-- Indexes for table `tblambulancehiring`
--
ALTER TABLE `tblambulancehiring`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ablunaceid` (`AmbulanceRegNo`),
  ADD KEY `BookingNumber` (`BookingNumber`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltrackinghistory`
--
ALTER TABLE `tbltrackinghistory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `abid` (`AmbulanceRegNum`),
  ADD KEY `bid` (`BookingNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblambulance`
--
ALTER TABLE `tblambulance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblambulancehiring`
--
ALTER TABLE `tblambulancehiring`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltrackinghistory`
--
ALTER TABLE `tbltrackinghistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
