-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Mar 2022 pada 15.32
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appmarketpos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_barang`
--

CREATE TABLE `tabel_barang` (
  `kd_barang` varchar(500) NOT NULL,
  `nm_barang` varchar(1000) NOT NULL,
  `kd_satuan` varchar(100) NOT NULL,
  `kd_kategori` varchar(100) NOT NULL,
  `kd_toko` varchar(10) DEFAULT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `panjang` varchar(100) DEFAULT NULL,
  `lebar` varchar(100) DEFAULT NULL,
  `tinggi` varchar(100) DEFAULT NULL,
  `warna` varchar(100) DEFAULT NULL,
  `tipe` varchar(100) DEFAULT NULL,
  `merek` varchar(255) DEFAULT NULL,
  `hrg_beli` varchar(255) NOT NULL,
  `hrg_grosir` varchar(255) NOT NULL,
  `hrg_jual` varchar(255) NOT NULL,
  `diskon` varchar(255) DEFAULT NULL,
  `hrg_jual_disk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tabel_barang`
--

INSERT INTO `tabel_barang` (`kd_barang`, `nm_barang`, `kd_satuan`, `kd_kategori`, `kd_toko`, `deskripsi`, `panjang`, `lebar`, `tinggi`, `warna`, `tipe`, `merek`, `hrg_beli`, `hrg_grosir`, `hrg_jual`, `diskon`, `hrg_jual_disk`) VALUES
('347634', 'Buku', '7', '1', '123', 'Isi disini jh', '', '', '', '', '', '14', '29833', '38298', '4829', '', ''),
('36747mbfh', 'Buku', '5', '1', '123', 'Isi disini hgbj', '', '', '', '', '', '14', '62000', '74000', '70000', '', ''),
('hnfe', 'jed', '7', '1', '123', 'Isi disini', '', '', '', '', '', '14', '9200', '74000', '60000', '', ''),
('wefewj', 'gvr', '7', '1', '123', 'Isi disini', '', '', '', '', '', '14', '29832', '29833', '29834', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_barang_gambar`
--

