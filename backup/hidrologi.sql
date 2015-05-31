-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 31 Mei 2015 pada 02.50
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hidrologi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_debit`
--

CREATE TABLE IF NOT EXISTS `data_debit` (
`id` int(11) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `tahun` year(4) NOT NULL,
  `data` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_hujan`
--

CREATE TABLE IF NOT EXISTS `data_hujan` (
`id` int(11) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `tahun` year(4) NOT NULL,
  `data` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `induk_sungai`
--

CREATE TABLE IF NOT EXISTS `induk_sungai` (
`id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelaksana`
--

CREATE TABLE IF NOT EXISTS `pelaksana` (
`id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pos_duga`
--

CREATE TABLE IF NOT EXISTS `pos_duga` (
`id` int(11) NOT NULL,
  `nama_pos` varchar(255) NOT NULL,
  `no_pos` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `lokasi_pos` varchar(255) NOT NULL,
  `ldp` varchar(255) NOT NULL,
  `catatan` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pos_duga`
--

INSERT INTO `pos_duga` (`id`, `nama_pos`, `no_pos`, `latitude`, `longitude`, `lokasi_pos`, `ldp`, `catatan`) VALUES
(1, 'nama', 'nomer', 'latitude', 'longtude', 'lokasi', 'ldp', 'catatan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_debit`
--
ALTER TABLE `data_debit`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_hujan`
--
ALTER TABLE `data_hujan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `induk_sungai`
--
ALTER TABLE `induk_sungai`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelaksana`
--
ALTER TABLE `pelaksana`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_duga`
--
ALTER TABLE `pos_duga`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_debit`
--
ALTER TABLE `data_debit`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_hujan`
--
ALTER TABLE `data_hujan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `induk_sungai`
--
ALTER TABLE `induk_sungai`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pelaksana`
--
ALTER TABLE `pelaksana`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pos_duga`
--
ALTER TABLE `pos_duga`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
