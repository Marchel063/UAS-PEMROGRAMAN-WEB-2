-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2023 at 07:53 AM
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
-- Database: `warnet.sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `keuangan`
--

CREATE TABLE `keuangan` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `pemasukan` int(11) NOT NULL,
  `pengeluaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keuangan`
--

INSERT INTO `keuangan` (`id`, `keterangan`, `pemasukan`, `pengeluaran`) VALUES
(1, 'Januari', 1000000, 300000),
(2, 'Februari', 3000000, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `komputer`
--

CREATE TABLE `komputer` (
  `id` int(11) NOT NULL,
  `kodekomputer` varchar(50) NOT NULL,
  `jeniskomputer` set('Reguler','VIP','','') NOT NULL,
  `harga` int(11) NOT NULL,
  `lokasi` set('Lantai1','Lantai2','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komputer`
--

INSERT INTO `komputer` (`id`, `kodekomputer`, `jeniskomputer`, `harga`, `lokasi`) VALUES
(1, 'A01', 'Reguler', 5000, 'Lantai1'),
(2, 'B02', 'VIP', 8000, 'Lantai2'),
(3, 'A02', 'Reguler', 5000, 'Lantai1');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `kodepegawai` int(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tanggallahir` date NOT NULL,
  `jeniskelamin` enum('pria','wanita','','') NOT NULL,
  `nohp` char(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `posisi` set('kasir','ob','teknisi','') NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `kodepegawai`, `nama`, `alamat`, `tanggallahir`, `jeniskelamin`, `nohp`, `email`, `posisi`, `gambar`) VALUES
(1, 11, 'Fallih Gumilang', 'jambi', '2023-12-03', 'pria', '0822', 'falih@gmail.com', 'kasir', '1.jpeg'),
(2, 12, 'Fawwaz', 'kota baru', '2023-12-12', 'pria', '085768979940', 'fawwaz@gmail.com', 'teknisi', '6585463a65534.jpeg'),
(3, 13, 'Ahmad Fatchul Huda', 'sarolangun', '2023-12-27', 'pria', '082278973308', 'huda@gmail.com', 'kasir', '65854b4d94f47.jpeg'),
(4, 14, 'Fawwaz', 'kota baru', '2023-12-16', 'pria', '085768979940', 'fawwaz@gmail.com', 'kasir', '658584ed8948a.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Falih', 'Falih', 'falih123', 'admin'),
(2, 'Diki Alfarabi Hadi', 'diki', 'diki123', 'pegawai'),
(3, 'Axel', 'axel', 'axel123', 'pengurus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keuangan`
--
ALTER TABLE `keuangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komputer`
--
ALTER TABLE `komputer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keuangan`
--
ALTER TABLE `keuangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `komputer`
--
ALTER TABLE `komputer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
