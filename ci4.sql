-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2021 at 03:04 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Pemrograman PHP', 'pemrograman php', 'Andy Haris', 'COURSE TECHNOLOGY', 'gambar.jpg', NULL, NULL),
(2, 'Pemrograman JavaScript', 'pemrograman-javascript', 'lukman hakim', 'Informatika', 'foto.jpg', NULL, '2021-04-16 11:54:34'),
(34, 'Pemrograman Database dengan Delphi7 Menggunakan Access ADO', 'pemrograman-database-dengan-delphi7-menggunakan-access-ado', 'Abdul Kadir', 'Andi', 'default.jpg', '2021-04-24 11:18:15', '2021-04-24 11:18:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-04-22-182119', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1619282994, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Bagus Narji Mansur M.Kom.', 'Ki. Salam No. 781, Salatiga 17016, Sulsel', '2021-04-17 13:37:15', '2021-04-28 12:34:22'),
(2, 'Reza Adinata Simanjuntak', 'Jln. Ciumbuleuit No. 115, Serang 47739, Kalteng', '1970-10-04 07:15:09', '2021-04-28 12:34:22'),
(3, 'Luthfi Prabowo', 'Gg. Achmad Yani No. 993, Semarang 67580, NTT', '1981-08-06 15:54:59', '2021-04-28 12:34:22'),
(4, 'Luluh Pranowo', 'Ki. Bak Mandi No. 64, Mataram 34456, Sumsel', '2005-09-04 10:18:08', '2021-04-28 12:34:22'),
(5, 'Muni Rajata S.I.Kom', 'Dk. Ahmad Dahlan No. 579, Pasuruan 80542, Sultra', '1981-09-09 03:17:09', '2021-04-28 12:34:22'),
(6, 'Jasmani Estiono Iswahyudi', 'Gg. Dipatiukur No. 243, Kupang 96363, Malut', '1994-11-02 01:19:51', '2021-04-28 12:34:22'),
(7, 'Yuni Palastri', 'Ki. Teuku Umar No. 826, Madiun 17393, Babel', '2004-11-17 21:30:34', '2021-04-28 12:34:22'),
(8, 'Maria Lestari S.I.Kom', 'Kpg. Perintis Kemerdekaan No. 604, Sorong 52888, Aceh', '1999-07-07 17:17:23', '2021-04-28 12:34:22'),
(9, 'Kenzie Uwais', 'Gg. Sam Ratulangi No. 434, Pariaman 92387, Kalteng', '1976-02-27 11:40:43', '2021-04-28 12:34:22'),
(10, 'Karen Elma Oktaviani M.M.', 'Dk. Ters. Kiaracondong No. 658, Magelang 29982, Kalsel', '2002-12-02 16:11:32', '2021-04-28 12:34:22'),
(11, 'Mahesa Makara Santoso M.M.', 'Kpg. Bagis Utama No. 149, Depok 49516, Kalteng', '1976-09-13 16:35:02', '2021-04-28 12:34:22'),
(12, 'Yessi Pia Pudjiastuti', 'Ki. Abang No. 880, Ternate 12434, Lampung', '1983-09-18 18:44:48', '2021-04-28 12:34:22'),
(13, 'Nurul Andriani S.H.', 'Jln. Yos Sudarso No. 682, Bukittinggi 79789, Kepri', '1978-02-01 01:59:48', '2021-04-28 12:34:22'),
(14, 'Vanesa Rahimah S.Kom', 'Gg. Tambun No. 139, Subulussalam 75374, Aceh', '2018-01-10 15:35:48', '2021-04-28 12:34:22'),
(15, 'Eja Dadi Sitompul', 'Psr. R.E. Martadinata No. 294, Tanjung Pinang 13353, Jambi', '1984-03-07 02:06:37', '2021-04-28 12:34:22'),
(16, 'Kasusra Maulana', 'Ki. Suryo No. 17, Administrasi Jakarta Utara 95408, Sumbar', '1989-04-28 11:13:06', '2021-04-28 12:34:22'),
(17, 'Himawan Nrima Gunawan', 'Ds. Panjaitan No. 66, Banjarbaru 12523, DKI', '1984-04-15 03:43:02', '2021-04-28 12:34:22'),
(18, 'Melinda Zulaikha Yulianti S.T.', 'Jln. Ekonomi No. 256, Balikpapan 99233, Aceh', '1971-01-08 00:04:52', '2021-04-28 12:34:22'),
(19, 'Qori Latika Handayani S.Ked', 'Kpg. Tentara Pelajar No. 717, Sungai Penuh 28723, Kaltara', '2007-08-29 13:34:51', '2021-04-28 12:34:23'),
(20, 'Diana Ade Nuraini S.Farm', 'Gg. Labu No. 551, Tual 92368, Jambi', '2015-02-26 21:43:49', '2021-04-28 12:34:23'),
(21, 'Yuni Zelda Laksmiwati', 'Dk. Ekonomi No. 106, Kediri 68390, DKI', '1979-02-16 16:12:37', '2021-04-28 12:34:23'),
(22, 'Lantar Wacana', 'Kpg. Cikapayang No. 159, Pekanbaru 75793, Kalteng', '1976-07-17 23:15:36', '2021-04-28 12:34:23'),
(23, 'Jarwi Adriansyah S.Gz', 'Kpg. Honggowongso No. 785, Sorong 17055, NTT', '2012-03-17 11:27:58', '2021-04-28 12:34:23'),
(24, 'Ajimat Dipa Suwarno S.Gz', 'Ds. Padang No. 756, Bontang 55536, Jambi', '1999-07-21 23:33:27', '2021-04-28 12:34:23'),
(25, 'Umaya Dongoran', 'Ki. Basudewo No. 459, Banda Aceh 28154, Jatim', '2013-12-19 17:34:03', '2021-04-28 12:34:23'),
(26, 'Syahrini Yuliarti', 'Dk. Baladewa No. 661, Tidore Kepulauan 27617, DIY', '1975-06-22 22:14:30', '2021-04-28 12:34:23'),
(27, 'Tri Laswi Samosir M.Farm', 'Gg. Monginsidi No. 285, Makassar 10085, Sulut', '2019-01-02 15:21:12', '2021-04-28 12:34:23'),
(28, 'Hafshah Zulaika', 'Gg. Panjaitan No. 408, Banjarmasin 84318, Kaltara', '1983-10-18 09:45:35', '2021-04-28 12:34:23'),
(29, 'Hesti Mayasari', 'Gg. Pasirkoja No. 663, Administrasi Jakarta Selatan 83599, Malut', '1991-02-02 03:09:43', '2021-04-28 12:34:23'),
(30, 'Dartono Mahesa Prasasta', 'Ki. Rajawali Barat No. 536, Samarinda 76645, Sulsel', '1971-05-22 18:13:22', '2021-04-28 12:34:23'),
(31, 'Wardaya Simanjuntak', 'Gg. Ahmad Dahlan No. 217, Probolinggo 53317, Sumbar', '1982-07-19 09:34:23', '2021-04-28 12:34:23'),
(32, 'Fitriani Karimah Yuniar S.Kom', 'Ds. Jend. Sudirman No. 97, Tangerang Selatan 44453, DKI', '1974-07-08 04:10:31', '2021-04-28 12:34:23'),
(33, 'Paris Andriani', 'Gg. Abdul No. 666, Solok 92689, Jabar', '2010-02-24 00:48:51', '2021-04-28 12:34:23'),
(34, 'Ade Talia Wijayanti', 'Dk. Lada No. 884, Administrasi Jakarta Timur 51249, Pabar', '1970-03-31 08:38:22', '2021-04-28 12:34:23'),
(35, 'Shania Pudjiastuti', 'Jr. Dr. Junjunan No. 887, Semarang 95098, Kalsel', '2009-04-26 02:17:24', '2021-04-28 12:34:23'),
(36, 'Mumpuni Maheswara S.E.', 'Dk. Bagis Utama No. 893, Ambon 66670, Kepri', '1971-02-05 22:27:57', '2021-04-28 12:34:23'),
(37, 'Titi Dewi Wulandari', 'Gg. Flores No. 193, Bekasi 78233, Sumsel', '2018-12-28 03:41:32', '2021-04-28 12:34:23'),
(38, 'Elma Oni Agustina', 'Gg. Tambak No. 498, Jambi 98721, NTT', '2005-07-16 05:35:01', '2021-04-28 12:34:23'),
(39, 'Puspa Usada', 'Ds. M.T. Haryono No. 336, Ternate 52555, Jateng', '1998-12-30 16:34:52', '2021-04-28 12:34:23'),
(40, 'Halima Usamah', 'Gg. Baja Raya No. 567, Pagar Alam 32794, Kalbar', '2020-07-25 13:04:33', '2021-04-28 12:34:23'),
(41, 'Okto Mangunsong M.Pd', 'Dk. Kyai Gede No. 788, Bitung 34755, Jateng', '1990-08-12 02:18:48', '2021-04-28 12:34:23'),
(42, 'Galur Gunawan S.Pd', 'Kpg. Bagas Pati No. 77, Banda Aceh 53438, Gorontalo', '1994-12-04 22:16:17', '2021-04-28 12:34:23'),
(43, 'Mila Elisa Hartati', 'Ds. Antapani Lama No. 279, Jambi 25619, Kepri', '1998-01-20 16:19:47', '2021-04-28 12:34:24'),
(44, 'Ganda Jaga Prasasta', 'Ds. Nangka No. 77, Tanjungbalai 20347, Jabar', '1992-06-13 20:04:10', '2021-04-28 12:34:24'),
(45, 'Mustika Okta Adriansyah', 'Kpg. Ters. Kiaracondong No. 611, Tegal 33654, Aceh', '1973-11-06 23:53:06', '2021-04-28 12:34:24'),
(46, 'Naradi Megantara', 'Dk. Madrasah No. 34, Parepare 51707, Jabar', '1982-02-25 06:22:03', '2021-04-28 12:34:24'),
(47, 'Lasmono Wahyudin S.T.', 'Gg. M.T. Haryono No. 221, Surabaya 61016, Babel', '1984-11-08 05:39:51', '2021-04-28 12:34:24'),
(48, 'Shakila Handayani', 'Gg. Basuki Rahmat  No. 336, Kendari 82745, NTT', '1984-04-23 21:33:34', '2021-04-28 12:34:24'),
(49, 'Anggabaya Hakim', 'Jln. Ahmad Dahlan No. 397, Madiun 47655, Jambi', '1984-12-09 01:43:17', '2021-04-28 12:34:24'),
(50, 'Darman Marbun', 'Psr. Otista No. 926, Binjai 56745, DKI', '2013-12-21 08:16:33', '2021-04-28 12:34:24'),
(51, 'Dalimin Wahyudin', 'Psr. Jamika No. 501, Bandar Lampung 33040, Bali', '1994-12-03 23:34:59', '2021-04-28 12:34:24'),
(52, 'Tira Agustina', 'Ki. Basket No. 400, Surakarta 93244, Sulsel', '2020-11-23 09:26:08', '2021-04-28 12:34:24'),
(53, 'Puspa Haryanti', 'Kpg. Teuku Umar No. 13, Palopo 76321, Malut', '1999-01-14 01:59:18', '2021-04-28 12:34:24'),
(54, 'Artanto Utama', 'Dk. Raya Setiabudhi No. 383, Lubuklinggau 34988, Pabar', '1988-05-06 09:03:05', '2021-04-28 12:34:24'),
(55, 'Humaira Yuliarti', 'Psr. Suryo Pranoto No. 74, Bitung 52822, Sumsel', '1991-06-02 07:49:18', '2021-04-28 12:34:24'),
(56, 'Saadat Lazuardi', 'Kpg. Hasanuddin No. 157, Salatiga 19851, Sulsel', '1981-02-25 10:11:16', '2021-04-28 12:34:24'),
(57, 'Maria Widiastuti S.Farm', 'Psr. Umalas No. 149, Pasuruan 58160, Sulut', '1974-08-11 22:39:37', '2021-04-28 12:34:24'),
(58, 'Zalindra Susanti S.T.', 'Ki. Abang No. 769, Salatiga 38342, Kalteng', '2010-03-03 14:01:47', '2021-04-28 12:34:24'),
(59, 'Gangsar Darijan Sinaga', 'Psr. Gegerkalong Hilir No. 893, Madiun 14524, Kalteng', '2005-10-01 21:12:52', '2021-04-28 12:34:24'),
(60, 'Tomi Sihotang', 'Dk. Baja Raya No. 440, Kupang 46135, Babel', '2011-01-04 23:41:09', '2021-04-28 12:34:24'),
(61, 'Lidya Sakura Rahimah S.H.', 'Ki. Baan No. 65, Banjar 81514, Bengkulu', '2017-08-25 01:02:22', '2021-04-28 12:34:24'),
(62, 'Cengkal Rizki Pangestu', 'Ds. Bakin No. 950, Tanjung Pinang 94773, Jambi', '1988-03-30 16:43:29', '2021-04-28 12:34:24'),
(63, 'Oni Lestari', 'Ki. Baabur Royan No. 225, Pagar Alam 61972, Sulbar', '1973-06-14 10:26:37', '2021-04-28 12:34:24'),
(64, 'Tari Cinthia Sudiati S.Kom', 'Ki. Cokroaminoto No. 888, Semarang 59396, Kaltim', '1999-09-17 03:43:47', '2021-04-28 12:34:24'),
(65, 'Paulin Anggraini', 'Ds. Sunaryo No. 497, Mataram 14880, Malut', '2001-02-23 23:32:41', '2021-04-28 12:34:24'),
(66, 'Titi Utami S.E.I', 'Ki. Acordion No. 118, Batam 81848, Lampung', '1977-03-10 19:31:23', '2021-04-28 12:34:24'),
(67, 'Kayun Najib Pradipta', 'Ki. Daan No. 283, Yogyakarta 39755, DKI', '1994-11-18 15:10:08', '2021-04-28 12:34:24'),
(68, 'Indah Violet Andriani', 'Jr. Baan No. 94, Palembang 57300, Sulteng', '2012-03-22 12:52:03', '2021-04-28 12:34:24'),
(69, 'Viman Mustofa', 'Jr. W.R. Supratman No. 345, Salatiga 76965, Sulbar', '2020-01-29 22:39:21', '2021-04-28 12:34:24'),
(70, 'Endah Puspasari', 'Jr. Nakula No. 172, Pontianak 90357, Papua', '1987-07-01 15:49:48', '2021-04-28 12:34:24'),
(71, 'Latika Uyainah', 'Dk. Rumah Sakit No. 370, Bogor 58832, Kaltara', '2008-01-24 14:28:13', '2021-04-28 12:34:24'),
(72, 'Aurora Namaga', 'Dk. Bakti No. 832, Palopo 79133, Papua', '1986-12-04 18:38:53', '2021-04-28 12:34:24'),
(73, 'Putri Laksmiwati', 'Jr. Radio No. 684, Subulussalam 86692, Bengkulu', '1996-08-18 14:35:32', '2021-04-28 12:34:25'),
(74, 'Lasmanto Sihombing M.TI.', 'Ds. Supono No. 31, Administrasi Jakarta Selatan 58010, Kalteng', '1996-12-09 17:28:56', '2021-04-28 12:34:25'),
(75, 'Amelia Hasanah', 'Psr. Ahmad Dahlan No. 859, Bengkulu 75890, NTT', '1981-04-24 17:02:47', '2021-04-28 12:34:25'),
(76, 'Fitria Hartati', 'Psr. K.H. Maskur No. 382, Tasikmalaya 41287, Kalsel', '2015-07-26 19:00:01', '2021-04-28 12:34:25'),
(77, 'Zulaikha Kamila Suryatmi S.Gz', 'Psr. Babakan No. 318, Depok 36541, Jabar', '1985-08-14 15:56:17', '2021-04-28 12:34:25'),
(78, 'Winda Hastuti', 'Kpg. Setia Budi No. 426, Parepare 77339, Babel', '2018-07-03 20:41:49', '2021-04-28 12:34:25'),
(79, 'Cahyo Halim', 'Jr. Gotong Royong No. 815, Palangka Raya 57342, Kalbar', '1984-02-27 14:02:30', '2021-04-28 12:34:25'),
(80, 'Karimah Farah Rahmawati S.Pd', 'Kpg. Pasteur No. 790, Bandar Lampung 66903, Kalbar', '1988-07-13 05:18:38', '2021-04-28 12:34:25'),
(81, 'Prabowo Darman Mansur S.I.Kom', 'Ki. Halim No. 207, Manado 42967, Sumsel', '2015-10-14 08:03:41', '2021-04-28 12:34:25'),
(82, 'Hasim Tampubolon', 'Dk. Asia Afrika No. 39, Tangerang 23105, Malut', '1985-01-31 03:12:44', '2021-04-28 12:34:25'),
(83, 'Mahfud Gunawan', 'Dk. Sutoyo No. 22, Parepare 26467, Sultra', '1989-07-03 21:54:47', '2021-04-28 12:34:25'),
(84, 'Tirtayasa Hidayanto', 'Jr. Pacuan Kuda No. 299, Sungai Penuh 78755, Kalbar', '2014-11-01 11:13:37', '2021-04-28 12:34:25'),
(85, 'Cornelia Fujiati', 'Ki. Barat No. 976, Banjar 66390, Sumut', '2012-01-19 12:59:03', '2021-04-28 12:34:25'),
(86, 'Gangsar Adika Uwais', 'Psr. Supono No. 675, Tidore Kepulauan 87907, NTT', '2005-01-01 13:25:06', '2021-04-28 12:34:25'),
(87, 'Candrakanta Irwan Nugroho M.Kom.', 'Ds. Nanas No. 298, Jayapura 47255, Malut', '2003-04-12 00:10:46', '2021-04-28 12:34:25'),
(88, 'Mariadi Simbolon S.E.', 'Ki. R.E. Martadinata No. 998, Tegal 25613, Riau', '1974-03-04 19:45:12', '2021-04-28 12:34:25'),
(89, 'Dian Hastuti M.Pd', 'Psr. Baranang Siang No. 796, Batam 12420, Papua', '2015-06-02 05:48:41', '2021-04-28 12:34:25'),
(90, 'Nugraha Leo Maulana S.E.', 'Ki. Imam Bonjol No. 837, Solok 97993, Banten', '1993-04-06 02:20:00', '2021-04-28 12:34:25'),
(91, 'Kalim Putu Wahyudin', 'Ds. Bagas Pati No. 947, Ternate 54886, Kaltara', '1993-06-18 12:20:21', '2021-04-28 12:34:25'),
(92, 'Rahmi Wijayanti', 'Gg. Raya Ujungberung No. 821, Gunungsitoli 19738, Sumut', '2008-11-24 10:25:22', '2021-04-28 12:34:25'),
(93, 'Uchita Astuti M.Pd', 'Dk. Kebonjati No. 877, Pagar Alam 98009, Sumbar', '1983-02-05 13:44:36', '2021-04-28 12:34:25'),
(94, 'Fitriani Pudjiastuti', 'Dk. Bakau No. 498, Subulussalam 11778, Papua', '2019-04-29 13:49:43', '2021-04-28 12:34:25'),
(95, 'Galar Mustofa', 'Dk. Cikutra Timur No. 743, Administrasi Jakarta Timur 41923, Sulut', '1974-02-19 06:43:40', '2021-04-28 12:34:25'),
(96, 'Opung Kuswoyo', 'Psr. Gedebage Selatan No. 202, Mojokerto 37170, Riau', '1988-03-20 01:02:08', '2021-04-28 12:34:25'),
(97, 'Ulya Utami', 'Gg. Suharso No. 743, Cimahi 51864, Sulteng', '1991-09-22 14:55:05', '2021-04-28 12:34:25'),
(98, 'Nasrullah Suwarno', 'Jln. Ketandan No. 121, Ternate 62388, Kalteng', '1990-05-14 23:51:52', '2021-04-28 12:34:25'),
(99, 'Kamila Wulandari', 'Psr. Ciumbuleuit No. 824, Batam 26115, Aceh', '1986-02-20 22:12:24', '2021-04-28 12:34:25'),
(100, 'Tasdik Harto Kusumo S.IP', 'Jln. Perintis Kemerdekaan No. 970, Subulussalam 91517, Kalbar', '1978-08-25 07:04:48', '2021-04-28 12:34:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
