-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2024 at 03:49 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coreapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `email` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`email`, `department`) VALUES
('subashjeyaram@mail.com', 'TNPSC'),
('subashjeyaram@mail.com', 'TNUSRB'),
('subashjeyaram@mail.com', 'SSC'),
('Ronaldo@mail.com', 'TNPSC'),
('Ronaldo@mail.com', 'TNPSC'),
('Ronaldo@mail.com', 'TNUSRB'),
('Ronaldo@mail.com', 'SSC'),
('leoneymar1226@gamil.com', 'TNPSC'),
('leoneymar1226@gamil.com', 'TNPSC'),
('Ronaldo@mail.com', 'TNPSC'),
('Ronaldo@mail.com', 'TNUSRB');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `exam` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `testname` varchar(200) NOT NULL,
  `timer` int(11) NOT NULL,
  `questions` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `exam`, `category`, `testname`, `timer`, `questions`, `file`) VALUES
(1, 'TNPSC', 'Group 1', 'Science', 20, '5', 'Hulk.jpg'),
(2, 'TNPSC', 'Group 2', 'Maths', 20, '5', 'Neymar.webp'),
(3, 'TNPSC', 'Group 3', 'History', 20, '5', 'starbucks-logo-png-transparent-0.png'),
(4, 'TNPSC', 'Group 4', 'English', 20, '5', 'STREET.png'),
(5, 'TNUSRB', 'SI', 'Politics', 20, '5', 'sundar art.png'),
(6, 'TNUSRB', 'Pc', 'General Knowledge', 20, '5', 'Tigercapture.jpg'),
(7, 'SSC', 'CGL', 'Aptitude', 20, '5', 'wallpaperflare.com_wallpaper.jpg'),
(8, 'SSC', 'MTS', 'Reasoning', 20, '5', 'Hulk.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `question_insert`
--

CREATE TABLE `question_insert` (
  `exam` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `testname` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_insert`
--

INSERT INTO `question_insert` (`exam`, `category`, `testname`, `question`) VALUES
('TNPSC', 'Group 1', 'Science', 'Who invented Bulb?'),
('TNPSC', 'Group 1', 'Science', 'What does DNA stand for?'),
('TNPSC', 'Group 1', 'Science', 'What is the hardest natural substance on Earth?'),
('TNPSC', 'Group 1', 'Science', 'The concept of gravity was discovered by which famous physicist?'),
('TNPSC', 'Group 2', 'Maths', '1+1=?'),
('TNPSC', 'Group 2', 'Maths', '2+2=?'),
('TNPSC', 'Group 2', 'Maths', '3+3=?'),
('TNPSC', 'Group 2', 'Maths', '4+4=?'),
('TNPSC', 'Group 2', 'Maths', '5+5=?'),
('TNPSC', 'Group 3', 'History', 'What woman discovered radium and polonium?'),
('TNPSC', 'Group 3', 'History', 'In what year did the Battle of Hastings take place?'),
('TNPSC', 'Group 3', 'History', 'Bosnia and Herzegovina was part of what former European country?'),
('TNPSC', 'Group 3', 'History', 'Who was the first explorer to sail around the world?'),
('TNPSC', 'Group 4', 'English', 'Only _____ can be affected by the grammatical category known as \"number\".'),
('TNPSC', 'Group 4', 'English', 'Possessive is a value of the grammatical category called'),
('TNPSC', 'Group 4', 'English', 'Modern English uses _____ gender.'),
('TNPSC', 'Group 4', 'English', ' The grammatical category \"person\" is a property of pronouns and has _____ values.'),
('TNPSC', 'Group 4', 'English', '\"Tense\" is a grammatical category that applies to'),
('TNUSRB', 'SI', 'Politics', 'Who is the Father of our Nation?'),
('TNUSRB', 'SI', 'Politics', 'Who is known as Father of Indian Constitution?'),
('TNUSRB', 'SI', 'Politics', 'The name of the Laccadive, Minicoy and Amindivi islands was changed to Lakshadweep by an Act of Parliament in'),
('TNUSRB', 'SI', 'Politics', 'The members of the Rajya Sabha are elected by'),
('TNUSRB', 'SI', 'Politics', 'The power to decide an election petition is vested in the'),
('TNUSRB', 'Pc', 'General Knowledge', 'Name the National bird of India'),
('TNUSRB', 'Pc', 'General Knowledge', 'Name the National animal of India'),
('TNUSRB', 'Pc', 'General Knowledge', 'What is the National Anthem of India?'),
('TNUSRB', 'Pc', 'General Knowledge', 'Name the national flower of India.'),
('TNUSRB', 'Pc', 'General Knowledge', 'Name the National fruit of India'),
('SSC', 'CGL', 'Aptitude', '\nThe price of 10 chairs is equal to that of 4 tables. The price of 15 chairs and 2 tables together is Rs. 4000. The total price of 12 chairs and 3 tables is:'),
('SSC', 'CGL', 'Aptitude', '\nIf a - b = 3 and a2 + b2 = 29, find the value of ab.'),
('SSC', 'CGL', 'Aptitude', '\nA man has some hens and cows. If the number of heads be 48 and the number of feet equals 140, then the number of hens will be:'),
('SSC', 'CGL', 'Aptitude', 'A man has Rs.480 in the denominations of one-rupee notes, five-rupee notes and ten-rupee notes. The number of notes of each denomination is equal. What is the total number of notes that he has ?'),
('SSC', 'CGL', 'Aptitude', 'To fill a tank, 25 buckets of water is required. How many buckets of water will be required to fill the same tank if the capacity of the bucket is reduced to two-fifth of its present ?'),
('SSC', 'MTS', 'Reasoning', '\nOdometer is to mileage as compass is to'),
('SSC', 'MTS', 'Reasoning', 'Marathon is to race as hibernation is to'),
('SSC', 'MTS', 'Reasoning', 'Window is to pane as book is to'),
('SSC', 'MTS', 'Reasoning', '\nCup is to coffee as bowl is to'),
('SSC', 'MTS', 'Reasoning', 'Yard is to inch as quart is to'),
('TNPSC', 'Group 3', 'History', 'Where did â€˜Tebhegaâ€™ movement occur in 1946?'),
('TNPSC', 'Group 1', 'Science', 'How many bones are in the human body?'),
('TNPSC', 'Group 1', 'assd', '1'),
('TNPSC', 'Group 1', 'assd', '2'),
('TNPSC', 'Group 1', 'assd', '3'),
('TNPSC', 'Group 1', 'assd', '4'),
('TNPSC', 'Group 1', 'assd', '5'),
('TNUSRB', 'Pc', 'assd', '1'),
('TNUSRB', 'Pc', 'assd', '2'),
('TNUSRB', 'Pc', 'assd', '3'),
('TNUSRB', 'Group 3', 'History', 'ddjgckhgkhk'),
('TNUSRB', 'Group 3', 'History', 'ddjgckhgkhk'),
('TNUSRB', 'Group 3', 'History', 'dccsc'),
('TNUSRB', 'Group 1', 'Science', 'ljhljglkg'),
('TNUSRB', 'Group 1', 'Science', 'lhkjjkh'),
('SSC', 'CGL', 'Science', '..nk.jvlkvjvlkhjk;nkl;'),
('SSC', 'CGL', 'Science', 'gdrtdsgdhgdhgsrdhdrdhd');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(200) NOT NULL,
  `mobile_number` bigint(20) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `mobile_number`, `email`) VALUES
('Messi', 13214354, 'leoneymar1226@gamil.com'),
('Ronaldo', 13214354, 'Ronaldo@mail.com'),
('Subash', 13214354, 'subashjeyaram@mail.com'),
('sundar', 13214354, 'virat@mail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