CREATE TABLE `tabel_barang_gambar` (
  `id_gmbr` int(255) NOT NULL,
  `id_brg` varchar(500) NOT NULL,
  `gambar` varchar(500) NOT NULL,
  `ket` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tabel_barang_gambar`
--

INSERT INTO `tabel_barang_gambar` (`id_gmbr`, `id_brg`, `gambar`, `ket`) VALUES
(26, 'SPK 0.30 3M T', 'kosong,kosong,kosong', ''),
(22, 'SPK 0.25 3M G', 'kosong,kosong,kosong', ''),
(23, 'SPK 0.25 4M T', 'kosong,kosong,kosong', ''),
(25, 'SPK 0.25 6M T', 'kosong,kosong,kosong', ''),
(1, 'fk', 'kosong,kosong,kosong', ''),
(2, 'GY', 'kosong,kosong,kosong', ''),
(3, 'CS', 'kosong,kosong,kosong', ''),
(4, 'KM', 'kosong,kosong,kosong', ''),
(5, 'SPA 0.25 4M G', 'kosong,kosong,kosong', ''),
(6, 'SPA 0.30 3M G', 'kosong,kosong,kosong', ''),
(7, 'SPA 0.30 3M T', 'kosong,kosong,kosong', ''),
(8, 'SPA 0.30 3M TB', 'kosong,kosong,kosong', ''),
(9, 'SPA 0.30 4M T', 'kosong,kosong,kosong', ''),
(10, 'SPA 0.30 5M T', 'kosong,kosong,kosong', ''),
(11, 'SPA 0.30 6M G', 'kosong,kosong,kosong', ''),
(12, 'SPA 0.30 7M G', 'kosong,kosong,kosong', ''),
(13, 'SPA T', 'kosong,kosong,kosong', ''),
(14, 'SPB G', 'kosong,kosong,kosong', ''),
(15, 'SPB T', 'kosong,kosong,kosong', ''),
(16, 'SPB GL', 'kosong,kosong,kosong', ''),
(17, 'SPB TL', 'kosong,kosong,kosong', ''),
(24, 'SPK 0.25 5M T', 'kosong,kosong,kosong', ''),
(27, 'SPK 0.30 4M T', 'kosong,kosong,kosong', ''),
(28, 'SPK 0.30 5M T', 'kosong,kosong,kosong', ''),
(29, 'SPK 0.30 6M T', 'kosong,kosong,kosong', ''),
(30, 'SPK 0.30 7M T', 'kosong,kosong,kosong', ''),
(31, 'SPPH 0.30 6M G', 'kosong,kosong,kosong', ''),
(32, 'SPPM 0.25 4M G', 'kosong,kosong,kosong', ''),
(36, 'SPPM 0.25 6M G', 'kosong,kosong,kosong', ''),
(35, 'SPPM 0.25 5M G', 'kosong,kosong,kosong', ''),
(37, 'SPPM 0.30 4M G', 'kosong,kosong,kosong', ''),
(38, 'SPPM 0.30 5M G', 'kosong,kosong,kosong', ''),
(39, 'SPPM 0.30 6M G', 'kosong,kosong,kosong', ''),
(49, 'RF 5M T', 'kosong,kosong,kosong', ''),
(42, 'SPPM G', 'kosong,kosong,kosong', ''),
(44, 'RF 4M T', 'kosong,kosong,kosong', ''),
(68, 'AMT 6M G', 'kosong,kosong,kosong', ''),
(67, 'AMP 3M G', 'kosong,kosong,kosong', ''),
(50, 'RF 3M T', 'kosong,kosong,kosong', ''),
(51, 'RF 6M T', 'kosong,kosong,kosong', ''),
(52, 'SPZ 0.25 5M T', 'kosong,kosong,kosong', ''),
(53, 'ST', 'kosong,kosong,kosong', ''),
(54, 'TLK 0.25 60CM T', 'kosong,kosong,kosong', ''),
(55, 'TLG 0.30 30CM T', 'kosong,kosong,kosong', ''),
(56, 'RE 0.40 G', 'kosong,kosong,kosong', ''),
(57, 'RE 0.40 T', 'kosong,kosong,kosong', ''),
(58, 'RE 0.40 TL', 'kosong,kosong,kosong', ''),
(59, 'RK 0.45 G', 'kosong,kosong,kosong', ''),
(60, 'SKT', 'kosong,kosong,kosong', ''),
(61, 'WA T', 'kosong,kosong,kosong', ''),
(62, 'WD T', 'kosong,kosong,kosong', ''),
(66, 'AMB 5M G', 'kosong,kosong,kosong', ''),
(65, 'AMB 4M T', 'kosong,kosong,kosong', ''),
(69, 'WAB T', 'kosong,kosong,kosong', ''),
(70, 'WAP T', 'kosong,kosong,kosong', ''),
(71, 'RF 1.5M T', 'kosong,kosong,kosong', ''),
(72, 'KS 4MM G', 'kosong,kosong,kosong', ''),
(73, 'CNPK 75;60 RLT', 'kosong,kosong,kosong', ''),
(74, 'CNPG 80;70 T', 'kosong,kosong,kosong', ''),
(75, 'CNPK 75;75 TL', 'kosong,kosong,kosong', ''),
(76, 'CNPK 75;60 T', 'kosong,kosong,kosong', ''),
(77, 'CNPK 75;75 T', 'kosong,kosong,kosong', ''),
(78, 'CNPK 80;60 T', 'kosong,kosong,kosong', ''),
(79, 'CNPK 80;75 TL', 'kosong,kosong,kosong', ''),
(80, 'BBJ T', 'kosong,kosong,kosong', ''),
(81, 'BK T', 'kosong,kosong,kosong', ''),
(82, 'BK T (1)', 'kosong,kosong,kosong', ''),
(83, 'BT T', 'kosong,kosong,kosong', ''),
(85, 'BR T', 'kosong,kosong,kosong', ''),
(86, 'BR T(1)', 'kosong,kosong,kosong', ''),
(87, 'BSP T', 'kosong,kosong,kosong', ''),
(88, 'BSP T(1)', 'kosong,kosong,kosong', ''),
(89, 'BTT T', 'kosong,kosong,kosong', ''),
(90, 'BTT T(1)', 'kosong,kosong,kosong', ''),
(105, 'BDY 8X65 T', 'kosong,kosong,kosong', ''),
(104, 'BDY 8X65 T(1)', 'kosong,kosong,kosong', ''),
(101, 'BDY 10X77 T', 'kosong,kosong,kosong', ''),
(102, 'BDY 10X65 T', 'kosong,kosong,kosong', ''),
(103, 'BDY 10X65 T(1)', 'kosong,kosong,kosong', ''),
(106, 'GK 2X2 1A T', 'kosong,kosong,kosong', ''),
(107, 'GK 2X2 1A TB', 'kosong,kosong,kosong', ''),
(108, 'GK 2X4 0.8A T', 'kosong,kosong,kosong', ''),
(109, 'GK 2X4 0.9A T', 'kosong,kosong,kosong', ''),
(110, 'GK 2X4 1A T', 'kosong,kosong,kosong', ''),
(111, 'GK 2X4 1A TB', 'kosong,kosong,kosong', ''),
(112, 'GK 3X3 1A T', 'kosong,kosong,kosong', ''),
(113, 'GK 4X4 0.9A T', 'kosong,kosong,kosong', ''),
(114, 'GK 4x4 1.2 T', 'kosong,kosong,kosong', ''),
(115, 'GK 4x4 1A T', 'kosong,kosong,kosong', ''),
(116, 'GK 4x6 0.9A T', 'kosong,kosong,kosong', ''),
(117, 'GK 4x6 1.2A T', 'kosong,kosong,kosong', ''),
(118, 'GK 5X5 1A T', 'kosong,kosong,kosong', ''),
(119, 'GMPH G', 'kosong,kosong,kosong', ''),
(120, 'GMPH T', 'kosong,kosong,kosong', ''),
(121, 'GMPM G', 'kosong,kosong,kosong', ''),
(122, 'GMPC G', 'kosong,kosong,kosong', ''),
(123, 'GYP G', 'kosong,kosong,kosong', ''),
(124, 'HLP 2X4 G', 'kosong,kosong,kosong', ''),
(125, 'HLP 2X4 T', 'kosong,kosong,kosong', ''),
(126, 'HLG 2X4 G', 'kosong,kosong,kosong', ''),
(127, 'HLG 4X4 GL', 'kosong,kosong,kosong', ''),
(128, 'HLG 4X4 GB', 'kosong,kosong,kosong', ''),
(133, 'NPC GB', 'kosong,kosong,kosong', ''),
(132, 'MTK T', 'kosong,kosong,kosong', ''),
(131, 'MTS T', 'kosong,kosong,kosong', ''),
(134, 'NPC GL', 'kosong,kosong,kosong', ''),
(135, 'NPH G', 'kosong,kosong,kosong', ''),
(136, 'NPHM GB', 'kosong,kosong,kosong', ''),
(137, 'NPHM TL', 'kosong,kosong,kosong', ''),
(138, 'NPM GB', 'kosong,kosong,kosong', ''),
(139, 'NPM TB', 'kosong,kosong,kosong', ''),
(140, 'PK 1.5 T', 'kosong,kosong,kosong', ''),
(141, 'PR T', 'kosong,kosong,kosong', ''),
(142, 'PLG 1.2A T', 'kosong,kosong,kosong', ''),
(143, 'PLM 3M G', 'kosong,kosong,kosong', ''),
(144, 'PLM 4M G', 'kosong,kosong,kosong', ''),
(145, 'PLP 3M G', 'kosong,kosong,kosong', ''),
(146, 'ALF 140C-11 G', 'kosong,kosong,kosong', ''),
(147, 'ALF 20002 G', 'kosong,kosong,kosong', ''),
(148, 'ALF 20059 G', 'kosong,kosong,kosong', ''),
(149, 'ALF 20108C G', 'kosong,kosong,kosong', ''),
(150, 'LD T', 'kosong,kosong,kosong', ''),
(151, 'LD G', 'kosong,kosong,kosong', ''),
(152, 'LF 6CM G', 'kosong,kosong,kosong', ''),
(153, 'LF 8CM G', 'kosong,kosong,kosong', ''),
(154, 'LFS 6CM G', 'kosong,kosong,kosong', ''),
(155, 'LHC G', 'kosong,kosong,kosong', ''),
(156, 'LHP G', 'kosong,kosong,kosong', ''),
(157, 'LJC G', 'kosong,kosong,kosong', ''),
(158, 'LJC GB', 'kosong,kosong,kosong', ''),
(159, 'LJP G', 'kosong,kosong,kosong', ''),
(160, 'LKF G', 'kosong,kosong,kosong', ''),
(161, 'LKC G', 'kosong,kosong,kosong', ''),
(162, 'LKP G', 'kosong,kosong,kosong', ''),
(163, 'LSF GB G', 'kosong,kosong,kosong', ''),
(164, 'LSF SB G', 'kosong,kosong,kosong', ''),
(165, 'LSE G', 'kosong,kosong,kosong', ''),
(166, 'LSM G', 'kosong,kosong,kosong', ''),
(167, 'LSMK G', 'kosong,kosong,kosong', ''),
(168, 'LSMS G', 'kosong,kosong,kosong', ''),
(169, 'LSSP G', 'kosong,kosong,kosong', ''),
(170, 'M 8005 G', 'kosong,kosong,kosong', ''),
(171, 'M 8016 G', 'kosong,kosong,kosong', ''),
(172, 'M 8020 G', 'kosong,kosong,kosong', ''),
(173, 'M 8029 G', 'kosong,kosong,kosong', ''),
(177, 'M 8053 G', 'kosong,kosong,kosong', ''),
(176, 'M 8051 G', 'kosong,kosong,kosong', ''),
(178, 'M 8061 G', 'kosong,kosong,kosong', ''),
(179, 'MAB UGE G', 'kosong,kosong,kosong', ''),
(180, 'OR 70X90 E G', 'kosong,kosong,kosong', ''),
(181, 'ULT 02 G', 'kosong,kosong,kosong', ''),
(182, 'ULT 05 G', 'kosong,kosong,kosong', ''),
(183, 'ULT 06 G', 'kosong,kosong,kosong', ''),
(184, 'ULT 09 G', 'kosong,kosong,kosong', ''),
(185, 'ULT 10 G', 'kosong,kosong,kosong', ''),
(186, 'ULT 11 G', 'kosong,kosong,kosong', ''),
(187, 'ULT 12 G', 'kosong,kosong,kosong', ''),
(188, 'ULT 13 G', 'kosong,kosong,kosong', ''),
(189, 'ULT 15 G', 'kosong,kosong,kosong', ''),
(190, 'ULT 17 G', 'kosong,kosong,kosong', ''),
(191, 'ULT 18 G', 'kosong,kosong,kosong', ''),
(192, 'ULT 24 G', 'kosong,kosong,kosong', ''),
(193, 'ULT 25 G', 'kosong,kosong,kosong', ''),
(194, 'ULT 28 G', 'kosong,kosong,kosong', ''),
(195, 'ULT 30 G', 'kosong,kosong,kosong', ''),
(196, 'ULT 31 G', 'kosong,kosong,kosong', ''),
(197, 'ULT 32 G', 'kosong,kosong,kosong', ''),
(198, 'ULT 34 G', 'kosong,kosong,kosong', ''),
(199, 'ULT 36 G', 'kosong,kosong,kosong', ''),
(200, 'ULT 38 G', 'kosong,kosong,kosong', ''),
(201, 'ULT 39 G', 'kosong,kosong,kosong', ''),
(202, 'ULT 39 IG', 'kosong,kosong,kosong', ''),
(203, 'ULT 40 G', 'kosong,kosong,kosong', ''),
(204, 'ULT 42 G', 'kosong,kosong,kosong', ''),
(205, 'ugiyg', '6228e500e05a8.jpg,kosong,kosong', ''),
(221, '347634', '622962aa99dec.png,kosong,kosong', ''),
(222, '36747mbfh', 'kosong,kosong,kosong', ''),
(209, 'imfdie32', '6228e672d9947.jpg,kosong,kosong', ''),
(224, 'hnfe', 'kosong,kosong,kosong', ''),
(223, 'wefewj', 'kosong,kosong,kosong', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_bukti_pembayaran`
--

CREATE TABLE `tabel_bukti_pembayaran` (
  `id_bukti` varchar(50) NOT NULL,
  `gmb_bukti` varchar(1000) NOT NULL,
  `ket_bukti` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_info`
--

CREATE TABLE `tabel_info` (
  `id_info` int(255) NOT NULL,
  `kd_kategori_info` int(11) NOT NULL,
  `judul` varchar(1000) NOT NULL,
  `subjudul` varchar(100) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `tanggal` varchar(25) NOT NULL,
  `informasi` varchar(1000) NOT NULL,
  `suka` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tabel_info`
--

INSERT INTO `tabel_info` (`id_info`, `kd_kategori_info`, `judul`, `subjudul`, `penulis`, `tanggal`, `informasi`, `suka`) VALUES
(1, 0, 'Bulan promosi', 'Beli apa aja potong harga', 'admin', '', 'Potong harga dari 5%-50% untuk pembelian dengan kartu member', ''),
(2, 0, 'Bayar besok', 'Beli sekarang bayar besok', '', '', 'Beli sekarang bayar besok', ''),
(11, 1, 'ekrhfker', 'ijof efje', 'admin', '2022-02-20 11:00:32', 'Isi disini eheuy', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_info_gambar`
--

CREATE TABLE `tabel_info_gambar` (
  `id_gmbr` int(255) NOT NULL,
  `id_info` varchar(500) NOT NULL,
  `gambar` varchar(500) NOT NULL,
  `ket` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tabel_info_gambar`
--

INSERT INTO `tabel_info_gambar` (`id_gmbr`, `id_info`, `gambar`, `ket`) VALUES
(1, '1', 'info.jpg', ''),
(2, '2', 'info.jpg', ''),
(8, '11', '6211bd64cc749.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_info_pembayaran`
--

CREATE TABLE `tabel_info_pembayaran` (
  `id_info_pembayaran` int(11) NOT NULL,
  `no_rek` varchar(100) NOT NULL,
  `atas_nama` varchar(100) NOT NULL,
  `nama_bank` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kategori_barang`
--

CREATE TABLE `tabel_kategori_barang` (
  `kd_kategori` int(255) NOT NULL,
  `nm_kategori` varchar(500) NOT NULL,
  `form` varchar(25) NOT NULL,
  `ikon_kategori` varchar(500) NOT NULL DEFAULT 'default_kategori.png',
  `varian` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tabel_kategori_barang`
--

INSERT INTO `tabel_kategori_barang` (`kd_kategori`, `nm_kategori`, `form`, `ikon_kategori`, `varian`) VALUES
(1, 'ATAP', 'sf', '6213302d9d393.', ''),
(2, 'ATAP', 'sf', '621330d4f0df6.', ''),
(3, 'SPANDEK 4M', 'mf', '62133c76e0cd8.', 'panjang,'),
(4, 'SPANDEK 3M', 'mf', '62133de859be7.', 'panjang,'),
(5, 'SPANDEK 5M', 'mf', '62133e05200b5.', 'panjang,'),
(6, 'SPANDEK 6M', 'mf', '62133e2aa9334.', 'panjang,'),
(7, 'SPANDEK 7M', 'mf', '62133e54b0908.', 'panjang,'),
(8, 'SPANDEK 1M', 'mf', '621341a57dacf.', 'panjang,'),
(9, 'SPANDEK 1.5M', 'mf', '62134bb86c6c5.', 'panjang,'),
(10, 'LISTRIK', 'sf', '6213515d58104.', ''),
(11, 'RENG', 'sf', '62135281b5a2e.', ''),
(12, 'KANAL', 'sf', '621357f060d6a.', ''),
(13, 'BAUT', 'sf', '62135b29d2041.', ''),
(14, 'BAUT', 'sf', '62135b3e290c9.', ''),
(15, 'GALVANIS', 'sf', '6213add2080f1.', ''),
(16, 'GALVANIS', 'sf', '6213b1c6d4c19.', ''),
(17, 'HOLLO', 'sf', '6213b50ecd9a4.', ''),
(18, 'PVC', 'sf', '6213b6b5eb1bf.', ''),
(19, 'PVC', 'sf', '6213bc01d7179.', ''),
(20, 'kaos', 'sf', '6229685a35d18.', ''),
(21, 'ehri', 'sf', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kategori_info`
--

CREATE TABLE `tabel_kategori_info` (
  `kd_kategori_info` int(255) NOT NULL,
  `nm_kategori_info` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tabel_kategori_info`
--

INSERT INTO `tabel_kategori_info` (`kd_kategori_info`, `nm_kategori_info`) VALUES
(1, 'kaos'),
(2, 'hhjb');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_medsos_toko`
--

CREATE TABLE `tabel_medsos_toko` (
  `id` int(11) NOT NULL,
  `id_toko` varchar(225) NOT NULL,
  `twitter` varchar(225) DEFAULT NULL,
  `facebook` varchar(225) DEFAULT NULL,
  `google` varchar(225) DEFAULT NULL,
  `tiktok` varchar(225) DEFAULT NULL,
  `instagram` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_medsos_toko`
--

INSERT INTO `tabel_medsos_toko` (`id`, `id_toko`, `twitter`, `facebook`, `google`, `tiktok`, `instagram`) VALUES
(3, '123', 'rfkw', 'jfnjk', ',ngfj', 'dkfg', 'ekrh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_member`
--

CREATE TABLE `tabel_member` (
  `id_user` int(255) NOT NULL,
  `kode_user` varchar(16) NOT NULL,
  `kd_toko` varchar(15) DEFAULT NULL,
  `nm_user` varchar(25) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `alamat_user` varchar(500) NOT NULL,
  `password` varchar(35) NOT NULL,
  `pass_user` varchar(100) NOT NULL,
  `foto` varchar(500) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `akses` varchar(15) NOT NULL,
  `stt_user` varchar(500) NOT NULL,
  `on` int(100) NOT NULL,
  `log` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tabel_member`
--

INSERT INTO `tabel_member` (`id_user`, `kode_user`, `kd_toko`, `nm_user`, `email_user`, `alamat_user`, `password`, `pass_user`, `foto`, `hp`, `akses`, `stt_user`, `on`, `log`) VALUES
(1, '1277869792', '123', 'admin', 'admin_ovent@gmail.com', '', 'e9af23dd5a45126ff689eba7bb2146bb', '123', 'admin.jpg', '', 'admin', '0', 0, ''),
(6, '683077238', '', 'koko', 'admin@republicvisual.com', '', 'e9af23dd5a45126ff689eba7bb2146bb', '123', 'user.jpg', '085959188887', 'member', '0', 0, ''),
(7, '222662633', '', 'jatmiko', 'rock_id@ymail.com', '', 'e9af23dd5a45126ff689eba7bb2146bb', '123', '', '', 'merchant', '0', 0, ''),
(8, '1406561427', '123', 'republic', 'sablenkcoco@gmail.com', '', 'e9af23dd5a45126ff689eba7bb2146bb', '123', '', '', 'merchant', '0', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_merk_barang`
--

CREATE TABLE `tabel_merk_barang` (
  `id_merk` int(255) NOT NULL,
  `merk` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_merk_barang`
--

INSERT INTO `tabel_merk_barang` (`id_merk`, `merk`) VALUES
(5, 'KENCANA'),
(6, 'APLUS'),
(7, 'AREMA'),
(8, 'NON MEREK'),
(9, 'ZINIUM'),
(10, 'GATOT'),
(11, 'NON MERK'),
(12, 'MOZZART'),
(13, 'ULTAPON'),
(14, 'ALFAFON'),
(15, 'Aqua');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_metode_bayar`
--

CREATE TABLE `tabel_metode_bayar` (
  `id_metode` int(11) NOT NULL,
  `id_bukti_pembayaran` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_penjualan`
--

CREATE TABLE `tabel_penjualan` (
  `id` int(11) NOT NULL,
  `no_faktur_penjualan` varchar(16) NOT NULL,
  `kd_supplier` varchar(100) DEFAULT NULL,
  `tgl_penjualan` date NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `total_penjualan` varchar(100) NOT NULL,
  `biaya_pengiriman` varchar(100) NOT NULL,
  `total_biaya` varchar(100) NOT NULL,
  `dp` varchar(100) NOT NULL,
  `sisa` varchar(100) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `nama_penerima` varchar(225) DEFAULT NULL,
  `kontak` varchar(225) DEFAULT NULL,
  `alamat` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_penjualan`
--

INSERT INTO `tabel_penjualan` (`id`, `no_faktur_penjualan`, `kd_supplier`, `tgl_penjualan`, `id_user`, `total_penjualan`, `biaya_pengiriman`, `total_biaya`, `dp`, `sisa`, `ket`, `status`, `nama_penerima`, `kontak`, `alamat`) VALUES
(54, 'OFFOVE00001', '', '2022-03-09', '1', '150000', '10000', '160000', '', '', '', '', 'Riswan', '0857', 'jombang'),
(55, 'OFFOVE00002', '', '2022-03-09', '1', '836000', '', '836000', '', '', '', '', NULL, NULL, NULL),
(56, 'OFFOVE00003', '', '2022-03-09', '1', '2079000', '', '2079000', '', '', '', '', NULL, NULL, NULL),
(57, 'OFFOVE00004', '', '2022-03-09', '1', '50000', '', '50000', '', '', '', '', NULL, NULL, NULL),
(58, 'OFFOVE00005', '', '2022-03-09', '1', '42000', '10000', '52000', '', '', '', '', NULL, NULL, NULL),
(59, 'OFFOVE00006', '', '2022-03-09', '1', '50000', '10000', '60000', '', '', '', '', NULL, NULL, NULL),
(60, 'OFFOVE00007', '', '2022-03-09', '1', '50000', '10000', '60000', '', '', '', '', NULL, NULL, NULL),
(61, 'OFFOVE00008', '', '2022-03-09', '1', '42000', '', '42000', '', '', '', '', NULL, NULL, NULL),
(63, 'OFFOVE00010', '', '2022-03-09', '1', '50000', '', '50000', '', '', '', '', NULL, NULL, NULL),
(64, 'OFFOVE00011', '', '2022-03-09', '1', '50000', '', '50000', '', '', '', '', NULL, NULL, NULL),
(65, 'OFFOVE00012', '', '2022-03-09', '1', '50000', '', '50000', '', '', '', '', NULL, NULL, NULL),
(66, 'OFFOVE00013', '', '2022-03-09', '1', '92000', '', '92000', '', '', '', '', NULL, NULL, NULL),
(67, 'OFFOVE00014', '', '2022-03-09', '1', '50000', '', '50000', '', '', '', '', NULL, NULL, NULL),
(68, 'OFFOVE00015', '', '2022-03-09', '1', '50000', '', '50000', '', '', '', '', NULL, NULL, NULL),
(69, 'OFFOVE00016', '', '2022-03-09', '1', '50000', '', '50000', '', '', '', '', NULL, NULL, NULL),
(70, 'OFFOVE00017', '', '2022-03-10', '1', '92000', '', '92000', '', '', '', '', NULL, NULL, NULL),
(71, 'OFFOVE00018', '', '2022-03-10', '1', '50000', '', '50000', '', '', '', '', NULL, NULL, NULL),
(72, 'OFFOVE00019', '', '2022-03-10', '1', '50000', '', '50000', '', '', 'Tranfer', '', NULL, NULL, NULL),
(73, 'OFFOVE00020', '', '2022-03-10', '1', '14481', '', '14481', '', '', 'Tranfer', '', NULL, NULL, NULL),
(74, 'OFFOVE00021', '', '2022-03-10', '1', '70000', '', '70000', '', '', 'Cash', '', NULL, NULL, NULL),
(75, 'OFFOVE00022', '', '2022-03-10', '1', '4829', '10000', '14829', '', '', 'Cash', '', '', '', 'jombang'),
(76, 'OFFOVE00023', '', '2022-03-10', '1', '74829', '10000', '84829', '', '', 'Tranfer', '', '', '', ''),
(77, 'OFFOVE00024', '', '2022-03-10', '1', '79481', '', '79481', '', '', 'Cash', '', NULL, NULL, NULL),
(78, 'OFFOVE00025', '', '2022-03-10', '1', '4829', '', '4829', '', '', 'Tranfer', '', NULL, NULL, NULL),
(79, 'OFFOVE00026', '', '2022-03-10', '1', '4829', '10000', '14829', '', '', 'Cash', '', '', '', ''),
(80, 'OFFOVE00027', '', '2022-03-10', '1', '70000', '10000', '80000', '', '', 'Tranfer', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_retur`
--

CREATE TABLE `tabel_retur` (
  `id` int(11) NOT NULL,
  `no_faktur_retur` varchar(16) NOT NULL,
  `kd_barang` varchar(100) NOT NULL,
  `tgl_retur` varchar(100) NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `total_retur` varchar(100) NOT NULL,
  `ket` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tabel_retur`
--

INSERT INTO `tabel_retur` (`id`, `no_faktur_retur`, `kd_barang`, `tgl_retur`, `id_user`, `total_retur`, `ket`, `status`) VALUES
(1, 'OFFOVE00001', 'ALF 140C-11 G', '2022-03-09 15:26:32', '1', '1', 'Isi disini fjhkwe djf', NULL),
(3, 'OFFOVE00001', 'ALF 140C-11 G', '2022-03-10 10:39:34', '1', '2', 'Isi disini', NULL),
(4, 'OFFOVE00027', '36747mbfh', '2022-03-10 10:43:57', '1', '1', 'Isi disini', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_rinci_penjualan`
--

CREATE TABLE `tabel_rinci_penjualan` (
  `id` int(11) NOT NULL,
  `no_faktur_penjualan` varchar(16) NOT NULL,
  `kd_barang` varchar(100) NOT NULL,
  `nm_barang` varchar(255) NOT NULL,
  `no_hp` varchar(100) DEFAULT NULL,
  `ukuran` varchar(100) DEFAULT NULL,
  `jumlah` varchar(100) NOT NULL,
  `stok_awal` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `sub_total_jual` int(11) NOT NULL,
  `diskon` varchar(25) DEFAULT NULL,
  `a_n` varchar(50) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `stts` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `alamat_akhir` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_rinci_penjualan`
--

INSERT INTO `tabel_rinci_penjualan` (`id`, `no_faktur_penjualan`, `kd_barang`, `nm_barang`, `no_hp`, `ukuran`, `jumlah`, `stok_awal`, `harga`, `sub_total_jual`, `diskon`, `a_n`, `keterangan`, `stts`, `alamat`, `alamat_akhir`) VALUES
(76, 'OFFOVE00001', 'ALF 140C-11 G', 'ALFAFON 140C-11 G', '', '', '2', 10, 50000, 100000, '', '', '', 'FINISH', '', ''),
(77, 'OFFOVE00001', 'ALF 20002 G', 'ALFAFON 20002 G', '', '', '1', 89, 50000, 50000, '', '', '', 'FINISH', '', ''),
(78, 'OFFOVE00002', 'AMB 4M T', 'AMARI BIRU 4M T', '', '', '2', 2, 418000, 836000, '', '', '', 'FINISH', '', ''),
(79, 'OFFOVE00003', 'AMT 6M G', 'AMARI TRANSPARAN 6M G', '', '', '3', 4, 693000, 2079000, '', '', '', 'FINISH', '', ''),
(80, 'OFFOVE00004', 'ALF 140C-11 G', 'ALFAFON 140C-11 G', '', '', '1', 8, 50000, 50000, '', '', '', 'FINISH', '', ''),
(81, 'OFFOVE00005', '', '', '', '', '', 0, 0, 0, '', '', '', 'FINISH', '', ''),
(82, 'OFFOVE00006', 'ALF 140C-11 G', 'ALFAFON 140C-11 G', '', '', '1', 7, 50000, 50000, '', '', '', 'FINISH', '', ''),
(83, 'OFFOVE00007', '', '', '', '', '', 0, 0, 0, '', '', '', 'FINISH', '', ''),
(84, 'OFFOVE00008', '', '', '', '', '', 0, 0, 0, '', '', '', 'FINISH', '', ''),
(85, 'OFFOVE00009', '', '', '', '', '', 0, 0, 0, '', '', '', 'FINISH', '', ''),
(86, 'OFFOVE00010', '', '', '', '', '', 0, 0, 0, '', '', '', 'FINISH', '', ''),
(87, 'OFFOVE00011', '', '', '', '', '', 0, 0, 0, '', '', '', 'FINISH', '', ''),
(88, 'OFFOVE00012', '', '', '', '', '', 0, 0, 0, '', '', '', 'FINISH', '', ''),
(89, 'OFFOVE00013', 'ALF 140C-11 G', 'ALFAFON 140C-11 G', '', '', '1', 6, 50000, 50000, '', '', '', 'FINISH', '', ''),
(90, 'OFFOVE00013', 'ALF 20002 G', 'ALFAFON 20002 G', '', '', '1', 88, 42000, 42000, '', '', '', 'FINISH', '', ''),
(91, 'OFFOVE00014', '', '', '', '', '', 0, 0, 0, '', '', '', 'FINISH', '', ''),
(92, 'OFFOVE00015', '', '', '', '', '', 0, 0, 0, '', '', '', 'FINISH', '', ''),
(93, 'OFFOVE00016', '', '', '', '', '', 0, 0, 0, '', '', '', 'FINISH', '', ''),
(94, 'OFFOVE00017', 'ALF 140C-11 G', 'ALFAFON 140C-11 G', '', '', '1', 5, 50000, 50000, '', '', '', 'FINISH', '', ''),
(95, 'OFFOVE00017', 'ALF 20002 G', 'ALFAFON 20002 G', '', '', '1', 87, 42000, 42000, '', '', '', 'FINISH', '', ''),
(96, 'OFFOVE00018', 'ALF 140C-11 G', 'ALFAFON 140C-11 G', '', '', '1', 4, 50000, 50000, '', '', '', 'FINISH', '', ''),
(97, 'OFFOVE00019', 'ALF 140C-11 G', 'ALFAFON 140C-11 G', '', '', '1', 3, 50000, 50000, '', '', '', 'FINISH', '', ''),
(98, 'OFFOVE00020', '347634', 'Buku', '', '', '1', 0, 4829, 4829, '', '', '', 'FINISH', '', ''),
(99, 'OFFOVE00021', '36747mbfh', 'Buku', '', '', '1', 0, 70000, 70000, '', '', '', 'FINISH', '', ''),
(100, 'OFFOVE00022', '347634', 'Buku', '', '', '1', -1, 4829, 4829, '', '', '', 'FINISH', '', ''),
(101, 'OFFOVE00023', '347634', 'Buku', '', '', '1', -2, 4829, 4829, '', '', '', 'FINISH', '', ''),
(102, 'OFFOVE00023', '36747mbfh', 'Buku', '', '', '1', -1, 70000, 70000, '', '', '', 'FINISH', '', ''),
(103, 'OFFOVE00024', '347634', 'Buku', '', '', '3', -3, 4829, 14487, '', '', '', 'FINISH', '', ''),
(104, 'OFFOVE00024', '36747mbfh', 'Buku', '', '', '1', -2, 70000, 70000, '', '', '', 'FINISH', '', ''),
(105, 'OFFOVE00025', '347634', 'Buku', '', '', '1', -6, 4829, 4829, '', '', '', 'FINISH', '', ''),
(106, 'OFFOVE00026', '347634', 'Buku', '', '', '1', -7, 4829, 4829, '', '', '', 'FINISH', '', ''),
(107, 'OFFOVE00027', '36747mbfh', 'Buku', '', '', '1', -3, 70000, 70000, '', '', '', 'FINISH', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_rinci_penjualan_hitung`
--

CREATE TABLE `tabel_rinci_penjualan_hitung` (
  `id_hitung` int(25) NOT NULL,
  `no_faktur_penjualan` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `kd_barang` varchar(1000) COLLATE latin1_general_ci NOT NULL,
  `jumlah` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `harga` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tabel_rinci_penjualan_hitung`
--

INSERT INTO `tabel_rinci_penjualan_hitung` (`id_hitung`, `no_faktur_penjualan`, `kd_barang`, `jumlah`, `harga`) VALUES
(1, '8705520042500001', 'TEL231000KG', '1', '22000'),
(2, '8705520042500001', 'TEL231000KG', '0', '22000'),
(3, '8705520042500001', 'TEL231000KG', '1', '22000'),
(4, '8705520042500001', 'BAK0010420FR', '1', '15000'),
(5, '8705520042500001', 'BAK0010420FR', '12', '15000'),
(6, '8705520042500001', 'BAK0010420FR', '10', '15000'),
(7, '8705520042600002', '8999999027247', '1', '23750'),
(11, '8705520042600003', '23031000BP', '0,5', '27000'),
(10, '8705520042600003', '23031000BP', '0.5', '27000'),
(12, '8705520042600003', '23031000BP', '0.5', '27000'),
(13, '8705520042600004', 'TCK0029070420', '1', '85000'),
(14, '8936720042700001', '089686010947', '0', '2400'),
(15, '8936720042700001', '089686010947', '01010100', '2400'),
(16, '8705520042700005', 'TEL231000KG', '2', '22000'),
(17, '8705520042700005', '8994064110404', '1', '6000'),
(18, '8705520042700005', '8999999049393', '1', '15000'),
(19, '8936720042700003', '089686010947', '010', '2400'),
(20, '8936720042700004', 'VN009010420', '03', '1000'),
(21, '8936720042700004', '8992933324112', '20', '2000'),
(22, '8936720042700004', '8992933324112', '02', '2000'),
(39, '8705520082000006', '', '2', '2500'),
(26, '8705520081200006', '8999999706180', '1', '9800'),
(44, '8705520082000006', '8998866200325', '2', '2500'),
(42, '8705520082000006', '', '2', '2500'),
(43, '8705520082000006', 'pulsa10000', '0895621098430', ''),
(45, '8705520082000006', '8999999502409', '2', '500'),
(46, '8705520082000007', 'TEL231000KG', '2', '22000'),
(47, '8705520082000007', 'TEL231000KG', '3', '22000'),
(48, '8705520082000007', 'TEL231000KG', '5', '22000'),
(49, '8705520082000007', '8998866200301', '3', '2500'),
(54, 'MM00120082000025', 'BRS003040420', '3', '55000'),
(53, 'MM00120082000025', 'AR0006010420', '3', '2000'),
(55, '8705520082500009', 'VN009010420', '2', '1000'),
(56, '8705520082500009', 'TPMZ003020420', '3', '4000'),
(70, 'MM00120082700028', '23031000BP', '2', '27000'),
(69, 'MM00120082500027', '8992733327113', '3', '2000'),
(64, '8705520082500010', '8999999706180', '3', '9800'),
(65, '8705520082500010', '8999999706180', '2', '9800'),
(74, '4161921012600011', 'MK001240121CLK', '1', '10000'),
(76, '7550121070600001', '8992933321111', '1', '2000'),
(77, '7550121070600001', '8998866200301', '21', '2500'),
(78, '7550121070600001', '8998866200301', '11', '2500'),
(79, '7550121070600001', '8992933321111', '1', '2000'),
(80, '7550121070600001', '8998866200301', '', '2500'),
(81, '7550121070600001', '8998866200301', '1', '2500'),
(82, '8073921071100001', '8992753102204', '2', '11500'),
(83, '8073921071100001', '8992753101207', '2', '12500'),
(84, '8073921071100001', 'TCK002906', '12', '15000'),
(85, '2116321071100001', '8999999034153', '2', '7500'),
(86, '4243921071500001', 'TCK0029020420', '33333313', '15000'),
(87, '4243921071500001', 'TCK0029020420', '33333313', '15000'),
(88, '4243921071500001', 'TCK0029020420', '33333313', '15000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_rinci_retur`
--

CREATE TABLE `tabel_rinci_retur` (
  `no_faktur_retur` varchar(16) NOT NULL,
  `kd_barang` varchar(15) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `ukuran` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `sub_total_retur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_saldo`
--

CREATE TABLE `tabel_saldo` (
  `id_saldo` int(255) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `ket_saldo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_saldo`
--

INSERT INTO `tabel_saldo` (`id_saldo`, `id_user`, `tanggal`, `jumlah`, `ket_saldo`) VALUES
(1, '6', '2022-02-02', '200000', 'Transfer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_satuan_barang`
--

CREATE TABLE `tabel_satuan_barang` (
  `id_satuan` int(255) NOT NULL,
  `nm_satuan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_satuan_barang`
--

INSERT INTO `tabel_satuan_barang` (`id_satuan`, `nm_satuan`) VALUES
(1, 'Lembar'),
(3, 'PCS'),
(4, 'METER'),
(5, 'Lonjor'),
(7, 'DUS'),
(8, 'KARTON'),
(10, '600ml');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_slide`
--

CREATE TABLE `tabel_slide` (
  `id_slide` int(255) NOT NULL,
  `kat_slide` varchar(150) NOT NULL,
  `gbr_slide` varchar(500) NOT NULL,
  `judul_slide` varchar(100) NOT NULL,
  `ket_slide` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_slide`
--

INSERT INTO `tabel_slide` (`id_slide`, `kat_slide`, `gbr_slide`, `judul_slide`, `ket_slide`) VALUES
(1, '1', 'slide-2.jpg', 'header', 'header'),
(2, '1', 'slide-3.jpg', 'header', 'header'),
(3, '2', 'slide-2.jpg', '', ''),
(4, '2', 'slide-3.jpg', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_stok_toko`
--

CREATE TABLE `tabel_stok_toko` (
  `id` int(255) NOT NULL,
  `kd_toko` varchar(15) NOT NULL,
  `kd_barang` varchar(100) DEFAULT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tabel_stok_toko`
--

INSERT INTO `tabel_stok_toko` (`id`, `kd_toko`, `kd_barang`, `stok`) VALUES
(1, '', 'fk', 100),
(2, '', 'GY', 100),
(3, '', 'CS', 82),
(4, '', 'KM', 221),
(5, '', 'SPA 0.25 4M G', 1),
(6, '', 'SPA 0.30 3M G', 23),
(7, '', 'SPA 0.30 3M T', 3),
(8, '', 'SPA 0.30 3M TB', 6),
(9, '', 'SPA 0.30 4M T', 72),
(10, '', 'SPA 0.30 5M T', 98),
(11, '', 'SPA 0.30 6M G', 110),
(12, '', 'SPA 0.30 7M G', 20),
(13, '', 'SPA T', 50),
(14, '', 'SPB G', 61),
(15, '', 'SPB T', 455),
(16, '', 'SPB GL', 11),
(17, '', 'SPB TL', 17),
(22, '', 'SPK 0.25 3M G', 41),
(23, '', 'SPK 0.25 4M T', -9),
(24, '', 'SPK 0.25 5M T', 34),
(25, '', 'SPK 0.25 6M T', -18),
(26, '', 'SPK 0.30 3M T', 48),
(27, '', 'SPK 0.30 4M T', 34),
(28, '', 'SPK 0.30 5M T', 46),
(29, '', 'SPK 0.30 6M T', 29),
(30, '', 'SPK 0.30 7M T', 26),
(31, '', 'SPPH 0.30 6M G', -18),
(32, '', 'SPPM 0.25 4M G', 14),
(35, '', 'SPPM 0.25 5M G', 6),
(36, '', 'SPPM 0.25 6M G', 26),
(37, '', 'SPPM 0.30 4M G', 36),
(38, '', 'SPPM 0.30 5M G', 28),
(39, '', 'SPPM 0.30 6M G', 81),
(42, '', 'SPPM G', 1),
(44, '', 'RF 4M T', 52),
(49, '', 'RF 5M T', 50),
(50, '', 'RF 3M T', 1),
(51, '', 'RF 6M T', 60),
(52, '', 'SPZ 0.25 5M T', 1),
(53, '', 'ST', 2),
(54, '', 'TLK 0.25 60CM T', 428),
(55, '', 'TLG 0.30 30CM T', 114),
(56, '', 'RE 0.40 G', 1876),
(57, '', 'RE 0.40 T', 2218),
(58, '', 'RE 0.40 TL', 1),
(59, '', 'RK 0.45 G', -162),
(60, '', 'SKT', 1),
(61, '', 'WA T', 4451),
(62, '', 'WD T', 520),
(65, '', 'AMB 4M T', 0),
(66, '', 'AMB 5M G', 1),
(67, '', 'AMP 3M G', 1),
(68, '', 'AMT 6M G', 1),
(69, '', 'WAB T', 21),
(70, '', 'WAP T', 3),
(71, '', 'RF 1.5M T', 1),
(72, '', 'KS 4MM G', 187),
(73, '', 'CNPK 75;60 RLT', 7),
(74, '', 'CNPG 80;70 T', 60),
(75, '', 'CNPK 75;75 TL', 1),
(76, '', 'CNPK 75;60 T', 875),
(77, '', 'CNPK 75;75 T', -160),
(78, '', 'CNPK 80;60 T', 641),
(79, '', 'CNPK 80;75 TL', 2),
(80, '', 'BBJ T', 474),
(81, '', 'BK T', 189),
(82, '', 'BK T (1)', -400),
(83, '', 'BT T', 26500),
(85, '', 'BR T', 27),
(86, '', 'BR T(1)', 12300),
(87, '', 'BSP T', 99),
(88, '', 'BSP T(1)', -350),
(89, '', 'BTT T', 3),
(90, '', 'BTT T(1)', 400),
(101, '', 'BDY 10X77 T', 5),
(102, '', 'BDY 10X65 T', 21),
(103, '', 'BDY 10X65 T(1)', 377),
(104, '', 'BDY 8X65 T(1)', 433),
(105, '', 'BDY 8X65 T', 37),
(106, '', 'GK 2X2 1A T', 9),
(107, '', 'GK 2X2 1A TB', 10),
(108, '', 'GK 2X4 0.8A T', 20),
(109, '', 'GK 2X4 0.9A T', 36),
(110, '', 'GK 2X4 1A T', 10),
(111, '', 'GK 2X4 1A TB', 30),
(112, '', 'GK 3X3 1A T', 17),
(113, '', 'GK 4X4 0.9A T', 32),
(114, '', 'GK 4x4 1.2 T', 12),
(115, '', 'GK 4x4 1A T', 22),
(116, '', 'GK 4x6 0.9A T', 19),
(117, '', 'GK 4x6 1.2A T', 20),
(118, '', 'GK 5X5 1A T', 15),
(119, '', 'GMPH G', 241),
(120, '', 'GMPH T', 18),
(121, '', 'GMPM G', 3162),
(122, '', 'GMPC G', 267),
(123, '', 'GYP G', 9),
(124, '', 'HLP 2X4 G', 32),
(125, '', 'HLP 2X4 T', 2),
(126, '', 'HLG 2X4 G', 4725),
(127, '', 'HLG 4X4 GL', 515),
(128, '', 'HLG 4X4 GB', 1835),
(131, '', 'MTS T', 10),
(132, '', 'MTK T', 3),
(133, '', 'NPC GB', 184),
(134, '', 'NPC GL', 43),
(135, '', 'NPH G', 107),
(136, '', 'NPHM GB', 167),
(137, '', 'NPHM TL', 59),
(138, '', 'NPM GB', 375),
(139, '', 'NPM TB', 8),
(140, '', 'PK 1.5 T', 70),
(141, '', 'PR T', 1853),
(142, '', 'PLG 1.2A T', 5),
(143, '', 'PLM 3M G', 369),
(144, '', 'PLM 4M G', 126),
(145, '', 'PLP 3M G', 111),
(146, '', 'ALF 140C-11 G', 2),
(147, '', 'ALF 20002 G', 86),
(148, '', 'ALF 20059 G', 2),
(149, '', 'ALF 20108C G', 1),
(150, '', 'LD T', 1),
(151, '', 'LD G', 2),
(152, '', 'LF 6CM G', 10),
(153, '', 'LF 8CM G', 2),
(154, '', 'LFS 6CM G', 1),
(155, '', 'LHC G', 89),
(156, '', 'LHP G', 68),
(157, '', 'LJC G', 2),
(158, '', 'LJC GB', 10),
(159, '', 'LJP G', 43),
(160, '', 'LKF G', 10),
(161, '', 'LKC G', 10),
(162, '', 'LKP G', 16),
(163, '', 'LSF GB G', 2),
(164, '', 'LSF SB G', 4),
(165, '', 'LSE G', 3),
(166, '', 'LSM G', 117),
(167, '', 'LSMK G', 6),
(168, '', 'LSMS G', 22),
(169, '', 'LSSP G', 1),
(170, '', 'M 8005 G', 4),
(171, '', 'M 8016 G', 5),
(172, '', 'M 8020 G', 15),
(173, '', 'M 8029 G', 3),
(176, '', 'M 8051 G', 15),
(177, '', 'M 8053 G', 2),
(178, '', 'M 8061 G', 50),
(179, '', 'MAB UGE G', 2),
(180, '', 'OR 70X90 E G', 3),
(181, '', 'ULT 02 G', 5),
(182, '', 'ULT 05 G', 3),
(183, '', 'ULT 06 G', 1),
(184, '', 'ULT 09 G', 4),
(185, '', 'ULT 10 G', 1),
(186, '', 'ULT 11 G', 1),
(187, '', 'ULT 12 G', 1),
(188, '', 'ULT 13 G', 7),
(189, '', 'ULT 15 G', 4),
(190, '', 'ULT 17 G', 1),
(191, '', 'ULT 18 G', 1),
(192, '', 'ULT 24 G', 1),
(193, '', 'ULT 25 G', 1),
(194, '', 'ULT 28 G', 1),
(195, '', 'ULT 30 G', 4),
(196, '', 'ULT 31 G', 4),
(197, '', 'ULT 32 G', 2),
(198, '', 'ULT 34 G', 1),
(199, '', 'ULT 36 G', 1),
(200, '', 'ULT 38 G', 6),
(201, '', 'ULT 39 G', 2),
(202, '', 'ULT 39 IG', 4),
(203, '', 'ULT 40 G', 17),
(204, '', 'ULT 42 G', 1),
(205, '123', 'ugiyg', 10),
(209, '123', 'imfdie32', 10),
(221, '123', '347634', -8),
(222, '123', '36747mbfh', -4),
(223, '123', 'wefewj', 0),
(224, '123', 'hnfe', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_streaming`
--

CREATE TABLE `tabel_streaming` (
  `id_streaming` int(255) NOT NULL,
  `link` varchar(500) NOT NULL,
  `status` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_streaming`
--

INSERT INTO `tabel_streaming` (`id_streaming`, `link`, `status`) VALUES
(1, 'https://youtube.com', 'y'),
(2, 'https://youtube', 'n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_supplier`
--

CREATE TABLE `tabel_supplier` (
  `kd_supplier` varchar(15) NOT NULL,
  `nm_supplier` varchar(25) NOT NULL,
  `almt_supplier` varchar(150) NOT NULL,
  `tlp_supplier` varchar(15) NOT NULL,
  `fax_supplier` varchar(15) NOT NULL,
  `atas_nama` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_toko`
--

CREATE TABLE `tabel_toko` (
  `kd_toko` varchar(15) NOT NULL,
  `nm_toko` varchar(30) NOT NULL,
  `almt_toko` varchar(150) NOT NULL,
  `kota_toko` varchar(50) NOT NULL,
  `kecamatan_toko` varchar(50) NOT NULL,
  `tlp_toko` varchar(15) NOT NULL,
  `fax_toko` varchar(255) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `password` varchar(35) NOT NULL,
  `pass` varchar(500) NOT NULL,
  `status` varchar(15) NOT NULL,
  `tipe` varchar(500) NOT NULL,
  `headerfooter` varchar(255) NOT NULL,
  `background` varchar(255) NOT NULL,
  `tombol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tabel_toko`
--

INSERT INTO `tabel_toko` (`kd_toko`, `nm_toko`, `almt_toko`, `kota_toko`, `kecamatan_toko`, `tlp_toko`, `fax_toko`, `logo`, `password`, `pass`, `status`, `tipe`, `headerfooter`, `background`, `tombol`) VALUES
('000', 'Default', 'Jl.Simp. Grajakan Blok III/20 Pandanwangi', 'Malang', 'Blimbing', '', '', '6212daecdaa68.png', '757f9d5b09cfd69699c86364746ad68e', '123456', '', '', '#1F0001', '#FF9F21', '#FF9F43'),
('123', 'Ovent', 'Jl.Simp. Grajakan Blok III/20 Pandanwangi', 'Malang', 'Blimbing', '085700002222', '', '6212daecdaa68.png', '757f9d5b09cfd69699c86364746ad68e', '123456', '', '', '#1F0001', '#FF9F21', '#FF9F43');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`kd_barang`) USING BTREE;

--
-- Indeks untuk tabel `tabel_barang_gambar`
--
ALTER TABLE `tabel_barang_gambar`
  ADD PRIMARY KEY (`id_gmbr`) USING BTREE;

--
-- Indeks untuk tabel `tabel_bukti_pembayaran`
--
ALTER TABLE `tabel_bukti_pembayaran`
  ADD PRIMARY KEY (`id_bukti`);

--
-- Indeks untuk tabel `tabel_info`
--
ALTER TABLE `tabel_info`
  ADD PRIMARY KEY (`id_info`) USING BTREE;

--
-- Indeks untuk tabel `tabel_info_gambar`
--
ALTER TABLE `tabel_info_gambar`
  ADD PRIMARY KEY (`id_gmbr`) USING BTREE;

--
-- Indeks untuk tabel `tabel_info_pembayaran`
--
ALTER TABLE `tabel_info_pembayaran`
  ADD PRIMARY KEY (`id_info_pembayaran`);

--
-- Indeks untuk tabel `tabel_kategori_barang`
--
ALTER TABLE `tabel_kategori_barang`
  ADD PRIMARY KEY (`kd_kategori`) USING BTREE;

--
-- Indeks untuk tabel `tabel_kategori_info`
--
ALTER TABLE `tabel_kategori_info`
  ADD PRIMARY KEY (`kd_kategori_info`) USING BTREE;

--
-- Indeks untuk tabel `tabel_medsos_toko`
--
ALTER TABLE `tabel_medsos_toko`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_member`
--
ALTER TABLE `tabel_member`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- Indeks untuk tabel `tabel_merk_barang`
--
ALTER TABLE `tabel_merk_barang`
  ADD PRIMARY KEY (`id_merk`);

--
-- Indeks untuk tabel `tabel_metode_bayar`
--
ALTER TABLE `tabel_metode_bayar`
  ADD PRIMARY KEY (`id_metode`);

--
-- Indeks untuk tabel `tabel_penjualan`
--
ALTER TABLE `tabel_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_retur`
--
ALTER TABLE `tabel_retur`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_rinci_penjualan`
--
ALTER TABLE `tabel_rinci_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_rinci_penjualan_hitung`
--
ALTER TABLE `tabel_rinci_penjualan_hitung`
  ADD PRIMARY KEY (`id_hitung`);

--
-- Indeks untuk tabel `tabel_saldo`
--
ALTER TABLE `tabel_saldo`
  ADD PRIMARY KEY (`id_saldo`);

--
-- Indeks untuk tabel `tabel_satuan_barang`
--
ALTER TABLE `tabel_satuan_barang`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indeks untuk tabel `tabel_slide`
--
ALTER TABLE `tabel_slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indeks untuk tabel `tabel_stok_toko`
--
ALTER TABLE `tabel_stok_toko`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `tabel_streaming`
--
ALTER TABLE `tabel_streaming`
  ADD PRIMARY KEY (`id_streaming`);

--
-- Indeks untuk tabel `tabel_supplier`
--
ALTER TABLE `tabel_supplier`
  ADD PRIMARY KEY (`kd_supplier`) USING BTREE;

--
-- Indeks untuk tabel `tabel_toko`
--
ALTER TABLE `tabel_toko`
  ADD PRIMARY KEY (`kd_toko`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_barang_gambar`
--
ALTER TABLE `tabel_barang_gambar`
  MODIFY `id_gmbr` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT untuk tabel `tabel_info`
--
ALTER TABLE `tabel_info`
  MODIFY `id_info` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tabel_info_gambar`
--
ALTER TABLE `tabel_info_gambar`
  MODIFY `id_gmbr` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tabel_info_pembayaran`
--
ALTER TABLE `tabel_info_pembayaran`
  MODIFY `id_info_pembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_kategori_barang`
--
ALTER TABLE `tabel_kategori_barang`
  MODIFY `kd_kategori` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tabel_kategori_info`
--
ALTER TABLE `tabel_kategori_info`
  MODIFY `kd_kategori_info` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tabel_medsos_toko`
--
ALTER TABLE `tabel_medsos_toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tabel_member`
--
ALTER TABLE `tabel_member`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tabel_merk_barang`
--
ALTER TABLE `tabel_merk_barang`
  MODIFY `id_merk` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tabel_metode_bayar`
--
ALTER TABLE `tabel_metode_bayar`
  MODIFY `id_metode` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_penjualan`
--
ALTER TABLE `tabel_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `tabel_retur`
--
ALTER TABLE `tabel_retur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tabel_rinci_penjualan`
--
ALTER TABLE `tabel_rinci_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT untuk tabel `tabel_rinci_penjualan_hitung`
--
ALTER TABLE `tabel_rinci_penjualan_hitung`
  MODIFY `id_hitung` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `tabel_saldo`
--
ALTER TABLE `tabel_saldo`
  MODIFY `id_saldo` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tabel_satuan_barang`
--
ALTER TABLE `tabel_satuan_barang`
  MODIFY `id_satuan` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tabel_slide`
--
ALTER TABLE `tabel_slide`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tabel_stok_toko`
--
ALTER TABLE `tabel_stok_toko`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT untuk tabel `tabel_streaming`
--
ALTER TABLE `tabel_streaming`
  MODIFY `id_streaming` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
