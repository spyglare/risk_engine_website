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
-- Table structure for table `t_risiko`
--

CREATE TABLE `t_risiko` (
  `id_risiko` int(11) NOT NULL,
  `id_kpi` int(11) NOT NULL,
  `nomor_risiko` varchar(20) NOT NULL,
  `kejadian_berisiko` text DEFAULT NULL,
  `penyebab` text DEFAULT NULL,
  `akibat` text DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `probabilitas_awal` decimal(10,4) DEFAULT NULL,
  `dampak_awal` bigint(20) DEFAULT NULL,
  `skala_prob_awal` int(11) DEFAULT NULL CHECK (`skala_prob_awal` between 1 and 6),
  `skala_damp_awal` int(11) DEFAULT NULL CHECK (`skala_damp_awal` between 1 and 6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_risiko`
--

INSERT INTO `t_risiko` (`id_risiko`, `id_kpi`, `nomor_risiko`, `kejadian_berisiko`, `penyebab`, `akibat`, `kategori`, `probabilitas_awal`, `dampak_awal`, `skala_prob_awal`, `skala_damp_awal`) VALUES
(1, 1, '101001', 'Produk baru tidak diminati pembeli.', '', NULL, NULL, 0.2212, 200000000, 4, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_risiko`
--
ALTER TABLE `t_risiko`
  ADD PRIMARY KEY (`id_risiko`),
  ADD KEY `fk_risiko_kpi` (`id_kpi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_risiko`
--
ALTER TABLE `t_risiko`
  MODIFY `id_risiko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_risiko`
--
ALTER TABLE `t_risiko`
  ADD CONSTRAINT `fk_risiko_kpi` FOREIGN KEY (`id_kpi`) REFERENCES `master_kpi` (`id_kpi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
