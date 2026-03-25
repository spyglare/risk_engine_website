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
-- Table structure for table `t_monitoring`
--

CREATE TABLE `t_monitoring` (
  `id_monitoring` int(11) NOT NULL,
  `id_treatment` int(11) NOT NULL,
  `minggu_ke` int(11) NOT NULL,
  `persentase_selesai` decimal(5,2) DEFAULT NULL,
  `biaya_realisasi` bigint(20) DEFAULT 0,
  `keterangan_progres` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_monitoring`
--

INSERT INTO `t_monitoring` (`id_monitoring`, `id_treatment`, `minggu_ke`, `persentase_selesai`, `biaya_realisasi`, `keterangan_progres`) VALUES
(3, 1, 1, 25.00, 3500000, 'Selesai tahap wawancara narasumber');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_monitoring`
--
ALTER TABLE `t_monitoring`
  ADD PRIMARY KEY (`id_monitoring`),
  ADD KEY `fk_monitoring_treatment` (`id_treatment`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_monitoring`
--
ALTER TABLE `t_monitoring`
  MODIFY `id_monitoring` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_monitoring`
--
ALTER TABLE `t_monitoring`
  ADD CONSTRAINT `fk_monitoring_treatment` FOREIGN KEY (`id_treatment`) REFERENCES `t_treatment` (`id_treatment`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
