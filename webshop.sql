-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2015 at 03:02 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `commentj`
--

CREATE TABLE IF NOT EXISTS `commentj` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `Sender` varchar(43) NOT NULL,
  `Comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `commentj`
--

INSERT INTO `commentj` (`id`, `Sender`, `Comment`) VALUES
(1, 'dsds', 'dsdsdsd'),
(2, 'dsada', 'dsadsad'),
(3, 'Ñ?Ð´Ð´Ñ?', 'Ñ?Ð´Ð´Ñ?'),
(4, 'Ð´Ñ?Ð´Ñ?', 'Ð´Ð´Ð´Ð´'),
(5, 'Ñ?Ð´Ñ?Ñ?', 'Ñ?Ð´Ñ?Ð´Ñ?'),
(6, 'Ñ?Ð´Ñ?Ñ?', 'Ñ?Ð´Ñ?Ð´Ñ?'),
(7, 'Ñ?Ð´Ñ?Ñ?', 'Ñ?Ð´Ñ?Ð´Ñ?'),
(8, 'Ñ?Ð´Ð°Ð´', 'Ð°Ð´Ñ?Ð°Ð´Ñ?'),
(9, 'Ñ?Ð´Ð°Ð´', 'Ð°Ð´Ñ?Ð°Ð´Ñ?'),
(10, 'Ð°Ð´Ñ?Ð°', 'Ð°Ñ?Ð´Ð°Ñ?Ð´'),
(11, 'Ð´Ð°Ð´', 'Ð´Ð°Ñ?Ð´Ð°Ñ?Ð´'),
(12, '?????', '????'),
(13, '????', '????'),
(14, '????', '????'),
(15, '?????', '???'),
(16, 'dsds', 'ds'),
(17, '????', '?????'),
(18, '????', '????'),
(19, '??', '????'),
(20, '????', '???????????????'),
(21, 'дсдсда', 'садсасададсадасддадсдсадасдсадсадасдасдаадс'),
(22, '???', '????'),
(23, '&#1055;&#1077;&#1096;&#1086;', NULL),
(24, '???????????????????????????', NULL),
(25, '????', NULL),
(26, '&#1089;&#1072;&#1076;&#1089;&#1072;&#1076;', NULL),
(27, '??????????????', NULL),
(28, '????????????????', NULL),
(29, '??????', NULL),
(30, '?????', NULL),
(31, '?????', NULL),
(32, '??????????????????', NULL),
(33, '??????????', NULL),
(34, '???', NULL),
(35, '???', NULL),
(36, '?????', NULL),
(37, '?????', NULL),
(38, '??????', NULL),
(39, '?????????', NULL),
(40, '????????', NULL),
(41, '??????', NULL),
(42, '??????', NULL),
(43, '???????', NULL),
(44, '????', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stem` varchar(45) NOT NULL,
  `attribution_url` varchar(60) NOT NULL,
  `attribution_name` varchar(45) NOT NULL,
  `image_extension` varchar(5) NOT NULL,
  `rankings` int(11) DEFAULT '0',
  `average_ranking` float DEFAULT NULL,
  `image_information` text NOT NULL,
  `instructor` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `stem`, `attribution_url`, `attribution_name`, `image_extension`, `rankings`, `average_ranking`, `image_information`, `instructor`) VALUES
(1, 'java2', 'http://www.youtube.com/embed/v7lUQoOsVb8', 'Java', 'jpg', 1, 5, 'In this track you can learn about Java, How to configure Java Platform, using variables, conditions and loops.', 'Dincho Kostadinov'),
(2, 'android2', 'http://www.youtube.com/embed/T3K_r0gr9WY', 'Android', 'jpg', 0, NULL, '"Become An Android Developer" is designed to be the best first step to launching your career as an Android Developer. Whether you''ve never programmed before or are coming to mobile development for the first time, if you''re truly inspired to learn Android Development, this is where you need to start.', 'Daniel Dimitrov'),
(3, 'database', 'dasdsaas', 'database', 'jpg', 0, NULL, 'Learn how to Create your own databases.', 'Peter Beleganski'),
(4, 'html', 'http://www.youtube.com/embed/01Z2F7xKclw', 'HTML & CSS', 'jpg', 0, NULL, 'There isn''t a web site out there-- whether it be WhiteHouse.gov, IBM.com or the site for your local high school-- that isn''t written in HTML. If you do any level of web development-- from editing pages on a Wordpress site to designing original pages from scratch, understanding and being able to code in HTML and CSS can give you a level of control, and power over your designs that you''ve never experienced before.', 'Peter Beleganski'),
(5, 'jquery', 'http://www.youtube.com/embed/FG2O6GRAHXM', 'jQuery', 'jpg', 0, NULL, 'Have you ever wanted to learn to code but don''t know where to start? Learning how to code can get you a better job and lead to a better future. This course starts you off with the basic coding language of jQuery. This is a very condensed 1 hour tutorial that will show you how to code in jQuery. Enroll to begin your journey to be a web development master.', 'Daniel Dimitrov'),
(6, 'js1', 'http://www.youtube.com/embed/AP6gNuVjPiE', 'JavaScript', 'jpg', 0, NULL, 'During this course, your instructor will introduce you to executing basic JavaScript programs. You will discover the basics of the language (syntax, strings, data types), and you will understand using loops and conditional statements, and working with arrays. Additionally, this course instructs how to use various functions including scope, callback, return and anonymous functions.', 'Daniel Dimitrov'),
(7, 'servlet', 'http://www.youtube.com/embed/zdJ0p8XIxXk', 'Java Server pages and Servlets', 'jpg', 0, NULL, 'This tutorial is designed for Java programmers with a need to understand the Java Servlets framework and its APIs. After completing this tutorial you will find yourself at a moderate level of expertise in using Java Servelts from where you can take yourself to next levels. We assume you have good understanding of the Java programming language.', 'Peter Beleganski'),
(8, 'img8', 'dsdsds', 'Image House', 'jpg', 0, NULL, 'Bonus course', 'Peter Beleganski');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `User` varchar(32) NOT NULL,
  `Subject` varchar(32) NOT NULL,
  `Message` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`ID`, `User`, `Subject`, `Message`) VALUES
(1, 'dsadsa', 'sadsadasda', 'dsadsadsad');

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE IF NOT EXISTS `tutorials` (
  `id` int(32) NOT NULL,
  `course` varchar(25) NOT NULL,
  `link` text NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tutorials`
--

INSERT INTO `tutorials` (`id`, `course`, `link`, `name`) VALUES
(1, 'Java ', 'http://www.tutorialspoint.com/java/index.htm"', 'tutorialspoint');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(256) NOT NULL,
  `password` varchar(50) NOT NULL,
  `username` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`) VALUES
(1, 'john@caveofprogramming.com', 'letmeinhere', ''),
(2, 'admin@caveofprogramming.com', 'password', ''),
(3, 'johnwpurcell@gmail.com', 'hellothere', ''),
(4, 'pepibeleganski@gmail.com', '123456789', 'keksa998'),
(5, 'admin', 'admin', 'dsadsadsadsdsadas');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
