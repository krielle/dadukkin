-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2021 at 08:41 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dadukkin`
--

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` int(11) NOT NULL,
  `kec` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `kec`) VALUES
(1, 'SemarangTengah'),
(2, 'SemarangUtara'),
(3, 'SemarangTimur'),
(4, 'Gayamsari'),
(5, 'Genuk'),
(6, 'Pedurungan'),
(7, 'SemarangSelatan'),
(8, 'Candisari'),
(9, 'Gajahmungkur'),
(10, 'Tembalang'),
(11, 'Banyumanik'),
(12, 'Gunungpati'),
(13, 'SemarangBarat'),
(14, 'Ngaliyan'),
(15, 'Mijen'),
(16, 'Tugu');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE `penduduk` (
  `No` int(255) NOT NULL,
  `Kecamatan` varchar(255) DEFAULT NULL,
  `Miskin` int(11) DEFAULT NULL,
  `Penduduk` int(11) DEFAULT NULL,
  `Persentase` float(8,2) DEFAULT NULL,
  `Lat` float(12,6) DEFAULT NULL,
  `Long` float(12,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`No`, `Kecamatan`, `Miskin`, `Penduduk`, `Persentase`, `Lat`, `Long`) VALUES
(1, 'SemarangTengah', 1855, 20372, 9.11, -6.980564, 110.419449),
(2, 'SemarangUtara', 2516, 30839, 8.16, -6.961651, 110.414597),
(3, 'SemarangTimur', 927, 21824, 4.25, -6.974312, 110.436699),
(4, 'Gayamsari', 717, 21960, 3.27, -6.997145, 110.449669),
(5, 'Genuk', 1137, 25366, 4.48, -6.966323, 110.480957),
(6, 'Pedurungan', 659, 48057, 1.37, -7.004327, 110.474281),
(7, 'SemarangSelatan', 1174, 21195, 5.54, -6.995289, 110.423927),
(8, 'Candisari', 1214, 20661, 5.88, -7.017650, 110.427567),
(9, 'Gajahmungkur', 440, 16203, 2.72, -7.011866, 110.406250),
(10, 'Tembalang', 1436, 43336, 3.31, -7.052621, 110.459900),
(11, 'Banyumanik', 997, 35737, 2.79, -7.067826, 110.420204),
(12, 'Gunungpati', 962, 21945, 4.38, -7.061364, 110.374214),
(13, 'SemarangBarat', 1263, 41973, 3.01, -6.986373, 110.384079),
(14, 'Ngaliyan', 740, 37882, 1.95, -6.997002, 110.327339),
(15, 'Mijen', 1295, 17089, 7.58, -7.055466, 110.316833),
(16, 'Tugu', 452, 8940, 5.06, -6.963202, 110.322044);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(50) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user`, `pass`) VALUES
(1, 'admin', '$2y$10$eGUO6VqNURgWOwnaZwPlxuzOhRw.YYHQ5xikDWzyg3XhQIrhOXN3u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `No` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
