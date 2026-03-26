-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2026 at 10:34 AM
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
-- Table structure for table `master_kpi`
--

CREATE TABLE `master_kpi` (
  `id_kpi` int(11) NOT NULL,
  `nama_kpi` text NOT NULL,
  `aktivitas_kpi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_kpi`
--

INSERT INTO `master_kpi` (`id_kpi`, `nama_kpi`, `aktivitas_kpi`) VALUES
(1, 'Meningkatkan min 10% pertumbuhan penjualan.', 'Membuat produk baru.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_kpi`
--
ALTER TABLE `master_kpi`
  ADD PRIMARY KEY (`id_kpi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_kpi`
--
ALTER TABLE `master_kpi`
  MODIFY `id_kpi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
