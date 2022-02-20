-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2022 pada 05.06
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
  `hrg_jual` varchar(255) NOT NULL,
  `hrg_grosir` varchar(255) NOT NULL,
  `hrg_beli` varchar(255) NOT NULL,
  `diskon` varchar(255) DEFAULT NULL,
  `hrg_jual_disk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tabel_barang`
--

INSERT INTO `tabel_barang` (`kd_barang`, `nm_barang`, `kd_satuan`, `kd_kategori`, `kd_toko`, `deskripsi`, `panjang`, `lebar`, `tinggi`, `warna`, `tipe`, `merek`, `hrg_jual`, `hrg_grosir`, `hrg_beli`, `diskon`, `hrg_jual_disk`) VALUES
('2324', 'coba kamis 1', '1', '9', '', 'Isi disini erwerr', '10', '10', '10', '', '', '3', '60000', '75000', '78000', '', ''),
('A0001', 'AVANZA ', 'Default', '1', '1', 'Armada AVANZA \r\nHarga perhari', '', '', '', '', '', '1', '935000', '935000', '850000', '0', '0'),
('B0005', 'BUS MEDIUM', 'Default', '1', '1', 'Armada BUS Medium Harga perhari ', '', '', '', '', '', '', '1650000', '1650000', '1500000', '0', '0'),
('E0003', 'ELF Short', 'Default', '1', '1', 'Armada ELF Short Harga perhari ', '', '', '', '', '', '', '880000', '880000', '800000', '0', '0'),
('E0004', 'ELF Long', 'Default', '1', '1', 'Armada AVANZA Harga perhari ', '', '', '', '', '', '', '1100000', '1100000', '1000000', '0', '0'),
('H0002', 'Hiace', 'Default', '1', '1', 'Armada HIACE Harga perhari ', '', '', '', '', '', '1', '1100000', '1100000', '1000000', '0', '0');

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
(1, 'A0001', 'ovent_153166918861bde6e5ab7d5.jpg', ''),
(2, 'H0002', 'ovent_16778690961bde7f8e0b70.jpg', ''),
(3, 'E0003', 'ovent_139489056061bde978bde46.jpg', ''),
(4, 'E0004', 'ovent_17955682461bdea2ce88e1.jpg', ''),
(5, 'B0005', 'ovent_119378578361bdee8ae7a66.jpg', ''),
(6, '82328', '620287e588fe1.png', ''),
(7, '3289', '620288021359a.jpg', ''),
(8, '64287', '62028d328fb73.png', ''),
(9, '3834', '62028dd20b102.png', ''),
(10, '18881998', '62028ed45b811.png', ''),
(11, '7437', '6202907f0515f.png', ''),
(12, '4975', '620290f3830e3.png', ''),
(13, '4975', '620291b80e061.png', ''),
(14, '329743', '620291f7a3588.png', ''),
(34, '2324', '620e769aa3e55.jpg,kosong,kosong', '');

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
(1, 'Kertas', 'mf', 'default_kategori.png', 'type'),
(2, 'Bolpoint', 'sf', 'default_kategori.png', 'type'),
(3, 'Buku', 'mf', 'default_kategori.png', 'panjang,lebar,tinggi'),
(4, 'Penghapus', 'mf', 'default_kategori.png', 'warna,type'),
(9, 'kaos', 'sf', '6204d02a97650.jpg', 'panjang,lebar,tinggi,'),
(10, 'kaos 2', 'sf', '6204d0506cf79.png', 'panjang,lebar,tinggi,warna,type');

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
-- Struktur dari tabel `tabel_member`
--

