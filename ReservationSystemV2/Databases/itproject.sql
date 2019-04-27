@@ -1,11 +1,11 @@
-- phpMyAdmin SQL Dump
-- version 4.8.5
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 08:27 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3
-- Generation Time: Apr 27, 2019 at 06:40 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
@ -25,18 +25,32 @@ SET time_zone = "+00:00";
-- --------------------------------------------------------

--
-- Table structure for table `admin`
-- Table structure for table `accounts`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
CREATE TABLE `accounts` (
  `userID` int(11) NOT NULL,
  `User_type` varchar(100) NOT NULL,
  `First_name` varchar(100) NOT NULL,
  `Last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Office` varchar(100) NOT NULL,
  `Organization` varchar(100) NOT NULL,
  `Position` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`userID`, `User_type`, `First_name`, `Last_name`, `email`, `Office`, `Organization`, `Position`, `Password`) VALUES
(47, 'client', 'Jeron', 'Javierto', '2163947@slu.edu.ph', '', 'ICON', 'President', '3d774bbb8f42558814c467940e14f02b'),
(48, 'admin', 'admin', 'admin', 'admin@email.com', 'CusOffice', '', '', 'e64b78fc3bc91bcbc7dc232ba8ec59e0'),
(49, 'admin', 'sao', 'sao', 'sao@email.com', 'SAO', '', '', 'ca20463d8a62207fd59f0c76001e7345'),
(50, 'admin', 'Security', 'Security', 'security@email.com', 'SecOffice', '', '', '92fe1426c7bf80b12c0c2d1dc94ff4a3'),
(51, 'admin', 'dean', 'dean', 'dean@email.com', 'DeanOffice', '', '', '856cfd3f27aceca43a67f4f836e2aefc');

-- --------------------------------------------------------

