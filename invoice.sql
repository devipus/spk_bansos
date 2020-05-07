-- --------------------------------------------------------
-- Host:                         
-- Server version:               5.7.19 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for invoicepd
CREATE DATABASE IF NOT EXISTS `invoicepd` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `invoicepd`;

-- Dumping structure for table invoicepd.dosens
CREATE TABLE IF NOT EXISTS `dosens` (
  `id_dosen` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_gol` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pangkat` int(11) NOT NULL,
  `ket_dos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rutinitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_dosen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.dosens: ~0 rows (approximately)
/*!40000 ALTER TABLE `dosens` DISABLE KEYS */;
/*!40000 ALTER TABLE `dosens` ENABLE KEYS */;

-- Dumping structure for table invoicepd.gajis
CREATE TABLE IF NOT EXISTS `gajis` (
  `id_gaji` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulan` date NOT NULL,
  `gaji_pokok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `servis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lembur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luar_kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinjaman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `denda` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_gaji` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_gaji`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.gajis: ~5 rows (approximately)
/*!40000 ALTER TABLE `gajis` DISABLE KEYS */;
INSERT INTO `gajis` (`id_gaji`, `nama`, `bulan`, `gaji_pokok`, `jml_pemasangan`, `servis`, `lembur`, `luar_kota`, `pinjaman`, `denda`, `total_gaji`, `created_at`, `updated_at`) VALUES
	(2, '1', '2019-03-28', '8900000', '600000', '0', '200000', '100000', '500000', '200000', '9100000', '2019-03-02 00:32:46', '2019-03-02 00:32:46'),
	(3, '1', '2019-03-28', '8900000', '600000', '0', '160000', '100000', '500000', '200000', '9060000', '2019-03-02 00:50:28', '2019-03-02 00:50:28'),
	(4, '1', '2019-03-28', '8900000', '700000', '0', '200000', '200000', '500000', '200000', '9300000', '2019-03-02 11:14:56', '2019-03-02 11:14:56'),
	(5, '1', '2019-03-28', '8900000', '700000', '0', '160000', '200000', '500000', '6', '9459994', '2019-03-02 11:20:52', '2019-03-02 11:20:52');
/*!40000 ALTER TABLE `gajis` ENABLE KEYS */;

-- Dumping structure for table invoicepd.golongans
CREATE TABLE IF NOT EXISTS `golongans` (
  `id_golongan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `golongan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_golongan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.golongans: ~1 rows (approximately)
/*!40000 ALTER TABLE `golongans` DISABLE KEYS */;
INSERT INTO `golongans` (`id_golongan`, `golongan`, `created_at`, `updated_at`) VALUES
	(1, '23g', '2019-02-08 14:54:10', '2019-02-08 14:54:19');
/*!40000 ALTER TABLE `golongans` ENABLE KEYS */;

-- Dumping structure for table invoicepd.invkaryawans
CREATE TABLE IF NOT EXISTS `invkaryawans` (
  `id_invkaryawan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_karyawan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_invkaryawan`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.invkaryawans: ~39 rows (approximately)
/*!40000 ALTER TABLE `invkaryawans` DISABLE KEYS */;
INSERT INTO `invkaryawans` (`id_invkaryawan`, `id_invoice`, `id_karyawan`, `jabatan`, `tanggal`, `tipe`, `created_at`, `updated_at`) VALUES
	(1, '12', '1', '1', '1970-01-01', 'nokia', '2019-02-14 19:37:01', '2019-02-14 19:37:01'),
	(4, '7', '2', '2', '2019-02-28', '21', '2019-02-28 02:21:28', '2019-02-28 02:21:28'),
	(5, '7', '1', '1', '2019-02-28', '21', '2019-02-28 02:21:28', '2019-02-28 02:21:28'),
	(6, '8', '2', '2', '2019-02-28', '21', '2019-02-28 02:30:47', '2019-02-28 02:30:47'),
	(7, '8', '1', '1', '2019-02-28', '21', '2019-02-28 02:30:47', '2019-02-28 02:30:47'),
	(8, '9', '2', '2', '2019-02-28', '21', '2019-02-28 05:44:56', '2019-02-28 05:44:56'),
	(9, '9', '1', '1', '2019-02-28', '21', '2019-02-28 05:44:56', '2019-02-28 05:44:56'),
	(10, '10', '2', '2', '2019-02-28', '21', '2019-02-28 10:56:17', '2019-02-28 10:56:17'),
	(11, '10', '3', '2', '2019-02-28', '21', '2019-02-28 10:56:17', '2019-02-28 10:56:17'),
	(12, '10', '1', '1', '2019-02-28', '21', '2019-02-28 10:56:17', '2019-02-28 10:56:17'),
	(13, '25', '3', '2', '2019-03-01', '21', '2019-03-01 00:16:20', '2019-03-01 00:16:20'),
	(14, '25', '1', '1', '2019-03-01', '21', '2019-03-01 00:16:20', '2019-03-01 00:16:20'),
	(15, '26', '2', '2', '2019-03-01', '21', '2019-03-01 00:18:20', '2019-03-01 00:18:20'),
	(16, '26', '1', '1', '2019-03-01', '21', '2019-03-01 00:18:20', '2019-03-01 00:18:20'),
	(17, '31', '2', '2', '2019-03-01', '21', '2019-03-01 00:24:39', '2019-03-01 00:24:39'),
	(18, '31', '1', '1', '2019-03-01', '21', '2019-03-01 00:24:39', '2019-03-01 00:24:39'),
	(19, '32', '2', '2', '2019-03-01', '21', '2019-03-01 00:25:05', '2019-03-01 00:25:05'),
	(20, '32', '1', '1', '2019-03-01', '21', '2019-03-01 00:25:05', '2019-03-01 00:25:05'),
	(21, '33', '2', '2', '2019-03-01', '21', '2019-03-01 06:27:31', '2019-03-01 06:27:31'),
	(22, '33', '1', '1', '2019-03-01', '21', '2019-03-01 06:27:31', '2019-03-01 06:27:31'),
	(23, '34', '2', '2', '2019-03-01', '21', '2019-03-01 20:25:19', '2019-03-01 20:25:19'),
	(24, '35', '3', '2', '2019-03-01', '21', '2019-03-01 20:26:31', '2019-03-01 20:26:31'),
	(25, '35', '1', '1', '2019-03-01', '21', '2019-03-01 20:26:31', '2019-03-01 20:26:31'),
	(26, '36', '2', '2', '2019-03-01', '21', '2019-03-01 20:54:37', '2019-03-01 20:54:37'),
	(27, '36', '1', '1', '2019-03-01', '21', '2019-03-01 20:54:37', '2019-03-01 20:54:37'),
	(28, '37', '2', '2', '2019-03-01', '21', '2019-03-01 21:15:49', '2019-03-01 21:15:49'),
	(29, '37', '1', '1', '2019-03-01', '21', '2019-03-01 21:15:49', '2019-03-01 21:15:49'),
	(30, '38', '2', '2', '2019-03-02', '21', '2019-03-02 10:27:11', '2019-03-02 10:27:11'),
	(31, '38', '1', '1', '2019-03-02', '21', '2019-03-02 10:27:11', '2019-03-02 10:27:11'),
	(32, '39', '2', '2', '2019-03-02', '21', '2019-03-02 10:29:08', '2019-03-02 10:29:08'),
	(33, '39', '1', '1', '2019-03-02', '21', '2019-03-02 10:29:08', '2019-03-02 10:29:08'),
	(34, '40', '2', '2', '2019-03-02', '21', '2019-03-02 10:40:55', '2019-03-02 10:40:55'),
	(35, '41', '2', '2', '2019-03-02', '21', '2019-03-02 11:22:43', '2019-03-02 11:22:43'),
	(36, '42', '2', '2', '2019-03-05', '21', '2019-03-05 13:07:49', '2019-03-05 13:07:49'),
	(37, '42', '1', '1', '2019-03-05', '21', '2019-03-05 13:07:49', '2019-03-05 13:07:49'),
	(38, '43', '3', '2', '2019-03-05', '21', '2019-03-05 13:11:51', '2019-03-05 13:11:51'),
	(39, '43', '4', '1', '2019-03-05', '21', '2019-03-05 13:11:51', '2019-03-05 13:11:51'),
	(40, '44', '3', '2', '2019-03-05', '21', '2019-03-05 13:18:19', '2019-03-05 13:18:19'),
	(41, '44', '4', '1', '2019-03-05', '21', '2019-03-05 13:18:19', '2019-03-05 13:18:19'),
	(42, '45', '3', '2', '2019-03-05', '21', '2019-03-05 13:22:14', '2019-03-05 13:22:14'),
	(43, '45', '1', '1', '2019-03-05', '21', '2019-03-05 13:22:14', '2019-03-05 13:22:14'),
	(44, '46', '3', '2', '2019-03-06', '21', '2019-03-06 01:16:34', '2019-03-06 01:16:34'),
	(45, '46', '1', '1', '2019-03-06', '21', '2019-03-06 01:16:34', '2019-03-06 01:16:34'),
	(46, '47', '2', '2', '2019-03-06', '21', '2019-03-06 01:23:49', '2019-03-06 01:23:49'),
	(47, '47', '1', '1', '2019-03-06', '21', '2019-03-06 01:23:49', '2019-03-06 01:23:49'),
	(48, '48', '3', '2', '2019-03-15', '21', '2019-03-15 16:58:18', '2019-03-15 16:58:18'),
	(49, '48', '4', '1', '2019-03-15', '21', '2019-03-15 16:58:18', '2019-03-15 16:58:18'),
	(50, '50', '2', '2', '2019-03-19', '21', '2019-03-19 20:51:08', '2019-03-19 20:51:08'),
	(51, '53', '2', '2', '2019-03-20', '21', '2019-03-20 07:31:57', '2019-03-20 07:31:57'),
	(52, '54', '2', '2', '2019-03-20', '21', '2019-03-20 13:33:21', '2019-03-20 13:33:21'),
	(53, '55', '3', '2', '2019-03-20', '21', '2019-03-20 15:09:05', '2019-03-20 15:09:05');
/*!40000 ALTER TABLE `invkaryawans` ENABLE KEYS */;

-- Dumping structure for table invoicepd.invoices
CREATE TABLE IF NOT EXISTS `invoices` (
  `id_invoice` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `id_konsumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_inv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diskon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `potongan_harga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `luar_kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lunas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_invoice`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.invoices: ~22 rows (approximately)
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` (`id_invoice`, `tanggal`, `id_konsumen`, `no_inv`, `tipe`, `harga`, `diskon`, `potongan_harga`, `dp`, `luar_kota`, `lunas`, `id_user`, `catatan`, `created_at`, `updated_at`) VALUES
	(7, '2019-02-28', '18', '24', '21', '5090000', '10', '509000', '1000000', '10', NULL, '2', NULL, '2019-02-28 02:21:28', '2019-02-28 02:21:28'),
	(8, '2019-02-28', '19', '25', '21', '280000', '5', '14000', NULL, '10', NULL, '2', NULL, '2019-02-28 02:30:47', '2019-02-28 02:30:47'),
	(9, '2019-02-28', '18', '26', '21', '5400000', '5', '270000', NULL, '11', NULL, '2', NULL, '2019-02-28 05:44:56', '2019-02-28 05:44:56'),
	(10, '2019-02-28', '20', '27', '21', '2520000', '10', '252000', NULL, '11', NULL, '1', NULL, '2019-02-28 10:56:17', '2019-02-28 10:56:17'),
	(24, '2019-02-28', '19', '28', '21', '5000000', NULL, NULL, NULL, '10', NULL, '1', NULL, '2019-02-28 23:48:40', '2019-02-28 23:48:40'),
	(25, '2019-03-01', '18', '29', '21', '5000000', '10', '500000', '500000', '10', NULL, '1', NULL, '2019-03-01 00:16:20', '2019-03-01 00:16:21'),
	(26, '2019-03-01', '19', '30', '21', '5000000', '10', '500000', '500000', '10', NULL, '1', NULL, '2019-03-01 00:18:20', '2019-03-01 00:18:20'),
	(31, '2019-03-01', '1', '31', '21', '5270000', '10', '527000', '1000000', '10', NULL, '1', NULL, '2019-03-01 00:24:39', '2019-03-01 00:24:39'),
	(32, '2019-03-01', '1', '32', '21', '5270000', '10', '527000', '1000000', '10', NULL, '1', NULL, '2019-03-01 00:25:04', '2019-03-01 00:25:05'),
	(33, '2019-03-01', '1', '33', '21', '5100000', '10', '510000', '1000000', '10', NULL, '2', NULL, '2019-03-01 06:27:30', '2019-03-01 06:27:32'),
	(34, '2019-03-01', '21', '34', '21', '360000', '10', '36000', NULL, '10', NULL, '1', NULL, '2019-03-01 20:25:19', '2019-03-01 20:25:19'),
	(35, '2019-03-01', '18', '35', '21', '500000', NULL, NULL, NULL, '10', NULL, '1', NULL, '2019-03-01 20:26:31', '2019-03-01 20:26:31'),
	(36, '2019-03-01', '18', '36', '21', '2000000', '5', '100000', NULL, '10', NULL, '1', NULL, '2019-03-01 20:54:36', '2019-03-01 20:54:37'),
	(37, '2019-03-01', '18', '37', '21', '1900000', '10', '190000', '1000000', '10', NULL, '1', NULL, '2019-03-01 21:15:49', '2019-03-01 21:15:50'),
	(38, '2019-03-02', '18', '38', '21', '6050000', '10', '605000', '1000000', '11', NULL, '1', NULL, '2019-03-02 10:27:11', '2019-03-02 10:27:11'),
	(39, '2019-03-02', '18', '39', '21', '6050000', '10', '605000', '1000000', '11', NULL, '1', NULL, '2019-03-02 10:29:08', '2019-03-02 10:29:08'),
	(40, '2019-03-02', '19', '40', '21', '6150000', '10', '615000', '1000000', '11', NULL, '1', NULL, '2019-03-02 10:40:55', '2019-03-02 10:40:55'),
	(41, '2019-03-02', '1', '41', '21', '1900000', '5', '95000', '1000000', '11', NULL, '1', NULL, '2019-03-02 11:22:43', '2019-03-02 11:22:43'),
	(42, '2019-03-05', '19', '42', '21', '5300000', '5', '265000', NULL, '11', NULL, '1', NULL, '2019-03-05 13:07:49', '2019-03-05 13:07:49'),
	(43, '2019-03-05', '1', '43', '21', '1890000', '5', '94500', NULL, '10', NULL, '1', NULL, '2019-03-05 13:11:51', '2019-03-05 13:11:51'),
	(44, '2019-03-05', '19', '44', '21', '5100000', '10', '510000', '1000000', '11', NULL, '1', NULL, '2019-03-05 13:18:19', '2019-03-05 13:18:19'),
	(45, '2019-03-05', '19', '45', '21', '1900000', '10', '190000', '1000000', '11', NULL, '1', NULL, '2019-03-05 13:22:14', '2019-03-05 13:22:14'),
	(46, '2019-03-06', '1', '46', '21', '1890000', '2', '37800', '500000', '10', NULL, '1', NULL, '2019-03-06 01:16:34', '2019-03-06 01:16:34'),
	(47, '2019-03-06', '1', '47', '21', '5090000', '10', '509000', '1000000', '10', NULL, '1', NULL, '2019-03-06 01:23:49', '2019-03-06 01:23:49'),
	(48, '2019-03-15', '20', '48', '21', '5400000', '10', '540000', '1000000', '10', NULL, '1', NULL, '2019-03-15 16:58:18', '2019-03-15 16:58:18'),
	(49, '2019-03-15', '21', '49', '21', '90000', NULL, NULL, NULL, '10', NULL, '1', NULL, '2019-03-15 17:07:02', '2019-03-15 17:07:02'),
	(50, '2019-03-19', '1', '50', '21', '2000000', NULL, NULL, '1000000', '10', NULL, '1', NULL, '2019-03-19 20:51:08', '2019-03-19 20:51:09'),
	(51, '2019-03-19', '1', '51', '21', '180000', NULL, NULL, NULL, '10', NULL, '1', NULL, '2019-03-19 22:18:35', '2019-03-19 22:18:35'),
	(52, '2019-03-19', '1', '52', '21', '2000000', NULL, NULL, NULL, '10', NULL, '1', NULL, '2019-03-19 22:24:29', '2019-03-19 22:24:29'),
	(53, '2019-03-20', '2', '53', '21', '2120000', NULL, NULL, '1000000', '10', NULL, '2', NULL, '2019-03-20 07:31:57', '2019-03-20 07:31:57'),
	(54, '2019-03-20', '1', '54', '21', '2190000', NULL, NULL, '1000000', '10', NULL, '1', NULL, '2019-03-20 13:33:21', '2019-03-20 13:33:21'),
	(55, '2019-03-20', '1', '55', '21', '2190000', NULL, NULL, '1000000', '10', NULL, '1', NULL, '2019-03-20 15:09:05', '2019-03-20 15:09:05');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;

-- Dumping structure for table invoicepd.invpakets
CREATE TABLE IF NOT EXISTS `invpakets` (
  `id_invpaket` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_paket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_invpaket`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.invpakets: ~19 rows (approximately)
/*!40000 ALTER TABLE `invpakets` DISABLE KEYS */;
INSERT INTO `invpakets` (`id_invpaket`, `id_invoice`, `id_paket`, `qty`, `harga`, `catatan`, `created_at`, `updated_at`) VALUES
	(1, '12', '1', '10000', '900000', 'pcs', '2019-02-14 18:29:21', '2019-02-14 18:29:29'),
	(3, '7', '2', '1', '5000000', NULL, '2019-02-28 02:21:28', '2019-02-28 02:21:28'),
	(4, '9', '2', '1', '5000000', NULL, '2019-02-28 05:44:56', '2019-02-28 05:44:56'),
	(5, '10', '1', '1', '1800000', NULL, '2019-02-28 10:56:17', '2019-02-28 10:56:17'),
	(6, '24', '2', '1', '5000000', NULL, '2019-02-28 23:48:40', '2019-02-28 23:48:40'),
	(7, '25', '2', '1', '5000000', NULL, '2019-03-01 00:16:20', '2019-03-01 00:16:20'),
	(8, '26', '2', '1', '5000000', NULL, '2019-03-01 00:18:20', '2019-03-01 00:18:20'),
	(9, '31', '2', '1', '5000000', NULL, '2019-03-01 00:24:39', '2019-03-01 00:24:39'),
	(10, '32', '2', '1', '5000000', NULL, '2019-03-01 00:25:05', '2019-03-01 00:25:05'),
	(11, '33', '2', '1', '5000000', NULL, '2019-03-01 06:27:31', '2019-03-01 06:27:31'),
	(12, '36', '1', '1', '1800000', NULL, '2019-03-01 20:54:37', '2019-03-01 20:54:37'),
	(13, '37', '1', '1', '1800000', NULL, '2019-03-01 21:15:49', '2019-03-01 21:15:49'),
	(14, '38', '2', '1', '5000000', NULL, '2019-03-02 10:27:11', '2019-03-02 10:27:11'),
	(15, '39', '2', '1', '5000000', NULL, '2019-03-02 10:29:08', '2019-03-02 10:29:08'),
	(16, '40', '2', '1', '5000000', NULL, '2019-03-02 10:40:55', '2019-03-02 10:40:55'),
	(17, '41', '1', '1', '1800000', NULL, '2019-03-02 11:22:43', '2019-03-02 11:22:43'),
	(18, '42', '2', '1', '5000000', NULL, '2019-03-05 13:07:49', '2019-03-05 13:07:49'),
	(19, '43', '1', '1', '1800000', NULL, '2019-03-05 13:11:51', '2019-03-05 13:11:51'),
	(20, '44', '2', '1', '5000000', NULL, '2019-03-05 13:18:19', '2019-03-05 13:18:19'),
	(21, '45', '1', '1', '1800000', NULL, '2019-03-05 13:22:14', '2019-03-05 13:22:14'),
	(22, '46', '1', '1', '1800000', NULL, '2019-03-06 01:16:34', '2019-03-06 01:16:34'),
	(23, '47', '2', '1', '5000000', NULL, '2019-03-06 01:23:49', '2019-03-06 01:23:49'),
	(24, '48', '2', '1', '5000000', NULL, '2019-03-15 16:58:18', '2019-03-15 16:58:18'),
	(25, '50', '10', '1', '2000000', NULL, '2019-03-19 20:51:09', '2019-03-19 20:51:09'),
	(26, '52', '10', '1', '2000000', NULL, '2019-03-19 22:24:29', '2019-03-19 22:24:29'),
	(27, '53', '10', '1', '2000000', NULL, '2019-03-20 07:31:57', '2019-03-20 07:31:57'),
	(28, '54', '10', '1', '2000000', NULL, '2019-03-20 13:33:21', '2019-03-20 13:33:21'),
	(29, '55', '10', '1', '2000000', NULL, '2019-03-20 15:09:05', '2019-03-20 15:09:05');
/*!40000 ALTER TABLE `invpakets` ENABLE KEYS */;

-- Dumping structure for table invoicepd.invproduks
CREATE TABLE IF NOT EXISTS `invproduks` (
  `id_invproduk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_invproduk`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.invproduks: ~26 rows (approximately)
/*!40000 ALTER TABLE `invproduks` DISABLE KEYS */;
INSERT INTO `invproduks` (`id_invproduk`, `id_invoice`, `id_produk`, `qty`, `harga`, `catatan`, `created_at`, `updated_at`) VALUES
	(1, '12', '1', '10', '900000', 'pcs', '2019-02-14 18:03:11', '2019-02-14 18:03:11'),
	(4, '7', '2', '1', '90000', NULL, '2019-02-28 02:21:28', '2019-02-28 02:21:28'),
	(5, '8', '2', '2', '90000', NULL, '2019-02-28 02:30:47', '2019-02-28 02:30:47'),
	(6, '8', '3', '1', '100000', NULL, '2019-02-28 02:30:47', '2019-02-28 02:30:47'),
	(7, '9', '3', '4', '100000', NULL, '2019-02-28 05:44:56', '2019-02-28 05:44:56'),
	(8, '10', '2', '5', '90000', NULL, '2019-02-28 10:56:17', '2019-02-28 10:56:17'),
	(9, '10', '2', '3', '90000', NULL, '2019-02-28 10:56:17', '2019-02-28 10:56:17'),
	(14, '31', '2', '3', '90000', NULL, '2019-03-01 00:24:39', '2019-03-01 00:24:39'),
	(15, '32', '2', '3', '90000', NULL, '2019-03-01 00:25:04', '2019-03-01 00:25:04'),
	(16, '33', '3', '1', '100000', NULL, '2019-03-01 06:27:31', '2019-03-01 06:27:31'),
	(17, '34', '2', '4', '90000', NULL, '2019-03-01 20:25:19', '2019-03-01 20:25:19'),
	(18, '35', '3', '5', '100000', NULL, '2019-03-01 20:26:31', '2019-03-01 20:26:31'),
	(19, '36', '3', '2', '100000', NULL, '2019-03-01 20:54:36', '2019-03-01 20:54:36'),
	(20, '37', '3', '1', '100000', NULL, '2019-03-01 21:15:49', '2019-03-01 21:15:49'),
	(21, '38', '2', '5', '90000', NULL, '2019-03-02 10:27:11', '2019-03-02 10:27:11'),
	(22, '38', '4', '5', '120000', NULL, '2019-03-02 10:27:11', '2019-03-02 10:27:11'),
	(23, '39', '2', '5', '90000', NULL, '2019-03-02 10:29:08', '2019-03-02 10:29:08'),
	(24, '39', '4', '5', '120000', NULL, '2019-03-02 10:29:08', '2019-03-02 10:29:08'),
	(25, '40', '3', '1', '100000', NULL, '2019-03-02 10:40:55', '2019-03-02 10:40:55'),
	(26, '40', '2', '5', '90000', NULL, '2019-03-02 10:40:55', '2019-03-02 10:40:55'),
	(27, '40', '4', '5', '120000', NULL, '2019-03-02 10:40:55', '2019-03-02 10:40:55'),
	(28, '41', '3', '1', '100000', NULL, '2019-03-02 11:22:43', '2019-03-02 11:22:43'),
	(29, '42', '3', '3', '100000', NULL, '2019-03-05 13:07:49', '2019-03-05 13:07:49'),
	(30, '43', '2', '1', '90000', NULL, '2019-03-05 13:11:51', '2019-03-05 13:11:51'),
	(31, '44', '3', '1', '100000', NULL, '2019-03-05 13:18:19', '2019-03-05 13:18:19'),
	(32, '45', '3', '1', '100000', NULL, '2019-03-05 13:22:14', '2019-03-05 13:22:14'),
	(33, '46', '2', '1', '90000', NULL, '2019-03-06 01:16:34', '2019-03-06 01:16:34'),
	(34, '47', '2', '1', '90000', NULL, '2019-03-06 01:23:49', '2019-03-06 01:23:49'),
	(35, '48', '3', '4', '100000', NULL, '2019-03-15 16:58:18', '2019-03-15 16:58:18'),
	(36, '49', '2', '1', '90000', NULL, '2019-03-15 17:07:02', '2019-03-15 17:07:02'),
	(37, '51', '2', '2', '90000', NULL, '2019-03-19 22:18:35', '2019-03-19 22:18:35'),
	(38, '53', '4', '1', '120000', NULL, '2019-03-20 07:31:57', '2019-03-20 07:31:57'),
	(39, '54', '4', '1', '120000', NULL, '2019-03-20 13:33:21', '2019-03-20 13:33:21'),
	(40, '54', '5', '1', '70000', NULL, '2019-03-20 13:33:21', '2019-03-20 13:33:21'),
	(41, '55', '4', '1', '120000', NULL, '2019-03-20 15:09:05', '2019-03-20 15:09:05'),
	(42, '55', '5', '1', '70000', NULL, '2019-03-20 15:09:05', '2019-03-20 15:09:05');
/*!40000 ALTER TABLE `invproduks` ENABLE KEYS */;

-- Dumping structure for table invoicepd.jabatans
CREATE TABLE IF NOT EXISTS `jabatans` (
  `id_jabatan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.jabatans: ~4 rows (approximately)
/*!40000 ALTER TABLE `jabatans` DISABLE KEYS */;
INSERT INTO `jabatans` (`id_jabatan`, `jabatan`, `created_at`, `updated_at`) VALUES
	(1, 'IPC', '2019-02-13 12:24:21', '2019-02-13 12:24:21'),
	(2, 'Teknisi', '2019-02-13 12:24:28', '2019-02-13 12:24:28'),
	(3, 'Manager', '2019-03-15 17:21:39', '2019-03-15 17:21:39'),
	(4, 'Admin', '2019-03-15 17:21:56', '2019-03-15 17:21:56');
/*!40000 ALTER TABLE `jabatans` ENABLE KEYS */;

-- Dumping structure for table invoicepd.jmlpemasangans
CREATE TABLE IF NOT EXISTS `jmlpemasangans` (
  `id_jmlpemasangan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teknisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_jmlpemasangan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.jmlpemasangans: ~2 rows (approximately)
/*!40000 ALTER TABLE `jmlpemasangans` DISABLE KEYS */;
INSERT INTO `jmlpemasangans` (`id_jmlpemasangan`, `id_invoice`, `teknisi`, `created_at`, `updated_at`) VALUES
	(1, '1', 'rahmi', '2019-02-13 10:48:38', '2019-02-13 10:49:06'),
	(2, '12', 'imron', '2019-02-13 10:48:56', '2019-02-13 10:48:56');
/*!40000 ALTER TABLE `jmlpemasangans` ENABLE KEYS */;

-- Dumping structure for table invoicepd.karyawans
CREATE TABLE IF NOT EXISTS `karyawans` (
  `id_karyawan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gaji_pokok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_karyawan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.karyawans: ~3 rows (approximately)
/*!40000 ALTER TABLE `karyawans` DISABLE KEYS */;
INSERT INTO `karyawans` (`id_karyawan`, `nama`, `jabatan`, `no_hp`, `alamat`, `gaji_pokok`, `created_at`, `updated_at`) VALUES
	(1, 'rahmi', '1', '082230061579', 'cambai', '8900000', '2019-02-13 20:55:51', '2019-02-13 20:55:51'),
	(2, 'Rahmi liza', '2', '082230061579', 'pasar 26', '8900000', '2019-02-22 21:03:52', '2019-02-22 21:03:52'),
	(3, 'Astika', '2', '089949342000', 'cambai', '8900000', '2019-02-22 21:04:18', '2019-02-22 21:04:18'),
	(4, 'andre', '1', '082230061579', 'cambai', '8900000', '2019-03-02 11:25:34', '2019-03-02 11:25:34');
/*!40000 ALTER TABLE `karyawans` ENABLE KEYS */;

-- Dumping structure for table invoicepd.konsumens
CREATE TABLE IF NOT EXISTS `konsumens` (
  `id_konsumen` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_konsumen`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.konsumens: ~0 rows (approximately)
/*!40000 ALTER TABLE `konsumens` DISABLE KEYS */;
INSERT INTO `konsumens` (`id_konsumen`, `nama`, `alamat`, `no_hp`, `email`, `tracking`, `created_at`, `updated_at`) VALUES
	(1, 'rahmi', 'cambai', '082230061579', 'rahmiliza27@gmail.com', NULL, '2019-03-19 20:04:48', '2019-03-19 20:04:48'),
	(2, 'rahman setyawan', 'pasar 26', '0899493420000', 'rahman@gmail.com', NULL, '2019-03-20 07:31:29', '2019-03-20 07:31:29');
/*!40000 ALTER TABLE `konsumens` ENABLE KEYS */;

-- Dumping structure for table invoicepd.lemburs
CREATE TABLE IF NOT EXISTS `lemburs` (
  `id_lembur` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_karyawan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_lembur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_lembur`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.lemburs: ~0 rows (approximately)
/*!40000 ALTER TABLE `lemburs` DISABLE KEYS */;
INSERT INTO `lemburs` (`id_lembur`, `id_karyawan`, `jml_lembur`, `tanggal`, `created_at`, `updated_at`) VALUES
	(1, '1', '12', '1970-01-01', '2019-02-14 20:27:24', '2019-02-14 20:27:24');
/*!40000 ALTER TABLE `lemburs` ENABLE KEYS */;

-- Dumping structure for table invoicepd.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.migrations: ~46 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_01_02_060137_create_dosens_table', 1),
	(4, '2019_01_02_063019_dosen', 1),
	(5, '2019_01_02_083855_create_kjms_table', 1),
	(6, '2019_01_02_091551_create_mks_table', 1),
	(7, '2019_01_02_092421_create_golongans_table', 1),
	(8, '2019_01_02_092627_create_jurusans_table', 1),
	(9, '2019_01_02_092832_create_kelas_table', 1),
	(10, '2019_01_02_093227_create_absensis_table', 1),
	(11, '2019_01_05_145953_pangkat', 1),
	(12, '2019_01_05_190142_pajak', 1),
	(13, '2019_01_05_194152_honor', 1),
	(14, '2019_01_06_144836_mengajar', 1),
	(15, '2019_01_09_034441_penggajian', 1),
	(16, '2019_02_08_151009_produk', 2),
	(17, '2019_02_08_154713_teknisi', 3),
	(18, '2019_02_08_161529_gaji', 4),
	(19, '2019_02_08_172927_gaji', 5),
	(20, '2019_02_08_173235_pemasangan', 6),
	(21, '2019_02_08_173755_paket', 6),
	(22, '2019_02_13_101802_jmlpemasangan', 7),
	(23, '2019_02_13_104717_jmlpemasangan', 8),
	(24, '2019_02_13_110558_konsumen', 9),
	(25, '2019_02_13_115642_karyawan', 10),
	(26, '2019_02_13_121541_jabatan', 11),
	(27, '2019_02_13_122348_jabatan', 12),
	(28, '2019_02_13_205100_karyawan', 13),
	(29, '2019_02_13_211311_konsumen', 14),
	(30, '2019_02_13_221543_konsumen', 15),
	(31, '2019_02_14_002923_produk', 16),
	(32, '2019_02_14_010657_supplier', 17),
	(33, '2019_02_14_013054_paket', 18),
	(34, '2019_02_14_013939_paketproduk', 19),
	(35, '2019_02_14_021316_invoice', 20),
	(36, '2019_02_14_171747_invproduk', 20),
	(37, '2019_02_14_174943_paketproduk', 21),
	(38, '2019_02_14_175813_paketproduk', 22),
	(39, '2019_02_14_175848_invoice', 22),
	(40, '2019_02_14_181031_invpaket', 23),
	(41, '2019_02_14_190706_invkaryawan', 24),
	(42, '2019_02_14_200334_lembur', 25),
	(43, '2019_02_14_203521_gaji', 26),
	(44, '2019_02_14_205055_pinjaman', 27),
	(45, '2019_02_14_210040_pinjaman', 28),
	(46, '2019_02_14_211115_pinjaman', 29),
	(47, '2019_02_14_212401_pinjaman', 30),
	(48, '2019_02_15_205544_pembelian', 31),
	(49, '2019_02_15_214743_pembelian', 32),
	(50, '2019_02_15_220545_pinjaman', 33),
	(51, '2019_02_16_103958_invoice', 34),
	(52, '2019_02_22_171739_satuanproduk', 35),
	(53, '2019_02_24_234320_paket', 36),
	(54, '2019_02_27_000649_konsumen', 37),
	(55, '2019_03_19_195230_konsumen', 38);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table invoicepd.paketproduks
CREATE TABLE IF NOT EXISTS `paketproduks` (
  `id_paketproduk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_paket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_paketproduk`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.paketproduks: ~6 rows (approximately)
/*!40000 ALTER TABLE `paketproduks` DISABLE KEYS */;
INSERT INTO `paketproduks` (`id_paketproduk`, `id_paket`, `id_produk`, `qty`, `created_at`, `updated_at`) VALUES
	(1, '2', '1', '10', '2019-02-14 17:59:13', '2019-02-14 17:59:13'),
	(2, '5', '2', '1', '2019-03-18 23:56:41', '2019-03-18 23:56:41'),
	(3, '6', '4', '1', '2019-03-19 19:20:58', '2019-03-19 19:20:58'),
	(6, '9', '4', '1', '2019-03-19 20:47:08', '2019-03-19 20:47:08'),
	(7, '10', '2', '1', '2019-03-19 20:49:00', '2019-03-19 20:49:00'),
	(8, '10', '5', '1', '2019-03-19 20:49:00', '2019-03-19 20:49:00');
/*!40000 ALTER TABLE `paketproduks` ENABLE KEYS */;

-- Dumping structure for table invoicepd.pakets
CREATE TABLE IF NOT EXISTS `pakets` (
  `id_paket` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_paket`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.pakets: ~3 rows (approximately)
/*!40000 ALTER TABLE `pakets` DISABLE KEYS */;
INSERT INTO `pakets` (`id_paket`, `paket`, `harga`, `deskripsi`, `created_at`, `updated_at`) VALUES
	(5, 'dQDF', '2000000', NULL, '2019-03-18 23:56:41', '2019-03-18 23:56:41'),
	(6, 'ert', '120000', NULL, '2019-03-19 19:20:57', '2019-03-19 19:20:57'),
	(9, '4 channel', '2500000', 'dfd', '2019-03-19 20:47:08', '2019-03-19 20:47:08'),
	(10, '8 channel', '2000000', NULL, '2019-03-19 20:49:00', '2019-03-19 20:49:00');
/*!40000 ALTER TABLE `pakets` ENABLE KEYS */;

-- Dumping structure for table invoicepd.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table invoicepd.pembelians
CREATE TABLE IF NOT EXISTS `pembelians` (
  `id_pembelian` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pembelian`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.pembelians: ~0 rows (approximately)
/*!40000 ALTER TABLE `pembelians` DISABLE KEYS */;
INSERT INTO `pembelians` (`id_pembelian`, `id_supplier`, `id_produk`, `qty`, `harga`, `created_at`, `updated_at`) VALUES
	(1, '1', '1', '12', '120000', '2019-02-15 21:48:24', '2019-02-15 21:48:24');
/*!40000 ALTER TABLE `pembelians` ENABLE KEYS */;

-- Dumping structure for table invoicepd.pinjamans
CREATE TABLE IF NOT EXISTS `pinjamans` (
  `id_pinjaman` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_karyawan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_pinjaman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pinjaman`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.pinjamans: ~0 rows (approximately)
/*!40000 ALTER TABLE `pinjamans` DISABLE KEYS */;
/*!40000 ALTER TABLE `pinjamans` ENABLE KEYS */;

-- Dumping structure for table invoicepd.produks
CREATE TABLE IF NOT EXISTS `produks` (
  `id_produk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_modal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_jual` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.produks: ~1 rows (approximately)
/*!40000 ALTER TABLE `produks` DISABLE KEYS */;
INSERT INTO `produks` (`id_produk`, `nama_produk`, `tipe`, `satuan`, `qty`, `harga_modal`, `harga_jual`, `created_at`, `updated_at`) VALUES
	(2, 'DVR', 'nokia', '2', '0', '23000', '90000', '2019-02-22 17:50:07', '2019-03-20 15:09:05'),
	(3, 'cctv', 'kamera', '1', '0', '23000', '100000', '2019-02-22 19:05:48', '2019-03-15 16:58:18'),
	(4, 'kamera', 'nokia', '1', '7', '23000', '120000', '2019-02-28 23:13:41', '2019-03-20 15:09:05'),
	(5, 'kabel', '59', '1', '4', '50000', '70000', '2019-03-02 11:17:51', '2019-03-20 15:09:05');
/*!40000 ALTER TABLE `produks` ENABLE KEYS */;

-- Dumping structure for table invoicepd.satuanproduks
CREATE TABLE IF NOT EXISTS `satuanproduks` (
  `id_satuanproduk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_satuanproduk`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.satuanproduks: ~2 rows (approximately)
/*!40000 ALTER TABLE `satuanproduks` DISABLE KEYS */;
INSERT INTO `satuanproduks` (`id_satuanproduk`, `satuan`, `created_at`, `updated_at`) VALUES
	(1, 'pcs', '2019-02-22 17:27:27', '2019-02-22 17:28:14'),
	(2, 'Box', '2019-02-22 17:28:44', '2019-02-22 17:28:44');
/*!40000 ALTER TABLE `satuanproduks` ENABLE KEYS */;

-- Dumping structure for table invoicepd.suppliers
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id_supplier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_pt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.suppliers: ~0 rows (approximately)
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` (`id_supplier`, `nama_pt`, `alamat`, `no_hp`, `created_at`, `updated_at`) VALUES
	(1, 'Haxvision', 'jakarta', '0899493420000', '2019-02-14 01:26:29', '2019-02-14 01:28:22'),
	(2, 'Rahman Setyawan', 'Jl.lingkar Cambai  Rt.002 Rw.003 Kel.Cambai', '082230061579', '2019-02-20 20:08:49', '2019-02-20 20:08:49');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;

-- Dumping structure for table invoicepd.teknisis
CREATE TABLE IF NOT EXISTS `teknisis` (
  `id_teknisi` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_teknisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.teknisis: ~2 rows (approximately)
/*!40000 ALTER TABLE `teknisis` DISABLE KEYS */;
INSERT INTO `teknisis` (`id_teknisi`, `nama`, `jabatan`, `alamat`, `created_at`, `updated_at`) VALUES
	(2, 'rahman', 'rt', 'pasar 26', '2019-02-08 16:11:12', '2019-02-08 16:11:12');
/*!40000 ALTER TABLE `teknisis` ENABLE KEYS */;

-- Dumping structure for table invoicepd.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table invoicepd.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `username`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin', '$2y$10$jpczxbGk57pBNKT3YQ47x.IZxHjiCrRNXD3nW9ieulRTwpQvxKZmC', 1, NULL, '2019-02-08 14:43:14', '2019-02-08 14:43:14'),
	(2, 'rahmi', 'rahmi', '$2y$10$sbQ9n9CCjUR6lSBO6hPih.cv9cLMzOmK3w8VJdVHOH7ZZ2ATzJJA2', 0, 'I04BA9lVZjT20g8SGGgKjM4hLJwVkesU7FmMs7YkMqHjUNRwm2nStiYLJclN', '2019-02-13 09:48:42', '2019-02-13 09:48:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
