-- phpMyAdmin SQL Dump
-- version 3.1.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 05, 2018 at 07:50 AM
-- Server version: 5.1.35
-- PHP Version: 5.2.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_sertifikasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `kd_admin` int(5) NOT NULL AUTO_INCREMENT,
  `nm_lengkap` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(15) NOT NULL,
  `level` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`kd_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`kd_admin`, `nm_lengkap`, `alamat`, `telpon`, `level`, `username`, `password`) VALUES
(1, 'Admin', 'sdf', '780780', 'Admin', 'admin', 'admin'),
(2, 'Rafy Purwanto', 'Padang', '082170214495', 'guru', '15132017', '082170214495');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `N_generik` int(4) NOT NULL,
  `N_spesifik` int(11) NOT NULL,
  `N_masa` int(4) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `N_generik`, `N_spesifik`, `N_masa`, `keterangan`) VALUES
(1, 5, 3, 5, 'Lulus'),
(2, 3, 3, 3, 'Lulus'),
(3, 3, 3, 5, 'Lulus'),
(4, 5, 1, 1, 'Tidak Lulus'),
(5, 5, 3, 5, 'Lulus'),
(6, 3, 1, 1, 'Tidak Lulus'),
(7, 3, 1, 1, 'Tidak Lulus'),
(8, 5, 5, 5, 'Lulus'),
(9, 5, 3, 5, 'Lulus');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE IF NOT EXISTS `guru` (
  `nip` char(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `golongan` varchar(15) NOT NULL,
  `usia` varchar(15) NOT NULL,
  `masa_kerja` varchar(15) NOT NULL,
  `pendidikan` varchar(15) NOT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`nip`, `nama`, `jk`, `tempat_lahir`, `tgl_lahir`, `alamat`, `telpon`, `agama`, `golongan`, `usia`, `masa_kerja`, `pendidikan`) VALUES
('15132017', 'Rafy Purwanto, S.Pd', 'Laki-laki', 'Padang', '1967-09-23', 'Jl. Berok Raya No 55 A', '082170214495', 'Islam', 'III', '35', '10', 'S1'),
('54312', 'Reza Kurniawan', 'Laki-laki', 'Padang', '1970-09-10', 'Padang', '082170214458', 'Islam', 'I', '25', '15', 'S1');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE IF NOT EXISTS `hasil` (
  `Kd_hasil` int(5) NOT NULL AUTO_INCREMENT,
  `nip` char(20) NOT NULL,
  `Jumlah_nilai` int(6) NOT NULL,
  `keterangan` varchar(15) NOT NULL,
  PRIMARY KEY (`Kd_hasil`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`Kd_hasil`, `nip`, `Jumlah_nilai`, `keterangan`) VALUES
(26, '15132017', 8, 'Lulus'),
(27, '15132017', 8, 'Lulus'),
(28, '15132017', 2, 'Tidak Lulus'),
(29, '15132017', 2, 'Tidak Lulus'),
(30, '15132017', 2, 'Tidak Lulus'),
(31, '15132017', 2, 'Tidak Lulus'),
(32, '15132017', 6, 'Lulus');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE IF NOT EXISTS `laporan` (
  `kd_Laporan` char(10) NOT NULL,
  `kd_personil` char(10) NOT NULL,
  `kd_nilai` char(10) NOT NULL,
  `Jumlah_nilai` int(6) NOT NULL,
  `keterangan` varchar(15) NOT NULL,
  PRIMARY KEY (`kd_Laporan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--


-- --------------------------------------------------------

--
-- Table structure for table `sementara`
--

CREATE TABLE IF NOT EXISTS `sementara` (
  `id` int(4) NOT NULL,
  `N_generik` int(4) NOT NULL,
  `N_spesifik` int(4) NOT NULL,
  `N_masa` int(4) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `jarak` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sementara`
--


-- --------------------------------------------------------

--
-- Table structure for table `urut`
--

CREATE TABLE IF NOT EXISTS `urut` (
  `id` int(4) NOT NULL,
  `N_generik` int(4) NOT NULL,
  `N_spesifik` int(4) NOT NULL,
  `N_masa` int(4) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `jarak` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `urut`
--

