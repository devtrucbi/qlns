-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2024 at 12:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlns`
--

-- --------------------------------------------------------

--
-- Table structure for table `bangcap`
--

CREATE TABLE `bangcap` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenbc` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bangcap`
--

INSERT INTO `bangcap` (`id`, `tenbc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(76, 'Tiến Sĩ', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(77, 'Thạc Sĩ', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(78, 'Cử Nhân', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(79, 'Đại Học', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(80, 'Cao Đẳng', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `baohiem`
--

CREATE TABLE `baohiem` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `loaibaohiem_id` int(10) UNSIGNED NOT NULL,
  `maso` varchar(255) NOT NULL,
  `noicap` varchar(255) NOT NULL,
  `ngaycap` date NOT NULL,
  `ngayhethan` date NOT NULL,
  `mucdong` double(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chamcong`
--

CREATE TABLE `chamcong` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chamcong`
--

INSERT INTO `chamcong` (`id`, `nhanvien_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(126, 174, '2023-12-31 17:00:00', '2024-11-23 11:12:16', NULL),
(127, 174, '2024-01-01 17:00:00', '2024-11-23 11:12:23', NULL),
(128, 174, '2024-01-02 17:00:00', '2024-11-23 11:12:28', NULL),
(129, 176, '2024-01-01 17:00:00', '2024-11-24 04:53:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chucvu`
--

CREATE TABLE `chucvu` (
  `id` int(10) UNSIGNED NOT NULL,
  `tencv` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chucvu`
--

INSERT INTO `chucvu` (`id`, `tencv`, `created_at`, `updated_at`, `deleted_at`) VALUES
(73, 'Trưởng Phòng', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(74, 'Phó Phòng', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(75, 'Marketing', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(76, 'Nhân Viên', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chuyenmon`
--

CREATE TABLE `chuyenmon` (
  `id` int(10) UNSIGNED NOT NULL,
  `tencm` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chuyenmon`
--

INSERT INTO `chuyenmon` (`id`, `tencm`, `created_at`, `updated_at`, `deleted_at`) VALUES
(76, 'Programmer', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(77, 'Tester', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(78, 'Front-end', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(79, 'Back-end', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(80, 'Full-Stack', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dantoc`
--

CREATE TABLE `dantoc` (
  `id` int(10) UNSIGNED NOT NULL,
  `tendt` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dantoc`
--

INSERT INTO `dantoc` (`id`, `tendt`, `created_at`, `updated_at`, `deleted_at`) VALUES
(106, 'Kinh', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(107, 'Thái', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(108, 'Mường', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(109, 'Khmer', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(110, 'Hoa', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(111, 'Nùng', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(112, 'H\'Mông', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `heso`
--

CREATE TABLE `heso` (
  `id` int(10) UNSIGNED NOT NULL,
  `luongcb` bigint(20) NOT NULL,
  `bac1` double(5,2) NOT NULL,
  `bac2` double(5,2) NOT NULL,
  `bac3` double(5,2) NOT NULL,
  `bac4` double(5,2) NOT NULL,
  `bac5` double(5,2) NOT NULL,
  `bac6` double(5,2) NOT NULL,
  `bac7` double(5,2) NOT NULL,
  `bac8` double(5,2) NOT NULL,
  `bac9` double(5,2) NOT NULL,
  `bac10` double(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `heso`
--

INSERT INTO `heso` (`id`, `luongcb`, `bac1`, `bac2`, `bac3`, `bac4`, `bac5`, `bac6`, `bac7`, `bac8`, `bac9`, `bac10`, `created_at`, `updated_at`, `deleted_at`) VALUES
(16, 15000000, 1.00, 1.20, 1.40, 1.60, 1.80, 1.90, 2.00, 2.20, 2.40, 2.60, '2024-11-23 10:54:59', '2024-11-23 11:11:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hopdong`
--

CREATE TABLE `hopdong` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `ngaybd` date NOT NULL,
  `ngaykt` date DEFAULT NULL,
  `loaihopdong` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khautru`
--

CREATE TABLE `khautru` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `loaibaohiem_id` int(10) UNSIGNED NOT NULL,
  `mucdong` double(5,2) NOT NULL,
  `thang` int(11) NOT NULL,
  `nam` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loaibaohiem`
--

CREATE TABLE `loaibaohiem` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenbh` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaibaohiem`
--

INSERT INTO `loaibaohiem` (`id`, `tenbh`, `created_at`, `updated_at`, `deleted_at`) VALUES
(61, 'Bảo Hiểm Xã Hội', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(62, 'Bảo Hiểm Y Tế', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(63, 'Bảo Hiểm Tai Nạn', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(64, 'Bảo Hiểm Thất Nghiệp', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(139, '2020_01_01_000001_create_password_resets_table', 1),
(140, '2020_01_01_000002_create_failed_jobs_table', 1),
(141, '2021_09_16_110111_create_sessions_table', 1),
(142, '2021_09_25_115514_create_chucvu_table', 1),
(143, '2021_09_25_115518_create_phongban_table', 1),
(144, '2021_09_25_115522_create_bangcap_table', 1),
(145, '2021_09_25_115526_create_chuyenmon_table', 1),
(146, '2021_09_25_125819_create_phucap_table', 1),
(147, '2021_09_25_135933_create_dantoc_table', 1),
(148, '2021_09_25_135933_create_tongiao_table', 1),
(149, '2021_09_25_135934_create_ngoaingu_table', 1),
(150, '2021_09_25_145217_create_nhanvien_table', 1),
(151, '2021_09_25_145218_create_users_table', 1),
(152, '2021_09_25_145248_create_thuongphat_table', 1),
(153, '2021_09_25_145259_create_chamcong_table', 1),
(154, '2021_09_25_154734_create_ungluong_table', 1),
(155, '2021_09_27_023923_create_hopdong_table', 1),
(156, '2021_10_03_040135_create_nghiviec_table', 1),
(157, '2021_10_07_122524_create_loaibaohiem_table', 1),
(158, '2021_10_07_122913_create_baohiem_table', 1),
(159, '2021_10_07_122932_create_nhanluong_table', 1),
(160, '2021_10_15_085345_create_khautru_table', 1),
(161, '2021_10_25_122809_create_heso_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nghiviec`
--

CREATE TABLE `nghiviec` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `ngaybd` date NOT NULL,
  `ngaykt` date NOT NULL,
  `lydo` varchar(255) NOT NULL,
  `huongluong` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nghiviec`
--

INSERT INTO `nghiviec` (`id`, `nhanvien_id`, `ngaybd`, `ngaykt`, `lydo`, `huongluong`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 175, '2024-01-01', '2024-01-02', 'Bị ốm', 0, '2024-11-24 04:51:34', '2024-11-24 04:51:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ngoaingu`
--

CREATE TABLE `ngoaingu` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenng` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ngoaingu`
--

INSERT INTO `ngoaingu` (`id`, `tenng`, `created_at`, `updated_at`, `deleted_at`) VALUES
(91, 'Sơ cấp - Bậc 1 (A1)', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(92, 'Sơ cấp - Bậc 2 (A2)', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(93, 'Trung cấp - Bậc 1 (B1)', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(94, 'Trung cấp - Bậc 2 (B2)', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(95, 'Cao cấp - Bậc 1 (C1)', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(96, 'Cao cấp - Bậc 2 (C2)', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nhanluong`
--

CREATE TABLE `nhanluong` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `heso` double(5,2) NOT NULL,
  `hsphucap` double(5,2) NOT NULL,
  `khautru` bigint(20) NOT NULL,
  `luongcb` bigint(20) NOT NULL,
  `mucluong` bigint(20) NOT NULL,
  `phucap` bigint(20) NOT NULL,
  `ngaycongchuan` int(11) NOT NULL,
  `ngaycong` int(11) NOT NULL,
  `nghihl` int(11) NOT NULL,
  `nghikhl` int(11) NOT NULL,
  `thuong` bigint(20) NOT NULL,
  `phat` bigint(20) NOT NULL,
  `tamung` bigint(20) NOT NULL,
  `thuclinh` bigint(20) NOT NULL,
  `thang` int(11) NOT NULL,
  `nam` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `thue` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhanluong`
--

INSERT INTO `nhanluong` (`id`, `nhanvien_id`, `heso`, `hsphucap`, `khautru`, `luongcb`, `mucluong`, `phucap`, `ngaycongchuan`, `ngaycong`, `nghihl`, `nghikhl`, `thuong`, `phat`, `tamung`, `thuclinh`, `thang`, `nam`, `created_at`, `updated_at`, `deleted_at`, `thue`) VALUES
(11, 174, 2.60, 2.50, 0, 15000000, 39000000, 975000, 3, 3, 0, 0, 0, 0, 0, 29981250, 1, 2024, '2024-11-23 11:12:58', '2024-11-23 11:12:58', NULL, 9993750);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(10) UNSIGNED NOT NULL,
  `phucap_id` int(10) UNSIGNED NOT NULL,
  `bangcap_id` int(10) UNSIGNED NOT NULL,
  `chuyenmon_id` int(10) UNSIGNED NOT NULL,
  `ngoaingu_id` int(10) UNSIGNED NOT NULL,
  `dantoc_id` int(10) UNSIGNED NOT NULL,
  `tongiao_id` int(10) UNSIGNED NOT NULL,
  `hovaten` varchar(100) NOT NULL,
  `gioitinh` tinyint(1) NOT NULL DEFAULT 0,
  `ngaysinh` date NOT NULL,
  `cmnd` varchar(50) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `quequan` varchar(255) DEFAULT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 0,
  `ngaynghilam` date DEFAULT NULL,
  `bacluong` tinyint(4) NOT NULL,
  `hesoluong` double(5,2) NOT NULL,
  `photo_path` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `phucap_id`, `bangcap_id`, `chuyenmon_id`, `ngoaingu_id`, `dantoc_id`, `tongiao_id`, `hovaten`, `gioitinh`, `ngaysinh`, `cmnd`, `sdt`, `diachi`, `quequan`, `trangthai`, `ngaynghilam`, `bacluong`, `hesoluong`, `photo_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(174, 271, 76, 80, 96, 106, 91, 'Phan Đăng Khôi', 0, '2033-12-09', '562908695', '0849295535', '8339 Oran Field Suite 842', 'West Tyreekborough', 1, NULL, 10, 2.60, NULL, '2024-11-23 10:54:59', '2024-11-23 10:59:23', NULL),
(175, 288, 78, 76, 95, 111, 91, 'Nguyễn Đức Thân', 0, '1988-05-22', '985374790', '0934343444', '207 Kertzmann Crescent', 'Macishire', 1, NULL, 10, 1.00, NULL, '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(176, 288, 80, 78, 91, 109, 95, 'Trần Thanh Nhật Thiên', 0, '1994-04-12', '346378494', '09343430156', '892 Aufderhar Branch', 'Altenwerthton', 1, NULL, 2, 1.00, NULL, '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phongban`
--

CREATE TABLE `phongban` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenpb` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phongban`
--

INSERT INTO `phongban` (`id`, `tenpb`, `created_at`, `updated_at`, `deleted_at`) VALUES
(91, 'Ban Giám Đốc', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(92, 'Phòng Kinh Doanh', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(93, 'Phòng Phân Tích', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(94, 'Phòng Thiết Kế', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(95, 'Phòng Lập Trình', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(96, 'Phòng Hành Chính', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(97, 'Phòng Kế Toán', '2024-11-23 11:17:58', '2024-11-23 11:17:58', NULL),
(98, 'Phòng Nhân Sự', '2024-11-23 11:18:16', '2024-11-23 11:18:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phucap`
--

CREATE TABLE `phucap` (
  `id` int(10) UNSIGNED NOT NULL,
  `phongban_id` int(10) UNSIGNED NOT NULL,
  `chucvu_id` int(10) UNSIGNED NOT NULL,
  `hsphucap` double(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phucap`
--

INSERT INTO `phucap` (`id`, `phongban_id`, `chucvu_id`, `hsphucap`, `created_at`, `updated_at`, `deleted_at`) VALUES
(271, 91, 73, 2.50, '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(272, 91, 74, 2.00, '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(273, 92, 73, 1.50, '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(274, 92, 74, 1.20, '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(275, 92, 75, 1.00, '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(276, 92, 76, 1.00, '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(277, 93, 73, 1.50, '2024-11-23 10:54:59', '2024-11-23 11:18:52', '2024-11-23 11:18:52'),
(278, 93, 74, 1.20, '2024-11-23 10:54:59', '2024-11-23 11:18:48', '2024-11-23 11:18:48'),
(279, 93, 76, 1.00, '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(280, 94, 73, 1.50, '2024-11-23 10:54:59', '2024-11-23 11:19:02', '2024-11-23 11:19:02'),
(281, 94, 74, 1.20, '2024-11-23 10:54:59', '2024-11-23 11:18:58', '2024-11-23 11:18:58'),
(282, 94, 76, 1.00, '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(283, 95, 73, 1.50, '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(284, 95, 74, 1.20, '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(285, 95, 76, 1.00, '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(286, 96, 73, 1.50, '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(287, 96, 74, 1.20, '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(288, 96, 76, 1.00, '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('MfrGPgNd7T1NHvXWCROQYTB0emSnJ8zFeQ8o16DU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUG52MXdsSHhJS1ZDOFlTY1d1N2lRYmtLclJZb005VncxYm1TSXNHdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9fQ==', 1732449215);

-- --------------------------------------------------------

--
-- Table structure for table `thuongphat`
--

CREATE TABLE `thuongphat` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `loai` tinyint(1) NOT NULL DEFAULT 0,
  `sotien` bigint(20) NOT NULL,
  `lydo` varchar(255) NOT NULL,
  `thang` int(11) NOT NULL,
  `nam` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tongiao`
--

CREATE TABLE `tongiao` (
  `id` int(10) UNSIGNED NOT NULL,
  `tentg` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tongiao`
--

INSERT INTO `tongiao` (`id`, `tentg`, `created_at`, `updated_at`, `deleted_at`) VALUES
(91, 'Phật giáo', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(92, 'Công giáo', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(93, 'Tin Lành', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(94, 'Hồi giáo', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(95, 'Cao Đài', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(96, 'Hoà Hảo', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ungluong`
--

CREATE TABLE `ungluong` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `sotien` bigint(20) NOT NULL,
  `lydo` varchar(255) NOT NULL,
  `thang` int(11) NOT NULL,
  `nam` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nhanvien_id`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(174, 174, 'admin@email.com', '2024-11-23 10:54:59', '$2y$10$p2PPUmxHfPxqbP1wyC4H.eRRoAb6nfYSVmMEvppgBw7YWxw80BbzO', 2, 'Ch4v0tDSzkB1w6WkNv0fkgzN8exy2nXL06cfRUuGAzjA0UvSAoURpBdyMfsr', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(175, 175, 'quanly@email.com', '2024-11-23 10:54:59', '$2y$10$IUAcowFoLYZ5DBRJJKkLwOK/gLCDc.w65/Wh2jg0XzWgphLiq8gJS', 1, 'sKmSHthziZAdDhfJIrxkxZJRpJKzfkjqf1Qk6YHJfAc93Y1RjYWHTHvzRDVK', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL),
(176, 176, 'nhanvien@email.com', '2024-11-23 10:54:59', '$2y$10$4rknktTVvXfYTqF/7lneA.H81U/wRlKuJNlcJayE/cc0NYYZ0b6LW', 0, 'wvWkaVutNwxJ0gKl4CcqSrCreeSpntAvSA4Shfx8WfxPEbBOBsGTin6T2EE8', '2024-11-23 10:54:59', '2024-11-23 10:54:59', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bangcap`
--
ALTER TABLE `bangcap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baohiem`
--
ALTER TABLE `baohiem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_baohiem_nhanvien_id` (`nhanvien_id`),
  ADD KEY `fk_baohiem_loaibaohiem_id` (`loaibaohiem_id`);

--
-- Indexes for table `chamcong`
--
ALTER TABLE `chamcong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chamcong_nhanvien_id` (`nhanvien_id`);

--
-- Indexes for table `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chuyenmon`
--
ALTER TABLE `chuyenmon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dantoc`
--
ALTER TABLE `dantoc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `heso`
--
ALTER TABLE `heso`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hopdong`
--
ALTER TABLE `hopdong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hopdong_nhanvien_id` (`nhanvien_id`);

--
-- Indexes for table `khautru`
--
ALTER TABLE `khautru`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_khautru_nhanvien_id` (`nhanvien_id`),
  ADD KEY `fk_khautru_loaibaohiem_id` (`loaibaohiem_id`);

--
-- Indexes for table `loaibaohiem`
--
ALTER TABLE `loaibaohiem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nghiviec`
--
ALTER TABLE `nghiviec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nghiviec_nhanvien_id` (`nhanvien_id`);

--
-- Indexes for table `ngoaingu`
--
ALTER TABLE `ngoaingu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhanluong`
--
ALTER TABLE `nhanluong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nhanluong_nhanvien_id` (`nhanvien_id`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nhanvien_phucap_id` (`phucap_id`),
  ADD KEY `fk_nhanvien_bangcap_id` (`bangcap_id`),
  ADD KEY `fk_nhanvien_chuyenmon_id` (`chuyenmon_id`),
  ADD KEY `fk_nhanvien_ngoaingu_id` (`ngoaingu_id`),
  ADD KEY `fk_nhanvien_dantoc_id` (`dantoc_id`),
  ADD KEY `fk_nhanvien_tongiao_id` (`tongiao_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `phongban`
--
ALTER TABLE `phongban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phucap`
--
ALTER TABLE `phucap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_phucap_phongban_id` (`phongban_id`),
  ADD KEY `fk_phucap_chucvu_id` (`chucvu_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `thuongphat`
--
ALTER TABLE `thuongphat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_thuongphat_nhanvien_id` (`nhanvien_id`);

--
-- Indexes for table `tongiao`
--
ALTER TABLE `tongiao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ungluong`
--
ALTER TABLE `ungluong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ungluong_nhanvien_id` (`nhanvien_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nhanvien_id_unique` (`nhanvien_id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bangcap`
--
ALTER TABLE `bangcap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `baohiem`
--
ALTER TABLE `baohiem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chamcong`
--
ALTER TABLE `chamcong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `chuyenmon`
--
ALTER TABLE `chuyenmon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `dantoc`
--
ALTER TABLE `dantoc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `heso`
--
ALTER TABLE `heso`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hopdong`
--
ALTER TABLE `hopdong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `khautru`
--
ALTER TABLE `khautru`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loaibaohiem`
--
ALTER TABLE `loaibaohiem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `nghiviec`
--
ALTER TABLE `nghiviec`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ngoaingu`
--
ALTER TABLE `ngoaingu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `nhanluong`
--
ALTER TABLE `nhanluong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `phongban`
--
ALTER TABLE `phongban`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `phucap`
--
ALTER TABLE `phucap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `thuongphat`
--
ALTER TABLE `thuongphat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tongiao`
--
ALTER TABLE `tongiao`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `ungluong`
--
ALTER TABLE `ungluong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `baohiem`
--
ALTER TABLE `baohiem`
  ADD CONSTRAINT `fk_baohiem_loaibaohiem_id` FOREIGN KEY (`loaibaohiem_id`) REFERENCES `loaibaohiem` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_baohiem_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `chamcong`
--
ALTER TABLE `chamcong`
  ADD CONSTRAINT `fk_chamcong_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `hopdong`
--
ALTER TABLE `hopdong`
  ADD CONSTRAINT `fk_hopdong_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `khautru`
--
ALTER TABLE `khautru`
  ADD CONSTRAINT `fk_khautru_loaibaohiem_id` FOREIGN KEY (`loaibaohiem_id`) REFERENCES `loaibaohiem` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_khautru_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `nghiviec`
--
ALTER TABLE `nghiviec`
  ADD CONSTRAINT `fk_nghiviec_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `nhanluong`
--
ALTER TABLE `nhanluong`
  ADD CONSTRAINT `fk_nhanluong_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `fk_nhanvien_bangcap_id` FOREIGN KEY (`bangcap_id`) REFERENCES `bangcap` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nhanvien_chuyenmon_id` FOREIGN KEY (`chuyenmon_id`) REFERENCES `chuyenmon` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nhanvien_dantoc_id` FOREIGN KEY (`dantoc_id`) REFERENCES `dantoc` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nhanvien_ngoaingu_id` FOREIGN KEY (`ngoaingu_id`) REFERENCES `ngoaingu` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nhanvien_phucap_id` FOREIGN KEY (`phucap_id`) REFERENCES `phucap` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nhanvien_tongiao_id` FOREIGN KEY (`tongiao_id`) REFERENCES `tongiao` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `phucap`
--
ALTER TABLE `phucap`
  ADD CONSTRAINT `fk_phucap_chucvu_id` FOREIGN KEY (`chucvu_id`) REFERENCES `chucvu` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_phucap_phongban_id` FOREIGN KEY (`phongban_id`) REFERENCES `phongban` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `thuongphat`
--
ALTER TABLE `thuongphat`
  ADD CONSTRAINT `fk_thuongphat_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `ungluong`
--
ALTER TABLE `ungluong`
  ADD CONSTRAINT `fk_ungluong_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
