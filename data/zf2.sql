-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2014 at 01:39 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zf2`
--
CREATE DATABASE IF NOT EXISTS `zf2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `zf2`;

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `artist`, `title`) VALUES
(1, 'The  Military  Wives', 'In  My  Dreams'),
(3, 'Bruce', 'Wrecking Ball'),
(4, 'Lana  Del  Rey', 'Born  To  Die'),
(5, 'Gotye', 'Making  Mirrors'),
(6, 'Vasani', 'Dharmesh'),
(7, 'parshotambhai chitroda', 'jayesh'),
(8, 'Koradia', 'savan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `firstname`, `lastname`, `email`, `phone`, `created`, `modified`) VALUES
(1, 'dkvasani', 'Dharmesh', 'Vasani', 'dharmesh.vasani@multidots.in', '2147483647', '2014-04-12 10:58:39', '0000-00-00 00:00:00'),
(2, 'Jayesh', 'Jayesh', 'Chitroda', 'jayesh@multidots.in', '2147483647', '2014-04-12 11:00:57', '2014-04-12 11:00:57'),
(3, 'Kamesh', 'Kamlesh', 'Solanki', 'kamlesh@multidots.in', '2147483647', '2014-04-12 11:02:12', '2014-04-12 11:02:12'),
(4, 'Savan', 'Savan', 'Koradiya', 'savan.koradiya@multidots.in', '2147483647', '2014-04-12 11:03:15', '2014-04-12 11:03:15'),
(5, 'sanjiv', 'sanjv', 'katiyar', 'sanjiv@gmail.com', '88333222', '2014-04-12 11:05:23', '2014-04-12 11:05:23'),
(6, 'asd', 'asdd', 'asd', 'asd@gmail.com', '2147483647', '2014-04-12 11:07:49', '2014-04-12 11:07:49');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
