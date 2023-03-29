-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2023 at 09:56 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `img` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `cat` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `desc`, `img`, `date`, `uid`, `cat`) VALUES
(3, 'title', 'desc', 'https://images.pexels.com/photos/7008010/pexels-photo-7008010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', '2023-03-27 20:13:06', 3, 'art'),
(4, 'test', 'test', 'https://images.pexels.com/photos/9578029/pexels-photo-9578029.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', '2023-03-28 12:55:51', 5, 'art'),
(5, 'food title', 'food desc', 'https://images.pexels.com/photos/9578029/pexels-photo-9578029.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', '2023-03-28 13:08:33', 3, 'food'),
(6, 'from react ', '<p>new <strong>test</strong>mmmmnnn<u>mmmm</u></p>', '1680031905614slide_4.jpeg', '2023-03-28 22:31:47', 3, 'art'),
(7, '', '', '', '2023-03-28 22:31:56', 3, ''),
(8, 'mmmmm', '<p>mmmmmmm</p>', '1680031953741slide_3.jpeg', '2023-03-28 22:32:35', 3, ''),
(9, 'mmm', '<p>mmm<strong>kkkk</strong></p>', '1680032219797slide_4.jpeg', '2023-03-28 22:37:01', 3, 'cinema'),
(10, '', '<h1>mmm<strong>aa</strong></h1><p><br></p><p>mmmmm<em> mmmmm </em><strong><em> </em>aaaaaaaa  uuuu<u>uu uuuu</u></strong></p>', '1680032712566slide_5.jpeg', '2023-03-28 22:45:14', 3, 'cinema'),
(11, 'Consequatur iste mo', '<p>Vero explicabo. Quo .</p>', '1680033061184slide_3.jpeg', '2023-03-28 22:51:02', 3, 'science');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `img`) VALUES
(3, 'test', 'test@gmail.com', '$2a$10$I5OTG4WPZw2GmTgrQqyMKOONFzOVpZ8wiQ4A4Qd9hlC8oAkalXM52', ''),
(4, '', '', '$2a$10$SciLf3raaag1UiIhtiZnUez8rXRumGNdiL69enTA6Dob8wAbP9cty', ''),
(5, 'test3', 'haqod@mailinator.com', '$2a$10$YzGRK/vycgqL1O/Xh/PxQOtyzndWHGe2BE9mTpTaKGob6MBwCA94G', ''),
(6, 'test2', 'test2@gmail.com', '$2a$10$eWU0i84EolbqKhK68iZ26O4wNMnGgBLVKqd03WYEzzytzCONdGlxS', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
