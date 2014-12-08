-- phpMyAdmin SQL Dump
-- version 4.2.13
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 07, 2014 at 09:43 AM
-- Server version: 5.5.40-0ubuntu1
-- PHP Version: 5.5.19-1+deb.sury.org~utopic+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ferani_baby_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id_admin` int(15) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(25) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`) VALUES
(1, 'admin', 'password', 'Admin Ganteng'),
(3, 'enung8', 'enung', 'Nuraeni');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `keterangan` text NOT NULL,
  `stok` int(5) NOT NULL,
  `harga` double NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `id_kategori`, `nama_barang`, `keterangan`, `stok`, `harga`, `gambar`) VALUES
('SAP2134', 5, 'Baju Bayi', 'Ini tidak dijual', 30, 20000, 'Jellyfish.jpg'),
('MAI3213', 2, 'Mainan Bayi', 'ini juga ga dijual', 19, 10000, 'Lighthouse.jpg'),
('dfdaf', 4, 'dfadf', 'dfg', 43, 2323, '5e314d4cbf3be7f42c724d85ff3f65a1.jpg'),
('dfdg', 1, 'dfdfv', 'dsfsdf', 232, 4334, 'sepatu.jpg'),
('ferfer', 1, 'dsfgdsf', 'ewfwef', 23423, 324234, 'cnqy4fkdrymitqaif8hw.jpg'),
('dfgrg', 5, 'ergf', 'dfgs', 546, 46546, '1297307145_165392947_1-Pictures-of--baju-muslimah-trendyBrooch-Baby-headband.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(25) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Mainan Anak'),
(2, 'Perlengkapan Tidur Bayi'),
(3, 'Perlengkapan Ibu'),
(4, 'Perlengkapan Makan'),
(5, 'Pakaian Bayi');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE IF NOT EXISTS `konfirmasi` (
  `id_konfirmasi` int(5) NOT NULL,
  `id_pesan` varchar(6) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `bank_pemilik` varchar(25) NOT NULL,
  `pemilik` varchar(25) NOT NULL,
  `norekening` varchar(25) NOT NULL,
  `bank_tujuan` varchar(25) NOT NULL,
  `tanggal` date NOT NULL,
  `email` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id_pelanggan` int(8) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(25) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE IF NOT EXISTS `pesan` (
  `id_pesan` varchar(6) NOT NULL,
  `id_pelanggan` int(5) NOT NULL,
  `status_pesan` varchar(10) NOT NULL,
  `total_harga` double NOT NULL,
  `tgl_pesan` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pesan_detail`
--

CREATE TABLE IF NOT EXISTS `pesan_detail` (
  `id_pesan` varchar(6) NOT NULL,
  `id_barang` int(5) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `harga` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
 ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
 ADD PRIMARY KEY (`id_konfirmasi`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
 ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
 ADD PRIMARY KEY (`id_pesan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id_admin` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
