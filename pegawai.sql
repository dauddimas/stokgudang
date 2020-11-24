-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2020 at 12:04 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stokgudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `ID_pegawai` int(8) NOT NULL,
  `nama_pegawai` varchar(200) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`ID_pegawai`, `nama_pegawai`, `username`, `password`) VALUES
(20201101, 'Daud Dimas Prasetyo', 'dauddimas', '21232f297a57a5a743894a0e4a801fc3'),
(20201102, 'Edho Sulenda Satrio Pambudi', 'edhossp', '21232f297a57a5a743894a0e4a801fc3'),
(20201103, 'Bernita', 'bernita', '21232f297a57a5a743894a0e4a801fc3'),
(20201105, 'Ichsan Arsyi Putra', 'ichsanap', '21232f297a57a5a743894a0e4a801fc3'),
(20201106, 'Tata', 'tata', '21232f297a57a5a743894a0e4a801fc3'),
(20201107, 'Ahmad H', 'ahmadh', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`ID_pegawai`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `ID_pegawai` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20201108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
