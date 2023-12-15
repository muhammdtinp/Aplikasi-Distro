-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2017 at 01:17 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `unpamcloth`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_barang`
--

CREATE TABLE IF NOT EXISTS `data_barang` (
  `kd_barang` varchar(6) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `stok` int(50) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `harga_jual` varchar(10) NOT NULL,
  `catatan` varchar(250) NOT NULL,
  PRIMARY KEY (`kd_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_barang`
--

INSERT INTO `data_barang` (`kd_barang`, `nama_barang`, `stok`, `harga`, `harga_jual`, `catatan`) VALUES
('B0001', 'Baju Polos Hitam', 100, '30000', '45000', '		'),
('B0002', 'Beng-Beng', 50, '1000', '1500', ''),
('B0003', 'Sabun', 200, '1500', '2500', ''),
('B0004', 'Sambel', 100, '300', '500', ''),
('B0005', 'Back Pack', 10, '100000', '200000', '');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `kd_member` varchar(7) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `no_tlp` varchar(50) NOT NULL,
  `alamat` varchar(70) NOT NULL,
  PRIMARY KEY (`kd_member`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`kd_member`, `nama`, `no_tlp`, `alamat`) VALUES
('MEM001', 'Jamal', '789870', 'hgjjkjhk'),
('MEM002', 'Gondrong', '081617619862', 'jhkhjkhj hjkkkh hjkhkj'),
('MEM003', 'Malih', '0816879899', 'jauh');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `kd_pembelian` varchar(5) NOT NULL,
  `kd_suplier` varchar(7) NOT NULL,
  `perusahaan` varchar(20) NOT NULL,
  `tgl` date NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL,
  PRIMARY KEY (`kd_pembelian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`kd_pembelian`, `kd_suplier`, `perusahaan`, `tgl`, `nama_barang`, `jumlah`, `harga`, `total`) VALUES
('TP001', 'SUP001', 'OK Print', '2017-11-28', 'Barang Test', '100', '10000', '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE IF NOT EXISTS `penjualan` (
  `no_transaksi` varchar(7) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `kd_barang` varchar(5) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `stok` int(50) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `harga` bigint(10) NOT NULL,
  `total` bigint(10) NOT NULL,
  `kd_member` varchar(5) NOT NULL,
  `nama_member` varchar(25) NOT NULL,
  `diskon` int(5) NOT NULL,
  `total2` bigint(10) NOT NULL,
  `bayar` bigint(10) NOT NULL,
  `kembalian` bigint(10) NOT NULL,
  PRIMARY KEY (`no_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`no_transaksi`, `tgl_transaksi`, `kd_barang`, `nama_barang`, `stok`, `jumlah`, `harga`, `total`, `kd_member`, `nama_member`, `diskon`, `total2`, `bayar`, `kembalian`) VALUES
('T0001', '2017-07-07', 'B0001', 'Baju Polos Hitam', 100, 12, 45000, 540000, '', '', 0, 540000, 600000, 60000);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `kd_supplier` varchar(7) NOT NULL,
  `nama_toko` varchar(15) NOT NULL,
  `barang_dijual` varchar(20) NOT NULL,
  `no_tlp` varchar(13) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  PRIMARY KEY (`kd_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kd_supplier`, `nama_toko`, `barang_dijual`, `no_tlp`, `alamat`) VALUES
('SUP001', 'OK Print', 'Sablon', '812367', 'Cibinong');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
