-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2020 at 02:44 PM
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
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `ID_barang` int(8) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jenis_barang` varchar(100) NOT NULL,
  `harga_barang` int(24) NOT NULL,
  `stok_barang` int(12) NOT NULL,
  `ID_gudang` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`ID_barang`, `nama_barang`, `jenis_barang`, `harga_barang`, `stok_barang`, `ID_gudang`) VALUES
(20200002, 'Logitech G205', 'Mouse', 200000, 70, 1),
(20200003, 'Asus A456UR', 'Laptop', 5000000, 53, 1),
(20200004, 'HP All-in-One EliteOne 800 G4 (Core i7-8700)', 'Komputer', 20000000, 60, 1),
(20200005, 'SteelSeries Arctis 3 White/Black 7.1', 'Headset', 900000, 63, 3),
(20200006, 'Knowledge Zenith KZ ZSN - In Ear Earphone - HYBRID Dual DRIVER', 'Earphone', 239000, 36, 3),
(20200007, 'LED MONITOR LG 19M38A', 'Monitor', 895000, 20, 2),
(20200008, 'Redmi Note 9 (4GB+64GB)', 'Handphone', 2299000, 20, 1),
(20200009, 'Yamaha Gitar Klasik C-315', 'Gitar', 849000, 20, 3),
(20200010, 'SanDisk CZ50 Cruzer Blade (16 GB)', 'Flashdisk', 50000, 20, 3),
(20200011, 'Logitech F710 Wireless Gamepad', 'Joystick', 579000, 20, 2),
(20200012, 'Deep Cool WindPal Mini Laptop Cooling Pad Fan', 'Cooling Pad', 101000, 25, 3),
(20200013, 'Steelseries RIVAL 105', 'Mouse', 388000, 13, 1),
(20200014, 'Lenovo Thinkpad T440s', 'Laptop', 4250000, 50, 3),
(20200015, 'Samsung S9+ 6/64 gb', 'Handphone', 5500000, 12, 1),
(20200016, 'Logitech B175 Wireless Mouse', 'Mouse', 189000, 47, 4),
(20200017, 'Smok RPM80 Pro', 'Vape', 275000, 39, 3),
(20200018, 'Logitech M330 Wireless Silent Mouse', 'Mouse', 299000, 29, 3),
(20200019, 'Seagate Backup Plus Slim Harddisk Eksternal 2TB', 'Harddisk', 1025000, 10, 1),
(20200020, 'Logitech C270 HD Webcam', 'Webcam', 699000, 44, 2);

-- --------------------------------------------------------

--
-- Table structure for table `gudang`
--

CREATE TABLE `gudang` (
  `ID_gudang` int(3) NOT NULL,
  `nama_gudang` varchar(64) NOT NULL,
  `alamat_gudang` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gudang`
--

INSERT INTO `gudang` (`ID_gudang`, `nama_gudang`, `alamat_gudang`) VALUES
(1, 'Gudang Simpang Lima', 'Jl. Kyai Saleh No.10, Mugassari, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50231'),
(2, 'Gudang Madukoro', 'Tawangmas, Kec. Semarang Bar., Kota Semarang, Jawa Tengah 50144'),
(3, 'Gudang Tembalang', 'Jl. Tirto Agung No.21 B, Pedalangan, Kec. Tembalang, Kota Semarang, Jawa Tengah 50268'),
(4, 'Gudang Wolter Monginsidi', 'Alamat: Jl. Wolter Monginsidi No.386, Pedurungan Tengah, Kec. Pedurungan, Kota Semarang, Jawa Tengah 50192');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `ID_pegawai` int(8) NOT NULL,
  `nama_pegawai` varchar(200) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `ID_gudang` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`ID_pegawai`, `nama_pegawai`, `username`, `password`, `ID_gudang`) VALUES
(20201101, 'Daud Dimas Prasetyo', 'dauddimas', '21232f297a57a5a743894a0e4a801fc3', 1),
(20201102, 'Edho Sulenda Satrio Pambudi', 'edhossp', '21232f297a57a5a743894a0e4a801fc3', 1),
(20201103, 'Bernita', 'bernita', '21232f297a57a5a743894a0e4a801fc3', 2),
(20201104, 'Adam Maulidani', 'adamm', '21232f297a57a5a743894a0e4a801fc3', 2),
(20201105, 'Ichsan Arsyi Putra', 'ichsanap', '21232f297a57a5a743894a0e4a801fc3', 2),
(20201106, 'Tata', 'tata', '21232f297a57a5a743894a0e4a801fc3', 3),
(20201107, 'Ahmad H', 'ahmadh', '21232f297a57a5a743894a0e4a801fc3', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`ID_barang`),
  ADD KEY `ID_gudang` (`ID_gudang`);

--
-- Indexes for table `gudang`
--
ALTER TABLE `gudang`
  ADD PRIMARY KEY (`ID_gudang`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`ID_pegawai`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `ID_gudang` (`ID_gudang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `ID_barang` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20200021;

--
-- AUTO_INCREMENT for table `gudang`
--
ALTER TABLE `gudang`
  MODIFY `ID_gudang` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `ID_pegawai` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20201108;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`ID_gudang`) REFERENCES `gudang` (`ID_gudang`);

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`ID_gudang`) REFERENCES `gudang` (`ID_gudang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
