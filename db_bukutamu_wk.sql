-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 09, 2018 at 04:57 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukutamu_wk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `instansi` text NOT NULL,
  `keperluan` text NOT NULL,
  `foto` text NOT NULL,
  `ttd` varchar(20) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id`, `nama`, `instansi`, `keperluan`, `foto`, `ttd`, `waktu`) VALUES
(1, 'Ferdi', 'SMK Wikrama Bogor', 'Study Banding.', 'IMG00.jpeg', 'TTD00.png', '2018-01-08 15:40:53'),
(2, 'Gaha', 'Haha', 'Hshhs', 'IMG001.jpeg', 'TTD001.png', '2018-01-08 15:43:13'),
(3, 'Ferdi Haspi N', 'Wikrama', 'Belajar', 'IMG002.jpeg', 'TTD002.png', '2018-01-08 15:44:35'),
(4, 'Ferdi Haspi', 'Bratasoe', 'Menjenguk', 'IMG003.jpeg', 'TTD003.png', '2018-01-08 15:46:51'),
(5, 'Stinky Finger', 'Australian Street', 'How to fly', 'IMG004.jpeg', 'TTD004.png', '2018-01-08 15:47:46'),
(6, 'JM', 'Google', 'Kerjasama', 'IMG005.jpeg', 'TTD005.png', '2018-01-09 03:43:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
