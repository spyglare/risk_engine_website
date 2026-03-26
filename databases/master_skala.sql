-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2026 at 10:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `risk_engine`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_skala`
--

CREATE TABLE `master_skala` (
  `id_skala` int(11) NOT NULL,
  `tipe` enum('PROBABILITAS','DAMPAK') NOT NULL,
  `skala` int(11) NOT NULL CHECK (`skala` between 1 and 6),
  `min_range` decimal(10,2) DEFAULT NULL,
  `max_range` decimal(10,2) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_skala`
--

INSERT INTO `master_skala` (`id_skala`, `tipe`, `skala`, `min_range`, `max_range`, `keterangan`) VALUES
(1, 'DAMPAK', 1, 0.00, 12000000.00, 'Dampak Sangat Kecil yang bisa ditoleransi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_skala`
--
ALTER TABLE `master_skala`
  ADD PRIMARY KEY (`id_skala`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_skala`
--
ALTER TABLE `master_skala`
  MODIFY `id_skala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
