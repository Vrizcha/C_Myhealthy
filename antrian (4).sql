-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2022 pada 10.29
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `antrian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `poli_gigi`
--

CREATE TABLE `poli_gigi` (
  `NO_ANTRIAN` int(20) NOT NULL,
  `NIK` int(50) NOT NULL,
  `Tanggal` date NOT NULL,
  `Nama_Pasien` varchar(100) NOT NULL,
  `Jenis_Poli` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `poli_gigi`
--

INSERT INTO `poli_gigi` (`NO_ANTRIAN`, `NIK`, `Tanggal`, `Nama_Pasien`, `Jenis_Poli`) VALUES
(1, 732653543, '2022-06-12', 'Annisa ', 'Poli Gigi'),
(2, 327657365, '2022-06-12', 'Kipli Ganteng', 'Poli Gigi'),
(3, 623546236, '2022-06-12', 'Firda', 'Poli Gigi'),
(4, 73256356, '2022-06-12', 'Alif ', 'Poli Gigi'),
(5, 372657356, '2022-06-12', 'Vrizcha', 'Poli Gigi'),
(8, 3420957, '2022-06-12', 'firda azzek', 'Poli_Gigi'),
(9, 30400634, '2022-06-12', 'firda unsilah', 'Poli_Gigi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poli_kia`
--

CREATE TABLE `poli_kia` (
  `NO_ANTRIAN` int(100) NOT NULL,
  `NIK` int(50) NOT NULL,
  `Tanggal` date NOT NULL,
  `Nama_Pasien` varchar(100) NOT NULL,
  `Jenis_Poli` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `poli_kia`
--

INSERT INTO `poli_kia` (`NO_ANTRIAN`, `NIK`, `Tanggal`, `Nama_Pasien`, `Jenis_Poli`) VALUES
(1, 32765235, '2022-06-12', 'Kipli Ganteng', 'Poli Kia'),
(2, 72364234, '2022-06-12', 'Annisa', 'Poli Kia'),
(3, 23764274, '2022-06-12', 'Firda', 'Poli Kia'),
(4, 732654235, '2022-06-12', 'Firda', 'Poli Kia'),
(5, 732765327, '2022-06-12', 'Vrizcha', 'Poli Kia'),
(7, 367209546, '2022-06-12', 'alif rafli', 'Poli_Kia'),
(8, 30400634, '2022-06-12', 'alif muslim', 'Poli_Kia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poli_umum`
--

CREATE TABLE `poli_umum` (
  `NO_ANTRIAN` int(10) NOT NULL,
  `NIK` int(25) NOT NULL,
  `Tanggal` date NOT NULL,
  `Nama_Pasien` text NOT NULL,
  `Jenis_Poli` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `poli_umum`
--

INSERT INTO `poli_umum` (`NO_ANTRIAN`, `NIK`, `Tanggal`, `Nama_Pasien`, `Jenis_Poli`) VALUES
(1, 224423569, '2022-06-14', 'rudy', 'umum'),
(2, 30067008, '2022-06-14', 'Annisa ulfa', 'umum'),
(4, 32045724, '2022-06-14', 'firda unsilah', 'umum'),
(5, 30067009, '2022-06-14', 'rafli anfalul', 'umum'),
(6, 300042607, '2022-06-14', 'alif muslim', 'umum'),
(7, 32045554, '2022-06-14', 'vrisca aulia', 'umum'),
(8, 53653524, '2022-06-14', 'rafli jelek', 'umum'),
(13, 30400634, '2022-06-14', 'sda', 'umum'),
(15, 30040597, '2022-06-14', 'annisa ariqah', 'umum'),
(16, 32045724, '2022-06-14', 'annisa Ariqah', 'umum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_grup`
--

CREATE TABLE `tb_grup` (
  `id_grup` int(11) NOT NULL,
  `grup` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_grup`
--

INSERT INTO `tb_grup` (`id_grup`, `grup`) VALUES
(1, 'Petugas'),
(2, 'Pasien');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(6) DEFAULT NULL,
  `grup` int(2) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `grup`, `nama`) VALUES
(3, 'admin3', 'firdau', 2, 'firda ulfa'),
(13, 'Alip13', '123456', 1, 'Anfalul'),
(15, 'fird21', '123456', 1, 'Firda Ulfa Unsilah'),
(16, 'ADM02', '123456', 1, 'Vrizcha aul'),
(18, 'bubu', '$2y$10', 1, 'bubu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `poli_gigi`
--
ALTER TABLE `poli_gigi`
  ADD PRIMARY KEY (`NO_ANTRIAN`);

--
-- Indeks untuk tabel `poli_kia`
--
ALTER TABLE `poli_kia`
  ADD PRIMARY KEY (`NO_ANTRIAN`);

--
-- Indeks untuk tabel `poli_umum`
--
ALTER TABLE `poli_umum`
  ADD PRIMARY KEY (`NO_ANTRIAN`);

--
-- Indeks untuk tabel `tb_grup`
--
ALTER TABLE `tb_grup`
  ADD PRIMARY KEY (`id_grup`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `poli_gigi`
--
ALTER TABLE `poli_gigi`
  MODIFY `NO_ANTRIAN` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `poli_kia`
--
ALTER TABLE `poli_kia`
  MODIFY `NO_ANTRIAN` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `poli_umum`
--
ALTER TABLE `poli_umum`
  MODIFY `NO_ANTRIAN` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_grup`
--
ALTER TABLE `tb_grup`
  MODIFY `id_grup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
