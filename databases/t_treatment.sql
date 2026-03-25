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
-- Table structure for table `t_treatment`
--

CREATE TABLE `t_treatment` (
  `id_treatment` int(11) NOT NULL,
  `id_risiko` int(11) NOT NULL,
  `opsi_penanganan` enum('CEGAH','MITIGASI','ALIHKAN','TERIMA') NOT NULL,
  `deskripsi_tindakan` text DEFAULT NULL,
  `biaya_rencana` bigint(20) DEFAULT 0,
  `prob_residual_target` decimal(10,4) DEFAULT NULL,
  `damp_residual_target` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_treatment`
--

INSERT INTO `t_treatment` (`id_treatment`, `id_risiko`, `opsi_penanganan`, `deskripsi_tindakan`, `biaya_rencana`, `prob_residual_target`, `damp_residual_target`) VALUES
(1, 1, 'MITIGASI', 'Melakukan riset pasar lebih mendalam sebelum peluncuran produk', 15000000, 0.1500, 50000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_treatment`
--
ALTER TABLE `t_treatment`
  ADD PRIMARY KEY (`id_treatment`),
  ADD KEY `fk_treatment_risiko` (`id_risiko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_treatment`
--
ALTER TABLE `t_treatment`
  MODIFY `id_treatment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_treatment`
--
ALTER TABLE `t_treatment`
  ADD CONSTRAINT `fk_treatment_risiko` FOREIGN KEY (`id_risiko`) REFERENCES `t_risiko` (`id_risiko`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
