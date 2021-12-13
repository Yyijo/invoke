-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2021 at 03:07 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `virtual_queue`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(5, 'Sandhika Galih', 'sandhikagalih@unpas.ac.id', 'profile1.jpg', '$2y$10$nXnrqGQTjpvg58OtOB/N.evYQjVlz7KIW37oUSQSQ2EgNMD0Dgrzq', 1, 1, 1552120289),
(6, 'Doddy Ferdiansyah', 'doddy@gmail.com', 'profile.jpg', '$2y$10$FhGzXwwTWLN/yonJpDLR0.nKoeWlKWBoRG9bsk0jOAgbJ007XzeFO', 2, 1, 1552285263),
(11, 'Sandhika Galih', 'sandhikagalih@gmail.com', 'default.jpg', '$2y$10$0QYEK1pB2L.Rdo.ZQsJO5eeTSpdzT7PvHaEwsuEyGSs0J1Qf5BoSq', 2, 1, 1553151354),
(12, 'MARWAN', 'mastamaru@gmail.com', 'default.jpg', '$2y$10$lTSG/byOeTyNVRDfRIuxjOltbf1RQhGtiVUrLv2rSJqLgZmdKpXJS', 2, 0, 1638972519),
(13, 'MARWAN', 'mastamaru1@gmail.com', 'default.jpg', '$2y$10$/QmynM2c2xfmQ/QxtgcB1eEiAIxrjIw5kl3E2cOt3ptMfjr2hHEQm', 2, 0, 1638973797),
(14, 'MARWAN', 'mastamaru2@gmail.com', 'default.jpg', '$2y$10$WGZXEfnU6IuXfB2TXjyTVutd70J46/plMPh3i0hKI5aLkfQ8TrJXS', 2, 0, 1638973805),
(15, 'IRSYAD', 'irsyad@gmail.com', 'default.jpg', '$2y$10$jwgPRzk65fwX6iBj4UvjkeRc6xMHY7TPCa8/wiPX4XgmfxRlEdnIu', 2, 0, 1638974203),
(16, 'JO', 'JO@gmail.com', 'default.jpg', '$2y$10$E0/wUu.da5WJG.IyP7Qk8..61.ylJQsrgE.EhdUuh1mmQ7U2lqASu', 2, 0, 1638974429),
(17, 'SHARON', 'SHARON@gmail.com', 'default.jpg', '$2y$10$fm3ighdDiRotUBf93Yqo/eHAogVbb0dIzcCIvo1rwZerkHFHKp8ra', 2, 0, 1638974542),
(18, 'RAZIQ', 'raziq@gmail.com', 'Screenshot_11.png', '$2y$10$pYc7VnsFbaky749j/7Eb0e540puXmEjlZcHyhfqmgv0j/r18L9/XC', 2, 0, 1638974605),
(19, 'RAZIQ2', 'raziq2@gmail.com', 'default.jpg', '$2y$10$ebSWPWwxMIrohGJIa/JqnuZoiG1uaBeMmE4WALI1e4wIBUi7E3v5K', 1, 1, 1638974671),
(20, 'SHARON2', 'sharon2@gmail.com', 'default.jpg', '$2y$10$2F1.xVJEcN4stBmmXG1BKOK5BuRuGfp1SwQqVgqQeGQYNZCSOQcke', 2, 0, 1639033970),
(21, 'sharon3', 'sharon3@gmail.com', 'jett-avatar.jpg', '$2y$10$AwujGTf9jpzl/qqQOG4VpOLymKtrYc1v.mtCZ/yKx93.Qri5cy7/q', 1, 1, 1639034237);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(7, 1, 3),
(8, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Queue Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(8, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(9, 'mastamaru@gmail.com', 'GeKmZuAby76Te43G7ViQrB9O34/IWcXLDj0V2Y9rY7Y=', 1638972519),
(10, 'mastamaru1@gmail.com', 'JO1G2h8KEwR+s+JDorLVwjvkdg4gozKvsOattJsp9Bg=', 1638973797),
(11, 'mastamaru2@gmail.com', '8IfyzS6FWY/Q4Iobo3o+iCq9UoRgM2MDOc0ALSs+8Lc=', 1638973805),
(12, 'irsyad@gmail.com', 'leDBo4rR+QnfQp/iI47xPayp+ME8jmbHTPOeX7u01iY=', 1638974203),
(13, 'JO@gmail.com', '/Hd7hmN3NVNubBf+Tk3JOQDhIX09oCZQajXdb1DiE9E=', 1638974429),
(14, 'SHARON@gmail.com', 'KtA/p/J7ikos5k5F9DxjbIaensZwdcKSf3uAulEYmjM=', 1638974542),
(15, 'raziq@gmail.com', '4WA8DHKN5H8XPMsBlUTb/9a4SaiyPaZ84UAuFgKrW9U=', 1638974605),
(16, 'raziq2@gmail.com', 'nm0jOug5RXXytkzi8BOLe29iq9JAPuBgaTTnQImWrf4=', 1638974671),
(17, 'sharon2@gmail.com', '9tdD/lfRrzJ76+RtdEqmsfV9Kdc2L70sF0T+H3UDId8=', 1639033970);

-- --------------------------------------------------------

--
-- Table structure for table `vq_queue`
--

CREATE TABLE `vq_queue` (
  `queue_id` varchar(30) NOT NULL,
  `cust_id` varchar(30) NOT NULL,
  `queue_joinqueuetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `queue_waitingtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `res_business_id` varchar(30) NOT NULL,
  `queue_total_people_queue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vq_queue`
--

INSERT INTO `vq_queue` (`queue_id`, `cust_id`, `queue_joinqueuetime`, `queue_waitingtime`, `res_business_id`, `queue_total_people_queue`) VALUES
('Q1', 'C1', '2021-12-12 18:39:31', '0000-00-00 00:00:00', 'B1', 23);

-- --------------------------------------------------------

--
-- Table structure for table `vq_queue_history`
--

CREATE TABLE `vq_queue_history` (
  `queue_id` varchar(30) NOT NULL,
  `cust_id` varchar(30) NOT NULL,
  `queue_joinqueuetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `queue_waitingtime` int(11) NOT NULL,
  `res_business_id` varchar(39) NOT NULL,
  `queue_total_people_queue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vq_queue`
--
ALTER TABLE `vq_queue`
  ADD PRIMARY KEY (`queue_id`),
  ADD UNIQUE KEY `cust_id_2` (`cust_id`),
  ADD KEY `res_business_id` (`res_business_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `cust_id_3` (`cust_id`),
  ADD KEY `cust_id_4` (`cust_id`),
  ADD KEY `cust_id_5` (`cust_id`);

--
-- Indexes for table `vq_queue_history`
--
ALTER TABLE `vq_queue_history`
  ADD UNIQUE KEY `queue_id_2` (`queue_id`),
  ADD KEY `queue_id` (`queue_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
