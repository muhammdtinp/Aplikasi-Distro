-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jun 2022 pada 12.53
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `kodePegawai` varchar(4) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`kodePegawai`, `username`, `nama`, `password`) VALUES
('0001', 'admin', 'Tino', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE `data_barang` (
  `kd_barang` varchar(6) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `stok` int(50) NOT NULL,
  `harga_jual` varchar(10) NOT NULL,
  `catatan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`kd_barang`, `nama_barang`, `stok`, `harga_jual`, `catatan`) VALUES
('A0001', 'Depth - Free Fall Hoodie', 119, '370000', 'Material Cotton 330 gsm'),
('A0002', 'Depth - Ancient Crewneck', 119, '349000', 'Material Cotton Fleece'),
('A0003', 'Depth - Lovers Hoodie', 124, '399000', 'Material Cotton Fleece'),
('B0001', 'Depth - Dope Cat Tshirt', 118, '199000', 'Material Cotton Combed 20s'),
('B0002', 'Depth - Lightning Tshirt', 109, '179000', 'Material Cotton Combed 20s'),
('B0003', 'Depth - Utility Vest', 122, '149000', 'Material Twill Colton'),
('C0001', 'Depth - Leopard Pants', 118, '149000', 'Made by Nylon Fabric'),
('D0001', 'Depth - Marca Totebag', 70, '177000', '100% Cotton'),
('D0002', 'Depth - Mild Shoulder Bag', 71, '149000', 'Material Sherpa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `kd_member` varchar(7) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `no_tlp` varchar(50) NOT NULL,
  `alamat` varchar(70) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`kd_member`, `nama`, `no_tlp`, `alamat`, `username`, `password`) VALUES
('MEM001', 'Akmal', '08953214563', 'Jalan Kebayoran Lama', 'akmal', 'akmal'),
('MEM002', 'Raka', '08776767897', 'Jalan Siliwangi', 'raka', 'raka'),
('MEM003', 'Ryan', '08957789000', 'Jalan Newyork', 'ryan', 'ryan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `nama` varchar(20) NOT NULL,
  `tgl` date NOT NULL,
  `kd_barang` varchar(6) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL,
  `no_transaksi` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`nama`, `tgl`, `kd_barang`, `nama_barang`, `jumlah`, `harga`, `total`, `no_transaksi`) VALUES
('Ryan', '2022-06-03', 'A0001', 'Depth - Free Fall Hoodie', '1', '370000', '370000', 'RP001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `no_transaksi` varchar(7) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `kd_barang` varchar(5) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `stok` int(50) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `harga` bigint(10) NOT NULL,
  `total` bigint(10) NOT NULL,
  `kd_member` varchar(8) NOT NULL,
  `nama_member` varchar(25) NOT NULL,
  `diskon` int(5) NOT NULL,
  `total2` bigint(10) NOT NULL,
  `bayar` bigint(10) NOT NULL,
  `kembalian` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`no_transaksi`, `tgl_transaksi`, `kd_barang`, `nama_barang`, `stok`, `jumlah`, `harga`, `total`, `kd_member`, `nama_member`, `diskon`, `total2`, `bayar`, `kembalian`) VALUES
('T0002', '2022-06-03', 'B0001', 'Depth - Dope Cat Tshirt', 121, 3, 199000, 597000, 'MEM002', 'Raka', 10, 537300, 600000, 62700),
('T0003', '2022-06-03', 'D0001', 'Depth - Marca Totebag', 81, 11, 177000, 1947000, 'MEM001', 'Akmal', 10, 1752300, 1800000, 47700);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `kd_supplier` varchar(7) NOT NULL,
  `nama_toko` varchar(15) NOT NULL,
  `barang_dijual` varchar(20) NOT NULL,
  `no_tlp` varchar(13) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`kd_supplier`, `nama_toko`, `barang_dijual`, `no_tlp`, `alamat`) VALUES
('SUP001', 'OK Print', 'Sablon', '812367', 'Cibinong');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`kodePegawai`);

--
-- Indeks untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`kd_member`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`nama`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kd_supplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
