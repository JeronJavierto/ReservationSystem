-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2019 at 08:24 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Office` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `classID` int(100) NOT NULL,
  `roomName` varchar(50) NOT NULL,
  `schoolYear` varchar(25) NOT NULL,
  `semester` varchar(25) NOT NULL,
  `days` varchar(11) NOT NULL,
  `time` varchar(25) NOT NULL,
  `subject` varchar(25) NOT NULL,
  `hours` decimal(3,1) NOT NULL,
  `weekly` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`classID`, `roomName`, `schoolYear`, `semester`, `days`, `time`, `subject`, `hours`, `weekly`) VALUES
(1, 'D422', '2015-2016', '1st', 'MWF', '8:00-9:30', 'IT 422', '1.5', NULL),
(2, 'D421', '2015-2016', '1st', 'MWF', '8:00-9:30', 'IT 421', '1.5', NULL),
(4, 'D422', '2015-2016', '1st', 'MTh', '1:00-2:30', 'IT 325', '1.5', NULL),
(7, 'D422', '2015-2016', '1st', 'MWF', '9:00-10:00', 'ITF 001', '1.0', NULL),
(8, 'D422', '2016-2017', '1st', 'MWF', '8:00-9:00', 'IT 422', '1.0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `ClientID` int(50) NOT NULL,
  `First_name` varchar(25) NOT NULL,
  `Last_name` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `Organization` varchar(25) NOT NULL,
  `position` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ClientID`, `First_name`, `Last_name`, `email`, `Organization`, `position`, `password`, `Status`) VALUES
(84, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'Vice President', '123', ''),
(85, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(86, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(87, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(88, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'Vice President', '123', ''),
(89, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(90, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(91, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(92, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'Vice President', '123', ''),
(93, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(94, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(95, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(96, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(97, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(98, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(99, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(100, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(101, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(102, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(103, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(104, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(105, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(106, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', ''),
(107, 'Jeron', 'Javierto', 'jeron@gmail.com', 'SLU', 'President', '123', ''),
(108, 'Jeron', 'Javierto', '123@email.com', 'SLU', 'Vice President', 'Jeron123', ''),
(109, 'Jeron', 'Javierto', '321@slu.edu.ph', 'SLU', 'President', '123', ''),
(110, 'Jeron', 'Javierto', 'jek@slu.edu.ph', 'SLU', 'President', '123', ''),
(111, 'Jeron', 'Javierto', 'asdw@slu.edu.ph', 'SLU', 'President', '123', ''),
(112, 'Jeron', 'Javierto', '12312312@slu.edu.ph', 'SLU', 'President', 'jwerfu', ''),
(113, 'Jeron', 'Javierto', '64859302@slu.edu.ph', 'SLU', 'President', 'popopop', ''),
(114, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `EquipID` int(11) NOT NULL,
  `equipName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventID` int(100) NOT NULL,
  `Event_name` varchar(50) NOT NULL,
  `Facility` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Time_start` time(4) NOT NULL,
  `Time_end` time(4) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventID`, `Event_name`, `Facility`, `Date`, `Time_start`, `Time_end`, `Description`) VALUES
(1, 'Ash Wednesday', 'Plaza', '2019-03-06', '10:00:00.0000', '11:00:00.0000', 'Mass'),
(2, 'Spirit Overload', 'Plaza', '2019-03-07', '05:00:00.0000', '06:00:00.0000', 'Party');

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `FacID` int(255) NOT NULL,
  `Level` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `roomType` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `capacity` int(255) NOT NULL,
  `Reservation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`FacID`, `Level`, `room`, `roomType`, `description`, `capacity`, `Reservation`) VALUES
(1, 'First Basement', 'Plaza\r\n', 'others', 'Devesse Plaza', 1000, ''),
(2, 'Amphitheatre', 'Amphitheatre', 'Stage Area', 'Amphitheatre', 1000, '');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `resID` int(100) NOT NULL,
  `Client_ID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `Venue` varchar(100) NOT NULL,
  `start_event` datetime NOT NULL,
  `end_event` datetime NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`resID`, `Client_ID`, `title`, `Venue`, `start_event`, `end_event`, `status`) VALUES
(4, 0, 'mass', '', '2019-04-11 03:30:00', '2019-04-11 18:00:00', ''),
(5, 0, 'party', '', '2019-04-12 00:00:00', '2019-04-13 00:00:00', ''),
(7, 0, 'qwe', '', '2019-04-13 00:00:00', '2019-04-14 00:00:00', ''),
(9, 0, 'mass', '', '2019-04-18 00:00:00', '2019-04-19 00:00:00', ''),
(10, 0, 'basketball', '', '2019-04-18 00:00:00', '2019-04-19 00:00:00', ''),
(11, 0, 'party', '', '2019-04-18 00:00:00', '2019-04-19 00:00:00', ''),
(12, 0, 'mass', '', '2019-04-04 00:00:00', '2019-04-05 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `serID` int(10) NOT NULL,
  `typeOfService` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`serID`, `typeOfService`) VALUES
(1, 'Janitor'),
(2, 'Security Guard'),
(3, 'Staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`classID`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ClientID`),
  ADD KEY `ClientID` (`ClientID`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`EquipID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`FacID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`resID`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`serID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classroom`
--
ALTER TABLE `classroom`
  MODIFY `classID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `ClientID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `EquipID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eventID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `FacID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `resID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `serID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
