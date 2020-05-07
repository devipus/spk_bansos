-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.19 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table ayu.dataumums
CREATE TABLE IF NOT EXISTS `dataumums` (
  `id_dataumum` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_provinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kabkota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luassk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luasverifikasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlahbangunan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlahpenduduk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlahkk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_dataumum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayu.dataumums: ~0 rows (approximately)
/*!40000 ALTER TABLE `dataumums` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataumums` ENABLE KEYS */;

-- Dumping structure for table ayu.kriterias
CREATE TABLE IF NOT EXISTS `kriterias` (
  `id_kriteria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kriteria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kriteria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_kriteria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayu.kriterias: ~14 rows (approximately)
/*!40000 ALTER TABLE `kriterias` DISABLE KEYS */;
INSERT INTO `kriterias` (`id_kriteria`, `nama_kriteria`, `kode_kriteria`, `bobot`, `created_at`, `updated_at`) VALUES
	(5, '< 3 Bulan', 'waktu', '100', '2019-06-11 17:37:22', '2019-06-11 17:48:07'),
	(6, 'Dalam Kota', 'wilayah', '100', '2019-06-11 17:37:47', '2019-06-11 17:46:13'),
	(9, 'Luar Kota', 'wilayah', '50', '2019-06-11 17:46:30', '2019-06-11 17:46:30'),
	(10, '3-5 Bulan', 'waktu', '80', '2019-06-11 17:47:34', '2019-06-11 17:47:34'),
	(11, '> 5 Bulan', 'waktu', '50', '2019-06-11 17:47:54', '2019-06-11 17:47:54'),
	(12, '< 800.000.000', 'harga', '50', '2019-06-11 17:48:56', '2019-06-11 17:48:56'),
	(13, '800.000.000 - 2M', 'harga', '80', '2019-06-11 17:49:32', '2019-06-11 17:49:32'),
	(14, '> 2M', 'harga', '100', '2019-06-11 17:50:29', '2019-06-11 17:50:29'),
	(15, '10%', 'dp', '50', '2019-06-11 17:54:42', '2019-06-11 17:54:42'),
	(16, '15% - 20%', 'dp', '70', '2019-06-11 17:55:08', '2019-06-11 17:55:08'),
	(17, '> 20%', 'dp', '100', '2019-06-11 17:55:34', '2019-06-11 17:55:34'),
	(18, '1x - 3x Pembayaran', 'pembayaran', '100', '2019-06-11 17:56:15', '2019-06-11 17:56:15'),
	(19, '4x - 6x Pembayaran', 'pembayaran', '80', '2019-06-11 17:56:39', '2019-06-11 17:56:39'),
	(20, '> 6x Pembayaran', 'pembayaran', '50', '2019-06-11 17:56:53', '2019-06-11 17:56:53');
/*!40000 ALTER TABLE `kriterias` ENABLE KEYS */;

-- Dumping structure for table ayu.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayu.migrations: ~9 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_02_13_122348_jabatan', 1),
	(4, '2019_04_02_222142_normalisasi', 1),
	(5, '2019_04_05_215156_dataumum', 1),
	(6, '2019_05_09_212149_proyek', 2),
	(7, '2019_05_09_215408_pembobotan', 3),
	(8, '2019_05_10_213433_kriteria', 4),
	(9, '2019_05_10_223759_pembobotanawal', 5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table ayu.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayu.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table ayu.pembobotanawals
CREATE TABLE IF NOT EXISTS `pembobotanawals` (
  `id_pembobotanawal` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wilayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jangkawaktu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pembobotanawal`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayu.pembobotanawals: ~2 rows (approximately)
/*!40000 ALTER TABLE `pembobotanawals` DISABLE KEYS */;
INSERT INTO `pembobotanawals` (`id_pembobotanawal`, `tahun`, `wilayah`, `jangkawaktu`, `harga`, `dp`, `pembayaran`, `created_at`, `updated_at`) VALUES
	(1, '2019', '70', '60', '100', '80', '50', '2019-06-11 20:04:15', '2019-06-13 17:57:37');
/*!40000 ALTER TABLE `pembobotanawals` ENABLE KEYS */;

-- Dumping structure for table ayu.pembobotans
CREATE TABLE IF NOT EXISTS `pembobotans` (
  `id_pembobotan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `periode` year(4) DEFAULT NULL,
  `id_proyek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wilayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jangkawaktu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pembobotan`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayu.pembobotans: ~4 rows (approximately)
/*!40000 ALTER TABLE `pembobotans` DISABLE KEYS */;
INSERT INTO `pembobotans` (`id_pembobotan`, `periode`, `id_proyek`, `wilayah`, `jangkawaktu`, `harga`, `dp`, `pembayaran`, `created_at`, `updated_at`) VALUES
	(9, '2019', '3', '6', '5', '12', '16', '18', '2019-06-11 19:56:59', '2019-06-13 17:08:22'),
	(10, '2019', '1', '6', '10', '14', '16', '18', '2019-06-11 20:26:51', '2019-06-13 17:04:29'),
	(11, '2019', '4', '6', '10', '12', '16', '19', '2019-06-13 17:06:28', '2019-06-13 17:06:28'),
	(12, '2019', '5', '6', '10', '14', '15', '18', '2019-06-13 17:09:52', '2019-06-13 17:09:52'),
	(13, '2019', '6', '9', '11', '13', '16', '19', '2019-06-13 17:12:07', '2019-06-13 17:12:07');
/*!40000 ALTER TABLE `pembobotans` ENABLE KEYS */;

-- Dumping structure for table ayu.proyeks
CREATE TABLE IF NOT EXISTS `proyeks` (
  `id_proyek` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_proyek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_proyek`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayu.proyeks: ~5 rows (approximately)
/*!40000 ALTER TABLE `proyeks` DISABLE KEYS */;
INSERT INTO `proyeks` (`id_proyek`, `nama_proyek`, `ket`, `created_at`, `updated_at`) VALUES
	(1, 'JM SUKARAME PALEMBANG', 'tingkat', '2019-05-09 20:48:46', '2019-06-13 16:55:49'),
	(3, 'Halaman Parkir & Pagar Lahan Kampus BINA DARMA', 'tinkgat', '2019-05-09 20:50:58', '2019-06-13 16:56:31'),
	(4, 'Gudang Stock Motor YAMAHA CV. THAMRIN BERSAUDARA', 'mall', '2019-05-10 20:40:17', '2019-06-13 16:56:11'),
	(5, 'HOTEL EMILIA PALEMBANG', 'hotel', '2019-06-13 16:58:08', '2019-06-13 16:58:08'),
	(6, 'PEMBANGUNAN KANTOR & GUDANG RANGKA BAJA ZAINIAL', 'kantor', '2019-06-13 16:58:32', '2019-06-13 16:58:32');
/*!40000 ALTER TABLE `proyeks` ENABLE KEYS */;

-- Dumping structure for table ayu.users
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayu.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `username`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'ayu', 'ayu', '$2y$10$8u3CekxZCwtwkbqQyfL59ekbs/wDl8At1cBTXZ9CfGcZXgpnhwHYK', 1, '3LyaJWDyvOIlzv0bXThXf2mRUvP1dN7MAsPvGLjs0fvNSQFi4YACOHWbmDNh', '2019-05-09 19:12:55', '2019-05-09 19:12:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
ayuayu