CREATE TABLE `tabel_member` (
  `id_user` int(255) NOT NULL,
  `kode_user` varchar(16) NOT NULL,
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

INSERT INTO `tabel_member` (`id_user`, `kode_user`, `nm_user`, `email_user`, `alamat_user`, `password`, `pass_user`, `foto`, `hp`, `akses`, `stt_user`, `on`, `log`) VALUES
(1, '1277869792', 'admin', 'admin_ovent@gmail.com', '', 'e9af23dd5a45126ff689eba7bb2146bb', '123', 'admin.jpg', '', 'admin', '0', 0, ''),
(6, '683077238', 'koko', 'admin@republicvisual.com', '', 'e9af23dd5a45126ff689eba7bb2146bb', '123', 'user.jpg', '085959188887', 'member', '0', 0, ''),
(7, '222662633', 'jatmiko', 'rock_id@ymail.com', '', 'e9af23dd5a45126ff689eba7bb2146bb', '123', '', '', 'merchant', '0', 0, ''),
(8, '1406561427', 'republic', 'sablenkcoco@gmail.com', '', 'e9af23dd5a45126ff689eba7bb2146bb', '123', '', '', 'merchant', '0', 0, '');

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
(1, 'TOYOTA'),
(2, 'DAIHATSU'),
(3, 'Aqua'),
(4, 'Sidu');

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
  `no_faktur_penjualan` varchar(16) NOT NULL,
  `kd_supplier` varchar(100) DEFAULT NULL,
  `tgl_penjualan` date NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `total_penjualan` varchar(100) NOT NULL,
  `dp` varchar(100) NOT NULL,
  `sisa` varchar(100) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_penjualan`
--

INSERT INTO `tabel_penjualan` (`no_faktur_penjualan`, `kd_supplier`, `tgl_penjualan`, `id_user`, `total_penjualan`, `dp`, `sisa`, `ket`, `status`) VALUES
('2116322020100001', NULL, '2022-02-02', '6', '9500', '3000', 'wait', 'ONLINE Bayar Ditempat', 'Perum banjararum estate bd 8 Singosari Malang'),
('4161921012500001', NULL, '2021-01-25', '18', '6500', '', 'selesai', 'ONLINE Bayar Ditempat', 'perum Banjararum view blok at 23 Singosari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_retur`
--

CREATE TABLE `tabel_retur` (
  `no_faktur_retur` varchar(16) NOT NULL,
  `kd_supplier` varchar(100) NOT NULL,
  `tgl_retur` varchar(100) NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `total_retur` varchar(100) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_rinci_penjualan`
--

CREATE TABLE `tabel_rinci_penjualan` (
  `no_faktur_penjualan` varchar(16) NOT NULL,
  `kd_barang` varchar(100) NOT NULL,
  `nm_barang` varchar(255) NOT NULL,
  `no_hp` varchar(100) DEFAULT NULL,
  `ukuran` varchar(100) DEFAULT NULL,
  `jumlah` varchar(100) NOT NULL,
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

INSERT INTO `tabel_rinci_penjualan` (`no_faktur_penjualan`, `kd_barang`, `nm_barang`, `no_hp`, `ukuran`, `jumlah`, `harga`, `sub_total_jual`, `diskon`, `a_n`, `keterangan`, `stts`, `alamat`, `alamat_akhir`) VALUES
('operator20042300', 'BAK0010420FR', 'Bakso Frozen Mbok Samut', '', '', '0', 15000, 0, '', '', '', '', NULL, NULL),
('operator20042442', 'TEL0020420AY', 'Telur ayam 500 gr', '', '', '0', 11000, 0, '', '', '', '', NULL, NULL),
('8705520042400001', '8999999027247', 'Sabun Botol Lifebuoy Lemon Fre', '', '', '0', 23750, 0, '', '', '', '', NULL, NULL),
('8705520042500001', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '1', 22000, 22000, '', '', '', '', NULL, NULL),
('8705520042500001', 'BAK0010420FR', 'Bakso Frozen Mbok Samut', '', '', '10', 15000, 150000, '', '', '', '', NULL, NULL),
('8705520042600002', '8999999027247', 'Sabun Botol Lifebuoy Lemon Fre', '', '', '1', 23750, 23750, '', '', '', '', NULL, NULL),
('8705520042600003', '23031000BP', 'Bawang Putih 1 Kg', '', '', '1', 27000, 13500, '', '', '', '', NULL, NULL),
('8705520042600004', 'TCK0029070420', 'Handsanitizer 1L', '', '', '1', 85000, 85000, '', '', '', '', NULL, NULL),
('8936720042700001', 'TEL0020420AY', 'Telur ayam 500 gr', '', '', '0', 11000, 0, '', '', '', '', NULL, NULL),
('8936720042700001', '089686010947', 'Indomie goreng 85 gr', '', '', '1010100', 2400, 2147483647, '', '', '', '', NULL, NULL),
('8936720042700002', 'VN009010420', 'Vanilie Pouder 500 mg', '', '', '0', 1000, 0, '', '', '', '', NULL, NULL),
('8705520042700005', '8994064110404', 'Cutton Buds Baby Dodo 100pc', '', '', '1', 6000, 6000, '', '', '', '', NULL, NULL),
('8705520042700005', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '2', 22000, 44000, '', '', '', '', NULL, NULL),
('8705520042700005', '8999999049393', 'Rexona Deodorant Men Adventure', '', '', '1', 15000, 15000, '', '', '', '', NULL, NULL),
('8936720042700003', '089686010947', 'Indomie goreng 85 gr', '', '', '10', 2400, 24000, '', '', '', '', NULL, NULL),
('8936720042700004', 'VN009010420', 'Vanilie Pouder 500 mg', '', '', '3', 1000, 3000, '', '', '', '', NULL, NULL),
('8936720042700004', '8992933324112', 'Nutrijell Rasa Cokelat 10 gr', '', '', '2', 2000, 4000, '', '', '', '', NULL, NULL),
('MM00120073000001', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000001', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000002', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000003', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '1', 13500, 13500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000004', '23052500BR', 'Beras 2,5 Kg', '0', '0', '1', 29000, 29000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000005', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000006', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000007', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000008', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '7', 13500, 94500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000008', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000009', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000010', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000011', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000012', '8997011700031', 'Bihun Jagung Padamu 350 gr', '0', '0', '1', 6000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000013', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000014', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000015', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000016', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000017', '089686385564', 'Bumbu Kentang Goreng Rasa Barbekiu 25 gr', '0', '0', '1', 4500, 4500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000020', '8968638631', 'Bumbu Racik Indofood Sayur Sop 20 gr', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000021', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '1', 13500, 13500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073100022', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073100022', 'BRS0003030420', 'Beras 5 kg Sekar Tanjung Merah', '0', '0', '5', 57000, 285000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8936720081200005', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '', '1', 2000, 0, '', '', '', '', NULL, NULL),
('8936720081200005', '8998866200325', 'Mie Sedap Instan Rasa Soto 75 gr', '', '', '1', 2500, 0, '', '', '', '', NULL, NULL),
('8705520081200006', '8999999706180', 'Pasta Gigi Pepsodent 190 gr', '', '', '1', 9800, 9800, '', '', '', '', NULL, NULL),
('8705520081400006', '8968605045', 'Pop Mie Mini Rasa Soto Mie 35 gr', '', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('MM00120082000023', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082000006', '8999999049416', 'Rexona Deodorant Men Quantum ', '', '', '2', 15250, 30500, '', '', '', '', NULL, NULL),
('8705520082000006', '8999999502409', 'Royco Rasa Sapi 9 gr', '', '', '2', 500, 1000, '', '', '', '', NULL, NULL),
('8705520082000006', '8998866200325', 'Mie Sedap Instan Rasa Soto 75 gr', '', '', '2', 2500, 5000, '', '', '', '', NULL, NULL),
('8705520082000006', 'pulsa10000', 'Pulsa 10000', '', '', '0895621098430', 0, 0, '', '', '', '', NULL, NULL),
('8705520082000007', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '5', 22000, 110000, '', '', '', '', NULL, NULL),
('8705520082000007', 'pulsa10000', 'Pulsa 10000', '08912301924109', '', '1', 12000, 0, '', '', '', '', NULL, NULL),
('8705520082000007', '8998866200301', 'Mie Sedap Instan Goreng 90 gr', '', '', '3', 2500, 7500, '', '', '', '', NULL, NULL),
('MM00120082000024', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000024', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '3', 2000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'BRS003040420', 'Beras 5 kg Sekar Tanjung Kuning', '', '0', '3', 55000, 165000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', '', '', '08912301924109', '', '1', 0, 0, '', '', '', '', NULL, NULL),
('8705520082300008', 'GL003020420', 'Gula Pasir 1 kg', '', '', '1', 18000, 0, '', '', '', '', NULL, NULL),
('8705520082300008', 'pulsa10000', 'Pulsa', '08912301924109', '', '1', 12000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa2000', 'Pulsa', '08912301924109', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa2000', 'Pulsa', '08912301924109', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa50000', 'Pulsa', '08912301924109', '', '1', 50000, 0, '', '', '', '', NULL, NULL),
('MM00120082300026', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082300026', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'TPMZ003020420', 'Tepung Maizena Hawai 200 gr', '', '0', '3', 4000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'VN009010420', 'Vanilie Pouder 500 mg', '', '0', '2', 1000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '08912301924109', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pulsa10000', 'Pulsa 10000', '08912301924109', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pulsa2000', 'Pulsa 2000', '08912301924109', '0', '1', 3000, 3000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pln20000', 'PLN 20000', '77819274192912', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082500027', 'pln20000', 'PLN 20000', '08912301924109', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500010', 'pulsa10000', 'Pulsa 10000', '99999', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500010', '8999999706180', 'Pasta Gigi Pepsodent 190 gr', '', '0', '2', 9800, 19600, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082500027', '8992733327113', 'Nutrijell Rasa Jambu 10 gr', '', '0', '3', 2000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082700010', 'plnkuota20000', 'PLN 20000', '77819274192912', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700028', 'pulsatelkomsel1', 'Pulsa 10000', '08912301924109', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700028', '23031000BP', 'Bawang Putih 1 Kg', '', '0', '2', 27000, 54000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082700011', 'pulsaindosat100', 'Pulsa 100000', '0851230102123', '0', '1', 100000, 100000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700029', 'pulsatelkomsel10000', 'Pulsa 10000', '08912301924109', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101200012', '8999999502393', 'Royco Rasa Ayam 8 gr', '', '0', '1', 500, 500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsaindosat10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa50000', 'Pulsa 50000', '085678987890', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700000', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700012', 'BAKSFF0017010420', 'Bakso Frozen Mbok Moet ', '', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700013', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700013', 'KSG0001', 'Kurir KSG', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520102800014', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520102800015', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL.Pahlawan Selorejo Kec.Selorejo Kab. Blitar', NULL),
('8705520102800016', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'Sawojajar Malang', NULL),
('8705520103100017', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163 Selorejo Kec. Selorejo Kab.Blitar', NULL),
('8705520110100018', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100029', 'KSG0001', 'Kurir Saw-Gad', '', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120110100030', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('8705520110100019', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('8705520110100020', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100031', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100032', 'KSG0006', 'Kurir Sek-Mad', '085678987890', '0', '1', 6000, 6000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100033', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100034', 'KSG0003', 'Kurir Suk-Gad', '085678987890', '0', '1', 10000, 10000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100035', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100035', 'KSG0004', 'Kurir Klo-Gad', '085678987890', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('operator20042300', 'BAK0010420FR', 'Bakso Frozen Mbok Samut', '', '', '0', 15000, 0, '', '', '', '', NULL, NULL),
('operator20042442', 'TEL0020420AY', 'Telur ayam 500 gr', '', '', '0', 11000, 0, '', '', '', '', NULL, NULL),
('8705520042400001', '8999999027247', 'Sabun Botol Lifebuoy Lemon Fre', '', '', '0', 23750, 0, '', '', '', '', NULL, NULL),
('8705520042500001', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '1', 22000, 22000, '', '', '', '', NULL, NULL),
('8705520042500001', 'BAK0010420FR', 'Bakso Frozen Mbok Samut', '', '', '10', 15000, 150000, '', '', '', '', NULL, NULL),
('8705520042600002', '8999999027247', 'Sabun Botol Lifebuoy Lemon Fre', '', '', '1', 23750, 23750, '', '', '', '', NULL, NULL),
('8705520042600003', '23031000BP', 'Bawang Putih 1 Kg', '', '', '1', 27000, 13500, '', '', '', '', NULL, NULL),
('8705520042600004', 'TCK0029070420', 'Handsanitizer 1L', '', '', '1', 85000, 85000, '', '', '', '', NULL, NULL),
('8936720042700001', 'TEL0020420AY', 'Telur ayam 500 gr', '', '', '0', 11000, 0, '', '', '', '', NULL, NULL),
('8936720042700001', '089686010947', 'Indomie goreng 85 gr', '', '', '1010100', 2400, 2147483647, '', '', '', '', NULL, NULL),
('8936720042700002', 'VN009010420', 'Vanilie Pouder 500 mg', '', '', '0', 1000, 0, '', '', '', '', NULL, NULL),
('8705520042700005', '8994064110404', 'Cutton Buds Baby Dodo 100pc', '', '', '1', 6000, 6000, '', '', '', '', NULL, NULL),
('8705520042700005', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '2', 22000, 44000, '', '', '', '', NULL, NULL),
('8705520042700005', '8999999049393', 'Rexona Deodorant Men Adventure', '', '', '1', 15000, 15000, '', '', '', '', NULL, NULL),
('8936720042700003', '089686010947', 'Indomie goreng 85 gr', '', '', '10', 2400, 24000, '', '', '', '', NULL, NULL),
('8936720042700004', 'VN009010420', 'Vanilie Pouder 500 mg', '', '', '3', 1000, 3000, '', '', '', '', NULL, NULL),
('8936720042700004', '8992933324112', 'Nutrijell Rasa Cokelat 10 gr', '', '', '2', 2000, 4000, '', '', '', '', NULL, NULL),
('MM00120073000001', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000001', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000002', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000003', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '1', 13500, 13500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000004', '23052500BR', 'Beras 2,5 Kg', '0', '0', '1', 29000, 29000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000005', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000006', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000007', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000008', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '7', 13500, 94500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000008', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000009', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000010', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000011', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000012', '8997011700031', 'Bihun Jagung Padamu 350 gr', '0', '0', '1', 6000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000013', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000014', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000015', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000016', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000017', '089686385564', 'Bumbu Kentang Goreng Rasa Barbekiu 25 gr', '0', '0', '1', 4500, 4500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000020', '8968638631', 'Bumbu Racik Indofood Sayur Sop 20 gr', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000021', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '1', 13500, 13500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073100022', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073100022', 'BRS0003030420', 'Beras 5 kg Sekar Tanjung Merah', '0', '0', '5', 57000, 285000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8936720081200005', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '', '1', 2000, 0, '', '', '', '', NULL, NULL),
('8936720081200005', '8998866200325', 'Mie Sedap Instan Rasa Soto 75 gr', '', '', '1', 2500, 0, '', '', '', '', NULL, NULL),
('8705520081200006', '8999999706180', 'Pasta Gigi Pepsodent 190 gr', '', '', '1', 9800, 9800, '', '', '', '', NULL, NULL),
('8705520081400006', '8968605045', 'Pop Mie Mini Rasa Soto Mie 35 gr', '', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('MM00120082000023', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082000006', '8999999049416', 'Rexona Deodorant Men Quantum ', '', '', '2', 15250, 30500, '', '', '', '', NULL, NULL),
('8705520082000006', '8999999502409', 'Royco Rasa Sapi 9 gr', '', '', '2', 500, 1000, '', '', '', '', NULL, NULL),
('8705520082000006', '8998866200325', 'Mie Sedap Instan Rasa Soto 75 gr', '', '', '2', 2500, 5000, '', '', '', '', NULL, NULL),
('8705520082000006', 'pulsa10000', 'Pulsa 10000', '', '', '0895621098430', 0, 0, '', '', '', '', NULL, NULL),
('8705520082000007', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '5', 22000, 110000, '', '', '', '', NULL, NULL),
('8705520082000007', 'pulsa10000', 'Pulsa 10000', '08912301924109', '', '1', 12000, 0, '', '', '', '', NULL, NULL),
('8705520082000007', '8998866200301', 'Mie Sedap Instan Goreng 90 gr', '', '', '3', 2500, 7500, '', '', '', '', NULL, NULL),
('MM00120082000024', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000024', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '3', 2000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'BRS003040420', 'Beras 5 kg Sekar Tanjung Kuning', '', '0', '3', 55000, 165000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', '', '', '08912301924109', '', '1', 0, 0, '', '', '', '', NULL, NULL),
('8705520082300008', 'GL003020420', 'Gula Pasir 1 kg', '', '', '1', 18000, 0, '', '', '', '', NULL, NULL),
('8705520082300008', 'pulsa10000', 'Pulsa', '08912301924109', '', '1', 12000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa2000', 'Pulsa', '08912301924109', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa2000', 'Pulsa', '08912301924109', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa50000', 'Pulsa', '08912301924109', '', '1', 50000, 0, '', '', '', '', NULL, NULL),
('MM00120082300026', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082300026', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'TPMZ003020420', 'Tepung Maizena Hawai 200 gr', '', '0', '3', 4000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'VN009010420', 'Vanilie Pouder 500 mg', '', '0', '2', 1000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '08912301924109', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pulsa10000', 'Pulsa 10000', '08912301924109', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pulsa2000', 'Pulsa 2000', '08912301924109', '0', '1', 3000, 3000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pln20000', 'PLN 20000', '77819274192912', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082500027', 'pln20000', 'PLN 20000', '08912301924109', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500010', 'pulsa10000', 'Pulsa 10000', '99999', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500010', '8999999706180', 'Pasta Gigi Pepsodent 190 gr', '', '0', '2', 9800, 19600, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082500027', '8992733327113', 'Nutrijell Rasa Jambu 10 gr', '', '0', '3', 2000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082700010', 'plnkuota20000', 'PLN 20000', '77819274192912', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700028', 'pulsatelkomsel1', 'Pulsa 10000', '08912301924109', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700028', '23031000BP', 'Bawang Putih 1 Kg', '', '0', '2', 27000, 54000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082700011', 'pulsaindosat100', 'Pulsa 100000', '0851230102123', '0', '1', 100000, 100000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700029', 'pulsatelkomsel10000', 'Pulsa 10000', '08912301924109', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101200012', '8999999502393', 'Royco Rasa Ayam 8 gr', '', '0', '1', 500, 500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsaindosat10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa50000', 'Pulsa 50000', '085678987890', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700000', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700012', 'BAKSFF0017010420', 'Bakso Frozen Mbok Moet ', '', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700013', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700013', 'KSG0001', 'Kurir KSG', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520102800014', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520102800015', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL.Pahlawan Selorejo Kec.Selorejo Kab. Blitar', NULL),
('8705520102800016', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'Sawojajar Malang', NULL),
('8705520103100017', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163 Selorejo Kec. Selorejo Kab.Blitar', NULL),
('8705520110100018', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100029', 'KSG0001', 'Kurir Saw-Gad', '', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120110100030', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('8705520110100019', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('8705520110100020', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100031', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100032', 'KSG0006', 'Kurir Sek-Mad', '085678987890', '0', '1', 6000, 6000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100033', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100034', 'KSG0003', 'Kurir Suk-Gad', '085678987890', '0', '1', 10000, 10000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100035', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100035', 'KSG0004', 'Kurir Klo-Gad', '085678987890', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('operator20042300', 'BAK0010420FR', 'Bakso Frozen Mbok Samut', '', '', '0', 15000, 0, '', '', '', '', NULL, NULL),
('operator20042442', 'TEL0020420AY', 'Telur ayam 500 gr', '', '', '0', 11000, 0, '', '', '', '', NULL, NULL),
('8705520042400001', '8999999027247', 'Sabun Botol Lifebuoy Lemon Fre', '', '', '0', 23750, 0, '', '', '', '', NULL, NULL),
('8705520042500001', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '1', 22000, 22000, '', '', '', '', NULL, NULL),
('8705520042500001', 'BAK0010420FR', 'Bakso Frozen Mbok Samut', '', '', '10', 15000, 150000, '', '', '', '', NULL, NULL),
('8705520042600002', '8999999027247', 'Sabun Botol Lifebuoy Lemon Fre', '', '', '1', 23750, 23750, '', '', '', '', NULL, NULL),
('8705520042600003', '23031000BP', 'Bawang Putih 1 Kg', '', '', '1', 27000, 13500, '', '', '', '', NULL, NULL),
('8705520042600004', 'TCK0029070420', 'Handsanitizer 1L', '', '', '1', 85000, 85000, '', '', '', '', NULL, NULL),
('8936720042700001', 'TEL0020420AY', 'Telur ayam 500 gr', '', '', '0', 11000, 0, '', '', '', '', NULL, NULL),
('8936720042700001', '089686010947', 'Indomie goreng 85 gr', '', '', '1010100', 2400, 2147483647, '', '', '', '', NULL, NULL),
('8936720042700002', 'VN009010420', 'Vanilie Pouder 500 mg', '', '', '0', 1000, 0, '', '', '', '', NULL, NULL),
('8705520042700005', '8994064110404', 'Cutton Buds Baby Dodo 100pc', '', '', '1', 6000, 6000, '', '', '', '', NULL, NULL),
('8705520042700005', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '2', 22000, 44000, '', '', '', '', NULL, NULL),
('8705520042700005', '8999999049393', 'Rexona Deodorant Men Adventure', '', '', '1', 15000, 15000, '', '', '', '', NULL, NULL),
('8936720042700003', '089686010947', 'Indomie goreng 85 gr', '', '', '10', 2400, 24000, '', '', '', '', NULL, NULL),
('8936720042700004', 'VN009010420', 'Vanilie Pouder 500 mg', '', '', '3', 1000, 3000, '', '', '', '', NULL, NULL),
('8936720042700004', '8992933324112', 'Nutrijell Rasa Cokelat 10 gr', '', '', '2', 2000, 4000, '', '', '', '', NULL, NULL),
('MM00120073000001', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000001', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000002', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000003', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '1', 13500, 13500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000004', '23052500BR', 'Beras 2,5 Kg', '0', '0', '1', 29000, 29000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000005', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000006', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000007', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000008', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '7', 13500, 94500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000008', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000009', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000010', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000011', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000012', '8997011700031', 'Bihun Jagung Padamu 350 gr', '0', '0', '1', 6000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000013', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000014', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000015', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000016', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000017', '089686385564', 'Bumbu Kentang Goreng Rasa Barbekiu 25 gr', '0', '0', '1', 4500, 4500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000020', '8968638631', 'Bumbu Racik Indofood Sayur Sop 20 gr', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000021', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '1', 13500, 13500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073100022', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073100022', 'BRS0003030420', 'Beras 5 kg Sekar Tanjung Merah', '0', '0', '5', 57000, 285000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8936720081200005', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '', '1', 2000, 0, '', '', '', '', NULL, NULL),
('8936720081200005', '8998866200325', 'Mie Sedap Instan Rasa Soto 75 gr', '', '', '1', 2500, 0, '', '', '', '', NULL, NULL),
('8705520081200006', '8999999706180', 'Pasta Gigi Pepsodent 190 gr', '', '', '1', 9800, 9800, '', '', '', '', NULL, NULL),
('8705520081400006', '8968605045', 'Pop Mie Mini Rasa Soto Mie 35 gr', '', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('MM00120082000023', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082000006', '8999999049416', 'Rexona Deodorant Men Quantum ', '', '', '2', 15250, 30500, '', '', '', '', NULL, NULL),
('8705520082000006', '8999999502409', 'Royco Rasa Sapi 9 gr', '', '', '2', 500, 1000, '', '', '', '', NULL, NULL),
('8705520082000006', '8998866200325', 'Mie Sedap Instan Rasa Soto 75 gr', '', '', '2', 2500, 5000, '', '', '', '', NULL, NULL),
('8705520082000006', 'pulsa10000', 'Pulsa 10000', '', '', '0895621098430', 0, 0, '', '', '', '', NULL, NULL),
('8705520082000007', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '5', 22000, 110000, '', '', '', '', NULL, NULL),
('8705520082000007', 'pulsa10000', 'Pulsa 10000', '08912301924109', '', '1', 12000, 0, '', '', '', '', NULL, NULL),
('8705520082000007', '8998866200301', 'Mie Sedap Instan Goreng 90 gr', '', '', '3', 2500, 7500, '', '', '', '', NULL, NULL),
('MM00120082000024', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000024', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '3', 2000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'BRS003040420', 'Beras 5 kg Sekar Tanjung Kuning', '', '0', '3', 55000, 165000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', '', '', '08912301924109', '', '3', 0, 0, '', '', '', '', NULL, NULL),
('8705520082300008', 'GL003020420', 'Gula Pasir 1 kg', '', '', '1', 18000, 0, '', '', '', '', NULL, NULL),
('8705520082300008', 'pulsa10000', 'Pulsa', '08912301924109', '', '1', 12000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa2000', 'Pulsa', '08912301924109', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa2000', 'Pulsa', '08912301924109', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa50000', 'Pulsa', '08912301924109', '', '1', 50000, 0, '', '', '', '', NULL, NULL),
('MM00120082300026', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082300026', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'TPMZ003020420', 'Tepung Maizena Hawai 200 gr', '', '0', '3', 4000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'VN009010420', 'Vanilie Pouder 500 mg', '', '0', '2', 1000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '08912301924109', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pulsa10000', 'Pulsa 10000', '08912301924109', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pulsa2000', 'Pulsa 2000', '08912301924109', '0', '1', 3000, 3000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pln20000', 'PLN 20000', '77819274192912', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082500027', 'pln20000', 'PLN 20000', '08912301924109', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500010', 'pulsa10000', 'Pulsa 10000', '99999', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500010', '8999999706180', 'Pasta Gigi Pepsodent 190 gr', '', '0', '2', 9800, 19600, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082500027', '8992733327113', 'Nutrijell Rasa Jambu 10 gr', '', '0', '3', 2000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082700010', 'plnkuota20000', 'PLN 20000', '77819274192912', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700028', 'pulsatelkomsel1', 'Pulsa 10000', '08912301924109', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700028', '23031000BP', 'Bawang Putih 1 Kg', '', '0', '2', 27000, 54000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082700011', 'pulsaindosat100', 'Pulsa 100000', '0851230102123', '0', '1', 100000, 100000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700029', 'pulsatelkomsel10000', 'Pulsa 10000', '08912301924109', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101200012', '8999999502393', 'Royco Rasa Ayam 8 gr', '', '0', '1', 500, 500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsaindosat10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa50000', 'Pulsa 50000', '085678987890', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700000', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700012', 'BAKSFF0017010420', 'Bakso Frozen Mbok Moet ', '', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700013', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700013', 'KSG0001', 'Kurir KSG', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520102800014', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520102800015', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL.Pahlawan Selorejo Kec.Selorejo Kab. Blitar', NULL),
('8705520102800016', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'Sawojajar Malang', NULL),
('8705520103100017', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163 Selorejo Kec. Selorejo Kab.Blitar', NULL),
('8705520110100018', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100029', 'KSG0001', 'Kurir Saw-Gad', '', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120110100030', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('8705520110100019', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('8705520110100020', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100031', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100032', 'KSG0006', 'Kurir Sek-Mad', '085678987890', '0', '1', 6000, 6000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100033', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100034', 'KSG0003', 'Kurir Suk-Gad', '085678987890', '0', '1', 10000, 10000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100035', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100035', 'KSG0004', 'Kurir Klo-Gad', '085678987890', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('operator20042300', 'BAK0010420FR', 'Bakso Frozen Mbok Samut', '', '', '0', 15000, 0, '', '', '', '', NULL, NULL),
('operator20042442', 'TEL0020420AY', 'Telur ayam 500 gr', '', '', '0', 11000, 0, '', '', '', '', NULL, NULL),
('8705520042400001', '8999999027247', 'Sabun Botol Lifebuoy Lemon Fre', '', '', '0', 23750, 0, '', '', '', '', NULL, NULL),
('8705520042500001', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '1', 22000, 22000, '', '', '', '', NULL, NULL),
('8705520042500001', 'BAK0010420FR', 'Bakso Frozen Mbok Samut', '', '', '10', 15000, 150000, '', '', '', '', NULL, NULL),
('8705520042600002', '8999999027247', 'Sabun Botol Lifebuoy Lemon Fre', '', '', '1', 23750, 23750, '', '', '', '', NULL, NULL),
('8705520042600003', '23031000BP', 'Bawang Putih 1 Kg', '', '', '1', 27000, 13500, '', '', '', '', NULL, NULL),
('8705520042600004', 'TCK0029070420', 'Handsanitizer 1L', '', '', '1', 85000, 85000, '', '', '', '', NULL, NULL),
('8936720042700001', 'TEL0020420AY', 'Telur ayam 500 gr', '', '', '0', 11000, 0, '', '', '', '', NULL, NULL),
('8936720042700001', '089686010947', 'Indomie goreng 85 gr', '', '', '1010100', 2400, 2147483647, '', '', '', '', NULL, NULL),
('8936720042700002', 'VN009010420', 'Vanilie Pouder 500 mg', '', '', '0', 1000, 0, '', '', '', '', NULL, NULL),
('8705520042700005', '8994064110404', 'Cutton Buds Baby Dodo 100pc', '', '', '1', 6000, 6000, '', '', '', '', NULL, NULL),
('8705520042700005', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '2', 22000, 44000, '', '', '', '', NULL, NULL),
('8705520042700005', '8999999049393', 'Rexona Deodorant Men Adventure', '', '', '1', 15000, 15000, '', '', '', '', NULL, NULL),
('8936720042700003', '089686010947', 'Indomie goreng 85 gr', '', '', '10', 2400, 24000, '', '', '', '', NULL, NULL),
('8936720042700004', 'VN009010420', 'Vanilie Pouder 500 mg', '', '', '3', 1000, 3000, '', '', '', '', NULL, NULL),
('8936720042700004', '8992933324112', 'Nutrijell Rasa Cokelat 10 gr', '', '', '2', 2000, 4000, '', '', '', '', NULL, NULL),
('MM00120073000001', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000001', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000002', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000003', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '1', 13500, 13500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000004', '23052500BR', 'Beras 2,5 Kg', '0', '0', '1', 29000, 29000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000005', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000006', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000007', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000008', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '7', 13500, 94500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000008', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000009', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000010', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000011', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000012', '8997011700031', 'Bihun Jagung Padamu 350 gr', '0', '0', '1', 6000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000013', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000014', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000015', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000016', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000017', '089686385564', 'Bumbu Kentang Goreng Rasa Barbekiu 25 gr', '0', '0', '1', 4500, 4500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000020', '8968638631', 'Bumbu Racik Indofood Sayur Sop 20 gr', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000021', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '1', 13500, 13500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073100022', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073100022', 'BRS0003030420', 'Beras 5 kg Sekar Tanjung Merah', '0', '0', '5', 57000, 285000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8936720081200005', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '', '1', 2000, 0, '', '', '', '', NULL, NULL),
('8936720081200005', '8998866200325', 'Mie Sedap Instan Rasa Soto 75 gr', '', '', '1', 2500, 0, '', '', '', '', NULL, NULL),
('8705520081200006', '8999999706180', 'Pasta Gigi Pepsodent 190 gr', '', '', '1', 9800, 9800, '', '', '', '', NULL, NULL),
('8705520081400006', '8968605045', 'Pop Mie Mini Rasa Soto Mie 35 gr', '', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('MM00120082000023', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082000006', '8999999049416', 'Rexona Deodorant Men Quantum ', '', '', '2', 15250, 30500, '', '', '', '', NULL, NULL),
('8705520082000006', '8999999502409', 'Royco Rasa Sapi 9 gr', '', '', '2', 500, 1000, '', '', '', '', NULL, NULL),
('8705520082000006', '8998866200325', 'Mie Sedap Instan Rasa Soto 75 gr', '', '', '2', 2500, 5000, '', '', '', '', NULL, NULL),
('8705520082000006', 'pulsa10000', 'Pulsa 10000', '', '', '0895621098430', 0, 0, '', '', '', '', NULL, NULL),
('8705520082000007', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '5', 22000, 110000, '', '', '', '', NULL, NULL),
('8705520082000007', 'pulsa10000', 'Pulsa 10000', '08912301924109', '', '1', 12000, 0, '', '', '', '', NULL, NULL),
('8705520082000007', '8998866200301', 'Mie Sedap Instan Goreng 90 gr', '', '', '3', 2500, 7500, '', '', '', '', NULL, NULL),
('MM00120082000024', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000024', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL);
INSERT INTO `tabel_rinci_penjualan` (`no_faktur_penjualan`, `kd_barang`, `nm_barang`, `no_hp`, `ukuran`, `jumlah`, `harga`, `sub_total_jual`, `diskon`, `a_n`, `keterangan`, `stts`, `alamat`, `alamat_akhir`) VALUES
('MM00120082000025', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '3', 2000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'BRS003040420', 'Beras 5 kg Sekar Tanjung Kuning', '', '0', '3', 55000, 165000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', '', '', '08912301924109', '', '3', 0, 0, '', '', '', '', NULL, NULL),
('8705520082300008', 'GL003020420', 'Gula Pasir 1 kg', '', '', '1', 18000, 0, '', '', '', '', NULL, NULL),
('8705520082300008', 'pulsa10000', 'Pulsa', '08912301924109', '', '1', 12000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa2000', 'Pulsa', '08912301924109', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa2000', 'Pulsa', '08912301924109', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa50000', 'Pulsa', '08912301924109', '', '1', 50000, 0, '', '', '', '', NULL, NULL),
('MM00120082300026', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082300026', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'TPMZ003020420', 'Tepung Maizena Hawai 200 gr', '', '0', '3', 4000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'VN009010420', 'Vanilie Pouder 500 mg', '', '0', '2', 1000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '08912301924109', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pulsa10000', 'Pulsa 10000', '08912301924109', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pulsa2000', 'Pulsa 2000', '08912301924109', '0', '1', 3000, 3000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pln20000', 'PLN 20000', '77819274192912', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082500027', 'pln20000', 'PLN 20000', '08912301924109', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500010', 'pulsa10000', 'Pulsa 10000', '99999', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500010', '8999999706180', 'Pasta Gigi Pepsodent 190 gr', '', '0', '2', 9800, 19600, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082500027', '8992733327113', 'Nutrijell Rasa Jambu 10 gr', '', '0', '3', 2000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082700010', 'plnkuota20000', 'PLN 20000', '77819274192912', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700028', 'pulsatelkomsel1', 'Pulsa 10000', '08912301924109', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700028', '23031000BP', 'Bawang Putih 1 Kg', '', '0', '2', 27000, 54000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082700011', 'pulsaindosat100', 'Pulsa 100000', '0851230102123', '0', '1', 100000, 100000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700029', 'pulsatelkomsel10000', 'Pulsa 10000', '08912301924109', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101200012', '8999999502393', 'Royco Rasa Ayam 8 gr', '', '0', '1', 500, 500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsaindosat10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa50000', 'Pulsa 50000', '085678987890', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700000', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700012', 'BAKSFF0017010420', 'Bakso Frozen Mbok Moet ', '', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700013', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700013', 'KSG0001', 'Kurir KSG', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520102800014', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520102800015', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL.Pahlawan Selorejo Kec.Selorejo Kab. Blitar', NULL),
('8705520102800016', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'Sawojajar Malang', NULL),
('8705520103100017', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163 Selorejo Kec. Selorejo Kab.Blitar', NULL),
('8705520110100018', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100029', 'KSG0001', 'Kurir Saw-Gad', '', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120110100030', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('8705520110100019', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('8705520110100020', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100031', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100032', 'KSG0006', 'Kurir Sek-Mad', '085678987890', '0', '1', 6000, 6000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100033', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100034', 'KSG0003', 'Kurir Suk-Gad', '085678987890', '0', '1', 10000, 10000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100035', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100035', 'KSG0004', 'Kurir Klo-Gad', '085678987890', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('8705521011800021', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('8705521011800022', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('8705521011800023', 'PUJ001', 'PU Jelantah', NULL, '0', '2', 0, 0, NULL, NULL, 'TUNAI', NULL, 'malang', NULL),
('8705521011800023', 'PUJ001', 'PU Jelantah', NULL, '0', '2', 0, 0, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', NULL),
('8705521011800023', 'PUJ001', 'PU Jelantah', NULL, '0', '2', 0, 0, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', NULL),
('8705521011800024', 'PUJ001', 'PU Jelantah', NULL, '0', '1', 0, 0, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', NULL),
('8705521011800025', 'PUJ001', 'PU Jelantah', NULL, '0', '2', 0, 0, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', NULL),
('operator20042300', 'BAK0010420FR', 'Bakso Frozen Mbok Samut', '', '', '0', 15000, 0, '', '', '', '', NULL, NULL),
('operator20042442', 'TEL0020420AY', 'Telur ayam 500 gr', '', '', '0', 11000, 0, '', '', '', '', NULL, NULL),
('8705520042400001', '8999999027247', 'Sabun Botol Lifebuoy Lemon Fre', '', '', '0', 23750, 0, '', '', '', '', NULL, NULL),
('8705520042500001', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '1', 22000, 22000, '', '', '', '', NULL, NULL),
('8705520042500001', 'BAK0010420FR', 'Bakso Frozen Mbok Samut', '', '', '10', 15000, 150000, '', '', '', '', NULL, NULL),
('8705520042600002', '8999999027247', 'Sabun Botol Lifebuoy Lemon Fre', '', '', '1', 23750, 23750, '', '', '', '', NULL, NULL),
('8705520042600003', '23031000BP', 'Bawang Putih 1 Kg', '', '', '1', 27000, 13500, '', '', '', '', NULL, NULL),
('8705520042600004', 'TCK0029070420', 'Handsanitizer 1L', '', '', '1', 85000, 85000, '', '', '', '', NULL, NULL),
('8936720042700001', 'TEL0020420AY', 'Telur ayam 500 gr', '', '', '0', 11000, 0, '', '', '', '', NULL, NULL),
('8936720042700001', '089686010947', 'Indomie goreng 85 gr', '', '', '1010100', 2400, 2147483647, '', '', '', '', NULL, NULL),
('8936720042700002', 'VN009010420', 'Vanilie Pouder 500 mg', '', '', '0', 1000, 0, '', '', '', '', NULL, NULL),
('8705520042700005', '8994064110404', 'Cutton Buds Baby Dodo 100pc', '', '', '1', 6000, 6000, '', '', '', '', NULL, NULL),
('8705520042700005', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '2', 22000, 44000, '', '', '', '', NULL, NULL),
('8705520042700005', '8999999049393', 'Rexona Deodorant Men Adventure', '', '', '1', 15000, 15000, '', '', '', '', NULL, NULL),
('8936720042700003', '089686010947', 'Indomie goreng 85 gr', '', '', '10', 2400, 24000, '', '', '', '', NULL, NULL),
('8936720042700004', 'VN009010420', 'Vanilie Pouder 500 mg', '', '', '3', 1000, 3000, '', '', '', '', NULL, NULL),
('8936720042700004', '8992933324112', 'Nutrijell Rasa Cokelat 10 gr', '', '', '2', 2000, 4000, '', '', '', '', NULL, NULL),
('MM00120073000001', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000001', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000002', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000003', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '1', 13500, 13500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000004', '23052500BR', 'Beras 2,5 Kg', '0', '0', '1', 29000, 29000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000005', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000006', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000007', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000008', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '7', 13500, 94500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000008', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000009', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000010', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000011', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000012', '8997011700031', 'Bihun Jagung Padamu 350 gr', '0', '0', '1', 6000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000013', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000014', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000015', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000016', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000017', '089686385564', 'Bumbu Kentang Goreng Rasa Barbekiu 25 gr', '0', '0', '1', 4500, 4500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000020', '8968638631', 'Bumbu Racik Indofood Sayur Sop 20 gr', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000021', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '1', 13500, 13500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073100022', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073100022', 'BRS0003030420', 'Beras 5 kg Sekar Tanjung Merah', '0', '0', '5', 57000, 285000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8936720081200005', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '', '1', 2000, 0, '', '', '', '', NULL, NULL),
('8936720081200005', '8998866200325', 'Mie Sedap Instan Rasa Soto 75 gr', '', '', '1', 2500, 0, '', '', '', '', NULL, NULL),
('8705520081200006', '8999999706180', 'Pasta Gigi Pepsodent 190 gr', '', '', '1', 9800, 9800, '', '', '', '', NULL, NULL),
('8705520081400006', '8968605045', 'Pop Mie Mini Rasa Soto Mie 35 gr', '', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('MM00120082000023', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082000006', '8999999049416', 'Rexona Deodorant Men Quantum ', '', '', '2', 15250, 30500, '', '', '', '', NULL, NULL),
('8705520082000006', '8999999502409', 'Royco Rasa Sapi 9 gr', '', '', '2', 500, 1000, '', '', '', '', NULL, NULL),
('8705520082000006', '8998866200325', 'Mie Sedap Instan Rasa Soto 75 gr', '', '', '2', 2500, 5000, '', '', '', '', NULL, NULL),
('8705520082000006', 'pulsa10000', 'Pulsa 10000', '', '', '0895621098430', 0, 0, '', '', '', '', NULL, NULL),
('8705520082000007', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '5', 22000, 110000, '', '', '', '', NULL, NULL),
('8705520082000007', 'pulsa10000', 'Pulsa 10000', '08912301924109', '', '1', 12000, 0, '', '', '', '', NULL, NULL),
('8705520082000007', '8998866200301', 'Mie Sedap Instan Goreng 90 gr', '', '', '3', 2500, 7500, '', '', '', '', NULL, NULL),
('MM00120082000024', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000024', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '3', 2000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'BRS003040420', 'Beras 5 kg Sekar Tanjung Kuning', '', '0', '3', 55000, 165000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', '', '', '08912301924109', '', '3', 0, 0, '', '', '', '', NULL, NULL),
('8705520082300008', 'GL003020420', 'Gula Pasir 1 kg', '', '', '1', 18000, 0, '', '', '', '', NULL, NULL),
('8705520082300008', 'pulsa10000', 'Pulsa', '08912301924109', '', '1', 12000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa2000', 'Pulsa', '08912301924109', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa2000', 'Pulsa', '08912301924109', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa50000', 'Pulsa', '08912301924109', '', '1', 50000, 0, '', '', '', '', NULL, NULL),
('MM00120082300026', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082300026', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'TPMZ003020420', 'Tepung Maizena Hawai 200 gr', '', '0', '3', 4000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'VN009010420', 'Vanilie Pouder 500 mg', '', '0', '2', 1000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '08912301924109', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pulsa10000', 'Pulsa 10000', '08912301924109', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pulsa2000', 'Pulsa 2000', '08912301924109', '0', '1', 3000, 3000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pln20000', 'PLN 20000', '77819274192912', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082500027', 'pln20000', 'PLN 20000', '08912301924109', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500010', 'pulsa10000', 'Pulsa 10000', '99999', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500010', '8999999706180', 'Pasta Gigi Pepsodent 190 gr', '', '0', '2', 9800, 19600, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082500027', '8992733327113', 'Nutrijell Rasa Jambu 10 gr', '', '0', '3', 2000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082700010', 'plnkuota20000', 'PLN 20000', '77819274192912', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700028', 'pulsatelkomsel1', 'Pulsa 10000', '08912301924109', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700028', '23031000BP', 'Bawang Putih 1 Kg', '', '0', '2', 27000, 54000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082700011', 'pulsaindosat100', 'Pulsa 100000', '0851230102123', '0', '1', 100000, 100000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700029', 'pulsatelkomsel10000', 'Pulsa 10000', '08912301924109', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101200012', '8999999502393', 'Royco Rasa Ayam 8 gr', '', '0', '1', 500, 500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsaindosat10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa50000', 'Pulsa 50000', '085678987890', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700000', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700012', 'BAKSFF0017010420', 'Bakso Frozen Mbok Moet ', '', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700013', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700013', 'KSG0001', 'Kurir KSG', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520102800014', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520102800015', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL.Pahlawan Selorejo Kec.Selorejo Kab. Blitar', NULL),
('8705520102800016', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'Sawojajar Malang', NULL),
('8705520103100017', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163 Selorejo Kec. Selorejo Kab.Blitar', NULL),
('8705520110100018', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100029', 'KSG0001', 'Kurir Saw-Gad', '', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120110100030', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('8705520110100019', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('8705520110100020', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100031', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100032', 'KSG0006', 'Kurir Sek-Mad', '085678987890', '0', '1', 6000, 6000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100033', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100034', 'KSG0003', 'Kurir Suk-Gad', '085678987890', '0', '1', 10000, 10000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100035', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100035', 'KSG0004', 'Kurir Klo-Gad', '085678987890', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('operator20042300', 'BAK0010420FR', 'Bakso Frozen Mbok Samut', '', '', '0', 15000, 0, '', '', '', '', NULL, NULL),
('operator20042442', 'TEL0020420AY', 'Telur ayam 500 gr', '', '', '0', 11000, 0, '', '', '', '', NULL, NULL),
('8705520042400001', '8999999027247', 'Sabun Botol Lifebuoy Lemon Fre', '', '', '0', 23750, 0, '', '', '', '', NULL, NULL),
('8705520042500001', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '1', 22000, 22000, '', '', '', '', NULL, NULL),
('8705520042500001', 'BAK0010420FR', 'Bakso Frozen Mbok Samut', '', '', '10', 15000, 150000, '', '', '', '', NULL, NULL),
('8705520042600002', '8999999027247', 'Sabun Botol Lifebuoy Lemon Fre', '', '', '1', 23750, 23750, '', '', '', '', NULL, NULL),
('8705520042600003', '23031000BP', 'Bawang Putih 1 Kg', '', '', '1', 27000, 13500, '', '', '', '', NULL, NULL),
('8705520042600004', 'TCK0029070420', 'Handsanitizer 1L', '', '', '1', 85000, 85000, '', '', '', '', NULL, NULL),
('8936720042700001', 'TEL0020420AY', 'Telur ayam 500 gr', '', '', '0', 11000, 0, '', '', '', '', NULL, NULL),
('8936720042700001', '089686010947', 'Indomie goreng 85 gr', '', '', '1010100', 2400, 2147483647, '', '', '', '', NULL, NULL),
('8936720042700002', 'VN009010420', 'Vanilie Pouder 500 mg', '', '', '0', 1000, 0, '', '', '', '', NULL, NULL),
('8705520042700005', '8994064110404', 'Cutton Buds Baby Dodo 100pc', '', '', '1', 6000, 6000, '', '', '', '', NULL, NULL),
('8705520042700005', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '2', 22000, 44000, '', '', '', '', NULL, NULL),
('8705520042700005', '8999999049393', 'Rexona Deodorant Men Adventure', '', '', '1', 15000, 15000, '', '', '', '', NULL, NULL),
('8936720042700003', '089686010947', 'Indomie goreng 85 gr', '', '', '10', 2400, 24000, '', '', '', '', NULL, NULL),
('8936720042700004', 'VN009010420', 'Vanilie Pouder 500 mg', '', '', '3', 1000, 3000, '', '', '', '', NULL, NULL),
('8936720042700004', '8992933324112', 'Nutrijell Rasa Cokelat 10 gr', '', '', '2', 2000, 4000, '', '', '', '', NULL, NULL),
('MM00120073000001', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000001', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000002', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000003', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '1', 13500, 13500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000004', '23052500BR', 'Beras 2,5 Kg', '0', '0', '1', 29000, 29000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000005', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000006', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000007', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000008', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '7', 13500, 94500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000008', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000009', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000010', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000011', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000012', '8997011700031', 'Bihun Jagung Padamu 350 gr', '0', '0', '1', 6000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000013', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000014', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000015', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000016', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000017', '089686385564', 'Bumbu Kentang Goreng Rasa Barbekiu 25 gr', '0', '0', '1', 4500, 4500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000020', '8968638631', 'Bumbu Racik Indofood Sayur Sop 20 gr', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073000021', '2304500BP', 'Bawang Putih 500 gr', '0', '0', '1', 13500, 13500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073100022', '23031000BP', 'Bawang Putih 1 Kg', '0', '0', '1', 27000, 27000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120073100022', 'BRS0003030420', 'Beras 5 kg Sekar Tanjung Merah', '0', '0', '5', 57000, 285000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8936720081200005', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '', '1', 2000, 0, '', '', '', '', NULL, NULL),
('8936720081200005', '8998866200325', 'Mie Sedap Instan Rasa Soto 75 gr', '', '', '1', 2500, 0, '', '', '', '', NULL, NULL),
('8705520081200006', '8999999706180', 'Pasta Gigi Pepsodent 190 gr', '', '', '1', 9800, 9800, '', '', '', '', NULL, NULL),
('8705520081400006', '8968605045', 'Pop Mie Mini Rasa Soto Mie 35 gr', '', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('MM00120082000023', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '0', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082000006', '8999999049416', 'Rexona Deodorant Men Quantum ', '', '', '2', 15250, 30500, '', '', '', '', NULL, NULL),
('8705520082000006', '8999999502409', 'Royco Rasa Sapi 9 gr', '', '', '2', 500, 1000, '', '', '', '', NULL, NULL),
('8705520082000006', '8998866200325', 'Mie Sedap Instan Rasa Soto 75 gr', '', '', '2', 2500, 5000, '', '', '', '', NULL, NULL),
('8705520082000006', 'pulsa10000', 'Pulsa 10000', '', '', '0895621098430', 0, 0, '', '', '', '', NULL, NULL),
('8705520082000007', 'TEL231000KG', 'Telur Ayam 1 kg', '', '', '5', 22000, 110000, '', '', '', '', NULL, NULL),
('8705520082000007', 'pulsa10000', 'Pulsa 10000', '08912301924109', '', '1', 12000, 0, '', '', '', '', NULL, NULL),
('8705520082000007', '8998866200301', 'Mie Sedap Instan Goreng 90 gr', '', '', '3', 2500, 7500, '', '', '', '', NULL, NULL),
('MM00120082000024', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000024', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '3', 2000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'BRS003040420', 'Beras 5 kg Sekar Tanjung Kuning', '', '0', '3', 55000, 165000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082000025', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', '', '', '08912301924109', '', '3', 0, 0, '', '', '', '', NULL, NULL),
('8705520082300008', 'GL003020420', 'Gula Pasir 1 kg', '', '', '1', 18000, 0, '', '', '', '', NULL, NULL),
('8705520082300008', 'pulsa10000', 'Pulsa', '08912301924109', '', '1', 12000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa2000', 'Pulsa', '08912301924109', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa2000', 'Pulsa', '08912301924109', '', '1', 3000, 0, '', '', '', '', NULL, NULL),
('8705520082300009', 'pulsa50000', 'Pulsa', '08912301924109', '', '1', 50000, 0, '', '', '', '', NULL, NULL),
('MM00120082300026', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082300026', 'AR0006010420', 'Air Mineral Botol Adora 600 ml', '', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'TPMZ003020420', 'Tepung Maizena Hawai 200 gr', '', '0', '3', 4000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'VN009010420', 'Vanilie Pouder 500 mg', '', '0', '2', 1000, 2000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '08912301924109', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa50000', 'Pulsa 50000', '08912301924109', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pulsa10000', 'Pulsa 10000', '08912301924109', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pulsa2000', 'Pulsa 2000', '08912301924109', '0', '1', 3000, 3000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500009', 'pln20000', 'PLN 20000', '77819274192912', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082500027', 'pln20000', 'PLN 20000', '08912301924109', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500010', 'pulsa10000', 'Pulsa 10000', '99999', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082500010', '8999999706180', 'Pasta Gigi Pepsodent 190 gr', '', '0', '2', 9800, 19600, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082500027', '8992733327113', 'Nutrijell Rasa Jambu 10 gr', '', '0', '3', 2000, 6000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082700010', 'plnkuota20000', 'PLN 20000', '77819274192912', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700028', 'pulsatelkomsel1', 'Pulsa 10000', '08912301924109', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700028', '23031000BP', 'Bawang Putih 1 Kg', '', '0', '2', 27000, 54000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520082700011', 'pulsaindosat100', 'Pulsa 100000', '0851230102123', '0', '1', 100000, 100000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120082700029', 'pulsatelkomsel10000', 'Pulsa 10000', '08912301924109', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101200012', '8999999502393', 'Royco Rasa Ayam 8 gr', '', '0', '1', 500, 500, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsaindosat10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa50000', 'Pulsa 50000', '085678987890', '0', '1', 50000, 50000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pln20000', 'PLN 20000', '085678987890', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700000', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700012', 'BAKSFF0017010420', 'Bakso Frozen Mbok Moet ', '', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700013', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520101700013', 'KSG0001', 'Kurir KSG', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520102800014', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('8705520102800015', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL.Pahlawan Selorejo Kec.Selorejo Kab. Blitar', NULL),
('8705520102800016', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'Sawojajar Malang', NULL),
('8705520103100017', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163 Selorejo Kec. Selorejo Kab.Blitar', NULL),
('8705520110100018', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100029', 'KSG0001', 'Kurir Saw-Gad', '', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, NULL, NULL),
('MM00120110100030', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('8705520110100019', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('8705520110100020', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100031', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100032', 'KSG0006', 'Kurir Sek-Mad', '085678987890', '0', '1', 6000, 6000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100033', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100034', 'KSG0003', 'Kurir Suk-Gad', '085678987890', '0', '1', 10000, 10000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('MM00120110100035', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('MM00120110100035', 'KSG0004', 'Kurir Klo-Gad', '085678987890', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('8705521011800021', 'KSG0001', 'Kurir Saw-Gad', '085678987890', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', 'JL. Patriot No.266'),
('8705521011800022', 'pulsa10000', 'Pulsa 10000', '085678987890', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', ''),
('8705521011800023', 'PUJ001', 'PU Jelantah', NULL, '0', '2', 0, 0, NULL, NULL, 'TUNAI', NULL, 'malang', NULL),
('8705521011800023', 'PUJ001', 'PU Jelantah', NULL, '0', '2', 0, 0, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', NULL),
('8705521011800023', 'PUJ001', 'PU Jelantah', NULL, '0', '2', 0, 0, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', NULL),
('8705521011800024', 'PUJ001', 'PU Jelantah', NULL, '0', '1', 0, 0, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', NULL),
('8705521011800025', 'PUJ001', 'PU Jelantah', NULL, '0', '2', 0, 0, NULL, NULL, 'TUNAI', NULL, 'JL. Pahlawan No.163', NULL),
('8705521012400021', 'K01', '', '081216721163', '0', '1', 4000, 4000, NULL, NULL, 'TUNAI', NULL, 'Perumahan banjararum blok BD 8', 'Terminal Arjosari'),
('8705521012400022', 'k05', '', '09876543', '0', '1', 23500, 23500, NULL, NULL, 'TUNAI', NULL, 'Gn 3', 'Bd 8'),
('8705521012400023', 'k06', 'Kur BBABMR-BDGREJO', '081216721163', '0', '1', 23500, 23500, NULL, NULL, 'TUNAI', NULL, 'Bba bd 8', 'Bandungrejosari ss 10'),
('8705521012400024', 'pulsatelkomsel10000', 'Pulsa 10000', '081216721163', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, 'Perumahan bba bd 8', ''),
('8705521012400025', 'k079', 'kur bbm-lwkwaru', '085785401891', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'Nevie, Perumahan banjararum bd 8 Singosari Malang', 'Ikaqo, Griya Shanta H-107 malang. Sebelah masjid Annur'),
('4161921012500001', 'K04', '', '087859341809', '0', '1', 6500, 6500, NULL, NULL, 'TUNAI', NULL, 'Perum banjararum view blok at 23 singosari', 'Datyo. JL Alegro B1/9 riverside malang'),
('4161921012500002', 'k041', 'kur bbm-swjjar', '08125235430', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, 'Perum banjararum view blok at 23 singosari', 'Bu latif, Jl. Danau tondano raya A4/i26 sawojajar malang'),
('4161921012500003', 'K069', 'kur bbm-ampeldento', '082334658333', '0', '1', 16000, 16000, NULL, NULL, 'TUNAI', NULL, 'Perum banjararum view blok at 23 singosari', 'Dian, jl raya ampeldento pss 60 asrikaton pakis malang'),
('4161921012500003', 'K01', '', '085706014811', '0', '1', 4000, 4000, NULL, NULL, 'TUNAI', NULL, 'Perum banjararum view blok at 23 singosari', 'Mita, jl teluk kumai 5 arjosari malang'),
('4161921012500003', 'k081', 'kur bbm-ldgsari', '082230676611', '0', '1', 24000, 24000, NULL, NULL, 'TUNAI', NULL, 'Perum banjararum view blok at 23 singosari', 'Bu yuni, Jl tirto utomo 3A no 9 Landungsari Malang'),
('4161921012500003', 'k081', 'kur bbm-ldgsari', '081334712151', '0', '1', 24000, 24000, NULL, NULL, 'TUNAI', NULL, 'Perum banjararum view blok at 23 singosari', 'Bu awaiyah, jl tirtomulyo Gang 5 no 11 Landungsari malang'),
('4161921012500004', 'k066', 'kur bbm-losari', '082333089425', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, 'Perum banjararum view blok at 23 singosari', 'Farida, jl soponyono gang kecil no 16 rt 4 rw 2 losari singosari'),
('4161921012500005', 'k052', 'kur bbm-mndrko', '085109635001', '0', '1', 0, 0, NULL, NULL, 'TUNAI', NULL, 'Perum banjararum view blok at 23 singosari', 'Enik, BMR Blok BA-52'),
('4161921012500006', 'k067', 'kur bbm-pagntn', '085101188691', '0', '1', 9000, 9000, NULL, NULL, 'TUNAI', NULL, 'Perum banjararum view blok at 23 singosari', 'Reinis, puskesmas singosari jl tohjoyo III/1 pagentang'),
('4161921012500007', 'k024', 'kur bbm-kduldlm', '085691415297', '0', '1', 17500, 17500, NULL, NULL, 'TUNAI', NULL, 'Perum banjararum view blok at 23 singosari', 'Wiwit, hotel ollino garden jl aries munandar 41-45 malang'),
('8900421012500001', 'K082', 'Kur bbm-merjosari', '085330985801', '0', '1', 21000, 21000, NULL, NULL, 'TUNAI', NULL, 'Bumi mondoroko raya GR 2 no 38', 'Vila bukit tidar A4 no 203 RT.08'),
('4161921012600008', 'K01', '', '081254574671', '0', '1', 4000, 4000, NULL, NULL, 'TUNAI', NULL, 'Perum banjararum view blok at 23 singosari', 'Erlin.PBI F4 NO 16 araya malang'),
('4161921012600009', 'k010', 'Kur BBM-Buring', '085259734603', '0', '1', 23000, 23000, NULL, NULL, 'TUNAI', NULL, 'Perum banjararum view blok at 23 singosari', 'Dyan.Puri cempaka putih 3 BG37 bumiayu malang'),
('8705521012600026', 'K01', '', '9990', '0', '1', 4000, 4000, NULL, NULL, 'TUNAI', NULL, 'Bd 8', 'Bg 6'),
('8705521012600027', 'k085', 'kur bbm-arjosari', '999', '0', '1', 8000, 8000, NULL, NULL, 'TUNAI', NULL, 'Y', 'H'),
('8705521012600028', 'kur086', 'kur bbm-arjwngun', '999', '0', '1', 27500, 27500, NULL, NULL, 'TUNAI', NULL, 'H', 'V'),
('4161921012600010', 'k052', 'kur bbm-mndrko', '085854260468', '0', '1', 0, 0, NULL, NULL, 'TUNAI', NULL, 'Perum banjararum view at 23 singosari', 'Perum BMR bb 86'),
('4161921012600011', 'MK001240121CLK', 'Pentol jamur isi 20 pc', '', '0', '1', 10000, 10000, NULL, NULL, 'TUNAI', NULL, '', ''),
('4161921012600011', 'TEL231000KG', 'Telur Ayam 1 kg', '', '0', '1', 21000, 21000, NULL, NULL, 'TUNAI', NULL, '', ''),
('0666521012600001', '089686385618', 'Bumbu Kentang Goreng Rasa Keju 25 gr', '', '0', '1', 4500, 4500, NULL, NULL, 'TUNAI', NULL, '', ''),
('4161921012700012', 'k052', 'kur bbm-mndrko', '085258740009', '0', '1', 0, 0, NULL, NULL, 'TUNAI', NULL, 'Dwi, perum BBV blok at 23', 'Rini, Bmr GK 6 no 14 singosari'),
('4161921012800013', 'k052', 'kur bbm-mndrko', '085258740009', '0', '1', 0, 0, NULL, NULL, 'TUNAI', NULL, 'Perum banjararum view blok at 23', 'Rini.bmr blok gk 6 no 104 singosari'),
('4161921012900014', 'k021', 'kur bbm-kdgkandg', '08129933202', '0', '1', 21000, 21000, NULL, NULL, 'TUNAI', NULL, 'perumahan Banjararum view blok at 23 Singosari', 'diyah.puri kartika asri b12 arjowinangun'),
('4161921012900015', 'k052', 'kur bbm-mndrko', '08123241396', '0', '1', 0, 0, NULL, NULL, 'TUNAI', NULL, 'Perum banjararum view blok at23', 'Dwi.Bmr GO 1 no 23'),
('4161921012900016', 'pulsatelkomsel10000', 'Pulsa 10000', '081359199632', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, 'Banjararum view at 23', ''),
('4161921020800017', 'k032', 'kur bbm-pandnwangi', '081232290168', '0', '1', 12500, 12500, NULL, NULL, 'TUNAI', NULL, 'Banjararum view at23 singosari', 'Jeffrey.pusaka ibu madura jl tenaga baru 2 no 6'),
('4161921020800018', 'k052', 'kur bbm-mndrko', '089602582474', '0', '1', 0, 0, NULL, NULL, 'TUNAI', NULL, 'Banjararum view at23', 'Rani bmr Gi 5 no 47'),
('4161921020900019', 'k066', 'kur bbm-losari', '081292060465', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, 'Perum banjararum view at23', 'Elga.asrama yon armed 1.tunggu dipos'),
('8982921021100001', 'k052', 'kur bbm-mndrko', '3', '0', '1', 0, 0, NULL, NULL, 'TUNAI', NULL, 'Blok aid 9', 'Blok gl '),
('8753621021800001', 'k065', 'kur bbm-cndirengo', '+62 822-3617-6811', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'Perumahan banjararum estate blok bd 15', 'Jl. Jayanegara No. 103 Rt 05 Rw 06 Kel. Candirenggo Kec. Singosari Kab. Malang 65153'),
('4161921022000020', 'k066', 'kur bbm-losari', '08567400421', '0', '1', 11000, 11000, NULL, NULL, 'TUNAI', NULL, 'Perum.banjararum view at23 ', 'sertu servinus.Pos yon armed 1 losari'),
('4161921022400021', 'k052', 'kur bbm-mndrko', '082230967497', '0', '1', 0, 0, NULL, NULL, 'TUNAI', NULL, 'BBV at 23', 'Anggita bmr ah 11'),
('4161921022500022', 'k075', 'kur bbm-ngijo', '0888056648', '0', '1', 14000, 14000, NULL, NULL, 'TUNAI', NULL, 'BBV 23', 'Abah Mul.Permata regency 2 blok A11 nomor 14-15 ngijo karangploso an abah mul atau rumah AHE anak he'),
('4161921022500023', 'k052', 'kur bbm-mndrko', '083122756690', '0', '1', 0, 0, NULL, NULL, 'TUNAI', NULL, 'Bbv at23', 'Dapur kana bmr blok gj6 no 111'),
('4161921022600024', 'k085', 'kur bbm-arjosari', '+62822-3296-4029', '0', '1', 8000, 8000, NULL, NULL, 'TUNAI', NULL, 'Bbvv at 23', 'Bu retno Bu Retno  Perum Araya blok L6 no 18'),
('4161921030600025', 'k085', 'kur bbm-arjosari', '085706014811', '0', '1', 8000, 8000, NULL, NULL, 'TUNAI', NULL, 'Bbv at23', 'Teluk kumai 5 arjosari'),
('8705521030600028', 'BAKSFF0017010420', 'Bakso Frozen Mbok Moet ', '', '0', '1', 15000, 15000, NULL, NULL, 'TUNAI', NULL, '', ''),
('4161921030700026', 'k058', 'kur bbm-purwasri', '081217827357', '0', '1', 10000, 10000, NULL, NULL, 'TUNAI', NULL, 'BBV at23', 'Leina.singhasari residence B2 no 3 singosari'),
('4161921030900027', 'k081', 'kur bbm-ldgsari', '082230676611', '0', '1', 24000, 24000, NULL, NULL, 'TUNAI', NULL, 'Bbv at23', 'Bu yuni.tirto utomo 3a no 9 ldsari'),
('4161921030900027', 'k081', 'kur bbm-ldgsari', '082230676611', '0', '1', 24000, 24000, NULL, NULL, 'TUNAI', NULL, 'Bbv at23', 'Bu yuni.tirto utomo 3a no 9 ldsari'),
('4161921030900027', 'k081', 'kur bbm-ldgsari', '082230676611', '0', '1', 24000, 24000, NULL, NULL, 'TUNAI', NULL, 'Bbv at23', 'Bu yuni.tirto utomo 3a no 9 ldsari'),
('4161921030900027', 'k081', 'kur bbm-ldgsari', '082230676611', '0', '1', 24000, 24000, NULL, NULL, 'TUNAI', NULL, 'Bbv at23', 'Bu yuni.tirto utomo 3a no 9 ldsari'),
('4161921030900027', 'k081', 'kur bbm-ldgsari', '082230676611', '0', '1', 24000, 24000, NULL, NULL, 'TUNAI', NULL, 'Bbv at23', 'Bu yuni.tirto utomo 3a no 9 ldsari'),
('4161921030900027', 'k081', 'kur bbm-ldgsari', '082230676611', '0', '1', 24000, 24000, NULL, NULL, 'TUNAI', NULL, 'Bbv at23', 'Bu yuni.tirto utomo 3a no 9 ldsari'),
('4161921030900027', 'k081', 'kur bbm-ldgsari', '082230676611', '0', '1', 24000, 24000, NULL, NULL, 'TUNAI', NULL, 'Bbv at23', 'Bu yuni.tirto utomo 3a no 9 ldsari'),
('4161921031300027', 'k058', 'kur bbm-purwasri', '+62 812-1782-7357', '0', '1', 10000, 10000, NULL, NULL, 'TUNAI', NULL, 'Bbv at23', 'Leina.Leina Singhasari residence blok B2 no 3 singosari'),
('8705521031900029', '8992802435048', 'Susu Zee Vanila Delight 350 gr', '', '0', '1', 55250, 55250, NULL, NULL, 'TUNAI', NULL, '', ''),
('4575821060800001', '8999999706180', 'Pasta Gigi Pepsodent 190 gr', '', '0', '1', 9800, 9800, NULL, NULL, 'TUNAI', NULL, '', ''),
('4575821060800001', 'TEL0020420AY', 'Telur ayam 500 gr', '', '0', '1', 10500, 10500, NULL, NULL, 'TUNAI', NULL, '', ''),
('7550121070600001', '8992933321111', 'Nutrijell Rasa Stroberri 10 gr', '', '0', '1', 2000, 2000, NULL, NULL, 'TUNAI', NULL, '', ''),
('7550121070600001', '8998866200301', 'Mie Sedap Instan Goreng 90 gr', '', '0', '1', 2500, 2500, NULL, NULL, 'TUNAI', NULL, '', ''),
('8073921071100001', '8992753102204', 'Susu Kental Manis Cokelat Frisian Flag 370 gr', '', '0', '2', 11500, 23000, NULL, NULL, 'TUNAI', NULL, '', ''),
('8073921071100001', '8992753101207', 'Susu Kental Manis Frisian Flag 370 gr', '', '0', '2', 12500, 25000, NULL, NULL, 'TUNAI', NULL, '', ''),
('8073921071100001', '8999999012625', 'Kecap Manis Refill Bango 220 ml', '', '0', '1', 10750, 10750, NULL, NULL, 'TUNAI', NULL, '', ''),
('8073921071100001', '8998225800012', 'Minyak Goreng Bantal Fortune 1L', '', '0', '1', 12500, 12500, NULL, NULL, 'TUNAI', NULL, '', ''),
('8073921071100001', '24ECEHF2021', 'Tisu Paseo Smart 250s', '', '0', '1', 8800, 8800, NULL, NULL, 'TUNAI', NULL, '', ''),
('8073921071100001', '8999999518998', 'Rinso Anti Noda Plus Molto 770 gr', '', '0', '1', 17000, 17000, NULL, NULL, 'TUNAI', NULL, '', ''),
('8073921071100001', 'TCK002906', 'Sabun Pel 1 L', '', '0', '12', 15000, 180000, NULL, NULL, 'TUNAI', NULL, '', ''),
('2116321071100001', '8999999034153', 'Margarin Blueband 200 gr', '', '0', '2', 7500, 15000, NULL, NULL, 'TUNAI', NULL, '', ''),
('8705521071200029', 'pulsa10000', 'Pulsa 10000', '0812883939', '0', '1', 12000, 12000, NULL, NULL, 'TUNAI', NULL, 'Mondoroko', ''),
('4243921071500001', 'TCK0029020420', 'Deterjen Cair 1 L', '', '0', '33333313', 15000, 2147483647, NULL, NULL, 'TUNAI', NULL, '', ''),
('2116321071600001', '8999999707842', 'Pasta Gigi Close Up Menthol Fresh 110 gr', '', '0', '1', 12500, 12500, NULL, NULL, 'TUNAI', NULL, '', ''),
('2116322020100001', '8999999034153', 'Margarin Blueband 200 gr', '', '0', '1', 9500, 9500, NULL, NULL, 'TUNAI', NULL, '', '');

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
(1, '600ml');

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
(1, '1', 'A0001', 2147483647),
(2, '1', 'H0002', 2147483647),
(3, '1', 'E0003', 2147483647),
(4, '1', 'E0004', 2147483647),
(5, '1', 'B0005', 2147483647),
(25, '', '2324', 32);

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
('123', 'Ovent', 'Jl.Simp. Grajakan Blok III/20 Pandanwangi', 'Malang', 'Blimbing', '', '', 'logo.png', 'e9af23dd5a45126ff689eba7bb2146bb', '123', '', '', '#1F0001', '#FF9F21', '#FF9F43');

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
  ADD PRIMARY KEY (`no_faktur_penjualan`);

--
-- Indeks untuk tabel `tabel_retur`
--
ALTER TABLE `tabel_retur`
  ADD PRIMARY KEY (`no_faktur_retur`) USING BTREE;

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
  MODIFY `id_gmbr` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
  MODIFY `kd_kategori` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tabel_kategori_info`
--
ALTER TABLE `tabel_kategori_info`
  MODIFY `kd_kategori_info` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tabel_member`
--
ALTER TABLE `tabel_member`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tabel_merk_barang`
--
ALTER TABLE `tabel_merk_barang`
  MODIFY `id_merk` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tabel_metode_bayar`
--
ALTER TABLE `tabel_metode_bayar`
  MODIFY `id_metode` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id_satuan` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tabel_slide`
--
ALTER TABLE `tabel_slide`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tabel_stok_toko`
--
ALTER TABLE `tabel_stok_toko`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tabel_streaming`
--
ALTER TABLE `tabel_streaming`
  MODIFY `id_streaming` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
