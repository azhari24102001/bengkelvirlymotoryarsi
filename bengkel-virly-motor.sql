-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jul 2023 pada 13.34
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
-- Database: `bengkel-virly-motor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carousel`
--

CREATE TABLE `carousel` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `carousel`
--

INSERT INTO `carousel` (`id`, `foto`, `judul`, `deskripsi`) VALUES
(1, 'carouselslide1.png', 'carouselbengkelvirly1', 'Deskripsi Gambar 1'),
(2, 'carouselslide2.png', 'carouselbengkelvirly2', 'Deskripsi Gambar 2'),
(3, 'carouselslide3.png', 'carouselbengkelvirly3', 'Deskripsi Gambar 3'),
(4, 'carouselslide4.png', 'carouselbengkelvirly4', 'Deskripsi Gambar 4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pembelian`
--

CREATE TABLE `detail_pembelian` (
  `id` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_mobil` int(100) NOT NULL,
  `id_sparepart` int(100) NOT NULL,
  `id_services` int(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_pembelian`
--

INSERT INTO `detail_pembelian` (`id`, `id_pembelian`, `id_mobil`, `id_sparepart`, `id_services`, `jumlah`, `harga`, `total`) VALUES
(2, 12, 3, 0, 0, 1, 120000000, 120000000),
(10, 19, 1, 0, 0, 1, 371000000, 371000000),
(11, 20, 2, 0, 0, 1, 1329000000, 1329000000),
(12, 21, 1, 0, 0, 1, 371000000, 371000000),
(14, 23, 1, 0, 0, 1, 1230000000, 1230000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `pertanyaan` text DEFAULT NULL,
  `jawaban` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `faq`
--

INSERT INTO `faq` (`id`, `pertanyaan`, `jawaban`) VALUES
(1, 'Dimanakah Alamat Bengkel Virly Motor?', ' Jalan KSR Dadi Kusmayadi Rt 03 Rw 05 No 4 Cibinong, Tengah, Kec. Cibinong, Kabupaten Bogor, Jawa Barat 16914'),
(2, 'Bagaimanakah cara melakukan Reservasi untuk Service?', 'Dengan menghubungi nomor Whatsapp yang tertera'),
(3, 'Berapakah Biaya untuk 1x service?', 'Biaya service akan ditentukan setelah mekanik melakukan pemeriksaan kerusakan dan part yang perlu diganti');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `id_sparepart` int(11) NOT NULL,
  `id_services` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id`, `id_user`, `id_mobil`, `id_sparepart`, `id_services`, `jumlah`) VALUES
(28, 20, 5, 0, 0, 1),
(29, 20, 2, 0, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `metode_pembayaran`
--

CREATE TABLE `metode_pembayaran` (
  `id` int(20) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `metode_pembayaran`
--

INSERT INTO `metode_pembayaran` (`id`, `nama`) VALUES
(1, 'Cash On Delivery');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `cc` int(11) NOT NULL,
  `tipe_bbm` varchar(100) NOT NULL,
  `tahun` int(4) NOT NULL,
  `jarak_tempuh` int(11) NOT NULL,
  `kondisi` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `kategori` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id`, `nama`, `merk`, `harga`, `cc`, `tipe_bbm`, `tahun`, `jarak_tempuh`, `kondisi`, `foto`, `kategori`, `stok`) VALUES
(1, 'Mercedes Benz C 200', 'Mercedes Benz', 1230000000, 1991, 'Bensin', 2014, 0, 'baru', 'c200.png', 3, 0),
(2, 'Kijang Innova', 'Toyota', 422900000, 2393, 'Diesel', 2020, 0, 'baru', 'innova-2020.png', 3, 1),
(3, 'BMW X7', 'Bayerische Motoren Werke AG', 2147483647, 2998, 'Bensin', 2023, 0, 'baru', 'bmw-x7-front-angle-low-view-946003.jpg', 3, 1),
(4, 'BMW X3', 'Bayerische Motoren Werke AG', 1330000000, 1998, 'Bensin', 2023, 0, 'baru', 'bmw-x3-front-angle-low-view-898963.jpg', 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `alamat` text NOT NULL,
  `pengiriman` varchar(20) NOT NULL,
  `pembayaran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id`, `id_user`, `subtotal`, `tanggal`, `alamat`, `pengiriman`, `pembayaran`) VALUES
(1, 5, 100000, '2023-05-23 07:03:25', 'jl yuk', '', ''),
(2, 5, 100000, '2023-05-23 07:09:45', 'jl yuk', '', ''),
(3, 5, 200000, '2023-05-23 07:27:57', 'jl yuk', '', ''),
(4, 5, 100000, '2023-05-23 07:28:46', 'jl yuk', '', ''),
(5, 5, 100000, '2023-05-23 07:30:06', 'jl yuk', '', ''),
(6, 5, 0, '2023-05-23 07:31:13', 'jl yuk', '', ''),
(7, 5, 10000, '2023-05-23 07:35:35', 'jl yuk', '', ''),
(8, 5, 100000, '2023-05-23 07:35:50', 'jl yuk', '', ''),
(9, 5, 30000, '2023-05-23 07:36:46', 'jl yuk', '', ''),
(10, 5, 100000000, '2023-05-23 09:05:37', 'jl. yuk', '', ''),
(12, 8, 120000000, '2023-05-23 14:22:11', 'jl. babelan\r\n', '', ''),
(19, 5, 371000000, '2023-05-27 06:23:18', 'jl', '', ''),
(20, 5, 1329000000, '2023-03-27 07:08:02', 'jl', '', ''),
(21, 5, 371000000, '2023-06-13 03:25:51', 'jl', '', ''),
(23, 21, 1230000000, '2023-06-28 12:24:20', 'Jl lah', '', 'Cash On Delivery');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id` int(20) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori_services` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `nama`, `kategori_services`, `harga`, `foto`, `kategori`) VALUES
(1, 'Ganti Oli', 'service ringan', 150000, 'Ganti oli mobil.jpeg', 1),
(2, 'Ganti Aki', 'service ringan', 500000, 'melepas_aki_mobil_dealer_suzuki.jpg', 1),
(3, 'Tune Up', 'service ringan', 300000, 'tune-up-mobil-injeksi.jpg', 1),
(4, 'Service Rem', 'service ringan', 200000, 'rem mobil.jpg', 1),
(5, 'Service Lampu', 'service ringan', 500000, 'bengkel-lampu-spion-mobil.jpg', 1),
(6, 'Injeksi', 'service ringan', 200000, 'Sistem-Injeksi-Mobil-sumber-Seva.id_.jpg', 1),
(7, 'Shockbreaker', 'service ringan', 150000, 'moladin-tips-shockbreaker-mobil-2.jpg', 1),
(8, 'Remote', 'service ringan', 180000, '63922-kunci-mobil-bmw.jpg', 1),
(9, 'ECU', 'service berat', 3000000, 'service-ecu-mobil.jpg', 1),
(10, 'Speedometer', 'service berat', 2000000, 'speedometer.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sparepart`
--

CREATE TABLE `sparepart` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sparepart`
--

INSERT INTO `sparepart` (`id`, `nama`, `harga`, `stok`, `foto`, `kategori`) VALUES
(1, 'Filter Oli', 150000, 25, 'filter oli.jpg', 2),
(2, 'Filter Udara', 100000, 30, 'filter udara.jpeg', 2),
(3, 'Busi', 40000, 60, 'busi mobil.jpg', 2),
(4, 'Aki', 350000, 40, 'aki_mobil.jpg', 2),
(5, 'Filter AC', 250000, 20, 'filter-ac-mobil-2.png', 2),
(6, 'Kanvas Rem', 150000, 15, 'fit-ganti-kampas-rem.jpeg', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `telepon` int(20) NOT NULL,
  `alamat` varchar(1000) DEFAULT NULL,
  `tipe` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `telepon`, `alamat`, `tipe`) VALUES
(1, 'admin', '', 'admin', 0, NULL, '2'),
(3, 'superadmin', '', 'superadmin', 0, NULL, '3'),
(10, 'dadansaputra', 'dadan@gmail.com', 'dadan123', 214748364, 'jl. jb', '2'),
(14, 'osaaditiya', 'osaaditiya@gmail.com', 'osaaditiya', 132813271, 'Jl. in aja', '2'),
(16, 'azhari123', 'azhari@gmail.com', 'azhari123', 123981283, 'JL. Tipar', '2'),
(19, 'algiiix', 'algifachri@gmail.com', 'algi123', 2147483647, 'Jl jalan y', '1'),
(21, 'tester123', 'tester123@gmail.com', 'tester123', 2147483647, 'Jl lah', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sparepart`
--
ALTER TABLE `sparepart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `sparepart`
--
ALTER TABLE `sparepart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
