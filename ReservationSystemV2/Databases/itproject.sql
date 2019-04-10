-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 10, 2019 at 04:00 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

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

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminid` int(255) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `office` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `firstname`, `lastname`, `email`, `office`, `password`) VALUES
(1, 'ac', 'manahan', 'ac.manahan8@yahoo.com', '2164165', '123manahan'),
(2, 'ac', 'manahan', 'ac.manahan8@yahoo.com', '2164165', '123manahan');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
CREATE TABLE IF NOT EXISTS `classroom` (
  `classID` int(100) NOT NULL AUTO_INCREMENT,
  `roomName` varchar(50) NOT NULL,
  `schoolYear` varchar(25) NOT NULL,
  `semester` varchar(25) NOT NULL,
  `days` varchar(11) NOT NULL,
  `time` varchar(25) NOT NULL,
  `subject` varchar(25) NOT NULL,
  `hours` decimal(3,1) NOT NULL,
  PRIMARY KEY (`classID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`classID`, `roomName`, `schoolYear`, `semester`, `days`, `time`, `subject`, `hours`) VALUES
(1, 'D422', '2016-17', '1st', 'MWF', '8:00-9:30', 'IT 422', '1.5'),
(2, 'D421', '2015-16', '1st', 'MWF', '8:00-9:30', 'IT 421', '1.5'),
(3, 'D422', '2015-16', '1st', 'MWF', '10:00-11:00', 'ITF 001', '1.0'),
(4, 'D422', '2015-16', '1st', 'MWF', '4:00-5:00', 'IT 417', '1.0'),
(5, 'D422', '2015-16', '1st', 'MTH', '1:00-2:30', 'IT 214', '1.5');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `ClientID` int(50) NOT NULL AUTO_INCREMENT,
  `First_name` varchar(25) NOT NULL,
  `Last_name` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `Organization` varchar(25) NOT NULL,
  `position` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`ClientID`),
  KEY `ClientID` (`ClientID`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ClientID`, `First_name`, `Last_name`, `email`, `Organization`, `position`, `password`, `Status`) VALUES
(58, 'jeron', 'javierto', 'jeron@gmail.com', 'PESO', 'President', '123', ''),
(59, 'jeron', 'javierto', 'jeron@gmail.com', 'PESO', 'President', 'qwe', ''),
(60, 'Jeron', 'Javierto', '2163947@slu.edu.ph', '', '', '123', ''),
(61, '', '', '', '', '', '', ''),
(62, '', '', '', '', '', '', ''),
(63, '', '', '', '', '', '', ''),
(64, '', '', '', '', '', '', ''),
(65, '', '', '', '', '', '', ''),
(66, 'ac', 'manahan', 'ac@email.com', '', '', '123', ''),
(67, '', '', '', '', '', '', ''),
(68, 'ac', 'manahan', 'ac@email.com', '', '', '123', ''),
(69, 'ac', 'manahan', 'ac@email.com', '', '', 'Manahan123', ''),
(70, 'ac', 'manahan', 'ac@email.com', '', '', 'Jeron123', ''),
(71, 'ac', 'manahan', 'ac@email.com', '', 'President', 'Jeron123', ''),
(72, 'ac', 'manahan', 'ac@email.com', '', 'Vice President', 'Jeron123', ''),
(73, 'ac', 'manahan', 'ac@email.com', '', 'Vice President', 'jERON123', ''),
(74, 'DESTONE', 'ALDANA', 'des@email.com', '', 'Vice President', 'Jeron123', ''),
(75, 'DESTONE', 'ALDANA', 'des@email.com', '', 'President', 'Jeron123', ''),
(76, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', 'Jeron123', ''),
(77, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', 'Jeron123', ''),
(78, 'Jeron', 'Javierto', '2163947@slu.edu.ph', 'SLU', 'President', 'Jeron123', '');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
CREATE TABLE IF NOT EXISTS `equipment` (
  `EquipID` int(11) NOT NULL AUTO_INCREMENT,
  `equipName` varchar(100) NOT NULL,
  PRIMARY KEY (`EquipID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `eventID` int(100) NOT NULL AUTO_INCREMENT,
  `Event_name` varchar(50) NOT NULL,
  `Facility` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Time_start` time(4) NOT NULL,
  `Time_end` time(4) NOT NULL,
  `Description` varchar(50) NOT NULL,
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `facility`;
CREATE TABLE IF NOT EXISTS `facility` (
  `FacID` int(255) NOT NULL AUTO_INCREMENT,
  `Level` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `roomType` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `capacity` int(255) NOT NULL,
  `Reservation` varchar(255) NOT NULL,
  PRIMARY KEY (`FacID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`FacID`, `Level`, `room`, `roomType`, `description`, `capacity`, `Reservation`) VALUES
(1, 'First Basement', 'Plaza\r\n', 'others', 'Devesse Plaza', 1000, ''),
(2, 'Amphitheatre', 'Amphitheatre', 'Stage Area', 'Amphitheatre', 1000, '');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE IF NOT EXISTS `report` (
  `reportID` int(255) NOT NULL AUTO_INCREMENT,
  `DateOfOccurence` date NOT NULL,
  `TimeOfOccurence` time(6) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `IdNo` int(255) NOT NULL,
  `Course` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `ExtentofDamage` varchar(255) NOT NULL,
  `Action_taken` varchar(255) NOT NULL,
  PRIMARY KEY (`reportID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`reportID`, `DateOfOccurence`, `TimeOfOccurence`, `Name`, `IdNo`, `Course`, `Description`, `ExtentofDamage`, `Action_taken`) VALUES
(24, '2019-02-13', '02:22:00.000000', 'qwe', 0, 'qwe', 'qwe', 'qwe', 'qwe');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `resID` int(100) NOT NULL AUTO_INCREMENT,
  `DepOrg` varchar(100) NOT NULL,
  `Event` varchar(100) NOT NULL,
  `Venue` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `TimeStart` time NOT NULL,
  `TimeEnd` time NOT NULL,
  `Client_ID` int(11) NOT NULL,
  PRIMARY KEY (`resID`),
  KEY `resID` (`resID`),
  KEY `ClientID` (`Client_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`resID`, `DepOrg`, `Event`, `Venue`, `Date`, `TimeStart`, `TimeEnd`, `Client_ID`) VALUES
(1, 'PESO', 'Party', 'Basketball Court', '2019-02-22', '14:22:00', '14:22:00', 58);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `serID` int(10) NOT NULL AUTO_INCREMENT,
  `typeOfService` varchar(100) NOT NULL,
  PRIMARY KEY (`serID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`serID`, `typeOfService`) VALUES
(1, 'Janitor'),
(2, 'Security Guard'),
(3, 'Staff');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `Client_ID` FOREIGN KEY (`Client_ID`) REFERENCES `client` (`ClientID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
