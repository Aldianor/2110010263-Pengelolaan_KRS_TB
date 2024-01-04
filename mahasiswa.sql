-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 02:47 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `datakrs`
--

CREATE TABLE `datakrs` (
  `Npm` varchar(20) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Kelas` varchar(25) NOT NULL,
  `Jurusan` varchar(20) NOT NULL,
  `Dosen` varchar(50) NOT NULL,
  `Semester` varchar(25) NOT NULL,
  `Matkul` varchar(30) NOT NULL,
  `Ruang` varchar(20) NOT NULL,
  `Nilai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `Npm` varchar(25) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Kelas` varchar(20) NOT NULL,
  `Jurusan` varchar(10) NOT NULL,
  `Dosen` varchar(50) NOT NULL,
  `Semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`Npm`, `Nama`, `Kelas`, `Jurusan`, `Dosen`, `Semester`) VALUES
('211001', 'zian', 'A BJB REG PAGI', 'TI', 'ANGGA', 'SEMESTER 5'),
('2110010224', 'alfina', 'B BJB REG PAGI', 'SI', 'DIMAS', 'SEMESTER 8'),
('2110010666', 'muhammad abdul sommat', 'B BJB REG PAGI', 'SI', 'ANGGA', 'SEMESTER 3'),
('2110010999', 'alfianor', 'B BJB REG PAGI', 'TI', 'ANGGA', 'SEMESTER 3'),
('21100234', 'saaadah', 'A BJB REG PAGI', 'SI', 'ANGGA', 'SEMESTER 3'),
('21321323', 'sadsdsa', 'Kelas A BJB REG PAGI', 'TI', 'Dinda Azahra', 'Semester 1'),
('321323', 'sadsads', 'Kelas A BJB REG PAGI', 'TI', 'Dinda Azahra', 'Semester 1');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `Npm` int(25) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Biaya` int(200) NOT NULL,
  `Total` int(100) NOT NULL,
  `Semester` varchar(30) NOT NULL,
  `Setatus` varchar(20) NOT NULL,
  `Dibayar` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`Npm`, `Nama`, `Biaya`, `Total`, `Semester`, `Setatus`, `Dibayar`) VALUES
(12, 'aaaa', 300, 290, 'Semester 1', 'NYICIL', 10),
(213213412, 'asdsadssa', 380, -20, 'Semester 3', 'LUNAS', 400),
(2110010262, 'alfina', 300, -100, 'Semester 1', 'LUNAS', 400);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datakrs`
--
ALTER TABLE `datakrs`
  ADD PRIMARY KEY (`Npm`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`Npm`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Npm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
