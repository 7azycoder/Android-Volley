-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 22, 2016 at 11:23 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`name`, `email`) VALUES
('Lovepreet', 'devlovepreet@gmail.com'),
('Dheeraj', 'dj@yahoo.com'),
('Chetan Maan', 'cm@yahoo.com'),
('Disha Shokeen', 'disha@yahooc.com'),
('Ishu', 'ishu@gmail.com'),
('Jagmeet', 'js@outlook.com'),
('Akanksha', 'akki@outlook.com'),
('Gurpreet', 'preet@gmail.com'),
('Youvraaj', 'youvi@gmail.com'),
('Batman', 'batman@batman.com'),
('Superman', 'superman@yahoo.com'),
('Hulk', 'hulk@hulk.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
