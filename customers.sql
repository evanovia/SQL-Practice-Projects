-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Mar 2023 pada 21.47
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nasabah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `namaawal` varchar(50) NOT NULL,
  `namaakhir` varchar(50) NOT NULL,
  `kewarganegaraan` varchar(50) NOT NULL,
  `no_identitas` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `alamat_nasabah` text NOT NULL,
  `jenis_pekerjaan` varchar(50) NOT NULL,
  `nama_instansi` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `saldo` int(11) NOT NULL DEFAULT 0,
  `status_rekening` varchar(20) NOT NULL DEFAULT 'aktif',
  `nama_ibu_kandung` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `namaawal`, `namaakhir`, `kewarganegaraan`, `no_identitas`, `dob`, `alamat_nasabah`, `jenis_pekerjaan`, `nama_instansi`, `kota`, `provinsi`, `id_user`, `password`, `saldo`, `status_rekening`, `nama_ibu_kandung`) VALUES
(1, 'adsas', 'asdasd', 'asdasd', 'asd', '2023-03-15', 'asdas', 'Swasta', 'asdas', 'asda', 'asd', '121212', 'password', 1001, 'aktif', ''),
(2, 'reza', 'asdasd', 'Indonesia', '12341', '2023-03-07', 'bekasi', 'Wiraswasta', 'asdasd', 'bekasi', 'bekasi', '1234', 'password', 4623, 'aktif', ''),
(3, 'reza', 'asdasd', 'Indonesia', '12341', '2023-03-07', 'bekasi', 'Wiraswasta', 'asdasd', 'bekasi', 'bekasi', '1011046', 'password', 0, 'aktif', ''),
(4, 'reza', 'asdasd', 'Indonesia', '12341', '2023-03-28', 'bekasi', 'Swasta', 'asdasd', 'bekasi', 'ddd', '1011046', 'password', 0, 'aktif', ''),
(5, 'asdasd', 'dsdsd', 'sdssdsd', 'sdsd', '2023-03-07', 'sdsdsd', 'Swasta', 'aas', 'sdsd', 'bekasi', '1011046', 'pppp', 0, 'aktif', ''),
(6, 'reza', 'asdasd', 'Indonesia', 'sdsd', '2023-03-20', 'bekasi', 'PNS', 'sa', 'bekasi', 'bekasi', '121212', 'password', 1001, 'aktif', ''),
(7, 'reza1', 'hidayat', 'Indonesia', '245554', '2023-03-21', 'bekasi', 'PNS', 'bpkp', 'bekasi', 'jawabarat', '2345', '123', 9326, 'aktif', ''),
(12, 'reza', 'hidayat', 'Indonesia', '12341', '2023-03-07', 'bekasi', 'Swasta', 'asdasd', 'bekasi', 'ddd', '1', '1', 5893, 'aktif', 'elva');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_pengirim` varchar(50) NOT NULL,
  `id_penerima` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_pengirim`, `id_penerima`, `jumlah`, `tanggal`) VALUES
(1, '121212', '1234', 200, '2023-03-15 00:04:01'),
(2, '121212', '1234', 200, '2023-03-15 00:04:01'),
(3, '121212', '1234', 200, '2023-03-15 00:04:04'),
(4, '121212', '1234', 200, '2023-03-15 00:04:04'),
(5, '121212', '1234', 200, '2023-03-15 00:11:53'),
(6, '121212', '1234', 123, '2023-03-15 00:12:00'),
(7, '1', '1234', 1000, '2023-03-16 19:58:10'),
(8, '1', '1', 300, '0000-00-00 00:00:00'),
(9, '1', '', 300, '0000-00-00 00:00:00'),
(10, '1', '1', 300, '0000-00-00 00:00:00'),
(11, '1', 'tariktunai', 200, '0000-00-00 00:00:00'),
(12, '1', 'tariktunai', 80, '0000-00-00 00:00:00'),
(13, '2345', '1', 100, '0000-00-00 00:00:00'),
(14, '2345', '1', 20, '0000-00-00 00:00:00'),
(15, '2345', '1', 30, '2023-03-17 03:35:12'),
(16, '2345', '1', 2, '2023-03-17 03:43:18'),
(17, '2345', '1', 222, '2023-03-17 03:43:49');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
