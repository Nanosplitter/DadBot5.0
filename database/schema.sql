-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: na01-sql.pebblehost.com
-- Generation Time: May 29, 2023 at 06:06 PM
-- Server version: 10.2.41-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer_371032_dadbot`
--
CREATE DATABASE IF NOT EXISTS `customer_371032_dadbot` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `customer_371032_dadbot`;

-- --------------------------------------------------------

--
-- Table structure for table `birthdays`
--

CREATE TABLE `birthdays` (
  `id` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `mention` varchar(100) NOT NULL,
  `channel_id` varchar(100) NOT NULL,
  `birthday` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birthdays`
--

INSERT INTO `birthdays` (`id`, `author`, `mention`, `channel_id`, `birthday`) VALUES
(14, 'Mr_J', '<@!206236569286344706>', '856919399789625376', '2023-03-26 04:00:00'),
(17, 'Mittens-for-littens', '<@!499713121989033985>', '856919399789625376', '2023-01-30 05:00:00'),
(18, 'michaela', '<@!464485453492518922>', '856919399789625376', '2022-11-24 05:00:00'),
(22, 'Arcadia', '<@!262729556304199692>', '856919399789625376', '2023-02-14 05:00:00'),
(23, 'andrea17', '<@!693192159909642273>', '856919399789625376', '2023-03-17 04:00:00'),
(25, 'Legohnaut', '<@!629900384642793472>', '856919399789625376', '2022-08-27 04:00:00'),
(27, 'Ari J Atori', '<@!628643213900775454>', '856919399789625376', '2023-01-30 05:00:00'),
(28, 'chiara5576', '<@!355928972917211147>', '856919399789625376', '2022-08-28 04:00:00'),
(30, 'A2Mail', '<@!342115113190555670>', '408321710568505346', '2038-12-01 05:00:00'),
(31, 'kmasing', '<@!158415200289030144>', '408321710568505346', '1297-12-01 04:56:00'),
(34, 'keegan', '<@!293482309296848896>', '856919399789625376', '2022-08-13 04:00:00'),
(35, 'jrgeno', '<@!341896667504836608>', '856919399789625376', '2022-06-28 04:00:00'),
(36, 'Nanosplitter', '<@!340690145324040192>', '856919399789625376', '2023-01-04 05:00:00'),
(37, 'Nevermore', '<@!223937816483069952>', '856919399789625376', '2023-05-05 04:00:00'),
(38, 'Josh Brink', '<@!437085901714358279>', '856919399789625376', '2022-07-01 04:00:00'),
(39, 'Elizabeth.Varton', '<@!776256478877057035>', '856919399789625376', '2022-08-28 04:00:00'),
(40, 'Scooby_Doo', 'Scooby Doo', '856919399789625376', '2022-09-13 04:00:00'),
(46, 'Surazal', '<@!766345813538242653>', '843953606964019209', '2023-01-03 05:00:00'),
(49, 'Surazal', '<@!766345813538242653>', '408321710568505346', '2032-01-01 05:00:00'),
(50, 'akkitaset', '<@537054604358189056>', '843953606964019209', '2002-02-10 05:00:00'),
(51, 'Cap', '<@703049296538501151>', '408321710568505346', '2023-07-01 04:00:00'),
(52, 'Nanosplitter', '<@!340690145324040192>', '408321710568505346', '2023-01-04 05:00:00'),
(53, 'FlyingPancake', '<@214000460875563008>', '408321710568505346', '2003-01-02 05:00:00'),
(54, 'Nanosplitter', '<@340690145324040192>', '928402405102587978', '2023-01-04 05:00:00'),
(55, 'Hollis', '<@195348010811654146>', '928402405102587978', '2023-06-23 04:00:00'),
(56, 'Surazal', '<@766345813538242653>', '634551206450036746', '2023-04-04 04:00:00'),
(57, 'akkitaset', '<@537054604358189056>', '408321710568505346', '2023-02-10 05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `birthdays_4`
--

CREATE TABLE `birthdays_4` (
  `id` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `mention` varchar(100) NOT NULL,
  `channel_id` varchar(100) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birthdays_4`
--

INSERT INTO `birthdays_4` (`id`, `author`, `mention`, `channel_id`, `month`, `day`) VALUES
(14, 'Mr_J', '<@!206236569286344706>', '856919399789625376', 3, 26),
(17, 'Mittens-for-littens', '<@!499713121989033985>', '856919399789625376', 1, 30),
(18, 'michaela', '<@!464485453492518922>', '856919399789625376', 11, 24),
(22, 'Arcadia', '<@!262729556304199692>', '856919399789625376', 2, 14),
(23, 'andrea17', '<@!693192159909642273>', '856919399789625376', 3, 17),
(25, 'Legohnaut', '<@!629900384642793472>', '856919399789625376', 8, 27),
(27, 'Ari J Atori', '<@!628643213900775454>', '856919399789625376', 1, 30),
(28, 'chiara5576', '<@!355928972917211147>', '856919399789625376', 8, 28),
(30, 'A2Mail', '<@!342115113190555670>', '408321710568505346', 12, 1),
(31, 'kmasing', '<@!158415200289030144>', '408321710568505346', 12, 1),
(34, 'keegan', '<@!293482309296848896>', '856919399789625376', 8, 13),
(35, 'jrgeno', '<@!341896667504836608>', '856919399789625376', 6, 28),
(36, 'Nanosplitter', '<@!340690145324040192>', '856919399789625376', 1, 4),
(37, 'Nevermore', '<@!223937816483069952>', '856919399789625376', 5, 5),
(38, 'Josh Brink', '<@!437085901714358279>', '856919399789625376', 7, 1),
(39, 'Elizabeth.Varton', '<@!776256478877057035>', '856919399789625376', 8, 28),
(40, 'Scooby_Doo', 'Scooby Doo', '856919399789625376', 9, 13),
(46, 'Surazal', '<@!766345813538242653>', '843953606964019209', 1, 3),
(49, 'Surazal', '<@!766345813538242653>', '408321710568505346', 1, 1),
(50, 'akkitaset', '<@537054604358189056>', '843953606964019209', 2, 10),
(51, 'Cap', '<@703049296538501151>', '408321710568505346', 7, 1),
(52, 'Nanosplitter', '<@!340690145324040192>', '408321710568505346', 1, 4),
(53, 'FlyingPancake', '<@214000460875563008>', '408321710568505346', 1, 2),
(54, 'Nanosplitter', '<@340690145324040192>', '928402405102587978', 1, 4),
(55, 'Hollis', '<@195348010811654146>', '928402405102587978', 6, 23),
(56, 'Surazal', '<@766345813538242653>', '634551206450036746', 4, 4),
(57, 'akkitaset', '<@537054604358189056>', '408321710568505346', 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `caught`
--

CREATE TABLE `caught` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caught`
--

INSERT INTO `caught` (`id`, `user`, `count`) VALUES
(1, 'blood#8905', 30),
(2, 'Nanosplitter#4549', 150),
(3, 'jrgeno#1544', 99),
(4, 'andrea17#8508', 229),
(5, 'Legohnaut#8195', 34),
(6, 'Mr_J#1241', 45),
(7, 'Nevermore#1605', 106),
(8, 'keegan#0666', 237),
(9, 'TheFizz#4603', 18),
(10, 'Mittens-for-littens#1250', 149),
(11, 'samTheEnby#3922', 13),
(12, 'Josh Roznowski#1785', 8),
(13, 'sunblessedshadow#6832', 2),
(14, 'Sakib Jabbar#5495', 1),
(15, 'Elizabeth.Varton#0916', 156),
(16, 'Ari J Atori#3085', 1),
(17, 'chiara5576#4079', 25),
(18, 'apollac#2370', 3),
(19, 'WtchDctr#3979', 9),
(20, 'Turbocat#5997', 1),
(21, 'Deren Bozer#0869', 1),
(22, 'yutaka#7252', 1),
(23, 'zappy5#0968', 1),
(24, 'thealtining#1953', 1),
(25, 'jasonr#0026', 2),
(26, 'Zabamafoo#0314', 1),
(27, 'A2Mail#7115', 3),
(28, 'buttstallion#5163', 5),
(29, 'Arcadia#6010', 4),
(30, 'michaela#1018', 26),
(31, 'Josh Brink#1785', 13),
(32, 'kmasing#7497', 3),
(33, 'Surazal#9926', 3),
(34, 'ion.#6969', 1),
(35, 'Nova_#0059', 1),
(36, 'Picalsecond#1374', 1),
(37, 'ElanMoldovean#6094', 2),
(38, 'akkitaset#4219', 2),
(39, 'Sam [he/they]#3922', 46),
(40, 'xel#0843', 1),
(41, 'Cap#8861', 1),
(42, 'SpartanGirl#8052', 2),
(43, 'Thundur#4805', 1),
(44, 'K$!#5629', 4),
(45, 'Hollis#5416', 1),
(46, 'Just_J#1241', 9),
(47, 'Ryan Kim#8869', 2),
(48, 'CosmoMan#5483', 1),
(49, 'Wolverine#8865', 1),
(50, 'BigJuicySteve#9797', 1),
(51, 'burr#1420', 4),
(52, 'WoodyWoodson#0173', 4),
(68, 'FatRat#4785', 1),
(69, 'Dad#6095', 3),
(80, 'FlyingPancake#4663', 1),
(87, 'tubebar#3706', 4),
(89, 'patrickj#0767', 1),
(96, 'dabigginga#3562', 2),
(123, 'PapaDread#9390', 1),
(131, 'Nate Stringham#6220', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `message_id` varchar(100) NOT NULL,
  `remind_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`id`, `author`, `message_id`, `remind_time`) VALUES
(183, 'Nanosplitter#4549', '1016862913920774185', '2023-09-01 04:00:00'),
(196, 'Nanosplitter#4549', '1058892206754234418', '2023-10-01 04:00:00'),
(198, 'Nevermore#1605', '1080191258380730488', '2023-06-28 17:14:31');

-- --------------------------------------------------------

--
-- Table structure for table `remindme`
--

CREATE TABLE `remindme` (
  `id` int(11) NOT NULL,
  `who` varchar(100) NOT NULL,
  `who_id` varchar(100) NOT NULL,
  `what` varchar(250) NOT NULL,
  `time` datetime NOT NULL,
  `channel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remindme`
--

INSERT INTO `remindme` (`id`, `who`, `who_id`, `what`, `time`, `channel`) VALUES
(27, 'Nevermore', '223937816483069952', 'Remind Colin not to use Vulkan', '2023-06-28 17:14:31', '911391055868469358'),
(36, 'Nanosplitter', '340690145324040192', 'ask Jesse what his opinion is on community', '2023-07-31 02:21:22', '856919399789625376');

-- --------------------------------------------------------

--
-- Table structure for table `server_settings`
--

CREATE TABLE `server_settings` (
  `server_id` int(11) NOT NULL,
  `caught_chance` int(11) NOT NULL DEFAULT 10,
  `praise_channel` varchar(100) DEFAULT NULL,
  `wtm_channel` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `steplogs`
--

CREATE TABLE `steplogs` (
  `id` int(11) NOT NULL,
  `server_id` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `steps` int(11) NOT NULL,
  `submit_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `steplogs`
--

INSERT INTO `steplogs` (`id`, `server_id`, `user`, `steps`, `submit_time`) VALUES
(19, '856919397754470420', 'Josh Brink#1785', 9359, '2023-05-02 14:04:05'),
(20, '856919397754470420', 'Elizabeth.Varton#0916', 5125, '2023-05-02 14:04:52'),
(21, '856919397754470420', 'Nanosplitter#4549', 5975, '2023-05-02 14:05:16'),
(22, '856919397754470420', 'jrgeno#1544', 4402, '2023-05-02 14:11:29'),
(23, '856919397754470420', 'Nanosplitter#4549', 5292, '2023-05-03 14:00:46'),
(24, '856919397754470420', 'jrgeno#1544', 1118, '2023-05-03 14:03:57'),
(25, '856919397754470420', 'Elizabeth.Varton#0916', 2223, '2023-05-03 14:07:04'),
(26, '856919397754470420', 'Josh Brink#1785', 10102, '2023-05-03 14:21:35'),
(27, '856919397754470420', 'Elizabeth.Varton#0916', 16524, '2023-05-04 12:54:38'),
(28, '856919397754470420', 'Nanosplitter#4549', 14041, '2023-05-04 13:24:45'),
(29, '856919397754470420', 'jrgeno#1544', 7394, '2023-05-04 13:25:45'),
(30, '856919397754470420', 'Josh Brink#1785', 4005, '2023-05-04 14:00:13'),
(31, '856919397754470420', 'Elizabeth.Varton#0916', 8493, '2023-05-05 14:00:26'),
(32, '856919397754470420', 'Nanosplitter#4549', 14420, '2023-05-05 14:08:49'),
(33, '856919397754470420', 'Josh Brink#1785', 12260, '2023-05-05 14:14:47'),
(34, '856919397754470420', 'jrgeno#1544', 9501, '2023-05-05 14:56:11'),
(35, '856919397754470420', 'jrgeno#1544', 2626, '2023-05-06 14:04:26'),
(36, '856919397754470420', 'Elizabeth.Varton#0916', 1086, '2023-05-06 14:04:59'),
(37, '856919397754470420', 'Josh Brink#1785', 20201, '2023-05-06 14:16:56'),
(38, '856919397754470420', 'Nanosplitter#4549', 4018, '2023-05-06 15:43:11'),
(39, '856919397754470420', 'Elizabeth.Varton#0916', 5374, '2023-05-07 14:00:35'),
(40, '856919397754470420', 'Nanosplitter#4549', 22152, '2023-05-07 14:01:11'),
(41, '856919397754470420', 'Josh Brink#1785', 10426, '2023-05-07 15:18:03'),
(42, '856919397754470420', 'Nanosplitter#4549', 6970, '2023-05-08 14:07:58'),
(43, '856919397754470420', 'Josh Brink#1785', 12105, '2023-05-08 14:18:42'),
(44, '856919397754470420', 'Elizabeth.Varton#0916', 8604, '2023-05-08 14:22:25'),
(45, '856919397754470420', 'Elizabeth.Varton#0916', 18416, '2023-05-09 14:00:29'),
(46, '856919397754470420', 'Josh Brink#1785', 5458, '2023-05-09 14:08:40'),
(47, '856919397754470420', 'Nanosplitter#4549', 13494, '2023-05-09 14:32:44'),
(48, '856919397754470420', 'Elizabeth.Varton#0916', 8405, '2023-05-10 14:04:06'),
(49, '856919397754470420', 'Nanosplitter#4549', 10992, '2023-05-10 14:04:31'),
(50, '856919397754470420', 'Josh Brink#1785', 12458, '2023-05-10 14:34:56'),
(51, '856919397754470420', 'Josh Brink#1785', 7080, '2023-05-11 12:23:56'),
(52, '856919397754470420', 'Elizabeth.Varton#0916', 13326, '2023-05-11 12:24:56'),
(53, '856919397754470420', 'Nanosplitter#4549', 12938, '2023-05-11 12:29:10'),
(54, '856919397754470420', 'Elizabeth.Varton#0916', 12038, '2023-05-12 14:00:40'),
(55, '856919397754470420', 'Nanosplitter#4549', 8829, '2023-05-12 14:10:17'),
(56, '856919397754470420', 'Josh Brink#1785', 3052, '2023-05-12 14:36:15'),
(57, '856919397754470420', 'Elizabeth.Varton#0916', 17650, '2023-05-13 14:52:44'),
(58, '856919397754470420', 'Josh Brink#1785', 10608, '2023-05-13 15:25:36'),
(59, '856919397754470420', 'Nanosplitter#4549', 10227, '2023-05-13 15:27:20'),
(60, '856919397754470420', 'Legohnaut#8195', 13250, '2023-05-13 19:37:52'),
(61, '856919397754470420', 'Legohnaut#8195', 3083, '2023-05-13 19:38:08'),
(62, '856919397754470420', 'Legohnaut#8195', 9919, '2023-05-13 19:38:23'),
(66, '856919397754470420', 'Elizabeth.Varton#0916', 8914, '2023-05-14 14:00:35'),
(67, '856919397754470420', 'Nanosplitter#4549', 8202, '2023-05-14 15:11:46'),
(68, '856919397754470420', 'Josh Brink#1785', 17119, '2023-05-14 15:20:21'),
(69, '856919397754470420', 'Josh Brink#1785', 18332, '2023-05-15 14:15:17'),
(70, '856919397754470420', 'Nanosplitter#4549', 12307, '2023-05-15 19:00:44'),
(71, '856919397754470420', 'Elizabeth.Varton#0916', 11032, '2023-05-15 19:04:18'),
(72, '856919397754470420', 'Josh Brink#1785', 11842, '2023-05-16 14:24:33'),
(73, '856919397754470420', 'Elizabeth.Varton#0916', 10866, '2023-05-16 14:25:19'),
(74, '856919397754470420', 'Nanosplitter#4549', 4316, '2023-05-16 14:30:32'),
(75, '856919397754470420', 'Nanosplitter#4549', 22715, '2023-05-17 14:19:28'),
(76, '856919397754470420', 'Josh Brink#1785', 5664, '2023-05-17 14:29:30'),
(77, '856919397754470420', 'Elizabeth.Varton#0916', 11191, '2023-05-17 14:32:01'),
(78, '856919397754470420', 'Josh Brink#1785', 11238, '2023-05-18 14:05:58'),
(79, '856919397754470420', 'Elizabeth.Varton#0916', 15559, '2023-05-18 14:07:03'),
(80, '856919397754470420', 'Nanosplitter#4549', 5829, '2023-05-18 14:57:06'),
(81, '856919397754470420', 'Nanosplitter#4549', 14590, '2023-05-19 15:26:05'),
(82, '856919397754470420', 'Josh Brink#1785', 8010, '2023-05-19 17:01:30'),
(83, '856919397754470420', 'Elizabeth.Varton#0916', 15322, '2023-05-19 17:02:00'),
(84, '856919397754470420', 'Elizabeth.Varton#0916', 15487, '2023-05-20 12:47:12'),
(85, '856919397754470420', 'Josh Brink#1785', 23601, '2023-05-20 14:13:03'),
(86, '856919397754470420', 'Nanosplitter#4549', 4426, '2023-05-20 14:24:44'),
(87, '856919397754470420', 'Elizabeth.Varton#0916', 16059, '2023-05-21 14:00:54'),
(88, '856919397754470420', 'Josh Brink#1785', 12113, '2023-05-21 14:06:22'),
(89, '856919397754470420', 'Nanosplitter#4549', 5807, '2023-05-21 14:33:50'),
(90, '856919397754470420', 'Josh Brink#1785', 14059, '2023-05-22 14:01:23'),
(91, '856919397754470420', 'Nanosplitter#4549', 12395, '2023-05-22 14:03:51'),
(92, '856919397754470420', 'Elizabeth.Varton#0916', 10515, '2023-05-22 17:00:01'),
(93, '856919397754470420', 'Nanosplitter#4549', 27356, '2023-05-23 14:05:03'),
(94, '856919397754470420', 'Josh Brink#1785', 6609, '2023-05-23 14:08:46'),
(95, '856919397754470420', 'Elizabeth.Varton#0916', 10309, '2023-05-23 15:30:28'),
(96, '856919397754470420', 'Josh Brink#1785', 7079, '2023-05-24 14:00:25'),
(97, '856919397754470420', 'Nanosplitter#4549', 24875, '2023-05-24 14:03:03'),
(98, '856919397754470420', 'Elizabeth.Varton#0916', 14815, '2023-05-24 14:26:45'),
(99, '856919397754470420', 'Josh Brink#1785', 7079, '2023-05-25 14:01:59'),
(100, '856919397754470420', 'Elizabeth.Varton#0916', 13344, '2023-05-25 14:02:00'),
(101, '856919397754470420', 'Nanosplitter#4549', 10966, '2023-05-25 14:04:35'),
(102, '856919397754470420', 'Elizabeth.Varton#0916', 14443, '2023-05-26 14:10:08'),
(103, '856919397754470420', 'Josh Brink#1785', 10950, '2023-05-26 14:34:32'),
(104, '856919397754470420', 'Nanosplitter#4549', 10762, '2023-05-26 16:15:42'),
(105, '856919397754470420', 'Josh Brink#1785', 15793, '2023-05-27 12:24:57'),
(106, '856919397754470420', 'Nanosplitter#4549', 4575, '2023-05-27 14:00:41'),
(107, '856919397754470420', 'Elizabeth.Varton#0916', 4802, '2023-05-27 15:36:01'),
(108, '856919397754470420', 'Elizabeth.Varton#0916', 6790, '2023-05-28 14:19:12'),
(109, '856919397754470420', 'Nanosplitter#4549', 45160, '2023-05-28 14:26:14'),
(110, '856919397754470420', 'Josh Brink#1785', 18189, '2023-05-28 15:04:37'),
(111, '856919397754470420', 'Josh Brink#1785', 16416, '2023-05-29 14:00:24'),
(112, '856919397754470420', 'Elizabeth.Varton#0916', 6190, '2023-05-29 14:01:03'),
(113, '856919397754470420', 'Nanosplitter#4549', 4335, '2023-05-29 17:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` int(11) NOT NULL,
  `story` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `story`) VALUES
(59, 'The friends are:\r\n\r\nLiam: A stoic warrior who speaks only in quotes from ancient texts and legends. His past is shrouded in mystery, but it\'s said he was once a member of an elite order of knights. Liam is a natural leader and always seems to have the right words to inspire his companions in battle.\r\n\r\nColin: A gentle healer who communicates only through riddles and puzzles. Colin\'s past is unknown, but it\'s rumored that he was once a wise sage who devoted his life to the pursuit of knowledge. His puzzles often contain hints and clues to help the group in their quests.\r\n\r\nKeller: An anime protagonist who only speaks in haikus while referencing his mysterious yet dark backstory.\r\n\r\nAlex: A powerful mage who speaks only in rhyming couplets. Alex\'s past is a mystery, but some say he was born with magical powers and has been honing his craft ever since. His spells are as creative as his poetry, and he can often come up with magical solutions to seemingly impossible problems.\r\n\r\nVandermolen: A cunning rogue who speaks only in puns and wordplay. Vandermolen\'s past is unclear, but it\'s rumored that he was once a notorious thief who made a living off of his quick wit and agile fingers. His puns often contain hidden meanings and clues to help the group navigate dangerous situations.\r\n\r\nSkyler: A charming bard who communicates only through song lyrics. Skyler\'s past is shrouded in mystery, but it\'s said he was once a famous singer who gave up his career to seek adventure. His songs can charm even the most hostile foes and often contain hints and clues to help the group on their quests.\r\n\r\nSimon: Simonedge the minion is a 20-year-old male who wields a powerful weapon called Bloodedge that gets stronger with every kill, and has attacks like Blood Slash, Blood Slice, and Blood Stab, and a finisher called Blood Decapitate. He has a personality that doesn\'t get along with humans, but minions fear and respect him. Simonedge prefers to be alone, either listening to music or training. His favorite bands are KoRn, System of a Down, and Shinedown, and his friends include Sonic, Tails, and Goku. When asked about his interests, Simonedge responds with the quote, \"meh... listens to music\".\r\n\r\nLily: A stealthy ranger who communicates only through nature sounds and animal noises. Lily\'s past is unknown, but it\'s said she was raised by wolves and has a deep connection to the natural world. Her animal noises often contain hints and clues to help the group on their quests, and her tracking skills are unmatched.\r\n\r\nFatimah: A talented chef who speaks only in recipes and cooking terms. Fatimah\'s past is unclear, but it\'s rumored that she comes from a long line of master chefs who have served royalty for generations. Her recipes often contain hints and clues to help the group in their quests, and her cooking can provide important buffs for the group\'s next battle.\r\n\r\nWith this eclectic group of adventurers, The Free Market is ready for any challenge that comes their way.'),
(60, 'Episode 1: The Free Market Begins\r\n\r\nThe sun had just risen over the hills as Liam, Colin, Keller, Alex, Vandermolen, Skyler, Simon, Lily, and Fatimah gathered at the edge of town. They were all there for the same reason - to join forces and embark on an adventure together as The Free Market. It was a strange group, but they all shared a thirst for adventure and a desire to make a name for themselves in the world.\r\n\r\nAs they set out, they quickly realized that they were being followed. A group of bandits had been tracking them for hours, waiting for the perfect opportunity to strike. But The Free Market was ready for them.\r\n\r\nLiam, ever the stoic warrior, led the charge. He drew his sword and shouted a battle cry, inspiring his companions to fight with all their might. Colin, using his riddles and puzzles, quickly figured out the best strategy for defeating the bandits, and the group worked together to take them down one by one.\r\n\r\nAfter the battle, they discovered that the bandits had been hired by a wealthy merchant who was afraid that The Free Market would interfere with his business interests. The group decided to investigate further and soon discovered that the merchant was involved in some shady deals and was exploiting the poor people of the town.\r\n\r\nWith the help of Fatimah\'s cooking skills and Alex\'s magical abilities, they were able to sneak into the merchant\'s mansion and gather evidence of his crimes. They presented the evidence to the local authorities, and the merchant was arrested.\r\n\r\nThe townspeople were grateful for The Free Market\'s help, and they were hailed as heroes. As they continued on their journey, they realized that their adventures would be filled with danger and excitement, but they were ready for anything that came their way.\r\n\r\nLittle did they know, this was only the beginning of their epic journey. The next adventure would take them to new lands, facing even greater challenges and threats. But they knew they could face it all as long as they had each other, and The Free Market was ready to take on the world.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `birthdays`
--
ALTER TABLE `birthdays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `birthdays_4`
--
ALTER TABLE `birthdays_4`
  ADD PRIMARY KEY (`id`,`channel_id`);

--
-- Indexes for table `caught`
--
ALTER TABLE `caught`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remindme`
--
ALTER TABLE `remindme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_settings`
--
ALTER TABLE `server_settings`
  ADD PRIMARY KEY (`server_id`);

--
-- Indexes for table `steplogs`
--
ALTER TABLE `steplogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `birthdays`
--
ALTER TABLE `birthdays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `birthdays_4`
--
ALTER TABLE `birthdays_4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `caught`
--
ALTER TABLE `caught`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `remindme`
--
ALTER TABLE `remindme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `steplogs`
--
ALTER TABLE `steplogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