--
@ -68,60 +82,6 @@ INSERT INTO `classroom` (`classID`, `roomName`, `schoolYear`, `semester`, `days`

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
@ -131,29 +91,23 @@ CREATE TABLE `equipment` (
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
-- Dumping data for table `equipment`
--

INSERT INTO `event` (`eventID`, `Event_name`, `Facility`, `Date`, `Time_start`, `Time_end`, `Description`) VALUES
(1, 'Ash Wednesday', 'Plaza', '2019-03-06', '10:00:00.0000', '11:00:00.0000', 'Mass'),
(2, 'Spirit Overload', 'Plaza', '2019-03-07', '05:00:00.0000', '06:00:00.0000', 'Party');
INSERT INTO `equipment` (`EquipID`, `equipName`) VALUES
(1, 'Bench'),
(2, 'Chair'),
(3, 'Platform'),
(4, 'Table'),
(5, 'Triboard'),
(6, 'Divider'),
(7, 'Microphone'),
(8, 'Mic Stand'),
(9, 'Karaoke'),
(10, 'Projector'),
(23, 'Sound System'),
(24, 'TV/DVD');

-- --------------------------------------------------------

@ -162,12 +116,12 @@ INSERT INTO `event` (`eventID`, `Event_name`, `Facility`, `Date`, `Time_start`,
--

CREATE TABLE `facility` (
  `FacID` int(255) NOT NULL,
  `FacID` int(11) NOT NULL,
  `Level` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `roomType` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `capacity` varchar(10) NOT NULL,
  `capacity` int(255) NOT NULL,
  `Reservation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

@ -176,152 +130,154 @@ CREATE TABLE `facility` (
--

INSERT INTO `facility` (`FacID`, `Level`, `room`, `roomType`, `description`, `capacity`, `Reservation`) VALUES
(1, 'Mezzanine', 'Mezzanine', 'OTHERS', 'LIBRARY READING AREA/ TESTING AREA', '300', ''),
(2, '4th floor', 'D1002', 'OTHERS', 'MINI-AVR/ CONFERENCE ROOM/ MULTIMEDIA', '20', ''),
(3, '4th floor', 'D1001', 'OTHERS', 'AVR /MULTIMEDIA', '3', ''),
(4, '4th floor', 'Library', 'OTHERS', 'LIBRARY', '200', ''),
(5, '4th floor', 'Librarians Office', 'OTHERS', 'Librarians Office', '', ''),
(6, '4th floor', 'Multimedia Room', 'OTHERS', 'Multimedia Room', '', ''),
(7, '4th floor', 'Workroom', 'OTHERS', 'Workroom', '', ''),
(8, '4th floor', 'D1028', 'Laboratory', 'Culinary Lab (BAKING)', '', ''),
(9, '4th floor', 'D1027', 'Laboratory', 'Culinary Lab (International Cuisine)', '', ''),
(10, '4th floor', 'D1026', 'OTHERS', 'HTM Storeroom', '', ''),
(11, '4th floor', 'D1025', 'OTHERS', 'Crockery 1', '2 staffs', ''),
(12, '4th floor', 'D1024', 'OFFICE', 'Crockery Office', '', ''),
(13, '4th floor', 'D1023', 'Laboratory', 'Culinary Lab (Reserve)', '', ''),
(14, '4th floor', 'D1022', 'Laboratory', 'Culinary Lab (Basic)', '', ''),
(15, '4th floor', 'D1021', 'OTHERS', 'Crockery 2', '', ''),
(16, '3rd Floor', 'D906', 'LECTURE', 'NSTP room/ Multimedia', '', ''),
(17, '3rd Floor', 'D905', 'LECTURE', 'Lecture room/ Multimedia', '', ''),
(18, '3rd Floor', 'D904', 'LECTURE', 'Lecture room/ Multimedia', '', ''),
(19, '3rd Floor', 'D903', 'LECTURE', 'Lecture room', '', ''),
(20, '3rd Floor', 'D902', 'LECTURE', 'Lecture room/ Multimedia', '', ''),
(21, '3rd Floor', 'D901', 'LECTURE', 'Lecture room', '', ''),
(22, '3rd Floor', 'D911', 'OTHERS', 'Filing/ Stock room', '', ''),
(23, '3rd Floor', 'D912', 'OFFICE', 'Bread Office', '', ''),
(24, '3rd Floor', 'D913', 'OTHERS', 'Defense/ Conference Room', '', ''),
(25, '3rd Floor', 'D914', 'OFFICE', 'President\'s Office', '', ''),
(26, '3rd Floor', 'D915', 'OFFICE', 'Dean\'s Office, 1 Conference room', '', ''),
(27, '3rd Floor', 'D921', 'OFFICE', 'General Education Faculty Room', '', ''),
(28, '3rd Floor', 'D922', 'OFFICE', 'SABM GPC', '', ''),
(29, '3rd Floor', 'D923', 'OFFICE', 'Equipment Room', '', ''),
(30, '3rd Floor', 'D924', 'OTHERS', 'Internet Library', '', ''),
(31, '3rd Floor', 'D925', 'LECTURE', 'Lecture room/ Multimedia', '', ''),
(32, '3rd Floor', 'FACULTY CENTER', 'OFFICE', 'Faculty Center', '', ''),
(33, '2nd Floor', 'D807', 'LECTURE', 'Lecture room', '', ''),
(34, '2nd Floor', 'D806', 'LECTURE', 'Lecture room', '', ''),
(35, '2nd Floor', 'D805', 'OFFICE', 'Registrar\'s Office', '', ''),
(36, '2nd Floor', 'D804', 'OFFICE', 'Department Heads Office', '', ''),
(37, '2nd Floor', 'D803', 'LECTURE', 'Lecture room', '', ''),
(38, '2nd Floor', 'D802', 'LECTURE', 'Lecture room', '', ''),
(39, '2nd Floor', 'D801', 'LECTURE', 'Lecture room', '', ''),
(40, '2nd Floor', 'D811', 'OFFICE', 'Parish Office', '', ''),
(41, '2nd Floor', 'D812', 'CLINIC', 'Dental Clinic', '', ''),
(42, '2nd Floor', 'D813', 'CLINIC', 'Medical Clinic', '', ''),
(43, '2nd Floor', 'D814', 'LECTURE', 'Lecture room (Former DH Office)', '20', ''),
(44, '2nd Floor', 'D815', 'OFFICE', 'SAO (1 Office & 1 Receiving/ waiting area', '', ''),
(45, '2nd Floor', 'D816', 'OFFICE', 'Guidance Office (3 offices & 1 receiving area)', '', ''),
(46, '2nd Floor', 'D821', 'LECTURE', 'Lecture room', '', ''),
(47, '2nd Floor', 'D822', 'LECTURE', 'Lecture room', '', ''),
(48, '2nd Floor', 'D823', 'LECTURE', 'Lecture room', '', ''),
(49, '2nd Floor', 'D824', 'OTHERS', 'Guidance Testing Center', '', ''),
(50, '2nd Floor', 'D825', 'Laboratory', 'F&B LAB', '', ''),
(51, '2nd Floor', 'D826', 'Laboratory', 'HTM Function Lab/ Multimedia', '', ''),
(52, 'GROUND FLOOR', 'D709', 'LECTURE', 'Lecture room', '', ''),
(53, 'GROUND FLOOR', 'D708', 'LECTURE', 'Lecture room', '', ''),
(54, 'GROUND FLOOR', 'D707', 'LECTURE', 'Lecture room', '', ''),
(55, 'GROUND FLOOR', 'D706', 'Laboratory', 'Housekeeping Lab', '', ''),
(56, 'GROUND FLOOR', 'D705', 'Laboratory', 'Front Office Lab', '', ''),
(57, 'GROUND FLOOR', 'D704', 'OFFICE/ Laboratory', 'Demo Lab', '', ''),
(58, 'GROUND FLOOR', 'D703', 'LECTURE', 'Lecture room', '', ''),
(59, 'GROUND FLOOR', 'D702', 'LECTURE', 'Lecture room/ Multimedia ', '', ''),
(60, 'GROUND FLOOR', 'D701', 'LECTURE', 'Housekeeping Stock Room', '', ''),
(61, 'GROUND FLOOR', 'D721', 'OFFICE', 'SQC Office', '', ''),
(62, 'GROUND FLOOR', 'D722', 'Laboratory', 'Comp Lab & Tech Room', '', ''),
(63, 'GROUND FLOOR', 'D723', 'Laboratory', 'Comp Lab & Tech Room', '', ''),
(64, 'GROUND FLOOR', 'D724', 'Laboratory', 'Comp Lab & 1 Tech Room', '', ''),
(65, 'GROUND FLOOR', 'D725', 'Laboratory', 'Comp Lab & 1 Office/ Server Room', '', ''),
(66, 'GROUND FLOOR', 'D726', 'LECTURE', 'Lecture room', '', ''),
(67, 'FIRST BASEMENT', 'D608', 'LECTURE', 'Lecture room', '', ''),
(68, 'FIRST BASEMENT', 'D607', 'LECTURE', 'Lecture room', '', ''),
(69, 'FIRST BASEMENT', 'D606', 'LECTURE', 'Lecture room', '', ''),
(70, 'FIRST BASEMENT', 'D605', 'LECTURE', 'Lecture room', '', ''),
(71, 'FIRST BASEMENT', 'D604', 'LECTURE', 'Lecture room', '', ''),
(72, 'FIRST BASEMENT', 'D603', 'LECTURE', 'Lecture room', '', ''),
(73, 'FIRST BASEMENT', 'D602', 'LECTURE', 'Lecture room', '', ''),
(74, 'FIRST BASEMENT', 'D601', 'OFFICE', 'SSD Office', '', ''),
(75, 'FIRST BASEMENT', 'D621', 'OFFICE', 'General Education Faculty Room', '', ''),
(76, 'FIRST BASEMENT', 'D622', 'LECTURE', 'Lecture room', '', ''),
(77, 'FIRST BASEMENT', 'D623', 'LECTURE', 'Lecture room', '', ''),
(78, 'FIRST BASEMENT', 'D624', 'OTHERS', 'Prayer Room', '', ''),
(79, 'FIRST BASEMENT', 'D625', 'LECTURE', 'Lecture room', '', ''),
(80, 'FIRST BASEMENT', 'D626', 'LECTURE', 'Lecture room', '', ''),
(81, 'FIRST BASEMENT', 'D627', 'LECTURE', 'Lecture room', '', ''),
(82, 'FIRST BASEMENT', 'D628', 'LECTURE', 'Lecture room', '', ''),
(83, 'FIRST BASEMENT', 'PLAZA', 'OTHERS', 'Devesse Plaza', '1000', ''),
(84, 'SECOND BASEMENT', 'D515', 'LECTURE', 'Lecture room', '', ''),
(85, 'SECOND BASEMENT', 'D514', 'LECTURE', 'Lecture room', '', ''),
(86, 'SECOND BASEMENT', 'D513', 'LECTURE', 'Lecture room', '', ''),
(87, 'SECOND BASEMENT', 'D512', 'LECTURE', 'Lecture room', '', ''),
(88, 'SECOND BASEMENT', 'D511', 'LECTURE', 'Lecture room', '', ''),
(89, 'SECOND BASEMENT', 'D510', 'LECTURE', 'Lecture room', '', ''),
(90, 'SECOND BASEMENT', 'D509', 'LECTURE', 'Lecture room', '', ''),
(91, 'SECOND BASEMENT', 'D508', 'LECTURE', 'Lecture room', '', ''),
(92, 'SECOND BASEMENT', 'D507', 'LECTURE', 'Lecture room', '', ''),
(93, 'SECOND BASEMENT', 'D506', 'LECTURE', 'Lecture room', '', ''),
(94, 'SECOND BASEMENT', 'D505', 'LECTURE', 'Lecture room', '', ''),
(95, 'SECOND BASEMENT', 'D504', 'LECTURE', 'Lecture room', '', ''),
(96, 'SECOND BASEMENT', 'D503', 'LECTURE', 'Lecture room', '', ''),
(97, 'SECOND BASEMENT', 'D502', 'LECTURE', 'Lecture room', '', ''),
(98, 'SECOND BASEMENT', 'D501', 'OFFICE', 'General Education Faculty Room', '', ''),
(99, 'SECOND BASEMENT', 'D521', 'OFFICE', 'General Education Faculty Room', '', ''),
(100, 'SECOND BASEMENT', 'D522', 'LECTURE', 'Lecture room', '', ''),
(101, 'SECOND BASEMENT', 'D523', 'LECTURE', 'Lecture room', '', ''),
(102, 'SECOND BASEMENT', 'D524', 'LECTURE', 'Lecture room', '', ''),
(103, 'SECOND BASEMENT', 'D525', 'LECTURE', 'Lecture room', '', ''),
(104, 'SECOND BASEMENT', 'D526', 'LECTURE', 'Lecture room', '', ''),
(105, 'SECOND BASEMENT', 'D527', 'LECTURE', 'Lecture room', '', ''),
(106, 'SECOND BASEMENT', 'D528', 'LECTURE', 'Lecture room', '', ''),
(107, 'THIRD BASEMENT', 'D414', 'LECTURE', 'Lecture room', '', ''),
(108, 'THIRD BASEMENT', 'D413', 'LECTURE', 'Lecture room', '', ''),
(109, 'THIRD BASEMENT', 'D412', 'LECTURE', 'Lecture room', '', ''),
(110, 'THIRD BASEMENT', 'D411', 'LECTURE', 'Lecture room', '', ''),
(111, 'THIRD BASEMENT', 'D406', 'LECTURE', 'Lecture room', '', ''),
(112, 'THIRD BASEMENT', 'D405', 'LECTURE', 'Lecture room', '', ''),
(113, 'THIRD BASEMENT', 'D404', 'LECTURE', 'P E/Lecture room', '', ''),
(114, 'THIRD BASEMENT', 'D403', 'LECTURE', 'P E/Lecture room', '', ''),
(115, 'THIRD BASEMENT', 'D402', 'LECTURE', 'P E/Lecture room', '', ''),
(116, 'THIRD BASEMENT', 'D401', 'OFFICE', 'P E/Lecture room', '', ''),
(117, 'THIRD BASEMENT', 'D421', 'OFFICE', 'General Education Faculty Room', '', ''),
(118, 'THIRD BASEMENT', 'D422', 'LECTURE', 'Lecture room', '', ''),
(119, 'THIRD BASEMENT', 'D423', 'LECTURE', 'Lecture room', '', ''),
(120, 'THIRD BASEMENT', 'D424', 'LECTURE', 'Lecture room', '', ''),
(121, 'THIRD BASEMENT', 'D425', 'LECTURE', 'Lecture room', '', ''),
(122, 'THIRD BASEMENT', 'D426', 'LECTURE', 'Lecture room', '', ''),
(123, 'THIRD BASEMENT', 'D427', 'LECTURE', 'Lecture room', '', ''),
(124, 'THIRD BASEMENT', 'D428', 'LECTURE', 'Lecture room', '', ''),
(125, 'THIRD BASEMENT', 'Accounting', 'OFFICE', 'ACCOUNTING', '', ''),
(126, 'THIRD BASEMENT', 'Bookstore', 'OTHERS', 'BOOKSTORE', '', ''),
(127, 'FOURTH BASEMENT', 'D303', 'LECTURE', 'Lecture room', '', ''),
(128, 'FOURTH BASEMENT', 'D302', 'LECTURE', 'Lecture room', '', ''),
(129, 'FOURTH BASEMENT', 'D301', 'OTHERS', 'CANTEEN', '', ''),
(130, 'FOURTH BASEMENT', 'D321', 'LECTURE', 'Lecture room', '', ''),
(131, 'FOURTH BASEMENT', 'D322', 'LECTURE', 'Lecture room', '', ''),
(132, 'FOURTH BASEMENT', 'D323', 'LECTURE', 'Lecture room', '', ''),
(133, 'FOURTH BASEMENT', 'D324', 'LECTURE', 'Lecture room', '', ''),
(134, 'FOURTH BASEMENT', 'D325', 'LECTURE', 'Lecture room', '', ''),
(135, 'FOURTH BASEMENT', 'D326', 'LECTURE', 'Lecture room', '', ''),
(136, 'FOURTH BASEMENT', 'D327', 'LECTURE', 'Lecture room', '', ''),
(137, 'FIFTH BASEMENT', 'D221', 'LECTURE', 'Lecture room', '', ''),
(138, 'FIFTH BASEMENT', 'D222', 'LECTURE', 'Lecture room', '', ''),
(139, 'FIFTH BASEMENT', 'D223', 'LECTURE', 'Lecture room', '', ''),
(140, 'FIFTH BASEMENT', 'D224', 'LECTURE', 'Lecture room', '', ''),
(141, 'SIXTH BASEMENT', 'CANTEEN', 'OTHERS', 'CANTEEN', '', ''),
(142, 'SIXTH BASEMENT', 'SSD OFFICE', 'OFFICE', 'SSD OFFICE', '1 Staff', ''),
(143, 'OVAL', 'OVAL AREA', 'COURT', 'Basketball Court', '', ''),
(144, 'OVAL', 'OVAL AREA', 'COURT', 'Volleyball/Tennis Court', '', ''),
(145, 'OVAL', 'OVAL AREA', 'COURT', 'Fr. Desmedt Oval', '', ''),
(146, 'AMPHITHEATRE', 'Amphitheatre', 'Stage Area', 'AMPHITHEATRE', '1000', '');
(1, 'First Basement', 'Plaza\r\n', 'others', 'Devesse Plaza', 1000, ''),
(2, '4th floor', 'D1002', 'OTHERS', 'MINI-AVR/ CONFERENCE ROOM/ MULTIMEDIA', 20, ''),
(3, '4th floor', 'D1001', 'OTHERS', 'AVR /MULTIMEDIA', 3, ''),
(4, '4th floor', 'Library', 'OTHERS', 'LIBRARY', 200, ''),
(5, '4th floor', 'Librarians Office', 'OTHERS', 'Librarians Office', 0, ''),
(6, '4th floor', 'Multimedia Room', 'OTHERS', 'Multimedia Room', 0, ''),
(7, '4th floor', 'Workroom', 'OTHERS', 'Workroom', 0, ''),
(8, '4th floor', 'D1028', 'Laboratory', 'Culinary Lab (BAKING)', 0, ''),
(9, '4th floor', 'D1027', 'Laboratory', 'Culinary Lab (International Cuisine)', 0, ''),
(10, '4th floor', 'D1026', 'OTHERS', 'HTM Storeroom', 0, ''),
(11, '4th floor', 'D1025', 'OTHERS', 'Crockery 1', 2, ''),
(12, '4th floor', 'D1024', 'OFFICE', 'Crockery Office', 0, ''),
(13, '4th floor', 'D1023', 'Laboratory', 'Culinary Lab (Reserve)', 0, ''),
(14, '4th floor', 'D1022', 'Laboratory', 'Culinary Lab (Basic)', 0, ''),
(15, '4th floor', 'D1021', 'OTHERS', 'Crockery 2', 0, ''),
(16, '3rd Floor', 'D906', 'LECTURE', 'NSTP room/ Multimedia', 0, ''),
(17, '3rd Floor', 'D905', 'LECTURE', 'Lecture room/ Multimedia', 0, ''),
(18, '3rd Floor', 'D904', 'LECTURE', 'Lecture room/ Multimedia', 0, ''),
(19, '3rd Floor', 'D903', 'LECTURE', 'Lecture room', 0, ''),
(20, '3rd Floor', 'D902', 'LECTURE', 'Lecture room/ Multimedia', 0, ''),
(21, '3rd Floor', 'D901', 'LECTURE', 'Lecture room', 0, ''),
(22, '3rd Floor', 'D911', 'OTHERS', 'Filing/ Stock room', 0, ''),
(23, '3rd Floor', 'D912', 'OFFICE', 'Bread Office', 0, ''),
(24, '3rd Floor', 'D913', 'OTHERS', 'Defense/ Conference Room', 0, ''),
(25, '3rd Floor', 'D914', 'OFFICE', 'President\'s Office', 0, ''),
(26, '3rd Floor', 'D915', 'OFFICE', 'Dean\'s Office, 1 Conference room', 0, ''),
(27, '3rd Floor', 'D921', 'OFFICE', 'General Education Faculty Room', 0, ''),
(28, '3rd Floor', 'D922', 'OFFICE', 'SABM GPC', 0, ''),
(29, '3rd Floor', 'D923', 'OFFICE', 'Equipment Room', 0, ''),
(30, '3rd Floor', 'D924', 'OTHERS', 'Internet Library', 0, ''),
(31, '3rd Floor', 'D925', 'LECTURE', 'Lecture room/ Multimedia', 0, ''),
(32, '3rd Floor', 'FACULTY CENTER', 'OFFICE', 'Faculty Center', 0, ''),
(33, '2nd Floor', 'D807', 'LECTURE', 'Lecture room', 0, ''),
(34, '2nd Floor', 'D806', 'LECTURE', 'Lecture room', 0, ''),
(35, '2nd Floor', 'D805', 'OFFICE', 'Registrar\'s Office', 0, ''),
(36, '2nd Floor', 'D804', 'OFFICE', 'Department Heads Office', 0, ''),
(37, '2nd Floor', 'D803', 'LECTURE', 'Lecture room', 0, ''),
(38, '2nd Floor', 'D802', 'LECTURE', 'Lecture room', 0, ''),
(39, '2nd Floor', 'D801', 'LECTURE', 'Lecture room', 0, ''),
(40, '2nd Floor', 'D811', 'OFFICE', 'Parish Office', 0, ''),
(41, '2nd Floor', 'D812', 'CLINIC', 'Dental Clinic', 0, ''),
(42, '2nd Floor', 'D813', 'CLINIC', 'Medical Clinic', 0, ''),
(43, '2nd Floor', 'D814', 'LECTURE', 'Lecture room (Former DH Office)', 20, ''),
(44, '2nd Floor', 'D815', 'OFFICE', 'SAO (1 Office & 1 Receiving/ waiting area', 0, ''),
(45, '2nd Floor', 'D816', 'OFFICE', 'Guidance Office (3 offices & 1 receiving area)', 0, ''),
(46, '2nd Floor', 'D821', 'LECTURE', 'Lecture room', 0, ''),
(47, '2nd Floor', 'D822', 'LECTURE', 'Lecture room', 0, ''),
(48, '2nd Floor', 'D823', 'LECTURE', 'Lecture room', 0, ''),
(49, '2nd Floor', 'D824', 'OTHERS', 'Guidance Testing Center', 0, ''),
(50, '2nd Floor', 'D825', 'Laboratory', 'F&B LAB', 0, ''),
(51, '2nd Floor', 'D826', 'Laboratory', 'HTM Function Lab/ Multimedia', 0, ''),
(52, 'GROUND FLOOR', 'D709', 'LECTURE', 'Lecture room', 0, ''),
(53, 'GROUND FLOOR', 'D708', 'LECTURE', 'Lecture room', 0, ''),
(54, 'GROUND FLOOR', 'D707', 'LECTURE', 'Lecture room', 0, ''),
(55, 'GROUND FLOOR', 'D706', 'Laboratory', 'Housekeeping Lab', 0, ''),
(56, 'GROUND FLOOR', 'D705', 'Laboratory', 'Front Office Lab', 0, ''),
(57, 'GROUND FLOOR', 'D704', 'OFFICE/ Laboratory', 'Demo Lab', 0, ''),
(58, 'GROUND FLOOR', 'D703', 'LECTURE', 'Lecture room', 0, ''),
(59, 'GROUND FLOOR', 'D702', 'LECTURE', 'Lecture room/ Multimedia ', 0, ''),
(60, 'GROUND FLOOR', 'D701', 'LECTURE', 'Housekeeping Stock Room', 0, ''),
(61, 'GROUND FLOOR', 'D721', 'OFFICE', 'SQC Office', 0, ''),
(62, 'GROUND FLOOR', 'D722', 'Laboratory', 'Comp Lab & Tech Room', 0, ''),
(63, 'GROUND FLOOR', 'D723', 'Laboratory', 'Comp Lab & Tech Room', 0, ''),
(64, 'GROUND FLOOR', 'D724', 'Laboratory', 'Comp Lab & 1 Tech Room', 0, ''),
(65, 'GROUND FLOOR', 'D725', 'Laboratory', 'Comp Lab & 1 Office/ Server Room', 0, ''),
(66, 'GROUND FLOOR', 'D726', 'LECTURE', 'Lecture room', 0, ''),
(67, 'FIRST BASEMENT', 'D608', 'LECTURE', 'Lecture room', 0, ''),
(68, 'FIRST BASEMENT', 'D607', 'LECTURE', 'Lecture room', 0, ''),
(69, 'FIRST BASEMENT', 'D606', 'LECTURE', 'Lecture room', 0, ''),
(70, 'FIRST BASEMENT', 'D605', 'LECTURE', 'Lecture room', 0, ''),
(71, 'FIRST BASEMENT', 'D604', 'LECTURE', 'Lecture room', 0, ''),
(72, 'FIRST BASEMENT', 'D603', 'LECTURE', 'Lecture room', 0, ''),
(73, 'FIRST BASEMENT', 'D602', 'LECTURE', 'Lecture room', 0, ''),
(74, 'FIRST BASEMENT', 'D601', 'OFFICE', 'SSD Office', 0, ''),
(75, 'FIRST BASEMENT', 'D621', 'OFFICE', 'General Education Faculty Room', 0, ''),
(76, 'FIRST BASEMENT', 'D622', 'LECTURE', 'Lecture room', 0, ''),
(77, 'FIRST BASEMENT', 'D623', 'LECTURE', 'Lecture room', 0, ''),
(78, 'FIRST BASEMENT', 'D624', 'OTHERS', 'Prayer Room', 0, ''),
(79, 'FIRST BASEMENT', 'D625', 'LECTURE', 'Lecture room', 0, ''),
(80, 'FIRST BASEMENT', 'D626', 'LECTURE', 'Lecture room', 0, ''),
(81, 'FIRST BASEMENT', 'D627', 'LECTURE', 'Lecture room', 0, ''),
(82, 'FIRST BASEMENT', 'D628', 'LECTURE', 'Lecture room', 0, ''),
(83, 'FIRST BASEMENT', 'PLAZA', 'OTHERS', 'Devesse Plaza', 1000, ''),
(84, 'SECOND BASEMENT', 'D515', 'LECTURE', 'Lecture room', 0, ''),
(85, 'SECOND BASEMENT', 'D514', 'LECTURE', 'Lecture room', 0, ''),
(86, 'SECOND BASEMENT', 'D513', 'LECTURE', 'Lecture room', 0, ''),
(87, 'SECOND BASEMENT', 'D512', 'LECTURE', 'Lecture room', 0, ''),
(88, 'SECOND BASEMENT', 'D511', 'LECTURE', 'Lecture room', 0, ''),
(89, 'SECOND BASEMENT', 'D510', 'LECTURE', 'Lecture room', 0, ''),
(90, 'SECOND BASEMENT', 'D509', 'LECTURE', 'Lecture room', 0, ''),
(91, 'SECOND BASEMENT', 'D508', 'LECTURE', 'Lecture room', 0, ''),
(92, 'SECOND BASEMENT', 'D507', 'LECTURE', 'Lecture room', 0, ''),
(93, 'SECOND BASEMENT', 'D506', 'LECTURE', 'Lecture room', 0, ''),
(94, 'SECOND BASEMENT', 'D505', 'LECTURE', 'Lecture room', 0, ''),
(95, 'SECOND BASEMENT', 'D504', 'LECTURE', 'Lecture room', 0, ''),
(96, 'SECOND BASEMENT', 'D503', 'LECTURE', 'Lecture room', 0, ''),
(97, 'SECOND BASEMENT', 'D502', 'LECTURE', 'Lecture room', 0, ''),
(98, 'SECOND BASEMENT', 'D501', 'OFFICE', 'General Education Faculty Room', 0, ''),
(99, 'SECOND BASEMENT', 'D521', 'OFFICE', 'General Education Faculty Room', 0, ''),
(100, 'SECOND BASEMENT', 'D522', 'LECTURE', 'Lecture room', 0, ''),
(101, 'SECOND BASEMENT', 'D523', 'LECTURE', 'Lecture room', 0, ''),
(102, 'SECOND BASEMENT', 'D524', 'LECTURE', 'Lecture room', 0, ''),
(103, 'SECOND BASEMENT', 'D525', 'LECTURE', 'Lecture room', 0, ''),
(104, 'SECOND BASEMENT', 'D526', 'LECTURE', 'Lecture room', 0, ''),
(105, 'SECOND BASEMENT', 'D527', 'LECTURE', 'Lecture room', 0, ''),
(106, 'SECOND BASEMENT', 'D528', 'LECTURE', 'Lecture room', 0, ''),
(107, 'THIRD BASEMENT', 'D414', 'LECTURE', 'Lecture room', 0, ''),
(108, 'THIRD BASEMENT', 'D413', 'LECTURE', 'Lecture room', 0, ''),
(109, 'THIRD BASEMENT', 'D412', 'LECTURE', 'Lecture room', 0, ''),
(110, 'THIRD BASEMENT', 'D411', 'LECTURE', 'Lecture room', 0, ''),
(111, 'THIRD BASEMENT', 'D406', 'LECTURE', 'Lecture room', 0, ''),
(112, 'THIRD BASEMENT', 'D405', 'LECTURE', 'Lecture room', 0, ''),
(113, 'THIRD BASEMENT', 'D404', 'LECTURE', 'P E/Lecture room', 0, ''),
(114, 'THIRD BASEMENT', 'D403', 'LECTURE', 'P E/Lecture room', 0, ''),
(115, 'THIRD BASEMENT', 'D402', 'LECTURE', 'P E/Lecture room', 0, ''),
(116, 'THIRD BASEMENT', 'D401', 'OFFICE', 'P E/Lecture room', 0, ''),
(117, 'THIRD BASEMENT', 'D421', 'OFFICE', 'General Education Faculty Room', 0, ''),
(118, 'THIRD BASEMENT', 'D422', 'LECTURE', 'Lecture room', 0, ''),
(119, 'THIRD BASEMENT', 'D423', 'LECTURE', 'Lecture room', 0, ''),
(120, 'THIRD BASEMENT', 'D424', 'LECTURE', 'Lecture room', 0, ''),
(121, 'THIRD BASEMENT', 'D425', 'LECTURE', 'Lecture room', 0, ''),
(122, 'THIRD BASEMENT', 'D426', 'LECTURE', 'Lecture room', 0, ''),
(123, 'THIRD BASEMENT', 'D427', 'LECTURE', 'Lecture room', 0, ''),
(124, 'THIRD BASEMENT', 'D428', 'LECTURE', 'Lecture room', 0, ''),
(125, 'THIRD BASEMENT', 'Accounting', 'OFFICE', 'ACCOUNTING', 0, ''),
(126, 'THIRD BASEMENT', 'Bookstore', 'OTHERS', 'BOOKSTORE', 0, ''),
(127, 'FOURTH BASEMENT', 'D303', 'LECTURE', 'Lecture room', 0, ''),
(128, 'FOURTH BASEMENT', 'D302', 'LECTURE', 'Lecture room', 0, ''),
(129, 'FOURTH BASEMENT', 'D301', 'OTHERS', 'CANTEEN', 0, ''),
(130, 'FOURTH BASEMENT', 'D321', 'LECTURE', 'Lecture room', 0, ''),
(131, 'FOURTH BASEMENT', 'D322', 'LECTURE', 'Lecture room', 0, ''),
(132, 'FOURTH BASEMENT', 'D323', 'LECTURE', 'Lecture room', 0, ''),
(133, 'FOURTH BASEMENT', 'D324', 'LECTURE', 'Lecture room', 0, ''),
(134, 'FOURTH BASEMENT', 'D325', 'LECTURE', 'Lecture room', 0, ''),
(135, 'FOURTH BASEMENT', 'D326', 'LECTURE', 'Lecture room', 0, ''),
(136, 'FOURTH BASEMENT', 'D327', 'LECTURE', 'Lecture room', 0, ''),
(137, 'FIFTH BASEMENT', 'D221', 'LECTURE', 'Lecture room', 0, ''),
(138, 'FIFTH BASEMENT', 'D222', 'LECTURE', 'Lecture room', 0, ''),
(139, 'FIFTH BASEMENT', 'D223', 'LECTURE', 'Lecture room', 0, ''),
(140, 'FIFTH BASEMENT', 'D224', 'LECTURE', 'Lecture room', 0, ''),
(141, 'SIXTH BASEMENT', 'CANTEEN', 'OTHERS', 'CANTEEN', 0, ''),
(142, 'SIXTH BASEMENT', 'SSD OFFICE', 'OFFICE', 'SSD OFFICE', 1, ''),
(143, 'OVAL', 'OVAL AREA', 'COURT', 'Basketball Court', 0, ''),
(144, 'OVAL', 'OVAL AREA', 'COURT', 'Volleyball/Tennis Court', 0, ''),
(145, 'OVAL', 'OVAL AREA', 'COURT', 'Fr. Desmedt Oval', 0, ''),
(146, 'AMPHITHEATRE', 'Amphitheatre', 'Stage Area', 'AMPHITHEATRE', 1000, ''),
(147, 'Mezzanine', 'Mezzanine', 'OTHERS', 'LIBRARY READING AREA/ TESTING AREA', 300, ''),
(148, '4th floor', 'D1002', 'OTHERS', 'MINI-AVR/ CONFERENCE ROOM/ MULTIMEDIA', 20, '');

-- --------------------------------------------------------

@ -331,26 +287,27 @@ INSERT INTO `facility` (`FacID`, `Level`, `room`, `roomType`, `description`, `ca

CREATE TABLE `reservation` (
  `resID` int(100) NOT NULL,
  `Client_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `Venue` varchar(100) NOT NULL,
  `start_event` datetime NOT NULL,
  `end_event` datetime NOT NULL,
  `status` varchar(100) NOT NULL
  `status` varchar(100) NOT NULL DEFAULT 'Pending'
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
INSERT INTO `reservation` (`resID`, `user_ID`, `title`, `Venue`, `start_event`, `end_event`, `status`) VALUES
(21, 26, 'Ballers', '', '2019-04-19 00:00:00', '2019-04-20 00:00:00', 'Approved'),
(24, 0, 'Mass', '', '2019-04-19 00:00:00', '2019-04-20 00:00:00', 'Approved'),
(26, 25, 'No class', '', '2019-04-19 00:00:00', '2019-04-21 00:00:00', 'Approved'),
(32, 25, 'Party', '', '2019-04-23 12:00:00', '2019-04-23 16:00:00', 'Approved'),
(36, 47, 'Party', '', '2019-04-25 00:00:00', '2019-04-25 10:00:00', 'Approved'),
(40, 47, 'Meeting', 'AVR', '2019-04-18 00:00:00', '2019-04-19 00:00:00', 'Pending'),
(41, 47, 'Meeting', 'AVR', '2019-04-17 00:00:00', '2019-04-18 00:00:00', 'Pending'),
(42, 47, 'overnight', 'Jeks', '2019-04-24 00:00:00', '2019-04-25 00:00:00', 'Pending');

-- --------------------------------------------------------

@ -377,10 +334,10 @@ INSERT INTO `services` (`serID`, `typeOfService`) VALUES
--

--
-- Indexes for table `admin`
-- Indexes for table `accounts`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `classroom`
@ -388,25 +345,12 @@ ALTER TABLE `admin`
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
@ -430,10 +374,10 @@ ALTER TABLE `services`
--

--
-- AUTO_INCREMENT for table `admin`
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `accounts`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `classroom`
@ -441,35 +385,23 @@ ALTER TABLE `admin`
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
  MODIFY `EquipID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `FacID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
  MODIFY `FacID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `resID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
  MODIFY `resID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `services`